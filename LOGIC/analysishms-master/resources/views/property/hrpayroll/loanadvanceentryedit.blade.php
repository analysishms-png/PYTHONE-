@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="loanadvanceentryedit" name="loanadvanceentryedit" method="POST">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="date">Date</label>
                                            <input type="date" class="form-control" id="date" name="date" value="{{ $loan->vdate }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="type">Type</label>
                                            <select name="type" id="type" class="form-control" required>
                                                <option value="">Select Type</option>
                                                <option value="ADE" {{ $loan->vtype === 'ADE' ? 'selected' : '' }}>Advance</option>
                                                <option value="LO" {{ $loan->vtype === 'LO' ? 'selected' : '' }}>Loan</option>
                                                <option value="AR1" {{ $loan->vtype === 'AR1' ? 'selected' : '' }}>Advance Return</option>
                                                <option value="LR" {{ $loan->vtype === 'LR' ? 'selected' : '' }}>Loan Return</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="serial_no">Serial No.</label>
                                            <input type="text" class="form-control" id="serial_no" name="serial_no" value="{{ $loan->vno }}" required readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="employee">Employee</label>
                                            <select name="employee" id="employee" class="form-control" required>
                                                <option value="">Select Employee</option>
                                                @foreach (employeereturn() as $employee)
                                                    <option value="{{ $employee->code }}" {{ $employee->code == $loan->empcode ? 'selected' : '' }}>{{ $employee->name }} - {{ $employee->department }} - {{ $employee->designation }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="amount">Amount</label>
                                            <input type="number" step="0.01" class="form-control" id="amount" name="amount" value="{{ $loan->amount }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="installment">Installments</label>
                                            <input type="number" class="form-control" id="installment" name="installment" value="{{ $loan->installment }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="postac">Post Account</label>
                                            <select name="postac" id="postac" class="form-control" required>
                                                <option value="">Select</option>
                                                @foreach (subgroupall() as $item)
                                                    <option value="{{ $item->sub_code }}" {{ $item->sub_code == $loan->accode ? 'selected' : '' }}>{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="remarks">Remarks</label>
                                            <textarea class="form-control" id="remarks" name="remarks" rows="3">{{ $loan->remark }}</textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Update</button>
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

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $('#loanadvanceentryedit').on('submit', function(e) {
                e.preventDefault();
                const formData = $(this).serialize();

                $.ajax({
                    url: "{{ route('loanadvanceentryupdate', ['vno' => $loan->vno, 'empcode' => $loan->empcode]) }}",
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
                                    window.location.href = "{{ route('loanadvanceentry') }}";
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
                            text: 'An error occurred while updating the entry.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                    }
                });
            });
        });
    </script>
@endsection
