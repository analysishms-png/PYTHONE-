@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-solid fa-globe"></i>
                            Country Register</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <p class="text-dpink">If you encounter an error message indicating that an input already exists when you're making
                                changes, please consider renaming the input with the new input. for same name no need to
                                worry it'll update.</p>
                            <form class="form" name="countryregform" id="countryregform"
                                action="{{ route('update_countrystore') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="countryname">Country Name</label>
                                        <input type="text" name="countryname" value="{{ $country_data->name }}"
                                            id="countryname" class="form-control" required>
                                        <span id="countryname_error" class="text-danger"></span>
                                        @error('countryname')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="country_code">Country Code</label>
                                        <input type="text" name="country_code" value="{{ $country_data->country_code }}"
                                            id="country_code" class="form-control" required readonly>
                                        <span id="country_code_error" class="text-danger"></span>
                                        @error('country_code')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="nationality">Nationality</label>
                                        <input type="text" name="nationality" value="{{ $country_data->nationality }}"
                                            id="nationality" class="form-control" required>
                                        <span id="nationality_error" class="text-danger"></span>
                                        @error('nationality')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-8 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary"><i class="fa-solid fa-wrench"></i>
                                            Update</button>
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

        var countryname = document.getElementById('countryname');
        checkInput(countryname, '/check_country', 'countryname_error');

        var country_code = document.getElementById('country_code');
        checkInput(country_code, '/check_country_code', 'country_code_error');
    });
</script>
