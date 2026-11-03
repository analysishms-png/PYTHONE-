@extends('property.layouts.main')

@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
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

                    <form>
                        <div class="text-center titlep mb-4">
                            <h3>{{ companydata()->comp_name }}</h3>
                            <p class="mb-1">{{ companydata()->address1 }}</p>
                            <p class="mb-1">
                                {{ $statename . ' - ' . companydata()->city . ' - ' . companydata()->pin }}</p>
                            <p class="mb-0 font-weight-bold">Pending Indent Report</p>
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

                        <div class="row mt-3">
                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100"
                                    id="departlistbtn">Department</button>
                                <ul class="checkul" id="listeddepart" style="display:none">
                                    <li><input type="checkbox" id="checkalldeparts" checked> Select All</li>
                                    @foreach ($depart as $name)
                                        <li>
                                            <input type="checkbox" class="departcheckbox" value="{{ $name }}"
                                                checked>
                                            {{ $name }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="col-md-3 position-relative">
                                <button type="button" class="btn btn-outline-primary w-100"
                                    id="itemslistbtn">Items</button>
                                <ul class="checkul" id="listeditems" style="display:none">
                                    <li><input type="checkbox" id="checkallitemss" checked> Select All</li>

                                    @foreach ($itemmast->sort() as $name)
                                        <li>
                                            <input type="checkbox" class="itemcheckbox" value="{{ $name }}" checked>
                                            {{ $name }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                        </div>

                        <div class="text-center mt-3">
                            <button type="button" id="refreshbutton" class="btn btn-success btn-sm">Refresh</button>
                            <button type="button" id="printButton" class="btn btn-primary btn-sm">
                                🖨 Print
                            </button>

                            <button type="button" id="excelButton" class="btn btn-success btn-sm">
                                📊 Excel
                            </button>
                        </div>

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
            toggle('#departlistbtn', '#listeddepart');
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
            setupSelectAll('#checkalldeparts', '.departcheckbox');
            setupSelectAll('#checkallitemss', '.itemcheckbox');

        });
        let table;

        function loadTable() {

            let depart = $('.departcheckbox:checked').map(function() {
                return $(this).val();
            }).get();

            let items = $('.itemcheckbox:checked').map(function() {
                return $(this).val();
            }).get();

            $.ajax({
                url: "{{ route('finalpendingindent') }}",
                method: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    fromdate: $('#fromdate').val(),
                    todate: $('#todate').val(),
                    depart: depart,
                    items: items
                },
                success: function(data) {

                    if (!table) {
                        table = new Tabulator("#stockTable", {
                            data: data,
                            layout: "fitColumns",
                            height: "auto",
                            placeholder: "No pending indent data available for selected filters",
                            reactiveData: true,
                            // groupBy: ["IndNo", "Date", "Department"],
                            groupStartOpen: true,
                            printAsHtml: true,
                            printStyled: true,
                        printHeader: function() {
                                return `
                                    <div style="text-align:center;">
                                        <h5>Pending Indent Report</h5>
                                    </div>
                                `;
                            },
                            columns: [{
                                    title: "Ind.No",
                                    field: "IndNo",
                                },
                                {
                                    title: "Date",
                                    field: "Date",
                                    hozAlign: "center"
                                },
                                {
                                    title: "Remark",
                                    field: "Remark",
                                },
                                {
                                    title: "Department",
                                    field: "Department",
                                },
                                {
                                    title: "Item Name",
                                    field: "ItemName",
                                },
                                {
                                    title: "Specification",
                                    field: "Specification",
                                },
                                {
                                    title: "Qty",
                                    field: "Qty",
                                    hozAlign: "right",
                                },
                                {
                                    title: "Rate",
                                    field: "Rate",
                                    hozAlign: "right",
                                },
                                {
                                    title: "Unit",
                                    field: "Unit",
                                },
                                {
                                    title: "Amount",
                                    field: "Amount",
                                    hozAlign: "right",
                                },
                            ],
                        });
                    } else {
                        table.setData(data);
                    }
                }
            });
        }

        // 🔄 Refresh
        $('#refreshbutton').click(() => loadTable());

        // 🖨 Print
        $('#printButton').click(() => {
            let depart = $('.departcheckbox:checked').map(function() {
                return $(this).val();
            }).get();

            let items = $('.itemcheckbox:checked').map(function() {
                return $(this).val();
            }).get();

            let fromdate = $('#fromdate').val();
            let todate   = $('#todate').val();

            let params = new URLSearchParams();
            params.append('fromdate', fromdate);
            params.append('todate', todate);
            depart.forEach(d => params.append('depart[]', d));
            items.forEach(i => params.append('items[]', i));

            window.open("{{ route('printpendingindent') }}?" + params.toString(), '_blank');
        });

        // 📊 Excel
        $('#excelButton').click(() => {
            if (table) table.download("xlsx", "Pending_Indent_Report.xlsx", {
                sheetName: "Pending Indent"
            });
        });

        // ⏱ Auto load (last 1 month → today)
        $(document).ready(function() {
            let today = new Date().toISOString().split('T')[0];
            let lastMonth = new Date();
            lastMonth.setMonth(lastMonth.getMonth() - 1);

            $('#fromdate').val(lastMonth.toISOString().split('T')[0]);
            $('#todate').val(today);

            loadTable();
        });
    </script>
@endsection
