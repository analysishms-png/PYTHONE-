@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="mb-3">
                                <form action="{{ route('member.categorystore') }}" method="post">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="title" class="form-label">Member Category</label>
                                            <input type="text" name="title" id="title" class="form-control">
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="short_name" class="form-label">Short Name</label>
                                            <input type="text" name="short_name" id="short_name" class="form-control">
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="subscription" class="form-label">Subscription</label>
                                            <select name="subscription" id="subscription" class="form-control">
                                                <option value="">-- Select --</option>
                                                <option value="yes" selected>Yes</option>
                                                <option value="no">No</option>
                                            </select>
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="surcharge" class="form-label">Surcharge</label>
                                            <select name="surcharge" id="surcharge" class="form-control">
                                                <option value="">-- Select --</option>
                                                <option value="yes">Yes</option>
                                                <option value="no" selected>No</option>
                                            </select>
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="facility_billing" class="form-label">Facility Billing</label>
                                            <select name="facility_billing" id="facility_billing" class="form-control">
                                                <option value="">-- Select --</option>
                                                <option value="yes">Yes</option>
                                                <option value="no" selected>No</option>
                                            </select>
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <label for="status" class="form-label">Status</label>
                                            <select name="status" id="status" class="form-control">
                                                <option value="">-- Select --</option>
                                                <option value="active" selected>Active</option>
                                                <option value="inactive">Inactive</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                    </div>
                                </form>
                            </div>

                            <div class="table-responsive">
                                <table id="taxmaster"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Name</th>
                                            <th>Short Name</th>
                                            <th>Subscription</th>
                                            <th>Surcharge</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn = 1; @endphp
                                        @foreach (membercategories() as $data)
                                            <tr>
                                                <td>{{ $sn }}</td>
                                                <td>{{ $data->title }}</td>
                                                <td>{{ $data->short_name }}</td>
                                                <td>{{ $data->subscription }}</td>
                                                <td>{{ $data->surcharge }}</td>
                                                <td class="ins">
                                                    <a
                                                        href="category/update/{{ $data->code }}">
                                                        <button class="btn btn-success btn-sm"><i
                                                                class="fa-regular fa-pen-to-square"></i>Edit
                                                        </button>
                                                    </a>
                                                    <a
                                                        href="category/delete/{{ $data->code }}">
                                                        <button class="btn btn-danger btn-sm"><i
                                                                class="fa-solid fa-trash"></i> Delete
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
        </div>
    </div>
@endsection
