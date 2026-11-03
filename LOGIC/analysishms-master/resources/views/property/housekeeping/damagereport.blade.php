@extends('property.layouts.main')
@section('main-container')

<style>
/* Datepicker positioning inside input-group (global theme CSS ke sath conflict na ho) */
#dr-date-wrap .datepicker {
    position: absolute !important;
    top: 100% !important;
    left: 0 !important;
    right: auto !important;
    margin-top: 2px;
    z-index: 9999 !important;
}
/* Global theme CSS (.datepicker td/th padding: 5px 10px) calendar me blank space de raha hai — is page par override */
#dr-date-wrap .datepicker table td,
#dr-date-wrap .datepicker table th {
    padding: 0 !important;
    width: 30px !important;
    height: 30px !important;
    line-height: 30px !important;
}
#dr-date-wrap .datepicker {
    padding: 4px !important;
}
#dr-date-wrap .datepicker table tr td span {
    width: 60px !important;
    height: 40px !important;
    line-height: 40px !important;
    margin: 1px !important;
}
</style>

<div class="content-body">
<div class="container-fluid px-4 py-3">

    {{-- BANNER --}}
    <div class="d-flex align-items-center justify-content-between bg-danger text-white rounded p-3 mb-3 shadow-sm"
         style="background:linear-gradient(135deg,#7b1c1c,#c0392b) !important;">
        <div>
            <h3 class="mb-0 fw-bold text-white">
                <i class="fa-solid fa-triangle-exclamation me-2"></i>Damage Report
            </h3>
           
        </div>
       
    </div>

    {{-- NEW ENTRY FORM --}}
    <form id="drForm" novalidate>
        @csrf
        <input type="hidden" id="dr-csrf" value="{{ csrf_token() }}">

        <div class="card shadow-sm border-0 mb-3">
           
            <div class="card-body">

                <div class="row">

                    {{-- LEFT COLUMN --}}
                    <div class="col-lg-8">

                        {{-- Room / Date / Type / Item --}}
                        <div class="card shadow-sm border-0 mb-3">
                            <div class="card-header bg-danger text-white fw-bold small text-uppercase py-2">
                                <i class="fa-solid fa-bed me-1"></i> Room &amp; Damage Info
                            </div>
                            <div class="card-body">
                                <div class="row g-2">

                                    {{-- Room No --}}
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">
                                            Room No <span class="text-danger">*</span>
                                        </label>
                                        <select id="dr-roomno" class="form-control form-control-sm custom-select">
                                            <option value="">-- Select Room --</option>
                                            @foreach($rooms as $room)
                                                <option value="{{ $room }}"
                                                    {{ $preRoomno == $room ? 'selected' : '' }}>
                                                    {{ $room }}
                                                </option>
                                            @endforeach
                                        </select>
                                        <div class="invalid-feedback" id="err-roomno">Room No required.</div>
                                    </div>

                                    {{-- Date --}}
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">
                                            Date <span class="text-danger">*</span>
                                        </label>
                                        <div class="input-group input-group-sm position-relative" id="dr-date-wrap">
                                            <input type="text" id="dr-date" class="form-control"
                                                   placeholder="DD-MM-YYYY" readonly
                                                   style="background:#fff;cursor:pointer;">
                                            <span class="input-group-text"
                                                  onclick="$('#dr-date').datepicker('show')"
                                                  style="cursor:pointer;">
                                                <i class="fa-regular fa-calendar"></i>
                                            </span>
                                        </div>
                                        <div class="invalid-feedback" id="err-date">Date required.</div>
                                    </div>

                                    {{-- Damage Type --}}
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">
                                            Damage Type <span class="text-danger">*</span>
                                        </label>
                                        <select id="dr-damagetype" class="form-control form-control-sm custom-select">
                                            <option value="">-- Select Type --</option>
                                            <option value="Furniture">Furniture</option>
                                            <option value="Electronic">Electronic</option>
                                            <option value="Plumbing">Plumbing</option>
                                            <option value="Bathroom">Bathroom</option>
                                            <option value="Safety">Safety</option>
                                            <option value="Other">Other</option>
                                        </select>
                                        <div class="invalid-feedback" id="err-damagetype">Damage Type required.</div>
                                    </div>

                                    {{-- Item Name --}}
                                    <div class="col-12 col-md-6">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">
                                            Item Name <span class="text-danger">*</span>
                                        </label>
                                        <input type="text" id="dr-item" class="form-control form-control-sm"
                                               placeholder="e.g. Bed headboard, AC remote..." maxlength="100">
                                        <div class="invalid-feedback" id="err-item">Item Name required.</div>
                                    </div>

                                    {{-- Description --}}
                                    <div class="col-12 col-md-6">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">
                                            Description
                                        </label>
                                        <textarea id="dr-description" class="form-control form-control-sm"
                                                  rows="1" placeholder="Briefly describe the damage..."
                                                  maxlength="255" style="resize:none;"></textarea>
                                    </div>

                                </div>{{-- /row --}}
                            </div>
                        </div>

                    </div>{{-- /col-lg-8 --}}

                    {{-- RIGHT COLUMN --}}
                    <div class="col-lg-4">

                        {{-- Entry Info card --}}
                        <div class="card shadow-sm border-0 mb-3">
                            <div class="card-header bg-warning text-white fw-bold small text-uppercase py-2">
                                <i class="fa-solid fa-circle-info me-1"></i> Entry Info
                            </div>
                            <div class="card-body">
                                <div class="row g-2">
                                    <div class="col-6">
                                        <small class="fw-semibold d-block small text-uppercase text-secondary">Status</small>
                                        <div class="fw-bold text-dark mt-1">Pending</div>
                                    </div>
                                    <div class="col-6">
                                        <small class="fw-semibold d-block small text-uppercase text-secondary">Date</small>
                                        <div class="fw-bold mt-1">{{ \Carbon\Carbon::parse($asOnDate)->format('d-M-Y') }}</div>
                                    </div>
                                    <div class="col-12">
                                        <small class="fw-semibold d-block small text-uppercase text-secondary">Time</small>
                                        <div class="fw-bold mt-1" id="dr-clock">--:-- --</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {{-- ACTION BUTTONS --}}
                        <div class="d-flex flex-wrap mb-3">
                            <div class="mr-2 mb-1">
                                <button type="button" id="dr-submit-btn"
                                        class="btn btn-danger fw-bold" onclick="drSubmit()">
                                    <i class="fa-solid fa-paper-plane mr-2"></i>SUBMIT
                                </button>
                            </div>
                            <div class="mb-1">
                                <button type="button" class="btn btn-outline-secondary"
                                        onclick="drClear()">
                                    <i class="fa-solid fa-rotate-left mr-1"></i>Clear
                                </button>
                            </div>
                        </div>

                    </div>{{-- /col-lg-4 --}}

                </div>{{-- /row --}}
            </div>
        </div>
    </form>

    {{-- ALL RECORDS TABLE --}}
    <div class="card shadow-sm border-0 mb-3">
        <div class="card-header d-flex justify-content-between align-items-center py-2"
             style="background:linear-gradient(135deg,#7b1c1c,#c0392b) !important;">
            <span class="fw-bold text-white small text-uppercase">
                <i class="fa-solid fa-list me-1"></i>All Damage Report Entries
            </span>
            <div class="d-flex align-items-center" style="gap:6px;">
                <div class="input-group input-group-sm" style="width:260px;">
                    <input type="text" id="dr-search" class="form-control form-control-sm"
                           placeholder="Search room, type, item, status..."
                           oninput="drSearchTable(this.value)"
                           style="border-radius:4px 0 0 4px;">
                    <span class="input-group-text bg-white" style="cursor:pointer;border-radius:0 4px 4px 0;">
                        <i class="fa-solid fa-magnifying-glass text-secondary"></i>
                    </span>
                </div>
                <span class="badge bg-light text-dark" id="dr-record-count">{{ $records->total() }} Records</span>
            </div>
        </div>

        <div class="card-body p-2">
            <div class="table-responsive">
                <table class="table table-hover table-sm table-bordered align-middle mb-0"
                       id="dr-table" style="font-size:12px;">
                    <thead class="thead-dark">
                        <tr>
                            <th>Damage ID</th>
                            <th>Date</th>
                            <th>Room No</th>
                            <th>Damage Type</th>
                            <th>Item</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Reported By</th>
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($records as $rec)
                        <tr>
                            <td class="fw-bold text-danger">
                                DR/{{ $rec->propertyid }}/{{ $rec->damageid }}
                            </td>
                            <td class="fw-bold">
                                {{ $rec->date ? \Carbon\Carbon::parse($rec->date)->format('d-M-Y') : '' }}
                            </td>
                            <td class="fw-bold">{{ $rec->roomno }}</td>
                            <td class="fw-bold">{{ $rec->damagetype }}</td>
                            <td class="fw-bold">{{ $rec->item }}</td>
                            <td>{{ $rec->description }}</td>
                            <td class="fw-bold text-dark">
                                {{ $rec->status ?? 'Pending' }}
                            </td>
                            <td class="fw-bold">{{ $rec->u_name }}</td>
                            <td class="text-center" style="white-space:nowrap;">
                                {{-- Edit --}}
                                <button type="button"
                                        class="btn btn-sm btn-warning px-2 py-0 mr-1"
                                        title="Edit"
                                        onclick="drOpenEdit(
                                            {{ $rec->id }},
                                            '{{ addslashes($rec->roomno) }}',
                                            '{{ $rec->date ? \Carbon\Carbon::parse($rec->date)->format('d-m-Y') : '' }}',
                                            '{{ addslashes($rec->damagetype) }}',
                                            '{{ addslashes($rec->item) }}',
                                            '{{ addslashes($rec->description) }}',
                                            '{{ addslashes($rec->status ?? 'Pending') }}'
                                        )">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                {{-- Delete --}}
                                <button type="button"
                                        class="btn btn-sm btn-danger px-2 py-0 mr-1"
                                        title="Delete"
                                        onclick="drDelete({{ $rec->id }})">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                                {{-- Print --}}
                                <a href="{{ route('damagereportprint', $rec->id) }}"
                                   target="_blank"
                                   class="btn btn-sm btn-secondary px-2 py-0"
                                   title="Print">
                                    <i class="fa-solid fa-print"></i>
                                </a>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="9" class="text-center text-muted py-4">
                                <i class="fa-solid fa-inbox fa-2x d-block mb-2 opacity-50"></i>
                                No damage report entries yet.
                            </td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            @if($records->hasPages())
            <div class="mt-3 px-2">
                {{ $records->links() }}
            </div>
            @endif
        </div>
    </div>

