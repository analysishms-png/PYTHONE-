@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="taxform" id="taxform" action="{{ route('taxstoreupdate') }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="taxname">Tax Name</label>
                                        <input type="text" name="taxname" value="{{ $taxdata->name }}" id="taxname"
                                            class="form-control" required>
                                        <input type="hidden" value="{{ $taxdata->ac_code }}" name="acc_code">
                                        <input type="hidden" value="{{ $taxdata->id }}" name="sn">
                                        <input type="hidden" name="rev_code" id="rev_code">
                                        <span id="taxname_error" class="text-danger"></span>
                                        @error('taxname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="sundryname">Sundry Name</label>
                                        <select name="sundryname" id="sundryname" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($sundrymast as $item)
                                                <option value="{{ $item->sundry_code }}" {{ $taxdata->sundry == $item->sundry_code ? 'selected' : '' }}>{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('sundryname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="ledgeraccount">Ledger Accounts</label>
                                        <select name="ledgeraccount" id="ledgeraccount" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($subgroup as $item)
                                                <option value="{{ $item->sub_code }}"  {{ $taxdata->ac_code == $item->sub_code ? 'selected' : '' }}> {{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('ledgeraccount')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="payableaccount">Payable Accounts</label>
                                        <select name="payableaccount" id="payableaccount" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($subgroup as $item)
                                                <option value="{{ $item->sub_code }}"  {{ $taxdata->payable_ac == $item->sub_code ? 'selected' : '' }}> {{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('payableaccount')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="unregaccount">Unregistered Accounts</label>
                                        <select name="unregaccount" id="unregaccount" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($subgroup as $item)
                                                <option value="{{ $item->sub_code }}"  {{ $taxdata->unregistered_ac == $item->sub_code ? 'selected' : '' }}> {{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('unregaccount')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeyn">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y" name="activeyn"
                                                id="activeyes" {{ $taxdata->active == 'Y' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N" name="activeyn"
                                                id="activeno" {{ $taxdata->active == 'N' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
                                    </div>

                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-8 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div>
@endsection
