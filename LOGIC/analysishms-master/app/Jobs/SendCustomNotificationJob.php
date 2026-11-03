<?php

namespace App\Jobs;

use App\Services\FcmNotificationService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\DB;

class SendCustomNotificationJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /** @param array<int, int> $userIds */
    public function __construct(
        public readonly int $notificationId,
        public readonly array $userIds,
    ) {}

    public function handle(FcmNotificationService $notifications): void
    {
        $notification = DB::table('notificationmaster')
            ->where('id', $this->notificationId)
            ->first();

        if (!$notification) {
            throw new \RuntimeException(
                "NotificationMaster record {$this->notificationId} not found."
            );
        }

        $notifications->sendNotificationMasterToUsers(
            $notification,
            $this->userIds,
        );
    }
}
