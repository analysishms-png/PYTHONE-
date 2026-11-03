@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('changeswdatesubmit') }}" method="post">
                                @csrf
                                <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="formType" value="Change SW Date">
                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="propertyid">Select Company:</label>
                                            <select class="form-control select2-multiple" id="propertyid" required
                                                name="propertyid">
                                                <option value="">Select Company</option>
                                                @foreach ($companies as $item)
                                                    <option value="{{ $item->propertyid }}">{{ $item->comp_name }} -
                                                        {{ $item->propertyid }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <label for="current_sw_date">Current S/W Date
                                                <span id="loader" style="display:none; float:right; font-weight:bold;">
                                                    <i class="fa fa-spinner fa-spin"></i> Loading...
                                                </span>
                                            </label>
                                            <input type="date" class="form-control" id="current_sw_date"
                                                name="current_sw_date" required>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="new_sw_date">New S/W Date</label>
                                            <input type="date" class="form-control" id="new_sw_date" name="new_sw_date"
                                                required>
                                        </div>
                                    </div>

                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Change S/W Date</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('#propertyid').on('change', function () {
                var propertyid = this.value;

                $('#foliono').html('');

                // Show Loader
                $('#loader').show();

                $.ajax({
                    url: "{{ url('tools/fetch_swdate') }}",
                    type: "POST",
                    data: {
                        propertyid: propertyid,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',

                    success: function (result) {
                        $('#current_sw_date').val(result.ncurdate);

                        // New date should not be less than current
                        //$('#new_sw_date').attr('min', result.ncurdate);
                    },

                    complete: function () {
                        // Hide loader after success or error both
                        $('#loader').hide();
                    }
                });
            });
        });
    </script>
@endsection