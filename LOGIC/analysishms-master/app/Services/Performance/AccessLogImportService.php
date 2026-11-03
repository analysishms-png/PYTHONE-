<?php

namespace App\Services\Performance;

use App\Models\PerformanceClientEndpoint;
use App\Models\PerformanceHttpHourly;
use App\Models\PerformanceImportJob;
use Carbon\Carbon;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use App\Jobs\ProcessAccessLogChunk;

class AccessLogImportService
{
    protected AccessLogParser $parser;
    protected EndpointNormalizer $normalizer;
    protected int $chunkSize;

    public function __construct(?AccessLogParser $parser = null, ?EndpointNormalizer $normalizer = null)
    {
        $this->parser = $parser ?: new AccessLogParser();
        $this->normalizer = $normalizer ?: new EndpointNormalizer();
        $this->chunkSize = max(100, (int) config('performance.import_queue_chunk_size', config('performance.import_chunk_size', 1000)));
    }

    public function allowedDirectory(): string
    {
        $dir = (string) config('performance.log_directory', storage_path('app/performance/logs'));
        if (!File::exists($dir)) {
            File::makeDirectory($dir, 0755, true);
        }

        return rtrim(str_replace('\\', '/', (string) realpath($dir) ?: $dir), '/');
    }

    protected function resolveFile(string $candidate): string
    {
        $candidate = trim($candidate);
        if (str_contains($candidate, "\0")) {
            throw new \InvalidArgumentException('Invalid file path.');
        }

        $base = $this->allowedDirectory();
        if ($candidate !== '' && !str_contains($candidate, '/') && !str_contains($candidate, '\\')) {
            $candidate = $base . '/' . $candidate;
        }

        $real = realpath($candidate);
        if ($real === false || !is_file($real) || !is_readable($real)) {
            throw new \InvalidArgumentException('Log file not found or not readable.');
        }

        $real = str_replace('\\', '/', (string) $real);
        $ext = strtolower(pathinfo($real, PATHINFO_EXTENSION));
        if (!in_array($ext, config('performance.allowed_extensions', ['log', 'gz', 'txt', 'access_log']), true)) {
            if (!str_ends_with($real, '.gz')) {
                throw new \InvalidArgumentException('Unsupported log file type.');
            }
        }

        if (strpos($real, $base . '/') !== 0 && $real !== $base) {
            throw new \InvalidArgumentException('File path is outside the configured log directory.');
        }

        return $real;
    }


