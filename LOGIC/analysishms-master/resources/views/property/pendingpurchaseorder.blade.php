@extends('property.layouts.main')

@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <style>
        .checkul {
            position: absolute;
            z-index: 1000;
            background: white;
            border: 1px solid #ddd;
            padding: 10px;
            list-style: none;
            width: 100%;
            max-height: 300px;
            overflow-y: auto;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <div class="content-body">
        <div class="container-fluid">
            <a href="{{ route('invdashboard') }}" class="btn btn-secondary mb-3">
                ← Back to Dashboard
            </a>
            <div class="card">
                <div class="card-body">
                    <form id="reportForm">
                        @csrf
                        <div class="text-center titlep mb-4">
                            <h3>{{ $company->comp_name }}</h3>
                            <p class="mb-1">{{ $company->address1 }}</p>
                            <p class="mb-1">{{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                            <p class="mb-0 font-weight-bold">Pending Indent Report</p>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>From Date</label>
                                <input type="date" id="fromdate" class="form-control">
                            </div>
                            <div class="col-md-3">
                                <label>To Date</label>
                                <input type="date" id="todate" class="form-control">
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100"
                                    id="partylistbtn">Party</button>
                                <ul class="checkul" id="listedparty" style="display:none">
                                    <li><input type="checkbox" id="checkallpartys" checked> Select All</li>
                                    @foreach ($subgroups as $party)
                                        <li>
                                            <input type="checkbox" class="partycheckbox" value="{{ $party->sub_code }}"
                                                checked>
                                            {{ $party->name }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100"
                                    id="itemslistbtn">Items</button>
                                <ul class="checkul" id="listeditems" style="display:none">
                                    <li><input type="checkbox" id="checkallitemss" checked> Select All</li>
                                    {{-- Use Key (Code) as value and Name as label --}}
                                    @foreach ($itemmast as $code => $name)
                                        <li>
                                            <input type="checkbox" class="itemcheckbox" value="{{ $code }}" checked>
                                            {{ $name }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>

                        <div class="text-center mt-3">
                            <button type="button" id="refreshbutton" class="btn btn-success btn-sm">Refresh</button>
                            <button type="button" id="printButton" class="btn btn-primary btn-sm">🖨 Print</button>
                            <button type="button" id="excelButton" class="btn btn-success btn-sm">📊 Excel</button>
                        </div>
                        <span id="printBaseUrl" style="display:none;">{{ route('printpendingpurchaseorder') }}</span>
                    </form>

                    <div class="mt-4">
                        <div id="stockTable"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Set Default Dates: Last 1 month
            let today = new Date().toISOString().slice(0, 10);
            let lastMonth = new Date();
            lastMonth.setMonth(lastMonth.getMonth() - 1);
            let lastMonthStr = lastMonth.toISOString().slice(0, 10);
            $('#fromdate').val(lastMonthStr);
            $('#todate').val(today);

            // Toggle dropdowns
            function toggle(btn, list) {
                $(btn).click(e => {
                    e.stopPropagation();
                    $('.checkul').not(list).hide();
                    $(list).toggle();
                });
            }
            toggle('#partylistbtn', '#listedparty');
            toggle('#itemslistbtn', '#listeditems');

            $(document).click(() => $('.checkul').hide());
            $('.checkul').click(e => e.stopPropagation());

            function setupSelectAll(selectAllId, itemClass) {
                $(document).on('change', selectAllId, function() {
                    $(itemClass).prop('checked', $(this).prop('checked'));
                });
                $(document).on('change', itemClass, function() {
                    $(selectAllId).prop('checked', $(itemClass).length === $(itemClass + ':checked')
                        .length);
                });
            }
            setupSelectAll('#checkallpartys', '.partycheckbox');
            setupSelectAll('#checkallitemss', '.itemcheckbox');

            function getSelectedValues(className) {
                return $(className + ':checked').map(function() {
                    return $(this).val();
                }).get();
            }

            // Initialize Tabulator
            const table = new Tabulator("#stockTable", {
                height: "auto",
                layout: "fitColumns",
                ajaxConfig: "POST",
                ajaxURL: "{{ route('finalpendingpurchaseorder') }}",
                ajaxParams: {
                    _token: "{{ csrf_token() }}",
                    fromdate: lastMonthStr,
                    todate: today
                },

                printHeader: function() {
                    return "<h5 style='text-align:center;'>Pending Purchase Order Report</h5>";
                },
                placeholder: "No Pending Purchase Orders Found",
                columns: [{
                        title: "Ord. No",
                        field: "PONo",
                        width: 100
                    },
                    {
                        title: "Date",
                        field: "vdate",
                        width: 120,
                        hozAlign: "center"
                    },
                    {
                        title: "Exp. Delivery",
                        field: "exp_delivery",
                        width: 130,
                        hozAlign: "center"
                    },
                    {
                        title: "Party",
                        field: "PartyName",
                        width: 220
                    },
                    {
                        title: "Item Name",
                        field: "ItemName",
                        width: 200
                    },
                    {
                        title: "Specification",
                        field: "Specification",
                        width: 150
                    },
                    {
                        title: "Qty",
                        field: "Qty",
                        hozAlign: "right",
                        width: 80
                    },
                    {
                        title: "Unit",
                        field: "UnitName",
                        width: 80,
                        hozAlign: "center"
                    },
                    {
                        title: "Rate",
                        field: "Rate",
                        hozAlign: "right",
                        formatter: "money",
                        formatterParams: {
                            precision: 2
                        }
                    },
                    {
                        title: "Amount",
                        field: "Amount",
                        hozAlign: "right",
                        bottomCalc: "sum",
                        formatter: "money",
                        bottomCalcFormatter: "money"
                    }
                ],
            });

            // Refresh Button Click
            $('#refreshbutton').click(function() {
                table.setData("{{ route('finalpendingpurchaseorder') }}", {
                    _token: "{{ csrf_token() }}",
                    fromdate: $('#fromdate').val(),
                    todate: $('#todate').val(),
                    party: getSelectedValues('.partycheckbox'),
                    items: getSelectedValues('.itemcheckbox')
                });
            });

            $('#excelButton').click(() => table.download("xlsx", "Pending_PO.xlsx"));
            $('#printButton').click(() => {
                const baseUrl = document.getElementById('printBaseUrl').innerText.trim();
                const fromdate = $('#fromdate').val();
                const todate   = $('#todate').val();
                const parties  = getSelectedValues('.partycheckbox').join(',');
                const items    = getSelectedValues('.itemcheckbox').join(',');

                let url = baseUrl + '?fromdate=' + fromdate + '&todate=' + todate;
                if (parties) url += '&party=' + encodeURIComponent(parties);
                if (items)   url += '&items=' + encodeURIComponent(items);

                window.open(url, '_blank');
            });
        });
    </script>
@endsection
