@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container mt-3">
            <div class="card shadow-sm">
                <div class="card-body p-2">

                    <form method="POST" action="{{ route('api.client.generate') }}">
                        @csrf

                        <div class="row g-2 align-items-center">

                            <div class="col-md-4">
                                <input type="number" value="{{ $company->propertyid }}" name="propertyid" class="form-control form-control-sm" readonly required>
                            </div>

                            <div class="col-md-2">
                                <button type="submit" class="btn btn-primary btn-sm w-100">
                                    <i class="fa fa-key"></i> Generate
                                </button>
                            </div>

                        </div>
                    </form>

                    @if (session('success'))
                        <div class="alert alert-success mt-2 p-2">
                            {{ session('success') }}
                        </div>
                    @endif

                    @if (session('api_key'))
                        <div class="card mt-2 shadow-sm">
                            <div class="card-body p-2">

                                <div class="row g-2 align-items-center">

                                    <div class="col-md-3">
                                        <input type="text" class="form-control form-control-sm" value="{{ $company->propertyid }}" readonly>
                                    </div>

                                    <div class="col-md-4">
                                        <input type="text" class="form-control form-control-sm" value="{{ session('api_key') }}" readonly>
                                    </div>

                                    <div class="col-md-5">
                                        <input type="text" class="form-control form-control-sm" value="{{ session('bearer_token') }}" readonly>
                                    </div>

                                </div>

                            </div>
                        </div>
                    @endif

                    @if ($chkapi && $chkapi->api_key)
                        <div class="card mt-2 shadow-sm">
                            <div class="card-body p-2">

                                <div class="row g-2 align-items-center">

                                    <div class="col-md-3">
                                        <input type="text" class="form-control form-control-sm" value="{{ $chkapi->propertyid }}" readonly>
                                    </div>

                                    <div class="col-md-4">
                                        <input type="text" class="form-control form-control-sm" value="{{ $chkapi->api_key }}" readonly>
                                    </div>

                                    <div class="col-md-5">
                                        <input type="text" class="form-control form-control-sm" value="{{ $chkapi->bearer_token }}" readonly>
                                    </div>

                                    <div class="col-md-3 mt-1">
                                        <a href="{{ route('api.client.download', $chkapi->propertyid) }}" target="_blank" class="btn btn-success btn-sm w-100">
                                            <i class="fa fa-download"></i> Download Excel
                                        </a>
                                    </div>

                                </div>

                            </div>
                        </div>
                    @endif

                </div>
            </div>
        </div>
    </div>

    
@endsection
