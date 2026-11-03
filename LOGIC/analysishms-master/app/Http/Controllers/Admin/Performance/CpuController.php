<?php

namespace App\Http\Controllers\Admin\Performance;

use App\Http\Controllers\Controller;
use App\Services\Performance\CpuSpikeDetector;
use App\Services\Performance\PerformanceMetricsService;
use Illuminate\Http\Request;

class CpuController extends Controller
{
    public function index(Request $request, PerformanceMetricsService $metrics, CpuSpikeDetector $detector)
    {
        [$start, $end] = $metrics->range($request->all());
        $samples = $metrics->hourlyCpu($start, $end);
        $spikes = $detector->detect($start, $end);
        return view('admin.performance.cpu', compact('samples', 'spikes', 'start', 'end', 'request'));
    }

    public function data(Request $request, PerformanceMetricsService $metrics)
    {
        [$start, $end] = $metrics->range($request->all());
        return response()->json([
            'samples' => $metrics->hourlyCpu($start, $end),
        ]);
    }
}
