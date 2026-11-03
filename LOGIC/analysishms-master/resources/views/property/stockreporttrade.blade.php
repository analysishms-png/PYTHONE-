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
                                        {{ $statename . ' - ' . companydata()->city . ' - ' . companydata()->pin }}
                                    </p>
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
                                            <input type="date" value="{{ ncurdate() }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <select class="form-control" id="storetype" name="storetype">
                                            <option value="">Select Type</option>
                                            <option value="Trade Item">Trade Item</option>
                                            <option value="Liquor">Liquor</option>
                                            <option value="Manufactured Item">Manufactured Item</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3" id="kitchenContainer" style="display:none;">
                                        <div class="form-group">
                                            <label for="kitchen" class="col-form-label">Kitchen</label>
                                            <select class="form-control" id="kitchen" name="kitchen">
                                                <option value="">Select Kitchen</option>
                                                @foreach ($godown as $gd)
                                                    <option value="{{ $gd->dcode }}">{{ $gd->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3" id="itemGroupContainer">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn rhead btn-outline-primary" id="itemgrplistbtn">Item Group <i
                                                class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeditemgrp" style="display:none;">
                                              <li>
                                                <input type="text" placeholder="Search Item Group..." class="form-control deptsearch">
                                            </li>
                                            <li> <input type="checkbox" id="checkallitemgrps"> <span>Select All <span
                                                        class="tcount"></span></span></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3" id="itemListContainer">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn rhead btn-outline-secondary" id="itemlistbtn">Items <i
                                                class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeditems" style="display:none;">
                                                <li>
                                                    <input type="text" placeholder="Search Item..." class="form-control itemsearch">
                                                </li>
                                            <li> <input type="checkbox" id="checkallitems"> <span>Select All <span
                                                        class="tcount"></span></span></li>
                                                         <hr class="my-1">
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
                                    <div class="custom-header" id="stockTableHeader">Stock Trade</div>
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
        $(document).ready(function() {
            let table;

            $('#checkalldepart').change(function() {
                $('.deptcheckbox').prop('checked', $(this).is(':checked'));
            });

            $('#storetype').change(function() {
                const storetype = $(this).val();
                if (storetype === 'Trade Item') {
                    // Trade Item: only items are used, kitchen hidden
                    $('#itemGroupContainer').hide();
                    $('#itemListContainer').show();
                    $('#kitchenContainer').hide();
                    $('#listeditemgrp').hide();
                    $('#itemlistbtn').show();
                    $('#listeditems').hide();
                    fetchTradeItemList();
                } else if (storetype === 'Liquor') {
                    // Liquor: item groups/items visible, kitchen hidden
                    $('#itemGroupContainer, #itemListContainer').show();
                    $('#kitchenContainer').hide();
                    $('#itemgrplistbtn').show();
                    $('#listeditemgrp').hide();
                    $('#itemlistbtn').show();
                    $('#listeditems').hide();
                    fetchdepartbytype();
                } else if (storetype === 'Manufactured Item') {
                    // Manufactured Item: only kitchen selector, no item group/items
                    $('#itemGroupContainer, #itemListContainer').hide();
                    $('#listeditemgrp, #listeditems').hide();
                    $('#kitchenContainer').show();
                } else {
                    // Default: hide kitchen and item group/items until type selected
                    $('#kitchenContainer').hide();
                    $('#itemGroupContainer, #itemListContainer').show();
                    $('#itemgrplistbtn, #itemlistbtn').show();
                }
            });

            $('#kitchenContainer').hide();

            // Auto-select Department on page load
            setTimeout(() => {
                $('#checkalldepart').prop('checked', true).trigger('change');
            }, 500);

            setTimeout(() => {
                $('#checkallitemgrps').prop('checked', true).trigger('change');
            }, 1000);

            // Auto-select Items on page load
            setTimeout(() => {
                $('#checkallitems').prop('checked', true).trigger('change');
            }, 1300);

            $('#checkallitemgrps').change(function() {
                $('.groupcheckbox').prop('checked', $(this).is(':checked'));
                fetchitembygroup();
            });

            $('#checkallitems').change(function() {
                $('.itemcheckbox').prop('checked', $(this).is(':checked'));
            });

            toggleList("#deptbtn", "#listeddepart");
            toggleList("#typebtn", "#listeditemtype");
            toggleList("#itemgrplistbtn", "#listeditemgrp");
            toggleList("#itemlistbtn", "#listeditems");

            $(document).on('change', '.groupcheckbox', function() {
                fetchitembygroup();
            });

            function filterList(inputSelector, itemSelector, dataAttribute) {
                $(inputSelector).on('keyup', function() {
                    const query = $(this).val().trim().toLowerCase();
                    $(itemSelector).each(function() {
                        const value = String($(this).data(dataAttribute) || $(this).text()).toLowerCase();
                        $(this).toggle(query === '' || value.indexOf(query) !== -1);
                    });
                });
            }

            filterList('.deptsearch', '#listeditemgrp li.group-list-item', 'groupname');
            filterList('.itemsearch', '#listeditems li.item-list-item', 'itemname');

            function fetchTradeItemList() {
                $('#listeditems li:not(:first-child)').remove();
                $.post('gettradeitemslist', {
                    storetype: 'Trade Item',
                    _token: '{{ csrf_token() }}'
                }, function(response) {
                    const itemsArray = Array.isArray(response) ? response : (response.reportdata || []);
                    $('#listeditems .tcount').text(itemsArray.length);
                    itemsArray.forEach(idata => {
                        $('#listeditems').append(
                            `<li class="item-list-item" data-itemname="${idata.Name.toLowerCase()}"><input class="itemcheckbox" value="${idata.Code}" type="checkbox" checked> <span>${idata.Name}</span></li>`
                        );
                    });
                });
            }

            function fetchitembygroup() {
                const checkedgroupcode = $('.groupcheckbox:checked').map(function() { return $(this).val(); }).get();
                const storetype = $('#storetype').val();
                const alldept = $('.deptcheckbox:checked').map(function() { return $(this).val(); }).get();
                $('#listeditems li:not(:first-child)').remove();
                if (!checkedgroupcode.length) return;
                $.post('getitemsbygrouptreadstocktrade', {
                    checkedgroupcode,
                    storetype,
                    dept: alldept,
                    _token: '{{ csrf_token() }}'
                }, function(response) {
                    const itemsArray = Array.isArray(response) ? response : (response.reportdata || []);
                    $('#listeditems .tcount').text(itemsArray.length);
                    itemsArray.forEach(idata => {
                        $('#listeditems').append(
                            `<li class="item-list-item" data-itemname="${idata.Name.toLowerCase()}"><input class="itemcheckbox" value="${idata.Code}" type="checkbox" checked> <span>${idata.Name}</span></li>`
                        );
                    });
                });
            }

            function fetchdepartbytype() {
                const storetype = $('#storetype').val();
                const checkeddepart = $('#listeddepart li input[type="checkbox"]:checked').not('#checkalldepart').map(function() { return $(this).val(); }).get();
                $('#listeditemgrp li:not(:first-child)').remove();
                $('#listeditems li:not(:first-child)').remove();

                if (!storetype) return;
                $.post('getdepartbytype', {
                    storetype,
                    checkeddepart,
                    _token: '{{ csrf_token() }}'
                }, function(response) {
                    const groupArray = Array.isArray(response) ? response : (response.itemgrp || []);
                    $('#listeditemgrp .tcount').text(groupArray.length);
                    groupArray.forEach(idata => {
                        $('#listeditemgrp').append(
                            `<li class="group-list-item" data-groupname="${idata.Name.toLowerCase()}"><input class="groupcheckbox" value="${idata.Code}" type="checkbox" checked> <span>${idata.Name}</span></li>`
                        );
                    });
                    $('#checkallitemgrps').trigger('change');
                });
            }

            $('#refreshbutton').click(function() {
                // Clear previous messages
                $('#validation-msg').text('');

                const fromdate = $('#fromdate').val();
                const todate = $('#todate').val();

                // All Item
                let allitems = $('.itemcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();
                // All Godown
                let godownCodes = $('.deptcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();
                // Get single type value from select
                let storetype = $('#storetype').val();
                // Item Groups
                let allitemgrps = $('.groupcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();
                let selectedKitchen = $('#kitchen').val();

                // 2. Updated Validation: Shows on web page instead of pop-up
                if (!fromdate || !todate) {
                    alert('Warning: Please select both From and To dates.');
                    return;
                }

                if (!storetype) {
                    alert('Warning: Please select a Type from the dropdown.');
                    return;
                }

                if (storetype === 'Manufactured Item') {
                    if (!selectedKitchen) {
                        alert('Warning: Please select one Kitchen.');
                        return;
                    }
                }

                // For Trade Item: Item Group and Items are optional
                // For Liquor: Items and Item Groups are mandatory
                if (storetype === 'Liquor') {
                    if (allitems.length === 0) {
                        alert('Warning: Please select at least one Item from the list.');
                        return;
                    }
                    if (allitemgrps.length === 0) {
                        alert('Warning: Please select at least one Item Group from the list.');
                        return;
                    }
                }

                // 3. Proceed with AJAX if all checks pass
                $('#stockTable').html('<div class="text-center"><div class="spinner-border text-primary" role="status"><span class="sr-only">Loading...</span></div><p class="mt-2">Loading data...</p></div>');

                $.ajax({
                    url: '/getreportstocktradetype',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        fromdate,
                        todate,
                        //godowncodes: '',
                        storetype: storetype, // Send single value, not array
                        itemgrps: allitemgrps,
                        items: allitems,
                        kitchen: selectedKitchen
                    },
                    success: function(response) {
                        $('#stockTable').empty();
                        const rawData = Array.isArray(response) ? response : (response.reportdata || []);

                        // LOG RAW BBAR DATA IMMEDIATELY
                        const mrcrCodeByItem = {};
                        if (storetype === 'Trade Item') {
                            rawData.forEach(item => {
                                if (item.VType === 'MRCR' && item.Item) {
                                    mrcrCodeByItem[item.Item] = item.Code || item.Item;
                                }
                            });
                        }

                        if (rawData.length === 0) {
                            $('#stockTable').html(
                                '<div class="alert alert-warning">No Data Available</div>');
                            $('#printButton, #excelButton').hide();
                            return;
                        }

                        // Map response data directly to table format
                        const finalData = rawData.map(item => {
                            const qtyrec = parseFloat(item.recdqty || item.qtyrec || item.QtyRec || 0) || 0;
                            const qtyiss = parseFloat(item.qtyiss || item.QtyIss || 0) || 0;
                            const convRatio = parseFloat(item.ConvRatio) || 1;
                            const wtqty = parseFloat(item.wtqty) || 0;
                            const opening = parseFloat(item.OpeningStock || item.opening || 0) || 0;

                            // Calculate Purchase, Sell, and Balance based on storetype
                            let purchaseQty = 0;
                            let sellQty = 0;
                            let balanceQty = 0;
                            let openingQty = 0;

                            if (storetype === 'Trade Item') {
                                // Trade Item: Opening, PBPC/KSREC/MRCR (purchase), BRES/KSISS (sale/issue)
                                if (item.VType === 'Opening') {
                                    openingQty = qtyrec;
                                    balanceQty = qtyrec;
                                } else if (item.VType === 'KSREC' || item.VType === 'PBPC' || item.VType === 'MRCR') {
                                    // Purchase receipt
                                    purchaseQty = qtyrec;
                                    balanceQty = qtyrec;
                                } else {
                                    // Sale/Issue
                                    sellQty = qtyiss;
                                    balanceQty = -qtyiss;
                                }
                            } else {
                                // Liquor: Purchase in Bottles (ConvRatio=0ML/Bottle), Sale in Pags (wtqty=50ML/Pag)
                                if (item.VType === 'Opening') {
                                    openingQty = qtyrec;
                                    // Opening is stored in bottles with ML fraction
                                    balanceQty = qtyrec;
                                } else {
                                    // Check purchase and sale independently (both can happen in same row)
                                    if (qtyrec > 0) {
                                        // Any incoming quantity is purchase (STOP, PBPB, etc.)
                                        purchaseQty = qtyrec * convRatio; // Store as ML
                                        balanceQty += qtyrec;
                                    }
                                    if (qtyiss > 0) {
                                        // Any outgoing quantity is sale (BBAR, etc.) - convert pags to ML
                                        // Use wtqty if available, otherwise default to 50 for standard pag
                                        const saleUnitML = wtqty > 0 ? wtqty : 0;
                                        sellQty = qtyiss * saleUnitML; // Convert to ML
                                        balanceQty -= qtyiss;
                                    }
                                }
                            }

                            // Grouping: Trade Item groups by Name, Liquor has special parent item logic
                            let groupingName = item.Name || item.name || '';

                            if (storetype === 'Trade Item') {
                                groupingName = item.Name || item.name || '';
                            } else {
                                // For Liquor: Use parent item name for grouped balance calculation
                                if (item.ParentItemCode && item.ParentItemCode !== 0) {
                                    const parentItem = rawData.find(p => p.ParentItemCode === item.ParentItemCode || (p.Code === item.ParentItemCode && (p.VType === 'Opening' || p.VType === 'PBPB')));
                                    if (parentItem) {
                                        groupingName = parentItem.Name || item.Name || item.name || '';
                                    } else {
                                        groupingName = item.Name || item.name || '';
                                    }
                                } else {
                                    groupingName = item.Name || item.name || '';
                                }
                            }

                            return {
                                VDate: item.VDate,
                                VType: item.VType,
                                VNo: item.VNo,
                                Amount: item.Amount,
                                Item: item.Item,
                                Name: item.Name || item.name,
                                ParentItemCode: item.ParentItemCode || 0,
                                Code: item.Code || item.Item || '',
                                ConvRatio: convRatio,
                                wtqty: wtqty,
                                qtyiss: qtyiss,
                                recdqty: qtyrec,
                                purchaseQty: purchaseQty,
                                openingQty: openingQty,
                                sellQty: sellQty,
                                balanceQty: balanceQty,
                                department_name: item.department_name || 'N/A',
                                groupingName: groupingName,
                                opening: opening,
                                // Manufactured Item specific fields
                                con_item: item.con_item || '',
                                con_qty: parseFloat(item.con_qty) || 0,
                                balance: parseFloat(item.balance) || 0,
                            };
                        });

                        // Calculate cumulative balance per group
                        const groupedData = {};
                        finalData.forEach(item => {
                            if (!groupedData[item.groupingName]) {
                                groupedData[item.groupingName] = [];
                            }
                            groupedData[item.groupingName].push(item);
                        });

                        // Calculate running balance for each group
                        Object.keys(groupedData).forEach(groupName => {
                            let runningQty = 0; // For Trade Item
                            let cumulativeOpening = 0; // Opening + Purchase - Sale formula
                            let cumulativePurchase = 0;
                            let cumulativeSale = 0;
                            let openingProcessed = false;
                            let totalML = 0;

                            // For Liquor: take ConvRatio/wtqty from opening if missing elsewhere
                            const groupItems = groupedData[groupName];
                            const groupConvRatio = groupItems.reduce((val, row) => {
                                const ratio = parseFloat(row.ConvRatio) || 0;
                                return val || ratio;
                            }, 0) || 0;
                            const groupWtqty = groupItems.reduce((val, row) => {
                                const wt = parseFloat(row.wtqty) || 0;
                                return val || wt;
                            }, 0) || 0;

                            groupedData[groupName].forEach((item, itemIndex) => {
                                const convRatio = storetype === 'Trade Item' ? 1 : groupConvRatio;
                                const saleUnitRatio = storetype === 'Trade Item' ?
                                    1 :
                                    (parseFloat(item.wtqty) || groupWtqty);

                                if (storetype === 'Trade Item') {
                                    // Trade Item: Opening + Purchase - Sale = Balance formula
                                    if (item.VType === 'Opening') {
                                        cumulativeOpening += item.openingQty;
                                    } else if (item.VType === 'KSREC' || item.VType === 'PBPC' || item.VType === 'MRCR') {
                                        cumulativePurchase += item.purchaseQty;
                                    } else {
                                        // Sale/Issue - subtract from cumulative
                                        cumulativeSale += item.sellQty;
                                    }
                                    // Apply formula: Opening + Purchase - Sale
                                    const balance = cumulativeOpening + cumulativePurchase - cumulativeSale;
                                    item.cumulativeBottles = Math.floor(balance);
                                    item.cumulativeML = 0;
                                    item.cumulativeBalance = balance;
                                } else {
                                    // Liquor: Different units for Purchase (Bottles in ML) and Sale (Pags in ML)
                                    // Purchase unit: ConvRatio (0 ML = 1 Bottle)
                                    // Sale unit: wtqty (varies - 50 ML, 60 ML, etc.)

                                    // IMPORTANT: Only process opening ONCE per group, then use running balance
                                    if (item.VType === 'Opening' && !openingProcessed) {
                                        // opening field is ALREADY in ML format, do NOT multiply by ConvRatio
                                        totalML += parseFloat(item.opening) || 0;
                                        openingProcessed = true;
                                    } else {
                                        // Process both purchase and sale independently
                                        if (parseFloat(item.purchaseQty) > 0) {
                                            // Purchase: purchaseQty is already stored as ML (qtyrec * convRatio)
                                            totalML += parseFloat(item.purchaseQty) || 0;
                                        }
                                        if (parseFloat(item.sellQty) > 0) {
                                            // Sale: sellQty is already stored as ML (qtyiss * wtqty)
                                            totalML -= parseFloat(item.sellQty) || 0;
                                        }
                                    }

                                    let finalBottles = 0;
                                    let remainingML = 0;

                                    // Handle both positive and negative balances correctly
                                    let absML = Math.abs(totalML);
                                    let absBottles = Math.floor(absML / convRatio);
                                    let absRemainder = absML % convRatio;

                                    if (totalML >= 0) {
                                        // Positive balance
                                        finalBottles = absBottles;
                                        remainingML = absRemainder;
                                    } else {
                                        // Negative balance: properly negate both parts
                                        finalBottles = -absBottles;
                                        remainingML = absRemainder > 0.01 ? -absRemainder : 0;
                                    }

                                    item.cumulativeBottles = finalBottles;
                                    item.cumulativeML = remainingML;
                                    item.cumulativeBalance = totalML;
                                }
                            });
                        });

                        // Tabulator Column Definitions - Dynamic based on storetype
                        let columns = [];

                        if (storetype === 'Trade Item') {
                            columns = [{
                                    title: "Date",
                                    field: "VDate",
                                    widthGrow: 2
                                },
                                {
                                    title: "Type",
                                    field: "VType",
                                    widthGrow: 1
                                },
                                {
                                    title: "Vou No.",
                                    field: "VNo",
                                    widthGrow: 1
                                },
                                {
                                    title: "Name",
                                    field: "Name",
                                    widthGrow: 2
                                },
                                {
                                    title: "Opening",
                                    field: "opening",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = cell.getValue();
                                        if (val !== 0 && val !== null && val !== undefined && val !== '') {
                                            return val.toFixed(2);
                                        }
                                        return '';
                                    }
                                },
                                {
                                    title: "Purchase",
                                    field: "purchaseQty",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = cell.getValue();
                                        if (val > 0) {
                                            return val.toFixed(2);
                                        }
                                        return '';
                                    },
                                    footerFormat: function(e) {
                                        let total = 0;
                                        e.forEach(function(cell) {
                                            total += parseFloat(cell.getValue()) || 0;
                                        });
                                        return total.toFixed(2);
                                    },
                                    groupCalcs: "sum"
                                },
                                {
                                    title: "Sale",
                                    field: "sellQty",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = cell.getValue();
                                        if (val > 0) {
                                            return val.toFixed(2);
                                        }
                                        return '';
                                    },
                                    footerFormat: function(e) {
                                        let total = 0;
                                        e.forEach(function(cell) {
                                            total += parseFloat(cell.getValue()) || 0;
                                        });
                                        return total.toFixed(2);
                                    },
                                    groupCalcs: "sum"
                                },
                                {
                                    title: "Balance",
                                    field: "cumulativeBalance",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = cell.getValue();
                                        return val.toFixed(2);
                                    },
                                    footerFormat: function(e) {
                                        if (e.length > 0) {
                                            let lastCell = e[e.length - 1];
                                            let val = lastCell.getValue();
                                            return val.toFixed(2);
                                        }
                                        return '0.00';
                                    }
                                }
                            ];
                        } else if (storetype === 'Manufactured Item') {
                            columns = [
                                {
                                    title: "Date",
                                    field: "VDate",
                                    widthGrow: 2
                                },
                                {
                                    title: "Type",
                                    field: "VType",
                                    widthGrow: 1
                                },
                                {
                                    title: "Vou No.",
                                    field: "VNo",
                                    widthGrow: 1
                                },
                                {
                                    title: "Item Name",
                                    field: "Name",
                                    widthGrow: 3
                                },
                                {
                                    title: "Received Qty",
                                    field: "recdqty",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = parseFloat(cell.getValue()) || 0;
                                        return val > 0 ? val.toFixed(3) : '';
                                    },
                                    bottomCalc: "sum",
                                    bottomCalcFormatter: function(cell) {
                                        return (parseFloat(cell.getValue()) || 0).toFixed(3);
                                    }
                                },
                                {
                                    title: "Consumed Item",
                                    field: "con_item",
                                    widthGrow: 3,
                                    formatter: function(cell) {
                                        return cell.getValue() || '';
                                    }
                                },
                                {
                                    title: "Con Qty",
                                    field: "con_qty",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = parseFloat(cell.getValue()) || 0;
                                        return val > 0 ? val.toFixed(3) : '';
                                    },
                                    bottomCalc: "sum",
                                    bottomCalcFormatter: function(cell) {
                                        return (parseFloat(cell.getValue()) || 0).toFixed(3);
                                    }
                                },
                                {
                                    title: "Balance",
                                    field: "balance",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = parseFloat(cell.getValue());
                                        if (isNaN(val)) return '';
                                        return val.toFixed(3);
                                    }
                                }
                            ];
                        } else {
                            // Liquor columns - existing logic
                            columns = [{
                                    title: "Item Name / Date",
                                    field: "VDate",
                                    widthGrow: 2
                                },
                                {
                                    title: "Type",
                                    field: "VType",
                                    widthGrow: 1
                                },
                                {
                                    title: "Vou No.",
                                    field: "VNo",
                                    widthGrow: 1
                                },
                                {
                                    title: "Opening Stock",
                                    field: "opening",
                                    widthGrow: 1,
                                    hozAlign: "right",
                                    formatter: function(cell) {
                                        let val = parseFloat(cell.getValue());
                                        let rowData = cell.getRow().getData();

                                        if (rowData.VType === 'Opening' && val != 0) {
                                            let convRatio = parseFloat(rowData.ConvRatio);
                                            if (!convRatio || convRatio === 0) {
                                                convRatio = 0;
                                            }

                                            // Value is already in ML, convert to BT.ML format
                                            let isNegative = val < 0;
                                            let absML = Math.abs(val);
                                            let bottles = Math.floor(absML / convRatio);
                                            let remainingML = absML % convRatio;

                                            if (isNegative) {
                                                if (remainingML === 0) {
                                                    return '-' + bottles + 'BT. 0.00ML.';
                                                }
                                                return '-' + bottles + 'BT. ' + remainingML.toFixed(2) + 'ML.';
                                            }
                                            return bottles + 'BT. ' + remainingML.toFixed(2) + 'ML.';
                                        }
                                        return '';
                                    },
                                    footerFormat: function(e) {
                                        let total = 0;
                                        e.forEach(function(cell) {
                                            total += parseFloat(cell.getValue()) || 0;
                                        });
                                        return total.toFixed(2);
                                    },
                                    groupCalcs: "sum"
                                },
                                {
                                    title: "Purchase",
                                    field: "purchaseQty",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = cell.getValue();
                                        let rowData = cell.getRow().getData();
                                        // Don't show purchase for Opening type
                                        if (rowData.VType === 'Opening') {
                                            return '';
                                        }
                                        if (val > 0) {
                                            let convRatio = parseFloat(rowData.ConvRatio) || 0;
                                            // val is already in ML, divide by convRatio to get BT.ML format
                                            let bottles = Math.floor(val / convRatio);
                                            let remainingML = val % convRatio;
                                            return bottles + 'BT. ' + remainingML.toFixed(2) + 'ML.';
                                        }
                                        return '';
                                    },
                                    footerFormat: function(e) {
                                        let total = 0;
                                        e.forEach(function(cell) {
                                            total += parseFloat(cell.getValue()) || 0;
                                        });
                                        let convRatio = 0;
                                        let bottles = Math.floor(total / convRatio);
                                        let remainingML = total % convRatio;
                                        return bottles + 'BT. ' + remainingML.toFixed(2) + 'ML.';
                                    },
                                    groupCalcs: "sum",
                                    groupCalcsFormatter: function(value, data, calcParams) {
                                        let convRatio = 0;
                                        let bottles = Math.floor(value / convRatio);
                                        let remainingML = value % convRatio;
                                        return bottles + 'BT. ' + remainingML.toFixed(2) + 'ML.';
                                    }
                                },
                                {
                                    title: "Sale",
                                    field: "sellQty",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let val = cell.getValue();
                                        let rowData = cell.getRow().getData();
                                        if (val > 0) {
                                            // val is already in ML, divide by convRatio to get BT.ML format
                                            let convRatio = parseFloat(rowData.ConvRatio) || 0;
                                            let bottles = Math.floor(val / convRatio);
                                            let remainingML = val % convRatio;
                                            return bottles + 'BT. ' + remainingML.toFixed(2) + 'ML.';
                                        }
                                        return '';
                                    },
                                    footerFormat: function(e) {
                                        let total = 0;
                                        e.forEach(function(cell) {
                                            total += parseFloat(cell.getValue()) || 0;
                                        });
                                        let convRatio = 0;
                                        let bottles = Math.floor(total / convRatio);
                                        let remainingML = total % convRatio;
                                        return bottles + 'BT. ' + remainingML.toFixed(2) + 'ML.';
                                    },
                                    groupCalcs: "sum",
                                    groupCalcsFormatter: function(value, data, calcParams) {
                                        let convRatio = 0;
                                        let bottles = Math.floor(value / convRatio);
                                        let remainingML = value % convRatio;
                                        return bottles + 'BT. ' + remainingML.toFixed(2) + 'ML.';
                                    }
                                },
                                {
                                    title: "Balance",
                                    field: "cumulativeBalance",
                                    hozAlign: "right",
                                    widthGrow: 1,
                                    formatter: function(cell) {
                                        let rowData = cell.getRow().getData();
                                        let btl = rowData.cumulativeBottles || 0;
                                        let ml = rowData.cumulativeML || 0;

                                        // Format negative balances properly
                                        if (btl < 0 || ml < 0) {
                                            let absBtl = Math.abs(btl);
                                            let absMl = Math.abs(ml);
                                            if (absMl < 0.01) {
                                                return '-' + absBtl.toFixed(0) + 'BT. 0.00ML.';
                                            } else {
                                                return '-' + absBtl.toFixed(0) + 'BT. ' + absMl.toFixed(2) + 'ML.';
                                            }
                                        }
                                        if (ml < 0.01) {
                                            return btl.toFixed(0) + 'BT. 0.00ML.';
                                        }
                                        return btl.toFixed(0) + 'BT. ' + ml.toFixed(2) + 'ML.';
                                    },
                                    footerFormat: function(e) {
                                        if (e.length > 0) {
                                            let lastCell = e[e.length - 1];
                                            let rowData = lastCell.getRow().getData();
                                            let btl = rowData.cumulativeBottles || 0;
                                            let ml = rowData.cumulativeML || 0;

                                            if (btl < 0 || ml < 0) {
                                                let absBtl = Math.abs(btl);
                                                let absMl = Math.abs(ml);
                                                if (absMl < 0.01) {
                                                    return '-' + absBtl.toFixed(0) + 'BT. 0.00ML.';
                                                } else {
                                                    return '-' + absBtl.toFixed(0) + 'BT. ' + absMl.toFixed(2) + 'ML.';
                                                }
                                            }
                                            if (ml < 0.01) {
                                                return btl.toFixed(0) + 'BT. 0.00ML.';
                                            }
                                            return btl.toFixed(0) + 'BT. ' + ml.toFixed(2) + 'ML.';
                                        }
                                        return '0BT. 0.00ML.';
                                    },
                                    groupCalcsFormatter: function(value, data, calcParams) {
                                        if (data.length > 0) {
                                            let lastRow = data[data.length - 1];
                                            let btl = lastRow.cumulativeBottles || 0;
                                            let ml = lastRow.cumulativeML || 0;

                                            if (btl < 0 || ml < 0) {
                                                let absBtl = Math.abs(btl);
                                                let absMl = Math.abs(ml);
                                                if (absMl < 0.01) {
                                                    return '-' + absBtl.toFixed(0) + 'BT. 0.00ML.';
                                                } else {
                                                    return '-' + absBtl.toFixed(0) + 'BT. ' + absMl.toFixed(2) + 'ML.';
                                                }
                                            }
                                            if (ml < 0.01) {
                                                return btl.toFixed(0) + 'BT. 0.00ML.';
                                            }
                                            return btl.toFixed(0) + 'BT. ' + ml.toFixed(2) + 'ML.';
                                        }
                                        return '0BT. 0.00ML.';
                                    }
                                }
                            ];
                        }

                        // Create Tabulator table
                        table = new Tabulator("#stockTable", {
                            data: finalData,
                            layout: "fitColumns",
                            pagination: "local",
                            paginationSize: 20,
                            paginationSizeSelector: [10, 20, 50, 100],
                            paginationButtonCount: 5,
                            groupBy: "groupingName",
                            groupToggle: true,
                            footerData: "all",
                            groupHeader: function(value, count, data, group) {
                                return `<strong>${value}</strong> (${count} records)`;
                            },
                            groupFooter: function(value, count, data, group) {
                                return "<strong>Group Total</strong>";
                            },
                            columns: columns
                        });

                        $('#printButton, #excelButton').show();
                    }
                });
            });

            $('#printButton').click(function() {
                if (table) table.print("active", true);
            });
            $('#excelButton').click(function() {
                if (table) table.download("xlsx", "stock.xlsx");
            });
        });

        function toggleList(btn, list) {
            $(btn).click(function(e) {
                e.preventDefault();
                $(list).slideToggle(200);
            });
        }
    </script>
@endsection
