@extends('property.layouts.main')
@section('main-container')

<style>
/* Only 4 things Bootstrap can't do natively */
.ins-sticky-bar{position:fixed;bottom:0;left:0;right:0;z-index:1040;background:#fff;border-top:2px solid #dee2e6;padding:8px 12px;box-shadow:0 -4px 12px rgba(0,0,0,.12);}
@media(min-width:992px){.ins-sticky-bar{display:none!important;}}
@media(max-width:767px){.chk-table-wrap{display:none!important;}.chk-cards-wrap{display:block!important;}}
@media(min-width:768px){.chk-cards-wrap{display:none!important;}.chk-table-wrap{display:block!important;}}
.score-bar-track{height:6px;border-radius:4px;background:#dee2e6;overflow:hidden;}
.score-bar-fill{height:100%;border-radius:4px;transition:width .3s;}
</style>

<div class="content-body">
<div class="container-fluid px-3 py-3">

{{-- HEADER BANNER --}}
<div class="d-flex align-items-center justify-content-between text-white rounded p-3 mb-3 shadow-sm"
     style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
    <div>
        <h5 class="mb-0 font-weight-bold text-white">
            <i class="fa-solid fa-clipboard-check mr-2"></i>Room Inspection Entry
        </h5>
    </div>
    <span class="badge badge-warning px-2 py-1">
        {{ $completedRooms->count() }} <span class="d-block" style="font-size:9px;">READY</span>
    </span>
</div>

{{-- ROOM SELECTOR --}}
<div class="card shadow-sm border-0 mb-3">
    <div class="card-header bg-primary text-white font-weight-bold text-uppercase small py-2">
        <i class="fa-solid fa-door-open mr-1"></i> Select Cleaned Room
    </div>
    <div class="card-body py-2 px-3">
        @if($completedRooms->isEmpty())
            <div class="alert alert-warning mb-0 py-2 small">
                <i class="fa-solid fa-triangle-exclamation mr-1"></i>
                No rooms with completed cleaning found for today.
            </div>
        @else
        <div class="row align-items-center g-2">
            <div class="col-12 col-md-6">
                <label class="small text-uppercase font-weight-bold text-muted mb-1 d-block">Cleaned Room <span class="text-danger">*</span></label>
                <select id="sel-cleaning" class="form-control form-control-sm custom-select"
                        onchange="fetchInspectionData()">
                    <option value="">-- Select Room --</option>
                    @foreach($completedRooms as $cr)
                    <option value="{{ $cr->cleaningid }}"
                            data-room="{{ $cr->rcode }}"
                            data-hk="{{ $cr->hkname }}">
                        Room {{ $cr->rcode }}
                        @if($cr->hkname) &mdash; {{ $cr->hkname }} @endif
                        ({{ $cr->cleaningno }})
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="col-12 col-md-6" id="already-done-wrap" style="display:none;">
                <div class="alert alert-warning py-1 mb-0 small">
                    <i class="fa-solid fa-circle-info mr-1"></i>
                    <strong>Already Inspected</strong> &mdash;
                    <span id="prev-status-badge" class="badge ml-1"></span>
                    <span id="prev-score-text" class="text-muted"></span>
                    <br><small>You can submit a new inspection below.</small>
                </div>
            </div>
        </div>
        @endif
    </div>
</div>

{{-- MAIN FORM (hidden until room selected) --}}
<div id="ins-form-wrap" style="display:none;">
<form id="insForm" novalidate>
@csrf
<input type="hidden" id="ins-cleaningid" value="">
<input type="hidden" id="ins-csrf" value="{{ csrf_token() }}">

<div class="row g-3 pb-5 pb-lg-0">{{-- pb-5 = sticky bar ke upar space on mobile --}}
{{-- ── LEFT COLUMN ── --}}
<div class="col-lg-8">

    {{-- ROOM INFO STRIP --}}
    <div class="card shadow-sm border-0 mb-3">
        <div class="card-header bg-info text-white font-weight-bold text-uppercase small py-2">
            <i class="fa-solid fa-bed mr-1"></i> Room &amp; Cleaning Info
        </div>
        <div class="card-body py-2 px-3">
            <div class="row">
                <div class="col-6 col-md-3 mb-2">
                    <div class="small text-uppercase font-weight-bold text-muted">Inspection No</div>
                    <div class="font-weight-bold" id="disp-insno">—</div>
                </div>
                <div class="col-6 col-md-3 mb-2">
                    <div class="small text-uppercase font-weight-bold text-muted">Room No</div>
                    <div class="font-weight-bold" id="disp-roomno">—</div>
                </div>
                <div class="col-6 col-md-3 mb-2">
                    <div class="small text-uppercase font-weight-bold text-muted">Floor</div>
                    <div class="font-weight-bold" id="disp-floor">—</div>
                </div>
                <div class="col-6 col-md-3 mb-2">
                    <div class="small text-uppercase font-weight-bold text-muted">Room Type</div>
                    <div class="font-weight-bold" id="disp-roomtype">—</div>
                </div>
                <div class="col-6 col-md-3 mb-2">
                    <div class="small text-uppercase font-weight-bold text-muted">Housekeeper</div>
                    <div class="font-weight-bold" id="disp-hk">—</div>
                </div>
                <div class="col-6 col-md-3 mb-2">
                    <div class="small text-uppercase font-weight-bold text-muted">Start</div>
                    <div class="font-weight-bold" id="disp-start">—</div>
                </div>
                <div class="col-6 col-md-3 mb-2">
                    <div class="small text-uppercase font-weight-bold text-muted">End</div>
                    <div class="font-weight-bold" id="disp-end">—</div>
                </div>
                <div class="col-6 col-md-3 mb-2">
                    <div class="small text-uppercase font-weight-bold text-muted">Status Before</div>
                    <div class="font-weight-bold" id="disp-before">—</div>
                </div>
            </div>
        </div>
    </div>

    {{-- CHECKLIST --}}
    <div class="card shadow-sm border-0 mb-3">
        <div class="card-header bg-success text-white d-flex justify-content-between align-items-center py-2">
            <span class="font-weight-bold text-uppercase small">
                <i class="fa-solid fa-list-check mr-1"></i> Inspection Checklist
            </span>
            <div class="d-flex" style="gap:4px;">
                <button type="button" class="btn btn-sm btn-light font-weight-bold py-0 px-2"
                        onclick="setAllStatus('Pass')">
                    <i class="fa-solid fa-check mr-1"></i>All Pass
                </button>
                <button type="button" class="btn btn-sm btn-dark font-weight-bold py-0 px-2"
                        onclick="setAllStatus('Fail')">
                    <i class="fa-solid fa-xmark mr-1"></i>All Fail
                </button>
            </div>
        </div>
        <div class="card-body p-0">

            {{-- DESKTOP TABLE (md+) --}}
            <div class="chk-table-wrap">
                <div class="table-responsive">
                    <table class="table table-bordered table-sm align-middle mb-0" style="font-size:12px;">
                        <thead class="thead-dark">
                            <tr>
                                <th style="width:36px;" class="text-center">#</th>
                                <th>Item</th>
                                <th style="width:110px;" class="text-center">Status</th>
                                <th>Remarks</th>
                            </tr>
                        </thead>
                        <tbody id="checklist-body">
                        @forelse($checklistItems as $i => $item)
                        <tr class="checklist-row table-danger" data-sn="{{ $item->sno }}" data-name="{{ $item->name }}">
                            <td class="text-center text-muted font-weight-bold small py-1">{{ $i + 1 }}</td>
                            <td class="font-weight-bold small py-1 align-middle">{{ $item->name }}</td>
                            <td class="py-1 text-center align-middle" style="white-space:nowrap;">
                                <div class="btn-group btn-group-sm" role="group">
                                    <button type="button" class="btn btn-outline-success chk-pass"
                                            onclick="setRowStatus(this,'Pass')">
                                        <i class="fa-solid fa-check"></i> Pass
                                    </button>
                                    <button type="button" class="btn btn-danger chk-fail"
                                            onclick="setRowStatus(this,'Fail')">
                                        <i class="fa-solid fa-xmark"></i> Fail
                                    </button>
                                </div>
                                <input type="hidden" class="row-status" value="Fail">
                            </td>
                            <td class="py-1 align-middle">
                                <input type="text" class="form-control form-control-sm row-remark"
                                       placeholder="Optional..." maxlength="50">
                            </td>
                        </tr>
                        @empty
                        <tr><td colspan="4" class="text-center text-muted py-3 small">
                            No checklist items. Add via Checklist Master.
                        </td></tr>
                        @endforelse
                        </tbody>
                    </table>
                </div>
            </div>

            {{-- MOBILE CARD LIST (< md) --}}
            <div class="chk-cards-wrap" id="checklist-cards">
            @forelse($checklistItems as $i => $item)
            <div class="chk-card-item border-bottom table-danger p-2"
                 data-sn="{{ $item->sno }}" data-name="{{ $item->name }}">
                <div class="d-flex align-items-center">
                    <span class="text-muted font-weight-bold small mr-2" style="min-width:22px;text-align:center;">{{ $i + 1 }}</span>
                    <span class="font-weight-bold small flex-fill mr-2">{{ $item->name }}</span>
                    <div class="d-flex flex-shrink-0" style="gap:4px;">
                        <button type="button" class="btn btn-outline-success btn-sm chk-pass"
                                onclick="setRowStatusMob(this,'Pass')">
                            <i class="fa-solid fa-check"></i> Pass
                        </button>
                        <button type="button" class="btn btn-danger btn-sm chk-fail"
                                onclick="setRowStatusMob(this,'Fail')">
                            <i class="fa-solid fa-xmark"></i> Fail
                        </button>
                        <input type="hidden" class="row-status" value="Fail">
                    </div>
                </div>
                <div class="mt-1 pl-3">
                    <input type="text" class="form-control form-control-sm row-remark"
                           placeholder="Remark (optional)..." maxlength="50">
                </div>
            </div>
            @empty
            <div class="text-center text-muted py-3 small">No checklist items.</div>
            @endforelse
            </div>

        </div>
    </div>

    {{-- REMARKS --}}
    <div class="card shadow-sm border-0 mb-3">
        <div class="card-header bg-secondary text-white font-weight-bold text-uppercase small py-2">
            <i class="fa-solid fa-note-sticky mr-1"></i> Inspector Remarks
        </div>
        <div class="card-body py-2 px-3">
            <textarea id="ins-remarks" class="form-control form-control-sm" rows="2"
                      placeholder="Overall inspection remarks..." maxlength="100" style="resize:none;"></textarea>
        </div>
    </div>

</div>{{-- /col-lg-8 --}}

{{-- ── RIGHT COLUMN (desktop only) ── --}}
<div class="col-lg-4 d-none d-lg-block">

    {{-- LIVE SCORE --}}
    <div class="card shadow-sm border-0 mb-3">
        <div class="card-header bg-primary text-white font-weight-bold text-uppercase small py-2">
            <i class="fa-solid fa-star mr-1"></i> Live Score
        </div>
        <div class="card-body py-3 px-3">
            <div class="d-flex align-items-center mb-2">
                <div id="score-circle-desk"
                     class="rounded-circle bg-success text-white d-flex align-items-center justify-content-center font-weight-bold mr-3 flex-shrink-0"
                     style="width:64px;height:64px;font-size:1rem;">100%</div>
                <div class="flex-fill">
                    <div class="score-bar-track mb-1">
                        <div id="score-bar-desk" class="score-bar-fill bg-success" style="width:100%;"></div>
                    </div>
                    <div class="font-weight-bold text-success small" id="score-label-desk">Excellent</div>
                </div>
            </div>
            <div class="d-flex justify-content-around text-center border-top pt-2">
                <div>
                    <div class="font-weight-bold text-success h5 mb-0" id="cnt-pass-desk">0</div>
                    <div class="small text-uppercase text-muted font-weight-bold">Pass</div>
                </div>
                <div>
                    <div class="font-weight-bold text-danger h5 mb-0" id="cnt-fail-desk">0</div>
                    <div class="small text-uppercase text-muted font-weight-bold">Fail</div>
                </div>
                <div>
                    <div class="font-weight-bold text-secondary h5 mb-0" id="cnt-total-desk">0</div>
                    <div class="small text-uppercase text-muted font-weight-bold">Total</div>
                </div>
            </div>
        </div>
    </div>



    {{-- ACTIONS (desktop) --}}
    <div class="card shadow-sm border-0 mb-3">
        <div class="card-header bg-dark text-white font-weight-bold text-uppercase small py-2">
            <i class="fa-solid fa-bolt mr-1"></i> Actions
        </div>
        <div class="card-body py-2 px-3">
            <div class="d-grid gap-2">
                <button type="button" class="btn btn-success font-weight-bold btn-submit-action"
                        onclick="submitInspection('Passed')">
                    <i class="fa-solid fa-circle-check mr-1"></i> Pass &amp; Complete
                    <span class="badge badge-light text-success ml-1" style="font-size:10px;">→ Clean</span>
                </button>
                <button type="button" class="btn btn-danger font-weight-bold btn-submit-action"
                        onclick="submitInspection('Failed')">
                    <i class="fa-solid fa-circle-xmark mr-1"></i> Fail
                    <span class="badge badge-light text-danger ml-1" style="font-size:10px;">→ Dirty</span>
                </button>
            </div>
        </div>
    </div>

</div>{{-- /col-lg-4 --}}
</div>{{-- /row --}}
</form>
</div>{{-- /ins-form-wrap --}}

</div>{{-- /container-fluid --}}

{{-- MOBILE STICKY BOTTOM BAR --}}
<div class="ins-sticky-bar" id="mobile-sticky-bar" style="display:none;">
    <div class="d-flex align-items-center mb-1">
        <div id="mob-score-circle"
             class="rounded-circle bg-success text-white d-flex align-items-center justify-content-center font-weight-bold mr-2 flex-shrink-0"
             style="width:40px;height:40px;font-size:.75rem;">100%</div>
        <div class="mr-2">
            <div class="small text-uppercase text-muted font-weight-bold" style="font-size:9px;">Score</div>
            <div id="mob-score-label" class="font-weight-bold text-success small">Excellent</div>
        </div>
        <div class="text-center">
            <span class="font-weight-bold text-success small" id="mob-cnt-pass">0</span>
            <span class="text-muted small">P</span>
            &nbsp;
            <span class="font-weight-bold text-danger small" id="mob-cnt-fail">0</span>
            <span class="text-muted small">F</span>
        </div>
    </div>
    <div class="d-flex" style="gap:4px;">
        <button type="button" class="btn btn-success btn-sm font-weight-bold flex-fill btn-submit-action"
                onclick="submitInspection('Passed')">
            <i class="fa-solid fa-check"></i> Pass &rarr; Clean
        </button>
        <button type="button" class="btn btn-danger btn-sm font-weight-bold flex-fill btn-submit-action"
                onclick="submitInspection('Failed')">
            <i class="fa-solid fa-xmark"></i> Fail &rarr; Dirty
        </button>
    </div>
</div>
</div>{{-- /content-body --}}

<script>
const CSRF       = "{{ csrf_token() }}";
const FETCH_URL  = "{{ route('fetchinspection') }}";
const SUBMIT_URL = "{{ route('submitinspection') }}";

// ── Fetch room data on dropdown change ───────────────────────────────────────
function fetchInspectionData() {
    const sel        = document.getElementById('sel-cleaning');
    const cleaningId = sel.value;

    document.getElementById('ins-form-wrap').style.display    = 'none';
    document.getElementById('already-done-wrap').style.display = 'none';
    document.getElementById('mobile-sticky-bar').style.display = 'none';

    if (!cleaningId) return;

    fetch(FETCH_URL, {
        method : 'POST',
        headers: { 'Content-Type':'application/json', 'X-CSRF-TOKEN':CSRF },
        body   : JSON.stringify({ cleaningid: cleaningId }),
    })
    .then(r => {
        if (!r.ok) return r.text().then(t => { throw new Error('Server ' + r.status + ': ' + t.substring(0,200)); });
        return r.json();
    })
    .then(d => {
        if (!d.success) { toastr.error(d.message); return; }

        document.getElementById('ins-cleaningid').value      = cleaningId;
        document.getElementById('disp-insno').textContent    = d.inspection_no  || '—';
        document.getElementById('disp-roomno').textContent   = d.roomno         || '—';
        document.getElementById('disp-floor').textContent    = d.floorname      || '—';
        document.getElementById('disp-roomtype').textContent = d.roomtype       || '—';
        document.getElementById('disp-hk').textContent       = d.housekeeper    || '—';
        document.getElementById('disp-start').textContent    = d.starttime      || '—';
        document.getElementById('disp-end').textContent      = d.endtime        || '—';
        document.getElementById('disp-before').textContent   = d.before_status  || '—';

        if (d.already_done) {
            const colors = { 'Passed':'#16a34a','Failed':'#dc2626','Re-Clean':'#d97706',
                             'Draft':'#64748b','In Progress':'#2563eb','Cancelled':'#475569' };
            const badge = document.getElementById('prev-status-badge');
            badge.textContent   = d.prev_status || '';
            badge.style.background = colors[d.prev_status] || '#64748b';
            document.getElementById('prev-score-text').textContent =
                d.prev_score !== null ? ' (' + d.prev_score + '%)' : '';
            document.getElementById('already-done-wrap').style.display = 'block';
        }

        resetChecklist();
        document.getElementById('ins-form-wrap').style.display    = 'block';
        document.getElementById('mobile-sticky-bar').style.display = 'block';
    })
    .catch(err => { console.error(err); toastr.error('Network error — please try again.'); });
}

// ── Shared toggle logic ───────────────────────────────────────────────────────
function applyStatus(container, status) {
    const inp     = container.querySelector('.row-status');
    const passBtn = container.querySelector('.chk-pass');
    const failBtn = container.querySelector('.chk-fail');
    if (!inp) return;
    inp.value = status;
    if (status === 'Pass') {
        if (passBtn) { passBtn.classList.remove('btn-outline-success'); passBtn.classList.add('btn-success'); }
        if (failBtn) { failBtn.classList.remove('btn-danger');          failBtn.classList.add('btn-outline-danger'); }
        container.classList.add('table-success');
        container.classList.remove('table-danger');
    } else {
        if (failBtn) { failBtn.classList.remove('btn-outline-danger');  failBtn.classList.add('btn-danger'); }
        if (passBtn) { passBtn.classList.remove('btn-success');         passBtn.classList.add('btn-outline-success'); }
        container.classList.add('table-danger');
        container.classList.remove('table-success');
    }
}

// ── Desktop table row ─────────────────────────────────────────────────────────
function setRowStatus(btn, status) {
    applyStatus(btn.closest('tr'), status);
    updateScore();
}

// ── Mobile card item ──────────────────────────────────────────────────────────
function setRowStatusMob(btn, status) {
    applyStatus(btn.closest('.chk-card-item'), status);
    updateScore();
}

// ── Set all rows (both desktop + mobile) ──────────────────────────────────────
function setAllStatus(status) {
    document.querySelectorAll('#checklist-body .checklist-row').forEach(row => {
        const btn = row.querySelector(status === 'Pass' ? '.chk-pass' : '.chk-fail');
        if (btn) setRowStatus(btn, status);
    });
    document.querySelectorAll('#checklist-cards .chk-card-item').forEach(card => {
        const btn = card.querySelector(status === 'Pass' ? '.chk-pass' : '.chk-fail');
        if (btn) setRowStatusMob(btn, status);
    });
}

// ── Reset checklist ───────────────────────────────────────────────────────────
function resetChecklist() {
    document.querySelectorAll('#checklist-body .checklist-row').forEach(row => {
        const failBtn = row.querySelector('.chk-fail');
        if (failBtn) setRowStatus(failBtn, 'Fail');
        const inp = row.querySelector('.row-remark');
        if (inp) inp.value = '';
    });
    document.querySelectorAll('#checklist-cards .chk-card-item').forEach(card => {
        const failBtn = card.querySelector('.chk-fail');
        if (failBtn) setRowStatusMob(failBtn, 'Fail');
        const inp = card.querySelector('.row-remark');
        if (inp) inp.value = '';
    });
    updateScore();
}

// ── Live score ───────────────────────────────────────────────────────────────
function updateScore() {
    const isMobile = window.innerWidth < 768;
    const items = isMobile
        ? document.querySelectorAll('#checklist-cards .chk-card-item')
        : document.querySelectorAll('#checklist-body .checklist-row');

    let total = 0, passed = 0;
    items.forEach(el => {
        total++;
        if ((el.querySelector('.row-status')?.value || 'Fail') === 'Pass') passed++;
    });

    const pct    = total > 0 ? Math.round((passed / total) * 100) : 0;
    const color  = pct >= 80 ? '#16a34a' : pct >= 50 ? '#d97706' : '#dc2626';
    const bgCls  = pct >= 80 ? 'bg-success' : pct >= 50 ? 'bg-warning' : 'bg-danger';
    const label  = pct >= 80 ? 'Excellent'  : pct >= 50 ? 'Needs Improvement' : 'Poor';
    const pctStr = pct + '%';

    // Desktop
    const circleD = document.getElementById('score-circle-desk');
    if (circleD) {
        circleD.textContent = pctStr;
        circleD.className   = 'rounded-circle text-white d-flex align-items-center justify-content-center font-weight-bold mr-3 flex-shrink-0 ' + bgCls;
        circleD.style.cssText = 'width:64px;height:64px;font-size:1rem;';
    }
    const barD = document.getElementById('score-bar-desk');
    if (barD) { barD.style.width = pctStr; barD.className = 'score-bar-fill ' + bgCls; }
    const labelD = document.getElementById('score-label-desk');
    if (labelD) { labelD.textContent = label; labelD.style.color = color; }
    ['cnt-pass-desk','cnt-fail-desk','cnt-total-desk'].forEach((id,i) => {
        const el = document.getElementById(id);
        if (el) el.textContent = [passed, total-passed, total][i];
    });

    // Mobile
    const circleM = document.getElementById('mob-score-circle');
    if (circleM) {
        circleM.textContent = pctStr;
        circleM.className   = 'rounded-circle text-white d-flex align-items-center justify-content-center font-weight-bold mr-2 flex-shrink-0 ' + bgCls;
        circleM.style.cssText = 'width:40px;height:40px;font-size:.75rem;';
    }
    const labelM = document.getElementById('mob-score-label');
    if (labelM) { labelM.textContent = label; labelM.style.color = color; }
    const passM = document.getElementById('mob-cnt-pass');
    if (passM) passM.textContent = passed;
    const failM = document.getElementById('mob-cnt-fail');
    if (failM) failM.textContent = total - passed;
}

// ── Collect checklist ────────────────────────────────────────────────────────
function collectChecklist() {
    const data = [];
    // Use mobile cards if visible, else desktop table rows
    const isMobile = window.innerWidth < 768;
    if (isMobile) {
        document.querySelectorAll('#checklist-cards .chk-card-item').forEach(card => {
            data.push({
                sn     : card.dataset.sn   || null,
                name   : card.dataset.name || '',
                status : card.querySelector('.row-status')?.value || 'Fail',
                remarks: card.querySelector('.row-remark')?.value || '',
            });
        });
    } else {
        document.querySelectorAll('#checklist-body .checklist-row').forEach(row => {
            data.push({
                sn     : row.dataset.sn   || null,
                name   : row.dataset.name || '',
                status : row.querySelector('.row-status')?.value  || 'Fail',
                remarks: row.querySelector('.row-remark')?.value  || '',
            });
        });
    }
    return data;
}

// ── Auto after-status based on button pressed ────────────────────────────────
function getAfterStatus(inspectionStatus) {
    return inspectionStatus === 'Passed' ? 'Clean' : 'Dirty';
}

// ── Submit ───────────────────────────────────────────────────────────────────
function submitInspection(status) {
    const cleaningId = document.getElementById('ins-cleaningid').value;
    if (!cleaningId) { toastr.warning('Please select a room first.'); return; }

    const submitBtns = document.querySelectorAll('.btn-submit-action');
    submitBtns.forEach(b => b.disabled = true);

    // Build FormData so Laravel can read $request->input() normally
    const fd = new FormData();
    fd.append('_token',           CSRF);
    fd.append('cleaningid',       cleaningId);
    fd.append('inspectionstatus', status);
    fd.append('remarks',          (document.getElementById('ins-remarks') || {}).value || '');
    fd.append('checklist_data',   JSON.stringify(collectChecklist()));

    fetch(SUBMIT_URL, {
        method : 'POST',
        headers: { 'X-CSRF-TOKEN': CSRF },
        body   : fd,
    })
    .then(r => {
        if (!r.ok) return r.text().then(t => { throw new Error('Server ' + r.status + ': ' + t.substring(0,300)); });
        return r.json();
    })
    .then(d => {
        submitBtns.forEach(b => b.disabled = false);
        if (d.success) {
            Swal.fire({
                icon              : status === 'Passed' ? 'success' : 'error',
                title             : status === 'Passed' ? 'Passed!' : 'Failed!',
                text              : d.message || 'Inspection saved.',
                confirmButtonText : 'OK',
                confirmButtonColor: status === 'Passed' ? '#16a34a' : '#dc2626',
                allowOutsideClick : false,
            }).then(() => {
                window.location.href = "{{ route('inspection') }}";
            });
        } else {
            Swal.fire({
                icon : 'warning',
                title: 'Error',
                text : d.message || 'Submission failed.',
            });
        }
    })
    .catch(err => {
        submitBtns.forEach(b => b.disabled = false);
        console.error('submitInspection error:', err);
        Swal.fire({ icon:'error', title:'Network Error', text: err.message });
    });
}

// ── Reset ────────────────────────────────────────────────────────────────────
function resetForm() {
    document.getElementById('sel-cleaning').value          = '';
    document.getElementById('ins-cleaningid').value        = '';
    document.getElementById('ins-form-wrap').style.display = 'none';
    document.getElementById('already-done-wrap').style.display = 'none';
    document.getElementById('mobile-sticky-bar').style.display = 'none';
    document.getElementById('ins-remarks').value = '';
    ['disp-insno','disp-roomno','disp-floor','disp-roomtype',
     'disp-hk','disp-start','disp-end','disp-before'
    ].forEach(id => {
        const el = document.getElementById(id);
        if (el) el.textContent = '—';
    });
}

// ── Init ─────────────────────────────────────────────────────────────────────
document.addEventListener('DOMContentLoaded', function () {
    const sel = document.getElementById('sel-cleaning');
    if (sel) sel.value = '';
    updateScore();
});

// ── Inspection page: nav logo swap ───────────────────────────────────────────
document.addEventListener('DOMContentLoaded', function () {
    // .logo-abbr ke andar jo img hai usse inspection icon se replace karo
    var abbrImg = document.querySelector('.nav-header .logo-abbr img');
    if (abbrImg) {
        // Font Awesome icon ko canvas-style SVG data URL se replace karo
        abbrImg.style.display = 'none';
        var iconEl = document.createElement('span');
        iconEl.innerHTML = '<i class="fa-solid fa-clipboard-check" style="font-size:1.6rem;color:#fff;"></i>';
        iconEl.style.cssText = 'display:flex;align-items:center;justify-content:center;width:100%;height:100%;';
        abbrImg.parentNode.appendChild(iconEl);
    }

    // dealer_logo wali nav (dealer logo image) — uske upar inspection badge overlay karo
    var dealerNav = document.querySelector('.nav-header > img');
    if (dealerNav) {
        var wrap = dealerNav.parentNode;
        wrap.style.position = 'relative';
        var badge = document.createElement('span');
        badge.innerHTML = '<i class="fa-solid fa-clipboard-check"></i>';
        badge.style.cssText = 'position:absolute;top:4px;right:4px;background:#1e3a5f;color:#fff;'
            + 'border-radius:50%;width:22px;height:22px;font-size:11px;'
            + 'display:flex;align-items:center;justify-content:center;box-shadow:0 1px 4px rgba(0,0,0,.3);';
        wrap.appendChild(badge);
    }
});
setInterval(function () {
    $('input[type="text"], input[type="number"], input[type="email"], textarea').prop('readonly', false);
}, 1000);

// ── QR Scan se aaya: cleaningid URL param se auto-select karo ────────────────
document.addEventListener('DOMContentLoaded', function () {
    const params     = new URLSearchParams(window.location.search);
    const qrCleaning = params.get('cleaningid');
    if (!qrCleaning) return;

    const sel = document.getElementById('sel-cleaning');
    if (!sel) return;

    // Dropdown mein matching option select karo
    for (let i = 0; i < sel.options.length; i++) {
        if (sel.options[i].value === qrCleaning) {
            sel.selectedIndex = i;
            fetchInspectionData();  // auto-load karo
            break;
        }
    }
});

</script>

@endsection
