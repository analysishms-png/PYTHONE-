@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-solid fa-city"></i>
                            City Register</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="cityregform" id="cityregform" action="{{ route('citystore') }}"
                                method="POST">
                                @csrf
                                <input type="hidden" name="userid" value="{{ Auth::id() }}">
                                <input type="hidden" name="username" value="{{ Auth::user()->u_name ?? '' }}">
                                <input type="hidden" name="propertyid" value="{{ Auth::user()->propertyid ?? '' }}">
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="cityname">City Name</label>
                                        <input type="text" name="cityname" id="cityname" class="form-control" required>
                                        <span id="cityname_error" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="col-form-label" for="country">Country</label><span
                                            class="text-danger">*</span>
                                        <select id="country" name="country" class="form-control">
                                            <option value="">Select Country</option>
                                            @foreach ($country as $list)
                                                <option value="{{ $list->country_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        <span id="country_error" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="col-form-label" for="state">State</label><span
                                            class="text-danger">*</span>
                                        <select id="state" name="state" class="form-control">
                                            <option value="">Select State</option>
                                        </select>
                                        <span id="state_error" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="zipcode">Zip Code</label>
                                        <input type="text" name="zipcode" maxlength="10" id="zipcode"
                                            class="form-control">
                                        <span id="zipcode_error" class="text-danger"></span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-8 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        @include('components.designPanelButton')
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table id="cityformmain" class="table table-hover table-download-with-search table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>SN.</th>
                                    <th>Name</th>
                                    <th>Country</th>
                                    <th>State</th>
                                    <th>Prop Id.</th>
                                    <th>Username</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $sn = 1;
                                @endphp
                                @foreach ($city_data as $city)
                                    <tr>
                                        <td>{{ $sn }}</td>
                                        <td>{{ $city->cityname }}</td>
                                        <td>{{ $city->countryname }}</td>
                                        <td>{{ $city->statekanaam }}</td>
                                        <td>{{ $city->propertyid }}</td>
                                        <td>{{ $city->u_name }}</td>
                                        <td> <a href="updatecityformadmin?city_code={{ base64_encode($city->city_code) }}">
                                                <button class="btn btn-success btn-sm"><i
                                                        class="fa-regular fa-pen-to-square"></i>Edit</button></a> </td>
                                    </tr>
                                    @php
                                        $sn++;
                                    @endphp
                                @endforeach
                            </tbody>
                            <tfoot class="bg-secondary">
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Country</th>
                                    <th>State</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    </div>
@endsection
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var countrySelect = document.getElementById('country');
        countrySelect.addEventListener('change', function() {
            var cid = this.value;
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/getStateadmin', true);
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
