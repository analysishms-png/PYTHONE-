@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-regular fa-user"></i>
                            User Master Update</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                           
                            <form class="form" name="userupdateform" id="userupdateform"
                                action="{{ route('update_usermaster2') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="username">User Name</label>
                                        <input type="text" value="{{ $userdata->name }}" name="username" id="username"
                                            class="form-control" required>
                                        <span id="username_error" class="text-danger"></span>
                                        @error('username')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                        <input type="hidden" name="userid" value="{{ $userdata->id }}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="col-lg-4 col-form-label" for="password">Password <span
                                                class="text-danger">*</span></label>
                                        <input type="password" name="password" id="password" minlength="4"
                                            maxlength="12" class="form-control" placeholder="Password">
                                        <span id="password_error" class="text-danger"></span>
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

        var email = document.getElementById('email');
        checkInput(email, '/check_email', 'email_error');

        var username = document.getElementById('fullname');
        checkInput(username, '/check_username', 'fullname_error');
    });
</script>