</div>
</div>

{{-- EDIT MODAL --}}
<div class="modal fade" id="drEditModal" tabindex="-1" role="dialog" aria-labelledby="drEditModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white py-2">
                <h6 class="modal-title fw-bold" id="drEditModalLabel">
                    <i class="fa-solid fa-pen-to-square me-1"></i> Edit Damage Report
                </h6>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input type="hidden" id="edit-sn">
                <div class="row g-2">
                    {{-- Room No --}}
                    <div class="col-6 col-md-4">
                        <label class="form-label fw-semibold small text-uppercase mb-1">Room No <span class="text-danger">*</span></label>
                        <select id="edit-roomno" class="form-control form-control-sm custom-select">
                            <option value="">-- Select Room --</option>
                            @foreach($rooms as $room)
                                <option value="{{ $room }}">{{ $room }}</option>
                            @endforeach
                        </select>
                        <div class="invalid-feedback" id="edit-err-roomno">Room No required.</div>
                    </div>
                    {{-- Date --}}
                    <div class="col-6 col-md-4">
                        <label class="form-label fw-semibold small text-uppercase mb-1">Date <span class="text-danger">*</span></label>
                        <div class="input-group input-group-sm position-relative" id="edit-date-wrap">
                            <input type="text" id="edit-date" class="form-control"
                                   placeholder="DD-MM-YYYY" readonly style="background:#fff;cursor:pointer;">
                            <span class="input-group-text" onclick="$('#edit-date').datepicker('show')" style="cursor:pointer;">
                                <i class="fa-regular fa-calendar"></i>
                            </span>
                        </div>
                        <div class="invalid-feedback" id="edit-err-date">Date required.</div>
                    </div>
                    {{-- Damage Type --}}
                    <div class="col-6 col-md-4">
                        <label class="form-label fw-semibold small text-uppercase mb-1">Damage Type <span class="text-danger">*</span></label>
                        <select id="edit-damagetype" class="form-control form-control-sm custom-select">
                            <option value="">-- Select Type --</option>
                            <option value="Furniture">Furniture</option>
                            <option value="Electronic">Electronic</option>
                            <option value="Plumbing">Plumbing</option>
                            <option value="Bathroom">Bathroom</option>
                            <option value="Safety">Safety</option>
                            <option value="Other">Other</option>
                        </select>
                        <div class="invalid-feedback" id="edit-err-damagetype">Damage Type required.</div>
                    </div>
                    {{-- Item Name --}}
                    <div class="col-12 col-md-6">
                        <label class="form-label fw-semibold small text-uppercase mb-1">Item Name <span class="text-danger">*</span></label>
                        <input type="text" id="edit-item" class="form-control form-control-sm" maxlength="100">
                        <div class="invalid-feedback" id="edit-err-item">Item Name required.</div>
                    </div>
                    {{-- Description --}}
                    <div class="col-12 col-md-6">
                        <label class="form-label fw-semibold small text-uppercase mb-1">Description</label>
                        <textarea id="edit-description" class="form-control form-control-sm"
                                  rows="2" maxlength="255" style="resize:none;"></textarea>
                    </div>
                    {{-- Status --}}
                    <div class="col-6 col-md-4">
                        <label class="form-label fw-semibold small text-uppercase mb-1">Status</label>
                        <select id="edit-status" class="form-control form-control-sm custom-select">
                            <option value="Pending">Pending</option>
                            <option value="Resolved">Resolved</option>
                            <option value="In Progress">In Progress</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer py-2">
                <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">
                    <i class="fa-solid fa-xmark me-1"></i>Cancel
                </button>
                <button type="button" class="btn btn-warning btn-sm fw-bold" id="dr-update-btn" onclick="drUpdate()">
                    <i class="fa-solid fa-floppy-disk me-1"></i>Update
                </button>
            </div>
        </div>
    </div>
