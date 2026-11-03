@extends('property.layouts.main')
@section('main-container')
    <!-- Tabulator CSS -->
    <link href="https://unpkg.com/tabulator-tables/dist/css/tabulator.min.css" rel="stylesheet">

    <!-- jQuery and Tabulator JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables/dist/js/tabulator.min.js"></script>
    <style>
        /* General styles */
        body {
            margin: 0;
            padding: 20px;
        }

        /* Table container styles */
        .table-container {
            margin: 20px 0;
            width: 100%;
        }

        /* Custom header styles */
        .custom-header {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }

        /* Make tables full width */
        .tabulator {
            width: 100% !important;
        }

        /* Print-specific styles */
        @media print {
            @page {
                margin: 10mm 5mm;
                size: auto;
            }

            body {
                margin: 0;
                padding: 0;
            }

            .no-print {
                display: none !important;
            }

            .custom-header {
                font-size: 14px !important;
                margin: 2mm 0 !important;
            }

            .tabulator {
                border: none !important;
                background: none !important;
                margin: 0 !important;
                padding: 0 !important;
            }

            .tabulator-tableholder {
                overflow: visible !important;
            }

            .tabulator-table {
                width: 100% !important;
            }

            .tabulator-header {
                border-bottom: 1px solid #000 !important;
            }

            .tabulator-col {
                background: none !important;
                border: none !important;
            }

            .tabulator-row {
                border-bottom: 1px solid #ddd !important;
                page-break-inside: avoid !important;
            }

            .table-container {
                margin: 5mm 0 !important;
                page-break-inside: avoid !important;
                width: 100% !important;
            }

            * {
                -webkit-print-color-adjust: exact !important;
                print-color-adjust: exact !important;
            }

            .tabulator-cell {
                color: black !important;
            }
        }

        .print-container {
            display: none;
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
                                            <input min="{{ $comp->start_dt }}" max="{{ $comp->end_dt }}" type="date"
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
                                <div class="custom-header">Sales Summary</div>
                                <div id="daily-report-table"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Bill To Company Settlement Summary</div>
                                <div id="bill-to-company"></div>
                            </div>
                            <div class="table-container">
                                <div class="custom-header">Occupancy Analysis Summary</div>
                                <div id="occupancy-table"></div>
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
            var table;
            var tablecompany;
            var tableoct;
            var occupancytable;
            let csrftoken = "{{ csrf_token() }}";

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
                            let tableData = processData(results);
                            let tableoccupancydata = processDataOccupancy(results);
                            let tabledataoccaverage = processDataOccAvg(results);
                            let tabledatacompany = processdatacompany(results);
                            $('.custom-header').css('display', 'block');

                            if (table) {
                                table.setData(tableData);
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
                                        title: "Year To Date",
                                        field: "YTD",
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    },
                                ];

                                $('#fordatep').text(dmy(fordate));

                                table = new Tabulator("#daily-report-table", {
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


                            const tabledataoccupancy = processDataOccupancy(results);
                            // Initialize Tabulator
                            occupancytable = new Tabulator("#occupancy-table", {
                                data: tabledataoccupancy,
                                layout: "fitColumns",
                                columns: [{
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
                                                    return ((totalCount / totalRooms) * 100).toFixed(2) + "%";
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
                                                    const vals = (mtdCount * 100) / fl;
                                                    return vals.toFixed(2) + "%";
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
                                                    const vals = (ytdCount * 100) / fl;
                                                    return vals.toFixed(2) + "%";
                                                }
                                            }
                                        ]
                                    }
                                ],
                            });

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
                                        title: "Year To Date",
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


                        } else {
                            $('#myloader').addClass('none');
                        }
                    };
                    fdata.send(
                        `fordate=${fordate}&_token={{ csrf_token() }}`
                    );
                }
            });

            $("#printBtn").click(function() {
                var printContent = `
                    <div class="table-container">
                        <div class="custom-header">Sales Summary</div>
                        ${table.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">Bill To Company Settlement Summary</div>
                        ${tablecompany.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">Occupancy Analysis Summary</div>
                        ${occupancytable.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">Average Rate Per Night</div>
                        ${tableoct.element.outerHTML}
                    </div>
                `;

                $("#printArea").html(printContent);

                console.log(printContent);

                requestAnimationFrame(function() {
                    window.print();
                });
            });

            function processData(results) {
                let reportData = [];

                results.reportData.forEach(function(row) {
                    if (row.YTD > 0 && row.category != 'Room Category' && row.category != 'Room Average') {
                        reportData.push({
                            name: row.Name,
                            today: row.Today,
                            MTD: row.MTD,
                            YTD: row.YTD,
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
        });
    </script>
@endsection
