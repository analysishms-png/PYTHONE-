@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">


        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="userupdateform" id="userupdateform"
                                action="{{ route('update_usermaster') }}" method="POST">
                                @csrf
                                <div class="row">
                                    {{-- <div class="col-md-6">
                                        <label class="col-form-label" for="nameofuser">Name</label>
                                        <input type="text" value="{{ $userdata->name }}" name="nameofuser" id="nameofuser" maxlength="25" class="form-control"
                                            required autocomplete="new-nameofuser" placeholder="Enter Name">
                                        <span id="nameofuser_error" class="text-danger"></span>
                                        @error('nameofuser')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div> --}}

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="fullname">Name</label>
                                        <input type="text" oninput="this.value = this.value.replace(/[^a-zA-Z0-9]/g, '')" value="{{ $userdata->u_name }}" name="fullname" id="fullname"
                                            class="form-control" required readonly>
                                        <span id="fullname_error" class="text-danger"></span>
                                        @error('fullname')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                        <input type="hidden" name="userid" value="{{ $userdata->id }}">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="email">Email</label>
                                        <input type="email" value="{{ $userdata->email }}" name="email" id="email"
                                            class="form-control" readonly required>
                                        <span id="email_error" class="text-danger"></span>
                                        @error('email')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="designation">Super Wiser</label>

                                        {{-- Hidden input to still submit the value even when disabled --}}

                                        @if (Auth::user()->superwiser == '1')
                                            <select name="designation" id="designation" class="form-control" required>
                                                <option value="1" {{ $userdata->superwiser == '1' ? 'selected' : '' }}>Yes</option>
                                                <option value="0" {{ $userdata->superwiser == '0' ? 'selected' : '' }}>No</option>
                                            </select>
                                        @else
                                            <input type="hidden" name="designation" value="{{ $userdata->superwiser == '1' ? '1' : '0' }}">
                                            <input type="test" class="form-control" value="{{ $userdata->superwiser == '1' ? 'Yes' : 'No' }}" readonly>
                                        @endif


                                        <span id="designation_error" class="text-danger"></span>
                                        @error('designation')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="department">Department</label>
                                        <select name="department" id="department" class="form-control">
                                            <option value="">Select Department</option>
                                            @foreach ($departments as $dept)
                                                <option value="{{ $dept->dcode }}" {{ $userdata->department == $dept->dcode ? 'selected' : '' }}>
                                                    {{ $dept->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="user_designation">Designation</label>
                                        <select name="user_designation" id="user_designation" class="form-control">
                                            <option value="">Select Designation</option>
                                            @foreach ($designations as $desig)
                                                <option value="{{ $desig->code }}" {{ $userdata->designation == $desig->code ? 'selected' : '' }}>
                                                    {{ $desig->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="backdate">Back Date Entry</label>
                                        @if (Auth::user()->superwiser == '1')
                                            <select name="backdate" id="backdate" class="form-control" required>
                                                <option value="1" {{ $userdata->backdate == 1 ? 'selected' : '' }}>Yes</option>
                                                <option value="0" {{ $userdata->backdate == 0 ? 'selected' : '' }}>No</option>
                                            </select>
                                        @else
                                            <input type="hidden" name="backdate" value="{{ $userdata->backdate == '1' ? '1' : '0' }}">
                                            <input type="test" class="form-control" value="{{ $userdata->backdate == '1' ? 'Yes' : 'No' }}" readonly>
                                        @endif

                                        <span id="backdate_error" class="text-danger"></span>
                                        @error('backdate')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="backdate">Password</label>
                                        <input type="password" name="password" id="password" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="backdate">Confirm password</label>
                                        <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" />
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-lg-4 col-form-label" for="system_name">
                                            System Name
                                        </label>
                                        <input type="text" value="{{ $userdata->system_name }}" name="system_name" id="system_name" maxlength="25"
                                            class="form-control" placeholder="Enter System Name">
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);
        });
    </script>
@endsection
