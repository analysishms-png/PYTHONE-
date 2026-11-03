@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-12">

                    <div class="card">
                        <div class="card-body">
                            <form id="feedbackform">
                                @csrf
                                <div class="row align-items-end">
                                    <div class="col-md-2">
                                        <label class="col-form-label" for="displayorder1">
                                            Display Order <span class="text-danger">*</span>
                                        </label>
                                        <input type="number" name="displayorder1" id="displayorder1" class="form-control"
                                            min="1" required>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="question1">
                                            Feedback Question <span class="text-danger">*</span>
                                        </label>
                                        <input type="text" name="question1" id="question1" class="form-control"
                                            maxlength="250" required placeholder="Enter feedback question">
                                    </div>
                                    <div class="col-md-2">
                                        <label class="col-form-label" for="depatment1">
                                            Department <span class="text-danger">*</span>
                                        </label>
                                        <select name="depatment1" id="depatment1" class="form-control" required>
                                            <option value="">-- Select --</option>
                                            <option value="FOM">FOM</option>
                                            <option value="POS">POS</option>
                                            <option value="BANQ">Banquet</option>
                                        </select>
                                    </div>
                                    <div class="col-md-1">
                                        <label class="col-form-label" for="isactive1">
                                            Active <span class="text-danger">*</span>
                                        </label>
                                        <select name="isactive1" id="isactive1" class="form-control" required>
                                            <option value="1" selected>Yes</option>
                                            <option value="0">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" id="submitBtn" class="btn btn-primary">
                                            Submit <i class="fa-solid fa-file-export"></i>
                                        </button>
                                    </div>
                                </div>

                                {{-- QR buttons: Submit ke neeche alag row --}}
                                <div class="row mt-3">
                                    <div class="col-12">
                                        <button type="button" id="feedbackQrBtn" class="btn btn-info">
                                            Feedback QR <i class="fa-solid fa-qrcode"></i>
                                        </button>
                                        <button type="button" id="tableFeedbackQrBtn" class="btn btn-warning">
                                            Table Feedback QR <i class="fa-solid fa-utensils"></i>
                                        </button>
                                        <button type="button" id="banquetFeedbackQrBtn" class="btn btn-success">
                                            Banquet Feedback QR <i class="fa-solid fa-champagne-glasses"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="table-responsive">
                            <table id="feedbackTable" class="table table-hover table-download-with-search table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Order</th>
                                        <th>Question</th>
                                        <th>Department</th>
                                        <th>Active</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $row)
                                        <tr id="row-{{ $row->id }}">
                                            <td>{{ $row->displayorder }}</td>
                                            <td>{{ $row->question }}</td>
                                            <td>
                                                <span
                                                    class="badge {{ $row->depatment == 'FOM' ? 'badge-primary' : ($row->depatment == 'BANQ' ? 'badge-info' : 'badge-warning') }}">
                                                    {{ $row->depatment == 'BANQ' ? 'Banquet' : $row->depatment }}
                                                </span>
                                            </td>
                                            <td>
                                                <span
                                                    class="badge {{ $row->isactive == 1 ? 'badge-success' : 'badge-danger' }}">
                                                    {{ $row->isactive == 1 ? 'Yes' : 'No' }}
                                                </span>
                                            </td>
                                            <td class="ins">
                                                <button class="btn btn-success btn-sm editBtn" data-sn="{{ $row->id }}"
                                                    data-order="{{ $row->displayorder }}"
                                                    data-question="{{ $row->question }}"
                                                    data-depatment="{{ $row->depatment }}"
                                                    data-isactive="{{ $row->isactive }}" data-toggle="modal"
                                                    data-target="#editModal">
                                                    <i class="fa-regular fa-pen-to-square"></i> Edit
                                                </button>
                                                <button class="btn btn-danger btn-sm deleteBtn"
                                                    data-sn="{{ $row->id }}" data-question="{{ $row->question }}">
                                                    <i class="fa-solid fa-trash"></i> Delete
                                                </button>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    {{-- Edit Modal --}}
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Feedback Question</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editform">
                        @csrf
                        <input type="hidden" id="edit_sn" name="sn">
                        <div class="form-group mb-3">
                            <label class="col-form-label">Display Order <span class="text-danger">*</span></label>
                            <input type="number" class="form-control" id="edit_order" name="displayorder"
                                min="1" required>
                        </div>
                        <div class="form-group mb-3">
                            <label class="col-form-label">Question <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="edit_question" name="question"
                                maxlength="250" required>
                        </div>
                        <div class="form-group mb-3">
                            <label class="col-form-label">Department <span class="text-danger">*</span></label>
                            <select class="form-control" id="edit_depatment" name="depatment" required>
                                <option value="FOM">FOM</option>
                                <option value="POS">POS</option>
                                <option value="BANQ">Banquet</option>
                            </select>
                        </div>
                        <div class="form-group mb-3">
                            <label class="col-form-label">Active <span class="text-danger">*</span></label>
                            <select class="form-control" id="edit_isactive" name="isactive" required>
                                <option value="1">Yes</option>
                                <option value="0">No</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" id="updateBtn" class="btn btn-primary">
                                Update <i class="fa-solid fa-file-export"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // ── Global CSRF header for all AJAX calls on this page ───────────────────
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            // ── Feedback QR Code Generation ─────────────────────────────────────────
            $('#feedbackQrBtn').on('click', function() {
                const btn = $(this);
                btn.prop('disabled', true);

                $.ajax({
                    method: "POST",
                    url: '{{ route('feedbackqrgenerator') }}',
                    dataType: 'json',
                    success: function(response) {
                        btn.prop('disabled', false);
                        if (response.success) {
                            let link = document.createElement('a');
                            link.href = response.file_data;
                            link.download = response.filename;
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);

                            Swal.fire({
                                icon: 'success',
                                title: 'Feedback QR',
                                text: response.message,
                                timer: 1500,
                                showConfirmButton: false
                            });
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: response.message
                            });
                        }
                    },
                    error: function(xhr) {
                        btn.prop('disabled', false);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: xhr.responseJSON?.message ?? 'Something went wrong'
                        });
                    }
                });
            });
            // ── Table Feedback QR (Restaurant/POS) Generation ──────────────────────
            $('#tableFeedbackQrBtn').on('click', function() {
                const btn = $(this);
                btn.prop('disabled', true);

                $.ajax({
                    method: "POST",
                    url: '{{ route('tablefeedbackqrgenerator') }}',
                    dataType: 'json',
                    success: function(response) {
                        btn.prop('disabled', false);
                        if (response.success) {
                            let link = document.createElement('a');
                            link.href = response.file_data;
                            link.download = response.filename;
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);

                            Swal.fire({
                                icon: 'success',
                                title: 'Table Feedback QR',
                                text: response.message,
                                timer: 1500,
                                showConfirmButton: false
                            });
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: response.message
                            });
                        }
                    },
                    error: function(xhr) {
                        btn.prop('disabled', false);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: xhr.responseJSON?.message ?? 'Something went wrong'
                        });
                    }
                });
            });
            // ── Banquet Feedback QR Generation ──────────────────────────────────────
            $('#banquetFeedbackQrBtn').on('click', function() {
                const btn = $(this);
                btn.prop('disabled', true);

                $.ajax({
                    method: "POST",
                    url: '{{ route('banquetfeedbackqrgenerator') }}',
                    dataType: 'json',
                    success: function(response) {
                        btn.prop('disabled', false);
                        if (response.success) {
                            let link = document.createElement('a');
                            link.href = response.file_data;
                            link.download = response.filename;
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);

                            Swal.fire({
                                icon: 'success',
                                title: 'Banquet Feedback QR',
                                text: response.message,
                                timer: 1500,
                                showConfirmButton: false
                            });
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: response.message
                            });
                        }
                    },
                    error: function(xhr) {
                        btn.prop('disabled', false);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: xhr.responseJSON?.message ?? 'Something went wrong'
                        });
                    }
                });
            });
            // ── DataTable ────────────────────────────────────────────────────────────
            new DataTable('#feedbackTable', {
                ordering: true,
                order: [
                    [0, 'asc']
                ],
                pageLength: 25,
            });

            // ── SUBMIT ───────────────────────────────────────────────────────────────
            $('#feedbackform').on('submit', function(e) {
                e.preventDefault();
                const order = $('#displayorder1').val();
                const q = $('#question1').val();
                const dept = $('#depatment1').val();

                if (!order || !q || !dept) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Required',
                        text: 'Please fill all fields.'
                    });
                    return;
                }

                $('#submitBtn').prop('disabled', true);

                $.ajax({
                    url: '{{ route('feedbackquestionstore') }}',
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        displayorder: order,
                        question: q,
                        depatment: dept,
                        isactive: $('#isactive1').val()
                    },
                    success: function(res) {
                        $('#submitBtn').prop('disabled', false);
                        if (res.success) {
                            $('#displayorder1').val('');
                            $('#question1').val('');
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: res.message,
                                timer: 1500,
                                showConfirmButton: false
                            }).then(() => location.reload());
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: res.message
                            });
                        }
                    },
                    error: function(xhr) {
                        $('#submitBtn').prop('disabled', false);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: xhr.responseJSON?.message ??
                                'Something went wrong'
                        });
                    }
                });
            });

            // ── EDIT MODAL POPULATE ──────────────────────────────────────────────────
            $(document).on('click', '.editBtn', function() {
                $('#edit_sn').val($(this).data('sn'));
                $('#edit_order').val($(this).data('order'));
                $('#edit_question').val($(this).data('question'));
                $('#edit_depatment').val($(this).data('depatment'));
                $('#edit_isactive').val($(this).data('isactive'));
            });

            // ── UPDATE ───────────────────────────────────────────────────────────────
            $('#editform').on('submit', function(e) {
                e.preventDefault();
                $('#updateBtn').prop('disabled', true);

                $.ajax({
                    url: '{{ route('feedbackquestionupdate') }}',
                    type: 'POST',
                    data: $(this).serialize(),
                    success: function(res) {
                        $('#updateBtn').prop('disabled', false);
                        if (res.success) {
                            $('#editModal').modal('hide');
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: res.message,
                                timer: 1500,
                                showConfirmButton: false
                            }).then(() => location.reload());
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: res.message
                            });
                        }
                    },
                    error: function(xhr) {
                        $('#updateBtn').prop('disabled', false);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: xhr.responseJSON?.message ??
                                'Something went wrong'
                        });
                    }
                });
            });

            // ── DELETE ───────────────────────────────────────────────────────────────
            $(document).on('click', '.deleteBtn', function() {
                const sn = $(this).data('sn');
                const question = $(this).data('question');

                Swal.fire({
                    title: 'Delete "' + question + '"?',
                    text: 'This record will be permanently deleted.',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#6c757d',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: '{{ route('feedbackquestiondelete') }}',
                            type: 'POST',
                            data: {
                                _token: '{{ csrf_token() }}',
                                sn: sn
                            },
                            success: function(res) {
                                if (res.success) {
                                    Swal.fire({
                                        icon: 'success',
                                        title: 'Deleted!',
                                        text: res.message,
                                        timer: 1500,
                                        showConfirmButton: false
                                    }).then(() => location.reload());
                                } else {
                                    Swal.fire({
                                        icon: 'error',
                                        title: 'Error',
                                        text: res.message
                                    });
                                }
                            },
                            error: function() {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error',
                                    text: 'Something went wrong'
                                });
                            }
                        });
                    }
                });
            });

        });
    </script>
@endsection