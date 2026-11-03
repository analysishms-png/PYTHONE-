@extends('admin.layouts.main')

@section('main-container')
    @include('cdns.datatable')

    <div class="content-body">
        <div class="container-fluid">

            <div class="card mb-4">
                <div class="card-header bg-white border-bottom">
                    <h4 class="mb-0">
                        <i class="fa fa-database text-primary mr-2"></i>
                        Bulk Database Backup
                    </h4>
                </div>
                <div class="card-body">

                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <p class="mb-1"><strong>Backup Type:</strong> Complete Analysis HMS</p>
                            <p class="mb-1"><strong>Includes:</strong> Main database + All tenant databases</p>
                            <p class="mb-0"><strong>Output:</strong> analysis_DD_MM_YYYY_HH_MM_SS.zip</p>
                        </div>

                        <div class="col-md-4 text-md-right mt-3 mt-md-0">
                            <button id="generateBulkBackup" class="btn btn-success btn-lg px-4">
                                <i class="fa fa-download mr-2"></i>
                                Generate Bulk Backup
                            </button>
                        </div>
                    </div>

                </div>
            </div>

            <div class="card mb-4">
                <div class="card-header bg-white border-bottom">
                    <h4 class="mb-0">
                        <i class="fa fa-folder-open text-primary mr-2"></i>
                        Storage Backup
                    </h4>
                </div>
                <div class="card-body">
                    <button id="downloadStorageBtn" class="btn btn-primary">
                        <i class="fa fa-download mr-2"></i>
                        Download Storage Backup
                    </button>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-header bg-white border-bottom">
                    <h4 class="mb-0">
                        <i class="fa fa-check-circle text-primary mr-2"></i>
                        Verify Database Backup
                    </h4>
                </div>
                <div class="card-body">
                    <form id="verifyDbForm" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label>Upload ZIP Backup</label>
                            <input type="file" class="form-control" name="backup_file" accept=".zip" required>
                        </div>

                        <button class="btn btn-warning">
                            <i class="fa fa-check mr-2"></i>
                            Verify Database
                        </button>
                    </form>
                </div>
            </div>

            <div class="card">
                <div class="card-header bg-white border-bottom">
                    <div class="row w-100 align-items-center">
                        <div class="col-md-4">
                            <h4 class="mb-0">
                                <i class="fa fa-history text-primary mr-2"></i>
                                Bulk Backup History
                            </h4>
                        </div>

                        <div class="col-md-4 mt-2 mt-md-0">
                            <input type="text" id="dateFrom" class="form-control datepicker" placeholder="Date From">
                        </div>

                        <div class="col-md-4 mt-2 mt-md-0">
                            <input type="text" id="dateTo" class="form-control datepicker" placeholder="Date To">
                        </div>
                    </div>
                </div>

                <div class="card-body p-0">
                    <table id="bulkBackupTable" class="table table-bordered table-striped mb-0 w-100">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>ZIP File</th>
                                <th>Size</th>
                                <th>Total DB</th>
                                <th>Created By</th>
                                <th>Created On</th>
                                <th>Status</th>
                                <th>Downloaded By</th>
                                <th>Downloaded On</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="verifyDbModal">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Database Verification Result</h5>
                    <button class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>

                <div class="modal-body" id="verifyDbResults"></div>
            </div>
        </div>
    </div>

    <script>
        $(function() {

            let timerInterval;

            function startTimer() {
                const started = Date.now();

                timerInterval = setInterval(function() {

                    const sec = Math.floor((Date.now() - started) / 1000);
                    const mm = String(Math.floor(sec / 60)).padStart(2, '0');
                    const ss = String(sec % 60).padStart(2, '0');

                    Swal.update({
                        html: `Processing... <br><br><b>${mm}:${ss}</b>`
                    });

                }, 1000);
            }

            function stopTimer() {
                clearInterval(timerInterval);
            }

            $('.datepicker').datepicker({
                format: 'yyyy-mm-dd',
                autoclose: true,
                todayHighlight: true
            });

            const table = $('#bulkBackupTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('superadmin.bulk-backup.fetch') }}",
                    type: "POST",
                    data: function(d) {
                        d._token = "{{ csrf_token() }}";
                        d.date_from = $('#dateFrom').val();
                        d.date_to = $('#dateTo').val();
                    }
                },
                order: [
                    [5, 'desc']
                ]
            });

            $('#dateFrom,#dateTo').change(function() {
                table.ajax.reload();
            });

            $('#generateBulkBackup').click(function() {

                const btn = $(this);
                btn.prop('disabled', true);

                Swal.fire({
                    title: 'Queuing Bulk Backup',
                    html: 'Preparing job...<br><br><b>00:00</b>',
                    allowOutsideClick: false,
                    allowEscapeKey: false,
                    didOpen: function() {
                        Swal.showLoading();
                        startTimer();
                    }
                });

                $.ajax({
                    url: "{{ route('superadmin.bulk-backup.generate') }}",
                    type: "POST",
                    data: {
                        _token: "{{ csrf_token() }}"
                    },
                    success: function(res) {

                        stopTimer();

                        Swal.fire({
                            icon: 'success',
                            title: 'Queued Successfully',
                            text: res.message
                        });

                        btn.prop('disabled', false);

                        const poll = setInterval(function() {
                            table.ajax.reload(null, false);
                        }, 5000);

                        setTimeout(function() {
                            clearInterval(poll);
                        }, 300000);

                    },
                    error: function(xhr) {

                        stopTimer();

                        Swal.fire({
                            icon: 'error',
                            title: 'Failed',
                            text: xhr.responseJSON?.message ?? 'Something went wrong'
                        });

                        btn.prop('disabled', false);
                    }
                });

            });

            $(document).on('click', '.download-btn', function() {

                const id = $(this).data('id');
                const filename = $(this).data('filename');

                Swal.fire({
                    title: 'Download Backup?',
                    text: filename,
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Download'
                }).then(function(result) {

                    if (!result.isConfirmed) return;

                    const form = $('<form>', {
                        method: 'POST',
                        action: "{{ route('superadmin.bulk-backup.download') }}"
                    });

                    form.append('<input type="hidden" name="_token" value="{{ csrf_token() }}">');
                    form.append('<input type="hidden" name="id" value="' + id + '">');

                    $('body').append(form);

                    form.submit();
                    form.remove();

                    Swal.fire({
                        icon: 'success',
                        title: 'Download Started',
                        timer: 1500,
                        showConfirmButton: false
                    });

                    setTimeout(function() {
                        table.ajax.reload(null, false);
                    }, 2000);

                });

            });

            $('#downloadStorageBtn').click(function() {

                Swal.fire({
                    title: 'Creating Storage Backup',
                    html: 'Please wait...<br><br><b>00:00</b>',
                    allowOutsideClick: false,
                    didOpen: function() {
                        Swal.showLoading();
                        startTimer();
                    }
                });

                $.get("{{ route('superadmin.storagefdownload') }}", function(res) {

                    stopTimer();

                    if (res.status === 'success') {

                        const a = document.createElement('a');
                        a.href = res.url;
                        document.body.appendChild(a);
                        a.click();
                        a.remove();

                        Swal.fire({
                            icon: 'success',
                            title: 'Storage Backup Ready'
                        });

                    } else {

                        Swal.fire('Error', res.message, 'error');

                    }

                }).fail(function() {

                    stopTimer();

                    Swal.fire('Error', 'Backup failed', 'error');

                });

            });

            $('#verifyDbForm').submit(function(e) {

                e.preventDefault();

                const fd = new FormData(this);

                Swal.fire({
                    title: 'Verifying',
                    allowOutsideClick: false,
                    didOpen: function() {
                        Swal.showLoading();
                    }
                });

                $.ajax({
                    url: "{{ route('superadmin.verify-database') }}",
                    type: "POST",
                    data: fd,
                    processData: false,
                    contentType: false,
                    success: function(res) {

                        Swal.close();

                        let html = `
                <table class="table table-bordered table-striped">
                    <thead class="bg-dark text-white">
                        <tr>
                            <th>Property</th>
                            <th>Ncur</th>
                            <th>Paycharge</th>
                        </tr>
                    </thead><tbody>`;

                        res.data.forEach(function(r) {
                            html += `
                    <tr>
                        <td>${r.propertyid}</td>
                        <td>${r.ncur}</td>
                        <td>${r.paycharge_count}</td>
                    </tr>`;
                        });

                        html += '</tbody></table>';

                        $('#verifyDbResults').html(html);
                        $('#verifyDbModal').modal('show');

                    },
                    error: function() {

                        Swal.close();
                        Swal.fire('Error', 'Verification failed', 'error');

                    }
                });

            });

        });
    </script>
@endsection
