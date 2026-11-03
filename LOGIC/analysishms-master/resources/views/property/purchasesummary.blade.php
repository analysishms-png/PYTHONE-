@extends('property.layouts.main')

@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <div class="content-body">
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">

                    <form>
                        <div class="text-center titlep mb-4">
                            <h3>{{ companydata()->comp_name }}</h3>
                            <p class="mb-1">{{ companydata()->address1 }}</p>
                            <p class="mb-1">
                                {{ $statename . ' - ' . companydata()->city . ' - ' . companydata()->pin }}</p>
                            <p class="mb-0 font-weight-bold">Purchase Summary Report</p>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>From Date</label>
                                <input type="date" id="fromdate" value="{{ \Carbon\Carbon::parse(ncurdate())->startOfMonth()->format('Y-m-d') }}" class="form-control">
                            </div>
                            <div class="col-md-3">
                                <label>To Date</label>
                                <input type="date" id="todate" value="{{ ncurdate() }}" class="form-control">
                            </div>
                        </div>

                        {{-- PURCHASE TYPE --}}
                        <div class="row mt-3">
                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100"
                                    id="purchasetypebtn">Type</button>
                                <ul class="checkul" id="listedpurchasetype" style="display:none">

                                    @php
                                        $purchaseTypes = [
                                            'PBPB' => 'Purchase Bill (Cash)',
                                            'PBPC' => 'Purchase Bill (Credit)',
                                            'PRPB' => 'Expense (Cash)',
                                            'PRPC' => 'Expense (Credit)',
                                        ];
                                    @endphp

                                    <li>
                                        <input type="text" placeholder="Search Type..." class="form-control typesearch">
                                    </li>
                                    <li>
                                        <input type="checkbox" id="checkallpurchasetype" checked>
                                        Select All
                                    </li>
                                    <hr class="my-1">

                                    @foreach ($purchaseTypes as $code => $label)
                                        <li class="type-list-item" data-typename="{{ strtolower($label) }}">
                                            <input type="checkbox" class="purchasetypecheckbox" value="{{ $code }}"
                                                checked>
                                            {{ $label }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            {{-- PARTY --}}
                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100"
                                    id="partylistbtn">Party</button>
                                <ul class="checkul" id="listedparty" style="display:none">
                                    <li><input type="text" placeholder="Search Party..." class="form-control partysearch"></li>
                                    <li><input type="checkbox" id="checkallpartys" checked> Select All</li>
                                    <hr class="my-1">
                                    @foreach ($subgroups as $name)
                                        <li class="party-list-item" data-partyname="{{ strtolower($name->name) }}">
                                            <input type="checkbox" class="partycheckbox" value="{{ $name->sub_code }}"
                                                checked> {{ $name->name }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            {{-- GODOWN --}}
                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100"
                                    id="godownlistbtn">Godown</button>
                                <ul class="checkul" id="listedgodown" style="display:none">
                                    <li><input type="text" placeholder="Search Godown..." class="form-control godownsearch"></li>
                                    <li><input type="checkbox" id="checkallgodowns" checked> Select All</li>
                                    <hr class="my-1">
                                    @foreach ($godowns as $g)
                                        <li class="godown-list-item" data-godownname="{{ strtolower($g->name) }}">
                                            <input type="checkbox" class="godowncheckbox" value="{{ $g->godcode }}" checked>
                                            {{ $g->name }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            {{-- ITEMS --}}
                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100"
                                    id="itemslistbtn">Items</button>
                                <ul class="checkul" id="listeditems" style="display:none">
                                    <li><input type="text" placeholder="Search Item..." class="form-control itemsearch"></li>
                                    <li><input type="checkbox" id="checkallitemss" checked> Select All</li>
                                    <hr class="my-1">
                                    @foreach ($itemmast as $name)
                                        <li class="item-list-item" data-itemname="{{ strtolower($name->Name) }}">
                                            <input type="checkbox" class="itemcheckbox" value="{{ $name->Code }}" checked>
                                            {{ $name->Name }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                        </div>

                        <div class="text-center mt-3">
                            <button type="button" id="refreshbutton" class="btn btn-success btn-sm">Refresh</button>
                            <button type="button" id="printButton" class="btn btn-info btn-sm"
                                style="display:none">Print</button>
                            <button type="button" id="excelButton" class="btn btn-success btn-sm"
                                style="display:none">Excel</button>
                        </div>

                        <div class="mt-4">
                            <div id="stockTable"></div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Toggle dropdowns
            function toggle(btn, list) {
                $(btn).click(e => {
                    e.stopPropagation();
                    $('.checkul').not(list).hide();
                    $(list).toggle();
                });
            }
            toggle('#purchasetypebtn', '#listedpurchasetype');
            toggle('#partylistbtn', '#listedparty');
            toggle('#godownlistbtn', '#listedgodown');
            toggle('#itemslistbtn', '#listeditems');

            $(document).click(() => $('.checkul').hide());
            $('.checkul').click(e => e.stopPropagation());

            function setupSelectAll(selectAllId, itemClass) {
                $(document).on('change', selectAllId, function() {
                    $(itemClass).prop('checked', $(this).prop('checked'));
                });
                $(document).on('change', itemClass, function() {
                    const total = $(itemClass).length;
                    const checked = $(itemClass + ':checked').length;
                    $(selectAllId).prop('checked', total === checked);
                });
            }

            function filterList(inputSelector, itemSelector, dataAttribute) {
                $(inputSelector).on('keyup', function() {
                    const query = $(this).val().trim().toLowerCase();
                    $(itemSelector).each(function() {
                        const value = String($(this).data(dataAttribute) || $(this).text()).toLowerCase();
                        $(this).toggle(query === '' || value.indexOf(query) !== -1);
                    });
                });
            }

            setupSelectAll('#checkallpurchasetype', '.purchasetypecheckbox');
            setupSelectAll('#checkallpartys', '.partycheckbox');
            setupSelectAll('#checkallgodowns', '.godowncheckbox');
            setupSelectAll('#checkallitemss', '.itemcheckbox');

            filterList('.typesearch', '#listedpurchasetype li.type-list-item', 'typename');
            filterList('.partysearch', '#listedparty li.party-list-item', 'partyname');
            filterList('.godownsearch', '#listedgodown li.godown-list-item', 'godownname');
            filterList('.itemsearch', '#listeditems li.item-list-item', 'itemname');

            let table;

            function suppressDuplicateVoucherRows(rows) {
                if (!Array.isArray(rows)) return rows;

                let lastKey = null;

                return rows.map(function(row) {
                    const vtype = (row && row.vtype != null) ? String(row.vtype) : '';
                    const vno = (row && row.vno != null) ? String(row.vno) : '';
                    const key = vtype + '|' + vno;

                    if (lastKey === key && vtype !== '' && vno !== '') {
                        return Object.assign({}, row, {
                            vtype: '',
                            vno: '',
                            PartyName: '',
                            netamt: null,
                        });
                    }

                    lastKey = key;
                    return row;
                });
            }

            $('#refreshbutton').click(function() {
                const fromdate = $('#fromdate').val();
                const todate = $('#todate').val();


                let purchase_type = [];
                $('.purchasetypecheckbox:checked').each(function() {
                    purchase_type.push($(this).val());
                    console.log($(this).val());
                });

                const party = $('.partycheckbox:checked').map((i, e) => e.value).get();
                const items = $('.itemcheckbox:checked').map((i, e) => e.value).get();
                const godowns = $('.godowncheckbox:checked').map((i, e) => e.value).get();

                table = new Tabulator("#stockTable", {
                    ajaxURL: "{{ route('finalpurchasesummary') }}",
                    ajaxConfig: {
                        method: "POST",
                        headers: {
                            "X-CSRF-TOKEN": "{{ csrf_token() }}"
                        },
                    },
                    ajaxParams: {
                        fromdate,
                        todate,
                        purchase_type,
                        party,
                        godowns,
                        items
                    },
                    ajaxResponse: function(url, params, response) {
                        const rows = Array.isArray(response) ? response : (response && response.data) ? response.data :
                            response;
                        return suppressDuplicateVoucherRows(rows);
                    },

                    layout: "fitColumns",
                    responsiveLayout: false,
                    rowHeight: 30,
                    placeholder: "No data available",
                    columns: [{
                            title: "Date",
                            field: "vdate",
                            width: 100,
                              bottomCalc: "count",
                            bottomCalcFormatter: function(cell) {
                                return "Total";
                            }
                        },
                        {
                            title: "Ref.No",
                            field: "vtype",
                            width: 80
                        },
                        {
                            title: "Par.B.No",
                            field: "vno",
                            width: 80
                        },
                        {
                            title: "Party Name",
                            field: "PartyName",
                            width: 220
                        },
                        {
                            title: "Item Group",
                            field: "ItemGroupName",
                            width: 220
                        },
                        // {
                        //     title: "Commodity Code",
                        //     field: "ItemGroup",
                        //     width: 120
                        // },
                        {
                            title: "Goods Amt.",
                            field: "ItemGroupTotal",
                            hozAlign: "right",
                             bottomCalc: "sum",
                            bottomCalcParams: {
                                precision: 2
                            }
                        },
                        {
                            title: "Net Amt.",
                            field: "netamt",
                            hozAlign: "right",
                            bottomCalc: "sum",
                            bottomCalcParams: {
                                precision: 2
                            }
                        },
                    ]

                });
                table.on("tableBuilt", () => {
                    $('#printButton, #excelButton').show();
                });

                table.on("dataLoadError", function(error) {
                    console.error("Tabulator Load Error:", error);
                });
            });

            $('#excelButton').click(() => table.download("xlsx", "Purchase_Summary.xlsx"));
            $('#printButton').click(
                () => table.print());
        });
    </script>
@endsection
