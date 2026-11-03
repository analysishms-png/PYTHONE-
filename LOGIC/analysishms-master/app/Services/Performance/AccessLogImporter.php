<?php

namespace App\Services\Performance;

use App\Models\PerformanceClientEndpoint;
use App\Models\PerformanceHttpHourly;
use App\Models\PerformanceImportJob;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class AccessLogImporter
{
    protected AccessLogParser $parser;
    protected EndpointNormalizer $normalizer;
    protected int $chunkSize;
    protected bool $lastGzip = false;

    public function __construct(?AccessLogParser $parser = null, ?EndpointNormalizer $normalizer = null)
    {
        $this->parser = $parser ?: new AccessLogParser();
        $this->normalizer = $normalizer ?: new EndpointNormalizer();
        $this->chunkSize = (int) config('performance.import_chunk_size', 5000);
    }

    public function allowedDirectory(): string
    {
        $dir = (string) config('performance.log_directory', storage_path('app/performance/logs'));
        if (!File::exists($dir)) {
            File::makeDirectory($dir, 0755, true);
        }
        return rtrim(str_replace('\\', '/', (string) realpath($dir) ?: $dir), '/');
    }

    public function resolveFile(string $candidate, bool $enforceBase = true): string
    {
        $candidate = trim($candidate);
        if ($candidate === '') {
            throw new \InvalidArgumentException('A log file name or path is required.');
        }

        // Never accept embedded NUL bytes or traversal markers in basename.
        if (str_contains($candidate, "\0")) {
            throw new \InvalidArgumentException('Invalid file path.');
        }

        $base = $this->allowedDirectory();

        // Support a bare file name inside the configured directory.
        if (!str_contains($candidate, '/') && !str_contains($candidate, '\\')) {
            $candidate = $base . '/' . $candidate;
        }

        $real = realpath($candidate);
        if ($real === false || !is_file($real) || !is_readable($real)) {
            throw new \InvalidArgumentException('Log file not found or not readable.');
        }

        $real = str_replace('\\', '/', $real);
        $ext = strtolower(pathinfo($real, PATHINFO_EXTENSION));
        if (!in_array($ext, config('performance.allowed_extensions', ['log', 'gz', 'txt']), true)) {
            throw new \InvalidArgumentException('Unsupported log file type.');
        }

        if ($enforceBase && strpos($real, $base . '/') !== 0 && $real !== $base) {
            throw new \InvalidArgumentException('File path is outside the configured log directory.');
        }

        return $real;
    }

    public function importFile(string $candidate, bool $enforceBase = true, ?string $timezone = null): PerformanceImportJob
    {
        $realPath = $this->resolveFile($candidate, $enforceBase);
        $hash = hash_file('sha256', $realPath);

        $existing = PerformanceImportJob::where('source_key', $hash)->first();
        if ($existing && $existing->status === 'completed') {
            return $existing;
        }
        if ($existing) {
            $existing->update([
                'status' => 'running',
                'started_at' => Carbon::now(),
                'finished_at' => null,
                'records_total' => 0,
                'records_parsed' => 0,
                'records_rejected' => 0,
                'coverage_start' => null,
                'coverage_end' => null,
                'error_message' => null,
                'meta' => null,
            ]);
            $job = $existing;
        } else {
            $job = PerformanceImportJob::create([
                'source_type' => 'access_log',
                'file_name' => basename($realPath),
                'source_key' => $hash,
                'status' => 'running',
                'started_at' => Carbon::now(),
                'timezone' => $timezone ?: config('performance.timezone', config('app.timezone', 'UTC')),
            ]);
        }
        $tz = $job->timezone;
        $parseErrors = [];
        $parsed = 0;
        $rejected = 0;
        $totalLines = 0;
        $coverageStart = null;
        $coverageEnd = null;

        $handle = $this->openFile($realPath);
        $hourly = [];
        $client = [];

        $lineNo = 0;
        \Illuminate\Support\Facades\DB::beginTransaction();
        try {
            while (($line = $this->readLine($handle)) !== false) {
                $lineNo++;
                $totalLines++;
                $result = $this->parser->parseLine($line);

                if ($result === null) {
                    $rejected++;
                    if (count($parseErrors) < 10) {
                        $parseErrors[] = [
                            'line' => $lineNo,
                            'content' => mb_substr(trim($line), 0, 160),
                        ];
                    }
                    continue;
                }

                if ($tz) {
                    $result['timestamp'] = $result['timestamp']->setTimezone($tz);
                }

                $parsed++;
                $ts = $result['timestamp'];
                if ($coverageStart === null || $ts->lt($coverageStart)) {
                    $coverageStart = $ts;
                }
                if ($coverageEnd === null || $ts->gt($coverageEnd)) {
                    $coverageEnd = $ts;
                }

                $bucket = $ts->copy()->minute(0)->second(0)->microsecond(0);
                $method = $result['method'];
                $endpoint = $result['endpoint'];
                $status = (int) $result['status'];

                $hourlyKey = $bucket->format('Y-m-d H:i:s') . '|' . $method . '|' . $endpoint;
                if (!isset($hourly[$hourlyKey])) {
                    $hourly[$hourlyKey] = [
                        'bucket_start' => $bucket->format('Y-m-d H:i:s'),
                        'data_source' => 'imported_access_log',
                        'method' => $method,
                        'endpoint' => $endpoint,
                        'request_count' => 0,
                        'bytes_sent' => 0,
                        'status_2xx' => 0,
                        'status_3xx' => 0,
                        'status_4xx' => 0,
                        'status_5xx' => 0,
                        'duration_samples' => 0,
                        'duration_sum_ms' => 0,
                        'duration_min_ms' => null,
                        'duration_max_ms' => null,
                    ];
                }
                $hourly[$hourlyKey]['request_count']++;
                $hourly[$hourlyKey]['bytes_sent'] += (int) $result['bytes'];
                if ($result['duration_ms'] !== null) {
                    $hourly[$hourlyKey]['duration_samples']++;
                    $hourly[$hourlyKey]['duration_sum_ms'] += (int) $result['duration_ms'];
                    if ($hourly[$hourlyKey]['duration_min_ms'] === null || $result['duration_ms'] < $hourly[$hourlyKey]['duration_min_ms']) {
                        $hourly[$hourlyKey]['duration_min_ms'] = (int) $result['duration_ms'];
                    }
                    if ($hourly[$hourlyKey]['duration_max_ms'] === null || $result['duration_ms'] > $hourly[$hourlyKey]['duration_max_ms']) {
                        $hourly[$hourlyKey]['duration_max_ms'] = (int) $result['duration_ms'];
                    }
                }
                $this->incrementStatusBucket($hourly[$hourlyKey], $status);

                $ua = (string) $result['user_agent'];
                $uaHash = hash('sha256', $ua);
                $clientKey = $bucket->format('Y-m-d H:i:s') . '|' . $result['ip'] . '|' . $uaHash . '|' . $method . '|' . $endpoint;
                if (!isset($client[$clientKey])) {
                    $client[$clientKey] = [
                        'bucket_start' => $bucket->format('Y-m-d H:i:s'),
                        'data_source' => 'imported_access_log',
                        'client_ip' => $result['ip'],
                        'user_agent_hash' => $uaHash,
                        'user_agent' => mb_substr($ua, 0, 500),
                        'method' => $method,
                        'endpoint' => $endpoint,
                        'request_count' => 0,
                        'bytes_sent' => 0,
                        'status_4xx' => 0,
                        'status_5xx' => 0,
                        'redirect_count' => 0,
                    ];
                }
                $client[$clientKey]['request_count']++;
                $client[$clientKey]['bytes_sent'] += (int) $result['bytes'];
                if ($status >= 400 && $status < 500) {
                    $client[$clientKey]['status_4xx']++;
                }
                if ($status >= 500) {
                    $client[$clientKey]['status_5xx']++;
                }
                if ($status >= 300 && $status < 400) {
                    $client[$clientKey]['redirect_count']++;
                }

                if (count($hourly) >= $this->chunkSize) {
                    $this->flushHourly($hourly);
                    $hourly = [];
                }
                if (count($client) >= $this->chunkSize) {
                    $this->flushClient($client);
                    $client = [];
                }
            }

            $this->flushHourly($hourly);
            $this->flushClient($client);

            $job->update([
                'status' => 'completed',
                'finished_at' => Carbon::now(),
                'records_total' => $totalLines,
                'records_parsed' => $parsed,
                'records_rejected' => $rejected,
                'coverage_start' => $coverageStart,
                'coverage_end' => $coverageEnd,
                'meta' => [
                    'line_count' => $totalLines,
                    'parse_errors' => $parseErrors,
                ],
            ]);
            \Illuminate\Support\Facades\DB::commit();
        } catch (\Throwable $e) {
            \Illuminate\Support\Facades\DB::rollBack();
            $job->update([
                'status' => 'failed',
                'finished_at' => Carbon::now(),
                'records_total' => $totalLines,
                'records_parsed' => $parsed,
                'records_rejected' => $rejected,
                'coverage_start' => $coverageStart,
                'coverage_end' => $coverageEnd,
                'error_message' => mb_substr($e->getMessage(), 0, 4000),
                'meta' => ['parse_errors' => $parseErrors],
            ]);
            throw $e;
        } finally {
            $this->closeFile($handle, $realPath);
        }

        return $job->fresh();
    }

    protected function incrementStatusBucket(array &$row, int $status): void
    {
        if ($status >= 200 && $status < 300) {
            $row['status_2xx']++;
        } elseif ($status >= 300 && $status < 400) {
            $row['status_3xx']++;
        } elseif ($status >= 400 && $status < 500) {
            $row['status_4xx']++;
        } else {
            $row['status_5xx']++;
        }
    }

    protected function openFile(string $path)
    {
        if (str_ends_with(strtolower($path), '.gz')) {
            $this->lastGzip = true;
            $h = gzopen($path, 'rb');
        } else {
            $this->lastGzip = false;
            // Detect gzip magic anyway.
            $fp = fopen($path, 'rb');
            $magic = fread($fp, 2);
            fclose($fp);
            if ($magic === "\x1f\x8b") {
                $this->lastGzip = true;
                $h = gzopen($path, 'rb');
            } else {
                $this->lastGzip = false;
                $h = fopen($path, 'rb');
            }
        }
        if (!$h) {
            throw new \RuntimeException('Unable to open log file.');
        }
        return $h;
    }

    protected function readLine($handle): string|false
    {
        if (is_resource($handle)) {
            $line = fgets($handle);
            return $line === false ? false : $line;
        }
        // gz resource also resource in PHP, caught above.
        $line = gzgets($handle);
        return $line === false ? false : $line;
    }

    protected function closeFile($handle, string $path): void
    {
        if (!is_resource($handle)) {
            return;
        }
        if ($this->lastGzip || str_ends_with(strtolower($path), '.gz')) {
            @gzclose($handle);
        } else {
            @fclose($handle);
        }
    }

    protected function flushHourly(array $rows): void
    {
        if (empty($rows)) {
            return;
        }
        $buckets = array_values(array_unique(array_column($rows, 'bucket_start')));
        $existing = PerformanceHttpHourly::whereIn('bucket_start', $buckets)->get();
        $map = [];
        foreach ($existing as $item) {
            $map[$item->bucket_start->format('Y-m-d H:i:s') . '|' . $item->method . '|' . $item->endpoint] = $item;
        }

        foreach ($rows as $row) {
            $key = $row['bucket_start'] . '|' . $row['method'] . '|' . $row['endpoint'];
            if (isset($map[$key])) {
                $model = $map[$key];
                $model->request_count += $row['request_count'];
                $model->bytes_sent += $row['bytes_sent'];
                $model->duration_samples += $row['duration_samples'];
                $model->duration_sum_ms += $row['duration_sum_ms'];
                if ($row['duration_min_ms'] !== null && ($model->duration_min_ms === null || $row['duration_min_ms'] < $model->duration_min_ms)) {
                    $model->duration_min_ms = $row['duration_min_ms'];
                }
                if ($row['duration_max_ms'] !== null && ($model->duration_max_ms === null || $row['duration_max_ms'] > $model->duration_max_ms)) {
                    $model->duration_max_ms = $row['duration_max_ms'];
                }
                $model->status_2xx += $row['status_2xx'];
                $model->status_3xx += $row['status_3xx'];
                $model->status_4xx += $row['status_4xx'];
                $model->status_5xx += $row['status_5xx'];
                $model->save();
            } else {
                PerformanceHttpHourly::create($row);
                // Refresh lightweight map to avoid duplicate inserts within same flush? Keys unique, no.
            }
        }
    }

    protected function flushClient(array $rows): void
    {
        if (empty($rows)) {
            return;
        }
        foreach ($rows as $row) {
            PerformanceClientEndpoint::create($row);
        }
    }

    public function queueImport(string $candidate, bool $enforceBase = true, ?string $timezone = null): PerformanceImportJob
    {
        return $this->queueService()->queueImport($candidate, $timezone);
    }

    public function processImportJob(int $importJobId): void
    {
        $this->queueService()->process($importJobId);
    }

    protected function queueService(): AccessLogImportService
    {
        return app(AccessLogImportService::class);
    }
}
