<?php

namespace App\Http\Controllers\Admin\Performance;

use App\Http\Controllers\Controller;
use App\Services\Performance\PerformanceMetricsService;
use Illuminate\Http\Request;

class TrafficController extends Controller
{
    public function index(Request $request, PerformanceMetricsService $metrics)
    {
        [$start, $end] = $metrics->range($request->all());
        $clients = $metrics->clientRanking($start, $end, 20);
        $agents = $metrics->userAgents($start, $end, 20);
        $combos = $metrics->ipEndpointCombos($start, $end, 20);
        $hourly = $metrics->hourlyTraffic($start, $end);
        $bursts = $metrics->bursts($start, $end);
        $repeated4xx = $metrics->repeatedStatusEndpoints($start, $end, 4, 20);
        $repeated5xx = $metrics->repeatedStatusEndpoints($start, $end, 5, 20);
        $repeated3xx = $metrics->repeatedStatusEndpoints($start, $end, 3, 20);
        $polling = $metrics->potentialPolling($start, $end, 20);

        return view('admin.performance.traffic', compact(
            'clients', 'agents', 'combos', 'hourly', 'bursts', 'repeated4xx', 'repeated5xx', 'repeated3xx', 'polling', 'start', 'end', 'request'
        ));
    }
}
