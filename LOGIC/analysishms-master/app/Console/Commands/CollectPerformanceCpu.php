<?php

namespace App\Console\Commands;

use App\Models\PerformanceCpuSample;
use Illuminate\Console\Command;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Throwable;

class CollectPerformanceCpu extends Command
{
    protected $signature = 'performance:collect-cpu {--interval=10}';
    protected $description = 'Collect real CPU, memory, PHP worker and MariaDB telemetry.';

    private bool $running = true;

    public function handle(): int
    {
        $interval = max(5, min(60, (int) $this->option('interval')));
        $ticks = max(1, (int) trim((string) shell_exec('getconf CLK_TCK 2>/dev/null')));
        $cores = max(1, (int) trim((string) shell_exec('nproc 2>/dev/null')));

        $previousCpu = $this->readSystemCpu();
        $previousDb = $this->readMariaDb();
        $previousAt = microtime(true);

        if (function_exists('pcntl_async_signals')) {
            pcntl_async_signals(true);
            pcntl_signal(SIGTERM, function () {
                $this->running = false;
            });
            pcntl_signal(SIGINT, function () {
                $this->running = false;
            });
        }

        $this->info("Collector started: interval={$interval}s, cores={$cores}");

        while ($this->running) {
            sleep($interval);
            if (!$this->running) {
                break;
            }

            $now = microtime(true);
            $elapsed = max(0.001, $now - $previousAt);
            $cpuNow = $this->readSystemCpu();
            $dbNow = $this->readMariaDb();

            $cpu = null;
            if ($previousCpu && $cpuNow) {
                $total = $cpuNow['total'] - $previousCpu['total'];
                $idle = $cpuNow['idle'] - $previousCpu['idle'];

                if ($total > 0 && $idle >= 0) {
                    $cpu = round(max(0, min(100, 100 * ($total - $idle) / $total)), 2);
                }
            }

            $dbCpu = null;
            if (
                $previousDb && $dbNow
                && $previousDb['pid'] === $dbNow['pid']
                && $dbNow['ticks'] >= $previousDb['ticks']
            ) {
                $cpuSeconds = ($dbNow['ticks'] - $previousDb['ticks']) / $ticks;
                $dbCpu = round(max(0, min(100, 100 * $cpuSeconds / ($elapsed * $cores))), 2);
            }

            $previousCpu = $cpuNow;
            $previousDb = $dbNow;
            $previousAt = $now;

            try {
                $load = preg_split('/\s+/', trim((string) file_get_contents('/proc/loadavg')));
                $memory = [];
                foreach (file('/proc/meminfo', FILE_IGNORE_NEW_LINES) as $line) {
                    if (preg_match('/^(MemTotal|MemAvailable):\s+(\d+)\s+kB/', $line, $m)) {
                        $memory[$m[1]] = (int) $m[2] * 1024;
                    }
                }

                $phpWorkers = 0;
                foreach (glob('/proc/[0-9]*/comm') ?: [] as $file) {
                    $name = trim((string) @file_get_contents($file));
                    if (in_array($name, ['lsphp', 'php-fpm'], true)) {
                        $phpWorkers++;
                    }
                }

                $pending = $this->safeCount('jobs');
                $failed = $this->safeCount('failed_jobs');
                $totalMemory = $memory['MemTotal'] ?? null;
                $availableMemory = $memory['MemAvailable'] ?? null;

                PerformanceCpuSample::create([
                    'sampled_at' => Carbon::now(config('performance.timezone', config('app.timezone', 'UTC'))),
                    'cpu_percent' => $cpu,
                    'load_1' => isset($load[0]) ? (float) $load[0] : null,
                    'load_5' => isset($load[1]) ? (float) $load[1] : null,
                    'load_15' => isset($load[2]) ? (float) $load[2] : null,
                    'memory_used_bytes' => $totalMemory !== null && $availableMemory !== null
                        ? max(0, $totalMemory - $availableMemory) : null,
                    'memory_total_bytes' => $totalMemory,
                    'php_workers' => $phpWorkers,
                    'php_avg_request_ms' => null,
                    'db_cpu_percent' => $dbCpu,
                    'queue_pending' => $pending,
                    'queue_failed' => $failed,
                    'source' => 'procfs',
                    'collector' => 'linux-procfs-v1',
                    'data_source' => 'live',
                    'meta' => [
                        'interval_seconds' => round($elapsed, 3),
                        'cpu_cores' => $cores,
                        'mariadb_pid' => $dbNow['pid'] ?? null,
                        'cpu_measurement' => $cpu === null ? 'baseline_or_counter_reset' : 'interval_delta',
                        'db_cpu_measurement' => $dbCpu === null ? 'baseline_or_pid_changed' : 'interval_delta',
                    ],
                ]);
            } catch (Throwable $e) {
                $this->error('Sample failed: ' . $e->getMessage());
            }
        }

        $this->info('Collector stopped.');
        return self::SUCCESS;
    }

    private function readSystemCpu(): ?array
    {
        $lines = @file('/proc/stat', FILE_IGNORE_NEW_LINES);
        if (!$lines || !preg_match('/^cpu\s+(.+)$/', $lines[0], $m)) {
            return null;
        }

        $v = array_map('intval', preg_split('/\s+/', trim($m[1])));
        if (count($v) < 5) {
            return null;
        }

        $v = array_slice($v, 0, 8);
        return ['total' => array_sum($v), 'idle' => $v[3] + $v[4]];
    }

    private function readMariaDb(): ?array
    {
        foreach (['mariadbd', 'mysqld'] as $name) {
            $output = trim((string) shell_exec('pgrep -xo ' . escapeshellarg($name) . ' 2>/dev/null'));
            if (!ctype_digit($output)) {
                continue;
            }

            $pid = (int) $output;
            $stat = @file_get_contents("/proc/{$pid}/stat");
            if ($stat === false || ($close = strrpos($stat, ')')) === false) {
                return null;
            }

            $fields = preg_split('/\s+/', trim(substr($stat, $close + 1)));
            if (!isset($fields[11], $fields[12])) {
                return null;
            }

            return [
                'pid' => $pid,
                'ticks' => (int) $fields[11] + (int) $fields[12],
            ];
        }

        return null;
    }

    private function safeCount(string $table): ?int
    {
        try {
            if (DB::getSchemaBuilder()->hasTable($table)) {
                return (int) DB::table($table)->count();
            }
        } catch (Throwable $e) {
            $this->warn("Unable to read {$table}.");
        }

        return null;
    }
}
