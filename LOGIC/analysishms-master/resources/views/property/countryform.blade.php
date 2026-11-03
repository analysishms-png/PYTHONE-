@extends('property.layouts.main')
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
                            <form class="form" name="countryregform" id="countryregform"
                                action="{{ route('countrystore2') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="countryname">Country Name</label>
                                        <input type="text" name="countryname" id="countryname" class="form-control"
                                            required>
                                        <span id="countryname_error" class="text-danger"></span>
                                        @error('countryname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="country_code">Country Code</label>
                                        <input type="text" name="country_code" id="country_code" class="form-control"
                                            required>
                                        <span id="country_code_error" class="text-danger"></span>
                                        @error('country_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="nationality">Nationality</label>
                                        <input type="text" name="nationality" id="nationality" class="form-control"
                                            required>
                                        <span id="nationality_error" class="text-danger"></span>
                                        @error('nationality')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
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
                        <table id="countrytable" class="table countrytable table-hover table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sn.</th>
                                    <th>Name</th>
                                    <th>Country Code</th>
                                    <th>Nationality</th>
                                    <th>Prop Id.</th>
                                    <th>Username</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $sn = 1; @endphp

                                @foreach ($countrydata as $country)
                                    <tr>
                                        <td>{{ $sn }}</td>
                                        <td>{{ $country->name }}</td>
                                        <td>{{ $country->country_code }}</td>
                                        <td>{{ $country->nationality }}</td>
                                        <td>{{ $country->propertyid }}</td>
                                        <td>{{ $country->u_name }}</td>
                                        <td class="ins">
                                            <a
                                                href="updatecountry?country_code={{ base64_encode($country->country_code) }}">
                                                <button class="btn btn-success btn-sm"><i
                                                        class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>
                                            </a>
                                            <a
                                                href="deletecountry?country_code={{ base64_encode($country->country_code) }}">
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
