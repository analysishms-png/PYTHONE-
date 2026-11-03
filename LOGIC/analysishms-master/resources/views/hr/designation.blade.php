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

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row pt-3">
                                <div class="col-lg-6">
                                    <h3 class="card-title">Designation Master</h3>
                                </div>
                                <div class="col-lg-6">

                                </div>
                            </div>
                            <form class="form" method="POST" action="javascript:void(0)" autocomplete="off"
                                name="designationsubmitform" id="designationsubmitform" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label" for="upname">Designation Name</label>
                                            <input type="text" name="upname" id="upname" class="form-control"
                                                placeholder="Axxxxnt Manager">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label" for="upname">Status</label>
                                            <select name="status" id="status" class="form-control">
                                                <option value="Y">Active</option>
                                                <option value="N">Inactive</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit+</button>
                                </div>
                            </form>

                            <div class="table-responsive">
                                <table id="designationmast"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Name</th>
                                            {{-- <th>Code</th> --}}
                                            <TH>Status</TH>
                                            <th>Action</th>
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


        <!-- #/ container -->
        <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateModalLabel">Update HR Payroll</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form id="hrPayrollForm" method="POST" action="javascript:void(0)">
                            @csrf
                            <input type="hidden" name="sn" id="hr_id">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" id="hr_name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <select name="status" id="hr_status" class="form-control">
                                    <option value="Y">Active</option>
                                    <option value="N">Inactive</option>
                                </select>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>


        <script>

            $(document).on('click', '.editBtn', function () {
                let id = $(this).data('id');
                let name = $(this).data('name');
                let status = $(this).data('status');

                $('#hr_id').val(id);
                $('#hr_name').val(name);
                $('#hr_status').val(status);
            });


            $(document).ready(function () {
                var fpnoColors = {};
                var fpnoColorIndex = 0;
                var table = $('#designationmast').DataTable({
                    processing: true,
                    serverSide: true,
                    searching: true,
                    paging: true,
                    ordering: true,
                    ajax: {
                        url: '{{ route('designationdata') }}',
                        type: 'GET',
                        error: function (xhr) {
                            let msg = 'Error loading data.';
                            if (xhr.responseJSON && xhr.responseJSON.message) {
                                msg = xhr.responseJSON.message;
                            }
                            pushNotify('error', msg);
                        }
                    },
                    columns: [
                        { data: 'sno', name: 'sno' }, // S.No
                        { data: 'name', name: 'name' }, // Name
                        //{ data: 'code', name: 'code' }, // Code
                        { data: 'status', name: 'status' }, // Status
                        { data: 'action', name: 'action' }, // Action
                    ],
                    dom: 'Bfrtip',
                    buttons: [
                        {
                            text: 'CSV <i class="fa fa-file-excel-o"></i>',
                            className: 'btn btn-success',
                            action: function (e, dt, button, config) {
                                // redirect to controller route that returns csv file
                                window.location.href = '/designationexport';
                            }
                        },
                        {
                            extend: 'print',
                            text: 'Print <i class="fa-solid fa-print"></i>',
                            title: 'Designation Master',
                            filename: 'Designation Master',
                            footer: true,
                            customize: function (win) {
                                $(win.document.body).find('th').removeClass('sorting sorting_asc sorting_desc');
                                $(win.document.body).find('table').css('margin-top', '100px');
                                $(win.document.body).prepend('<div class="titlep">' + $('.titlep').html() + '</div>');
                                var style = '<style>';
                                style += '.none { display: none !important; }';
                                style += '</style>';
                                $(win.document.head).append(style);
                            },
                            action: function (e, dt, button, config) {
                                exportAllData(e, dt, button, config, $.fn.dataTable.ext.buttons.print.action);
                            }
                        }
                    ]
                });

                function exportAllData(e, dt, button, config, exportAction) {
                    var oldStart = dt.settings()[0]._iDisplayStart;

                    dt.one('preXhr', function (e, s, data) {

                        data.start = 0;
                        data.length = 2147483647;

                        dt.one('preDraw', function (e, settings) {
                            exportAction(e, dt, button, config);
                            settings._iDisplayStart = oldStart;
                            data.start = oldStart;

                            dt.one('preDraw', function (e, settings) {
                                dt.settings()[0]._iDisplayStart = oldStart;
                                dt.draw(false);
                            });

                            return false;
                        });
                    });

                    // Trigger reload
                    dt.ajax.reload();
                }

                ///////////////  Submit Form //////////////

                $('#designationsubmitform').on('submit', function (e) {
                    e.preventDefault();

                    $('span.error-text').text('');

                    $.ajax({
                        url: "{{ route('adddesignation') }}",   // 
                        method: "POST",
                        data: new FormData(this),
                        processData: false,
                        contentType: false,
                        beforeSend: function () {
                            $('#submitBtn').prop('disabled', true).text('Submitting...');
                        },
                        success: function (response) {
                            $('#submitBtn').prop('disabled', false).text('Submit +');

                            if (response.status == 1) {
                                // Success
                                pushNotify('success', response.msg);
                                $('#designationsubmitform')[0].reset();
                                $('#updateModal').modal('hide'); // Modal close
                                table.ajax.reload();
                                // location.reload();
                            } else {
                                pushNotify('error', response.msg);
                            }
                        },
                        error: function (xhr) {
                            $('#submitBtn').prop('disabled', false).text('Submit +');

                            if (xhr.status === 422) {
                                // Laravel validation error
                                $.each(xhr.responseJSON.errors, function (key, value) {
                                    $('span.' + key + '_error').text(value[0]);
                                    pushNotify('error', value[0]);
                                });
                            } else {
                                pushNotify('error', 'Something went wrong! Please try again.');
                            }
                        }
                    });
                });


                ///////////////  Update Form //////////////

                $('#hrPayrollForm').on('submit', function (e) {
                    e.preventDefault();

                    $('span.error-text').text(''); // Clear previous errors

                    $.ajax({
                        url: "{{ route('editdesignation') }}", // Laravel route for update
                        method: "POST",
                        data: new FormData(this),
                        processData: false,
                        contentType: false,
                        beforeSend: function () {
                            $('#hrPayrollForm button[type="submit"]').prop('disabled', true).text('Updating...');
                        },
                        success: function (response) {
                            $('#hrPayrollForm button[type="submit"]').prop('disabled', false).text('Update');

                            if (response.status == 1) {
                                // Success
                                pushNotify('success', response.msg);
                                $('#hrPayrollForm')[0].reset();
                                $('#updateModal').modal('hide'); // Modal close
                                table.ajax.reload(); // Refresh DataTable
                            } else {
                                pushNotify('error', response.msg);
                            }
                        },
                        error: function (xhr) {
                            $('#hrPayrollForm button[type="submit"]').prop('disabled', false).text('Update');

                            if (xhr.status === 422) {
                                // Laravel validation error
                                $.each(xhr.responseJSON.errors, function (key, value) {
                                    $('span.' + key + '_error').text(value[0]);
                                    pushNotify('error', value[0]);
                                });
                            } else {
                                pushNotify('error', 'Something went wrong! Please try again.');
                            }
                        }
                    });
                });


                //////////// Delete ////////////////

                $(document).on('click', '.deleteBtn', function () {
                    let id = $(this).data('id'); // Button me data-id attribute hona chahiye

                    if (confirm('Are you sure you want to delete this designation?')) {
                        $.ajax({
                            url: "{{ route('deletedesignation') }}", // Laravel route
                            type: 'POST',
                            data: {
                                'sn': id,
                                'status': 'D', // Set status to 'D' for delete
                                _token: "{{ csrf_token() }}"
                            },
                            beforeSend: function () {
                                // Optional: disable button or show loader
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', true).text('Deleting...');
                            },
                            success: function (response) {
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');

                                if (response.status == 1) {
                                    pushNotify('success', response.msg);
                                    table.ajax.reload(); // Refresh DataTable
                                } else {
                                    pushNotify('error', response.msg);
                                }
                            },
                            error: function (xhr) {
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');
                                pushNotify('error', 'Something went wrong! Please try again.');
                            }
                        });
                    }
                });
            });

        </script>
@endsection