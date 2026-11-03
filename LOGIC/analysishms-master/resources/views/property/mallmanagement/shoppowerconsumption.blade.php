@extends('property.layouts.main')
@section('main-container')

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<style>
    #spcTable td, #spcTable th { vertical-align: middle !important; padding: 4px 6px !important; }
    #spcTable .form-control-sm { height: 28px; padding: 2px 5px; text-align: right; }
    #spcTable .calc-field { background-color: #f0f6ff; color: #1a73e8; font-weight: 600; }
    #spcTable tfoot td { font-weight: 700; background: #f7f9fc; }
    .rate-box { width: 60px; border: 1px solid #adb5bd; border-radius: 4px; padding: 1px 4px; font-size: 11px; text-align: right; background:#fff; color:#212529; }
</style>

<div class="content-body">
    <div class="container-fluid">

        <div class="row mb-2">
            <div class="col-12">
                <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div>
                        <h4 class="font-weight-bold mb-0">Shop Power Consumption</h4>
                        <small class="text-muted">Mall Management &rsaquo; Shop Power Consumption</small>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card shadow-sm">

                    <div class="card-header py-2 bg-secondary text-white d-flex align-items-center justify-content-between flex-wrap" style="gap:8px;">
                        <strong style="font-size:12px;"><i class="fa fa-bolt mr-1"></i> Shop Power Consumption</strong>
                        <div class="d-flex align-items-center" style="gap:8px; flex-wrap:wrap;">
                            <label class="mb-0 text-white-50" style="font-size:12px;">Month:</label>
                            <input type="month" id="monthPicker" class="form-control form-control-sm" style="width:145px;" value="{{ $month }}">
                            <button class="btn btn-sm btn-primary" id="saveBtn" onclick="saveAll()">
                                <i class="fa fa-save mr-1"></i> Save
                            </button>
                        </div>
                    </div>

                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped mb-0" id="spcTable" style="font-size:12px; min-width:1050px;">
                                <thead class="thead-light text-muted" style="font-size:11px;">
                                    <tr>
                                        <th style="width:36px;" class="text-center">#</th>
                                        <th style="min-width:80px;">Floor</th>
                                        <th style="min-width:140px;">Shop Name</th>
                                        <th style="min-width:100px;" class="text-right">Prev KWh</th>
                                        <th style="min-width:100px;" class="text-right">On Date KWh</th>
                                        <th style="min-width:105px;" class="text-right">Consumption</th>
                                        {{-- KESCO% heading (value picked from Daily Power Entry totals, same style as Daily Power Entry) --}}
                                        <th style="min-width:110px;" class="text-right">
                                            KESCO% <span id="hdKescoPct">{{ number_format($pcts['kesco_pct'], 2) }}</span>
                                        </th>
                                        {{-- DG% heading (value picked from Daily Power Entry totals, same style as Daily Power Entry) --}}
                                        <th style="min-width:100px;" class="text-right">
                                            DG% <span id="hdDgPct">{{ number_format($pcts['dg_pct'], 2) }}</span>
                                        </th>
                                        {{-- KESCO rate heading with editable box + Set Rate button --}}
                                        <th style="min-width:150px;" class="text-right">
                                            KESCO (<input type="number" step="0.01" min="0"
                                                id="globalKescoRate" class="rate-box"
                                                value="{{ $rates['kesco_rate'] }}"
                                                onchange="saveRates()"> ₹/Unit)
                                        </th>
                                        {{-- DG rate heading with editable box --}}
                                        <th style="min-width:140px;" class="text-right">
                                            DG (<input type="number" step="0.01" min="0"
                                                id="globalDgRate" class="rate-box"
                                                value="{{ $rates['dg_rate'] }}"
                                                onchange="saveRates()"> ₹/Unit)
                                            <button onclick="saveRates()" class="btn btn-xs btn-warning ml-1" title="Set rates for this month" style="font-size:10px;padding:1px 5px;">
                                                <i class="fa fa-check"></i> Set
                                            </button>
                                        </th>
                                        <th style="min-width:100px;" class="text-right">Total (₹)</th>
                                    </tr>
                                </thead>
                                <tbody id="spcTbody">
                                    @forelse($rows as $i => $row)
                                    <tr data-shop="{{ $row->shop_code }}"
                                        data-shopname="{{ $row->shop_name }}"
                                        data-floor="{{ $row->floor }}">
                                        <td class="text-center text-muted">{{ $i + 1 }}</td>
                                        <td>{{ $row->floor ?: '—' }}</td>
                                        <td>{{ $row->shop_name }}</td>
                                        <td>
                                            <input type="number" step="0.01" min="0"
                                                class="form-control form-control-sm prev-kwh"
                                                value="{{ $row->prev_dt_kwh !== '' ? $row->prev_dt_kwh : '' }}"
                                                oninput="calcRow('{{ $row->shop_code }}')">
                                        </td>
                                        <td>
                                            <input type="number" step="0.01" min="0"
                                                class="form-control form-control-sm on-kwh"
                                                value="{{ $row->on_date_kwh !== '' ? $row->on_date_kwh : '' }}"
                                                oninput="calcRow('{{ $row->shop_code }}')">
                                        </td>
                                        <td>
                                            <input type="number" step="0.01"
                                                class="form-control form-control-sm calc-field consumption"
                                                value="{{ $row->consumption_kwh !== '' ? $row->consumption_kwh : '' }}"
                                                readonly>
                                        </td>
                                        {{-- % cells: filled by JS from the column heading % --}}
                                        <td>
                                            <input type="number" step="0.01"
                                                class="form-control form-control-sm kesco-pct-disp"
                                                readonly>
                                        </td>
                                        <td>
                                            <input type="number" step="0.01"
                                                class="form-control form-control-sm dg-pct-disp"
                                                readonly>
                                        </td>
                                        {{-- KESCO amount --}}
                                        <td>
                                            <input type="number" step="0.01"
                                                class="form-control form-control-sm calc-field kesco-val"
                                                value="{{ $row->kesco !== '' ? $row->kesco : '' }}"
                                                readonly>
                                        </td>
                                        <td>
                                            <input type="number" step="0.01"
                                                class="form-control form-control-sm calc-field dg-val"
                                                value="{{ $row->dg !== '' ? $row->dg : '' }}"
                                                readonly>
                                        </td>
                                        <td>
                                            <input type="number" step="0.01"
                                                class="form-control form-control-sm calc-field total-val"
                                                value="{{ $row->total !== '' ? $row->total : '' }}"
                                                readonly>
                                        </td>
                                    </tr>
                                    @empty
                                    <tr>
                                        <td colspan="11" class="text-center text-muted py-4">
                                            <i class="fa fa-store mr-1"></i> No active shops found.
                                        </td>
                                    </tr>
                                    @endforelse
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="5" class="text-right" style="padding:6px 10px !important;">Grand Total</td>
                                        <td class="text-right" id="ft-consumption">—</td>
                                        <td colspan="2"></td>
                                        <td class="text-right" id="ft-kesco">—</td>
                                        <td class="text-right" id="ft-dg">—</td>
                                        <td class="text-right" id="ft-total">—</td>
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
    function readPct(id) {
        return parseFloat(String(document.getElementById(id).textContent).replace(/,/g, '')) || 0;
    }
    function getKescoPct()  { return readPct('hdKescoPct'); }
    function getDgPct()     { return readPct('hdDgPct'); }

    function getKescoRate() { return parseFloat(document.getElementById('globalKescoRate').value) || 0; }
    function getDgRate()    { return parseFloat(document.getElementById('globalDgRate').value)    || 0; }

    // Save rates for this month only, then recalculate
    function saveRates() {
        var month     = document.getElementById('monthPicker').value;
        var kescoRate = getKescoRate();
        var dgRate    = getDgRate();

        fetch('{{ route("savepowerrates") }}', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
            body: JSON.stringify({ month: month, kesco_rate: kescoRate, dg_rate: dgRate })
        })
        .then(function(r){ return r.json(); })
        .then(function(data) {
            if (data.status) {
                recalcAll();
                updateFooter();
                var toast = document.createElement('div');
                toast.style.cssText = 'position:fixed;bottom:20px;right:20px;background:#28a745;color:#fff;padding:8px 16px;border-radius:6px;font-size:12px;z-index:9999;';
                toast.textContent = 'Rate saved for ' + month;
                document.body.appendChild(toast);
                setTimeout(function(){ document.body.removeChild(toast); }, 2000);
            } else {
                alert('Rate save failed: ' + (data.message || 'Unknown error'));
            }
        })
        .catch(function() { alert('Rate save request failed.'); });
    }

    function setHeadingPcts(pcts) {
        var k = (pcts && pcts.kesco_pct > 0) ? parseFloat(pcts.kesco_pct).toFixed(2) : '0.00';
        var d = (pcts && pcts.dg_pct > 0)    ? parseFloat(pcts.dg_pct).toFixed(2)    : '0.00';
        document.getElementById('hdKescoPct').textContent = k;
        document.getElementById('hdDgPct').textContent    = d;
    }

    function recalcAll() {
        document.querySelectorAll('#spcTbody tr[data-shop]').forEach(function(tr) {
            calcRow(tr.dataset.shop);
        });
    }

    function calcRow(shopCode) {
        var tr = document.querySelector('#spcTbody tr[data-shop="' + shopCode + '"]');
        if (!tr) return;

        var prevKwh   = parseFloat(tr.querySelector('.prev-kwh').value) || 0;
        var onKwh     = parseFloat(tr.querySelector('.on-kwh').value)   || 0;
        var kescoPct  = getKescoPct();
        var dgPct     = getDgPct();
        var kescoRate = getKescoRate();
        var dgRate    = getDgRate();

        var consumption = Math.max(0, onKwh - prevKwh);
        var kescoKwh    = parseFloat((consumption * kescoPct  / 100).toFixed(2));
        var dgKwh       = parseFloat((consumption * dgPct     / 100).toFixed(2));
        var kesco       = parseFloat((kescoKwh    * kescoRate).toFixed(2));
        var dg          = parseFloat((dgKwh       * dgRate   ).toFixed(2));
        var total       = parseFloat((kesco + dg).toFixed(2));

        tr.querySelector('.consumption').value = consumption > 0 ? consumption.toFixed(2) : '';
        // KESCO % box = Consumption ka KESCO%  (consumption × kesco% ÷ 100)
        tr.querySelector('.kesco-pct-disp').value = (kescoPct > 0 && consumption > 0)
            ? (consumption * kescoPct / 100).toFixed(2)
            : '';
        // DG % box = Consumption ka DG%  (consumption × dg% ÷ 100)
        tr.querySelector('.dg-pct-disp').value = (dgPct > 0 && consumption > 0)
            ? (consumption * dgPct / 100).toFixed(2)
            : '';
        tr.querySelector('.kesco-val').value    = kesco > 0 ? kesco.toFixed(2) : '';
        tr.querySelector('.dg-val').value       = dg    > 0 ? dg.toFixed(2)   : '';
        tr.querySelector('.total-val').value    = total > 0 ? total.toFixed(2) : '';

        updateFooter();
    }

    function updateFooter() {
        var sumC = 0, sumK = 0, sumD = 0, sumT = 0;
        document.querySelectorAll('#spcTbody tr[data-shop]').forEach(function (tr) {
            sumC += parseFloat(tr.querySelector('.consumption').value) || 0;
            sumK += parseFloat(tr.querySelector('.kesco-val').value)   || 0;
            sumD += parseFloat(tr.querySelector('.dg-val').value)      || 0;
            sumT += parseFloat(tr.querySelector('.total-val').value)   || 0;
        });
        document.getElementById('ft-consumption').textContent = sumC > 0 ? sumC.toFixed(2) : '—';
        document.getElementById('ft-kesco').textContent       = sumK > 0 ? sumK.toFixed(2) : '—';
        document.getElementById('ft-dg').textContent          = sumD > 0 ? sumD.toFixed(2) : '—';
        document.getElementById('ft-total').textContent       = sumT > 0 ? sumT.toFixed(2) : '—';
    }

    document.getElementById('monthPicker').addEventListener('change', function () {
        var month = this.value;
        var tbody = document.getElementById('spcTbody');
        tbody.innerHTML = '<tr><td colspan="11" class="text-center py-4"><i class="fa fa-spinner fa-spin mr-2"></i>Loading...</td></tr>';

        fetch('{{ route("fetchshoppowerconsumption") }}', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
            body: JSON.stringify({ month: month })
        })
        .then(function(r){ return r.json(); })
        .then(function(data) {
            if (data.pcts) {
                setHeadingPcts(data.pcts);
            }
            if (data.rates) {
                document.getElementById('globalKescoRate').value = data.rates.kesco_rate || 0;
                document.getElementById('globalDgRate').value    = data.rates.dg_rate    || 0;
            }
            if (!data.status) {
                tbody.innerHTML = '<tr><td colspan="11" class="text-center text-danger py-4"><i class="fa fa-exclamation-circle mr-1"></i>' + (data.message || 'Failed to load data.') + '</td></tr>';
                updateFooter();
                return;
            }
            if (!data.rows.length) {
                tbody.innerHTML = '<tr><td colspan="11" class="text-center text-muted py-4">No active shops found.</td></tr>';
                updateFooter();
                return;
            }
            buildTable(data.rows);
            recalcAll();
            updateFooter();
        })
        .catch(function(err) {
            tbody.innerHTML = '<tr><td colspan="11" class="text-center text-danger py-4">Request failed: ' + (err.message || 'Unknown error') + '</td></tr>';
        });
    });

    function esc(v) {
        return String(v == null ? '' : v)
            .replace(/&/g,'&amp;').replace(/"/g,'&quot;')
            .replace(/</g,'&lt;').replace(/>/g,'&gt;');
    }

    function buildTable(rows) {
        var tbody = document.getElementById('spcTbody');
        var html  = '';
        rows.forEach(function (row, i) {
            var prev  = row.prev_dt_kwh    !== null ? row.prev_dt_kwh    : '';
            var onKwh = row.on_date_kwh    !== null ? row.on_date_kwh    : '';
            var cons  = row.consumption_kwh !== null ? row.consumption_kwh : '';
            var kesco = row.kesco !== null ? row.kesco : '';
            var dg    = row.dg   !== null ? row.dg    : '';
            var total = row.total !== null ? row.total : '';
            var sc = esc(row.shop_code);
            var sn = esc(row.shop_name || '');
            var fl = esc(row.floor || '—');

            html += '<tr data-shop="' + sc + '" data-shopname="' + sn + '" data-floor="' + fl + '">';
            html += '<td class="text-center text-muted">' + (i + 1) + '</td>';
            html += '<td>' + fl + '</td>';
            html += '<td>' + sn + '</td>';
            html += '<td><input type="number" step="0.01" min="0" class="form-control form-control-sm prev-kwh" value="' + prev + '" oninput="calcRow(\'' + sc + '\')"></td>';
            html += '<td><input type="number" step="0.01" min="0" class="form-control form-control-sm on-kwh" value="' + onKwh + '" oninput="calcRow(\'' + sc + '\')"></td>';
            html += '<td><input type="number" step="0.01" class="form-control form-control-sm calc-field consumption" value="' + cons + '" readonly></td>';
            html += '<td><input type="number" step="0.01" class="form-control form-control-sm kesco-pct-disp" readonly></td>';
            html += '<td><input type="number" step="0.01" class="form-control form-control-sm dg-pct-disp" readonly></td>';
            html += '<td><input type="number" step="0.01" class="form-control form-control-sm calc-field kesco-val" value="' + kesco + '" readonly></td>';
            html += '<td><input type="number" step="0.01" class="form-control form-control-sm calc-field dg-val" value="' + dg + '" readonly></td>';
            html += '<td><input type="number" step="0.01" class="form-control form-control-sm calc-field total-val" value="' + total + '" readonly></td>';
            html += '</tr>';
        });
        tbody.innerHTML = html;
    }

    function saveAll() {
        var month   = document.getElementById('monthPicker').value;
        var saveBtn = document.getElementById('saveBtn');
        var entries = [];

        document.querySelectorAll('#spcTbody tr[data-shop]').forEach(function (tr) {
            entries.push({
                shop_code:        tr.dataset.shop,
                shop_name:        tr.dataset.shopname,
                floor:            tr.dataset.floor,
                prev_dt_kwh:      tr.querySelector('.prev-kwh').value || 0,
                on_date_kwh:      tr.querySelector('.on-kwh').value   || 0,
                kesco_percentage: getKescoPct(),
                dg_percentage:    getDgPct(),
                kesco_rate:       getKescoRate(),
                dg_rate:          getDgRate(),
            });
        });

        if (!entries.length) {
            Swal.fire('No Data', 'No shop rows to save.', 'info');
            return;
        }

        saveBtn.disabled = true;
        saveBtn.innerHTML = '<i class="fa fa-spinner fa-spin mr-1"></i> Saving...';

        fetch('{{ route("saveshoppowerconsumption") }}', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
            body: JSON.stringify({ month: month, entries: entries })
        })
        .then(function(r){ return r.json(); })
        .then(function(data) {
            saveBtn.disabled = false;
            saveBtn.innerHTML = '<i class="fa fa-save mr-1"></i> Save';
            if (data.status) {
                Swal.fire({ icon: 'success', title: 'Saved!', text: data.message, timer: 1800, showConfirmButton: false });
            } else {
                Swal.fire('Error', data.message || 'Could not save.', 'error');
            }
        })
        .catch(function() {
            saveBtn.disabled = false;
            saveBtn.innerHTML = '<i class="fa fa-save mr-1"></i> Save';
            Swal.fire('Error', 'Request failed.', 'error');
        });
    }

    document.addEventListener('DOMContentLoaded', function () {
        recalcAll();
        updateFooter();
    });
</script>

@endsection
