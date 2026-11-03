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

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="fromdate">From Date <i class="fa-regular fa-calendar"></i></label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control"
                                                name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="todate">To Date <i class="fa-regular fa-calendar"></i></label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control"
                                                name="todate" id="todate">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="type">Type</label>
                                        <select class="form-control" name="type" id="type">
                                            <option value="All" selected>All</option>
                                            <option value="Finish">Finish</option>
                                            <option value="SemiFinish">Semi Finish</option>
                                            <option value="Consumables">Consumables</option>
                                            <option value="StoreItem">Store Item</option>
                                            <option value="RawMaterial">Raw Material</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="ratetype">Rate Type</label>
                                        <select class="form-control" name="ratetype" id="ratetype">
                                            <option value="Actual" selected>Actual</option>
                                            <option value="MaRate">Max Rate</option>
                                            <option value="Average">Average Rate</option>
                                            <option value="LastPurchase">Last Purchase Rate</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-md-3">
                                        <button style="width: 100%;" type="button" class="btn rhead btn-outline-primary"
                                            id="godownbtn">
                                            Godowns <i class="fa-solid fa-angle-down"></i>
                                        </button>
                                        <ul class="checkul" id="listedgodown"
                                            style="display:none; position:absolute; background:white; z-index:1000; border:1px solid #ccc; width:90%; list-style:none; padding:10px; max-height:200px; overflow-y:auto;">
                                            <li>
                                                <input type="text" placeholder="Search Godown..." class="form-control godownsearch">
                                            </li>
                                            <li>
                                                <input type="checkbox" id="checkallgodownss" checked>
                                                <span>Select All <span class="tcount">{{ count($godown) }}</span></span>
                                            </li>
                                            <hr class="my-1">
                                            @foreach ($godown as $g)
                                                <li class="group-list-item" data-groupname="{{ strtolower($g->name) }}">
                                                    <input class="groupcheckbox" value="{{ $g->dcode }}" type="checkbox"
                                                        checked>
                                                    <span>{{ $g->name }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>

                                    <div class="col-md-3">
                                        <button style="width: 100%;" type="button" class="btn rhead btn-outline-primary"
                                            id="itemslistbtn">
                                            Items <i class="fa-solid fa-angle-down"></i>
                                        </button>
                                        <ul class="checkul" id="listeditems"
                                            style="display:none; position:absolute; background:white; z-index:1000; border:1px solid #ccc; width:90%; list-style:none; padding:10px; max-height:200px; overflow-y:auto;">
                                            <li>
                                                <input type="text" placeholder="Search Item..." class="form-control itemsearch">
                                            </li>
                                            <li>
                                                <input type="checkbox" id="checkallitemss" checked>
                                                <span>Select All <span class="tcount">{{ count($itemmast) }}</span></span>
                                            </li>
                                            <hr class="my-1">
                                            @foreach ($itemmast as $name)
                                                <li class="item-list-item" data-itemname="{{ strtolower($name) }}">
                                                    <input class="itemcheckbox" value="{{ $name }}" type="checkbox"
                                                        checked>
                                                    <span>{{ $name }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>

                                <div class="text-center mt-4">
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
        var table;

        $(document).ready(function() {

            function filterList(inputSelector, itemSelector, dataAttribute) {
                $(inputSelector).on('keyup', function() {
                    const query = $(this).val().trim().toLowerCase();
                    $(itemSelector).each(function() {
                        const value = String($(this).data(dataAttribute) || $(this).text()).toLowerCase();
                        $(this).toggle(query === '' || value.indexOf(query) !== -1);
                    });
                });
            }

            filterList('.godownsearch', '#listedgodown li.group-list-item', 'groupname');
            filterList('.itemsearch', '#listeditems li.item-list-item', 'itemname');

            $("#godownbtn").click(function(e) {
                e.stopPropagation();
                $("#listedgodown").toggle();
                $("#listeditems").hide();
            });

            $("#itemslistbtn").click(function(e) {
                e.stopPropagation();
                $("#listeditems").toggle();
                $("#listedgodown").hide();
            });

            $(document).click(function() {
                $(".checkul").hide();
            });

            $(".checkul").click(function(e) {
                e.stopPropagation();
            });

            $(document).on('change', '#checkallgodownss', function() {
                $('.groupcheckbox').prop('checked', $(this).prop('checked'));
            });

            $(document).on('change', '#checkallitemss', function() {
                $('.itemcheckbox').prop('checked', $(this).prop('checked'));
            });

            function bindItemSearch() {
                $('.itemsearch').off('keyup').on('keyup', function() {
                    const query = $(this).val().trim().toLowerCase();
                    $('#listeditems li.item-list-item').each(function() {
                        const value = String($(this).data('itemname') || $(this).text()).toLowerCase();
                        $(this).toggle(query === '' || value.indexOf(query) !== -1);
                    });
                });
            }

            $('#type').change(function() {
                let selectedType = $(this).val();

                $.ajax({
                    url: "{{ route('getItemsByType') }}",
                    method: 'GET',
                    data: {
                        type: selectedType
                    },
                    success: function(data) {

                        let html = `
                        <li>
                            <input type="text" placeholder="Search Item..." class="form-control itemsearch">
                        </li>
                        <li>
                            <input type="checkbox" id="checkallitemss" checked>
                            <span>Select All <span class="tcount">${data.length}</span></span>
                        </li>
                        <hr class="my-1">
                    `;

                        $.each(data, function(index, name) {
                            html += `
                            <li class="item-list-item" data-itemname="${name.toLowerCase()}">
                                <input class="itemcheckbox" value="${name}" type="checkbox" checked>
                                <span>${name}</span>
                            </li>
                        `;
                        });

                        $('#listeditems').html(html);
                        bindItemSearch();
                    },
                    error: function() {
                        alert("Error fetching items. Please check route & controller.");
                    }
                });
            });

            $("#refreshbutton").click(function() {

                let fromdate = $("#fromdate").val();
                let todate = $("#todate").val();
                let type = $("#type").val();
                let rateType = $("#ratetype").val();

                let selectedGodowns = [];
                $(".groupcheckbox:checked").each(function() {
                    selectedGodowns.push($(this).val());
                });

                if (selectedGodowns.length === 0) {
                    $("#validation-msg").text("Please select at least one Godown.");
                    return;
                } else {
                    $("#validation-msg").text("");
                }

                $.ajax({
                    url: "{{ route('getStockReport') }}",
                    method: "GET",
                    data: {
                        fromdate: fromdate,
                        todate: todate,
                        rate_type: rateType, 
                        godowns: selectedGodowns,
                        type: type
                    },
                    beforeSend: function() {
                        $("#refreshbutton").prop('disabled', true).text("Loading...");
                    },
                    success: function(response) {

                        $("#refreshbutton").prop('disabled', false).text("Refresh");

                        if (table) {
                            table.destroy();
                        }

                        table = new Tabulator("#stockTable", {
                            data: response,
                            layout: "fitColumns",
                            groupBy: "ItemGrpName",
                            placeholder: "No data available for selected filters",
                            groupHeader: function(value, count) {
                                return value.toUpperCase() + " (" + count + ")";
                            },
                            columnHeaderVertAlign: "bottom",
                            columns: [{
                                    title: "Item",
                                    field: "Item",
                                    widthGrow: 4
                                },
                                {
                                    title: "Qty",
                                    field: "Qty",
                                    hozAlign: "right",
                                    width: 100,
                                    bottomCalc: "sum",
                                    formatter: "money",
                                    formatterParams: {
                                        precision: 2
                                    }
                                },
                                {
                                    title: "Rate",
                                    field: "Rate",
                                    hozAlign: "right",
                                    width: 120,
                                    formatter: "money",
                                    formatterParams: {
                                        precision: 2
                                    }
                                },
                                {
                                    title: "Amount",
                                    field: "Amount",
                                    hozAlign: "right",
                                    width: 150,
                                    bottomCalc: "sum",
                                    formatter: "money",
                                    formatterParams: {
                                        precision: 2
                                    }
                                },
                                {
                                    title: "Unit",
                                    field: "Unit",
                                    hozAlign: "center",
                                    width: 80
                                }
                            ]
                        });

                        $("#printButton, #excelButton").show();
                    },
                    error: function(xhr) {
                        $("#refreshbutton").prop('disabled', false).text("Refresh");
                        alert("Error: " + xhr.statusText);
                    }
                });
            });

            $("#excelButton").click(function() {
                if (table) {
                    table.download("xlsx", "Stock_Report.xlsx");
                }
            });

            $("#printButton").click(function() {
                if (table) {
                    table.print(false, true);
                }
            });

        });
    </script>
@endsection