</div>

{{-- TOAST --}}
<div id="dr-toast" class="alert shadow-lg position-fixed"
     style="bottom:24px;right:24px;z-index:9999;display:none;min-width:240px;" role="alert"></div>

{{-- SweetAlert2 --}}
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
// ── Live clock (same as lostfound) ────────────────────────────────────────
(function tick() {
    var n = new Date(), h = n.getHours(), m = String(n.getMinutes()).padStart(2,'0');
    var ap = h >= 12 ? 'PM' : 'AM'; h = h % 12 || 12;
    var el = document.getElementById('dr-clock');
    if (el) el.textContent = h + ':' + m + ' ' + ap;
    setTimeout(tick, 30000);
})();

// ── Datepicker init ───────────────────────────────────────────────────────
$(function () {
    var today = '{{ \Carbon\Carbon::parse($asOnDate)->format("d-m-Y") }}';
    $('#dr-date').datepicker({
        format:         'dd-mm-yyyy',
        autoclose:      true,
        todayHighlight: true,
        endDate:        '0d',
        orientation:    'bottom auto',
        container:      '#dr-date-wrap',
    }).datepicker('setDate', today);
});

// ── Validate ──────────────────────────────────────────────────────────────
function drValidate() {
    var fields = [
        { id: 'dr-roomno',    err: 'err-roomno'    },
        { id: 'dr-date',      err: 'err-date'      },
        { id: 'dr-damagetype',err: 'err-damagetype'},
        { id: 'dr-item',      err: 'err-item'      },
    ];
    var ok = true;
    fields.forEach(function (f) {
        var el  = document.getElementById(f.id);
        var err = document.getElementById(f.err);
        if (!el || !el.value.trim()) {
            el && el.classList.add('is-invalid');
            err && err.classList.remove('d-none');
            ok = false;
        } else {
            el.classList.remove('is-invalid');
            err && err.classList.add('d-none');
        }
    });
    return ok;
}

