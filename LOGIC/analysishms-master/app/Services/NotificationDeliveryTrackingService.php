<?php

namespace App\Services;

use App\Models\NotificationDelivery;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Carbon;
use InvalidArgumentException;

class NotificationDeliveryTrackingService
{
    private const STATES = ['failed', 'sent', 'delivered', 'seen', 'opened'];

    /** @var array<string, int> */
    private const RANKS = [
        'failed' => 0,
        'sent' => 1,
        'delivered' => 2,
        'seen' => 3,
        'opened' => 4,
    ];

    public function acknowledge(
        int|string $notificationId,
        int $userId,
        string $targetState
    ): NotificationDelivery {
        if (!in_array($targetState, self::STATES, true)) {
            throw new InvalidArgumentException(
                "Unsupported notification state: {$targetState}"
            );
        }

        $delivery = NotificationDelivery::query()
            ->where('notification_id', $notificationId)
            ->where('user_id', $userId)
            ->first();

        if (!$delivery) {
            throw (new ModelNotFoundException())
                ->setModel(NotificationDelivery::class, [
                    $notificationId,
                    $userId,
                ]);
        }

        $currentState = (string) $delivery->state;

        if (!$this->canTransition($currentState, $targetState)) {
            return $delivery;
        }

        $now = Carbon::now();

        $delivery->state = $targetState;

        if ($targetState === 'delivered') {
            $delivery->delivered_at = $now;
        }

        if ($targetState === 'seen') {
            $delivery->seen_at = $now;
        }

        if ($targetState === 'opened') {
            $delivery->opened_at = $now;
        }

        $delivery->save();

        return $delivery->fresh();
    }

    public function markSent(
        int|string $notificationId,
        string|int $propertyId,
        int $userId,
        string $token,
    ): NotificationDelivery {
        $delivery = NotificationDelivery::query()->updateOrCreate(
            ['notification_id' => $notificationId, 'user_id' => $userId],
            ['propertyid' => $propertyId, 'fcm_token' => $token],
        );

        if ((int) (self::RANKS[$delivery->state] ?? -1) < self::RANKS['delivered']) {
            $delivery->state = 'sent';
        }
        $delivery->propertyid = $propertyId;
        $delivery->fcm_token = $token;
        $delivery->sent_at = $delivery->sent_at ?? Carbon::now();
        $delivery->error_message = null;
        $delivery->save();

        return $delivery->fresh();
    }

    public function prepare(
        int|string $notificationId,
        string|int $propertyId,
        int $userId,
        string $token,
    ): NotificationDelivery {
        $delivery = NotificationDelivery::query()->updateOrCreate(
            ['notification_id' => $notificationId, 'user_id' => $userId],
            ['propertyid' => $propertyId, 'fcm_token' => $token],
        );

        if (in_array($delivery->state, ['failed', 'sent'], true)) {
            $delivery->state = 'sent';
            $delivery->propertyid = $propertyId;
            $delivery->fcm_token = $token;
            $delivery->save();
        }

        return $delivery;
    }

    public function markFailed(
        int|string $notificationId,
        string|int $propertyId,
        int $userId,
        string $token,
        string $errorMessage,
    ): NotificationDelivery {
        $delivery = NotificationDelivery::query()
            ->where('notification_id', $notificationId)
            ->where('user_id', $userId)
            ->first();

        if (!$delivery) {
            $delivery = NotificationDelivery::query()->create([
                'notification_id' => $notificationId,
                'propertyid' => $propertyId,
                'user_id' => $userId,
                'fcm_token' => $token,
                'state' => 'failed',
                'failed_at' => Carbon::now(),
                'error_message' => $errorMessage,
            ]);

            return $delivery;
        }

        $delivery->propertyid = $propertyId;
        if (in_array($delivery->state, ['failed', 'sent'], true)) {
            $delivery->state = 'failed';
            $delivery->failed_at = Carbon::now();
        }
        $delivery->fcm_token = $token;
        $delivery->error_message = $errorMessage;
        $delivery->save();

        return $delivery->fresh();
    }

    public function canTransition(string $currentState, string $targetState): bool
    {
        if (!isset(self::RANKS[$currentState], self::RANKS[$targetState])) {
            return false;
        }

        if ($currentState === 'failed') {
            return false;
        }

        if ($targetState === 'opened') {
            return $currentState !== 'opened';
        }

        return self::RANKS[$targetState] > self::RANKS[$currentState];
    }

    /** @return array<string, int> */
    public function statistics(int|string $notificationId): array
    {
        $counts = NotificationDelivery::query()
            ->where('notification_id', $notificationId)
            ->selectRaw('state, COUNT(*) as total')
            ->groupBy('state')
            ->pluck('total', 'state');

        return [
            'recipients' => (int) $counts->sum(),
            'sent' => (int) ($counts['sent'] ?? 0),
            'failed' => (int) ($counts['failed'] ?? 0),
            'delivered' => (int) ($counts['delivered'] ?? 0),
            'seen' => (int) ($counts['seen'] ?? 0),
            'opened' => (int) ($counts['opened'] ?? 0),
        ];
    }
}
