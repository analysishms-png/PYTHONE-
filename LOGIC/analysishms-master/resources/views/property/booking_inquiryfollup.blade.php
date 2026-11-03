@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3>Booking Enquiry Follow Up</h3>
                                        <button type="button" class="btn btn-primary btn-push active" id="btn-all"
                                            onclick="filterStatus()">All</button>
                                        <button type="button" class="btn btn-success btn-push" id="btn-running"
                                            onclick="filterStatus(1, this)">Running</button>
                                        <button type="button" class="btn btn-warning btn-push" id="btn-closed"
                                            onclick="filterStatus(0, this)">Closed</button>
                                    </div>
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover " id="followupTable">
                                            <thead class="table-light">
                                                <tr>
                                                    <th width="5%">#</th>
                                                    <th width="15%">Name</th>
                                                    <th width="15%">Mobile</th>
                                                    <th width="15%">Hall</th>
                                                    <th width="15%">Date</th>
                                                    <th width="15%">Expected Pax</th>
                                                    <th width="15%">Guaranteed Pax</th>
                                                    <th width="15%">Follow Up Date</th>
                                                    <th width="30%">Remark</th>
                                                    <th width="5%"><i class="fa fa-eye"></i></th>
                                                    <th width="15%">Status</th>
                                                    <th width="15%">Action</th>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <link rel="stylesheet" href="https://cdn.datatables.net/2.3.2/css/dataTables.dataTables.min.css">
    <script src="https://cdn.datatables.net/2.3.2/js/dataTables.min.js"></script>
    <script>
        var followupTable;
        $(document).ready(function () {
            if ($.fn.DataTable.isDataTable('#followupTable')) {
                $('#followupTable').DataTable().destroy();
            }

            followupTable = new DataTable('#followupTable', {
                processing: true,
                serverSide: true,
                ajax: {
                    url: '{{ route('get-inquiryfollup') }}',
                    type: 'GET',
                    data: function (d) {
                        d.status = window.currentStatus !== undefined ? window.currentStatus : '';
                    }
                },
                columns: [
                    { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
                    { data: 'name', name: 'name' },
                    { data: 'mobile', name: 'mobile' },
                    { data: 'hall', name: 'hall' },
                    { data: 'date', name: 'date' },
                    { data: 'expected_pax', name: 'expected_pax' },
                    { data: 'guaranteed_pax', name: 'guaranteed_pax' },
                    { data: 'follow_up_date', name: 'follow_up_date' },
                    {
                        data: 'remark',
                        name: 'remark',
                        render: function (data, type, row, meta) {
                            return '<span class="remark-cell" data-remark-id="' + row.id + '" style="cursor:pointer;">' + (data ? data : '') + '</span>';
                        }
                    },
                    {
                        data: null,
                        name: 'eye',
                        orderable: false,
                        searchable: false,
                        render: function (data, type, row, meta) {
                            return '<i class="fa fa-eye remark-eye" data-remark-id="' + row.id + '" style="cursor:pointer; color:#007bff;"></i>';
                        }
                    },
                    { data: 'status', name: 'status' },
                    { data: 'action', name: 'action' }
                ],
                order: [[4, 'desc']]
            });
            window.currentStatus = 1;
        });

        function filterStatus(status, btn) {
            window.currentStatus = status;
            // Toggle active class
            $('#btn-all, #btn-running, #btn-closed').removeClass('active');
            if (btn) {
                $(btn).addClass('active');
            } else {
                $('#btn-all').addClass('active');
            }
            // Reload DataTable with new status
            followupTable.ajax.reload();
        }

        // Set default to 'All' on page load
        // $(document).ready(function() {
        //     window.currentStatus = undefined;
        //     filterStatus();
        // });
    </script>

    <!-- Followup Update Modal -->
    <div class="modal fade" id="followupUpdateModal" tabindex="-1" aria-labelledby="followupUpdateModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="followupUpdateModalLabel">Followup Update</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        onclick="closeUpdateModal()"></button>
                </div>
                <div class="modal-body">
                    <form id="followupUpdateForm">
                        <input type="hidden" id="update_id" name="sn">
                        <div class="mb-3">
                            <label for="next_follow_date" class="form-label">Next Follow Date</label>
                            <input type="datetime-local" class="form-control" id="next_follow_date" name="next_follow_date"
                                required>
                        </div>
                        <div class="mb-3">
                            <label for="remark" class="form-label">Remark</label>
                            <textarea class="form-control" id="remark" name="remark" rows="2" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="status" class="form-label">Status</label>
                            <select class="form-control" id="status" name="status" required>
                                <option value="1">Running</option>
                                <option value="0">Closed</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"
                        onclick="closeUpdateModal()">Close</button>
                    <button type="submit" form="followupUpdateForm" class="btn btn-success">Update</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Toast for feedback -->
    <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 1055">
        <div id="followupToast" class="toast align-items-center text-white bg-success border-0" role="alert"
            aria-live="assertive" aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body" id="toastMsg">
                    Success!
                </div>
                <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"
                    aria-label="Close"></button>
            </div>
        </div>
    </div>


    <script>

        function openUpdateModal(id) {
            document.getElementById('update_id').value = id;
            var modal = new bootstrap.Modal(document.getElementById('followupUpdateModal'));
            modal.show();
        }
        function closeUpdateModal() {
            document.getElementById('followupUpdateForm').reset();
            // Hide modal using vanilla JS (fallback for all Bootstrap versions)
            var modalEl = document.getElementById('followupUpdateModal');
            modalEl.classList.remove('show');
            modalEl.style.display = 'none';
            document.body.classList.remove('modal-open');
            var backdrops = document.getElementsByClassName('modal-backdrop');
            while (backdrops.length > 0) {
                backdrops[0].parentNode.removeChild(backdrops[0]);
            }
        }

        $(document).ready(function () {
            $('#followupUpdateForm').on('submit', function (e) {
                e.preventDefault();
                var statusVal = $('#status').val();
                var proceed = true;
                if (statusVal === '0') {
                    proceed = confirm('Are you sure you want to close this follow up?');
                }
                if (!proceed) {
                    return;
                }
                var formData = $(this).serialize();
                var $btn = $(this).find('button[type="submit"]');
                var originalText = $btn.html();
                $btn.prop('disabled', true).html('Processing...');
                $.ajax({
                    url: '/booking-followup',
                    type: 'POST',
                    data: formData,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function (response) {
                        $('#followupUpdateModal').modal('hide');
                        if (typeof followupTable !== 'undefined') {
                            followupTable.ajax.reload();
                        }
                        closeUpdateModal()
                        showToast('Followup updated successfully!', true);
                    },
                    error: function (xhr) {
                        let msg = 'Error updating followup.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            msg = xhr.responseJSON.message;
                        }
                        showToast(msg, false);
                    },
                    complete: function () {
                        $btn.prop('disabled', false).html(originalText);
                    }
                });
            });
        });

        function showToast(message, isSuccess) {
            var toastEl = document.getElementById('followupToast');
            var toastMsg = document.getElementById('toastMsg');
            toastMsg.innerText = message;
            toastEl.classList.remove('bg-success', 'bg-danger');
            toastEl.classList.add(isSuccess ? 'bg-success' : 'bg-danger');
            var toast = new bootstrap.Toast(toastEl);
            toast.show();
        }
    </script>

    <!-- Custom Toast -->
    <style>
        #customToast {
            display: none;
            position: fixed;
            bottom: 30px;
            right: 30px;
            min-width: 250px;
            z-index: 9999;
            background: #333;
            color: #fff;
            padding: 16px 24px;
            border-radius: 6px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
            font-size: 16px;
            opacity: 0.95;
            transition: opacity 0.3s;
        }

        #customToast.success {
            background: #198754;
        }

        #customToast.error {
            background: #dc3545;
        }

        #customToast .close {
            color: #fff;
            float: right;
            font-size: 20px;
            font-weight: bold;
            margin-left: 16px;
            cursor: pointer;
        }
    </style>
    <div id="customToast"><span id="customToastMsg"></span><span class="close" onclick="hideCustomToast()">&times;</span>
    </div>

    <script>
        function showToast(message, isSuccess) {
            var toast = document.getElementById('customToast');
            var msg = document.getElementById('customToastMsg');
            toast.className = isSuccess ? 'success' : 'error';
            msg.innerText = message;
            toast.style.display = 'block';
            clearTimeout(window.toastTimeout);
            window.toastTimeout = setTimeout(hideCustomToast, 5000);
        }
        function hideCustomToast() {
            document.getElementById('customToast').style.display = 'none';
        }
    </script>

    <script>
        // Show comments box below the clicked remark cell
        // Handle click on remark cell or eye icon to show comments
        $(document).on('click', '.remark-cell, .remark-eye', function (e) {
            var remarkId = $(this).data('remark-id');
            var $row;
            if (remarkId === undefined) {
                // If clicked element doesn't have data-remark-id, try to get from parent .remark-cell
                var $cell = $(this).closest('.remark-cell');
                remarkId = $cell.data('remark-id');
                $row = $cell.closest('tr');
            } else {
                $row = $(this).closest('tr');
            }
            if (!remarkId) return; // Prevent AJAX if no id
            // Remove any open comment boxes
            $('.comments-box-row').remove();
            // Fetch comments via AJAX
            $.get('/booking-followup/comments/' + remarkId, function (comments) {
                var html = '<tr class="comments-box-row"><td colspan="12">';
                html += '<div class="p-2 border rounded bg-light"><b>Comments:</b><ul class="mb-0">';
                if (comments.length === 0) {
                    html += '<li>No comments found.</li>';
                } else {
                    comments.forEach(function (c) {
                        html += '<li><b>' + c.date + ':</b> ' + c.remark + '</li>';
                    });
                }
                html += '</ul></div></td></tr>';
                $row.after(html);
            });
        });
    </script>
@endsection