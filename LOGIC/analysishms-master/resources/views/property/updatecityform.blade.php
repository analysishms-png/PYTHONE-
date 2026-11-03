@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-solid fa-city"></i>
                            City Update</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="cityregform" id="cityregform" action="{{ route('citystoreupdate') }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="cityname">City Name</label>
                                        <input type="text" name="cityname" value="{{ $city_data->cityname }}"
                                            id="cityname" class="form-control" required>
                                        <input type="hidden" value="{{ $city_data->city_code }}" name="city_code">
                                        <span id="cityname_error" class="text-danger"></span>
                                        @error('cityname')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="col-form-label" for="state">State</label><span
                                            class="text-danger">*</span>
                                        <select id="state" name="state" class="form-control">
                                            <option value="{{ $city_data->state }}">{{ $city_data->statename }}</option>
                                        </select>
                                        <span id="state_error" class="text-danger"></span>
                                        @error('state')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="col-form-label" for="country">Country</label><span
                                            class="text-danger">*</span>
                                        <select id="country" name="country" class="form-control">
                                            @foreach ($country as $list)
                                                <option value="{{ $list->country_code }}" {{ $city_data->country == $list->country_code ? 'selected' : '' }}>{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        <span id="country_error" class="text-danger"></span>
                                        @error('country')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="zipcode">Zip Code</label>
                                        <input type="text" name="zipcode" maxlength="10"
                                            value="{{ $city_data->zipcode }}" id="zipcode" class="form-control">
                                        <span id="zipcode_error" class="text-danger"></span>
                                        @error('zipcode')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="col-form-label" for="activeyn">Active</label><span
                                            class="text-danger">*</span>
                                        <select id="activeyn" name="activeyn" class="form-control">
                                            <option value="1" {{ $city_data->activeyn == '1' ? 'selected' : '' }}>Yes</option>
                                            <option value="0" {{ $city_data->activeyn == '0' ? 'selected' : '' }}>No</option>
                                        </select>
                                        <span id="activeyn_error" class="text-danger"></span>
                                        @error('activeyn')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-8 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary"><i class="fa-solid fa-wrench"></i>
                                            Update </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    </div>
@endsection
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    $(document).ready(function() {
        $('#myloader').removeClass('none');
        setTimeout(() => {
            $('#myloader').addClass('none');
        }, 500);
    });
    document.addEventListener('DOMContentLoaded', function() {
        var countrySelect = document.getElementById('country');
        countrySelect.addEventListener('change', function() {
            var cid = this.value;
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/getState2', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var result = xhr.responseText;
                    var stateSelect = document.getElementById('state');
                    stateSelect.innerHTML = result;
                }
            };
            xhr.send('cid=' + cid + '&_token={{ csrf_token() }}');
        });
    });

    document.addEventListener('DOMContentLoaded', function() {
        function checkInput(inputElement, endpoint, errorElementId) {
            inputElement.addEventListener('input', function() {
                var inputValue = this.value;
                var xhr = new XMLHttpRequest();
                xhr.open('POST', endpoint, true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = xhr.responseText;
                        var errorElement = document.getElementById(errorElementId);
                        errorElement.textContent = result;
                    }
                };
                xhr.send(inputElement.id + '=' + inputValue + '&_token={{ csrf_token() }}');
            });
        }

        var cityname = document.getElementById('cityname');
        checkInput(cityname, '/check_city_name', 'cityname_error');

        var zipcode = document.getElementById('zipcode');
        checkInput(zipcode, '/check_zipcode', 'zipcode_error');
    });
</script>
