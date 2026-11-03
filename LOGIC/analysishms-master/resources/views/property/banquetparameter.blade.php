@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="tabs">
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-1" name="tabby-tabs" checked>
                                    <label class="tabby" for="tab-1">Banquet Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="banquetparam" id="banquetparam"
                                            action="{{ route('submitbanquetparameter') }}" method="POST"
                                            enctype="multipart/form-data">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">

                                                    <label for="outdoorcatering" class="col-form-label">Outdoor
                                                        Catering</label>
                                                    <select id="outdoorcatering" name="outdoorcatering"
                                                        class="form-control">
                                                        @if (empty(banquetparameter()->outdoorcatering))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ banquetparameter()->outdoorcatering }}">
                                                                {{ banquetparameter()->outdoorcatering == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('outdoorcatering')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="cataloglimit" class="col-form-label">Catelog With Item
                                                        Limit</label>
                                                    <select id="cataloglimit" name="cataloglimit" class="form-control">
                                                        @if (empty(banquetparameter()->cataloglimit))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ banquetparameter()->cataloglimit }}">
                                                                {{ banquetparameter()->cataloglimit == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('cataloglimit')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="discountac" class="col-form-label">Discount Account</label>
                                                    <select id="discountac" name="discountac" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach (subgroupall() as $item)
                                                            <option value="{{ $item->sub_code }}"
                                                                {{ (banquetparameter()->discountac ?? '') == $item->sub_code ? 'selected' : '' }}>
                                                                {{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('discountac')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="banquet_edit_date" class="col-form-label">Banquet Edit
                                                        Date</label>
                                                    <select id="banquet_edit_date" name="banquet_edit_date"
                                                        class="form-control">
                                                        <option value="0"
                                                            {{ (banquetparameter()->banquet_edit_date ?? '') == 0 ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="1"
                                                            {{ (banquetparameter()->banquet_edit_date ?? '') == 1 ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('banquet_edit_date')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="booking_edit" class="col-form-label">Booking Date
                                                        Edit</label>
                                                    <select id="booking_edit" name="booking_edit" class="form-control">
                                                        <option value="1"
                                                            {{ (banquetparameter()->booking_edit ?? '') == 1 ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="0"
                                                            {{ (banquetparameter()->booking_edit ?? '') == 0 ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('booking_edit')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="adv_tax_on_bill" class="col-form-label">Advance Tax Add on Bill</label>
                                                    <select id="adv_tax_on_bill" name="adv_tax_on_bill" class="form-control">
                                                        <option value="0" {{ (banquetparameter()->adv_tax_on_bill ?? 0) == 0 ? 'selected' : '' }}>No</option>
                                                        <option value="1" {{ (banquetparameter()->adv_tax_on_bill ?? 0) == 1 ? 'selected' : '' }}>Yes</option>
                                                    </select>
                                                    @error('adv_tax_on_bill')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="bookingraterequired" class="col-form-label">Booking Rate
                                                        Required</label>
                                                    <select id="bookingraterequired" name="bookingraterequired"
                                                        class="form-control">
                                                        <option value="Y"
                                                            {{ (banquetparameter()->bookingraterequired ?? '') == 'Y' ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="N"
                                                            {{ (banquetparameter()->bookingraterequired ?? '') == 'N' ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('bookingraterequired')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="companyname">Company Name</label>
                                                    <input type="text" value="{{ banquetparameter()->companyname }}"
                                                        name="companyname" id="companyname" class="form-control">
                                                    @error('companyname')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="gstin">GSTIN</label>
                                                    <input type="text" value="{{ banquetparameter()->gstin }}"
                                                        name="gstin" id="gstin" class="form-control">
                                                    @error('gstin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                    <label class="col-form-label" for="mobile">Mobile No.</label>
                                                    <input type="text" value="{{ banquetparameter()->mobile }}"
                                                        name="mobile" id="mobile" class="form-control">
                                                    @error('mobile')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>

                                                <div class="col-md-6">

                                                    <label for="roundoffac" class="col-form-label">Round Off
                                                        Account</label>
                                                    <select id="roundoffac" name="roundoffac" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach (subgroupall() as $item)
                                                            <option value="{{ $item->sub_code }}"
                                                                {{ (banquetparameter()->roundoffac ?? '') == $item->sub_code ? 'selected' : '' }}>
                                                                {{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('roundoffac')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="indoorsaleac" class="col-form-label">In Door Sale
                                                        Account</label>
                                                    <select id="indoorsaleac" name="indoorsaleac" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach (subgroupall() as $item)
                                                            <option value="{{ $item->sub_code }}"
                                                                {{ (banquetparameter()->indoorsaleac ?? '') == $item->sub_code ? 'selected' : '' }}>
                                                                {{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('indoorsaleac')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="indoorpartyac" class="col-form-label">In Door Party
                                                        Account</label>
                                                    <select id="indoorpartyac" name="indoorpartyac" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach (subgroupall() as $item)
                                                            <option value="{{ $item->sub_code }}"
                                                                {{ (banquetparameter()->indoorpartyac ?? '') == $item->sub_code ? 'selected' : '' }}>
                                                                {{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('indoorpartyac')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="panrequiredyn" class="col-form-label">Pan Required</label>
                                                    <select id="panrequiredyn" name="panrequiredyn" class="form-control">
                                                        @if (empty(banquetparameter()->panrequiredyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ banquetparameter()->panrequiredyn }}">
                                                                {{ banquetparameter()->panrequiredyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('panrequiredyn')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="roundofftype">Round Of Type</label>
                                                    <select id="roundofftype" name="roundofftype" class="form-control">
                                                        @if (empty(banquetparameter()->roundofftype))
                                                            <option value="Standard">Standard</option>
                                                        @endif
                                                        <option value="Upper"
                                                            {{ banquetparameter()->roundofftype == 'Upper' ? 'selected' : '' }}>
                                                            Upper</option>
                                                        <option value="Standard"
                                                            {{ banquetparameter()->roundofftype == 'Standard' ? 'selected' : '' }}>
                                                            Standard</option>
                                                    </select>
                                                    @error('roundofftype')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="divcode">Div Code</label>
                                                    <input type="text" value="{{ banquetparameter()->divcode }}"
                                                        name="divcode" id="divcode" class="form-control">
                                                    @error('divcode')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    {{-- FIX: removed duplicate <input>, kept only <textarea> --}}
                                                    <label class="col-form-label" for="companyaddress">Address</label>
                                                    <textarea class="form-control" name="companyaddress" id="companyaddress" rows="3">{{ banquetparameter()->companyaddress }}</textarea>
                                                    @error('companyaddress')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    {{-- FIX: unique ids — oldlogo vs logo --}}
                                                    <label class="col-form-label" for="logo">Company Logo</label>
                                                    <input type="hidden" name="oldlogo" id="oldlogo"
                                                        value="{{ banquetparameter()->logo }}">
                                                    <input type="file" class="form-control" name="logo"
                                                        id="logo" accept=".jpg,.png,.jpeg">
                                                    @error('logo')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="email">Email</label>
                                                    <input type="text" value="{{ banquetparameter()->email }}"
                                                        name="email" id="email" class="form-control">
                                                    @error('email')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>
                                            </div>{{-- FIX: closing </div> for <div class="row"> was missing --}}

                                            <div class="col-7 mt-4 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit <i
                                                        class="fa-solid fa-file-export"></i></button>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-2" name="tabby-tabs">
                                    <label class="tabby" for="tab-2">Instructions (FP)</label>
                                    <div class="tabby-content">
                                        <form class="form" name="banquetparamfp" id="banquetparamfp"
                                            action="{{ route('submitbanquetparameterfp') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="resinstructionfp1">Instruction FP
                                                        1</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->resinstructionfp1 }}"
                                                        name="resinstructionfp1" id="resinstructionfp1"
                                                        class="form-control">
                                                    @error('resinstructionfp1')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstructionfp2">Instruction
                                                        2</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->resinstructionfp2 }}"
                                                        name="resinstructionfp2" id="resinstructionfp2"
                                                        class="form-control">
                                                    @error('resinstructionfp2')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstructionfp3">Instruction
                                                        3</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->resinstructionfp3 }}"
                                                        name="resinstructionfp3" id="resinstructionfp3"
                                                        class="form-control">
                                                    @error('resinstructionfp3')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstructionfp4">Instruction
                                                        4</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->resinstructionfp4 }}"
                                                        name="resinstructionfp4" id="resinstructionfp4"
                                                        class="form-control">
                                                    @error('resinstructionfp4')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstructionfp5">Instruction
                                                        5</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->resinstructionfp5 }}"
                                                        name="resinstructionfp5" id="resinstructionfp5"
                                                        class="form-control">
                                                    @error('resinstructionfp5')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                </div>
                                            </div>

                                            <div class="col-7 mt-4 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit <i
                                                        class="fa-solid fa-file-export"></i></button>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-3" name="tabby-tabs">
                                    <label class="tabby" for="tab-3">Instructions (Billno.)</label>
                                    <div class="tabby-content">
                                        <form class="form" name="banquetparambillno" id="banquetparambillno"
                                            action="{{ route('banquetparambillno') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="resinstructionbillno1">Instruction
                                                        Billno.
                                                        1</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->resinstructionbillno1 }}"
                                                        name="resinstructionbillno1" id="resinstructionbillno1"
                                                        class="form-control">
                                                    @error('resinstructionbillno1')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstructionbillno2">Instruction
                                                        2</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->resinstructionbillno2 }}"
                                                        name="resinstructionbillno2" id="resinstructionbillno2"
                                                        class="form-control">
                                                    @error('resinstructionbillno2')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstructionbillno3">Instruction
                                                        3</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->resinstructionbillno3 }}"
                                                        name="resinstructionbillno3" id="resinstructionbillno3"
                                                        class="form-control">
                                                    @error('resinstructionbillno3')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                </div>
                                            </div>

                                            <div class="col-7 mt-4 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit <i
                                                        class="fa-solid fa-file-export"></i></button>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-4" name="tabby-tabs">
                                    <label class="tabby" for="tab-4">Advance Instructions</label>
                                    <div class="tabby-content">
                                        <form class="form" name="banquetadvinstruction" id="banquetadvinstruction"
                                             method="POST" action="{{ route('banquetadvinstruction') }}">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="advinstruction_no1">Advance
                                                        Instruction
                                                        1</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->advinstruction_no1 }}"
                                                        name="advinstruction_no1" id="advinstruction_no1"
                                                        class="form-control">
                                                    @error('advinstruction_no1')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="advinstruction_no2">Advance
                                                        Instruction
                                                        2</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->advinstruction_no2 }}"
                                                        name="advinstruction_no2" id="advinstruction_no2"
                                                        class="form-control">
                                                    @error('advinstruction_no2')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="advinstruction_no3">Advance
                                                        Instruction
                                                        3</label>
                                                    <input type="text"
                                                        value="{{ banquetparameter()->advinstruction_no3 }}"
                                                        name="advinstruction_no3" id="advinstruction_no3"
                                                        class="form-control">
                                                    @error('advinstruction_no3')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                </div>
                                            </div>

                                            <div class="col-7 mt-4 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit <i
                                                        class="fa-solid fa-file-export"></i></button>
                                            </div>

                                        </form>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endsection
