@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js"></script>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row mb-3">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-3">Performance Overview</h4>
                            <form method="GET" action="{{ route('admin.performance.overview') }}" class="row g-2 align-items-end">
                                <div class="col-md-2">
                                    <label class="form-label">Window</label>
                                    <select name="window" class="form-control form-control-sm">
                                        @foreach ([24,48,72] as $w)
                                            <option value="{{ $w }}" @selected((int)request('window',24)===$w)>{{ $w }} hours</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label class="form-label">From</label>
                                    <input type="datetime-local" name="from" class="form-control form-control-sm" value="{{ request('from', $start->format('Y-m-d\TH:i')) }}">
                                </div>
                                <div class="col-md-3">
                                    <label class="form-label">To</label>
                                    <input type="datetime-local" name="to" class="form-control form-control-sm" value="{{ request('to', $end->format('Y-m-d\TH:i')) }}">
                                </div>
                                <div class="col-md-2">
                                    <div class="form-check mb-2"><input type="checkbox" name="include_synthetic" value="1" class="form-check-input" id="includeSynthetic" @checked(request()->boolean('include_synthetic', app()->environment('local', 'testing')))><label class="form-check-label small" for="includeSynthetic">Show synthetic fixtures</label></div>
                                    <button class="btn btn-primary btn-sm" type="submit">Apply</button>
                                </div>
                            </form>
                            <small class="text-muted d-block mt-2">
                                Window: {{ $start->timezone(config('performance.timezone')) }} to {{ $end->timezone(config('performance.timezone')) }}. Synthetic datasets are labeled.
                            </small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                @php
                    $cards = [
                        ['Total HTTP requests', number_format($summary['total_requests']), 'fa-globe'],
                        ['Unique endpoints', number_format($summary['unique_endpoints']), 'fa-sitemap'],
                        ['4xx responses', number_format($summary['responses_4xx']), 'fa-exclamation-circle'],
                        ['5xx responses', number_format($summary['responses_5xx']), 'fa-times-circle'],
                        ['Redirects', number_format($summary['redirects']), 'fa-random'],
                        ['Total response bytes', number_format($summary['total_bytes']), 'fa-database'],
                        ['Avg latency (ms)', $summary['avg_response_ms'] === null ? 'Not collected' : number_format($summary['avg_response_ms'],2), 'fa-clock'],
                        ['CPU samples', number_format($summary['cpu_samples']), 'fa-microchip'],
                    ];
                @endphp
                @foreach ($cards as $card)
                    <div class="col-md-3 col-sm-6 mb-3">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <div class="text-muted small">{{ $card[0] }}</div>
                                        <div class="h4 mb-0">{{ $card[1] }}</div>
                                    </div>
                                    <i class="fa {{ $card[2] }} fa-2x text-primary opacity-75"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <div class="row">
                <div class="col-lg-8 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Traffic vs CPU timeline</h5>
                            @if ($summary['cpu_samples'] === 0)
                                <div class="alert alert-info">CPU measurements are unavailable for this window. Traffic is shown alone; historical CPU cannot be reconstructed from current process snapshots.</div>
                            @endif
                            <canvas id="timelineChart" height="120"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">HTTP status distribution</h5>
                            <canvas id="statusChart" height="180"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Latency coverage</h5>
                            <ul class="list-group list-group-flush small">
                                <li class="list-group-item d-flex justify-content-between"><span>Timing samples</span><span>{{ number_format($summary['duration_samples']) }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>Average response time</span><span>{{ $summary['avg_response_ms'] === null ? 'Unavailable' : $summary['avg_response_ms'].' ms' }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>p95 latency</span><span>Unavailable (sample distribution not retained)</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>p99 latency</span><span>Unavailable (sample distribution not retained)</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>Min / Max observed</span><span>{{ $summary['duration_min_ms'] ?: 'n/a' }} / {{ $summary['duration_max_ms'] ?: 'n/a' }} ms</span></li>
                            </ul>
                            <small class="text-muted">Request duration is only available when access logs or collectors include a timing field.</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Monitoring coverage & freshness</h5>
                            <ul class="list-group list-group-flush small">
                                <li class="list-group-item d-flex justify-content-between"><span>Last successful import</span><span>{{ $summary['import_job']?->finished_at?->timezone(config('performance.timezone'))->format('Y-m-d H:i:s') ?? 'Not collected' }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>Imported coverage start</span><span>{{ $summary['coverage_start']?->timezone(config('performance.timezone'))->format('Y-m-d H:i:s') ?? 'Not available' }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>Imported coverage end</span><span>{{ $summary['coverage_end']?->timezone(config('performance.timezone'))->format('Y-m-d H:i:s') ?? 'Not available' }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>CPU sample coverage</span><span>{{ $summary['cpu_samples'] > 0 ? 'Available' : 'Not collected' }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>Memory history</span><span>{{ $summary['memory_available'] ? 'Available' : 'Not collected' }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>Queue activity</span><span>{{ $summary['queue_available'] ? 'Available' : 'Not collected' }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>PHP worker timing</span><span>{{ config('performance.php_timing_available') ? 'Available' : 'Not collected' }}</span></li>
                                <li class="list-group-item d-flex justify-content-between"><span>MariaDB query timing</span><span>{{ config('performance.mariadb_timing_available') ? 'Available' : 'Configured via imports' }}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        const trafficLabels = @json($hourly->pluck('bucket_start')->map(fn($d)=>\Carbon\Carbon::parse($d)->format('m-d H:00'))->values());
        const trafficValues = @json($hourly->pluck('requests')->values());
        const cpuLabels = @json($cpu->pluck('sampled_at')->map(fn($d)=>\Carbon\Carbon::parse($d)->format('m-d H:i'))->values());
        const cpuValues = @json($cpu->pluck('cpu_percent')->values());

        new Chart(document.getElementById('timelineChart'), {
            type: 'line',
            data: {
                labels: trafficLabels,
                datasets: [{
                    label: 'HTTP requests',
                    data: trafficValues,
                    borderColor: '#2563eb',
                    tension: 0.2,
                    yAxisID: 'y'
                }]
            },
            options: { responsive: true, interaction: { mode: 'index', intersect: false }, scales: { y: { beginAtZero: true } } }
        });

        new Chart(document.getElementById('statusChart'), {
            type: 'doughnut',
            data: {
                labels: ['2xx','3xx','4xx','5xx'],
                datasets: [{ data: [{{ $status['2xx'] }}, {{ $status['3xx'] }}, {{ $status['4xx'] }}, {{ $status['5xx'] }}] }]
            },
            options: { responsive: true }
        });
    </script>
@endsection
