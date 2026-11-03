@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">

                <div class="card">
                    <div class="card-body">
                        <form id="supervisorform">
                            @csrf
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="col-form-label" for="name">Name <span class="text-danger">*</span></label>
                                    <input type="text" name="name" id="name" class="form-control"
                                        placeholder="" required
                                        oninput="this.value = this.value.toUpperCase()">
                                </div>
                                <div class="col-md-2">
                                    <label class="col-form-label" for="activeyn">Active</label>
                                    <select name="activeyn" id="activeyn" class="form-control">
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mt-3">
                                <div class="col-lg-8">
                                    <button type="submit" id="submitBtn" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="table-responsive">
                        <table id="supervisorTable"
                            class="table table-hover table-download-with-search table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Code</th>
                                    <th>Name</th>
                                    <th>Active</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $row)
                                    <tr id="row-{{ $row->id }}">
                                        <td>{{ $row->code }}</td>
                                        <td>{{ $row->name }}</td>
                                        <td>
                                            @if ($row->activeyn == 1)
                                                <span class="badge bg-success">Y</span>
                                            @else
                                                <span class="badge bg-danger">N</span>
                                            @endif
                                        </td>
                                        <td class="ins">
                                            <button class="btn btn-success btn-sm editBtn"
                                                data-sn="{{ $row->id }}"
                                                data-name="{{ $row->name }}"
                                                data-activeyn="{{ $row->activeyn }}"
                                                data-toggle="modal" data-target="#editModal">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </button>
                                            <button class="btn btn-danger btn-sm deleteBtn"
                                                data-sn="{{ $row->id }}">
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
                <h5 class="modal-title">Edit Supervisor</h5>
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editform">
                    @csrf
                    <input type="hidden" id="edit_sn" name="sn">
                    <div class="form-group mb-3">
                        <label class="col-form-label">Name <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="edit_name" name="name" required
                            oninput="this.value = this.value.toUpperCase()">
                    </div>
                    <div class="form-group mb-3">
                        <label class="col-form-label">Active</label>
                        <select class="form-control" id="edit_activeyn" name="activeyn">
                            <option value="1">Y</option>
                            <option value="0">N</option>
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
$(document).ready(function () {

    new DataTable('#supervisorTable', {
        ordering: true,
        order: [],
        pageLength: 25,
    });

    // ── INSERT ──────────────────────────────────────────────────────────────────
    $('#supervisorform').on('submit', function (e) {
        e.preventDefault();
        $('#submitBtn').prop('disabled', true);

        $.ajax({
            url: '{{ route("submithksupervisor") }}',
            type: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                $('#submitBtn').prop('disabled', false);
                if (res.success) {
                    Swal.fire({ icon: 'success', title: 'Success', text: res.message, timer: 1500, showConfirmButton: false })
                        .then(() => location.reload());
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#submitBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error', text: xhr.responseJSON?.message ?? 'Something went wrong' });
            }
        });
    });

    // ── EDIT MODAL POPULATE ─────────────────────────────────────────────────────
    $(document).on('click', '.editBtn', function () {
        $('#edit_sn').val($(this).data('sn'));
        $('#edit_name').val($(this).data('name'));
        $('#edit_activeyn').val($(this).data('activeyn'));
    });

    // ── UPDATE ──────────────────────────────────────────────────────────────────
    $('#editform').on('submit', function (e) {
        e.preventDefault();
        $('#updateBtn').prop('disabled', true);

        $.ajax({
            url: '{{ route("updatehksupervisor") }}',
            type: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                $('#updateBtn').prop('disabled', false);
                if (res.success) {
                    $('#editModal').modal('hide');
                    Swal.fire({ icon: 'success', title: 'Success', text: res.message, timer: 1500, showConfirmButton: false })
                        .then(() => location.reload());
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#updateBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error', text: xhr.responseJSON?.message ?? 'Something went wrong' });
            }
        });
    });

    // ── DELETE ──────────────────────────────────────────────────────────────────
    $(document).on('click', '.deleteBtn', function () {
        const sn = $(this).data('sn');
        Swal.fire({
            title: 'Are you sure?',
            text: 'This record will be permanently deleted.',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#6c757d',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '{{ route("deletehksupervisor") }}',
                    type: 'POST',
                    data: { _token: '{{ csrf_token() }}', sn: sn },
                    success: function (res) {
                        if (res.success) {
                            Swal.fire({ icon: 'success', title: 'Deleted!', text: res.message, timer: 1500, showConfirmButton: false })
                                .then(() => location.reload());
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                        }
                    },
                    error: function () {
                        Swal.fire({ icon: 'error', title: 'Error', text: 'Something went wrong' });
                    }
                });
            }
        });
    });

});
</script>

@endsection
