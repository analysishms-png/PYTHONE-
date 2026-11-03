@extends('property.layouts.main')

@section('main-container')
@include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card mb-4">
                        <div class="card-header bg-white border-bottom">
                            <h4 class="mb-0"><i class="fa fa-database text-primary mr-2"></i>Property Database Backup</h4>
                        </div>
                        <div class="card-body">
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <div class="info-card bg-light p-3 rounded">
                                        <strong>Property ID:</strong>
                                        <span class="ml-2 text-primary font-weight-bold">{{ session('propertyid') }}</span>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="info-card bg-light p-3 rounded">
                                        <strong>Backup Format:</strong>
                                        <span class="ml-2 text-primary font-weight-bold">SQL + GZIP (.sql.gz)</span>
                                    </div>
                                </div>
                                <div class="col-md-4 text-md-right">
                                    <button id="generateBackup" class="btn btn-success btn-lg px-5">
                                        <i class="fa fa-download mr-2"></i>Generate Backup
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header bg-white border-bottom d-flex justify-content-between align-items-center">
                            <h5 class="mb-0">Backup History</h5>
                            <div class="input-group input-group-sm" style="width: 300px;">
                                <input type="text" id="dateFrom" class="form-control datepicker" placeholder="Date From">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                </div>
                            </div>
                            <div class="input-group input-group-sm ml-2" style="width: 300px;">
                                <input type="text" id="dateTo" class="form-control datepicker" placeholder="Date To">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <table id="backupTable" class="table table-striped table-bordered mb-0" style="width: 100%;">
                                <thead class="bg-light">
                                    <tr>
                                        <th>#</th>
                                        <th>Backup File</th>
                                        <th>Size</th>
                                        <th>Created By</th>
                                        <th>Created On</th>
                                        <th>Status</th>
                                        <th>Downloaded By</th>
                                        <th>Downloaded On</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(function() {
            const dt = $('#backupTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: '{{ route('backup.database.fetch') }}',
                    type: 'POST',
                    data: function(d) {
                        d._token = '{{ csrf_token() }}';
                        d.date_from = $('#dateFrom').val();
                        d.date_to = $('#dateTo').val();
                    },
                    error: function(xhr) {
                        if (xhr.status === 419) {
                            location.reload();
                        }
                    }
                },
                columns: [{
                        data: 0,
                        name: 'id',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 1,
                        name: 'filename'
                    },
                    {
                        data: 2,
                        name: 'filesize'
                    },
                    {
                        data: 3,
                        name: 'username'
                    },
                    {
                        data: 4,
                        name: 'created_at'
                    },
                    {
                        data: 5,
                        name: 'status',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 6,
                        name: 'downloaded_by'
                    },
                    {
                        data: 7,
                        name: 'downloaded_at'
                    },
                    {
                        data: 8,
                        name: 'action',
                        orderable: false,
                        searchable: false
                    }
                ],
                order: [
                    [4, 'desc']
                ],
                pageLength: 10,
                lengthMenu: [
                    [10, 25, 50, 100],
                    [10, 25, 50, 100]
                ],
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search backup file, user..."
                },
                dom: "<'row'<'col-sm-12 col-md-6'l><'col-sm-12 col-md-6'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
                drawCallback: function() {
                    $('[data-toggle="tooltip"]').tooltip();
                }
            });

            $('#dateFrom, #dateTo').datepicker({
                format: 'yyyy-mm-dd',
                autoclose: true,
                todayHighlight: true
            }).on('changeDate', function() {
                dt.ajax.reload();
            });

            $(document).on('click', '#generateBackup', function() {
                const btn = $(this);
                btn.prop('disabled', true);

                Swal.fire({
                    title: 'Creating Backup...',
                    text: 'Please wait while your database backup is queued.',
                    allowOutsideClick: false,
                    allowEscapeKey: false,
                    didOpen: () => Swal.showLoading()
                });

                $.ajax({
                    url: '{{ route('backup.database.generate') }}',
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(res) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Backup Queued',
                            text: res.message,
                            timer: 2000,
                            showConfirmButton: false
                        });

                        setTimeout(function() {
                            dt.ajax.reload();
                        }, 2000);

                        btn.prop('disabled', false);
                    },
                    error: function(xhr) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Backup Failed',
                            text: xhr.responseJSON?.message ?? 'Something went wrong.'
                        });
                        btn.prop('disabled', false);
                    }
                });
            });

            $(document).on('click', '.download-btn', function() {
                const btn = $(this);
                const backupId = btn.data('id');
                const filename = btn.data('filename');

                Swal.fire({
                    title: 'Download Backup?',
                    text: `Download "${filename}"?`,
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, Download',
                    cancelButtonText: 'Cancel',
                    confirmButtonColor: '#28a745'
                }).then((result) => {
                    if (result.isConfirmed) {
                        const form = $('<form>', {
                            method: 'POST',
                            action: '{{ route('backup.database.download') }}'
                        }).append(
                            $('<input>', {
                                type: 'hidden',
                                name: '_token',
                                value: '{{ csrf_token() }}'
                            }),
                            $('<input>', {
                                type: 'hidden',
                                name: 'id',
                                value: backupId
                            })
                        ).appendTo('body');

                        form[0].submit();
                        form.remove();

                        Swal.fire({
                            icon: 'success',
                            title: 'Download Started',
                            text: 'Your backup download has started.',
                            timer: 2000,
                            showConfirmButton: false
                        });

                        setTimeout(function() {
                            dt.ajax.reload();
                        }, 2000);
                    }
                });
            });
        });
    </script>
@endsection
