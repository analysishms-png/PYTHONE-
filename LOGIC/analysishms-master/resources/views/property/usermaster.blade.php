@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="d-flex justify-content-end mb-3">
                        <a href="{{ route('notification.create') }}" class="btn btn-primary">
                            <i class="fa-solid fa-bell mr-1"></i> Send Notification
                        </a>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="usemasterform" id="usemasterform"
                                action="{{ route('usermasterstore') }}" method="POST" autocomplete="off">
                                @csrf

                                <!-- Hidden fake inputs to block browser autofill -->
                                <input type="text" name="fakeuser" id="fakeuser" style="display:none">
                                <input type="password" name="fakepass" id="fakepass" style="display:none">

                                <div class="row">
                                    {{-- <div class="col-md-6">
                                        <label class="col-form-label" for="nameofuser">Name</label>
                                        <input type="text" name="nameofuser" id="nameofuser" maxlength="25" class="form-control"
                                            required autocomplete="new-nameofuser" placeholder="Enter Name">
                                        <span id="nameofuser_error" class="text-danger"></span>
                                        @error('nameofuser')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div> --}}
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="fullname">User Name</label>
                                        <input type="text" oninput="this.value = this.value.replace(/[^a-zA-Z0-9]/g, '')" name="fullname" id="fullname" maxlength="25" class="form-control"
                                            required autocomplete="new-fullname" placeholder="Enter user name">
                                        <span id="fullname_error" class="text-danger"></span>
                                        @error('fullname')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="designation">Super Wiser</label>
                                        <select name="designation" id="designation" class="form-control" required>
                                            <option value="1">Yes</option>
                                            <option value="0" selected>No</option>
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="department">Department</label>
                                        <select name="department" id="department" class="form-control">
                                            <option value="">Select Department</option>
                                            @foreach ($departments as $dept)
                                                <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="user_designation">Designation</label>
                                        <select name="user_designation" id="user_designation" class="form-control">
                                            <option value="">Select Designation</option>
                                            @foreach ($designations as $desig)
                                                <option value="{{ $desig->code }}">{{ $desig->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-lg-4 col-form-label" for="password">
                                            Password <span class="text-danger">*</span>
                                        </label>
                                        <input type="password" name="password" id="password" minlength="4" maxlength="12"
                                            class="form-control" placeholder="Enter Password" autocomplete="new-password">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-lg-4 col-form-label" for="system_name">
                                            System Name
                                        </label>
                                        <input type="text" name="system_name" id="system_name" maxlength="25"
                                            class="form-control" placeholder="Enter System Name">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="backdate">Back Date Entry</label>
                                        <select name="backdate" id="backdate" class="form-control" required>
                                            <option value="1">Yes</option>
                                            <option value="0" selected>No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="text-center mt-3">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>

                        </div>
                    </div>
                    <div class="table-responsive">
                        <table id="usermastertable" class="table table-hover table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sn.</th>
                                    <th>Name</th>
                                    <th>username</th>
                                    <th>Department</th>
                                    <th>Designation</th>
                                    <th>Super Wiser</th>
                                    <th>Back Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $sn = 1;
                                    $loginUser = Auth::user();
                                    // echo "<pre>";
                                    //  print_r($loginUser->toArray());
                                @endphp

                                @foreach ($userdata as $user)
                                    {{-- ✅ If superwiser == 1 → show all users, else only show own record --}}
                                    {{-- @if ($user->comprole != 'Property') --}}
                                    @if (
                                            (
                                                ($loginUser->superwiser == 1 )
                                                && $user->u_name != 'sa'
                                            )
                                            || $loginUser->u_name == 'sa'
                                            || (
                                                $loginUser->superwiser != 1 
                                                && $loginUser->u_name != 'sa' 
                                                && $loginUser->id == $user->id
                                            )
                                        )

                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->u_name }}</td>
                                            <td>
                                                @php
                                                    $deptName = $departments->firstWhere('dcode', $user->department);
                                                @endphp
                                                {{ $deptName ? $deptName->name : '-' }}
                                            </td>
                                            <td>
                                                @php
                                                    $desigName = $designations->firstWhere('code', $user->designation);
                                                @endphp
                                                {{ $desigName ? $desigName->name : '-' }}
                                            </td>
                                            <td>{{ $user->superwiser == '1' ? 'Yes' : 'No' }}</td>
                                            <td>{{ $user->backdate == '1' ? 'Yes' : 'No' }}</td>
                                            <td class="ins">
                                                <input type="hidden" id="user_name_{{ $user->id }}" value="{{ $loginUser->u_name }}">
                                                <input type="hidden" id="user_url_{{ $user->id }}"
                                                    value="updateusermaster?u_name={{ base64_encode($user->u_name) }}">

                                                @if (strtolower($loginUser->u_name) == 'sa')
                                                    <a href="{{ url('updateusermaster?u_name=' . base64_encode($user->u_name)) }}" class="btn btn-success btn-sm">
                                                        Update <i class="fa-regular fa-pen-to-square"></i>
                                                    </a>
                                                @else
                                                    <button class="btn btn-success btn-sm"
                                                        onclick="authModelOpenClosed({{ $user->id }})">
                                                        Update <i class="fa-regular fa-pen-to-square" id="get_user_{{ $user->id }}"></i>
                                                    </button>
                                                @endif

                                                {{-- ✅ Status Buttons --}}
                                                @php $encodedId = base64_encode($user->id); @endphp

                                                @if ($user->status == 1)
                                                    <a href="#" onclick="return confirmBanUserMaster('{{ $encodedId }}')">
                                                        <button class="btn btn-danger btn-sm text-white">
                                                            InActive <i class="fa-solid fa-ban"></i>
                                                        </button>
                                                    </a>
                                                @else
                                                    <a href="#" onclick="return confirmUnbanUserMaster('{{ $encodedId }}')">
                                                        <button class="btn btn-info btn-sm text-white">
                                                            Active <i class="fa-solid fa-user-check"></i>
                                                        </button>
                                                    </a>
                                                @endif
                                            </td>
                                        </tr>
                                        @php $sn++; @endphp
                                        {{-- @endif --}}
                                    @endif
                                @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- #/ container -->
    <div class="modal fade" id="checkAuthModal" tabindex="-1" aria-labelledby="checkAuthModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Check Auth</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form action="javascript.void();" id="checkAuthfrom">
                        @csrf
                        <input type="hidden" name="username" id="checkname" value="">
                        <div class="row">
                            <div class="col-md-6">
                                <label class="col-form-label" for="current_password">Current Password</label>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="col-md-6 pt-4">
                                <button type="submit" id="submitBtn" class="btn btn-primary">Submit</button>
                            </div>
                        </div>

                    </form>

                </div>

            </div>
        </div>
    </div>
    <!-- #/ container -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        let url = '';

        $(document).ready(function() {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);
        });

        function authModelOpenClosed(id) {
            var name = $('#user_name_' + id).val();
            url = $('#user_url_' + id).val();

            $('#checkname').val(name);
            $('#checkAuthModal').modal('show');
        }

        $('#checkAuthfrom').on('submit', function(e) {
            e.preventDefault();

            $('span.error-text').text('');

            $.ajax({
                url: "{{ route('checkAuth') }}", // 
                method: "POST",
                data: new FormData(this),
                processData: false,
                contentType: false,
                beforeSend: function() {
                    $('#submitBtn').prop('disabled', true).text('Submitting...');
                },
                success: function(response) {
                    $('#submitBtn').prop('disabled', false).text('Submit +');
                    if (response.status == 1) {
                        // Success
                        pushNotify('success', response.message);
                        $('#checkAuthfrom')[0].reset();
                        $('#checkAuthModal').modal('hide');
                        setTimeout(function() {
                            window.location.href = url;
                        }, 3000);
                    } else {
                        pushNotify('error', response.message);
                    }
                },
                error: function(xhr) {
                    $('#submitBtn').prop('disabled', false).text('Submit +');

                    if (xhr.status === 422) {
                        // Laravel validation error
                        $.each(xhr.responseJSON.errors, function(key, value) {
                            $('span.' + key + '_error').text(value[0]);
                            pushNotify('error', value[0]);
                        });
                    } else {
                        pushNotify('error', 'Something went wrong! Please try again.');
                    }
                }
            });
        });
    </script>
@endsection
