@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="overtimeform" name="overtimeform" method="POST">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="employee">Employee</label>
                                            <select name="employee" id="employee" class="form-control" required>
                                                <option value="">Select Employee</option>
                                                @foreach (employeereturn() as $employee)
                                                    <option data-otrate="{{ $employee->otrate }}" value="{{ $employee->code }}">{{ $employee->name }} - {{ $employee->department }} - {{ $employee->designation }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="otdate">Over Time Date</label>
                                            <input type="date" class="form-control" id="otdate" name="otdate" required>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="ottime">Over Time Hours</label>
                                            <input type="time" class="form-control" id="ottime" name="ottime" required>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="rate">OT Rate/Hour</label>
                                            <input type="number" step="0.01" class="form-control" id="rate" name="rate" required>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="amount">Total Amount</label>
                                            <input type="number" step="0.01" class="form-control" id="amount" name="amount" required readonly>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="remarks">Remarks</label>
                                            <textarea class="form-control" id="remarks" name="remarks" rows="3"></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>

                            <div class="mt-3">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Employee</th>
                                                <th>Date</th>
                                                <th>OT Hours</th>
                                                <th>Rate/Hour</th>
                                                <th>Total Amount</th>
                                                <th>Remarks</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($overtimerecord as $record)
                                                <tr>
                                                    <td>{{ $record->employee->name }}</td>
                                                    <td>{{ $record->otdate }}</td>
                                                    <td>{{ $record->ottime }}</td>
                                                    <td>{{ $record->rate }}</td>
                                                    <td>{{ $record->amount }}</td>
                                                    <td>{{ $record->remark }}</td>
                                                    <td class="ins">
                                                        <a href="{{ route('overtimeedit', [$record->sn, $record->empcode]) }}" class="btn btn-sm btn-primary">Edit</a>
                                                        <a href="{{ route('overtimedestroy', [$record->sn, $record->empcode, 'otdate' => $record->otdate]) }}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this record?')">Delete</a>
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
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $(document).on('change', '#employee', function() {
                const selectedOption = $(this).find('option:selected');
                const otrate = selectedOption.data('otrate');
                console.log(otrate);
                $('#rate').val(otrate);
                calculateAmount();
            });

            $('#rate').prop('disabled', true).css('pointer-events', 'none');

            $('#ottime').on('change input', function() {
                const timeValue = $(this).val();

                if (timeValue) {
                    $('#rate').prop('disabled', false).css('pointer-events', 'auto');
                } else {
                    $('#rate').prop('disabled', true).val('').css('pointer-events', 'none');
                    $('#amount').val('');
                }
            });

            $('#rate').on('focus click', function(e) {
                const timeValue = $('#ottime').val();

                if (!timeValue) {
                    e.preventDefault();
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops!',
                        text: 'Please fill Over Time Hours first before entering the rate.'
                    });
                    $(this).blur();
                }
            });

            $('#ottime, #rate').on('input', function() {
                calculateAmount();
            });

            function calculateAmount() {
                const timeValue = $('#ottime').val();
                const rateValue = parseFloat($('#rate').val());

                if (timeValue && !isNaN(rateValue)) {
                    const [hours, minutes] = timeValue.split(':').map(Number);
                    const totalHours = hours + (minutes / 60);
                    const amount = totalHours * rateValue;
                    $('#amount').val(amount.toFixed(2));
                } else {
                    $('#amount').val('');
                }
            }

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $('#overtimeform').on('submit', function(e) {
                e.preventDefault();
                const formData = $(this).serialize();

                $.ajax({
                    url: "{{ route('overtimestore') }}",
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
                                    window.location.reload();
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
                            text: 'An error occurred while submitting the overtime record.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                    }
                });
            });
        });
    </script>
@endsection
