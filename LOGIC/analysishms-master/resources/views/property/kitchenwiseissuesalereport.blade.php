@extends('property.layouts.main')
@section('main-container')

<style>
    /* ── Cross-tab table styles ───────────────────────── */
    .fb-cost-table {
        width: 100%;
        border-collapse: collapse;
        font-size: 13px;
    }
    .fb-cost-table th,
    .fb-cost-table td {
        border: 1px solid #ccc;
        padding: 5px 8px;
        white-space: nowrap;
    }
    .fb-cost-table thead th {
        background: #5c2d91;
        color: #fff;
        text-align: center;
        font-size: 12px;
    }
    .fb-cost-table th.label-col,
    .fb-cost-table td.label-col {
        text-align: left;
        min-width: 180px;
    }
    .fb-cost-table td.amt-cell {
        text-align: right;
    }
    /* Section header rows */
    .fb-cost-table tr.section-hdr td {
        background: #dce6f1;
        font-weight: 700;
        color: #00008b;
        text-align: left;
    }
    /* Subtotal / net rows */
    .fb-cost-table tr.row-subtotal td {
        background: #d9e1f2;
        font-weight: 700;
    }
    .fb-cost-table tr.row-subtotal td.amt-cell {
        text-align: right;
    }
    /* Summary rows */
    .fb-cost-table tr.row-summary td {
        background: #f2f2f2;
    }
    .fb-cost-table tr.row-bold td {
        font-weight: 700;
        background: #d9e1f2;
    }
    /* Zero values show lighter */
    .fb-cost-table td.amt-zero {
        color: #bbb;
    }
    /* Total column highlight */
    .fb-cost-table td.col-total,
    .fb-cost-table th.col-total {
        background: #fffacd;
        font-weight: 700;
        text-align: right;
    }
    .titlep { display: none; }
</style>

