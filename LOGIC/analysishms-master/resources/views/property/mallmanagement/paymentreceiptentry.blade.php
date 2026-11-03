@extends('property.layouts.main')
@section('main-container')
@include('cdns.select')

<style>
#pendingbillstable td, #pendingbillstable th { vertical-align: middle !important; padding: 5px 8px !important; font-size: 12px; }
#paydetailstable td, #paydetailstable th    { vertical-align: middle !important; padding: 4px 6px !important; font-size: 12px; }
.summary-box .s-row { display: flex; justify-content: space-between; padding: 5px 0; font-size: 12px; border-bottom: 1px solid #eee; }
.summary-box .s-row.total-row { border-bottom: none; font-weight: bold; font-size: 14px; padding-top: 8px; }
.pay-input { text-align: right; }
.docid-badge { font-size: 11px; letter-spacing: .5px; }
/* Modal nature-field rows */
.nature-field { display: none; }
</style>

<div class="content-body">
<div class="container-fluid">

    {{-- Page Header --}}
    <div class="row mb-2">
        <div class="col-12">
            <div class="d-flex align-items-center justify-content-between flex-wrap">
                <div>
                    <h4 class="font-weight-bold mb-0">Payment Receipt Entry</h4>
                    <small class="text-muted">Mall Management &rsaquo; Collections &rsaquo; Receipt Entry</small>
                </div>
                {{-- New / Save buttons hata diye — Receipt Summary card me Save + Reset available hain --}}
            </div>
        </div>
    </div>

    <form id="receiptform" autocomplete="off">
        @csrf
        <input type="hidden" id="editing_docid" name="editing_docid" value="">

        <div class="row">

            {{-- ═══ LEFT COLUMN ═══ --}}
            <div class="col-lg-8 col-12">

                {{-- 1. Receipt Information --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                        <strong style="font-size:12px;">1. Receipt Information</strong>
                        <span id="docid_badge" class="badge badge-light docid-badge d-none"></span>
                    </div>
                    <div class="card-body py-2 px-3">

                        <div class="form-group row mb-1">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Receipt No</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control form-control-sm" id="receipt_no_display"
                                       readonly placeholder="Auto Generated" style="background:#f9f9f9;">
                            </div>
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Receipt Date <span class="text-danger">*</span></label>
                            <div class="col-md-3">
                                <input type="date" class="form-control form-control-sm" id="vdate" name="vdate"
                                       value="{{ $ncurdate ?? date('Y-m-d') }}" required>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Remarks</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control form-control-sm" id="remarks" name="remarks"
                                       maxlength="50" placeholder="Optional remarks">
                            </div>
                        </div>

                    </div>
                </div>

                {{-- 2. Tenant Details --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white">
                        <strong style="font-size:12px;">2. Tenant Details</strong>
                    </div>
                    <div class="card-body py-2 px-3">

                        <div class="form-group row mb-1">
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

                        <div class="form-group row mb-1">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Contact Person</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control form-control-sm" id="contactperson" readonly>
                            </div>
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Mobile No</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control form-control-sm" id="tenantmobile" readonly>
                            </div>
                        </div>

                        {{-- Shops Section --}}
                        <div class="form-group row mb-0" id="shopsrow" style="display:none;">
                            <label class="col-md-3 col-form-label col-form-label-sm text-muted">Shop(s) / Unit(s)</label>
                            <div class="col-md-9">
                                <div id="shopswrap" class="border rounded p-2" style="background:#f9f9f9; min-height:36px; font-size:12px;">
                                    <span class="text-muted">Loading…</span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                {{-- 3. Pending Invoices --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                        <strong style="font-size:12px;">3. Pending Invoices</strong>
                        <span id="bills_status" class="text-white-50" style="font-size:11px;"></span>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered mb-0" id="pendingbillstable">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="36"><input type="checkbox" id="checkall" title="Select All"></th>
                                        <th>Invoice No</th>
                                        <th>Date</th>
                                        <th>Period</th>
                                        <th>Charge Type</th>
                                        <th class="text-right">Amount (₹)</th>
                                        <th class="text-right">Paid (₹)</th>
                                        <th class="text-right">Outstanding (₹)</th>
                                        <th class="text-right">Payment (₹)</th>
                                    </tr>
                                </thead>
                                <tbody id="pendingbillsbody">
                                    <tr>
                                        <td colspan="9" class="text-center text-muted py-3">
                                            Select a tenant to load pending invoices.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                {{-- 4. Payment Details --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                        <strong style="font-size:12px;">4. Payment Details</strong>
                        <button type="button" class="btn btn-sm btn-light" id="addpaybtn">
                            <i class="fa fa-plus"></i> Add Payment
                        </button>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-bordered mb-0" id="paydetailstable">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="36">#</th>
                                        <th>Payment Mode</th>
                                        <th>Reference No</th>
                                        <th>Ref Date</th>
                                        <th class="text-right">Amount (₹)</th>
                                        <th class="text-center" style="min-width:90px; white-space:nowrap;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="paydetailsbody">
                                    <tr id="nopaymentsrow">
                                        <td colspan="6" class="text-center text-muted py-2" style="font-size:12px;">
                                            Click "+ Add Payment" to add payment details.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>{{-- /LEFT --}}

            {{-- ═══ RIGHT COLUMN ═══ --}}
            <div class="col-lg-4 col-12">

                {{-- Receipt Summary --}}
                <div class="card shadow-sm">
                    <div class="card-header py-2 bg-secondary text-white">
                        <strong style="font-size:12px;">Receipt Summary</strong>
                    </div>
                    <div class="card-body py-3 px-3">

                        <div class="summary-box border rounded p-3 mb-3">
                            <div class="s-row">
                                <span>Total Selected Amount</span>
                                <span id="sumSelected">₹ 0.00</span>
                            </div>
                            <div class="s-row">
                                <span>Total Payment Amount</span>
                                <span id="sumPayment">₹ 0.00</span>
                            </div>
                            <div class="s-row total-row">
                                <span>Receipt Amount (₹)</span>
                                <span id="sumReceipt">₹ 0.00</span>
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label class="col-form-label col-form-label-sm text-muted font-weight-bold">
                                Total Receipt Amount <span class="text-danger">*</span>
                            </label>
                            <input type="number" step="0.01" min="0.01"
                                   class="form-control form-control-sm text-right font-weight-bold"
                                   id="receiptamount" name="receiptamount"
                                   placeholder="0.00" required>
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

    {{-- ═══ RECEIPT REGISTER (always visible — submit ke baad refresh) ═══ --}}
    <div id="viewpanel" class="mt-3">
        <div class="card shadow-sm">
            <div class="card-header py-2 bg-secondary text-white">
                <strong style="font-size:12px;">Receipt Register (Last 50 Receipts)</strong>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered" id="receiptslisttable" style="width:100%;">
                        <thead class="thead-light">
                            <tr>
                                <th>#</th>
                                <th>Receipt No</th>
                                <th>Date</th>
                                <th>Tenant</th>
                                <th>Payment Mode</th>
                                <th>Nature</th>
                                <th>Ref No</th>
                                <th class="text-right">Amount (₹)</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($receipts ?? [] as $r)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td><a href="javascript:void(0)" class="text-primary load-rcpt" data-docid="{{ $r->docid }}">{{ intval($r->vno) }}</a></td>
                                    <td>{{ $r->vdate ? date('d-m-Y', strtotime($r->vdate)) : '—' }}</td>
                                    <td>{{ $r->tenantname ?? '—' }}</td>
                                    <td>{{ $r->paymodename ?? $r->paycode ?? '—' }}</td>
                                    <td>{{ $r->paytype ?: '—' }}</td>
                                    <td>{{ $r->refno ?: '—' }}</td>
                                    <td class="text-right font-weight-bold">{{ number_format($r->receiptamount, 2) }}</td>
                                    <td class="text-center">
                                        <button class="btn btn-xs btn-outline-primary load-rcpt mr-1" data-docid="{{ $r->docid }}" title="Edit"><i class="fa fa-edit"></i></button>
                                        <a href="{{ url('paymentreceiptentryprint/' . rawurlencode($r->docid)) }}" target="_blank" class="btn btn-xs btn-outline-success mr-1" title="Print"><i class="fa fa-print"></i></a>
                                        <button class="btn btn-xs btn-outline-danger del-rcpt" data-docid="{{ $r->docid }}" title="Delete"><i class="fa fa-trash"></i></button>
                                    </td>
                                </tr>
                            @empty
                                <tr><td colspan="9" class="text-center text-muted py-3">No receipts yet. Save a receipt to see it here.</td></tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
</div>

{{-- ═══════════════ PAYMENT MODE MODAL ═══════════════ --}}
<div class="modal fade" id="payModeModal" tabindex="-1" role="dialog" aria-labelledby="payModeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header py-2 bg-secondary text-white">
                <h6 class="modal-title font-weight-bold" id="payModeModalLabel">
                    <i class="fa fa-credit-card mr-1"></i> Payment Details
                </h6>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body py-3">

                {{-- Loading spinner --}}
                <div id="paymodesLoading" class="text-center py-3">
                    <i class="fa fa-spinner fa-spin fa-2x text-secondary"></i>
                    <p class="text-muted mt-2" style="font-size:12px;">Loading payment modes…</p>
                </div>

                {{-- Modal form (hidden until loaded) --}}
                <div id="paymodesForm" style="display:none;">

                    <div class="form-group row mb-2">
                        <label class="col-md-4 col-form-label col-form-label-sm text-muted">Payment Mode <span class="text-danger">*</span></label>
                        <div class="col-md-8">
                            <select class="form-control form-control-sm" id="modal_paycode">
                                <option value="">-- Select --</option>
                            </select>
                        </div>
                    </div>

                    {{-- Company (Bill to Company mode) --}}
                    <div id="company_fields" class="nature-field">
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">Company <span class="text-danger">*</span></label>
                            <div class="col-md-8">
                                <select class="form-control form-control-sm" id="modal_company">
                                    <option value="">-- Select Company --</option>
                                    @foreach($companies as $c)
                                        <option value="{{ $c->sub_code }}">{{ $c->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row mb-2">
                        <label class="col-md-4 col-form-label col-form-label-sm text-muted">Amount (₹) <span class="text-danger">*</span></label>
                        <div class="col-md-8">
                            <input type="number" step="0.01" min="0.01" class="form-control form-control-sm text-right"
                                   id="modal_amount" placeholder="0.00">
                        </div>
                    </div>

                    {{-- Cheque fields --}}
                    <div id="cheque_fields" class="nature-field">
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">Cheque No</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control form-control-sm" id="modal_refno" maxlength="30" placeholder="Enter Check No.">
                            </div>
                        </div>
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">Cheque Date</label>
                            <div class="col-md-4">
                                <input type="date" class="form-control form-control-sm" id="modal_refdate" value="{{ $ncurdate ?? date('Y-m-d') }}">
                            </div>
                        </div>
                    </div>

                    {{-- UPI fields --}}
                    <div id="upi_fields" class="nature-field">
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">UPI Reference No.</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control form-control-sm" id="modal_txnno" maxlength="25" placeholder="Enter Reference No.">
                            </div>
                        </div>
                    </div>

                    {{-- Credit Card fields --}}
                    <div id="card_fields" class="nature-field">
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">Credit Card Number</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control form-control-sm" id="modal_cardno" maxlength="16" placeholder="Enter Credit Card">
                            </div>
                        </div>
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">Holder Name</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control form-control-sm" id="modal_holdername" maxlength="50" placeholder="Enter Name">
                            </div>
                        </div>
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">Exp. Date</label>
                            <div class="col-md-4">
                                <input type="date" class="form-control form-control-sm" id="modal_expdatecr">
                            </div>
                        </div>
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">Batch No.</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control form-control-sm" id="modal_batchno" maxlength="10" placeholder="Enter Batch No.">
                            </div>
                        </div>
                    </div>

                    {{-- Bank Transfer (NEFT/RTGS/IMPS) --}}
                    <div id="bank_fields" class="nature-field">
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">UTR / Ref No</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control form-control-sm" id="modal_utrno" maxlength="30" placeholder="UTR / Reference No.">
                            </div>
                        </div>
                        <div class="form-group row mb-2">
                            <label class="col-md-4 col-form-label col-form-label-sm text-muted">Transfer Date</label>
                            <div class="col-md-4">
                                <input type="date" class="form-control form-control-sm" id="modal_bankdate" value="{{ $ncurdate ?? date('Y-m-d') }}">
                            </div>
                        </div>
                    </div>

                    <div class="form-group row mb-0">
                        <label class="col-md-4 col-form-label col-form-label-sm text-muted">Narration</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control form-control-sm" id="modal_narration" maxlength="100" placeholder="Optional narration">
                        </div>
                    </div>

                </div>
            </div>
            <div class="modal-footer py-2">
                <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary btn-sm" id="modal_addbtn">
                    <i class="fa fa-plus"></i> Add
                </button>
            </div>
        </div>
    </div>
</div>

{{-- ════════════════════════ JAVASCRIPT ════════════════════════ --}}
<script>
(function () {
    'use strict';

    var CSRF = $('meta[name="csrf-token"]').attr('content');

    // Company code → name (Payment Detail table me dikhane ke liye)
    var COMPANY_MAP = @json($companies->pluck('name', 'sub_code'));

    // Payment rows array (local state)
    var paymentRows  = [];
    var editPayIndex = -1; // -1 = new, >= 0 = editing index
    var paymodesData = []; // loaded from AJAX

    var ROUTE = {
        pendingbills : "{{ route('paymentreceiptentry.pendingbills') }}",
        paymodes     : "{{ route('paymentreceiptentry.paymodes') }}",
        tenantshops  : "{{ route('paymentreceiptentry.tenantshops') }}",
        save         : "{{ route('paymentreceiptentry.save') }}",
        bill         : "{{ route('paymentreceiptentry.bill') }}",
        delete       : "{{ route('paymentreceiptentry.delete') }}",
        receiptno    : "{{ route('paymentreceiptentry.receiptno') }}"
    };

    // ── Helpers ──────────────────────────────────────────────────────────────
    function fmt(n) {
        return '₹ ' + parseFloat(n || 0).toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
    }
    function fmtRaw(n) { return parseFloat(n || 0).toFixed(2); }
    // Voucher no — Receipt No me sirf ye (last 4 digit) dikhana hai, full docid nahi
    function fmtVno(vno) { return String(parseInt(vno || 0, 10) || 0); }

    // ── Receipt No preview — voucher_prefix (RCPT) se ──────────────
    // Page load / tenant select / receipt date change pe call hota hai
    // User ko sirf voucher no (last 4 digit) dikhta hai
    function loadReceiptNo() {
        $.ajax({
            url  : ROUTE.receiptno, type: 'POST',
            data : { vdate: $('#vdate').val(), _token: CSRF },
            success: function (res) {
                if (res && res.success) {
                    $('#receipt_no_display').val(fmtVno(res.vno));
                }
            }
        });
    }

    // ── Remaining balance for a new payment (selected bills − added payments) ──
    function remainingForPayment() {
        var sumSel = 0;
        $('.bill-chk:checked').each(function () { sumSel += parseFloat($(this).data('outstanding')) || 0; });
        if (sumSel <= 0) { sumSel = parseFloat($('#receiptamount').val()) || 0; }
        var added = 0;
        $.each(paymentRows, function (i, r) { added += parseFloat(r.amount) || 0; });
        var rem = sumSel - added;
        return rem > 0 ? rem : 0;
    }

    // ── Nature → which fields to show ────────────────────────────────────────
    var NATURE_FIELDS = {
        'Cheque'        : 'cheque_fields',
        'UPI'           : 'upi_fields',
        'Credit Card'   : 'card_fields',
        'Debit Card'    : 'card_fields',
        'Bank'          : 'bank_fields',
        'NEFT'          : 'bank_fields',
        'RTGS'          : 'bank_fields',
        'IMPS'          : 'bank_fields',
        'Company'       : 'company_fields',
    };

    function showNatureFields(nature) {
        $('.nature-field').hide();
        var fieldId = NATURE_FIELDS[nature] || null;
        if (fieldId) { $('#' + fieldId).show(); }
    }

    // ── Modal: Load payment modes (once) ─────────────────────────────────────
    function loadPaymodes(cb) {
        if (paymodesData.length > 0) { if (cb) cb(); return; }
        $.ajax({
            url  : ROUTE.paymodes, type: 'POST',
            data : { _token: CSRF },
            success: function (data) {
                paymodesData = data || [];
                var opts = '<option value="">-- Select --</option>';
                $.each(paymodesData, function (i, m) {
                    opts += '<option value="' + m.rev_code + '" data-nature="' + (m.nature || '') + '" data-name="' + m.name + '">' + m.name + '</option>';
                });
                $('#modal_paycode').html(opts);
                if (cb) cb();
            },
            error: function () {
                Swal.fire({ icon: 'error', title: 'Error', text: 'Could not load payment modes.' });
            }
        });
    }

    // ── Open payment modal ────────────────────────────────────────────────────
    function openPayModal(editIndex) {
        editPayIndex = (editIndex !== undefined) ? editIndex : -1;

        $('#paymodesLoading').show();
        $('#paymodesForm').hide();
        $('.nature-field').hide();
        $('#modal_paycode, #modal_amount').val('');
        $('#modal_refno, #modal_refdate, #modal_txnno').val('');
        $('#modal_cardno, #modal_holdername, #modal_expdatecr, #modal_batchno').val('');
        $('#modal_utrno, #modal_bankdate').val('');
        $('#modal_narration').val('');
        $('#modal_company').val('');
        $('#modal_refdate, #modal_bankdate').val("{{ $ncurdate ?? date('Y-m-d') }}");
        $('#payModeModalLabel').text(editIndex >= 0 ? 'Edit Payment' : 'Add Payment');
        $('#modal_addbtn').html(editIndex >= 0 ? '<i class="fa fa-save"></i> Update' : '<i class="fa fa-plus"></i> Add');

        // Naya payment: Amount auto-fetch (baki balance) — user chahe to badal de
        if (editPayIndex < 0) {
            var rem = remainingForPayment();
            if (rem > 0) { $('#modal_amount').val(fmtRaw(rem)); }
        }

        $('#payModeModal').modal('show');

        loadPaymodes(function () {
            $('#paymodesLoading').hide();
            $('#paymodesForm').show();

            // If editing — fill values
            if (editIndex >= 0 && paymentRows[editIndex]) {
                var row = paymentRows[editIndex];
                $('#modal_paycode').val(row.paycode).trigger('change');
                $('#modal_amount').val(row.amount);
                $('#modal_refno').val(row.refno   || '');
                $('#modal_refdate').val(row.refdate || '');
                $('#modal_txnno').val(row.txnno   || '');
                $('#modal_cardno').val(row.cardno  || '');
                $('#modal_holdername').val(row.holdername || '');
                $('#modal_expdatecr').val(row.expdatecr || '');
                $('#modal_batchno').val(row.batchno  || '');
                $('#modal_utrno').val(row.utrno   || '');
                $('#modal_bankdate').val(row.bankdate || '');
                $('#modal_narration').val(row.narration || '');
                $('#modal_company').val(row.compcode || '');
            }
        });
    }

    // ── Payment mode change in modal ──────────────────────────────────────────
    $(document).on('change', '#modal_paycode', function () {
        var nature = $(this).find('option:selected').data('nature') || '';
        showNatureFields(nature);
    });

    // ── Add Payment button (open modal) ──────────────────────────────────────
    $('#addpaybtn').on('click', function () {
        openPayModal();
    });

    // ── Modal Add / Update ────────────────────────────────────────────────────
    $('#modal_addbtn').on('click', function () {
        var paycode = $('#modal_paycode').val();
        var payname = $('#modal_paycode option:selected').text();
        var nature  = $('#modal_paycode option:selected').data('nature') || '';
        var amount  = parseFloat($('#modal_amount').val()) || 0;

        if (!paycode) { Swal.fire({ icon: 'warning', title: 'Select Payment Mode', timer: 1500, showConfirmButton: false }); return; }
        if (amount <= 0) { Swal.fire({ icon: 'warning', title: 'Enter valid amount', timer: 1500, showConfirmButton: false }); return; }
        if (nature === 'Company' && !$('#modal_company').val()) { Swal.fire({ icon: 'warning', title: 'Select Company', timer: 1500, showConfirmButton: false }); return; }

        var row = {
            paycode     : paycode,
            payname     : payname,
            nature      : nature,
            amount      : amount,
            refno       : $('#modal_refno').val(),
            refdate     : $('#modal_refdate').val(),
            txnno       : $('#modal_txnno').val(),
            cardno      : $('#modal_cardno').val(),
            holdername  : $('#modal_holdername').val(),
            expdatecr   : $('#modal_expdatecr').val(),
            batchno     : $('#modal_batchno').val(),
            utrno       : $('#modal_utrno').val(),
            bankdate    : $('#modal_bankdate').val(),
            narration   : $('#modal_narration').val(),
            compcode    : $('#modal_company').val(),
            compname    : $('#modal_company').val() ? $('#modal_company option:selected').text() : '',
        };

        // Derive ref_display for table
        row.ref_display = row.refno || row.txnno || row.cardno || row.utrno || '—';
        row.date_display = row.refdate || row.expdatecr || row.bankdate || '—';

        if (editPayIndex >= 0) {
            paymentRows[editPayIndex] = row;
        } else {
            paymentRows.push(row);
        }

        $('#payModeModal').modal('hide');
        renderPayTable();
        recalcSummary();
    });

    // ── Render payment details table ──────────────────────────────────────────
    function renderPayTable() {
        if (!paymentRows.length) {
            $('#paydetailsbody').html('<tr id="nopaymentsrow"><td colspan="6" class="text-center text-muted py-2" style="font-size:12px;">Click "+ Add Payment" to add payment details.</td></tr>');
            return;
        }
        var html = '';
        $.each(paymentRows, function (i, r) {
            html += '<tr>';
            html += '<td>' + (i + 1) + '</td>';
            html += '<td>' + r.payname + (r.compname ? ' - ' + r.compname : '') + '<br><small class="text-muted">' + (r.nature || '') + '</small></td>';
            html += '<td>' + r.ref_display + '</td>';
            html += '<td>' + r.date_display + '</td>';
            html += '<td class="text-right font-weight-bold">' + fmtRaw(r.amount) + '</td>';
            html += '<td class="text-center" style="white-space:nowrap;">'
                  + '<button type="button" class="btn btn-xs btn-outline-primary edit-pay mr-1" data-idx="' + i + '"><i class="fa fa-edit"></i></button>'
                  + '<button type="button" class="btn btn-xs btn-outline-danger del-pay" data-idx="' + i + '"><i class="fa fa-trash"></i></button>'
                  + '</td>';
            html += '</tr>';
        });
        $('#paydetailsbody').html(html);
    }

    // Edit / Delete payment row
    $(document).on('click', '.edit-pay', function () { openPayModal(parseInt($(this).data('idx'))); });
    $(document).on('click', '.del-pay',  function () {
        paymentRows.splice(parseInt($(this).data('idx')), 1);
        renderPayTable();
        recalcSummary();
        // Agar payment detail khatam ho gaye, to receiptamount bhi khali kr do
        if (paymentRows.length === 0) {
            $('#receiptamount').val('');
            $('#sumReceipt').text(fmt(0));
        }
    });

    // ── Reset form ────────────────────────────────────────────────────────────
    function resetForm() {
        $('#receiptform')[0].reset();
        if ($.fn.select2) { $('#tenantid').trigger('change.select2'); }
        $('#editing_docid').val('');
        $('#savebtn2').html('<i class="fa fa-save"></i> Save'); // reset pe Save
        $('#docid_badge').addClass('d-none').text('');
        $('#receipt_no_display').val('');
        $('#vdate').val("{{ $ncurdate ?? date('Y-m-d') }}");
        loadReceiptNo(); // reset ke baad next RCPT no dobara dikhao
        $('#contactperson, #tenantmobile').val('');
        $('#shopsrow').hide();
        $('#shopswrap').html('<span class="text-muted">Loading…</span>');
        $('#pendingbillsbody').html('<tr><td colspan="9" class="text-center text-muted py-3">Select a tenant to load pending invoices.</td></tr>');
        $('#sumSelected, #sumPayment, #sumReceipt').text('₹ 0.00');
        $('#receiptamount').val('');
        $('#bills_status').text('');
        $('#checkall').prop('checked', false);
        paymentRows = [];
        renderPayTable();
    }

    // ── Tenant select → autofill + load bills + load shops ───────────────────
    $('#tenantid').on('change', function () {
        var tid  = $(this).val();
        var $opt = $(this).find('option:selected');
        $('#contactperson').val($opt.data('conperson') || '');
        $('#tenantmobile').val($opt.data('mobile')    || '');

        // Receipt No (voucher_prefix RCPT se) refresh
        loadReceiptNo();

        // Reset shops
        $('#shopsrow').hide();
        $('#shopswrap').html('<span class="text-muted">Loading…</span>');

        // Reset pending bills
        $('#pendingbillsbody').html('<tr><td colspan="9" class="text-center text-muted py-2"><i class="fa fa-spinner fa-spin"></i> Loading invoices…</td></tr>');
        $('#bills_status').text('');

        if (!tid) {
            $('#pendingbillsbody').html('<tr><td colspan="9" class="text-center text-muted py-3">Select a tenant to load pending invoices.</td></tr>');
            return;
        }

        // Load shops and pending bills in parallel
        loadTenantShops(tid);
        loadPendingBills(tid);
    });

    // ── Load tenant shops ─────────────────────────────────────────────────────
    function loadTenantShops(tenantcode) {
        $.ajax({
            url  : ROUTE.tenantshops, type: 'POST',
            data : { tenantcode: tenantcode, _token: CSRF },
            success: function (shops) {
                if (!shops || !shops.length) {
                    $('#shopsrow').show();
                    $('#shopswrap').html('<span class="text-muted" style="font-size:11px;">No shops assigned to this tenant.</span>');
                    return;
                }
                var html = '';
                $.each(shops, function (i, s) {
                    html += '<span class="d-inline-block border rounded px-2 py-1 mr-2 mb-1" style="background:#fff; font-size:12px;">'
                          + s.shopname
                          + '</span>';
                });
                $('#shopswrap').html(html);
                $('#shopsrow').show();
            },
            error: function () {
                $('#shopsrow').show();
                $('#shopswrap').html('<span class="text-danger" style="font-size:11px;">Could not load shops.</span>');
            }
        });
    }

    // ── Load pending bills ────────────────────────────────────────────────────
    function loadPendingBills(tenantid) {
        $.ajax({
            url    : ROUTE.pendingbills, type: 'POST',
            data   : { tenantid: tenantid, _token: CSRF },
            success: function (data) {
                renderPendingBills(data);
                $('#bills_status').text(data.length ? data.length + ' pending invoice(s).' : '');
            },
            error: function () {
                $('#pendingbillsbody').html('<tr><td colspan="9" class="text-center text-danger py-2">Failed to load invoices.</td></tr>');
            }
        });
    }

    function renderPendingBills(rows) {
        if (!rows || rows.length === 0) {
            $('#pendingbillsbody').html('<tr><td colspan="9" class="text-center text-muted py-3">No pending invoices for this tenant.</td></tr>');
            recalcSummary(); return;
        }
        var html = '';
        $.each(rows, function (i, r) {
            html += '<tr>';
            html += '<td><input type="checkbox" class="bill-chk" data-outstanding="' + r.outstanding + '" data-docid="' + r.docid + '"></td>';
            html += '<td>' + r.docid + '</td>';
            html += '<td>' + r.vdate + '</td>';
            html += '<td>' + r.forperiod + '</td>';
            html += '<td>' + r.chargename + '</td>';
            html += '<td class="text-right">' + r.billamount + '</td>';
            html += '<td class="text-right">' + r.paid + '</td>';
            html += '<td class="text-right font-weight-bold">' + r.outstanding + '</td>';
            html += '<td class="text-right"><input type="text" class="form-control form-control-sm pay-input pay-amt" value="0.00" disabled data-outstanding="' + r.outstanding + '" data-docid="' + r.docid + '"></td>';
            html += '</tr>';
        });
        $('#pendingbillsbody').html(html);
        recalcSummary();
    }

    // ── Check-all ─────────────────────────────────────────────────────────────
    $('#checkall').on('change', function () {
        $('.bill-chk').prop('checked', $(this).is(':checked')).trigger('change');
    });

    $(document).on('change', '.bill-chk', function () {
        var $input = $(this).closest('tr').find('.pay-amt');
        if ($(this).is(':checked')) {
            // Sirf enable karo — amount khud user daayega (section 4 ya yahan),
            // full outstanding autofill nahi (warna summary me pehle se aa jata hai)
            $input.prop('disabled', false).val('0.00');
        } else {
            $input.prop('disabled', true).val('0.00');
        }
        recalcSummary();
    });

    $(document).on('input', '.pay-amt', function () {
        var max = parseFloat($(this).data('outstanding')) || 0;
        if ((parseFloat($(this).val()) || 0) > max) { $(this).val(fmtRaw(max)); }
        recalcSummary();
    });

    // ── Recalculate summary ───────────────────────────────────────────────────
    // Concept:
    //   Total Selected Amount = Section 3 ke checked bills ka outstanding (demand)
    //   Total Payment Amount  = Section 4 (Payment Details) ke payment rows ka sum (supply)
    //   Receipt Amount        = Total Payment Amount (actual receipt value)
    function recalcSummary() {
        var sumSel = 0;
        $('.bill-chk:checked').each(function () { sumSel += parseFloat($(this).data('outstanding')) || 0; });

        // Section 4 (Payment Details) ka sum — asli paisa (supply)
        var payTableSum = 0;
        $.each(paymentRows, function (i, r) { payTableSum += parseFloat(r.amount) || 0; });

        $('#sumSelected').text(fmt(sumSel));
        $('#sumPayment').text(fmt(payTableSum));
        $('#sumReceipt').text(fmt(payTableSum));
        if (payTableSum > 0) {
            $('#receiptamount').val(fmtRaw(payTableSum));
        }
        // Payment detail na ho to receiptamount ko touch mat karo (khali / user-entered)
    }

    // ── Save ──────────────────────────────────────────────────────────────────
    function doSave() {
        if (!$('#tenantid').val()) { Swal.fire({ icon: 'warning', title: 'Select a Tenant' }); return; }
        if (parseFloat($('#receiptamount').val()) <= 0) { Swal.fire({ icon: 'warning', title: 'Enter Receipt Amount' }); return; }
        if (!paymentRows.length) { Swal.fire({ icon: 'warning', title: 'Add at least one payment detail', text: 'Click "+ Add Payment" to add payment mode and amount.' }); return; }

        // Primary paycode = first payment row
        var primaryPay = paymentRows[0];

        var data = {
            _token        : CSRF,
            editing_docid : $('#editing_docid').val(),
            tenantid      : $('#tenantid').val(),
            vdate         : $('#vdate').val(),
            paycode       : primaryPay.paycode,
            paytype       : primaryPay.nature,
            refno         : primaryPay.refno || primaryPay.txnno || primaryPay.utrno || primaryPay.cardno || '',
            remarks       : $('#remarks').val(),
            receiptamount : $('#receiptamount').val(),
            payment_rows  : paymentRows
        };

        $('#savebtn, #savebtn2').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Saving…');

        $.ajax({
            url    : ROUTE.save, type: 'POST', data: data,
            success: function (res) {
                if (res.success) {
                    Swal.fire({ icon: 'success', title: 'Saved!', text: res.message + ' | ' + fmtVno(res.vno), timer: 2500, showConfirmButton: false })
                        .then(function() {
                            location.reload();
                        });
                    $('#receipt_no_display').val(fmtVno(res.vno));
                    $('#docid_badge').text(res.docid).removeClass('d-none');
                    $('#editing_docid').val(res.docid);
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Could not save receipt.' });
                }
            },
            error: function (xhr) {
                var msg = 'An error occurred.';
                try { var r = JSON.parse(xhr.responseText); msg = r.message || (r.errors ? Object.values(r.errors).flat().join(' | ') : msg); } catch(e){}
                Swal.fire({ icon: 'error', title: 'Error', text: msg });
            },
            complete: function () {
                // Edit mode me Update, warna Save
                var isEdit = !!$('#editing_docid').val();
                $('#savebtn, #savebtn2').prop('disabled', false).html(isEdit ? '<i class="fa fa-save"></i> Update' : '<i class="fa fa-save"></i> Save');
            }
        });
    }

    $('#savebtn, #savebtn2').on('click', doSave);

    // ── New / Reset ───────────────────────────────────────────────────────────
    $('#newbtn, #resetbtn').on('click', function () {
        Swal.fire({ title: 'Reset form?', text: 'Unsaved data will be lost.', icon: 'question', showCancelButton: true, confirmButtonText: 'Yes, Reset' })
            .then(function (r) { if (r.isConfirmed) { resetForm(); } });
    });

    // ── Load receipt for edit ─────────────────────────────────────────────────
    function loadReceipt(docid) {
        $.ajax({
            url  : ROUTE.bill, type: 'POST', data: { docid: docid, _token: CSRF },
            success: function (res) {
                if (!res.success) { Swal.fire({ icon: 'error', title: 'Not Found', text: res.message }); return; }
                var rc = res.receipt;
                resetForm();
                $('#editing_docid').val(rc.docid);
                $('#savebtn2').html('<i class="fa fa-save"></i> Update'); // edit mode pe Update
                $('#receipt_no_display').val(fmtVno(rc.vno));
                $('#docid_badge').text(rc.docid).removeClass('d-none');
                $('#vdate').val(rc.vdate ? rc.vdate.substring(0, 10) : '');
                $('#remarks').val(rc.remarks || '');
                $('#receiptamount').val(rc.receiptamount || '');
                $('#tenantid').val(rc.tenantid).trigger('change');
                $('#contactperson').val(rc.contactperson || '');
                $('#tenantmobile').val(rc.tenantmobile   || '');
                $('#sumReceipt').text(fmt(rc.receiptamount));
                // Restore payment row from saved data
                if (rc.paycode) {
                    paymentRows = [{
                        paycode: rc.paycode, payname: rc.paymodename || rc.paycode,
                        nature: rc.paytype || '', amount: parseFloat(rc.receiptamount) || 0,
                        refno: rc.refno || '', refdate: '', txnno: '',
                        cardno: rc.cardno || '', holdername: rc.cardholder || '',
                        expdatecr: rc.expdate ? String(rc.expdate).substring(0, 10) : '',
                        batchno: rc.batchno || '', utrno: '', bankdate: '',
                        narration: rc.narration || rc.remarks || '',
                        compcode: rc.comp_code || '',
                        compname: rc.comp_code ? (COMPANY_MAP[rc.comp_code] || '') : '',
                        ref_display: rc.refno || '—',
                        date_display: rc.expdate ? String(rc.expdate).substring(0, 10) : '—'
                    }];
                    renderPayTable();
                }
                $('html,body').animate({ scrollTop: 0 }, 400);
            },
            error: function () { Swal.fire({ icon: 'error', title: 'Error', text: 'Could not load receipt.' }); }
        });
    }

    // ── View panel — hamesha visible (server-side render), koi filter nahi ──
    $(document).on('click', '.load-rcpt', function () {
        loadReceipt($(this).data('docid'));
        $('html,body').animate({ scrollTop: 0 }, 400);
    });

    // ── Receipt date change → Receipt No refresh ─────────────
    $('#vdate').on('change', function () {
        loadReceiptNo();
    });

    // ── Tenant select: select2 (keyboard se type karke search) ───────
    if ($.fn.select2) {
        $('#tenantid').select2({ width: '100%', placeholder: '-- Select Tenant --' });
    }

    // ── Init: page load pe next RCPT no dikhao ──
    loadReceiptNo();

    $(document).on('click', '.del-rcpt', function () {

        var docid = $(this).data('docid');
        Swal.fire({ title: 'Delete Receipt?', text: 'Receipt ' + docid + ' will be permanently deleted.', icon: 'warning', showCancelButton: true, confirmButtonColor: '#dc3545', confirmButtonText: 'Yes, Delete' })
            .then(function (r) {
                if (!r.isConfirmed) return;
                $.ajax({
                    url: ROUTE.delete, type: 'POST', data: { docid: docid, _token: CSRF },
                    success: function (res) {
                        if (res.success) {
                            Swal.fire({ icon: 'success', title: 'Deleted', text: res.message, timer: 1800, showConfirmButton: false })
                                .then(function () { location.reload(); });
                            if ($('#editing_docid').val() === docid) resetForm();
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                        }
                    },
                    error: function () { Swal.fire({ icon: 'error', title: 'Error', text: 'Could not delete receipt.' }); }
                });
            });
    });

})();
</script>

@endsection
