@extends('property.layouts.main')
@section('main-container')
<link rel="stylesheet" href="https://cdn.datatables.net/2.2.1/css/dataTables.dataTables.css">
<style>
    .error { color: red; }
</style>
<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Holiday Master</h4>
                    </div>
                    <div class="card-body">
                        <form id="holidayForm">
                            @csrf
                            <input type="hidden" name="id" id="holiday_id">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="holiday_date">Holiday Date <span class="text-danger">*</span></label>
                                        <input type="date" class="form-control" id="holiday_date" name="holiday_date" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Holiday Name <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="name" name="name" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="type">Holiday Type</label>
                                        <select class="form-control" id="type" name="type">
                                            <option value="">Select Type</option>
                                            <option value="Statutory">Statutory</option>
                                            <option value="Optional">Optional</option>
                                            <option value="Festival">Festival</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                     <div class="form-group">
                                        <label>Repeat Every Year</label><br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="is_repeat" id="repeat_yes" value="Y">
                                            <label class="form-check-label" for="repeat_yes">Yes</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="is_repeat" id="repeat_no" value="N" checked>
                                            <label class="form-check-label" for="repeat_no">No</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Active</label><br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="is_active" id="active_yes" value="Y" checked>
                                            <label class="form-check-label" for="active_yes">Yes</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="is_active" id="active_no" value="N">
                                            <label class="form-check-label" for="active_no">No</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-4">
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="btn btn-primary" id="saveBtn">Submit</button>
                                    <button type="button" class="btn btn-secondary" id="resetBtn">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="d-flex gap-2 pb-2 mt-3">
                    <button type="button" onclick="window.location.href='{{ route('holidaymaster.export') }}'" class="btn btn-success btn-sm">Excel</button>
                    <button type="button" onclick="window.open('{{ route('printholidaymaster') }}','_blank')" class="btn btn-info btn-sm text-white">Print</button>
                </div>

                <div class="card mt-4">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="holidayTable" class="table table-striped table-bordered">
                                <thead class="bg-secondary text-white">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Date</th>
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>Repeat</th>
                                        <th>Active</th>
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

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdn.datatables.net/2.2.1/js/dataTables.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    $(document).ready(function() {
        var table = $('#holidayTable').DataTable({
            ajax: "{{ route('holiday.data') }}",
            columns: [
                { data: null, render: function (data, type, row, meta) { return meta.row + 1; } },
                { data: 'holiday_date' },
                { data: 'name' },
                { data: 'type' },
                { data: 'is_repeat', render: function(data) { return data == 'Y' ? 'Yes' : 'No'; } },
                { data: 'is_active', render: function(data) { return data == 'Y' ? 'Yes' : 'No'; } },
                { data: null, render: function(data, type, row) {
                    return `<button class="btn btn-sm btn-success edit-btn" data-id="${row.id}" data-date="${row.holiday_date}" data-name="${row.name}" data-type="${row.type}" data-repeat="${row.is_repeat}" data-active="${row.is_active}"><i class="fa fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-danger delete-btn" data-id="${row.id}"><i class="fa fa-trash"></i> Delete</button>`;
                }}
            ]
        });

        $('#holidayForm').on('submit', function(e) {
            e.preventDefault();
            var formData = $(this).serialize();
            $.ajax({
                url: "{{ route('holiday.store') }}",
                type: "POST",
                data: formData,
                success: function(response) {
                    if (response.success) {
                        Swal.fire('Success', response.message, 'success');
                        $('#holidayForm')[0].reset();
                        $('#holiday_id').val('');
                        $('#saveBtn').text('Submit');
                        table.ajax.reload();
                    } else {
                        Swal.fire('Error', response.message, 'error');
                    }
                },
                error: function(xhr) {
                    Swal.fire('Error', 'Something went wrong!', 'error');
                }
            });
        });

        $(document).on('click', '.edit-btn', function() {
            var id = $(this).data('id');
            var date = $(this).data('date');
            var name = $(this).data('name');
            var type = $(this).data('type');
            var repeat = $(this).data('repeat');
            var active = $(this).data('active');

            $('#holiday_id').val(id);
            $('#holiday_date').val(date);
            $('#name').val(name);
            $('#type').val(type);
            
            $("input[name=is_repeat][value=" + repeat + "]").prop('checked', true);
            $("input[name=is_active][value=" + active + "]").prop('checked', true);

            $('#saveBtn').text('Update');
            $('html, body').animate({ scrollTop: 0 }, 'slow');
        });

        $(document).on('click', '.delete-btn', function() {
            var id = $(this).data('id');
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: "/holiday/" + id,
                        type: "DELETE",
                        data: { _token: "{{ csrf_token() }}" },
                        success: function(response) {
                            if (response.success) {
                                Swal.fire('Deleted!', response.message, 'success');
                                table.ajax.reload();
                            } else {
                                Swal.fire('Error', response.message, 'error');
                            }
                        }
                    });
                }
            });
        });

        $('#resetBtn').on('click', function() {
            $('#holidayForm')[0].reset();
            $('#holiday_id').val('');
            $('#saveBtn').text('Submit');
        });
    });
</script>
@endsection
