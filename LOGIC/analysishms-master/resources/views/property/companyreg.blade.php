@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-regular fa-building"></i>
                            Company Register</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-validation">
                                <form class="form" name="companyregform" id="companyregform"
                                    action="{{ route('companystore') }}" method="POST" enctype="multipart/form-data"
                                    onsubmit="return validateForm();">
                                    @csrf
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="company_name">Company Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="company_name" id="company_name" maxlength="100"
                                                class="form-control" placeholder="Company Name">
                                            <span id="company_name_error" class="text-danger fadeindown"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="username">Username <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="username" id="username" maxlength="10"
                                                class="form-control" placeholder="User Name">
                                            <span id="username_error" class="text-danger"></span>
                                            @error('username')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="mobile">Mobile <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="mobile" id="mobile" maxlength="10"
                                                class="form-control" placeholder="Mobile">
                                            <span id="mobile_error" class="text-danger"></span>
                                            @error('mobile')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="email">Email <span
                                                    class="text-danger">*</span></label>
                                            <input type="email" name="email" id="email" class="form-control"
                                                placeholder="Email">
                                            <span id="email_error" class="text-danger"></span>
                                            @error('email')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="pan_no">PAN Number </label>
                                            <input type="text" name="pan_no" id="pan_no" maxlength="10"
                                                class="form-control" placeholder="PAN Number">
                                            <span id="pan_no_error" class="text-danger"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="start_date">Start Date <span
                                                    class="text-danger">*</span></label>
                                            <input type="date" name="start_date" id="start_date"
                                                class="form-control">
                                            <span id="start_date_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="end_date">End Date <span
                                                    class="text-danger">*</span></label>
                                            <input type="date" name="end_date" id="end_date" class="form-control">
                                            <span id="end_date_error" class="text-danger"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="sn_num">SN Number <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="sn_num" maxlength='10' placeholder="ENTER SN"
                                                id="sn_num" class="form-control">
                                            <span id="sn_num_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="gstin">GSTIN</label>
                                            <input type="text" name="gstin" id="gstin" maxlength="15"
                                                class="form-control" placeholder="GSTIN">
                                            <span id="gstin_error" class="text-danger"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="division_code">Division
                                                Code</label>
                                            <input type="text" name="division_code" id="division_code" maxlength="5"
                                                class="form-control" placeholder="Division Code">
                                            <span id="division_code_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="legal_name">Legal Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="legal_name" id="legal_name" class="form-control"
                                                placeholder="Legal Name">
                                            <span id="legal_name_error" class="text-danger"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="trade_name">Trade Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="trade_name" id="trade_name" class="form-control"
                                                placeholder="Trade Name">
                                            <span id="trade_name_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-form-label" for="address1">Address 1</label><span
                                                class="text-danger">*</span>
                                            <input type="text" class="form-control" name="address1" id="address1">
                                            <span id="address1_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-form-label" for="address2">Address 2</label>
                                            <input type="text" name="address2" id="address2" class="form-control">
                                            <span id="address2_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label class="col-form-label" for="country_select">Country</label><span
                                                class="text-danger">*</span>
                                            <select id="country_select" name="country_select" class="form-control">
                                                <option value="">Select Country</option>
                                                @foreach ($country as $list)
                                                    <option value="{{ $list->country_code }}">{{ $list->country }}</option>
                                                @endforeach
                                            </select>
                                            <span id="country_error" class="text-danger"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label class="col-form-label" for="state_select">State</label><span
                                                class="text-danger">*</span>
                                            <select id="state_select" name="state_select" class="form-control">
                                                <option value="">Select State</option>
                                            </select>
                                            <span id="state_error" class="text-danger"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label class="col-form-label" for="city">City</label>
                                            <span class="text-danger">*</span>
                                            <input type="text" name="city" id="city" class="form-control">
                                            <span class="text-danger" id="city_error"></span>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="pin">PIN <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="pin" id="pin" maxlength="6"
                                                class="form-control" placeholder="PIN">
                                            <span id="pin_error" class="text-danger"></span>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="pin">Password <span
                                                    class="text-danger">*</span></label>
                                            <input type="password" name="password" id="password" minlength="4"
                                                maxlength="12" class="form-control" placeholder="Password">
                                            <span id="password_error" class="text-danger"></span>
                                        </div>

                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="pin">Logo <span
                                                    class="text-danger">*</span></label>
                                            <input type="file" name="logo_property" accept=".jpg,.png,.jpeg,.webp"
                                                id="logo_property" class="form-control">
                                            <span id="logo_property_error" class="text-danger"></span>
                                        </div>

                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-8 mt-4 ml-auto">
                                            <button type="button" class="btn btn-primary"
                                                onclick="validateForm(event)">Submit</button>
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


<script>
    document.addEventListener('DOMContentLoaded', function() {
        var countrySelect = document.getElementById('country_select');
        countrySelect.addEventListener('change', function() {
            var cid = this.value;
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/getState', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var result = xhr.responseText;
                    var stateSelect = document.getElementById('state_select');
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

        var mobile = document.getElementById('mobile');
        checkInput(mobile, '/check_mobile', 'mobile_error');

        var email = document.getElementById('email');
        checkInput(email, '/check_email', 'email_error');

        var username = document.getElementById('username');
        checkInput(username, '/check_username', 'username_error');

        var sn_num = document.getElementById('sn_num');
        checkInput(sn_num, '/check_sn_num', 'sn_num_error');
    });
</script>
