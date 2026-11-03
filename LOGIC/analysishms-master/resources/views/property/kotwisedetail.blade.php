@extends('property.layouts.main')
@section('main-container')
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <style>
        .custom-header {
            background-color: #777575;
            text-align: center;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            border: 1px solid #ddd;
            margin: 10px 0 -17px 0;
            color: white;
            display: none;
        }

        .tabulator-col .tabulator-arrow {
            display: none !important;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="" method="post">
                                <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                <input type="hidden" value="{{ $company->propertyid }}" id="propertyid" name="propertyid">
                                <input type="hidden" value="{{ $company->comp_name }}" id="compname" name="compname">
                                <input type="hidden" value="{{ $company->address1 }}" id="address" name="address">
                                <input type="hidden" value="{{ $company->city }}" id="city" name="city">
                                <input type="hidden" value="{{ $company->mobile }}" id="compmob" name="compmob">
                                <input type="hidden" value="{{ $statename }}" id="statename" name="statename">
                                <input type="hidden" value="{{ $company->pin }}" id="pin" name="pin">
                                <input type="hidden" value="{{ $company->email }}" id="email" name="email">
                                <input type="hidden" value="{{ $company->logo }}" id="logo" name="logo">
                                <input type="hidden" value="{{ $company->u_name }}" id="u_name" name="u_name">
                                <input type="hidden" value="{{ $company->gstin }}" id="gstin" name="gstin">
                                <div class="text-center titlep">
                                    <h3>{{ $company->comp_name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                    </p>
                                    <p style="margin-top:-10px; font-size:16px;">FOM Tax Details</p>
                                    <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                            id="fromdatep"></span> To Date:
                                        <span id="todatep"></span>
                                    </p>
                                </div>
                                <div class="row">
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>

                                    <script>
                                        document.addEventListener("DOMContentLoaded", function () {
                                            const from = document.getElementById("fromdate");
                                            const to = document.getElementById("todate");

                                            [from, to].forEach(el => {
                                                if (!el) return;
                                                el.removeAttribute("readonly");
                                                el.removeAttribute("disabled");
                                                el.style.pointerEvents = "auto";
                                                el.style.backgroundColor = "#fff";
                                            });
                                        });
                                    </script>
                                    <div class="col-md-3">
                                        <button style="width: 100%;" type="button" class="btn btn-outline-primary"
                                            id="outletlistbtn">Outlets <i class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listedoutlet"
                                            style="display:none; position:absolute; z-index:100; background:white; border:1px solid #ccc; width:90%; padding:10px; list-style:none; max-height: 250px; overflow-y: auto; box-shadow: 0px 4px 8px rgba(0,0,0,0.1);">
                                            <li>
                                                <input type="checkbox" id="checkalloutlets">
                                                <span class="font-weight-bold">Select All <span
                                                        class="tcount">{{ count($outlets) }}</span></span>
                                            </li>
                                            <hr class="my-1">
                                            @foreach ($outlets as $outlet)
                                                <li>
                                                    <input class="groupcheckbox" value="{{ $outlet->dcode }}" type="checkbox">
                                                    <span>{{ $outlet->Name }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                <div class="refresh-button-container">
                                    <button type="button" id="refreshbutton" class="btn btn-primary">Refresh</button>
                                </div>

                            </form>
                            <div class="mt-3">
                                <button id="print-table" class="btn btn-primary">Print <i
                                        class="fa-solid fa-print"></i></button>
                                <button id="download-xlsx" class="btn btn-success">Excel <i
                                        class="fa fa-file-excel-o"></i></button>
                            </div>
                            {{-- <button id="print-combined" class="btn btn-primary">Print All Reports <i
                                    class="fa-solid fa-print"></i></button> --}}
                            <div class="custom-header">Sales Summary</div>
                            <div class="mt-3" id="kot-table"></div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $(document).ready(function () {
            let table;
            let csrftoken = "{{ csrf_token() }}";

            // Outlets dropdown toggle
            $('#outletlistbtn').on('click', function () {
                $('#listedoutlet').slideToggle('fast');
            });

            // Select all outlets by default on page load
            $('#checkalloutlets').prop('checked', true);
            $('.groupcheckbox').prop('checked', true);

            // Select All outlets functionality
            $('#checkalloutlets').on('change', function () {
                if ($(this).is(':checked')) {
                    $('.groupcheckbox').prop('checked', true);
                } else {
                    $('.groupcheckbox').prop('checked', false);
                }
            });

            // Close dropdown when clicking outside
            $(document).on('click', function (e) {
                if (!$(e.target).closest('#outletlistbtn, #listedoutlet').length) {
                    $('#listedoutlet').slideUp('fast');
                }
            });

            $(document).on('change', '#fromdate', function () {
                validateFinancialYear('#fromdate');
            });
            $(document).on('change', '#todate', function () {
                validateFinancialYear('#todate');
            });

            $(document).on('click', '#refreshbutton', function () {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                // get OutLets
                let outlet = [];
                $('.groupcheckbox:checked').each(function() {
                    outlet.push($(this).val());
                });


                $('#fromdatep').text(dmy(fromdate));
                $('#todatep').text(dmy(todate));

                showLoader();
                if (fromdate == '') {
                    pushNotify('error', 'Daily Report', 'Please Select For Date', 'fade', 300, '', '',
                        true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#fromdate').addClass('invalid');
                }

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/kotwisedetailfetch', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function () {
                    if (fdata.status === 200 && fdata.readyState === 4) {
                        let results = JSON.parse(fdata.responseText);
                        let tabledata = processData(results);

                        if (table) {
                            table.setData(tabledata);
                        } else {
                            let columns = [{
                                title: "OUTLET",
                                field: "outlet",
                                sorter: "string",
                                width: 150,
                                visible: false
                            },
                            {
                                title: "Date",
                                field: "date",
                                sorter: "number",
                                width: 150,
                            },
                            {
                                title: "TABLE/ROOM NO.",
                                field: "tbl_rm_no",
                                sorter: "number",
                                width: 130,
                            },
                            {
                                title: "KOT TIME",
                                field: "time",
                                sorter: "number",
                                width: 100
                            },
                            {
                                title: "KOT NO",
                                field: "kot_no",
                                sorter: "number",
                                width: 100,
                            },
                            {
                                title: "BILL NO.",
                                field: "billno",
                                sorter: "number",
                                width: 150,
                            },
                            {
                                title: "QTY",
                                field: "qty",
                                sorter: "number",
                                width: 100
                            },
                            {
                                title: "RATE",
                                field: "rate",
                                sorter: "number",
                                width: 100,
                                formatter: "money",
                                formatterParams: {
                                    precision: 2,
                                },
                                bottomCalc: "sum",
                                bottomCalcFormatter: "money",
                                bottomCalcFormatterParams: {
                                    precision: 2,
                                },
                            },
                            {
                                title: "Amount",
                                field: "amount",
                                sorter: "number",
                                width: 100,
                                formatter: "money",
                                formatterParams: {
                                    precision: 2,
                                },
                                bottomCalc: "sum",
                                bottomCalcFormatter: "money",
                                bottomCalcFormatterParams: {
                                    precision: 2,
                                },
                            },
                            {
                                title: "ITEM NAME",
                                field: "itemname",
                                sorter: "string",
                                width: 250,
                            },
                            {
                                title: "EDIT TIME",
                                field: "vtime",
                                sorter: "number",
                                width: 100,
                            },
                            {
                                title: "WAITER",
                                field: "waiter",
                                sorter: "string",
                                width: 100,
                            },
                            {
                                title: "USER",
                                field: "user",
                                sorter: "string",
                                width: 200
                            },
                            {
                                title: "Void",
                                field: "voidyn",
                                sorter: "string",
                                width: 200
                            },
                                /*{
                                    title: "REMARKS",
                                    field: "remark",
                                    sorter: "string",
                                    width: 200
                                },
                                {
                                    title: "REASON",
                                    field: "reason",
                                    sorter: "string",
                                    width: 200
                                },*/
                            ];

                            $('#fordatep').text(dmy(fromdate));

                            table = new Tabulator("#kot-table", {
                                data: tabledata,
                                printHeader: $('.titlep').html(),
                                printFooter: "<h2>Copyright @Analysis</h2>",
                                columns: columns,
                                layout: "fitColumns",
                                pagination: "local",
                                paginationSize: 100,
                                tooltips: true,
                                groupBy: "outlet",
                            });

                        }

                    }
                }
                const params = new URLSearchParams();
                params.append('fromdate', fromdate);
                params.append('todate', todate);
                outlet.forEach(function (code) {
                    params.append('outlet[]', code);
                });
                params.append('_token', '{{ csrf_token() }}');

                fdata.send(params.toString());
            });

            $("#print-table").on("click", function () {
                let fromdateText = $('#fromdatep').text();
                let todateText = $('#todatep').text();
                let header = `<h3>${$('.titlep').html()}</h3><p>From Date: ${fromdateText} To Date: ${todateText}</p>`;
                table.print(false, true);
            });

            $("#download-xlsx").on("click", function () {
                table.download("xlsx", "daily_report.xlsx", {
                    sheetName: "Daily Report"
                });
            });
        });

        function processData(results) {
            let reportData = [];

            results.forEach(function (row) {
                reportData.push({
                    outlet: row.OutLet,
                    date: dmy(row.Date),
                    tbl_rm_no: row.TableRoomNo,
                    kot_no: row.KOTNO,
                    time: row.KotTime,
                    billno: row.BILLNO,
                    qty: row.QTY,
                    rate: row.Rate,
                    amount: row.kotamount,
                    itemname: row.ITEMNAME,
                    vtime: row.EditTime,
                    waiter: row.WAITER,
                    user: row.UserName,
                    voidyn: row.VoidYN,
                });
            });

            setTimeout(hideLoader, 1000);

            return reportData;
        }
    </script>
@endsection