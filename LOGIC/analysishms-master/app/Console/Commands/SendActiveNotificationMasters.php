<?php

namespace App\Console\Commands;

use App\Services\FcmNotificationService;
use Illuminate\Console\Command;
use Throwable;

class SendActiveNotificationMasters extends Command
{
    protected $signature = 'notifications:send-active';

    protected $description = 'Deliver active notificationmaster records using property and department matching';

    public function handle(FcmNotificationService $notifications): int
    {
        try {
            $result = $notifications->sendActiveNotificationMasters();
        } catch (Throwable $exception) {
            $this->error($exception->getMessage());
            return self::FAILURE;
        }

        $this->info("Notifications processed: {$result['notifications']}");
        $this->info("Matched recipients: {$result['matched']}");
        $this->info("Successful sends: {$result['sent']}");
        $this->info("Skipped already processed: {$result['skipped']}");
        $this->info("Failed sends: {$result['failed']}");
        $this->info("Invalid tokens cleared: {$result['invalid_tokens']}");

        return $result['failed'] > 0 ? self::FAILURE : self::SUCCESS;
    }
}
