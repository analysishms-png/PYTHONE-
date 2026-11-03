<?php

namespace App\Http\Controllers\Admin\Performance;

use App\Http\Controllers\Controller;
use App\Services\Performance\PerformanceMetricsService;
use Illuminate\Http\Request;

class EndpointController extends Controller
{
    public function index(Request $request, PerformanceMetricsService $metrics)
    {
        [$start, $end] = $metrics->range($request->all());
        $rankings = [
            'requests' => $metrics->endpointRanking($start, $end, 'request_count'),
            'bytes' => $metrics->endpointRanking($start, $end, 'bytes_sent'),
            'total_time' => $metrics->endpointRanking($start, $end, 'total_time'),
            'avg_time' => $metrics->endpointRanking($start, $end, 'avg_time'),
            'errors_4xx' => $metrics->endpointRanking($start, $end, 'responses_4xx'),
            'errors_5xx' => $metrics->endpointRanking($start, $end, 'responses_5xx'),
            'redirects' => $metrics->endpointRanking($start, $end, 'redirects'),
        ];
        $clients = $metrics->clientRanking($start, $end, 10);
        $agents = $metrics->userAgents($start, $end, 10);
        $hourly = $metrics->hourlyTraffic($start, $end);
        $status = $metrics->statusDistribution($start, $end);
        $all = $metrics->endpointsPaginated($start, $end, (string)$request->input('sort', 'request_count'), (string)$request->input('direction', 'desc'), 25);

        return view('admin.performance.endpoints', compact('rankings', 'clients', 'agents', 'hourly', 'status', 'all', 'start', 'end', 'request'));
    }

    public function show(Request $request, PerformanceMetricsService $metrics)
    {
        [$start, $end] = $metrics->range($request->all());
        $method = (string) $request->input('method', 'GET');
        $endpoint = (string) $request->input('endpoint', '/');
        $detail = $metrics->endpointDetail($method, $endpoint, $start, $end);
        return view('admin.performance.endpoint_detail', compact('detail', 'method', 'endpoint', 'start', 'end', 'request'));
    }
}
