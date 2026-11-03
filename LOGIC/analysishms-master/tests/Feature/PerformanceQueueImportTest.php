<?php

namespace Tests\Feature;

use App\Jobs\ProcessAccessLogChunk;
use App\Models\PerformanceHttpHourly;
use App\Models\PerformanceImportJob;
use App\Services\Performance\AccessLogImportService;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Queue;
use Tests\TestCase;

class PerformanceQueueImportTest extends TestCase
{
    use DatabaseTransactions;

    protected function service(int $chunkSize = 1000): AccessLogImportService
    {
        config(['performance.import_queue_chunk_size' => $chunkSize]);
        return app(AccessLogImportService::class);
    }

    public function test_queue_import_dispatches_a_job_without_synchronously_processing(): void
    {
        $service = $this->service();
        $directory = $service->allowedDirectory();
        File::ensureDirectoryExists($directory);

        $fileName = 'perf-queue-' . uniqid() . '.log';
        $path = $directory . '/' . $fileName;
        File::put($path, '192.168.1.1 - - [12/Oct/2026:10:15:00 +0530] "GET /queue-test HTTP/1.1" 200 1234 "-" "Mozilla/5.0"' . "\n");

        Queue::fake();
        try {
            $job = $service->queueImport($fileName, 'Asia/Kolkata');
            $this->assertSame('queued', $job->status);
            Queue::assertPushed(ProcessAccessLogChunk::class, 1);
            $queuedJobId = $job->id;
            Queue::assertPushed(ProcessAccessLogChunk::class, fn ($queued) => $queued->importJobId === $queuedJobId);
        } finally {
            @unlink($path);
        }
    }

    public function test_a_queued_chunk_runs_to_completion_for_plain_text(): void
    {
        $service = $this->service(1000);
        $directory = $service->allowedDirectory();
        File::ensureDirectoryExists($directory);

        $fileName = 'perf-queue-' . uniqid() . '.log';
        $path = $directory . '/' . $fileName;
        File::put($path, implode("\n", [
            '192.168.1.1 - - [12/Oct/2026:10:15:00 +0530] "GET /queue-test/1 HTTP/1.1" 200 1234 "-" "Mozilla/5.0"',
            '192.168.1.2 - - [12/Oct/2026:10:16:00 +0530] "POST /queue-test/2 HTTP/1.1" 404 56 "-" "curl/8.0"',
        ]) . "\n");

        Queue::fake();
        try {
            $job = $service->queueImport($fileName, 'Asia/Kolkata');
            $service->process($job->id);

            $fresh = $job->fresh();
            $this->assertSame('completed', $fresh->status);
            $this->assertSame(2, (int) $fresh->records_parsed);
            $this->assertSame(2, (int) PerformanceHttpHourly::where('endpoint', 'like', '/queue-test/%')->sum('request_count'));
        } finally {
            @unlink($path);
        }
    }

    public function test_retrying_a_completed_job_does_not_recount_rows(): void
    {
        $service = $this->service(1000);
        $directory = $service->allowedDirectory();
        File::ensureDirectoryExists($directory);

        $fileName = 'perf-queue-' . uniqid() . '.log';
        $path = $directory . '/' . $fileName;
        File::put($path, '192.168.1.1 - - [12/Oct/2026:10:15:00 +0530] "GET /queue-test/single HTTP/1.1" 200 1234 "-" "Mozilla/5.0"' . "\n");

        Queue::fake();
        try {
            $job = $service->queueImport($fileName, 'Asia/Kolkata');
            $service->process($job->id);
            $service->process($job->id);

            $this->assertSame(1, PerformanceHttpHourly::where('endpoint', '/queue-test/{id}')->orWhere('endpoint', '/queue-test/single')->count());
            $this->assertSame(1, (int) PerformanceHttpHourly::where('endpoint', '/queue-test/single')->sum('request_count'));
        } finally {
            @unlink($path);
        }
    }

    public function test_an_held_cache_lock_prevents_duplicate_processing(): void
    {
        $service = $this->service(1000);
        $directory = $service->allowedDirectory();
        File::ensureDirectoryExists($directory);

        $fileName = 'perf-queue-' . uniqid() . '.log';
        $path = $directory . '/' . $fileName;
        File::put($path, '192.168.1.1 - - [12/Oct/2026:10:15:00 +0530] "GET /queue-test/locked HTTP/1.1" 200 1234 "-" "Mozilla/5.0"' . "\n");

        Queue::fake();
        try {
            $job = $service->queueImport($fileName, 'Asia/Kolkata');
            $lock = Cache::lock('performance:import:job:' . $job->id, 1800);
            $this->assertTrue($lock->get());
            try {
                $this->expectException(\RuntimeException::class);
                $service->process($job->id);
            } finally {
                $lock->release();
            }
        } finally {
            @unlink($path);
        }
    }

