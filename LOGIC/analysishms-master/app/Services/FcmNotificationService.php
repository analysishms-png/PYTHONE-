<?php

namespace App\Services;

use App\Models\User;
use App\Models\NotificationDelivery;
use Illuminate\Http\Client\Response;
use Illuminate\Database\UniqueConstraintViolationException;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use RuntimeException;
use Throwable;

class FcmNotificationService
{
    private const TOKEN_URL = 'https://oauth2.googleapis.com/token';
    private const SCOPE = 'https://www.googleapis.com/auth/firebase.messaging';

    /**
     * Send one notificationmaster-shaped payload to its department recipients.
     *
     * @param  object|array<string, mixed>  $notification
     * @return array{matched:int,sent:int,failed:int,invalid_tokens:int,skipped:int}
     */
    public function sendNotificationMaster(object|array $notification): array
    {
        return $this->sendNotificationMasterToUsers($notification);
    }

    /**
     * Send a notification only to the selected users after revalidating them
     * against the notification's property and department.
     *
     * @param  array<int, int|string>|null  $userIds
     * @return array{matched:int,sent:int,failed:int,invalid_tokens:int,skipped:int}
     */
    public function sendNotificationMasterToUsers(
        object|array $notification,
        ?array $userIds = null,
    ): array {
        $propertyId = (string) $this->value($notification, 'propertyid');
        $department = (string) $this->value($notification, 'dcode');

        if ($propertyId === '') {
            throw new RuntimeException('notificationmaster requires propertyid and dcode.');
        }

        $recipients = User::query()
            ->where('propertyid', $propertyId)
            ->where('status', 1)
            ->whereNotNull('fcm_token')
            ->where('fcm_token', '<>', '')
            ->when(
                $userIds !== null,
                fn($query) => $query->whereIn('id', $userIds),
                fn($query) => $query->when(
                    $department !== '',
                    fn($query) => $query->where('department', $department)
                )
            )
            ->get(['id', 'fcm_token']);

        $result = [
            'matched' => $recipients->count(),
            'sent' => 0,
            'failed' => 0,
            'invalid_tokens' => 0,
            'skipped' => 0,
        ];

        foreach ($recipients as $user) {
            $token = (string) $user->fcm_token;
            $notificationId = $this->value($notification, 'id');
            $tracking = app(NotificationDeliveryTrackingService::class);

            $sendAttempt = function () use (
                $notification,
                $notificationId,
                $propertyId,
                $department,
                $user,
                $token,
                $tracking,
            ): array {
                $delivery = NotificationDelivery::query()
                    ->where('notification_id', $notificationId)
                    ->where('user_id', $user->id)
                    ->lockForUpdate()
                    ->first();

                if ($delivery && in_array($delivery->state, ['sent', 'delivered', 'seen', 'opened'], true)) {
                    return ['state' => 'skipped'];
                }

                if (!$delivery) {
                    // The row is created while this transaction holds the
                    // notification/user uniqueness boundary. A failed state
                    // is retryable; successful states are never resent.
                    $delivery = NotificationDelivery::query()->create([
                        'notification_id' => $notificationId,
                        'propertyid' => $propertyId,
                        'user_id' => $user->id,
                        'fcm_token' => $token,
                        'state' => 'failed',
                        'error_message' => 'Delivery attempt in progress.',
                    ]);
                }

                try {
                    $response = $this->sendToToken(
                        token: $token,
                        title: $this->title($notification),
                        body: $this->body($notification),
                        data: $this->payload($notification),
                    );
                } catch (Throwable $exception) {
                    $tracking->markFailed(
                        notificationId: $notificationId,
                        propertyId: $propertyId,
                        userId: (int) $user->id,
                        token: $token,
                        errorMessage: $exception->getMessage(),
                    );
                    return ['state' => 'failed'];
                }

                if ($response->successful()) {
                    $tracking->markSent(
                        notificationId: $notificationId,
                        propertyId: $propertyId,
                        userId: (int) $user->id,
                        token: $token,
                    );
                    // Log::info('FCM notification sent.', [
                    //     'notification_id' => $notificationId,
                    //     'user_id' => $user->id,
                    //     'delivery_id' => $delivery->id,
                    //     'action' => 'sent',
                    // ]);
                    return ['state' => 'sent'];
                }

                $tracking->markFailed(
                    notificationId: $notificationId,
                    propertyId: $propertyId,
                    userId: (int) $user->id,
                    token: $token,
                    errorMessage: (string) ($response->body() ?: 'Firebase rejected the notification.'),
                );
                // Log::warning('FCM notification delivery failed.', [
                //     'user_id' => $user->id,
                //     'propertyid' => $propertyId,
                //     'dcode' => $department,
                //     'notification_id' => $notificationId,
                //     'delivery_id' => $delivery->id,
                //     'action' => 'failed',
                //     'status' => $response->status(),
                //     'response' => $response->json(),
                // ]);

                return [
                    'state' => 'failed',
                    'invalid_token' => $this->isInvalidToken($response),
                ];
            };

            $attempt = 0;
            do {
                try {
                    $outcome = DB::transaction($sendAttempt);
                    break;
                } catch (UniqueConstraintViolationException $exception) {
                    if (++$attempt >= 2) {
                        throw $exception;
                    }
                }
            } while (true);

            $result[$outcome['state']]++;
            if (($outcome['invalid_token'] ?? false) === true) {
                $result['invalid_tokens']++;
                User::query()
                    ->whereKey($user->id)
                    ->where('fcm_token', $token)
                    ->update(['fcm_token' => null]);
            }
        }

        return $result;
    }

