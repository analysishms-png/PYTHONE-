@extends('property.layouts.main')
@section('main-container')

<style>
#chargedetail td, #chargedetail th { vertical-align: middle !important; padding: 4px 5px !important; }
#chargedetail .form-control-sm { height: 28px; padding: 2px 5px; }
#chargedetail .rowgstpct { min-width: 58px; }
#chargedetail td.rowamt, #chargedetail td.rowgstamt, #chargedetail td.rowtotal { white-space: nowrap; padding-right: 8px !important; }
.bill-actions { display: grid; grid-template-columns: repeat(2, 28px); justify-content: center; gap: 4px; }
.bill-actions .btn { width: 28px; height: 27px; padding: 2px 0 !important; display: inline-flex; align-items: center; justify-content: center; }
.mailstate { font-size: 9.5px; font-weight: 600; letter-spacing: .3px; }
</style>

<div class="content-body">
    <div class="container-fluid">

        <div class="row mb-2">
            <div class="col-12">
                <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div>
                            <h4 class="font-weight-bold mb-0">Manual Bill Entry (Charge-wise)</h4>
                        <small class="text-muted">Mall Management &rsaquo; Billing &rsaquo; Manual Bill Entry</small>
                    </div>
                    {{-- Save button ab Remarks card ke neeche hai (header se hata diya) --}}
                </div>
            </div>
        </div>

        <form id="servicebillentryform">
            @csrf

            {{-- HIDDEN DATA --}}
            <input type="hidden" id="floorsjson" value="{{ json_encode($floors) }}">
            <input type="hidden" id="revheadsjson" value="{{ json_encode($revheads ?? collect()) }}">
            <input type="hidden" id="sundryjson" value="{{ json_encode($sundry ?? collect()) }}">

            <div class="row">

                {{-- LEFT COLUMN --}}
                <div class="col-lg-8 col-12">

                    {{-- 1. Tenant & Shop Details --}}
                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">1. Tenant &amp; Shop Details</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="form-group row mb-1">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Tenant <span class="text-danger">*</span></label>
                                <div class="col-md-9">
                                    <select class="form-control form-control-sm" id="tenantid" name="tenantid" required>
                                        <option value="">-- Select Tenant --</option>
                                        @foreach($tenants as $t)
                                            <option value="{{ $t->sub_code }}">{{ $t->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Shops / Units</label>
                                <div class="col-md-9">
                                    <div id="shopchecklistwrap" class="border rounded p-2 bg-light" style="min-height:38px; font-size:12px;">
                                        <span class="text-muted">-- Shops will appear here after selecting a tenant --</span>
                                    </div>
                                    {{-- hidden for save compatibility --}}
                                    <input type="hidden" id="unitid" name="unitid" value="">
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Floor</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="floor" name="floor" readonly>
                                </div>
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Contact Person</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="contactperson" name="contactperson" readonly>
                                </div>
                            </div>
                            <div class="form-group row mb-0">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Mobile</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="mobile" name="mobile" readonly>
                                </div>
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Email</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="email" name="email" readonly>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- 2. Bill Information --}}
                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">2. Bill Information</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="form-group row mb-1">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Charge <span class="text-danger">*</span></label>
                                <div class="col-md-5">
                                    <select class="form-control form-control-sm" id="chargecode" name="chargecode" required>
                                        <option value="">-- Select Charge --</option>
                                    </select>
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Bill No.</label>
                                <div class="col-md-2">
                                    <input type="text" class="form-control form-control-sm" id="billno" name="billno" readonly placeholder="--">
                                </div>
                            </div>
                            <div class="form-group row mb-0">
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Billing Date <span class="text-danger">*</span></label>
                                <div class="col-md-2">
                                    <input type="date" class="form-control form-control-sm" id="billdate" name="billdate" value="{{ date('Y-m-d') }}" required>
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Due Date</label>
                                <div class="col-md-2">
                                    <input type="date" class="form-control form-control-sm" id="duedate" readonly>
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Billing Period <span class="text-danger">*</span></label>
                                <div class="col-md-2">
                                    <input type="month" class="form-control form-control-sm" id="billingperiod" name="billingperiod" value="{{ substr($billingDate, 0, 7) }}" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- 3. Charge Details --}}
                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                            <strong style="font-size:12px;">3. Charge Details</strong>
                            <div>
                                <a href="javascript:void(0)" class="btn btn-sm btn-primary" id="fetchagreement"><i class="fa fa-eye"></i> View Agreement</a>
                                <button type="button" class="btn btn-sm btn-light" id="addrow"><i class="fa fa-arrow-down"></i> Add Row</button>
                            </div>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="form-group row mb-2">
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Calculation Method</label>
                                <div class="col-md-2">
                                    <select class="form-control form-control-sm" id="calcmethod">
                                        <option>Per Sq.Ft</option>
                                    </select>
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Area Type</label>
                                <div class="col-md-2">
                                    <select class="form-control form-control-sm" id="areatype">
                                        <option>Chargeable Area</option>
                                    </select>
                                </div>
                                <label class="col-md-1 col-form-label col-form-label-sm text-muted">Area</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm text-right" id="areaval" readonly>
                                </div>
                            </div>
                            <div class="form-group row mb-2">
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">From Period <span class="text-danger">*</span></label>
                                <div class="col-md-4">
                                    <input type="month" class="form-control form-control-sm" id="fromperiod" name="fromperiod" value="{{ substr($billingDate, 0, 7) }}" required>
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">To Period <span class="text-danger">*</span></label>
                                <div class="col-md-4">
                                    <input type="month" class="form-control form-control-sm" id="toperiod" name="toperiod" value="{{ substr($billingDate, 0, 7) }}" required>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table id="chargedetail" class="table table-bordered table-hover table-striped mb-0" style="min-width:900px; font-size:12px;">
                                    <thead class="thead-light text-muted" style="font-size:11px;">
                                        <tr>
                                            <th style="width:28px;"><input type="checkbox" id="chkall"></th>
                                            <th style="width:32px;" class="text-center">S.No.</th>
                                            <th style="min-width:140px;">Description</th>
                                            <th style="width:60px;" class="text-center">Basis</th>
                                            <th style="width:85px;" class="text-right">Area</th>
                                            <th style="width:85px;" class="text-right">Rate </th>
                                            <th style="width:110px;" class="text-right">Amount </th>
                                            <th style="width:58px;" class="text-center">GST %</th>
                                            <th style="width:110px;" class="text-right">GST Amt </th>
                                            <th style="width:110px;" class="text-right">Total </th>
                                            <th style="min-width:80px;">Remarks</th>
                                            <th style="width:42px;" class="text-center">Del</th>
                                        </tr>
                                    </thead>
                                    <tbody id="chargedetails_tbody">
                                        <tr id="emptyrow"><td colspan="12" class="text-center text-muted">Select a tenant and unit, then click <strong>Fetch from Agreement</strong></td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    {{-- 6. Previous Bills --}}
                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">6. Previous Bills (All Charges)</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped mb-0">
                                    <thead class="thead-light text-muted" style="font-size:11px;">
                                        <tr>
                                            <th>S.No.</th>
                                            <th>Bill No.</th>
                                            <th>Bill Date</th>
                                            <th>Period</th>
                                            <th class="text-right">Amount </th>
                                            <th class="text-right">Balance </th>
                                            <th>Status</th>
                                            <th class="text-center" style="width:90px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="prevbills_tbody">
                                            @php $pbSno = 0; @endphp
                                            @forelse($prevBills ?? [] as $pb)
                                                @php $pbSno++; @endphp
                                                <tr data-docid="{{ $pb->docid }}">
                                                    <td>{{ $pbSno }}</td>
                                                    <td>{{ $pb->vno }}</td>
                                                    <td>{{ date('d-m-Y', strtotime($pb->vdate)) }}</td>
                                                    <td>{{ date('Y-m', strtotime($pb->fromperiod)) }} to {{ date('Y-m', strtotime($pb->toperiod)) }}</td>
                                                    <td class="text-right">{{ number_format($pb->amount, 2) }}</td>
                                                    <td class="text-right">{{ number_format($pb->amount, 2) }}</td>
                                                    <td class="align-middle">
                                                        <span class="paystate">UNPAID</span>
                                                        <span class="mailstate badge badge-light border d-block mt-1">NOT SENT</span>
                                                    </td>
                                                    <td class="text-center align-middle">
                                                        <div class="bill-actions">
                                                        <button type="button" class="btn btn-sm btn-primary py-0 px-1 editbill" data-docid="{{ $pb->docid }}" title="Edit"><i class="fa fa-pencil"></i></button>
                                                        <a href="{{ route('servicebillentry.print', ['docid' => $pb->docid]) }}" target="_blank" class="btn btn-sm btn-info py-0 px-1" title="Print"><i class="fa fa-print"></i></a>
                                                        <button type="button" class="btn btn-sm btn-success py-0 px-1 sendbill" data-docid="{{ $pb->docid }}" title="Send Email"><i class="fa fa-envelope"></i></button>
                                                        <button type="button" class="btn btn-sm btn-danger py-0 px-1 deletebill" data-docid="{{ $pb->docid }}" data-vno="{{ $pb->vno }}" title="Delete"><i class="fa fa-trash"></i></button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            @empty
                                                <tr><td colspan="8" class="text-center text-muted">No previous bills</td></tr>
                                            @endforelse
                                        </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>

                {{-- RIGHT COLUMN --}}
                <div class="col-lg-4 col-12">

                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">Bill Summary</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            {{-- Dynamic sundry rows (purchase bill style) --}}
                            @foreach($sundry ?? [] as $sitem)
                                @php
                                    $snature   = strtolower(trim($sitem->nature ?? ''));
                                    $isManual  = strtolower(trim($sitem->automanual ?? 'a')) === 'manual';
                                    $isDiscount= in_array($snature, ['discount','redemption']);
                                    $isAmount  = $snature === 'amount';
                                    $isNet     = str_contains($snature, 'net');
                                    $isRound   = str_contains($snature, 'round');
                                    $isTax     = in_array($snature, ['cgst','sgst','igst','cess']);
                                    $isBold    = ($sitem->bold ?? 'N') === 'Y' || $isNet;
                                    $natureKey = strtolower(str_replace(' ','',$sitem->nature ?? ''));
                                @endphp

                                @if($isAmount)
                                    {{-- AMOUNT row = base total from charge lines --}}
                                    <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                        <span class="text-muted">{{ $sitem->disp_name }}</span>
                                        <span id="sundry_amt_amount">0.00</span>
                                    </div>

                                @elseif($isDiscount)
                                    {{-- DISCOUNT row — manual input field (purchase bill style) --}}
                                    <div class="mb-1" style="font-size:12px;">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <span class="text-muted">{{ $sitem->disp_name }}</span>
                                            <div class="d-flex align-items-center" style="gap:4px;">
                                                <input type="number" id="discountfix"
                                                    class="form-control form-control-sm text-right"
                                                    style="width:58px; font-size:11px;"
                                                    placeholder="%"
                                                    min="0" max="100" step="0.01"
                                                    value="{{ $sitem->svalue > 0 ? $sitem->svalue : '' }}">
                                                <span class="text-muted" style="font-size:11px;">%</span>
                                                <input type="number" id="discountamount"
                                                    class="form-control form-control-sm text-right"
                                                    style="width:80px; font-size:11px;"
                                                    placeholder="Amt"
                                                    min="0" step="0.01" value="0">
                                            </div>
                                        </div>
                                    </div>

                                @elseif($isTax)
                                    {{-- CGST / SGST / IGST rows --}}
                                    <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                        <span class="text-muted" id="label_{{ $natureKey }}">{{ $sitem->disp_name }}</span>
                                        <span id="sundry_amt_{{ $natureKey }}">0.00</span>
                                    </div>

                                @elseif($isRound)
                                    <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                        <span class="text-muted">{{ $sitem->disp_name }}</span>
                                        <span id="sundry_amt_roundoff">0.00</span>
                                    </div>

                                @elseif($isNet)
                                    <div class="d-flex justify-content-between mb-1" style="font-size:{{ $isBold ? '13' : '12' }}px; font-weight:{{ $isBold ? '600' : 'normal' }};">
                                        <span>{{ $sitem->disp_name }}</span>
                                        <span id="sundry_amt_netamount">0.00</span>
                                    </div>

                                @else
                                    {{-- Any other sundry row --}}
                                    <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                        <span class="text-muted">{{ $sitem->disp_name }}</span>
                                        <span id="sundry_amt_{{ $natureKey }}">0.00</span>
                                    </div>
                                @endif
                            @endforeach

                            {{-- Fallback: agar sundry configure nahi to basic rows --}}
                            @if(($sundry ?? collect())->isEmpty())
                                <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                    <span class="text-muted">Total Amount</span>
                                    <span id="sundry_amt_amount">0.00</span>
                                </div>
                                <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                    <span class="text-muted">CGST</span><span id="sundry_amt_cgst">0.00</span>
                                </div>
                                <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                    <span class="text-muted">SGST</span><span id="sundry_amt_sgst">0.00</span>
                                </div>
                                <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                    <span class="text-muted">Round Off</span><span id="sundry_amt_roundoff">0.00</span>
                                </div>
                                <div class="d-flex justify-content-between mb-1" style="font-size:13px; font-weight:600;">
                                    <span>Bill Amount</span><span id="sundry_amt_netamount">0.00</span>
                                </div>
                            @endif

                            <div class="border-top my-2"></div>
                            <div class="d-flex justify-content-between mb-1 mt-2" style="font-size:12px;">
                                <span class="text-muted">Previous Outstanding</span>
                                <span id="previousoutstanding">0.00</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2" style="font-size:15px; font-weight:600;">
                                <span>Net Payable </span>
                                <span id="netpayable">0.00</span>
                            </div>
                            <div class="border-top mt-3 pt-2" style="font-size:11px;">
                                <div class="text-muted mb-1">Amount in Words:</div>
                                <div id="amountwords">Rupees Zero Only</div>
                            </div>
                        </div>
                    </div>

                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">Remarks</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <textarea class="form-control form-control-sm" id="remarks" name="remarks" rows="3"></textarea>
                            <div class="d-flex justify-content-end mt-3">
                                <button type="button" class="btn btn-sm btn-primary" id="submitbtn"><i class="fa fa-save"></i> Save</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </form>

    </div>
