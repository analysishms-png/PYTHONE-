@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>Leave Management</h5>
                        </div>
                        <div class="card-body">
                            <h6 class="mb-4">Add New Leave</h6>
                            <form id="leaveform" name="leaveform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="date_from">Date From</label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control" id="date_from" name="date_from" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="date_to">Date To</label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control" id="date_to" name="date_to" required>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="employee">Employee</label>
                                            <select name="employee" id="employee" class="form-control" required>
                                                <option value="">Select Employee</option>
                                                @foreach ($employees as $employee)
                                                    <option value="{{ $employee->code }}">{{ $employee->name }} - {{ $employee->department }} - {{ $employee->designation }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="firstshift">First Shift</label>
                                            <select name="firstshift" id="firstshift" class="form-control" required>
                                                <option value="">Select</option>
                                                <option value="P">Present</option>
                                                <option value="A">Absent</option>
                                                <option value="L">Leave</option>
                                                <option value="C">Casual</option>
                                                <option value="E">Earned</option>
                                                <option value="H">Holiday</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="secondshift">Second Shift</label>
                                            <select name="secondshift" id="secondshift" class="form-control" required>
                                                <option value="">Select</option>
                                                <option value="P">Present</option>
                                                <option value="A">Absent</option>
                                                <option value="L">Leave</option>
                                                <option value="C">Casual</option>
                                                <option value="E">Earned</option>
                                                <option value="H">Holiday</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- Leave Records Table -->
                    <div class="card mt-4">
                        <div class="card-header">
                            <h5>Leave Records</h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Date</th>
                                            <th>Employee</th>
                                            <th>First Shift</th>
                                            <th>Second Shift</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="leaveTableBody">
                                        <tr>
                                            <td colspan="10" class="text-center">Loading...</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Get shift label
        function getShiftLabel(shiftCode) {
            const shiftMap = {
                'P': 'Present',
                'A': 'Absent',
                'L': 'Leave',
                'C': 'Casual',
                'E': 'Earned',
                'H': 'Holiday'
            };
            return shiftMap[shiftCode] || shiftCode;
        }

        function getStatusLabel(u_ae) {
            return u_ae === 'a' ? '<span class="badge badge-success">Created</span>' : '<span class="badge badge-info">Updated</span>';
        }

        function loadLeaveRecords() {
            $.ajax({
                url: "{{ route('showleave') }}",
                method: "GET",
                success: function(response) {
                    if (response.success && response.data.length > 0) {
                        let html = '';
                        response.data.forEach((leave, index) => {
                            html += `
                                <tr>
                                    <td>${index + 1}</td>
                                    <td>${dmy(leave.vdate)}</td>
                                    <td>${leave.employee_name}</td>
                                    <td>${getShiftLabel(leave.firstshift)}</td>
                                    <td>${getShiftLabel(leave.secondshift)}</td>
                                    <td class="ins">
                                        <a href="{{ url('leaveedit') }}/${leave.sn}" class="btn btn-success btn-sm">
                                            <i class="fa-regular fa-pen-to-square"></i> Edit
                                        </a>
                                        <button type="button" class="btn btn-danger btn-sm delete-leave-btn" data-sn="${leave.sn}">
                                            <i class="fa-solid fa-trash"></i> Delete
                                        </button>
                                    </td>
                                </tr>
                            `;
                        });
                        $('#leaveTableBody').html(html);

                        $('.delete-leave-btn').on('click', function() {
                            const sn = $(this).data('sn');
                            deleteLeaveRecord(sn);
                        });
                    } else {
                        $('#leaveTableBody').html('<tr><td colspan="10" class="text-center">No leave records found</td></tr>');
                    }
                },
                error: function() {
                    $('#leaveTableBody').html('<tr><td colspan="10" class="text-center">Error loading records</td></tr>');
                }
            });
        }

        function deleteLeaveRecord(sn) {
            Swal.fire({
                title: 'Confirm Delete',
                text: 'Are you sure you want to delete this leave record?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, Delete',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: "{{ url('leavedelete') }}/" + sn,
                        method: "GET",
                        success: function(response) {
                            if (response.success) {
                                Swal.fire({
                                    title: 'Deleted',
                                    text: response.message,
                                    icon: 'success',
                                    confirmButtonText: 'OK'
                                }).then(() => {
                                    loadLeaveRecords();
                                });
                            } else {
                                Swal.fire({
                                    title: 'Error',
                                    text: response.message,
                                    icon: 'error',
                                    confirmButtonText: 'OK'
                                });
                            }
                        },
                        error: function() {
                            Swal.fire({
                                title: 'Error',
                                text: 'An error occurred while deleting the record.',
                                icon: 'error',
                                confirmButtonText: 'OK'
                            });
                        }
                    });
                }
            });
        }

        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            // Load leave records on page load
            loadLeaveRecords();

            $('#leaveform').on('submit', function(e) {
                e.preventDefault();
                $.ajax({
                    url: "{{ route('leavestore') }}",
                    method: "POST",
                    data: $(this).serialize(),
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                title: 'Success',
                                text: response.message,
                                icon: 'success',
                                confirmButtonText: 'OK'
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    document.getElementById('leaveform').reset();
                                    $('#date_from').val("{{ ncurdate() }}");
                                    $('#date_to').val("{{ ncurdate() }}");
                                    loadLeaveRecords();
                                }
                            });
                        } else {
                            Swal.fire({
                                title: 'Error',
                                text: response.message,
                                icon: 'error',
                                confirmButtonText: 'OK'
                            });
                        }
                    },
                    error: function(xhr, status, error) {
                        Swal.fire({
                            title: 'Error',
                            text: 'An error occurred while submitting the form.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                    }
                });
            });
        });
    </script>
@endsection