    /**
     * Load a notificationmaster row by its primary key and deliver it.
     */
    public function sendNotificationMasterById(int|string $id): array
    {
        $notification = (array) DB::table('notificationmaster')
            ->where('id', $id)
            ->first();

        if ($notification === []) {
            throw new RuntimeException("notificationmaster record {$id} was not found.");
        }

        return $this->sendNotificationMaster($notification);
    }

    /**
     * Deliver active notificationmaster rows. No status is changed by this method.
     */
    public function sendActiveNotificationMasters(): array
    {
        $rows = DB::table('notificationmaster')
            ->where('status', config('firebase.active_notification_status', '1'))
            ->orderBy('id')
            ->get();

        $totals = ['notifications' => 0, 'matched' => 0, 'sent' => 0, 'failed' => 0, 'skipped' => 0, 'invalid_tokens' => 0];
        foreach ($rows as $row) {
            $result = $this->sendNotificationMaster($row);
            $totals['notifications']++;
            foreach (['matched', 'sent', 'failed', 'skipped', 'invalid_tokens'] as $key) {
                $totals[$key] += $result[$key];
            }
        }

        return $totals;
    }

    /**
     * @param  array<string, string>  $data
     */
    private function sendToToken(string $token, string $title, string $body, array $data): Response
    {
        $projectId = config('firebase.project_id');
        $accessToken = $this->accessToken();
        $notificationId = (int) ($data['notification_id'] ?? 0);

        return Http::withToken($accessToken)
            ->acceptJson()
            ->post("https://fcm.googleapis.com/v1/projects/{$projectId}/messages:send", [
                'message' => [
                    'token' => $token,
                    'data' => $data,
                    'android' => [
                        'collapse_key' => 'msg_' . $notificationId,
                        'priority' => 'high',
                    ],
                ],
            ]);
    }

    private function accessToken(): string
    {
        $credentials = [
            'project_id' => config('firebase.project_id'),
            'client_email' => config('firebase.client_email'),
            'private_key' => config('firebase.private_key'),
        ];

        foreach ($credentials as $name => $value) {
            if (!is_string($value) || trim($value) === '') {
                throw new RuntimeException("Firebase {$name} is not configured. Set FIREBASE_{$this->envName($name)} in .env.");
            }
        }

        return Cache::remember('firebase.messaging.access_token', now()->addMinutes(50), function () use ($credentials): string {
            $now = time();
            $assertion = $this->jwt(
                ['alg' => 'RS256', 'typ' => 'JWT'],
                [
                    'iss' => $credentials['client_email'],
                    'scope' => self::SCOPE,
                    'aud' => self::TOKEN_URL,
                    'iat' => $now,
                    'exp' => $now + 3600,
                ],
                str_replace('\\n', "\n", $credentials['private_key']),
            );

            $response = Http::asForm()->post(self::TOKEN_URL, [
                'grant_type' => 'urn:ietf:params:oauth:grant-type:jwt-bearer',
                'assertion' => $assertion,
            ]);

            if (!$response->successful() || !is_string($response->json('access_token'))) {
                Log::error('Firebase OAuth token request failed.', [
                    'status' => $response->status(),
                    'response' => $response->json(),
                ]);
                throw new RuntimeException('Firebase OAuth token request failed.');
            }

            return $response->json('access_token');
        });
    }

    private function jwt(array $header, array $claims, string $privateKey): string
    {
        $encodedHeader = $this->base64Url(json_encode($header, JSON_THROW_ON_ERROR));
        $encodedClaims = $this->base64Url(json_encode($claims, JSON_THROW_ON_ERROR));
        $unsigned = "{$encodedHeader}.{$encodedClaims}";

        if (!openssl_sign($unsigned, $signature, $privateKey, OPENSSL_ALGO_SHA256)) {
            throw new RuntimeException('Firebase private key could not sign an OAuth assertion.');
        }

        return $unsigned . '.' . $this->base64Url($signature);
    }

    private function base64Url(string $value): string
    {
        return rtrim(strtr(base64_encode($value), '+/', '-_'), '=');
    }

    private function isInvalidToken(Response $response): bool
    {
        $errorCode = (string) data_get($response->json(), 'error.details.0.errorCode');
        return $errorCode === 'UNREGISTERED' || $errorCode === 'INVALID_ARGUMENT';
    }

    private function title(object|array $notification): string
    {
        return trim((string) ($this->value($notification, 'module') ?: 'Analysis HMS notification'));
    }

    private function body(object|array $notification): string
    {
        return trim((string) ($this->value($notification, 'task') ?: $this->value($notification, 'route') ?: 'You have a new notification.'));
    }

    /** @return array<string, string> */
    private function payload(object|array $notification): array
    {
        return [
            'notification_id' => (string) $this->value($notification, 'id'),
            'propertyid' => (string) $this->value($notification, 'propertyid'),
            'route' => (string) $this->value($notification, 'route'),
            'module' => (string) $this->value($notification, 'module'),
            'dcode' => (string) $this->value($notification, 'dcode'),
            'task' => (string) $this->value($notification, 'task'),
            'created_at' => (string) $this->value($notification, 'created_at'),
        ];
    }

    private function value(object|array $value, string $key): mixed
    {
        return is_array($value) ? ($value[$key] ?? null) : ($value->{$key} ?? null);
    }

    private function envName(string $name): string
    {
        return match ($name) {
            'project_id' => 'PROJECT_ID',
            'client_email' => 'CLIENT_EMAIL',
            'private_key' => 'PRIVATE_KEY',
            default => Str::upper($name),
        };
    }
}
