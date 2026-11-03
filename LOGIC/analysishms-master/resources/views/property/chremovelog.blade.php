@extends('property.layouts.main')
@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>


    <div class="content-body">
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">

                    <div class="row mb-2">
                        <div class="col-md-3">
                            <label>From Date</label>
                            <input type="date" id="fromdate" class="form-control"
                                value="{{ $fromdate ?? date('Y-m-d') }}">
                        </div>
                        <div class="col-md-3">
                            <label>To Date</label>
                            <input type="date" id="todate" class="form-control"
                                value="{{ $fromdate ?? date('Y-m-d') }}">
                        </div>
                        <div class="col-md-3 mt-4">
                            <button id="fetchbutton" class="btn btn-success">Refresh</button>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <button class="btn btn-outline-info w-100" id="userlistbtn">Users ▼</button>
                            <ul class="checkul" id="listedusers" style="display:none;">
                                <li>
                                    <input type="checkbox" id="checkallusers" checked>
                                    <b>Select All</b>
                                </li>

                                @foreach ($user as $u)
                                    <li>
                                        <input type="checkbox" class="usercheckbox" value="{{ $u->u_name }}" checked>
                                        {{ $u->u_name }}
                                    </li>
                                @endforeach
                            </ul>

                        </div>

                    </div>
                    <div class="mt-3">
                        <button id="print-table" class="btn btn-primary">Print <i class="fa-solid fa-print"></i></button>
                        <button id="download-xlsx" class="btn btn-success">Excel <i class="fa fa-file-excel-o"></i></button>
                    </div>
                    <div id="errorBox" class="alert alert-danger text-center" style="display:none;">
                        No data found for selected criteria
                    </div>
                    <div id="tablecontainer" style="width:100%; height:500px;"></div>


                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <script>
            let table;

            $('#userlistbtn').on('click', function() {
                $('#listedusers').toggle();
            });

            $('#checkallusers').on('change', function() {
                $('.usercheckbox').prop('checked', this.checked);
            });

            $('#fetchbutton').on('click', function() {

                let users = $('.usercheckbox:checked').map(function() {
                    return $(this).val();
                }).get();

                if (users.length === 0) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Selection Required',
                        text: 'Please select at least one user'
                    });
                    return;
                }

                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();

                $.ajax({
                    url: "{{ route('fetchchremovelog') }}",
                    type: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        fromdate: fromdate,
                        todate: todate,
                        users: users
                    },
                    success: function(response) {

                        console.log(response);

                        // backend no-data response
                        if (response.status === false) {
                            Swal.fire({
                                icon: 'info',
                                title: 'No Records',
                                text: response.message
                            });

                            if (table) {
                                table.destroy();
                            }
                            return;
                        }

                        // safety check
                        if (!response || response.length === 0) {
                            Swal.fire({
                                icon: 'info',
                                title: 'No Records',
                                text: 'No data found for selected criteria'
                            });
                            return;
                        }

                        if (table) {
                            table.destroy();
                        }
                        // PRINT
                        $('#print-table').on('click', function() {
                            if (!table) {
                                Swal.fire('No Data', 'Please load data before printing', 'warning');
                                return;
                            }

                            table.print(false, true); // (styled, include column headers)
                        });

                        // EXCEL
                        $('#download-xlsx').on('click', function() {
                            if (!table) {
                                Swal.fire('No Data', 'Please load data before exporting',
                                'warning');
                                return;
                            }

                            table.download("xlsx", "Charge_Removal_Log.xlsx", {
                                sheetName: "Charge Removal Log"
                            });
                        });


                        table = new Tabulator("#tablecontainer", {
                            data: response.data ?? response,
                            layout: "fitColumns",
                            height: "auto",
                            columns: [{
                                    title: "User",
                                    field: "EMPL",
                                    minWidth: 100
                                },
                                {
                                    title: "Deleted At",
                                    field: "DelDate",
                                    minWidth: 120
                                },
                                {
                                    title: "VNO",
                                    field: "VNO",
                                    minWidth: 100
                                },
                                {
                                    title: "Date",
                                    field: "VDate",
                                    minWidth: 100
                                },
                                {
                                    title: "Time",
                                    field: "VTime",
                                    minWidth: 100
                                },
                                {
                                    title: "Folio",
                                    field: "FolioNo",
                                    minWidth: 100
                                },
                                {
                                    title: "Guest",
                                    field: "GUESTNAME",
                                    minWidth: 200
                                },
                                {
                                    title: "Room",
                                    field: "ROOM",
                                    minWidth: 100
                                },
                                {
                                    title: "Amount",
                                    field: "Amount",
                                    hozAlign: "right",
                                    minWidth: 100
                                },
                                {
                                    title: "Comments",
                                    field: "COMMENT",
                                    minWidth: 100
                                },
                                {
                                    title: "Remarks",
                                    field: "Remark",
                                    minWidth: 100
                                },
                                {
                                    title: "Bill No",
                                    field: "BillNo",
                                    minWidth: 100
                                },
                                {
                                    title: "Bill Date",
                                    field: "BillDate",
                                    minWidth: 100
                                }
                            ],
                            pagination: "local",
                            paginationSize: 20,
                            placeholder: "No data found"
                        });
                    },
                    error: function(err) {
                        console.log(err);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Error fetching data'
                        });
                    }
                });
            });
        </script>
    @endsection
