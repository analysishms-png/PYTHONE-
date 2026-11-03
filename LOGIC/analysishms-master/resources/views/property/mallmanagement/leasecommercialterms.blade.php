
@extends('property.layouts.main')
@section('main-container')

<div class="content-body">
    <div class="container-fluid">

        {{-- Page Header --}}
        <div class="row mb-2">
            <div class="col-12">
                <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div>
                        <h4 class="font-weight-bold mb-0">Commercial Terms</h4>
                        <small class="text-muted">
                            Mall Management &rsaquo; Lease Agreement &rsaquo;
                            <a href="{{ url('leaseagreemententry') }}" class="text-muted">Agreement Entry</a>
                            &rsaquo; Commercial Terms
                        </small>
                    </div>
                    <div class="d-flex align-items-center flex-wrap" style="gap:6px;">
                        <span class="badge badge-light border px-3 py-2" style="font-size:12px;">
                            Lease No. : <strong id="display_leaseno">{{ $lease->leaseno ?? request('sn') ?? '---' }}</strong>
                        </span>
                        <span class="badge badge-light border px-3 py-2" style="font-size:12px;">
                            Status : <strong>{{ $lease->leasestatus ?? 'DRAFT' }}</strong>
                        </span>
                        <a href="{{ url('leaseagreemententry') }}{{ request('sn') ? '?sn='.request('sn') : '' }}"
                           class="btn btn-sm btn-secondary">
                            <i class="fa fa-arrow-left"></i> Back to Agreement
                        </a>
                        <button type="button" class="btn btn-sm btn-primary" id="submitbtn" onclick="saveCommercialTerms()">
                            <i class="fa fa-save"></i> Save
                        </button>
                        <button type="button" class="btn btn-sm btn-light border" onclick="window.print()">
                            <i class="fa fa-print"></i> Print
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <form id="commercialtermsform">
            @csrf
            <input type="hidden" name="sn" value="{{ request('sn') }}">

            <div class="row">

                {{-- Ã¢â€â‚¬Ã¢â€â‚¬ 1. Rent Structure Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬ --}}
                <div class="col-lg-6 col-12 mb-3">
                    <div class="card shadow-sm h-100">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">1. Rent Structure</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Rent Basis</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="rent_basis">
                                        <option value="PER_SQFT" {{ isset($commercial->rent_basis) && $commercial->rent_basis == 'PER_SQFT' ? 'selected' : '' }}>Per Sq.Ft.</option>
                                        <option value="PER_SQM" {{ isset($commercial->rent_basis) && $commercial->rent_basis == 'PER_SQM' ? 'selected' : '' }}>Per Sq.M.</option>
                                        <option value="FIXED" {{ isset($commercial->rent_basis) && $commercial->rent_basis == 'FIXED' ? 'selected' : '' }}>Fixed</option>
                                        <option value="PERCENTAGE" {{ isset($commercial->rent_basis) && $commercial->rent_basis == 'PERCENTAGE' ? 'selected' : '' }}>Percentage of Sales</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Min. Monthly Rent</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" name="min_monthly_rent" value="{{ old('min_monthly_rent', $commercial->mgamount ?? 0.00) }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Current Monthly Rent (Excl. Tax)</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" name="current_monthly_rent" value="{{ old('current_monthly_rent', $commercial->monthlyrent ?? 0.00) }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Rent Rate (Per Unit)</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" name="rentrate" value="{{ old('rentrate', $commercial->rentrate ?? 0.00) }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Revenue Share %</label>
                                <div class="col-7">
                                    <input type="number" step="0.0001" class="form-control form-control-sm" name="revenuesharepercent" value="{{ old('revenuesharepercent', $commercial->revenuesharepercent ?? 0) }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Turnover Basis</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="turnoverbasis">
                                        <option value="">-- Select --</option>
                                        <option value="GROSS_TURNOVER" {{ isset($commercial->turnoverbasis) && $commercial->turnoverbasis == 'GROSS_TURNOVER' ? 'selected' : '' }}>Gross Turnover</option>
                                        <option value="NET_TURNOVER" {{ isset($commercial->turnoverbasis) && $commercial->turnoverbasis == 'NET_TURNOVER' ? 'selected' : '' }}>Net Turnover</option>
                                        <option value="PER_CARET" {{ isset($commercial->turnoverbasis) && $commercial->turnoverbasis == 'PER_CARET' ? 'selected' : '' }}>Per Carpet Area</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Fixed Amount</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" name="fixedamount" value="{{ old('fixedamount', $commercial->fixedamount ?? 0.00) }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Rent Free Period To</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" name="rentfree_to" value="{{ $commercial->rentfree_to ?? '' }}">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Fit-Out Period To</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" name="fitout_period_to" value="{{ $commercial->fitout_period_to ?? '' }}">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Due Day of Month</label>
                                <div class="col-7">
                                    <input type="number" class="form-control form-control-sm" name="due_day_of_month" value="{{ old('due_day_of_month', $commercial->due_day ?? 10) }}" min="1" max="31">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Billing Cycle</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="billing_cycle">
                                        <option value="MONTHLY" {{ isset($commercial->billingfrequency) && $commercial->billingfrequency == 'MONTHLY' ? 'selected' : '' }}>Monthly</option>
                                        <option value="QUARTERLY" {{ isset($commercial->billingfrequency) && $commercial->billingfrequency == 'QUARTERLY' ? 'selected' : '' }}>Quarterly</option>
                                        <option value="HALF_YEARLY" {{ isset($commercial->billingfrequency) && $commercial->billingfrequency == 'HALF_YEARLY' ? 'selected' : '' }}>Half-Yearly</option>
                                        <option value="YEARLY" {{ isset($commercial->billingfrequency) && $commercial->billingfrequency == 'YEARLY' ? 'selected' : '' }}>Yearly</option>
                                        <option value="BI_MONTHLY" {{ isset($commercial->billingfrequency) && $commercial->billingfrequency == 'BI_MONTHLY' ? 'selected' : '' }}>Bi-Monthly</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Review Basis</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="review_basis">
                                        <option value="PERCENTAGE" {{ isset($commercial->review_basis) && $commercial->review_basis == 'PERCENTAGE' ? 'selected' : '' }}>Percentage</option>
                                        <option value="FIXED" {{ isset($commercial->review_basis) && $commercial->review_basis == 'FIXED' ? 'selected' : '' }}>Fixed</option>
                                        <option value="CPI" {{ isset($commercial->review_basis) && $commercial->review_basis == 'CPI' ? 'selected' : '' }}>CPI Index</option>
                                        <option value="MARKET" {{ isset($commercial->review_basis) && $commercial->review_basis == 'MARKET' ? 'selected' : '' }}>Market Review</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                {{-- Ã¢â€â‚¬Ã¢â€â‚¬ 2. Billing & Payment Terms Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬Ã¢â€â‚¬ --}}
                <div class="col-lg-6 col-12 mb-3">
                    <div class="card shadow-sm h-100">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">2. Billing &amp; Payment Terms</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Grace Period (Days)</label>
                                <div class="col-7">
                                    <input type="number" class="form-control form-control-sm" name="grace_period_days" value="{{ old('grace_period_days', $commercial->grace_period_days ?? 5) }}" min="0">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Payment Mode</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="payment_mode">
                                        <option value="BANK_TRANSFER" {{ isset($commercial->payment_mode) && $commercial->payment_mode == 'BANK_TRANSFER' ? 'selected' : '' }}>Bank Transfer / Cheque</option>
                                        <option value="CASH" {{ isset($commercial->payment_mode) && $commercial->payment_mode == 'CASH' ? 'selected' : '' }}>Cash</option>
                                        <option value="ONLINE" {{ isset($commercial->payment_mode) && $commercial->payment_mode == 'ONLINE' ? 'selected' : '' }}>Online Payment</option>
                                        <option value="AUTO_DEBIT" {{ isset($commercial->payment_mode) && $commercial->payment_mode == 'AUTO_DEBIT' ? 'selected' : '' }}>Auto Debit</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Late Payment Interest Type</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="late_interest_type">
                                        <option value="PERCENTAGE" {{ isset($commercial->late_interest_type) && $commercial->late_interest_type == 'PERCENTAGE' ? 'selected' : '' }}>Percentage</option>
                                        <option value="FIXED" {{ isset($commercial->late_interest_type) && $commercial->late_interest_type == 'FIXED' ? 'selected' : '' }}>Fixed Amount</option>
                                        <option value="COMPOUND" {{ isset($commercial->late_interest_type) && $commercial->late_interest_type == 'COMPOUND' ? 'selected' : '' }}>Compound</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Late Payment Interest (%)</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" name="late_interest_pct" value="{{ old('late_interest_pct', $commercial->late_interest_pct ?? 2.00) }}" min="0">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Interest Calculation</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="interest_calculation">
                                        <option value="ON_OUTSTANDING" {{ isset($commercial->interest_calculation) && $commercial->interest_calculation == 'ON_OUTSTANDING' ? 'selected' : '' }}>On Outstanding Amount</option>
                                        <option value="ON_TOTAL" {{ isset($commercial->interest_calculation) && $commercial->interest_calculation == 'ON_TOTAL' ? 'selected' : '' }}>On Total Due</option>
                                        <option value="DAILY" {{ isset($commercial->interest_calculation) && $commercial->interest_calculation == 'DAILY' ? 'selected' : '' }}>Daily Basis</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Interest Start From</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="interest_start_from">
                                        <option value="DUE_GRACE" {{ isset($commercial->interest_start_from) && $commercial->interest_start_from == 'DUE_GRACE' ? 'selected' : '' }}>Due Date + Grace Period</option>
                                        <option value="DUE_DATE" {{ isset($commercial->interest_start_from) && $commercial->interest_start_from == 'DUE_DATE' ? 'selected' : '' }}>Due Date</option>
                                        <option value="INVOICE_DATE" {{ isset($commercial->interest_start_from) && $commercial->interest_start_from == 'INVOICE_DATE' ? 'selected' : '' }}>Invoice Date</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Security Deposit Adjustment</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="security_deposit_adj">
                                        <option value="ALLOWED" {{ isset($commercial->security_deposit_adj) && $commercial->security_deposit_adj == 'ALLOWED' ? 'selected' : '' }}>Allowed</option>
                                        <option value="NOT_ALLOWED" {{ isset($commercial->security_deposit_adj) && $commercial->security_deposit_adj == 'NOT_ALLOWED' ? 'selected' : '' }}>Not Allowed</option>
                                        <option value="PARTIAL" {{ isset($commercial->security_deposit_adj) && $commercial->security_deposit_adj == 'PARTIAL' ? 'selected' : '' }}>Partial Only</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                {{-- ===== 3. Terms & Conditions ===== --}}
                <div class="col-12 mb-3">
                    <div class="card shadow-sm">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">3. Terms &amp; Conditions</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="form-group mb-0">
                                <label class="col-form-label col-form-label-sm text-muted">
                                    Terms (bill par yahi print honge - default bhare hue hain, edit/add kar sakte hain)
                                </label>
                                @php
                                    $defaultTerms =
                                        '1. Payment should be made by cheque or Demand Draft in favour of ' . ($company->comp_name ?? '') . ', ' . ($company->city ?? '') . "\n" .
                                        '2. For online Transfer or Payment :- ' . ($company->bankname ?? '') . ', Current A/C No.' . ($company->acnum ?? '') . ', IFSC Code- ' . ($company->ifsccode ?? '') . "\n" .
                                        '3. Interest will be charged @ 24% p.a. on overdue Bills.' . "\n" .
                                        '4. Any taxes and duties not covered in this bill but charged by the authorities in future with retrospective effect shall be extra and chargeable' . "\n" .
                                        '5. All the disputes are subject to judicial jurisdiction of ' . ($company->city ?? '') . ' only.';
                                    $termsValue = old('terms_conditions', (($commercial->terms_conditions ?? '') !== '') ? $commercial->terms_conditions : $defaultTerms);
                                @endphp
                                <textarea class="form-control form-control-sm" name="terms_conditions" rows="7">{{ $termsValue }}</textarea>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            

            {{-- TESTING PHASE: Data not saved warning (red) --}}
            <div id="dataNotSavedBox" class="row d-none">
                <div class="col-12 mb-3">
                    <div class="card shadow-sm border-danger">
                        <div class="card-header py-2 bg-danger text-white">
                            <strong style="font-size:12px;"><i class="fa fa-exclamation-triangle"></i> DATA NOT SAVED (Testing Phase Only)</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <p class="text-danger mb-1 font-weight-bold">Caution: Only for testing purpose</p>
                            <p class="small text-muted mb-2">Neeche diye gaye fields ki values is form me bhare gaye, lekin ye DB me <strong>SAVE NAHI</strong> hui — inke columns <code>mall_lease_commercial</code> table me exist nahi karte. Testing phase khatam hone ke baad in columns ki migration banani hogi.</p>
                            <ul id="dataNotSavedList" class="mb-0"></ul>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Footer Audit --}}
            <div class="row">
                <div class="col-12">
                    <div class="d-flex justify-content-between text-muted" style="font-size:11px;">
                        <span>Created By: <strong>{{ $username }}</strong></span>
                        <span>{{ now()->format('d/m/Y H:i') }}</span>
                    </div>
                </div>
            </div>

        </form>

    </div>
</div>

{{-- Ã¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢Â JAVASCRIPT Ã¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢ÂÃ¢â€¢Â --}}
<script>
// TESTING PHASE: Show red warning for fields whose columns do NOT exist in DB
(function () {
    const params = new URLSearchParams(window.location.search);
    const dns = params.get('dns');
    if (dns) {
        const list = dns.split(',').filter(Boolean);
        const box = document.getElementById('dataNotSavedBox');
        const ul  = document.getElementById('dataNotSavedList');
        if (box && ul) {
            ul.innerHTML = '';
            list.forEach(function (f) {
                const li = document.createElement('li');
                li.className = 'text-danger font-weight-bold';
                li.innerHTML = '<i class="fa fa-times-circle"></i> ' + f;
                ul.appendChild(li);
            });
            box.classList.remove('d-none');
        }
    }
})();

// Save Commercial Terms
function saveCommercialTerms() {
    $('#submitbtn').prop('disabled', true);

    $.ajax({
        url: '{{ route("leasecommercialterms.save") }}',
        type: 'POST',
        data: $('#commercialtermsform').serialize(),
        success: function (res) {
            $('#submitbtn').prop('disabled', false);
            if (res.success) {
                const sn = $('#commercialtermsform').find('input[name="sn"]').val();
                Swal.fire({ icon: 'success', title: 'Saved!', text: res.message, timer: 1800, showConfirmButton: false })
                    .then(() => {
                        // Refresh the page so the saved form loads fresh (prevents repeat saves)
                        let loadUrl = '{{ url("leasecommercialterms") }}';
                        if (sn) { loadUrl += '?sn=' + sn; }
                        if (res.data_not_saved && res.data_not_saved.length) {
                            loadUrl += (sn ? '&' : '?') + 'dns=' + encodeURIComponent(res.data_not_saved.join(','));
                        }
                        window.location.href = loadUrl;
                    });
            } else {
                Swal.fire('Error', res.message, 'error');
            }
        },
        error: function () {
            $('#submitbtn').prop('disabled', false);
            Swal.fire('Error', 'Something went wrong. Please try again.', 'error');
        }
    });
}
</script>

@endsection
