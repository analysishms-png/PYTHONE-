@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form id="servicefacilitiesform">
                            @csrf
                            <div class="row align-items-end">
                                <div class="col-md-2">
                                    <label class="col-form-label" for="displayorder1">
                                        Display Order <span class="text-danger">*</span>
                                    </label>
                                    <input type="number" name="displayorder1" id="displayorder1"
                                        class="form-control" min="1" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="servicehdr1">
                                        Service Header / Type <span class="text-danger">*</span>
                                    </label>
                                    <input type="text" name="servicehdr1" id="servicehdr1"
                                        class="form-control" maxlength="15" required
                                        placeholder="e.g. service, emergency">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="service1">
                                        Service Name <span class="text-danger">*</span>
                                    </label>
                                    <input type="text" name="service1" id="service1"
                                        class="form-control" maxlength="15" required
                                        placeholder="e.g. Breakfast, Parking">
                                </div>
                                <div class="col-md-2">
                                    <label class="col-form-label" for="remark1">
                                        Remark
                                    </label>
                                    <input type="text" name="remark1" id="remark1"
                                        class="form-control" maxlength="20"
                                        placeholder="Optional">
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
                                <div class="col-md-2">
                                    <button type="submit" id="submitBtn" class="btn btn-primary mt-4">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="table-responsive">
                        <table id="servicefacilitiesTable"
                            class="table table-hover table-download-with-search table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Order</th>
                                    <th>Type</th>
                                    <th>Service</th>
                                    <th>Remark</th>
                                    <th>Active</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $row)
                                    <tr id="row-{{ $row->id }}">
                                        <td>{{ $row->displayorder }}</td>
                                        <td>{{ $row->servicehdr }}</td>
                                        <td>{{ $row->service }}</td>
                                        <td>{{ $row->remark }}</td>
                                        <td>
                                            @if ($row->isactive == 1)
                                                <span class="badge badge-success">Yes</span>
                                            @else
                                                <span class="badge badge-danger">No</span>
                                            @endif
                                        </td>
                                        <td class="ins">
                                            <button class="btn btn-success btn-sm editBtn"
                                                data-sn="{{ $row->id }}"
                                                data-order="{{ $row->displayorder }}"
                                                data-servicehdr="{{ $row->servicehdr }}"
                                                data-service="{{ $row->service }}"
                                                data-remark="{{ $row->remark }}"
                                                data-isactive="{{ $row->isactive }}"
                                                data-toggle="modal" data-target="#editModal">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </button>
                                            <button class="btn btn-danger btn-sm deleteBtn"
                                                data-sn="{{ $row->id }}"
                                                data-service="{{ $row->service }}">
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
                <h5 class="modal-title">Edit Service Facility</h5>
                <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
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
                        <label class="col-form-label">Service Header / Type <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="edit_servicehdr" name="servicehdr"
                            maxlength="15" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="col-form-label">Service Name <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="edit_service" name="service"
                            maxlength="15" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="col-form-label">Remark</label>
                        <input type="text" class="form-control" id="edit_remark" name="remark"
                            maxlength="20">
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
$(document).ready(function () {

    new DataTable('#servicefacilitiesTable', {
        ordering: true,
        order: [[0, 'asc']],
        pageLength: 25,
    });

    $('#servicefacilitiesform').on('submit', function (e) {
        e.preventDefault();
        const order      = $('#displayorder1').val();
        const servicehdr = $('#servicehdr1').val();
        const service    = $('#service1').val();
        const remark     = $('#remark1').val();
        const isactive   = $('#isactive1').val();
        if (!order || !servicehdr || !service) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Please fill all required fields.' });
            return;
        }
        $('#submitBtn').prop('disabled', true);
        $.ajax({
            url:  '{{ route("servicefacilitiesstore") }}',
            type: 'POST',
            data: {
                _token: '{{ csrf_token() }}',
                displayorder: order,
                servicehdr: servicehdr,
                service: service,
                remark: remark,
                isactive: isactive
            },
            success: function (res) {
                $('#submitBtn').prop('disabled', false);
                if (res.success) {
                    $('#displayorder1').val('');
                    $('#servicehdr1').val('');
                    $('#service1').val('');
                    $('#remark1').val('');
                    Swal.fire({ icon: 'success', title: 'Success', text: res.message,
                        timer: 1500, showConfirmButton: false }).then(() => location.reload());
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#submitBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error',
                    text: xhr.responseJSON?.message ?? 'Something went wrong' });
            }
        });
    });

    $(document).on('click', '.editBtn', function () {
        $('#edit_sn').val($(this).data('sn'));
        $('#edit_order').val($(this).data('order'));
        $('#edit_servicehdr').val($(this).data('servicehdr'));
        $('#edit_service').val($(this).data('service'));
        $('#edit_remark').val($(this).data('remark'));
        $('#edit_isactive').val($(this).data('isactive'));
    });

    $('#editform').on('submit', function (e) {
        e.preventDefault();
        $('#updateBtn').prop('disabled', true);
        $.ajax({
            url:  '{{ route("servicefacilitiesupdate") }}',
            type: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                $('#updateBtn').prop('disabled', false);
                if (res.success) {
                    $('#editModal').modal('hide');
                    Swal.fire({ icon: 'success', title: 'Success', text: res.message,
                        timer: 1500, showConfirmButton: false }).then(() => location.reload());
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#updateBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error',
                    text: xhr.responseJSON?.message ?? 'Something went wrong' });
            }
        });
    });

    $(document).on('click', '.deleteBtn', function () {
        const sn      = $(this).data('sn');
        const service = $(this).data('service');
        Swal.fire({
            title: 'Delete "' + service + '"?',
            text:  'This record will be permanently deleted.',
            icon:  'warning',
            showCancelButton:   true,
            confirmButtonColor: '#d33',
            cancelButtonColor:  '#6c757d',
            confirmButtonText:  'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url:  '{{ route("servicefacilitiesdelete") }}',
                    type: 'POST',
                    data: { _token: '{{ csrf_token() }}', sn: sn },
                    success: function (res) {
                        if (res.success) {
                            Swal.fire({ icon: 'success', title: 'Deleted!', text: res.message,
                                timer: 1500, showConfirmButton: false }).then(() => location.reload());
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
