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

        #servicerequest-table {
            width: 100% !important;
        }
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
                                    <p style="margin-top:-10px; font-size:16px;">Service Request Register</p>
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
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
                                                   name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">
                                                To Date <i class="fa-regular fa-calendar mb-1"></i>
                                            </label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
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

                            <div class="custom-header">Service Request Register</div>
                            <div class="mt-3" id="servicerequest-table"></div>

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
                    pushNotify('error', 'Service Request Register', 'Please select From Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#fromdate').addClass('invalid');
                    return;
                }
                if (!todate) {
                    pushNotify('error', 'Service Request Register', 'Please select To Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#todate').addClass('invalid');
                    return;
                }

                showLoader();

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/fetchservicerequestregister', true);
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
                                    title: "Request No",
                                    field: "requestno",
                                    sorter: "string",
                                    width: 110,
                                },
                                {
                                    title: "Date",
                                    field: "requestdate",
                                    sorter: "string",
                                    width: 110,
                                },
                                {
                                    title: "Time",
                                    field: "requesttime",
                                    sorter: "string",
                                    width: 90,
                                },
                                {
                                    title: "Room No",
                                    field: "roomno",
                                    sorter: "string",
                                    width: 90,
                                },
                                {
                                    title: "Guest Name",
                                    field: "guestname",
                                    sorter: "string",
                                    widthGrow: 1,
                                },
                                {
                                    title: "Type",
                                    field: "type",
                                    sorter: "string",
                                    width: 120,
                                },
                                {
                                    title: "Particular",
                                    field: "particular",
                                    sorter: "string",
                                    widthGrow: 1,
                                },
                                {
                                    title: "Remarks",
                                    field: "remarks",
                                    sorter: "string",
                                    widthGrow: 1,
                                },
                                {
                                    title: "Status",
                                    field: "status",
                                    sorter: "string",
                                    width: 100,
                                },
                                {
                                    title: "Close Date",
                                    field: "closedate",
                                    sorter: "string",
                                    width: 110,
                                },
                                {
                                    title: "Close Time",
                                    field: "closetime",
                                    sorter: "string",
                                    width: 100,
                                },
                                {
                                    title: "Closed By",
                                    field: "closedby",
                                    sorter: "string",
                                    width: 130,
                                },
                            ];

                            table = new Tabulator("#servicerequest-table", {
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
                if (!table) return;
                table.print(false, true);
            });

            // Excel Download
            $("#download-xlsx").on("click", function () {
                if (!table) return;
                let fromdate = dmy($('#fromdate').val());
                let todate   = dmy($('#todate').val());
                table.download("xlsx", `service_request_register_${fromdate}_to_${todate}.xlsx`, {
                    sheetName: "Service Request Register"
                });
            });
        });

        function processData(results) {
            let reportData = [];
            results.forEach(function (row) {
                reportData.push({
                    requestno   : row.requestno    || '-',
                    requestdate : dmy(row.requestdate) || '-',
                    requesttime : row.requesttime  || '-',
                    roomno      : row.roomno        || '-',
                    guestname   : row.GuestName     || '-',
                    type        : row.Type          || '-',
                    particular  : row.Particular    || '-',
                    remarks     : row.remarks       || '-',
                    status      : row.status        || '-',
                    closedate   : row.closedate ? dmy(row.closedate) : '-',
                    closetime   : row.closetime     || '-',
                    closedby    : row.CloseUser     || '-',
                });
            });
            return reportData;
        }
    </script>
@endsection
