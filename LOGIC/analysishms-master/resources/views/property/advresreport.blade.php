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
     <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ids = ['fromdate','todate']; // sab IDs ek array me
            const observer = new MutationObserver(muts =>
                muts.forEach(m => m.target.removeAttribute('readonly'))
            );

            ids.forEach(id => {
                const el = document.getElementById(id);
                if (el) {
                    el.removeAttribute('readonly');
                    observer.observe(el, { attributes: true, attributeFilter: ['readonly'] });
                }
            });
        });
    </script>
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
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
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
                                            <input type="date" value="{{ $ncurdate }}" class="form-control"
                                                name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control"
                                                name="todate" id="todate">
                                        </div>
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
                            {{-- <button id="print-combined" class="btn btn-primary">Print All Reports <i class="fa-solid fa-print"></i></button> --}}
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
        $(document).ready(function() {
            let table;
            let csrftoken = "{{ csrf_token() }}";

            $(document).on('click', '#refreshbutton', function() {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();

                showLoader();
                if (fromdate == '') {
                    pushNotify('error', 'Daily Report', 'Please Select For Date', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#fromdate').addClass('invalid');
                }

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/advresreportfetch', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function() {
                    if (fdata.status === 200 && fdata.readyState === 4) {
                        let results = JSON.parse(fdata.responseText);
                        let tabledata = processData(results);

                        if (table) {
                            table.setData(tabledata);
                        } else {
                            let columns = [ //{
                                // title: "Doc Id",
                                // field: "docid",
                                //sorter: "number",
                                //width: 100
                                //},
                                {
                                    title: "Reservation No.",
                                    field: "resno",
                                    sorter: "number",
                                    width: 150,
                                },
                                {
                                    title: "Receipt No.",
                                    field: "recno",
                                    sorter: "number",
                                    width: 150,
                                },
                                {
                                    title: "Status",
                                    field: "status",
                                    sorter: "string",
                                    width: 100,
                                },
                                {
                                    title: "Payment Type",
                                    field: "payment_type",
                                    sorter: "string",
                                    width: 150,
                                },
                                {
                                    title: "Reservation Date",
                                    field: "revdate",
                                    sorter: "number",
                                    width: 200,
                                },
                                {
                                    title: "Guest Name",
                                    field: "guestname",
                                    sorter: "string",
                                    width: 150,
                                },
                                {
                                    title: "Arrival Date",
                                    field: "arrivaldate",
                                    sorter: "number",
                                    width: 150,
                                },
                                {
                                    title: "Departure Date",
                                    field: "depdate",
                                    sorter: "number",
                                    width: 150,
                                },
                                {
                                    title: "AMOUNT",
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
                                    title: "Payment Mode",
                                    field: "pmode",
                                    sorter: "number",
                                    width: 200
                                },
                                {
                                    title: "Company",
                                    field: "company",
                                    sorter: "string",
                                    width: 100
                                },
                                {
                                    title: "Travel Agent",
                                    field: "travelagent",
                                    sorter: "string",
                                    width: 150
                                },
                                {
                                    title: "Username",
                                    field: "uname",
                                    sorter: "string",
                                    width: 150
                                },
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
                            });

                        }

                    }
                }
                fdata.send(
                    `fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`
                );
            });

            $("#print-table").on("click", function() {
                let fromdateText = $('#fromdatep').text();
                let todateText = $('#todatep').text();
                let header = `<h3>${$('.titlep').html()}</h3><p>From Date: ${fromdateText} To Date: ${todateText}</p>`;
                table.print(false, true);
            });

            $("#download-xlsx").on("click", function() {
                table.download("xlsx", "daily_report.xlsx", {
                    sheetName: "Daily Report"
                });
            });
        });

        function processData(results) {
            let reportData = [];

            results.forEach(function(row) {
                reportData.push({
                    // docid: row.DocId,
                    resno: row.ResNo,
                    recno: row.Reciptno,
                    status: row.Status,
                    payment_type: row.PaymentType,
                    revdate: dmy(row.ResDate),
                    guestname: row.GuestName,
                    arrivaldate: dmy(row.ArrivalDate),
                    depdate: dmy(row.Depdate),
                    amount: row.Amount,
                    pmode: row.PMode,
                    company: row.Company,
                    travelagent: row.TravelAgent,
                    uname: row.u_name
                });
            });

            setTimeout(hideLoader, 1000);

            return reportData;
        }
    </script>
@endsection
