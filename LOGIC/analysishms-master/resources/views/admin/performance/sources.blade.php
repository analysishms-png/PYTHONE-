@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-12"><div class="card"><div class="card-body">
                    <h4 class="card-title">Data Sources and Monitoring Coverage</h4>
                    <form method="POST" action="{{ route('admin.performance.sources.import') }}" class="row g-2 align-items-end">
                        @csrf
                        <div class="col-md-4">
                            <label class="form-label">Import access log from configured directory</label>
                            <select name="filename" class="form-control form-control-sm">
                                <option value="">Select file</option>
                                @foreach ($files as $file)
                                    <option value="{{ $file['name'] }}">{{ $file['name'] }} ({{ number_format($file['size']) }} bytes, {{ $file['modified'] }})</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-2"><button class="btn btn-primary btn-sm" type="submit">Import</button></div>
                    </form>
                    @if (session('success')) <div class="alert alert-success mt-2">{{ session('success') }}</div> @endif
                    @if (session('error')) <div class="alert alert-danger mt-2">{{ session('error') }}</div> @endif
                    <small class="text-muted d-block mt-2">Configured log directory: {{ $dir }}. No arbitrary server paths are accepted.</small>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-lg-6 mb-3"><div class="card"><div class="card-body">
                    <h5 class="card-title">Import jobs</h5>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>File</th><th>Status</th><th>Parsed</th><th>Rejected</th><th>Coverage</th><th>Completed</th></tr></thead><tbody>
                        @forelse ($jobs as $job)
                            <tr>
                                <td>{{ $job->file_name }}</td>
                                <td>{{ $job->status }}</td>
                                <td>{{ number_format($job->records_parsed) }}</td>
                                <td>{{ number_format($job->records_rejected) }}</td>
                                <td>
                                    @if ($job->coverage_start && $job->coverage_end)
                                        {{ $job->coverage_start->format('Y-m-d H:i') }} to {{ $job->coverage_end->format('Y-m-d H:i') }}
                                    @else
                                        n/a
                                    @endif
                                </td>
                                <td>{{ $job->finished_at?->format('Y-m-d H:i') ?? 'n/a' }}</td>
                            </tr>
                        @empty
                            <tr><td colspan="6" class="text-muted small">No import jobs</td></tr>
                        @endforelse
                    </tbody></table></div>
                    {{ $jobs->links() }}
                </div></div></div>

                <div class="col-lg-6 mb-3"><div class="card"><div class="card-body">
                    <h5 class="card-title">Coverage summary</h5>
                    <ul class="list-group list-group-flush small">
                        <li class="list-group-item d-flex justify-content-between"><span>Last successful import</span><span>{{ $lastImport?->finished_at?->format('Y-m-d H:i:s') ?? 'Not collected' }}</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>Overall coverage start</span><span>{{ $overallStart ?? 'Not available' }}</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>Overall coverage end</span><span>{{ $overallEnd ?? 'Not available' }}</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>Total parsed records</span><span>{{ number_format($parsedTotal) }}</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>Total rejected records</span><span>{{ number_format($rejectedTotal) }}</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>CPU sample count</span><span>{{ number_format($cpuCount) }}</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>CPU sample range</span><span>{{ $cpuRange['start'] ?: 'Not collected' }} to {{ $cpuRange['end'] ?: 'Not collected' }}</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>CPU telemetry sources</span><span>{{ empty($cpuSources) ? 'None' : implode(', ', $cpuSources) }}</span></li>
                    </ul>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-12 mb-3"><div class="card"><div class="card-body">
                    <h5 class="card-title">Data provenance counts</h5>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>Category</th><th>Synthetic fixtures</th><th>Imported/measured</th></tr></thead><tbody>
                        <tr><td>HTTP endpoint aggregates</td><td>{{ number_format($syntheticCounts['http']) }}</td><td>{{ number_format($measuredCounts['http']) }}</td></tr>
                        <tr><td>CPU samples</td><td>{{ number_format($syntheticCounts['cpu']) }}</td><td>{{ number_format($measuredCounts['cpu']) }}</td></tr>
                        <tr><td>SQL fingerprints</td><td>{{ number_format($syntheticCounts['queries']) }}</td><td>{{ number_format($measuredCounts['queries']) }}</td></tr>
                    </tbody></table></div>
                    <small class="text-muted">Synthetic rows are excluded from real-data views unless “Show synthetic fixtures” is selected. Imported access logs and approved collectors are retained separately.</small>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-12 mb-3"><div class="card"><div class="card-body">
                    <h5 class="card-title">Required instrumentation status</h5>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>Metric</th><th>Status</th><th>What is needed</th></tr></thead><tbody>
                        <tr><td>HTTP request frequency and status</td><td>Available via imported access logs</td><td>OpenLiteSpeed access logs</td></tr>
                        <tr><td>Response bytes</td><td>Available via imported access logs</td><td>Access log byte field</td></tr>
                        <tr><td>Request duration / latency</td><td>{{ config('performance.request_timing_available') ? 'Configured as available' : 'Not collected' }}</td><td>Access log duration field or approved collector</td></tr>
                        <tr><td>p95 / p99 latency</td><td>Not retained</td><td>Per-request timing distribution storage</td></tr>
                        <tr><td>CPU and load history</td><td>{{ $cpuCount > 0 ? 'Available' : 'Not collected' }}</td><td>Approved CPU collector or synthetic fixtures for tests</td></tr>
                        <tr><td>Memory history</td><td>{{ $cpuCount > 0 ? 'Collected if sampler provides it' : 'Not collected' }}</td><td>Memory sampling</td></tr>
                        <tr><td>PHP worker statistics</td><td>{{ config('performance.php_timing_available') ? 'Configured as available' : 'Not collected' }}</td><td>PHP-FPM/OpenLiteSpeed worker metrics</td></tr>
                        <tr><td>MariaDB query timing</td><td>{{ \App\Models\PerformanceQueryFingerprint::count() > 0 ? 'Sample data present' : 'Not collected' }}</td><td>Slow query log, performance_schema, or approved collector</td></tr>
                        <tr><td>Request-to-query correlation</td><td>{{ \App\Models\PerformanceRequestQuery::count() > 0 ? 'Sample data present' : 'Not collected' }}</td><td>Instrumentation correlating request IDs to queries</td></tr>
                        <tr><td>Queue activity</td><td>{{ config('performance.queue_timing_available') ? 'Configured as available' : 'Not collected' }}</td><td>Queue worker metrics or scheduler monitoring</td></tr>
                    </tbody></table></div>
                    <small class="text-muted">Synthetic fixtures are labeled and must never be presented as real production measurements.</small>
                </div></div></div>
            </div>
        </div>
    </div>
@endsection
