
@extends('property.layouts.main')
@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>

    <input type="hidden" value="{{ $company->comp_name }}" id="compname">
    <input type="hidden" value="{{ $company->address1 }}" id="address">
    <input type="hidden" value="{{ $company->city }}" id="city">
    <input type="hidden" value="{{ $statename }}" id="statename">
    <input type="hidden" value="{{ $company->pin }}" id="pin">
    <input type="hidden" value="{{ $company->mobile }}" id="compmob">
    <input type="hidden" value="{{ $company->gstin }}" id="gstin">

    <style>
        .checkul {
            position: absolute;
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, .2);
            list-style: none;
            padding: 4px 0;
            margin: 0;
            z-index: 9999;
            min-width: 240px;
            max-height: 320px;
            overflow-y: auto;
            left: 0;
            top: calc(100% + 2px);
        }

        .checkul li {
            padding: 5px 14px;
            font-size: 13px;
            cursor: pointer;
            white-space: nowrap;
        }

        .checkul li:hover {
            background: #f0f0f0;
        }

        .checkul li input[type="checkbox"] {
            margin-right: 7px;
        }

        .filter-label {
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 2px;
            display: block;
        }

        /* Sub Total row */
        .tabulator .tabulator-row.subtotal-row .tabulator-cell {
            background: #d4edda !important;
            font-weight: bold !important;
            color: #155724 !important;
        }

        /* Grand Total row */
        .tabulator .tabulator-row.grandtotal-row .tabulator-cell {
            background: #fff3cd !important;
            font-weight: bold !important;
            color: #856404 !important;
        }

        /* Print styles */
        @media print {
            .content-body>.container-fluid>.card {
                box-shadow: none !important;
            }
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="card shadow-sm">
                <div class="card-body">

                    <h5 class="mb-3 font-weight-bold">POS Tax Report</h5>

                    {{-- FILTERS --}}
                    <div class="row align-items-end mb-3">

                        <div class="col-auto">
                            <span class="filter-label">From Date</span>
                            <input type="date" id="fromdate" value="{{ $fromdate }}"
                                class="form-control form-control-sm" style="width:145px;">
                        </div>

                        <div class="col-auto">
                            <span class="filter-label">To Date</span>
                            <input type="date" id="todate" value="{{ $fromdate }}"
                                class="form-control form-control-sm" style="width:145px;">
                        </div>

                        <div class="col-auto" style="position:relative;">
                            <span class="filter-label">Outlet</span>
                            <button type="button" class="btn btn-outline-success btn-sm" id="outletlistbtn"
                                style="min-width:160px;">
                                All Outlets <i class="fa-solid fa-angle-down"></i>
                            </button>
                            <ul class="checkul" id="listedoutlet" style="display:none;">
                                <li>
                                    <input type="checkbox" id="checkalloutlet" checked>
                                    <strong>Select All ({{ count($outlets) }})</strong>
                                </li>
                                @foreach ($outlets as $outlet)
                                    <li>
                                        <input type="checkbox" class="outletcheckbox" value="{{ $outlet->DCode }}" checked>
                                        {{ $outlet->Name }}
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                        <div class="col-auto">
                            <span class="filter-label">&nbsp;</span>
                            <div>
                                <button id="fetchbutton" type="button" class="btn btn-success btn-sm">
                                    <i class="fa-solid fa-arrows-rotate"></i> Refresh
                                </button>
                                <button type="button" id="printButton" class="btn btn-primary btn-sm ms-1">
                                    <i class="fa-solid fa-print"></i> Print
                                </button>
                                <button type="button" id="excelButton" class="btn btn-success btn-sm ms-1">
                                    <i class="fa fa-file-excel"></i> Excel
                                </button>
                            </div>
                        </div>

                    </div>

                    <div id="taxreporposTable"></div>

                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {

            var tabulatorTable = null;
            var lastJson = null; // store last response for print/excel

            /* ── Outlet dropdown ── */
            $('#outletlistbtn').on('click', function(e) {
                e.stopPropagation();
                $('#listedoutlet').toggle();
            });
            $(document).on('click', function() {
                $('#listedoutlet').hide();
            });
            $('#listedoutlet').on('click', function(e) {
                e.stopPropagation();
            });

            $('#checkalloutlet').on('change', function() {
                $('.outletcheckbox').prop('checked', $(this).prop('checked'));
                updateLabel();
            });
            $(document).on('change', '.outletcheckbox', function() {
                var total = $('.outletcheckbox').length;
                var checked = $('.outletcheckbox:checked').length;
                $('#checkalloutlet').prop('checked', total === checked);
                updateLabel();
            });

            function updateLabel() {
                var total = $('.outletcheckbox').length;
                var checked = $('.outletcheckbox:checked').length;
                var txt = checked === 0 ? 'No Outlet' :
                    checked === total ? 'All Outlets' :
                    checked + ' Selected';
                $('#outletlistbtn').html(txt + ' <i class="fa-solid fa-angle-down"></i>');
            }

            /* ── Helpers ── */
            function dmy(d) {
                if (!d) return '';
                var p = d.split('-');
                return p.length === 3 ? p[2] + '-' + p[1] + '-' + p[0] : d;
            }

            function n2(v) {
                var n = parseFloat(String(v || 0).replace(/,/g, ''));
                return isNaN(n) ? 0 : n;
            }

            function f2(v) {
                return n2(v).toFixed(2);
            }

            /* ── Build table rows with Sub Total injected after each group ── */
            function buildRows(data) {
                var result = [];
                var lastDept = null;
                var subtot = null;

                function pushSubtotal() {
                    result.push({
                        _rowType: 'subtotal',
                        DepartName: 'Sub Total',
                        BillDate: '',
                        BillNo: '',
                        Company: '',
                        GSTIN: '',
                        Taxable: subtot.Taxable,
                        NonTaxable: subtot.NonTaxable,
                        DiscAmt: subtot.DiscAmt,
                        ServiceCharge: subtot.ServiceCharge,
                        CGSTAmt: subtot.CGSTAmt,
                        SGSTAmt: subtot.SGSTAmt,
                        RoundOff: subtot.RoundOff,
                        BillAMT: subtot.BillAMT,
                    });
                }

                data.forEach(function(r) {
                    var dept = r.DepartName || '-';
                    if (dept !== lastDept) {
                        if (lastDept !== null) pushSubtotal();
                        lastDept = dept;
                        subtot = {
                            Taxable: 0,
                            NonTaxable: 0,
                            DiscAmt: 0,
                            ServiceCharge: 0,
                            CGSTAmt: 0,
                            SGSTAmt: 0,
                            RoundOff: 0,
                            BillAMT: 0
                        };
                    }
                    subtot.Taxable += n2(r.Taxable);
                    subtot.NonTaxable += n2(r.NonTaxable);
                    subtot.DiscAmt += n2(r.DiscAmt);
                    subtot.ServiceCharge += n2(r.ServiceCharge);
                    subtot.CGSTAmt += n2(r.CGSTAmt);
                    subtot.SGSTAmt += n2(r.SGSTAmt);
                    subtot.RoundOff += n2(r.RoundOff);
                    subtot.BillAMT += n2(r.BillAMT);
                    result.push({
                        _rowType: 'data',
                        DepartName: dept,
                        BillDate: r.BillDate || '',
                        BillNo: r.BillNo || '',
                        Company: r.Company || '',
                        GSTIN: r.GSTIN || '',
                        Taxable: n2(r.Taxable),
                        NonTaxable: n2(r.NonTaxable),
                        DiscAmt: n2(r.DiscAmt),
                        ServiceCharge: n2(r.ServiceCharge),
                        CGSTAmt: n2(r.CGSTAmt),
                        SGSTAmt: n2(r.SGSTAmt),
                        RoundOff: n2(r.RoundOff),
                        BillAMT: n2(r.BillAMT),
                    });
                });
                if (lastDept !== null) pushSubtotal();
                return result;
            }

            /* ── Refresh ── */
            $('#fetchbutton').on('click', function() {

                var fromdate = $('#fromdate').val();
                var todate = $('#todate').val();
                var outlets = [];
                $('.outletcheckbox:checked').each(function() {
                    outlets.push($(this).val());
                });

                if (!fromdate || !todate) {
                    alert('Please select From Date and To Date.');
                    return;
                }
                if (outlets.length === 0) {
                    alert('Please select at least one Outlet.');
                    return;
                }

                showLoader();

                $.ajax({
                    url: '{{ route('taxreporposdata') }}',
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        fromdate: fromdate,
                        todate: todate,
                        alloutlets: outlets.join(','),
                        start: 0,
                        length: -1,
                        draw: 1,
                    },
                    success: function(json) {
                        hideLoader();
                        lastJson = json;

                        var rawRows = json.data || [];
                        var gt = json.grandTotals || {};

                        if (rawRows.length === 0) {
                            if (tabulatorTable) {
                                tabulatorTable.destroy();
                                tabulatorTable = null;
                            }
                            $('#taxreporposTable').html(
                                '<div class="alert alert-warning mt-2">No data found.</div>'
                                );
                            return;
                        }

                        var tableRows = buildRows(rawRows);

                        // Append Grand Total row at end
                        tableRows.push({
                            _rowType: 'grandtotal',
                            DepartName: 'Grand Total',
                            BillDate: '',
                            BillNo: '',
                            Company: '',
                            GSTIN: '',
                            Taxable: n2(gt.taxable),
                            NonTaxable: n2(gt.nontaxable),
                            DiscAmt: n2(gt.discamt),
                            ServiceCharge: n2(gt.servicecharge),
                            CGSTAmt: n2(gt.cgst),
                            SGSTAmt: n2(gt.sgst),
                            RoundOff: n2(gt.roundoff),
                            BillAMT: n2(gt.billamt),
                        });

                        if (tabulatorTable) {
                            tabulatorTable.destroy();
                            tabulatorTable = null;
                        }

                        function moneyFmt(cell) {
                            return n2(cell.getValue()).toFixed(2);
                        }

                        function numCol(title, field, width) {
                            return {
                                title: title,
                                field: field,
                                width: width,
                                hozAlign: 'right',
                                formatter: moneyFmt
                            };
                        }

                        tabulatorTable = new Tabulator('#taxreporposTable', {
                            data: tableRows,
                            layout: 'fitDataFill',
                            rowFormatter: function(row) {
                                var t = row.getData()._rowType;
                                if (t === 'subtotal') {
                                    row.getElement().classList.add('subtotal-row');
                                } else if (t === 'grandtotal') {
                                    row.getElement().classList.add(
                                    'grandtotal-row');
                                }
                            },
                            columns: [{
                                    title: 'Department',
                                    field: 'DepartName',
                                    width: 160
                                },
                                {
                                    title: 'Bill Date',
                                    field: 'BillDate',
                                    width: 100
                                },
                                {
                                    title: 'Bill No',
                                    field: 'BillNo',
                                    width: 90
                                },
                                {
                                    title: 'Company',
                                    field: 'Company',
                                    width: 160
                                },
                                {
                                    title: 'GSTIN',
                                    field: 'GSTIN',
                                    width: 160
                                },
                                numCol('Taxable', 'Taxable', 110),
                                numCol('Non Taxable', 'NonTaxable', 110),
                                numCol('Disc Amt', 'DiscAmt', 100),
                                numCol('Service Charge', 'ServiceCharge', 120),
                                numCol('CGST Amt', 'CGSTAmt', 100),
                                numCol('SGST Amt', 'SGSTAmt', 100),
                                numCol('Round Off', 'RoundOff', 100),
                                numCol('Bill Amount', 'BillAMT', 110),
                            ],
                        });
                    },
                    error: function(xhr) {
                        hideLoader();
                        var msg = 'Error loading data.';
                        try {
                            msg = xhr.responseJSON.message || msg;
                        } catch (e) {}
                        alert(msg);
                    }
                });
            });

            /* ══════════════════════════════════════════
               PRINT — custom window with company header
            ══════════════════════════════════════════ */
            $('#printButton').on('click', function() {
                if (!tabulatorTable || !lastJson) {
                    alert('Please load data first.');
                    return;
                }

                var fromdate = $('#fromdate').val();
                var todate = $('#todate').val();
                var compName = $('#compname').val();
                var address = $('#address').val();
                var city = $('#city').val();
                var statename = $('#statename').val();
                var pin = $('#pin').val();
                var mobile = $('#compmob').val();
                var gstin = $('#gstin').val();

                var rawRows = lastJson.data || [];
                var gt = lastJson.grandTotals || {};
                var tableRows = buildRows(rawRows);
                tableRows.push({
                    _rowType: 'grandtotal',
                    DepartName: 'Grand Total',
                    BillDate: '',
                    BillNo: '',
                    Company: '',
                    GSTIN: '',
                    Taxable: n2(gt.taxable),
                    NonTaxable: n2(gt.nontaxable),
                    DiscAmt: n2(gt.discamt),
                    ServiceCharge: n2(gt.servicecharge),
                    CGSTAmt: n2(gt.cgst),
                    SGSTAmt: n2(gt.sgst),
                    RoundOff: n2(gt.roundoff),
                    BillAMT: n2(gt.billamt),
                });

                var bodyRows = '';
                tableRows.forEach(function(r) {
                    var isSub = r._rowType === 'subtotal';
                    var isGrand = r._rowType === 'grandtotal';
                    var style = isSub ? 'background:#d4edda;font-weight:bold;color:#155724;' :
                        isGrand ? 'background:#fff3cd;font-weight:bold;color:#856404;' :
                        '';
                    bodyRows += '<tr style="' + style + '">' +
                        '<td>' + (r.DepartName || '') + '</td>' +
                        '<td>' + (r.BillDate || '') + '</td>' +
                        '<td>' + (r.BillNo || '') + '</td>' +
                        '<td>' + (r.Company || '') + '</td>' +
                        '<td>' + (r.GSTIN || '') + '</td>' +
                        '<td style="text-align:right;">' + f2(r.Taxable) + '</td>' +
                        '<td style="text-align:right;">' + f2(r.NonTaxable) + '</td>' +
                        '<td style="text-align:right;">' + f2(r.DiscAmt) + '</td>' +
                        '<td style="text-align:right;">' + f2(r.ServiceCharge) + '</td>' +
                        '<td style="text-align:right;">' + f2(r.CGSTAmt) + '</td>' +
                        '<td style="text-align:right;">' + f2(r.SGSTAmt) + '</td>' +
                        '<td style="text-align:right;">' + f2(r.RoundOff) + '</td>' +
                        '<td style="text-align:right;">' + f2(r.BillAMT) + '</td>' +
                        '</tr>';
                });

                var win = window.open('', '_blank', 'width=1300,height=900');
                win.document.write('<!DOCTYPE html><html><head><title>POS Tax Report</title>' +
                    '<style>' +
                    'body{font-family:Arial,sans-serif;font-size:10px;margin:12px;}' +
                    'h2,h4,p{margin:2px 0;text-align:center;}' +
                    'table{width:100%;border-collapse:collapse;margin-top:8px;}' +
                    'th{background:#e0e0e0;border:1px solid #999;padding:3px 5px;font-size:9px;}' +
                    'td{border:1px solid #ccc;padding:2px 4px;font-size:9px;}' +
                    '@media print{@page{size:A4 landscape;margin:1cm;}}' +
                    '</style></head><body>' +
                    '<h2>' + compName + '</h2>' +
                    '<p>' + address + '</p>' +
                    '<p>' + statename + ' - ' + city + ' - ' + pin + '</p>' +
                    '<p>Mobile: ' + mobile + (gstin ? ' | GSTIN: ' + gstin : '') + '</p>' +
                    '<h4>POS Tax Report</h4>' +
                    '<p style="text-align:left;"><strong>From:</strong> ' + dmy(fromdate) +
                    ' &nbsp;&nbsp; <strong>To:</strong> ' + dmy(todate) + '</p>' +
                    '<table><thead><tr>' +
                    '<th>Department</th><th>Bill Date</th><th>Bill No</th>' +
                    '<th>Company</th><th>GSTIN</th>' +
                    '<th>Taxable</th><th>Non Taxable</th><th>Disc Amt</th>' +
                    '<th>Service Charge</th><th>CGST Amt</th><th>SGST Amt</th>' +
                    '<th>Round Off</th><th>Bill Amount</th>' +
                    '</tr></thead><tbody>' + bodyRows + '</tbody></table>' +
                    '</body></html>');
                win.document.close();
                win.focus();
                setTimeout(function() {
                    win.print();
                    win.close();
                }, 600);
            });

            /* ══════════════════════════════════════════
               EXCEL — all rows + Sub Total + Grand Total
            ══════════════════════════════════════════ */
            $('#excelButton').on('click', function() {
                if (!lastJson) {
                    alert('Please load data first.');
                    return;
                }

                var rawRows = lastJson.data || [];
                var gt = lastJson.grandTotals || {};
                var tableRows = buildRows(rawRows);
                tableRows.push({
                    _rowType: 'grandtotal',
                    DepartName: 'Grand Total',
                    BillDate: '',
                    BillNo: '',
                    Company: '',
                    GSTIN: '',
                    Taxable: n2(gt.taxable),
                    NonTaxable: n2(gt.nontaxable),
                    DiscAmt: n2(gt.discamt),
                    ServiceCharge: n2(gt.servicecharge),
                    CGSTAmt: n2(gt.cgst),
                    SGSTAmt: n2(gt.sgst),
                    RoundOff: n2(gt.roundoff),
                    BillAMT: n2(gt.billamt),
                });

                var headers = ['Department', 'Bill Date', 'Bill No', 'Company', 'GSTIN',
                    'Taxable', 'Non Taxable', 'Disc Amt', 'Service Charge',
                    'CGST Amt', 'SGST Amt', 'Round Off', 'Bill Amount'
                ];

                var wsData = [headers];
                tableRows.forEach(function(r) {
                    wsData.push([
                        r.DepartName || '',
                        r.BillDate || '',
                        r.BillNo || '',
                        r.Company || '',
                        r.GSTIN || '',
                        n2(r.Taxable),
                        n2(r.NonTaxable),
                        n2(r.DiscAmt),
                        n2(r.ServiceCharge),
                        n2(r.CGSTAmt),
                        n2(r.SGSTAmt),
                        n2(r.RoundOff),
                        n2(r.BillAMT),
                    ]);
                });

                var wb = XLSX.utils.book_new();
                var ws = XLSX.utils.aoa_to_sheet(wsData);
                ws['!cols'] = [{
                        wch: 20
                    }, {
                        wch: 12
                    }, {
                        wch: 10
                    }, {
                        wch: 22
                    }, {
                        wch: 20
                    },
                    {
                        wch: 12
                    }, {
                        wch: 12
                    }, {
                        wch: 10
                    }, {
                        wch: 14
                    }, {
                        wch: 12
                    }, {
                        wch: 12
                    }, {
                        wch: 10
                    }, {
                        wch: 14
                    }
                ];
                XLSX.utils.book_append_sheet(wb, ws, 'POS Tax Report');
                XLSX.writeFile(wb, 'POS_Tax_Report.xlsx');
            });

        });
    </script>
@endsection
