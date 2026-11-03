@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="companymaster" id="companymaster"
                                action="{{ route('comp_maststore') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Account Name</label>
                                        <input type="text" name="name" id="name" class="form-control" required>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="group_code">Under Group</label>
                                        <select id="group_code" name="group_code" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($subgroupdata as $list)
                                                <option value="{{ $list->group_code }}">{{ $list->group_name }}</option>
                                            @endforeach
                                        </select>
                                        <span id="group_code_error" class="text-danger"></span>
                                        @error('group_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="comp_type" class="col-form-label">Company Type</label>
                                        <select id="comp_type" name="comp_type" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Corporate">Corporate</option>
                                            <option value="Travel Agency">Travel Agency</option>
                                            <option value="Travel Agency (OTA)">Travel Agency (OTA)</option>
                                            <option value="Mess">Mess</option>
                                        </select>
                                        @error('comp_type')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="allow_credit" class="col-form-label">Allow Credit</label>
                                        <select id="allow_credit" name="allow_credit" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                        @error('allow_credit')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="logo" class="col-form-label">Logo</label>
                                        <select id="logo" name="logo" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($travel_agents as $agent)
                                                <option value="{{ $agent->img }}">{{ $agent->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('logo')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mapcode">Map Code</label>
                                        <input type="text" name="mapcode" id="mapcode" class="form-control">
                                        @error('mapcode')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="conperson">Contact Person</label>
                                        <input type="text" name="conperson" id="conperson" class="form-control">
                                        @error('conperson')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="discounttype" class="col-form-label">Discount Type</label>
                                        <select id="discounttype" name="discounttype" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Fix Rate">Fix Rate</option>
                                            <option value="Discount">Discount %</option>
                                        </select>
                                        @error('discounttype')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="tradename" class="col-form-label">Trade Name</label>
                                        <input type="text" class="form-control" name="tradename" id="tradename">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="legalname" class="col-form-label">Legal Name</label>
                                        <input type="text" class="form-control" name="legalname" id="legalname">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="pincode" class="col-form-label">Pin Code</label>
                                        <input type="text" class="form-control" name="pincode" id="pincode">
                                    </div>

                                    <div class="col-md-12">
                                        <label class="col-form-label" for="address">Address</label><span
                                            class="text-danger">*</span>
                                        <textarea class="form-control" name="address" id="addressC" rows="3"></textarea>
                                        <span id="address_error" class="text-danger"></span>
                                        @error('comparison')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="citycode">City</label>
                                        <select name="citycode" id="citycode" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($citydata as $list)
                                                <option value="{{ $list->city_code }}">{{ $list->cityname }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mobile">Mobile</label>
                                        <input type="text" oninput="checkNum(this)" name="mobile" id="mobile" maxlength="10"
                                            class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="email">Email <span
                                                class="text-danger">*</span></label>
                                        <input type="email" name="email" id="email" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="panno">Pan No.</label>
                                        <input type="text" name="panno" id="panno" maxlength="14" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="gstin">GSTIN</label>
                                        <input type="text" name="gstin" id="gstin" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeyn">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y" name="activeyn"
                                                id="activeyes" checked>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N" name="activeyn"
                                                id="activeno">
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="openingbalance" class="col-form-label">Opening Balance</label>
                                        <input type="text" class="form-control" name="openingbalance" id="openingbalance">
                                        <span id="balancebadge" class="font-weight-bold h4 text-center mt-1 balancebadge"></span>

                                    </div>

                                    <div class="col-md-6">

                                    </div>

                                    <div class="col-md-6">
                                        @include('property.include.subledger')
                                    </div>

                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-8 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table id="comp_mast"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Nature</th>
                                        <th>Contact Person</th>
                                        <th>Address</th>
                                        <th>GSTIN</th>
                                        <th>Property Id</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($comp_mastdata as $data)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $data->name }}</td>
                                            <td>{{ $data->nature }}</td>
                                            <td>{{ $data->conperson }}</td>
                                            <td>{{ $data->address }}</td>
                                            <td>{{ $data->gstin }}</td>
                                            <td>{{ $data->propertyid }}</td>
                                            <td class="ins">
                                                <a
                                                    href="updatecompmaster?id={{ base64_encode($data->id) }}&comp_code={{ base64_encode($data->sub_code) }}">
                                                    <button class="btn btn-success btn-sm">
                                                        <i class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                </a>
                                                <a
                                                    href="deletecomp_mast?id={{ base64_encode($data->id) }}&comp_code={{ base64_encode($data->sub_code) }}">
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
    </div>

    <script>
        $(document).ready(function() {
            let table = new DataTable('#comp_mast', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    'excel', 'pdf', 'print'
                ]
            });
            $('#companymaster').on('submit', function(e) {
                let gstin = $('#gstin').val();
                if (gstin !== '' && gstin.length < 15) {
                    e.preventDefault();
                    pushNotify('error', 'Company Master', 'GSTIN length should be equal to 15!', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                }
            });

        });
    </script>
@endsection