</div>

<script>
(function(){
    var floors  = $('#floorsjson').val() ? JSON.parse($('#floorsjson').val()) : [];
    var revheads = $('#revheadsjson').val() ? JSON.parse($('#revheadsjson').val()) : [];
    var facilitySundry = [];
    var initialPeriod = '{{ substr($billingDate, 0, 7) }}';
    var floorMap = {};
    var editingDocid = '';
    var previousOutstanding = 0;
    var outstandingRequest = null;
    var billNoRequest = null;
    var $tenant = $('#tenantid'), $unit=$('#unitid'), $charge=$('#chargecode'), $billnogroup=$('#billno');
    floors.forEach(function(f){ floorMap[f.id] = f.name; });

    function setFacilitySundry(rows){
        facilitySundry = Array.isArray(rows) ? rows : [];
    }

    setFacilitySundry($('#sundryjson').val() ? JSON.parse($('#sundryjson').val()) : []);

    function chargeKey(value){
        return String(value || '').toUpperCase().replace(/[^A-Z0-9]/g, '');
    }

    function revHeadCode(name, chargecode){
        var un = String((name || '') + ' ' + (chargecode || '')).toUpperCase();
        var nameKey = chargeKey(name);
        var codeKey = chargeKey(chargecode);
        var match = '';
        revheads.forEach(function(r){
            var n = ((r.name || '') + ' ' + (r.rev_code || '')).toUpperCase();
            if(!match && un.indexOf('RENT') !== -1 && n.indexOf('RENT') !== -1) match = r.rev_code;
            if(!match && (un.indexOf('CAM') !== -1 || un.indexOf('COMMON') !== -1 || un.indexOf('MAINT') !== -1 || un.indexOf('RAM') !== -1)
                && (n.indexOf('CAM') !== -1 || n.indexOf('COMMON') !== -1 || n.indexOf('MAINT') !== -1 || n.indexOf('RAM') !== -1)) match = r.rev_code;
        });
        if(!match && revheads.length){
            revheads.forEach(function(r){
                var rcode = String(r.rev_code || '');
                var rname = String(r.name || '');
                if(!match && (rcode.toUpperCase() === String(chargecode || '').toUpperCase() || rcode.toUpperCase() === String(name || '').toUpperCase())) match = rcode;
                if(!match && codeKey && chargeKey(rcode) === codeKey) match = rcode;
                if(!match && nameKey.length >= 3 && (chargeKey(rname) === nameKey || chargeKey(rname).slice(-nameKey.length) === nameKey)) match = rcode;
            });
        }
        if(!match && revheads.length === 1) match = revheads[0].rev_code;
        return match;
    }

    function formatINR(n){ return Number(n).toLocaleString('en-IN', {minimumFractionDigits:2, maximumFractionDigits:2}); }
    function numToWords(num){
        if(!num || num===0) return 'Rupees Zero Only';
        var ones=['','One','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten','Eleven','Twelve','Thirteen','Fourteen','Fifteen','Sixteen','Seventeen','Eighteen','Nineteen'];
        var tens=['','','Twenty','Thirty','Forty','Fifty','Sixty','Seventy','Eighty','Ninety'];
        function below100(n){
            if(n===0) return '';
            if(n<20) return ones[n];
            return tens[Math.floor(n/10)]+(n%10?' '+ones[n%10]:'');
        }
        function below1000(n){
            if(n===0) return '';
            if(n<100) return below100(n);
            return ones[Math.floor(n/100)]+' Hundred'+(n%100?' '+below100(n%100):'');
        }
        function inWords(n){
            if(n===0) return '';
            var crore=Math.floor(n/10000000);
            n=n%10000000;
            var lakh=Math.floor(n/100000);
            n=n%100000;
            var thousand=Math.floor(n/1000);
            n=n%1000;
            var result='';
            if(crore) result+=below1000(crore)+' Crore ';
            if(lakh)  result+=below1000(lakh)+' Lakh ';
            if(thousand) result+=below1000(thousand)+' Thousand ';
            if(n)     result+=below1000(n);
            return result.trim();
        }
        var intPart=Math.floor(num), dec=Math.round((num-intPart)*100);
        var words='Rupees '+inWords(intPart);
        if(dec>0) words+=' and '+below1000(dec)+' Paise';
        return words+' Only';
    }

    var billdateTouched = false;
    $('#billdate').on('input change', function(){
        billdateTouched = true;
        loadNextBillNumber($charge.val());
    });

    function syncBilldateWithPeriod(){
        if(billdateTouched){ return; }
        var period = $('#billingperiod').val() || $('#fromperiod').val();
        if(period){ $('#billdate').val(period + '-01'); }
    }

    function loadNextBillNumber(chargeCode){
        if(!chargeCode || editingDocid){ return; }
        if(billNoRequest){ billNoRequest.abort(); }
        $billnogroup.val('').attr('placeholder','Loading...');
        var requestedCharge=String(chargeCode);
        billNoRequest=$.post("{{ route('servicebillentry.billno') }}",{
            servicecode:requestedCharge,
            billdate:$('#billdate').val(),
            _token:$('meta[name="csrf-token"]').attr('content')
        }).done(function(response){
            if(String($charge.val()) !== requestedCharge || editingDocid){ return; }
            if(response.success){
                $billnogroup.val(shortBillNo(response.billno)).attr('placeholder','--');
            } else {
                $billnogroup.attr('placeholder','Unavailable');
                Swal.fire({icon:'error', title:'Bill number unavailable.', text:response.message||'The next bill number could not be retrieved.'});
            }
        }).fail(function(xhr, status){
            if(status === 'abort' || String($charge.val()) !== requestedCharge || editingDocid){ return; }
            $billnogroup.attr('placeholder','Unavailable');
            var message='The next bill number could not be retrieved.';
            try { message=JSON.parse(xhr.responseText).message||message; } catch(e){}
            Swal.fire({icon:'error', title:'Bill number unavailable.', text:message});
        });
    }

    $('#fromperiod,#toperiod').val(initialPeriod);
    $('#billingperiod').on('change', function(){
        var period = $(this).val();
        if(period){
            $('#fromperiod,#toperiod').val(period);
            syncBilldateWithPeriod();
            loadNextBillNumber($charge.val());
            // Billing period badla → agar charge already selected hai to auto re-fetch karo
            if($tenant.val() && $charge.val()){
                fetchAllShopCharges($tenant.val(), $charge.val());
            }
        }
    });

    $('#fromperiod,#toperiod').on('change', function(){
        syncBilldateWithPeriod();
        loadNextBillNumber($charge.val());
        // Period badla → agar charge already selected hai to auto re-fetch karo
        if($tenant.val() && $charge.val()){
            fetchAllShopCharges($tenant.val(), $charge.val());
        }
    });

    // --- TENANT SELECT ---
    $tenant.on('change', function(){
        var tid=$(this).val();
        loadPreviousOutstanding(tid);
        editingDocid='';
        $('#submitbtn').html('<i class="fa fa-save"></i> Save');
        $unit.prop('disabled',true).html('<option value="">-- Loading... --</option>');
        $charge.html('<option value="">-- Loading... --</option>').prop('disabled',true);
        $('#brand,#floor,#contactperson,#mobile,#email').val('');
        $('#duedate').val('');
        $billnogroup.val('').attr('placeholder','--');
        setFacilitySundry([]);
        clearChargeRows();
        if(!tid){
            $unit.prop('disabled',true).html('<option value="">-- Select Unit --</option>');
            $charge.prop('disabled',true).html('<option value="">-- Select Charge --</option>');
            return;
        }

        loadTenantBundle(tid, function(d){
            var units = d.units || [];
            if(!units.length){
                Swal.fire({icon:'info', title:'No active lease or shop was found for this tenant.'});
            } else if(!(d.charges||[]).length){
                Swal.fire({icon:'info', title:"No charges were found in this tenant's lease."});
            }
        }).fail(function(xhr){
            $('#shopchecklistwrap').html('<span class="text-muted">-- Select a tenant --</span>');
            $charge.html('<option value="">-- Select Charge --</option>').prop('disabled',false);
            Swal.fire({icon:'error', title:'Tenant data could not be loaded ('+xhr.status+').'});
        });
    });

    // EK hi request: tenant details + units + charges + previous bills
    function applyTenantBundle(d){
        var t=d.tenant||{};
        $('#brand').val(t.tradename||t.name||'');
        $('#contactperson').val(t.conperson||'');
        $('#mobile').val(t.mobile||'');
        $('#email').val(t.email||'');

        // Shops checklist render karo
        var units = d.units || [];
        if(units.length){
            var html = '<div class="d-flex align-items-center mb-1" style="gap:10px;">'
                +'<label style="font-size:11px; cursor:pointer;">'
                +'<input type="checkbox" id="chkallshops" checked style="margin-right:4px;"> <strong>All Shops</strong>'
                +'</label>'
                +'<span class="text-muted" id="shopselectedcount" style="font-size:11px;">('+units.length+'/'+units.length+' selected)</span>'
                +'</div><div class="d-flex flex-wrap" style="gap:6px;">';
            units.forEach(function(u){
                html += '<label class="badge badge-light border px-2 py-1" style="font-size:11px; cursor:pointer; font-weight:normal;">'
                    +'<input type="checkbox" class="shopchk" data-id="'+u.id+'" data-shopname="'+u.shopname+'" data-floor="'+u.floorid+'" data-area="'+u.chargeablearea+'" checked style="margin-right:4px;">'
                    + u.shopname
                    +'</label>';
            });
            html += '</div>';
            $('#shopchecklistwrap').html(html);
        } else {
            $('#shopchecklistwrap').html('<span class="text-muted">No active lease or shop was found for this tenant.</span>');
        }

        // Charges dropdown
        var ch='<option value="">-- Select Charge --</option>';
        (d.charges||[]).forEach(function(c){
            var sc=c.shortcode||c.chargecode;
            ch+='<option value="'+c.chargecode+'" data-shortcode="'+sc+'">'+c.chargename+' ('+sc+')</option>';
        });
        $charge.html(ch).prop('disabled',false);
        setFacilitySundry(d.sundry || []);
        renderPrevBills(d.prevbills||[]);
        return d;
    }

    function loadTenantBundle(tid, onDone){
        return $.post("{{ route('gettenantbundle') }}",{tenantid:tid, _token:$('meta[name="csrf-token"]').attr('content')},function(d){
            applyTenantBundle(d);
            if(typeof onDone === 'function'){ onDone(d); }
        });
    }

    // --- UNIT SELECT --- (legacy, kept for compatibility)
    $unit.on('change', function(){
        var sn=$(this).val(), $opt=$(this).find('option:selected');
        $('#floor').val(floorMap[$opt.data('floor')]||'');
        $('#areaval').val($opt.data('area')?Number($opt.data('area')).toLocaleString('en-IN',{minimumFractionDigits:2}):'');
        if(!sn || !$tenant.val()){
            $charge.html('<option value="">-- Select Charge --</option>').prop('disabled',true);
            clearChargeRows();
            return;
        }
        var currentCharge=$charge.val();
        $charge.html('<option value="">-- Loading... --</option>').prop('disabled',true);
        $.post("{{ route('gettenantcharges') }}",{tenantid:$tenant.val(), unitid:sn, _token:$('meta[name="csrf-token"]').attr('content')},function(charges){
            var ch='<option value="">-- Select Charge --</option>';
            (charges||[]).forEach(function(c){
                var sc=c.shortcode||c.chargecode;
                ch+='<option value="'+c.chargecode+'" data-shortcode="'+sc+'">'+c.chargename+' ('+sc+')</option>';
            });
            $charge.html(ch).prop('disabled',false);
            if(currentCharge && $charge.find('option[value="'+currentCharge+'"]').length) $charge.val(currentCharge).trigger('change');
            else clearChargeRows();
        }).fail(function(){
            $charge.html('<option value="">-- Select Charge --</option>').prop('disabled',false);
            clearChargeRows();
        });
    });

    // Shop checklist — All Shops toggle
    $(document).on('change', '#chkallshops', function(){
        var checked = $(this).is(':checked');
        $('.shopchk').prop('checked', checked);
        updateShopCount();
        if($charge.val()) fetchAllShopCharges($tenant.val(), $charge.val());
    });

    // Individual shop check/uncheck
    $(document).on('change', '.shopchk', function(){
        var total = $('.shopchk').length;
        var selected = $('.shopchk:checked').length;
        $('#chkallshops').prop('checked', total === selected).prop('indeterminate', selected > 0 && selected < total);
        updateShopCount();
        if($charge.val()) fetchAllShopCharges($tenant.val(), $charge.val());
    });

    function updateShopCount(){
        var total = $('.shopchk').length;
        var selected = $('.shopchk:checked').length;
        $('#shopselectedcount').text('('+selected+'/'+total+' selected)');
    }

    // --- CHARGE SELECT ---
    $charge.on('change', function(){
        var val=$(this).val(), $sel=$(this).find('option:selected');
        if(!val){
            $billnogroup.val('').attr('placeholder','--');
            $('#duedate').val('');
            clearChargeRows();
            return;
        }
        // Charge select hote hi current month auto-set + auto-fetch
        if($tenant.val()){
            // From/To = current month reset karo
            $('#fromperiod,#toperiod,#billingperiod').val(initialPeriod);
            syncBilldateWithPeriod();
            fetchAllShopCharges($tenant.val(), val);
        } else {
            clearChargeRows();
        }
        loadNextBillNumber(val);
    });

    // View Agreement button — user ki custom From/To se fetch
    $('#fetchagreement').off('click').on('click', function(){
        if(!$tenant.val()){
            Swal.fire({icon:'info', title:'Select a tenant first.'});
            return;
        }
        if(!$charge.val()){
            Swal.fire({icon:'info', title:'Select a charge first.'});
            return;
        }
        fetchAllShopCharges($tenant.val(), $charge.val());
    });

    // NEW: Tenant + Charge → saare shops ki rows ek saath
    function fetchAllShopCharges(tenantid, chargecode){
        // Sirf checked shops ki unitids bhejo
        var selectedUnits = [];
        $('.shopchk:checked').each(function(){
            selectedUnits.push($(this).data('id'));
        });

        $('#chargedetails_tbody').html('<tr><td colspan="12" class="text-center text-muted"><i class="fa fa-spinner fa-spin"></i> Loading all shops...</td></tr>');
        $.post(
            "{{ route('fetchallshopcharges') }}",
            {
                tenantid:    tenantid,
                chargecode:  chargecode,
                unitids:     selectedUnits,
                fromperiod:  $('#fromperiod').val(),
                toperiod:    $('#toperiod').val(),
                _token:      $('meta[name="csrf-token"]').attr('content')
            },
            function(d){
                if(!d.success){
                    clearChargeRows();
                    Swal.fire({icon:'info', title: d.message || 'No data was found.'});
                    return;
                }
                // Due date set — lease ke duedateofmonth se day nikalo, current billing month me lagao
                if(d.duedate) $('#duedate').val(d.duedate);
                // Sundry update
                if(d.sundry) setFacilitySundry(d.sundry);

                // Saari rows render karo
                $('#chargedetails_tbody').empty();
                (d.rows || []).forEach(function(c, idx){
                    renderChargeRow(c, idx+1);
                });
                if(!d.rows || !d.rows.length){
                    clearChargeRows();
                }
                updateSummary();
            }
        ).fail(function(xhr){
            clearChargeRows();
            var msg = 'Data could not be loaded.';
            try { msg = JSON.parse(xhr.responseText).message || msg; } catch(e){}
            Swal.fire({icon:'error', title: msg});
        });
    }

    // Row render helper (ek charge row)
    function renderChargeRow(c, sno){
        var basis = String(c.basis || c.calculationmethod || 'AREA').toUpperCase();
        var fixed = basis === 'FIXED';
        var area=Number(c.area)||0, rate=Number(c.rate)||0, gst=Number(c.gstpercent)||0;
        var amt=Number(c.amount)||0;
        var gstAmt = Number(c.gstapplicable)>0 ? amt*gst/100 : 0;
        var total = amt + gstAmt;
        var rev = c.revcode || revHeadCode(c.chargename||'', c.chargecode||'');
        var desc = c.shopname ? (c.chargename||'') + ' — ' + c.shopname : (c.chargename||'');

        var row = '<tr>'
            +'<td class="text-center align-middle"><input type="checkbox" class="rowchk" checked></td>'
            +'<td class="rowsno text-center align-middle">'+sno+'</td>'
            +'<td class="align-middle">'
            +'<input type="text" class="form-control form-control-sm rowdesc" name="rows[desc][]" value="'+desc+'" readonly style="font-size:11px;">'
            +'<input type="hidden" class="rowchargecode" name="rows[chargecode][]" value="'+(c.chargecode||'')+'">'
            +'<input type="hidden" class="rowshopcode" name="rows[shopcode][]" value="'+(c.shopcode||'')+'">'
            +'<input type="hidden" class="rowunitid" name="rows[unitid][]" value="'+(c.unitid||'')+'">'
            +'<input type="hidden" class="rowleaseid" name="rows[leaseid][]" value="'+(c.leaseid||'')+'">'
            +'<input type="hidden" class="rowrevcode" name="rows[revcode][]" value="'+rev+'">'
            +'<input type="hidden" class="rowamthidden" name="rows[amount][]" value="'+amt+'">'
            +'<input type="hidden" class="rowgstamthidden" name="rows[gstamt][]" value="'+gstAmt+'">'
            +'<input type="hidden" class="rowtotalhidden" name="rows[total][]" value="'+total+'">'
            +'</td>'
            +'<td class="text-center align-middle"><span class="rowbasis badge badge-light border" style="font-size:11px;">'+(fixed?'FLAT':'AREA')+'</span>'
            +'<input type="hidden" name="rows[basis][]" class="rowbasis-hidden" value="'+(fixed?'FIXED':'AREA')+'"></td>'
            +'<td class="text-right align-middle"><input type="text" class="form-control form-control-sm text-right rowarea" name="rows[area][]" value="'+(fixed?'':area.toFixed(2))+'"'+(fixed?' readonly':'')+' style="font-size:12px; min-width:72px;"></td>'
            +'<td class="text-right align-middle"><input type="text" class="form-control form-control-sm text-right rowrate" name="rows[rate][]" value="'+formatINR(rate)+'"'+(fixed?' title="Flat amount" readonly':' title="Rate per sq.ft" readonly')+' style="font-size:12px; min-width:72px;"></td>'
            +'<td class="text-right align-middle fw-bold rowamt" style="font-size:12px; white-space:nowrap; padding-right:6px;">'+formatINR(amt)+'</td>'
            +'<td class="text-center align-middle"><select class="form-control form-control-sm rowgstpct" name="rows[gstpct][]" disabled style="font-size:11px;"><option value="'+gst+'" '+(gst?'selected':'')+'>'+gst+'%</option><option value="0" '+(gst?'':'selected')+'>0%</option></select></td>'
            +'<td class="text-right align-middle rowgstamt" style="font-size:12px; white-space:nowrap; padding-right:6px;">'+formatINR(gstAmt)+'</td>'
            +'<td class="text-right align-middle fw-bold rowtotal" style="font-size:12px; white-space:nowrap; padding-right:6px; color:#155724;">'+formatINR(total)+'</td>'
            +'<td class="align-middle"><input type="text" class="form-control form-control-sm rowremark" name="rows[remark][]" style="font-size:11px;"></td>'
            +'<td class="text-center align-middle"><button type="button" class="btn btn-sm btn-danger py-0 px-1 deleterow"><i class="fa fa-times"></i></button></td>'
            +'</tr>';
        $('#chargedetails_tbody').append(row);
    }

    // fetchagreement handled above in charge select section

    function clearChargeRows(){
        $('#chargedetails_tbody').html('<tr><td colspan="12" class="text-center text-muted">Select a tenant, unit, and charge</td></tr>');
        updateSummary();
    }

    function fetchAgreementCharges(tid, uid, chargecode){
        $.post("{{ route('fetchleasecharges') }}",{
            tenantid:tid,
            unitid:uid,
            chargecode:chargecode,
            fromperiod:$('#fromperiod').val(),
            toperiod:$('#toperiod').val(),
            _token:$('meta[name="csrf-token"]').attr('content')
        },function(d){
            setFacilitySundry(d.sundry || []);
            renderChargeRows(d.charges||[]);
            $('#duedate').val(d.duedate || '');
        }).fail(function(xhr){
            setFacilitySundry([]);
            clearChargeRows();
            var msg = xhr.responseJSON && xhr.responseJSON.message ? xhr.responseJSON.message : 'Lease charges could not be loaded.';
            Swal.fire({icon:'error', title:'Fetch Failed', text:msg});
        });
    }

    // --- RENDER CHARGE ROWS ---
    var sno=0;
    function renderChargeRows(charges){
        sno=0;
        var tbody=$('#chargedetails_tbody');
        tbody.empty();
        if(!charges.length){ tbody.html('<tr><td colspan="12" class="text-center text-muted">No lease charges found</td></tr>'); updateSummary(); return; }
        charges.forEach(function(c){
            sno++;
            var basis = String(c.basis || c.calculationmethod || 'AREA').toUpperCase();
            var fixed = basis === 'FIXED';
            var area=Number(c.area)||0, rate=Number(c.rate)||0, gst=Number(c.gstpercent)||0;
            var amt=Number(c.amount)||0;
            var gstAmt = Number(c.gstapplicable)>0 ? amt*gst/100 : 0;
            var total = amt + gstAmt;
            var showArea = fixed ? 0 : area;
            var rev = c.revcode || revHeadCode(c.chargename||'', c.chargecode||'');
            var desc = (c.chargename||'') + (c.shopname ? ' — '+c.shopname : '');
             tbody.append('<tr data-source="LEASE" data-basis="'+(fixed?'FIXED':'AREA')+'" data-chargecode="'+(c.chargecode||'')+'" data-chargename="'+(c.chargename||'')+'" data-revcode="'+(rev||'')+'" data-chargesn="'+(c.sn===null||c.sn===undefined?'':c.sn)+'">'
                 +'<td class="text-center align-middle"><input type="checkbox" class="rowchk" checked></td>'
                 +'<td class="text-center align-middle">'+sno+'</td>'
                 +'<td class="align-middle">'
                 +'<input type="text" class="form-control form-control-sm rowdesc" value="'+desc+'" readonly style="font-size:11px;">'
                 +'<input type="hidden" name="rows[chargecode][]" value="'+(c.chargecode||'')+'">'
                 +'<input type="hidden" name="rows[shopcode][]" value="'+(c.shopcode||'')+'">'
                 +'<input type="hidden" name="rows[unitid][]" value="'+(c.unitid||'')+'">'
                 +'<input type="hidden" name="rows[leaseid][]" value="'+(c.leaseid||'')+'">'
                 +'<input type="hidden" name="rows[revcode][]" value="'+(rev||'')+'">'
                 +'<input type="hidden" class="rowamthidden" name="rows[amount][]" value="'+amt+'">'
                 +'<input type="hidden" class="rowgstamthidden" name="rows[gstamt][]" value="'+gstAmt+'">'
                 +'<input type="hidden" class="rowtotalhidden" name="rows[total][]" value="'+total+'">'
                 +'</td>'
                 +'<td class="text-center align-middle"><span class="rowbasis badge badge-light border" style="font-size:11px;">'+(fixed?'FLAT':'AREA')+'</span>'
                 +'<input type="hidden" name="rows[basis][]" value="'+(fixed?'FIXED':'AREA')+'"></td>'
                 +'<td class="text-right align-middle"><input type="text" class="form-control form-control-sm text-right rowarea" value="'+(fixed?'0.00':area.toFixed(2))+'" readonly style="font-size:12px; min-width:72px;"></td>'
                 +'<td class="text-right align-middle"><input type="text" class="form-control form-control-sm text-right rowrate" value="'+formatINR(rate)+'" readonly style="font-size:12px; min-width:72px;"></td>'
                 +'<td class="text-right align-middle fw-bold rowamt" style="font-size:12px; white-space:nowrap; padding-right:6px;">'+formatINR(amt)+'</td>'
                 +'<td class="text-center align-middle"><select class="form-control form-control-sm rowgstpct" disabled style="font-size:11px;"><option value="'+gst+'" '+(gst?'selected':'')+'>'+gst+'%</option><option value="0" '+(gst?'':'selected')+'>0%</option></select></td>'
                 +'<td class="text-right align-middle rowgstamt" style="font-size:12px; white-space:nowrap; padding-right:6px;">'+formatINR(gstAmt)+'</td>'
                 +'<td class="text-right align-middle fw-bold rowtotal" style="font-size:12px; white-space:nowrap; padding-right:6px; color:#155724;">'+formatINR(total)+'</td>'
                 +'<td class="align-middle"><input type="text" class="form-control form-control-sm rowremark" style="font-size:11px;"></td>'
                 +'<td class="text-center align-middle"><a href="javascript:void(0)" class="deleterow"><i class="fa fa-trash text-danger"></i></a></td>'
                 +'</tr>');
        });
        updateSummary();
    }

    // --- SUMMARY CALC ---
    $(document).on('change','.rowgstpct,.rowbasis',function(){ recalcRow($(this).closest('tr')); updateSummary(); });
    $(document).on('input change','.rowarea,.rowrate',function(){ recalcRow($(this).closest('tr')); updateSummary(); });
    $(document).on('click','.deleterow',function(){ $(this).closest('tr').remove(); renumberRows(); updateSummary(); });
    $('#chkall').on('change', function(){
        $('.rowchk').prop('checked', $(this).prop('checked'));
        updateSummary();
    });
    $(document).on('change', '.rowchk', function(){ updateSummary(); });
    $('#addrow').on('click', function(){
        sno++;
        $('#chargedetails_tbody').append('<tr data-source="MANUAL" data-basis="AREA" data-chargecode="" data-revcode="">'
             +'<td class="text-center align-middle"><input type="checkbox" class="rowchk" checked></td>'
             +'<td class="text-center align-middle">'+sno+'</td>'
             +'<td class="align-middle"><input type="text" class="form-control form-control-sm rowdesc" style="font-size:11px;">'
             +'<input type="hidden" name="rows[chargecode][]" value="">'
             +'<input type="hidden" name="rows[shopcode][]" value="">'
             +'<input type="hidden" name="rows[unitid][]" value="">'
             +'<input type="hidden" name="rows[leaseid][]" value="">'
             +'<input type="hidden" name="rows[revcode][]" value="">'
             +'<input type="hidden" class="rowamthidden" name="rows[amount][]" value="0">'
             +'<input type="hidden" class="rowgstamthidden" name="rows[gstamt][]" value="0">'
             +'<input type="hidden" class="rowtotalhidden" name="rows[total][]" value="0">'
             +'</td>'
             +'<td class="text-center align-middle"><span class="rowbasis badge badge-light border" style="font-size:11px;">AREA</span>'
             +'<input type="hidden" name="rows[basis][]" value="AREA"></td>'
             +'<td class="text-right align-middle"><input type="text" class="form-control form-control-sm text-right rowarea" value="0.00" style="font-size:12px; min-width:72px;"></td>'
             +'<td class="text-right align-middle"><input type="text" class="form-control form-control-sm text-right rowrate" value="0.00" style="font-size:12px; min-width:72px;"></td>'
             +'<td class="text-right align-middle fw-bold rowamt" style="font-size:12px; white-space:nowrap; padding-right:6px;">0.00</td>'
             +'<td class="text-center align-middle"><select class="form-control form-control-sm rowgstpct" style="font-size:11px;"><option value="18">18%</option><option value="0">0%</option></select></td>'
             +'<td class="text-right align-middle rowgstamt" style="font-size:12px; white-space:nowrap; padding-right:6px;">0.00</td>'
             +'<td class="text-right align-middle fw-bold rowtotal" style="font-size:12px; white-space:nowrap; padding-right:6px; color:#155724;">0.00</td>'
             +'<td class="align-middle"><input type="text" class="form-control form-control-sm rowremark" style="font-size:11px;"></td>'
             +'<td class="text-center align-middle"><a href="javascript:void(0)" class="deleterow"><i class="fa fa-trash text-danger"></i></a></td>'
             +'</tr>');
        updateSummary();
    });

    function recalcRow($tr){
        var basis = $tr.find('input[name="rows[basis][]"]').val() || 'AREA';
        var fixed = basis === 'FIXED';
        var area=numOf($tr.find('.rowarea'));
        var rate=numOf($tr.find('.rowrate'));
        var gst=numOf($tr.find('.rowgstpct'));
        var amt = fixed ? rate : area*rate;
        var gstAmt=amt*gst/100;
        var total=amt+gstAmt;
        // td cells update karo
        $tr.find('.rowamt').text(formatINR(amt));
        $tr.find('.rowgstamt').text(formatINR(gstAmt));
        $tr.find('.rowtotal').text(formatINR(total));
        // hidden inputs update karo
        $tr.find('.rowamthidden').val(amt);
        $tr.find('.rowgstamthidden').val(gstAmt);
        $tr.find('.rowtotalhidden').val(total);
    }

    function renumberRows(){
        sno=0;
        $('#chargedetails_tbody tr').each(function(){
            sno++;
            $(this).find('td:eq(1)').text(sno);
        });
    }

    function numOf($el){
        var v=$el.val();
        if(v===undefined||v===null){ return 0; }
        var n=parseFloat(String(v).replace(/,/g,''));
        return isNaN(n)?0:n;
    }

    // Bill No ko sirf last part dikhata hai — "RENT/2026/003" -> "003"
    function shortBillNo(v){
        var s=String(v||'').trim();
        if(!s){ return ''; }
        var parts=s.split('/');
        return parts[parts.length-1].trim();
    }

    function sundryFormulaValue(formula, values){
        var text=String(formula || '').trim();
        if(!text){ return 0; }
        var tokens=text.split(/([+-])/);
        var total=0, sign=1;
        tokens.forEach(function(token){
            token=String(token).trim();
            if(token === '+'){ sign=1; return; }
            if(token === '-'){ sign=-1; return; }
            if(!/^\d+$/.test(token)){ return; }
            total += sign * Number(values[Number(token)] || 0);
        });
        return total;
    }

    function sundryTaxType(row){
        var text=String((row.sundry_code || '') + ' ' + (row.disp_name || '') + ' ' + (row.nature || '')).toUpperCase();
        if(text.indexOf('IGST') !== -1) return 'IGST';
        if(text.indexOf('SGST') !== -1) return 'SGST';
        if(text.indexOf('CGST') !== -1) return 'CGST';
        if(text.indexOf('COMP CESS') !== -1 || text.indexOf('COMPCESS') !== -1) return 'CESS';
        return '';
    }

    function calculateSundrySummary(totalAmount, totalGst){
        var base=Number(totalAmount) || 0;
        var fallback={CGST:(Number(totalGst)||0)/2, SGST:(Number(totalGst)||0)/2, IGST:0, CESS:0};
        var values={1:base};
        var net=base, roundOff=0, taxTotal=0;
        var taxMap={CGST:null, SGST:null, IGST:null, CESS:0};

        // User-entered discount (purchase bill style)
        var discountPer    = parseFloat($('#discountfix').val())    || 0;
        var discountAmount = parseFloat($('#discountamount').val()) || 0;
        // Agar amount field me kuch hai to priority amount ko, warna % se calculate
        if(discountAmount > 0){
            discountPer = base > 0 ? (discountAmount / base * 100) : 0;
        } else if(discountPer > 0){
            discountAmount = base * discountPer / 100;
        }
        net = base - discountAmount;

        // Tax calculate on post-discount amount
        facilitySundry.forEach(function(s, index){
            var nature=String(s.nature || '').toUpperCase().trim();
            var taxType=sundryTaxType(s);
            var isTax=taxType !== '';
            var svalue=Number(s.svalue) || 0;
            var isRound=nature.indexOf('ROUND') !== -1;
            var isNet=nature.indexOf('NET') !== -1;
            var formulaBase=sundryFormulaValue(s.calcformula, values);
            var value=0;

            if(nature === 'AMOUNT'){
                values[index+1]=base;
                return;
            } else if(nature === 'DISCOUNT' || nature === 'REDEMPTION'){
                values[index+1]=discountAmount;
                return;
            } else if(isRound){
                value=Math.round(net)-net;
                roundOff=value;
                net+=value;
                values[index+1]=value;
                return;
            } else if(isNet){
                values[index+1]=net;
                return;
            } else if(isTax){
                // Tax base = net (post-discount)
                if(svalue > 0){
                    value=net * svalue / 100;
                } else {
                    value=Number(fallback[taxType] || 0);
                }
                taxTotal+=value;
                if(taxMap[taxType]===null){ taxMap[taxType]=0; }
                taxMap[taxType]+=value;
                net+=value;
                values[index+1]=value;
            }
        });

        if(taxTotal===0 && Number(totalGst)!==0){
            taxMap.CGST=fallback.CGST; taxMap.SGST=fallback.SGST;
            taxTotal=fallback.CGST+fallback.SGST;
            net=base - discountAmount + taxTotal;
        }
        if(taxMap.CGST===null){ taxMap.CGST=0; }
        if(taxMap.SGST===null){ taxMap.SGST=0; }
        if(taxMap.IGST===null){ taxMap.IGST=0; }

        // Round off recalc after tax
        if(roundOff===0){
            var preRound=net;
            net=Math.round(preRound);
            roundOff=net-preRound;
        }

        return {
            base:      base,
            discount:  discountAmount,
            discountPer: discountPer,
            cgst:      taxMap.CGST,
            sgst:      taxMap.SGST,
            igst:      taxMap.IGST,
            cess:      taxMap.CESS,
            totalTax:  taxTotal,
            roundOff:  roundOff,
            billAmount:net
        };
    }

    function updateSummary(){
        var totalAmt=0, totalGst=0;
        $('#chargedetails_tbody tr').each(function(){
            if($(this).find('.rowchk').length && !$(this).find('.rowchk').is(':checked')) return;
            var amtText = $(this).find('.rowamt').text() || '0';
            var gstText = $(this).find('.rowgstamt').text() || '0';
            totalAmt += parseFloat(String(amtText).replace(/,/g,'')) || 0;
            totalGst += parseFloat(String(gstText).replace(/,/g,'')) || 0;
        });
        var summary=calculateSundrySummary(totalAmt, totalGst);

        // Update dynamic sundry display spans
        $('#sundry_amt_amount').text(formatINR(summary.base));
        $('#sundry_amt_cgst').text(formatINR(summary.cgst||0));
        $('#sundry_amt_sgst').text(formatINR(summary.sgst||0));
        $('#sundry_amt_igst').text(formatINR(summary.igst||0));
        $('#sundry_amt_roundoff').text(formatINR(summary.roundOff||0));
        $('#sundry_amt_netamount').text(formatINR(summary.billAmount));

        // Discount dono fields sync — bidirectional
        if($('#discountamount').is(':focus')){
            // User amount type kar raha hai → % calculate karke dikha
            var pct = summary.discountPer > 0 ? summary.discountPer.toFixed(4) : '';
            // trailing zeros hatao: 0.0200 → 0.02
            if(pct) pct = parseFloat(pct).toString();
            $('#discountfix').val(pct);
        } else if($('#discountfix').val() !== '' || $('#discountamount').val() !== ''){
            // User % type kar raha hai → amount calculate karke dikha
            $('#discountamount').val(summary.discount > 0 ? summary.discount.toFixed(2) : '');
        }

        var netPayable=summary.billAmount + previousOutstanding;
        $('#netpayable').text(formatINR(netPayable));
        $('#amountwords').text(numToWords(netPayable));
    }

    // Discount input — bidirectional sync
    $(document).on('input','#discountfix', function(){
        // % change → amount clear karo taaki calculateSundrySummary fresh calculate kare
        $('#discountamount').val('');
        updateSummary();
    });
    $(document).on('input','#discountamount', function(){
        // Amount change → % clear karo taaki calculateSundrySummary % back-calculate kare
        $('#discountfix').val('');
        updateSummary();
        // updateSummary ke baad % field me back-calculated value aa jayegi
    });

    // --- SAVE BILL ---
    $('#submitbtn').on('click', function(){
        var rows=[];
        $('#chargedetails_tbody tr').each(function(){
            if(!$(this).find('.rowchk').is(':checked')) return true;
            var $tr=$(this);
            rows.push({
                 source: $tr.data('source') || 'MANUAL',
                 chargecode: $tr.data('chargecode') || '',
                 chargesn: $tr.data('chargesn') || '',
                 desc  : $tr.find('.rowdesc').val()||'',
                 revcode: $tr.data('revcode')||'',
                 basis  : $tr.find('input[name="rows[basis][]"]').val() || $tr.data('basis') || 'AREA',
                 unitid : $tr.find('input[name="rows[unitid][]"]').val()||'',
                 leaseid: $tr.find('input[name="rows[leaseid][]"]').val()||'',
                 area  : numOf($tr.find('.rowarea')),
                 rate  : numOf($tr.find('.rowrate')),
                 amount: parseFloat(String($tr.find('.rowamthidden').val()||'0').replace(/,/g,''))||0,
                 gst   : numOf($tr.find('.rowgstpct')),
                 gstamt: parseFloat(String($tr.find('.rowgstamthidden').val()||'0').replace(/,/g,''))||0,
                 total : parseFloat(String($tr.find('.rowtotalhidden').val()||'0').replace(/,/g,''))||0,
                 remark: $tr.find('.rowremark').val()||''
            });
        });

        if(!$('#tenantid').val()){ Swal.fire({icon:'warning',title:'Select a tenant.'}); return; }
        if(!$('#chargecode').val()){ Swal.fire({icon:'warning',title:'Select a charge.'}); return; }
        if(!$('#fromperiod').val()||!$('#toperiod').val()){ Swal.fire({icon:'warning',title:'Select the start and end billing periods.'}); return; }
        if(!rows.length){ Swal.fire({icon:'warning',title:'Select at least one bill line.'}); return; }

        // Selected shops ki unitids
        var selectedUnits = [];
        $('.shopchk:checked').each(function(){ selectedUnits.push($(this).data('id')); });
        // Agar koi shop checked nahi to rows se unitids nikalo
        if(!selectedUnits.length){
            rows.forEach(function(r){ if(r.unitid && selectedUnits.indexOf(r.unitid)<0) selectedUnits.push(r.unitid); });
        }

        var payload={
            tenantid   : $('#tenantid').val(),
            unitids    : selectedUnits,
            unitid     : selectedUnits[0] || '',
            servicecode: $('#chargecode').val(),
            billdate   : $('#billdate').val(),
            billingperiod: $('#billingperiod').val(),
            fromperiod : $('#fromperiod').val(),
            toperiod   : $('#toperiod').val(),
            duedate    : $('#duedate').val(),
            editing_docid: editingDocid,
            remarks    : $('#remarks').val(),
            rows       : rows,
            discount_per   : parseFloat($('#discountfix').val())    || 0,
            discount_amount: parseFloat($('#discountamount').val()) || 0,
            _token     : $('meta[name="csrf-token"]').attr('content')
        };

        var isUpdate = !!editingDocid;
        $('#submitbtn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Saving...');

        $.post("{{ route('servicebillentry.save') }}", payload, function(res){
            $('#submitbtn').prop('disabled', false).html('<i class="fa fa-save"></i> Save');
            if(res.success){
                Swal.fire({
                    icon:'success',
                    title: isUpdate ? 'Bill Updated' : 'Bill Saved',
                    text:'Bill No: '+shortBillNo(res.billno),
                    timer:1200,
                    showConfirmButton:false
                }).then(function(){
                    window.location.reload();
                });
            } else {
                Swal.fire({icon:'error', title:'Error', text: res.message || 'The bill could not be saved.'});
            }
        }).fail(function(xhr){
            $('#submitbtn').prop('disabled', false).html('<i class="fa fa-save"></i> Save');
            var msg = 'The bill could not be saved.';
            try { var j=JSON.parse(xhr.responseText); msg = j.message || (j.errors ? Object.values(j.errors).flat().join(', ') : msg); } catch(e){}
            Swal.fire({icon:'error', title:'Error', text:msg});
        });
    });

    function renderPrevBills(list){
        var h='';
        if(!list.length){ h='<tr><td colspan="8" class="text-center text-muted">No previous bills</td></tr>'; }
        else{
            list.forEach(function(b,i){
                var d=(b.vdate||'').substring(0,10);
                h+='<tr data-docid="'+(b.docid||'')+'"><td>'+(i+1)+'</td><td>'+b.vno+'</td><td>'+d+'</td><td>'+b.period+'</td>'
                  +'<td class="text-right">'+formatINR(Number(b.amount)||0)+'</td>'
                  +'<td class="text-right">'+formatINR(Number(b.balance)||0)+'</td>'
                  +'<td class="align-middle"><span class="paystate">'+(b.status||'')+'</span>'
                  +'<span class="mailstate badge badge-light border d-block mt-1">NOT SENT</span></td>'
                  +'<td class="text-center align-middle"><div class="bill-actions">'
                  +'<button type="button" class="btn btn-sm btn-primary py-0 px-1 editbill" data-docid="'+(b.docid||'')+'" title="Edit"><i class="fa fa-pencil"></i></button> '
                  +'<a href="{{ route('servicebillentry.print') }}?docid='+encodeURIComponent(b.docid||'')+'" target="_blank" class="btn btn-sm btn-info py-0 px-1" title="Print"><i class="fa fa-print"></i></a> '
                  +'<button type="button" class="btn btn-sm btn-success py-0 px-1 sendbill" data-docid="'+(b.docid||'')+'" title="Send Email"><i class="fa fa-envelope"></i></button> '
                  +'<button type="button" class="btn btn-sm btn-danger py-0 px-1 deletebill" data-docid="'+(b.docid||'')+'" data-vno="'+(b.vno||'')+'" title="Delete"><i class="fa fa-trash"></i></button>'
                  +'</div>'
                  +'</td></tr>';
            });
        }
        $('#prevbills_tbody').html(h);
        decorateMailStates();
    }

    // --- MAIL STATUS INDICATION (MAILED / NOT SENT) ---
    // Lightweight, browser-side marker so the user can see at a glance which
    // bills already had an email sent (green MAILED) and which are pending.
    function mailSentSet(){
        try { return JSON.parse(localStorage.getItem('hms_mailsent_docids') || '{}'); } catch(e){ return {}; }
    }
    function saveMailSentSet(set){
        try { localStorage.setItem('hms_mailsent_docids', JSON.stringify(set)); } catch(e){}
    }
    function paintMailState(docid, sent){
        var $row = $('#prevbills_tbody tr[data-docid="'+docid+'"]');
        if(!$row.length){ return; }
        var $badge = $row.find('.mailstate');
        var $btn   = $row.find('.sendbill');
        if(sent){
            $badge.removeClass('badge-light').addClass('badge-success').text('MAILED');
            $btn.removeClass('btn-success').addClass('btn-outline-success')
                .html('<i class="fa fa-check"></i>').attr('title','Mail already sent');
        } else {
            $badge.removeClass('badge-success').addClass('badge-light').text('NOT SENT');
            $btn.removeClass('btn-outline-success').addClass('btn-success')
                .html('<i class="fa fa-envelope"></i>').attr('title','Send Email');
        }
    }
    function markMailSent(docid){
        if(!docid){ return; }
        var set = mailSentSet();
        set[String(docid)] = true;
        saveMailSentSet(set);
        paintMailState(docid, true);
    }
    function decorateMailStates(){
        var set = mailSentSet();
        $('#prevbills_tbody tr[data-docid]').each(function(){
            var d = String($(this).data('docid'));
            paintMailState(d, !!set[d]);
        });
    }

    function loadPrevBills(){
        var tid=$('#tenantid').val();
        if(!tid){ return; }
        $.post("{{ route('servicebillentry.prevbills') }}",{tenantid:tid, _token:$('meta[name="csrf-token"]').attr('content')},renderPrevBills);
    }

    function loadPreviousOutstanding(tid){
        if(outstandingRequest){ outstandingRequest.abort(); }
        previousOutstanding=0;
        $('#previousoutstanding').text(formatINR(0));
        updateSummary();
        if(!tid){ return; }

        outstandingRequest=$.post("{{ route('servicebillentry.outstanding') }}",{
            tenantid:tid,
            _token:$('meta[name="csrf-token"]').attr('content')
        }).done(function(response){
            if(String($tenant.val()) !== String(tid)){ return; }
            if(!response.success){
                Swal.fire({icon:'error', title:'Outstanding could not be loaded.', text:response.message||'The ledger balance could not be retrieved.'});
                return;
            }
            previousOutstanding=Number(response.balance)||0;
            $('#previousoutstanding').text(formatINR(previousOutstanding));
            updateSummary();
        }).fail(function(xhr, status){
            if(status === 'abort' || String($tenant.val()) !== String(tid)){ return; }
            var message="The selected tenant's outstanding balance could not be loaded.";
            try { message=JSON.parse(xhr.responseText).message||message; } catch(e){}
            Swal.fire({icon:'error', title:'Outstanding could not be loaded.', text:message});
        });
    }

    // --- RESET / NEW ---
    function resetForm(){
        editingDocid='';
        if(billNoRequest){ billNoRequest.abort(); billNoRequest=null; }
        if(outstandingRequest){ outstandingRequest.abort(); outstandingRequest=null; }
        previousOutstanding=0;
        $('#previousoutstanding').text(formatINR(0));
        $('#servicebillentryform')[0].reset();
        $('#tenantid').val('');
        $charge.html('<option value="">-- Select Charge --</option>').prop('disabled',true);
        $('#shopchecklistwrap').html('<span class="text-muted">-- Shops will appear here after selecting a tenant --</span>');
        $('#brand,#floor,#contactperson,#mobile,#email,#duedate,#billno').val('');
        $('#remarks').val('');
        $('#billdate').val('{{ date("Y-m-d") }}');
        $('#billingperiod,#fromperiod,#toperiod').val(initialPeriod);
        billdateTouched = false;
        setFacilitySundry([]);
        $('#discountfix').val('');
        $('#discountamount').val('');
        clearChargeRows();
        $('#prevbills_tbody').html('<tr><td colspan="8" class="text-center text-muted">No previous bills</td></tr>');
        $('#submitbtn').html('<i class="fa fa-save"></i> Save');
    }

    // --- EDIT BILL ---
    function loadBillForEdit(docid){
        $.post("{{ route('servicebillentry.bill') }}",{docid:docid, _token:$('meta[name="csrf-token"]').attr('content')},function(d){
            if(!d.success){ Swal.fire({icon:'error', title:'Error', text: d.message||'The bill could not be loaded.'}); return; }
            editingDocid = d.docid;
            $tenant.val(d.tenantid);
            loadPreviousOutstanding(d.tenantid);
            loadTenantBundle(d.tenantid, function(){
                $charge.val(d.facilitycode);
                if(!$charge.val()){
                    $charge.append('<option value="'+d.facilitycode+'" selected>'+d.facilitycode+'</option>');
                }
                $('#billno').val(shortBillNo(d.billno));
                $('#billdate').val(d.billdate||'');
                billdateTouched = true;
                $('#billingperiod,#fromperiod').val(d.fromperiod||'');
                $('#toperiod').val(d.toperiod||'');
                $('#duedate').val('');
                $('#remarks').val(d.remark || '');
                if(d.email){ $('#email').val(d.email); }

                var tbody=$('#chargedetails_tbody');
                tbody.empty();
                var list=d.rows||[];
                if(!list.length){ clearChargeRows(); }
                else { list.forEach(function(c,i){ renderChargeRow(c,i+1); }); }
                sno = list.length;
                updateSummary();

                $('#submitbtn').html('<i class="fa fa-save"></i> Update');
                Swal.fire({icon:'info', title:'Edit Mode', text:'Bill '+shortBillNo(d.billno)+' is ready to edit. Save to update it.'});
                $('html, body').animate({scrollTop: $('#servicebillentryform').offset().top-20}, 300);
            }).fail(function(){
                Swal.fire({icon:'error', title:'Tenant data could not be loaded.'});
            });
        }).fail(function(xhr){
            var m='The bill could not be loaded.'; try{ m=JSON.parse(xhr.responseText).message||m; }catch(e){}
            Swal.fire({icon:'error', title:'Error', text:m});
        });
    }

    $(document).on('click', '.editbill', function(){
        var docid=$(this).data('docid');
        if(!docid){ return; }
        loadBillForEdit(docid);
    });

    // --- DELETE BILL ---
    $(document).on('click', '.deletebill', function(){
        var docid=$(this).data('docid'), vno=$(this).data('vno');
        var $row = $(this).closest('tr');
        if(!docid){ return; }
        Swal.fire({
            icon:'warning',
            title:'Delete this bill?',
            text:'Bill No: '+vno+' will be permanently deleted.',
            showCancelButton:true,
            confirmButtonText:'Delete',
            confirmButtonColor:'#d33'
        }).then(function(r){
            if(!r.isConfirmed){ return; }
            $.post("{{ route('servicebillentry.delete') }}",{docid:docid, _token:$('meta[name="csrf-token"]').attr('content')},function(res){
                if(res.success){
                    $row.fadeOut(300, function(){ $(this).remove(); });
                    Swal.fire({icon:'success', title:'Deleted', text: res.message||'The bill was deleted successfully.', timer:1500, showConfirmButton:false});
                    if(editingDocid===docid){ resetForm(); }
                    loadPrevBills();
                } else {
                    Swal.fire({icon:'error', title:'Error', text: res.message||'The bill could not be deleted.'});
                }
            }).fail(function(xhr){
                var m='The bill could not be deleted.'; try{ m=JSON.parse(xhr.responseText).message||m; }catch(e){}
                Swal.fire({icon:'error', title:'Error', text:m});
            });
        });
    });

    // Send Bill Email (from this property's own SMTP settings - MallMailController)
    // Sender (property email) + Receiver (tenant subgroup.email) are already known;
    // the user just clicks Send - no email prompt.
    $(document).on('click', '.sendbill', function(){
        var docid=$(this).data('docid');
        if(!docid){ return; }

        // First check whether this property's SMTP settings are configured.
        // If not, open the Mail Settings form directly.
        $.post("{{ route('mailsettings.status') }}",{_token:$('meta[name="csrf-token"]').attr('content')},function(res){
            if(!res.configured){
                showSetupPrompt('This property has no email settings configured yet. Please fill in your company SMTP/email details in Mail Settings before sending.');
                return;
            }
            sendBillEmail(docid);
        }).fail(function(){
            sendBillEmail(docid);
        });
    });

    function sendBillEmail(docid){
        Swal.fire({
            title:'Send Bill Email',
            html:'It will be sent to the tenant\'s saved email (subgroup).<br>The print-ready PDF bill will be attached.',
            icon:'question',
            showCancelButton:true,
            confirmButtonText:'Send',
            confirmButtonColor:'#28a745',
            footer:'<a href="{{ route('mailsettings') }}" style="font-size:12px;">Want to change email settings? Open Mail Settings</a>'
        }).then(function(r){
            if(!r.isConfirmed){ return; }
            $.post("{{ route('mallmailsend') }}",{docid:docid, _token:$('meta[name="csrf-token"]').attr('content')},function(res){
                if(res.success){ Swal.fire({icon:'success', title:'Queued in Background!', text:res.message, timer:3000, showConfirmButton:false}); markMailSent(docid); }
                else { Swal.fire({icon:'error', title:'Error', text:res.message}); }
            }).fail(function(xhr){
                var j=null; try{ j=JSON.parse(xhr.responseText); }catch(e){}
                if(j && j.needs_setup){
                    showSetupPrompt(j.message || '');
                    return;
                }
                var m='Mail could not be sent.'; if(j){ m=j.message||m; }
                var wantsFix = (j && j.fix_settings) || xhr.status === 500;
                Swal.fire({
                    icon:'error',
                    title:'Error',
                    text:m,
                    showCancelButton: wantsFix,
                    cancelButtonText:'Later',
                    confirmButtonText: wantsFix ? 'Open Mail Settings' : 'OK',
                    confirmButtonColor:'#003580'
                }).then(function(r){
                    if(wantsFix && r.isConfirmed){ window.location.href="{{ route('mailsettings') }}"; }
                });
            });
        });
    }

    function showSetupPrompt(msg){
        Swal.fire({
            icon:'warning',
            title:'Mail Settings Setup Required',
            text:msg,
            confirmButtonText:'Fill Mail Settings',
            confirmButtonColor:'#003580',
            showCancelButton:true,
            cancelButtonText:'Later'
        }).then(function(res2){ if(res2.isConfirmed){ window.location.href="{{ route('mailsettings') }}"; } });
    }

    decorateMailStates();
    $charge.on('change', loadPrevBills);
})();
</script>
@endsection