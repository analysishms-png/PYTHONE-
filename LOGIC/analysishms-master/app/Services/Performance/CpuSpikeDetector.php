<?php

namespace App\Services\Performance;

use App\Models\PerformanceCpuSample;
use App\Models\PerformanceHttpHourly;
use Carbon\Carbon;
use Illuminate\Support\Collection;

class CpuSpikeDetector
{
    protected float $threshold;

    public function __construct()
    {
        $this->threshold = (float) config('performance.cpu_spike_threshold', 80);
    }

    public function detect(Carbon $start, Carbon $end, ?bool $includeSynthetic = null): Collection
    {
        $samples = PerformanceCpuSample::query()
            ->whereBetween('sampled_at', [$start, $end])
            ->when(!($includeSynthetic ?? request()->boolean('include_synthetic', (bool) config('performance.include_synthetic', false))), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderBy('sampled_at')
            ->get();

        if ($samples->isEmpty()) {
            return collect();
        }

        // Group consecutive above-threshold CPU samples into spike windows.
        $windows = [];
        $current = null;
        foreach ($samples as $sample) {
            $isHigh = ($sample->cpu_percent !== null && $sample->cpu_percent >= $this->threshold)
                || ($sample->load_1 !== null && $sample->load_1 >= 4);

            if ($isHigh) {
                if ($current === null) {
                    $current = [
                        'start' => $sample->sampled_at,
                        'end' => $sample->sampled_at,
                        'samples' => [],
                    ];
                }
                $current['samples'][] = $sample;
                $current['end'] = $sample->sampled_at;
            } else {
                if ($current !== null) {
                    $windows[] = $current;
                    $current = null;
                }
            }
        }
        if ($current !== null) {
            $windows[] = $current;
        }

        // If no explicit threshold spikes, mark top 3 isolated highs relative to mean.
        if (empty($windows)) {
            $mean = $samples->avg('cpu_percent') ?: 0;
            $std = $this->std($samples->pluck('cpu_percent'));
            $cutoff = max($this->threshold, $mean + max(10, $std * 1.5));
            foreach ($samples as $sample) {
                if ($sample->cpu_percent !== null && $sample->cpu_percent >= $cutoff) {
                    $windows[] = [
                        'start' => $sample->sampled_at,
                        'end' => $sample->sampled_at,
                        'samples' => [$sample],
                    ];
                }
            }
        }

        return collect($windows)->map(function ($window) {
            $samples = collect($window['samples']);
            $start = Carbon::parse($window['start']);
            $end = Carbon::parse($window['end']);
            $expandStart = $start->copy()->subHour();
            $expandEnd = $end->copy()->addHour();

            $contributors = PerformanceHttpHourly::query()
                ->whereBetween('bucket_start', [$expandStart, $expandEnd])
            ->when(!($includeSynthetic ?? request()->boolean('include_synthetic', (bool) config('performance.include_synthetic', false))), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
                ->selectRaw('method, endpoint, COALESCE(SUM(request_count),0) as request_count, COALESCE(SUM(duration_sum_ms),0) as duration_sum_ms, COALESCE(SUM(status_5xx),0) as errors_5xx')
                ->groupBy('method', 'endpoint')
                ->orderByDesc('request_count')
                ->limit(4)
                ->get();

            $queryActivity = \App\Models\PerformanceQueryHourly::query()
                ->whereBetween('bucket_start', [$expandStart, $expandEnd])
            ->when(!($includeSynthetic ?? request()->boolean('include_synthetic', (bool) config('performance.include_synthetic', false))), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
                ->count();

            $maxCpu = $samples->max('cpu_percent');
            $avgCpu = round($samples->avg('cpu_percent') ?: 0, 2);
            $confidence = $contributors->isEmpty() ? 'low' : ($queryActivity > 0 ? 'medium' : 'medium');

            return [
                'start' => $start,
                'end' => $end,
                'duration_minutes' => max(1, $start->diffInMinutes($end) + 1),
                'evidence' => [
                    'cpu_max' => $maxCpu,
                    'cpu_avg' => $avgCpu,
                    'load_max' => $samples->max('load_1'),
                    'memory_max_bytes' => $samples->max('memory_used_bytes'),
                    'php_workers_max' => $samples->max('php_workers'),
                    'php_avg_request_ms_max' => $samples->max('php_avg_request_ms'),
                    'db_cpu_max' => $samples->max('db_cpu_percent'),
                    'queue_pending_max' => $samples->max('queue_pending'),
                    'sample_count' => $samples->count(),
                    'sources' => $samples->pluck('source')->unique()->values()->all(),
                ],
                'contributors' => $contributors,
                'query_activity_count' => $queryActivity,
                'request_volume' => (int) PerformanceHttpHourly::query()
                    ->whereBetween('bucket_start', [$expandStart, $expandEnd])
            ->when(!($includeSynthetic ?? request()->boolean('include_synthetic', (bool) config('performance.include_synthetic', false))), fn ($q) => $q->where('data_source', '!=', 'synthetic'))
                    ->sum('request_count'),
                'confidence' => $confidence,
                'missing_telemetry' => $this->missingTelemetry($samples),
            ];
        })->values();
    }

    protected function std($values): float
    {
        $arr = $values->filter(fn($v) => $v !== null)->values()->all();
        if (count($arr) < 2) {
            return 0.0;
        }
        $mean = array_sum($arr) / count($arr);
        $variance = array_sum(array_map(fn($v) => pow($v - $mean, 2), $arr)) / count($arr);
        return sqrt($variance);
    }

    protected function missingTelemetry($samples): array
    {
        $missing = [];
        if ($samples->whereNotNull('cpu_percent')->isEmpty()) $missing[] = 'CPU utilization';
        if ($samples->whereNotNull('load_1')->isEmpty()) $missing[] = 'System load average';
        if ($samples->whereNotNull('memory_used_bytes')->isEmpty()) $missing[] = 'Memory utilization';
        if ($samples->whereNotNull('php_workers')->isEmpty()) $missing[] = 'PHP worker activity';
        if ($samples->whereNotNull('db_cpu_percent')->isEmpty()) $missing[] = 'MariaDB CPU/process activity';
        if ($samples->whereNotNull('queue_pending')->isEmpty()) $missing[] = 'Queue activity';
        if ($samples->pluck('source')->unique()->contains('synthetic') === false && \App\Models\PerformanceCpuSample::count() === 0) {
            $missing[] = 'Historical CPU measurements (cannot be reconstructed from current process snapshots)';
        }
        return $missing;
    }
}
