@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@if (isset($message))
    <script>
        Swal.fire({
            icon: '{{ $type }}',
            title: '{{ $type == 'success' ? 'Success' : 'Error' }}',
            text: '{{ $message }}',
            timer: 5000,
            showConfirmButton: true
        });
    </script>
@endif

@if (session('success'))
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '{{ session('success') }}',
        });
        setTimeout(function() {
            Swal.close();
        }, 5000);
    </script>
@endif
@if (session('error'))
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '{{ session('error') }}',
        });
        setTimeout(function() {
            Swal.close();
        }, 5000);
    </script>
@endif
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('changebilldatesubmit') }}" method="post">
                                @csrf
                                <input type="hidden" name="dcode" id="dcode">
                                <input type="hidden" name="restype" id="rest_type">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="propertyid">Select Company:</label>
                                            <select class="form-control select2-multiple" id="propertyid" required name="propertyid">
                                                <option value="">Select Company</option>
                                                @foreach ($companies as $item)
                                                    <option value="{{ $item->propertyid }}">{{ $item->comp_name }} - {{ $item->propertyid }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="outletid">Select Outlet:.</label>
                                            <select class="form-control select2-multiple" name="outletid" id="outletid" required>
                                                <option value="">Folio No.</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="from_bill_no">From Bill No.</label>
                                                    <input type="number" class="form-control" id="from_bill_no" name="from_bill_no" min="1" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="to_bill_no">To Bill No.</label>
                                                    <input type="number" class="form-control" id="to_bill_no" name="to_bill_no" min="1" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="change_bill_date">Change Bill Date:</label>
                                            <input type="date" class="form-control" id="change_bill_date" name="change_bill_date" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Change Bill Date</button>
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
            $('#propertyid').on('change', function() {
                var propertyid = this.value;
                $('#outletid').html('');
                $.ajax({
                    url: "{{ route('fetch_outlet_by_property') }}",
                    type: "POST",
                    data: {
                        propertyid: propertyid,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(result) {
                        $('#outletid').html('<option value="">Select Outlet</option>');
                        $.each(result.outlets, function(key, value) {
                            $("#outletid").append('<option data-dcode="' + value.dcode + '" data-rest_type="' + value.rest_type + '" value="' + value.rest_type + '">' + value.Name + '</option>');
                        });
                    }
                });
            });

            $(document).on('change', '#outletid', function() {
                var dcode = $('#outletid option:selected').data('dcode');
                $('#dcode').val(dcode);
                var rest_type = $('#outletid option:selected').data('rest_type');
                $('#rest_type').val(rest_type);
            });
        });
    </script>
@endsection
