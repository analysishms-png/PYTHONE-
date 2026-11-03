<?php

namespace App\Services;

use App\Models\EnviroNotification;
use App\Models\NotificationMaster;
use App\Models\User;

class EnviroNotificationService
{
    public function send(
        int|string $propertyId,
        int|string $configId,
        string $module = 'Analysis HMS',
    ): array {
        $config = EnviroNotification::query()
            ->where('id', $configId)
            ->where('propertyid', $propertyId)
            ->where('enabled', 1)
            ->first();

        if (!$config) {
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

        if (empty($departments) && !$superwiserEnabled) {
            return [
                'enabled' => true,
                'departments' => 0,
                'matched' => 0,
                'sent' => 0,
                'failed' => 0,
                'skipped' => 0,
                'invalid_tokens' => 0,
            ];
        }

        $users = User::query()
            ->where('propertyid', $propertyId)
            ->where('status', 1)
            ->whereNotNull('fcm_token')
            ->where('fcm_token', '<>', '')
            ->where(function ($query) use ($departments, $superwiserEnabled) {
                if (!empty($departments)) {
                    $query->whereIn('department', $departments);
                }

                if ($superwiserEnabled) {
                    if (!empty($departments)) {
                        $query->orWhere('superwiser', 1);
                    } else {
                        $query->where('superwiser', 1);
                    }
                }
            })
            ->get(['id', 'fcm_token'])
            ->unique('id')
            ->values();

        $message = trim((string) $config->message);

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
            'route' => $config->route,
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
