<?php

namespace App\Services;

use App\Models\EnviroNotification;
use App\Models\NotificationMaster;
use App\Models\User;

class EnviroNotificationService
{
    public function send(
        int|string $propertyId,
        string $route,
        string $module = 'Analysis HMS',
        ?string $customMessage = null,
    ): array {
        $config = EnviroNotification::query()
            ->where('propertyid', $propertyId)
            ->where('route', $route)
            ->first();

        if (!$config || (int) $config->enabled !== 1) {
            return $this->emptyResult(false);
        }

        $departments = $config->departments;

        if (is_string($departments)) {
            $departments = json_decode($departments, true);
        }

        if (!is_array($departments)) {
            $departments = [];
        }

        $departments = array_values(array_unique(array_filter(
            array_map('strval', $departments)
        )));

        $superwiserEnabled = (int) $config->superwiser === 1;

        $users = User::query()
            ->where('propertyid', $propertyId)
            ->where('status', 1)
            ->whereNotNull('fcm_token')
            ->where('fcm_token', '<>', '')
            ->where(function ($query) use ($departments, $superwiserEnabled) {
                $hasCondition = false;

                if (!empty($departments)) {
                    $query->whereIn('department', $departments);
                    $hasCondition = true;
                }

                if ($superwiserEnabled) {
                    if ($hasCondition) {
                        $query->orWhere('superwiser', 1);
                    } else {
                        $query->where('superwiser', 1);
                    }
                }
            })
            ->get(['id', 'fcm_token'])
            ->unique('id')
            ->values();

        $message = trim(
            $customMessage !== null && trim($customMessage) !== ''
                ? $customMessage
                : (string) $config->message
        );

        if ($message === '' || $users->isEmpty()) {
            return [
                'enabled' => true,
                'departments' => count($departments),
                'matched' => $users->count(),
                'sent' => 0,
                'failed' => 0,
                'skipped' => 0,
                'invalid_tokens' => 0,
            ];
        }

        $notification = NotificationMaster::query()->create([
            'propertyid' => $propertyId,
            'route' => $route,
            'module' => $module,
            'dcode' => implode(',', $departments),
            'task' => $message,
            'status' => 1,
            'created_at' => now(),
        ]);

        $result = app(FcmNotificationService::class)
            ->sendNotificationMasterToUsers(
                $notification,
                $users->pluck('id')->all()
            );

        return [
            'enabled' => true,
            'departments' => count($departments),
            'matched' => $users->count(),
            'sent' => $result['sent'],
            'failed' => $result['failed'],
            'skipped' => $result['skipped'],
            'invalid_tokens' => $result['invalid_tokens'],
        ];
    }

    private function emptyResult(bool $enabled): array
    {
        return [
            'enabled' => $enabled,
            'departments' => 0,
            'matched' => 0,
            'sent' => 0,
            'failed' => 0,
            'skipped' => 0,
            'invalid_tokens' => 0,
        ];
    }
}
