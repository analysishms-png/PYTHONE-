<?php

namespace App\Http\Controllers\Admin\Performance;

use App\Http\Controllers\Controller;
use App\Services\Performance\PerformanceMetricsService;
use Illuminate\Http\Request;

class OverviewController extends Controller
{
    public function index(Request $request, PerformanceMetricsService $metrics)
    {
        [$start, $end] = $metrics->range($request->all());
        $summary = $metrics->summary($start, $end);
        $hourly = $metrics->hourlyTraffic($start, $end);
        $cpu = $metrics->hourlyCpu($start, $end);
        $status = $metrics->statusDistribution($start, $end);

        return view('admin.performance.overview', compact('summary', 'hourly', 'cpu', 'status', 'start', 'end', 'request'));
    }

    public function data(Request $request, PerformanceMetricsService $metrics)
    {
        [$start, $end] = $metrics->range($request->all());
        return response()->json([
            'window' => ['start' => $start->toDateTimeString(), 'end' => $end->toDateTimeString()],
            'traffic' => $metrics->hourlyTraffic($start, $end),
            'cpu' => $metrics->hourlyCpu($start, $end),
            'status' => $metrics->statusDistribution($start, $end),
            'summary' => $metrics->summary($start, $end),
        ]);
    }
}
