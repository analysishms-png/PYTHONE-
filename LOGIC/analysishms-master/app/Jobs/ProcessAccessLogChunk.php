<?php

namespace App\Jobs;

use App\Services\Performance\AccessLogImportService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUniqueUntilProcessing;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Throwable;

class ProcessAccessLogChunk implements ShouldQueue, ShouldBeUniqueUntilProcessing
{
    use Dispatchable;
    use InteractsWithQueue;
    use Queueable;
    use SerializesModels;

    public int $tries = 3;

    public int $timeout = 600;

    public int $maxExceptions = 3;

    public array $backoff = [10, 30, 60];

    public int $uniqueFor = 1800;

    public int $importJobId;

    public function __construct(int $importJobId)
    {
        $this->importJobId = $importJobId;
    }

    public function uniqueId(): string
    {
        return 'performance-import:' . $this->importJobId;
    }

    public function handle(AccessLogImportService $importer): void
    {
        $importer->process($this->importJobId);
    }

    public function failed(Throwable $exception): void
    {
        try {
            app(AccessLogImportService::class)
                ->markJobFailed($this->importJobId, $exception);
        } catch (Throwable $ignored) {
            // Do not mask the original queue failure.
        }
    }
}
