@extends('property.layouts.main')
@section('main-container')
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
    <style>
        #usernames {
            max-height: 33em;
            max-width: fit-content;
            overflow: auto;
            text-align: left;
            position: fixed;
            top: 15%;
            left: 12%;
            z-index: 50;
        }

        #usernames ul {
            background: #c8d5b9;
            list-style-type: none;
            padding: 0;
            margin: 0;
            transition: background-color 0.6 ease;
            cursor: auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            width: max-content;
        }

        #usernames ul li:first-child {
            cursor: move;
            background: #8fc0a9;
            color: white;
            display: flex;
            justify-content: space-between;
        }

        #usernames ul:hover {
            background-color: #faf3dd;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }

        #usernames::-webkit-scrollbar {
            width: 3px;
            height: 3px;
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-thumb:hover {
            background-color: #000000;
        }

        .cashierreport #usernames::-webkit-scrollbar-thumb {
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
            background-color: #84e900;
        }

        #usernames::-webkit-scrollbar-thumb:active {
            background: #2708da;
        }

        /* Checkout Register Ul End */
        .titlep {
            display: none;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }
    </style>

    <div class="content-body cashierreport">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3>Booking Enquiry Detail</h3>
                                    </div>
                                </div>
                            </div>
                            <form action="" method="post">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"
                                        name="propertyid">
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
                                        <p style="margin-top:-10px; font-size:16px;">Check In Register</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                                id="fromdatep"></span> To Date:
                                            <span id="todatep"></span>
                                        </p>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <label for="users" class="col-form-label">Status</label>
                                        <select class="form-control select2-multiple" name="status" id="status"> 
                                            <option value="Active">Active</option>
                                            <option value="Inactive">Inactive</option>
                                            <option value="All">All</option>
                                        </select>
                                    </div>
                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">
                                            Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <div class="row table-responsive">
                                <table id="bookinginquirydetail"
                                    class=" table table-border table-hover table striped border rounded">
                                    <thead>
                                        <tr>
                                            <th>SNo</th>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th>Venue</th>
                                            <th>Function Type</th>
                                            <th>Party Name</th>
                                            <th>Phone no</th>
                                            <th>Mobile no</th>
                                            <th>Contact Person</th>
                                            <th>Booked By</th>
                                            <th>Handel By</th>
                                            <th>Status</th>
                                            <th>User</th>
                                            <th>Remark</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="usernames"></div>

    <script>
        $(document).ready(function () {
            var table = $('#bookinginquirydetail').DataTable({
                processing: true,
                serverSide: true,
                searching: true,
                paging: true,
                ordering: true,
                ajax: {
                    url: '{{ route('bookinginquirydetailfetch') }}',
                    type: 'POST',
                    data: function (d) {
                        d.fromdate = $('#fromdate').val();
                        d.todate = $('#todate').val();
                        d.status = $('#status').val();
                        d._token = '{{ csrf_token() }}';
                    },
                    error: function (xhr) {
                        let msg = 'Error loading data.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            msg = xhr.responseJSON.message;
                        }
                        alert(msg);
                    }
                },
               columns: [
                    { data: 'sno', name: 'sno', render: function(data, type, row, meta) { return meta.row + 1; } }, // SNo
                    { data: 'fromdate', name: 'fromdate' },          // Date
                    { data: 'fromtime', name: 'fromtime' },          // Time
                    { data: 'VenueName', name: 'VenueName' },        // Venue
                    { data: 'FunctionType', name: 'FunctionType' },  // Function Type
                    { data: 'partyname', name: 'partyname' },        // Party Name
                    { data: 'mobileno', name: 'mobileno' },          // Phone no (using mobileno as phone)
                    { data: 'mobileno', name: 'mobileno' },          // Mobile no
                    { data: 'conperson', name: 'conperson' },        // Contact Person
                    { data: 'bookedby', name: 'bookedby' },          // Booked By
                    { data: 'handledby', name: 'handledby' },        // Handel By
                    { data: 'status', name: 'status' },              // Status
                    { data: 'u_name', name: 'u_name' },              // User
                    { data: 'remark', name: 'remark' }               // Remark
                ],
                dom: 'Bfrtip',
                buttons: [
                    'excelHtml5',
                    'csvHtml5',
                    //'pdfHtml5',
                    'print'
                ],
                // drawCallback: function (settings) {
                //     var api = this.api();
                //     var totalAmount = 0, totalAdvance = 0, totalPax = 0;
                //     api.rows({ page: 'current' }).every(function (rowIdx, tableLoop, rowLoop) {
                //         var data = this.data();
                //         //  totalAmount += parseFloat(data.amount) || 0;
                //         totalAdvance += parseFloat(data.advance) || 0;
                //         totalPax += parseFloat(data.pax) || 0;
                //     });
                //     // $('#totalAmount').html(totalAmount.toLocaleString(undefined, { maximumFractionDigits: 2 }));
                //     $('#totalAdvance').html(totalAdvance.toLocaleString(undefined, { maximumFractionDigits: 2 }));
                //     $('#totalPax').html(totalPax.toLocaleString(undefined, { maximumFractionDigits: 0 }));
                // }
            });

            // Only load data when refresh is clicked or type is changed to Function
            $('#fetchbutton').on('click', function () {
                table.ajax.reload();
            });
            $('#status').on('change', function () {
                table.ajax.reload();
            });
        });
    </script>
@endsection