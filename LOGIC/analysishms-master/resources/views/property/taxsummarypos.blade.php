@extends('property.layouts.main')

@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <style>
        .filter-label { font-size: 12px; font-weight: 600; margin-bottom: 2px; display: block; }
        .checkul {
            position: absolute; background: #fff; border: 1px solid #ccc;
            border-radius: 4px; box-shadow: 0 2px 8px rgba(0,0,0,.18);
            list-style: none; padding: 4px 0; margin: 0;
            z-index: 1050; min-width: 200px; max-height: 280px; overflow-y: auto;
        }
        .checkul li { padding: 4px 12px; font-size: 13px; cursor: pointer; white-space: nowrap; }
        .checkul li:hover { background: #f0f0f0; }
        .checkul li input[type="checkbox"] { margin-right: 7px; }

        #summaryTable { width: 100%; border-collapse: collapse; margin-top: 8px; font-size: 13px; }
        #summaryTable th {
            background: #343a40; color: #fff;
            border: 1px solid #dee2e6; padding: 6px 8px; text-align: center;
        }
        #summaryTable td { border: 1px solid #dee2e6; padding: 5px 8px; }
        #summaryTable td.num { text-align: right; }

        .row-outlet-header td {
            background: #e9ecef; font-weight: bold;
            color: #333; font-size: 13px;
        }
        .row-outlet-total td {
            background: #cce5ff; font-weight: bold;
            color: #004085; font-size: 13px;
        }
        .row-grand-total td {
            background: #d4edda; font-weight: bold;
            color: #155724; font-size: 13px;
        }
        .titlep { display: none; }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="card shadow-sm">
                <div class="card-body">

                    {{-- Print header (hidden on screen) --}}
                    <div class="text-center titlep mb-3">
                        <h3>{{ $company->comp_name }}</h3>
                        <p class="mb-1">{{ $company->address1 }}</p>
                        <p class="mb-1">{{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                        <p class="mb-0 font-weight-bold">Tax Summary (POS)</p>
                    </div>

                    <h5 class="mb-3 font-weight-bold">Tax Summary (POS)</h5>

                    {{-- ===== FILTERS ===== --}}
                    <div class="row align-items-end mb-3">

                        <div class="col-auto">
                            <span class="filter-label">From Date</span>
                            <input type="date" id="fromdate" value="{{ $ncurdate }}"
                                   class="form-control form-control-sm" style="width:145px;">
                        </div>

                        <div class="col-auto">
                            <span class="filter-label">To Date</span>
                            <input type="date" id="todate" value="{{ $ncurdate }}"
                                   class="form-control form-control-sm" style="width:145px;">
                        </div>

                        {{-- Outlet multi-select --}}
                        <div class="col-auto position-relative">
                            <span class="filter-label">Outlet</span>
                            <button type="button" class="btn btn-outline-primary btn-sm"
                                    id="outletbtn" style="min-width:150px;">
                                All Outlets <i class="fa-solid fa-angle-down"></i>
                            </button>
                            <ul class="checkul" id="outletlist" style="display:none;">
                                <li>
                                    <input type="checkbox" id="checkalloutlet" checked>
                                    <strong>Select All</strong>
                                </li>
                                @foreach ($outlets as $outlet)
                                    <li>
                                        <input type="checkbox" class="outletcheckbox"
                                               value="{{ $outlet->DCode }}" checked>
                                        {{ $outlet->Name }}
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                        <div class="col-auto">
                            <span class="filter-label">&nbsp;</span>
                            <div>
                                <button type="button" id="refreshbutton" class="btn btn-success btn-sm">
                                    <i class="fa-solid fa-arrows-rotate"></i> Refresh
                                </button>
                                <button type="button" id="excelButton" class="btn btn-success btn-sm ms-1" style="display:none;">
                                    <i class="fa fa-file-excel"></i> Excel
                                </button>
                                <button type="button" id="printButton" class="btn btn-info btn-sm ms-1" style="display:none;">
                                    <i class="fa fa-print"></i> Print
                                </button>
                            </div>
                        </div>

                    </div>

                    <div id="filterInfoLine" class="mb-2" style="font-size:13px;color:#333;display:none;">
                        <strong>From :</strong> <span id="infoFrom"></span>
                        &nbsp;&nbsp;<strong>To :</strong> <span id="infoTo"></span>
                        &nbsp;&nbsp;<strong>For Outlet :</strong> <span id="infoOutlets"></span>
                    </div>

                    <div id="validation-msg" class="text-danger mb-2" style="font-size:13px;"></div>

                    <div id="tableWrapper" style="overflow-x:auto;"></div>

                </div>
            </div>
        </div>
    </div>

    <script>
    $(document).ready(function () {

        /* ── Outlet dropdown toggle ── */
        $('#outletbtn').on('click', function (e) {
            e.stopPropagation();
            $('#outletlist').toggle();
        });
        $(document).on('click', function () { $('.checkul').hide(); });
        $('.checkul').on('click', function (e) { e.stopPropagation(); });

        $('#checkalloutlet').on('change', function () {
            $('.outletcheckbox').prop('checked', $(this).prop('checked'));
        });
        $(document).on('change', '.outletcheckbox', function () {
            $('#checkalloutlet').prop('checked',
                $('.outletcheckbox').length === $('.outletcheckbox:checked').length);
        });

        /* ── Helpers ── */
        function fmtDate(d) {
            if (!d) return '';
            const p = d.split('-');
            return p.length === 3 ? p[2] + '/' + p[1] + '/' + p[0] : d;
        }
        function fmt2(v) {
            const n = parseFloat(v || 0);
            return isNaN(n) ? '0.00' : n.toFixed(2);
        }

        let reportData   = [];
        let selectedOutletNames = [];

        /* ══════════════════════════════════════════
           REFRESH
        ══════════════════════════════════════════ */
        $('#refreshbutton').on('click', function () {
            $('#validation-msg').text('');
            $('#excelButton, #printButton').hide();
            $('#tableWrapper').html('');

            const fromdate = $('#fromdate').val();
            const todate   = $('#todate').val();

            if (!fromdate || !todate) {
                $('#validation-msg').text('Please select From Date and To Date.');
                return;
            }

            // Collect selected outlet DCodes
            const selectedDCodes = $('.outletcheckbox:checked').map(function () {
                return $(this).val();
            }).get();

            // Collect selected outlet Names for header display
            selectedOutletNames = [];
            $('.outletcheckbox:checked').each(function () {
                selectedOutletNames.push($(this).closest('li').text().trim());
            });

            $('#infoFrom').text(fmtDate(fromdate));
            $('#infoTo').text(fmtDate(todate));
            $('#infoOutlets').text(selectedOutletNames.join(', ') || 'All');
            $('#filterInfoLine').show();

            $.ajax({
                url    : "{{ route('taxsummaryposdata') }}",
                method : 'POST',
                data   : {
                    _token     : "{{ csrf_token() }}",
                    fromdate   : fromdate,
                    todate     : todate,
                    alloutlets : selectedDCodes.join(',')
                },
                success: function (response) {
                    reportData = response.data ?? [];
                    const grandTotal = response.grandTotal ?? {};

                    if (reportData.length === 0) {
                        $('#tableWrapper').html('<div class="alert alert-warning mt-2">No data found.</div>');
                        return;
                    }

                    buildTable(reportData, grandTotal);
                    $('#excelButton, #printButton').show();
                },
                error: function (xhr) {
                    console.error(xhr);
                    $('#validation-msg').text('Error loading data. Check console.');
                }
            });
        });

        /* ══════════════════════════════════════════
           BUILD TABLE
        ══════════════════════════════════════════ */
        function buildTable(data, grandTotal) {

            // Group data by DepartName
            const groups = {};
            data.forEach(function (row) {
                const key = row.DepartName || '-';
                if (!groups[key]) groups[key] = [];
                groups[key].push(row);
            });

            let html = '<table id="summaryTable">';
            html += '<thead><tr>'
                + '<th>BILL DATE</th>'
                + '<th>BILL AMT</th>'
                + '<th>DISCOUNT AMT</th>'
                + '<th>TAXABLE AMT</th>'
                + '<th>NONTAXABLE AMT</th>'
                + '<th>SERVICE CHARGE</th>'
                + '<th>CGST</th>'
                + '<th>SGST</th>'
                + '<th>ROUND OFF</th>'
                + '</tr></thead><tbody>';

            // Grand total accumulators
            const gt = {
                NetAmt: 0, DiscAmt: 0, Taxable: 0, NonTaxable: 0,
                ServiceCharge: 0, CGST: 0, SGST: 0, RoundOff: 0
            };

            Object.keys(groups).sort().forEach(function (outletName) {
                const rows = groups[outletName];

                // Outlet subtotal
                const sub = {
                    NetAmt: 0, DiscAmt: 0, Taxable: 0, NonTaxable: 0,
                    ServiceCharge: 0, CGST: 0, SGST: 0, RoundOff: 0
                };

                // Outlet header row
                html += '<tr class="row-outlet-header">'
                    + '<td colspan="9">' + outletName + '</td>'
                    + '</tr>';

                rows.forEach(function (r) {
                    html += '<tr>'
                        + '<td>' + fmtDate(r.VDate) + '</td>'
                        + '<td class="num">' + fmt2(r.NetAmt) + '</td>'
                        + '<td class="num">' + fmt2(r.DiscAmt) + '</td>'
                        + '<td class="num">' + fmt2(r.Taxable) + '</td>'
                        + '<td class="num">' + fmt2(r.NonTaxable) + '</td>'
                        + '<td class="num">' + fmt2(r.ServiceCharge) + '</td>'
                        + '<td class="num">' + fmt2(r.CGST) + '</td>'
                        + '<td class="num">' + fmt2(r.SGST) + '</td>'
                        + '<td class="num">' + fmt2(r.RoundOff) + '</td>'
                        + '</tr>';

                    sub.NetAmt        += parseFloat(r.NetAmt        || 0);
                    sub.DiscAmt       += parseFloat(r.DiscAmt       || 0);
                    sub.Taxable       += parseFloat(r.Taxable       || 0);
                    sub.NonTaxable    += parseFloat(r.NonTaxable    || 0);
                    sub.ServiceCharge += parseFloat(r.ServiceCharge || 0);
                    sub.CGST          += parseFloat(r.CGST          || 0);
                    sub.SGST          += parseFloat(r.SGST          || 0);
                    sub.RoundOff      += parseFloat(r.RoundOff      || 0);
                });

                // Outlet total row
                html += '<tr class="row-outlet-total">'
                    + '<td>OUTLET TOTAL</td>'
                    + '<td class="num">' + sub.NetAmt.toFixed(2)        + '</td>'
                    + '<td class="num">' + sub.DiscAmt.toFixed(2)       + '</td>'
                    + '<td class="num">' + sub.Taxable.toFixed(2)       + '</td>'
                    + '<td class="num">' + sub.NonTaxable.toFixed(2)    + '</td>'
                    + '<td class="num">' + sub.ServiceCharge.toFixed(2) + '</td>'
                    + '<td class="num">' + sub.CGST.toFixed(2)          + '</td>'
                    + '<td class="num">' + sub.SGST.toFixed(2)          + '</td>'
                    + '<td class="num">' + sub.RoundOff.toFixed(2)      + '</td>'
                    + '</tr>';

                // Accumulate grand total
                Object.keys(gt).forEach(k => gt[k] += sub[k]);
            });

            // Grand total row
            html += '<tr class="row-grand-total">'
                + '<td>GRAND TOTAL</td>'
                + '<td class="num">' + gt.NetAmt.toFixed(2)        + '</td>'
                + '<td class="num">' + gt.DiscAmt.toFixed(2)       + '</td>'
                + '<td class="num">' + gt.Taxable.toFixed(2)       + '</td>'
                + '<td class="num">' + gt.NonTaxable.toFixed(2)    + '</td>'
                + '<td class="num">' + gt.ServiceCharge.toFixed(2) + '</td>'
                + '<td class="num">' + gt.CGST.toFixed(2)          + '</td>'
                + '<td class="num">' + gt.SGST.toFixed(2)          + '</td>'
                + '<td class="num">' + gt.RoundOff.toFixed(2)      + '</td>'
                + '</tr>';

            html += '</tbody></table>';
            $('#tableWrapper').html(html);
        }

        /* ══════════════════════════════════════════
           EXCEL EXPORT
        ══════════════════════════════════════════ */
        $('#excelButton').on('click', function () {
            if (!reportData.length) return;

            const headers = [
                'BILL DATE','BILL AMT','DISCOUNT AMT','TAXABLE AMT',
                'NONTAXABLE AMT','SERVICE CHARGE','CGST','SGST','ROUND OFF'
            ];

            const groups = {};
            reportData.forEach(function (r) {
                const k = r.DepartName || '-';
                if (!groups[k]) groups[k] = [];
                groups[k].push(r);
            });

            const wsData = [
                ['{{ $company->comp_name }}'],
                ['Tax Summary (POS)'],
                ['From: ' + fmtDate($('#fromdate').val()) + '  To: ' + fmtDate($('#todate').val())],
                ['For Outlet: ' + selectedOutletNames.join(', ')],
                [],
                headers
            ];

            Object.keys(groups).sort().forEach(function (outletName) {
                const rows = groups[outletName];
                wsData.push([outletName]);

                const sub = { NetAmt:0,DiscAmt:0,Taxable:0,NonTaxable:0,ServiceCharge:0,CGST:0,SGST:0,RoundOff:0 };
                rows.forEach(function (r) {
                    wsData.push([
                        fmtDate(r.VDate),
                        parseFloat(r.NetAmt||0),
                        parseFloat(r.DiscAmt||0),
                        parseFloat(r.Taxable||0),
                        parseFloat(r.NonTaxable||0),
                        parseFloat(r.ServiceCharge||0),
                        parseFloat(r.CGST||0),
                        parseFloat(r.SGST||0),
                        parseFloat(r.RoundOff||0),
                    ]);
                    sub.NetAmt+=parseFloat(r.NetAmt||0); sub.DiscAmt+=parseFloat(r.DiscAmt||0);
                    sub.Taxable+=parseFloat(r.Taxable||0); sub.NonTaxable+=parseFloat(r.NonTaxable||0);
                    sub.ServiceCharge+=parseFloat(r.ServiceCharge||0);
                    sub.CGST+=parseFloat(r.CGST||0); sub.SGST+=parseFloat(r.SGST||0);
                    sub.RoundOff+=parseFloat(r.RoundOff||0);
                });
                wsData.push(['OUTLET TOTAL',sub.NetAmt,sub.DiscAmt,sub.Taxable,sub.NonTaxable,sub.ServiceCharge,sub.CGST,sub.SGST,sub.RoundOff]);
            });

            // Grand total
            let gt = { NetAmt:0,DiscAmt:0,Taxable:0,NonTaxable:0,ServiceCharge:0,CGST:0,SGST:0,RoundOff:0 };
            reportData.forEach(r => {
                Object.keys(gt).forEach(k => gt[k] += parseFloat(r[k]||0));
            });
            wsData.push(['GRAND TOTAL',gt.NetAmt,gt.DiscAmt,gt.Taxable,gt.NonTaxable,gt.ServiceCharge,gt.CGST,gt.SGST,gt.RoundOff]);

            const wb = XLSX.utils.book_new();
            const ws = XLSX.utils.aoa_to_sheet(wsData);
            XLSX.utils.book_append_sheet(wb, ws, 'Tax Summary POS');
            XLSX.writeFile(wb, 'Tax_Summary_POS.xlsx');
        });

        /* ══════════════════════════════════════════
           PRINT
        ══════════════════════════════════════════ */
        $('#printButton').on('click', function () {
            if (!reportData.length) return;

            const fromdate = $('#fromdate').val();
            const todate   = $('#todate').val();

            const groups = {};
            reportData.forEach(function (r) {
                const k = r.DepartName || '-';
                if (!groups[k]) groups[k] = [];
                groups[k].push(r);
            });

            let rows = '';
            const gt = { NetAmt:0,DiscAmt:0,Taxable:0,NonTaxable:0,ServiceCharge:0,CGST:0,SGST:0,RoundOff:0 };

            Object.keys(groups).sort().forEach(function (outletName) {
                const outletRows = groups[outletName];
                rows += '<tr style="background:#e9ecef;font-weight:bold;">'
                    + '<td colspan="9">' + outletName + '</td></tr>';

                const sub = { NetAmt:0,DiscAmt:0,Taxable:0,NonTaxable:0,ServiceCharge:0,CGST:0,SGST:0,RoundOff:0 };
                outletRows.forEach(function (r) {
                    rows += '<tr>'
                        + '<td>' + fmtDate(r.VDate) + '</td>'
                        + '<td style="text-align:right">' + fmt2(r.NetAmt) + '</td>'
                        + '<td style="text-align:right">' + fmt2(r.DiscAmt) + '</td>'
                        + '<td style="text-align:right">' + fmt2(r.Taxable) + '</td>'
                        + '<td style="text-align:right">' + fmt2(r.NonTaxable) + '</td>'
                        + '<td style="text-align:right">' + fmt2(r.ServiceCharge) + '</td>'
                        + '<td style="text-align:right">' + fmt2(r.CGST) + '</td>'
                        + '<td style="text-align:right">' + fmt2(r.SGST) + '</td>'
                        + '<td style="text-align:right">' + fmt2(r.RoundOff) + '</td>'
                        + '</tr>';
                    sub.NetAmt+=parseFloat(r.NetAmt||0); sub.DiscAmt+=parseFloat(r.DiscAmt||0);
                    sub.Taxable+=parseFloat(r.Taxable||0); sub.NonTaxable+=parseFloat(r.NonTaxable||0);
                    sub.ServiceCharge+=parseFloat(r.ServiceCharge||0);
                    sub.CGST+=parseFloat(r.CGST||0); sub.SGST+=parseFloat(r.SGST||0);
                    sub.RoundOff+=parseFloat(r.RoundOff||0);
                });
                rows += '<tr style="background:#cce5ff;font-weight:bold;color:#004085;">'
                    + '<td>OUTLET TOTAL</td>'
                    + '<td style="text-align:right">' + sub.NetAmt.toFixed(2) + '</td>'
                    + '<td style="text-align:right">' + sub.DiscAmt.toFixed(2) + '</td>'
                    + '<td style="text-align:right">' + sub.Taxable.toFixed(2) + '</td>'
                    + '<td style="text-align:right">' + sub.NonTaxable.toFixed(2) + '</td>'
                    + '<td style="text-align:right">' + sub.ServiceCharge.toFixed(2) + '</td>'
                    + '<td style="text-align:right">' + sub.CGST.toFixed(2) + '</td>'
                    + '<td style="text-align:right">' + sub.SGST.toFixed(2) + '</td>'
                    + '<td style="text-align:right">' + sub.RoundOff.toFixed(2) + '</td>'
                    + '</tr>';
                Object.keys(gt).forEach(k => gt[k] += sub[k]);
            });

            rows += '<tr style="background:#d4edda;font-weight:bold;color:#155724;">'
                + '<td>GRAND TOTAL</td>'
                + '<td style="text-align:right">' + gt.NetAmt.toFixed(2) + '</td>'
                + '<td style="text-align:right">' + gt.DiscAmt.toFixed(2) + '</td>'
                + '<td style="text-align:right">' + gt.Taxable.toFixed(2) + '</td>'
                + '<td style="text-align:right">' + gt.NonTaxable.toFixed(2) + '</td>'
                + '<td style="text-align:right">' + gt.ServiceCharge.toFixed(2) + '</td>'
                + '<td style="text-align:right">' + gt.CGST.toFixed(2) + '</td>'
                + '<td style="text-align:right">' + gt.SGST.toFixed(2) + '</td>'
                + '<td style="text-align:right">' + gt.RoundOff.toFixed(2) + '</td>'
                + '</tr>';

            const win = window.open('', '_blank', 'width=1200,height=800');
            win.document.write(`<!DOCTYPE html><html><head>
                <title>Tax Summary POS</title>
                <style>
                    body{font-family:Arial,sans-serif;font-size:10px;margin:12px;}
                    h2,h4,p{margin:2px 0;text-align:center;}
                    .info{text-align:left;font-size:11px;margin:6px 0 2px;}
                    table{width:100%;border-collapse:collapse;margin-top:8px;}
                    th{background:#343a40;color:#fff;border:1px solid #999;padding:3px 5px;font-size:9px;}
                    td{border:1px solid #ccc;padding:2px 5px;font-size:9px;}
                    @media print{@page{size:A4 landscape;margin:1cm;}}
                </style>
            </head><body>
                <h2>{{ $company->comp_name }}</h2>
                <p>{{ $company->address1 }}</p>
                <p>{{ $statename }} - {{ $company->city }} - {{ $company->pin }}</p>
                <h4>Tax Summary (POS)</h4>
                <p class="info">
                    <strong>From :</strong> ${fmtDate(fromdate)}
                    &nbsp;&nbsp;<strong>To :</strong> ${fmtDate(todate)}
                </p>
                <p class="info"><strong>For Outlet :</strong> ${selectedOutletNames.join(', ')}</p>
                <table>
                    <thead><tr>
                        <th>BILL DATE</th><th>BILL AMT</th><th>DISCOUNT AMT</th>
                        <th>TAXABLE AMT</th><th>NONTAXABLE AMT</th><th>SERVICE CHARGE</th>
                        <th>CGST</th><th>SGST</th><th>ROUND OFF</th>
                    </tr></thead>
                    <tbody>${rows}</tbody>
                </table>
            </body></html>`);
            win.document.close();
            win.focus();
            setTimeout(function () { win.print(); win.close(); }, 600);
        });

    });
    </script>

@endsection