<div class="content-body country-rep">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body checkoutreport">

                        <div class="row mb-2">
                            <div class="col-md-12">
                                <h4 class="mb-0">Kitchen Wise Issue Sale Report
                                    <small class="text-muted" style="font-size:13px;">(FB Cost Statement)</small>
                                </h4>
                            </div>
                        </div>

                        {{-- Hidden company info for print/export --}}
                        <input type="hidden" value="{{ $company->start_dt }}"   id="start_dt">
                        <input type="hidden" value="{{ $company->end_dt }}"     id="end_dt">
                        <input type="hidden" value="{{ $company->propertyid }}" id="propertyid">
                        <input type="hidden" value="{{ $company->comp_name }}"  id="compname">
                        <input type="hidden" value="{{ $statename }}"           id="statename">

                        {{-- Filter bar --}}
                        <form id="filterForm">
                            <div class="row align-items-end mb-3">
                                <div class="col-auto">
                                    <label class="col-form-label">From Date</label>
                                    <input type="date" id="fromdate" name="fromdate"
                                           value="{{ $fromdate }}" class="form-control form-control-sm">
                                </div>
                                <div class="col-auto">
                                    <label class="col-form-label">To Date</label>
                                    <input type="date" id="todate" name="todate"
                                           value="{{ $fromdate }}" class="form-control form-control-sm">
                                </div>
                                <div class="col-auto" style="margin-top:22px;">
                                    <button id="fetchbutton" type="button" class="btn btn-success btn-sm">
                                        <i class="fa-solid fa-arrows-rotate"></i> Refresh
                                    </button>
                                    <button id="printBtn" type="button" class="btn btn-primary btn-sm ms-1">
                                        <i class="fas fa-print"></i> Print
                                    </button>
                                    <button id="exportExcelBtn" type="button" class="btn btn-success btn-sm ms-1">
                                        <i class="fas fa-file-excel"></i> Excel
                                    </button>
                                </div>
                            </div>
                        </form>

                        {{-- Hidden URLs --}}
                        <span id="printUrl"  style="display:none;">{{ route('printkitchenwiseissuesalereport') }}</span>
                        <span id="exportUrl" style="display:none;">{{ route('exportkitchenwiseissuesalereport') }}</span>

                        {{-- Spinner --}}
                        <div id="loadingSpinner" class="text-center py-4" style="display:none;">
                            <div class="spinner-border text-primary" role="status"></div>
                            <p class="mt-2 text-muted">Loading data...</p>
                        </div>

                        {{-- Report container --}}
                        <div id="reportContainer" style="display:none;">
                            <div class="table-responsive">
                                <table class="fb-cost-table" id="fbCostTable">
                                    <thead id="tbHead"></thead>
                                    <tbody id="tbBody"></tbody>
                                </table>
                            </div>
                        </div>

                        <div id="noDataMsg" class="text-center text-muted py-4" style="display:none;">
                            No data found for selected date range.
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {

    /* ── helpers ──────────────────────────────────────────── */
    function fmt(v) {
        v = parseFloat(v) || 0;
        if (v === 0) return '';
        return v.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
    }
    function fmtForce(v) {   // always show even if 0
        v = parseFloat(v) || 0;
        return v.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
    }

    /* ── build table ─────────────────────────────────────── */
    function buildTable(d) {
        var kitchens = d.kitchens;   // [{name, dcode}, ...]
        var $head = $('#tbHead');
        var $body = $('#tbBody');
        $head.empty(); $body.empty();

        var totalCols = kitchens.length + 2; // label + kitchens + Total

        /* ── thead ────────────────────────────────────────── */
        var hrow = '<tr><th class="label-col"></th>';
        $.each(kitchens, function (i, k) {
            hrow += '<th style="text-align:right;">' + k.name + '</th>';
        });
        hrow += '<th class="col-total">Total</th></tr>';
        $head.html(hrow);

        /* ── helper: section header ───────────────────────── */
        function sectionRow(label) {
            return '<tr class="section-hdr"><td colspan="' + totalCols + '">' + label + '</td></tr>';
        }

        /* ── helper: data row ─────────────────────────────── */
        function dataRow(label, byDcode, rowTotal, cls) {
            cls = cls || '';
            var tr = '<tr class="' + cls + '"><td class="label-col">' + label + '</td>';
            $.each(kitchens, function (i, k) {
                var v = (byDcode && byDcode[k.dcode]) ? byDcode[k.dcode] : 0;
                var cell = fmt(v);
                var zeroCls = (v === 0) ? ' amt-zero' : '';
                tr += '<td class="amt-cell' + zeroCls + '">' + (cell || '') + '</td>';
            });
            // Total col - show even if 0 for summary rows, else only if >0
            var totCell = (cls === 'row-summary' || cls === 'row-bold' || cls === 'row-subtotal')
                          ? fmtForce(rowTotal) : fmt(rowTotal);
            tr += '<td class="amt-cell col-total">' + totCell + '</td>';
            tr += '</tr>';
            return tr;
        }

        /* ── helper: summary row (no per-kitchen cols) ──────── */
        function summaryRow(label, total, cls) {
            cls = cls || 'row-summary';
            var tr = '<tr class="' + cls + '"><td class="label-col">' + label + '</td>';
            for (var i = 0; i < kitchens.length; i++) {
                tr += '<td class="amt-cell"></td>';
            }
            tr += '<td class="amt-cell col-total">' + fmtForce(total) + '</td></tr>';
            return tr;
        }

        var html = '';

        /* ════ SALE SECTION ════════════════════════════════ */
        html += sectionRow('Sale');
        html += dataRow('Beverage', d.saleBevPerKitchen,  d.grandSaleBev,  '');
        html += dataRow('Food',     d.saleFoodPerKitchen, d.grandSaleFood, '');
        html += dataRow('Net Sale', d.netSalePerKitchen,  d.grandNetSale,  'row-subtotal');

        /* ════ COST INCURRED SECTION ═══════════════════════ */
        html += sectionRow('Cost Incurred');
        $.each(d.costCatTypes, function (i, cat) {
            var byDcode  = d.costMatrix[cat] || {};
            var rowTotal = 0;
            $.each(byDcode, function (dc, amt) { rowTotal += parseFloat(amt) || 0; });
            html += dataRow(cat, byDcode, rowTotal, '');
        });
        html += dataRow('Net Consumed', d.netConsumedPerKitchen, d.grandNetConsumed, 'row-subtotal');

        /* ════ SUMMARY SECTION ══════════════════════════════ */
        html += sectionRow('');
        html += summaryRow('Net Cost Ratio',        d.netCostRatio,   '');
        html += summaryRow('NC Details',            '',               '');
        html += summaryRow('Staff Kitchen Issue',   d.grandStaffIssue,'');
        html += summaryRow('Net Cost',              d.grandNetCost,   'row-bold');
        html += summaryRow('Net Cost Of Food',      d.netCostOfFood,  '');
        html += summaryRow('Net Cost Of Beverages', d.netCostOfBev,   '');
        html += summaryRow('Net Cost Of Liquor',    d.netCostOfLiquor,'');
        html += summaryRow('Net Total Cost',        d.netTotalCost,   'row-bold');

        $body.html(html);

        $('#reportContainer').show();
        $('#noDataMsg').hide();
    }

    /* ── load data ────────────────────────────────────────── */
    function loadData() {
        var fromdate = $('#fromdate').val();
        var todate   = $('#todate').val();
        if (!fromdate || !todate) {
            pushNotify('error', 'Fill Required Fields', 'Please select both dates.',
                'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
            return;
        }

        $('#reportContainer').hide();
        $('#noDataMsg').hide();
        $('#loadingSpinner').show();

        $.ajax({
            url:      '{{ route('kitchenwiseissuesalereportdata') }}',
            type:     'POST',
            data:     { fromdate: fromdate, todate: todate, _token: '{{ csrf_token() }}' },
            dataType: 'json',
            success: function (res) {
                $('#loadingSpinner').hide();
                if (!res.kitchens || res.kitchens.length === 0) {
                    $('#noDataMsg').show();
                    return;
                }
                buildTable(res);
            },
            error: function (xhr) {
                $('#loadingSpinner').hide();
                var msg = 'Error loading data.';
                if (xhr.responseJSON && xhr.responseJSON.message) msg = xhr.responseJSON.message;
                alert(msg);
            }
        });
    }

    /* ── buttons ─────────────────────────────────────────── */
    $('#fetchbutton').on('click', function () { loadData(); });

    $('#printBtn').on('click', function () {
        var fromdate = $('#fromdate').val();
        var todate   = $('#todate').val();
        if (!fromdate || !todate) {
            pushNotify('error', 'Print Failed', 'Please select both dates before printing.',
                'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
            return;
        }
        var url = $('#printUrl').text().trim()
            + '?fromdate=' + encodeURIComponent(fromdate)
            + '&todate='   + encodeURIComponent(todate);
        window.open(url, '_blank');
    });

    $('#exportExcelBtn').on('click', function () {
        var fromdate = $('#fromdate').val();
        var todate   = $('#todate').val();
        if (!fromdate || !todate) {
            pushNotify('error', 'Export Failed', 'Please select both dates before exporting.',
                'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
            return;
        }
        var url = $('#exportUrl').text().trim()
            + '?fromdate=' + encodeURIComponent(fromdate)
            + '&todate='   + encodeURIComponent(todate);
        window.location.href = url;
    });

    /* Auto-load on page ready */
    loadData();
});
</script>

@endsection
