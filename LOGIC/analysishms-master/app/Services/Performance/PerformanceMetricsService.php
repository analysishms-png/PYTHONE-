<?php

namespace App\Services\Performance;

use App\Models\PerformanceCpuSample;
use App\Models\PerformanceHttpHourly;
use Carbon\Carbon;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;

class PerformanceMetricsService
{
    protected function includeSynthetic(?bool $value = null): bool
    {
        if ($value !== null) {
            return $value;
        }
        return request()->boolean('include_synthetic', app()->environment('local', 'testing'));
    }

    public function range(array $filters): array
    {
        $window = (int) ($filters['window'] ?? config('performance.default_window_hours', 24));
        if (!in_array($window, [24, 48, 72], true)) {
            $window = 24;
        }

        $tz = (string) config('performance.timezone', config('app.timezone', 'UTC'));

        if (!empty($filters['from']) && !empty($filters['to'])) {
            try {
                $start = Carbon::parse($filters['from'], $tz)->startOfMinute();
                $end = Carbon::parse($filters['to'], $tz)->endOfMinute();
                if ($end->lt($start)) {
                    $end = $start->copy()->addHours($window);
                }
                return [$start, $end];
            } catch (\Throwable $e) {
                // Fall through to window calculation.
            }
        }

        $end = Carbon::now($tz);
        $start = $end->copy()->subHours($window);
        return [$start, $end];
    }

