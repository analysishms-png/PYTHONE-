@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form id="maintenanceform">
                            @csrf
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="col-form-label" for="name">Name <span class="text-danger">*</span></label>
                                    <input type="text" name="name" id="name" class="form-control"
                                        placeholder="e.g. AC ISSUE" required
                                        oninput="this.value = this.value.toUpperCase()">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="dcode">Department</label>
                                    <select name="dcode" id="dcode" class="form-control">
                                        <option value="">Select Department</option>
                                        @foreach ($departments as $dept)
                                            <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-3 d-flex align-items-end">
                                    <button type="submit" id="submitBtn" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="table-responsive">
                        <table id="maintenanceTable" class="table table-hover table-download-with-search table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sno.</th>
                                    <th>Code</th>
                                    <th>Name</th>
                                    <th>Department</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $i => $row)
                                    <tr id="row-{{ $row->id }}">
                                        <td>{{ $i + 1 }}</td>
                                        <td>{{ $row->code }}</td>
                                        <td>{{ $row->name }}</td>
                                        <td>
                                            @php
                                                $deptName = isset($row->dcode) ? $departments->firstWhere('dcode', $row->dcode) : null;
                                            @endphp
                                            {{ $deptName ? $deptName->name : '-' }}
                                        </td>
                                        <td class="ins">
                                            <button class="btn btn-success btn-sm editBtn"
                                                data-sn="{{ $row->id }}"
                                                data-name="{{ $row->name }}"
                                                data-dcode="{{ $row->dcode ?? '' }}"
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

<div class="modal fade" id="editModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Maintenance</h5>
                <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
            </div>
            <div class="modal-body">
                <form id="editform">
                    @csrf
                    <input type="hidden" id="edit_sn" name="sn">
                    <div class="form-group">
                        <label class="col-form-label">Name <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="edit_name" name="name" required
                            oninput="this.value = this.value.toUpperCase()">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Department</label>
                        <select class="form-control" id="edit_dcode" name="dcode">
                            <option value="">Select Department</option>
                            @foreach ($departments as $dept)
                                <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                            @endforeach
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
    new DataTable('#maintenanceTable', { ordering: true, order: [], pageLength: 25 });

    $('#maintenanceform').on('submit', function (e) {
        e.preventDefault();
        $('#submitBtn').prop('disabled', true);
        $.ajax({
            url: '{{ route("submitmaintenancemaster") }}',
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

    $(document).on('click', '.editBtn', function () {
        $('#edit_sn').val($(this).data('sn'));
        $('#edit_name').val($(this).data('name'));
        $('#edit_dcode').val($(this).data('dcode') || '');
    });

    $('#editform').on('submit', function (e) {
        e.preventDefault();
        $('#updateBtn').prop('disabled', true);
        $.ajax({
            url: '{{ route("updatemaintenancemaster") }}',
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

    $(document).on('click', '.deleteBtn', function () {
        const sn = $(this).data('sn');
        Swal.fire({
            title: 'Are you sure?', text: 'This record will be permanently deleted.',
            icon: 'warning', showCancelButton: true,
            confirmButtonColor: '#d33', cancelButtonColor: '#6c757d',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '{{ route("deletemaintenancemaster") }}',
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
