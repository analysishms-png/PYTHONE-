@extends('property.layouts.main')
@section('main-container')
    <style>
        table#posbillprint tbody td {
            padding: 1px 1px 1px 1px;
        }

        table#poskotprint tbody td {
            padding: 1px 1px 1px 1px;
        }
    </style>
    <div class="content-body">
        <!-- row -->
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="tabs">
                                {{-- General Parameter --}}
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-1" name="tabby-tabs" checked>
                                    <label class="tabby" for="tab-1">General Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="generalparam" id="generalparam"
                                            action="{{ route('posgeneralparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="kotatnightaudit" class="col-form-label">Message for Pending KOTs at Night Audit</label>
                                                    <select id="kotatnightaudit" name="kotatnightaudit"
                                                        class="form-control">
                                                        @if (empty($data->kotatnightaudit))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->kotatnightaudit }}">
                                                                {{ $value = $data->kotatnightaudit == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('kotatnightaudit')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label"
                                                        for="posbillatnightaudit">Message for Unsettled Bill at Night Audit</label>
                                                    <select id="posbillatnightaudit" name="posbillatnightaudit" class="form-control">
                                                        @if (empty($data->posbillatnightaudit))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->posbillatnightaudit }}">
                                                                {{ $value = $data->posbillatnightaudit == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('posbillatnightaudit')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label"
                                                        for="extradiscountallow">Extra Discount Allow</label>
                                                    <select id="extradiscountallow" name="extradiscountallow" class="form-control">
                                                        @if (empty($data->extradiscountallow))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->extradiscountallow }}">
                                                                {{ $value = $data->extradiscountallow == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('extradiscountallow')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                </div>

                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="possalebillauditlog">Maintain Pos Bill Edit log</label>
                                                    <select id="possalebillauditlog" name="possalebillauditlog"
                                                        class="form-control">
                                                        @if (empty($data->possalebillauditlog))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->possalebillauditlog }}">
                                                                {{ $value = $data->possalebillauditlog == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('possalebillauditlog')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="modifyentryinbackdate" class="col-form-label">Modify Entry Back Date</label>
                                                    <select id="modifyentryinbackdate" name="modifyentryinbackdate" class="form-control">
                                                        @if (empty($data->modifyentryinbackdate))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->modifyentryinbackdate }}">
                                                                {{ $value = $data->modifyentryinbackdate == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('modifyentryinbackdate')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="waitingtime" class="col-form-label">Booking Waiting Time</label>
                                                    <input type="time" value="{{ $data->waitingtime == null ? date('H:i') : $data->waitingtime }}" name="waitingtime" id="waitingtime" class="form-control">
                                                    @error('waitingtime')
                                                        <span class="text-danger"> {{ $message }} </span>
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

                                {{-- Outlet Parameter --}}

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-2" name="tabby-tabs">
                                    <label class="tabby" for="tab-2">Outlet Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="generalparam" id="generalparam"
                                            action="{{ route('posoutletparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="cashpaytype" class="col-form-label">Cash Payment Type</label>
                                                    <select id="cashpaytype" name="cashpaytype" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach ($revmast as $item)
                                                            <option value="{{ $item->rev_code }}" {{ isset($data->cashpaytype) && $item->rev_code == $data->cashpaytype ? 'selected' : '' }}>
                                                                {{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('cashpaytype')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="roundofftype">Round Of Type</label>
                                                    <select id="roundofftype" name="roundofftype" class="form-control">
                                                        @if (empty($data->roundofftype))
                                                            <option value="Standard">Standard</option>
                                                        @endif
                                                        <option value="Upper" {{ $data->roundofftype == 'Upper' ? 'selected' : '' }}>Upper</option>
                                                        <option value="Standard" {{ $data->roundofftype == 'Standard' ? 'selected' : '' }}>Standard</option>
                                                    </select>

                                                    @error('roundofftype')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="salebillfont">Sale Bill Font Size</label>
                                                    <input type="number" id="salebillfont" name="salebillfont" class="form-control" value="{{ $data->salebillfont ?? '' }}">


                                                    <label class="col-form-label" for="paymentqrdisplay">Display Payment QR</label>
                                                    <select id="paymentqrdisplay" name="paymentqrdisplay"
                                                        class="form-control">
                                                        @if (empty($data->paymentqrdisplay))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->paymentqrdisplay }}">
                                                                {{ $value = $data->paymentqrdisplay == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('paymentqrdisplay')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                </div>

                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="reportingonsalebill">Reprint on Sale Bill</label>
                                                    <select id="reportingonsalebill" name="reportingonsalebill"
                                                        class="form-control">
                                                        @if (empty($data->reportingonsalebill))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->reportingonsalebill }}">
                                                                {{ $value = $data->reportingonsalebill == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('reportingonsalebill')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="postposdiscseperately" class="col-form-label">Post POS Disc Separately </label>
                                                    <select id="postposdiscseperately" name="postposdiscseperately" class="form-control">
                                                        @if (empty($data->postposdiscseperately))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->postposdiscseperately }}">
                                                                {{ $value = $data->postposdiscseperately == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('postposdiscseperately')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="taxsummaryonsalebill" class="col-form-label">Tax Summary On Sale Bill </label>
                                                    <select id="taxsummaryonsalebill" name="taxsummaryonsalebill" class="form-control">
                                                        @if (empty($data->taxsummaryonsalebill))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->taxsummaryonsalebill }}">
                                                                {{ $value = $data->taxsummaryonsalebill == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('taxsummaryonsalebill')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="itemwisediscountprint" class="col-form-label">Item Wise Discount Print </label>
                                                    <select id="itemwisediscountprint" name="itemwisediscountprint" class="form-control">
                                                        @if (empty($data->itemwisediscountprint))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->itemwisediscountprint }}">
                                                                {{ $value = $data->itemwisediscountprint == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('itemwisediscountprint')
                                                        <span class="text-danger"> {{ $message }} </span>
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

                                {{-- KOT Parameter --}}
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-3" name="tabby-tabs">
                                    <label class="tabby" for="tab-3">KOT Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="generalparam" id="generalparam"
                                            action="{{ route('poskotparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="printkot" class="col-form-label">Print KOT</label>
                                                    <select id="printkot" name="printkot" class="form-control">
                                                        @if (empty($data->printkot))
                                                            <option value="">Select</option>
                                                        @endif
                                                        <option value="For All Kitchen" {{ $data->printkot == 'For All Kitchen' ? 'selected' : '' }}>For All Kitchen</option>
                                                        <option value="Seperate For All Kitchen" {{ $data->printkot == 'Seperate For All Kitchen' ? 'selected' : '' }}>Seperate For All Kitchen</option>
                                                    </select>
                                                    @error('printkot')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="printeditkot">Print Edit KOT</label>
                                                    <select id="printeditkot" name="printeditkot" class="form-control">
                                                        @if (empty($data->printeditkot))
                                                            <option value="">Select</option>
                                                        @endif
                                                        <option value="All Items" {{ $data->printeditkot == 'All Items' ? 'selected' : '' }}>All Items</option>
                                                        <option value="No Print" {{ $data->printeditkot == 'No Print' ? 'selected' : '' }}>No Print</option>
                                                        <option value="Void Items" {{ $data->printeditkot == 'Void Items' ? 'selected' : '' }}>Void Items</option>
                                                    </select>

                                                    @error('printeditkot')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="kotoutletselection">Outlet Selection</label>
                                                    <select id="kotoutletselection" name="kotoutletselection"
                                                        class="form-control">
                                                        @if (empty($data->kotoutletselection))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->kotoutletselection }}">
                                                                {{ $value = $data->kotoutletselection == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('kotoutletselection')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="nckot" class="col-form-label">NC KOT %</label>
                                                    <input type="number" min="0.01" max="99.99" step="0.01" value="{{ $data->nckot }}"
                                                        placeholder="Enter Percentage" name="nckot" id="nckot"
                                                        oninput="checkNumMax(this, 5);" class="form-control">
                                                    @error('nckot')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label class="col-form-label" for="printkotrate">Print Rate KOT </label>
                                                    <select id="printkotrate" name="printkotrate"
                                                        class="form-control">
                                                        @if (empty($data->printkotrate))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->printkotrate }}">
                                                                {{ $value = $data->printkotrate == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('printkotrate')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="printkotautoqr">Print Kot Auto Qr Order </label>
                                                    <select id="printkotautoqr" name="printkotautoqr"
                                                        class="form-control">
                                                        @if (empty($data->printkotautoqr))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->printkotautoqr }}">
                                                                {{ $value = $data->printkotautoqr == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('printkotautoqr')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                </div>

                                                <div class="col-md-6">
                                                    <label for="kotheader1" class="col-form-label">Print KOT Header 1</label>
                                                    <input type="text" value="{{ $data->kotheader1 }}" placeholder="Enter Header 1" class="form-control" name="kotheader1" id="kotheader1">
                                                    @error('kotheader1')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                    <label for="kotheader2" class="col-form-label">Print KOT Header 2</label>
                                                    <input type="text" value="{{ $data->kotheader2 }}" placeholder="Enter Header 2" class="form-control" name="kotheader2" id="kotheader2">
                                                    @error('kotheader2')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                    <label for="kotheader3" class="col-form-label">Print KOT Header 3</label>
                                                    <input type="text" value="{{ $data->kotheader3 }}" placeholder="Enter Header 3" class="form-control" name="kotheader3" id="kotheader3">
                                                    @error('kotheader3')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                    <label for="kotheader4" class="col-form-label">Print KOT Header 4</label>
                                                    <input type="text" value="{{ $data->kotheader4 }}" placeholder="Enter Header 4" class="form-control" name="kotheader4" id="kotheader4">
                                                    @error('kotheader4')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label for="system_based_printing" class="col-form-label">System Based Printing</label>
                                                    <select id="system_based_printing" name="system_based_printing" class="form-control">
                                                        <option value="Y" {{ isset($data->system_based_printing) && $data->system_based_printing == 'Y' ? 'selected' : '' }}>Yes</option>
                                                        <option value="N" {{ isset($data->system_based_printing) && $data->system_based_printing == 'N' ? 'selected' : '' }}>No</option>
                                                    </select>
                                                    @error('system_based_printing')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror

                                                    <label class="col-form-label" for="displaymergedoutlet">Display Merged Outlet In Qr View </label>
                                                    <select id="displaymergedoutlet" name="displaymergedoutlet"
                                                        class="form-control">
                                                        @if (empty($data->displaymergedoutlet))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ $data->displaymergedoutlet }}">
                                                                {{ $value = $data->displaymergedoutlet == 'Y' ? 'Yes' : 'No' }}
                                                            </option>
                                                        @endif
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                    @error('displaymergedoutlet')
                                                        <span class="text-danger"> {{ $message }} </span>
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

                                {{-- Order Booking Parameter --}}

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-4" name="tabby-tabs">
                                    <label class="tabby" for="tab-4">Order Booking Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="orderbookingparam" id="orderbookingparam"
                                            action="{{ route('posorderparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="bookingpartyac" class="col-form-label">Booking Party Account</label>
                                                    <select id="bookingpartyac" name="bookingpartyac" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach ($subgroup as $item)
                                                            <option value="{{ $item->sub_code }}" {{ isset($data->bookingpartyac) && $item->sub_code == $data->bookingpartyac ? 'selected' : '' }}>
                                                                {{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('bookingpartyac')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                    <label for="slipfooter1" class="col-form-label">Slip Footer 1</label>
                                                    <input type="text" value="{{ $data->slipfooter1 }}" placeholder="Enter Slip Footer 1" class="form-control" name="slipfooter1" id="slipfooter1">
                                                    @error('slipfooter1')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                </div>

                                                <div class="col-md-6">
                                                    <label for="slipfooter2" class="col-form-label">Slip Footer 2</label>
                                                    <input type="text" value="{{ $data->slipfooter2 }}" placeholder="Enter Slip Footer 2" class="form-control" name="slipfooter2" id="slipfooter2">
                                                    @error('slipfooter2')
                                                        <span class="text-danger"> {{ $message }} </span>
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
                                {{-- Posting Parameter --}}

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-5" name="tabby-tabs">
                                    <label class="tabby" for="tab-5">Posting Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="postingparam" id="postingparam"
                                            action="{{ route('pospostingparamstore') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="roomchrgdueac">Room Charge Due
                                                        Account</label>
                                                    <select id="roomchrgdueac" name="roomchrgdueac" class="form-control">
                                                        @if (empty(fomparameter()->roomchrgdueac))
                                                            <option value="">Select</option>
                                                        @else
                                                            <option value="{{ fomparameter()->roomchrgdueac }}">
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
                                                </div>

                                                <div class="col-7 mt-4 ml-auto">
                                                    <button type="submit" class="btn btn-primary">Submit <i
                                                            class="fa-solid fa-file-export"></i></button>
                                                </div>
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
    <!-- #/ container -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
@endsection
