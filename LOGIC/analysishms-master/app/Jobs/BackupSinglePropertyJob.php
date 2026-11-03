<?php

namespace App\Jobs;

use App\Services\PropertyDatabaseBackupService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Throwable;

class BackupSinglePropertyJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public int $propertyId;
    public string $username;

    public $timeout = 3600;
    public $tries = 3;

    public function __construct(int $propertyId, string $username)
    {
        $this->propertyId = $propertyId;
        $this->username = $username;
    }

    public function handle(PropertyDatabaseBackupService $backupService): void
    {
        $backupService->backupProperty($this->propertyId, $this->username);
    }

    public function failed(Throwable $exception): void {}
}
