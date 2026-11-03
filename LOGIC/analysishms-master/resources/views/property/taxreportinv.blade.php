
@extends('property.layouts.main')

@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <style>
        .checkul {
            position: absolute;
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 2px 8px rgba(0,0,0,.18);
            list-style: none;
            padding: 4px 0;
            margin: 0;
            z-index: 1050;
            min-width: 210px;
            max-height: 300px;
            overflow-y: auto;
        }
        .checkul li { padding: 4px 12px; font-size: 13px; cursor: pointer; white-space: nowrap; }
        .checkul li:hover { background: #f0f0f0; }
        .checkul li input[type="checkbox"] { margin-right: 7px; }
        .titlep { display: none; }
        .filter-label { font-size: 12px; font-weight: 600; margin-bottom: 2px; display: block; }
        #grandTotalRow td { border: 1px solid #dee2e6; padding: 5px 8px; font-weight: bold; font-size: 12px; }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="card shadow-sm">
                <div class="card-body">

                    <div class="text-center titlep mb-3">
                        <h3>{{ $company->comp_name }}</h3>
                        <p class="mb-1">{{ $company->address1 }}</p>
                        <p class="mb-1">{{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                        <p class="mb-0 font-weight-bold">Tax Report (Inventory)</p>
                    </div>

                    <h5 class="mb-3 font-weight-bold">Tax Report (Inventory)</h5>

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

                        <div class="col-auto">
                            <span class="filter-label">Item Type</span>
                            <select id="itemtype" class="form-control form-control-sm" style="width:130px;">
                                <option value="Taxable" selected>Taxable</option>
                                <option value="NonTaxable">NonTaxable</option>
                                <option value="All">All</option>
                            </select>
                        </div>

                        {{-- Party Name multi-select --}}
                        <div class="col-auto position-relative">
                            <span class="filter-label">Party</span>
                            <button type="button" class="btn btn-outline-primary btn-sm"
                                    id="partylistbtn" style="min-width:140px;">
                                All Parties <i class="fa-solid fa-angle-down"></i>
                            </button>
                            <ul class="checkul" id="listedparty" style="display:none;">
                                <li>
                                    <input type="checkbox" id="checkallparty" checked>
                                    <strong>Select All</strong>
                                </li>
                                @foreach ($itemgrp as $grp)
                                    <li>
                                        <input type="checkbox" class="partycheckbox"
                                               value="{{ $grp->sub_code }}" checked>
                                        {{ $grp->name }}
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
                                <button type="button" id="excelButton" class="btn btn-success btn-sm ms-1"
                                        style="display:none;">
                                    <i class="fa fa-file-excel"></i> Excel
                                </button>
                                <button type="button" id="printButton" class="btn btn-info btn-sm ms-1"
                                        style="display:none;">
                                    <i class="fa fa-print"></i> Print
                                </button>
                            </div>
                        </div>

                    </div>

                    <div id="filterInfoLine" class="mb-2" style="font-size:13px;color:#333;display:none;">
                        <strong>From :</strong> <span id="infoFrom"></span>
                        &nbsp;&nbsp;<strong>To :</strong> <span id="infoTo"></span>
                        &nbsp;&nbsp;<strong>Item Type :</strong> <span id="infoType"></span>
                    </div>

                    <div id="validation-msg" class="text-danger mb-2" style="font-size:13px;"></div>

                    <div id="taxreportinvTable"></div>

                    <table id="grandTotalRow"
                           style="width:100%;border-collapse:collapse;margin-top:4px;display:none;">
                        <tbody id="grandTotalBody"></tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>

    <script>
    $(document).ready(function () {

        let table = null;

        /* ── dropdown ── */
        $('#partylistbtn').on('click', function (e) {
            e.stopPropagation();
            $('#listedparty').toggle();
        });
        $(document).on('click', function () { $('.checkul').hide(); });
        $('.checkul').on('click', function (e) { e.stopPropagation(); });

        $('#checkallparty').on('change', function () {
            $('.partycheckbox').prop('checked', $(this).prop('checked'));
        });
        $(document).on('change', '.partycheckbox', function () {
            $('#checkallparty').prop('checked',
                $('.partycheckbox').length === $('.partycheckbox:checked').length);
        });

        function fmtDate(d) {
            if (!d) return '';
            const p = d.split('-');
            return p.length === 3 ? p[2] + '/' + p[1] + '/' + p[0] : d;
        }
        function fmt2(v) {
            const n = parseFloat(v || 0);
            return isNaN(n) ? '0.00' : n.toFixed(2);
        }
        function amtCol(title, field, width) {
            return {
                title, field, width: width || 110, hozAlign: "right",
                formatter: function (c) { return fmt2(c.getValue()); }
            };
        }
        /* show column only if any row has value > 0 */
        function hasData(rows, field) {
            return rows.some(r => parseFloat(r[field] || 0) > 0);
        }

        /* ══════════════════════════════════════════
           REFRESH
        ══════════════════════════════════════════ */
        $('#refreshbutton').on('click', function () {

            $('#validation-msg').text('');
            $('#grandTotalRow').hide();
            $('#excelButton, #printButton').hide();

            const fromdate = $('#fromdate').val();
            const todate   = $('#todate').val();
            const itemtype = $('#itemtype').val();
            const parties  = $('.partycheckbox:checked').map(function () {
                return $(this).val();
            }).get();

            if (!fromdate || !todate) {
                $('#validation-msg').text('Please select From Date and To Date.');
                return;
            }

            $('#infoFrom').text(fmtDate(fromdate));
            $('#infoTo').text(fmtDate(todate));
            $('#infoType').text(itemtype);
            $('#filterInfoLine').show();

            $.ajax({
                url    : "{{ route('taxreportinvdata') }}",
                method : 'POST',
                data   : {
                    _token   : "{{ csrf_token() }}",
                    fromdate : fromdate,
                    todate   : todate,
                    itemtype : itemtype,
                    parties  : parties
                },
                success: function (response) {

                    const rows = response.data ?? [];

                    if (rows.length === 0) {
                        if (table) table.destroy();
                        $('#taxreportinvTable').html(
                            '<div class="alert alert-warning mt-2">No data found.</div>');
                        return;
                    }

                    /* ── fixed base columns ── */
                    const columns = [
                        { title: "Tax Invoice No.",          field: "TaxInvoiceNo",           width: 90  },
                        { title: "Date Of Tax Invoice",      field: "DateOfTaxInvoice",        width: 120 },
                        { title: "Party Bill No.",           field: "PartyBillNo",             width: 110 },
                        { title: "Party Bill Date",          field: "PartyBillDT",             width: 110 },
                        { title: "Item Name",                field: "ItemName",                width: 180 },
                        { title: "Commodity Code",           field: "CommodityCode",           width: 110 },
                        { title: "Quantity/Measure",         field: "QtyMeasure",              width: 120, hozAlign: "right" },
                        amtCol("Taxable Value Of Goods",     "TaxableValueOfGoods",            140),
                        amtCol("Amount Of Tax Charged",      "AmountOfTaxCharged",             140),
                        amtCol("Total Amount Of Tax-invoice","TotalAmountOfTaxInvoice",        160),
                        { title: "Vendor Name",              field: "VendorName",              width: 160 },
                        { title: "Vendor Address",           field: "VendorAddress",           width: 200 },
                        { title: "City",                     field: "City",                    width: 90  },
                        { title: "State",                    field: "State",                   width: 100 },
                        { title: "Pin",                      field: "Pin",                     width: 70  },
                        { title: "GST",                      field: "Tin",                     width: 150 },
                    ];

                    /* ── dynamic GST slab columns ── */
                    /* 5% slab — show only if data exists */
                    if (hasData(rows, 'cgst_2_5')) {
                        columns.push(amtCol("CGST (PURCHASE) 2.5%", "cgst_2_5",  120));
                        columns.push(amtCol("SGST (PURCHASE) 2.5%", "sgst_2_5",  120));
                    }
                    /* 12% slab */
                    if (hasData(rows, 'cgst_6')) {
                        columns.push(amtCol("CGST (PURCHASE) 6%",   "cgst_6",    120));
                        columns.push(amtCol("SGST (PURCHASE) 6%",   "sgst_6",    120));
                    }
                    /* 18% slab */
                    if (hasData(rows, 'cgst_9')) {
                        columns.push(amtCol("CGST (PURCHASE) 9%",   "cgst_9",    120));
                        columns.push(amtCol("SGST (PURCHASE) 9%",   "sgst_9",    120));
                    }
                    /* 28% slab */
                    if (hasData(rows, 'cgst_14')) {
                        columns.push(amtCol("CGST (PURCHASE) 14%",  "cgst_14",   120));
                        columns.push(amtCol("SGST (PURCHASE) 14%",  "sgst_14",   120));
                    }
                    /* 40% slab */
                    if (hasData(rows, 'cgst_14_40')) {
                        columns.push(amtCol("CGST (PURCHASE) 14%",  "cgst_14_40", 120));
                        columns.push(amtCol("SGST (PURCHASE) 14%",  "sgst_14_40", 120));
                        columns.push(amtCol("CESS (PURCHASE) 12%",  "cess_12",    120));
                    }

                    if (table) table.destroy();

                    table = new Tabulator("#taxreportinvTable", {
                        data            : rows,
                        layout          : "fitDataFill",
                        responsiveLayout: false,
                        placeholder     : "No data available",
                        columns         : columns,
                    });

                    table.on("tableBuilt", function () {
                        $('#excelButton, #printButton').show();
                        buildGrandTotal(rows);
                    });
                },
                error: function (xhr) {
                    console.error(xhr);
                    $('#validation-msg').text('Error loading data. Check console.');
                }
            });
        });

        /* ── Grand Total ── */
        function buildGrandTotal(data) {
            const sum = (f) => data.reduce((a, r) => {
                const v = r[f];
                return a + (v === '' || v === null || v === undefined ? 0 : parseFloat(v || 0));
            }, 0);

            /* fixed columns count before GST slabs:
               TaxInvoiceNo, DateOfTaxInvoice, PartyBillNo, PartyBillDT,
               ItemName, CommodityCode, QtyMeasure = 7 cols
               then: TaxableValueOfGoods, AmountOfTaxCharged, TotalAmountOfTaxInvoice = 3 amt cols
               then: VendorName, VendorAddress, City, State, Pin, GST = 6 cols
            */
            let html = '<tr>';
            html += '<td colspan="7" style="text-align:right;font-weight:bold;">GRAND TOTAL</td>';
            html += '<td style="text-align:right;">' + sum('TaxableValueOfGoods').toFixed(2)      + '</td>';
            html += '<td style="text-align:right;">' + sum('AmountOfTaxCharged').toFixed(2)       + '</td>';
            html += '<td style="text-align:right;">' + sum('TotalAmountOfTaxInvoice').toFixed(2)  + '</td>';
            html += '<td colspan="6"></td>'; /* VendorName, Address, City, State, Pin, GST */

            /* dynamic slab totals — same order as columns */
            const slabs = [
                { key: 'cgst_2_5',   fields: ['cgst_2_5',   'sgst_2_5']                    },
                { key: 'cgst_6',     fields: ['cgst_6',     'sgst_6']                      },
                { key: 'cgst_9',     fields: ['cgst_9',     'sgst_9']                      },
                { key: 'cgst_14',    fields: ['cgst_14',    'sgst_14']                     },
                { key: 'cgst_14_40', fields: ['cgst_14_40', 'sgst_14_40', 'cess_12']       },
            ];

            slabs.forEach(function (slab) {
                if (data.some(r => parseFloat(r[slab.key] || 0) > 0)) {
                    slab.fields.forEach(function (f) {
                        html += '<td style="text-align:right;">' + sum(f).toFixed(2) + '</td>';
                    });
                }
            });

            html += '</tr>';
            $('#grandTotalBody').html(html);
            $('#grandTotalRow').show();
        }

        /* ── Excel ── */
        $('#excelButton').on('click', function () {
            if (!table) return;
            const allData = table.getData();
            if (!allData.length) return;

            const hasSlabs = {
                s5:  allData.some(r => parseFloat(r.cgst_2_5   || 0) > 0),
                s12: allData.some(r => parseFloat(r.cgst_6     || 0) > 0),
                s18: allData.some(r => parseFloat(r.cgst_9     || 0) > 0),
                s28: allData.some(r => parseFloat(r.cgst_14    || 0) > 0),
                s40: allData.some(r => parseFloat(r.cgst_14_40 || 0) > 0),
            };

            const headers = [
                "Tax Invoice No.", "Date Of Tax Invoice",
                "Party Bill No.", "Party Bill Date",
                "Item Name", "Commodity Code", "Quantity/Measure",
                "Taxable Value Of Goods", "Amount Of Tax Charged",
                "Total Amount Of Tax-invoice",
                "Vendor Name", "Vendor Address", "City", "State", "Pin", "GST",
            ];
            if (hasSlabs.s5)  headers.push("CGST (PURCHASE) 2.5%", "SGST (PURCHASE) 2.5%");
            if (hasSlabs.s12) headers.push("CGST (PURCHASE) 6%",   "SGST (PURCHASE) 6%");
            if (hasSlabs.s18) headers.push("CGST (PURCHASE) 9%",   "SGST (PURCHASE) 9%");
            if (hasSlabs.s28) headers.push("CGST (PURCHASE) 14%",  "SGST (PURCHASE) 14%");
            if (hasSlabs.s40) headers.push("CGST (PURCHASE) 14%",  "SGST (PURCHASE) 14%", "CESS (PURCHASE) 12%");

            const wsData = [headers];
            allData.forEach(function (r) {
                const row = [
                    r.TaxInvoiceNo            ?? '',
                    r.DateOfTaxInvoice        ?? '',
                    r.PartyBillNo             ?? '',
                    r.PartyBillDT             ?? '',
                    r.ItemName                ?? '',
                    r.CommodityCode           ?? '',
                    r.QtyMeasure              ?? '',
                    parseFloat(r.TaxableValueOfGoods     || 0),
                    parseFloat(r.AmountOfTaxCharged      || 0),
                    parseFloat(r.TotalAmountOfTaxInvoice || 0),
                    r.VendorName    ?? '',
                    r.VendorAddress ?? '',
                    r.City          ?? '',
                    r.State         ?? '',
                    r.Pin           ?? '',
                    r.Tin           ?? '',
                ];
                if (hasSlabs.s5)  row.push(parseFloat(r.cgst_2_5  ||0), parseFloat(r.sgst_2_5  ||0));
                if (hasSlabs.s12) row.push(parseFloat(r.cgst_6    ||0), parseFloat(r.sgst_6    ||0));
                if (hasSlabs.s18) row.push(parseFloat(r.cgst_9    ||0), parseFloat(r.sgst_9    ||0));
                if (hasSlabs.s28) row.push(parseFloat(r.cgst_14   ||0), parseFloat(r.sgst_14   ||0));
                if (hasSlabs.s40) row.push(parseFloat(r.cgst_14_40||0), parseFloat(r.sgst_14_40||0), parseFloat(r.cess_12||0));
                wsData.push(row);
            });

            const wb = XLSX.utils.book_new();
            const ws = XLSX.utils.aoa_to_sheet(wsData);
            XLSX.utils.book_append_sheet(wb, ws, "Tax Report Inventory");
            XLSX.writeFile(wb, "Tax_Report_Inventory.xlsx");
        });

        /* ── Print ── */
        $('#printButton').on('click', function () {
            if (!table) return;
            const fromdate = $('#fromdate').val();
            const todate   = $('#todate').val();
            const itemtype = $('#itemtype').val();
            const allData  = table.getData();
            if (!allData.length) return;

            const hasSlabs = {
                s5:  allData.some(r => parseFloat(r.cgst_2_5   || 0) > 0),
                s12: allData.some(r => parseFloat(r.cgst_6     || 0) > 0),
                s18: allData.some(r => parseFloat(r.cgst_9     || 0) > 0),
                s28: allData.some(r => parseFloat(r.cgst_14    || 0) > 0),
                s40: allData.some(r => parseFloat(r.cgst_14_40 || 0) > 0),
            };

            let thExtra = '';
            if (hasSlabs.s5)  thExtra += '<th>CGST (PURCHASE) 2.5%</th><th>SGST (PURCHASE) 2.5%</th>';
            if (hasSlabs.s12) thExtra += '<th>CGST (PURCHASE) 6%</th><th>SGST (PURCHASE) 6%</th>';
            if (hasSlabs.s18) thExtra += '<th>CGST (PURCHASE) 9%</th><th>SGST (PURCHASE) 9%</th>';
            if (hasSlabs.s28) thExtra += '<th>CGST (PURCHASE) 14%</th><th>SGST (PURCHASE) 14%</th>';
            if (hasSlabs.s40) thExtra += '<th>CGST (PURCHASE) 14%</th><th>SGST (PURCHASE) 14%</th><th>CESS (PURCHASE) 12%</th>';

            let rows = '';
            allData.forEach(function (r) {
                let tdExtra = '';
                if (hasSlabs.s5)  tdExtra += '<td>' + fmt2(r.cgst_2_5)   + '</td><td>' + fmt2(r.sgst_2_5)   + '</td>';
                if (hasSlabs.s12) tdExtra += '<td>' + fmt2(r.cgst_6)     + '</td><td>' + fmt2(r.sgst_6)     + '</td>';
                if (hasSlabs.s18) tdExtra += '<td>' + fmt2(r.cgst_9)     + '</td><td>' + fmt2(r.sgst_9)     + '</td>';
                if (hasSlabs.s28) tdExtra += '<td>' + fmt2(r.cgst_14)    + '</td><td>' + fmt2(r.sgst_14)    + '</td>';
                if (hasSlabs.s40) tdExtra += '<td>' + fmt2(r.cgst_14_40) + '</td><td>' + fmt2(r.sgst_14_40) + '</td><td>' + fmt2(r.cess_12) + '</td>';

                rows += '<tr>'
                    + '<td>' + (r.TaxInvoiceNo            ?? '') + '</td>'
                    + '<td>' + (r.DateOfTaxInvoice         ?? '') + '</td>'
                    + '<td>' + (r.PartyBillNo              ?? '') + '</td>'
                    + '<td>' + (r.PartyBillDT              ?? '') + '</td>'
                    + '<td>' + (r.ItemName                 ?? '') + '</td>'
                    + '<td>' + (r.CommodityCode            ?? '') + '</td>'
                    + '<td style="text-align:right;">' + (r.QtyMeasure ?? '') + '</td>'
                    + '<td style="text-align:right;">' + fmt2(r.TaxableValueOfGoods)      + '</td>'
                    + '<td style="text-align:right;">' + fmt2(r.AmountOfTaxCharged)       + '</td>'
                    + '<td style="text-align:right;">' + fmt2(r.TotalAmountOfTaxInvoice)  + '</td>'
                    + '<td>' + (r.VendorName    ?? '') + '</td>'
                    + '<td>' + (r.VendorAddress ?? '') + '</td>'
                    + '<td>' + (r.City          ?? '') + '</td>'
                    + '<td>' + (r.State         ?? '') + '</td>'
                    + '<td>' + (r.Pin           ?? '') + '</td>'
                    + '<td>' + (r.Tin           ?? '') + '</td>'
                    + tdExtra
                    + '</tr>';
            });

            const win = window.open('', '_blank', 'width=1400,height=900');
            win.document.write(`<!DOCTYPE html><html><head>
                <title>Tax Report Inventory</title>
                <style>
                    body{font-family:Arial,sans-serif;font-size:10px;margin:12px;}
                    h2,h4,p{margin:2px 0;text-align:center;}
                    .info{text-align:left;font-size:11px;margin:6px 0 2px;}
                    table{width:100%;border-collapse:collapse;margin-top:8px;}
                    th{background:#e0e0e0;border:1px solid #999;padding:3px 4px;font-size:9px;}
                    td{border:1px solid #ccc;padding:2px 4px;font-size:9px;}
                    @media print{@page{size:A4 landscape;margin:1cm;}}
                </style>
            </head><body>
                <h2>{{ $company->comp_name }}</h2>
                <p>{{ $company->address1 }}</p>
                <p>{{ $statename }} - {{ $company->city }} - {{ $company->pin }}</p>
                <h4>Tax Report (Inventory)</h4>
                <p class="info">
                    <strong>From :</strong> ${fmtDate(fromdate)}
                    &nbsp;&nbsp;<strong>To :</strong> ${fmtDate(todate)}
                    &nbsp;&nbsp;<strong>Item Type :</strong> ${itemtype}
                </p>
                <table>
                    <thead><tr>
                        <th>Tax Invoice No.</th>
                        <th>Date Of Tax Invoice</th>
                        <th>Party Bill No.</th>
                        <th>Party Bill Date</th>
                        <th>Item Name</th>
                        <th>Commodity Code</th>
                        <th>Quantity/Measure</th>
                        <th>Taxable Value Of Goods</th>
                        <th>Amount Of Tax Charged</th>
                        <th>Total Amount Of Tax-invoice</th>
                        <th>Vendor Name</th>
                        <th>Vendor Address</th>
                        <th>City</th>
                        <th>State</th>
                        <th>Pin</th>
                        <th>GST</th>
                        ${thExtra}
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
