@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">E-Invoice Parameters</h4>
                        </div>
                        <div class="card-body">

                            @if ($errors->any())
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <strong>Please fix the following errors:</strong>
                                    <ul class="mb-0">
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            @endif

                            @if (session('success'))
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    {{ session('success') }}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            @endif

                            @if (session('error'))
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    {{ session('error') }}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            @endif

                            <form action="{{ route('einvoiceparametersubmit') }}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="apiid" class="form-label">API ID</label>
                                            <input type="text" class="form-control @error('apiid') is-invalid @enderror" 
                                                   id="apiid" name="apiid" 
                                                   value="{{ old('apiid', $einvoicedata->apiid ?? '') }}"
                                                   placeholder="Enter API ID">
                                            @error('apiid')
                                                <span class="invalid-feedback">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="apisecret" class="form-label">API Secret</label>
                                            <input type="text" class="form-control @error('apisecret') is-invalid @enderror" 
                                                   id="apisecret" name="apisecret" 
                                                   value="{{ old('apisecret', $einvoicedata->apisecret ?? '') }}"
                                                   placeholder="Enter API Secret">
                                            @error('apisecret')
                                                <span class="invalid-feedback">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="einvusername" class="form-label">E-Invoice Username</label>
                                            <input type="text" class="form-control @error('einvusername') is-invalid @enderror" 
                                                   id="einvusername" name="einvusername" 
                                                   value="{{ old('einvusername', $einvoicedata->einvusername ?? '') }}"
                                                   placeholder="Enter E-Invoice Username">
                                            @error('einvusername')
                                                <span class="invalid-feedback">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="customerid" class="form-label">Customer ID</label>
                                            <input type="text" class="form-control @error('customerid') is-invalid @enderror" 
                                                   id="customerid" name="customerid" 
                                                   value="{{ old('customerid', $einvoicedata->customerid ?? '') }}"
                                                   placeholder="Enter Customer ID">
                                            @error('customerid')
                                                <span class="invalid-feedback">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="einvpwd" class="form-label">E-Invoice Password</label>
                                            <input type="password" class="form-control @error('einvpwd') is-invalid @enderror" 
                                                   id="einvpwd" name="einvpwd" 
                                                   value="{{ old('einvpwd', $einvoicedata->einvpwd ?? '') }}"
                                                   placeholder="Enter E-Invoice Password">
                                            @error('einvpwd')
                                                <span class="invalid-feedback">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="activeyn" class="form-label">Active Status</label>
                                            <select class="form-control @error('activeyn') is-invalid @enderror" 
                                                    id="activeyn" name="activeyn">
                                                <option value="">-- Select --</option>
                                                <option value="Y" @selected(old('activeyn', $einvoicedata->activeyn ?? '') === 'Y')>Yes</option>
                                                <option value="N" @selected(old('activeyn', $einvoicedata->activeyn ?? '') === 'N' || old('activeyn', $einvoicedata->activeyn ?? '') === '')>No</option>
                                            </select>
                                            @error('activeyn')
                                                <span class="invalid-feedback">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>

                                <div class="row mt-4">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary">Save Parameters</button>
                                        <a href="{{ route('company') }}" class="btn btn-secondary">Cancel</a>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
