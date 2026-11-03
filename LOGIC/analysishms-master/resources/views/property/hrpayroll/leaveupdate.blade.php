@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>Edit Leave Record</h5>
                        </div>
                        <div class="card-body">
                            <form id="updateform" name="updateform" method="POST">
                                @csrf
                                <input type="hidden" id="leave_sn" name="leave_sn" value="{{ $leave->sn }}">

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="date_from">Date From</label>
                                            <input type="date" value="{{ $leave->vdate }}" class="form-control" id="date_from" name="date_from" required readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="date_to">Date To</label>
                                            <input type="date" value="{{ $leave->vdate }}" class="form-control" id="date_to" name="date_to" required readonly>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="employee">Employee</label>
                                            <select name="employee" id="employee" class="form-control" required>
                                                <option value="">Select Employee</option>
                                                @foreach ($employees as $employee)
                                                    <option value="{{ $employee->code }}"
                                                        {{ $leave->empcode == $employee->code ? 'selected' : '' }}>
                                                        {{ $employee->name }} - {{ $employee->department }} - {{ $employee->designation }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="firstshift">First Shift</label>
                                            <select name="firstshift" id="firstshift" class="form-control" required>
                                                <option value="">Select</option>
                                                <option value="P" {{ $leave->firstshift == 'P' ? 'selected' : '' }}>Present</option>
                                                <option value="A" {{ $leave->firstshift == 'A' ? 'selected' : '' }}>Absent</option>
                                                <option value="L" {{ $leave->firstshift == 'L' ? 'selected' : '' }}>Leave</option>
                                                <option value="C" {{ $leave->firstshift == 'C' ? 'selected' : '' }}>Casual</option>
                                                <option value="E" {{ $leave->firstshift == 'E' ? 'selected' : '' }}>Earned</option>
                                                <option value="H" {{ $leave->firstshift == 'H' ? 'selected' : '' }}>Holiday</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="secondshift">Second Shift</label>
                                            <select name="secondshift" id="secondshift" class="form-control" required>
                                                <option value="">Select</option>
                                                <option value="P" {{ $leave->secondshift == 'P' ? 'selected' : '' }}>Present</option>
                                                <option value="A" {{ $leave->secondshift == 'A' ? 'selected' : '' }}>Absent</option>
                                                <option value="L" {{ $leave->secondshift == 'L' ? 'selected' : '' }}>Leave</option>
                                                <option value="C" {{ $leave->secondshift == 'C' ? 'selected' : '' }}>Casual</option>
                                                <option value="E" {{ $leave->secondshift == 'E' ? 'selected' : '' }}>Earned</option>
                                                <option value="H" {{ $leave->secondshift == 'H' ? 'selected' : '' }}>Holiday</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center mt-4">
                                    <button type="submit" class="btn btn-primary">Update Leave</button>
                                    <a href="{{ route('leave') }}" class="btn btn-secondary">Cancel</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            overlayLock($('#employee'), "Can't Change This");
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $('#updateform').on('submit', function(e) {
                e.preventDefault();
                const sn = $('#leave_sn').val();
                const formData = $(this).serialize();

                $.ajax({
                    url: "{{ url('leaveupdate') }}/" + sn,
                    method: "POST",
                    data: formData,
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                title: 'Success',
                                text: response.message,
                                icon: 'success',
                                confirmButtonText: 'OK'
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    window.location.href = "{{ route('leave') }}";
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
                            text: 'An error occurred while updating the leave record.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                    }
                });
            });
        });
    </script>
@endsection