// ── Submit ────────────────────────────────────────────────────────────────
function drSubmit() {
    if (!drValidate()) {
        Swal.fire({ icon: 'warning', title: 'Required Fields', text: 'Please fill all required fields.', confirmButtonColor: '#c0392b' });
        return;
    }

    var roomno      = $('#dr-roomno').val();
    var date        = $('#dr-date').val();
    var damagetype  = $('#dr-damagetype').val();
    var item        = $.trim($('#dr-item').val());
    var description = $.trim($('#dr-description').val());

    var parts  = date.split('-');
    var dbDate = parts[2] + '-' + parts[1] + '-' + parts[0];

    var btn = document.getElementById('dr-submit-btn');
    btn.disabled = true;
    btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin mr-1"></i>Saving...';

    $.ajax({
        url:         '{{ route("storedamagereport") }}',
        type:        'POST',
        contentType: 'application/json',
        data: JSON.stringify({
            _token:      '{{ csrf_token() }}',
            roomno:      roomno,
            date:        dbDate,
            damagetype:  damagetype,
            item:        item,
            description: description,
        }),
        success: function (res) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-paper-plane mr-2"></i>SUBMIT';
            if (res.success) {
                Swal.fire({ icon: 'success', title: 'Saved!', text: res.message, confirmButtonColor: '#c0392b', timer: 1800, showConfirmButton: false })
                    .then(function () { location.reload(); });
            } else {
                Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Could not save.', confirmButtonColor: '#c0392b' });
            }
        },
        error: function (xhr) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-paper-plane mr-2"></i>SUBMIT';
            var msg = 'Server error.';
            try { msg = xhr.responseJSON.message || msg; } catch (e) {}
            Swal.fire({ icon: 'error', title: 'Error', text: msg, confirmButtonColor: '#c0392b' });
        },
    });
}

