@extends('property.layouts.main')
@section('main-container')
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
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
        .tabulator-col .tabulator-arrow { display: none !important; }
        #revenue-source-table { width: 100% !important; }
    </style>

    {{-- Readonly remove for date inputs --}}
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ids = ['fromdate', 'todate'];
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
                                {{-- Hidden company info --}}
                                <input type="hidden" value="{{ $company->start_dt }}"   name="start_dt"   id="start_dt">
                                <input type="hidden" value="{{ $company->end_dt }}"     name="end_dt"     id="end_dt">
                                <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"   name="propertyid">
                                <input type="hidden" value="{{ $company->comp_name }}"  id="compname"     name="compname">
                                <input type="hidden" value="{{ $company->address1 }}"   id="address"      name="address">
                                <input type="hidden" value="{{ $company->city }}"       id="city"         name="city">
                                <input type="hidden" value="{{ $company->mobile }}"     id="compmob"      name="compmob">
                                <input type="hidden" value="{{ $statename }}"           id="statename"    name="statename">
                                <input type="hidden" value="{{ $company->pin }}"        id="pin"          name="pin">
                                <input type="hidden" value="{{ $company->email }}"      id="email"        name="email">
                                <input type="hidden" value="{{ $company->logo }}"       id="logo"         name="logo">
                                <input type="hidden" value="{{ $company->u_name }}"     id="u_name"       name="u_name">
                                <input type="hidden" value="{{ $company->gstin }}"      id="gstin"        name="gstin">

                                {{-- Report Header --}}
                                <div class="text-center titlep">
                                    <h3>{{ $company->comp_name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                    </p>
                                    <p style="margin-top:-10px; font-size:16px;">Revenue Source Report</p>
                                    <p style="text-align:left; margin-top:-10px; font-size:16px;">
                                        From Date: <span id="fromdatep"></span>&nbsp;&nbsp;
                                        To Date: <span id="todatep"></span>
                                    </p>
                                </div>

                                {{-- Date Filters --}}
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">
                                                From Date <i class="fa-regular fa-calendar mb-1"></i>
                                            </label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control"
                                                   name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">
                                                To Date <i class="fa-regular fa-calendar mb-1"></i>
                                            </label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control"
                                                   name="todate" id="todate">
                                        </div>
                                    </div>
                                </div>

                                <div class="refresh-button-container mt-2">
                                    <button type="button" id="refreshbutton" class="btn btn-primary">
                                        Refresh
                                    </button>
                                </div>
                            </form>

                            {{-- Action Buttons --}}
                            <div class="mt-3">
                                <button id="print-table" class="btn btn-primary">
                                    Print <i class="fa-solid fa-print"></i>
                                </button>
                                <button id="download-xlsx" class="btn btn-success">
                                    Excel <i class="fa fa-file-excel-o"></i>
                                </button>
                            </div>

                            {{-- Hidden URLs --}}
                            <span id="printUrl"  style="display:none;">{{ route('printrevenuesourcereport') }}</span>
                            <span id="exportUrl" style="display:none;">{{ route('revenuesourcereport.export') }}</span>

                            <div class="custom-header">Revenue Source Report</div>
                            <div class="mt-3" id="revenue-source-table"></div>

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

            $(document).on('click', '#refreshbutton', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();

                if (!fromdate) {
                    pushNotify('error', 'Revenue Source Report', 'Please select From Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (!todate) {
                    pushNotify('error', 'Revenue Source Report', 'Please select To Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                showLoader();

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/fetchrevenuesourcereport', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function () {
                    if (fdata.readyState === 4 && fdata.status === 200) {
                        let response  = JSON.parse(fdata.responseText);
                        let results   = response.data || [];
                        let tabledata = processData(results);

                        $('#fromdatep').text(dmy(fromdate));
                        $('#todatep').text(dmy(todate));

                        if (table) {
                            table.setData(tabledata);
                        } else {
                            let columns = [
                                {
                                    title: "Revenue Source",
                                    field: "revenuesource",
                                    sorter: "string",
                                    width: 160,
                                },
                                {
                                    title: "Check-ins",
                                    field: "checkins",
                                    sorter: "number",
                                    hozAlign: "right",
                                    width: 100,
                                    bottomCalc: "sum",
                                },
                                {
                                    title: "Room Nights",
                                    field: "roomnights",
                                    sorter: "number",
                                    hozAlign: "right",
                                    width: 110,
                                    bottomCalc: "sum",
                                },
                                {
                                    title: "Guests",
                                    field: "guests",
                                    sorter: "number",
                                    hozAlign: "right",
                                    width: 90,
                                    bottomCalc: "sum",
                                },
                                {
                                    title: "Gross Revenue",
                                    field: "grossrevenue",
                                    sorter: "number",
                                    hozAlign: "right",
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    formatter: "money",
                                    formatterParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2 },
                                },
                                {
                                    title: "Room Rent",
                                    field: "roomrent",
                                    sorter: "number",
                                    hozAlign: "right",
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    formatter: "money",
                                    formatterParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2 },
                                },
                                {
                                    title: "Transfer From Outlet",
                                    field: "transferfromoutlet",
                                    sorter: "number",
                                    hozAlign: "right",
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    formatter: "money",
                                    formatterParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2 },
                                },
                                {
                                    title: "Tax",
                                    field: "tax",
                                    sorter: "number",
                                    hozAlign: "right",
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    formatter: "money",
                                    formatterParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2 },
                                },
                                {
                                    title: "ADR",
                                    field: "adr",
                                    sorter: "number",
                                    hozAlign: "right",
                                    width: 100,
                                    formatter: "money",
                                    formatterParams: { precision: 2 },
                                },
                            ];

                            table = new Tabulator("#revenue-source-table", {
                                data: tabledata,
                                printHeader: $('.titlep').html(),
                                printFooter: "<h2>Copyright @Analysis</h2>",
                                columns: columns,
                                layout: "fitColumns",
                                layoutColumnsOnNewData: true,
                                width: "100%",
                                pagination: "local",
                                paginationSize: 100,
                                tooltips: true,
                            });
                        }

                        setTimeout(hideLoader, 800);
                    } else if (fdata.readyState === 4) {
                        setTimeout(hideLoader, 800);
                    }
                };

                fdata.send(
                    `fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`
                );
            });

            // Print
            $("#print-table").on("click", function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                if (!fromdate || !todate) {
                    pushNotify('error', 'Revenue Source Report', 'Please select date range first',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                let url = $('#printUrl').text().trim() + '?fromdate=' + fromdate + '&todate=' + todate;
                window.open(url, '_blank');
            });

            // Excel Download
            $("#download-xlsx").on("click", function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                if (!fromdate || !todate) {
                    pushNotify('error', 'Revenue Source Report', 'Please select date range first',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                let url = $('#exportUrl').text().trim() + '?fromdate=' + fromdate + '&todate=' + todate;
                window.location.href = url;
            });
        });

        function processData(results) {
            let reportData = [];
            results.forEach(function (row) {
                reportData.push({
                    revenuesource      : row.RevenueSource                          || '-',
                    checkins           : parseInt(row.Checkins)                     || 0,
                    roomnights         : parseInt(row.RoomNights)                   || 0,
                    guests             : parseInt(row.Guests)                       || 0,
                    grossrevenue       : parseFloat(row.GrossRevenue)               || 0,
                    roomrent           : parseFloat(row.RoomRent)                   || 0,
                    transferfromoutlet : parseFloat(row.TranferFromOutlet)          || 0,
                    tax                : parseFloat(row.Tax)                        || 0,
                    adr                : row.ADR !== null ? parseFloat(row.ADR) : 0,
                });
            });
            return reportData;
        }
    </script>
@endsection
