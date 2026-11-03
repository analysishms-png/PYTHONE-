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
                                            <label for="status" class="col-form-label">Status <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <select class="form-control" name="status" id="status">
                                                <option value="All" selected>All</option>
                                                <option value="Occupied">Occupied</option>
                                                <option value="Vacant">Vacant</option>
                                            </select>
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
                showLoader();
                let status = $('#status').val();

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/roominventoryfetch', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function() {
                    if (fdata.status === 200 && fdata.readyState === 4) {
                        let results = JSON.parse(fdata.responseText);
                        let roomlist = results.allrooms;
                        let tabledata = processData(results.roomdetails, roomlist);

                        if (table) {
                            table.setData(tabledata);
                        } else {
                            let columns = [{
                                    title: "ROOMNO",
                                    field: "rm_no",
                                    sorter: "number",
                                    width: 100,
                                },
                                {
                                    title: "TYPE",
                                    field: "type",
                                    sorter: "string",
                                    width: 150,
                                },
                                {
                                    title: "FOLIO No.",
                                    field: "foliono",
                                    sorter: "number",
                                    width: 100,
                                },
                                {
                                    title: "GUEST NAME",
                                    field: "guestname",
                                    sorter: "string",
                                    width: 200,
                                },
                                {
                                    title: "Arrival",
                                    field: "arrival",
                                    sorter: "number",
                                    width: 100,
                                },
                                {
                                    title: "Departure",
                                    field: "dep",
                                    sorter: "number",
                                    width: 100,
                                },
                                {
                                    title: "Adult/Child",
                                    field: "person",
                                    sorter: "number",
                                    width: 120
                                },
                                {
                                    title: "Plan",
                                    field: "planname",
                                    sorter: "string",
                                    width: 100
                                },
                                {
                                    title: "Room Rate",
                                    field: "rate",
                                    sorter: "number",
                                    width: 110,
                                    formatter: "money",
                                    formatterParams: {
                                        precision: 2,
                                    }
                                },
                                {
                                    title: "Plan Amt",
                                    field: "planamt",
                                    sorter: "number",
                                    width: 100,
                                    formatter: "money"
                                },
                                {
                                    title: "ADVANCE",
                                    field: "advance",
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
                                    title: "BALANCE",
                                    field: "balance",
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
                                    title: "Booked By",
                                    field: "bookedby",
                                    sorter: "string",
                                    width: 110
                                },
                                {
                                    title: "MKT.Segment",
                                    field: "mkt",
                                    sorter: "string",
                                    width: 120
                                },
                                {
                                    title: "Company",
                                    field: "companyname",
                                    sorter: "string",
                                    width: 100
                                }
                            ];

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

                    } else {
                        setTimeout(hideLoader, 1000);
                    }
                }
                fdata.send(`status=${status}&_token={{ csrf_token() }}`);
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

        function processData(results, roomlist) {
            let reportData = [];
            const status = $('#status').val();
            console.log(typeof results);
            console.log(results);
            const occupiedRooms = results.map(r => r.ROOMNO);

            if (status === 'All') {
                roomlist.forEach(function(room) {
                    if (occupiedRooms.includes(room.ROOMNO)) {
                        const occupiedRoom = results.find(r => r.ROOMNO === room.ROOMNO);
                        reportData.push({
                            rm_no: occupiedRoom.ROOMNO,
                            type: room.RoomCatName,
                            foliono: occupiedRoom.foliono,
                            guestname: occupiedRoom.GuestName,
                            arrival: dmy(occupiedRoom.chkindate),
                            dep: dmy(occupiedRoom.depdate),
                            person: `${occupiedRoom.adult} / ${occupiedRoom.Child}`,
                            planname: occupiedRoom.PlanName,
                            rate: occupiedRoom.roomrate,
                            planamt: occupiedRoom.planamt,
                            advance: occupiedRoom.Advance,
                            balance: occupiedRoom.balanceamt,
                            bookedby: occupiedRoom.bookedby,
                            mkt: occupiedRoom.MarketSeg,
                            companyname: occupiedRoom.CompanyName
                        });
                    } else {
                        reportData.push({
                            rm_no: room.ROOMNO,
                            type: room.RoomCatName,
                            foliono: '',
                            guestname: '',
                            arrival: '',
                            dep: '',
                            person: '',
                            planname: '',
                            rate: '',
                            planamt: '',
                            advance: '',
                            balance: '',
                            bookedby: '',
                            mkt: '',
                            companyname: ''
                        });
                    }
                });
            } else if (status === 'Occupied') {
                results.forEach(function(row) {
                    reportData.push({
                        rm_no: row.ROOMNO,
                        type: row.RoomCatName,
                        foliono: row.foliono,
                        guestname: row.GuestName,
                        arrival: dmy(row.chkindate),
                        dep: dmy(row.depdate),
                        person: `${row.adult} / ${row.Child}`,
                        planname: row.PlanName,
                        rate: row.roomrate,
                        planamt: row.planamt,
                        advance: row.Advance,
                        balance: row.balanceamt,
                        bookedby: row.bookedby,
                        mkt: row.MarketSeg,
                        companyname: row.CompanyName
                    });
                });
            } else if (status === 'Vacant') {
                console.log(status);
                roomlist.forEach(function(room) {
                    if (!occupiedRooms.includes(room.ROOMNO)) {
                        reportData.push({
                            rm_no: room.ROOMNO,
                            type: room.RoomCatName,
                            foliono: '',
                            guestname: '',
                            arrival: '',
                            dep: '',
                            person: '',
                            planname: '',
                            rate: '',
                            planamt: '',
                            advance: '',
                            balance: '',
                            bookedby: '',
                            mkt: '',
                            companyname: ''
                        });
                    }
                });
            }

            setTimeout(hideLoader, 1000);
            return reportData;
        }
    </script>
@endsection
