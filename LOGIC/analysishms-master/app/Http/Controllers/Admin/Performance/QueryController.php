<?php

namespace App\Http\Controllers\Admin\Performance;

use App\Http\Controllers\Controller;
use App\Models\PerformanceQueryFingerprint;
use App\Models\PerformanceQueryHourly;
use App\Models\PerformanceRequestQuery;
use App\Services\Performance\PerformanceMetricsService;
use Illuminate\Http\Request;

class QueryController extends Controller
{
    public function index(Request $request, PerformanceMetricsService $metrics)
    {
        [$start, $end] = $metrics->range($request->all());
        $includeSynthetic = $request->boolean('include_synthetic', app()->environment('local', 'testing'));
        $fingerprintFilter = fn ($q) => $includeSynthetic ? $q : $q->where('data_source', '!=', 'synthetic');

        $topByTotal = PerformanceQueryFingerprint::when(!$includeSynthetic, fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderByDesc('total_exec_ms')->limit(10)->get();
        $topByAvg = PerformanceQueryFingerprint::when(!$includeSynthetic, fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderByDesc('avg_exec_ms')->limit(10)->get();
        $topByMax = PerformanceQueryFingerprint::when(!$includeSynthetic, fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderByDesc('max_exec_ms')->limit(10)->get();
        $topByCount = PerformanceQueryFingerprint::when(!$includeSynthetic, fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderByDesc('exec_count')->limit(10)->get();
        $topByRows = PerformanceQueryFingerprint::when(!$includeSynthetic, fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderByDesc('rows_examined')->limit(10)->get();
        $topByReturned = PerformanceQueryFingerprint::when(!$includeSynthetic, fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderByDesc('rows_returned')->limit(10)->get();

        $fingerprints = PerformanceQueryFingerprint::when(!$includeSynthetic, fn ($q) => $q->where('data_source', '!=', 'synthetic'))
            ->orderByDesc('total_exec_ms')->paginate(25)->withQueryString();
        $correlations = PerformanceRequestQuery::orderByDesc('total_exec_ms')->limit(25)->get();
        $hourlyQuery = PerformanceQueryHourly::selectRaw('bucket_start, COUNT(*) as patterns, COALESCE(SUM(exec_count),0) as executions, COALESCE(SUM(total_exec_ms),0) as total_ms')
            ->whereBetween('bucket_start', [$start, $end])
            ->groupBy('bucket_start')
            ->orderBy('bucket_start')
            ->get();

        return view('admin.performance.queries', compact(
            'topByTotal', 'topByAvg', 'topByMax', 'topByCount', 'topByRows', 'topByReturned',
            'fingerprints', 'correlations', 'hourlyQuery', 'start', 'end', 'request'
        ));
    }
}
