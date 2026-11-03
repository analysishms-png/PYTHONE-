@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-3">HTTP Endpoint Intelligence</h4>
                            <form method="GET" action="{{ route('admin.performance.endpoints') }}" class="row g-2 align-items-end">
                                <div class="col-md-2"><label class="form-label">Window</label><select name="window" class="form-control form-control-sm">@foreach([24,48,72] as $w)<option value="{{ $w }}" @selected((int)request('window',24)===$w)>{{ $w }} hours</option>@endforeach</select></div>
                                <div class="col-md-3"><label class="form-label">From</label><input type="datetime-local" name="from" class="form-control form-control-sm" value="{{ request('from', $start->format('Y-m-d\TH:i')) }}"></div>
                                <div class="col-md-3"><label class="form-label">To</label><input type="datetime-local" name="to" class="form-control form-control-sm" value="{{ request('to', $end->format('Y-m-d\TH:i')) }}"></div>
                                <div class="col-md-2"><div class="form-check mt-4"><input type="checkbox" name="include_synthetic" value="1" class="form-check-input" id="includeSynthetic" @checked(request()->boolean('include_synthetic', app()->environment('local', 'testing')))> <label class="form-check-label small" for="includeSynthetic">Show synthetic fixtures</label></div></div><div class="col-md-2"><button class="btn btn-primary btn-sm" type="submit">Apply</button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            @php
                function perfRankTable($title, $rows, $valueKey, $valueLabel) {
                    echo '<div class="col-lg-4 mb-3"><div class="card h-100"><div class="card-body"><h6 class="card-title">'.$title.'</h6><div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>#</th><th>Method</th><th>Endpoint</th><th>'.$valueLabel.'</th></tr></thead><tbody>';
                    foreach ($rows as $i => $row) {
                        echo '<tr><td>'.($i+1).'</td><td>'.e($row->method).'</td><td class="text-break" style="max-width:240px;">'.e($row->endpoint).'</td><td>'.number_format($row->{$valueKey}).'</td></tr>';
                    }
                    if (count($rows) === 0) {
                        echo '<tr><td colspan="4" class="text-muted small">No data</td></tr>';
                    }
                    echo '</tbody></table></div></div></div></div>';
                }
            @endphp

            <div class="row">
                @php perfRankTable('Top endpoints by request count', $rankings['requests'], 'request_count', 'Requests'); @endphp
                @php perfRankTable('Top endpoints by total response bytes', $rankings['bytes'], 'bytes_sent', 'Bytes'); @endphp
                @php perfRankTable('Top endpoints by total response time', $rankings['total_time'], 'duration_sum_ms', 'Total ms'); @endphp
                @php perfRankTable('Top endpoints by average response time', $rankings['avg_time'], 'duration_sum_ms', 'Total ms'); @endphp
                @php perfRankTable('Top endpoints by 4xx responses', $rankings['errors_4xx'], 'status_4xx', '4xx'); @endphp
                @php perfRankTable('Top endpoints by 5xx responses', $rankings['errors_5xx'], 'status_5xx', '5xx'); @endphp
                @php perfRankTable('Top endpoints by redirects', $rankings['redirects'], 'status_3xx', '3xx'); @endphp
            </div>

            <div class="row">
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">Top client IPs</h6>
                            <div class="table-responsive">
                                <table class="table table-sm table-striped">
                                    <thead><tr><th>IP</th><th>Requests</th><th>4xx</th><th>5xx</th><th>Redirects</th></tr></thead>
                                    <tbody>
                                        @forelse ($clients as $client)
                                            <tr>
                                                <td>{{ $client->client_ip }}</td>
                                                <td>{{ number_format($client->requests) }}</td>
                                                <td>{{ number_format($client->errors_4xx) }}</td>
                                                <td>{{ number_format($client->errors_5xx) }}</td>
                                                <td>{{ number_format($client->redirects) }}</td>
                                            </tr>
                                        @empty
                                            <tr><td colspan="5" class="text-muted small">No data</td></tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">Top user agents</h6>
                            <div class="table-responsive">
                                <table class="table table-sm table-striped">
                                    <thead><tr><th>User agent</th><th>Requests</th></tr></thead>
                                    <tbody>
                                        @forelse ($agents as $agent)
                                            <tr><td class="text-break" style="max-width:400px;">{{ $agent->user_agent }}</td><td>{{ number_format($agent->requests) }}</td></tr>
                                        @empty
                                            <tr><td colspan="2" class="text-muted small">No data</td></tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">Hourly request volume</h6>
                            <canvas id="hourlyChart" height="80"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">Endpoint directory</h6>
                            <div class="table-responsive">
                                <table class="table table-sm table-striped">
                                    <thead>
                                        <tr>
                                            <th>Method</th>
                                            <th>Endpoint</th>
                                            <th>Requests</th>
                                            <th>Bytes</th>
                                            <th>4xx</th>
                                            <th>5xx</th>
                                            <th>Avg ms</th>
                                            <th>Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($all as $row)
                                            <tr>
                                                <td>{{ $row->method }}</td>
                                                <td class="text-break" style="max-width:420px;">{{ $row->endpoint }}</td>
                                                <td>{{ number_format($row->request_count) }}</td>
                                                <td>{{ number_format($row->bytes_sent) }}</td>
                                                <td>{{ number_format($row->status_4xx) }}</td>
                                                <td>{{ number_format($row->status_5xx) }}</td>
                                                <td>{{ $row->duration_samples > 0 ? number_format($row->duration_sum_ms / $row->duration_samples, 2) : 'Unavailable' }}</td>
                                                <td>
                                                    <a class="btn btn-xs btn-outline-primary" href="{{ route('admin.performance.endpoint.detail', ['method' => $row->method, 'endpoint' => $row->endpoint] + request()->query()) }}">Open</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                {{ $all->links() }}
                            </div>
                            <small class="text-muted">Timing percentiles are reported only when sample timings are available; p95/p99 distributions are not currently retained.</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js"></script>
    <script>
        new Chart(document.getElementById('hourlyChart'), {
            type: 'bar',
            data: {
                labels: @json($hourly->pluck('bucket_start')->map(fn($d)=>\Carbon\Carbon::parse($d)->format('m-d H:00'))->values()),
                datasets: [{ label: 'Requests', data: @json($hourly->pluck('requests')->values()) }]
            },
            options: { responsive: true, scales: { y: { beginAtZero: true } } }
        });
    </script>
@endsection
