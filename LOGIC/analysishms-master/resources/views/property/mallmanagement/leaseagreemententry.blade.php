
@extends('property.layouts.main')
@section('main-container')

<div class="content-body">
    <div class="container-fluid">

        {{-- Page Header --}}
        <div class="row mb-2">
            <div class="col-12">
                <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div>
                        <h4 class="font-weight-bold mb-0">Lease / Agreement Entry</h4>
                        <small class="text-muted">Mall Management &rsaquo; Lease Agreement</small>
                    </div>
                    <div class="d-flex align-items-center flex-wrap" style="gap:6px;">
                        <span class="badge badge-light border px-3 py-2" id="display_leaseno" style="font-size:12px;">
                            Lease No. : <strong>{{ $lease->leaseno ?? '---' }}</strong>
                        </span>
                        <span class="badge badge-light border px-3 py-2" id="display_status" style="font-size:12px;">
                            Status : <strong>{{ $lease->leasestatus ?? 'DRAFT' }}</strong>
                        </span>
                        <button type="button" class="btn btn-sm btn-dark" onclick="resetForm()">
                            <i class="fa fa-plus"></i> New
                        </button>
                        <button type="button" class="btn btn-sm btn-primary" id="submitbtn" onclick="saveLeaseAgreement()">
                            <i class="fa fa-save"></i> Save
                        </button>
                        <button type="button" class="btn btn-sm btn-danger" id="deletebtn" {{ $lease ? '' : 'disabled' }}>
                            <i class="fa fa-trash"></i> Delete
                        </button>                        <button type="button" class="btn btn-sm btn-secondary" onclick="window.print()">
                            <i class="fa fa-print"></i> Print
                        </button>
                        {{-- Commercial Terms redirect button --}}
                        <button type="button" class="btn btn-sm btn-info" id="commercialbtn" onclick="goToCommercial()">
                            <i class="fa fa-file-text"></i> Commercial Terms
                        </button>
                    </div>
                </div>
            </div>
        </div>

        {{-- FORM --}}
        <form id="leaseagreementform">
            @csrf
            <input type="hidden" id="sn" name="sn" value="{{ $lease->id ?? '' }}">
            <input type="hidden" id="leaseno_hidden" name="leaseno" value="{{ $lease->leaseno ?? '' }}">

            {{-- Section 1, 2, 3 (Three Column Grid) --}}
            <div class="row">

                {{-- 1. Lease / Agreement Info --}}
                <div class="col-lg-4 col-md-6 col-12 mb-3">
                    <div class="card shadow-sm h-100">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">1. Lease / Agreement Info</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            {{-- Tenant --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Tenant <span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="tenantid" name="tenantid" required>
                                        <option value="">-- Select Tenant --</option>
                                        @foreach($tenants as $t)
                                            <option value="{{ $t->sub_code }}" {{ isset($lease->tenantid) && $lease->tenantid == $t->sub_code ? 'selected' : '' }}>{{ $t->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            {{-- Tenant Info Preview (auto from subgroup) --}}
                            <div id="tenantInfo" class="d-none mt-1">
                                <div class="card card-body py-2 px-3 bg-light border-info" style="font-size:11px;">
                                    <strong class="text-info mb-1" id="ti_name">-</strong>
                                    <div class="row mb-0">
                                        <div class="col-6 pr-1"><i class="fa fa-phone"></i> <span id="ti_mobile">-</span></div>
                                        <div class="col-6 pl-1"><i class="fa fa-envelope"></i> <span id="ti_email">-</span></div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-6 pr-1"><i class="fa fa-map-marker"></i> <span id="ti_address">-</span></div>
                                        <div class="col-6 pl-1"><i class="fa fa-file-text"></i> GST: <span id="ti_gstin">-</span></div>
                                    </div>
                                    <div class="row mb-0">
                                        <div class="col-12"><i class="fa fa-file-code-o"></i> Prev Agreement No: <span id="ti_prevagr">-</span></div>
                                    </div>
                                </div>
                            </div>

                            {{-- Tenant Shop Panel (new) --}}
                            <style>
                                .shop-panel-btn {
                                    transition: all 0.2s ease-in-out;
                                    font-size: 11.5px;
                                    border-radius: 4px;
                                }
                                .shop-panel-btn.active-shop {
                                    outline: 3px solid #ffc107 !important;
                                    background: #0056b3 !important;
                                    color: #ffffff !important;
                                    border-color: #004085 !important;
                                    box-shadow: 0 0 10px rgba(0, 123, 255, 0.6) !important;
                                    font-weight: bold !important;
                                    transform: scale(1.02);
                                }
                                .shop-panel-btn.saved-shop {
                                    background: #e8f5e9;
                                    color: #1b5e20;
                                    border: 1px solid #81c784;
                                }
                                .shop-panel-btn.saved-shop:hover {
                                    background: #c8e6c9;
                                }
                                .shop-panel-btn.unsaved-shop {
                                    background: #f8f9fa;
                                    color: #616161;
                                    border: 1px dashed #bdbdbd;
                                }
                                .shop-panel-btn.unsaved-shop:hover {
                                    background: #e9ecef;
                                }
                            </style>
                            <div id="tenantShopPanel" class="d-none mt-2">
                                <div class="card card-body py-2 px-3 bg-light border" style="font-size:12px;">
                                    <div class="d-flex justify-content-between align-items-center mb-1">
                                        <strong class="text-secondary"><i class="fa fa-th-large"></i> Shops of this Tenant</strong>
                                        <span id="shopPanelCount" class="text-muted"></span>
                                    </div>
                                    <div id="activeShopIndicator" class="alert alert-info py-1 px-2 mb-2 font-weight-bold" style="font-size:11.5px; display:none; background:#d1ecf1; border-color:#bee5eb; color:#0c5460;">
                                        <i class="fa fa-pencil-square-o text-primary"></i> <span id="activeShopStatusTag" class="badge badge-primary mr-1">EDITING</span> <span id="activeShopNameDisplay">---</span>
                                    </div>
                                    <div id="shopPanelList"></div>
                                </div>
                            </div>

                            {{-- Contact Person --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Contact Person</label>
                                <div class="col-7">
                                    <input type="text" class="form-control form-control-sm" id="contactperson" name="contactperson" placeholder="Contact name" value="{{ $lease->contactperson ?? '' }}">
                                </div>
                            </div>

                            {{-- Mobile --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Mobile</label>
                                <div class="col-7">
                                    <input type="text" class="form-control form-control-sm" id="mobile" name="mobile" maxlength="15" placeholder="Mobile No." value="{{ $lease->mobile ?? '' }}">
                                </div>
                            </div>

                            {{-- Email --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Email</label>
                                <div class="col-7">
                                    <input type="email" class="form-control form-control-sm" id="email" name="email" placeholder="Email" value="{{ $lease->email ?? '' }}">
                                </div>
                            </div>

                            {{-- Shop / Unit --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Shop / Unit <span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <input type="hidden" id="shopcode" name="shopcode" value="{{ $leasedtl->shopcode ?? '' }}">
                                    <select class="form-control form-control-sm" id="unitid" name="unitid" required>
                                        <option value="">-- Select Shop / Unit --</option>
                                        @foreach($units as $u)
                                            @php
                                                $isUnitSelected = false;
                                                if (isset($leasedtl) && $leasedtl) {
                                                    $isUnitSelected = ($leasedtl->unitid == $u->id) || (!empty($leasedtl->shopcode) && $leasedtl->shopcode == ($u->shopcode ?? ''));
                                                } elseif (request()->filled('unitid')) {
                                                    $isUnitSelected = (request('unitid') == $u->id);
                                                } elseif (request()->filled('shopcode')) {
                                                    $isUnitSelected = (!empty($u->shopcode) && request('shopcode') == $u->shopcode);
                                                } elseif (isset($lease) && $lease && isset($lease->unitid)) {
                                                    $isUnitSelected = ($lease->unitid == $u->id);
                                                }
                                            @endphp
                                            <option value="{{ $u->id }}" data-shopcode="{{ $u->shopcode ?? '' }}" {{ $isUnitSelected ? 'selected' : '' }}>{{ $u->shopname }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            {{-- Floor --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Floor</label>
                                <div class="col-7">
                                    @php
                                        $currentFloor = $leasedtl->floorid ?? $lease->floorid ?? '';
                                    @endphp
                                    @if($floors->count() > 0)
                                        <select class="form-control form-control-sm" id="floorid" name="floorid">
                                            <option value="">-- Select Floor --</option>
                                            @foreach($floors as $f)
                                                <option value="{{ $f->id }}" {{ $currentFloor == $f->id || $currentFloor == $f->name ? 'selected' : '' }}>{{ $f->name }}</option>
                                            @endforeach
                                        </select>
                                    @else
                                        <input type="text" class="form-control form-control-sm" id="floorid" name="floorid" placeholder="Floor name / number" value="{{ $currentFloor }}">
                                    @endif
                                </div>
                            </div>

                            {{-- Shop Name --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Shop Name</label>
                                <div class="col-7">
                                    <input type="text" class="form-control form-control-sm" id="shopname" name="shopname" placeholder="Shop / Brand name" value="{{ $leasedtl->shopname ?? $lease->shopname ?? '' }}">
                                </div>
                            </div>

                            {{-- Unit Type --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Unit Type</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="unittype" name="unittype">
                                        <option value="">-- Select --</option>
                                        @foreach($unittypes as $ut)
                                            <option value="{{ $ut->typename }}" {{ isset($leasedtl->unittype) && $leasedtl->unittype == $ut->typename ? 'selected' : '' }}>{{ $ut->typename }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            {{-- Area --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Area (Sq.Ft.)</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" id="chargeablearea" name="chargeablearea" placeholder="0.00" value="{{ $leasedtl->chargeablearea ?? '' }}">
                                </div>
                            </div>

                            {{-- Carpet Area --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Carpet Area</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" id="carpetarea" name="carpetarea" placeholder="0.00" value="{{ $leasedtl->carpetarea ?? '' }}">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                {{-- 2. Agreement Dates --}}
                <div class="col-lg-4 col-md-6 col-12 mb-3">
                    <div class="card shadow-sm h-100">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">2. Agreement Dates</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            {{-- Agreement No (auto, always locked) --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Agreement No.</label>
                                <div class="col-7">
                                    <input type="text" class="form-control form-control-sm" id="agreementno" name="agreementno" disabled value="{{ $lease->agreementno ?? $agreementNo ?? '' }}">
                                </div>
                            </div>

                            {{-- Agreement Date --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Agreement Date <span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="agreement_date" name="agreement_date" value="{{ $lease->agreement_date ?? $ncurdate }}">
                                </div>
                            </div>

                            {{-- Lease Start Date --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Lease Start Date <span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="leasecommencementdate" name="leasecommencementdate" value="{{ $lease->leasecommencementdate ?? $ncurdate }}">
                                </div>
                            </div>

                            {{-- Possession Date --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Possession Date</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="possessiondate" name="possessiondate" value="{{ $lease->possessiondate ?? '' }}">
                                </div>
                            </div>

                            {{-- Lease End Date --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Lease End Date <span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="leaseexpirydate" name="leaseexpirydate" value="{{ $lease->leaseexpirydate ?? '' }}">
                                </div>
                            </div>

                            {{-- Fit-out Start --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Fit-out Start</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="fitoutstartdate" name="fitoutstartdate" value="{{ $lease->fitoutstartdate ?? '' }}">
                                </div>
                            </div>

                            {{-- Fit-out Completion --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Fit-out Completion</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="fitout_completion_date" name="fitout_completion_date" value="{{ $lease->fitout_completion_date ?? '' }}">
                                </div>
                            </div>

                            {{-- Store Opening Date --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Store Opening Date</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="storeopeningdate" name="storeopeningdate" value="{{ $lease->storeopeningdate ?? '' }}">
                                </div>
                            </div>

                            {{-- Move-in Date --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Move-in Date</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="moveindate" name="moveindate" value="{{ $lease->moveindate ?? '' }}">
                                </div>
                            </div>

                            {{-- Notice Period --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Notice Period (Days)</label>
                                <div class="col-7">
                                    <input type="number" class="form-control form-control-sm" id="noticeperioddays" name="noticeperioddays" value="{{ $lease->noticeperioddays ?? 90 }}" min="0">
                                </div>
                            </div>

                            {{-- Agreement Status --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Agreement Status</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="leasestatus" name="leasestatus">
                                        <option value="DRAFT"      {{ ($lease->leasestatus ?? 'DRAFT') == 'DRAFT'      ? 'selected' : '' }}>Draft</option>
                                        <option value="PENDING"    {{ ($lease->leasestatus ?? '') == 'PENDING'    ? 'selected' : '' }}>Pending Approval</option>
                                        <option value="ACTIVE"     {{ ($lease->leasestatus ?? '') == 'ACTIVE'     ? 'selected' : '' }}>Active</option>
                                        <option value="EXPIRED"    {{ ($lease->leasestatus ?? '') == 'EXPIRED'    ? 'selected' : '' }}>Expired</option>
                                        <option value="TERMINATED" {{ ($lease->leasestatus ?? '') == 'TERMINATED' ? 'selected' : '' }}>Terminated</option>
                                        <option value="RENEWED"    {{ ($lease->leasestatus ?? '') == 'RENEWED'    ? 'selected' : '' }}>Renewed</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                {{-- 3. Other Info --}}
                <div class="col-lg-4 col-md-12 col-12 mb-3">
                    <div class="card shadow-sm">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">3. Other Info</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            {{-- LOI No --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">LOI No.</label>
                                <div class="col-7">
                                    <input type="text" class="form-control form-control-sm" id="loino" name="loino" placeholder="LOI Number" value="{{ $lease->loino ?? '' }}">
                                </div>
                            </div>

                            {{-- LOI Date --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">LOI Date</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="loidate" name="loidate" value="{{ $lease->loidate ?? '' }}">
                                </div>
                            </div>

                            {{-- Commercial Model --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Commercial Model</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="commercialmodel" name="commercialmodel">
                                        <option value="">-- Select --</option>
                                        <option value="FIXED_RENT"    {{ ($lease->commercialmodel ?? '') == 'FIXED_RENT'    ? 'selected' : '' }}>Fixed Rent</option>
                                        <option value="MG"            {{ ($lease->commercialmodel ?? '') == 'MG'            ? 'selected' : '' }}>MG (Minimum Guarantee)</option>
                                        <option value="REVENUE_SHARE" {{ ($lease->commercialmodel ?? '') == 'REVENUE_SHARE' ? 'selected' : '' }}>Revenue Share</option>
                                        <option value="MG_TO"         {{ ($lease->commercialmodel ?? '') == 'MG_TO'         ? 'selected' : '' }}>MG / TO</option>
                                        <option value="OTHER"         {{ ($lease->commercialmodel ?? '') == 'OTHER'         ? 'selected' : '' }}>Other</option>
                                    </select>
                                </div>
                            </div>

                            {{-- Lease Type --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Lease Type</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="leasetype" name="leasetype">
                                        <option value="NEW"       {{ ($lease->leasetype ?? 'NEW') == 'NEW'       ? 'selected' : '' }}>New</option>
                                        <option value="RENEWAL"   {{ ($lease->leasetype ?? '') == 'RENEWAL'   ? 'selected' : '' }}>Renewal</option>
                                        <option value="AMENDMENT" {{ ($lease->leasetype ?? '') == 'AMENDMENT' ? 'selected' : '' }}>Amendment</option>
                                        <option value="CASUAL"    {{ ($lease->leasetype ?? '') == 'CASUAL'    ? 'selected' : '' }}>Casual</option>
                                    </select>
                                </div>
                            </div>

                            {{-- Renewal Required --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Renewal Required</label>
                                <div class="col-7 pt-1">
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="renewalrequired" name="renewalrequired" value="1" {{ isset($lease->renewalrequired) && $lease->renewalrequired == 1 ? 'checked' : '' }}>
                                        <label class="custom-control-label" for="renewalrequired"></label>
                                    </div>
                                </div>
                            </div>

                            {{-- Renewal Date --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Renewal Date</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="renewaldate" name="renewaldate" value="{{ $lease->renewaldate ?? '' }}">
                                </div>
                            </div>

                            {{-- Billing Cycle --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Billing Cycle</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="billingcycle" name="billingcycle">
                                        <option value="MONTHLY"      {{ (($lease->billingcycle ?? 'MONTHLY') == 'MONTHLY') ? 'selected' : '' }}>Monthly</option>
                                        <option value="QUARTERLY"    {{ ($lease->billingcycle ?? '') == 'QUARTERLY'    ? 'selected' : '' }}>Quarterly</option>
                                        <option value="HALF-YEARLY" {{ ($lease->billingcycle ?? '') == 'HALF-YEARLY' ? 'selected' : '' }}>Half-Yearly</option>
                                        <option value="YEARLY"      {{ ($lease->billingcycle ?? '') == 'YEARLY'      ? 'selected' : '' }}>Yearly</option>
                                        <option value="ONCE"        {{ ($lease->billingcycle ?? '') == 'ONCE'        ? 'selected' : '' }}>Once</option>
                                    </select>
                                </div>
                            </div>

                            {{-- Billing Start From --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Billing Start From</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="billingstartfrom" name="billingstartfrom" value="{{ $lease->billingstartfrom ?? '' }}">
                                </div>
                            </div>

                            {{-- Due Date of Month --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Due Date of Month</label>
                                <div class="col-7">
                                    <input type="date" class="form-control form-control-sm" id="duedateofmonth" name="duedateofmonth" value="{{ $lease->duedateofmonth ?? '' }}" placeholder="Select due date">
                                </div>
                            </div>

                            {{-- Remarks --}}
                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Remarks</label>
                                <div class="col-7">
                                    <textarea class="form-control form-control-sm" id="remarks" name="remarks" rows="3" placeholder="Remarks / Notes">{{ $lease->remarks ?? '' }}</textarea>
                                </div>
                            </div>

                        </div>
                    </div>

                    {{-- 4. Rent Overview --}}
                    <div class="card shadow-sm mt-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">4. Rent Overview</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Rent Type</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="renttype" name="renttype">
                                        <option value="FIXED_SQFT"      {{ ($leasedtl->renttype ?? 'FIXED_SQFT') == 'FIXED_SQFT'      ? 'selected' : '' }}>Fixed Rent (Per Sq.Ft.)</option>
                                        <option value="FIXED_AMOUNT"    {{ ($leasedtl->renttype ?? '') == 'FIXED_AMOUNT'    ? 'selected' : '' }}>Fixed Amount</option>
                                        <option value="PERCENTAGE"      {{ ($leasedtl->renttype ?? '') == 'PERCENTAGE'      ? 'selected' : '' }}>Percentage Rent</option>
                                        <option value="BASE_PERCENTAGE" {{ ($leasedtl->renttype ?? '') == 'BASE_PERCENTAGE' ? 'selected' : '' }}>Base + Percentage</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Rent Basis</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="rentbasis" name="rentbasis">
                                        <option value="PER_SQFT" {{ ($leasedtl->rentbasis ?? '') == 'PER_SQFT' ? 'selected' : '' }}>Per Sq.Ft.</option>
                                        <option value="FLAT"     {{ ($leasedtl->rentbasis ?? '') == 'FLAT'     ? 'selected' : '' }}>Flat Amount</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Rate (Per Sq.Ft.)</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" id="rentrate" name="rentrate" value="{{ $leasedtl->rentrate ?? '0.00' }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Min. Monthly Rent</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" id="minimumrent" name="minimumrent" value="{{ $leasedtl->minimumrent ?? '0.00' }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Current Monthly Rent</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm bg-light" id="currentrent" name="currentrent" value="{{ $leasedtl->currentrent ?? '0.00' }}" readonly>
                                </div>
                            </div>

                            <hr class="my-2">

                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">CAM Rate (Per Sq.Ft.)</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" id="camrate" name="camrate" value="{{ $leasedtl->camrate ?? '0.00' }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Min. Monthly CAM</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm" id="mincam" name="mincam" value="{{ $leasedtl->mincam ?? '0.00' }}" placeholder="0.00">
                                </div>
                            </div>

                            <div class="form-group row mb-1">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Current Monthly CAM</label>
                                <div class="col-7">
                                    <input type="number" step="0.01" class="form-control form-control-sm bg-light" id="currentcam" name="currentcam" value="{{ $leasedtl->currentcam ?? '0.00' }}" readonly>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            {{-- END Three Column Grid --}}

            {{-- Section 5: Escalation Schedule (RENT + CAM toggle) --}}
            <div class="row">
                <div class="col-12 mb-3">
                    <div class="card shadow-sm" id="escScheduleCard" style="border-left: 4px solid #ffc107;">
                        <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center flex-wrap" style="gap:8px;">
                            <div class="d-flex align-items-center" style="gap:10px;">
                                <strong style="font-size:13px;">5. Escalation Schedule</strong>
                                <span id="activeEscBadge" class="badge badge-warning px-2 py-1 text-dark font-weight-bold" style="font-size:11px;">
                                    <i class="fa fa-home"></i> RENT Escalation Active
                                </span>
                            </div>
                            <div class="d-flex align-items-center flex-wrap" style="gap:8px;">
                                {{-- Bulk Apply Increase Value --}}
                                <div class="input-group input-group-sm" style="width:170px;">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text py-0 px-2 bg-dark text-white font-weight-bold" style="font-size:11px;">Set %</span>
                                    </div>
                                    <input type="number" step="0.01" class="form-control form-control-sm py-0 px-1" id="esc_bulk_pct" placeholder="e.g. 6" style="height:28px;">
                                    <div class="input-group-append">
                                        <button type="button" class="btn btn-sm btn-info py-0 px-2" id="btnApplyBulkEsc" title="Apply this percentage to all rows in the active table" onclick="applyBulkEscPct()">
                                            Apply All
                                        </button>
                                    </div>
                                </div>

                                {{-- Toggle Buttons --}}
                                <div class="btn-group btn-group-sm" role="group">
                                    <button type="button" class="btn btn-sm esc-type-btn py-1 px-3 font-weight-bold" data-esc-type="rent" id="escBtnRent" style="background:#ffc107; color:#212529; border:1px solid #d39e00;">
                                        <i class="fa fa-home mr-1"></i> RENT
                                    </button>
                                    <button type="button" class="btn btn-sm esc-type-btn py-1 px-3 font-weight-bold" data-esc-type="cam" id="escBtnCam" style="background:rgba(255,255,255,.2); color:#fff; border:1px solid rgba(255,255,255,.3);">
                                        <i class="fa fa-wrench mr-1"></i> CAM
                                    </button>
                                </div>

                                <button type="button" class="btn btn-sm btn-light py-1 px-2 font-weight-bold shadow-sm" onclick="addEscRowForActive()">
                                    <i class="fa fa-plus text-success"></i> Add Row
                                </button>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-sm mb-0 esc-panel" data-esc-panel="rent" id="escalationTable">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th class="text-center" style="width:40px;">#</th>
                                            <th>After Months</th>
                                            <th>Effective From</th>
                                            <th>Increase Type</th>
                                            <th>Increase % / Amount</th>
                                            <th>New Rate (Per Sq.Ft.)</th>
                                            <th class="text-right">New Monthly Rent</th>
                                            <th class="text-center" style="width:50px;">Del</th>
                                        </tr>
                                    </thead>
                                    <tbody id="escalationBody">
                                        <tr id="escalation_no_data">
                                            <td colspan="8" class="text-center text-muted py-3">
                                                <i class="fa fa-info-circle"></i> No escalation rows added. Click "+ Add Row" to begin.
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table class="table table-striped table-bordered table-sm mb-0 esc-panel d-none" data-esc-panel="cam" id="camTable">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th class="text-center" style="width:40px;">#</th>
                                            <th>After Months</th>
                                            <th>Effective From</th>
                                            <th>Increase Type</th>
                                            <th>Increase % / Amount</th>
                                            <th>New Rate (Per Sq.Ft.)</th>
                                            <th class="text-right">New Monthly CAM</th>
                                            <th class="text-center" style="width:50px;">Del</th>
                                        </tr>
                                    </thead>
                                    <tbody id="camBody">
                                        <tr id="cam_no_data">
                                            <td colspan="8" class="text-center text-muted py-3">
                                                <i class="fa fa-info-circle"></i> No CAM rows added. Click "+ Add Row" to begin.
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- ─── Section 6 ─── Charges Summary (data from mall_partylocation) ─── --}}
            <div class="row">
                <div class="col-12 mb-3">
                    <div class="card shadow-sm">
                        <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                            <strong style="font-size:12px;">6. Charges Summary</strong>
                            <div class="d-flex align-items-center" style="gap:6px;">
                                <button type="button" class="btn btn-sm btn-light py-0 px-2" onclick="addChargesRow()">
                                    <i class="fa fa-plus"></i> Add Charge
                                </button>
                                <a href="{{ url('tenantlocation') }}" class="btn btn-sm btn-light py-0 px-2" title="Tenant Location (Partylocation) me tenant+shop ki charges map karein (yehi source hai)">
                                    <i class="fa fa-cog"></i> Tenant Location
                                </a>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-sm mb-0" id="chargesTable">
                                    <thead class="thead-light">
                                        <tr>
                                            <th class="text-center" style="width:35px;">#</th>
                                            <th>Charge</th>
                                            <th>Calculation Method</th>
                                            <th>Base / Rate</th>
                                            <th>Amount</th>
                                            <th>Billing Cycle</th>
                                            <th>Effective From</th>
                                            <th>Effective To</th>
                                            <th class="text-center" style="width:50px;">Del</th>
                                        </tr>
                                    </thead>
                                    <tbody id="chargesBody">
                                        <tr id="charges_no_data">
                                            <td colspan="9" class="text-center text-muted py-3">
                                                <i class="fa fa-info-circle"></i> No charges added. Tenant + Shop select karein — charges <strong>Tenant Location (Partylocation)</strong> se fetch hoti hain.
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </form>
        {{-- END FORM --}}

        {{-- Agreements List (bottom) --}}
<div class="row">
    <div class="col-12 mb-3">
        <div class="card shadow-sm">
            <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                <strong style="font-size:12px;">Agreements List ({{ $agreements->count() }})</strong>
                <a href="{{ url('leaseagreemententry') }}" class="btn btn-sm btn-light py-0 px-2">
                    <i class="fa fa-plus"></i> New Agreement
                </a>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-sm table-striped table-bordered mb-0">
                        <thead class="thead-dark">
                        <tr>
                            <th class="text-center" style="width:40px;">#</th>
                            <th>Agreement No.</th>
                            <th>Tenant</th>
                            <th>Shop / Unit</th>
                            <th>Agreement Date</th>
                            <th class="text-center" style="width:100px;">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse($agreements as $a)
                            <tr>
                                <td class="text-center">{{ $loop->iteration }}</td>
                                <td>{{ $a->agreementno ?? '---' }}</td>
                                <td>{{ $a->tenant_name ?? '---' }}</td>
                                <td>{{ $a->shop_name ?? '---' }}</td>
                                <td>{{ $a->agreement_date ? date('d/m/Y', strtotime($a->agreement_date)) : '---' }}</td>
                                <td class="text-center">
                                    <a href="{{ url('leaseagreemententry') }}?sn={{ $a->id }}" class="btn btn-sm btn-info py-0 px-2">
                                        <i class="fa fa-pencil"></i> Open
                                    </a>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="6" class="text-center text-muted py-3">
                                    <i class="fa fa-info-circle"></i> No Agreement create. 
                                </td>
                            </tr>
                        @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- Footer Audit Info --}}
        <div class="row">
            <div class="col-12">
                <div class="d-flex justify-content-between text-muted" style="font-size:11px;">
                    <span>Created By: <strong>{{ $username }}</strong></span>
                    <span id="footer_datetime">{{ now()->format('d/m/Y H:i') }}</span>
                </div>
            </div>
        </div>

    </div>
</div>

{{-- JAVASCRIPT --}}
<script>
let currentSn = null;

// Charges Summary — source mall_partylocation (tenant location me map ki charges) + saved rows (tablemall_lease_charges)
const IS_EDIT = {{ $lease ? 'true' : 'false' }};
const NEXTAGREEMENTNO = '{{ $nextAgreementNo ?? '' }}';
// Partylocation se loaded charges: [{ chargecode, chargename, calculationbasis, billingfrequency }]
let plCharges = [];
const EDITCHARGES = [
    @foreach($chargerows as $cr)
    { chargecode: "{{ $cr->chargecode }}", chargename: "{{ $cr->chargename }}", calculationmethod: "{{ $cr->calculationmethod }}", rate: "{{ $cr->rate }}", amount: "{{ $cr->amount }}", billingcycle: "{{ $cr->billingcycle }}", effectivefrom: "{{ $cr->effectivefrom }}", effectiveto: "{{ $cr->effectiveto }}" },
    @endforeach
];
const EDITESCALATIONS = [
    @foreach($escalations as $esc)
    { effectivefrom: "{{ $esc->effectivefrom }}", aftermonths: "{{ $esc->aftermonths }}", increasetype: "{{ $esc->increasetype }}", increasevalue: "{{ $esc->increasetype == 'Percentage' ? $esc->increasepercent : $esc->increaseamount }}", newrate: "{{ $esc->newrate }}", newmonthlyrent: "{{ $esc->newamount }}" },
    @endforeach
];
const CAMESCALATIONS = [
    @foreach($camescalations as $cam)
    { effectivefrom: "{{ $cam->effectivefrom }}", aftermonths: "{{ $cam->aftermonths }}", increasetype: "{{ $cam->increasetype }}", increasevalue: "{{ $cam->increasetype == 'Percentage' ? $cam->increasepercent : $cam->increaseamount }}", newrate: "{{ $cam->newrate }}", newamount: "{{ $cam->newamount }}" },
    @endforeach
];
const BILLINGCYCLES = ['MONTHLY', 'QUARTERLY', 'HALF-YEARLY', 'YEARLY', 'ONCE'];

// TESTING PHASE: Show red warning for fields whose columns do NOT exist in DB
(function () {
})();

// Floor to Units AJAX load (only when floor is a select dropdown)
$('#floorid').on('change', function () {
    if ($(this).is('input')) return; // floor is text input, skip AJAX
    const floorid = $(this).val();
    loadUnitsByFloor(floorid);
});

function loadUnitsByFloor(floorid, selectedUnitId) {
    const $unit = $('#unitid');
    if (!floorid) {
        $unit.html('<option value="">-- Select Shop / Unit --</option>');
        @foreach($units as $u)
            $unit.append('<option value="{{ $u->id }}">{{ $u->shopname }}</option>');
        @endforeach
        if (selectedUnitId) { $unit.val(String(selectedUnitId)); }
        return;
    }
    $.ajax({
        url: '{{ route("getunitbyfloor") }}',
        type: 'POST',
        data: { _token: '{{ csrf_token() }}', floorid: floorid },
        success: function (res) {
            $unit.html('<option value="">-- Select Shop / Unit --</option>');
            if (res && res.length) {
                res.forEach(function (u) {
                    const label = (u.shopname ? u.shopname : '');
                    $unit.append('<option value="' + u.id + '">' + label + '</option>');
                });
            }
            if (selectedUnitId) { $unit.val(String(selectedUnitId)); }
        }
    });
}

// Tenants → details auto-fill (contact person, mobile, email from subgroup master)
function loadTenantDetails(tid, keepIfEmpty) {
    if (!tid) {
        $('#contactperson').val('');
        $('#mobile').val('');
        $('#email').val('');
        $('#tenantInfo').addClass('d-none');
        return;
    }
    $.ajax({
        url: '{{ route("gettenant") }}',
        type: 'POST',
        data: { _token: '{{ csrf_token() }}', tenantid: tid },
        success: function (t) {
            if (t && t.sub_code) {
                $('#contactperson').val(t.conperson || '');
                $('#mobile').val(t.mobile || '');
                $('#email').val(t.email || '');
                $('#ti_name').text(t.name || '-');
                $('#ti_mobile').text(t.mobile || '-');
                $('#ti_email').text(t.email || '-');
                $('#ti_address').text(t.address || '-');
                $('#ti_gstin').text(t.gstin || '-');
                $('#ti_prevagr').text(t.prev_agreementno || '-');
                $('#tenantInfo').removeClass('d-none');
                loadTenantShops(tid);
                loadPartyLocCharges();
            }
        }
    });
}

// Tenant Shop Panel — tenant ki saari shops + lease status render
function loadTenantShops(tenantcode) {
    if (!tenantcode) {
        $('#tenantShopPanel').addClass('d-none');
        return;
    }
    $.ajax({
        url: '{{ route("gettenantshops") }}',
        type: 'POST',
        data: { _token: '{{ csrf_token() }}', tenantcode: tenantcode },
        success: function (shops) {
            if (!shops || shops.length === 0) {
                $('#tenantShopPanel').addClass('d-none');
                return;
            }
            renderShopPanel(shops);
            $('#tenantShopPanel').removeClass('d-none');
        }
    });
}

function renderShopPanel(shops) {
    var html = '';
    var done = shops.filter(function (s) { return s.has_lease; }).length;
    $('#shopPanelCount').html('<span class="badge badge-success">' + done + ' Saved</span> / <span class="badge badge-secondary">' + shops.length + ' Total</span>');

    var urlParams = new URLSearchParams(window.location.search);
    var currentUnitId = urlParams.get('unitid') || urlParams.get('shopcode') || $('#unitid').val();
    var activeShopName = '';

    shops.forEach(function (s) {
        var isCurrent = (currentUnitId && (s.id == currentUnitId || s.shopcode == currentUnitId));
        var badge, btnClass, labelText;
        if (isCurrent) {
            badge     = '✏️ [EDITING]';
            btnClass  = 'active-shop';
            labelText = s.shopname + (s.agreementno ? ' &nbsp;<small class="text-warning">(' + s.agreementno + ')</small>' : '');
            activeShopName = s.shopcode + ' — ' + s.shopname;
        } else if (s.has_lease) {
            badge     = '✅';
            btnClass  = 'saved-shop';
            labelText = s.shopname + ' &nbsp;<small class="text-muted">(' + s.agreementno + ')</small>';
        } else {
            badge     = '⬜';
            btnClass  = 'unsaved-shop';
            labelText = s.shopname + ' &nbsp;<small class="text-muted">(New)</small>';
        }
        html += '<button type="button" '
            + 'class="btn btn-sm ' + btnClass + ' mr-1 mb-1 shop-panel-btn" '
            + 'data-sn="' + s.id + '" '
            + 'data-lease-sn="' + (s.lease_sn || '') + '" '
            + 'data-shopname="' + (s.shopname || '') + '" '
            + 'data-shopcode="' + (s.shopcode || '') + '" '
            + 'data-has-lease="' + (s.has_lease ? '1' : '0') + '">'
            + badge + ' ' + s.shopcode + ' — ' + labelText
            + '</button>';
    });
    $('#shopPanelList').html(html);

    if (activeShopName) {
        $('#activeShopNameDisplay').text(activeShopName);
        $('#activeShopIndicator').show();
    } else {
        $('#activeShopIndicator').hide();
    }
}

// Shop panel button click — grey = fresh form, green = edit mode
$(document).on('click', '.shop-panel-btn', function () {
    var sn       = $(this).data('sn');
    var shopcode = $(this).data('shopcode');
    var shopname = $(this).data('shopname');
    var leaseSn  = $(this).data('lease-sn');
    var hasLease = $(this).data('has-lease') == '1';

    $('.shop-panel-btn').removeClass('active-shop');
    $(this).addClass('active-shop');

    if (hasLease && leaseSn) {
        window.location.href = '{{ url("leaseagreemententry") }}?sn=' + leaseSn + '&unitid=' + sn + '&shopcode=' + (shopcode || '');
    } else {
        // Grey shop (no lease yet) — sn clear karo taaki create path chale
        resetFormKeepTenant(true); // forceClearSn = true
        syncNewLeaseUrl();

        // unitid set karo — agar option exist nahi to dynamically add karo
        if ($('#unitid option[value="' + sn + '"]').length === 0) {
            $('#unitid').append('<option value="' + sn + '">' + (shopname || sn) + '</option>');
        }
        $('#unitid').val(sn);
        loadShopDetails(sn, false);

        $('#activeShopStatusTag').text('NEW SHOP');
        $('#activeShopNameDisplay').text((shopcode || '') + ' — ' + (shopname || '') + ' (Entering New Details)');
        $('#activeShopIndicator').show();

        $('html, body').animate({ scrollTop: 0 }, 300);
    }
});

// Grey shop / New button click → URL se "?sn=" hata do taaki URL aur form dono "nayi lease" mode me rahein
function syncNewLeaseUrl() {
    if (window.history && window.history.replaceState) {
        history.replaceState(null, '', '{{ url("leaseagreemententry") }}');
    }
}

// Form reset — tenant + contact + master dates rakho, baaki shop-specific fields clear (naye shop/agreement ke liye)
function resetFormKeepTenant(forceClearSn) {
    var tenantFields = {
        tenantid:      $('#tenantid').val(),
        contactperson: $('#contactperson').val(),
        mobile:        $('#mobile').val(),
        email:         $('#email').val(),
        sn:            $('#sn').val(),
        agrDate:       $('#agreement_date').val(),
        commencement:  $('#leasecommencementdate').val(),
        expiry:        $('#leaseexpirydate').val(),
        billingStart:  $('#billingstartfrom').val(),
        dueDate:       $('#duedateofmonth').val()
    };

    // Shop-specific inputs ko explicitly blank karo (form[0].reset() use mat karo kyunki wo server-rendered HTML default values wapas bhar deta hai)
    $('#shopcode').val('');
    $('#shopname').val('');
    $('#unittype').val('');
    $('#chargeablearea').val('');
    $('#carpetarea').val('');
    $('#renttype').val('FIXED_SQFT');
    $('#rentbasis').val('PER_SQFT');
    $('#rentrate').val('');
    $('#minimumrent').val('');
    $('#currentrent').val('0.00');
    $('#camrate').val('');
    $('#mincam').val('');
    $('#currentcam').val('0.00');
    $('#loino').val('');
    $('#loidate').val('');
    $('#remarks').val('');
    $('#possessiondate').val('');
    $('#fitoutstartdate').val('');
    $('#fitout_completion_date').val('');
    $('#storeopeningdate').val('');
    $('#moveindate').val('');

    // Restore tenant info & master agreement dates
    $('#tenantid').val(tenantFields.tenantid);
    $('#contactperson').val(tenantFields.contactperson);
    $('#mobile').val(tenantFields.mobile);
    $('#email').val(tenantFields.email);
    if (tenantFields.agrDate) $('#agreement_date').val(tenantFields.agrDate);
    if (tenantFields.commencement) $('#leasecommencementdate').val(tenantFields.commencement);
    if (tenantFields.expiry) $('#leaseexpirydate').val(tenantFields.expiry);
    if (tenantFields.billingStart) $('#billingstartfrom').val(tenantFields.billingStart);
    if (tenantFields.dueDate) $('#duedateofmonth').val(tenantFields.dueDate);

    // forceClearSn=true: grey shop click — naya shop add karna hai, sn clear karo
    // forceClearSn=false/undefined: tenant change aur agar edit mode tha to sn preserve
    if (forceClearSn || !tenantFields.sn) {
        currentSn = null;
        $('#sn').val('');
    } else {
        currentSn = tenantFields.sn;
        $('#sn').val(tenantFields.sn);
    }
    escUserTouched = false;
    camUserTouched = false;
    escLoadedFromDB = false;
    camLoadedFromDB = false;
    camCount = 0;
    chargesCount = 0;

    $('#agreementno').val(NEXTAGREEMENTNO);
    $('#display_leaseno').html('Lease No. : <strong>---</strong>');
    $('#display_status').html('Status : <strong>DRAFT</strong>');
    $('#deletebtn').prop('disabled', true);

    $('#escalationBody').html(`<tr id="escalation_no_data"><td colspan="8" class="text-center text-muted py-3"><i class="fa fa-info-circle"></i> No escalation rows added. Click "+ Add Row" to begin.</td></tr>`);
    $('#camBody').html(`<tr id="cam_no_data"><td colspan="8" class="text-center text-muted py-3"><i class="fa fa-info-circle"></i> No CAM rows added. Click "+ Add Row" to begin.</td></tr>`);
    $('#chargesBody').html(chargesEmptyHtml());
    plCharges = [];
}

$('#tenantid').on('change', function () {
    // Agar edit mode me hai (sn set hai) to tenant change allow nahi — warning do
    var currentSn = $('#sn').val();
    if (currentSn) {
        // Edit mode me tenant change karna allowed nahi — sn preserve karo
        loadTenantDetails($(this).val());
        return;
    }
    // Fresh mode me tenant change → form reset + details load
    loadTenantDetails($(this).val());
});

// Auto-fill in edit mode when tenant already selected
@if($lease && $lease->tenantid)
    $(function () { loadTenantDetails('{{ $lease->tenantid }}'); });
@endif

// Shops/Units → details auto-fill (floor, shop name, areas from mall_shopmast)
function loadShopDetails(sn, isInitialLoad) {
    if (!sn) return;
    $.ajax({
        url: '{{ route("getshop") }}',
        type: 'POST',
        data: { _token: '{{ csrf_token() }}', sn: sn },
        success: function (s) {
            if (s && (s.id || s.shopcode)) {
                $('#shopcode').val(s.shopcode || '');
                if (!isInitialLoad || !$('#shopname').val()) {
                    $('#shopname').val(s.shopname || '');
                }
                if (!isInitialLoad || !$('#chargeablearea').val() || $('#chargeablearea').val() == '0.00' || $('#chargeablearea').val() == '0') {
                    $('#chargeablearea').val(s.chargeablearea || '');
                }
                if (!isInitialLoad || !$('#carpetarea').val() || $('#carpetarea').val() == '0.00' || $('#carpetarea').val() == '0') {
                    $('#carpetarea').val(s.carpetarea || '');
                }
                if ($('#floorid').length && (!isInitialLoad || !$('#floorid').val())) {
                    $('#floorid').val(s.floorid || '');
                }
                // Unit Type auto-fill from shop master (shoptype = unittype typename)
                if (s.shoptype && $('#unittype option[value="' + s.shoptype + '"]').length && (!isInitialLoad || !$('#unittype').val())) {
                    $('#unittype').val(s.shoptype);
                }
                calculateCurrentRent();
                calculateCurrentCam();
                loadPartyLocCharges();
            }
        }
    });
}

$('#unitid').on('change', function () {
    loadShopDetails($(this).val(), false);
});

// Auto-fill in edit mode when shop already selected
@if(isset($leasedtl) && $leasedtl && $leasedtl->unitid)
    $(function () { loadShopDetails('{{ $leasedtl->unitid }}', true); });
@elseif(request()->filled('unitid'))
    $(function () { loadShopDetails('{{ request('unitid') }}', true); });
@elseif(isset($lease) && $lease && $lease->unitid)
    $(function () { loadShopDetails('{{ $lease->unitid }}', true); });
@endif

// Escalation rows DB se load hue hain — AJAX side-effect se overwrite nahi hone chahiye
let escLoadedFromDB = false;
let camLoadedFromDB = false;

let escalationCount = 0;
let escUserTouched = false;

function addEscalationRow(effectiveFrom, afterMonths, incType, incValue, newRate, newMonthlyRent) {
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const $existing = $('#escalationBody tr[id^="esc_row_"]');

    // After Months = pichhli row ke baad kitne months (base row 0, baaki 12/nechli value)
    if (afterMonths === undefined || afterMonths === null || afterMonths === '') {
        const lastVal = $existing.length
            ? (parseInt($existing.last().find('input[name="esc_aftermonths[]"]').val()) || 12)
            : 0;
        afterMonths = $existing.length ? lastVal : 0;
    }

    const isBaseRow = (parseInt(afterMonths) === 0);
    if (!incType && !isBaseRow) {
        incType = 'Percentage';
    }
    if ((incValue === undefined || incValue === null || incValue === '') && !isBaseRow) {
        const defPct = getActiveDefaultEscPct();
        incValue = defPct > 0 ? defPct : '';
    }

    // Effective From khaali ho to pichhli row ki date + After Months se compute
    if ((!effectiveFrom || effectiveFrom === '') && start) {
        let cum = 0;
        $existing.each(function () {
            cum += parseInt($(this).find('input[name="esc_aftermonths[]"]').val()) || 0;
        });
        effectiveFrom = escEffectiveFrom(start, $('#leaseexpirydate').val(), cum + (parseInt(afterMonths) || 0));
    }

    $('#escalation_no_data').remove();
    escalationCount++;
    const row = `
    <tr id="esc_row_${escalationCount}">
        <td class="text-center align-middle">${escalationCount}</td>
        <td><input type="number" class="form-control form-control-sm" name="esc_aftermonths[]" min="0" placeholder="0" value="${afterMonths ?? ''}"></td>
        <td><input type="date" class="form-control form-control-sm" name="esc_effectivefrom[]" value="${effectiveFrom || ''}"></td>
        <td>
            <select class="form-control form-control-sm" name="esc_increasetype[]">
                <option value="">-- Select --</option>
                <option value="Percentage" ${incType === 'Percentage' ? 'selected' : ''}>Percentage</option>
                <option value="Fixed Amount" ${incType === 'Fixed Amount' ? 'selected' : ''}>Fixed Amount</option>
            </select>
        </td>
        <td><input type="number" step="0.01" class="form-control form-control-sm" name="esc_increasevalue[]" placeholder="0.00" value="${incValue ?? ''}"></td>
        <td><input type="number" step="0.01" class="form-control form-control-sm font-weight-bold" name="esc_newrate[]" placeholder="0.00" value="${newRate ?? ''}"></td>
        <td><input type="number" step="0.01" class="form-control form-control-sm text-right" name="esc_newmonthlyrent[]" placeholder="0.00" value="${newMonthlyRent ?? ''}"></td>
        <td class="text-center align-middle">
            <button type="button" class="btn btn-sm btn-danger py-0 px-1" onclick="escUserTouched = true; removeEscalationRow(${escalationCount})">
                <i class="fa fa-times"></i>
            </button>
        </td>
    </tr>`;
    $('#escalationBody').append(row);
}

function removeEscalationRow(id) {
    $(`#esc_row_${id}`).remove();
    if ($('#escalationBody tr[id^="esc_row_"]').length === 0) {
        $('#escalationBody').html(`<tr id="escalation_no_data"><td colspan="8" class="text-center text-muted py-3"><i class="fa fa-info-circle"></i> No escalation rows added.</td></tr>`);
    } else {
        renumberEscRows();
    }
}

// Rows ko 1,2,3... se renumber karo (counter bhi reset)
function renumberEscRows() {
    escalationCount = 0;
    $('#escalationBody tr[id^="esc_row_"]').each(function () {
        escalationCount++;
        $(this).attr('id', 'esc_row_' + escalationCount);
        $(this).find('td:first').text(escalationCount);
        $(this).find('button[onclick^="escUserTouched"]').attr('onclick',
            'escUserTouched = true; removeEscalationRow(' + escalationCount + ')');
    });
    recalcEscRates();
}

/**
 * Compound chain: Row1 = base rent rate (from #rentrate)
 * Row2 = Row1 × (1 + pct/100), Row3 = Row2 × (1 + pct/100) ...
 * Fixed Amount type: newRate = prevRate + fixedAmount
 * Row1 (base, afterMonths=0): rate = #rentrate, no increase applied
 */
function recalcEscRates() {
    const area    = parseFloat($('#chargeablearea').val()) || 0;
    const flatRent = parseFloat($('#minimumrent').val()) || 0;
    const baseRate = flatRent > 0 ? flatRent : (parseFloat($('#rentrate').val()) || 0);
    let prevRate  = baseRate;

    $('#escalationBody tr[id^="esc_row_"]').each(function (idx) {
        const $row       = $(this);
        const afterMonths = parseInt($row.find('input[name="esc_aftermonths[]"]').val()) || 0;
        const incType    = $row.find('select[name="esc_increasetype[]"]').val();
        const incValue   = parseFloat($row.find('input[name="esc_increasevalue[]"]').val()) || 0;
        const $rateInput = $row.find('input[name="esc_newrate[]"]');
        const $rentInput = $row.find('input[name="esc_newmonthlyrent[]"]');

        let newRate;
        if (idx === 0) {
            // Base row — always use base (flat min rent ya per-sqft rent rate) directly
            newRate = baseRate;
        } else if (incType === 'Percentage' && incValue > 0) {
            newRate = prevRate * (1 + incValue / 100);
        } else if (incType === 'Fixed Amount' && incValue > 0) {
            newRate = prevRate + incValue;
        } else {
            newRate = prevRate; // no change if type/value not set
        }

        $rateInput.val(newRate > 0 ? newRate.toFixed(2) : '');
        // Flat base: New Monthly Rent = New Rate; Per sq.ft: New Rate × area
        $rentInput.val(newRate > 0 ? (flatRent > 0 ? newRate : (area > 0 ? newRate * area : newRate)).toFixed(2) : '');
        prevRate = newRate;
    });
}

// ── CAM (Common Area Maintenance) Schedule rows ─────────────────────────────
let camCount = 0;
let camUserTouched = false;

function addCamRow(effectiveFrom, afterMonths, incType, incValue, newRate, newMonthly, skipRecalc) {
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const $existing = $('#camBody tr[id^="cam_row_"]');

    // After Months = pichhli row ke baad kitne months (base row 0, baaki 12/nechli value)
    if (afterMonths === undefined || afterMonths === null || afterMonths === '') {
        const lastVal = $existing.length
            ? (parseInt($existing.last().find('input[name="cam_aftermonths[]"]').val()) || 12)
            : 0;
        afterMonths = $existing.length ? lastVal : 0;
    }

    const isBaseRow = (parseInt(afterMonths) === 0);
    if (!incType && !isBaseRow) {
        incType = 'Percentage';
    }
    if ((incValue === undefined || incValue === null || incValue === '') && !isBaseRow) {
        const defPct = getActiveDefaultEscPct();
        incValue = defPct > 0 ? defPct : '';
    }

    // Effective From khaali ho to pichhli row ki date + After Months se compute
    if ((!effectiveFrom || effectiveFrom === '') && start) {
        let cum = 0;
        $existing.each(function () {
            cum += parseInt($(this).find('input[name="cam_aftermonths[]"]').val()) || 0;
        });
        effectiveFrom = escEffectiveFrom(start, $('#leaseexpirydate').val(), cum + (parseInt(afterMonths) || 0));
    }

    $('#cam_no_data').remove();
    camCount++;
    const row = `
    <tr id="cam_row_${camCount}">
        <td class="text-center align-middle">${camCount}</td>
        <td><input type="number" class="form-control form-control-sm" name="cam_aftermonths[]" min="0" placeholder="0" value="${afterMonths ?? ''}"></td>
        <td><input type="date" class="form-control form-control-sm" name="cam_effectivefrom[]" value="${effectiveFrom || ''}"></td>
        <td>
            <select class="form-control form-control-sm" name="cam_increasetype[]">
                <option value="">-- Select --</option>
                <option value="Percentage" ${incType === 'Percentage' ? 'selected' : ''}>Percentage</option>
                <option value="Fixed Amount" ${incType === 'Fixed Amount' ? 'selected' : ''}>Fixed Amount</option>
            </select>
        </td>
        <td><input type="number" step="0.01" class="form-control form-control-sm" name="cam_increasevalue[]" placeholder="0.00" value="${incValue ?? ''}"></td>
        <td><input type="number" step="0.01" class="form-control form-control-sm" name="cam_newrate[]" placeholder="0.00" value="${newRate ?? ''}"></td>
        <td><input type="number" step="0.01" class="form-control form-control-sm text-right" name="cam_newamount[]" placeholder="0.00" value="${newMonthly ?? ''}"></td>
        <td class="text-center align-middle">
            <button type="button" class="btn btn-sm btn-danger py-0 px-1" onclick="removeCamRow(${camCount})">
                <i class="fa fa-times"></i>
            </button>
        </td>
    </tr>`;
    $('#camBody').append(row);
    if (!skipRecalc) { recalcCamRates(); }
}

function removeCamRow(id) {
    camUserTouched = true;
    $(`#cam_row_${id}`).remove();
    if ($('#camBody tr[id^="cam_row_"]').length === 0) {
        $('#camBody').html(`<tr id="cam_no_data"><td colspan="8" class="text-center text-muted py-3"><i class="fa fa-info-circle"></i> No CAM rows added.</td></tr>`);
    } else {
        renumberCamRows();
    }
}

// CAM rows ko 1,2,3... se renumber karo (counter bhi reset)
function renumberCamRows() {
    camCount = 0;
    $('#camBody tr[id^="cam_row_"]').each(function () {
        camCount++;
        $(this).attr('id', 'cam_row_' + camCount);
        $(this).find('td:first').text(camCount);
        $(this).find('button[onclick^="removeCamRow"]').attr('onclick',
            'removeCamRow(' + camCount + ')');
    });
}

// CAM rows bhi RENT ki tarah lease Start→End months se auto-generate
function autoFillCamRows() {
    if (camUserTouched) return;
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const end   = $('#leaseexpirydate').val();
    if (!start) return;

    camCount = 0;
    $('#camBody tr[id^="cam_row_"]').remove();
    $('#cam_no_data').remove();

    const flatCam  = parseFloat($('#mincam').val()) || 0;
    const baseRate = flatCam > 0 ? flatCam : (parseFloat($('#camrate').val()) || 0);
    const area     = parseFloat($('#chargeablearea').val()) || 0;
    const total    = totalLeaseMonths();
    if (total <= 0) return;

    // Default 12-month interval se lease start → end tak rows
    // Skip row agar computed date lease end se aage jaaye
    const endDate = new Date(end + 'T00:00:00');
    const defCamPct = getActiveDefaultEscPct();
    for (let m = 0; m <= total; m += 12) {
        const effDate = new Date(addMonthsToDate(start, m) + 'T00:00:00');
        if (m > 0 && effDate > endDate) break;
        const isBase = (m === 0);
        addCamRow(
            escEffectiveFrom(start, end, m),
            isBase ? 0 : 12,
            isBase ? '' : 'Percentage',
            isBase ? 0 : (defCamPct > 0 ? defCamPct : ''),
            baseRate > 0 ? baseRate.toFixed(2) : '',
            baseRate > 0 ? (baseRate * area).toFixed(2) : ''
        );
    }
    recalcCamRates();
}

/**
 * CAM: Kisi bhi row ka After Months change hone par us row se neche regenerate
 */
function regenCamBelow($changedRow, newInterval) {
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const end   = $('#leaseexpirydate').val();
    if (!start || !end || newInterval <= 0) return;

    // Is row ke baad wale saare rows remove karo
    let found = false;
    $('#camBody tr[id^="cam_row_"]').each(function () {
        if (found) $(this).remove();
        if ($(this).is($changedRow)) found = true;
    });

    // Changed row tak cumulative months nikalo
    let cumMonths = 0;
    $('#camBody tr[id^="cam_row_"]').each(function () {
        cumMonths += parseInt($(this).find('input[name="cam_aftermonths[]"]').val()) || 0;
    });

    const total = totalLeaseMonths();
    const defCamPct = getActiveDefaultEscPct();

    // Ab naye interval se aage rows add karo — lease end ke baad row mat banao
    const endDate = new Date(end + 'T00:00:00');
    for (let m = cumMonths + newInterval; m <= total; m += newInterval) {
        const effDate = new Date(addMonthsToDate(start, m) + 'T00:00:00');
        if (effDate > endDate) break;
        addCamRow(
            escEffectiveFrom(start, end, m),
            newInterval,
            'Percentage',
            defCamPct > 0 ? defCamPct : '',
            '',
            ''
        );
    }

    recalcCamDates();
    renumberCamRows();
}

// Lease dates change → CAM bhi regenerate (agar user ne manually touch na kiya ho)
$(document).on('change input', '#leasecommencementdate, #leaseexpirydate, #agreement_date', autoFillCamRows);

// CAM: New Rate / Increase Value / Type change → full chain recalc (RENT jaisa)
$(document).on('change input', 'input[name="cam_newrate[]"], input[name="cam_increasevalue[]"]', function () {
    recalcCamRates();
});
$(document).on('change', 'select[name="cam_increasetype[]"]', function () {
    recalcCamRates();
});

// Agar camUserTouched=true hai (custom rows) to CAM Rate / Min. CAM / Area change par sirf chain recalc,
// warna lease dates set hone par rows regenerate (base CAM rate/min CAM se seed)
$(document).on('change input', '#camrate, #mincam, #chargeablearea', function () {
    if (camUserTouched && !camLoadedFromDB) {
        if ($('#camBody tr[id^="cam_row_"]').length > 0) {
            recalcCamRates();
        }
    } else if (!camUserTouched && ($('#leasecommencementdate').val() || $('#agreement_date').val())) {
        autoFillCamRows();
    }
});

// ── Escalation Schedule: RENT / CAM toggle & Bulk Apply ─────────────────────
let activeEscType = 'rent';

function getActiveDefaultEscPct() {
    var custom = parseFloat($('#esc_bulk_pct').val());
    return (!isNaN(custom) && custom >= 0) ? custom : 0;
}

function switchEscType(type) {
    activeEscType = type;
    if (type === 'rent') {
        $('#escBtnRent').css({ background: '#ffc107', color: '#212529', border: '1px solid #d39e00' });
        $('#escBtnCam').css({ background: 'rgba(255,255,255,.2)', color: '#fff', border: '1px solid rgba(255,255,255,.3)' });
        $('#activeEscBadge').removeClass('badge-info text-white').addClass('badge-warning text-dark').html('<i class="fa fa-home mr-1"></i> RENT Escalation Active');
        $('#escScheduleCard').css('border-left', '4px solid #ffc107');
    } else {
        $('#escBtnCam').css({ background: '#17a2b8', color: '#fff', border: '1px solid #117a8b' });
        $('#escBtnRent').css({ background: 'rgba(255,255,255,.2)', color: '#fff', border: '1px solid rgba(255,255,255,.3)' });
        $('#activeEscBadge').removeClass('badge-warning text-dark').addClass('badge-info text-white').html('<i class="fa fa-wrench mr-1"></i> CAM Escalation Active');
        $('#escScheduleCard').css('border-left', '4px solid #17a2b8');
    }
    $('.esc-panel').addClass('d-none');
    $('.esc-panel[data-esc-panel="' + type + '"]').removeClass('d-none');
}

$(document).on('click', '.esc-type-btn', function () {
    switchEscType($(this).data('esc-type'));
});

function applyBulkEscPct() {
    var val = parseFloat($('#esc_bulk_pct').val());
    if (isNaN(val) || val < 0) {
        alert('Please enter a valid percentage value (e.g. 5, 6, 10).');
        return;
    }

    if (activeEscType === 'cam') {
        camUserTouched = true;
        var count = 0;
        $('#camBody tr[id^="cam_row_"]').each(function (idx) {
            if (idx > 0) { // skip base row (index 0)
                $(this).find('select[name="cam_increasetype[]"]').val('Percentage');
                $(this).find('input[name="cam_increasevalue[]"]').val(val);
                count++;
            }
        });
        if (count > 0) {
            recalcCamRates();
        }
    } else {
        escUserTouched = true;
        var count = 0;
        $('#escalationBody tr[id^="esc_row_"]').each(function (idx) {
            if (idx > 0) { // skip base row (index 0)
                $(this).find('select[name="esc_increasetype[]"]').val('Percentage');
                $(this).find('input[name="esc_increasevalue[]"]').val(val);
                count++;
            }
        });
        if (count > 0) {
            recalcEscRates();
        }
    }
}

function addEscRowForActive() {
    if (activeEscType === 'cam') {
        camUserTouched = true;
        addCamRow();
    } else {
        escUserTouched = true;
        addEscalationRow();
    }
}

// ── Charges Summary rows (source: mall_partylocation via Tenant Location) ────
let chargesCount = 0;

function chargesOptions(selected) {
    let html = '<option value="">-- Select Charge --</option>';
    // Saved/selected charge partylocation list me na ho to bhi value preserve karo
    const found = plCharges.some(function (c) { return c.chargecode === selected; });
    if (selected && !found) {
        html += '<option value="' + selected + '" selected>' + selected + '</option>';
    }
    plCharges.forEach(function (c) {
        const sel = c.chargecode === selected ? 'selected' : '';
        html += '<option value="' + c.chargecode + '" ' + sel + '>' + (c.chargename || c.chargecode) + '</option>';
    });
    return html;
}

function cycleOptions(selected) {
    let html = '';
    BILLINGCYCLES.forEach(function (cy) {
        const sel = cy === selected ? 'selected' : '';
        html += '<option value="' + cy + '" ' + sel + '>' + cy + '</option>';
    });
    return html;
}

function chargesEmptyHtml() {
    return '<tr id="charges_no_data"><td colspan="9" class="text-center text-muted py-3"><i class="fa fa-info-circle"></i> No charges added. Tenant + Shop select karein — charges <strong>Tenant Location (Partylocation)</strong> se fetch hoti hain.</td></tr>';
}

function addChargesRow(data) {
    data = data || {};
    const code   = data.chargecode || '';
    const method = data.calculationmethod || '';
    const name   = data.chargename || '';
    const rate   = data.rate ?? '';
    const amount = data.amount ?? '';
    const cycle  = data.billingcycle || 'MONTHLY';
    const efff   = data.effectivefrom || ($('#leasecommencementdate').val() || '');
    const efft   = data.effectiveto || ($('#leaseexpirydate').val() || '');
    const amountAuto = (amount !== undefined && amount !== null && amount !== '') ? '0' : '1';
    const efffUser   = (data.effectivefrom ? '1' : '0');
    const efftUser   = (data.effectiveto ? '1' : '0');

    $('#charges_no_data').remove();
    chargesCount++;
    const row = `
    <tr id="chg_row_${chargesCount}">
        <td class="text-center align-middle chg_sno">${chargesCount}</td>
        <td style="min-width:210px;">
            <select class="form-control form-control-sm chg_chargecode" name="chg_chargecode[]">${chargesOptions(code)}</select>
            <input type="hidden" class="chg_chargename" name="chg_chargename[]" value="${name}">
        </td>
        <td><input type="text" class="form-control form-control-sm chg_calcmethod bg-light" name="chg_calculationmethod[]" value="${method}" readonly style="min-width:90px;"></td>
        <td style="min-width:100px;"><input type="number" step="0.01" class="form-control form-control-sm chg_rate" name="chg_rate[]" placeholder="0.00" value="${rate}"></td>
        <td style="min-width:100px;"><input type="number" step="0.01" class="form-control form-control-sm chg_amount" name="chg_amount[]" placeholder="0.00" value="${amount}" data-amount-auto="${amountAuto}"></td>
        <td style="min-width:110px;"><select class="form-control form-control-sm chg_cycle" name="chg_billingcycle[]">${cycleOptions(cycle)}</select></td>
        <td><input type="date" class="form-control form-control-sm chg_efff" name="chg_effectivefrom[]" data-user-set="${efffUser}" value="${efff}"></td>
        <td><input type="date" class="form-control form-control-sm chg_efft" name="chg_effectiveto[]" data-user-set="${efftUser}" value="${efft}"></td>
        <td class="text-center align-middle">
            <button type="button" class="btn btn-sm btn-danger py-0 px-1" onclick="removeChargesRow(${chargesCount})">
                <i class="fa fa-times"></i>
            </button>
        </td>
    </tr>`;
    $('#chargesBody').append(row);

    const $row = $('#chg_row_' + chargesCount);
    if (code && !data.calculationmethod && !data.billingcycle) {
        const m = plCharges.filter(x => x.chargecode === code)[0];
        if (m) {
            $row.find('.chg_chargename').val(m.chargename);
            $row.find('.chg_calcmethod').val(m.calculationbasis);
            $row.find('.chg_cycle').val(m.billingfrequency || 'MONTHLY');
        }
    }
    renumberCharges();
}

function masterChargeData(c) {
    return { chargecode: c.chargecode, chargename: c.chargename, calculationmethod: c.calculationbasis, billingcycle: c.billingfrequency };
}

// Tenant + Shop select hone par mall_partylocation se charges load karo
function loadPartyLocCharges() {
    const tenantcode = $('#tenantid').val();
    const unitid     = $('#unitid').val();
    if (!tenantcode || !unitid) {
        plCharges = [];
        return;
    }
    $.ajax({
        url: '{{ route("getpartylocationcharges") }}',
        type: 'POST',
        data: { _token: '{{ csrf_token() }}', tenantcode: tenantcode, unitid: unitid },
        success: function (rows) {
            plCharges = rows || [];
            if (IS_EDIT && {{ count($chargerows) }} > 0) {
                // Edit mode with saved charges: sirf dropdown options refresh karo
                $('#chargesBody tr[id^="chg_row_"]').each(function () {
                    const $sel = $(this).find('.chg_chargecode');
                    const cur  = $sel.val();
                    $sel.html(chargesOptions(cur));
                });
            } else {
                // Naye lease ya edit mode jisme koi saved charge nahi
                rebuildChargesFromPartyLocation();
            }
        }
    });
}

function rebuildChargesFromPartyLocation() {
    chargesCount = 0;
    $('#chargesBody').empty();
    if (!plCharges.length) {
        $('#chargesBody').html(chargesEmptyHtml());
        return;
    }
    plCharges.forEach(function (c) {
        addChargesRow(masterChargeData(c));
    });
}

// P1: Charges Rate → Amount auto-calc (AREA / FIXED / PER_SQFT = rate × area, FLAT/baaki = rate)
function recalcChgAmount($row) {
    const rate = parseFloat($row.find('.chg_rate').val()) || 0;
    if (!rate) return;
    const method = ($row.find('.chg_calcmethod').val() || '').toUpperCase();
    const area   = parseFloat($('#chargeablearea').val()) || 0;
    let amount = rate;
    if (method === 'AREA' || method === 'PER_SQFT' || method === 'SQFT' || method === 'FIXED') {
        amount = rate * area;
    }
    $row.find('.chg_amount').val(amount.toFixed(2));
    $row.find('.chg_amount').attr('data-amount-auto', '1');
}

function removeChargesRow(id) {
    $('#chg_row_' + id).remove();
    if ($('#chargesBody tr[id^="chg_row_"]').length === 0) {
        $('#chargesBody').html(chargesEmptyHtml());
    }
    renumberCharges();
}

function renumberCharges() {
    $('#chargesBody tr[id^="chg_row_"]').each(function (i) {
        $(this).find('.chg_sno').text(i + 1);
    });
}

$(document).on('change', '.chg_chargecode', function () {
    const $row = $(this).closest('tr');
    const m = plCharges.filter(x => x.chargecode === this.value)[0];
    if (m) {
        $row.find('.chg_chargename').val(m.chargename);
        $row.find('.chg_calcmethod').val(m.calculationbasis);
        $row.find('.chg_cycle').val(m.billingfrequency || 'MONTHLY');
    } else {
        $row.find('.chg_chargename').val('');
        $row.find('.chg_calcmethod').val('');
    }
    recalcChgAmount($row);
});

// ── Escalation auto-generate from Lease Start ↔ End dates ───────────────────
function fmtYmd(d) {
    return d.getFullYear() + '-' + String(d.getMonth() + 1).padStart(2, '0') + '-' + String(d.getDate()).padStart(2, '0');
}

// Lease Start → End ke beech pure months (1 Jan → 31 Dec = 12, extra din count nahi)
function totalLeaseMonths() {
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const end   = $('#leaseexpirydate').val();
    if (!start || !end) return 0;
    const s = new Date(start + 'T00:00:00');
    const e = new Date(end + 'T00:00:00');
    if (e <= s) return 0;
    // Pure calendar months: 1 Jan → 31 Dec = 11 months (end month - start month)
    // +1 nahi — warna 2026-01-01 + 12 months = 2027-01-01 jo lease end ke baad hai
    const m = (e.getFullYear() - s.getFullYear()) * 12 + (e.getMonth() - s.getMonth());
    return m;
}

// Effective From = start + months, lekin lease End se aage kabhi nahi (1 day extra skip)
// e.g. 1 Jan 2026 + 12 months = 1 Jan 2027 → 31 Dec 2026 (lease end) par cap
function escEffectiveFrom(start, end, offset) {
    const d = addMonthsToDate(start, offset);
    if (end && new Date(d + 'T00:00:00') > new Date(end + 'T00:00:00')) return end;
    return d;
}

// Lease period me interval ke hisaab se row offsets: 0, 12, 24 ...
// (start se end tak, last row lease End par land hoti hai)
function monthOffsets(interval) {
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    if (!start) return [0];
    const step   = interval > 0 ? interval : 12;
    const total  = totalLeaseMonths();
    const offsets = [];
    for (let m = 0; m <= total; m += step) offsets.push(m);
    return offsets.length ? offsets : [0];
}

function autoFillEscalations() {
    // User ne koi row manually touch ki hai to auto-regenerate BAND
    if (escUserTouched) return;
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const end   = $('#leaseexpirydate').val();
    if (!start) return;

    escalationCount = 0;
    $('#escalationBody tr[id^="esc_row_"]').remove();
    $('#escalation_no_data').remove();

    const flatRent = parseFloat($('#minimumrent').val()) || 0;
    const baseRate = flatRent > 0 ? flatRent : (parseFloat($('#rentrate').val()) || 0);
    const area     = parseFloat($('#chargeablearea').val()) || 0;
    const total    = totalLeaseMonths();
    if (total <= 0) return;

    // Default 12-month interval se lease start → end tak rows
    // Skip row agar computed date lease end se aage jaaye
    const endDate = new Date(end + 'T00:00:00');
    const defEscPct = getActiveDefaultEscPct();
    for (let m = 0; m <= total; m += 12) {
        const effDate = new Date(addMonthsToDate(start, m) + 'T00:00:00');
        if (m > 0 && effDate > endDate) break; // lease end ke baad row mat banao
        const isBase = (m === 0);
        addEscalationRow(
            escEffectiveFrom(start, end, m),
            isBase ? 0 : 12,
            isBase ? '' : 'Percentage',
            isBase ? 0 : (defEscPct > 0 ? defEscPct : ''),
            baseRate > 0 ? baseRate.toFixed(2) : '',
            baseRate > 0 ? (baseRate * area).toFixed(2) : ''
        );
    }
    recalcEscRates();
}

/**
 * Kisi bhi row ka After Months change hone par:
 *  - us row se NECHE ke saare rows DELETE karo
 *  - us row ka cumulative offset nikalo
 *  - naye interval se lease end tak naye rows ADD karo
 */
function regenEscBelow($changedRow, newInterval) {
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const end   = $('#leaseexpirydate').val();
    if (!start || !end || newInterval <= 0) return;

    // Is row ke baad wale saare rows remove karo
    let found = false;
    $('#escalationBody tr[id^="esc_row_"]').each(function () {
        if (found) $(this).remove();
        if ($(this).is($changedRow)) found = true;
    });

    // Changed row tak cumulative months nikalo
    let cumMonths = 0;
    $('#escalationBody tr[id^="esc_row_"]').each(function () {
        cumMonths += parseInt($(this).find('input[name="esc_aftermonths[]"]').val()) || 0;
    });

    const total = totalLeaseMonths();
    const defEscPct = getActiveDefaultEscPct();

    // Ab naye interval se aage rows add karo — lease end ke baad row mat banao
    const endDate = new Date(end + 'T00:00:00');
    for (let m = cumMonths + newInterval; m <= total; m += newInterval) {
        const effDate = new Date(addMonthsToDate(start, m) + 'T00:00:00');
        if (effDate > endDate) break;
        addEscalationRow(
            escEffectiveFrom(start, end, m),
            newInterval,
            'Percentage',
            defEscPct > 0 ? defEscPct : '',
            '',
            ''
        );
    }

    recalcEscalationDates();
    renumberEscRows();
    recalcEscRates();
}

$(document).on('change input', '#leasecommencementdate, #leaseexpirydate, #agreement_date, #rentrate, #chargeablearea, #minimumrent', autoFillEscalations);

// Agar escUserTouched=true hai (user ne custom rows banaye hain) to
// sirf base rate / flat rent / area change hone par bhi chain recalc karo
$(document).on('change input', '#rentrate, #chargeablearea, #minimumrent', function () {
    if (escUserTouched && !escLoadedFromDB && $('#escalationBody tr[id^="esc_row_"]').length > 0) {
        recalcEscRates();
    }
});

// P3: escalation me koi bhi user input = manual (auto-regenerate band) + DB-loaded flag clear
$('#escalationBody').on('change input', function () {
    escUserTouched  = true;
    escLoadedFromDB = false;  // user ne touch kiya — ab recalc allow karo
});
$('#camBody').on('change input', function () {
    camUserTouched  = true;
    camLoadedFromDB = false;
});

// After Months column first aaya hai — Effective From row ki After Months se auto-set hota hai
function addMonthsToDate(dateStr, months) {
    if (!dateStr) return '';
    const d = new Date(dateStr + 'T00:00:00');
    d.setMonth(d.getMonth() + months);
    return fmtYmd(d);
}

// Effective From poori series me cumulative (pichhli row + After Months) recalc
function recalcEscalationDates() {
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const end   = $('#leaseexpirydate').val();
    if (!start) return;
    let m = 0;
    $('#escalationBody tr[id^="esc_row_"]').each(function (idx) {
        if (idx > 0) m += parseInt($(this).find('input[name="esc_aftermonths[]"]').val()) || 0;
        $(this).find('input[name="esc_effectivefrom[]"]').val(escEffectiveFrom(start, end, m));
    });
}

function recalcCamDates() {
    const start = $('#leasecommencementdate').val() || $('#agreement_date').val();
    const end   = $('#leaseexpirydate').val();
    if (!start) return;
    let m = 0;
    $('#camBody tr[id^="cam_row_"]').each(function (idx) {
        if (idx > 0) m += parseInt($(this).find('input[name="cam_aftermonths[]"]').val()) || 0;
        $(this).find('input[name="cam_effectivefrom[]"]').val(escEffectiveFrom(start, end, m));
    });
}

// Compound chain: Row1 = base CAM (flat min CAM ya per-sqft camrate × area)
// Row2 = Row1 × (1 + pct/100), Row3 = Row2 × (1 + pct/100) ...
function recalcCamRates() {
    const area     = parseFloat($('#chargeablearea').val()) || 0;
    const flatCam  = parseFloat($('#mincam').val()) || 0;
    const baseRate = flatCam > 0 ? flatCam : (parseFloat($('#camrate').val()) || 0);
    let prevRate   = baseRate;

    $('#camBody tr[id^="cam_row_"]').each(function (idx) {
        const $row      = $(this);
        const afterMonths = parseInt($row.find('input[name="cam_aftermonths[]"]').val()) || 0;
        const incType   = $row.find('select[name="cam_increasetype[]"]').val();
        const incValue  = parseFloat($row.find('input[name="cam_increasevalue[]"]').val()) || 0;
        const $rateInput = $row.find('input[name="cam_newrate[]"]');
        const $amtInput  = $row.find('input[name="cam_newamount[]"]');

        let newRate;
        if (idx === 0) {
            newRate = baseRate;
        } else if (incType === 'Percentage' && incValue > 0) {
            newRate = prevRate * (1 + incValue / 100);
        } else if (incType === 'Fixed Amount' && incValue > 0) {
            newRate = prevRate + incValue;
        } else {
            newRate = prevRate;
        }

        $rateInput.val(newRate > 0 ? newRate.toFixed(2) : '');
        // Flat base: New Monthly CAM = New Rate; Per sq.ft: New Rate × area
        $amtInput.val(newRate > 0 ? (flatCam > 0 ? newRate : (area > 0 ? newRate * area : newRate)).toFixed(2) : '');
        prevRate = newRate;
    });
}

// RENT: After Months change → us row se neche ke saare rows delete karke naye interval se regenerate
$(document).on('change', 'input[name="esc_aftermonths[]"]', function () {
    const $row    = $(this).closest('tr');
    const val     = parseInt($(this).val()) || 0;
    const rowIdx  = $('#escalationBody tr[id^="esc_row_"]').index($row);
    if (rowIdx === 0) {
        // Base row ka 0 maintain karo, dates recalc karo
        $(this).val(0);
        recalcEscalationDates();
        return;
    }
    regenEscBelow($row, val);
});

// CAM: After Months change → us row se neche ke saare rows delete karke naye interval se regenerate
$(document).on('change', 'input[name="cam_aftermonths[]"]', function () {
    const $row   = $(this).closest('tr');
    const val    = parseInt($(this).val()) || 0;
    const rowIdx = $('#camBody tr[id^="cam_row_"]').index($row);
    if (rowIdx === 0) {
        $(this).val(0);
        recalcCamDates();
        return;
    }
    regenCamBelow($row, val);
});

// P1: Charges Rate bhara to Amount auto-calc; manual Amount overwrite na ho
$(document).on('change input', '.chg_rate', function () {
    recalcChgAmount($(this).closest('tr'));
});
$(document).on('change input', '.chg_amount', function () {
    $(this).attr('data-amount-auto', '0');
});
$(document).on('change input', '#chargeablearea', function () {
    $('#chargesBody tr[id^="chg_row_"]').each(function () {
        const $row = $(this);
        if ($row.find('.chg_amount').attr('data-amount-auto') === '1' && parseFloat($row.find('.chg_rate').val()) > 0) {
            recalcChgAmount($row);
        }
    });
});

// P4: Charges Effective From/To — user ne manually date na badali ho to lease dates se update
$(document).on('change', '.chg_efff', function () { $(this).attr('data-user-set', '1'); });
$(document).on('change', '.chg_efft', function () { $(this).attr('data-user-set', '1'); });

function updateChargesDefaults() {
    const efff = $('#leasecommencementdate').val() || '';
    const efft = $('#leaseexpirydate').val() || '';
    if (!efff && !efft) return;
    $('#chargesBody tr[id^="chg_row_"]').each(function () {
        const $ff = $(this).find('.chg_efff');
        const $ft = $(this).find('.chg_efft');
        if (efff && $ff.attr('data-user-set') !== '1') $ff.val(efff);
        if (efft && $ft.attr('data-user-set') !== '1') $ft.val(efft);
    });
}
$(document).on('change', '#leasecommencementdate, #leaseexpirydate', function () {
    updateChargesDefaults();
});

// P2: Escalation Rate chain — Row1 base rate change, increase type/value change → full chain recalc
$(document).on('change input', 'input[name="esc_newrate[]"], input[name="esc_increasevalue[]"]', function () {
    recalcEscRates();
});
$(document).on('change', 'select[name="esc_increasetype[]"]', function () {
    recalcEscRates();
});

// P5: Billing Start From — Lease Start se auto-suggest (khaali ho to)
$(document).on('change', '#leasecommencementdate', function () {
    if ($(this).val() && !$('#billingstartfrom').val()) {
        $('#billingstartfrom').val($(this).val());
    }
});

// Save Lease Agreement
function saveLeaseAgreement() {
    const tenantid = $('#tenantid').val();
    const unitid   = $('#unitid').val();
    const startdt  = $('#leasecommencementdate').val();
    const enddt    = $('#leaseexpirydate').val();

    // P6: Due Date of Month validation
    const ddm = $('#duedateofmonth').val();
    if (ddm && !ddm.match(/^\d{4}-\d{2}-\d{2}$/)) {
        Swal.fire('Validation', 'Due Date is not valid.', 'warning');
        return;
    }

    if (!tenantid) { Swal.fire('Validation', 'Please select a Tenant.', 'warning'); return; }
    if (!unitid)   { Swal.fire('Validation', 'Please select a Shop / Unit.', 'warning'); return; }
    if (!startdt)  { Swal.fire('Validation', 'Please enter Lease Start Date.', 'warning'); return; }    if (!enddt)    { Swal.fire('Validation', 'Please enter Lease End Date.', 'warning'); return; }
    if (startdt >= enddt) { Swal.fire('Validation', 'Lease End Date must be after Start Date.', 'warning'); return; }

    $('#submitbtn').prop('disabled', true);

    // Save se pehle ek final recalc — ensure esc_newrate[] / cam_newrate[] correct hain
    if (!escLoadedFromDB && $('#escalationBody tr[id^="esc_row_"]').length > 0) {
        recalcEscRates();
    }
    if (!camLoadedFromDB && $('#camBody tr[id^="cam_row_"]').length > 0) {
        recalcCamRates();
    }

    const formData = $('#leaseagreementform').serialize();

    $.ajax({
        url: '{{ route("leaseagreementsave") }}',
        type: 'POST',
        data: formData,
        success: function (res) {
            $('#submitbtn').prop('disabled', false);
            if (res.success) {
                currentSn = res.sn;
                $('#sn').val(res.sn);
                $('#display_leaseno').html('Lease No. : <strong>' + res.leaseno + '</strong>');
                $('#display_status').html('Status : <strong>' + (res.leasestatus || 'DRAFT') + '</strong>');
                // Enable Delete button after save
                $('#deletebtn').prop('disabled', false);
                // Refresh shop panel so saved shop turns Green
                var currentTenant = $('#tenantid').val();
                if (currentTenant) { loadTenantShops(currentTenant); }
                Swal.fire({ icon: 'success', title: 'Saved!', text: res.message, timer: 1800, showConfirmButton: false })
                    .then(() => {
                        // Refresh the page so the saved form loads fresh in edit mode (prevents repeat saves)
                        let loadUrl = '{{ url("leaseagreemententry") }}?sn=' + res.sn;
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

function goToCommercial() {
    const sn = $('#sn').val();
    const url = '{{ url("leasecommercialterms") }}' + (sn ? '?sn=' + sn : '');
    window.location.href = url;
}

function resetForm() {
    currentSn = null;
    escUserTouched = false;
    camUserTouched = false;
    escLoadedFromDB = false;
    camLoadedFromDB = false;
    $('#sn').val('');
    $('#tenantid').val('');
    $('#contactperson').val('');
    $('#mobile').val('');
    $('#email').val('');
    $('#tenantInfo').addClass('d-none');
    $('#tenantShopPanel').addClass('d-none');
    $('#unitid').val('');
    $('#shopcode').val('');
    $('#shopname').val('');
    $('#unittype').val('');
    $('#chargeablearea').val('');
    $('#carpetarea').val('');
    $('#renttype').val('FIXED_SQFT');
    $('#rentbasis').val('PER_SQFT');
    $('#rentrate').val('');
    $('#minimumrent').val('');
    $('#currentrent').val('0.00');
    $('#camrate').val('');
    $('#mincam').val('');
    $('#currentcam').val('0.00');
    $('#agreement_date').val('{{ date("Y-m-d") }}');
    $('#leasecommencementdate').val('');
    $('#leaseexpirydate').val('');
    $('#billingstartfrom').val('');
    $('#duedateofmonth').val('10');
    $('#loino').val('');
    $('#loidate').val('');
    $('#remarks').val('');
    $('#agreementno').val(NEXTAGREEMENTNO);
    syncNewLeaseUrl();
    $('#display_leaseno').html('Lease No. : <strong>---</strong>');
    $('#display_status').html('Status : <strong>DRAFT</strong>');
    $('#deletebtn').prop('disabled', true);
    $('#escalationBody').html(`<tr id="escalation_no_data"><td colspan="8" class="text-center text-muted py-3"><i class="fa fa-info-circle"></i> No escalation rows added. Click "+ Add Row" to begin.</td></tr>`);
    $('#camBody').html(`<tr id="cam_no_data"><td colspan="8" class="text-center text-muted py-3"><i class="fa fa-info-circle"></i> No CAM rows added. Click "+ Add Row" to begin.</td></tr>`);
    camCount = 0;
    $('#chargesBody').html(chargesEmptyHtml());
    plCharges = [];
    chargesCount = 0;
}

// ── Current Monthly CAM Auto-Calculate ──────────────────────────────────────

// Min. Monthly CAM bhara → wo hi Current Monthly CAM; warna camrate × area
function calculateCurrentCam() {
    const camrate         = parseFloat($('#camrate').val()) || 0;
    const chargeablearea  = parseFloat($('#chargeablearea').val()) || 0;
    const mincam          = parseFloat($('#mincam').val()) || 0;

    if (mincam > 0) {
        $('#currentcam').val(mincam.toFixed(2));
    } else {
        $('#currentcam').val((camrate * chargeablearea).toFixed(2));
    }
}

// CAM Rate / Area / Min. CAM change → Current Monthly CAM update
$(document).on('change input', '#camrate, #chargeablearea, #mincam', function () {
    calculateCurrentCam();
});

// ── Current Monthly Rent Auto-Calculate ─────────────────────────────────────

// Min. Monthly Rent bhara → wo hi Current Monthly Rent; warna renttype ke hisaab se
function calculateCurrentRent() {
    const renttype       = $('#renttype').val();
    const rentrate       = parseFloat($('#rentrate').val()) || 0;
    const chargeablearea = parseFloat($('#chargeablearea').val()) || 0;
    const minimumrent    = parseFloat($('#minimumrent').val()) || 0;

    let currentrent = 0;

    if (minimumrent > 0) {
        // Min. monthly rent = flat rent (customer "sqft se nahi, ₹2,00,000/month dunga")
        currentrent = minimumrent;
    } else if (renttype === 'FIXED_SQFT' || renttype === 'BASE_PERCENTAGE') {
        // Rate per sq.ft. × chargeable area
        currentrent = rentrate * chargeablearea;
    } else if (renttype === 'FIXED_AMOUNT') {
        // Rate IS the monthly rent directly
        currentrent = rentrate;
    }

    $('#currentrent').val(currentrent.toFixed(2));
}

// Trigger on any relevant field change
$(document).on('change input', '#renttype, #rentrate, #chargeablearea, #minimumrent', function () {
    calculateCurrentRent();
});

// Rent Basis auto-sync with Rent Type (Per Sq.Ft. / Flat Amount)
function syncRentBasis() {
    const rt = $('#renttype').val();
    $('#rentbasis').val(rt === 'FIXED_AMOUNT' ? 'FLAT' : 'PER_SQFT');
}
$('#renttype').on('change', syncRentBasis);

// Also calculate on page load (for edit mode where values are pre-filled)
$(document).ready(function () {
    switchEscType('rent');

    calculateCurrentRent();
    calculateCurrentCam();

    // Charges Summary: edit mode → saved rows (tablemall_lease_charges); naya lease → tenant+shop select
    // hone par mall_partylocation se auto-fetch (loadPartyLocCharges)
    if (EDITCHARGES.length) {
        EDITCHARGES.forEach(function (c) { addChargesRow(c); });
    } else if (!IS_EDIT) {
        $('#chargesBody').html(chargesEmptyHtml());
    }

    // Escalation: edit mode → saved rows (mall_lease_escalation); agar saved rows na hon ya unme rate 0 ho to Rent Overview ke rate se auto-fill
    var hasValidRentEsc = EDITESCALATIONS.length > 0 && EDITESCALATIONS.some(function (e) {
        return (parseFloat(e.newrate) || 0) > 0 || (parseFloat(e.newmonthlyrent) || 0) > 0;
    });

    if (hasValidRentEsc) {
        escUserTouched = true;
        escLoadedFromDB = true;  // AJAX side-effect se recalc rok do
        EDITESCALATIONS.forEach(function (e) {
            addEscalationRow(e.effectivefrom, e.aftermonths, e.increasetype, e.increasevalue, e.newrate, e.newmonthlyrent);
        });
    } else {
        autoFillEscalations();
    }

    // CAM Schedule: edit mode → saved CAM rows; agar saved rows na hon ya rate 0 ho to auto-fill
    var hasValidCamEsc = CAMESCALATIONS.length > 0 && CAMESCALATIONS.some(function (e) {
        return (parseFloat(e.newrate) || 0) > 0 || (parseFloat(e.newamount) || 0) > 0;
    });

    if (hasValidCamEsc) {
        camUserTouched = true;
        camLoadedFromDB = true;  // AJAX side-effect se recalc rok do
        CAMESCALATIONS.forEach(function (e) {
            addCamRow(e.effectivefrom, e.aftermonths, e.increasetype, e.increasevalue, e.newrate, e.newamount, true);
        });
    } else {
        autoFillCamRows();
    }

    // P5: Billing Start From — khaali ho to Lease Start se prefill
    if (!$('#billingstartfrom').val() && $('#leasecommencementdate').val()) {
        $('#billingstartfrom').val($('#leasecommencementdate').val());
    }
});
</script>

@endsection
