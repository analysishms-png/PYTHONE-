<?php

namespace App\Console\Commands;

use App\Services\FcmNotificationService;
use Illuminate\Console\Command;
use Throwable;

class SendFcmNotificationTest extends Command
{
    protected $signature = 'notifications:send-test
        {propertyid : Property ID to target}
        {department : Department/dcode to target}
        {notification_id : Existing notificationmaster.id used for delivery tracking}
        {task=Test notification : Notification body}';

    protected $description = 'Send a test FCM notification to active users matching property and department';

    public function handle(FcmNotificationService $notifications): int
    {
        try {
            $result = $notifications->sendNotificationMaster([
                'id' => $this->argument('notification_id'),
                'propertyid' => $this->argument('propertyid'),
                'route' => '',
                'module' => 'Analysis HMS',
                'dcode' => $this->argument('department'),
                'task' => $this->argument('task'),
            ]);
        } catch (Throwable $exception) {
            $this->error($exception->getMessage());
            return self::FAILURE;
        }

        $this->info("Matched recipients: {$result['matched']}");
        $this->info("Successful sends: {$result['sent']}");
        $this->info("Skipped already processed: {$result['skipped']}");
        $this->info("Failed sends: {$result['failed']}");
        $this->info("Invalid tokens cleared: {$result['invalid_tokens']}");

        return $result['failed'] > 0 ? self::FAILURE : self::SUCCESS;
    }
}
