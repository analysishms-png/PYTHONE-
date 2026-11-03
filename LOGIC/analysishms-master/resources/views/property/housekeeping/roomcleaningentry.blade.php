@extends('property.layouts.main')
@section('main-container')

<style>
    /* stepper input — compact, centered text, fixed width taaki - aur + ke beech fit ho */
    .rce-amenity-num {
        width: 40px !important;
        min-width: 40px !important;
        max-width: 40px !important;
        text-align: center;
        font-weight: 700;
        padding: 2px 0;
        border-left: 1px solid #ced4da !important;
        border-right: 1px solid #ced4da !important;
    }
</style>


<div class="content-body">
<div class="container-fluid px-4 py-3">

    <div class="row mb-3 align-items-center">
        <div class="col">
            <h4 class="fw-bold mb-0 text-dark">
                <i class="fa-solid fa-clipboard-check me-2 text-primary"></i>Room Cleaning Entry
            </h4>
            <small class="text-muted">
                <i class="fa-regular fa-calendar me-1"></i>
                {{ \Carbon\Carbon::parse($asOnDate)->format('d-M-Y') }}
                &nbsp;&bull;&nbsp; Housekeeping Module
            </small>
        </div>
    </div>

    {{-- Room Selector --}}
    <div class="card shadow-sm mb-3">
        <div class="card-header border-0 py-3 px-4" style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
            <div class="row align-items-center g-2">
                <div class="col-auto">
                    <span class="fw-bold text-white fs-6"><i class="fa-solid fa-door-open me-2"></i>Select Room</span>
                </div>
                <div class="col-auto">
                    <select id="rce-room-dd" class="form-control" style="min-width:220px;"
                            {{ $fromQr ? 'disabled' : '' }}>
                        <option value="">Select Room No</option>
                        @foreach($allRooms as $rm)
                            {{-- QR se aaya to sirf wahi room dikhao --}}
                            @if(!$fromQr || (string)$selectedCleaningId === (string)$rm->cleaningid)
                            <option value="{{ $rm->cleaningid }}"
                                {{ (string)$selectedCleaningId === (string)$rm->cleaningid ? 'selected' : '' }}>
                                Room {{ $rm->rcode }}
                            </option>
                            @endif
                        @endforeach
                    </select>
                    @if($fromQr)
                        <input type="hidden" id="rce-qr-cleaningid" value="{{ $selectedCleaningId }}">
                    @endif
                </div>
                
                <div class="col-auto">
                    <span id="rce-loader" style="display:none;" class="text-white small">
                        <i class="fa-solid fa-spinner fa-spin me-1"></i>Loading...
                    </span>
                </div>
            </div>
        </div>
    </div>

    {{-- Empty State --}}
    <div id="rce-empty">
        <div class="card shadow-sm text-center py-2">
            <div class="card-body py-2">
                <i class="fa-solid fa-hand-pointer fa-2x text-primary me-2 opacity-50"></i>
                <span class="fw-semibold text-muted">Select a Room to view Cleaning Details</span>
            </div>
        </div>
    </div>

    {{-- Main Form --}}
    <div id="rce-body" style="display:none;">
        <div class="row g-3">

            {{-- LEFT COLUMN --}}
            <div class="col-xl-8">

                {{-- Cleaning Info --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-file-lines me-1"></i>Cleaning Info
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="row g-3">
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Cleaning No</div>
                                <div class="fw-bold text-dark" id="f-cleaningno">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Date</div>
                                <div class="fw-semibold text-dark" id="f-cleaningdate">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Room No</div>
                                <div class="fw-bold text-dark fs-5" id="f-roomno">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Floor</div>
                                <div class="fw-semibold text-dark" id="f-floor">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Room Type</div>
                                <div class="fw-semibold text-dark" id="f-roomtype">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Current Status</div>
                                <div class="fw-bold" id="f-roomstatus" style="color:#e67e22;">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase mb-1">Cleaning Type</div>
                                <select id="f-ctype" class="form-control form-control-sm">
                                    <option value="">-- Select --</option>
                                    @foreach($cleaningTypes as $ct)
                                        <option value="{{ $ct->code }}">{{ $ct->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase mb-1">Priority</div>
                                <select id="f-priority" class="form-control form-control-sm">
                                    <option value="High">High</option>
                                    <option value="Normal">Normal</option>
                                    <option value="Medium">Medium</option>
                                    <option value="Critical">Critical</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Housekeeper Details --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-user-tie me-1"></i>Housekeeper Details
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="row g-3">
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Housekeeper</div>
                                <div class="fw-semibold text-dark" id="f-hkname">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Supervisor</div>
                                <div class="fw-semibold text-dark" id="f-supname">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Start Time</div>
                                <div class="fw-semibold text-success" id="f-starttime">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">End Time</div>
                                <div class="fw-semibold text-dark" id="f-endtime">--</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="text-muted small fw-semibold text-uppercase">Total Time</div>
                                <div class="fw-semibold text-dark" id="f-totaltime">--</div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Checklist --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3 d-flex justify-content-between align-items-center">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-list-check me-1"></i>Checklist
                        </span>
                        <div class="d-flex gap-2">
                            <button type="button" class="btn btn-outline-success btn-sm" onclick="rceCheckAll(true)">
                                <i class="fa-solid fa-check-double me-1"></i>Check All
                            </button>
                            <button type="button" class="btn btn-outline-secondary btn-sm" onclick="rceCheckAll(false)">
                                <i class="fa-solid fa-xmark me-1"></i>Clear All
                            </button>
                        </div>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="row g-2">
                            @forelse($checklistItems as $ci)
                                <div class="col-6 col-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input rce-chk" type="checkbox"
                                               id="chk_{{ $ci->sno }}" value="{{ $ci->sno }}">
                                        <label class="form-check-label small" for="chk_{{ $ci->sno }}">
                                            {{ $ci->name }}
                                        </label>
                                    </div>
                                </div>
                            @empty
                                <div class="col-12 text-muted small">No checklist items found.</div>
                            @endforelse
                        </div>
                    </div>
                </div>

                {{-- Amenities Used --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-body py-3 px-3">
                        @if(isset($amenities['Linen']) && $amenities['Linen']->count())
                        <div class="mb-3">
                            <div class="fw-bold text-secondary small text-uppercase mb-2">
                                <i class="fa-solid fa-bed me-1"></i>Linen Changed
                            </div>
                            <div class="row g-2">
                                @foreach($amenities['Linen'] as $am)
                                <div class="col-6 col-md-3 mb-2">
                                    <small class="d-block text-muted font-weight-bold mb-1 text-truncate" title="{{ $am->itemname }}">{{ $am->itemname }}</small>
                                    <div class="panelinc">
                                        <button type="button" class="btn btn-sm btn-outline-secondary rce-step-btn rce-down px-2">-</button>
                                        <input type="text" inputmode="numeric" value="1"
                                               class="form-control form-control-sm rce-amenity rce-amenity-num"
                                               data-type="Linen" data-itemcode="{{ $am->itemcode }}"
                                               data-item="{{ $am->itemname }}"
                                               oninput="rceAmenityInput(this)" onchange="rceAmenityInput(this)">
                                        <button type="button" class="btn btn-sm btn-outline-secondary rce-step-btn rce-up px-2">+</button>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        @endif
                        @if(isset($amenities['Amenities']) && $amenities['Amenities']->count())
                        <div class="mb-3">
                            <div class="fw-bold text-secondary small text-uppercase mb-2">
                                <i class="fa-solid fa-soap me-1"></i>Amenities Used
                            </div>
                            <div class="row g-2">
                                @foreach($amenities['Amenities'] as $am)
                                <div class="col-6 col-md-3 mb-2">
                                    <small class="d-block text-muted font-weight-bold mb-1 text-truncate" title="{{ $am->itemname }}">{{ $am->itemname }}</small>
                                    <div class="panelinc">
                                        <button type="button" class="btn btn-sm btn-outline-secondary rce-step-btn rce-down px-2">-</button>
                                        <input type="text" inputmode="numeric" value="1"
                                               class="form-control form-control-sm rce-amenity rce-amenity-num"
                                               data-type="Amenities" data-itemcode="{{ $am->itemcode }}"
                                               data-item="{{ $am->itemname }}"
                                               oninput="rceAmenityInput(this)" onchange="rceAmenityInput(this)">
                                        <button type="button" class="btn btn-sm btn-outline-secondary rce-step-btn rce-up px-2">+</button>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        @endif
                        @if(isset($amenities['Chemical']) && $amenities['Chemical']->count())
                        <div class="mb-3">
                            <div class="fw-bold text-secondary small text-uppercase mb-2">
                                <i class="fa-solid fa-flask me-1"></i>Chemical Used
                            </div>
                            <div class="row g-2">
                                @foreach($amenities['Chemical'] as $am)
                                <div class="col-6 col-md-3 mb-2">
                                    <small class="d-block text-muted font-weight-bold mb-1 text-truncate" title="{{ $am->itemname }}">{{ $am->itemname }}</small>
                                    <input type="text" inputmode="decimal"
                                           class="form-control form-control-sm rce-amenity"
                                           data-type="Chemical" data-itemcode="{{ $am->itemcode }}"
                                           data-item="{{ $am->itemname }}" placeholder="Qty"
                                           oninput="rceAmenityInput(this)" onchange="rceAmenityInput(this)">
                                </div>
                                @endforeach
                            </div>
                        </div>
                        @endif
                        @if($amenities->isEmpty())
                            <div class="text-muted small">No amenities items found.</div>
                        @endif
                    </div>
                </div>

                {{-- Remarks --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-comment-dots me-1"></i>Remarks
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <textarea id="f-remarks" class="form-control" rows="3" placeholder="Enter remarks..."></textarea>
                    </div>
                </div>

            </div>{{-- /col-xl-8 --}}

            {{-- RIGHT COLUMN --}}
            <div class="col-xl-4">

                {{-- Before Photo (read-only — fetched from Start Cleaning) --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-camera me-1"></i>Before Photo
                        </span>
                        <small class="text-muted ms-2 fw-normal text-lowercase">(from Start Cleaning)</small>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div id="before-photo-wrap" style="display:none;">
                            <img id="before-photo-img" src="" alt="Before" class="img-fluid rounded border"
                                 style="width:100%;max-height:160px;object-fit:cover;display:block;">
                        </div>
                        <div id="before-photo-placeholder" class="text-center text-muted py-4 border rounded">
                            <i class="fa-solid fa-image fa-2x mb-1 d-block opacity-40"></i>
                            <small>No before photo</small>
                        </div>
                    </div>
                </div>

                {{-- After Photo --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header bg-light border-bottom py-2 px-3">
                        <span class="fw-bold text-primary fs-6 text-uppercase">
                            <i class="fa-solid fa-camera-rotate me-1"></i>After Photo
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="d-flex gap-2 mb-2">
                            <label class="btn btn-primary btn-sm flex-fill mb-0"
                                   style="cursor:pointer;" onclick="return rceOpenWebcam('after',event)">
                                <i class="fa-solid fa-camera me-1"></i>Camera
                                <input type="file" id="f-after-camera" accept="image/*" capture="environment"
                                       style="display:none;" onchange="rcePreviewAfter(this)">
                            </label>
                            <label class="btn btn-outline-secondary btn-sm flex-fill mb-0"
                                   style="cursor:pointer;">
                                <i class="fa-solid fa-image me-1"></i>Gallery
                                <input type="file" id="f-after-gallery" accept="image/*"
                                       style="display:none;" onchange="rcePreviewAfter(this)">
                            </label>
                        </div>
                        <div id="after-photo-wrap" style="display:none;position:relative;">
                            <img id="after-photo-img" src="" alt="After" class="img-fluid rounded border"
                                 style="width:100%;max-height:160px;object-fit:cover;display:block;">
                            <button type="button" onclick="rceRemoveAfter()" class="btn btn-sm btn-danger"
                                    style="position:absolute;top:4px;right:4px;padding:2px 7px;">
                                <i class="fa-solid fa-xmark"></i>
                            </button>
                        </div>
                        <div id="after-photo-placeholder" class="text-center text-muted py-4 border rounded">
                            <i class="fa-solid fa-image fa-2x mb-1 d-block opacity-40"></i>
                            <small>No after photo</small>
                        </div>
                    </div>
                </div>

                {{-- Inspection --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-body py-3 px-3">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" id="f-inspection">
                            <label class="form-check-label fw-semibold" for="f-inspection">
                                <i class="fa-solid fa-magnifying-glass me-1 text-warning"></i>Inspection Required
                            </label>
                        </div>
                    </div>
                </div>

                {{-- Cleaning Complete --}}
                <div class="d-grid mb-2">
                    <button type="button" class="btn btn-success btn-lg fw-bold"
                            id="btn-complete" onclick="rceSubmit('complete')">
                        <i class="fa-solid fa-circle-check me-2"></i>CLEANING COMPLETE
                    </button>
                </div>

                {{-- Print --}}
                <div class="d-grid mb-3">
                    <button type="button" class="btn btn-outline-secondary fw-semibold"
                            onclick="window.print()">
                        <i class="fa-solid fa-print me-1"></i>Print
                    </button>
                </div>

            </div>{{-- /col-xl-4 --}}
        </div>{{-- /row --}}
    </div>{{-- /#rce-body --}}

    {{-- ══════════════════════════════════════════════════════
         CLEANING RECORDS TABLE (hkcleaninghdr — 1 cleaning = 1 row)
    ══════════════════════════════════════════════════════ --}}
    <div class="card shadow-sm mb-4">
        <div class="card-header border-0 py-3 px-4 d-flex justify-content-between align-items-center"
             style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
            <span class="fw-bold text-white fs-6">
                <i class="fa-solid fa-table-list me-2"></i>Cleaning Records
            </span>
            <button type="button" class="btn btn-sm btn-outline-light fw-semibold" onclick="rceFtrLoad()">
                <i class="fa-solid fa-arrows-rotate me-1"></i>Refresh
            </button>
        </div>
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover table-striped table-bordered align-middle mb-0"
                       style="font-size:13px; width:100%;">
                    <thead style="background:#1e3a5f; color:#fff;" class="text-center">
                        <tr>
                            <th style="width:60px;">SN</th>
                            <th>Cleaning No</th>
                            <th>Room No</th>
                            <th>Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody id="ftr-list-body">
                        <tr>
                            <td colspan="5" class="text-center text-muted py-4">
                                <i class="fa-solid fa-spinner fa-spin me-1"></i>Loading...
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card-footer bg-light py-2 px-3 text-muted small" id="ftr-list-info">
            &nbsp;
        </div>
    </div>

</div></div>

{{-- Webcam Modal --}}
<div id="rce-webcam-modal" data-target="after"
     style="display:none;position:fixed;inset:0;background:rgba(0,0,0,.75);z-index:9999;align-items:center;justify-content:center;">
    <div class="card shadow" style="width:100%;max-width:480px;margin:auto;border-radius:.75rem;overflow:hidden;">
        <div class="card-header bg-dark text-white py-2 px-3 d-flex justify-content-between align-items-center">
            <span class="fw-bold"><i class="fa-solid fa-camera me-2"></i>Camera Capture</span>
            <button type="button" class="btn btn-sm btn-outline-light" onclick="rceCloseWebcam()">
                <i class="fa-solid fa-xmark"></i>
            </button>
        </div>
        <div class="card-body p-2 bg-black text-center">
            <video id="rce-webcam-video" autoplay playsinline
                   style="width:100%;max-height:320px;border-radius:.4rem;background:#000;display:block;"></video>
            <canvas id="rce-webcam-canvas" style="display:none;"></canvas>
        </div>
        <div class="card-footer bg-dark text-center py-2">
            <button type="button" class="btn btn-success btn-sm px-4 fw-bold" onclick="rceCapturePhoto()">
                <i class="fa-solid fa-camera me-1"></i>Capture
            </button>
        </div>
    </div>
</div>

<input type="hidden" id="rce-cleaning-id" value="">
<input type="hidden" id="rce-csrf" value="{{ csrf_token() }}">

<script>
var rceAfterFile    = null;
var rceBeforeFile   = null;
var rceWebcamStream = null;

function rsv(id, val) {
    var e = document.getElementById(id);
    if (e) e.textContent = (val !== null && val !== undefined && val !== '') ? val : '--';
}

function rceShow(yes) {
    document.getElementById('rce-body').style.display  = yes ? '' : 'none';
    document.getElementById('rce-empty').style.display = yes ? 'none' : '';
}

function rceCheckAll(val) {
    document.querySelectorAll('.rce-chk').forEach(function(c) { c.checked = val; });
}

// ── Amenity value store — fixes mobile display:none parent bug ───────────────
var rceAmenityValues = {}; // key: data-itemcode, value: qty string

function rceAmenityInput(inp) {
    var key = inp.getAttribute('data-itemcode') + '|' + inp.getAttribute('data-type');
    rceAmenityValues[key] = inp.value;
}

function rceGetAmenityVal(inp) {
    var key = inp.getAttribute('data-itemcode') + '|' + inp.getAttribute('data-type');
    // prefer stored value, fallback to DOM value
    if (rceAmenityValues[key] !== undefined) return rceAmenityValues[key];
    return inp.value || '';
}

// ── Stepper: up arrow = add, down arrow = subtract (default 1) ──────────────
function rceStep(btn, delta) {
    var wrap = btn.closest('.panelinc');
    if (!wrap) return;
    var inp = wrap.querySelector('.rce-amenity');
    if (!inp) return;
    var raw = (rceGetAmenityVal(inp) || '1').toString().replace(',', '.').replace(/[^0-9.]/g, '');
    var qty = parseFloat(raw);
    qty = Math.max(0, (isNaN(qty) ? 0 : qty) + delta);
    inp.value = qty;
    rceAmenityInput(inp);
}

function rceClearAmenityValues() {
    rceAmenityValues = {};
    // panelinc ke andar wale inputs default 1; Chemical ke plain inputs empty
    document.querySelectorAll('.rce-amenity').forEach(function(inp) {
        inp.value = inp.closest('.panelinc') ? '1' : '';
    });
}

// ── compress helper ───────────────────────────────────────
function rceCompressFile(file, cb) {
    var MAX_W = 1280, Q = 0.80;
    var reader = new FileReader();
    reader.onload = function(e) {
        var img = new Image();
        img.onload = function() {
            var w = img.width, h = img.height;
            if (w > MAX_W) { h = Math.round(h * MAX_W / w); w = MAX_W; }
            var c = document.createElement('canvas'); c.width = w; c.height = h;
            c.getContext('2d').drawImage(img, 0, 0, w, h);
            var dataUrl = c.toDataURL('image/jpeg', Q);
            c.toBlob(function(b) { cb(new File([b], 'photo.jpg', {type:'image/jpeg'}), dataUrl); }, 'image/jpeg', Q);
        };
        img.src = e.target.result;
    };
    reader.readAsDataURL(file);
}

// ── Before Photo ──────────────────────────────────────────
function rcePreviewBefore(inp) {
    if (!inp.files || !inp.files[0]) return;
    rceCompressFile(inp.files[0], function(file, dataUrl) {
        rceBeforeFile = file;
        document.getElementById('before-photo-img').src = dataUrl;
        document.getElementById('before-photo-wrap').style.display = 'block';
        document.getElementById('before-photo-placeholder').style.display = 'none';
    });
}

function rceRemoveBefore() {
    rceBeforeFile = null;
    document.getElementById('before-photo-img').src = '';
    document.getElementById('before-photo-wrap').style.display = 'none';
    document.getElementById('before-photo-placeholder').style.display = 'block';
    var e = document.getElementById('f-before-camera'); if(e) e.value = '';
    var g = document.getElementById('f-before-gallery'); if(g) g.value = '';
}

// ── After Photo ───────────────────────────────────────────
function rcePreviewAfter(inp) {
    if (!inp.files || !inp.files[0]) return;
    rceCompressFile(inp.files[0], function(file, dataUrl) {
        rceAfterFile = file;
        document.getElementById('after-photo-img').src = dataUrl;
        document.getElementById('after-photo-wrap').style.display = 'block';
        document.getElementById('after-photo-placeholder').style.display = 'none';
    });
}

function rceRemoveAfter() {
    rceAfterFile = null;
    document.getElementById('after-photo-img').src = '';
    document.getElementById('after-photo-wrap').style.display = 'none';
    document.getElementById('after-photo-placeholder').style.display = 'block';
    var e = document.getElementById('f-after-camera'); if(e) e.value = '';
    var g = document.getElementById('f-after-gallery'); if(g) g.value = '';
}
</script>

<script>
// ── Webcam ────────────────────────────────────────────────
function rceOpenWebcam(target, event) {
    var isTouch = (navigator.maxTouchPoints > 0) || ('ontouchstart' in window);
    if (isTouch) return true; // mobile: native camera
    event.preventDefault();
    var modal = document.getElementById('rce-webcam-modal');
    modal.setAttribute('data-target', target);
    modal.style.display = 'flex';
    if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
        navigator.mediaDevices.getUserMedia({ video: { facingMode: 'environment' }, audio: false })
        .then(function(stream) {
            rceWebcamStream = stream;
            document.getElementById('rce-webcam-video').srcObject = stream;
        })
        .catch(function(err) {
            rceCloseWebcam();
            Swal.fire({ icon:'error', title:'Camera Error', text: err.message });
        });
    } else {
        rceCloseWebcam();
        Swal.fire({ icon:'warning', title:'Not Supported', text:'Webcam not supported in this browser.' });
    }
    return false;
}

function rceCapturePhoto() {
    var v = document.getElementById('rce-webcam-video');
    var c = document.getElementById('rce-webcam-canvas');
    c.width = v.videoWidth || 640; c.height = v.videoHeight || 480;
    c.getContext('2d').drawImage(v, 0, 0, c.width, c.height);
    var target  = document.getElementById('rce-webcam-modal').getAttribute('data-target') || 'after';
    var dataUrl = c.toDataURL('image/jpeg', 0.80);
    c.toBlob(function(b) {
        var file = new File([b], 'photo.jpg', { type: 'image/jpeg' });
        if (target === 'before') {
            rceBeforeFile = file;
            document.getElementById('before-photo-img').src = dataUrl;
            document.getElementById('before-photo-wrap').style.display = 'block';
            document.getElementById('before-photo-placeholder').style.display = 'none';
        } else {
            rceAfterFile = file;
            document.getElementById('after-photo-img').src = dataUrl;
            document.getElementById('after-photo-wrap').style.display = 'block';
            document.getElementById('after-photo-placeholder').style.display = 'none';
        }
    }, 'image/jpeg', 0.80);
    rceCloseWebcam();
}

function rceCloseWebcam() {
    document.getElementById('rce-webcam-modal').style.display = 'none';
    if (rceWebcamStream) {
        rceWebcamStream.getTracks().forEach(function(t) { t.stop(); });
        rceWebcamStream = null;
    }
    var v = document.getElementById('rce-webcam-video');
    if (v) v.srcObject = null;
}

document.getElementById('rce-webcam-modal').addEventListener('click', function(e) {
    if (e.target === this) rceCloseWebcam();
});
</script>

<script>
// ── Room dropdown fetch ───────────────────────────────────
document.getElementById('rce-room-dd').addEventListener('change', function() {
    var cleaningid = this.value;
    if (!cleaningid) { rceShow(false); return; }

    var ld = document.getElementById('rce-loader');
    if (ld) ld.style.display = 'inline';

    fetch('{{ route("fetchcleaningentry") }}', {
        method: 'POST',
        headers: { 'Content-Type':'application/json', 'X-CSRF-TOKEN': document.getElementById('rce-csrf').value },
        body: JSON.stringify({ cleaningid: cleaningid })
    })
    .then(function(r) { return r.json(); })
    .then(function(d) {
        if (ld) ld.style.display = 'none';
        if (!d.success) { Swal.fire({ icon:'error', title:'Error', text: d.message }); return; }

        document.getElementById('rce-cleaning-id').value = d.cleaningid || '';

        rsv('f-cleaningno',   d.cleaningno);
        rsv('f-cleaningdate', d.cleaningdate);
        rsv('f-roomno',       d.roomno);
        rsv('f-floor',        d.floorname);
        rsv('f-roomtype',     d.roomtype);
        rsv('f-hkname',       d.hkname);
        rsv('f-supname',      d.supname);
        rsv('f-starttime',    d.starttime);
        rsv('f-endtime',      d.endtime);
        rsv('f-totaltime',    d.totalminutes ? d.totalminutes + ' Min' : '--');

        var se = document.getElementById('f-roomstatus');
        if (se) {
            se.textContent = d.roomstatus || '--';
            se.style.color = (d.roomstatus && d.roomstatus.toLowerCase().includes('occupied')) ? '#0d6efd' : '#e67e22';
        }

        var cs = document.getElementById('f-ctype'); if (cs && d.cleaningtype) cs.value = d.cleaningtype;
        var ps = document.getElementById('f-priority'); if (ps && d.priority) ps.value = d.priority;
        var ins = document.getElementById('f-inspection'); if (ins) ins.checked = (d.inspectionreq === 'Y');
        var rem = document.getElementById('f-remarks'); if (rem) rem.value = d.remarks || '';

        // Before photo
        if (d.beforephoto) {
            document.getElementById('before-photo-img').src = d.beforephoto;
            document.getElementById('before-photo-wrap').style.display = 'block';
            document.getElementById('before-photo-placeholder').style.display = 'none';
        } else {
            document.getElementById('before-photo-wrap').style.display = 'none';
            document.getElementById('before-photo-placeholder').style.display = 'block';
        }
        rceBeforeFile = null;

        // After photo
        if (d.afterphoto) {
            document.getElementById('after-photo-img').src = d.afterphoto;
            document.getElementById('after-photo-wrap').style.display = 'block';
            document.getElementById('after-photo-placeholder').style.display = 'none';
        } else {
            document.getElementById('after-photo-wrap').style.display = 'none';
            document.getElementById('after-photo-placeholder').style.display = 'block';
        }
        rceAfterFile = null;

        // Complete button state
        var cb = document.getElementById('btn-complete');
        if (cb) {
            if (d.cleaningstatus === 'Completed') {
                cb.disabled = true;
                cb.className = 'btn btn-secondary btn-lg fw-bold';
                cb.innerHTML = '<i class="fa-solid fa-circle-check me-2"></i>Already Completed';
            } else {
                cb.disabled = false;
                cb.className = 'btn btn-success btn-lg fw-bold';
                cb.innerHTML = '<i class="fa-solid fa-circle-check me-2"></i>CLEANING COMPLETE';
            }
        }

        // Restore checklist checkboxes
        document.querySelectorAll('.rce-chk').forEach(function(c) { c.checked = false; });
        if (d.checkeditems && d.checkeditems.length) {
            d.checkeditems.forEach(function(sn) {
                var el = document.getElementById('chk_' + sn);
                if (el) el.checked = true;
            });
        }

        // Restore amenity quantities
        rceClearAmenityValues();
        if (d.amenitydata && d.amenitydata.length) {
            d.amenitydata.forEach(function(am) {
                document.querySelectorAll('.rce-amenity').forEach(function(inp) {
                    if (inp.getAttribute('data-type') === am.type &&
                        inp.getAttribute('data-itemcode') === am.itemcode) {
                        inp.value = am.qty > 0 ? am.qty : '';
                        // also store in JS map so mobile can read it back
                        var key = inp.getAttribute('data-itemcode') + '|' + inp.getAttribute('data-type');
                        rceAmenityValues[key] = am.qty > 0 ? String(am.qty) : '';
                    }
                });
            });
        }

        rceShow(true);
    })
    .catch(function(err) {
        if (ld) ld.style.display = 'none';
        Swal.fire({ icon:'error', title:'Server Error', text: '' + err });
    });
});

@if($fromQr && $selectedCleaningId)
// ── QR scan se aaya — page load hote hi woh room auto-fetch karo ──────────
document.addEventListener('DOMContentLoaded', function() {
    var dd = document.getElementById('rce-room-dd');
    if (dd && dd.value) {
        dd.dispatchEvent(new Event('change'));
    }
});
@endif
</script>

<script>
// ── Submit ────────────────────────────────────────────────
function rceCollectAmenities() {
    var amenities = [];
    document.querySelectorAll('.rce-amenity').forEach(function(inp) {
        // Use stored value (mobile-safe) with fallback to DOM value
        var raw = rceGetAmenityVal(inp).toString().replace(',', '.').replace(/[^0-9.]/g, '').trim();
        var qty = parseFloat(raw);
        if (!isNaN(qty) && qty > 0) {
            amenities.push({
                itemcode: inp.getAttribute('data-itemcode'),
                item:     inp.getAttribute('data-item'),
                type:     inp.getAttribute('data-type'),
                qty:      qty
            });
        }
    });
    return amenities;
}

function rceSubmit(action) {
    // Blur active element first — flushes mobile keyboard input into DOM
    if (document.activeElement && document.activeElement.blur) {
        document.activeElement.blur();
    }

    var id = document.getElementById('rce-cleaning-id').value;
    if (!id) {
        Swal.fire({ icon:'warning', title:'Select Room', text:'Pehle room select karein!' });
        return;
    }

    var btn = document.getElementById('btn-complete');
    if (btn) { btn.disabled = true; btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin me-1"></i>Processing...'; }

    // Checklist
    var checklist = [];
    document.querySelectorAll('.rce-chk:checked').forEach(function(c) { checklist.push(c.value); });

    // Amenities — collect with a small delay to ensure mobile keyboard flushed
    setTimeout(function() {
        var amenities = rceCollectAmenities();

        var fd = new FormData();
        fd.append('_token',              document.getElementById('rce-csrf').value);
        fd.append('cleaning_id',         id);
        fd.append('action',              'complete');
        fd.append('priority',            document.getElementById('f-priority').value);
        fd.append('inspection_required', document.getElementById('f-inspection').checked ? 'Y' : 'N');
        fd.append('remarks',             document.getElementById('f-remarks').value.trim());
        fd.append('checklist',           JSON.stringify(checklist));
        fd.append('amenities',           JSON.stringify(amenities));
        if (rceBeforeFile) fd.append('before_photo', rceBeforeFile);
        if (rceAfterFile)  fd.append('after_photo',  rceAfterFile);

        fetch('{{ route("submitcleaningentry") }}', { method:'POST', body: fd })
        .then(function(r) { return r.json(); })
        .then(function(d) {
            if (btn) btn.disabled = false;

            if (d.success) {
                Swal.fire({ icon:'success', title:'Done!', text: d.message, confirmButtonColor:'#1e3a5f', timer:2000 })
                .then(function() {
                    // Page reload — completed room dropdown se automatically hata jayega
                    window.location.href = '{{ route("roomcleaningentry") }}';
                });
            } else {
                if (btn) btn.innerHTML = '<i class="fa-solid fa-circle-check me-2"></i>CLEANING COMPLETE';
                Swal.fire({ icon:'error', title:'Error', text: d.message });
            }
        })
        .catch(function(e) {
            if (btn) { btn.disabled = false; btn.innerHTML = '<i class="fa-solid fa-circle-check me-2"></i>CLEANING COMPLETE'; }
            Swal.fire({ icon:'error', title:'Error', text: '' + e });
        });
    }, 100);
}
</script>

{{-- Mobile: amenities inputs fix -- re-enable readonly/disabled fields --}}
<script>
setInterval(function () {
    $('input[type="text"], input[type="number"], input[type="email"], textarea').prop('readonly', false);
}, 1000);
</script>

<script>
// ── Fetch & render cleaning records (1 cleaning = 1 row) ──────────────────
function rceFtrLoad() {
    var tbody = document.getElementById('ftr-list-body');
    var info  = document.getElementById('ftr-list-info');
    tbody.innerHTML = '<tr><td colspan="5" class="text-center text-muted py-4"><i class="fa-solid fa-spinner fa-spin me-1"></i>Loading...</td></tr>';
    if (info) info.textContent = '';

    fetch('{{ route("fetchcleaningftrlist") }}', {
        method:  'GET',
        headers: { 'X-CSRF-TOKEN': document.getElementById('rce-csrf').value }
    })
    .then(function (r) { return r.json(); })
    .then(function (d) {
        if (!d.success) {
            tbody.innerHTML = '<tr><td colspan="5" class="text-center text-danger py-3">' + (d.message || 'Error loading data') + '</td></tr>';
            return;
        }
        if (!d.data || !d.data.length) {
            tbody.innerHTML = '<tr><td colspan="5" class="text-center text-muted py-4"><i class="fa-solid fa-inbox fa-lg me-2 opacity-40"></i>No records found.</td></tr>';
            return;
        }

        var html = '';
        var sn   = 1;
        d.data.forEach(function (row) {
            var stColor = row.cleaningstatus === 'Completed' ? '#198754' : (row.cleaningstatus === 'In Progress' ? '#0d6efd' : '#6c757d');
            var stBadge = '<span class="fw-bold" style="color:' + stColor + ';font-size:12px;">' + row.cleaningstatus + '</span>';

            html += '<tr>'
                + '<td class="text-center fw-semibold">' + (sn++) + '</td>'
                + '<td class="text-center fw-bold text-primary">' + (row.cleaningno || '--') + '</td>'
                + '<td class="text-center fw-bold">' + (row.roommo || '--') + '</td>'
                + '<td class="text-center">' + (row.date || '--') + '</td>'
                + '<td class="text-center">' + stBadge + '</td>'
                + '</tr>';
        });

        tbody.innerHTML = html;
        if (info) info.textContent = 'Total records: ' + d.data.length;
    })
    .catch(function (e) {
        tbody.innerHTML = '<tr><td colspan="5" class="text-center text-danger py-3">Server Error: ' + e + '</td></tr>';
    });
}

// Load on page open
document.addEventListener('DOMContentLoaded', function () { rceFtrLoad(); });

// ── Stepper buttons — jQuery delegation (kotentry jaise) ────────────────────
// Inline onclick mobile Chrome mein display:none parent ke baad miss hota hai.
$(document).on('click', '.rce-step-btn', function(e) {
    e.preventDefault();
    var $btn = $(this);
    var delta = $btn.hasClass('rce-up') ? 1 : -1;
    var inp = $btn.closest('.panelinc').find('.rce-amenity')[0];
    if (!inp) return;
    var raw = (rceGetAmenityVal(inp) || '1').toString().replace(',', '.').replace(/[^0-9.]/g, '');
    var qty = parseFloat(raw);
    qty = Math.max(0, (isNaN(qty) ? 0 : qty) + delta);
    inp.value = qty;
    rceAmenityInput(inp);
});
</script>

@endsection
