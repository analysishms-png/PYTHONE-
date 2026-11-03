<?php

namespace App\Jobs;

use App\Services\BulkDatabaseBackupService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Throwable;

class BulkDatabaseBackupJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public string $username;

    public $timeout = 7200;
    public $tries = 2;

    public function __construct(string $username)
    {
        $this->username = $username;
    }

    public function handle(BulkDatabaseBackupService $backupService): void
    {
        $backupService->createBulkBackup($this->username);
    }

    public function failed(Throwable $exception): void
    {
        \Illuminate\Support\Facades\Log::error("Bulk database backup job failed: {$exception->getMessage()}");
    }
}