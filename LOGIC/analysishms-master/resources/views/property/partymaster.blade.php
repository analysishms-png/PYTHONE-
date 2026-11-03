@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="ledgeraccounts" id="ledgeraccounts"
                                action="{{ route('ledgerstoreparty') }}" method="POST">
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
                                            <option value="{{ $acname->group_code }}" selected>{{ $acname->group_name }}</option>
                                        </select>
                                        <span id="group_code_error" class="text-danger"></span>
                                        @error('group_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="tds_catg" class="col-form-label">TDS Category</label>
                                        @php
                                            use App\Models\TdsCategory;
                                            $tdscategories = TdsCategory::where('propertyid', Auth::user()->propertyid)
                                                ->orderBy('tdspercentage')
                                                ->get();
                                        @endphp
                                        <select id="tds_catg" name="tds_catg" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($tdscategories as $category)
                                                <option value="{{ $category->code }}">{{ $category->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('tds_catg')
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

                                    <div class="col-md-12">
                                        <label class="col-form-label" for="address">Address</label><span
                                            class="text-danger">*</span>
                                        <input type="text" class="form-control" name="address" id="address">
                                        <span id="address_error" class="text-danger"></span>
                                        @error('comparison')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="citycode">City</label>
                                        <input type="text" name="citycode" id="citycode" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mobile">Mobile</label>
                                        <input type="text" oninput="checkNum(this)" name="mobile" id="mobile"
                                            maxlength="10" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="email">Email <span
                                                class="text-danger">*</span></label>
                                        <input type="email" name="email" id="email" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="creditlimit">Credit Limit</label>
                                        <input type="text" oninput="checkNum(this)" name="creditlimit"
                                            id="creditlimit" maxlength="5" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="creditdays">Credit Days</label>
                                        <input type="text" oninput="checkNum(this)" name="creditdays" id="creditdays"
                                            maxlength="5" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="panno">Pan No.</label>
                                        <input type="text" name="panno" id="panno" maxlength="14"
                                            class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="gstin">GSTIN</label>
                                        <input type="text" name="gstin" id="gstin" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="bankacno">Bank Account No.</label>
                                        <input type="text" name="bankacno" id="bankacno" class="form-control">
                                    </div>

                                    <div class="col-md-4">
                                        <label for="ifsccode">IFSC Code</label>
                                        <input type="text" name="ifsccode" id="ifsccode" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="msmeno">MSME No.</label>
                                        <input type="text" name="msmeno" id="msmeno" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="remark">Remark</label>
                                        <textarea name="remark" id="remark" class="form-control"></textarea>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="religion">Religion</label>
                                        <input type="text" name="religion" id="religion" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeyn">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y"
                                                name="activeyn" id="activeyes" checked>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N"
                                                name="activeyn" id="activeno">
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
                            <table id="partymaster"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Nature</th>
                                        <th>Contact Person</th>
                                        <th>Address</th>
                                        <th>TDS</th>
                                        <th>Cr Limit</th>
                                        <th>Cr Days</th>
                                        <th>GSTIN</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($taxdata as $data)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $data->name }}</td>
                                            <td>{{ $data->nature }}</td>
                                            <td>{{ $data->conperson }}</td>
                                            <td>{{ $data->address }}</td>
                                            <td>{{ $data->tdscategoryname }}</td>
                                            <td>{{ $data->creditlimit }}</td>
                                            <td>{{ $data->creditdays }}</td>
                                            <td>{{ $data->gstin }}</td>
                                            <td class="ins">
                                                <a
                                                    href="updatepartymaster?id={{ base64_encode($data->id) }}&sub_code={{ base64_encode($data->sub_code) }}">
                                                    <button class="btn btn-success btn-sm">
                                                        <i class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                </a>
                                                <a href="{{ url('deletepartymaster/' . $data->id . '/' . $data->sub_code) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
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
            let table = new DataTable('#partymaster', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    'excel', 'pdf', 'print'
                ]
            });
        });
    </script>
@endsection
