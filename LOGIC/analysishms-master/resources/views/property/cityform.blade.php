@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="cityregform" id="cityregform" action="{{ route('citystore2') }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="cityname">City Name</label>
                                        <input type="text" name="cityname" id="cityname" class="form-control" required>
                                        <span id="cityname_error" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="col-form-label" for="state">State</label><span
                                            class="text-danger">*</span>
                                        <select id="state" name="state" class="form-control" required>
                                            <option value="">Select State</option>
                                        </select>
                                        <span id="state_error" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="col-form-label" for="country">Country</label><span
                                            class="text-danger">*</span>
                                        <select id="country" name="country" class="form-control" required>
                                            <option value="">Select Country</option>
                                            @foreach ($country as $list)
                                                <option value="{{ $list->country_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        <span id="country_error" class="text-danger"></span>
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
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table id="cityformmain"
                            class="table table-hover table-download-with-search table-hover table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sn.</th>
                                    <th>Name</th>
                                    <th>Country</th>
                                    <th>State</th>
                                    <th>Prop Id.</th>
                                    <th>Username</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $sn = 1; @endphp

                                @foreach ($city_data as $city)
                                    <tr>
                                        <td>{{ $sn }}</td>
                                        <td>{{ $city->cityname }}</td>
                                        <td>{{ $city->countryname }}</td>
                                        <td>{{ $city->statename }}</td>
                                        <td>{{ $city->propertyid }}</td>
                                        <td>{{ $city->u_name }}</td>
                                        <td class="ins"> <a
                                                href="updatecityform?city_code={{ base64_encode($city->city_code) }}">
                                                <button class="btn btn-success btn-sm"><i
                                                        class="fa-regular fa-pen-to-square"></i>Edit</button></a>
                                            <a href="deletecity?city_code={{ base64_encode($city->city_code) }}">
                                                <button class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i>
                                                    Delete
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                    @php $sn++; @endphp
                                @endforeach
                            </tbody>
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
</script>