    public function queueImport(string $candidate, ?string $timezone = null): PerformanceImportJob
    {
        $realPath = $this->resolveFile($candidate);

        // Capture a stable snapshot of the file as it exists at queue time.
        $stageDir = rtrim(
            (string) config('performance.import_stage_directory', storage_path('app/performance/staging')),
            '/\\'
        ) . DIRECTORY_SEPARATOR . 'queue-snapshots';

        if (!is_dir($stageDir) && !mkdir($stageDir, 0755, true) && !is_dir($stageDir)) {
            throw new \RuntimeException('Unable to create import snapshot directory.');
        }

        $source = fopen($realPath, 'rb');

        if (!is_resource($source)) {
            throw new \RuntimeException('Unable to open source log for snapshot.');
        }

        $snapshot = null;
        $output = null;

        try {
            // fstat uses the opened file, even if the path is later rotated.
            $stat = fstat($source);
            $targetBytes = (int) ($stat['size'] ?? 0);

            $suffix = str_ends_with(strtolower($realPath), '.gz') ? '.gz' : '.log';
            $snapshot = $stageDir . DIRECTORY_SEPARATOR . uniqid('access-', true) . $suffix;
            $output = fopen($snapshot, 'xb');

            if (!is_resource($output)) {
                throw new \RuntimeException('Unable to create import snapshot.');
            }

            $remaining = $targetBytes;

            while ($remaining > 0) {
                $data = fread($source, min(1024 * 1024, $remaining));

                if ($data === false || $data === '') {
                    throw new \RuntimeException(
                        'Source log was truncated or became unreadable while creating snapshot.'
                    );
                }

                $length = strlen($data);
                $written = 0;

                while ($written < $length) {
                    $count = fwrite($output, substr($data, $written));

                    if ($count === false || $count === 0) {
                        throw new \RuntimeException('Unable to write import snapshot.');
                    }

                    $written += $count;
                }

                $remaining -= $length;
            }

            fflush($output);
            fclose($output);
            $output = null;
        } catch (\Throwable $e) {
            if (is_resource($output)) {
                fclose($output);
            }

            if (is_string($snapshot) && is_file($snapshot)) {
                @unlink($snapshot);
            }

            throw $e;
        } finally {
            fclose($source);
        }

        $hash = hash_file('sha256', $snapshot);

        if ($hash === false) {
            @unlink($snapshot);
            throw new \RuntimeException('Unable to calculate snapshot hash.');
        }

        $size = (int) filesize($snapshot);
        $modified = (int) filemtime($snapshot);

        $job = PerformanceImportJob::create([
            'source_type' => 'access_log',
            'file_name' => basename($realPath),
            'source_key' => $hash,
            'status' => 'queued',
            'started_at' => null,
            'timezone' => $timezone ?: config('performance.timezone', config('app.timezone', 'UTC')),
            'meta' => [
                'source_path' => $snapshot,
                'source_hash' => $hash,
                'source_size' => $size,
                'source_mtime' => $modified,
                'chunk_size' => $this->chunkSize,
                'processed_lines' => 0,
                'checkpoint_bytes' => 0,
                'queued_at' => Carbon::now()->toIso8601String(),
                'queue_name' => (string) config('performance.queue_name', 'performance'),
                'snapshot' => true,
                'original_file' => basename($realPath),
                'original_size_at_queue' => $size,
            ],
        ]);

        ProcessAccessLogChunk::dispatch($job->id)
            ->onQueue((string) config('performance.queue_name', 'performance'));

        return $job->fresh();
    }


