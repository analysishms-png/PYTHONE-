@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="salarycreation" name="salarycreation" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="month">Month</label>
                                            <input type="month" class="form-control" name="month" id="month" required>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="salarydate">Salary Date</label>
                                            <input type="date" class="form-control" name="salarydate" id="salarydate" required>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="department">Department</label>
                                            <select class="form-control" name="department" id="department" required>
                                                <option value="">Select Department</option>
                                                @foreach (departall() as $dept)
                                                    <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="employees">Employees</label>
                                            <select class="form-control select2-multiple" name="employees[]" id="employees" required multiple>
                                                <option value="">Select Employee</option>
                                                <option value="select_all">Select All Employees</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Create Salary</button>
                                    <button id="decreatesallary" type="button" class="btn btn-danger">DeCreate Salary</button>
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

            $(document).on('change', '#department', function() {
                var departid = $(this).val();
                let salarydate = $('#salarydate').val();

                if (salarydate === '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Please select a salary date first.'
                    });
                    $('#department').val('');
                    return;
                }

                $('#employees').empty();
                if (departid) {
                    $.ajax({
                        url: 'getemployees',
                        type: 'POST',
                        data: {
                            department: departid,
                            salarydate: salarydate
                        },
                        dataType: 'json',
                        success: function(data) {
                            if (data.length === 0) {
                                $('#employees').empty();
                                $('#employees').append('<option value="">No Employees Found</option>');
                                return;
                            }
                            $('#employees').empty();
                            $('#employees').append('<option value="">Select Employee</option>');
                            $('#employees').append('<option value="select_all">Select All Employees</option>');
                            $.each(data, function(key, value) {
                                $('#employees').append('<option value="' + value.code + '">' + value.name + '</option>');
                            });
                        }
                    });
                } else {
                    $('#employees').empty();
                    $('#employees').append('<option value="">Select Employee</option>');
                }
            });

            $(document).on('change', '#employees', function() {
                var selectedValues = $(this).val();
                if (selectedValues && selectedValues.includes('select_all')) {
                    var allEmployees = [];
                    $('#employees option').each(function() {
                        if ($(this).val() && $(this).val() !== '' && $(this).val() !== 'select_all') {
                            allEmployees.push($(this).val());
                        }
                    });
                    $('#employees').val(allEmployees);
                    $('#employees').trigger('change');
                }
            });

            $(document).on('change', '#month', function() {
                var monthValue = $(this).val();
                if (monthValue) {
                    var [year, month] = monthValue.split('-');
                    var date = new Date(parseInt(year), parseInt(month), 0);
                    var lastDay = date.getDate();
                    var lastDate = year + '-' + month + '-' + String(lastDay).padStart(2, '0');
                    $('#salarydate').val(lastDate);
                }
            });

            $('#salarydate').attr('readonly', true);

            $('#salarycreation').on('submit', function(e) {
                e.preventDefault();
                $.ajax({
                    url: "{{ route('salarycreationstore') }}",
                    type: "POST",
                    data: $(this).serialize(),
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: response.message
                            }).then(() => {
                                window.location.reload();
                            });
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: response.message
                            });
                        }
                    },
                    error: function(xhr) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: xhr.responseJSON.message
                        });
                    }
                });
            });

            $('#decreatesallary').on('click', function() {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "This will decreatiing all salary records for the selected month and department.",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Yes, decreatiing it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        var month = $('#month').val();
                        var department = $('#department').val();

                        if (!month || !department) {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Please select both month and department before decreatiing.'
                            });
                            return;
                        }

                        $.ajax({
                            url: "{{ route('salarydeletion') }}",
                            type: "POST",
                            data: {
                                month: month,
                                department: department
                            },
                            success: function(response) {
                                if (response.success) {
                                    Swal.fire({
                                        icon: 'success',
                                        title: 'Deleted!',
                                        text: response.message
                                    }).then(() => {
                                        window.location.reload();
                                    });
                                } else {
                                    Swal.fire({
                                        icon: 'error',
                                        title: 'Error',
                                        text: response.message
                                    });
                                }
                            },
                            error: function(xhr) {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error',
                                    text: xhr.responseJSON.message
                                });
                            }
                        });
                    }
                });
            });
        });
    </script>
@endsection
