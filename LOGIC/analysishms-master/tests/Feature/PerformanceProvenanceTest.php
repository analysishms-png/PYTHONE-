<?php

namespace Tests\Feature;

use App\Models\PerformanceHttpHourly;
use App\Services\Performance\PerformanceMetricsService;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Support\Carbon;
use Tests\TestCase;

class PerformanceProvenanceTest extends TestCase
{
    use DatabaseTransactions;

    public function test_synthetic_http_rows_are_excluded_by_default(): void
    {
        $now = Carbon::now();

        PerformanceHttpHourly::query()->create([
            'bucket_start' => $now,
            'data_source' => 'imported_access_log',
            'method' => 'GET',
            'endpoint' => '/real',
            'request_count' => 10,
            'bytes_sent' => 100,
            'status_2xx' => 10,
        ]);

        PerformanceHttpHourly::query()->create([
            'bucket_start' => $now,
            'data_source' => 'synthetic',
            'method' => 'GET',
            'endpoint' => '/synthetic',
            'request_count' => 999,
            'bytes_sent' => 999,
            'status_2xx' => 999,
        ]);

        $metrics = app(PerformanceMetricsService::class);
        $windowStart = $now->copy()->subHour();
        $windowEnd = $now->copy()->addHour();

        $excluding = (int) $metrics->summary($windowStart, $windowEnd, false)['total_requests'];
        $including = (int) $metrics->summary($windowStart, $windowEnd, true)['total_requests'];

        $this->assertSame(999, $including - $excluding);
    }
}