    public function process(int $importJobId): void
    {
        $guard = Cache::lock('performance:import:job:' . $importJobId, (int) config('performance.import_lock_seconds', 1800));
        try {
            if (!$guard->get()) {
                throw new \RuntimeException('Import job ' . $importJobId . ' is already being processed.');
            }

            $job = PerformanceImportJob::findOrFail($importJobId);
            if ($job->status === 'completed') {
                return;
            }


            $meta = (array) $job->meta;
            $sourcePath = (string) ($meta['source_path'] ?? '');

            if (
                $sourcePath === ''
                || !is_file($sourcePath)
                || !is_readable($sourcePath)
            ) {
                throw new \RuntimeException('Import snapshot is missing or unreadable.');
            }

            $identity = [
                'hash' => hash_file('sha256', $sourcePath),
                'size' => (int) filesize($sourcePath),
                'mtime' => (int) filemtime($sourcePath),
            ];

            if (isset($meta['source_hash']) && (string) $meta['source_hash'] !== (string) $identity['hash']) {
                throw new \RuntimeException('Source file hash changed since import was queued; refusing to continue.');
            }
            if (isset($meta['source_size']) && (int) $meta['source_size'] !== $identity['size']) {
                throw new \RuntimeException('Source file size changed since import was queued; refusing to continue.');
            }
            if (isset($meta['source_mtime']) && (int) $meta['source_mtime'] !== $identity['mtime']) {
                throw new \RuntimeException('Source file changed while queued; import a stable or rotated copy.');
            }

            $meta['source_hash'] = $identity['hash'];
            $meta['source_size'] = $identity['size'];
            $meta['source_mtime'] = $identity['mtime'];
            $job->meta = $meta;
            $job->save();

            $tz = (string) ($job->timezone ?: config('performance.timezone', config('app.timezone', 'UTC')));
            $stagedPath = $this->prepareStage($sourcePath, $identity['hash'], $meta);

            $chunk = $this->processFileStream($stagedPath, $meta, $this->chunkSize, $tz);

            DB::transaction(function () use ($job, $chunk, $tz, $meta, $stagedPath) {
                $lockedJob = PerformanceImportJob::lockForUpdate()->findOrFail($job->id);
                if ($lockedJob->status === 'completed') {
                    return;
                }

                $lockedJob->status = 'running';
                if ($lockedJob->started_at === null) {
                    $lockedJob->started_at = Carbon::now();
                }

                if (!empty($chunk['hourly'])) {
                    $this->flushHourly($chunk['hourly']);
                }
                if (!empty($chunk['client'])) {
                    $this->flushClient($chunk['client']);
                }

                $lockedMeta = (array) $lockedJob->meta;
                $processedBefore = (int) ($lockedMeta['processed_lines'] ?? 0);
                $processedAfter = $processedBefore + (int) $chunk['processed_lines'];

                $lockedJob->records_parsed = (int) $lockedJob->records_parsed + (int) $chunk['parsed'];
                $lockedJob->records_rejected = (int) $lockedJob->records_rejected + (int) $chunk['rejected'];
                $lockedJob->records_total = $processedAfter;

                if ($chunk['coverage_start'] !== null) {
                    if ($lockedJob->coverage_start === null || $chunk['coverage_start']->lt($lockedJob->coverage_start)) {
                        $lockedJob->coverage_start = $chunk['coverage_start'];
                    }
                }
                if ($chunk['coverage_end'] !== null) {
                    if ($lockedJob->coverage_end === null || $chunk['coverage_end']->gt($lockedJob->coverage_end)) {
                        $lockedJob->coverage_end = $chunk['coverage_end'];
                    }
                }

                $lockedMeta['processed_lines'] = $processedAfter;
                $lockedMeta['checkpoint_bytes'] = (int) $chunk['checkpoint_bytes'];
                $lockedMeta['staged_path'] = $stagedPath;
                $lockedMeta['last_chunk_lines'] = (int) $chunk['processed_lines'];
                $lockedMeta['last_chunk_at'] = Carbon::now($tz)->toIso8601String();
                $lockedMeta['parse_errors'] = array_values(array_merge((array) ($lockedMeta['parse_errors'] ?? []), (array) $chunk['errors']));
                if (count($lockedMeta['parse_errors']) > 10) {
                    $lockedMeta['parse_errors'] = array_slice($lockedMeta['parse_errors'], -10);
                }

                if ($chunk['eof']) {
                    $lockedJob->status = 'completed';
                    $lockedJob->finished_at = Carbon::now();
                } else {
                    $lockedJob->status = 'running';
                }

                $lockedJob->error_message = null;
                $lockedJob->meta = $lockedMeta;
                $lockedJob->save();

                if ($chunk['eof'] && is_string($stagedPath) && is_file($stagedPath)) {
                    @unlink($stagedPath);
                }
            });

            $lockedJob = $job->fresh();
            if ($lockedJob && !in_array($lockedJob->status, ['completed', 'failed'], true)) {
                ProcessAccessLogChunk::dispatch($job->id)
                    ->onQueue((string) config('performance.queue_name', 'performance'));
            }
        } catch (\Throwable $e) {
            try {
                $failedJob = PerformanceImportJob::find($importJobId);
                if ($failedJob) {
                    $failedJob->status = 'failed';
                    $failedJob->finished_at = Carbon::now();
                    $failedJob->error_message = mb_substr($e->getMessage(), 0, 4000);
                    $failedJob->meta = array_merge((array) $failedJob->meta, ['failed_at' => Carbon::now()->toIso8601String()]);
                    $failedJob->save();
                }
            } catch (\Throwable $ignored) {
                // Never conceal the original failure.
            }
            throw $e;
        } finally {
            optional($guard)->release();
        }
    }

