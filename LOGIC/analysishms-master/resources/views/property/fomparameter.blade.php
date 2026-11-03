@extends('property.layouts.main')
@section('main-container')
    <!-- Page plugins css -->
    <link href="admin/plugins/clockpicker/dist/jquery-clockpicker.min.css" rel="stylesheet">
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="tabs">
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-1" name="tabby-tabs" checked>
                                    <label class="tabby" for="tab-1">General Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="generalparam" id="generalparam"
                                            action="{{ route('generalparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label for="arrdatetimeedit" class="col-form-label">Edit Arr Date And
                                                        Time</label>
                                                    <select id="arrdatetimeedit" name="arrdatetimeedit"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->arrdatetimeedit))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->arrdatetimeedit }}">
                                                                {{ $value = $fomparamdata->arrdatetimeedit == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('arrdatetimeedit')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label"
                                                        for="cancellationac">Cancellation/Retention Charge</label>
                                                    <select id="cancellationac" name="cancellationac" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach ($revmastcharges as $list)
                                                            <option value="{{ $list->rev_code }}"
                                                                {{ old('cancellationac', $fomparamdata->cancellationac ?? '') == $list->rev_code ? 'selected' : '' }}>
                                                                {{ $list->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('cancellationac')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="advanceroomrentac">Advance Room Rent
                                                        A/c</label>
                                                    <select id="advanceroomrentac" name="advanceroomrentac"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->advanceroomrentac))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->advanceroomrentac }}">
                                                                {{ $advanceroomrentac }}
                                                            </option>
                                                        @endif
                                                        @foreach ($ledgerdatamain as $list)
                                                            <option value="{{ $list->sub_code }}">
                                                                {{ $list->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('advanceroomrentac')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="grcmandatory" class="col-form-label">GRC Mandatory</label>
                                                    <select id="grcmandatory" name="grcmandatory" class="form-control">
                                                        @if (empty($fomparamdata->grcmandatory))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->grcmandatory }}">
                                                                {{ $value = $fomparamdata->grcmandatory == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('grcmandatory')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="noshowatnightaudit" class="col-form-label">Make No Show
                                                        UnMatured
                                                        Reservation At Night Audit</label>
                                                    <select id="noshowatnightaudit" name="noshowatnightaudit"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->noshowatnightaudit))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->noshowatnightaudit }}">
                                                                {{ $value = $fomparamdata->noshowatnightaudit == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('noshowatnightaudit')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="seperatereservationletterasperstatusyn"
                                                        class="col-form-label">Seperate Letter
                                                        For Confirm/Tentative Reservation</label>
                                                    <select id="seperatereservationletterasperstatusyn"
                                                        name="seperatereservationletterasperstatusyn" class="form-control">
                                                        @if (empty($fomparamdata->seperatereservationletterasperstatusyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option
                                                                value="{{ $fomparamdata->seperatereservationletterasperstatusyn }}">
                                                                {{ $value = $fomparamdata->seperatereservationletterasperstatusyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('seperatereservationletterasperstatusyn')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="checkout" class="col-form-label">Check Out
                                                        Time</label>
                                                    <div class="input-group clockpicker" data-placement="right"
                                                        data-align="top" data-autoclose="true">
                                                        <input type="text" name="checkout" class="form-control"
                                                            value="{{ $val = $fomparamdata->checkout == '' ? '00:00' : substr($fomparamdata->checkout, 0, -3) }}">
                                                        <span class="input-group-append"><span class="input-group-text"><i
                                                                    class="fa fa-clock-o"></i></span></span>
                                                        @error('checkout')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>

                                                    <label for="checkintime" class="col-form-label">Check In
                                                        Time</label>
                                                    <div class="input-group clockpicker" data-placement="right"
                                                        data-align="top" data-autoclose="true">
                                                        <input type="text" name="checkintime" class="form-control"
                                                            value="{{ $val = $fomparamdata->checkintime == '' ? '00:00' : substr($fomparamdata->checkintime, 0, -3) }}">
                                                        <span class="input-group-append"><span class="input-group-text"><i
                                                                    class="fa fa-clock-o"></i></span></span>
                                                        @error('checkintime')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>

                                                    <label for="cashpurcheffect" class="col-form-label">Cash Purchase
                                                        Effect
                                                        On Focc</label>
                                                    <select id="cashpurcheffect" name="cashpurcheffect"
                                                        class="form-control">
                                                        @if (empty($enviro_general->cashpurcheffect))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $enviro_general->cashpurcheffect }}">
                                                                {{ $enviro_general->cashpurcheffect == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('cashpurcheffect')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="pageopenwalkin" class="col-form-label">Page Open After
                                                        Walkin</label>
                                                    <select id="pageopenwalkin" name="pageopenwalkin"
                                                        class="form-control">
                                                        <option value="roomstatus"
                                                            {{ $fomparamdata->pageopenwalkin == 'roomstatus' ? 'selected' : '' }}>
                                                            roomstatus</option>
                                                        <option value="inhoseroomstatus"
                                                            {{ $fomparamdata->pageopenwalkin == 'inhoseroomstatus' ? 'selected' : '' }}>
                                                            inhoseroomstatus</option>
                                                    </select>
                                                    @error('pageopenwalkin')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="roominclusive" class="col-form-label">Room
                                                        Inclusive</label>
                                                    <select id="roominclusive" name="roominclusive" class="form-control">
                                                        <option value="Y"
                                                            {{ $fomparamdata->roominclusive == 'Y' ? 'selected' : '' }}>Yes
                                                        </option>
                                                        <option value="N"
                                                            {{ $fomparamdata->roominclusive == 'N' ? 'selected' : '' }}>No
                                                        </option>
                                                    </select>
                                                    @error('roominclusive')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="addroomreservation" class="col-form-label">Add Room
                                                        Reservation</label>
                                                    <select id="addroomreservation" name="addroomreservation"
                                                        class="form-control">
                                                        <option value="Y"
                                                            {{ $fomparamdata->addroomreservation == 'Y' ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="N"
                                                            {{ $fomparamdata->addroomreservation == 'N' ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('addroomreservation')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="fssaicode" class="col-form-label">FSSAI Code</label>
                                                    <input type="text" id="fssaicode" name="fssaicode"
                                                        class="form-control"
                                                        value="{{ $fomparamdata->fssaicode ?? '' }}">
                                                    @error('fssaicode')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="displayplanonprint" class="col-form-label">Display Plan On
                                                        Print</label>
                                                    <select id="displayplanonprint" name="displayplanonprint"
                                                        class="form-control">
                                                        <option value="Y"
                                                            {{ ($fomparamdata->displayplanonprint ?? '') == 'Y' ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="N"
                                                            {{ ($fomparamdata->displayplanonprint ?? '') == 'N' ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('displayplanonprint')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="allowbelow18" class="col-form-label">Allow Below 18
                                                        Year</label>
                                                    <select id="allowbelow18" name="allowbelow18" class="form-control">
                                                        <option value="1"
                                                            {{ ($fomparamdata->allowbelow18 ?? 0) == 1 ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="0"
                                                            {{ ($fomparamdata->allowbelow18 ?? 0) == 0 ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('allowbelow18')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                </div>

                                                <div class="col-md-4">
                                                    <label for="roomrateeditable" class="col-form-label">Room Rate
                                                        Editable</label>
                                                    <select id="roomrateeditable" name="roomrateeditable"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->roomrateeditable))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->roomrateeditable }}">
                                                                {{ $value = $fomparamdata->roomrateeditable == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('roomrateeditable')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="roominctaxeditable" class="col-form-label">Room Inc.Tax
                                                        Editable</label>
                                                    <select id="roominctaxeditable" name="roominctaxeditable"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->roominctaxeditable))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->roominctaxeditable }}">
                                                                {{ $value = $fomparamdata->roominctaxeditable == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('roominctaxeditable')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="rrinctaxdefault" class="col-form-label">Room Inc.Tax
                                                        (Default)</label>
                                                    <select id="rrinctaxdefault" name="rrinctaxdefault"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->rrinctaxdefault))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->rrinctaxdefault }}">
                                                                {{ $fomparamdata->rrinctaxdefault == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('rrinctaxdefault')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="blockinvalidtarrifinctaxyn" class="col-form-label">Block
                                                        Invalid Tarrif
                                                        Inc. Tax</label>
                                                    <select id="blockinvalidtarrifinctaxyn"
                                                        name="blockinvalidtarrifinctaxyn" class="form-control">
                                                        @if (empty($fomparamdata->blockinvalidtarrifinctaxyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option
                                                                value="{{ $fomparamdata->blockinvalidtarrifinctaxyn }}">
                                                                {{ $value = $fomparamdata->blockinvalidtarrifinctaxyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('blockinvalidtarrifinctaxyn')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="reservationexpondonsaveyn"
                                                        class="col-form-label">Reservation Expand
                                                        On Save</label>
                                                    <select id="reservationexpondonsaveyn"
                                                        name="reservationexpondonsaveyn" class="form-control">
                                                        @if (empty($fomparamdata->reservationexpondonsaveyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option
                                                                value="{{ $fomparamdata->reservationexpondonsaveyn }}">
                                                                {{ $value = $fomparamdata->reservationexpondonsaveyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('reservationexpondonsaveyn')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="fombillcopies">Bill
                                                        Copies</label>
                                                    <input type="text" value="{{ $fomparamdata->fombillcopies }}"
                                                        name="fombillcopies"
                                                        oninput="checkNumMax(this, 1); MaxVal(this, 9);"
                                                        id="fombillcopies" class="form-control">
                                                    <span id="countryname_error" class="text-danger"></span>
                                                    @error('fombillcopies')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="plancalc" class="col-form-label">Plan Calculation</label>
                                                    <select id="plancalc" name="plancalc" class="form-control">
                                                        @if (empty($fomparamdata->plancalc))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->plancalc }}">
                                                                {{ $fomparamdata->plancalc == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('plancalc')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="autofillroomres" class="col-form-label">Auto Fill Room
                                                        Res.</label>
                                                    <select id="autofillroomres" name="autofillroomres"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->autofillroomres))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->autofillroomres }}">
                                                                {{ $fomparamdata->autofillroomres == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('autofillroomres')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="emptyroomyn" class="col-form-label">Empty Room Assign
                                                        Res.</label>
                                                    <select id="emptyroomyn" name="emptyroomyn" class="form-control">
                                                        @if (empty($fomparamdata->emptyroomyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->emptyroomyn }}">
                                                                {{ $fomparamdata->emptyroomyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('emptyroomyn')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="allowcheckinsubmit" class="col-form-label">Allow Check-in
                                                        Submit</label>
                                                    <select id="allowcheckinsubmit" name="allowcheckinsubmit"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->allowcheckinsubmit))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->allowcheckinsubmit }}">
                                                                {{ $fomparamdata->allowcheckinsubmit == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('allowcheckinsubmit')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="printfoodsaccode" class="col-form-label">Print Food SAC
                                                        Code</label>
                                                    <select id="printfoodsaccode" name="printfoodsaccode"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->printfoodsaccode))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->printfoodsaccode }}">
                                                                {{ $fomparamdata->printfoodsaccode == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('printfoodsaccode')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="tentativedays" class="col-form-label">Tentative Days <span
                                                            class="text-info"><b>Activated When Greater Than
                                                                0</b></span></label>
                                                    <input type="text" id="tentativedays" name="tentativedays"
                                                        class="form-control"
                                                        value="{{ $fomparamdata->tentativedays ?? '0' }}">
                                                    @error('tentativedays')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="dualprintexpsheet" class="col-form-label">Dual Print
                                                        Expense Sheet</label>
                                                    <select id="dualprintexpsheet" name="dualprintexpsheet"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->dualprintexpsheet))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->dualprintexpsheet }}">
                                                                {{ $fomparamdata->dualprintexpsheet == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('dualprintexpsheet')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="tarrifcountwise" class="col-form-label">Tarrif Count
                                                        Wise</label>
                                                    <select id="tarrifcountwise" name="tarrifcountwise"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->tarrifcountwise))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->tarrifcountwise }}">
                                                                {{ $fomparamdata->tarrifcountwise == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('tarrifcountwise')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                </div>

                                                <div class="col-md-4">
                                                    <label for="pushroomkey" class="col-form-label">Push Room Key</label>
                                                    <select id="pushroomkey" name="pushroomkey" class="form-control">
                                                        <option value="1"
                                                            {{ ($fomparamdata->pushroomkey ?? 0) == 1 ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="0"
                                                            {{ ($fomparamdata->pushroomkey ?? 0) == 0 ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('pushroomkey')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="blockwisedisp" class="col-form-label">Block Wise
                                                        Display</label>
                                                    <select id="blockwisedisp" name="blockwisedisp" class="form-control">
                                                        <option value="1"
                                                            {{ ($fomparamdata->blockwisedisp ?? 0) == 1 ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="0"
                                                            {{ ($fomparamdata->blockwisedisp ?? 0) == 0 ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('blockwisedisp')
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
                                    <input type="radio" id="tab-2" name="tabby-tabs">
                                    <label class="tabby" for="tab-2">Checkout Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="checkoutparam" id="checkoutparam"
                                            action="{{ route('checkoutparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="billprintingsummerised" class="col-form-label">Bill
                                                        Printing Summerized</label>
                                                    <select id="billprintingsummerised" name="billprintingsummerised"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->billprintingsummerised))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->billprintingsummerised }}">
                                                                {{ $value = $fomparamdata->billprintingsummerised == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('billprintingsummerised')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="taxsummary" class="col-form-label">Tax Summary In Bill
                                                        Printing</label>
                                                    <select id="taxsummary" name="taxsummary" class="form-control">
                                                        @if (empty($fomparamdata->taxsummary))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->taxsummary }}">
                                                                {{ $value = $fomparamdata->taxsummary == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('taxsummary')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="variationbefore" class="col-form-label">Variation Before
                                                        Check In Time</label>
                                                    <div class="input-group clockpicker" data-placement="left"
                                                        data-align="top" data-autoclose="true">
                                                        <input type="text" name="variationbefore" class="form-control"
                                                            value="{{ $val = $fomparamdata->variationbefore == '' ? '00:00' : substr($fomparamdata->variationbefore, 0, -3) }}">
                                                        <span class="input-group-append"><span class="input-group-text"><i
                                                                    class="fa fa-clock-o"></i></span></span>
                                                        @error('variationbefore')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>

                                                    <label for="variationafter" class="col-form-label">Variation
                                                        After
                                                        Check Out Time</label>
                                                    <div class="input-group clockpicker" data-placement="right"
                                                        data-align="top" data-autoclose="true">
                                                        <input type="text" name="variationafter" class="form-control"
                                                            value="{{ $val = $fomparamdata->variationafter == '' ? '00:00' : substr($fomparamdata->variationafter, 0, -3) }}">
                                                        <span class="input-group-append"><span class="input-group-text"><i
                                                                    class="fa fa-clock-o"></i></span></span>
                                                        @error('variationafter')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>

                                                    <label for="emailyn" class="col-form-label">Email Display</label>
                                                    <select id="emailyn" name="emailyn" class="form-control">
                                                        @if (empty($fomparamdata->emailyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->emailyn }}">
                                                                {{ $value = $fomparamdata->emailyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('emailyn')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="websiteyn" class="col-form-label">Website Display</label>
                                                    <select id="websiteyn" name="websiteyn" class="form-control">
                                                        @if (empty($fomparamdata->websiteyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->websiteyn }}">
                                                                {{ $value = $fomparamdata->websiteyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('websiteyn')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>
                                                <div class="col-md-6">
                                                    <label for="roomrentcharge" class="col-form-label">Room Rent
                                                        Charge (If Variation Before Check In Time)</label>
                                                    <select id="roomrentcharge" name="roomrentcharge"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->roomrentcharge))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->roomrentcharge }}">
                                                                {{ $value = $fomparamdata->roomrentcharge == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('roomrentcharge')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="roomrentchkoutpost" class="col-form-label">Room Rent
                                                        Posting
                                                        At Check Out (Auto/Semi)</label>
                                                    <select id="roomrentchkoutpost" name="roomrentchkoutpost"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->roomrentchkoutpost))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->roomrentchkoutpost }}">
                                                                {{ $value = $fomparamdata->roomrentchkoutpost }}
                                                            </option>
                                                        @endif
                                                        <option value="Auto">Auto</option>
                                                        <option value="Semi">Semi</option>
                                                    </select>
                                                    @error('roomrentchkoutpost')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="autosplityn" class="col-form-label">Aplit Bill
                                                        Auto</label>
                                                    <select id="autosplityn" name="autosplityn" class="form-control">
                                                        @if (empty($fomparamdata->autosplityn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->autosplityn }}">
                                                                {{ $value = $fomparamdata->autosplityn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('autosplityn')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="roomcheckoutclearanceyn" class="col-form-label">Room Check
                                                        Out
                                                        Clearance Verify</label>
                                                    <select id="roomcheckoutclearanceyn" name="roomcheckoutclearanceyn"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->roomcheckoutclearanceyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->roomcheckoutclearanceyn }}">
                                                                {{ $value = $fomparamdata->roomcheckoutclearanceyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('roomcheckoutclearanceyn')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="logoyn" class="col-form-label">Logo Display</label>
                                                    <select id="logoyn" name="logoyn" class="form-control">
                                                        @if (empty($fomparamdata->logoyn))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->logoyn }}">
                                                                {{ $value = $fomparamdata->logoyn == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('logoyn')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                    <label for="grcdatetime" class="col-form-label">Blank GRC Date
                                                        Time</label>
                                                    <select id="grcdatetime" name="grcdatetime" class="form-control">
                                                        @if (empty($fomparamdata->grcdatetime))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option
                                                                value="{{ $fomparamdata->grcdatetime == 'Y' ? 'Yes' : 'No' }}">
                                                                {{ $value = $fomparamdata->grcdatetime == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('grcdatetime')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>
                                                <div class="col-7 mt-4 ml-auto">
                                                    <button type="submit" class="btn btn-primary">Submit <i
                                                            class="fa-solid fa-file-export"></i></button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-3" name="tabby-tabs">
                                    <label class="tabby" for="tab-3">Posting Parameter</label>
                                    <div class="tabby-content">

                                        <form class="form" name="postingparam" id="postingparam"
                                            action="{{ route('postingparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="roomchrgdueac">Room Charge Due
                                                        Account</label>
                                                    <select id="roomchrgdueac" name="roomchrgdueac" class="form-control">
                                                        @if (empty($fomparamdata->roomchrgdueac))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->roomchrgdueac }}">
                                                                {{ $roomchrgdueac }}
                                                            </option>
                                                        @endif
                                                        @foreach ($ledgerdatamain as $list)
                                                            <option value="{{ $list->sub_code }}">
                                                                {{ $list->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('roomchrgdueac')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="postroomdiscseparately">
                                                        Post Room Disc. Separately
                                                    </label>
                                                    <select id="postroomdiscseparately" name="postroomdiscseparately"
                                                        class="form-control">
                                                        <option value=""
                                                            {{ empty($fomparamdata->postroomdiscseparately) ? 'selected' : '' }}>
                                                            Select</option>
                                                        <option value="Y"
                                                            {{ ($fomparamdata->postroomdiscseparately ?? '') == 'Y' ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="N"
                                                            {{ ($fomparamdata->postroomdiscseparately ?? '') == 'N' ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                    @error('postroomdiscseparately')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="plantariffnarration">Plan Tariff
                                                        Narration</label>
                                                    <input type="text"
                                                        value="{{ $fomparamdata->plantariffnarration }}"
                                                        name="plantariffnarration" id="plantariffnarration"
                                                        class="form-control">
                                                    <span id="countryname_error" class="text-danger"></span>
                                                    @error('plantariffnarration')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="guestchargesdeletelog">Maintain
                                                        Guest Charges Delete Log</label>
                                                    <select id="guestchargesdeletelog" name="guestchargesdeletelog"
                                                        class="form-control">
                                                        @if (empty($fomparamdata->guestchargesdeletelog))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $fomparamdata->guestchargesdeletelog }}">
                                                                {{ $value = $fomparamdata->guestchargesdeletelog == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('guestchargesdeletelog')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>

                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="roundofftype">Round Of Type</label>
                                                    <select id="roundofftype" name="roundofftype" class="form-control">
                                                        @if (empty($fomparamdata->roundofftype))
                                                            <option value="Standard">Standard</option>
                                                        @endif
                                                        <option value="Upper"
                                                            {{ $fomparamdata->roundofftype == 'Upper' ? 'selected' : '' }}>
                                                            Upper</option>
                                                        <option value="Standard"
                                                            {{ $fomparamdata->roundofftype == 'Standard' ? 'selected' : '' }}>
                                                            Standard</option>
                                                    </select>

                                                    @error('roundofftype')
                                                        <span class="text-danger">{{ $message }}</span>
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
                                    <label class="tabby" for="tab-4">Rate Type</label>
                                    <div class="tabby-content">
                                        <form class="form" name="rateparam" id="rateparam"
                                            action="{{ route('rateparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="rate1">Rate 1</label>
                                                    <input type="text" value="{{ $fomparamdata->rate1 }}"
                                                        name="rate1" id="rate1" class="form-control">
                                                    @error('rate1')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="rate2">Rate 2</label>
                                                    <input type="text" value="{{ $fomparamdata->rate2 }}"
                                                        name="rate2" id="rate2" class="form-control">
                                                    @error('rate2')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="rate3">Rate 3</label>
                                                    <input type="text" value="{{ $fomparamdata->rate3 }}"
                                                        name="rate3" id="rate3" class="form-control">
                                                    @error('rate3')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6">

                                                    <label class="col-form-label" for="rate4">Rate 4</label>
                                                    <input type text="text" value="{{ $fomparamdata->rate4 }}"
                                                        name="rate4" id="rate4" class="form-control">
                                                    @error('rate4')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="rate5">Rate 5</label>
                                                    <input type="text" value="{{ $fomparamdata->rate5 }}"
                                                        name="rate5" id="rate5" class="form-control">
                                                    @error('rate5')
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
                                    <input type="radio" id="tab-5" name="tabby-tabs">
                                    <label class="tabby" for="tab-5">Instructions (Res.)</label>
                                    <div class="tabby-content">
                                        <form class="form" name="instructionparam" id="instructionparam"
                                            action="{{ route('instructionparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="resinstruction1">Instruction
                                                        1</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction1 }}"
                                                        name="resinstruction1" id="resinstruction1" class="form-control">
                                                    @error('resinstruction1')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction2">Instruction
                                                        2</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction2 }}"
                                                        name="resinstruction2" id="resinstruction2" class="form-control">
                                                    @error('resinstruction2')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction3">Instruction
                                                        3</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction3 }}"
                                                        name="resinstruction3" id="resinstruction3" class="form-control">
                                                    @error('resinstruction3')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction4">Instruction
                                                        4</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction4 }}"
                                                        name="resinstruction4" id="resinstruction4" class="form-control">
                                                    @error('resinstruction4')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction5">Instruction
                                                        5</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction5 }}"
                                                        name="resinstruction5" id="resinstruction5" class="form-control">
                                                    @error('resinstruction5')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction6">Instruction
                                                        6</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction6 }}"
                                                        name="resinstruction6" id="resinstruction6" class="form-control">
                                                    @error('resinstruction6')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                </div>
                                                <div class="col-md-6">

                                                    <label class="col-form-label" for="resinstruction7">Instruction
                                                        7</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction7 }}"
                                                        name="resinstruction7" id="resinstruction7" class="form-control">
                                                    @error('resinstruction7')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction8">Instruction
                                                        8</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction8 }}"
                                                        name="resinstruction8" id="resinstruction8" class="form-control">
                                                    @error('resinstruction8')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction9">Instruction
                                                        9</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction9 }}"
                                                        name="resinstruction9" id="resinstruction9" class="form-control">
                                                    @error('resinstruction9')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction10">Instruction
                                                        10</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction10 }}"
                                                        name="resinstruction10" id="resinstruction10"
                                                        class="form-control">
                                                    @error('resinstruction10')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction11">Instruction
                                                        11</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction11 }}"
                                                        name="resinstruction11" id="resinstruction11"
                                                        class="form-control">
                                                    @error('resinstruction11')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="resinstruction12">Instruction
                                                        12</label>
                                                    <input type="text" value="{{ $fomparamdata->resinstruction12 }}"
                                                        name="resinstruction12" id="resinstruction12"
                                                        class="form-control">
                                                    @error('resinstruction12')
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
                                    <input type="radio" id="tab-6" name="tabby-tabs">
                                    <label class="tabby" for="tab-6">House Keeping</label>
                                    <div class="tabby-content">
                                        <form class="form" name="housekeeping" id="housekeeping"
                                            action="{{ route('housekeepingparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="autoroomassign">
                                                        Auto Room Assign</label>
                                                    <select id="autoroomassign" name="autoroomassign"
                                                        class="form-control">
                                                        @if (!is_null($fomparamdata->autoroomassign))
                                                            <option value="{{ $fomparamdata->autoroomassign }}" selected>
                                                                {{ $fomparamdata->autoroomassign == 1 ? 'Yes' : 'No' }}
                                                            </option>
                                                        @else
                                                            <option value="" selected>Select</option>
                                                        @endif

                                                        <option value="1">Yes</option>
                                                        <option value="0">No</option>
                                                    </select>
                                                    @error('autoroomassign')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="housekeepingroomstatus">
                                                        Housekeeping Room Status</label>
                                                    <select id="housekeepingroomstatus" name="housekeepingroomstatus"
                                                        class="form-control">
                                                        @if (!is_null($fomparamdata->housekeepingroomstatus))
                                                            <option value="{{ $fomparamdata->housekeepingroomstatus }}"
                                                                selected>
                                                                {{ $fomparamdata->housekeepingroomstatus == 1 ? 'Yes' : 'No' }}
                                                            </option>
                                                        @else
                                                            <option value="" selected>Select</option>
                                                        @endif

                                                        <option value="1">Yes</option>
                                                        <option value="0">No</option>
                                                    </select>
                                                    @error('housekeepingroomstatus')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="googlereviewurl">
                                                        Google Review URL</label>
                                                    <input type="text" id="googlereviewurl" name="googlereviewurl"
                                                        class="form-control"
                                                        value="{{ old('googlereviewurl', $fomparamdata->googlereviewurl ?? '') }}">
                                                    @error('googlereviewurl')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="deptnotificationyn">
                                                        Department Wise Notification</label>
                                                    <select id="deptnotificationyn" name="deptnotificationyn"
                                                        class="form-control">
                                                        @php $deptnotif = old('deptnotificationyn', $fomparamdata->deptnotificationyn ?? 1); @endphp
                                                        <option value="1" {{ $deptnotif == 1 ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="0" {{ $deptnotif == 0 ? 'selected' : '' }}>No
                                                        </option>
                                                    </select>
                                                    @error('deptnotificationyn')
                                                        <span class="text-danger">{{ $message }}</span>
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
                                    <input type="radio" id="tab-7" name="tabby-tabs">
                                    <label class="tabby" for="tab-7">Instructions (GRC)</label>
                                    <div class="tabby-content">
                                        <form class="form" name="grcinstructionparam" id="grcinstructionparam"
                                            action="{{ route('grcinstructionparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="grcinstruction1">Instruction
                                                        1</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction1 }}"
                                                        name="grcinstruction1" id="grcinstruction1" class="form-control">
                                                    @error('grcinstruction1')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction2">Instruction
                                                        2</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction2 }}"
                                                        name="grcinstruction2" id="grcinstruction2" class="form-control">
                                                    @error('grcinstruction2')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction3">Instruction
                                                        3</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction3 }}"
                                                        name="grcinstruction3" id="grcinstruction3" class="form-control">
                                                    @error('grcinstruction3')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction4">Instruction
                                                        4</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction4 }}"
                                                        name="grcinstruction4" id="grcinstruction4" class="form-control">
                                                    @error('grcinstruction4')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction5">Instruction
                                                        5</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction5 }}"
                                                        name="grcinstruction5" id="grcinstruction5" class="form-control">
                                                    @error('grcinstruction5')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction6">Instruction
                                                        6</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction6 }}"
                                                        name="grcinstruction6" id="grcinstruction6" class="form-control">
                                                    @error('grcinstruction6')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                </div>
                                                <div class="col-md-6">

                                                    <label class="col-form-label" for="grcinstruction7">Instruction
                                                        7</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction7 }}"
                                                        name="grcinstruction7" id="grcinstruction7" class="form-control">
                                                    @error('grcinstruction7')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction8">Instruction
                                                        8</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction8 }}"
                                                        name="grcinstruction8" id="grcinstruction8" class="form-control">
                                                    @error('grcinstruction8')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction9">Instruction
                                                        9</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction9 }}"
                                                        name="grcinstruction9" id="grcinstruction9" class="form-control">
                                                    @error('grcinstruction9')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction10">Instruction
                                                        10</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction10 }}"
                                                        name="grcinstruction10" id="grcinstruction10"
                                                        class="form-control">
                                                    @error('grcinstruction10')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction11">Instruction
                                                        11</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction11 }}"
                                                        name="grcinstruction11" id="grcinstruction11"
                                                        class="form-control">
                                                    @error('grcinstruction11')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="grcinstruction12">Instruction
                                                        12</label>
                                                    <input type="text" value="{{ $fomparamdata->grcinstruction12 }}"
                                                        name="grcinstruction12" id="grcinstruction12"
                                                        class="form-control">
                                                    @error('grcinstruction12')
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
    </div>
@endsection
