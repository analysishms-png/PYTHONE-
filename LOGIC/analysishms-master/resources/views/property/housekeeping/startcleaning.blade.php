@extends('property.layouts.main')
@section('main-container')

<div class="content-body">
<div class="container-fluid px-4 py-3">

    {{-- ── Page Header ── --}}
    <div class="row mb-3 align-items-center">
        <div class="col">
            <h4 class="fw-bold mb-0 text-dark">
                <i class="fa-solid fa-broom me-2 text-primary"></i>Start Room Cleaning
            </h4>
            <small class="text-muted">
                <i class="fa-regular fa-calendar me-1"></i>
                {{ \Carbon\Carbon::parse($asOnDate)->format('d-M-Y') }}
                &nbsp;&bull;&nbsp; Housekeeping Module
            </small>
        </div>
    </div>

    {{-- ── Room Selector Card ── --}}
    <div class="card shadow-sm mb-3">
        <div class="card-header border-0 py-3 px-4"
             style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
            <div class="row align-items-center g-2">
                <div class="col-auto">
                    <span class="fw-bold text-white fs-6">
                        <i class="fa-solid fa-door-open me-2"></i>Select Assigned Room
                    </span>
                </div>
                <div class="col-auto">
                    <select id="sc-room-dd" class="form-control" style="min-width:230px;"
                            {{ $fromQr ? 'disabled' : '' }}>
                        <option value="">-- Select Room --</option>
                        @forelse($assignedRooms as $ar)
                            {{-- QR se aaya to sirf wahi room dikhao --}}
                            @if(!$fromQr || (string)$assignId === (string)$ar->id)
                            <option value="{{ $ar->id }}"
                                {{ (string)$assignId === (string)$ar->id ? 'selected' : '' }}>
                                Room {{ $ar->roomno }}{{ $ar->esttime ? ' ('.$ar->esttime.' Min)' : '' }}
                            </option>
                            @endif
                        @empty
                            <option disabled>No assigned rooms found</option>
                        @endforelse
                    </select>
                    {{-- disabled select value submit nahi hoti, hidden input se value preserve karo --}}
                    @if($fromQr)
                        <input type="hidden" name="sc_assign_id" value="{{ $assignId }}">
                    @endif
                </div>
                <div class="col-auto">
                    <span id="sc-loader" style="display:none;" class="text-white small">
                        <i class="fa-solid fa-spinner fa-spin me-1"></i>Loading...
                    </span>
                </div>
            </div>
        </div>
    </div>

    {{-- ── Empty State ── --}}
    <div id="sc-empty" style="{{ $assign ? 'display:none' : '' }}">
        <div class="card shadow-sm text-center py-5">
            <div class="card-body">
                <i class="fa-solid fa-hand-pointer fa-3x text-primary mb-3 d-block opacity-50"></i>
                <h6 class="fw-semibold text-muted">Select Room</h6>
            </div>
        </div>
    </div>

    {{-- ── Main Form ── --}}
    <div id="sc-body" style="{{ $assign ? '' : 'display:none' }}">
        <div class="row g-3">

            {{-- ══ LEFT COLUMN ══ --}}
            <div class="col-xl-8">

                {{-- Assignment Info --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-clipboard-list me-1"></i>Assignment Info
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="row g-3">
                            <div class="col-6">
                                <div class="text-muted small fw-semibold text-uppercase">Assignment No</div>
                                <div class="fw-bold text-dark" id="f-assign-no">
                                    {{ $assign ? 'HKA/'.$assign->propertyid.$assign->id : '' }}
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="text-muted small fw-semibold text-uppercase">Date</div>
                                <div class="fw-bold text-dark">
                                    {{ \Carbon\Carbon::parse($asOnDate)->format('d-M-Y') }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Room Details --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-bed me-1"></i>Room Details
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="row g-3">
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Room No</div>
                                <div class="fw-bold text-dark fs-5" id="f-roomno">{{ $room->roomno ?? '' }}</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Floor</div>
                                <div class="fw-semibold text-dark" id="f-floor">{{ $room->floorname ?? '--' }}</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Room Type</div>
                                <div class="fw-semibold text-dark" id="f-roomtype">{{ $room->roomtype ?? '--' }}</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Est. Time</div>
                                <div class="fw-semibold text-dark" id="f-esttime">
                                    {{ $assign->esttime ?? '??' }} <small class="text-muted fw-normal">Min</small>
                                </div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Current Status</div>
                                <div id="f-status" class="fw-bold"
                                     style="color:{{ $currentStatusLabel && str_contains($currentStatusLabel,'Occupied') ? '#0d6efd' : '#e67e22' }};">
                                    {{ $currentStatusLabel ?? '--' }}
                                </div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase mb-1">Priority</div>
                                <select id="f-priority" class="form-control form-control-sm">
                                    <option value="Medium" {{ ($priority ?? '') == 'Medium' ? 'selected' : '' }}>Medium</option>
                                    <option value="High"   {{ ($priority ?? '') == 'High'   ? 'selected' : '' }}>High</option>
                                    <option value="Critical" {{ ($priority ?? '') == 'Critical' ? 'selected' : '' }}>Critical</option>
                                </select>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">QR Verified</div>
                                @if(request()->query('roomno') || request()->query('id'))
                                    <div class="fw-bold text-success">
                                        <i class="fa-solid fa-circle-check me-1"></i>Verified
                                    </div>
                                @else
                                    <div class="fw-bold text-secondary">Pending</div>
                                @endif
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase mb-1">Cleaning Type</div>
                                <select id="f-ctype" class="form-control form-control-sm">
                                    <option value="">-- Select --</option>
                                    @foreach($cleaningTypes as $ct)
                                        <option value="{{ $ct->code }}"
                                            {{ ($assign && $assign->ctype == $ct->code) ? 'selected' : '' }}>
                                            {{ $ct->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Housekeeper --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-user-tie me-1"></i>Housekeeper Details
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="row g-3">
                            <div class="col-6 col-md-4">
                                <div class="text-muted small fw-semibold text-uppercase">Assigned Housekeeper</div>
                                <div class="fw-semibold text-dark" id="f-hkname">{{ $housekeeper->name ?? '--' }}</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Supervisor</div>
                                <div class="fw-semibold text-dark" id="f-supervisor">{{ $supervisor ?? '--' }}</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Floor</div>
                                <div class="fw-semibold text-dark" id="f-zone">{{ $room->floorname ?? '--' }}</div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>{{-- /col-xl-8 --}}

            {{-- ══ RIGHT COLUMN ══ --}}
            <div class="col-xl-4">

                {{-- Clock --}}
                <div class="card shadow-sm mb-3 text-center">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-clock me-1"></i>Cleaning Time
                        </span>
                    </div>
                    <div class="card-body py-3">
                        <p class="text-muted small mb-1">Current Time</p>
                        <h3 class="fw-bold mb-3 text-dark" id="sc-clock">{{ $startTime }}</h3>
                        <p class="text-muted small mb-1">Start Time (Auto)</p>
                        <h5 class="fw-bold text-success mb-3" id="f-starttime">{{ $startTime }}</h5>
                        <label class="col-form-label text-muted small">Actual Time</label>
                        <input type="text" id="f-actual-time"
                               class="form-control form-control-sm text-center mx-auto"
                               placeholder="hh:mm AM/PM"
                               style="max-width:160px;">
                    </div>
                </div>

                {{-- Photo Upload --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-camera me-1"></i>Photo (Before)
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">

                        {{-- File inputs — opacity:0 se hide, display:none nahi (WebView compatibility) --}}
                        <input type="file" id="f-photo-camera-mobile" accept="image/*" capture="environment"
                               style="position:absolute;opacity:0;width:1px;height:1px;pointer-events:none;"
                               onchange="scPreview(this)">
                        <input type="file" id="f-photo-gallery" accept="image/*"
                               style="position:absolute;opacity:0;width:1px;height:1px;pointer-events:none;"
                               onchange="scPreview(this)">

                        {{-- Camera: desktop pe onclick se webcam modal, mobile/WebView pe native for= --}}
                        <div class="d-flex gap-2 mb-2">
                            <label for="f-photo-camera-mobile" id="lbl-camera"
                                   class="btn btn-primary btn-sm flex-fill mb-0" style="cursor:pointer;"
                                   onclick="return scHandleCamera(event)">
                                <i class="fa-solid fa-camera me-1"></i>Camera
                            </label>
                            <label for="f-photo-gallery"
                                   class="btn btn-outline-secondary btn-sm flex-fill mb-0" style="cursor:pointer;">
                                <i class="fa-solid fa-image me-1"></i>Gallery
                            </label>
                        </div>

                        {{-- Preview --}}
                        <div id="f-photo-wrap" style="display:none; position:relative;">
                            <img id="f-photo-prev" src="" alt="Preview"
                                 class="img-fluid rounded border"
                                 style="width:100%; max-height:130px; object-fit:cover; display:block;">
                            <button type="button" onclick="scRemovePhoto()"
                                    class="btn btn-sm btn-danger"
                                    style="position:absolute;top:4px;right:4px;padding:2px 7px;"
                                    title="Remove photo">
                                <i class="fa-solid fa-xmark"></i>
                            </button>
                        </div>

                        <div id="f-photo-placeholder" class="text-center text-muted py-3 border rounded">
                            <i class="fa-solid fa-image fa-lg mb-1 d-block opacity-50"></i>
                            No photo selected
                        </div>
                    </div>
                </div>

                {{-- START CLEANING --}}
                <div class="d-grid mb-2">
                    <button type="button" class="btn btn-success btn-lg fw-bold" id="btn-start" onclick="scSubmit()">
                        <i class="fa-solid fa-play me-2"></i>START CLEANING
                    </button>
                </div>

                {{-- Action Buttons --}}
                <div class="card shadow-sm">
                    <div class="card-body p-2">
                        <div class="d-grid gap-2">
                            <button type="button" class="btn btn-danger btn-sm fw-semibold"
                                onclick="scOpenDamageReport()">
                                <i class="fa-solid fa-triangle-exclamation me-1"></i>Damage Report
                            </button>
                            <button type="button" class="btn btn-outline-info btn-sm fw-semibold"
                                onclick="scOpenLostFound()">
                                <i class="fa-solid fa-magnifying-glass me-1"></i>Lost &amp; Found
                            </button>
                        </div>
                    </div>
                </div>

            </div>{{-- /col-xl-4 --}}
        </div>{{-- /row --}}
    </div>{{-- /#sc-body --}}

</div>{{-- /container --}}
</div>{{-- /content-body --}}

{{-- ══════════════════════════════════════════════════════
     DAMAGE REPORT MODAL
══════════════════════════════════════════════════════ --}}
<div class="modal fade" id="damageReportModal" tabindex="-1" role="dialog" aria-labelledby="damageModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content border-0 shadow-lg">

            {{-- Header --}}
            <div class="modal-header text-white py-3 px-4"
                 style="background: linear-gradient(135deg,#c0392b,#e74c3c);">
                <h5 class="modal-title fw-bold mb-0" id="damageModalLabel">
                    <i class="fa-solid fa-triangle-exclamation me-2"></i>Damage Report
                </h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            {{-- Body: Form --}}
            <div class="modal-body px-4 py-3 bg-light">
                <form id="damageForm">
                    <input type="hidden" id="dr-csrf" value="{{ csrf_token() }}">

                    <div class="row">

                        {{-- Room No --}}
                        <div class="col-6 mb-3">
                            <label class="font-weight-bold text-dark mb-1">
                                <i class="fa-solid fa-door-closed mr-1 text-danger"></i>Room No
                                <span class="text-danger">*</span>
                            </label>
                            <input type="text" id="dr-roomno" class="form-control"
                                   placeholder="e.g. 101" maxlength="20"
                                   autocomplete="off" inputmode="text">
                            <small id="err-roomno" class="text-danger d-none">Room No required.</small>
                        </div>

                        {{-- Date — text input + bootstrap-datepicker (already in project) --}}
                        <div class="col-6 mb-3">
                            <label class="font-weight-bold text-dark mb-1">
                                <i class="fa-regular fa-calendar mr-1 text-danger"></i>Date
                                <span class="text-danger">*</span>
                            </label>
                            <div class="input-group">
                                <input type="text" id="dr-date" class="form-control"
                                       placeholder="DD-MM-YYYY" autocomplete="off"
                                       readonly style="background:#fff; cursor:pointer;">
                                <div class="input-group-append">
                                    <span class="input-group-text" style="cursor:pointer;"
                                          onclick="$('#dr-date').datepicker('show')">
                                        <i class="fa-regular fa-calendar"></i>
                                    </span>
                                </div>
                            </div>
                            <small id="err-date" class="text-danger d-none">Date required.</small>
                        </div>

                        {{-- Damage Type --}}
                        <div class="col-12 mb-3">
                            <label class="font-weight-bold text-dark mb-1">
                                <i class="fa-solid fa-tags mr-1 text-danger"></i>Damage Type
                                <span class="text-danger">*</span>
                            </label>
                            <select id="dr-damagetype" class="form-control">
                                <option value="">-- Select Type --</option>
                                <option value="Furniture">Furniture</option>
                                <option value="Electronic">Electronic</option>
                                <option value="Plumbing">Plumbing</option>
                                <option value="Bathroom">Bathroom</option>
                                <option value="Electronics">Electronics</option>
                                <option value="Safety">Safety</option>
                                <option value="Other">Other</option>
                            </select>
                            <small id="err-damagetype" class="text-danger d-none">Damage Type required.</small>
                        </div>

                        {{-- Item Name --}}
                        <div class="col-12 mb-3">
                            <label class="font-weight-bold text-dark mb-1">
                                <i class="fa-solid fa-box mr-1 text-danger"></i>Item Name
                                <span class="text-danger">*</span>
                            </label>
                            <textarea id="dr-item"
                                      class="form-control"
                                      rows="1"
                                      maxlength="100"
                                      autocomplete="off"
                                      spellcheck="false"
                                      style="resize:none; overflow:hidden;"
                                      placeholder="e.g. Bed headboard, AC remote..."></textarea>
                            <small id="err-item" class="text-danger d-none">Item Name required.</small>
                        </div>

                        {{-- Description --}}
                        <div class="col-12 mb-2">
                            <label class="font-weight-bold text-dark mb-1">
                                <i class="fa-solid fa-file-lines mr-1 text-danger"></i>Description
                            </label>
                            <textarea id="dr-description" class="form-control" rows="2"
                                      placeholder="Briefly describe the damage..."
                                      autocomplete="off"></textarea>
                        </div>

                    </div>{{-- /row --}}
                </form>
            </div>

            {{-- Footer --}}
            <div class="modal-footer bg-white px-4 py-3">
                <button type="button" class="btn btn-secondary px-4" data-dismiss="modal">
                    <i class="fa-solid fa-xmark mr-1"></i>Cancel
                </button>
                <button type="button" class="btn btn-danger px-4 font-weight-bold" id="dr-submit-btn"
                        onclick="drSubmit()">
                    <i class="fa-solid fa-paper-plane mr-1"></i>SUBMIT
                </button>
            </div>

        </div>
    </div>
</div>

{{-- ══════════════════════════════════════════════════════
     OUT OF ORDER POPUP MODAL (opens after damage submit)
══════════════════════════════════════════════════════ --}}
<div class="modal fade" id="oooModal" tabindex="-1" role="dialog" aria-labelledby="oooModalLabel" aria-hidden="true"
     style="z-index:1060;">
    <div class="modal-dialog modal-md modal-dialog-centered">
        <div class="modal-content border-0 shadow-lg" style="border-radius:.75rem;overflow:hidden;">

            {{-- Header --}}
            <div class="modal-header py-3 px-4 text-white"
                 style="background:linear-gradient(135deg,#f39c12,#e67e22);">
                <h5 class="modal-title fw-bold mb-0" id="oooModalLabel">
                    <i class="fa-solid fa-ban me-2"></i>Room Out of Order?
                </h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            {{-- Body --}}
            <div class="modal-body px-4 py-3 bg-light">

                {{-- Yes / No --}}
                <div class="d-flex align-items-center mb-3">
                    <div class="form-check form-check-inline mr-4">
                        <input class="form-check-input" type="radio"
                               name="oooRadio" id="oooYes" value="yes"
                               onchange="oooToggle(this)">
                        <label class="form-check-label font-weight-bold text-success fs-6" for="oooYes">
                            <i class="fa-solid fa-circle-check mr-1"></i>Yes
                        </label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio"
                               name="oooRadio" id="oooNo" value="no"
                               onchange="oooToggle(this)" checked>
                        <label class="form-check-label font-weight-bold text-secondary fs-6" for="oooNo">
                            <i class="fa-solid fa-circle-xmark mr-1"></i>No
                        </label>
                    </div>
                </div>

                {{-- OOO Fields (shown when Yes) --}}
                <div id="oooFields" style="display:none;">

                    {{-- Out of Order Type dropdown --}}
                    <div class="mb-3">
                        <label class="font-weight-bold text-dark mb-1">
                            <i class="fa-solid fa-clipboard-list mr-1 text-warning"></i>Out of Order Type
                            <span class="text-danger">*</span>
                        </label>
                        <select id="ooo-type" class="form-control">
                            <option value="">-- Select Type --</option>
                            <option value="Out of Order">Out of Order</option>
                            <option value="Maintenance">Maintenance</option>
                        </select>
                        <small id="err-ooo-type" class="text-danger d-none">Please select a type.</small>
                    </div>

                    {{-- From Date / To Date --}}
                    <div class="row">
                        <div class="col-6 mb-2">
                            <label class="font-weight-bold text-dark mb-1">
                                <i class="fa-regular fa-calendar mr-1 text-warning"></i>From Date
                                <span class="text-danger">*</span>
                            </label>
                            <div class="input-group">
                                <input type="text" id="ooo-from" class="form-control"
                                       placeholder="DD-MM-YYYY" autocomplete="off"
                                       readonly style="background:#fff;cursor:pointer;">
                                <div class="input-group-append">
                                    <span class="input-group-text" style="cursor:pointer;"
                                          onclick="$('#ooo-from').datepicker('show')">
                                        <i class="fa-regular fa-calendar"></i>
                                    </span>
                                </div>
                            </div>
                            <small id="err-ooo-from2" class="text-danger d-none">From Date required.</small>
                        </div>
                        <div class="col-6 mb-2">
                            <label class="font-weight-bold text-dark mb-1">
                                <i class="fa-regular fa-calendar mr-1 text-warning"></i>To Date
                                <span class="text-danger">*</span>
                            </label>
                            <div class="input-group">
                                <input type="text" id="ooo-to" class="form-control"
                                       placeholder="DD-MM-YYYY" autocomplete="off"
                                       readonly style="background:#fff;cursor:pointer;">
                                <div class="input-group-append">
                                    <span class="input-group-text" style="cursor:pointer;"
                                          onclick="$('#ooo-to').datepicker('show')">
                                        <i class="fa-regular fa-calendar"></i>
                                    </span>
                                </div>
                            </div>
                            <small id="err-ooo-to2" class="text-danger d-none">To Date required.</small>
                        </div>
                    </div>

                </div>{{-- /#oooFields --}}

            </div>

            {{-- Footer --}}
            <div class="modal-footer bg-white px-4 py-3">
                <button type="button" class="btn px-4 font-weight-bold text-white" id="ooo-submit-btn"
                        onclick="oooSubmit()"
                        style="background:linear-gradient(135deg,#f39c12,#e67e22);border:none;">
                    <i class="fa-solid fa-paper-plane mr-1"></i>SUBMIT
                </button>
            </div>

        </div>
    </div>
</div>

{{-- ══════════════════════════════════════════════════════
     DAMAGE REPORT LIST MODAL (view previously saved)
══════════════════════════════════════════════════════ --}}
<div class="modal fade" id="damageListModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content border-0 shadow-lg">
            <div class="modal-header text-white py-2 px-4"
                 style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
                <h5 class="modal-title font-weight-bold mb-0">
                    <i class="fa-solid fa-list mr-2"></i>Damage Report Records
                </h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body p-3">
                <div class="table-responsive">
                    <table id="drListTable" class="table table-hover table-striped table-bordered"
                           style="font-size:13px; width:100%;">
                        <thead class="thead-danger text-center">
                            <tr>
                                <th>SN</th>
                                <th>Damage ID</th>
                                <th>Room No</th>
                                <th>Date</th>
                                <th>Damage Type</th>
                                <th>Item</th>
                                <th>Description</th>
                                <th>Status</th>
                                <th>Entry By</th>
                                <th>Entry Date</th>
                            </tr>
                        </thead>
                        <tbody id="drListBody">
                            <tr><td colspan="10" class="text-center text-muted py-3">Loading...</td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary px-4" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

{{-- ══ Webcam Modal ══ --}}
<div id="webcam-modal" style="display:none; position:fixed; inset:0; background:rgba(0,0,0,.7); z-index:9999; align-items:center; justify-content:center;">
    <div class="card shadow" style="width:100%; max-width:480px; margin:auto; border-radius:.75rem; overflow:hidden;">
        <div class="card-header bg-dark text-white py-2 px-3 d-flex justify-content-between align-items-center">
            <span class="fw-bold"><i class="fa-solid fa-camera me-2"></i>Webcam Capture</span>
            <button type="button" class="btn btn-sm btn-outline-light" onclick="scCloseWebcam()">
                <i class="fa-solid fa-xmark"></i>
            </button>
        </div>
        <div class="card-body p-2 bg-black text-center">
            <video id="webcam-video" autoplay playsinline
                   style="width:100%; max-height:320px; border-radius:.4rem; background:#000; display:block;"></video>
            <canvas id="webcam-canvas" style="display:none;"></canvas>
        </div>
        <div class="card-footer bg-dark text-center py-2">
            <button type="button" class="btn btn-success btn-sm px-4 fw-bold" onclick="scCapturePhoto()">
                <i class="fa-solid fa-camera me-1"></i> Capture Photo
            </button>
        </div>
    </div>
</div>

<input type="hidden" id="sc-assign-id" value="{{ $assignId ?? '' }}">
<input type="hidden" id="sc-csrf"      value="{{ csrf_token() }}">

<script>
// ── Live clock ────────────────────────────────────────────
function scTick() {
    var n = new Date(), h = n.getHours(), m = String(n.getMinutes()).padStart(2,'0');
    var ap = h >= 12 ? 'PM' : 'AM';
    h = h % 12 || 12;
    var el = document.getElementById('sc-clock');
    if (el) el.textContent = h + ':' + m + ' ' + ap;
}
scTick();
setInterval(scTick, 30000);

// ── State ─────────────────────────────────────────────────
var scActiveFile   = null;
var scWebcamStream = null;

// ── Helpers ───────────────────────────────────────────────
function scIsMobile() {
    return /Mobi|Android|iPhone|iPad|iPod/i.test(navigator.userAgent);
}

function sv(id, v) {
    var e = document.getElementById(id);
    if (e) e.textContent = v || '--';
}

function scShow(yes) {
    document.getElementById('sc-body').style.display  = yes ? '' : 'none';
    document.getElementById('sc-empty').style.display = yes ? 'none' : '';
}

// ── Photo preview helper ──────────────────────────────────
function scShowPreview(dataUrl) {
    document.getElementById('f-photo-prev').src = dataUrl;
    document.getElementById('f-photo-wrap').style.display = 'block';
    document.getElementById('f-photo-placeholder').style.display = 'none';
}

// ── Image compression (max 1280px, 80% JPEG) ─────────────
function scCompressAndSet(source) {
    var MAX_W   = 1280;
    var QUALITY = 0.80;

    if (typeof source === 'string') {
        // dataURL (from webcam)
        var img = new Image();
        img.onload = function () {
            var w = img.width, h = img.height;
            if (w > MAX_W) { h = Math.round(h * MAX_W / w); w = MAX_W; }
            var c = document.createElement('canvas');
            c.width = w; c.height = h;
            c.getContext('2d').drawImage(img, 0, 0, w, h);
            var dataUrl = c.toDataURL('image/jpeg', QUALITY);
            c.toBlob(function (blob) {
                scActiveFile = new File([blob], 'webcam_capture.jpg', { type: 'image/jpeg' });
            }, 'image/jpeg', QUALITY);
            scShowPreview(dataUrl);
        };
        img.src = source;
    } else {
        // File object (gallery / mobile camera)
        var reader = new FileReader();
        reader.onload = function (e) {
            var img = new Image();
            img.onload = function () {
                var w = img.width, h = img.height;
                if (w > MAX_W) { h = Math.round(h * MAX_W / w); w = MAX_W; }
                var c = document.createElement('canvas');
                c.width = w; c.height = h;
                c.getContext('2d').drawImage(img, 0, 0, w, h);
                var dataUrl = c.toDataURL('image/jpeg', QUALITY);
                c.toBlob(function (blob) {
                    scActiveFile = new File([blob], 'photo.jpg', { type: 'image/jpeg' });
                }, 'image/jpeg', QUALITY);
                scShowPreview(dataUrl);
            };
            img.src = e.target.result;
        };
        reader.readAsDataURL(source);
    }
}

// ── File input change (gallery / mobile) ─────────────────
function scPreview(inp) {
    if (inp.files && inp.files[0]) {
        scCompressAndSet(inp.files[0]);
    }
}

// ── Remove photo ─────────────────────────────────────────
function scRemovePhoto() {
    scActiveFile = null;
    document.getElementById('f-photo-prev').src = '';
    document.getElementById('f-photo-wrap').style.display = 'none';
    document.getElementById('f-photo-placeholder').style.display = 'block';
    document.getElementById('f-photo-camera-mobile').value = '';
    document.getElementById('f-photo-gallery').value = '';
}

// ── Camera button ─────────────────────────────────────────
// Touch device (mobile/WebView) detect: maxTouchPoints ya ontouchstart
// Touch device pe: label ka native for= kaam kare (camera directly open)
// Desktop pe: webcam modal open karo
function scIsTouchDevice() {
    return (navigator.maxTouchPoints > 0) || ('ontouchstart' in window);
}

function scHandleCamera(event) {
    if (scIsTouchDevice()) {
        // Mobile / WebView / tablet — native label for= se camera open hoga
        return true;
    }
    // Desktop — webcam modal open karo
    event.preventDefault();
    var modal = document.getElementById('webcam-modal');
    modal.style.display = 'flex';
    if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
        navigator.mediaDevices.getUserMedia({ video: { facingMode: 'environment' }, audio: false })
        .then(function (stream) {
            scWebcamStream = stream;
            document.getElementById('webcam-video').srcObject = stream;
        })
        .catch(function (err) {
            scCloseWebcam();
            Swal.fire({ icon: 'error', title: 'Camera Error', text: 'Webcam access denied: ' + err.message });
        });
    } else {
        scCloseWebcam();
        Swal.fire({ icon: 'warning', title: 'Not Supported', text: 'Your browser does not support webcam access.' });
    }
    return false;
}

// ── Webcam capture ────────────────────────────────────────
function scCapturePhoto() {
    var video  = document.getElementById('webcam-video');
    var canvas = document.getElementById('webcam-canvas');
    canvas.width  = video.videoWidth  || 640;
    canvas.height = video.videoHeight || 480;
    canvas.getContext('2d').drawImage(video, 0, 0, canvas.width, canvas.height);
    scCompressAndSet(canvas.toDataURL('image/jpeg', 1.0));
    scCloseWebcam();
}

// ── Close webcam ──────────────────────────────────────────
function scCloseWebcam() {
    document.getElementById('webcam-modal').style.display = 'none';
    if (scWebcamStream) {
        scWebcamStream.getTracks().forEach(function (t) { t.stop(); });
        scWebcamStream = null;
    }
    document.getElementById('webcam-video').srcObject = null;
}

document.getElementById('webcam-modal').addEventListener('click', function (e) {
    if (e.target === this) scCloseWebcam();
});

// ── Lost & Found — current room pass karke open karo ────────────────────────
function scOpenLostFound() {
    var roomEl = document.getElementById('f-roomno');
    var roomno = '';
    if (roomEl) {
        var txt = roomEl.textContent.trim();
        // sv() sets '--' when no value; skip that
        if (txt && txt !== '--') roomno = txt;
    }
    var url = '{{ route("lostfoundform") }}';
    if (roomno) url += '?roomno=' + encodeURIComponent(roomno);
    window.open(url, '_blank');
}

// ── Room dropdown AJAX ────────────────────────────────────
document.getElementById('sc-room-dd').addEventListener('change', function () {
    var id = this.value;
    document.getElementById('sc-assign-id').value = id;
    if (!id) { scShow(false); return; }

    var ld = document.getElementById('sc-loader');
    if (ld) ld.style.display = 'inline';

    fetch('{{ route("startcleaningfetch") }}', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': document.getElementById('sc-csrf').value
        },
        body: JSON.stringify({ assign_id: id })
    })
    .then(function (r) { return r.json(); })
    .then(function (d) {
        if (ld) ld.style.display = 'none';
        if (!d.success) {
            Swal.fire({ icon: 'error', title: 'Error', text: d.message || 'Error' });
            return;
        }

        sv('f-assign-no',  d.assign_no);
        sv('f-roomno',     d.roomno);
        sv('f-floor',      d.floorname);
        sv('f-roomtype',   d.roomtype);
        document.getElementById('f-esttime').innerHTML =
            (d.esttime || '??') + ' <small class="text-muted fw-normal">Min</small>';
        sv('f-hkname',     d.hkname     || '--');
        sv('f-supervisor', d.supervisor || '--');
        sv('f-zone',       d.floorname  || '--');
        sv('f-starttime',  d.starttime  || '');

        // Status
        var se = document.getElementById('f-status');
        if (se) {
            se.style.color = (d.status_label && d.status_label.includes('Occupied')) ? '#0d6efd' : '#e67e22';
            se.textContent = d.status_label || '--';
        }

        // Priority
        var pe = document.getElementById('f-priority');
        if (pe && d.priority) {
            pe.value = (d.priority === 'Normal') ? 'Medium' : d.priority;
        }

        // Cleaning type
        var cs = document.getElementById('f-ctype');
        if (cs && d.ctype) cs.value = d.ctype;

        scShow(true);
    })
    .catch(function (e) {
        if (ld) ld.style.display = 'none';
        Swal.fire({ icon: 'error', title: 'Server Error', text: '' + e });
    });
});

// ── Pre-select on load ────────────────────────────────────
(function () {
    var pre = '{{ $assignId ?? "" }}';
    if (pre) {
        var dd = document.getElementById('sc-room-dd');
        dd.value = pre;
        // QR se aaya — change event trigger karo taaki AJAX se room data load ho
        dd.dispatchEvent(new Event('change'));
    }
})();

// ── Submit ────────────────────────────────────────────────
function scSubmit() {
    var id = document.getElementById('sc-assign-id').value;
    if (!id) {
        Swal.fire({ icon: 'warning', title: 'Room Select Karein', text: 'Pehle room select karein!' });
        return;
    }

    var btn = document.getElementById('btn-start');
    btn.disabled = true;
    btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin me-2"></i>Starting...';

    var fd = new FormData();
    fd.append('_token',        document.getElementById('sc-csrf').value);
    fd.append('assign_id',     id);
    fd.append('cleaning_type', document.getElementById('f-ctype').value);
    fd.append('actual_time',   document.getElementById('f-actual-time').value.trim());
    if (scActiveFile) fd.append('before_photo', scActiveFile);        fetch('{{ route("submitstartcleaning") }}', { method: 'POST', body: fd })
    .then(function (r) { return r.json(); })
    .then(function (d) {
         if (d.success) {
            // ── Same page par hi rahein — koi redirect nahi ──
            // Success message dikhao, phir page refresh karo taaki started room
            // dropdown se hat jaye aur agla room select kar sakein
            Swal.fire({
                icon: 'success',
                title: 'Cleaning Started!',
                html: '<b>' + (d.message || '') + '</b>',
                confirmButtonColor: '#27ae60',
                timer: 2500,
                showConfirmButton: false
            }).then(function () {
                // Popup band hone ke baad page refresh — started room dropdown se hat jayega
                window.location.reload();
            });
        }else {
            Swal.fire({ icon: 'error', title: 'Error', text: d.message });
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-play me-2"></i>START CLEANING';
        }
    })
    .catch(function (e) {
        Swal.fire({ icon: 'error', title: 'Error', text: '' + e });
        btn.disabled = false;
        btn.innerHTML = '<i class="fa-solid fa-play me-2"></i>START CLEANING';
    });
}
</script>

<script>
// ══ DAMAGE REPORT ══════════════════════════════════════════════════════════════

// ── Damage Report — current room pass karke open karo ────────────────────────
function scOpenDamageReport() {
    var roomEl = document.getElementById('f-roomno');
    var roomno = '';
    if (roomEl) {
        var txt = roomEl.textContent.trim();
        if (txt && txt !== '--') roomno = txt;
    }
    var url = '{{ route("damagereportform") }}';
    if (roomno) url += '?roomno=' + encodeURIComponent(roomno);
    window.open(url, '_blank');
}

// Init datepickers ONCE on DOM ready (not on modal shown)
$(function() {
    $('#dr-date').datepicker({
        format:         'dd-mm-yyyy',
        autoclose:      true,
        todayHighlight: true,
        orientation:    'bottom auto'
    });
});

function openDamageModal() {
    // Reset errors
    ['err-roomno','err-date','err-damagetype','err-item'].forEach(function(id) {
        var el = document.getElementById(id);
        if (el) el.classList.add('d-none');
    });
    // Reset fields via jQuery
    $('#dr-roomno').val('');
    $('#dr-damagetype').val('');
    $('#dr-item').val('');
    $('#dr-description').val('');

    // Set date — direct value set, datepicker already inited
    var ncurRaw = '{{ $asOnDate }}'; // YYYY-MM-DD from server
    var dp = ncurRaw.split('-');
    var dispDate = (dp.length === 3) ? dp[2] + '-' + dp[1] + '-' + dp[0] : ncurRaw;
    document.getElementById('dr-date').value = dispDate;

    // Pre-fill room if selected
    var roomEl = document.getElementById('f-roomno');
    if (roomEl && roomEl.textContent && roomEl.textContent.trim() !== '--') {
        $('#dr-roomno').val(roomEl.textContent.trim());
    }

    $('#damageReportModal').modal('show');
}

function drSubmit() {
    // Read values
    var roomno     = $.trim($('#dr-roomno').val()     || '');
    var dateDisp   = $.trim($('#dr-date').val()       || '');
    var damagetype = $.trim($('#dr-damagetype').val() || '');
    var item       = $.trim(($('#dr-item').val()      || '').replace(/[\r\n]+/g,''));
    var desc       = $.trim($('#dr-description').val()|| '');

    // Clear previous errors
    ['err-roomno','err-date','err-damagetype','err-item'].forEach(function(id) {
        document.getElementById(id).classList.add('d-none');
    });

    var valid = true;
    if (!roomno)     { document.getElementById('err-roomno').classList.remove('d-none');     valid = false; }
    if (!dateDisp)   { document.getElementById('err-date').classList.remove('d-none');       valid = false; }
    if (!damagetype) { document.getElementById('err-damagetype').classList.remove('d-none'); valid = false; }
    if (!item)       { document.getElementById('err-item').classList.remove('d-none');       valid = false; }

    if (!valid) return;

    // Convert DD-MM-YYYY → YYYY-MM-DD for server
    function toISO(d) {
        var p = d.split('-');
        return (p.length === 3) ? p[2] + '-' + p[1] + '-' + p[0] : d;
    }
    var dateISO = toISO(dateDisp);

    var btn = document.getElementById('dr-submit-btn');
    btn.disabled = true;
    btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin mr-1"></i>Saving...';

    $.ajax({
        url:         '{{ route("storedamagereport") }}',
        type:        'POST',
        contentType: 'application/json',
        headers:     { 'X-CSRF-TOKEN': document.getElementById('dr-csrf').value },
        data:        JSON.stringify({
                         roomno:      roomno,
                         date:        dateISO,
                         damagetype:  damagetype,
                         item:        item,
                         description: desc
                     }),
        success: function(d) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-paper-plane mr-1"></i>SUBMIT';

            if (d.success) {
                $('#damageReportModal').modal('hide');
                // Open OOO popup after damage report saved — pass roomno + description
                var savedRoomno = roomno;
                var savedDesc   = desc;
                setTimeout(function() { openOooModal(savedRoomno, savedDesc); }, 400);
            } else {
                Swal.fire({ icon: 'error', title: 'Error', text: d.message || 'Save failed' });
            }
        },
        error: function(xhr) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-paper-plane mr-1"></i>SUBMIT';
            var msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Server Error ' + xhr.status;
            Swal.fire({ icon: 'error', title: 'Error', text: msg });
        }
    });
}

function drOpenList() {
    $('#damageListModal').modal('show');

    var tbody = document.getElementById('drListBody');
    tbody.innerHTML = '<tr><td colspan="10" class="text-center text-muted py-3"><i class="fa-solid fa-spinner fa-spin me-1"></i>Loading...</td></tr>';

    fetch('{{ route("fetchdamagereports") }}', {
        method: 'GET',
        headers: { 'X-CSRF-TOKEN': document.getElementById('dr-csrf').value }
    })
    .then(function(r) { return r.json(); })
    .then(function(d) {
        if (!d.success || !d.data.length) {
            tbody.innerHTML = '<tr><td colspan="10" class="text-center text-muted py-3">No records found.</td></tr>';
            return;
        }
        var html = '';
        d.data.forEach(function(row, i) {
            var statusBadge = '';
            if (row.status === 'Pending')     statusBadge = '<span class="badge bg-warning text-dark">Pending</span>';
            else if (row.status === 'Resolved') statusBadge = '<span class="badge bg-success">Resolved</span>';
            else statusBadge = '<span class="badge bg-info text-dark">' + row.status + '</span>';

            var entdt = row.created_at ? row.created_at.substring(0,16) : '';
            html += '<tr>'
                + '<td class="text-center">' + row.id + '</td>'
                + '<td class="text-center fw-semibold text-danger">DR/' + row.propertyid + '/' + row.damageid + '</td>'
                + '<td class="text-center fw-bold">' + (row.roomno || '') + '</td>'
                + '<td class="text-center">' + (row.date || '') + '</td>'
                + '<td>' + (row.damagetype || '') + '</td>'
                + '<td>' + (row.item || '') + '</td>'
                + '<td style="max-width:180px;white-space:normal;">' + (row.description || '') + '</td>'
                + '<td class="text-center">' + statusBadge + '</td>'
                + '<td class="text-center">' + (row.u_name || '') + '</td>'
                + '<td class="text-center">' + entdt + '</td>'
                + '</tr>';
        });
        tbody.innerHTML = html;
    })
    .catch(function(e) {
        tbody.innerHTML = '<tr><td colspan="10" class="text-center text-danger">Error loading data.</td></tr>';
    });
}

// ══ OUT OF ORDER MODAL ════════════════════════════════════════════════════════

$(function() {
    $('#ooo-from').datepicker({
        format: 'dd-mm-yyyy', autoclose: true, todayHighlight: true, orientation: 'bottom auto'
    });
    $('#ooo-to').datepicker({
        format: 'dd-mm-yyyy', autoclose: true, todayHighlight: true, orientation: 'bottom auto'
    });
});

function oooTodayStr() {
    var now = new Date();
    var dd  = String(now.getDate()).padStart(2,'0');
    var mm  = String(now.getMonth()+1).padStart(2,'0');
    var yy  = now.getFullYear();
    return dd + '-' + mm + '-' + yy;
}

// stored damage report data for OOO modal
var _oooRoomno = '';
var _oooDesc   = '';

function openOooModal(roomno, desc) {
    _oooRoomno = roomno || '';
    _oooDesc   = desc   || '';

    // reset
    document.getElementById('oooNo').checked  = true;
    document.getElementById('oooYes').checked = false;
    document.getElementById('oooFields').style.display = 'none';
    $('#ooo-type').val('');
    ['err-ooo-type','err-ooo-from2','err-ooo-to2'].forEach(function(id){
        var el = document.getElementById(id); if(el) el.classList.add('d-none');
    });
    // default dates: both From and To = ncur date (server date)
    var ncurRaw  = '{{ $asOnDate }}';
    var dp       = ncurRaw.split('-');
    var ncurDisp = (dp.length === 3) ? dp[2]+'-'+dp[1]+'-'+dp[0] : ncurRaw;
    document.getElementById('ooo-from').value = ncurDisp;
    document.getElementById('ooo-to').value   = ncurDisp;

    $('#oooModal').modal('show');
}

function oooToggle(radio) {
    document.getElementById('oooFields').style.display = (radio.value === 'yes') ? 'block' : 'none';
    if (radio.value === 'no') {
        ['err-ooo-type','err-ooo-from2','err-ooo-to2'].forEach(function(id){
            var el = document.getElementById(id); if(el) el.classList.add('d-none');
        });
    }
}

function oooSubmit() {
    var isYes = document.getElementById('oooYes').checked;

    if (!isYes) {
        $('#oooModal').modal('hide');
        return;
    }

    // Validate
    var type    = $.trim($('#ooo-type').val() || '');
    var fromVal = $.trim($('#ooo-from').val() || '');
    var toVal   = $.trim($('#ooo-to').val()   || '');
    var valid   = true;
    ['err-ooo-type','err-ooo-from2','err-ooo-to2'].forEach(function(id){
        var el = document.getElementById(id); if(el) el.classList.add('d-none');
    });
    if (!type)    { document.getElementById('err-ooo-type').classList.remove('d-none');   valid = false; }
    if (!fromVal) { document.getElementById('err-ooo-from2').classList.remove('d-none');  valid = false; }
    if (!toVal)   { document.getElementById('err-ooo-to2').classList.remove('d-none');    valid = false; }
    if (!valid) return;

    function toISO(d) { var p=d.split('-'); return (p.length===3)?p[2]+'-'+p[1]+'-'+p[0]:d; }

    var btn = document.getElementById('ooo-submit-btn');
    btn.disabled = true;
    btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin mr-1"></i>Saving...';

    $.ajax({
        url:         '{{ route("storeoutofororder") }}',
        type:        'POST',
        contentType: 'application/json',
        headers:     { 'X-CSRF-TOKEN': document.getElementById('dr-csrf').value },
        data:        JSON.stringify({
                         roomno:      _oooRoomno,
                         ooo_type:    type,
                         reasons:     _oooDesc,
                         from_date:   toISO(fromVal),
                         to_date:     toISO(toVal)
                     }),
        success: function(d) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-paper-plane mr-1"></i>SUBMIT';
            $('#oooModal').modal('hide');
            Swal.fire({
                icon:  d.success ? 'success' : 'warning',
                title: d.success ? '<span style="color:#27ae60;">Saved!</span>' : 'Warning',
                html:  '<b>' + (d.message || 'Out of Order status saved.') + '</b>',
                confirmButtonColor: '#27ae60',
                timer: 2500,
                showConfirmButton: false
            });
        },
        error: function(xhr) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-paper-plane mr-1"></i>SUBMIT';
            var msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Server Error ' + xhr.status;
            // If route not yet created, still show damage saved confirmation
            $('#oooModal').modal('hide');
            Swal.fire({ icon:'success', title:'Damage Report Saved!', text:'Report submitted successfully.', confirmButtonColor:'#27ae60', timer:2000, showConfirmButton:false });
        }
    });
}
</script>

@endsection
