@extends('property.layouts.main')
@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
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
        }

        .tabulator-col .tabulator-arrow {
            display: none !important;
        }

        .filter-group {
            margin-bottom: 20px;
        }

        .filter-group .form-group {
            margin-bottom: 10px;
        }

        /* Fix table header and column display */
        .tabulator {
            border: 1px solid #ddd;
        }

        .tabulator-header {
            background-color: #f8f9fa;
            border-bottom: 2px solid #dee2e6;
        }

        .tabulator-col {
            padding: 10px 5px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            background-color: #f8f9fa;
            font-weight: bold;
            font-size: 13px;
        }

        .tabulator-cell {
            padding: 8px 5px;
            border-right: 1px solid #ddd;
            vertical-align: middle;
        }

        .tabulator-row {
            border-bottom: 1px solid #ddd;
            min-height: 40px;
        }

        .tabulator-row:hover {
            background-color: #f5f5f5;
        }

        #hk-table {
            max-width: 100%;
            overflow-x: auto;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="" method="post">
                                {{ csrf_field() }}
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
                                    <p style="margin-top:-10px; font-size:16px;">Housekeeping Status Report</p>
                                </div>

                                <div class="row filter-group">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="arrDate" class="col-form-label">Arrival Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" class="form-control" name="arrDate" id="arrDate" value="{{ date('Y-m-d') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="roomStatus" class="col-form-label">Room Status</label>
                                            <select class="form-control" name="roomStatus" id="roomStatus">
                                                <option value="All" selected>All</option>
                                                <option value="Clean">Clean</option>
                                                <option value="Dirty">Dirty</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="guestStatus" class="col-form-label">Guest Status</label>
                                            <select class="form-control" name="guestStatus" id="guestStatus">
                                                <option value="All" selected>All</option>
                                                <option value="In House">In House</option>
                                                <option value="Arrival">Arrival</option>
                                                <option value="Block">Block</option>
                                                <option value="Vacant">Vacant</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">&nbsp;</label>
                                            <button type="button" id="refreshbutton" class="btn btn-primary w-100">
                                                <i class="fa fa-refresh"></i> Refresh
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>

                            <div class="mt-3 mb-3">
                                <button id="print-table" class="btn btn-primary">
                                    <i class="fa-solid fa-print"></i> Print
                                </button>
                                <button id="download-xlsx" class="btn btn-success">
                                    <i class="fa fa-file-excel-o"></i> Excel
                                </button>
                                <button id="reset-filters" class="btn btn-warning">
                                    <i class="fa fa-times"></i> Reset
                                </button>
                            </div>

                            <div class="custom-header">Housekeeping Status Details</div>
                            <div class="mt-3" id="hk-table"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            let table;
            let csrftoken = "{{ csrf_token() }}";

            // Load data on page load
            loadTableData();

            $(document).on('click', '#refreshbutton', function() {
                loadTableData();
            });

            $(document).on('click', '#reset-filters', function() {
                $('#arrDate').val(new Date().toISOString().split('T')[0]);
                $('#roomStatus').val('All');
                $('#guestStatus').val('All');
                loadTableData();
            });

            function loadTableData() {
                showLoader();
                let arrDate = $('#arrDate').val();
                let roomStatus = $('#roomStatus').val();
                let guestStatus = $('#guestStatus').val();

                $.ajax({
                    url: '/fetchhousekeepingstatusreport',
                    type: 'POST',
                    dataType: 'json',
                    headers: {
                        'X-CSRF-TOKEN': csrftoken
                    },
                    data: {
                        arrDate: arrDate,
                        roomStatus: roomStatus,
                        guestStatus: guestStatus
                    },
                    success: function(response) {
                        hideLoader();
                        if (response.success) {
                            let tabledata = response.data;

                            if (table) {
                                table.setData(tabledata);
                            } else {
                                let columns = [
                                    {
                                        title: "ROOM NO",
                                        field: "RoomNo",
                                        sorter: "string",
                                        width: 90,
                                        headerTooltip: true,
                                    },
                                    {
                                        title: "ROOM TYPE",
                                        field: "Type",
                                        sorter: "string",
                                        width: 130,
                                        headerTooltip: true,
                                    },
                                    {
                                        title: "ROOM STATUS",
                                        field: "RoomStatus",
                                        sorter: "string",
                                        width: 130,
                                        headerTooltip: true,
                                        cellClick: function(e, cell) {
                                            let value = cell.getValue();
                                            if (value === 'Clean') {
                                                cell.getElement().style.backgroundColor = '#d4edda';
                                                cell.getElement().style.color = '#155724';
                                            } else {
                                                cell.getElement().style.backgroundColor = '#f8d7da';
                                                cell.getElement().style.color = '#721c24';
                                            }
                                        }
                                    },
                                    {
                                        title: "GUEST STATUS",
                                        field: "GuestStatus",
                                        sorter: "string",
                                        width: 120,
                                        headerTooltip: true,
                                    },
                                    {
                                        title: "FOLIO/RES NO",
                                        field: "FolioResNo",
                                        sorter: "number",
                                        width: 120,
                                        headerTooltip: true,
                                    },
                                    {
                                        title: "GUEST NAME",
                                        field: "GuestName",
                                        sorter: "string",
                                        width: 220,
                                        headerTooltip: true,
                                    },
                                    {
                                        title: "ARRIVAL DATE",
                                        field: "ArrDate",
                                        sorter: "string",
                                        width: 140,
                                        headerTooltip: true,
                                    },
                                    {
                                        title: "DEPARTURE DATE",
                                        field: "DepDate",
                                        sorter: "string",
                                        width: 150,
                                        headerTooltip: true,
                                    },
                                    {
                                        title: "ADULTS",
                                        field: "Adults",
                                        sorter: "number",
                                        width: 90,
                                        headerTooltip: true,
                                    }
                                ];

                                table = new Tabulator("#hk-table", {
                                    data: tabledata,
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis HMS</h2>",
                                    columns: columns,
                                    layout: "fitData",
                                    maxHeight: "600px",
                                    pagination: "local",
                                    paginationSize: 100,
                                    tooltips: true,
                                    responsiveLayout: false,
                                    dataLoaded: function(data) {
                                        // Color code the room status
                                        $('td').each(function() {
                                            if ($(this).text().trim() === 'Clean') {
                                                $(this).css({
                                                    'background-color': '#d4edda',
                                                    'color': '#155724'
                                                });
                                            } else if ($(this).text().trim() === 'Dirty') {
                                                $(this).css({
                                                    'background-color': '#f8d7da',
                                                    'color': '#721c24'
                                                });
                                            }
                                        });
                                    }
                                });
                            }
                        } else {
                            hideLoader();
                            swal("Error!", response.message, "error");
                        }
                    },
                    error: function(xhr, status, error) {
                        hideLoader();
                        let errorMessage = 'Error loading data';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        }
                        swal("Error!", errorMessage, "error");
                    }
                });
            }

            $("#print-table").on("click", function() {
                if (!table) {
                    swal("Warning!", "No data to print", "warning");
                    return;
                }
                table.print(false, true);
            });

            $("#download-xlsx").on("click", function() {
                if (!table) {
                    swal("Warning!", "No data to download", "warning");
                    return;
                }
                table.download("xlsx", "housekeeping_status_report.xlsx", {
                    sheetName: "Housekeeping Report"
                });
            });
        });

        function showLoader() {
            // Show loader if you have one defined globally
            if (typeof showLoader !== 'undefined' && typeof showLoader === 'function') {
                // Call the global showLoader function if it exists
            }
        }

        function hideLoader() {
            // Hide loader if you have one defined globally
            if (typeof hideLoader !== 'undefined' && typeof hideLoader === 'function') {
                // Call the global hideLoader function if it exists
            }
        }
    </script>
@endsection
