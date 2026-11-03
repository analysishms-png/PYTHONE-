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
                            {{-- <button type="button" id="printButton" class="btn btn-primary btn-sm">🖨 Print</button>
                            <button type="button" id="excelButton" class="btn btn-success btn-sm">📊 Excel</button> --}}
                        </div>
                        {{-- <span id="printBaseUrl" style="display:none;">{{ route('printpendingpurchaseorder') }}</span> --}}
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
                ajaxURL: "{{ route('finalpendingmr') }}",
                ajaxParams: {
                    _token: "{{ csrf_token() }}",
                    from: lastMonthStr,
                    to: today
                },
                ajaxResponse: function(url, params, response) {
                    return response.data;
                },

                printHeader: function() {
                    return "<h5 style='text-align:center;'>Pending M.RReport</h5>";
                },
                placeholder: "No Pending M.R Found",
                columns: [{
                        title: "MR No",
                        field: "MRNo",
                        width: 120
                    },
                    {
                        title: "MR Type",
                        field: "MRType",
                        width: 100
                    },
                    {
                        title: "Date",
                        field: "V_Date",
                        width: 120,
                        hozAlign: "center"
                    },

                    {
                        title: "Party",
                        field: "PartyName",
                        width: 220
                    },

                    {
                        title: "Challan No",
                        field: "ChalNo",
                        width: 140
                    },
                    {
                        title: "Purchase Doc",
                        field: "PurchaseDocid",
                        width: 150
                    },

                    {
                        title: "PO No",
                        field: "PONo",
                        width: 120
                    },
                    {
                        title: "Indent No",
                        field: "IndentNO",
                        width: 120
                    },

                    {
                        title: "Approved By",
                        field: "ApprovedBy",
                        width: 150
                    },
                    {
                        title: "Remark",
                        field: "Remark",
                        width: 200
                    },

                    {
                        title: "Item",
                        field: "Item",
                        width: 200
                    },

                    {
                        title: "Acc Qty",
                        field: "AccQty",
                        hozAlign: "right",
                        width: 200
                    },
                    {
                        title: "Received Qty",
                        field: "RecdQty",
                        hozAlign: "right",
                        width: 200
                    },

                    {
                        title: "Pending Qty",
                        field: "Qty",
                        hozAlign: "right",
                        width: 200
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
                        title: "Unit",
                        field: "Unit",
                        width: 120
                    },

                    {
                        title: "Amount",
                        field: "Amount",
                        hozAlign: "right",
                        formatter: "money",
                        bottomCalc: "sum",
                        bottomCalcFormatter: "money",
                        bottomCalcFormatterParams: {
                            precision: 2
                        },
                        width: 150
                    }
                ],
            });

            // Refresh Button Click
            $('#refreshbutton').click(function() {
                table.setData("{{ route('finalpendingmr') }}", {
                    _token: "{{ csrf_token() }}",
                    from: $('#fromdate').val(),
                    to: $('#todate').val(),
                    party: getSelectedValues('.partycheckbox'),
                    item: getSelectedValues('.itemcheckbox')
                });
            });

            $('#excelButton').click(() => table.download("xlsx", "Pending_PO.xlsx"));
            $('#printButton').click(() => {
                const baseUrl = document.getElementById('printBaseUrl').innerText.trim();
                const fromdate = $('#fromdate').val();
                const todate = $('#todate').val();
                const parties = getSelectedValues('.partycheckbox').join(',');
                const items = getSelectedValues('.itemcheckbox').join(',');

                let url = baseUrl + '?fromdate=' + fromdate + '&todate=' + todate;
                if (parties) url += '&party=' + encodeURIComponent(parties);
                if (items) url += '&items=' + encodeURIComponent(items);

                window.open(url, '_blank');
            });
        });
    </script>
@endsection
