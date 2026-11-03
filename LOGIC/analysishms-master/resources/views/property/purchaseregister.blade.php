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
                            <p class="mb-0 font-weight-bold">Purchase Register Report</p>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>From Date</label>
                                <input type="date" id="fromdate" value="{{ ncurdate() }}" class="form-control">
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
                                <input type="hidden" id="paymentFilter" value="all">
                                <ul class="checkul" id="listedpurchasetype" style="display:none">

                                    @php
                                        $purchaseTypes = [
                                            'PBC' => 'Purchase Bill (Cash)',
                                            'PBR' => 'Purchase Bill (Credit)',
                                        ];
                                    @endphp

                                    <li>
                                        <input type="text" placeholder="Search Type..." class="form-control typsearch">
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
                        </div>

                        {{-- ITEMS + TAX --}}
                        <div class="row mt-3">
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

                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100" id="taxstrubtn">Tax
                                    Structure</button>
                                <ul class="checkul" id="listedtaxstru" style="display:none">
                                    <li><input type="text" placeholder="Search Tax..." class="form-control taxsearch"></li>
                                    <li><input type="checkbox" id="checkalltaxstru" checked> Select All</li>
                                    <hr class="my-1">
                                    @foreach ($taxNames as $name)
                                        <li class="tax-list-item" data-taxname="{{ strtolower($name->name) }}">
                                            <input type="checkbox" class="taxstrucheckbox" value="{{ $name->TaxStru }}"
                                                checked> {{ $name->name }}
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
                            <label class="ml-3 mb-0" style="font-weight:bold; cursor:pointer;">
                                <input type="checkbox" id="withItemDetail"> With Item Detail
                            </label>
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
            function toggle(btn, list) {
                $(btn).click(e => {
                    e.stopPropagation();
                    $('.checkul').not(list).hide();
                    $(list).toggle();
                });
            }
            toggle('#purchasetypebtn', '#listedpurchasetype');
            toggle('#partylistbtn', '#listedparty');
            toggle('#itemslistbtn', '#listeditems');
            toggle('#taxstrubtn', '#listedtaxstru');

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
            setupSelectAll('#checkallitemss', '.itemcheckbox');
            setupSelectAll('#checkalltaxstru', '.taxstrucheckbox');

            filterList('.typsearch', '#listedpurchasetype li.type-list-item', 'typename');
            filterList('.partysearch', '#listedparty li.party-list-item', 'partyname');
            filterList('.itemsearch', '#listeditems li.item-list-item', 'itemname');
            filterList('.taxsearch', '#listedtaxstru li.tax-list-item', 'taxname');

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
                            partybillno: '',
                            PartyName: '',
                            total: null,
                            discamt: null,
                            TaxAmt: null,
                            igst: null,
                            cgst: null,
                            sgst: null,
                            Addition: null,
                            Deduction: null,
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
                });

                console.log('Selected Purchase Types:', purchase_type);

                const party = $('.partycheckbox:checked').map((i, e) => e.value).get();
                const items = $('.itemcheckbox:checked').map((i, e) => e.value).get();
                const taxstru = $('.taxstrucheckbox:checked').map((i, e) => e.value).get();

                table = new Tabulator("#stockTable", {
                    ajaxURL: "{{ route('finalpurchaseregister') }}",
                    ajaxConfig: {
                        method: "POST",
                        headers: {
                            "X-CSRF-TOKEN": "{{ csrf_token() }}"
                        },
                    },
                    ajaxParams: {
                        fromdate: fromdate,
                        todate: todate,
                        purchase_type: purchase_type,
                        party: party,
                        items: items,
                        taxstru: taxstru
                    },
                    ajaxResponse: function(url, params, response) {
                        const rows = Array.isArray(response) ? response : (response && response
                                .data) ? response.data :
                            response;
                        return suppressDuplicateVoucherRows(rows);
                    },
                    layout: "fitDataFill",
                    responsiveLayout: false,
                    placeholder: "No data available",
                    columns: [{
                            title: "Date",
                            field: "vdate",
                            width: 100,
                            bottomCalc: "count",
                            bottomCalcFormatter: function(cell) {
                                return "Total";
                            },
                            bottomCalcFormatterParams: {
                                precision: 0
                            }
                        },
                        {
                            title: "Ref No",
                            field: "vno",
                            width: 80
                        },
                        {
                            title: "Par.B.No",
                            field: "partybillno",
                            width: 100
                        },
                        {
                            title: "Party",
                            field: "PartyName",
                            width: 180
                        },
                        {
                            title: "Item",
                            field: "Item",
                            width: 180,
                            visible: false
                        },
                        {
                            title: "Ac Name",
                            field: "AcName",
                            width: 150,
                            visible: false
                        },
                        {
                            title: "Qty",
                            field: "qty",
                            width: 80,
                            hozAlign: "right",
                            visible: false
                        },
                        {
                            title: "Unit",
                            field: "recdunit",
                            width: 70,
                            visible: false
                        },
                        {
                            title: "Rate",
                            field: "Rate",
                            width: 90,
                            hozAlign: "right",
                            visible: false
                        },
                        {
                            title: "Amount",
                            field: "amount",
                            width: 100,
                            hozAlign: "right",
                            visible: false
                        },
                        {
                            title: "Gross Amt.",
                            field: "total",
                            width: 110,
                            hozAlign: "right",
                            bottomCalc: "sum"
                        },
                        {
                            title: "Disc.",
                            field: "discamt",
                            width: 80,
                            hozAlign: "right",
                            bottomCalc: "sum"
                        },
                        {
                            title: "Tax Amt.",
                            field: "TaxAmt",
                            width: 100,
                            hozAlign: "right",
                            bottomCalc: "sum"
                        },
                        {
                            title: "IGST",
                            field: "igst",
                            width: 80,
                            hozAlign: "right",
                            bottomCalc: "sum"
                        },
                        {
                            title: "CGST",
                            field: "cgst",
                            width: 80,
                            hozAlign: "right",
                            bottomCalc: "sum"
                        },
                        {
                            title: "SGST",
                            field: "sgst",
                            width: 80,
                            hozAlign: "right",
                            bottomCalc: "sum"
                        },
                        {
                            title: "Add.",
                            field: "Addition",
                            width: 80,
                            hozAlign: "right",
                            bottomCalc: "sum"
                        },
                        {
                            title: "Ded.",
                            field: "Deduction",
                            width: 80,
                            hozAlign: "right",
                            bottomCalc: "sum"
                        },
                        {
                            title: "Net Amt.",
                            field: "netamt",
                            width: 120,
                            hozAlign: "right",
                            fontWeight: "bold",
                            bottomCalc: "sum"
                        }
                    ]
                });
                table.on("tableBuilt", () => {
                    $('#printButton, #excelButton').show();
                    // checkbox ki current state ke hisaab se columns show/hide karo
                    if ($('#withItemDetail').is(':checked')) {
                        table.showColumn('Item');
                        table.showColumn('AcName');
                        table.showColumn('qty');
                        table.showColumn('recdunit');
                        table.showColumn('Rate');
                        table.showColumn('amount');
                    }
                });

                table.on("dataLoadError", function(error) {
                    console.error("Tabulator Load Error:", error);
                });
            });

            $('#excelButton').click(() => table.download("xlsx", "Purchase_Register.xlsx"));
            $('#printButton').click(() => table.print());

            // With Item Detail checkbox toggle
            $('#withItemDetail').on('change', function() {
                if (!table) return;
                if ($(this).is(':checked')) {
                    table.showColumn('Item');
                    table.showColumn('AcName');
                    table.showColumn('qty');
                    table.showColumn('recdunit');
                    table.showColumn('Rate');
                    table.showColumn('amount');
                } else {
                    table.hideColumn('Item');
                    table.hideColumn('AcName');
                    table.hideColumn('qty');
                    table.hideColumn('recdunit');
                    table.hideColumn('Rate');
                    table.hideColumn('amount');
                }
            });
        });
    </script>
@endsection
