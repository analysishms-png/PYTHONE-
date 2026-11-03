@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('submitCheckoutChange') }}" method="post">
                                @csrf
                                <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="formType" value="Change CheckOut Date">
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
                                            <label for="billno">Bill No.</label>
                                            <input type="number" class="form-control" id="billno" name="billno" required>
                                        </div>
                                    </div>

                                    {{-- <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="current_checkout_date">Current Checkout Date</label>
                                            <input type="date" class="form-control" id="current_checkout_date" name="current_checkout_date" required>
                                        </div>
                                    </div> --}}

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="new_checkout_date">New Checkout Date</label>
                                            <input type="date" class="form-control" id="new_checkout_date" name="new_checkout_date" required>
                                        </div>
                                    </div>

                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Change Checkout Date</button>
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
            $('#billno').on('keyup', function() {
                var billno = this.value;
                var propertyid = $('#propertyid').val();
                $.ajax({
                    url: "{{ url('tools/fetch_billno') }}",
                    type: "POST",
                    data: {
                        propertyid: propertyid,
                        billno: billno,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(result) {
                        $('#vprefix').val(result.vprefix);
                        $('#current_checkout_date').val(result.checkout_date);
                    }
                });
            });
        });
    </script>
@endsection
