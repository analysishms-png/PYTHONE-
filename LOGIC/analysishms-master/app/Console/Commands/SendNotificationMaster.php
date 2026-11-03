<?php

namespace App\Console\Commands;

use App\Services\FcmNotificationService;
use Illuminate\Console\Command;
use Throwable;

class SendNotificationMaster extends Command
{
    protected $signature = 'notifications:send-master {id : notificationmaster.id to deliver}';

    protected $description = 'Deliver one notificationmaster record to its filtered FCM recipients';

    public function handle(FcmNotificationService $notifications): int
    {
        try {
            $result = $notifications->sendNotificationMasterById($this->argument('id'));
        } catch (Throwable $exception) {
            $this->error($exception->getMessage());
            return self::FAILURE;
        }

        $this->line("Matched recipients: {$result['matched']}");
        $this->line("Successful sends: {$result['sent']}");
        $this->line("Skipped already processed: {$result['skipped']}");
        $this->line("Failed sends: {$result['failed']}");
        $this->line("Invalid tokens cleared: {$result['invalid_tokens']}");

        return $result['failed'] > 0 ? self::FAILURE : self::SUCCESS;
    }
}
