@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-regular fa-user"></i>
                            User Master Register</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="usemasterform" id="usemasterform"
                                action="{{ route('usermasterstore2') }}" method="POST">
                                @csrf

                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="username">User Name</label>
                                        <input type="text" name="username" id="username" class="form-control" required autocomplete="off" aria-autocomplete="none">
                                        <span id="username_error" class="text-danger"></span>
                                        @error('username')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <label class="col-lg-4 col-form-label" for="password">Password <span
                                                class="text-danger">*</span></label>
                                        <input type="password" name="password" id="password" minlength="4" maxlength="12"
                                            class="form-control" placeholder="Password">
                                        <span id="password_error" class="text-danger"></span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-7 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table id="usermastertable"
                            class="table table-download-with-search table-striped table-hover table-bordered">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sn.</th>
                                    <th>Name</th>
                                    {{-- <th>Email</th>
                                    <th>Designation</th> --}}
                                    {{-- <th>Property</th> --}}
                                    <th>AP</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $sn = 1; @endphp
                                @foreach ($userdata as $user)
                                    <tr>
                                        <td>{{ $sn }}</td>
                                        <td>{{ $user->u_name }}</td>
                                        {{-- <td>{{ $user->email }}</td>
                                        <td>@php
                                            if ($user->role === 3) {
                                                echo 'SuperWiser';
                                            } elseif ($user->role === 2) {
                                                echo 'Admin';
                                            } else {
                                                echo 'Unknown';
                                            } 
                                        @endphp</td>--}}
                                        {{-- <td>{{ $user->propertyid }}</td> --}}
                                        <td>
                                            <form action="{{ route('update_user_ap2') }}" method="POST" style="display:flex; gap:6px; align-items:center;">
                                                @csrf
                                                <input type="hidden" name="user_id" value="{{ $user->id }}">
                                                <select name="ap_type" class="form-control form-control-sm" style="min-width:70px;" onchange="this.form.submit()">
                                                    <option value="A" {{ strtoupper((string) ($user->AP ?? '')) === 'A' ? 'selected' : '' }}>A</option>
                                                    <option value="P" {{ strtoupper((string) ($user->AP ?? '')) === 'P' ? 'selected' : '' }}>P</option>
                                                </select>
                                            </form>
                                        </td>
                                        <td style="display: flex;justify-content: space-evenly;">
                                            <a href="updateusermaster2?userid={{ base64_encode($user->id) }}">
                                                <button class="btn-success btn-sm btn">Update <i
                                                        class="fa-regular fa-pen-to-square"></i></button>
                                            </a>
                                            @php
                                                if ($user->status == 1) {
                                                    $encodedId = base64_encode($user->id);
                                                    echo '<a href="#" onclick="return confirmBanUserMaster2(\'' . $encodedId . '\')"><button class="btn-danger btn-sm text-white btn">InActive <i class="fa-solid fa-ban"></i></button></a>';
                                                } else {
                                                    $encodedId = base64_encode($user->id);
                                                    echo '<a href="#" onclick="return confirmUnbanUserMaster2(\'' . $encodedId . '\')"><button class="btn-info btn-sm text-white btn">Active <i class="fa-solid fa-user-check"></i></button></a>';
                                                }
                                            @endphp
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