// ── Clear form ────────────────────────────────────────────────────────────
function drClear() {
    $('#dr-roomno').val('{{ $preRoomno ?? "" }}');
    $('#dr-damagetype').val('');
    $('#dr-item').val('');
    $('#dr-description').val('');
    ['err-roomno','err-date','err-damagetype','err-item'].forEach(function (id) {
        document.getElementById(id).classList.add('d-none');
    });
    document.querySelectorAll('#drForm .is-invalid').forEach(function (el) {
        el.classList.remove('is-invalid');
    });
    $('#dr-date').datepicker('setDate', '{{ \Carbon\Carbon::parse($asOnDate)->format("d-m-Y") }}');
}

// ── Toast (same pattern as lostfound) ────────────────────────────────────
function drToast(msg, type) {
    var t   = document.getElementById('dr-toast');
    var cls = { success:'alert-success', danger:'alert-danger', warning:'alert-warning', info:'alert-info' };
    t.className = 'alert shadow-lg position-fixed ' + (cls[type] || 'alert-info');
    t.innerHTML = msg;
    t.style.display = 'block';
    clearTimeout(t._timer);
    t._timer = setTimeout(function () { t.style.display = 'none'; }, 3500);
}

// ── Keep inputs editable (global theme override guard) ────────────────────
setInterval(function () {
    $('input[type="text"], input[type="number"], input[type="email"], textarea').prop('readonly', false);
}, 1000);

// ── Search / Filter ───────────────────────────────────────────────────────
function drSearchTable(val) {
    val = val.trim().toLowerCase();
    var visible = 0;
    $('#dr-table tbody tr').each(function () {
        var text = $(this).text().toLowerCase();
        var show = !val || text.indexOf(val) !== -1;
        $(this).toggle(show);
        if (show) visible++;
    });
    $('#dr-record-count').text(visible + ' Records');
}

// ── Edit Modal ────────────────────────────────────────────────────────────
$(function () {
    $('#edit-date').datepicker({
        format:         'dd-mm-yyyy',
        autoclose:      true,
        todayHighlight: true,
        orientation:    'bottom auto',
        container:      '#edit-date-wrap',
    });
});

function drOpenEdit(id, roomno, date, damagetype, item, description, status) {
    $('#edit-id').val(id);
    $('#edit-sn').val(id);
    $('#edit-roomno').val(roomno);
    $('#edit-date').datepicker('setDate', date);
    $('#edit-damagetype').val(damagetype);
    $('#edit-item').val(item);
    $('#edit-description').val(description);
    $('#edit-status').val(status);
    // Clear previous validation
    $('#drEditModal .is-invalid').removeClass('is-invalid');
    $('#drEditModal').modal('show');
}

