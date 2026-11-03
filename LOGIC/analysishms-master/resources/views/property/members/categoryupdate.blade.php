@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="mb-3">
                                <form action="{{ route('member.category.update', $data->code) }}" method="post">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="title" class="form-label">Member Category</label>
                                            <input type="text" value="{{ $data->title }}" name="title" id="title" class="form-control">
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="short_name" class="form-label">Short Name</label>
                                            <input type="text" value="{{ $data->short_name }}" name="short_name" id="short_name" class="form-control">
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="subscription" class="form-label">Subscription</label>
                                            <select name="subscription" id="subscription" class="form-control">
                                                <option value="">-- Select --</option>
                                                <option value="yes" {{ $data->subscription == 'yes' ? 'selected' : '' }}>Yes</option>
                                                <option value="no" {{ $data->subscription == 'no' ? 'selected' : '' }}>No</option>
                                            </select>
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="surcharge" class="form-label">Surcharge</label>
                                            <select name="surcharge" id="surcharge" class="form-control">
                                                <option value="">-- Select --</option>
                                                <option value="yes" {{ $data->surcharge == 'yes' ? 'selected' : '' }}>Yes</option>
                                                <option value="no" {{ $data->surcharge == 'no' ? 'selected' : '' }}>No</option>
                                            </select>
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="facility_billing" class="form-label">Facility Billing</label>
                                            <select name="facility_billing" id="facility_billing" class="form-control">
                                                <option value="">-- Select --</option>
                                                <option value="yes" {{ $data->facility_billing == 'yes' ? 'selected' : '' }}>Yes</option>
                                                <option value="no" {{ $data->facility_billing == 'no' ? 'selected' : '' }}>No</option>
                                            </select>
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="status" class="form-label">Status</label>
                                            <select name="status" id="status" class="form-control">
                                                <option value="">-- Select --</option>
                                                <option value="active" {{ $data->status == 'active' ? 'selected' : '' }}>Active</option>
                                                <option value="inactive" {{ $data->status == 'inactive' ? 'selected' : '' }}>Inactive</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
