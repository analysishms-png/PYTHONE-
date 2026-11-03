@extends('property.layouts.main')
@section('main-container')

<style>
    .rdb-card { border:none; border-radius:12px; box-shadow:0 2px 10px rgba(0,0,0,.07); background:#fff; }
    .rdb-kpi  { border-radius:12px; box-shadow:0 2px 10px rgba(0,0,0,.06); transition:all .2s; border:none; }
    .rdb-kpi:hover { transform:translateY(-2px); box-shadow:0 6px 18px rgba(0,0,0,.12); }
    .rdb-kpi-val   { font-size:26px; font-weight:700; line-height:1.1; }
    .rdb-kpi-val.rdb-kpi-money { font-size:20px; white-space:nowrap; }
    .rdb-kpi-lbl   { font-size:11.5px; color:#6b7280; font-weight:500; margin-top:3px; }
    .rdb-kpi-icon  { width:44px; height:44px; min-width:44px; border-radius:11px;
                     display:inline-flex; align-items:center; justify-content:center; font-size:18px; }
    .rdb-section-title { font-size:15px; font-weight:700; color:#2b3544; margin-bottom:0; }
    .rdb-date-row  { background:#f7f9fc; border-radius:10px; padding:12px 16px; }
</style>

<div class="content-body">
    <div class="container-fluid">

        {{-- Page Title + Date Filter --}}
        <div class="row page-titles mx-0 mb-3">
            <div class="col-sm-5 p-md-0 d-flex align-items-center">
                <h4 class="mb-0" style="font-weight:700; color:#2b3544;">
                    <i class="fa fa-chart-bar mr-2" style="color:#1a73e8;"></i> Revenue Desk Board
                </h4>
            </div>
            <div class="col-sm-7 p-md-0 d-flex justify-content-end align-items-center flex-wrap" style="gap:8px;">
                <div class="d-flex align-items-center" style="gap:6px;">
                    <label class="mb-0 text-muted" style="font-size:13px;">Date:</label>
                    <input type="date" id="rdbFromDate" class="form-control form-control-sm" style="width:150px;"
                        value="{{ \Carbon\Carbon::parse($ncurdate)->format('Y-m-d') }}">
                </div>
                <button class="btn btn-primary btn-sm" id="rdbRefresh" style="min-width:80px;">
                    <i class="fa fa-refresh mr-1"></i> Refresh
                </button>
            </div>
        </div>

        {{-- KPI Summary Cards --}}
        <div class="row" id="rdbKpiRow">
            {{-- Total Rooms --}}
            <div class="col-xl-2 col-lg-4 col-md-4 col-6 mb-3">
                <div class="card rdb-kpi" style="border-left:4px solid #1a73e8;">
                    <div class="card-body p-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div>
                                <div class="rdb-kpi-val text-primary" id="kpi_rooms">—</div>
                                <div class="rdb-kpi-lbl">Total Rooms</div>
                            </div>
                            <div class="rdb-kpi-icon" style="background:#e8f0fe; color:#1a73e8;">
                                <i class="fa fa-bed"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- Total Booked --}}
            <div class="col-xl-2 col-lg-4 col-md-4 col-6 mb-3">
                <div class="card rdb-kpi" style="border-left:4px solid #0f9d58;">
                    <div class="card-body p-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div>
                                <div class="rdb-kpi-val text-success" id="kpi_booked">—</div>
                                <div class="rdb-kpi-lbl">Total Booked</div>
                            </div>
                            <div class="rdb-kpi-icon" style="background:#e6f7ee; color:#0f9d58;">
                                <i class="fa fa-check-circle"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- Hotel Occupancy --}}
            <div class="col-xl-2 col-lg-4 col-md-4 col-6 mb-3">
                <div class="card rdb-kpi" style="border-left:4px solid #f29900;">
                    <div class="card-body p-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div>
                                <div class="rdb-kpi-val" style="color:#f29900;" id="kpi_occ">—</div>
                                <div class="rdb-kpi-lbl">Hotel Occupancy</div>
                            </div>
                            <div class="rdb-kpi-icon" style="background:#fff4e5; color:#f29900;">
                                <i class="fa fa-percent"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- ADR --}}
            <div class="col-xl-2 col-lg-4 col-md-4 col-6 mb-3">
                <div class="card rdb-kpi" style="border-left:4px solid #8e24aa;">
                    <div class="card-body p-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div>
                                <div class="rdb-kpi-val rdb-kpi-money" style="color:#8e24aa;" id="kpi_adr">—</div>
                                <div class="rdb-kpi-lbl">ADR (Avg. Room Rate)</div>
                            </div>
                            <div class="rdb-kpi-icon" style="background:#f3e8ff; color:#8e24aa;">
                                <i class="fa fa-rupee-sign"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- RevPAR --}}
            <div class="col-xl-2 col-lg-4 col-md-4 col-6 mb-3">
                <div class="card rdb-kpi" style="border-left:4px solid #00838f;">
                    <div class="card-body p-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div>
                                <div class="rdb-kpi-val rdb-kpi-money" style="color:#00838f;" id="kpi_revpar">—</div>
                                <div class="rdb-kpi-lbl">RevPAR</div>
                            </div>
                            <div class="rdb-kpi-icon" style="background:#e0f7fa; color:#00838f;">
                                <i class="fa fa-chart-line"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- Expected Revenue --}}
            <div class="col-xl-2 col-lg-4 col-md-4 col-6 mb-3">
                <div class="card rdb-kpi" style="border-left:4px solid #d93025;">
                    <div class="card-body p-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div>
                                <div class="rdb-kpi-val rdb-kpi-money" style="color:#d93025;" id="kpi_revenue">—</div>
                                <div class="rdb-kpi-lbl">Expected Revenue</div>
                            </div>
                            <div class="rdb-kpi-icon" style="background:#fce8e6; color:#d93025;">
                                <i class="fa fa-indian-rupee-sign"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- Charts Row --}}
        <div class="row">
            {{-- Occupancy Forecast Bar Chart --}}
            <div class="col-lg-8 mb-4">
                <div class="card rdb-card">
                    <div class="card-header bg-white border-bottom d-flex align-items-center justify-content-between py-3 px-4">
                        <h6 class="rdb-section-title mb-0">
                            <i class="fa fa-bar-chart mr-2" style="color:#1a73e8;"></i>
                            Hotel Occupancy Forecast
                        </h6>
                        <span class="text-muted" style="font-size:12px;" id="rdbChartSubtitle"></span>
                    </div>
                    <div class="card-body" style="height:300px; position:relative;">
                        <div id="rdbLoader" class="text-center py-5 text-muted" style="display:none;">
                            <i class="fa fa-spinner fa-spin fa-2x mb-2"></i><br>Loading...
                        </div>
                        <canvas id="rdbOccChart"></canvas>
                    </div>
                </div>
            </div>

            {{-- Room Category Occupancy --}}
            <div class="col-lg-4 mb-4">
                <div class="card rdb-card h-100">
                    <div class="card-header bg-white border-bottom d-flex align-items-center justify-content-between flex-wrap py-3 px-4" style="gap:8px;">
                        <h6 class="rdb-section-title mb-0">
                            <i class="fa fa-th-large mr-2" style="color:#0f9d58;"></i>
                            Room Category Occupancy
                        </h6>
                        <span class="text-muted" style="font-size:12px;" id="rdbCatDateLbl"></span>
                    </div>
                    <div class="card-body d-flex flex-column p-3" style="height:300px;">
                        <div style="position:relative; flex:1 1 auto; min-height:0;">
                            <canvas id="rdbCatChart"></canvas>
                        </div>
                        <div id="rdbCatSummary" class="text-center text-muted pt-2" style="font-size:11.5px;">
                            Loading…
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- Date-wise Detail Table --}}
        <div class="row">
            <div class="col-12 mb-4">
                <div class="card rdb-card">
                    <div class="card-header bg-white border-bottom d-flex align-items-center py-3 px-4">
                        <h6 class="rdb-section-title mb-0">
                            <i class="fa fa-table mr-2" style="color:#374151;"></i>
                            Date-wise Detail
                        </h6>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0" id="rdbTable" style="font-size:13px;">
                                <thead style="background:#f7f9fc;">
                                    <tr>
                                        <th class="px-3 py-2" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Date</th>
                                        <th class="px-3 py-2 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Total Rooms</th>
                                        <th class="px-3 py-2 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Arrivals</th>
                                        <th class="px-3 py-2 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Stay Over</th>
                                        <th class="px-3 py-2 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Occupied</th>
                                        <th class="px-3 py-2 text-center" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Available</th>
                                        <th class="px-3 py-2 text-right" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Occupancy %</th>
                                        <th class="px-3 py-2 text-right" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">ADR (₹)</th>
                                        <th class="px-3 py-2 text-right" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">RevPAR (₹)</th>
                                        <th class="px-3 py-2 text-right" style="font-size:11.5px;font-weight:700;color:#5f6b7a;text-transform:uppercase;">Revenue (₹)</th>
                                    </tr>
                                </thead>
                                <tbody id="rdbTableBody">
                                    <tr><td colspan="10" class="text-center text-muted py-4">Select date range and click Refresh</td></tr>
                                </tbody>
                                <tfoot id="rdbTableFoot" style="display:none;">
                                    <tr style="background:#eef1f6; font-weight:700;">
                                        <td class="px-3 py-2">Total / Avg</td>
                                        <td class="px-3 py-2 text-center" id="ft_rooms">—</td>
                                        <td class="px-3 py-2 text-center" id="ft_arrival">—</td>
                                        <td class="px-3 py-2 text-center" id="ft_stayover">—</td>
                                        <td class="px-3 py-2 text-center" id="ft_occupied">—</td>
                                        <td class="px-3 py-2 text-center" id="ft_available">—</td>
                                        <td class="px-3 py-2 text-right" id="ft_occ">—</td>
                                        <td class="px-3 py-2 text-right" id="ft_adr">—</td>
                                        <td class="px-3 py-2 text-right" id="ft_revpar">—</td>
                                        <td class="px-3 py-2 text-right" id="ft_revenue">—</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<script>
