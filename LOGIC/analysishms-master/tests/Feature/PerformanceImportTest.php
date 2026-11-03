<?php

namespace Tests\Feature;

use App\Models\PerformanceHttpHourly;
use App\Models\PerformanceImportJob;
use App\Services\Performance\AccessLogImporter;
use App\Services\Performance\PerformanceMetricsService;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\File;
use Tests\TestCase;

class PerformanceImportTest extends TestCase
{
    use DatabaseTransactions;

    protected string $directory;
    protected string $fileName;
    protected string $filePath;
    protected string $gzPath;

    protected function setUp(): void
    {
        parent::setUp();

        $importer = app(AccessLogImporter::class);
        $this->directory = $importer->allowedDirectory();
        File::ensureDirectoryExists($this->directory);

        $this->fileName = 'perf-test-' . uniqid() . '.log';
        $this->filePath = $this->directory . '/' . $this->fileName;
        File::put($this->filePath, implode("\n", [
            '192.168.1.10 - - [12/Oct/2026:10:15:00 +0530] "GET /reports/daily/99 HTTP/1.1" 200 1234 "-" "Mozilla/5.0"',
            'this is a genuinely malformed log line',
        ]) . "\n");

        $this->gzPath = $this->directory . '/perf-test-' . uniqid() . '.log.gz';
        $gz = gzopen($this->gzPath, 'wb');
        gzwrite($gz, '192.168.1.11 - - [12/Oct/2026:10:17:00 +0530] "GET /reports/daily/100 HTTP/1.1" 200 1000 "-" "curl/8.0"');
        gzclose($gz);
    }

    protected function tearDown(): void
    {
        @unlink($this->filePath);
        @unlink($this->gzPath);
        parent::tearDown();
    }

    public function test_plain_import_is_idempotent_and_rejected_lines_are_counted(): void
    {
        $importer = app(AccessLogImporter::class);

        $beforeRows = (int) PerformanceHttpHourly::where('endpoint', '/reports/daily/{id}')->count();

        $first = $importer->importFile($this->fileName, true);
        $this->assertSame('completed', $first->status);
        $this->assertSame(1, (int) $first->records_parsed);
        $this->assertSame(1, (int) $first->records_rejected);

        $second = $importer->importFile($this->fileName, true);
        $this->assertSame($first->id, $second->id);
        $this->assertSame(1, (int) $second->records_parsed);

        $afterRows = (int) PerformanceHttpHourly::where('endpoint', '/reports/daily/{id}')->count();
        $this->assertSame($beforeRows + 1, $afterRows);
    }

    public function test_gzip_import_parses_without_loading_everything_as_raw(): void
    {
        $importer = app(AccessLogImporter::class);
        $job = $importer->importFile(basename($this->gzPath), true);

        $this->assertSame('completed', $job->status);
        $this->assertSame(1, (int) $job->records_parsed);
        $this->assertSame(0, (int) $job->records_rejected);
    }

    public function test_path_traversal_is_rejected(): void
    {
        $importer = app(AccessLogImporter::class);
        $this->expectException(\InvalidArgumentException::class);
        $importer->resolveFile('../outside.log', true);
    }
}
