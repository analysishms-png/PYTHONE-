@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="">
                                    <div class="form-group">
                                        <label for="fromdate" class="col-form-label">From Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date"
                                            value="{{ $ncurdate }}"
                                            {{-- value="2025-03-01" --}}
                                            class="form-control"
                                            name="fromdate" id="fromdate">
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <label for="todate" class="col-form-label">To Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" value="{{ $ncurdate }}" class="form-control"
                                            name="todate" id="todate">
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <button class="btn btn-success me-2" id="refresh">Refresh</button>
                                {{-- <a href="{{ url('excel/download') }}" class="btn btn-primary">Download</a> --}}
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $(document).on('change', '#fromdate', function() {
                validateFinancialYear('#fromdate');
            });
            $(document).on('change', '#todate', function() {
                validateFinancialYear('#todate');
            });

            $(document).on('click', '#refresh', function() {
                showLoader();
                $.ajax({
                    type: 'POST',
                    url: '{{ route('submitgstr1') }}',
                    data: {
                        fromdate: $('#fromdate').val(),
                        todate: $('#todate').val(),
                        _token: "{{ csrf_token() }}"
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);
                        if (response.success) {
                            Swal.fire({
                                title: 'GSTR',
                                text: response.message,
                                icon: 'success',
                                confirmButtonText: 'Ok'
                            }).then((r) => {
                                if (r.isConfirmed) {
                                    setTimeout(() => {
                                        window.location.href = 'excel/download';
                                    }, 500);
                                }
                            });
                        }
                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        Swal.fire({
                            title: 'GSTR',
                            text: error.responseJSON.message,
                            icon: 'error',
                            confirmButtonText: 'Ok'
                        });
                    }
                });
            });
        });
    </script>
@endsection
