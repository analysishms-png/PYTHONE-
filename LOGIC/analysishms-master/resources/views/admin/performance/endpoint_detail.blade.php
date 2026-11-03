@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js"></script>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-12"><div class="card"><div class="card-body">
                    <h4 class="card-title">Endpoint Detail: {{ $method }} {{ $endpoint }}</h4>
                    <small class="text-muted">Window {{ $start->format('Y-m-d H:i') }} to {{ $end->format('Y-m-d H:i') }}</small>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-md-3 mb-3"><div class="card"><div class="card-body"><div class="small text-muted">Requests</div><div class="h4">{{ number_format($detail['summary']['requests']) }}</div></div></div></div>
                <div class="col-md-3 mb-3"><div class="card"><div class="card-body"><div class="small text-muted">Bytes</div><div class="h4">{{ number_format($detail['summary']['bytes']) }}</div></div></div></div>
                <div class="col-md-2 mb-3"><div class="card"><div class="card-body"><div class="small text-muted">4xx</div><div class="h4">{{ number_format($detail['summary']['status_4xx']) }}</div></div></div></div>
                <div class="col-md-2 mb-3"><div class="card"><div class="card-body"><div class="small text-muted">5xx</div><div class="h4">{{ number_format($detail['summary']['status_5xx']) }}</div></div></div></div>
                <div class="col-md-2 mb-3"><div class="card"><div class="card-body"><div class="small text-muted">Avg ms</div><div class="h4">{{ $detail['summary']['duration_samples'] > 0 ? number_format($detail['summary']['duration_sum_ms'] / $detail['summary']['duration_samples'], 2) : 'n/a' }}</div></div></div></div>
            </div>

            <div class="row">
                <div class="col-lg-8 mb-3">
                    <div class="card"><div class="card-body">
                        <h6 class="card-title">Hourly request volume</h6>
                        <canvas id="hourlyChart" height="90"></canvas>
                    </div></div>
                </div>
                <div class="col-lg-4 mb-3">
                    <div class="card"><div class="card-body">
                        <h6 class="card-title">Statuses by hour</h6>
                        <canvas id="statusChart" height="90"></canvas>
                    </div></div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 mb-3">
                    <div class="card"><div class="card-body">
                        <h6 class="card-title">Client patterns</h6>
                        <div class="table-responsive">
                            <table class="table table-sm table-striped">
                                <thead><tr><th>Client IP</th><th>User agent</th><th>Requests</th><th>4xx</th><th>5xx</th><th>Redirects</th></tr></thead>
                                <tbody>
                                    @forelse ($detail['clients'] as $client)
                                        <tr>
                                            <td>{{ $client->client_ip }}</td>
                                            <td class="text-break" style="max-width:380px;">{{ $client->user_agent }}</td>
                                            <td>{{ number_format($client->requests) }}</td>
                                            <td>{{ number_format($client->e4) }}</td>
                                            <td>{{ number_format($client->e5) }}</td>
                                            <td>{{ number_format($client->redirects) }}</td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="6" class="text-muted small">No client data</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        const hourlyLabels = @json($detail['hourly']->pluck('bucket_start')->map(fn($d)=>\Carbon\Carbon::parse($d)->format('m-d H:00'))->values());
        new Chart(document.getElementById('hourlyChart'), {
            type:'bar',
            data:{ labels:hourlyLabels, datasets:[
                {label:'Requests',data:@json($detail['hourly']->pluck('request_count')->values())},
                {label:'4xx',data:@json($detail['hourly']->pluck('status_4xx')->values())},
                {label:'5xx',data:@json($detail['hourly']->pluck('status_5xx')->values())}
            ]},
            options:{responsive:true,scales:{y:{beginAtZero:true}}}
        });
        new Chart(document.getElementById('statusChart'), {
            type:'doughnut',
            data:{labels:['2xx','3xx','4xx','5xx'], datasets:[{data:[
                {{ $detail['hourly']->sum('status_2xx') }},
                {{ $detail['hourly']->sum('status_3xx') }},
                {{ $detail['hourly']->sum('status_4xx') }},
                {{ $detail['hourly']->sum('status_5xx') }}
            ]}]},
            options:{responsive:true}
        });
    </script>
@endsection
