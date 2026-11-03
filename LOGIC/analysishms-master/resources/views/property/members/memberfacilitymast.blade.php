@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="mb-3">
                                <form action="{{ route('member.facilitymast.store') }}" method="post">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="name">Name</label>
                                                <input type="text" class="form-control" name="name" id="name" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="shortname">Short Name</label>
                                                <input type="text" class="form-control" name="shortname" id="shortname" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="facilitytype">Type</label>
                                                <select class="form-control" name="facilitytype" id="facilitytype" required>
                                                    <option value="">Select</option>
                                                    <option value="fixed">Fixed</option>
                                                    <option value="memberwise">MemberWise</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="fixrate">Fix Rate</label>
                                                <input type="text" class="form-control" name="fixrate" id="fixrate" placeholder="0.00" readonly>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="taxstructure">Tax Structure</label>
                                                <select class="form-control" name="taxstructure" id="taxstructure">
                                                    <option value="">Select</option>
                                                    @foreach ($taxstrudata as $item)
                                                        <option value="{{ $item->str_code }}">{{ $item->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="accountname">Account Name</label>
                                                <select class="form-control" name="accountname" id="accountname">
                                                    <option value="">Select</option>
                                                    @foreach ($subgroupdata as $item)
                                                        <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="activeyn">Active YN</label>
                                                <select class="form-control" name="activeyn" id="activeyn">
                                                    <option value="yes" selected>Yes</option>
                                                    <option value="no">No</option>
                                                </select>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="text-center">
                                        <button class="btn btn-sm btn-success" type="submit">Submit</button>
                                    </div>

                                </form>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-hover table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Type</th>
                                            <th>Account</th>
                                            <th>Tax Stru</th>
                                            <th>Active YN</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @foreach ($memmberfacilitymast as $item)
                                            <tr>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->chargetype }}</td>
                                                <td>{{ $item->accountname }}</td>
                                                <td>{{ $item->taxstruname }}</td>
                                                <td>{{ $item->activeyn == 'y' ? 'Yes' : 'No' }}</td>
                                                <td class="ins">
                                                    <a
                                                        href="memberfacility/update/{{ $item->code }}">
                                                        <button class="btn btn-success btn-sm"><i
                                                                class="fa-regular fa-pen-to-square"></i>Edit
                                                        </button>
                                                    </a>
                                                    <a
                                                        href="memberfacility/delete/{{ $item->code }}">
                                                        <button class="btn btn-danger btn-sm"><i
                                                                class="fa-solid fa-trash"></i> Delete
                                                        </button>
                                                    </a>
                                                </td>
                                            </tr>
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

    <script>
        $(document).ready(function() {
            $(document).on('change', '#facilitytype', function() {
                if ($(this).val() == 'fixed') {
                    $('#fixrate').prop('readonly', false);
                } else {
                    $('#fixrate').val('').prop('readonly', true);
                }
            });
        });
    </script>
@endsection
