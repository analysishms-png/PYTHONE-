@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js"></script>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-3">CPU Spike Intelligence</h4>
                            <form method="GET" action="{{ route('admin.performance.cpu') }}" class="row g-2 align-items-end">
                                <div class="col-md-2"><label>Window</label><select name="window" class="form-control form-control-sm">
                                        @foreach ([24, 48, 72] as $w)
                                            <option value="{{ $w }}" @selected((int) request('window', 24) === $w)>{{ $w }} hours</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-3"><label>From</label><input type="datetime-local" name="from" class="form-control form-control-sm" value="{{ request('from', $start->format('Y-m-d\TH:i')) }}"></div>
                                <div class="col-md-3"><label>To</label><input type="datetime-local" name="to" class="form-control form-control-sm" value="{{ request('to', $end->format('Y-m-d\TH:i')) }}"></div>
                                <div class="col-md-2">
                                    <div class="form-check mt-4"><input type="checkbox" name="include_synthetic" value="1" class="form-check-input" id="includeSynthetic" @checked(request()->boolean('include_synthetic', app()->environment('local', 'testing')))> <label class="form-check-label small" for="includeSynthetic">Show synthetic fixtures</label></div>
                                </div>
                                <div class="col-md-2"><button class="btn btn-primary btn-sm" type="submit">Apply</button></div>
                            </form>
                            @if ($samples->isEmpty())
                                <div class="alert alert-warning mt-3">
                                    No CPU or system-load measurements are available. Historical per-process CPU data cannot be reconstructed accurately from current process snapshots. Queue and MariaDB activity may also be unavailable.
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">CPU utilization</h6>
                            <canvas id="cpuChart" height="100"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">System load average</h6>
                            <canvas id="loadChart" height="100"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">Memory utilization</h6>
                            <canvas id="memChart" height="100"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">PHP workers / queue / DB CPU</h6>
                            <canvas id="workerChart" height="100"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Detected CPU spikes</h5>
                            @forelse ($spikes as $index => $spike)
                                <div class="border rounded p-3 mb-3">
                                    <div class="d-flex justify-content-between">
                                        <h6>Spike {{ $index + 1 }}: {{ $spike['start']->format('Y-m-d H:i') }} to {{ $spike['end']->format('Y-m-d H:i') }}</h6>
                                        <span class="badge bg-{{ $spike['confidence'] === 'high' ? 'danger' : ($spike['confidence'] === 'medium' ? 'warning' : 'secondary') }}">Confidence: {{ $spike['confidence'] }}</span>
                                    </div>
                                    <div class="row small mt-2">
                                        <div class="col-md-6">
                                            <strong>Evidence</strong>
                                            <ul class="mb-0">
                                                <li>Max CPU: {{ $spike['evidence']['cpu_max'] === null ? 'Unavailable' : $spike['evidence']['cpu_max'] . '%' }}</li>
                                                <li>Average CPU: {{ $spike['evidence']['cpu_avg'] }}%</li>
                                                <li>Max load: {{ $spike['evidence']['load_max'] === null ? 'Unavailable' : $spike['evidence']['load_max'] }}</li>
                                                <li>Max memory bytes: {{ $spike['evidence']['memory_max_bytes'] === null ? 'Unavailable' : number_format($spike['evidence']['memory_max_bytes']) }}</li>
                                                <li>PHP workers (max): {{ $spike['evidence']['php_workers_max'] === null ? 'Unavailable' : $spike['evidence']['php_workers_max'] }}</li>
                                                <li>PHP avg request ms (max): {{ $spike['evidence']['php_avg_request_ms_max'] === null ? 'Not collected' : $spike['evidence']['php_avg_request_ms_max'] }}</li>
                                                <li>MariaDB CPU (max): {{ $spike['evidence']['db_cpu_max'] === null ? 'Not collected' : $spike['evidence']['db_cpu_max'] . '%' }}</li>
                                                <li>Queue pending (max): {{ $spike['evidence']['queue_pending_max'] === null ? 'Not collected' : $spike['evidence']['queue_pending_max'] }}</li>
                                                <li>Correlated samples: {{ $spike['evidence']['sample_count'] }}</li>
                                                <li>Telemetry sources: {{ implode(', ', $spike['evidence']['sources']) }}</li>
                                            </ul>
                                        </div>
                                        <div class="col-md-6">
                                            <strong>Likely contributors (correlation, not causation)</strong>
                                            <ul class="mb-2">
                                                @forelse ($spike['contributors'] as $c)
                                                    <li>{{ $c->method }} {{ $c->endpoint }} — requests {{ number_format($c->request_count) }}, SQL time {{ number_format($c->duration_sum_ms) }} ms, 5xx {{ number_format($c->errors_5xx) }}</li>
                                                @empty
                                                    <li>No correlated endpoint telemetry.</li>
                                                @endforelse
                                            </ul>
                                            <strong>Request volume during spike window</strong>
                                            <div>{{ number_format($spike['request_volume']) }} requests</div>
                                            <strong>Associated SQL patterns</strong>
                                            <div>{{ $spike['query_activity_count'] > 0 ? $spike['query_activity_count'] . ' query-hour records' : 'No correlated query records' }}</div>
                                            @if (!empty($spike['missing_telemetry']))
                                                <div class="mt-2"><strong>Missing telemetry</strong>
                                                    <ul class="mb-0">
                                                        @foreach ($spike['missing_telemetry'] as $m)
                                                            <li>{{ $m }}</li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @empty
                                <div class="text-muted">No CPU spikes detected in this window.</div>
                            @endforelse
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @php
        $cpuFilters = request()->only(['window', 'from', 'to', 'include_synthetic']);
    @endphp
    <script>
        const cpuDataUrl = @json(route('admin.performance.cpu.data'));
        const cpuFilters = @json($cpuFilters);

        const cpuCharts = {};

        function createCpuChart(id, datasets) {
            cpuCharts[id] = new Chart(document.getElementById(id), {
                type: 'line',
                data: {
                    labels: [],
                    datasets
                },
                options: {
                    responsive: true,
                    animation: false,
                    interaction: {
                        intersect: false,
                        mode: 'index'
                    },
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        }

        createCpuChart('cpuChart', [{
                label: 'CPU %',
                data: [],
                borderColor: '#dc2626',
                pointRadius: 0
            },
            {
                label: 'MariaDB CPU %',
                data: [],
                borderColor: '#2563eb',
                pointRadius: 0
            }
        ]);

        createCpuChart('loadChart', [{
                label: 'Load 1',
                data: [],
                borderColor: '#7c3aed',
                pointRadius: 0
            },
            {
                label: 'Load 5',
                data: [],
                borderColor: '#9333ea',
                pointRadius: 0
            },
            {
                label: 'Load 15',
                data: [],
                borderColor: '#c4b5fd',
                pointRadius: 0
            }
        ]);

        createCpuChart('memChart', [{
            label: 'Memory used (GiB)',
            data: [],
            borderColor: '#059669',
            pointRadius: 0
        }]);

        createCpuChart('workerChart', [{
                label: 'PHP processes',
                data: [],
                borderColor: '#f59e0b',
                pointRadius: 0
            },
            {
                label: 'Queue pending',
                data: [],
                borderColor: '#111827',
                pointRadius: 0
            },
            {
                label: 'Queue failed',
                data: [],
                borderColor: '#dc2626',
                pointRadius: 0
            }
        ]);

        async function refreshCpuCharts() {
            try {
                const params = new URLSearchParams();

                Object.entries(cpuFilters).forEach(([key, value]) => {
                    if (value !== null && value !== '') {
                        params.set(key, value);
                    }
                });

                const response = await fetch(`${cpuDataUrl}?${params.toString()}`, {
                    headers: {
                        Accept: 'application/json'
                    },
                    cache: 'no-store'
                });

                if (!response.ok) {
                    throw new Error(`HTTP ${response.status}`);
                }

                const result = await response.json();
                const samples = result.samples || [];

                const labels = samples.map(sample => {
                    const date = new Date(String(sample.sampled_at).replace(' ', 'T'));
                    return Number.isNaN(date.getTime()) ?
                        sample.sampled_at :
                        date.toLocaleString();
                });

                const updateChart = (id, values) => {
                    const chart = cpuCharts[id];
                    chart.data.labels = labels;
                    chart.data.datasets.forEach((dataset, index) => {
                        dataset.data = values[index];
                    });
                    chart.update('none');
                };

                updateChart('cpuChart', [
                    samples.map(s => s.cpu_percent),
                    samples.map(s => s.db_cpu_percent)
                ]);

                updateChart('loadChart', [
                    samples.map(s => s.load_1),
                    samples.map(s => s.load_5),
                    samples.map(s => s.load_15)
                ]);

                updateChart('memChart', [
                    samples.map(s =>
                        s.memory_used_bytes == null ?
                        null :
                        Number(s.memory_used_bytes) / (1024 ** 3)
                    )
                ]);

                cpuCharts.memChart.options.scales.y.title = {
                    display: true,
                    text: 'GiB'
                };
                cpuCharts.memChart.update('none');

                updateChart('workerChart', [
                    samples.map(s => s.php_workers),
                    samples.map(s => s.queue_pending),
                    samples.map(s => s.queue_failed)
                ]);

                const updatedAt = new Date().toLocaleTimeString();
                console.debug(`CPU dashboard refreshed at ${updatedAt}`);
            } catch (error) {
                console.error('CPU dashboard refresh failed:', error);
            }
        }

        refreshCpuCharts();
        setInterval(refreshCpuCharts, 10000);
    </script>
@endsection
