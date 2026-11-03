@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-12"><div class="card"><div class="card-body">
                    <h4 class="card-title">Database Query Intelligence</h4>
                    <form method="GET" action="{{ route('admin.performance.queries') }}" class="row g-2 align-items-end">
                        <div class="col-md-2"><label>Window</label><select name="window" class="form-control form-control-sm">@foreach([24,48,72] as $w)<option value="{{ $w }}" @selected((int)request('window',24)===$w)>{{ $w }} hours</option>@endforeach</select></div>
                        <div class="col-md-3"><label>From</label><input type="datetime-local" name="from" class="form-control form-control-sm" value="{{ request('from', $start->format('Y-m-d\TH:i')) }}"></div>
                        <div class="col-md-3"><label>To</label><input type="datetime-local" name="to" class="form-control form-control-sm" value="{{ request('to', $end->format('Y-m-d\TH:i')) }}"></div>
                        <div class="col-md-2"><div class="form-check mt-4"><input type="checkbox" name="include_synthetic" value="1" class="form-check-input" id="includeSynthetic" @checked(request()->boolean('include_synthetic', app()->environment('local', 'testing')))> <label class="form-check-label small" for="includeSynthetic">Show synthetic fixtures</label></div></div><div class="col-md-2"><button class="btn btn-primary btn-sm" type="submit">Apply</button></div>
                    </form>
                    <small class="text-muted d-block mt-2">SQL timing is only available from trusted collectors/importers. Elapsed SQL time is not CPU time.</small>
                </div></div></div>
            </div>

            @php
                $queryTable = function($title, $rows, $valueLabel, $valueField) {
                    echo '<div class="col-lg-4 mb-3"><div class="card h-100"><div class="card-body"><h6 class="card-title">'.$title.'</h6><div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>#</th><th>Fingerprint</th><th>Category</th><th>'.$valueLabel.'</th></tr></thead><tbody>';
                    foreach ($rows as $i => $q) {
                        $display = mb_substr($q->normalized_sql,0,80);
                        echo '<tr><td>'.($i+1).'</td><td title="'.e($q->normalized_sql).'">'.e($q->fingerprint).'</td><td>'.e($q->category ?: 'Unclassified').'</td><td>'.number_format($q->{$valueField}).'</td></tr>';
                    }
                    if ($rows->count() === 0) { echo '<tr><td colspan="4" class="text-muted small">No query data</td></tr>'; }
                    echo '</tbody></table></div></div></div></div>';
                };
            @endphp

            <div class="row">
                @php $queryTable('Top patterns by cumulative execution time', $topByTotal, 'Total ms', 'total_exec_ms'); @endphp
                @php $queryTable('Top patterns by average execution time', $topByAvg, 'Avg ms', 'avg_exec_ms'); @endphp
                @php $queryTable('Top patterns by maximum execution time', $topByMax, 'Max ms', 'max_exec_ms'); @endphp
                @php $queryTable('Top patterns by execution count', $topByCount, 'Executions', 'exec_count'); @endphp
                @php $queryTable('Top patterns by rows examined', $topByRows, 'Rows examined', 'rows_examined'); @endphp
                @php $queryTable('Top patterns by rows returned', $topByReturned, 'Rows returned', 'rows_returned'); @endphp
            </div>

            <div class="row">
                <div class="col-12 mb-3">
                    <div class="card"><div class="card-body">
                        <h6 class="card-title">Fingerprints</h6>
                        <div class="table-responsive">
                            <table class="table table-sm table-striped">
                                <thead><tr><th>Fingerprint</th><th>Category</th><th>DB/Tenant</th><th>Executions</th><th>Total ms</th><th>Avg ms</th><th>Max ms</th><th>Rows examined</th><th>Rows returned</th></tr></thead>
                                <tbody>
                                    @forelse ($fingerprints as $q)
                                        <tr>
                                            <td title="{{ $q->normalized_sql }}" class="text-break" style="max-width:260px;">{{ $q->fingerprint }}</td>
                                            <td>{{ $q->category ?: 'Unclassified' }}</td>
                                            <td>{{ $q->db_name ?: '-' }} / {{ $q->tenant_property ?: '-' }}</td>
                                            <td>{{ number_format($q->exec_count) }}</td>
                                            <td>{{ number_format($q->total_exec_ms,2) }}</td>
                                            <td>{{ number_format($q->avg_exec_ms,2) }}</td>
                                            <td>{{ number_format($q->max_exec_ms,2) }}</td>
                                            <td>{{ number_format($q->rows_examined) }}</td>
                                            <td>{{ number_format($q->rows_returned) }}</td>
                                        </tr>
                                        <tr><td colspan="9" class="small text-muted text-break">{{ $q->normalized_sql }}</td></tr>
                                    @empty
                                        <tr><td colspan="9" class="text-muted small">No query fingerprints</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                            {{ $fingerprints->links() }}
                        </div>
                    </div></div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 mb-3">
                    <div class="card"><div class="card-body">
                        <h6 class="card-title">Request-to-query correlations</h6>
                        <div class="table-responsive">
                            <table class="table table-sm table-striped">
                                <thead><tr><th>Window</th><th>Endpoint</th><th>Fingerprint</th><th>Queries</th><th>Total ms</th><th>Source</th></tr></thead>
                                <tbody>
                                    @forelse ($correlations as $c)
                                        <tr>
                                            <td>{{ $c->window_start?->format('Y-m-d H:i') }}</td>
                                            <td>{{ $c->method }} {{ $c->endpoint }}</td>
                                            <td>{{ $c->fingerprint_id }}</td>
                                            <td>{{ number_format($c->query_count) }}</td>
                                            <td>{{ number_format($c->total_exec_ms,2) }}</td>
                                            <td>{{ $c->source }}</td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="6" class="text-muted small">No correlation data</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div></div>
                </div>
                <div class="col-lg-6 mb-3">
                    <div class="card"><div class="card-body">
                        <h6 class="card-title">Hourly query activity</h6>
                        <div class="table-responsive">
                            <table class="table table-sm table-striped">
                                <thead><tr><th>Hour</th><th>Patterns</th><th>Executions</th><th>Total ms</th></tr></thead>
                                <tbody>
                                    @forelse ($hourlyQuery as $h)
                                        <tr>
                                            <td>{{ \Carbon\Carbon::parse($h->bucket_start)->format('Y-m-d H:00') }}</td>
                                            <td>{{ number_format($h->patterns) }}</td>
                                            <td>{{ number_format($h->executions) }}</td>
                                            <td>{{ number_format($h->total_ms,2) }}</td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="4" class="text-muted small">No query hourly data</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div></div>
                </div>
            </div>
        </div>
    </div>
@endsection
