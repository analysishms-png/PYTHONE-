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
                                    <p class="mb-0 font-weight-bold">Stock In Hand Report</p>
                                </div>

                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ companydata()->start_dt }}" id="start_dt">
                                    <input type="hidden" value="{{ companydata()->end_dt }}" id="end_dt">

                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ companydata()->start_dt }}" class="form-control"
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
                                            <option value="StoreItem">Store Item</option>
                                            <option value="RawMaterial">Raw Material</option>
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
                                        <ul class="checkul" id="listeditemgrp"
                                            style="display:none; position:absolute; background:white; z-index:100; border:1px solid #ccc; width:90%; list-style:none; padding:10px;">
                                               <li>
                                                <input type="text" placeholder="Search Group..." class="form-control groupsearch">
                                            </li>
                                            <li> <input type="checkbox" id="checkallitemgrps"> <span>Select All <span
                                                        class="tcount">{{ count($itemgrp) }}</span></span></li>
                                            <hr class="my-1">
                                            @foreach ($itemgrp as $item)
                                                <li class="group-list-item" data-groupname="{{ strtolower($item->name) }}">
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
                                        <ul class="checkul" id="listeditems"
                                            style="display:none; position:absolute; background:white; z-index:100; border:1px solid #ccc; width:90%; list-style:none; padding:10px; max-height:200px; overflow-y:auto;">
                                               <li>
                                                <input type="text" placeholder="Search Item..." class="form-control itemsearch">
                                            </li>
                                            <li> <input type="checkbox" id="checkallitems"> <span>Select All <span
                                                        class="tcount"></span></span></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="text-center mt-3">
                                    <div id="validation-msg" class="text-danger mb-2"></div>
                                    <button type="button" id="refreshbutton"
                                        class="btn btn-success btn-sm">Refresh</button>
                                    <button type="button" id="printButton" class="btn btn-info btn-sm"
                                        style="display:none;"><i class="fa fa-print"></i> Print</button>
                                    <button type="button" id="excelButton" class="btn btn-success btn-sm"
                                        style="display:none;"><i class="fa fa-file-excel"></i> Excel</button>
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
            $.post("{{ route('fetchstockingodown') }}", {
                _token: '{{ csrf_token() }}',
                storetype: storetype
            }, function(response) {
                $('#godownDropdown').html('<option value="">Select</option>');
                if (response.length > 0) {
                    response.forEach(g => $('#godownDropdown').append(
                        `<option value="${g.dcode}">${g.name}</option>`));
                    $('#godownDropdown').prop('selectedIndex', 1);

                    $('#checkallitemgrps').prop('checked', true).trigger('change');
                }
            });
        }

        $(document).ready(function() {
            let table;
            handleStoreTypeChange();
            
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

            $('#itemgrplistbtn').click(() => $('#listeditemgrp').toggle());
            $('#itemlistbtn').click(() => $('#listeditems').toggle());

            $('#checkallitemgrps').change(function() {
                $('.groupcheckbox').prop('checked', $(this).is(':checked'));
                fetchitembygroup();
            });

            $('#checkallitems').change(function() {
                $('.itemcheckbox').prop('checked', $(this).is(':checked'));
            });

            $(document).on('change', '.groupcheckbox', fetchitembygroup);

            function fetchitembygroup() {
                let codes = $('.groupcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();
              $('#listeditems li.item-list-item').remove();

                if (codes.length > 0) {
                    $.post("{{ route('getstockitems') }}", {
                        checkedgroupcode: codes,
                        _token: '{{ csrf_token() }}'
                    }, function(response) {
                        $('#listeditems .tcount').text(response.length);
                        response.forEach(idata => {
                            $('#listeditems').append(
                                `<li class="item-list-item" data-itemname="${idata.name.toLowerCase()}">
                                    <input class="itemcheckbox" value="${idata.code}" type="checkbox" checked>
                                    <span>${idata.name}</span>
                                </li>`
                            );
                        });
                        $('#checkallitems').prop('checked', true);
                    });
                }
            }

            $('#refreshbutton').click(function() {

                const itemsArray = $('.itemcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();

                const fromdate = $('#fromdate').val();
                const todate = $('#todate').val();
                const godown = $('#godownDropdown').val();

                if (!fromdate || !todate) {
                    $('#validation-msg').text('Please select From and To dates.');
                    return;
                }
                if (!godown) {
                    $('#validation-msg').text('Please select a Godown.');
                    return;
                }
                $('#validation-msg').text('');

                const data = {
                    _token: '{{ csrf_token() }}',
                    from_date: fromdate,
                    to_date: todate,
                    store_type: $('#storetype').val(),
                    godown: godown,
                    valuation: $('#valuation').val(),
                    item_type: $('#type').val(),
                    items: itemsArray
                };

                $.ajax({
                    url: "{{ route('stockInHandFinal') }}",
                    method: 'POST',
                    data: data,
                    success: function(response) {
                        if (!response || response.length === 0) {
                            $('#stockTable').html('<div class="alert alert-warning mt-2">No Data Found</div>');
                            $('#printButton, #excelButton').hide();
                            return;
                        }

                        // Calculate totals
                        let totalCurrStock = 0;
                        let totalValue = 0;
                        response.forEach(row => {
                            totalCurrStock += Number(row.curr_stock || 0);
                            totalValue += Number(row.value || 0);
                        });

                        table = new Tabulator("#stockTable", {
                            data: response,
                            layout: "fitColumns",
                            height: "auto",
                            placeholder: "No Data Found",
                            columns: [{
                                    title: "Item",
                                    field: "item",
                                    widthGrow: 4
                                },
                                {
                                    title: "Unit",
                                    field: "unit",
                                    width: 100
                                },
                                {
                                    title: "Curr. Stock",
                                    field: "curr_stock",
                                    hozAlign: "right",
                                    formatter: "money",
                                    formatterParams: {
                                        precision: 3
                                    }
                                },
                                {
                                    title: "Value",
                                    field: "value",
                                    hozAlign: "right",
                                    formatter: "money",
                                    formatterParams: {
                                        precision: 2
                                    }
                                }
                            ]
                        });

                        // Grand Total row below table
                        $('#sihGrandTotal').remove();
                        $('#stockTable').after(`
                            <table id="sihGrandTotal" style="width:100%; border-collapse:collapse; margin-top:8px; border:1px solid #dee2e6;">
                                <tr>
                                    <td style="padding:6px 8px; font-weight:bold; border:1px solid #dee2e6; width:60%;">Grand Total</td>
                                    <td style="padding:6px 8px; width:10%; border:1px solid #dee2e6;"></td>
                                    <td style="padding:6px 8px; font-weight:bold; text-align:right; border:1px solid #dee2e6; width:15%;">${totalCurrStock.toFixed(3)}</td>
                                    <td style="padding:6px 8px; font-weight:bold; text-align:right; border:1px solid #dee2e6; width:15%;">${totalValue.toFixed(2)}</td>
                                </tr>
                            </table>
                        `);

                        $('#printButton, #excelButton').show();
                    },
                    error: function(xhr) {
                        $('#validation-msg').text('Error: ' + xhr.statusText);
                    }
                });
            });

            $('#printButton').click(() => table.print(false, true));
            $('#excelButton').click(() => table.download("xlsx", "StockInHand.xlsx"));
        });
    </script>
@endsection
