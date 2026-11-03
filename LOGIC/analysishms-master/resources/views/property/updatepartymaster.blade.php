@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="ledgeraccounts" id="ledgeraccounts"
                                action="{{ route('ledgerupdateparty') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Account Name</label>
                                        <input type="text" name="name" value="{{ $ledgerdata->name }}" id="name"
                                            class="form-control" required>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <input type="hidden" name="sub_code" value="{{ $ledgerdata->sub_code }}">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="group_code">Under Group</label>
                                        <select id="group_code" name="group_code" class="form-control" required>
                                            <option value="{{ $groupname->group_code }}" required>{{ $groupname->group_name }}
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

                                            $selected = old('tds_catg', $ledgerdata->tds_catg ?? '');
                                        @endphp

                                        <select id="tds_catg" name="tds_catg" class="form-control">
                                            <option value="">Select</option>

                                            @foreach ($tdscategories as $category)
                                                <option value="{{ $category->code }}" {{ $selected == $category->code ? 'selected' : '' }}>
                                                    {{ $category->name }} ({{ $category->tdspercentage }})
                                                </option>
                                            @endforeach

                                        </select>

                                        @error('tds_catg')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="conperson">Contact Person</label>
                                        <input type="text" name="conperson" value="{{ $ledgerdata->conperson }}"
                                            id="conperson" class="form-control">
                                        @error('conperson')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-12">
                                        <label class="col-form-label" for="address">Address</label><span
                                            class="text-danger">*</span>
                                        <input type="text" value="{{ $ledgerdata->address }}" class="form-control"
                                            name="address" id="address">
                                        <span id="address_error" class="text-danger"></span>
                                        @error('comparison')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="citycode">City</label>
                                        <input type="text" value="{{ $ledgerdata->citycode }}" name="citycode"
                                            id="citycode" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mobile">Mobile</label>
                                        <input type="text" value="{{ $ledgerdata->mobile }}" oninput="checkNum(this)"
                                            name="mobile" id="mobile" maxlength="10" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="email">Email <span
                                                class="text-danger">*</span></label>
                                        <input type="email" value="{{ $ledgerdata->email }}" name="email"
                                            id="email" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="creditlimit">Credit Limit</label>
                                        <input type="text" value="{{ $ledgerdata->creditlimit }}"
                                            oninput="checkNum(this)" name="creditlimit" id="creditlimit" maxlength="5"
                                            class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="creditdays">Credit Days</label>
                                        <input type="text" value="{{ $ledgerdata->creditdays }}"
                                            oninput="checkNum(this)" name="creditdays" id="creditdays" maxlength="5"
                                            class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="panno">Pan No.</label>
                                        <input type="text" value="{{ $ledgerdata->panno }}" name="panno"
                                            id="panno" maxlength="14" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="gstin">GSTIN</label>
                                        <input type="text" value="{{ $ledgerdata->gstin }}" name="gstin"
                                            id="gstin" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="bankacno">Bank Account No.</label>
                                        <input type="text" value="{{ $ledgerdata->bankacno }}" name="bankacno" id="bankacno" class="form-control">
                                    </div>

                                    <div class="col-md-4">
                                        <label for="ifsccode">IFSC Code</label>
                                        <input type="text" value="{{ $ledgerdata->ifsccode }}" name="ifsccode" id="ifsccode" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="msmeno">MSME No.</label>
                                        <input type="text" value="{{ $ledgerdata->msmeno }}" name="msmeno" id="msmeno" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="remark">Remark</label>
                                        <textarea name="remark" id="remark" class="form-control">{{ $ledgerdata->remark }}</textarea>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="religion">Religion</label>
                                        <input type="text" value="{{ $ledgerdata->religion }}" name="religion"
                                            id="religion" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeyn">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y"
                                                name="activeyn" id="activeyes"
                                                {{ $ledgerdata->activeyn == 'Y' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N"
                                                name="activeyn" id="activeno"
                                                {{ $ledgerdata->activeyn == 'N' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="openingbalance" class="col-form-label">Opening Balance</label>
                                        <input type="text" class="form-control" value="{{ $balance }}" name="openingbalance" id="openingbalance" readonly>
                                        <span id="balancebadge" class="font-weight-bold h4 text-center mt-1 balancebadge">{{ $drorcr }}</span>

                                    </div>

                                    <div class="col-md-6">

                                    </div>

                                    <div class="col-md-12">
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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $(document).ready(function() {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);
        });
    </script>
@endsection
