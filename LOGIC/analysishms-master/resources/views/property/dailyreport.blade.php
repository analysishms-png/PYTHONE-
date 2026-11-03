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
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
            text-align: center;
        }

        .tabulator .discount-row .tabulator-cell {
            font-weight: 700;
        }
    </style>

    <div class="content-body possalereg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <form action="">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $comp->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $comp->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $fordate }}" name="ncurdatef" id="ncurdatef">
                                    <input type="hidden" value="{{ $comp->propertyid }}" id="propertyid" name="propertyid">
                                    <input type="hidden" value="{{ $comp->comp_name }}" id="compname" name="compname">
                                    <input type="hidden" value="{{ $comp->address1 }}" id="address" name="address">
                                    <input type="hidden" value="{{ $comp->city }}" id="city" name="city">
                                    <input type="hidden" value="{{ $comp->mobile }}" id="compmob" name="compmob">
                                    <input type="hidden" value="{{ $statename }}" id="statename" name="statename">
                                    <input type="hidden" value="{{ $comp->pin }}" id="pin" name="pin">
                                    <input type="hidden" value="{{ $comp->email }}" id="email" name="email">
                                    <input type="hidden" value="{{ $comp->logo }}" id="logo" name="logo">
                                    <input type="hidden" value="{{ $comp->u_name }}" id="u_name" name="u_name">
                                    <input type="hidden" value="{{ $comp->gstin }}" id="gstin" name="gstin">
                                    {{-- <input type="hidden" value="{{ Auth::user()->backdate }}" name="backdate" id="backdate"> --}}
                                    <div class="text-center titlep">
                                        <h3>{{ $comp->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $comp->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">
                                            {{ $statename . ' - ' . $comp->city . ' - ' . $comp->pin }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">Daily Register Report</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">For Date: <span
                                                id="fordatep"></span> To Date:
                                            <span id="todatep"></span>
                                        </p>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fordate" class="col-form-label">For Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date"
                                                value="{{ $fordate }}" class="form-control" name="fordate"
                                                id="fordate">
                                        </div>
                                    </div>

                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button"
                                            class="btn btn-success">Refresh <i
                                                class="fa-solid fa-arrows-rotate"></i></button>
                                    </div>
                                </div>

                            </form>

                            <div class="mt-3">
                                <button id="printBtn" class="btn-success btn no-print">Print</button>
                            </div>

                            <div class="table-container">
                                <div class="custom-header">Front Office</div>
                                <div id="frontoffice-report-table"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Sales Summary</div>
                                <div id="sales-summary"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Banquet Summary</div>
                                <div id="banquet-table"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Total Revenue</div>
                                <div id="total-revenue"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Tax Summary</div>
                                <div id="tax-summary"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Payment Summary</div>
                                <div id="payment-summary"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Bill To Company Settlement Summary</div>
                                <div id="bill-to-company"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Occupancy Analysis Summary</div>
                                <div id="occupancy-table"></div>
                                <div id="occupancy-summary-totals" class="mt-2"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Average Rate Per Night</div>
                                <div id="occupancy-revenue"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="print-container" id="printArea"></div>

    <script>
        $(document).ready(function() {
            var tablepayment;
            var tabletaxsummary;
            var tablesalesummary;
            var tabletotalrevenue;
            var tablecompany;
            var tableoct;
            var occupancytable;
            var occupancySummaryTable;
            var tablefrontoffice;
            let tablebanquet;
            let currentSnapshotKey = '';
            let csrftoken = "{{ csrf_token() }}";

            $(document).on('change', '#fordate', function() {
                validateFinancialYear('#fordate');
            });

            $(document).on('click', '#fetchbutton', function() {

                let fordate = $('#fordate').val();
                showLoader();
                if (fordate == '') {
                    pushNotify('error', 'Daily Report', 'Please Select For Date', 'fade', 300, '', '',
                        true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#fordate').addClass('invalid');
                }

                if (fordate != '') {

                    var todayr = new Date($('#fordate').val());

                    var firstDayOfMonth = new Date(todayr.getFullYear(), todayr.getMonth(), 1);

                    var differenceInTime = todayr - firstDayOfMonth;

                    var differenceInDays = Math.floor(differenceInTime / (1000 * 3600 * 24)) + 1;

                    var financialYearStart = new Date(todayr.getFullYear(), 3, 1);

                    if (todayr < financialYearStart) {
                        financialYearStart.setFullYear(todayr.getFullYear() - 1);
                    }

                    var differenceInTimefn = todayr - financialYearStart;
                    var differenceInDaysfn = Math.floor(differenceInTimefn / (1000 * 3600 * 24)) + 1;

                    $('#myloader').removeClass('none');


                    let fdata = new XMLHttpRequest();
                    fdata.open('POST', '/dailyreportfetch', true);
                    fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    fdata.onreadystatechange = function() {
                        if (fdata.status === 200 && fdata.readyState === 4) {
                            $('#myloader').addClass('none');
                            let results = JSON.parse(fdata.responseText);
                            if (results.success === false) {
                                pushNotify('error', 'Daily Report', results.error, 'fade', 300, '', '',
                                    true, true, true, 20000, 20, 20, 'outline', 'right top');
                                return;
                            }
                            currentSnapshotKey = results.snapshot_key || '';
                            let tableData = processData(results);
                            let tablefrontofficedata = processFrontOfficeData(results);
                            let tableoccupancydata = processDataOccupancy(results);
                            let tabledataoccaverage = processDataOccAvg(results);
                            let tabledatacompany = processdatacompany(results);
                            let tablesalessummarydata = processdatassalessummary(results);
                            let tablebanquetdata = processDataBanquet(results);
                            let tabletotalrevenuedata = processTotalRevenue(results);
                            let tabletaxsummarydata = processDataTaxSummary(results);
                            $('.custom-header').css('display', 'block');

                            // Check if tables have data
                            if (tablefrontofficedata.length === 0) {
                                $('#frontoffice-report-table').html('<div style="padding: 20px; text-align: center; color: #999;">No Front Office data available for selected date.</div>');
                            }
                            if (tablebanquetdata.length === 0) {
                                $('#banquet-table').html('<div style="padding: 20px; text-align: center; color: #999;">No banquet sales data available for selected date.</div>');
                            }
                            if (tabletaxsummarydata.length === 0) {
                                $('#tax-summary').html('<div style="padding: 20px; text-align: center; color: #999;">No tax summary data available for selected date.</div>');
                            }
                            if (tableData.length === 0) {
                                $('#payment-summary').html('<div style="padding: 20px; text-align: center; color: #999;">No sales data available for selected date.</div>');
                            }
                            if (tablesalessummarydata.length === 0) {
                                $('#sales-summary').html('<div style="padding: 20px; text-align: center; color: #999;">No sales summary data available for selected date.</div>');
                            }
                            if (tableoccupancydata.length === 0) {
                                $('#occupancy-table').html('<div style="padding: 20px; text-align: center; color: #999;">No occupancy data available for selected date.</div>');
                                $('#occupancy-summary-totals').html('');
                            }
                            if (tabledataoccaverage.length === 0) {
                                $('#occupancy-revenue').html('<div style="padding: 20px; text-align: center; color: #999;">No average rate data available for selected date.</div>');
                            }
                            if (tabledatacompany.length === 0) {
                                $('#bill-to-company').html('<div style="padding: 20px; text-align: center; color: #999;">No company settlement data available for selected date.</div>');
                            }

                            if (tablepayment) {
                                tablepayment.setData(tableData);
                            } else {
                                let columns = [{
                                        title: "Name",
                                        field: "name",
                                        headerWordWrap: true,
                                        minWidth: 70
                                    },
                                    {
                                        title: "Today",
                                        field: "today",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "Month To Date",
                                        field: "MTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "YTD",
                                        field: "YTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                ];

                                $('#fordatep').text(dmy(fordate));

                                tablepayment = new Tabulator("#payment-summary", {
                                    data: tableData,
                                    layout: "fitColumns",
                                    groupBy: "category",
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: columns,
                                    rowFormatter: function(row) {
                                        if (row.getData().type === "category") {
                                            row.getElement().classList.add("category");
                                        }
                                    },
                                    groupStartOpen: true,
                                });
                            }

                            if (tabletaxsummary) {
                                tabletaxsummary.setData(tabletaxsummarydata);
                            } else {
                                let columns = [{
                                        title: "Name",
                                        field: "name",
                                        headerWordWrap: true,
                                        minWidth: 70
                                    },
                                    {
                                        title: "Today",
                                        field: "today",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "Month To Date",
                                        field: "MTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "YTD",
                                        field: "YTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                ];

                                tabletaxsummary = new Tabulator("#tax-summary", {
                                    data: tabletaxsummarydata,
                                    layout: "fitColumns",
                                    groupBy: "category",
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: columns,
                                    rowFormatter: function(row) {
                                        if (row.getData().type === "category") {
                                            row.getElement().classList.add("category");
                                        }
                                    },
                                    groupStartOpen: true,
                                });
                            }

                            if (tablesalesummary) {
                                tablesalesummary.setData(tablesalessummarydata);
                            } else {
                                let columns = [{
                                        title: "Name",
                                        field: "name",
                                        headerWordWrap: true,
                                        minWidth: 70
                                    },
                                    {
                                        title: "Today",
                                        field: "today",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "Month To Date",
                                        field: "MTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "YTD",
                                        field: "YTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                ];

                                $('#fordatep').text(dmy(fordate));

                                tablesalesummary = new Tabulator("#sales-summary", {
                                    data: tablesalessummarydata,
                                    layout: "fitColumns",
                                    groupBy: "category",
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: columns,
                                    rowFormatter: function(row) {
                                        if ((row.getData().name || '') === "Discount") {
                                            row.getElement().classList.add("discount-row");
                                        }
                                        if (row.getData().type === "category") {
                                            row.getElement().classList.add("category");
                                        }
                                    },
                                    groupStartOpen: true,
                                });
                            }

                            // Initialize Front Office Table
                            if (tablefrontoffice) {
                                tablefrontoffice.setData(tablefrontofficedata);
                            } else {
                                let frontofficeColumns = [{
                                        title: "Name",
                                        field: "name",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "Today",
                                        field: "today",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "MTD",
                                        field: "MTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "YTD",
                                        field: "YTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    }
                                ];

                                tablefrontoffice = new Tabulator("#frontoffice-report-table", {
                                    data: tablefrontofficedata,
                                    layout: "fitColumns",
                                    columns: frontofficeColumns,
                                    rowFormatter: function(row) {
                                        if (row.getData().type === "category") {
                                            row.getElement().classList.add("category");
                                        }
                                    },
                                    groupStartOpen: true,
                                });
                            }

                            const tabledataoccupancy = processDataOccupancy(results);
                            const occupancySummaryTotals = processOccupancySummaryTotals(results);
                            const occupancyColumns = [{
                                    title: "Room Category",
                                    field: "catname",
                                    frozen: true
                                },
                                {
                                    title: "Total\nRooms",
                                    field: "totalRooms",
                                    hozAlign: "right",
                                    bottomCalc: "sum"
                                },
                                {
                                    title: "Today Occupancy",
                                    columns: [{
                                            title: "IN Count",
                                            field: "todayCount",
                                            hozAlign: "right",
                                            bottomCalc: "sum"
                                        },
                                        {
                                            title: "IN(%)",
                                            field: "todayPercent",
                                            hozAlign: "right",
                                            formatter: "number",
                                            formatterParams: {
                                                precision: 2,
                                                suffix: "%"
                                            },
                                            bottomCalc: function(values, data) {
                                                const totalRooms = data.reduce((sum, row) => sum + row.totalRooms, 0);
                                                const totalCount = data.reduce((sum, row) => sum + row.todayCount, 0);
                                                return totalRooms > 0 ? ((totalCount / totalRooms) * 100).toFixed(2) + "%" : "0.00%";
                                            }
                                        }
                                    ]
                                },
                                {
                                    title: "MTD Occupancy",
                                    columns: [{
                                            title: "IN Count",
                                            field: "mtdCount",
                                            hozAlign: "right",
                                            bottomCalc: "sum"
                                        },
                                        {
                                            title: "IN(%)",
                                            field: "mtdPercent",
                                            hozAlign: "right",
                                            formatter: "number",
                                            formatterParams: {
                                                precision: 2,
                                                suffix: "%"
                                            },
                                            bottomCalc: function(values, data) {
                                                const totalRooms = data.reduce((sum, row) => sum + row.totalRooms, 0);
                                                const mtdCount = data.reduce((sum, row) => sum + row.mtdCount, 0);
                                                const fl = totalRooms * differenceInDays;
                                                return fl > 0 ? ((mtdCount * 100) / fl).toFixed(2) + "%" : "0.00%";
                                            }
                                        }
                                    ]
                                },
                                {
                                    title: "YTD Occupancy",
                                    columns: [{
                                            title: "IN Count",
                                            field: "ytdCount",
                                            hozAlign: "right",
                                            bottomCalc: "sum"
                                        },
                                        {
                                            title: "IN(%)",
                                            field: "ytdPercent",
                                            hozAlign: "right",
                                            formatter: "number",
                                            formatterParams: {
                                                precision: 2,
                                                suffix: "%"
                                            },
                                            bottomCalc: function(values, data) {
                                                const totalRooms = data.reduce((sum, row) => sum + row.totalRooms, 0);
                                                const ytdCount = data.reduce((sum, row) => sum + row.ytdCount, 0);
                                                const fl = totalRooms * differenceInDaysfn;
                                                return fl > 0 ? ((ytdCount * 100) / fl).toFixed(2) + "%" : "0.00%";
                                            }
                                        }
                                    ]
                                }
                            ];

                            if (occupancytable) {
                                occupancytable.setData(tabledataoccupancy);
                            } else {
                                occupancytable = new Tabulator("#occupancy-table", {
                                    data: tabledataoccupancy,
                                    layout: "fitColumns",
                                    columns: occupancyColumns,
                                });
                            }

                            if (occupancySummaryTable) {
                                occupancySummaryTable.setData(occupancySummaryTotals);
                            } else {
                                occupancySummaryTable = new Tabulator("#occupancy-summary-totals", {
                                    data: occupancySummaryTotals,
                                    layout: "fitColumns",
                                    columns: [{
                                            title: "Summary",
                                            field: "name",
                                            headerHozAlign: "left"
                                        },
                                        {
                                            title: "For Date",
                                            field: "today",
                                            hozAlign: "right",
                                            formatter: "money",
                                            formatterParams: {
                                                precision: 0
                                            }
                                        },
                                        {
                                            title: "MTD",
                                            field: "MTD",
                                            hozAlign: "right",
                                            formatter: "money",
                                            formatterParams: {
                                                precision: 0
                                            }
                                        },
                                        {
                                            title: "YTD",
                                            field: "YTD",
                                            hozAlign: "right",
                                            formatter: "money",
                                            formatterParams: {
                                                precision: 0
                                            }
                                        }
                                    ],
                                });
                            }

                            const tabledataoccrevenue = processDataOccAvg(results);
                            tableoct = new Tabulator("#occupancy-revenue", {
                                data: tabledataoccrevenue,
                                layout: "fitColumns",
                                columns: [{
                                        title: "Room Category",
                                        field: "category",
                                        headerHozAlign: "center",
                                        hozAlign: "left"
                                    },
                                    {
                                        title: "Today",
                                        field: "today",
                                        headerHozAlign: "center",
                                        hozAlign: "center",
                                        formatter: "money",
                                        formatterParams: {
                                            precision: 2
                                        },
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        bottomCalcFormatterParams: {
                                            precision: 2
                                        }
                                    },
                                    {
                                        title: "Month To Date",
                                        field: "monthToDate",
                                        headerHozAlign: "center",
                                        hozAlign: "center",
                                        formatter: "money",
                                        formatterParams: {
                                            precision: 2
                                        },
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        bottomCalcFormatterParams: {
                                            precision: 2
                                        }
                                    },
                                    {
                                        title: "YTD",
                                        field: "yearToDate",
                                        headerHozAlign: "center",
                                        hozAlign: "center",
                                        formatter: "money",
                                        formatterParams: {
                                            precision: 2
                                        },
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        bottomCalcFormatterParams: {
                                            precision: 2
                                        }
                                    },
                                ],
                            });

                            const tabledatacompanys = processdatacompany(results);

                            tablecompany = new Tabulator("#bill-to-company", {
                                data: tabledatacompanys,
                                layout: "fitColumns",
                                columns: [{
                                        title: "Company Name",
                                        field: "compname",
                                        headerHozAlign: "center",
                                        hozAlign: "left"
                                    },
                                    {
                                        title: "Billno",
                                        field: "billno",
                                        headerHozAlign: "center",
                                        hozAlign: "center",
                                    },
                                    {
                                        title: "Amount",
                                        field: "amount",
                                        headerHozAlign: "center",
                                        hozAlign: "center",
                                        formatter: "money",
                                        formatterParams: {
                                            precision: 2
                                        },
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        bottomCalcFormatterParams: {
                                            precision: 2
                                        }
                                    },
                                ],
                                rowFormatter: function(row) {
                                    var data = row.getData();
                                }
                            });

                            // Initialize Banquet Table
                            if (tablebanquet) {
                                tablebanquet.setData(tablebanquetdata);
                            } else {
                                let banquetColumns = [{
                                        title: "Banquet Name",
                                        field: "name",
                                        headerWordWrap: true,
                                        minWidth: 70
                                    },
                                    {
                                        title: "Today",
                                        field: "today",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "Month To Date",
                                        field: "MTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "YTD",
                                        field: "YTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                ];

                                tablebanquet = new Tabulator("#banquet-table", {
                                    data: tablebanquetdata,
                                    layout: "fitColumns",
                                    columns: banquetColumns,
                                    groupStartOpen: true,
                                });
                            }

                            if (tabletotalrevenue) {
                                tabletotalrevenue.setData(tabletotalrevenuedata);
                            } else {
                                let revenueColumns = [{
                                        title: "Name",
                                        field: "name",
                                        headerWordWrap: true,
                                        minWidth: 140
                                    },
                                    {
                                        title: "Today",
                                        field: "today",
                                        hozAlign: "right",
                                        formatter: "money",
                                        formatterParams: {
                                            precision: 2
                                        },
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "MTD",
                                        field: "MTD",
                                        hozAlign: "right",
                                        formatter: "money",
                                        formatterParams: {
                                            precision: 2
                                        },
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                    {
                                        title: "YTD",
                                        field: "YTD",
                                        hozAlign: "right",
                                        formatter: "money",
                                        formatterParams: {
                                            precision: 2
                                        },
                                        headerWordWrap: true,
                                        minWidth: 100
                                    }
                                ];

                                tabletotalrevenue = new Tabulator("#total-revenue", {
                                    data: tabletotalrevenuedata,
                                    layout: "fitColumns",
                                    columns: revenueColumns,
                                });
                            }


                        } else {
                            $('#myloader').addClass('none');
                            setTimeout(hideLoader, 1000);
                        }
                    };
                    fdata.send(
                        `fordate=${fordate}&_token={{ csrf_token() }}`
                    );
                }
            });

            $("#printBtn").click(function() {
                if (!currentSnapshotKey) {
                    pushNotify('error', 'Daily Report', 'Please fetch data first before printing', 'fade', 300, '', '',
                        true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                const filetoprint = `dailyreportprint?snapshot_key=${encodeURIComponent(currentSnapshotKey)}`;
                window.open(filetoprint, '_blank');
            });

            function processData(results) {
                let reportData = [];

                results.reportData.forEach(function(row) {

                    if (row.YTD > 0 && row.category == 'Payment Summary') {
                        reportData.push({
                            name: row.Name,
                            today: row.Today || 0,
                            MTD: row.MTD || 0,
                            YTD: row.YTD || 0,
                            category: row.category
                        });
                    }
                });

                setTimeout(hideLoader, 1000);

                return reportData;
            }

            function processDataTaxSummary(results) {
                let reportData = [];

                results.reportData.forEach(function(row) {

                    if (row.YTD > 0 && row.category == 'Tax Summary') {
                        reportData.push({
                            name: row.Name,
                            today: row.Today || 0,
                            MTD: row.MTD || 0,
                            YTD: row.YTD || 0,
                            category: row.category
                        });
                    }
                });

                setTimeout(hideLoader, 1000);

                return reportData;
            }

            function processdatassalessummary(results) {
                let reportData = [];

                results.reportData.forEach(function(row) {

                    const today = Number(row.Today) || 0;
                    const mtd = Number(row.MTD) || 0;
                    const ytd = Number(row.YTD) || 0;

                    if (row.rcategory == 'Sales Summary' && (today !== 0 || mtd !== 0 || ytd !== 0)) {
                        reportData.push({
                            name: row.Name,
                            today: today,
                            MTD: mtd,
                            YTD: ytd,
                            category: row.category
                        });
                    }
                });

                setTimeout(hideLoader, 1000);

                return reportData;
            }

            function processDataOccupancy(results) {
                let reportData2 = [];
                results.reportData.forEach(function(row) {

                    const differenceInDaysmn = results.ranges.diffcount.frommon.days + 1;
                    const differenceInDaysfn = results.ranges.diffcount.fromfin.days + 1;

                    if (row.YTD > 0 && row.category == 'Room Category') {
                        let mcount = row.totalrooms * differenceInDaysmn;
                        let fcount = row.totalrooms * differenceInDaysfn;

                        let todayper = (parseInt(row.Today) / parseInt(row.totalrooms)) * 100;
                        let monthper = (parseInt(row.MTD) * 100) / mcount;
                        let yearper = (parseInt(row.YTD) * 100) / fcount;

                        reportData2.push({
                            differenceInDaysfn: differenceInDaysfn,
                            differenceInDays: differenceInDaysmn,
                            catname: row.Name,
                            totalRooms: row.totalrooms,
                            todayCount: row.Today,
                            todayPercent: todayper.toFixed(2),
                            mtdCount: row.MTD,
                            mtdPercent: monthper.toFixed(2),
                            ytdCount: row.YTD,
                            ytdPercent: yearper.toFixed(2),
                            YTD: row.YTD,
                            category: row.category
                        });
                    }
                });

                setTimeout(hideLoader, 1000);

                return reportData2;
            }

            function processDataOccAvg(results) {
                let reportData3 = [];
                results.reportData.forEach(function(row) {
                    if (row.YTD > 0 && row.category == 'Room Average') {

                        reportData3.push({
                            today: row.todaycount ? row.Today / row.todaycount : 0,
                            monthToDate: row.mtdcount ? row.MTD / row.mtdcount : 0,
                            yearToDate: row.YTD / row.ytdcount,
                            category: row.Name
                        });
                    }
                });

                setTimeout(hideLoader, 1000);

                return reportData3;
            }

            function processFrontOfficeData(results) {
                let reportData = [];

                results.reportData.forEach(function(row) {
                    const today = Number(row.Today) || 0;
                    const mtd = Number(row.MTD) || 0;
                    const ytd = Number(row.YTD) || 0;

                    if (row.category === 'Front Office' && ytd !== 0) {
                        reportData.push({
                            name: row.Name || '',
                            today: today,
                            MTD: mtd,
                            YTD: ytd,
                            category: row.category
                        });
                    }
                });

                setTimeout(hideLoader, 1000);

                return reportData;
            }

            function processdatacompany(results) {
                let reportData4 = [];
                results.reportData.forEach(function(row) {
                    if (row.amount > 0 && row.category == 'CompanyData') {

                        reportData4.push({
                            compname: row.Name,
                            billno: row.billno,
                            amount: row.amount,
                            category: row.category
                        });
                    }
                });

                setTimeout(hideLoader, 1000);

                return reportData4;
            }

            function processDataBanquet(results) {
                let reportData = [];

                results.reportData.forEach(function(row) {

                    if (row.YTD > 0 && row.category == 'Banquet') {
                        reportData.push({
                            name: row.Name,
                            today: row.Today || 0,
                            MTD: row.MTD || 0,
                            YTD: row.YTD || 0,
                            category: row.category
                        });
                    }
                });

                setTimeout(hideLoader, 1000);

                return reportData;
            }

            function processTotalRevenue(results) {
                const revenue = results.total_revenue || {};

                return [{
                    name: "Total Revenue",
                    today: revenue.today || 0,
                    MTD: revenue.MTD || 0,
                    YTD: revenue.YTD || 0,
                }];
            }

            function processOccupancySummaryTotals(results) {
                const occupancyRows = processDataOccupancy(results);
                const monthDays = ((results.ranges?.diffcount?.frommon?.days || 0) + 1);
                const financialDays = ((results.ranges?.diffcount?.fromfin?.days || 0) + 1);
                const totalRooms = occupancyRows.reduce(function(sum, row) {
                    return sum + (parseFloat(row.totalRooms) || 0);
                }, 0);
                const totalTodayOccupied = occupancyRows.reduce(function(sum, row) {
                    return sum + (parseFloat(row.todayCount) || 0);
                }, 0);
                const totalMtdOccupied = occupancyRows.reduce(function(sum, row) {
                    return sum + (parseFloat(row.mtdCount) || 0);
                }, 0);
                const totalYtdOccupied = occupancyRows.reduce(function(sum, row) {
                    return sum + (parseFloat(row.ytdCount) || 0);
                }, 0);

                const summaryRows = (results.occupancySummaryTotals || []).map(function(row) {
                    return {
                        name: row.name || '',
                        today: parseFloat(row.today) || 0,
                        MTD: parseFloat(row.MTD) || 0,
                        YTD: parseFloat(row.YTD) || 0
                    };
                });

                const vacantRoomIndex = summaryRows.findIndex(function(row) {
                    return row.name === 'Total Vacant Room';
                });

                const vacantRoomRow = {
                    name: 'Total Vacant Room',
                    today: Math.max(0, totalRooms - totalTodayOccupied),
                    MTD: Math.max(0, (totalRooms * monthDays) - totalMtdOccupied),
                    YTD: Math.max(0, (totalRooms * financialDays) - totalYtdOccupied)
                };

                if (vacantRoomIndex >= 0) {
                    summaryRows[vacantRoomIndex] = vacantRoomRow;
                } else {
                    summaryRows.unshift(vacantRoomRow);
                }

                return summaryRows;
            }
        });
    </script>
@endsection
