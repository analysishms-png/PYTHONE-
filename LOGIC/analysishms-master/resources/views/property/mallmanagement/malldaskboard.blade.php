@extends('property.layouts.main')
@section('main-container')
    <style>
        /* ── KPI stat cards ── */
        .mall-stat-card { border:none; border-radius:12px; box-shadow:0 2px 10px rgba(0,0,0,.06); transition:all .25s; height:100%; }
        .mall-stat-card:hover { transform:translateY(-3px); box-shadow:0 8px 22px rgba(0,0,0,.12); }
        .mall-stat-value { font-size:24px; font-weight:700; line-height:1.1; margin-bottom:4px; }
        .mall-stat-label { font-size:12px; font-weight:500; color:#6b7280; display:block; line-height:1.25; min-height:30px; }
        .mall-stat-icon { width:42px; height:42px; min-width:42px; border-radius:10px; display:inline-flex; align-items:center; justify-content:center; font-size:17px; }
        .mall-icon-blue   { background:#e8f0fe; color:#1a73e8; }
        .mall-icon-green  { background:#e6f7ee; color:#0f9d58; }
        .mall-icon-orange { background:#fff4e5; color:#f29900; }
        .mall-icon-purple { background:#f3e8ff; color:#8e24aa; }
        .mall-icon-teal   { background:#e0f7fa; color:#00838f; }
        .mall-icon-dark   { background:#eceff1; color:#37474f; }
        .mall-stat-pct { font-size:10.5px; font-weight:700; padding:1px 6px; border-radius:20px; margin-left:6px; white-space:nowrap; }
        .mall-pct-green  { background:#e6f7ee; color:#0f9d58; }
        .mall-pct-orange { background:#fff4e5; color:#f29900; }

        /* ── Monthly Collection Summary card ── */
        .mcs-card { border:none; border-radius:12px; box-shadow:0 2px 10px rgba(0,0,0,.07); background:#fff; }
        .mcs-header { padding:12px 16px 10px; border-bottom:1px solid #f0f3f8; }
        .mcs-header h6 { margin:0; font-size:14px; font-weight:700; color:#2b3544; }
        .mcs-header a { font-size:12px; color:#1a73e8; text-decoration:none; }
        .mcs-stat-row { padding:12px 16px; border-bottom:1px solid #f0f3f8; }
        .mcs-stat-col { display:flex; align-items:flex-start; gap:10px; }
        .mcs-stat-col + .mcs-stat-col { border-left:1px solid #f0f3f8; padding-left:16px; }
        .mcs-stat-icon { width:34px; height:34px; min-width:34px; border-radius:8px; display:flex; align-items:center; justify-content:center; font-size:15px; margin-top:2px; }
        .mcs-val { font-size:15px; font-weight:700; line-height:1.2; }
        .mcs-lbl { font-size:11px; color:#8a94a6; margin-top:2px; }
        .mcs-chart-wrap { padding:12px 16px 4px; position:relative; height:300px; }
        .mcs-legend-dot { width:10px; height:10px; border-radius:50%; display:inline-block; }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row page-titles mx-0">
                <div class="col-sm-6 p-md-0">
                    <div class="welcome-text">
                        <h2 class="mb-0" style="font-weight:600;">Mall Dashboard</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                {{-- Total Shops / Units --}}
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6 mb-4">
                    <div class="card mall-stat-card">
                        <div class="card-body">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <div class="mall-stat-value">{{ $totalShops->cnt ?? 0 }}</div>
                                    <span class="mall-stat-label">Total Shops / Units</span>
                                </div>
                                <div class="mall-stat-icon mall-icon-blue">
                                    <i class="fa-solid fa-store"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Occupied Units --}}
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6 mb-4">
                    <div class="card mall-stat-card">
                        <div class="card-body p-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <div class="d-flex align-items-center">
                                        <div class="mall-stat-value">{{ $occupiedUnits->cnt ?? 0 }}</div>
                                        <span class="mall-stat-pct mall-pct-green">{{ $occupiedPct }}%</span>
                                    </div>
                                    <span class="mall-stat-label">Occupied Units</span>
                                    <div class="progress mt-2" style="height:4px;">
                                        <div class="progress-bar bg-success" style="width:{{ $occupiedPct }}%;"></div>
                                    </div>
                                </div>
                                <div class="mall-stat-icon mall-icon-green">
                                    <i class="fa-solid fa-key"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Vacant Units --}}
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6 mb-4">
                    <div class="card mall-stat-card">
                        <div class="card-body p-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <div class="d-flex align-items-center">
                                        <div class="mall-stat-value">{{ $vacantUnits->cnt ?? 0 }}</div>
                                        <span class="mall-stat-pct mall-pct-orange">{{ $vacantPct }}%</span>
                                    </div>
                                    <span class="mall-stat-label">Vacant Units</span>
                                    <div class="progress mt-2" style="height:4px;">
                                        <div class="progress-bar bg-warning" style="width:{{ $vacantPct }}%;"></div>
                                    </div>
                                </div>
                                <div class="mall-stat-icon mall-icon-orange">
                                    <i class="fa-solid fa-door-open"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Expiring Leases --}}
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6 mb-4">
                    <div class="card mall-stat-card">
                        <div class="card-body">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <div class="mall-stat-value">{{ $expiringLeases->cnt ?? 0 }}</div>
                                    <span class="mall-stat-label">Expiring Leases (90 Days)</span>
                                </div>
                                <div class="mall-stat-icon mall-icon-purple">
                                    <i class="fa-solid fa-calendar-xmark"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Under Fit Out --}}
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6 mb-4">
                    <div class="card mall-stat-card">
                        <div class="card-body">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <div class="mall-stat-value">{{ $underFitOut->cnt ?? 0 }}</div>
                                    <span class="mall-stat-label">Under Fit Out</span>
                                </div>
                                <div class="mall-stat-icon mall-icon-teal">
                                    <i class="fa-solid fa-hammer"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Total Tenants --}}
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6 mb-4">
                    <div class="card mall-stat-card">
                        <div class="card-body">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <div class="mall-stat-value">{{ $totalTenants->cnt ?? 0 }}</div>
                                    <span class="mall-stat-label">Total Tenants</span>
                                </div>
                                <div class="mall-stat-icon mall-icon-dark">
                                    <i class="fa-solid fa-users"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{-- Monthly Sale / Collection Summary – compact card --}}
                @php $outstanding = $grandBilled - $grandCollected; @endphp
                <div class="col-lg-8 mb-4">
                    <div class="card mcs-card h-100">

                        {{-- Header --}}
                        <div class="card-header mcs-header d-flex align-items-start justify-content-between bg-white border-bottom">
                            <div>
                                <h5 class="mb-0 font-weight-bold text-dark">Monthly Collection Summary</h5>
                            </div>
                        </div>

                        {{-- 3 KPI stats --}}
                        <div class="card-body mcs-stat-row px-3 py-3">
                            <div class="row no-gutters">
                                {{-- Billed --}}
                                <div class="col-4 mcs-stat-col pr-3">
                                    <div class="d-flex align-items-start">
                                        <div class="mcs-stat-icon mr-2" style="background:#e8f0fe;">
                                            <i class="fa-solid fa-file-invoice" style="color:#1a73e8;"></i>
                                        </div>
                                        <div>
                                            <div class="mcs-val" style="color:#1a73e8;">₹ {{ number_format($grandBilled, 2) }}</div>
                                            <div class="mcs-lbl">Billed Amount</div>
                                        </div>
                                    </div>
                                </div>
                                {{-- Collected --}}
                                <div class="col-4 mcs-stat-col px-3" style="border-left:1px solid #f0f3f8;">
                                    <div class="d-flex align-items-start">
                                        <div class="mcs-stat-icon mr-2" style="background:#e6f7ee;">
                                            <i class="fa-solid fa-wallet" style="color:#0f9d58;"></i>
                                        </div>
                                        <div>
                                            <div class="mcs-val" style="color:#0f9d58;">₹ {{ number_format($grandCollected, 2) }}</div>
                                            <div class="mcs-lbl">Collected Amount</div>
                                        </div>
                                    </div>
                                </div>
                                {{-- Outstanding --}}
                                <div class="col-4 mcs-stat-col pl-3" style="border-left:1px solid #f0f3f8;">
                                    <div class="d-flex align-items-start">
                                        <div class="mcs-stat-icon mr-2" style="background:#fff4e5;">
                                            <i class="fa-solid fa-circle-exclamation" style="color:#f29900;"></i>
                                        </div>
                                        <div>
                                            <div class="mcs-val" style="color:#d93025;">₹ {{ number_format($outstanding, 2) }}</div>
                                            <div class="mcs-lbl">Outstanding</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {{-- Bar Chart --}}
                        <div class="mcs-chart-wrap">
                            <canvas id="mallSummaryChart"></canvas>
                        </div>
                        <div class="d-flex align-items-center justify-content-center pb-3" style="gap:14px;">
                            <div class="d-flex align-items-center" style="gap:5px;font-size:11.5px;color:#5f6b7a;">
                                <span class="mcs-legend-dot" style="background:#1a73e8;"></span> Billed
                            </div>
                            <div class="d-flex align-items-center" style="gap:5px;font-size:11.5px;color:#5f6b7a;">
                                <span class="mcs-legend-dot" style="background:#0f9d58;"></span> Collected
                            </div>
                        </div>

                    </div>
                </div>


                {{-- Charge Wise Revenue --}}
                <div class="col-lg-4 mb-4">
                    <div class="card mcs-card h-100">
                        <div class="card-header mcs-header d-flex align-items-start justify-content-between bg-white border-bottom">
                            <div>
                                <h5 class="mb-0 font-weight-bold text-dark">Charge Wise Revenue</h5>
                            </div>
                        </div>
                        <div class="card-body px-3 py-3" style="overflow-y:auto;max-height:370px;">
                            @forelse($chargeWiseRows as $charge)
                                @php
                                    $pct = $chargeWiseMax > 0 ? round(($charge->billedamount / $chargeWiseMax) * 100) : 0;
                                    $amt = $charge->billedamount;
                                    $amtFmt = $amt >= 10000000
                                        ? '₹ ' . number_format($amt / 10000000, 2) . ' Cr'
                                        : ($amt >= 100000
                                            ? '₹ ' . number_format($amt / 100000, 2) . ' L'
                                            : '₹ ' . number_format($amt, 0));
                                @endphp
                                <div class="mb-3">
                                    <div class="d-flex align-items-center justify-content-between mb-1">
                                        <span style="font-size:13px;color:#374151;font-weight:500;">{{ $charge->chargename }}</span>
                                        <span style="font-size:13px;font-weight:700;color:#1a73e8;">{{ $amtFmt }}</span>
                                    </div>
                                    <div class="progress" style="height:5px;border-radius:4px;background:#eef1f6;">
                                        <div class="progress-bar" role="progressbar"
                                             style="width:{{ $pct }}%;background:#1a73e8;border-radius:4px;"
                                             aria-valuenow="{{ $pct }}" aria-valuemin="0" aria-valuemax="100">
                                        </div>
                                    </div>
                                </div>
                            @empty
                                <div class="text-center text-muted py-4">No charge data found.</div>
                            @endforelse
                        </div>
                    </div>
                </div>

                {{-- Lease Expiry (Next 90 Days) --}}
                <div class="col-lg-6 mb-4">
                    <div class="card mcs-card h-100">
                        <div class="card-header mcs-header d-flex align-items-start justify-content-between bg-white border-bottom">
                            <div>
                                <h5 class="mb-0 font-weight-bold text-dark">Lease Expiry (Next 90 Days)</h5>
                                <small class="text-muted">Tenants whose lease expires within 90 days</small>
                            </div>
                            <a href="#" class="text-primary small" data-toggle="modal" data-target="#leaseExpiryAllModal">View All →</a>
                        </div>
                        <div class="card-body p-0" style="overflow-y:auto;max-height:370px;">
                            <div class="table-responsive">
                                <table class="table mb-0" style="font-size:13px;">
                                    <thead style="background:#f7f9fc;">
                                        <tr>
                                            <th class="px-3 py-2 border-0" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Shop / Unit</th>
                                            <th class="px-3 py-2 border-0" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Tenant Name</th>
                                            <th class="px-3 py-2 border-0" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Expiry Date</th>
                                            <th class="px-3 py-2 border-0 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Days Left</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse($leaseExpiry90 as $lease)
                                            @php
                                                $days = (int) $lease->daysleft;
                                                $badgeClass = $days <= 15 ? 'badge-danger' : ($days <= 30 ? 'badge-warning' : 'badge-info');
                                            @endphp
                                            <tr>
                                                <td class="px-3 py-2" style="color:#374151;font-weight:500;">
                                                    {{ $lease->shopname ?? '—' }}
                                                </td>
                                                <td class="px-3 py-2" style="color:#374151;">
                                                    {{ $lease->name ?? $lease->tenantid }}
                                                </td>
                                                <td class="px-3 py-2" style="color:#374151;">
                                                    {{ date('d M Y', strtotime($lease->leaseexpirydate)) }}
                                                </td>
                                                <td class="px-3 py-2 text-center">
                                                    <span class="badge {{ $badgeClass }}" style="font-size:12px;padding:4px 10px;border-radius:20px;">
                                                        {{ $days }} days
                                                    </span>
                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="4" class="text-center text-muted py-4">
                                                    <i class="fa-solid fa-circle-check text-success mr-1"></i>
                                                    No leases expiring in next 90 days.
                                                </td>
                                            </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Rent / CAM Increment (Next 90 Days) --}}
                <div class="col-lg-6 mb-4">
                    <div class="card mcs-card h-100">
                        <div class="card-header mcs-header d-flex align-items-start justify-content-between bg-white border-bottom">
                            <div>
                                <h5 class="mb-0 font-weight-bold text-dark">Rent / CAM Increment (Next 90 Days)</h5>
                                <small class="text-muted">Upcoming rent &amp; CAM escalations within 90 days</small>
                            </div>
                            <a href="#" class="text-primary small" data-toggle="modal" data-target="#rentCamIncrementAllModal">View All →</a>
                        </div>
                        <div class="card-body p-0" style="overflow-y:auto;max-height:370px;">
                            <div class="table-responsive">
                                <table class="table mb-0" style="font-size:13px;">
                                    <thead style="background:#f7f9fc;">
                                        <tr>
                                            <th class="px-3 py-2 border-0" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Shop / Unit</th>
                                            <th class="px-3 py-2 border-0" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Tenant Name</th>
                                            <th class="px-3 py-2 border-0" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Charge</th>
                                            <th class="px-3 py-2 border-0" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Effective From</th>
                                            <th class="px-3 py-2 border-0 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Incr. %</th>
                                            <th class="px-3 py-2 border-0 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Days Left</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse($rentCamIncrement90 as $inc)
                                            @php
                                                $incDays = (int) $inc->daysleft;
                                                $incBadgeClass = $incDays <= 15 ? 'badge-danger' : ($incDays <= 30 ? 'badge-warning' : 'badge-info');
                                            @endphp
                                            <tr>
                                                <td class="px-3 py-2" style="color:#374151;font-weight:500;">
                                                    {{ $inc->shopname ?? '—' }}
                                                </td>
                                                <td class="px-3 py-2" style="color:#374151;">
                                                    {{ $inc->name ?? $inc->leaseid }}
                                                </td>
                                                <td class="px-3 py-2" style="color:#374151;">
                                                    {{ $inc->chargename ?? '—' }}
                                                </td>
                                                <td class="px-3 py-2" style="color:#374151;">
                                                    {{ date('d M Y', strtotime($inc->effectivefrom)) }}
                                                </td>
                                                <td class="px-3 py-2 text-center" style="color:#1a73e8;font-weight:700;">
                                                    {{ number_format((float) $inc->increasepercent, 2) }}%
                                                </td>
                                                <td class="px-3 py-2 text-center">
                                                    <span class="badge {{ $incBadgeClass }}" style="font-size:12px;padding:4px 10px;border-radius:20px;">
                                                        {{ $incDays }} days
                                                    </span>
                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="6" class="text-center text-muted py-4">
                                                    <i class="fa-solid fa-circle-check text-success mr-1"></i>
                                                    No rent / CAM increments in next 90 days.
                                                </td>
                                            </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    {{-- View All Rent / CAM Increment Modal --}}
    <div class="modal fade" id="rentCamIncrementAllModal" tabindex="-1" role="dialog" aria-labelledby="rentCamIncrementAllLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background:#f7f9fc;border-bottom:1px solid #eef1f5;">
                    <h5 class="modal-title font-weight-bold" id="rentCamIncrementAllLabel">All Rent / CAM Increments</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body p-0" style="max-height:70vh;overflow-y:auto;">
                    <div class="table-responsive">
                        <table class="table mb-0" style="font-size:13px;">
                            <thead style="background:#f7f9fc;position:sticky;top:0;z-index:1;">
                                <tr>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">#</th>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Shop / Unit</th>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Tenant Name</th>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Charge</th>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Effective From</th>
                                    <th class="px-3 py-2 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Incr. %</th>
                                    <th class="px-3 py-2 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Days Left</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($rentCamIncrementAll as $i => $inc)
                                    @php
                                        $incDays = (int) $inc->daysleft;
                                        $incBadgeClass = $incDays < 0 ? 'badge-secondary' : ($incDays <= 15 ? 'badge-danger' : ($incDays <= 30 ? 'badge-warning' : 'badge-info'));
                                        $rowStyle = $incDays < 0 ? 'background:#f8f9fa;' : '';
                                    @endphp
                                    <tr style="{{ $rowStyle }}">
                                        <td class="px-3 py-2 text-muted">{{ $i + 1 }}</td>
                                        <td class="px-3 py-2" style="font-weight:500;">{{ $inc->shopname ?? '—' }}</td>
                                        <td class="px-3 py-2">{{ $inc->name ?? $inc->leaseid }}</td>
                                        <td class="px-3 py-2">{{ $inc->chargename ?? '—' }}</td>
                                        <td class="px-3 py-2">{{ date('d M Y', strtotime($inc->effectivefrom)) }}</td>
                                        <td class="px-3 py-2 text-center" style="color:#1a73e8;font-weight:700;">{{ number_format((float) $inc->increasepercent, 2) }}%</td>
                                        <td class="px-3 py-2 text-center">
                                            <span class="badge {{ $incBadgeClass }}" style="font-size:12px;padding:4px 10px;border-radius:20px;">
                                                {{ $incDays < 0 ? abs($incDays) . ' days ago' : $incDays . ' days' }}
                                            </span>
                                        </td>
                                    </tr>
                                @empty
                                    <tr><td colspan="7" class="text-center text-muted py-4">No rent / CAM increment records found.</td></tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    {{-- View All Lease Expiry Modal --}}
    <div class="modal fade" id="leaseExpiryAllModal" tabindex="-1" role="dialog" aria-labelledby="leaseExpiryAllLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background:#f7f9fc;border-bottom:1px solid #eef1f5;">
                    <h5 class="modal-title font-weight-bold" id="leaseExpiryAllLabel">All Lease Expiry</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body p-0">
                    <div class="table-responsive">
                        <table class="table mb-0" style="font-size:13px;">
                            <thead style="background:#f7f9fc;">
                                <tr>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">#</th>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Shop / Unit</th>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Tenant Name</th>
                                    <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Expiry Date</th>
                                    <th class="px-3 py-2 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Days Left</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($leaseExpiryAll as $i => $lease)
                                    @php
                                        $days = (int) $lease->daysleft;
                                        $badgeClass = $days < 0 ? 'badge-danger' : ($days <= 15 ? 'badge-danger' : ($days <= 30 ? 'badge-warning' : 'badge-info'));
                                        $rowStyle = $days < 0 ? 'background:#fff5f5;' : '';
                                    @endphp
                                    <tr style="{{ $rowStyle }}">
                                        <td class="px-3 py-2 text-muted">{{ $i + 1 }}</td>
                                        <td class="px-3 py-2" style="font-weight:500;">{{ $lease->shopname ?? '—' }}</td>
                                        <td class="px-3 py-2">{{ $lease->name ?? $lease->tenantid }}</td>
                                        <td class="px-3 py-2">{{ date('d M Y', strtotime($lease->leaseexpirydate)) }}</td>
                                        <td class="px-3 py-2 text-center">
                                            <span class="badge {{ $badgeClass }}" style="font-size:12px;padding:4px 10px;border-radius:20px;">
                                                {{ $days < 0 ? abs($days) . ' days ago' : $days . ' days' }}
                                            </span>
                                        </td>
                                    </tr>
                                @empty
                                    <tr><td colspan="5" class="text-center text-muted py-4">No lease records found.</td></tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    @php
            $chartLabels    = array_map(fn($r) => $r->monthname, $monthlySummary);
            $chartBilled    = array_map(fn($r) => (float) $r->billed,    $monthlySummary);
            $chartCollected = array_map(fn($r) => (float) $r->collected, $monthlySummary);
        @endphp
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var el = document.getElementById('mallSummaryChart');
                if (!el || typeof Chart === 'undefined') return;

                var labels = @json(array_values($chartLabels));
                var billed = @json(array_values($chartBilled));
                var collected = @json(array_values($chartCollected));

                var inr = function (v) {
                    return '\u20B9 ' + Number(v || 0).toLocaleString('en-IN', { maximumFractionDigits: 2 });
                };
                var compact = function (v) {
                    v = Number(v || 0);
                    var abs = Math.abs(v);
                    if (abs >= 10000000) return '\u20B9 ' + (v / 10000000).toFixed(2) + ' Cr';
                    if (abs >= 100000) return '\u20B9 ' + (v / 100000).toFixed(2) + ' L';
                    if (abs >= 1000) return '\u20B9 ' + (v / 1000).toFixed(1) + ' K';
                    return '\u20B9 ' + v;
                };

                new Chart(el.getContext('2d'), {
                    type: 'bar',
                    data: {
                        labels: labels,
                        datasets: [
                            {
                                label: 'Billed',
                                data: billed,
                                backgroundColor: 'rgba(26, 115, 232, 0.82)',
                                hoverBackgroundColor: 'rgba(26, 115, 232, 1)',
                                borderRadius: 4,
                                borderSkipped: false,
                                maxBarThickness: 22,
                                barPercentage: 0.85,
                                categoryPercentage: 0.7
                            },
                            {
                                label: 'Collected',
                                data: collected,
                                backgroundColor: 'rgba(15, 157, 88, 0.82)',
                                hoverBackgroundColor: 'rgba(15, 157, 88, 1)',
                                borderRadius: 4,
                                borderSkipped: false,
                                maxBarThickness: 22,
                                barPercentage: 0.85,
                                categoryPercentage: 0.7
                            }
                        ]
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        interaction: { mode: 'index', intersect: false },
                        plugins: {
                            legend: { display: false },
                            tooltip: {
                                callbacks: {
                                    label: function (ctx) {
                                        return ctx.dataset.label + ': ' + inr(ctx.parsed.y);
                                    }
                                }
                            }
                        },
                        scales: {
                            x: {
                                grid: { display: false },
                                border: { display: false },
                                ticks: {
                                    color: '#5f6b7a',
                                    font: { size: 11 },
                                    autoSkip: false,
                                    maxRotation: 0,
                                    minRotation: 0
                                }
                            },
                            y: {
                                beginAtZero: true,
                                grid: { color: '#f0f3f8', lineWidth: 1 },
                                border: { display: false, dash: [4,4] },
                                ticks: {
                                    color: '#8a94a6',
                                    font: { size: 11 },
                                    callback: function (value) { return compact(value); }
                                }
                            }
                        }
                    }
                });
            });
        </script>

@endsection