function drEditValidate() {
    var fields = [
        { id: 'edit-roomno',    err: 'edit-err-roomno'     },
        { id: 'edit-date',      err: 'edit-err-date'       },
        { id: 'edit-damagetype',err: 'edit-err-damagetype' },
        { id: 'edit-item',      err: 'edit-err-item'       },
    ];
    var ok = true;
    fields.forEach(function (f) {
        var el  = document.getElementById(f.id);
        var err = document.getElementById(f.err);
        if (!el || !el.value.trim()) {
            el && el.classList.add('is-invalid');
            err && err.classList.remove('d-none');
            ok = false;
        } else {
            el.classList.remove('is-invalid');
            err && err.classList.add('d-none');
        }
    });
    return ok;
}

function drUpdate() {
    if (!drEditValidate()) return;

    var id          = $('#edit-id').val() || $('#edit-sn').val();
    var roomno      = $('#edit-roomno').val();
    var date        = $('#edit-date').val();       // dd-mm-yyyy
    var damagetype  = $('#edit-damagetype').val();
    var item        = $.trim($('#edit-item').val());
    var description = $.trim($('#edit-description').val());
    var status      = $('#edit-status').val();

    // dd-mm-yyyy → yyyy-mm-dd
    var parts  = date.split('-');
    var dbDate = parts[2] + '-' + parts[1] + '-' + parts[0];

    var btn = document.getElementById('dr-update-btn');
    btn.disabled = true;
    btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin me-1"></i>Saving...';

    $.ajax({
        url:         '{{ route("updatedamagereport") }}',
        type:        'POST',
        contentType: 'application/json',
        data: JSON.stringify({
            _token:      '{{ csrf_token() }}',
            id:          id,
            sn:          id,
            roomno:      roomno,
            date:        dbDate,
            damagetype:  damagetype,
            item:        item,
            description: description,
            status:      status,
        }),
        success: function (res) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-floppy-disk me-1"></i>Update';
            if (res.success) {
                $('#drEditModal').modal('hide');
                Swal.fire({ icon: 'success', title: 'Updated!', text: res.message, confirmButtonColor: '#c0392b', timer: 1600, showConfirmButton: false })
                    .then(function () { location.reload(); });
            } else {
                Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Could not update.', confirmButtonColor: '#c0392b' });
            }
        },
        error: function (xhr) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-floppy-disk me-1"></i>Update';
            var msg = 'Server error.';
            try { msg = xhr.responseJSON.message || msg; } catch (e) {}
            Swal.fire({ icon: 'error', title: 'Error', text: msg, confirmButtonColor: '#c0392b' });
        },
    });
}

// ── Delete ────────────────────────────────────────────────────────────────
function drDelete(id) {
    Swal.fire({
        title:              'Delete Entry?',
        text:               'This action cannot be undone.',
        icon:               'warning',
        showCancelButton:   true,
        confirmButtonColor: '#c0392b',
        cancelButtonColor:  '#6c757d',
        confirmButtonText:  '<i class="fa-solid fa-trash me-1"></i>Yes, Delete',
        cancelButtonText:   'Cancel',
    }).then(function (result) {
        if (!result.isConfirmed) return;

        $.ajax({
            url:         '{{ route("deletedamagereport") }}',
            type:        'POST',
            contentType: 'application/json',
            data: JSON.stringify({
                _token: '{{ csrf_token() }}',
                id:     id,
                sn:     id,
            }),
            success: function (res) {
                if (res.success) {
                    Swal.fire({ icon: 'success', title: 'Deleted!', text: res.message, confirmButtonColor: '#c0392b', timer: 1400, showConfirmButton: false })
                        .then(function () { location.reload(); });
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Could not delete.', confirmButtonColor: '#c0392b' });
                }
            },
            error: function () {
                Swal.fire({ icon: 'error', title: 'Error', text: 'Server error while deleting.', confirmButtonColor: '#c0392b' });
            },
        });
    });
}

</script>

@endsection
