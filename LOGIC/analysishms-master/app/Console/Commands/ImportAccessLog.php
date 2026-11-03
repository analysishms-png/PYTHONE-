<?php

namespace App\Console\Commands;

use App\Jobs\ProcessAccessLogChunk;
use App\Services\Performance\AccessLogImportService;
use App\Services\Performance\AccessLogImporter;
use Illuminate\Console\Command;

class ImportAccessLog extends Command
{
    protected $signature = 'performance:import-access-log
        {path? : Access log file name or path inside the configured directory}
        {--timezone= : Timezone used to bucket timestamps}
        {--chunk-size= : Maximum logical lines per queued chunk}
        {--sync : Process synchronously instead of dispatching a queue job}';

    protected $description = 'Safely queue the configured OpenLiteSpeed access log as chunked jobs';

    public function handle(
        AccessLogImporter $importer,
        AccessLogImportService $service
    ): int {
        // Default to the configured production access log filename.
        $path = trim((string) ($this->argument('path') ?: 'analysishms.com.access_log'));

        if ($this->option('chunk-size')) {
            config([
                'performance.import_queue_chunk_size' => (int) $this->option('chunk-size'),
            ]);
        }

        $timezone = $this->option('timezone') ?: config(
            'performance.timezone',
            config('app.timezone', 'UTC')
        );

        try {
            $job = $importer->queueImport($path, true, $timezone);

            if ($this->option('sync')) {
                $queued = $job;

                while (!in_array($queued->status, ['completed', 'failed'], true)) {
                    $workerJob = new ProcessAccessLogChunk($queued->id);
                    $workerJob->handle($service);
                    $queued = $queued->fresh();
                }

                $job = $queued;
            }

            if ($job->status === 'completed') {
                $this->info(
                    "Import completed: {$job->records_parsed} parsed, " .
                        "{$job->records_rejected} rejected, {$job->records_total} total."
                );

                if ($job->coverage_start && $job->coverage_end) {
                    $this->info("Coverage: {$job->coverage_start} to {$job->coverage_end}");
                }

                return self::SUCCESS;
            }

            if ($job->status === 'failed') {
                $this->error(
                    $job->error_message ?: "Import job {$job->id} failed."
                );

                return self::FAILURE;
            }

            $this->info(
                "Import queued: job {$job->id} ({$job->status}); " .
                    "{$job->records_parsed} parsed, {$job->records_rejected} rejected, " .
                    "{$job->records_total} processed."
            );

            return self::SUCCESS;
        } catch (\Throwable $e) {
            $this->error($e->getMessage());

            return self::FAILURE;
        }
    }
}
