@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title font-weight-bold mb-3">Unit Type Master</h4>
                            <form class="form" name="unitypeform" id="unitypeform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="typename">Type Name <span class="text-danger">*</span></label>
                                        <input type="text" name="typename" id="typename" class="form-control" required
                                            maxlength="100" placeholder="e.g. Retail Shop"
                                            oninput="this.value = this.value.toUpperCase()">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="description">Description</label>
                                        <input type="text" name="description" id="description" class="form-control"
                                            maxlength="500" placeholder="e.g. Standard retail outlet">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="activeyn">Active Status</label>
                                        <select id="activeyn" name="activeyn" class="form-control">
                                            <option value="1">Active</option>
                                            <option value="0">Inactive</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="mt-4">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </form>
                        </div>

                        <div class="card-body">
                            <div style="display: flex; gap: 10px; margin-bottom: 15px;">
                                <button id="printBtn" class="btn btn-primary">
                                    <i class="fas fa-print"></i> Print Report
                                </button>
                                <button id="exportExcelBtn" class="btn btn-success">
                                    <i class="fas fa-file-excel"></i> Export to Excel
                                </button>
                            </div>
                            <div class="table-responsive">
                                <table id="unitypeTable" class="table table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Type Name</th>
                                            <th>Description</th>
                                            <th>Active</th>
                                            <th>Action</th>
                                            <th class="none">sn_hidden</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn1 = 1; @endphp
                                        @foreach ($data as $row)
                                            <tr>
                                                <td>{{ $sn1 }}</td>
                                                <td>{{ $row->typename }}</td>
                                                <td>{{ $row->description }}</td>
                                                <td>{{ $row->activeyn == 1 ? 'Active' : 'Inactive' }}</td>
                                                <td class="ins">
                                                    <button type="button" class="btn btn-success editBtn btn-sm" data-sn="{{ $row->id }}" data-typecode="{{ $row->typecode }}" data-typename="{{ $row->typename }}" data-description="{{ $row->description }}" data-activeyn="{{ $row->activeyn }}">
                                                        <i class="fa-regular fa-pen-to-square"></i> Edit
                                                    </button>
                                                    <button type="button" class="btn btn-danger deleteBtn btn-sm" data-sn="{{ $row->id }}" data-name="{{ $row->typename }}">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </td>
                                                <td class="none">{{ $row->id }}</td>
                                            </tr>
                                            @php $sn1++; @endphp
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Edit Modal --}}
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Unit Type</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" name="unitypeupdateform" id="unitypeupdateform">
                        @csrf
                        <input type="hidden" id="updatesn" name="sn">

                        <div class="row">
                            <div class="col-md-6">
                                <label for="updatetypename">Type Name <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="updatetypename" name="typename" required
                                    maxlength="100" oninput="this.value = this.value.toUpperCase()">
                            </div>
                            <div class="col-md-6">
                                <label for="updatedescription">Description</label>
                                <input type="text" class="form-control" id="updatedescription" name="description"
                                    maxlength="500">
                            </div>
                            <div class="col-md-6">
                                <label for="updateactiveyn">Active Status</label>
                                <select id="updateactiveyn" name="activeyn" class="form-control">
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-center mt-3">
                            <button id="updateBtn" type="submit" class="btn btn-primary">
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
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);

            if (!$.fn.DataTable.isDataTable('#unitypeTable')) {
                new DataTable('#unitypeTable', {
                    ordering: true,
                    order: [],
                    pageLength: 25,
                    columnDefs: [{ targets: [5], visible: false }]
                });
            }

            $('#unitypeform').submit(function (e) {
                e.preventDefault();
                var btn = $('#submitBtn');
                btn.prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Saving...');

                $.ajax({
                    url: '{{ url("submitunitype") }}',
                    method: 'POST',
                    data: $(this).serialize(),
                    success: function (response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: response.message,
                                timer: 2000,
                                showConfirmButton: false
                            }).then(() => {
                                window.location.reload();
                            });
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                            btn.prop('disabled', false).html('Submit <i class="fa-solid fa-file-export"></i>');
                        }
                    },
                    error: function (xhr) {
                        let msg = 'Something went wrong.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            msg = xhr.responseJSON.message;
                        } else if (xhr.responseJSON && xhr.responseJSON.errors) {
                            msg = Object.values(xhr.responseJSON.errors).flat().join(', ');
                        }
                        Swal.fire({ icon: 'error', title: 'Error', text: msg });
                        btn.prop('disabled', false).html('Submit <i class="fa-solid fa-file-export"></i>');
                    }
                });
            });

            $('.editBtn').click(function () {
                $('#updatesn').val($(this).data('sn'));
                $('#updatetypename').val($(this).data('typename'));
                $('#updatedescription').val($(this).data('description'));
                $('#updateactiveyn').val($(this).data('activeyn') == 1 ? '1' : '0');
                $('#updateModal').modal('show');
            });

            $('#unitypeupdateform').submit(function (e) {
                e.preventDefault();
                var btn = $('#updateBtn');
                btn.prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Updating...');

                $.ajax({
                    url: '{{ url("updateunitype") }}',
                    method: 'POST',
                    data: $(this).serialize(),
                    success: function (response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: response.message,
                                timer: 2000,
                                showConfirmButton: false
                            }).then(() => {
                                window.location.reload();
                            });
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                            btn.prop('disabled', false).html('Update <i class="fa-solid fa-file-export"></i>');
                        }
                    },
                    error: function (xhr) {
                        let msg = 'Something went wrong.';
                        if (xhr.responseJSON && xhr.responseJSON.errors) {
                            msg = Object.values(xhr.responseJSON.errors).flat().join(', ');
                        }
                        Swal.fire({ icon: 'error', title: 'Error', text: msg });
                        btn.prop('disabled', false).html('Update <i class="fa-solid fa-file-export"></i>');
                    }
                });
            });

            $('.deleteBtn').click(function () {
                var sn = $(this).data('sn');
                var name = $(this).data('name');

                Swal.fire({
                    title: 'Delete Unit Type?',
                    text: 'Are you sure you want to delete "' + name + '"?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: '{{ url("deleteunitype") }}/' + sn,
                            method: 'GET',
                            success: function (response) {
                                if (response.success) {
                                    Swal.fire({
                                        icon: 'success',
                                        title: 'Deleted',
                                        text: response.message,
                                        timer: 2000,
                                        showConfirmButton: false
                                    }).then(() => {
                                        window.location.reload();
                                    });
                                } else {
                                    Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                                }
                            },
                            error: function () {
                                Swal.fire({ icon: 'error', title: 'Error', text: 'Delete failed.' });
                            }
                        });
                    }
                });
            });
        });

        document.getElementById('exportExcelBtn').addEventListener('click', function() {
            window.location.href = '{{ route("exportunitype") }}';
        });

        document.getElementById('printBtn').addEventListener('click', function() {
            window.open('{{ route("printunitype") }}', '_blank');
        });
    </script>
@endsection
