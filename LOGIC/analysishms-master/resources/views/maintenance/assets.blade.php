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
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">

                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <div class="row pt-3">
                                <div class="col-lg-6">
                                    <h3 class="card-title">Assets Master</h3>
                                </div>
                                <div class="col-lg-6">

                                </div>
                            </div>
                            <form action="javascript:void(0);" id="addAssetsForm" class="form-horizontal" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="name">Name <span
                                                class="text-danger">*</span></label>
                                        <input autocomplete="off" type="text" name="name" id="entername" maxlength="100"
                                            class="form-control" placeholder="Name" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="Short Name">Short Name <span class="text-danger"
                                                id="getShortname">*</span></label>
                                        <input autocomplete="off" type="text" name="short_name" id="short_name"
                                            maxlength="100" class="form-control" placeholder="Short Name" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="code">Code <span class="text-danger"
                                                id="getcode">*</span></label>
                                        <input autocomplete="off" type="text" name="code" id="mycodeupdate" maxlength="100"
                                            class="form-control" placeholder="Code" required readonly>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="name">Location <span
                                                class="text-danger">*</span></label>
                                        <select name="location" id="location" class="form-control" required>
                                            <option value="">Select Location</option>
                                            @foreach($locations as $location)
                                                <option value="{{$location->scode}}">{{$location->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="name">Company Name</label>
                                        <input autocomplete="off" type="text" name="company_name" id="company_name"
                                            class="form-control" placeholder="Company Name">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="name">Suppler Name</label>
                                        <input autocomplete="off" type="text" name="suppler_name" id="suppler_name"
                                            class="form-control" placeholder="Suppler Name">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="name">Purchase Date</label>
                                        <input autocomplete="off" type="date" name="purchase_date" id="purchase_date"
                                            class="form-control" placeholder="Purchase Date">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="name">Purchase Bill No.</label>
                                        <input autocomplete="off" type="text" name="purchase_bill_no" id="purchase_bill_no"
                                            class="form-control" placeholder="Purchase Bill No.">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="name">Assets Image</label>
                                        <input autocomplete="off" type="file" name="assets_image" id="assets_image"
                                            class="form-control" placeholder="Assets Image">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="name">Purchase Bill Image</label>
                                        <input autocomplete="off" type="file" name="purchase_bill_image"
                                            id="purchase_bill_image" class="form-control" placeholder="Purchase Bill Image">
                                    </div>
                                </div>
                                <div class="text-center pt-4">
                                    <button id="submitBtn" type="submit" class="btn ti-save btn-primary">
                                        Submit</button>
                                </div>
                            </form>

                            <div class="table-responsive mt-4">
                                <table id="asstesTable"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Name</th>
                                            <th>Short Name</th>
                                            <th>Code</th>
                                            <th>Location</th>
                                            <th>Company Name</th>
                                            <th>Suppler Name</th>
                                            <th>Purchase Date</th>
                                            <th>Purchase Bill No.</th>
                                            <th>Assets Image</th>
                                            <th>Purchase Bill Image</th>
                                            <th>Status</th>
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
    </div>

    <!-- #/ container -->
    <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Update Assets</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <form id="assetsupdateform" method="POST" action="javascript:void(0)">
                        @csrf
                        <input type="hidden" name="sn" id="as_id">
                        <div class="row">
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Name <span class="text-danger">*</span></label>
                                <input autocomplete="off" type="text" name="name" id="as_name" maxlength="100"
                                    class="form-control" placeholder="Name" required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="short_name">Short Name <span class="text-danger"
                                        id="as_short_name_text">*</span></label>
                                <input autocomplete="off" type="text" name="short_name" id="as_short_name" maxlength="100"
                                    class="form-control" placeholder="Short Name" required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Code <span class="text-danger"
                                        id="as_code_text">*</span></label>
                                <input autocomplete="off" type="text" name="name" id="as_code" maxlength="100"
                                    class="form-control" placeholder="Name" required readonly>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Location <span class="text-danger">*</span></label>
                                <select name="location" id="as_location" class="form-control" required>
                                    <option value="">Select Location</option>
                                    @foreach($locations as $location)
                                        <option value="{{$location->scode}}">{{$location->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Company Name</label>
                                <input autocomplete="off" type="text" name="company_name" id="as_company_name"
                                    class="form-control" placeholder="Company Name">
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Suppler Name</label>
                                <input autocomplete="off" type="text" name="suppler_name" id="as_suppler_name"
                                    class="form-control" placeholder="Suppler Name">
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Purchase Date</label>
                                <input autocomplete="off" type="date" name="purchase_date" id="as_purchase_date"
                                    class="form-control" placeholder="Purchase Date">
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Purchase Bill No.</label>
                                <input autocomplete="off" type="text" name="purchase_bill_no" id="as_purchase_bill_no"
                                    class="form-control" placeholder="Purchase Bill No.">
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Assets Image</label>
                                <img src="" alt="Assets Image" id="as_assets_image" width="100px" height="100px" />
                                <input autocomplete="off" type="file" name="assets_image" id="assets_image"
                                    class="form-control" placeholder="Assets Image">
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="name">Purchase Bill Image</label>
                                <img src="" alt="Purchase Bill Image" id="as_purchase_bill_image" width="100px"
                                    height="100px" />
                                <input autocomplete="off" type="file" name="purchase_bill_image" id="purchase_bill_image"
                                    class="form-control" placeholder="Purchase Bill Image">
                            </div>
                        </div>
                        <div class="text-center pt-4">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <script>

        ///////////////////  Get Code & Short Name /////////////////

        let typingTimer;
        const typingDelay = 500; // milliseconds delay after user stops typing

        // --- When typing Name (Add) ---
        $('#entername').on('keyup', function () {
            clearTimeout(typingTimer);
            const name = $(this).val().trim();

            if (name !== '') {
                typingTimer = setTimeout(() => getShortNameAndCode(name, 'a'), typingDelay);
            }
        });

        // --- When typing Short Name (Add) ---
        $('#short_name').on('keyup', function () {
            clearTimeout(typingTimer);
            const sname = $(this).val().trim();

            if (sname !== '') {
                typingTimer = setTimeout(() => getCode(sname, 'a'), typingDelay);
            }
        });

        // --- When typing Name (Edit) ---
        $('#as_name').on('keyup', function () {
            clearTimeout(typingTimer);
            const name = $(this).val().trim();

            if (name !== '') {
                typingTimer = setTimeout(() => getShortNameAndCode(name, 'e'), typingDelay);
            }
        });

        // --- When typing Short Name (Edit) ---
        $('#as_short_name_text').on('keyup', function () {
            clearTimeout(typingTimer);
            const sname = $(this).val().trim();

            if (sname !== '') {
                typingTimer = setTimeout(() => getCode(sname, 'e'), typingDelay);
            }
        });

        // --- Fetch Code Only ---
        function getCode(shName, fromType = 'a') {
            $('span.error-text').text(''); // Clear previous errors
            let code = '';    
            $.ajax({
                url: "{{ route('getCode') }}",
                method: "POST",
                data: {
                    shName: shName,
                    fromType: fromType,
                    _token: "{{ csrf_token() }}"
                },
                dataType: "json",
                beforeSend: function () {
                    (fromType === 'a' ? $('#getcode') : $('#as_code_text')).text('Loading...');
                },
                success: function (response) {
                    const target = fromType === 'a' ? $('#getcode') : $('#as_code_text');
                    target.text('*');

                    if (fromType === 'a') {
                         code = response.code;
                    } else {
                         code = $('#as_code').val();
                    }

                    if (response.status == 1) {
                        $('#mycodeupdate').val(code);
                        pushNotify('success', response.msg);
                    } else {
                        pushNotify('error', response.msg);
                    }
                },
                error: function (xhr) {
                    (fromType === 'a' ? $('#getcode') : $('#as_code_text')).text('*');

                    if (xhr.status === 422) {
                        $.each(xhr.responseJSON.errors, function (key, value) {
                            $('span.' + key + '_error').text(value[0]);
                            pushNotify('error', value[0]);
                        });
                    } else {
                        pushNotify('error', 'Something went wrong! Please try again.');
                    }
                }
            });
        }

        // --- Fetch Short Name + Code both ---
        function getShortNameAndCode(name, fromType = 'a') {
            $('span.error-text').text(''); // Clear previous errors
            let code = ''; //$(this).data('code');
            $.ajax({
                url: "{{ route('getshortCode') }}",
                method: "POST",
                data: {
                    name: name,
                    fromType: fromType,
                    _token: "{{ csrf_token() }}"
                },
                dataType: "json",
                beforeSend: function () {
                    (fromType === 'a'
                        ? $('#getShortname, #getcode')
                        : $('#as_short_name_text, #as_code_text')
                    ).text('Loading...');
                },
                success: function (response) {
                    const shortInput = fromType === 'a' ? $('#short_name') : $('#as_short_name');
                    const codeInput = fromType === 'a' ? $('#mycodeupdate') : $('#as_code');
                    const textSpans = fromType === 'a' ? $('#getShortname, #getcode') : $('#as_short_name_text, #as_code_text');

                    textSpans.text('*');
                    if (fromType === 'a') {
                         code = response.code;
                    } else {
                         code = $('#as_code').val();
                    }

                    if (response.status == 1) {
                        shortInput.val(response.short_name);
                        codeInput.val(code);
                        pushNotify('success', response.msg);
                    } else {
                        pushNotify('error', response.msg);
                    }
                },
                error: function (xhr) {
                    (fromType === 'a'
                        ? $('#getShortname, #getcode')
                        : $('#as_short_name_text, #as_code_text')
                    ).text('*');

                    if (xhr.status === 422) {
                        $.each(xhr.responseJSON.errors, function (key, value) {
                            $('span.' + key + '_error').text(value[0]);
                            pushNotify('error', value[0]);
                        });
                    } else {
                        pushNotify('error', 'Something went wrong! Please try again.');
                    }
                }
            });
        }




        $(document).on('click', '.editBtn', function () {
            let id = $(this).data('update_id');
            let name = $(this).data('update_name');
            let code = $(this).data('code');
            let status = $(this).data('status');
            let type = $(this).data('type');
            let location = $(this).data('location');
            let company_name = $(this).data('company_name');
            let suppler_name = $(this).data('suppler_name');
            let purchase_date = $(this).data('purchase_date');
            let purchase_bill_no = $(this).data('purchase_bill_no');
            let assets_image = $(this).data('assets_image');
            let bill_image = $(this).data('bill_image');

            $('#as_id').val(id);
            $('#as_name').val(name);
            $('#as_code').val(code);
            $('#as_status').val(status);
            $('#as_short_name').val(type);
            $('#as_location').val(location);
            $('#as_company_name').val(company_name);
            $('#as_suppler_name').val(suppler_name);
            $('#as_purchase_date').val(purchase_date);
            $('#as_purchase_bill_no').val(purchase_bill_no);
            // $('#as_assets_image').val(assets_image);
            // $('#as_bill_image').val(bill_image);

            $('#as_assets_image').attr('src', assets_image);
            $('#as_purchase_bill_image').attr('src', bill_image);
        });


        $(document).ready(function () {
            var fpnoColors = {};
            var fpnoColorIndex = 0;
            var table = $('#asstesTable').DataTable({
                processing: true,
                serverSide: true,
                searching: true,
                paging: true,
                ordering: true,
                ajax: {
                    url: '{{ route('asstesdata') }}',
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
                    { data: 'short_name', name: 'short_name' }, // Name
                    { data: 'code', name: 'code' }, // Name
                    { data: 'location', name: 'location' }, // Location
                    { data: 'company_name', name: 'company_name' }, // Company Name
                    { data: 'suppler_name', name: 'suppler_name' }, // Suppler Name
                    { data: 'purchase_date', name: 'purchase_date' }, // Purchase DateCode
                    { data: 'purchase_bill_no', name: 'purchase_bill_no' }, // Purchase Bill No.
                    { data: 'assets_image', name: 'assets_image' }, // Assets Image
                    { data: 'purchase_bill_image', name: 'purchase_bill_image' }, // Purchase Bill Image
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
                            window.location.href = '/assetsexport';
                        }
                    },
                    {
                        extend: 'print',
                        text: 'Print <i class="fa-solid fa-print"></i>',
                        title: 'Assets Master',
                        filename: 'Assets Master',
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

            $('#addAssetsForm').on('submit', function (e) {
                e.preventDefault();

                $('span.error-text').text('');

                $.ajax({
                    url: "{{ route('addassets') }}",   // 
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
                            $('#addAssetsForm')[0].reset();
                            table.ajax.reload();
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

            $('#assetsupdateform').on('submit', function (e) {
                e.preventDefault();

                $('span.error-text').text(''); // Clear previous errors

                $.ajax({
                    url: "{{ route('editassets') }}", // Laravel route for update
                    method: "POST",
                    data: new FormData(this),
                    processData: false,
                    contentType: false,
                    beforeSend: function () {
                        $('#assetsupdateform button[type="submit"]').prop('disabled', true).text('Updating...');
                    },
                    success: function (response) {
                        $('#assetsupdateform button[type="submit"]').prop('disabled', false).text('Update');

                        if (response.status == 1) {
                            // Success
                            pushNotify('success', response.msg);
                            $('#assetsupdateform')[0].reset();
                            $('#updateModal').modal('hide'); // Modal close
                            table.ajax.reload(); // Refresh DataTable
                        } else {
                            pushNotify('error', response.msg);
                        }
                    },
                    error: function (xhr) {
                        $('#assetsupdateform button[type="submit"]').prop('disabled', false).text('Update');

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

                if (confirm('Are you sure you want to delete this assets?')) {
                    $.ajax({
                        url: "{{ route('deleteassets') }}", // Laravel route
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