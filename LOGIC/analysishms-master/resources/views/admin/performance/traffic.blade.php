@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-12"><div class="card"><div class="card-body">
                    <h4 class="card-title">Traffic and Client Analysis</h4>
                    <form method="GET" action="{{ route('admin.performance.traffic') }}" class="row g-2 align-items-end">
                        <div class="col-md-2"><label>Window</label><select name="window" class="form-control form-control-sm">@foreach([24,48,72] as $w)<option value="{{ $w }}" @selected((int)request('window',24)===$w)>{{ $w }} hours</option>@endforeach</select></div>
                        <div class="col-md-3"><label>From</label><input type="datetime-local" name="from" class="form-control form-control-sm" value="{{ request('from', $start->format('Y-m-d\TH:i')) }}"></div>
                        <div class="col-md-3"><label>To</label><input type="datetime-local" name="to" class="form-control form-control-sm" value="{{ request('to', $end->format('Y-m-d\TH:i')) }}"></div>
                        <div class="col-md-2"><div class="form-check mt-4"><input type="checkbox" name="include_synthetic" value="1" class="form-check-input" id="includeSynthetic" @checked(request()->boolean('include_synthetic', app()->environment('local', 'testing')))> <label class="form-check-label small" for="includeSynthetic">Show synthetic fixtures</label></div></div><div class="col-md-2"><button class="btn btn-primary btn-sm" type="submit">Apply</button></div>
                    </form>
                    <small class="text-muted d-block mt-2">Client labels are not proof of malicious activity. Access-log traffic only.</small>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-lg-6 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Top client IPs</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>IP</th><th>Requests</th><th>Bytes</th><th>4xx</th><th>5xx</th><th>Redirects</th></tr></thead><tbody>
                        @forelse ($clients as $client) <tr><td>{{ $client->client_ip }}</td><td>{{ number_format($client->requests) }}</td><td>{{ number_format($client->bytes) }}</td><td>{{ number_format($client->errors_4xx) }}</td><td>{{ number_format($client->errors_5xx) }}</td><td>{{ number_format($client->redirects) }}</td></tr> @empty <tr><td colspan="6" class="text-muted small">No data</td></tr> @endforelse
                    </tbody></table></div>
                </div></div></div>
                <div class="col-lg-6 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Top user agents</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>User agent</th><th>Requests</th></tr></thead><tbody>
                        @forelse ($agents as $agent) <tr><td class="text-break" style="max-width:400px;">{{ $agent->user_agent }}</td><td>{{ number_format($agent->requests) }}</td></tr> @empty <tr><td colspan="2" class="text-muted small">No data</td></tr> @endforelse
                    </tbody></table></div>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-12 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Top endpoint combinations per client</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>IP</th><th>Method</th><th>Endpoint</th><th>Requests</th></tr></thead><tbody>
                        @forelse ($combos as $combo) <tr><td>{{ $combo->client_ip }}</td><td>{{ $combo->method }}</td><td class="text-break" style="max-width:400px;">{{ $combo->endpoint }}</td><td>{{ number_format($combo->requests) }}</td></tr> @empty <tr><td colspan="4" class="text-muted small">No data</td></tr> @endforelse
                    </tbody></table></div>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-lg-6 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Request volume by hour</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>Hour</th><th>Requests</th></tr></thead><tbody>
                        @foreach ($hourly as $h) <tr><td>{{ \Carbon\Carbon::parse($h->bucket_start)->format('Y-m-d H:00') }}</td><td>{{ number_format($h->requests) }}</td></tr> @endforeach
                    </tbody></table></div>
                </div></div></div>
                <div class="col-lg-6 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Request bursts (hours at/above doubled average)</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>Hour</th><th>Requests</th></tr></thead><tbody>
                        @forelse ($bursts as $h) <tr><td>{{ \Carbon\Carbon::parse($h->bucket_start)->format('Y-m-d H:00') }}</td><td>{{ number_format($h->requests) }}</td></tr> @empty <tr><td colspan="2" class="text-muted small">No bursts</td></tr> @endforelse
                    </tbody></table></div>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-lg-4 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Repeated redirects</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>Method</th><th>Endpoint</th><th>3xx</th></tr></thead><tbody>
                        @forelse ($repeated3xx as $r) <tr><td>{{ $r->method }}</td><td class="text-break" style="max-width:280px;">{{ $r->endpoint }}</td><td>{{ number_format($r->hits) }}</td></tr> @empty <tr><td colspan="3" class="text-muted small">No data</td></tr> @endforelse
                    </tbody></table></div>
                </div></div></div>
                <div class="col-lg-4 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Repeated 4xx requests</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>Method</th><th>Endpoint</th><th>4xx</th></tr></thead><tbody>
                        @forelse ($repeated4xx as $r) <tr><td>{{ $r->method }}</td><td class="text-break" style="max-width:280px;">{{ $r->endpoint }}</td><td>{{ number_format($r->hits) }}</td></tr> @empty <tr><td colspan="3" class="text-muted small">No data</td></tr> @endforelse
                    </tbody></table></div>
                </div></div></div>
                <div class="col-lg-4 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Repeated 5xx requests</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>Method</th><th>Endpoint</th><th>5xx</th></tr></thead><tbody>
                        @forelse ($repeated5xx as $r) <tr><td>{{ $r->method }}</td><td class="text-break" style="max-width:280px;">{{ $r->endpoint }}</td><td>{{ number_format($r->hits) }}</td></tr> @empty <tr><td colspan="3" class="text-muted small">No data</td></tr> @endforelse
                    </tbody></table></div>
                </div></div></div>
            </div>

            <div class="row">
                <div class="col-12 mb-3"><div class="card"><div class="card-body">
                    <h6 class="card-title">Potential automated polling or inefficient clients (>= 20 hits same endpoint)</h6>
                    <div class="table-responsive"><table class="table table-sm table-striped"><thead><tr><th>IP</th><th>User agent</th><th>Method</th><th>Endpoint</th><th>Requests</th></tr></thead><tbody>
                        @forelse ($polling as $p) <tr><td>{{ $p->client_ip }}</td><td class="text-break" style="max-width:260px;">{{ $p->user_agent }}</td><td>{{ $p->method }}</td><td class="text-break" style="max-width:280px;">{{ $p->endpoint }}</td><td>{{ number_format($p->requests) }}</td></tr> @empty <tr><td colspan="5" class="text-muted small">No high-frequency client/endpoint combinations</td></tr> @endforelse
                    </tbody></table></div>
                    <small class="text-muted">Endpoints returning repeated 410 responses cannot be distinguished from current aggregates; access-log raw status code 410 support requires importer detail extension.</small>
                </div></div></div>
            </div>
        </div>
    </div>
@endsection
