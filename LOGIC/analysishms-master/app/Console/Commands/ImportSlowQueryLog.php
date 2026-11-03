<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ImportSlowQueryLog extends Command
{
    protected $signature = 'performance:import-slow-query-log
        {--path=/var/log/mariadb/slow-query.log : MariaDB slow-query log path}
        {--threshold=3 : Import queries strictly slower than this many seconds}';

    protected $description = 'Import real slow-query log data into performance fingerprint and hourly tables';

    public function handle(): int
    {
        $path = (string) $this->option('path');
        $threshold = (float) $this->option('threshold');

        if ($threshold < 0) {
            $this->error('Threshold cannot be negative.');
            return self::FAILURE;
        }

        if (!is_file($path) || !is_readable($path)) {
            $this->error("Log file does not exist or is not readable: {$path}");
            return self::FAILURE;
        }

        $checkpointDirectory = storage_path('app/performance/staging');
        File::ensureDirectoryExists($checkpointDirectory);

        $checkpointPath = $checkpointDirectory . '/slow-query-import.json';
        $lockPath = $checkpointDirectory . '/slow-query-import.lock';
        $lock = fopen($lockPath, 'c');

        if (!$lock || !flock($lock, LOCK_EX | LOCK_NB)) {
            if (is_resource($lock)) {
                fclose($lock);
            }

            $this->error('Another slow-query import is already running.');
            return self::FAILURE;
        }

        try {
            clearstatcache(true, $path);
            $fileSize = filesize($path);
            $inode = fileinode($path);

            $checkpoint = [];

            if (is_file($checkpointPath)) {
                $decoded = json_decode(
                    (string) file_get_contents($checkpointPath),
                    true
                );

                if (is_array($decoded)) {
                    $checkpoint = $decoded;
                }
            }

            $sameFile = ($checkpoint['path'] ?? null) === realpath($path)
                && ($checkpoint['inode'] ?? null) === $inode
                && (int) ($checkpoint['offset'] ?? 0) <= $fileSize;

            $offset = $sameFile ? (int) $checkpoint['offset'] : 0;

            $handle = fopen($path, 'rb');

            if (!$handle) {
                $this->error('Unable to open the slow-query log.');
                return self::FAILURE;
            }

            if ($offset > 0) {
                fseek($handle, $offset);
            }

            $pendingStart = $offset;
            $entry = '';
            $entryStart = $offset;
            $entriesRead = 0;
            $entriesImported = 0;
            $entriesSkipped = 0;
            $lastCompleteOffset = $offset;
            $lastEntry = null;

            while (($line = fgets($handle)) !== false) {
                $lineStart = ftell($handle) - strlen($line);

                if (str_starts_with($line, '# Time:')) {
                    if ($entry !== '') {
                        $result = $this->processEntry(
                            $entry,
                            $threshold,
                            $entriesRead,
                            $entriesImported
                        );

                        if ($result === null) {
                            $entriesSkipped++;
                        }

                        $lastCompleteOffset = $lineStart;
                    }

                    $entry = $line;
                    $entryStart = $lineStart;
                    continue;
                }

                if ($entry === '') {
                    // Ignore an incomplete preamble before the first entry.
                    $pendingStart = ftell($handle);
                    continue;
                }

                $entry .= $line;
            }

            $eof = ftell($handle);

            // Only process the last entry if the file ends with a newline.
            // This avoids checkpointing a potentially incomplete write.
            if ($entry !== '' && $eof > $entryStart) {
                $lastByte = '';
                fseek($handle, -1, SEEK_END);
                $lastByte = fread($handle, 1);

                if ($lastByte === "\n") {
                    $result = $this->processEntry(
                        $entry,
                        $threshold,
                        $entriesRead,
                        $entriesImported
                    );

                    if ($result === null) {
                        $entriesSkipped++;
                    }

                    $lastCompleteOffset = $eof;
                }
            }

            fclose($handle);

            /*
             * Commit the checkpoint only after all entry transactions have
             * completed. The checkpoint ends at a complete entry boundary.
             */
            $newCheckpoint = [
                'path' => realpath($path),
                'inode' => $inode,
                'offset' => $lastCompleteOffset,
                'updated_at' => now()->toDateTimeString(),
            ];

            $tempPath = $checkpointPath . '.tmp';

            if (file_put_contents(
                $tempPath,
                json_encode($newCheckpoint, JSON_PRETTY_PRINT),
                LOCK_EX
            ) === false || !rename($tempPath, $checkpointPath)) {
                $this->error('Could not save the import checkpoint.');
                return self::FAILURE;
            }

            $this->info("Entries examined: {$entriesRead}");
            $this->info("Slow-query entries imported: {$entriesImported}");
            $this->info("Entries skipped or below threshold: {$entriesSkipped}");
            $this->info("Checkpoint offset: {$lastCompleteOffset}");

            return self::SUCCESS;
        } catch (\Throwable $e) {
            report($e);
            $this->error($e->getMessage());

            return self::FAILURE;
        } finally {
            flock($lock, LOCK_UN);
            fclose($lock);
        }
    }

    private function processEntry(
        string $entry,
        float $threshold,
        int &$entriesRead,
        int &$entriesImported
    ): ?bool {
        $entriesRead++;

        if (!preg_match('/^# Query_time:\s*([0-9.]+)/m', $entry, $timeMatch)) {
            return null;
        }

        $querySeconds = (float) $timeMatch[1];

        if ($querySeconds <= $threshold) {
            return null;
        }

        if (!preg_match('/^SET timestamp=(\d+);/m', $entry, $timestampMatch)) {
            return null;
        }

        $timestamp = (int) $timestampMatch[1];
        $seenAt = \Carbon\Carbon::createFromTimestamp(
            $timestamp,
            config('performance.timezone', config('app.timezone', 'UTC'))
        );

        $schema = null;

        if (preg_match('/^#.*Schema:\s*([^\s]+)/m', $entry, $schemaMatch)) {
            $schema = $schemaMatch[1];
        }

        if (!$schema && preg_match('/^use\s+`?([^`;]+)`?;/mi', $entry, $schemaMatch)) {
            $schema = $schemaMatch[1];
        }

        $sql = $this->extractSql($entry);

        if ($sql === null) {
            return null;
        }

        $normalized = $this->normalizeSql($sql);
        $fingerprint = hash('sha256', strtolower($normalized));
        $executionMs = $querySeconds * 1000;

        preg_match(
            '/^# Query_time:\s*[0-9.]+\s+Lock_time:\s*[0-9.]+\s+Rows_sent:\s*(\d+)\s+Rows_examined:\s*(\d+)/m',
            $entry,
            $rowMatch
        );

        $rowsSent = (int) ($rowMatch[1] ?? 0);
        $rowsExamined = (int) ($rowMatch[2] ?? 0);

        $category = $this->categorize($sql);
        $bucket = $seenAt->copy()->startOfHour();

        DB::transaction(function () use (
            $fingerprint,
            $normalized,
            $sql,
            $category,
            $schema,
            $seenAt,
            $executionMs,
            $rowsSent,
            $rowsExamined,
            $bucket
        ) {
            $existing = DB::table('perf_query_fingerprints')
                ->where('fingerprint', $fingerprint)
                ->lockForUpdate()
                ->first();

            if ($existing) {
                DB::table('perf_query_fingerprints')
                    ->where('id', $existing->id)
                    ->update([
                        'exec_count' => DB::raw('exec_count + 1'),
                        'total_exec_ms' => DB::raw(
                            'total_exec_ms + ' . (float) $executionMs
                        ),
                        'avg_exec_ms' => DB::raw(
                            '(total_exec_ms + ' . (float) $executionMs .
                                ') / (exec_count + 1)'
                        ),
                        'max_exec_ms' => DB::raw(
                            'GREATEST(max_exec_ms, ' . (float) $executionMs . ')'
                        ),
                        'rows_examined' => DB::raw(
                            'rows_examined + ' . (int) $rowsExamined
                        ),
                        'rows_returned' => DB::raw(
                            'rows_returned + ' . (int) $rowsSent
                        ),
                        'last_seen' => $seenAt->toDateTimeString(),
                        'updated_at' => now(),
                    ]);

                $fingerprintId = $existing->id;
            } else {
                $fingerprintId = DB::table('perf_query_fingerprints')->insertGetId([
                    'fingerprint' => $fingerprint,
                    'normalized_sql' => $normalized,
                    'sample_sql' => $sql,
                    'category' => $category,
                    'db_name' => $schema,
                    'tenant_property' => preg_match('/^db_(\d+)$/', (string) $schema, $m)
                        ? $m[1]
                        : null,
                    'exec_count' => 1,
                    'total_exec_ms' => $executionMs,
                    'avg_exec_ms' => $executionMs,
                    'max_exec_ms' => $executionMs,
                    'rows_examined' => $rowsExamined,
                    'rows_returned' => $rowsSent,
                    'first_seen' => $seenAt->toDateTimeString(),
                    'last_seen' => $seenAt->toDateTimeString(),
                    'data_source' => 'slow_query_log',
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }

            $hourly = DB::table('perf_query_hourly')
                ->where('bucket_start', $bucket->toDateTimeString())
                ->where('fingerprint_id', $fingerprintId)
                ->where('data_source', 'slow_query_log')
                ->lockForUpdate()
                ->first();

            if ($hourly) {
                DB::table('perf_query_hourly')
                    ->where('id', $hourly->id)
                    ->update([
                        'exec_count' => DB::raw('exec_count + 1'),
                        'total_exec_ms' => DB::raw(
                            'total_exec_ms + ' . (float) $executionMs
                        ),
                        'max_exec_ms' => DB::raw(
                            'GREATEST(max_exec_ms, ' . (float) $executionMs . ')'
                        ),
                        'rows_examined' => DB::raw(
                            'rows_examined + ' . (int) $rowsExamined
                        ),
                        'rows_returned' => DB::raw(
                            'rows_returned + ' . (int) $rowsSent
                        ),
                        'updated_at' => now(),
                    ]);
            } else {
                DB::table('perf_query_hourly')->insert([
                    'bucket_start' => $bucket->toDateTimeString(),
                    'fingerprint_id' => $fingerprintId,
                    'exec_count' => 1,
                    'total_exec_ms' => $executionMs,
                    'max_exec_ms' => $executionMs,
                    'rows_examined' => $rowsExamined,
                    'rows_returned' => $rowsSent,
                    'data_source' => 'slow_query_log',
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        });

        $entriesImported++;

        return true;
    }

    private function extractSql(string $entry): ?string
    {
        $lines = preg_split('/\r\n|\r|\n/', $entry);
        $sqlLines = [];
        $started = false;

        foreach ($lines as $line) {
            if (preg_match('/^SET timestamp=\d+;/i', trim($line))) {
                $started = true;
                continue;
            }

            if (!$started || trim($line) === '') {
                continue;
            }

            if (preg_match('/^use\s+`?[^`;]+`?;/i', trim($line))) {
                continue;
            }

            $sqlLines[] = $line;
        }

        $sql = trim(implode("\n", $sqlLines));

        return $sql !== '' ? $sql : null;
    }

    private function normalizeSql(string $sql): string
    {
        $sql = preg_replace('/\/\*.*?\*\//s', ' ', $sql);
        $sql = preg_replace('/--[^\r\n]*/', ' ', $sql);
        $sql = preg_replace('/#[^\r\n]*/', ' ', $sql);
        $sql = preg_replace("/'(?:''|\\\\\\\\.|[^'])*'/s", '?', $sql);
        $sql = preg_replace('/"(?:\\\\\\\\.|[^"])*"/s', '?', $sql);
        $sql = preg_replace('/\b\d+(?:\.\d+)?\b/', '?', $sql);
        $sql = preg_replace('/\s+/', ' ', trim($sql));

        return $sql;
    }

    private function categorize(string $sql): string
    {
        if (preg_match('/^\s*SELECT\b/i', $sql)) {
            return 'select';
        }

        if (preg_match('/^\s*INSERT\b/i', $sql)) {
            return 'insert';
        }

        if (preg_match('/^\s*UPDATE\b/i', $sql)) {
            return 'update';
        }

        if (preg_match('/^\s*DELETE\b/i', $sql)) {
            return 'delete';
        }

        return 'other';
    }
}