(function () {
    var occChart = null, catChart = null;
    var CSRF = '{{ csrf_token() }}';
    var fetchUrl = '{{ route("fetchrevenuedeskboard") }}';

    function inrFull(v) {
        return '₹' + parseFloat(v || 0).toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
    }

    function occColor(pct) {
        if (pct >= 80) return 'rgba(15,157,88,0.85)';
        if (pct >= 50) return 'rgba(26,115,232,0.85)';
        return 'rgba(242,153,0,0.85)';
    }

    function loadData() {
        var from = document.getElementById('rdbFromDate').value;
        var to   = from;
        var catDate = from;
        if (!from) return;

        document.getElementById('rdbLoader').style.display = 'block';
        document.getElementById('rdbOccChart').style.opacity = '0.3';

        // Reset KPIs
        ['kpi_rooms','kpi_booked','kpi_occ','kpi_adr','kpi_revpar','kpi_revenue']
            .forEach(function(id){ document.getElementById(id).textContent = '…'; });

        fetch(fetchUrl, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', 'X-CSRF-TOKEN': CSRF },
            body: JSON.stringify({ fromdate: from, todate: to, catdate: catDate })
        })
        .then(function(r){ return r.json(); })
        .then(function(data) {
            document.getElementById('rdbLoader').style.display = 'none';
            document.getElementById('rdbOccChart').style.opacity = '1';

            var rows    = data.rows    || [];
            var summary = data.summary || {};

            // ── KPI Cards ──
            document.getElementById('kpi_rooms').textContent   = summary.total_rooms    || 0;
            document.getElementById('kpi_booked').textContent  = summary.occupied_rooms || 0;
            document.getElementById('kpi_occ').textContent     = (summary.occ_percent   || 0) + '%';
            document.getElementById('kpi_adr').textContent     = inrFull(summary.arr        || 0);
            document.getElementById('kpi_revpar').textContent  = inrFull(summary.revpar     || 0);
            document.getElementById('kpi_revenue').textContent = inrFull(summary.total_revenue || 0);

            // Chart subtitle
            document.getElementById('rdbChartSubtitle').textContent =
                (from === to ? from : from + ' to ' + to) + ' (' + (summary.days || rows.length) + ' day' + ((summary.days || rows.length) === 1 ? '' : 's') + ')';
            document.getElementById('rdbCatDateLbl').textContent = data.cat_date || catDate;

            var labels   = rows.map(function(r){ return r.date_label + '\n' + r.day_name; });
            var occPcts  = rows.map(function(r){ return parseFloat(r.occ_percent) || 0; });
            var bgColors = occPcts.map(function(p){ return occColor(p); });

            // ── Occupancy Chart ──
            if (occChart) occChart.destroy();
            occChart = new Chart(document.getElementById('rdbOccChart').getContext('2d'), {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Occupancy %',
                        data: occPcts,
                        backgroundColor: bgColors,
                        borderRadius: 6,
                        borderSkipped: false,
                        maxBarThickness: 36,
                        barPercentage: 0.7,
                        categoryPercentage: 0.8
                    }]
                },
                options: {
                    responsive: true, maintainAspectRatio: false,
                    plugins: {
                        legend: { display: false },
                        tooltip: { callbacks: { label: function(c){ return 'Occupancy: ' + c.parsed.y.toFixed(1) + '%'; } } }
                    },
                    scales: {
                        x: { grid: { display: false }, border: { display: false },
                             ticks: { color: '#5f6b7a', font: { size: 10 } } },
                        y: { beginAtZero: true, max: 100, grid: { color: '#f0f3f8' }, border: { display: false },
                             ticks: { color: '#8a94a6', font: { size: 11 },
                                      callback: function(v){ return v + '%'; } } }
                    }
                },
                plugins: [{
                    afterDatasetsDraw: function(chart) {
                        var ctx = chart.ctx;
                        chart.data.datasets.forEach(function(ds, i) {
                            chart.getDatasetMeta(i).data.forEach(function(bar, idx) {
                                var val = ds.data[idx];
                                if (val > 0) {
                                    ctx.save();
                                    ctx.fillStyle = '#374151';
                                    ctx.font = 'bold 10px sans-serif';
                                    ctx.textAlign = 'center';
                                    ctx.fillText(val.toFixed(1) + '%', bar.x, bar.y - 5);
                                    ctx.restore();
                                }
                            });
                        });
                    }
                }]
            });

            // ── Room Category Occupancy Chart (single date) ──
            var cats = data.room_categories || [];
            var catNames   = cats.map(function(c){ return c.room_category || '—'; });
            var catOcc     = cats.map(function(c){ return parseFloat(c.occ_percent) || 0; });
            var catColors  = catOcc.map(function(p){ return occColor(p); });
            var catTotal = 0, catBooked = 0;

            cats.forEach(function(c) {
                catTotal  += parseInt(c.total_rooms)  || 0;
                catBooked += parseInt(c.booked_rooms) || 0;
            });

            if (catChart) catChart.destroy();
            catChart = new Chart(document.getElementById('rdbCatChart').getContext('2d'), {
                type: 'bar',
                data: {
                    labels: catNames,
                    datasets: [{
                        label: 'Occupancy %',
                        data: catOcc,
                        backgroundColor: catColors,
                        borderRadius: 5,
                        borderSkipped: false,
                        maxBarThickness: 26,
                        barPercentage: 0.72,
                        categoryPercentage: 0.8
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: { display: false },
                        tooltip: {
                            callbacks: {
                                label: function(c) {
                                    var r = cats[c.dataIndex] || {};
                                    return [
                                        'Occupancy: ' + (parseFloat(r.occ_percent) || 0).toFixed(1) + '%',
                                        'Booked: ' + (r.booked_rooms || 0) + ' / ' + (r.total_rooms || 0),
                                        'Available: ' + (r.available_rooms || 0),
                                        'Out of order: ' + (r.out_of_order || 0)
                                    ];
                                }
                            }
                        }
                    },
                    scales: {
                        x: { grid: { display: false }, border: { display: false },
                             ticks: { color: '#5f6b7a', font: { size: 10 }, maxRotation: 45, minRotation: 0 } },
                        y: { beginAtZero: true, max: 100,
                             grid: { color: '#f0f3f8' }, border: { display: false },
                             ticks: { color: '#8a94a6', font: { size: 11 },
                                      callback: function(v){ return v + '%'; } } }
                    }
                },
                plugins: [{
                    afterDatasetsDraw: function(chart) {
                        var ctx = chart.ctx;
                        chart.getDatasetMeta(0).data.forEach(function(bar, idx) {
                            var val = chart.data.datasets[0].data[idx];
                            if (val > 0) {
                                ctx.save();
                                ctx.fillStyle = '#374151';
                                ctx.font = 'bold 10px sans-serif';
                                ctx.textAlign = 'center';
                                ctx.textBaseline = 'bottom';
                                ctx.fillText(val.toFixed(1) + '%', bar.x, bar.y - 5);
                                ctx.restore();
                            }
                        });
                    }
                }]
            });

            document.getElementById('rdbCatSummary').textContent = cats.length
                ? ('Booked ' + catBooked + ' / ' + catTotal + ' rooms  •  Overall '
                   + (catTotal > 0 ? (catBooked / catTotal * 100).toFixed(1) : '0.0') + '%')
                : 'No data found';

            // ── Table ──
            var tbody = document.getElementById('rdbTableBody');
            var html = '';
            var sumArr = 0, sumStay = 0, sumOcc = 0, sumAvail = 0, sumRev = 0;

            rows.forEach(function(r) {
                var occ = parseFloat(r.occ_percent) || 0;
                var badge = occ >= 80
                    ? 'badge-success'
                    : (occ >= 50 ? 'badge-primary' : 'badge-warning');
                html += '<tr>';
                html += '<td class="px-3 py-2" style="font-weight:500;white-space:nowrap;">'
                      + '<span style="color:#374151;">' + r.date_label + '</span>'
                      + ' <span class="text-muted" style="font-size:11px;">' + r.day_name + '</span></td>';
                html += '<td class="px-3 py-2 text-center">' + r.total_rooms    + '</td>';
                html += '<td class="px-3 py-2 text-center">' + r.arrival        + '</td>';
                html += '<td class="px-3 py-2 text-center">' + r.stay_over      + '</td>';
                html += '<td class="px-3 py-2 text-center font-weight-bold">' + r.occupied_rooms  + '</td>';
                html += '<td class="px-3 py-2 text-center">' + r.available_rooms + '</td>';
                html += '<td class="px-3 py-2 text-right"><span class="badge ' + badge + '" style="font-size:11.5px;padding:3px 8px;border-radius:20px;">'
                      + occ.toFixed(1) + '%</span></td>';
                html += '<td class="px-3 py-2 text-right">' + inrFull(r.arr)           + '</td>';
                html += '<td class="px-3 py-2 text-right">' + inrFull(r.revpar)        + '</td>';
                html += '<td class="px-3 py-2 text-right font-weight-bold" style="color:#1a73e8;">'
                      + inrFull(r.total_revenue) + '</td>';
                html += '</tr>';
                sumArr   += parseInt(r.arrival)        || 0;
                sumStay  += parseInt(r.stay_over)      || 0;
                sumOcc   += parseInt(r.occupied_rooms) || 0;
                sumAvail += parseInt(r.available_rooms)|| 0;
                sumRev   += parseFloat(r.total_revenue)|| 0;
            });

            tbody.innerHTML = html || '<tr><td colspan="10" class="text-center text-muted py-4">No data found</td></tr>';

            // Footer
            document.getElementById('ft_rooms').textContent    = summary.total_rooms    || '—';
            document.getElementById('ft_arrival').textContent  = sumArr;
            document.getElementById('ft_stayover').textContent = sumStay;
            document.getElementById('ft_occupied').textContent = sumOcc;
            document.getElementById('ft_available').textContent= sumAvail;
            document.getElementById('ft_occ').textContent      = (summary.occ_percent || 0) + '%';
            document.getElementById('ft_adr').textContent      = inrFull(summary.arr    || 0);
            document.getElementById('ft_revpar').textContent   = inrFull(summary.revpar || 0);
            document.getElementById('ft_revenue').textContent  = inrFull(sumRev);
            document.getElementById('rdbTableFoot').style.display = '';
        })
        .catch(function(err){
            document.getElementById('rdbLoader').style.display = 'none';
            console.error(err);
        });
    }

    document.getElementById('rdbRefresh').addEventListener('click', loadData);
    document.getElementById('rdbFromDate').addEventListener('change', loadData);
    document.addEventListener('DOMContentLoaded', loadData);
})();
</script>

@endsection
