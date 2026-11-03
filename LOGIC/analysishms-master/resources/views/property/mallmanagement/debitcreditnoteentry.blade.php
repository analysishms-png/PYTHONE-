@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')
@include('cdns.select')

<style>
    #detailtable td, #detailtable th { vertical-align: middle !important; padding: 4px 5px !important; }
    #detailtable .form-control-sm { height: 28px; padding: 2px 5px; }
    .rowamt { min-width: 80px; }

    .inv-box .inv-row { display: flex; justify-content: space-between; padding: 5px 0; font-size: 12px; border-bottom: 1px dashed #eee; }
    .inv-box .inv-row:last-child { border-bottom: none; }
    .inv-box .inv-row span:first-child { color: #6c757d; }
    .inv-box .inv-row span:last-child { font-weight: 600; }

    .docid-badge { font-size: 11px; letter-spacing: .5px; }

    /* Tenant shops + fetched bills tables — sibling pages (paymentreceiptentry)
       jaisa hi table style: standard bootstrap table, 12px cell font */
    #shopstable td, #shopstable th { vertical-align: middle !important; padding: 5px 8px !important; font-size: 12px; }
    #billstable td, #billstable th { vertical-align: middle !important; padding: 5px 8px !important; font-size: 12px; }
    #shopstable tr.shop-selected { background: #fff8e1; }
</style>

<div class="content-body">
<div class="container-fluid">

    {{-- Page Header --}}
    <div class="row mb-2">
        <div class="col-12">
            <div class="d-flex align-items-center justify-content-between flex-wrap">
                <div>
                    <h4 class="font-weight-bold mb-0">Debit / Credit Note Entry</h4>
                    <small class="text-muted">Mall Management &rsaquo; Billing &rsaquo; Debit / Credit Note</small>
                </div>
                <div class="d-flex align-items-center flex-wrap" style="gap:6px;">
                    <button type="button" class="btn btn-sm btn-success" id="newbtn"><i class="fa fa-plus"></i> New</button>
                    <button type="button" class="btn btn-sm btn-primary" id="savebtn"><i class="fa fa-save"></i> Save</button>
                </div>
            </div>
        </div>
    </div>

    {{-- ═══ NOTE TYPE — dropdown. User Debit / Credit Note select karega,
         tabhi us note ka form khulega ═══ --}}
    <div class="row mb-2">
        <div class="col-12">
            <div class="card shadow-sm">
                <div class="card-body py-2 px-3">

                    <div class="form-group row mb-1">
                        <label class="col-md-3 col-form-label col-form-label-sm font-weight-bold text-muted">
                            Note Type <span class="text-danger">*</span>
                        </label>
                        <div class="col-md-5">
                            <select class="form-control form-control-sm" id="notetypeselect">
                                <option value="">-- Select Note Type --</option>
                                <option value="DEN">Debit Note</option>
                                <option value="CEN">Credit Note</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <span class="text-muted small" id="typehint">Select the note type to open its entry form.</span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    {{-- Note type select nahi kiya — form band, yeh hint --}}
    <div id="notetypehint" class="card shadow-sm mb-3">
        <div class="card-body text-center py-4 text-muted">
            <i class="fa fa-mouse-pointer fa-lg d-block mb-2"></i>
            Select the <b>Note Type</b> above — its entry form will open here.
        </div>
    </div>

    <div id="notebody" style="display:none;">

    <form id="noteform" autocomplete="off">
        @csrf
        <input type="hidden" id="vtype" name="vtype" value="">
        <input type="hidden" id="editing_docid" name="editing_docid" value="">

        <div class="row">

            {{-- ═══ LEFT COLUMN ═══ --}}
            <div class="col-lg-8 col-12">

                {{-- 1. Note Information --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                        <strong style="font-size:12px;">1. <span class="lbl-notetype">Debit</span> Note Information</strong>
                        <span id="docid_badge" class="badge badge-light docid-badge d-none"></span>
                    </div>
                    <div class="card-body py-2 px-3">

                        <div class="form-group row mb-1">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted"><span class="lbl-notetype">Debit</span> Note No</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control form-control-sm" id="note_no_display"
                                       readonly placeholder="Auto Generated" style="background:#f9f9f9;">
                            </div>
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted"><span class="lbl-notetype">Debit</span> Note Date <span class="text-danger">*</span></label>
                            <div class="col-md-3">
                                <input type="date" class="form-control form-control-sm" id="vdate" name="vdate"
                                       value="{{ $ncurdate ?? date('Y-m-d') }}" required>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Unit / Shop</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control form-control-sm" id="unitdisplay" readonly placeholder="--">
                            </div>
                        </div>

                        <div class="form-group row mb-2">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Tenant <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                                <select class="form-control form-control-sm" id="tenantid" name="tenantid" required>
                                    <option value="">-- Select Tenant --</option>
                                    @foreach($tenants as $t)
                                        <option value="{{ $t->sub_code }}"
                                                data-conperson="{{ $t->conperson ?? '' }}"
                                                data-mobile="{{ $t->mobile ?? '' }}">
                                            {{ $t->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        {{-- Tenant ki shops — tenant select karte hi visible, har shop par
                             action column jisse us shop ki bill/charge par note ban sake --}}
                        <div class="form-group row mb-0" id="shops_wrap" style="display:none;">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Tenant Shops</label>
                            <div class="col-md-9">
                                <input type="hidden" id="shopid" name="shopid" value="">
                                <input type="hidden" id="shopname" value="">
                                <input type="hidden" id="leaseid" value="">
                                <div class="d-flex justify-content-between align-items-center mb-1">
                                    <small class="text-muted" id="shophint">Select a shop — the note will be created against that shop's bills/charges.</small>
                                    <button type="button" class="btn btn-xs btn-outline-secondary" id="clearshopbtn" style="display:none;">
                                        <i class="fa fa-times"></i> Clear shop
                                    </button>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered mb-0" id="shopstable">
                                        <thead class="thead-light">
                                            <tr>
                                                <th width="32">#</th>
                                                <th>Shop</th>
                                                <th>Floor</th>
                                                <th class="text-right" width="80">Area</th>
                                                <th>Agreement</th>
                                                <th class="text-center" width="110">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody id="shopsbody"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                {{-- 2. Reference & Reason --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white">
                        <strong style="font-size:12px;">2. Reference &amp; Reason</strong>
                    </div>
                    <div class="card-body py-2 px-3">

                        <div class="form-group row mb-1">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Reference No</label>
                            <div class="col-md-9">
                                <select class="form-control form-control-sm" id="refdocid" name="refdocid">
                                    <option value="">-- Select Charge --</option>
                                </select>
                            </div>
                        </div>

                        {{-- Reference Date — visible field hata di, value selected invoice se auto aati hai --}}
                        <input type="hidden" id="refdate" name="refdate" value="">
                        {{-- Selected reference invoice ka chargecode (RENT detect karne ke liye) --}}
                        <input type="hidden" id="refchargecode" value="">

                        {{-- Billing Period — RENT charges fetch ke liye (RENT select hone par visible) --}}
                        <div class="form-group row mb-1" id="billingperiodrow" style="display:none;">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Billing Period</label>
                            <div class="col-md-9 d-flex align-items-center" style="gap:6px;">
                                <input type="month" class="form-control form-control-sm" id="fromp" style="width:155px;" title="From Period">
                                <span class="text-muted">to</span>
                                <input type="month" class="form-control form-control-sm" id="top" style="width:155px;" title="To Period">
                                <button type="button" class="btn btn-sm btn-primary" id="fetchchargesbtn">
                                    <i class="fa fa-download"></i> Fetch Charges
                                </button>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Reason</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control form-control-sm" id="reason" name="reason"
                                       maxlength="250" list="reasonlist" placeholder="e.g. Additional Charges">
                                <datalist id="reasonlist">
                                    <option value="Additional Charges">
                                    <option value="Discount / Rebate">
                                    <option value="Late Payment Penalty">
                                    <option value="Meter Adjustment">
                                    <option value="Service Charge Reversal">
                                    <option value="Waiver">
                                </datalist>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Remarks</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control form-control-sm" id="remarks" name="remarks"
                                       maxlength="500" placeholder="Optional remarks">
                            </div>
                        </div>

                    </div>
                </div>

                {{-- 3. Note Details (charge-wise) --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                        <strong style="font-size:12px;">3. <span class="lbl-notetype">Debit</span> Note Details</strong>
                        <button type="button" class="btn btn-sm btn-light" id="addrowbtn">
                            <i class="fa fa-plus"></i> Add Row
                        </button>
                    </div>
                    <div class="card-body p-0">



                        <div id="billlistwrap" class="border-bottom" style="display:none;">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered mb-0" id="billstable">
                                    <thead class="thead-light">
                                        <tr>
                                            <th width="32">#</th>
                                            <th width="110">Bill No</th>
                                            <th width="100">Bill Date</th>
                                            <th>Period</th>
                                            <th width="90">Charges</th>
                                            <th class="text-right" width="110">Amount (₹)</th>
                                            <th class="text-center" width="150">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="billsbody"></tbody>
                                </table>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-bordered mb-0" id="detailtable">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="36">#</th>
                                        <th>Charge Name <span class="text-danger">*</span></th>
                                        <th width="115">From Date</th>
                                        <th width="115">To Date</th>
                                        <th width="95">Area / Unit</th>
                                        <th width="90" class="text-right">Rate (₹)</th>
                                        <th width="75" class="text-right">Tax %</th>
                                        <th width="110" class="text-right">Amount (₹) <span class="text-danger">*</span></th>
                                        <th width="100" class="text-right">Tax Amt (₹)</th>
                                        <th width="140">Remarks</th>
                                        <th width="55" class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="detailbody">
                                    <tr id="nocolsrow">
                                        <td colspan="11" class="text-center text-muted py-3" style="font-size:12px;">
                                            Click "+ Add Row" to add charge lines.
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="7" class="text-right font-weight-bold">Taxable Amount (₹)</td>
                                        <td class="text-right font-weight-bold" id="tfoot_taxable">0.00</td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" class="text-right font-weight-bold">Tax Amount (₹)</td>
                                        <td class="text-right font-weight-bold" id="tfoot_tax">0.00</td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" class="text-right font-weight-bold">Total Amount (₹)</td>
                                        <td class="text-right font-weight-bold" id="tfoot_total">0.00</td>
                                        <td colspan="3"></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>

            </div>{{-- /LEFT --}}

            {{-- ═══ RIGHT COLUMN ═══ --}}
            <div class="col-lg-4 col-12">

                {{-- Invoice Details (reference se auto) --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white">
                        <strong style="font-size:12px;">Invoice Details</strong>
                    </div>
                    <div class="card-body py-2 px-3">
                        <div class="inv-box border rounded p-2" id="invoicebox" style="background:#f8f9fa;">
                            <div class="inv-row"><span>Invoice No</span><span id="inv_no">—</span></div>
                            <div class="inv-row"><span>Invoice Date</span><span id="inv_date">—</span></div>
                            <div class="inv-row"><span>Bill Month</span><span id="inv_month">—</span></div>
                            <div class="inv-row"><span>Net Amount (₹)</span><span id="inv_net">—</span></div>
                            <div class="inv-row"><span>Paid Amount (₹)</span><span id="inv_paid">—</span></div>
                            <div class="inv-row"><span>Outstanding (₹)</span><span id="inv_out">—</span></div>
                        </div>
                    </div>
                </div>

                {{-- Note Summary --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white">
                        <strong style="font-size:12px;">Note Summary</strong>
                    </div>
                    <div class="card-body py-3 px-3">

                        <div class="border rounded p-3 mb-3">
                            <div style="display:flex; justify-content:space-between; padding:5px 0; font-size:12px; border-bottom:1px solid #eee;">
                                <span>Total Lines</span>
                                <span id="sumLines">0</span>
                            </div>
                            <div style="display:flex; justify-content:space-between; padding:5px 0; font-size:12px; border-bottom:1px solid #eee;">
                                <span>Taxable Amount</span>
                                <span id="sumTaxable">₹ 0.00</span>
                            </div>
                            <div style="display:flex; justify-content:space-between; padding:5px 0; font-size:12px; border-bottom:1px solid #eee;">
                                <span>Tax Amount</span>
                                <span id="sumTax">₹ 0.00</span>
                            </div>
                            <div style="display:flex; justify-content:space-between; padding:8px 0 0; font-weight:bold; font-size:14px;">
                                <span>Total <span class="lbl-notetype">Debit</span> Amount (₹)</span>
                                <span id="sumTotal">0.00</span>
                            </div>
                        </div>

                        <div class="d-flex" style="gap:6px;">
                            <button type="button" class="btn btn-primary btn-sm flex-fill" id="savebtn2">
                                <i class="fa fa-save"></i> Save
                            </button>
                            <button type="button" class="btn btn-light border btn-sm flex-fill" id="resetbtn">
                                <i class="fa fa-undo"></i> Reset
                            </button>
                        </div>

                    </div>
                </div>

            </div>{{-- /RIGHT --}}

        </div>{{-- /row --}}
    </form>
    </div>{{-- /notebody — note type select hone par khulta hai --}}

    {{-- ═══ NOTES REGISTER (always visible — submit ke baad refresh) ═══ --}}
    <div id="viewpanel" class="mt-3">
        <div class="card shadow-sm">
            <div class="card-header py-2 bg-secondary text-white">
                <strong style="font-size:12px;">Notes Register (Last 50 Notes)</strong>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered" id="noteslisttable" style="width:100%;">
                        <thead class="thead-light">
                            <tr>
                                <th>#</th>
                                <th>Type</th>
                                <th>Note No</th>
                                <th>Date</th>
                                <th>Tenant</th>
                                <th>Ref. Invoice</th>
                                <th>Reason</th>
                                <th class="text-right">Amount (₹)</th>
                                <th>Remarks</th>
                                <th>By</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($notes ?? [] as $n)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>
                                        @if($n->vtype === 'CEN')
                                            <span class="badge badge-success">Credit</span>
                                        @else
                                            <span class="badge badge-danger">Debit</span>
                                        @endif
                                    </td>
                                    <td><a href="javascript:void(0)" class="text-primary load-note" data-docid="{{ $n->docid }}" data-vtype="{{ $n->vtype }}">{{ intval($n->vno) }}</a></td>
                                    <td>{{ $n->vdate ? date('d-m-Y', strtotime($n->vdate)) : '—' }}</td>
                                    <td>{{ $n->tenantname ?? '—' }}</td>
                                    <td>{{ $n->refdocid ?: '—' }}</td>
                                    <td>{{ $n->reason ?: '—' }}</td>
                                    <td class="text-right font-weight-bold">{{ number_format($n->totalamount, 2) }}</td>
                                    <td>{{ $n->remarks ?: '—' }}</td>
                                    <td>{{ $n->u_name ?: '—' }}</td>
                                    <td class="text-center">
                                        <button class="btn btn-xs btn-outline-primary load-note mr-1" data-docid="{{ $n->docid }}" data-vtype="{{ $n->vtype }}" title="Edit"><i class="fa fa-edit"></i></button>
                                        <a href="{{ url('debitcreditnoteentryprint/' . rawurlencode($n->docid)) }}" target="_blank" class="btn btn-xs btn-outline-success mr-1" title="Print"><i class="fa fa-print"></i></a>
                                        <button class="btn btn-xs btn-outline-danger del-note" data-docid="{{ $n->docid }}" title="Delete"><i class="fa fa-trash"></i></button>
                                    </td>
                                </tr>
                            @empty
                                <tr><td colspan="11" class="text-center text-muted py-3">No notes yet. Save a note to see it here.</td></tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
</div>

{{-- ════════════════════════ JAVASCRIPT ════════════════════════ --}}
<script>
(function () {
    'use strict';

    var CSRF = $('meta[name="csrf-token"]').attr('content');

    var ROUTE = {
        nextno          : "{{ route('debitcreditnoteentry.nextno') }}",
        charges         : "{{ route('debitcreditnoteentry.charges') }}",
        tenantshops     : "{{ route('debitcreditnoteentry.tenantshops') }}",
        referencelist   : "{{ route('debitcreditnoteentry.referencelist') }}",
        bills           : "{{ route('debitcreditnoteentry.bills') }}",
        rentescalation  : "{{ route('debitcreditnoteentry.rentescalation') }}",
        save            : "{{ route('debitcreditnoteentry.save') }}",
        note            : "{{ route('debitcreditnoteentry.note') }}",
        del             : "{{ route('debitcreditnoteentry.delete') }}",
        list            : "{{ route('debitcreditnoteentry.list') }}"
    };

    var NCDATE  = "{{ $ncurdate ?? date('Y-m-d') }}";
    var charges = @json($charges);
    var chargesMap = {};
    var rentChargeObj = null;
    $.each(charges, function (i, c) {
        chargesMap[c.chargecode] = c;
        if ((c.chargecode || '').toUpperCase() === 'RENT' ||
            (c.shortcode || '').toUpperCase() === 'RENT' ||
            (c.chargename || '').toUpperCase().indexOf('RENT') !== -1) {
            if (!rentChargeObj) { rentChargeObj = c; }
        }
    });

    function getRentCharge() {
        return chargesMap['RENT'] || rentChargeObj || (charges && charges.length ? charges[0] : null);
    }

    // Local state — charge lines + selected note type (DEN / CEN)
    var noteRows = [];
    var modeVtype = '';

    // ── Helpers ──────────────────────────────────────────────────────────────
    function fmt(n) {
        return '₹ ' + parseFloat(n || 0).toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
    }
    function fmtRaw(n) { return parseFloat(n || 0).toFixed(2); }
    function round2(n) { return Math.round((parseFloat(n || 0) + Number.EPSILON) * 100) / 100; }
    function fmtVno(vno) { return String(parseInt(vno || 0, 10) || 0); }
    function dmy(iso) {
        if (!iso) return '';
        var p = String(iso).substring(0, 10).split('-');
        return p.length === 3 ? (p[2] + '-' + p[1] + '-' + p[0]) : String(iso).substring(0, 10);
    }
    function escapeHtml(s) {
        return String(s == null ? '' : s)
            .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;').replace(/'/g, '&#39;');
    }

    // ── Note Type dropdown (Debit Note / Credit Note) ────────────────────────
    // Dropdown se type select karte hi us note ka form khulta hai; khali chhodo
    // to form band ho jata hai. Ek hi time par ek hi note ka form khulta hai.
    function currentVtype() { return modeVtype; }

    function showNoteForm(show) {
        if (show) { $('#notetypehint').hide(); $('#notebody').show(); }
        else { $('#notetypehint').show(); $('#notebody').hide(); }
    }

    // Dropdown ka dikhaya hua value wapas current mode par lao (cancel ke baad)
    function syncTypeSelect(vtype) {
        $('#notetypeselect').val(vtype || '');
        if ($.fn.select2) { $('#notetypeselect').trigger('change.select2'); }
    }

    function isFormDirty() {
        return !!($('#tenantid').val() || noteRows.length > 0 || $('#editing_docid').val());
    }

    function askSwitch(vtype, onConfirm, onCancel) {
        var title = vtype
            ? 'Switch to ' + (vtype === 'DEN' ? 'Debit' : 'Credit') + ' Note?'
            : 'Close this note form?';
        Swal.fire({
            title: title,
            text: 'Current unsaved data will be lost.',
            icon: 'question', showCancelButton: true,
            confirmButtonText: vtype ? 'Yes, Switch' : 'Yes, Close'
        }).then(function (r) { r.isConfirmed ? onConfirm() : onCancel(); });
    }

    $('#notetypeselect').on('change', function () {
        var vtype = $(this).val();
        var previous = currentVtype();

        // Selection hatai (ya khali) → form band
        if (!vtype) {
            if (isFormDirty()) {
                askSwitch('', function () { applyMode(''); }, function () { syncTypeSelect(previous); });
                return;
            }
            applyMode('');
            return;
        }

        // Doosre note type par switch — form me data hai to confirm
        if (previous && previous !== vtype && isFormDirty()) {
            askSwitch(vtype, function () { applyMode(vtype); }, function () { syncTypeSelect(previous); });
            return;
        }

        applyMode(vtype);
    });

    // Note type kholo / band karo — form ko us note ke hisaab se reset karta hai
    function applyMode(vtype) {
        vtype = vtype || '';
        modeVtype = vtype;
        $('#vtype').val(vtype);
        syncTypeSelect(vtype);

        if (!vtype) {
            $('#typehint').text('Select the note type to open its entry form.');
            showNoteForm(false);
            return;
        }

        var word = (vtype === 'DEN') ? 'Debit' : 'Credit';
        $('.lbl-notetype').text(word);
        $('#typehint').html('Open: <b>' + word + ' Note</b> — fill in the details below.');
        showNoteForm(true);

        resetForm();
        loadNoteNo();
    }

    // ── Note No preview — voucher_prefix (DEN / CEN) se ──────────────────────
    var noteNoToken = 0;
    function loadNoteNo() {
        if (!currentVtype()) { return; } // note type select nahi hua
        var token = ++noteNoToken;
        $.ajax({
            url  : ROUTE.nextno, type: 'POST',
            data : { vtype: currentVtype(), vdate: $('#vdate').val(), _token: CSRF },
            success: function (res) {
                if (token !== noteNoToken) { return; } // purani request ignore
                if (res && res.success) {
                    $('#note_no_display').val(fmtVno(res.vno));
                }
            }
        });
    }

    // ── Tenant shops — tenant select karte hi list visible, har shop par
    //    action column (us shop ki bill/charge par note banane ke liye) ────────
    var tenantShops = [];

    function clearShopSelection() {
        $('#shopid').val('');
        $('#shopname').val('');
        $('#leaseid').val('');
        $('#unitdisplay').val('');
        $('#clearshopbtn').hide();
        $('#shopstable tbody tr').removeClass('shop-selected');
    }

    function renderTenantShops(shops) {
        tenantShops = shops || [];

        if (!tenantShops.length) {
            $('#shops_wrap').hide();
            $('#shopsbody').html('');
            $('#unitdisplay').val('');
            return;
        }

        var html = '';
        $.each(tenantShops, function (i, s) {
            html += '<tr data-shopid="' + escapeHtml(s.id) + '">'
                  + '<td>' + (i + 1) + '</td>'
                  + '<td>' + escapeHtml(s.shopname || '—')
                      + (s.shopcode ? ' <small class="text-muted">(' + escapeHtml(s.shopcode) + ')</small>' : '') + '</td>'
                  + '<td>' + escapeHtml(s.floorname || '—') + '</td>'
                  + '<td class="text-right">' + escapeHtml(s.chargeablearea || '—') + '</td>'
                  + '<td>' + escapeHtml(s.agreementno || '—') + '</td>'
                  + '<td class="text-center">'
                      + '<button type="button" class="btn btn-xs btn-outline-primary use-shop"'
                      + ' data-shopid="' + escapeHtml(s.id) + '"'
                      + ' data-shopcode="' + escapeHtml(s.shopcode || '') + '"'
                      + ' data-shopname="' + escapeHtml(s.shopname || '') + '"'
                      + ' data-floorname="' + escapeHtml(s.floorname || '') + '"'
                      + ' data-leaseid="' + escapeHtml(s.leaseid || '') + '"'
                      + ' title="Create a note against the bills/charges of this shop">'
                      + '<i class="fa fa-hand-pointer"></i> Select</button>'
                  + '</td>'
                  + '</tr>';
        });

        $('#shopsbody').html(html);
        $('#shops_wrap').show();
    }

    function loadTenantShops(tenantcode) {
        clearShopSelection();
        renderTenantShops([]);

        if (!tenantcode) { return; }

        $.ajax({
            url  : ROUTE.tenantshops, type: 'POST',
            data : { tenantcode: tenantcode, _token: CSRF },
            success: function (shops) {
                renderTenantShops(shops || []);
                if (tenantShops.length) {
                    var parts = [];
                    $.each(tenantShops, function (i, s) { parts.push(s.shopname); });
                    $('#unitdisplay').val(parts.join(', '));
                }
            },
            error: function () { renderTenantShops([]); }
        });
    }

    // ── Auto-fetch RENT row — shop select ya date change par, bina bill select kiye ──
    // Logic:
    //   1. leaseid + vdate (note date) se mall_lease_escalation ka effective row fetch karo
    //   2. Agar noteRows mein koi row nahi, seedha add kar do
    //   3. Agar pehle se rows hain lekin sirf auto-filled RENT row hai (koi manual amount nahi),
    //      silently replace karo; warna user se confirm karo
    var rentAutoFetching = false;

    function autoFetchRentRow(leaseid, fromdate, todate, forceReplace) {
        // leaseid nahi mila to tenantShops se pehla available leaseid lo
        if (!leaseid && tenantShops.length) {
            for (var _si = 0; _si < tenantShops.length; _si++) {
                if (tenantShops[_si].leaseid) {
                    leaseid = parseInt(tenantShops[_si].leaseid, 10);
                    break;
                }
            }
        }
        if (!leaseid || !fromdate) { return; }
        if (rentAutoFetching) { return; }

        // Note type select nahi hua to fetch mat karo
        if (!currentVtype()) { return; }

        // Agar rows hain aur manual amounts hain to confirm karo (unless forceReplace)
        var hasManualRows = false;
        $.each(noteRows, function (i, r) {
            if (r.amount && parseFloat(r.amount) > 0 && r.chargecode !== 'RENT') {
                hasManualRows = true;
            }
        });

        if (hasManualRows && !forceReplace) {
            Swal.fire({
                title: 'Grid mein rows hain',
                text : 'Section 3 mein already charge lines hain. RENT row se replace karein?',
                icon : 'question', showCancelButton: true,
                confirmButtonText: 'Haan, Replace',
                cancelButtonText : 'Nahi'
            }).then(function (r) {
                if (r.isConfirmed) { autoFetchRentRow(leaseid, fromdate, todate, true); }
            });
            return;
        }

        rentAutoFetching = true;

        $.ajax({
            url  : ROUTE.rentescalation,
            type : 'POST',
            data : {
                leaseid   : leaseid,
                tenantid  : $('#tenantid').val() || '',
                chargecode: $('#refchargecode').val() || '',
                fromdate  : fromdate,
                todate    : todate || fromdate,
                _token    : CSRF
            },
            success: function (res) {
                if (!res.success) {
                    // Escalation data nahi mila — silently skip, user manually add karega
                    return;
                }

                var rentCharge = chargesMap[res.chargecode] || getRentCharge();
                var cCode = res.chargecode || (rentCharge ? rentCharge.chargecode : 'RENT');
                var cName = res.chargename || (rentCharge ? rentCharge.chargename : 'RENT');

                // RENT ke alawa ki rows preserve karo, RENT rows replace karo
                var newRows = $.grep(noteRows, function (r) {
                    return r.chargecode !== cCode && r.chargecode !== 'RENT' && (r.chargename || '').toUpperCase().indexOf('RENT') === -1;
                });

                // Naya RENT row
                var rentRow = {
                    chargecode : cCode,
                    chargename : cName,
                    fromdate   : fromdate,
                    todate     : todate || fromdate,
                    unit       : res.area      != null ? parseFloat(res.area).toFixed(2)      : '',
                    rate       : res.rate      != null ? parseFloat(res.rate).toFixed(4)      : '',
                    taxrate    : res.taxpercent != null ? parseFloat(res.taxpercent)
                                    : (rentCharge ? (parseFloat(rentCharge.taxpercent) || 0) : 0),
                    amount     : res.amount    != null ? parseFloat(res.amount).toFixed(2)    : '',
                    taxamount  : '',
                    remarks    : res.source === 'lease_base' ? 'Base Rate (No Escalation)' : ''
                };

                // RENT row sabse pehle
                newRows.unshift(rentRow);
                noteRows = newRows;
                renderDetailTable();

                // Section 3 tak scroll karo
                if ($('#detailtable').length && $('#detailtable').is(':visible')) {
                    $('html,body').animate({ scrollTop: $('#detailtable').offset().top - 100 }, 300);
                }
            },
            error: function () {
                // Silent fail — user manually add karega
            },
            complete: function () {
                rentAutoFetching = false;
            }
        });
    }

    // Helper: note date se month start/end nikaalo (RENT from-to = puri month)
    function rentPeriodFromDate(vdate) {
        if (!vdate) { return { from: '', to: '' }; }
        var d = new Date(vdate);
        var y = d.getFullYear();
        var m = d.getMonth(); // 0-indexed
        var from = y + '-' + String(m + 1).padStart(2, '0') + '-01';
        var lastDay = new Date(y, m + 1, 0).getDate();
        var to   = y + '-' + String(m + 1).padStart(2, '0') + '-' + String(lastDay).padStart(2, '0');
        return { from: from, to: to };
    }

    // ── Shop select → us shop ka filter set, bills auto-fetch (date ho to) ──
    $(document).on('click', '.use-shop', function () {
        var $btn = $(this);
        var shopid = String($btn.data('shopid') || '');

        clearShopSelection();
        $('#shopid').val(shopid);
        $('#shopname').val($btn.data('shopname') || '');
        $('#leaseid').val($btn.data('leaseid') || '');
        $('#shopstable tbody tr[data-shopid="' + shopid + '"]').addClass('shop-selected');
        $('#clearshopbtn').show();
        $('#unitdisplay').val(($btn.data('floorname') ? $btn.data('floorname') + ' — ' : '')
            + ($btn.data('shopname') || '') + ($btn.data('shopcode') ? ' (' + $btn.data('shopcode') + ')' : ''));
        $('#shophint').text('Selected shop: ' + ($btn.data('shopname') || '') + ' — RENT rate auto-load ho raha hai.');

        // ── NEW: shop select hote hi RENT escalation auto-fetch ──────────────
        var leaseid = parseInt($btn.data('leaseid') || 0, 10);
        var vdate   = $('#vdate').val();
        if (leaseid && vdate) {
            var period = rentPeriodFromDate(vdate);
            autoFetchRentRow(leaseid, period.from, period.to, false);
        }

        if ($('#billfromdate').val() && $('#billtodate').val()) { fetchBills(); }
        else { $('#billhint').text('Set the bill from–to date, then click "Fetch Bills".'); }
    });

    $(document).on('click', '#clearshopbtn', function () {
        clearShopSelection();
        $('#shophint').text('Select a shop — the note will be created against the bills/charges of that shop.');
        $('#unitdisplay').val('');
        clearBillList();
    });

    // ── Bills fetch (tenant + optional shop + bill date range) ───────────────
    var fetchedBills = [];
    var billRequest = null;

    function clearBillList() {
        fetchedBills = [];
        $('#billsbody').html('');
        $('#billlistwrap').hide();
        $('#loadallbillsbtn').hide();
    }

    // Tenant select hone par bill date range default bhar do (current FY se aaj tak),
    // taaki "Fetch Bills" bina kuch type kiye kaam kare.
    function defaultBillDates() {
        if ($('#billfromdate').val() && $('#billtodate').val()) { return; }
        var today = NCDATE || new Date().toISOString().substring(0, 10);
        var y = parseInt(today.substring(0, 4), 10);
        var m = parseInt(today.substring(5, 7), 10);
        var fyStart = (m >= 4 ? y : y - 1) + '-04-01';
        $('#billfromdate').val(fyStart);
        $('#billtodate').val(today);
    }

    function fetchBills() {
        var tenantid = $('#tenantid').val();
        if (!tenantid) { Swal.fire({ icon: 'warning', title: 'Select a Tenant first' }); return; }

        var fromdate = $('#billfromdate').val() || '';
        var todate   = $('#billtodate').val() || '';
        if (fromdate && todate && fromdate > todate) {
            Swal.fire({ icon: 'warning', title: 'From Date', text: 'From Date cannot be later than To Date.' });
            return;
        }

        if (billRequest) { billRequest.abort(); }
        $('#billhint').html('<i class="fa fa-spinner fa-spin"></i> Fetching bills…');
        $('#fetchbillsbtn').prop('disabled', true);

        billRequest = $.ajax({
            url  : ROUTE.bills, type: 'POST',
            data : {
                tenantid : tenantid,
                shopid   : $('#shopid').val() || '',
                fromdate : fromdate,
                todate   : todate,
                _token   : CSRF
            },
            success: function (res) {
                // Naya response: { success, bills, shopfiltered, fallback, range, message }
                var meta = res || {};
                renderBills((meta.bills || []), meta);
            },
            error: function (xhr) {
                clearBillList();
                var msg = 'Could not fetch the bills.';
                try { var r = JSON.parse(xhr.responseText); msg = r.message || msg; } catch (e) {}
                $('#billhint').html('<span class="text-danger">' + escapeHtml(msg) + '</span>');
            },
            complete: function () {
                $('#fetchbillsbtn').prop('disabled', false);
            }
        });
    }

    function renderBills(rows, meta) {
        meta = meta || {};
        clearBillList();
        fetchedBills = rows;

        // Reference No dropdown bhi inhi bills se bharo — dono jagah same data
        loadReferenceInvoicesFromBills(rows);

        var shopname = $('#shopname').val() || '';
        var msg = meta.message || '';
        if (meta.fallback && shopname) { msg = 'Shop "' + shopname + '" — ' + msg; }
        var tone = (meta.fallback || !rows.length) ? 'text-warning' : 'text-muted';

        if (!rows.length) {
            $('#billhint').html('<span class="' + tone + '">'
                + escapeHtml(msg || 'No bill found in this range — try a different date range or shop.')
                + '</span>');
            return;
        }

        var html = '';
        $.each(rows, function (i, b) {
            var shopBadge = '';
            if ($('#shopid').val() && b.shopmatched === false) {
                shopBadge = ' <span class="badge badge-light border" title="This bill has no charge of the selected shop">other shop</span>';
            }
            html += '<tr data-docid="' + escapeHtml(b.docid) + '">'
                  + '<td>' + (i + 1) + '</td>'
                  + '<td>' + escapeHtml(b.vno) + '</td>'
                  + '<td>' + escapeHtml(b.vdate || '—') + '</td>'
                  + '<td>' + escapeHtml(b.period || '—') + shopBadge + '</td>'
                  + '<td>' + ((b.lines || []).length) + '</td>'
                  + '<td class="text-right">' + parseFloat(b.amount || 0).toFixed(2) + '</td>'
                  + '<td class="text-center">'
                      + '<button type="button" class="btn btn-xs btn-primary load-bill" data-idx="' + i + '"'
                      + ' title="Load the charges of this bill into the note grid"><i class="fa fa-download"></i> Charges</button>'
                      + '<button type="button" class="btn btn-xs btn-outline-secondary view-bill ml-1" data-idx="' + i + '"'
                      + ' title="View the charge lines of this bill"><i class="fa fa-list"></i></button>'
                  + '</td>'
                  + '</tr>';
        });

        $('#billsbody').html(html);
        $('#billlistwrap').show();
        $('#loadallbillsbtn').show();
        $('#billhint').html('<span class="' + tone + '">'
            + escapeHtml(msg || (rows.length + ' bill(s) found — use "Charges" to load the charges of that bill into the note grid.'))
            + '</span>');
    }    // Reference No dropdown me sirf CHARGE NAME — bake kuch (docid, period, count)
    // user ko samajh nahi aata, isliye label sirf charge ka naam hai.
    function billChargeLabel(bill) {
        var names = [];
        $.each((bill && bill.lines) || [], function (i, L) {
            var nm = String(L.chargename || L.chargecode || '').trim();
            if (nm && names.indexOf(nm) === -1) { names.push(nm); }
        });
        return names.join(', ');
    }

    function billRefOption(bill) {
        var lineTotal = 0;
        $.each(bill.lines || [], function (k, L) {
            lineTotal += (parseFloat(L.amount || 0) + parseFloat(L.taxamount || 0));
        });
        return '<option value="' + escapeHtml(bill.docid) + '"'
             + ' data-vno="' + escapeHtml(bill.vno || '') + '"'
             + ' data-date="' + escapeHtml(bill.vdate_iso || '') + '"'
             + ' data-month="' + escapeHtml(bill.period || '') + '"'
             + ' data-net="' + lineTotal.toFixed(2) + '"'
             + ' data-paid="0.00"'
             + ' data-out="' + lineTotal.toFixed(2) + '"'
             + '>' + escapeHtml(billChargeLabel(bill)) + '</option>';
    }

    // Fetched bills = Reference No options (same source, date/shop filtered)
    function loadReferenceInvoicesFromBills(rows) {
        var $sel = $('#refdocid');
        var opts = '<option value="">-- Select Charge --</option>';
        $.each(rows || [], function (i, b) { opts += billRefOption(b); });
        $sel.html(opts);
        if ($.fn.select2) { $sel.trigger('change.select2'); }
    }

    // ── Bill ke charges note grid me load karo (sale bill entry concept) ─────
    function noteRowsFromBill(bill) {
        var rows = [];
        $.each(bill.lines || [], function (i, L) {
            rows.push({
                chargecode: L.chargecode || '',
                chargename: L.chargename || '',
                fromdate  : L.fromdate || '',
                todate    : L.todate || '',
                unit      : (L.unit != null && L.unit !== '') ? L.unit : '',
                rate      : (L.rate != null && L.rate !== '') ? L.rate : '',
                taxrate   : (L.taxrate != null && L.taxrate !== '') ? L.taxrate : '',
                amount    : L.amount || '',
                taxamount : (L.taxamount != null && L.taxamount !== '') ? L.taxamount : '',
                remarks   : '',
                billdocid : bill.docid || ''
            });
        });
        return rows;
    }

    function applyBillToHeader(bill) {
        if (!bill) { return; }
        // Reference No = yahi bill (asal bill edit nahi hoti, uske against note)
        var $sel = $('#refdocid');
        if (!$sel.find('option').filter(function () { return $(this).val() === bill.docid; }).length) {
            $sel.append(billRefOption(bill));
        }
        $sel.val(bill.docid).trigger('change');
    }

    function loadBillIntoGrid(bill, append) {
        if (!bill) { return; }
        var rows = noteRowsFromBill(bill);
        if (!rows.length) { Swal.fire({ icon: 'info', title: 'This bill has no charge lines.' }); return; }

        applyBillToHeader(bill);

        if (append) {
            noteRows = noteRows.concat(rows);
        } else {
            noteRows = rows;
        }
        renderDetailTable();
        $('#reason').val($('#reason').val() || 'Bill Correction');
        $('html,body').animate({ scrollTop: $('#detailtable').offset().top - 120 }, 300);
    }

    $(document).on('click', '.load-bill', function () {
        var bill = fetchedBills[parseInt($(this).data('idx'), 10)];
        if (!bill) { return; }

        if (noteRows.length) {
            Swal.fire({
                title: 'Replace charges?',
                text: 'The grid already has lines. This bill\'s lines will replace them.',
                icon: 'question', showCancelButton: true, confirmButtonText: 'Yes, Replace'
            }).then(function (r) { if (r.isConfirmed) { loadBillIntoGrid(bill, false); } });
            return;
        }
        loadBillIntoGrid(bill, false);
    });

    $(document).on('click', '.view-bill', function () {
        var bill = fetchedBills[parseInt($(this).data('idx'), 10)];
        if (!bill) { return; }
        var html = '<table class="table table-bordered mb-0">'
                 + '<thead class="thead-light"><tr><th>#</th><th>Charge</th><th>Period</th><th class="text-right">Unit</th>'
                 + '<th class="text-right">Rate</th><th class="text-right">Amount</th><th class="text-right">Tax</th></tr></thead><tbody>';
        $.each(bill.lines || [], function (i, L) {
            html += '<tr><td>' + (i + 1) + '</td><td>' + escapeHtml(L.chargename || L.chargecode)
                 + '</td><td>' + dmy(L.fromdate) + ' to ' + dmy(L.todate) + '</td>'
                 + '<td class="text-right">' + (L.unit != null ? parseFloat(L.unit).toFixed(2) : '—') + '</td>'
                 + '<td class="text-right">' + parseFloat(L.rate || 0).toFixed(2) + '</td>'
                 + '<td class="text-right">' + parseFloat(L.amount || 0).toFixed(2) + '</td>'
                 + '<td class="text-right">' + parseFloat(L.taxamount || 0).toFixed(2) + '</td></tr>';
        });
        html += '</tbody></table>';

        Swal.fire({
            title: 'Bill ' + bill.docid,
            html: html,
            width: 900,
            confirmButtonText: 'Close'
        });
    });

    $(document).on('click', '#loadallbillsbtn', function () {
        if (!fetchedBills.length) { return; }
        if (noteRows.length) {
            Swal.fire({
                title: 'Replace charges?',
                text: 'The grid already has lines. Lines from all fetched bills will replace them.',
                icon: 'question', showCancelButton: true, confirmButtonText: 'Yes, Replace'
            }).then(function (r) {
                if (!r.isConfirmed) { return; }
                noteRows = [];
                $.each(fetchedBills, function (i, b) { noteRows = noteRows.concat(noteRowsFromBill(b)); });
                renderDetailTable();
            });
            return;
        }
        $.each(fetchedBills, function (i, b) { noteRows = noteRows.concat(noteRowsFromBill(b)); });
        renderDetailTable();
    });

    $('#fetchbillsbtn').on('click', fetchBills);
    $('#billfromdate, #billtodate').on('change', function () {
        if ($('#billfromdate').val() && $('#billtodate').val()) { fetchBills(); }
    });

    // ── Reference dropdown — tenant invoices + charges ──
    function loadReferenceInvoices(tenantid, selectAfter) {
        var $sel = $('#refdocid');
        clearInvoiceBox();
        $('#refdate').val('');

        if (!tenantid) {
            var opts = '<option value="">-- Direct / Without Invoice --</option>';
            opts += '<optgroup label="Direct Charge / No Invoice">';
            $.each(charges, function (i, c) {
                opts += '<option value="' + escapeHtml(c.chargecode) + '"'
                      + ' data-chargecode="' + escapeHtml(c.chargecode) + '">'
                      + escapeHtml(c.chargename)
                      + '</option>';
            });
            opts += '</optgroup>';

            if ($.fn.select2) {
                try { $sel.select2('destroy'); } catch(e) {}
            }
            $sel.html(opts);
            if ($.fn.select2) {
                $sel.select2({ width: '100%', placeholder: '-- Select Reference / Charge --' });
            }
            if (selectAfter) selectAfter();
            return;
        }

        $.ajax({
            url  : ROUTE.referencelist,
            type : 'POST',
            data : { tenantid: tenantid, _token: CSRF },
            success: function (bills) {
                var opts = '<option value="">-- Direct / Without Invoice --</option>';
                if (bills && bills.length) {
                    opts += '<optgroup label="Tenant Invoices / Bills">';
                    $.each(bills, function (i, b) {
                        opts += '<option value="' + escapeHtml(b.docid) + '"'
                              + ' data-vno="' + escapeHtml(b.vno || '') + '"'
                              + ' data-date="' + escapeHtml(b.vdate_iso || '') + '"'
                              + ' data-month="' + escapeHtml(b.forperiod || '') + '"'
                              + ' data-net="' + escapeHtml(b.billamount || '0.00') + '"'
                              + ' data-paid="' + escapeHtml(b.paid || '0.00') + '"'
                              + ' data-out="' + escapeHtml(b.outstanding || '0.00') + '"'
                              + ' data-chargename="' + escapeHtml(b.chargename || '') + '">'
                              + 'Bill #' + escapeHtml(b.vno) + ' (' + escapeHtml(b.vdate) + ') - ' + escapeHtml(b.chargename) + ' - ₹ ' + escapeHtml(b.billamount)
                              + '</option>';
                    });
                    opts += '</optgroup>';
                }

                opts += '<optgroup label="Direct Charge / No Invoice">';
                $.each(charges, function (i, c) {
                    opts += '<option value="' + escapeHtml(c.chargecode) + '"'
                          + ' data-chargecode="' + escapeHtml(c.chargecode) + '">'
                          + escapeHtml(c.chargename)
                          + '</option>';
                });
                opts += '</optgroup>';

                if ($.fn.select2) {
                    try { $sel.select2('destroy'); } catch(e) {}
                }
                $sel.html(opts);
                if ($.fn.select2) {
                    $sel.select2({ width: '100%', placeholder: '-- Select Reference / Charge --' });
                }
                if (selectAfter) selectAfter();
            },
            error: function () {
                var opts = '<option value="">-- Direct / Without Invoice --</option>';
                opts += '<optgroup label="Direct Charge / No Invoice">';
                $.each(charges, function (i, c) {
                    opts += '<option value="' + escapeHtml(c.chargecode) + '"'
                          + ' data-chargecode="' + escapeHtml(c.chargecode) + '">'
                          + escapeHtml(c.chargename)
                          + '</option>';
                });
                opts += '</optgroup>';
                if ($.fn.select2) {
                    try { $sel.select2('destroy'); } catch(e) {}
                }
                $sel.html(opts);
                if ($.fn.select2) {
                    $sel.select2({ width: '100%', placeholder: '-- Select Reference / Charge --' });
                }
                if (selectAfter) selectAfter();
            }
        });
    }

    function clearInvoiceBox() {
        $('#inv_no, #inv_date, #inv_month, #inv_net, #inv_paid, #inv_out').text('—');
    }

    $(document).on('change', '#refdocid', function () {
        var $opt = $(this).find('option:selected');
        var val  = $(this).val() || '';
        if (!val) {
            clearInvoiceBox();
            $('#refdate').val('');
            $('#refchargecode').val('');
            $('#billingperiodrow').hide();
            return;
        }

        var vno  = $opt.data('vno');
        var date = $opt.data('date');
        var cc   = ($opt.data('chargecode') || '').toUpperCase().trim();

        if (vno) {
            // Selected an invoice
            $('#inv_no').text(vno);
            $('#inv_date').text(dmy(date));
            $('#inv_month').text($opt.data('month') || '—');
            $('#inv_net').text(fmt($opt.data('net')));
            $('#inv_paid').text(fmt($opt.data('paid')));
            $('#inv_out').text(fmt($opt.data('out')));
            $('#refdate').val(date || '');
            $('#refchargecode').val('');
            $('#billingperiodrow').hide();
        } else {
            clearInvoiceBox();
            $('#refdate').val('');
            $('#refchargecode').val(val);

            // RENT charge selected → billing period row show karo + auto-set current month
            var isRent = (cc === 'RENT' || val === 'RENT' || val === '4182' ||
                          (chargesMap[val] && (chargesMap[val].shortcode === 'RENT' || (chargesMap[val].chargename || '').toUpperCase().indexOf('RENT') !== -1)));

            if (isRent) {
                if (!$('#fromp').val()) {
                    var today = NCDATE || new Date().toISOString().substring(0, 10);
                    var ym = today.substring(0, 7); // YYYY-MM
                    $('#fromp').val(ym);
                    $('#top').val(ym);
                }
                $('#billingperiodrow').show();

                // leaseid — shop selected ho to us ka, warna pehli available shop ka
                var leaseid = parseInt($('#leaseid').val() || 0, 10);
                if (!leaseid && tenantShops.length) {
                    for (var si = 0; si < tenantShops.length; si++) {
                        if (tenantShops[si].leaseid) {
                            leaseid = parseInt(tenantShops[si].leaseid, 10);
                            break;
                        }
                    }
                }
                var vdate = $('#vdate').val();
                if (leaseid && vdate) {
                    var period = rentPeriodFromDate(vdate);
                    autoFetchRentRow(leaseid, period.from, period.to, false);
                }
            } else {
                $('#billingperiodrow').hide();
            }
        }
    });

    // ── Charge rows ──────────────────────────────────────────────────────────
    function chargeOptionsHtml(selected) {
        var opts = '<option value="">-- Select Charge --</option>';
        $.each(charges, function (i, c) {
            opts += '<option value="' + escapeHtml(c.chargecode) + '"'
                  + (c.chargecode === selected ? ' selected' : '')
                  + '>' + escapeHtml(c.chargename) + '</option>';
        });
        return opts;
    }

    function addRow(data) {
        data = data || {};
        noteRows.push({
            chargecode: data.chargecode || '',
            chargename: data.chargename || '',
            fromdate  : data.fromdate  || '',
            todate    : data.todate    || '',
            unit      : data.unit      || '',
            rate      : data.rate      || '',
            taxrate   : (data.taxrate != null && data.taxrate !== '') ? data.taxrate : '',
            amount    : data.amount    || '',
            taxamount : (data.taxamount != null && data.taxamount !== '') ? data.taxamount : '',
            remarks   : data.remarks   || ''
        });
        renderDetailTable();
    }

    function renderDetailTable() {
        if (!noteRows.length) {
            $('#detailbody').html('<tr id="nocolsrow"><td colspan="11" class="text-center text-muted py-3" style="font-size:12px;">Click "+ Add Row" to add charge lines.</td></tr>');
            recalcTotals();
            return;
        }
        var html = '';
        $.each(noteRows, function (i, r) {
            html += '<tr>';
            html += '<td>' + (i + 1) + '</td>';
            html += '<td><select class="form-control form-control-sm row-charge">' + chargeOptionsHtml(r.chargecode) + '</select></td>';
            html += '<td><input type="date" class="form-control form-control-sm row-from" value="' + escapeHtml(r.fromdate) + '"></td>';
            html += '<td><input type="date" class="form-control form-control-sm row-to" value="' + escapeHtml(r.todate) + '"></td>';
            html += '<td><input type="text" class="form-control form-control-sm row-unit" value="' + escapeHtml(r.unit) + '" placeholder="Unit"></td>';
            html += '<td><input type="number" step="0.01" min="0" class="form-control form-control-sm text-right row-rate" value="' + escapeHtml(r.rate) + '"></td>';
            html += '<td><input type="number" step="0.01" min="0" class="form-control form-control-sm text-right row-tax" value="' + escapeHtml(r.taxrate) + '"></td>';
            html += '<td><input type="number" step="0.01" min="0" class="form-control form-control-sm text-right font-weight-bold row-amt" value="' + escapeHtml(r.amount) + '"></td>';
            html += '<td><input type="number" step="0.01" class="form-control form-control-sm text-right row-taxamt" value="' + escapeHtml(r.taxamount) + '" readonly style="background:#f9f9f9;"></td>';
            html += '<td><input type="text" class="form-control form-control-sm row-remarks" maxlength="300" value="' + escapeHtml(r.remarks) + '"></td>';
            html += '<td class="text-center"><button type="button" class="btn btn-xs btn-outline-danger del-row" data-idx="' + i + '"><i class="fa fa-trash"></i></button></td>';
            html += '</tr>';
        });
        $('#detailbody').html(html);
        recalcTotals();
    }

    // Sync DOM row → noteRows array
    function syncRows() {
        $('#detailbody tr').each(function (i) {
            if (!noteRows[i]) return;
            var code = $(this).find('.row-charge').val() || '';
            noteRows[i].chargecode = code;
            noteRows[i].chargename = chargesMap[code] ? chargesMap[code].chargename : '';
            noteRows[i].fromdate   = $(this).find('.row-from').val() || '';
            noteRows[i].todate     = $(this).find('.row-to').val() || '';
            noteRows[i].unit       = $(this).find('.row-unit').val() || '';
            noteRows[i].rate       = $(this).find('.row-rate').val() || '';
            noteRows[i].taxrate    = $(this).find('.row-tax').val() || '';
            noteRows[i].amount     = $(this).find('.row-amt').val() || '';
            noteRows[i].taxamount  = $(this).find('.row-taxamt').val() || '';
            noteRows[i].remarks    = $(this).find('.row-remarks').val() || '';
        });
    }

    // Charge select → auto fill name + default unit + Tax %
    $(document).on('change', '.row-charge', function () {
        var idx  = $(this).closest('tr').index();
        var code = $(this).val();
        var c    = chargesMap[code];
        var $tr  = $(this).closest('tr');
        if (c && c.unit && !$tr.find('.row-unit').val()) { $tr.find('.row-unit').val(c.unit); }
        // Tax % charge master (mall_chargemast.taxstru → taxstru) se auto-fetch
        $tr.find('.row-tax').val(c ? (parseFloat(c.taxpercent) || 0) : '');
        if (noteRows[idx]) {
            noteRows[idx].chargecode = code;
            noteRows[idx].chargename = c ? c.chargename : '';
            noteRows[idx].taxrate    = c ? (parseFloat(c.taxpercent) || 0) : '';
        }
        recalcTotals();

        // Agar user ne row mein RENT charge select kiya aur dates already dali hain
        var fromdate = $tr.find('.row-from').val();
        var todate   = $tr.find('.row-to').val();
        var isRent   = code === 'RENT' || code === '4182' || (c && (c.shortcode === 'RENT' || (c.chargename || '').toUpperCase().indexOf('RENT') !== -1));
        if (isRent && fromdate) {
            $tr.find('.row-from').trigger('change');
        }
    });

    // Amount / rate / tax change → recalc
    $(document).on('input', '.row-amt, .row-rate, .row-tax', function () { recalcTotals(); });

    // Delete row
    $(document).on('click', '.del-row', function () {
        var idx = parseInt($(this).data('idx'), 10);
        noteRows.splice(idx, 1);
        renderDetailTable();
    });

    $('#addrowbtn').on('click', function () { addRow(); });

    // ── RENT auto-fetch: row mein from/to date change hone par bhi escalation re-fetch ──
    $(document).on('change', '.row-from, .row-to', function () {
        var $tr      = $(this).closest('tr');
        var idx      = $tr.index();
        var fromdate = $tr.find('.row-from').val();
        var todate   = $tr.find('.row-to').val();

        // Reference mein RENT hona chahiye ya row mein RENT charge select ho
        var refcode   = ($('#refchargecode').val() || '').toUpperCase().trim();
        var rowCharge = ($tr.find('.row-charge').val() || '').toUpperCase().trim();
        var isRentRow = (refcode === 'RENT' || refcode === '4182' || rowCharge === 'RENT' || rowCharge === '4182' ||
                         (chargesMap[refcode] && (chargesMap[refcode].shortcode === 'RENT' || (chargesMap[refcode].chargename || '').toUpperCase().indexOf('RENT') !== -1)) ||
                         (chargesMap[rowCharge] && (chargesMap[rowCharge].shortcode === 'RENT' || (chargesMap[rowCharge].chargename || '').toUpperCase().indexOf('RENT') !== -1)));
        if (!isRentRow || !fromdate) { return; }

        // leaseid collect karo — precedence: selected shop > any tenantShop > tenantid fallback
        var leaseid = parseInt($('#leaseid').val() || 0, 10);
        if (!leaseid) {
            for (var si = 0; si < tenantShops.length; si++) {
                var lid = parseInt(tenantShops[si].leaseid || 0, 10);
                if (lid) { leaseid = lid; break; }
            }
        }

        var tenantid = $('#tenantid').val() || '';
        if (!tenantid) { return; }

        // AJAX call — leaseid ho ya na ho, dono support karo
        $.ajax({
            url  : ROUTE.rentescalation, type : 'POST',
            data : {
                leaseid   : leaseid  || 0,
                tenantid  : tenantid,
                chargecode: rowCharge || refcode,
                fromdate  : fromdate,
                todate    : todate || fromdate,
                _token    : CSRF
            },
            success: function (res) {
                if (!res.success) {
                    console.warn('[RENT] escalation fetch failed:', res.message);
                    return;
                }
                var r = noteRows[idx];
                if (!r) { return; }

                var rentCharge = chargesMap[res.chargecode] || getRentCharge();
                var cCode = res.chargecode || (rentCharge ? rentCharge.chargecode : 'RENT');
                var cName = res.chargename || (rentCharge ? rentCharge.chargename : 'RENT');

                r.chargecode = cCode;
                r.chargename = cName;
                r.unit       = res.area       != null ? parseFloat(res.area).toFixed(2)     : r.unit;
                r.rate       = res.rate       != null ? parseFloat(res.rate).toFixed(4)     : r.rate;
                r.taxrate    = res.taxpercent != null ? parseFloat(res.taxpercent)
                                   : (rentCharge ? (parseFloat(rentCharge.taxpercent) || 0) : 0);
                r.amount     = res.amount     != null ? parseFloat(res.amount).toFixed(2)   : r.amount;
                r.fromdate   = fromdate;
                r.todate     = todate || '';
                renderDetailTable();
            },
            error: function (xhr) {
                console.error('[RENT] AJAX error:', xhr.responseText);
            }
        });
    });

    // ── Fetch Charges button: fetchallshopcharges se RENT rows → grid ──────────
    $('#fetchchargesbtn').on('click', function () {
        var tenantid = $('#tenantid').val();
        var fromp    = $('#fromp').val();  // YYYY-MM
        var top      = $('#top').val();    // YYYY-MM
        var refcc    = ($('#refchargecode').val() || '').toUpperCase().trim();

        if (!tenantid) { Swal.fire({ icon: 'warning', title: 'Tenant select karo pehle.' }); return; }
        if (!fromp)    { Swal.fire({ icon: 'warning', title: 'Billing Period (From) daalo.' }); return; }
        if (!top)      { top = fromp; $('#top').val(fromp); }

        var $btn = $(this).prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Fetching…');

        $.ajax({
            url  : '{{ route("fetchallshopcharges") }}',
            type : 'POST',
            data : {
                tenantid   : tenantid,
                chargecode : refcc || 'RENT',
                fromperiod : fromp,
                toperiod   : top,
                _token     : CSRF
            },
            success: function (res) {
                if (!res.success) {
                    Swal.fire({ icon: 'info', title: res.message || 'No data found.' });
                    return;
                }

                var rows = res.rows || [];
                if (!rows.length) {
                    Swal.fire({ icon: 'info', title: 'No charges found for this period.' });
                    return;
                }

                // Confirm agar grid mein already rows hain
                function loadRows() {
                    noteRows = [];
                    $.each(rows, function (i, c) {
                        var fromdate = res.period ? res.period.from : '';
                        var todate   = res.period ? res.period.to   : '';
                        // Charge name lookup from chargesMap
                        var cc   = c.chargecode || '';
                        var cname = c.chargename || (chargesMap[cc] ? chargesMap[cc].chargename : cc);
                        var unit  = c.area ? parseFloat(c.area).toFixed(2) : '';
                        // unit field: Area/Unit column
                        noteRows.push({
                            chargecode : cc,
                            chargename : cname,
                            fromdate   : fromdate,
                            todate     : todate,
                            unit       : unit,
                            rate       : c.rate != null ? parseFloat(c.rate).toFixed(4) : '',
                            taxrate    : c.gstpercent != null ? parseFloat(c.gstpercent) : '',
                            amount     : c.amount != null ? parseFloat(c.amount).toFixed(2) : '',
                            taxamount  : '',
                            remarks    : c.shopname ? c.shopname : ''
                        });
                    });
                    renderDetailTable();
                    $('html,body').animate({ scrollTop: $('#detailtable').offset().top - 120 }, 300);
                }

                if (noteRows.length) {
                    Swal.fire({
                        title: 'Replace existing rows?',
                        text : 'Grid mein already ' + noteRows.length + ' row(s) hain. Replace karein?',
                        icon : 'question', showCancelButton: true, confirmButtonText: 'Yes, Replace'
                    }).then(function (r) { if (r.isConfirmed) { loadRows(); } });
                } else {
                    loadRows();
                }
            },
            error: function (xhr) {
                var msg = 'Charges load nahi ho sake.';
                try { msg = JSON.parse(xhr.responseText).message || msg; } catch(e) {}
                Swal.fire({ icon: 'error', title: msg });
            },
            complete: function () {
                $btn.prop('disabled', false).html('<i class="fa fa-download"></i> Fetch Charges');
            }
        });
    });

    // ── Totals ───────────────────────────────────────────────────────────────
    function recalcTotals() {
        syncRows();
        var taxable = 0, tax = 0, total = 0, lines = 0;
        $.each(noteRows, function (i, r) {
            var amt = parseFloat(r.amount) || 0;
            var pct = parseFloat(r.taxrate) || 0;
            var ta  = round2(amt * pct / 100);
            r.taxamount   = ta;
            r.totalamount = round2(amt + ta);
            $('#detailbody tr').eq(i).find('.row-taxamt').val(ta ? ta.toFixed(2) : '');
            if (amt > 0) {
                taxable += amt;
                tax     += ta;
                total   += round2(amt + ta);
                lines++;
            }
        });
        taxable = round2(taxable);
        tax     = round2(tax);
        total   = round2(total);

        $('#tfoot_taxable').text(fmtRaw(taxable));
        $('#tfoot_tax').text(fmtRaw(tax));
        $('#tfoot_total').text(fmtRaw(total));
        $('#sumLines').text(lines);
        $('#sumTaxable').text(fmt(taxable));
        $('#sumTax').text(fmt(tax));
        $('#sumTotal').text(fmtRaw(total));
    }

    // ── Reset ────────────────────────────────────────────────────────────────
    function resetForm() {
        $('#noteform')[0].reset();
        // form.reset() hidden vtype ko HTML default par le jaata hai — selected note type wapas set karo
        $('#vtype').val(modeVtype);
        if ($.fn.select2) { $('#tenantid').trigger('change.select2'); }
        $('#editing_docid').val('');
        $('#docid_badge').addClass('d-none').text('');
        $('#note_no_display').val('');
        $('#vdate').val(NCDATE);
        $('#unitdisplay').val('');
        // Charges wapas populate karo (mall_chargemast se) — selection clear karo
        loadReferenceInvoices(null, null);
        $('#refdate').val('');
        $('#refchargecode').val('');
        $('#billingperiodrow').hide();
        $('#fromp').val('');
        $('#top').val('');
        clearInvoiceBox();
        clearShopSelection();
        renderTenantShops([]);
        clearBillList();
        $('#billhint').text('Select a tenant and a date range — the bills of that period will appear here.');
        noteRows = [];
        renderDetailTable();
        loadNoteNo();
    }

    // Shops + reference invoices ek saath (callback = references load hone par)
    function loadTenantContext(tid, cb) {
        $('#unitdisplay').val('');
        clearShopSelection();
        clearBillList();
        if (!tid) {
            // Tenant clear hua — charges list rehne do, sirf val clear karo
            $('#refdocid').val('').trigger('change');
            clearInvoiceBox();
            renderTenantShops([]);
            if (cb) cb();
            return;
        }
        defaultBillDates();
        loadTenantShops(tid);
        // Reference dropdown ke liye purani list tab tak (edit mode friendly);
        // "Fetch Bills" isko date/shop filtered list se replace kar deta hai.
        loadReferenceInvoices(tid, cb);
    }

    // ── Tenant change → shops + reference invoices ───────────────────────────
    $('#tenantid').on('change', function () {
        loadTenantContext($(this).val(), null);
        loadNoteNo();
    });

    // ── Note Date change → Note No refresh + RENT re-fetch (agar shop selected ho) ──
    $('#vdate').on('change', function () {
        loadNoteNo();
        // Agar shop already select hai to RENT date update karo
        var leaseid = parseInt($('#leaseid').val() || 0, 10);
        var vdate   = $(this).val();
        if (leaseid && vdate) {
            var period = rentPeriodFromDate(vdate);
            // Sirf auto-filled RENT row ko update karo (manual rows ko nahi)
            var hasManualNonRent = false;
            $.each(noteRows, function (i, r) {
                if (r.chargecode !== 'RENT' && parseFloat(r.amount || 0) > 0) {
                    hasManualNonRent = true;
                }
            });
            // Agar grid empty hai ya sirf RENT row hai to silently re-fetch
            var onlyRentOrEmpty = !noteRows.length || (noteRows.length === 1 && noteRows[0].chargecode === 'RENT');
            autoFetchRentRow(leaseid, period.from, period.to, onlyRentOrEmpty);
        }
    });

    // ── Save ─────────────────────────────────────────────────────────────────
    function doSave(newAfter) {
        recalcTotals(); // sync + total

        if (!$('#tenantid').val()) { Swal.fire({ icon: 'warning', title: 'Select a Tenant' }); return; }

        var validRows = $.grep(noteRows, function (r) {
            return r.chargecode && (parseFloat(r.amount) || 0) > 0;
        });
        if (!validRows.length) {
            Swal.fire({ icon: 'warning', title: 'Add at least one charge line', text: 'Select a charge code and enter amount.' });
            return;
        }

        var data = {
            _token        : CSRF,
            vtype         : currentVtype(),
            editing_docid : $('#editing_docid').val(),
            tenantid      : $('#tenantid').val(),
            vdate         : $('#vdate').val(),
            refdocid      : $('#refdocid').val(),
            refdate       : $('#refdate').val(),
            reason        : $('#reason').val(),
            remarks       : $('#remarks').val(),
            note_rows     : validRows
        };

        $('#savebtn, #savebtn2').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Saving…');

        $.ajax({
            url    : ROUTE.save, type: 'POST', data: data,
            success: function (res) {
                if (res.success) {
                    Swal.fire({ icon: 'success', title: 'Saved!', text: res.message, timer: 1800, showConfirmButton: false })
                        .then(function () { location.reload(); });
                    $('#editing_docid').val(res.docid);
                    $('#docid_badge').text(res.docid).removeClass('d-none');
                    $('#note_no_display').val(fmtVno(res.vno));
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Could not save note.' });
                }
            },
            error: function (xhr) {
                var msg = 'An error occurred.';
                try { var r = JSON.parse(xhr.responseText); msg = r.message || (r.errors ? Object.values(r.errors).flat().join(' | ') : msg); } catch(e){}
                Swal.fire({ icon: 'error', title: 'Error', text: msg });
            },
            complete: function () {
                $('#savebtn, #savebtn2').prop('disabled', false).html('<i class="fa fa-save"></i> Save');
            }
        });
    }

    $('#savebtn').on('click', function () { doSave(false); });

    // ── New / Reset ──────────────────────────────────────────────────────────
    $('#newbtn, #resetbtn').on('click', function () {
        Swal.fire({ title: 'Reset form?', text: 'Unsaved data will be lost.', icon: 'question', showCancelButton: true, confirmButtonText: 'Yes, Reset' })
            .then(function (r) { if (r.isConfirmed) { resetForm(); } });
    });

    // ── Load note for edit ───────────────────────────────────────────────────
    function loadNote(docid) {
        $.ajax({
            url  : ROUTE.note, type: 'POST', data: { docid: docid, _token: CSRF },
            success: function (res) {
                if (!res.success) { Swal.fire({ icon: 'error', title: 'Not Found', text: res.message }); return; }
                var n = res.note;
                var vtype = n.vtype || 'DEN';
                applyMode(vtype);
                $('#editing_docid').val(n.docid);
                ++noteNoToken; // resetForm ke pending loadNoteNo ko ignore karo
                $('#note_no_display').val(fmtVno(n.vno));
                $('#docid_badge').text(n.docid).removeClass('d-none');
                $('#vdate').val(n.vdate ? String(n.vdate).substring(0, 10) : '');
                $('#reason').val(n.reason || '');
                $('#remarks').val(n.remarks || '');

                // Tenant + reference (refdocid options async aate hain → callback me set)
                var refToSet = n.refdocid || '';
                var tid = String(n.tenantid || '');
                $('#tenantid').val(tid);
                if ($.fn.select2) { $('#tenantid').trigger('change.select2'); }

                loadTenantContext(tid, function () {
                    if (refToSet) {
                        if (!$('#refdocid option[value="' + escapeHtml(refToSet) + '"]').length) {
                            $('#refdocid').append('<option value="' + escapeHtml(refToSet) + '">' + escapeHtml(refToSet) + '</option>');
                        }
                        $('#refdocid').val(refToSet);
                        if ($.fn.select2) { $('#refdocid').trigger('change.select2'); }
                        $('#refdocid').trigger('change');
                    }
                });
                $('#refdate').val(n.refdate ? String(n.refdate).substring(0, 10) : '');

                // Charge lines
                noteRows = [];
                $.each(res.details || [], function (i, d) {
                    noteRows.push({
                        chargecode: d.chargecode,
                        chargename: d.chargename || (chargesMap[d.chargecode] ? chargesMap[d.chargecode].chargename : d.chargecode),
                        fromdate  : d.fromdate ? String(d.fromdate).substring(0, 10) : '',
                        todate    : d.todate   ? String(d.todate).substring(0, 10)   : '',
                        unit      : d.unit     || '',
                        rate      : d.rate     || '',
                        taxrate   : (d.taxrate != null && d.taxrate !== '') ? d.taxrate : '',
                        amount    : d.amount   || '',
                        taxamount : (d.taxamount != null && d.taxamount !== '') ? d.taxamount : '',
                        remarks   : d.remarks  || ''
                    });
                });
                renderDetailTable();

                $('html,body').animate({ scrollTop: 0 }, 400);
            },
            error: function () { Swal.fire({ icon: 'error', title: 'Error', text: 'Could not load note.' }); }
        });
    }

    $(document).on('click', '.load-note', function () {
        var docid = $(this).data('docid');
        var vtype = $(this).data('vtype');
        if (vtype && vtype !== currentVtype()) { applyMode(vtype); }
        loadNote(docid);
        $('html,body').animate({ scrollTop: 0 }, 400);
    });

    // ── Delete note ──────────────────────────────────────────────────────────
    $(document).on('click', '.del-note', function () {
        var docid = $(this).data('docid');
        Swal.fire({ title: 'Delete Note?', text: 'Note ' + docid + ' will be permanently deleted.', icon: 'warning', showCancelButton: true, confirmButtonColor: '#dc3545', confirmButtonText: 'Yes, Delete' })
            .then(function (r) {
                if (!r.isConfirmed) return;
                $.ajax({
                    url: ROUTE.del, type: 'POST', data: { docid: docid, _token: CSRF },
                    success: function (res) {
                        if (res.success) {
                            Swal.fire({ icon: 'success', title: 'Deleted', text: res.message, timer: 1600, showConfirmButton: false })
                                .then(function () { location.reload(); });
                            if ($('#editing_docid').val() === docid) resetForm();
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                        }
                    },
                    error: function () { Swal.fire({ icon: 'error', title: 'Error', text: 'Could not delete note.' }); }
                });
            });
    });

    // ── Select2 ──────────────────────────────────────────────────────────────
    if ($.fn.select2) {
        $('#tenantid').select2({ width: '100%', placeholder: '-- Select Tenant --' });
        // refdocid select2 loadReferenceInvoices() ke andar init hota hai
    }

    // ── Init — screen khulte hi koi note khula nahi hota; user dropdown se
    //    Debit Note ya Credit Note select karega, tabhi form khulega ──────────
    modeVtype = '';
    $('#vtype').val('');
    syncTypeSelect('');
    showNoteForm(false);
    renderDetailTable();
    // Reference dropdown mein charges pre-load karo (mall_chargemast se)
    loadReferenceInvoices(null, null);
})();
</script>

@endsection
