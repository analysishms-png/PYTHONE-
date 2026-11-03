@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('changecompanydetailssubmit') }}" method="post">
                                @csrf
                                <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="formType" value="Change SW Date">
                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="propertyid">Select Company</label>
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

                                        <span id="loader" style="display:none; float:left; font-weight:bold;">
                                            <i class="fa fa-spinner fa-spin"></i> Loading...
                                        </span>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="foliono">Comapny Name</label>
                                            <input type="text" class="form-control" id="old_comp_name" name="old_comp_name"
                                                required readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">Address 1</label>
                                            <input type="text" class="form-control" id="old_address1" name="old_address1"
                                                required readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">Address 2</label>
                                            <input type="text" class="form-control" id="old_address2" name="old_address2"
                                                readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">Country</label>
                                            <select class="form-control select2" id="old_country" required
                                                name="old_country" readonly>
                                                <option value="">Select Country</option>
                                                @foreach ($contrylist as $item)
                                                    <option value="{{ $item->country_code }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">State</label>
                                            <select class="form-control select2" id="old_state" required name="old_state"
                                                readonly>
                                                <option value="">Select State</option>
                                                @foreach ($stateslist as $item)
                                                    <option value="{{ $item->name }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">City</label>
                                            <select class="form-control select2" id="old_city" required name="old_city"
                                                readonly>
                                                <option value="">Select City</option>
                                                @foreach ($cityslist as $item)
                                                    <option value="{{ ucwords(strtolower($item->cityname)) }}">
                                                        {{ ucwords(strtolower($item->cityname)) }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                        {{-- <div class="form-group">
                                            <label for="foliono">Pincode</label>
                                            <input type="text" class="form-control" id="old_pincode" name="old_pincode"
                                                readonly>
                                        </div> --}}
                                        <div class="form-group">
                                            <label for="foliono">Website</label>
                                            <input type="text" class="form-control" id="old_website" name="old_website"
                                                readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">Email</label>
                                            <input type="email" class="form-control" id="old_email" name="old_email"
                                                readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">GSTIN</label>
                                            <input type="text" class="form-control" id="old_gstin" name="old_gstin"
                                                readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">Phone</label>
                                            <input type="text" class="form-control" id="old_mobile" name="old_mobile"
                                                readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">A/C Name</label>
                                            <input type="text" class="form-control" id="old_acname" name="old_acname"
                                                readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">A/C Number</label>
                                            <input type="text" class="form-control" id="old_acnum" name="old_acnum"
                                                readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">IFSC Code</label>
                                            <input type="text" class="form-control" id="old_ifsccode" name="old_ifsccode"
                                                readonly>
                                        </div>
                                         <div class="form-group">
                                            <label for="foliono">Bank Name</label>
                                            <input type="text" class="form-control" id="old_bankname" name="old_bankname"
                                                readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">Branch</label>
                                            <input type="text" class="form-control" id="old_branch" name="old_branchname"
                                                readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="foliono">New Comapny Name</label>
                                            <input type="text" class="form-control" id="comp_name" name="comp_name">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New Address 1</label>
                                            <input type="text" class="form-control" id="address1" name="address1">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New Address 2</label>
                                            <input type="text" class="form-control" id="address2" name="address2">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New Country</label>
                                            <select class="form-control select2-multiple" id="country" name="country"
                                                onchange="fetchState(this.value);">
                                                <option value="">Select Country</option>
                                                @foreach ($contrylist as $item)
                                                    <option value="{{ $item->country_code }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New State
                                                <span id="stateloader" style="display:none; float:right; font-weight:bold;">
                                                    <i class="fa fa-spinner fa-spin"></i> Loading...
                                                </span>
                                            </label>
                                            <select class="form-control select2-multiple" id="state" name="state"
                                                onchange="fetchCity(this.value);">
                                                <option value="">Select State</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New City
                                                <span id="cityloader" style="display:none; float:right; font-weight:bold;">
                                                    <i class="fa fa-spinner fa-spin"></i> Loading...
                                                </span>
                                            </label>
                                            <select class="form-control select2-multiple" id="city" name="city">
                                                <option value="">Select City</option>
                                            </select>
                                        </div>
                                        {{-- <div class="form-group">
                                            <label for="foliono">New Pincode</label>
                                            <input type="text" class="form-control" id="pincode" name="pincode">
                                        </div> --}}
                                        <div class="form-group">
                                            <label for="foliono">New Website</label>
                                            <input type="text" class="form-control" id="website" name="website">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New Email</label>
                                            <input type="text" class="form-control" id="email" name="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New GSTIN</label>
                                            <input type="text" class="form-control" id="gstin" name="gstin">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New Phone</label>
                                            <input type="text" class="form-control" id="mobile" name="mobile">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New A/C Name</label>
                                            <input type="text" class="form-control" id="acname" name="acname">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New A/C No</label>
                                            <input type="text" class="form-control" id="acno" name="acnum">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New IFSC</label>
                                            <input type="text" class="form-control" id="ifsc" name="ifsccode">
                                        </div>
                                         <div class="form-group">
                                            <label for="foliono">New Bank Name</label>
                                            <input type="text" class="form-control" id="bankname" name="bankname">
                                        </div>
                                        <div class="form-group">
                                            <label for="foliono">New Branch</label>
                                            <input type="text" class="form-control" id="branch" name="branchname">
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Change Company Details</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

      <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ids = ['comp_name', 'address1', 'address2', 'country', 'city',
                'state', 'pincode', 'website', 'email', 'gstin', 'mobile', 'acname',
                'acno', 'ifsc', 'bankname', 'branch'
            ] // sab IDs ek array me
            const observer = new MutationObserver(muts =>
                muts.forEach(m => m.target.removeAttribute('readonly'))
            );

            ids.forEach(id => {
                const el = document.getElementById(id);
                if (el) {
                    el.removeAttribute('readonly');
                    observer.observe(el, {
                        attributes: true,
                        attributeFilter: ['readonly']
                    });
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#propertyid').on('change', function () {
                var propertyid = this.value;

                $('#foliono').html('');

                // Show Loader
                $('#loader').show();

                $.ajax({
                    url: "{{ url('tools/fetch_companydetails') }}",
                    type: "POST",
                    data: {
                        propertyid: propertyid,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',

                    success: function (result) {
                        // Set Comapny Details
                        console.log(result);
                        var comp_name = result.companydetails;
                        let cityValue = comp_name.city.toLowerCase();

                        $("#old_city option").each(function () {
                            if ($(this).val().toLowerCase() === cityValue) {
                                $(this).prop("selected", true);
                            }
                        });

                        $('#old_comp_name').val(comp_name.comp_name);
                        $('#old_address1').val(comp_name.address1);
                        $('#old_address2').val(comp_name.address2);
                        // $('#old_country').val(comp_name.country);
                        // $('#old_city').val(comp_name.city);
                        $('#old_state').val(comp_name.state);
                        //$('#old_pincode').val(comp_name.pincode);
                        $('#old_gstin').val(comp_name.gstin);
                        $('#old_email').val(comp_name.email);
                        $('#old_mobile').val(comp_name.mobile);
                        $('#old_website').val(comp_name.website);
                        $('#old_acname').val(comp_name.acname);
                        $('#old_acnum').val(comp_name.acnum);
                        $('#old_ifsccode').val(comp_name.ifsccode);
                        $('#old_bankname').val(comp_name.bankname);
                        $('#old_branch').val(comp_name.branchname);

                        // Set Contry, State, City
                        $('#old_country').val(comp_name.country);
                    },

                    complete: function () {
                        // Hide loader after success or error both
                        $('#loader').hide();
                    }
                });
            });
        });

        // Fetch State
        function fetchState(countryCode) {
            var propertyid = $('#propertyid').val();
            if (!propertyid) {
                pushNotify('error', 'Change Company Details', `Please select a property.`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
            }
            // Show Loader
            $('#stateloader').show();
            $.ajax({
                url: "{{ route('fetchstates') }}",
                type: "POST",
                data: {
                    country_code: countryCode,
                    _token: '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function (result) {
                    $('#state').html('<option value="">Select State</option>');
                    $.each(result.states, function (key, value) {
                        $("#state").append('<option value="' + value.state_code + '">' + value.name + '</option>');
                    });
                },
                complete: function () {
                    // Hide loader after success or error both
                    $('#stateloader').hide();
                }
            });
        }
        // Fetch City
        function fetchCity(stateName) {
            var propertyid = $('#propertyid').val();
            if (!propertyid) {
                pushNotify('error', 'Change Company Details', `Please select a property.`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
            }
            // Show Loader
            $('#cityloader').show();
            $.ajax({
                url: "{{ route('fetchcitys') }}",
                type: "POST",
                data: {
                    propertyid: $('#propertyid').val(),
                    state_code: stateName,
                    _token: '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function (result) {
                    $('#city').html('<option value="">Select City</option>');
                    $.each(result.citys, function (key, value) {
                        $("#city").append('<option value="' + value.cityname + '">' + value.cityname + '</option>');
                    });
                },
                complete: function () {
                    // Hide loader after success or error both
                    $('#cityloader').hide();
                }
            });
        }
    </script>
@endsection