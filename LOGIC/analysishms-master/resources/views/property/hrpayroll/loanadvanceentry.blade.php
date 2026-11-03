@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="loanadvanceentry" name="loanadvanceentry" method="POST">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="date">Date</label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control" id="date" name="date" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="type">Type</label>
                                            <select name="type" id="type" class="form-control" required>
                                                <option value="">Select Type</option>
                                                <option value="ADE">Advance</option>
                                                <option value="LO">Loan</option>
                                                <option value="AR1">Advance Return</option>
                                                <option value="LR">Loan Return</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="serial_no">Serial No.</label>
                                            <input type="text" class="form-control" id="serial_no" name="serial_no" required readonly>
                                        </div>
                                    </div>
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
                                            <label for="amount">Amount</label>
                                            <input type="number" step="0.01" class="form-control" id="amount" name="amount" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="installment">Installments</label>
                                            <input type="number" class="form-control" id="installment" name="installment" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="postac">Post Account</label>
                                            <select name="postac" id="postac" class="form-control" required>
                                                <option value="">Select</option>
                                                @foreach (subgroupall() as $item)
                                                    <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
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
                                                <th>Type</th>
                                                <th>Date</th>
                                                <th>Amount</th>
                                                <th>Installments</th>
                                                <th>Account</th>
                                                <th>Remarks</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($loans as $loan)
                                                <tr>
                                                    <td>{{ $loan->employee->name }}</td>
                                                    <td>
                                                        @if ($loan->vtype === 'ADE')
                                                            Advance
                                                        @elseif ($loan->vtype === 'LO')
                                                            Loan
                                                        @elseif ($loan->vtype === 'AR1')
                                                            Advance Return
                                                        @elseif ($loan->vtype === 'LR')
                                                            Loan Return
                                                        @else
                                                            {{ $loan->vtype }}
                                                        @endif
                                                    </td>
                                                    <td>{{ $loan->vdate }}</td>
                                                    <td>{{ $loan->amount }}</td>
                                                    <td>{{ $loan->installment }}</td>
                                                    <td>{{ $loan->accode }}</td>
                                                    <td>{{ $loan->remark }}</td>
                                                    <td class="ins">
                                                        <a href="{{ route('loanadvanceentryedit', [$loan->vno, $loan->empcode]) }}" class="btn btn-sm btn-primary">Edit</a>
                                                        <a href="{{ route('loanadvanceentrydestroy', [$loan->vno, $loan->empcode]) }}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this record?')">Delete</a>
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

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $(document).on('change', '#type', function() {
                const vtypeselected = $(this).val();
                if (vtypeselected) {
                    $.ajax({
                        url: "{{ route('getmaxvoucher') }}",
                        method: "POST",
                        data: {
                            date: $('#date').val(),
                            vtype: vtypeselected,
                        },
                        success: function(response) {
                            $('#serial_no').val(response);
                        },
                        error: function(xhr, status, error) {
                            console.error('Error fetching max serial number:', error);
                        }
                    });
                } else {
                    $('#serial_no').val('');
                }
            });

            $('#loanadvanceentry').on('submit', function(e) {
                e.preventDefault();
                const formData = $(this).serialize();

                $.ajax({
                    url: "{{ route('loanadvanceentrystore') }}",
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
                        console.error('Error saving entry:', error);
                        Swal.fire({
                            title: 'Error',
                            text: 'An error occurred while saving the entry.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                    }
                });
            });
        });
    </script>
@endsection
