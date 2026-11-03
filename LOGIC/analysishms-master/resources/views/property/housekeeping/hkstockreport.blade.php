@extends('property.layouts.main')
@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <style>
        @media print {
            .hks-no-print { display: none !important; }
        }
        .checkul {
            list-style: none;
            padding: 6px;
            margin: 0;
            border: 1px solid #d0d5dd;
            border-radius: 6px;
            max-height: 220px;
            overflow-y: auto;
            background: #fff;
            position: absolute;
            z-index: 999;
            min-width: 220px;
            box-shadow: 0 4px 12px rgba(0,0,0,.1);
        }
        .checkul li {
            padding: 4px 6px;
            font-size: 13px;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .checkul li:hover { background: #f5f3ff; border-radius: 4px; }
        .checkul input[type=text] { width: 100%; margin-bottom: 4px; }
        .rhead { font-size: 13px; }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <form>
                                {{-- Print header --}}
                                <div class="text-center titlep mb-4">
                                    <h3>{{ $company->comp_name }}</h3>
                                    <p class="mb-1">{{ $company->address1 }}</p>
                                    <p class="mb-1">{{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                                    <p class="mb-0 font-weight-bold">HK Stock Report</p>
                                </div>

                                {{-- Filters --}}
                                <div class="row align-items-end g-3 mb-3 hks-no-print">
                                    <div class="col-auto">
                                        <label class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" value="{{ $asofdate }}" class="form-control" name="fromdate" id="fromdate">
                                    </div>
                                    <div class="col-auto">
                                        <label class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" value="{{ $asofdate }}" class="form-control" name="todate" id="todate">
                                    </div>
                                </div>

                                {{-- Item multi-select --}}
                                <div class="row mb-3 hks-no-print" style="position:relative;">
                                    <div class="col-md-3" style="position:relative;">
                                        <button style="width:100%;" type="button" class="btn rhead btn-outline-primary" id="itemlistbtn">
                                            Items <i class="fa-solid fa-angle-down"></i>
                                        </button>
                                        <ul class="checkul" id="listeditems" style="display:none;">
                                            <li>
                                                <input type="text" placeholder="Search Item..." class="form-control itemsearch">
                                            </li>
                                            <li>
                                                <input type="checkbox" id="checkallitems" checked>
                                                <span>Select All <span class="tcount">{{ count($itemgroups) }}</span></span>
                                            </li>
                                            @foreach($itemgroups as $ig)
                                            <li data-itemname="{{ $ig->name }}" class="itemnameli">
                                                <input class="itemcheckbox" value="{{ $ig->code }}" type="checkbox" checked>
                                                <span>{{ $ig->name }}</span>
                                            </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>

                                {{-- Action buttons --}}
                                <div class="text-center mt-2 mb-2 hks-no-print">
                                    <button type="button" id="refreshbutton" class="btn btn-success btn-sm">Refresh</button>
                                    <button type="button" id="printButton" class="btn btn-info btn-sm" style="display:none;">
                                        <i class="fa fa-print"></i> Print
                                    </button>
                                    <button type="button" id="excelButton" class="btn btn-success btn-sm" style="display:none;">
                                        <i class="fa fa-file-excel"></i> Export to Excel
                                    </button>
                                </div>

                                <div class="mt-4">
                                    <div class="custom-header" id="stockTableHeader" style="display:none;">HK Stock Report</div>
                                    <div id="stockTable"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    let hkTable = null;

    function dynamicSearch(inputSel, dataAttr, liSel) {
        $(document).on('input', inputSel, function () {
            var q = $(this).val().toLowerCase();
            $(liSel).each(function () {
                var name = ($(this).data(dataAttr) || '').toString().toLowerCase();
                $(this).toggle(name.includes(q));
            });
        });
    }

    $(document).ready(function () {

        // ── Toggle items list ─────────────────────────────────────────────────
        $('#itemlistbtn').on('click', function (e) {
            e.stopPropagation();
            $('#listeditems').toggle();
        });
        $(document).on('click', function (e) {
            if (!$(e.target).closest('#listeditems, #itemlistbtn').length) {
                $('#listeditems').hide();
            }
        });

        // ── Select All items ──────────────────────────────────────────────────
        $('#checkallitems').on('change', function () {
            $('.itemcheckbox:visible').prop('checked', $(this).is(':checked'));
        });

        // ── Dynamic search ────────────────────────────────────────────────────
        dynamicSearch('.itemsearch', 'itemname', '.itemnameli');

        // ── Refresh ───────────────────────────────────────────────────────────
        $('#refreshbutton').on('click', function () {
            var fromdate = $('#fromdate').val();
            var todate   = $('#todate').val();
            var allitems = $('.itemcheckbox:checked').map(function () { return $(this).val(); }).get();

            if (!fromdate || !todate) {
                pushNotify('error', 'HK Stock Report', 'Please select From Date and To Date',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }
            if (allitems.length === 0) {
                pushNotify('error', 'HK Stock Report', 'Please select at least one item',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            showLoader();

            if (hkTable) { hkTable.destroy(); hkTable = null; }
            $('#grandTotalRow').remove();
            $('#stockTable').empty();

            $.ajax({
                url: '/fetchhkstockreport',
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    fromdate: fromdate,
                    todate: todate,
                    itemgroups: allitems
                },
                success: function (res) {
                    hideLoader();
                    var rawData = res.data || [];

                    if (rawData.length === 0) {
                        $('#stockTable').html('<div class="alert alert-warning">No Data Available</div>');
                        $('#printButton, #excelButton').hide();
                        return;
                    }

                    var finalData = [];
                    var grandBalQty = 0, grandBalVal = 0;

                    rawData.forEach(function (item) {
                        var unitRaw  = String(item.unit || '').trim();
                        var issUnit  = String(item.issueunit || '').trim();
                        var unitStr  = (unitRaw || issUnit)
                            ? ' (' + (unitRaw || '') + (issUnit && issUnit !== unitRaw ? ' / ' + issUnit : '') + ')'
                            : '';
                        var groupName = (item.itemname || '') + unitStr;

                        var opQty  = Number(item.openingqty  || 0);
                        var opVal  = 0; // no valuation in HK report
                        var balQty = opQty;
                        var balVal = opVal;

                        // Opening row
                        if (opQty !== 0) {
                            finalData.push({
                                group        : groupName,
                                item_name    : 'Opening',
                                type         : '',
                                voucher_no   : '',
                                particulars  : '',
                                rec_qty      : opQty.toFixed(3),
                                iss_qty      : (0).toFixed(3),
                                bal_qty      : balQty.toFixed(3),
                            });
                        }

                        var tRecQty = 0, tIssQty = 0;

                        if (item.transactions && item.transactions.length > 0) {
                            item.transactions.forEach(function (txn) {
                                var rQ = Number(txn.qtyrec || 0);
                                var iQ = Number(txn.qtyiss || 0);
                                tRecQty += rQ;
                                tIssQty += iQ;
                                balQty  += (rQ - iQ);

                                finalData.push({
                                    group       : groupName,
                                    item_name   : txn.vdate || '',
                                    type        : 'TRANSACTION',
                                    voucher_no  : (txn.vtype || '') + '-' + (txn.vno || ''),
                                    particulars : txn.particulars || '',
                                    rec_qty     : rQ.toFixed(3),
                                    iss_qty     : iQ.toFixed(3),
                                    bal_qty     : balQty.toFixed(3),
                                });
                            });
                        }

                        // Total row
                        finalData.push({
                            group       : groupName,
                            item_name   : 'Total',
                            type        : '',
                            voucher_no  : '',
                            particulars : '',
                            rec_qty     : tRecQty.toFixed(3),
                            iss_qty     : tIssQty.toFixed(3),
                            bal_qty     : balQty.toFixed(3),
                        });

                        grandBalQty += balQty;
                    });

                    hkTable = new Tabulator('#stockTable', {
                        data          : finalData,
                        layout        : 'fitColumns',
                        groupBy       : 'group',
                        groupHeader   : function (value) { return value; },
                        rowFormatter  : function (row) {
                            var d  = row.getData();
                            var el = row.getElement();
                            if (d.item_name === 'Total') {
                                el.style.fontWeight = 'bold';
                                el.style.borderTop  = '2px solid #555';
                            }
                            if (d.item_name === 'Opening') {
                                el.style.background = '#f8f9fa';
                                el.style.fontStyle  = 'italic';
                            }
                        },
                        columns: [
                            { title: 'Item/Date',   field: 'item_name',  widthGrow: 2 },
                            { title: 'Type',        field: 'type' },
                            { title: 'Vou No.',     field: 'voucher_no' },
                            { title: 'Particulars', field: 'particulars' },
                            { title: 'Rec Qty',     field: 'rec_qty',    hozAlign: 'right' },
                            { title: 'Iss Qty',     field: 'iss_qty',    hozAlign: 'right' },
                            { title: 'Bal Qty',     field: 'bal_qty',    hozAlign: 'right' },
                        ]
                    });

                    // Grand Total
                    $('#grandTotalRow').remove();
                    $('#stockTable').after(
                        '<table id="grandTotalRow" style="width:100%;border-collapse:collapse;margin-top:10px;border:1px solid #dee2e6;">' +
                        '<tr>' +
                        '<td colspan="6" style="padding:6px 8px;font-weight:bold;border:1px solid #dee2e6;">Grand Total</td>' +
                        '<td style="padding:6px 8px;font-weight:bold;text-align:right;border:1px solid #dee2e6;">' + grandBalQty.toFixed(3) + '</td>' +
                        '</tr></table>'
                    );

                    $('#printButton, #excelButton').show();
                },
                error: function () {
                    hideLoader();
                    $('#stockTable').html('<div class="alert alert-danger">Error fetching data. Please try again.</div>');
                }
            });
        });

        // ── Print ─────────────────────────────────────────────────────────────
        $('#printButton').on('click', function () {
            if (!hkTable) return;
            var fromdate     = $('#fromdate').val();
            var todate       = $('#todate').val();
            var grandBalQty  = $('#grandTotalRow td:last').text().trim();
            var allData      = hkTable.getData();

            var groups = {};
            allData.forEach(function (row) {
                if (!groups[row.group]) groups[row.group] = [];
                groups[row.group].push(row);
            });

            var tableRows = '';
            Object.keys(groups).forEach(function (grp) {
                tableRows += '<tr style="background:#ddd;font-weight:bold;"><td colspan="7" style="padding:4px 6px;">' + grp + '</td></tr>';
                groups[grp].forEach(function (row) {
                    var style = row.item_name === 'Total' ? 'font-weight:bold;border-top:2px solid #555;' : '';
                    tableRows += '<tr style="' + style + '">' +
                        '<td>' + (row.item_name  || '') + '</td>' +
                        '<td>' + (row.type        || '') + '</td>' +
                        '<td>' + (row.voucher_no  || '') + '</td>' +
                        '<td>' + (row.particulars || '') + '</td>' +
                        '<td style="text-align:right;">' + (row.rec_qty || '') + '</td>' +
                        '<td style="text-align:right;">' + (row.iss_qty || '') + '</td>' +
                        '<td style="text-align:right;">' + (row.bal_qty || '') + '</td>' +
                        '</tr>';
                });
            });
            tableRows += '<tr style="font-weight:bold;border-top:2px solid #333;">' +
                '<td colspan="6" style="padding:5px 6px;">Grand Total</td>' +
                '<td style="text-align:right;padding:5px 6px;">' + grandBalQty + '</td>' +
                '</tr>';

            var printWin = window.open('', '_blank', 'width=1100,height=800');
            printWin.document.write('<!DOCTYPE html><html><head><title>HK Stock Report</title>' +
                '<style>body{font-family:Arial,sans-serif;font-size:11px;margin:15px;}' +
                'h2,h4,p{margin:2px 0;text-align:center;}' +
                'table{width:100%;border-collapse:collapse;margin-top:10px;}' +
                'th{background:#e0e0e0;border:1px solid #999;padding:4px 5px;font-size:10px;}' +
                'td{border:1px solid #ccc;padding:3px 5px;font-size:10px;}' +
                '@media print{@page{size:A4 landscape;margin:1cm;}}</style></head><body>' +
                '<h2>{{ $company->comp_name }}</h2>' +
                '<p>{{ $company->address1 }}</p>' +
                '<p>{{ $statename }} - {{ $company->city }} - {{ $company->pin }}</p>' +
                '<h4>HK Stock Report</h4>' +
                '<p>From: ' + fromdate + '&nbsp;&nbsp;To: ' + todate + '</p>' +
                '<table><thead><tr>' +
                '<th>Item/Date</th><th>Type</th><th>Vou No.</th><th>Particulars</th>' +
                '<th>Rec Qty</th><th>Iss Qty</th><th>Bal Qty</th>' +
                '</tr></thead><tbody>' + tableRows + '</tbody></table>' +
                '</body></html>');
            printWin.document.close();
            printWin.focus();
            setTimeout(function () { printWin.print(); printWin.close(); }, 500);
        });

        // ── Excel ─────────────────────────────────────────────────────────────
        $('#excelButton').on('click', function () {
            if (hkTable) hkTable.download('xlsx', 'hk_stock_report.xlsx');
        });
    });
    </script>
@endsection
