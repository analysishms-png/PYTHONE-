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
                            <form id="stockReportForm">
                                <div class="text-center titlep mb-4">
                                    <h3>{{ companydata()->comp_name }}</h3>
                                    <p class="mb-1">{{ companydata()->address1 }}</p>
                                    <p class="mb-1">
                                        {{ $statename . ' - ' . companydata()->city . ' - ' . companydata()->pin }}</p>
                                    <p class="mb-0 font-weight-bold">Stock Summary Report</p>
                                </div>

                                <div class="row justify-content-around">
                                    <div class="form-group">
                                        <label>From Date</label>
                                        <input type="date" value="{{ ncurdate() }}" class="form-control"
                                            id="fromdate">
                                    </div>
                                    <div class="form-group">
                                        <label>To Date</label>
                                        <input type="date" value="{{ ncurdate() }}" class="form-control"
                                            id="todate">
                                    </div>

                                    <div>
                                        <label for="type">Type</label>
                                        <select class="form-control" name="type" id="type">
                                            <option value="All" selected>All</option>
                                            <option value="Finish">Finish</option>
                                            <option value="SemiFinish">Semi Finish</option>
                                            <option value="Consumables">Consumables</option>
                                            <option value="RawMaterial">Raw Material</option>
                                            <option value="StoreItem">Store Item</option>
                                        </select>
                                    </div>

                                    <div>
                                        <label for="valuation">Valuation</label>
                                        <select class="form-control" name="valuation" id="valuation">
                                            <option value="Actual" selected>Actual</option>
                                            <option value="LastPurchaseRate">Last Purchase Rate</option>
                                        </select>
                                    </div>

                                    <div>
                                        <label for="storetype">Store Type</label>
                                        <select class="form-control" name="storetype" id="storetype"
                                            onchange="handleStoreTypeChange();">
                                            <option value="main_store" selected>Main Store</option>
                                            <option value="sub_store">Sub Store</option>
                                            <option value="house_keeping">House Keeping</option>
                                        </select>
                                    </div>

                                    <div>
                                        <label for="godownDropdown">Godown</label>
                                        <select class="form-control" name="godownDropdown" id="godownDropdown">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-md-3">
                                        <button style="width: 100%;" type="button" class="btn btn-outline-primary"
                                            id="itemgrplistbtn">Item Group <i class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeditemgrp"
                                            style="display:none; position:absolute; z-index:100; background:white; border:1px solid #ccc; width:90%; padding:10px; list-style:none; max-height: 250px; overflow-y: auto; box-shadow: 0px 4px 8px rgba(0,0,0,0.1);">
                                            <li>
                                                <input type="text" placeholder="Search Group..." class="form-control groupsearch">
                                            </li>
                                            <li>
                                                <input type="checkbox" id="checkallitemgrps">
                                                <span class="font-weight-bold">Select All <span
                                                        class="tcount">{{ count($itemgrp) }}</span></span>
                                            </li>
                                            <hr class="my-1">
                                            @foreach ($itemgrp as $item)
                                                <li class="group-list-item" data-groupname="{{ strtolower($item->name) }}">
                                                    <input class="groupcheckbox" value="{{ $item->code }}"
                                                        type="checkbox">
                                                    <span>{{ $item->name }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>

                                    <div class="col-md-3">
                                        <button style="width: 100%;" type="button" class="btn btn-outline-secondary"
                                            id="itemlistbtn">Items <i class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeditems"
                                            style="display:none; position:absolute; z-index:100; background:white; border:1px solid #ccc; width:90%; padding:10px; list-style:none; max-height: 250px; overflow-y: auto; box-shadow: 0px 4px 8px rgba(0,0,0,0.1);">
                                            <li>
                                                <input type="text" placeholder="Search Item..." class="form-control itemsearch">
                                            </li>
                                            <li>
                                                <input type="checkbox" id="checkallitems">
                                                <span class="font-weight-bold">Select All <span
                                                        class="tcount"></span></span>
                                            </li>
                                            <hr class="my-1">
                                        </ul>
                                    </div>
                                </div>

                                <div class="text-center mt-4 mb-2">
                                    <button type="button" id="refreshbutton"
                                        class="btn btn-success btn-sm px-4">Refresh</button>
                                    <button type="button" id="printButton" class="btn btn-info btn-sm"
                                        style="display:none;"><i class="fa fa-print"></i> Print</button>
                                    <button type="button" id="excelButton" class="btn btn-success btn-sm"
                                        style="display:none;"><i class="fa fa-file-excel"></i> Export</button>
                                </div>

                                <div class="mt-4">
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
                    response.forEach(function(godown) {
                        // Logic: Remove Purchase Store from Sub Store view
                        if (storetype === 'sub_store' && godown.name.toLowerCase().includes('purchase'))
                            return;

                        // Logic: Default to Purchase Store for Main Store
                        let selectedAttr = (storetype === 'main_store' && godown.name.toLowerCase()
                            .includes('purchase')) ? "selected" : "";

                        $('#godownDropdown').append(
                            `<option value="${godown.dcode}" ${selectedAttr}>${godown.name}</option>`
                        );
                    });
                }
            });
        }


        
        $(document).ready(function() {
            handleStoreTypeChange();

            // Define table variable in a scope accessible to both the AJAX success and button clicks
            let stockTableInstance;

            function filterList(inputSelector, itemSelector, dataAttribute) {
                $(inputSelector).on('keyup', function() {
                    const query = $(this).val().trim().toLowerCase();
                    $(itemSelector).each(function() {
                        const value = String($(this).data(dataAttribute) || $(this).text()).toLowerCase();
                        $(this).toggle(query === '' || value.indexOf(query) !== -1);
                    });
                });
            }

            filterList('.groupsearch', '#listeditemgrp li.group-list-item', 'groupname');
            filterList('.itemsearch', '#listeditems li.item-list-item', 'itemname');

            // Toggle Dropdowns
            $('#itemgrplistbtn, #itemlistbtn').click(function(e) {
                e.stopPropagation();
                let target = $(this).attr('id') === 'itemgrplistbtn' ? '#listeditemgrp' : '#listeditems';
                $('.checkul').not(target).hide();
                $(target).slideToggle(200);
            });

            $(document).click(function() {
                $('.checkul').hide();
            });
            $('.checkul').click(function(e) {
                e.stopPropagation();
            });

            // Item Group Selection
            setTimeout(() => {
                $('#checkallitemgrps').prop('checked', true).trigger('change');
            }, 500);

            $('#checkallitemgrps').change(function() {
                $('.groupcheckbox').prop('checked', $(this).is(':checked'));
                fetchitem();
            });

            $(document).on('change', '.groupcheckbox', function() {
                $('#checkallitemgrps').prop('checked', $('.groupcheckbox:checked').length === $(
                    '.groupcheckbox').length);
                fetchitem();
            });

            function fetchitem() {
                let codes = $('.groupcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();
                $('#listeditems li.item-list-item').remove();
                if (codes.length === 0) {
                    $('#listeditems .tcount').text('0');
                    return;
                }

                $.ajax({
                    url: "{{ route('getitems') }}",
                    method: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        checkedgroupcode: codes
                    },
                    success: function(items) {
                        $('#listeditems .tcount').text(items.length);
                        items.forEach(item => {
                            $('#listeditems').append(
                                `<li class="item-list-item" data-itemname="${item.Name.toLowerCase()}"><input class="itemcheckbox" type="checkbox" value="${item.Code}" checked> <span>${item.Name}</span></li>`
                            );
                        });
                        $('#checkallitems').prop('checked', true);
                    } 
                });
            }

            $('#checkallitems').change(function() {
                $('.itemcheckbox').prop('checked', $(this).is(':checked'));
            });

            // Main Refresh Logic
            $('#refreshbutton').click(function() {
                let items = $('.itemcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();

                if (items.length === 0) {
                    alert('Please select at least one item');
                    return;
                }

                let valParam = $('#valuation').val();

                $.ajax({
                    url: "{{ route('fetchValuation') }}",
                    method: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        fromdate: $('#fromdate').val(),
                        todate: $('#todate').val(),
                        type: $('#type').val(),
                        valuation: valParam,
                        storeType: $('#storetype').val(),
                        godown: $('#godownDropdown').val(),
                        items: items
                    },
                    success: function(response) {
                        const finalData = [];

                        if (response.reportdata && response.reportdata.length > 0) {
                            response.reportdata.forEach(item => {
                                if (!item.itemname) return;

                                let opQty = Number(item.opqty || 0);
                                let opVal = Number(item.opamt || 0);
                                let rQ = 0,
                                    rV = 0,
                                    iQ = 0,
                                    iV = 0;

                                if (item.transactions) {
                                    item.transactions.forEach(t => {
                                        if (Number(t.qtyrec) > 0) {
                                            rQ += Number(t.qtyrec);
                                            rV += Number(t.amount);
                                        }
                                        if (Number(t.qtyiss) > 0) {
                                            iQ += Number(t.qtyiss);
                                            iV += Number(t.amount);
                                        }
                                    });
                                }

                                let balQty = (opQty + rQ - iQ);
                                let balVal = (opVal + rV - iV);

                                // FILTER: Only add if there is a non-zero value somewhere
                                if (opQty !== 0 || opVal !== 0 || rQ !== 0 || rV !==
                                    0 || iQ !== 0 || iV !== 0 || balQty !== 0 ||
                                    balVal !== 0) {
                                    finalData.push({
                                        item: item.itemname,
                                        unit: item.unitname,
                                        op_qty: opQty.toFixed(3),
                                        op_val: opVal.toFixed(2),
                                        rec_qty: rQ.toFixed(3),
                                        rec_val: rV.toFixed(2),
                                        iss_qty: iQ.toFixed(3),
                                        iss_val: iV.toFixed(2),
                                        bal_qty: balQty.toFixed(3),
                                        bal_val: balVal.toFixed(2)
                                    });
                                }
                            });
                        }

                        // Initialize Tabulator
                        stockTableInstance = new Tabulator("#stockTable", {
                            data: finalData,
                            layout: "fitColumns",
                            placeholder: "<div class='text-danger font-weight-bold p-4'>No data available in the table</div>",
                            columns: [{
                                    title: "Item",
                                    field: "item",
                                    widthGrow: 2,
                                    bottomCalc: () => finalData.length > 0 ?
                                        "Total:" : ""
                                },
                                {
                                    title: "Unit",
                                    field: "unit"
                                },
                                {
                                    title: "Op. Qty",
                                    field: "op_qty",
                                    hozAlign: "right"
                                },
                                {
                                    title: "Op. Value",
                                    field: "op_val",
                                    hozAlign: "right",
                                    bottomCalc: "sum"
                                },
                                {
                                    title: "Rec. Qty",
                                    field: "rec_qty",
                                    hozAlign: "right"
                                },
                                {
                                    title: "Rec. Value",
                                    field: "rec_val",
                                    hozAlign: "right",
                                    bottomCalc: "sum"
                                },
                                {
                                    title: "Iss. Qty",
                                    field: "iss_qty",
                                    hozAlign: "right"
                                },
                                {
                                    title: "Iss. Value",
                                    field: "iss_val",
                                    hozAlign: "right",
                                    bottomCalc: "sum"
                                },
                                {
                                    title: "Bal. Qty",
                                    field: "bal_qty",
                                    hozAlign: "right"
                                },
                                {
                                    title: "Bal. Value",
                                    field: "bal_val",
                                    hozAlign: "right",
                                    bottomCalc: "sum"
                                }
                            ]
                        });

                        // Manage button visibility
                        if (finalData.length > 0) {
                            $('#printButton, #excelButton').show();
                        } else {
                            $('#printButton, #excelButton').hide();
                        }
                    },
                    error: function(xhr) {
                        alert("Error fetching data: " + (xhr.responseJSON ? xhr.responseJSON
                            .error : "Unknown error"));
                    }
                });
            });

            // Outside click events for Print/Export using the instance
            $('#printButton').on('click', function() {
                if (stockTableInstance) stockTableInstance.print("active", true);
            });

            $('#excelButton').on('click', function() {
                if (stockTableInstance) stockTableInstance.download("xlsx", "stock_summary.xlsx");
            });
        });
    </script>
@endsection