    public function summary(Carbon $start, Carbon $end, ?bool $includeSynthetic = null): array
    {
        $base = PerformanceHttpHourly::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'));

        $totals = (clone $base)->selectRaw('
            COALESCE(SUM(request_count),0) as total_requests,
            COUNT(DISTINCT CONCAT(method, " ", endpoint)) as unique_endpoints,
            COALESCE(SUM(status_4xx),0) as responses_4xx,
            COALESCE(SUM(status_5xx),0) as responses_5xx,
            COALESCE(SUM(status_3xx),0) as responses_3xx,
            COALESCE(SUM(bytes_sent),0) as total_bytes,
            COALESCE(SUM(duration_samples),0) as duration_samples,
            COALESCE(SUM(duration_sum_ms),0) as duration_sum_ms,
            MIN(duration_min_ms) as min_ms,
            MAX(duration_max_ms) as max_ms
        ')->first();

        $totalRequests = (int) ($totals->total_requests ?? 0);
        $responseBytes = (int) ($totals->total_bytes ?? 0);
        $samples = (int) ($totals->duration_samples ?? 0);
        $sumMs = (float) ($totals->duration_sum_ms ?? 0);

        $cpuSamples = PerformanceCpuSample::query()
            ->whereBetween('sampled_at', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderBy('sampled_at')
            ->get();

        $memoryAvailable = $cpuSamples->filter(function ($s) {
            return $s->memory_used_bytes !== null && $s->memory_total_bytes !== null && $s->memory_total_bytes > 0;
        })->isNotEmpty();

        $latestImport = \App\Models\PerformanceImportJob::query()
            ->where('status', 'completed')
            ->orderByDesc('finished_at')
            ->first();

        return [
            'window_start' => $start,
            'window_end' => $end,
            'total_requests' => $totalRequests,
            'unique_endpoints' => (int) ($totals->unique_endpoints ?? 0),
            'responses_4xx' => (int) ($totals->responses_4xx ?? 0),
            'responses_5xx' => (int) ($totals->responses_5xx ?? 0),
            'redirects' => (int) ($totals->responses_3xx ?? 0),
            'total_bytes' => $responseBytes,
            'avg_response_ms' => $samples > 0 ? round($sumMs / $samples, 2) : null,
            'duration_samples' => $samples,
            'duration_min_ms' => $totals->min_ms,
            'duration_max_ms' => $totals->max_ms,
            'request_timing_available' => $samples > 0,
            'p95_available' => false,
            'p99_available' => false,
            'cpu_samples' => $cpuSamples->count(),
            'cpu_max' => $cpuSamples->max('cpu_percent'),
            'load_max' => $cpuSamples->max('load_1'),
            'memory_available' => $memoryAvailable,
            'queue_available' => $cpuSamples->filter(fn($s) => $s->queue_pending !== null)->isNotEmpty(),
            'import_job' => $latestImport,
            'coverage_start' => $latestImport?->coverage_start,
            'coverage_end' => $latestImport?->coverage_end,
        ];
    }

    public function hourlyTraffic(Carbon $start, Carbon $end, ?bool $includeSynthetic = null): Collection
    {
        return PerformanceHttpHourly::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->selectRaw('bucket_start, COALESCE(SUM(request_count),0) as requests, COALESCE(SUM(bytes_sent),0) as bytes')
            ->groupBy('bucket_start')
            ->orderBy('bucket_start')
            ->get();
    }

    public function endpointRanking(Carbon $start, Carbon $end, string $metric, int $limit = 10, ?bool $includeSynthetic = null): Collection
    {
        $allowed = [
            'request_count' => 'SUM(request_count)',
            'bytes_sent' => 'SUM(bytes_sent)',
            'total_time' => 'SUM(duration_sum_ms)',
            'avg_time' => 'CASE WHEN SUM(duration_samples) > 0 THEN SUM(duration_sum_ms)/SUM(duration_samples) ELSE 0 END',
            'p95' => 'MAX(duration_max_ms)',
            'p99' => 'MAX(duration_max_ms)',
            'responses_4xx' => 'SUM(status_4xx)',
            'responses_5xx' => 'SUM(status_5xx)',
            'redirects' => 'SUM(status_3xx)',
        ];

        $expr = $allowed[$metric] ?? $allowed['request_count'];
        $having = in_array($metric, ['total_time', 'avg_time'], true) ? 'HAVING SUM(duration_samples) > 0' : '';

        $sql = "SELECT method, endpoint,
            COALESCE(SUM(request_count),0) as request_count,
            COALESCE(SUM(bytes_sent),0) as bytes_sent,
            COALESCE(SUM(status_2xx),0) as status_2xx,
            COALESCE(SUM(status_3xx),0) as status_3xx,
            COALESCE(SUM(status_4xx),0) as status_4xx,
            COALESCE(SUM(status_5xx),0) as status_5xx,
            COALESCE(SUM(duration_samples),0) as duration_samples,
            COALESCE(SUM(duration_sum_ms),0) as duration_sum_ms,
            COALESCE(MAX(duration_max_ms),0) as duration_max_ms,
            COALESCE(MIN(duration_min_ms),0) as duration_min_ms
            FROM perf_http_hourly
            WHERE bucket_start BETWEEN ? AND ?
            AND (? = 1 OR data_source <> 'synthetic')
            GROUP BY method, endpoint
            {$having}
            ORDER BY ({$expr}) DESC
            LIMIT ?";

        $include = $this->includeSynthetic($includeSynthetic) ? 1 : 0;
        $rows = DB::select($sql, [$start->format('Y-m-d H:i:s'), $end->format('Y-m-d H:i:s'), $include, $limit]);
        return collect($rows);
    }

    public function endpointsPaginated(Carbon $start, Carbon $end, string $sort = 'request_count', string $direction = 'desc', int $perPage = 25, ?bool $includeSynthetic = null)
    {
        $allowedSort = ['request_count','bytes_sent','duration_sum_ms','status_4xx','status_5xx','status_3xx','endpoint','method'];
        if (!in_array($sort, $allowedSort, true)) {
            $sort = 'request_count';
        }
        $direction = strtolower($direction) === 'asc' ? 'asc' : 'desc';

        $expr = match ($sort) {
            'endpoint' => 'endpoint',
            'method' => 'method',
            default => "SUM({$sort})",
        };

        return PerformanceHttpHourly::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->selectRaw('method, endpoint,
                COALESCE(SUM(request_count),0) as request_count,
                COALESCE(SUM(bytes_sent),0) as bytes_sent,
                COALESCE(SUM(status_2xx),0) as status_2xx,
                COALESCE(SUM(status_3xx),0) as status_3xx,
                COALESCE(SUM(status_4xx),0) as status_4xx,
                COALESCE(SUM(status_5xx),0) as status_5xx,
                COALESCE(SUM(duration_samples),0) as duration_samples,
                COALESCE(SUM(duration_sum_ms),0) as duration_sum_ms')
            ->groupBy('method', 'endpoint')
            ->orderByRaw("{$expr} {$direction}")
            ->paginate($perPage)
            ->withQueryString();
    }

    public function endpointDetail(string $method, string $endpoint, Carbon $start, Carbon $end, ?bool $includeSynthetic = null): array
    {
        $base = PerformanceHttpHourly::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->where('method', $method)
            ->where('endpoint', $endpoint);

        $hourly = (clone $base)->orderBy('bucket_start')->get();
        $clients = \App\Models\PerformanceClientEndpoint::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->where('method', $method)
            ->where('endpoint', $endpoint)
            ->selectRaw('client_ip, user_agent, COUNT(*) as row_count, SUM(request_count) as requests, SUM(status_4xx) as e4, SUM(status_5xx) as e5, SUM(redirect_count) as redirects')
            ->groupBy('client_ip', 'user_agent')
            ->orderByDesc('requests')
            ->limit(20)
            ->get();

        return [
            'hourly' => $hourly,
            'clients' => $clients,
            'summary' => [
                'requests' => (int) $hourly->sum('request_count'),
                'bytes' => (int) $hourly->sum('bytes_sent'),
                'status_2xx' => (int) $hourly->sum('status_2xx'),
                'status_3xx' => (int) $hourly->sum('status_3xx'),
                'status_4xx' => (int) $hourly->sum('status_4xx'),
                'status_5xx' => (int) $hourly->sum('status_5xx'),
                'duration_samples' => (int) $hourly->sum('duration_samples'),
                'duration_sum_ms' => (float) $hourly->sum('duration_sum_ms'),
            ],
        ];
    }

    public function clientRanking(Carbon $start, Carbon $end, int $limit = 20, ?bool $includeSynthetic = null): Collection
    {
        return \App\Models\PerformanceClientEndpoint::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->selectRaw('client_ip, user_agent, user_agent_hash,
                SUM(request_count) as requests,
                SUM(bytes_sent) as bytes,
                SUM(status_4xx) as errors_4xx,
                SUM(status_5xx) as errors_5xx,
                SUM(redirect_count) as redirects')
            ->groupBy('client_ip', 'user_agent', 'user_agent_hash')
            ->orderByDesc('requests')
            ->limit($limit)
            ->get();
    }

    public function statusDistribution(Carbon $start, Carbon $end, ?bool $includeSynthetic = null): array
    {
        $t = PerformanceHttpHourly::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->selectRaw('COALESCE(SUM(status_2xx),0) s2, COALESCE(SUM(status_3xx),0) s3, COALESCE(SUM(status_4xx),0) s4, COALESCE(SUM(status_5xx),0) s5')
            ->first();
        return [
            '2xx' => (int) ($t->s2 ?? 0),
            '3xx' => (int) ($t->s3 ?? 0),
            '4xx' => (int) ($t->s4 ?? 0),
            '5xx' => (int) ($t->s5 ?? 0),
        ];
    }

    public function hourlyCpu(Carbon $start, Carbon $end, ?bool $includeSynthetic = null): Collection
    {
        return PerformanceCpuSample::query()
            ->whereBetween('sampled_at', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderBy('sampled_at')
            ->get();
    }

    public function userAgents(Carbon $start, Carbon $end, int $limit = 20, ?bool $includeSynthetic = null): Collection
    {
        return \App\Models\PerformanceClientEndpoint::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->selectRaw('user_agent, SUM(request_count) as requests')
            ->groupBy('user_agent')
            ->orderByDesc('requests')
            ->limit($limit)
            ->get();
    }

    public function ipEndpointCombos(Carbon $start, Carbon $end, int $limit = 20, ?bool $includeSynthetic = null): Collection
    {
        return \App\Models\PerformanceClientEndpoint::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->selectRaw('client_ip, method, endpoint, SUM(request_count) as requests')
            ->groupBy('client_ip', 'method', 'endpoint')
            ->orderByDesc('requests')
            ->limit($limit)
            ->get();
    }

    public function repeatedStatusEndpoints(Carbon $start, Carbon $end, int $statusClass = 4, int $limit = 20, ?bool $includeSynthetic = null): Collection
    {
        $col = $statusClass === 3 ? 'status_3xx' : ($statusClass === 5 ? 'status_5xx' : 'status_4xx');
        return PerformanceHttpHourly::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->selectRaw("method, endpoint, COALESCE(SUM({$col}),0) as hits")
            ->groupBy('method', 'endpoint')
            ->havingRaw("SUM({$col}) > 0")
            ->orderByDesc('hits')
            ->limit($limit)
            ->get();
    }

    public function repeated410(Carbon $start, Carbon $end): Collection
    {
        // perf_http_hourly does not distinguish 410; unavailable unless query raw logs. Return empty with note.
        return collect();
    }

    public function bursts(Carbon $start, Carbon $end, ?bool $includeSynthetic = null): Collection
    {
        $hourly = $this->hourlyTraffic($start, $end);
        $avg = $hourly->avg('requests') ?: 0;
        $threshold = max(10, $avg * 2);
        return $hourly->filter(fn($r) => $r->requests >= $threshold)->values();
    }

    public function potentialPolling(Carbon $start, Carbon $end, int $limit = 15, ?bool $includeSynthetic = null): Collection
    {
        // Clients hitting same endpoint many times.
        return \App\Models\PerformanceClientEndpoint::query()
            ->whereBetween('bucket_start', [$start, $end])
            ->when(!$this->includeSynthetic($includeSynthetic), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->selectRaw('client_ip, user_agent, method, endpoint, SUM(request_count) as requests')
            ->groupBy('client_ip', 'user_agent', 'method', 'endpoint')
            ->havingRaw('SUM(request_count) >= 20')
            ->orderByDesc('requests')
            ->limit($limit)
            ->get();
    }
}