    protected function prepareStage(string $sourcePath, string $sourceHash, array $meta): string
    {
        if (!$this->belongsToGzip($sourcePath)) {
            return $sourcePath;
        }

        $stageDir = (string) config('performance.import_stage_directory', storage_path('app/performance/staging'));
        if (!File::exists($stageDir)) {
            File::makeDirectory($stageDir, 0755, true);
        }

        $stagePath = rtrim(str_replace('\\', '/', $stageDir), '/') . '/' . $sourceHash . '.log';
        $partPath = $stagePath . '.part';

        if (is_file($stagePath)) {
            return $stagePath;
        }

        $source = $this->openCompressedFile($sourcePath);
        if (!is_resource($source)) {
            throw new \RuntimeException('Unable to open compressed log file.');
        }

        $out = fopen($partPath, 'wb');
        if (!is_resource($out)) {
            throw new \RuntimeException('Unable to create temporary decompressed log file.');
        }

        try {
            while (!feof($source)) {
                $data = fread($source, 1024 * 1024);
                if ($data === false) {
                    throw new \RuntimeException('Unable to read compressed log data.');
                }
                fwrite($out, $data);
            }
        } finally {
            fclose($out);
            if (is_resource($source)) {
                @gzclose($source);
            }
        }

        if (!@rename($partPath, $stagePath)) {
            @unlink($partPath);
            throw new \RuntimeException('Unable to finalise decompressed log file.');
        }

        return $stagePath;
    }

    protected function belongsToGzip(string $path): bool
    {
        if (str_ends_with(strtolower($path), '.gz')) {
            return true;
        }

        $fp = fopen($path, 'rb');
        if (!$fp) {
            return false;
        }
        $magic = fread($fp, 2);
        fclose($fp);
        return $magic === "\x1f\x8b";
    }

    protected function processFileStream(string $path, array $meta, int $limit, string $timezone): array
    {
        $startByte = (int) ($meta['checkpoint_bytes'] ?? 0);
        $handle = fopen($path, 'rb');
        if (!is_resource($handle)) {
            throw new \RuntimeException('Unable to open staged log file.');
        }

        if ($startByte > 0) {
            fseek($handle, $startByte);
        }

        $hourly = [];
        $client = [];
        $processedLines = 0;
        $parsed = 0;
        $rejected = 0;
        $coverageStart = null;
        $coverageEnd = null;
        $errors = [];
        $eof = false;

        while ($processedLines < $limit) {
            $line = fgets($handle);
            if ($line === false) {
                $eof = true;
                break;
            }

            $processedLines++;
            $lineNo = (int) ($meta['processed_lines'] ?? 0) + $processedLines;
            $result = $this->parser->parseLine($line);

            if ($result === null) {
                $rejected++;
                if (count($errors) < 10) {
                    $errors[] = ['line' => $lineNo, 'content' => mb_substr(trim($line), 0, 160)];
                }
                continue;
            }

            if ($timezone) {
                $result['timestamp'] = $result['timestamp']->setTimezone($timezone);
            }

            $ts = $result['timestamp'];
            if ($coverageStart === null || $ts->lt($coverageStart)) {
                $coverageStart = $ts;
            }
            if ($coverageEnd === null || $ts->gt($coverageEnd)) {
                $coverageEnd = $ts;
            }

            $parsed++;
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
        }

        $checkpoint = (int) ftell($handle);
        fclose($handle);

        if (!$eof && $processedLines === 0) {
            $eof = true;
        }

        return [
            'processed_lines' => $processedLines,
            'parsed' => $parsed,
            'rejected' => $rejected,
            'coverage_start' => $coverageStart,
            'coverage_end' => $coverageEnd,
            'hourly' => $hourly,
            'client' => $client,
            'errors' => $errors,
            'checkpoint_bytes' => $checkpoint,
            'eof' => $eof,
        ];
    }

    protected function flushHourly(array $rows): void
    {
        $this->flushHourlyRows($rows);
    }

    protected function flushHourlyRows(array $rows): void
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

    protected function openCompressedFile(string $path)
    {
        if (str_ends_with(strtolower($path), '.gz')) {
            return gzopen($path, 'rb');
        }
        $fp = fopen($path, 'rb');
        $magic = fread($fp, 2);
        fclose($fp);
        if ($magic === "\x1f\x8b") {
            return gzopen($path, 'rb');
        }
        return gzopen($path, 'rb');
    }
}
