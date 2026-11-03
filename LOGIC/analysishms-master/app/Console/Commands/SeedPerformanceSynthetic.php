<?php

namespace App\Console\Commands;

use App\Models\PerformanceCpuSample;
use App\Models\PerformanceQueryFingerprint;
use App\Models\PerformanceQueryHourly;
use App\Models\PerformanceRequestQuery;
use App\Services\Performance\AccessLogImporter;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class SeedPerformanceSynthetic extends Command
{
    protected $signature = 'performance:seed-synthetic';

    protected $description = 'Create labeled synthetic performance fixtures for local development and tests';

    public function handle(AccessLogImporter $importer): int
    {
        $tz = (string) config('performance.timezone', 'Asia/Kolkata');
        $now = Carbon::now($tz)->minute(0)->second(0)->microsecond(0);
        $start = $now->copy()->subHours(72);

        $dir = $importer->allowedDirectory();
        $sampleFile = $dir . '/synthetic_access_sample.log';

        if (!File::exists($sampleFile)) {
            $endpoints = [
                ['GET', '/login', 200, 1200],
                ['GET', '/superadmin', 200, 4000],
                ['GET', '/admin/performance', 200, 5000],
                ['GET', '/admin/performance/endpoints', 200, 6000],
                ['GET', '/admin/performance/cpu', 200, 6000],
                ['POST', '/report/export', 200, 150000],
                ['GET', '/print/receipt/{id}', 200, 12000],
                ['GET', '/dashboard/summary', 200, 3000],
                ['GET', '/api/xhr/status/{id}', 200, 800],
                ['GET', '/reports/daily', 200, 45000],
                ['GET', '/assets/app.css', 200, 900],
                ['GET', '/favicon.ico', 404, 100],
            ];
            $agents = [
                'Mozilla/5.0 (Windows NT 10.0; Win64; x64)',
                'Python Dashboard App',
                'curl/8.0',
            ];
            $ips = ['192.168.1.10', '192.168.1.11', '10.0.0.5', '203.0.113.7'];

            $lines = [];
            $cursor = $start->copy();
            while ($cursor->lt($now)) {
                $perHour = rand(10, 40);
                for ($i = 0; $i < $perHour; $i++) {
                    $ep = $endpoints[array_rand($endpoints)];
                    // make reporting endpoints spiky around certain hours
                    if (str_contains($ep[1], 'report') && rand(1, 100) > 70) {
                        continue;
                    }
                    $ip = $ips[array_rand($ips)];
                    $ua = $agents[array_rand($agents)];
                    $status = $ep[2];
                    if (rand(1, 100) <= 5) {
                        $status = 500;
                    } elseif (rand(1, 100) <= 8) {
                        $status = 404;
                    } elseif (rand(1, 100) <= 4) {
                        $status = 302;
                    }
                    $bytes = $ep[3] + rand(0, (int) ($ep[3] * 0.2));
                    $minute = rand(0, 59);
                    $second = rand(0, 59);
                    $ts = $cursor->copy()->minute($minute)->second($second);
                    $path = str_replace('{id}', (string) rand(100, 999), $ep[1]);
                    $lines[] = sprintf(
                        '%s - - [%s] "%s %s HTTP/1.1" %d %d "-" "%s"',
                        $ip,
                        $ts->format('d/M/Y:H:i:s O'),
                        $ep[0],
                        $path,
                        $status,
                        $bytes,
                        $ua
                    );
                }
                $cursor->addHour();
            }
            File::put($sampleFile, implode("\n", $lines) . "\n");
            $this->info('Synthetic access log created: ' . $sampleFile);
        }

        try {
            $job = $importer->importFile(basename($sampleFile), true);
            $this->info("Access-log import status: {$job->status} ({$job->records_parsed} parsed)");
        } catch (\Throwable $e) {
            $this->error('Import failed: ' . $e->getMessage());
        }

        // CPU samples
        if (PerformanceCpuSample::where('source', 'synthetic')->count() === 0) {
            $cpuRows = [];
            $cursor = $start->copy();
            while ($cursor->lt($now)) {
                $samplesPerHour = 4;
                for ($i = 0; $i < $samplesPerHour; $i++) {
                    $ts = $cursor->copy()->addMinutes($i * 15);
                    $hour = (int) $ts->format('G');
                    $isSpike = in_array($hour, [10, 11, 15], true) && $i === 1;
                    $cpu = $isSpike ? rand(82, 97) : rand(8, 45);
                    $memoryTotal = 8 * 1024 * 1024 * 1024;
                    $memoryUsed = (int) (($isSpike ? 0.80 : 0.35) * $memoryTotal + rand(0, 200000000));
                    $cpuRows[] = [
                        'sampled_at' => $ts->format('Y-m-d H:i:s'),
                        'cpu_percent' => $cpu,
                        'load_1' => $isSpike ? rand(4, 9) : (rand(1, 30) / 10),
                        'load_5' => $isSpike ? rand(3, 7) : (rand(1, 25) / 10),
                        'load_15' => $isSpike ? rand(2, 5) : (rand(1, 20) / 10),
                        'memory_used_bytes' => $memoryUsed,
                        'memory_total_bytes' => $memoryTotal,
                        'php_workers' => $isSpike ? rand(30, 60) : rand(4, 18),
                        'php_avg_request_ms' => $isSpike ? rand(800, 2400) / 10 : rand(50, 2500) / 10,
                        'db_cpu_percent' => $isSpike ? rand(40, 85) : rand(2, 25),
                        'queue_pending' => $isSpike ? rand(20, 80) : rand(0, 12),
                        'queue_failed' => rand(0, 2),
                        'source' => 'synthetic',
                        'data_source' => 'synthetic',
                        'collector' => 'synthetic-seeder',
                        'meta' => json_encode(['synthetic' => true, 'labeled' => true]),
                        'created_at' => Carbon::now($tz),
                        'updated_at' => Carbon::now($tz),
                    ];
                }
                $cursor->addHour();
            }
            // chunk insert via Eloquent would be slow; use DB
            foreach (array_chunk($cpuRows, 500) as $chunk) {
                PerformanceCpuSample::insert($chunk);
            }
            $this->info('Synthetic CPU samples seeded: ' . count($cpuRows));
        }

        // Query fingerprints
        if (PerformanceQueryFingerprint::count() === 0) {
            $patterns = [
                ['SELECT * FROM bookings WHERE propertyid = ? AND created_at BETWEEN ? AND ?', 'reporting'],
                ['SELECT COUNT(*) FROM activity_logs WHERE propertyid = ? GROUP BY module', 'dashboard'],
                ['SELECT ... FROM guest_folio WHERE billno = ?', 'printing'],
                ['SELECT ... FROM mall_receipt ...', 'mall'],
                ['SELECT ... FROM sale1 WHERE ...', 'reporting'],
                ['INSERT INTO activity_logs ...', 'logging'],
                ['SELECT ... FROM items WHERE ... LIKE ?', 'search'],
                ['SELECT ... FROM room_occ ...', 'availability'],
                ['SELECT ... FROM daily_report_snapshots ...', 'reporting'],
                ['SELECT ... FROM printing_setup ...', 'printing'],
                ['SELECT ... FROM company ...', 'dashboard'],
                ['SELECT ... FROM users WHERE ...', 'auth'],
            ];
            $fingerprints = [];
            foreach ($patterns as [$sql, $category]) {
                $fp = md5($sql);
                $fingerprints[$category][] = PerformanceQueryFingerprint::create([
                    'fingerprint' => $fp,
                    'normalized_sql' => $sql,
                    'sample_sql' => $sql . ' /* synthetic */',
                    'category' => $category,
                    'db_name' => 'db_analysis',
                    'tenant_property' => $category === 'mall' ? '1001' : null,
                    'data_source' => 'synthetic',
                    'exec_count' => rand(20, 5000),
                    'total_exec_ms' => rand(1000, 500000) / 10,
                    'avg_exec_ms' => rand(5, 2500) / 10,
                    'max_exec_ms' => rand(50, 6000) / 10,
                    'rows_examined' => rand(100, 200000),
                    'rows_returned' => rand(1, 5000),
                    'first_seen' => $start,
                    'last_seen' => $now,
                ]);
            }

            // query hourly records and correlations
            $allFingerprints = PerformanceQueryFingerprint::all();
            $hourlyRows = [];
            $cursor = $start->copy();
            $correlations = 0;
            while ($cursor->lt($now)) {
                foreach ($allFingerprints as $fp) {
                    if (rand(1, 100) <= 65) {
                        $hourlyRows[] = [
                            'bucket_start' => $cursor->format('Y-m-d H:i:s'),
                            'fingerprint_id' => $fp->id,
                            'exec_count' => rand(1, 80),
                            'total_exec_ms' => rand(5, 5000) / 10,
                            'max_exec_ms' => rand(5, 1000) / 10,
                            'rows_examined' => rand(0, 10000),
                            'rows_returned' => rand(0, 500),
                            'created_at' => Carbon::now($tz),
                            'updated_at' => Carbon::now($tz),
                        ];
                    }
                }
                // a few correlations per hour
                for ($i = 0; $i < 3; $i++) {
                    PerformanceRequestQuery::create([
                        'window_start' => $cursor,
                        'request_identifier' => 'synthetic-req-' . $cursor->timestamp . '-' . $i,
                        'method' => 'GET',
                        'endpoint' => '/reports/daily',
                        'fingerprint_id' => $allFingerprints->random()->id,
                        'query_count' => rand(1, 12),
                        'total_exec_ms' => rand(10, 3000) / 10,
                        'source' => 'synthetic',
                        'data_source' => 'synthetic',
                        'data_source' => 'synthetic',
                        'created_at' => Carbon::now($tz),
                        'updated_at' => Carbon::now($tz),
                    ]);
                    $correlations++;
                }
                if (count($hourlyRows) >= 300) {
                    PerformanceQueryHourly::insert($hourlyRows);
                    $hourlyRows = [];
                }
                $cursor->addHour();
            }
            if (!empty($hourlyRows)) {
                PerformanceQueryHourly::insert($hourlyRows);
            }
            $this->info('Synthetic query intelligence seeded: fingerprints=' . $allFingerprints->count() . ', correlations=' . $correlations);
        }

        return self::SUCCESS;
    }
}