    public function test_chunk_checkpointing_resumes_after_worker_interruption(): void
    {
        $service = $this->service(2);
        $directory = $service->allowedDirectory();
        File::ensureDirectoryExists($directory);

        $fileName = 'perf-queue-' . uniqid() . '.log';
        $path = $directory . '/' . $fileName;
        $entries = [];
        for ($i = 1; $i <= 120; $i++) {
            $entries[] = '10.0.0.1 - - [12/Oct/2026:10:15:00 +0530] "GET /resume-test/' . $i . ' HTTP/1.1" 200 10 "-" "A"';
        }
        File::put($path, implode("
", $entries) . "
");

        Queue::fake();
        try {
            $job = $service->queueImport($fileName, 'Asia/Kolkata');
            $service->process($job->id);

            $afterFirst = $job->fresh();
            $this->assertSame('running', $afterFirst->status);
            $this->assertSame(100, (int) $afterFirst->records_parsed);
            $this->assertSame(100, (int) PerformanceHttpHourly::where('endpoint', 'like', '/resume-test/%')->sum('request_count'));
            $initialCheckpoint = (int) (($afterFirst->meta ?? [])['checkpoint_bytes'] ?? 0);
            $this->assertGreaterThan(0, $initialCheckpoint);

            $service->process($afterFirst->id);
            $complete = $afterFirst->fresh();
            $this->assertSame('completed', $complete->status);
            $this->assertSame(120, (int) $complete->records_parsed);
            $this->assertSame(120, (int) PerformanceHttpHourly::where('endpoint', 'like', '/resume-test/%')->sum('request_count'));
        } finally {
            @unlink($path);
        }
    }

    public function test_source_mutation_aborts_import_without_partial_commits(): void
    {
        $service = $this->service(1000);
        $directory = $service->allowedDirectory();
        File::ensureDirectoryExists($directory);

        $fileName = 'perf-queue-' . uniqid() . '.log';
        $path = $directory . '/' . $fileName;
        File::put($path, '192.168.1.1 - - [12/Oct/2026:10:15:00 +0530] "GET /mutation-test/1 HTTP/1.1" 200 1234 "-" "Mozilla/5.0"' . "\n");

        Queue::fake();
        try {
            $job = $service->queueImport($fileName, 'Asia/Kolkata');
            @file_put_contents($path, $path . "\n", FILE_APPEND);

            try {
                $service->process($job->id);
                $this->fail('A changed source file should abort the import.');
            } catch (\RuntimeException $e) {
                $this->assertStringContainsString('changed', $e->getMessage());
            }

            $failed = $job->fresh();
            $this->assertSame('failed', $failed->status);
            $this->assertSame(0, (int) PerformanceHttpHourly::where('endpoint', 'like', '/mutation-test/%')->count());
        } finally {
            @unlink($path);
        }
    }

    public function test_gzip_staging_is_removed_on_successful_completion(): void
    {
        $service = $this->service(1000);
        $directory = $service->allowedDirectory();
        File::ensureDirectoryExists($directory);

        $fileName = 'perf-queue-' . uniqid() . '.log.gz';
        $path = $directory . '/' . $fileName;
        $gz = gzopen($path, 'wb');
        gzwrite($gz, '192.168.1.1 - - [12/Oct/2026:10:15:00 +0530] "GET /gzip-test/1 HTTP/1.1" 200 1234 "-" "Mozilla/5.0"' . "\n");
        gzclose($gz);

        Queue::fake();
        try {
            $job = $service->queueImport($fileName, 'Asia/Kolkata');
            $service->process($job->id);

            $fresh = $job->fresh();
            $this->assertSame('completed', $fresh->status);
            $stagedPath = (string) (($fresh->meta ?? [])['staged_path'] ?? '');
            $this->assertNotSame('', $stagedPath);
            $this->assertFalse(is_file($stagedPath));
        } finally {
            @unlink($path);
        }
    }
}
