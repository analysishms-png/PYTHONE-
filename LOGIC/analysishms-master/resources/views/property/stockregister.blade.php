@extends('property.layouts.main')

@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <form>
                                <div class="text-center titlep mb-4">
                                    <h3>{{ companydata()->comp_name }}</h3>
                                    <p class="mb-1">{{ companydata()->address1 }}</p>
                                    <p class="mb-1">
                                        {{ $statename . ' - ' . companydata()->city . ' - ' . companydata()->pin }}</p>
                                    <p class="mb-0 font-weight-bold">Stock Register Report</p>
                                </div>

                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ companydata()->start_dt }}" name="start_dt"
                                        id="start_dt">
                                    <input type="hidden" value="{{ companydata()->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ ncurdate() }}" name="ncurdatef" id="ncurdatef">

                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control"
                                                name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control"
                                                name="todate" id="todate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <label for="type" class="col-form-label">Type</label>
                                        <select class="form-control" name="type" id="type">
                                            <option value="All" selected>All</option>
                                            <option value="Finish">Finish</option>
                                            <option value="SemiFinish">Semi Finish</option>
                                            <option value="Consumables">Consumables</option>
                                            <option value="RawMaterial">Raw Material</option>
                                            <option value="StoreItem">Store Item</option>
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="valuation" class="col-form-label">Valuation</label>
                                        <select class="form-control" name="valuation" id="valuation">
                                            <option value="Actual" selected>Actual</option>
                                            <option value="LastPurchaseRate">Last Purchase Rate</option>
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="storetype" class="col-form-label">Store Type</label>
                                        <select class="form-control" name="storetype" id="storetype"
                                            onchange="handleStoreTypeChange();">
                                            <option value="main_store" selected>Main Store</option>
                                            <option value="sub_store">Sub Store</option>
                                            <option value="house_keeping">House Keeping</option>
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="godownDropdown">Godown</label>
                                        <select class="form-control" name="godownDropdown" id="godownDropdown"></select>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn rhead btn-outline-primary" id="itemgrplistbtn">Item Group <i
                                                class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeditemgrp" style="display:none;">
                                            <li>
                                                <input type="text" placeholder="Search Group..." class="form-control groupsearch">
                                            </li>
                                            <li> <input type="checkbox" id="checkallitemgrps"> <span>Select All <span
                                                        class="tcount">{{ count($itemgrp) }}</span></span></li>
                                            @foreach ($itemgrp as $item)
                                                <li data-groupname="{{ $item->name }}" class="groupnameli">
                                                    <input class="groupcheckbox" value="{{ $item->code }}"
                                                        type="checkbox"> <span>{{ $item->name }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    <div class="col-md-3">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn rhead btn-outline-secondary" id="itemlistbtn">Items <i
                                                class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeditems" style="display:none;">
                                            <li>
                                                <input type="text" placeholder="Search Item..." class="form-control itemsearch">
                                            </li>
                                            <li> <input type="checkbox" id="checkallitems"> <span>Select All <span
                                                        class="tcount"></span></span></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="text-center mt-2 mb-2">
                                    <button type="button" id="refreshbutton"
                                        class="btn-refresh btn btn-success btn-sm">Refresh</button>
                                    <button type="button" id="printButton" class="btn btn-info btn-sm"
                                        style="display:none;"><i class="fa fa-print"></i> Print</button>
                                    <button type="button" id="excelButton" class="btn btn-success btn-sm"
                                        style="display:none;"><i class="fa fa-file-excel"></i> Export to
                                        Excel</button>
                                </div>

                                <div class="mt-4">
                                    <div class="custom-header" id="stockTableHeader">Stock Register</div>
                                    <div class="mt-3" id="stockTable"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        let stockRegisterTable = null;

        function handleStoreTypeChange() {
            var storetype = $('#storetype').val();
            $.ajax({
                url: '/fetchGodownByStoreType',
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    storetype: storetype
                },
                success: function(response) {
                    $('#godownDropdown').html('<option value="">Select</option>');
                    if (response.length > 0) {
                        response.forEach(function(godown) {
                            if (storetype !== 'main_store' && godown.name.toLowerCase().includes('purchase')) {
                                return;
                            }
                            $('#godownDropdown').append('<option value="' + godown.dcode + '">' + godown.name + '</option>');
                        });
                        if ($('#godownDropdown option').length > 1) {
                            $('#godownDropdown').prop('selectedIndex', 1);
                        }
                        // Auto-check all item groups and fetch items
                        $('#checkallitemgrps').prop('checked', true);
                        $('.groupcheckbox').prop('checked', true);
                        stockRegisterFetchItemsByGroup();
                    }
                }
            });
        }

        function stockRegisterFetchItemsByGroup() {
            let checkedgroupcode = $('.groupcheckbox:checked').map(function() {
                return $(this).val();
            }).get();
            $('#listeditems li:gt(1)').remove();
            $('#checkallitems').prop('checked', false);
            $('#listeditems .tcount').text(0);
            if (checkedgroupcode.length > 0) {
                $.ajax({
                    method: 'POST',
                    url: 'getitemsbygroup',
                    data: {
                        checkedgroupcode: checkedgroupcode,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(response) {
                        $('#listeditems .tcount').text(response.length);
                        response.forEach((idata) => {
                            $('#listeditems').append(
                                `<li data-itemname="${idata.Name}" class="itemnameli"><input class="itemcheckbox" value="${idata.Code}" type="checkbox" checked> <span>${idata.Name}</span></li>`
                            );
                        });
                        $('#checkallitems').prop('checked', true);
                    }
                });
            }
        }

        function toggleList(btn, list) {
            $(btn).click(function() {
                $(list).toggle();
            });
        }

        $(document).ready(function() {

            function hasVisibleStockValues(row) {
                const numericFields = ['rec_qty', 'rec_value', 'iss_qty', 'iss_value', 'bal_qty', 'bal_value'];
                return numericFields.some(field => Number(row[field] || 0) !== 0);
            }

            handleStoreTypeChange();

            dynamicSearch('.groupsearch', 'groupname', '.groupnameli');
            dynamicSearch('.itemsearch', 'itemname', '.itemnameli');

            $('#checkallitemgrps').change(function() {
                $('.groupcheckbox').prop('checked', $(this).is(':checked'));
                stockRegisterFetchItemsByGroup();
            });

            $('#checkallitems').change(function() {
                $('.itemcheckbox').prop('checked', $(this).is(':checked'));
            });

            toggleList("#itemgrplistbtn", "#listeditemgrp");
            toggleList("#itemlistbtn", "#listeditems");

            $(document).on('change', '.groupcheckbox', function() {
                stockRegisterFetchItemsByGroup();
            });

            $('#refreshbutton').click(function() {
                // Clear previous messages
                $('#validation-msg').text('');

                const fromdate = $('#fromdate').val();
                const todate = $('#todate').val();
                const storeType = $('#storetype').val();
                const godown = $('#godownDropdown').val();
                const valuation = $('#valuation').val();
                const type = $('#type').val();

                let allitems = $('.itemcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();

                // 2. Updated Validation: Shows on web page instead of pop-up
                if (!fromdate || !todate) {
                    $('#validation-msg').text('Warning: Please select both From and To dates.');
                    return;
                }

                if (!storeType) {
                    $('#validation-msg').text('Warning: Please select a Store Type.');
                    return;
                }

                if (!godown || godown === "") {
                    $('#validation-msg').text('Warning: Please select a Godown.');
                    return;
                }

                if (allitems.length === 0) {
                    $('#validation-msg').text('Warning: Please select at least one Item from the list.');
                    return;
                }

                // 3. Proceed with AJAX if all checks pass
                $.ajax({
                    url: '/fetchValuationData',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        fromdate,
                        todate,
                        type,
                        valuation,
                        storeType,
                        godown,
                        items: allitems
                    },
                    success: function(response) {
                        $('#stockTable').empty();
                        const rawData = response.reportdata || [];
                        const finalData = [];
                        let hasActualData = false;

                        if (rawData.length === 0) {
                            $('#stockTable').html(
                                '<div class="alert alert-warning">No Data Available</div>');
                            $('#printButton, #excelButton').hide();
                            return;
                        }

                        rawData.forEach(item => {
                            const unitRaw = String(item.unitname || '').trim();
                            const unitNormalized = unitRaw.replace(/\s+/g, '');
                            const unitSuffix = (unitNormalized && unitNormalized !== '/') ? ` (${unitRaw})` : '';
                            const groupName = `${item.itemname || ''}${unitSuffix}`;

                            // Get actual opening values from backend data
                            let opQty = Number(item.opqty || 0);
                            let opAmt = Number(item.opamt || 0);
                            let opIssQty = Number(item.opissuedqty || 0);
                            let opIssAmt = Number(item.opissuedamt || 0);
                            let hasTxn = item.transactions && item.transactions.length >
                                0;

                            // Always show selected items even if there is no activity in the date range.
                            // Balance can be 0, but the item group should still appear.
                            hasActualData = true;

                            let balQty = opQty - opIssQty;
                            let balVal = opAmt - opIssAmt;

                            // Add opening row if there are opening values
                            if (opQty !== 0 || opAmt !== 0 || opIssQty !== 0 || opIssAmt !== 0) {
                                const openingRow = {
                                    group: groupName,
                                    item_name: 'Opening',
                                    rec_qty: balQty.toFixed(3),
                                    rec_value: balVal.toFixed(2),
                                    iss_qty: (0).toFixed(3),
                                    iss_value: (0).toFixed(2),
                                    bal_qty: balQty.toFixed(3),
                                    bal_value: balVal.toFixed(2)
                                };
                                if (hasVisibleStockValues(openingRow)) {
                                    finalData.push(openingRow);
                                }
                            }

                            // Totals should reflect only rows shown as TRANSACTION (selected date range),
                            // not opening balances.
                            let tRecQty = 0,
                                tRecAmt = 0,
                                tIssQty = 0,
                                tIssAmt = 0;

                            if (hasTxn) {
                                item.transactions.forEach(txn => {
                                    const rQ = Number(txn.qtyrec || 0);
                                    const iQ = Number(txn.qtyiss || 0);
                                    const amt = Number(txn.amount || 0);
                                    let rV = (rQ > 0) ? amt : 0;
                                    let iV = (iQ > 0) ? amt : 0;

                                    tRecQty += rQ;
                                    tRecAmt += rV;
                                    tIssQty += iQ;
                                    tIssAmt += iV;
                                    balQty += (rQ - iQ);
                                    balVal += (rV - iV);

                                    const transactionRow = {
                                        group: groupName,
                                        item_name: txn.vdate,
                                        type: 'TRANSACTION',
                                        voucher_no: txn.vtype + '-' +
                                            txn.vno,
                                        particulars: txn.particular,
                                        rec_qty: rQ.toFixed(3),
                                        rec_value: rV.toFixed(2),
                                        iss_qty: iQ.toFixed(3),
                                        iss_value: iV.toFixed(2),
                                        bal_qty: balQty.toFixed(3),
                                        bal_value: balVal.toFixed(2)
                                    };

                                    if (hasVisibleStockValues(transactionRow)) {
                                        finalData.push(transactionRow);
                                    }
                                });
                            }

                            const totalRow = {
                                group: groupName,
                                item_name: 'Total',
                                rec_qty: hasTxn ? tRecQty.toFixed(3) : '0.000',
                                rec_value: hasTxn ? tRecAmt.toFixed(2) : '0.00',
                                iss_qty: hasTxn ? tIssQty.toFixed(3) : '0.000',
                                iss_value: hasTxn ? tIssAmt.toFixed(2) : '0.00',
                                bal_qty: balQty.toFixed(3),
                                bal_value: balVal.toFixed(2)
                            };

                            // Only show Total row if it has visible stock values (not all zeros)
                            if (hasVisibleStockValues(totalRow)) {
                                finalData.push(totalRow);
                            }
                        });

                        if (!hasActualData) {
                            $('#stockTable').html(
                                '<div class="alert alert-warning">No Data Available</div>');
                            $('#printButton, #excelButton').hide();
                            return;
                        }

                        // Calculate Grand Total — sum only the Bal Value from each item's Total row
                        const grandTotalBalVal = finalData
                            .filter(row => row.item_name === 'Total')
                            .reduce((sum, row) => sum + Number(row.bal_value || 0), 0);

                        stockRegisterTable = new Tabulator("#stockTable", {
                            data: finalData,
                            layout: "fitColumns",
                            groupBy: "group",
                            groupHeader: function(value, count, data, group) {
                                return value;
                            },
                            rowFormatter: function(row) {
                                const d = row.getData();
                                if (d.item_name === 'Total') {
                                    const el = row.getElement();
                                    el.style.fontWeight = 'bold';
                                    el.style.borderTop = '2px solid #555';
                                }
                            },
                            columns: [
                                { title: "Item/Date",  field: "item_name",   widthGrow: 2 },
                                { title: "Type",       field: "type" },
                                { title: "Vou No.",    field: "voucher_no" },
                                { title: "Particulars",field: "particulars" },
                                { title: "Rec Qty",    field: "rec_qty",    hozAlign: "right" },
                                { title: "Rec Val",    field: "rec_value",  hozAlign: "right" },
                                { title: "Iss Qty",    field: "iss_qty",    hozAlign: "right" },
                                { title: "Iss Val",    field: "iss_value",  hozAlign: "right" },
                                { title: "Bal Qty",    field: "bal_qty",    hozAlign: "right" },
                                { title: "Bal Val",    field: "bal_value",  hozAlign: "right" }
                            ]
                        });

                        // Grand Total row — plain, only Bal Value total shown below the table
                        $('#grandTotalRow').remove();
                        $('#stockTable').after(`
                            <table id="grandTotalRow" style="width:100%; border-collapse:collapse; margin-top:10px; border:1px solid #dee2e6;">
                                <tr>
                                    <td colspan="9" style="padding:6px 8px; font-weight:bold; border:1px solid #dee2e6;">Grand Total</td>
                                    <td style="padding:6px 8px; font-weight:bold; text-align:right; border:1px solid #dee2e6;">${grandTotalBalVal.toFixed(2)}</td>
                                </tr>
                            </table>
                        `);

                        $('#printButton, #excelButton').show();
                    }
                });
            });

            $('#printButton').click(function() {
                if (!stockRegisterTable) return;

                const fromdate = $('#fromdate').val();
                const todate   = $('#todate').val();
                const allData  = stockRegisterTable.getData();
                const grandTotalVal = $('#grandTotalRow td:last').text().trim();

                // Build grouped rows
                let groups = {};
                allData.forEach(row => {
                    if (!groups[row.group]) groups[row.group] = [];
                    groups[row.group].push(row);
                });

                let tableRows = '';
                Object.keys(groups).forEach(grp => {
                    if (!grp) return;
                    tableRows += `<tr style="background:#ddd;font-weight:bold;">
                        <td colspan="10" style="padding:4px 6px;">${grp}</td>
                    </tr>`;
                    groups[grp].forEach(row => {
                        const isTotal = row.item_name === 'Total';
                        const style = isTotal ? 'font-weight:bold;border-top:2px solid #555;' : '';
                        tableRows += `<tr style="${style}">
                            <td>${row.item_name ?? ''}</td>
                            <td>${row.type ?? ''}</td>
                            <td>${row.voucher_no ?? ''}</td>
                            <td>${row.particulars ?? ''}</td>
                            <td style="text-align:right;">${row.rec_qty ?? ''}</td>
                            <td style="text-align:right;">${row.rec_value ?? ''}</td>
                            <td style="text-align:right;">${row.iss_qty ?? ''}</td>
                            <td style="text-align:right;">${row.iss_value ?? ''}</td>
                            <td style="text-align:right;">${row.bal_qty ?? ''}</td>
                            <td style="text-align:right;">${row.bal_value ?? ''}</td>
                        </tr>`;
                    });
                });

                // Grand Total row — no color, plain, bold
                tableRows += `<tr style="font-weight:bold;border-top:2px solid #333;">
                    <td colspan="9" style="padding:5px 6px;">Grand Total</td>
                    <td style="text-align:right;padding:5px 6px;">${grandTotalVal}</td>
                </tr>`;

                const printWin = window.open('', '_blank', 'width=1100,height=800');
                printWin.document.write(`<!DOCTYPE html><html><head>
                    <title>Stock Register</title>
                    <style>
                        body { font-family: Arial, sans-serif; font-size: 11px; margin: 15px; }
                        h2,h4,p { margin:2px 0; text-align:center; }
                        table { width:100%; border-collapse:collapse; margin-top:10px; }
                        th { background:#e0e0e0; border:1px solid #999; padding:4px 5px; font-size:10px; }
                        td { border:1px solid #ccc; padding:3px 5px; font-size:10px; }
                        @media print { @page { size: A4 landscape; margin:1cm; } }
                    </style>
                </head><body>
                    <h2>{{ companydata()->comp_name }}</h2>
                    <p>{{ companydata()->address1 }}</p>
                    <p>{{ $statename }} - {{ companydata()->city }} - {{ companydata()->pin }}</p>
                    <h4>Stock Register Report</h4>
                    <p>From: ${fromdate} &nbsp;&nbsp; To: ${todate}</p>
                    <table>
                        <thead><tr>
                            <th>Item/Date</th><th>Type</th><th>Vou No.</th><th>Particulars</th>
                            <th>Rec Qty</th><th>Rec Val</th>
                            <th>Iss Qty</th><th>Iss Val</th>
                            <th>Bal Qty</th><th>Bal Val</th>
                        </tr></thead>
                        <tbody>${tableRows}</tbody>
                    </table>
                </body></html>`);
                printWin.document.close();
                printWin.focus();
                setTimeout(() => { printWin.print(); printWin.close(); }, 500);
            });
            $('#excelButton').click(function() {
                if (stockRegisterTable) stockRegisterTable.download("xlsx", "stock.xlsx");
            });
        });

        function toggleList(btn, list) {
            $(btn).click(function() {
                $(list).toggle();
            });
        }
    </script>
@endsection
