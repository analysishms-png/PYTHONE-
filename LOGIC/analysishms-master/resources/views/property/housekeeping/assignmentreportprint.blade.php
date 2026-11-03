@extends('property.layouts.main')
@section('main-container')

<style>
    .hka .hka-sb { display:flex; align-items:center; justify-content:space-between; gap:.75rem; flex-wrap:wrap; }
    .hka .hka-flex-row { display:flex; align-items:center; gap:.75rem; flex-wrap:wrap; }
    .hka .table th, .hka .table td { padding:.55rem .75rem; font-size:.88rem; vertical-align:middle; }
    .hka .card { overflow:hidden; border-radius:.85rem; }
    .hka .card-header { border-bottom:1px solid #e9ecef; background:#fff; }
    .hka .center-actions { min-height:420px; display:flex; flex-direction:column; justify-content:center; align-items:center; gap:.6rem; }
    .hka .center-actions .action-btn { width:48px; height:48px; display:flex; align-items:center; justify-content:center; border-radius:.65rem; border:1px solid #dee2e6; background:#fff; cursor:pointer; }
    .hka .center-actions .action-btn:hover { background:#f1f5ff; border-color:#bac8ff; }
    .hka .text-label { font-size:.82rem; color:#6c757d; }
    .hka .table thead th { border-bottom:2px solid #dee2e6; font-weight:700; text-transform: uppercase; letter-spacing: .01em; }
    .hka .table td, .hka .table th { border-top:none; font-size:.93rem; }
    .hka .form-control, .hka .form-select { border-radius:.5rem; font-size:.98rem; }
    .hka .form-select { min-height: calc(1.5em + 0.85rem + 2px); }
    .hka .field-label { font-size: .95rem; font-weight: 700; color: #2c3e50; }
    .hka .heading-assignment-name { font-size: 1.35rem; font-weight: 800; margin-bottom: 1rem; color: #1f2937; }    .bg-purple { background-color:#6f42c1 !important; color:#fff !important; }
    .hk-block { border:1px solid #e9ecef; border-radius:.75rem; overflow:hidden; margin-bottom:.6rem; }
    .hk-block .hk-header { background:#f8f9fa; padding:.6rem 1rem; cursor:pointer; display:flex; align-items:center; justify-content:space-between; gap:.5rem; flex-wrap:wrap; }
    .hk-block .hk-header:hover { background:#f1f5ff; }
    .hk-block .hk-header .hk-room-count { font-weight:700; color:#0d6efd; background:none; border:none; padding:0; }
    .hk-block .hk-body { display:none; }
    .hk-block.open .hk-body { display:block; }
    .hk-block .hk-body-scroll { max-height:320px; overflow-y:auto; }
</style>

<div class="content-body">
<div class="container-fluid hka px-4 py-3">
<div class="row gx-3 mb-3">
    <div class="col-12">
        <h2 class="heading-assignment-name">Assignment</h2>
    </div>
    <div class="col-auto">
        <label class="form-label field-label mb-1">Assignment Date</label>
        <input type="text" class="form-control form-control-sm fw-semibold"
               value="{{ \Carbon\Carbon::parse($asOnDate)->format('d-M-Y') }}"
               readonly style="min-width:140px; font-size:.98rem;">
    </div>
    <div class="col-auto">
        <label class="form-label field-label mb-1">Supervisor</label>
        <select id="assignment-supervisor-select" class="form-select form-select-sm" style="min-width:190px; font-size:.98rem;">
            <option value="">Select Supervisor</option>
            @foreach($supervisors as $sup)
                <option value="{{ $sup->code }}">{{ $sup->name }}</option>
            @endforeach
        </select>
    </div> 

<!-- <div class="row gx-3 mb-3">
    <div class="col-auto">
        <label class="form-label fw-bold text-dark d-block mb-1">
            Assignment Date
        </label>
        <input type="text"
               class="form-control form-control-sm fw-semibold"
               value="{{ \Carbon\Carbon::parse($asOnDate)->format('d-M-Y') }}"
               readonly
               style="min-width:115px;">
    </div>

    <div class="col-auto">
        <label class="form-label fw-bold text-dark d-block mb-1">
            Supervisor
        </label>
        <select class="form-select form-select-sm" style="min-width:175px;">
            <option value="">-- Select Supervisor --</option>
            @foreach($supervisors as $sup)
                <option value="{{ $sup->code }}">{{ $sup->name }}</option>
            @endforeach
        </select>
    </div>
</div> -->

    <div class="col ms-auto d-flex flex-wrap gap-2 justify-content-end align-items-center">
        <button class="btn btn-outline-primary btn-sm" id="btn-view-assignment"><i class="fa-solid fa-eye me-1"></i> View Assignment</button>
    </div>
</div>

{{-- Stats Cards --}}
<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 row-cols-xl-7 g-2 mb-3">
@php
$stats = [
    ['fa-door-open',       '#dc3545', 'Total Dirty Rooms',     str_pad($totalDirty,        2, '0', STR_PAD_LEFT)],
    ['fa-bed',             '#fd7e14', 'Vacant Dirty',          str_pad($vacantDirty,       2, '0', STR_PAD_LEFT)],
    ['fa-bed',             '#0d6efd', 'Occupied Dirty',        str_pad($occupiedDirty,     2, '0', STR_PAD_LEFT)],
    ['fa-clock',           '#0dcaf0', 'Today Arrival',        str_pad($earlyCheckin,      2, '0', STR_PAD_LEFT)],
    ['fa-magnifying-glass','#6c757d', 'Inspection Pending',    str_pad($inspectionPending, 2, '0', STR_PAD_LEFT)],
    ['fa-users',           '#212529', 'Housekeepers Available', $hkAvailable],
];
@endphp
@foreach($stats as $s)
<div class="col">
    <div class="card shadow-sm h-100">
        <div class="card-body d-flex align-items-center gap-3 py-3 px-3">
            <div class="rounded-3 d-flex align-items-center justify-content-center"
                 style="width:44px;height:44px;background:#f2f4ff;color:{{ $s[1] }};">
                <i class="fa-solid {{ $s[0] }} fa-lg"></i>
            </div>
            <div>
                <div class="text-label">{{ $s[2] }}</div>
                <div class="fw-bold" style="font-size:1.35rem;color:{{ $s[1] }};">{{ $s[3] }}</div>
            </div>
        </div>
    </div>
</div>
@endforeach
</div>

{{-- Main 3-column Panel --}}
<div class="row gx-2 mb-3">

{{-- LEFT: Unassigned Rooms --}}
<div class="col-12 col-xl-5">
    <div class="card shadow-sm h-100">
        <div class="card-header py-3 px-3">
            <div class="hka-sb">
                <span class="fw-semibold">UNASSIGNED ROOMS (<span id="unassigned-count">{{ count($unassignedRooms) }}</span>)</span>
                <input class="form-control form-control-sm" id="search-unassigned"
                       placeholder="Search Room No." style="max-width:180px;">
            </div>
        </div>
        <div class="table-responsive" style="max-height:420px;overflow:auto;">
            <table class="table table-sm table-hover mb-0 align-middle">
                <thead class="table-light">
                    <tr>
                        <th class="text-center" style="width:36px;">
                            <input type="checkbox" id="chk-unassigned-all">
                        </th>
                        <th>Room No.</th>
                        <th>Floor</th>
                        <th>Status</th>
                        <th>Type</th>
                        <th>CType</th>
                        
                    </tr>
                </thead>
                <tbody id="unassigned-tbody">
                    @forelse($unassignedRooms as $r)
                    <tr data-roomno="{{ $r->roomno }}"
                        data-floor="{{ $r->floor }}"
                        data-status="{{ $r->roomstatus }}"
                        data-type="{{ $r->type ?? '' }}" >
                        <td class="text-center">
                            <input type="checkbox" class="chk-unassigned-room">
                        </td>
                        <td class="fw-semibold">{{ $r->roomno }}</td>
                        <td>{{ $r->floor }}</td>
                        <td>
                            @if(str_contains($r->roomstatus, 'Vacant'))
                                <span class="text-primary fw-semibold">{{ $r->roomstatus }}</span>
                            @else
                                <span class="text-warning fw-semibold">{{ $r->roomstatus }}</span>
                            @endif
                        </td>
                        <td>{{ $r->type ?? '—' }}</td>
                        <td>{{ str_contains($r->roomstatus, 'Vacant') ? 'Checkout Cleaning' : 'Normal Cleaning' }}</td>
                        <!-- <td><input type="number" class="form-control form-control-sm py-0 est-time-input"
                                   min="0" placeholder="Min" style="width:60px;font-size:.78rem;"></td> -->
                       
                    </tr>
                    @empty
                    <tr id="unassigned-empty-row">
                        <td colspan="7" class="text-center text-muted py-4">No unassigned dirty rooms found.</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
        <div class="card-footer bg-white text-end py-2">
            Total Rooms : <strong class="text-primary" id="unassigned-total">{{ count($unassignedRooms) }}</strong>
        </div>
    </div>
    <div class="d-flex flex-wrap gap-3 mt-2 small">
        <div class="d-flex align-items-center gap-1">
            <span class="fw-semibold text-danger">High</span>
        </div>
        <div class="d-flex align-items-center gap-1">
            <span class="fw-semibold text-warning">Medium</span>
        </div>
        <div class="d-flex align-items-center gap-1">
            <span class="fw-semibold text-success">Normal</span>
        </div>
        <div class="d-flex align-items-center gap-1">
            <span class="badge bg-purple" style="font-size:.7rem;">VIP</span> VIP Room
        </div>
    </div>
</div>

{{-- MIDDLE: Arrow Buttons --}}
<div class="col-12 col-xl-1 d-flex justify-content-center">
    <div class="center-actions w-100 p-2 rounded-4 shadow-sm" style="background:#fff;border:1px solid #e9ecef;min-height:434px;">
        <button class="action-btn" id="btn-assign-selected" title="Assign selected rooms">
            <i class="fa-solid fa-arrow-right"></i>
        </button>
        <button class="action-btn" id="btn-unassign-selected" title="Unassign selected rooms">
            <i class="fa-solid fa-arrow-left"></i>
        </button>
        <button class="action-btn" id="btn-assign-all" title="Assign all rooms">
            <i class="fa-solid fa-forward-step"></i>
        </button>
        <button class="action-btn" id="btn-unassign-all" title="Unassign all rooms">
            <i class="fa-solid fa-backward-step"></i>
        </button>
    </div>
</div>

{{-- RIGHT: Assign to Housekeepers --}}
<div class="col-12 col-xl-6">
    <div class="card shadow-sm h-100" style="min-height:430px;">
        <div class="card-header py-3 px-3">
            <div class="hka-sb">
                <span class="fw-semibold">ASSIGN TO HOUSEKEEPERS</span>
                <div class="d-flex align-items-center gap-2">
                    <span class="text-label">Total Assigned : <strong id="total-assigned-count">0</strong></span>
                    <select class="form-select form-select-sm" id="inline-hk-select" style="min-width:160px;">
                        <option value=""> Select Housekeeper </option>
                        @foreach($housekeepers as $hkr)
                            <option value="{{ $hkr->scode }}" data-name="{{ $hkr->name }}">{{ $hkr->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
        <div class="p-2 overflow-auto" id="hk-list-container" style="max-height:420px;">
            <div class="text-center text-muted py-5">
                <i class="fa-solid fa-user-plus fa-2x mb-2 d-block text-secondary"></i>
                Select a housekeeper to start assigning rooms.
            </div>
        </div>

    </div>
</div>
</div>{{-- end main row --}}

{{-- ── Bottom Row: Summary + Cleaning Started Rooms ── --}}
<div class="row gx-2 mb-3">
    @php
        $initialAssigned = collect($assignedRoomsByHk)->sum(fn($v) => count($v['rows'] ?? []));
        $initialUnassigned = count($unassignedRooms);
        $cleaningInProgressCount = isset($cleaningStartedRooms) ? $cleaningStartedRooms->count() : 0;
    @endphp

    {{-- Assignment Summary --}}
    <div class="col-lg-4">
        <div class="card shadow-sm h-100">
            <div class="card-header py-3 px-3"><span class="fw-semibold">ASSIGNMENT SUMMARY</span></div>
            <div class="card-body px-3 py-2">
                <div class="d-flex justify-content-between py-2" style="font-size:.92rem;border-bottom:1px solid #f0f0f0;">
                    <span>Total Dirty Rooms</span><span class="fw-semibold">{{ $totalDirty }}</span>
                </div>
                <div class="d-flex justify-content-between py-2" style="font-size:.92rem;border-bottom:1px solid #f0f0f0;">
                    <span>Total Assigned Rooms</span><span class="fw-semibold" id="sum-assigned">{{ $initialAssigned }}</span>
                </div>
                <div class="d-flex justify-content-between py-2" style="font-size:.92rem;border-bottom:1px solid #f0f0f0;">
                    <span>Total Unassigned Rooms</span>
                    <span class="fw-semibold" id="sum-unassigned" style="color:#dc3545;">{{ $initialUnassigned }}</span>
                </div>
                <div class="d-flex justify-content-between py-2" style="font-size:.92rem;">
                    <span><i class="fa-solid fa-broom me-1 text-success"></i>Cleaning In Progress</span>
                    <span class="fw-semibold text-success">{{ $cleaningInProgressCount }}</span>
                </div>
            </div>
        </div>
    </div>

    {{-- Cleaning Started Rooms (the square area from screenshot) --}}
    <div class="col-lg-8">
        <div class="card shadow-sm h-100" style="border-left:4px solid #198754;">
            <div class="card-header py-2 px-3 d-flex align-items-center justify-content-between"
                 style="background:linear-gradient(135deg,#d1e7dd,#f0fff4);">
                <span class="fw-bold text-success fs-6">
                    <i class="fa-solid fa-broom me-2"></i>Cleaning Started Rooms
                    @if($cleaningInProgressCount > 0)
                        <span class="badge bg-success ms-2">{{ $cleaningInProgressCount }}</span>
                    @endif
                </span>
            </div>
            <div class="card-body p-0" style="min-height:120px;">
                @if($cleaningInProgressCount > 0)
                    <div class="table-responsive" style="max-height:200px; overflow-y:auto;">
                        <table class="table table-sm table-hover mb-0 align-middle" style="font-size:.85rem;">
                            <thead class="table-success" style="position:sticky;top:0;z-index:1;">
                                <tr>
                                    <th>Room No</th>
                                    <th>Floor</th>
                                    <th>Type</th>
                                    <th>Status</th>
                                    <th>CType</th>
                                    <th>Housekeeper</th>
                                    <th>Supervisor</th>
                                    <th>Ass No</th>
                                    <th>Cleaning</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($cleaningStartedRooms as $cr)
                                <tr>
                                    <td class="fw-bold">{{ $cr->roomno }}</td>
                                    <td>{{ $cr->floor ?? '—' }}</td>
                                    <td>{{ $cr->type ?? '—' }}</td>
                                    <td>
                                        @if(str_contains($cr->roomstatus ?? '', 'Occupied'))
                                            <span class="text-primary fw-semibold" style="font-size:.8rem;">{{ $cr->roomstatus }}</span>
                                        @else
                                            <span class="text-warning fw-semibold" style="font-size:.8rem;">{{ $cr->roomstatus }}</span>
                                        @endif
                                    </td>
                                    <td>{{ $cr->ctypename ?? '—' }}</td>
                                    <td>{{ $cr->hkname ?? '—' }}</td>
                                    <td>{{ $cr->supname ?? '—' }}</td>
                                    <td>
                                        @if($cr->assno)
                                            <span class="fw-bold" style="font-size:12px;">#{{ $cr->assno }}</span>
                                        @else
                                            <span class="text-muted">—</span>
                                        @endif
                                    </td>
                                    <td>
                                        <span class="fw-bold text-warning" style="font-size:12px;">
                                            <i class="fa-solid fa-spinner fa-spin me-1" style="font-size:.65rem;"></i>In Progress
                                        </span>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @else
                    <div class="text-center text-muted py-4">
                        <i class="fa-solid fa-broom fa-2x mb-2 d-block opacity-25"></i>
                        <small>No cleaning in progress</small>
                    </div>
                @endif
            </div>
        </div>
    </div>

</div>{{-- end bottom row --}}

<div class="d-flex justify-content-end gap-2 mb-2">
    <button class="btn btn-outline-primary px-4 fw-semibold" id="btn-print-assignment">
        <i class="fa-solid fa-print me-2"></i> Print
    </button>
    <button class="btn btn-success px-4 fw-semibold" id="btn-save-assignment">
        <i class="fa-solid fa-floppy-disk me-1"></i> Save Assignment
    </button>
</div>



</div>
</div>

<script>
$(window).on('load', function () {

    var hkStore  = {};
    var activeHk = null;
    var cleaningTypeMeta = @json(collect($cleaningTypes)->mapWithKeys(function($ct) {
        return [$ct->code => ['name' => $ct->name, 'esttime' => $ct->esttime]];
    }));

    var assignedRoomsByHk = @json($assignedRoomsByHk ?? []);
    var supervisorsMap = @json(collect($supervisors)->mapWithKeys(fn($s) => [$s->code => $s->name]));

    function getDefaultCtypeCodeFromStatus(status) {
        if (!status) return '';
        status = String(status).toLowerCase();
        if (status.indexOf('vacant') !== -1) return findCleaningTypeCodeByName('checkout cleaning');
        if (status.indexOf('occupied') !== -1) return findCleaningTypeCodeByName('normal cleaning');
        return '';
    }

    function findCleaningTypeCodeByName(name) {
        name = String(name || '').toLowerCase();
        for (var code in cleaningTypeMeta) {
            if (!cleaningTypeMeta.hasOwnProperty(code)) continue;
            if (String(cleaningTypeMeta[code].name).toLowerCase() === name) return code;
        }
        return '';
    }

    function buildCtypeSelect(selected) {
        var html = '<select class="form-select form-select-sm ctype-select" style="min-width:150px;font-size:.88rem;">';
        html += '<option value="">—</option>';
        for (var code in cleaningTypeMeta) {
            if (!cleaningTypeMeta.hasOwnProperty(code)) continue;
            var item = cleaningTypeMeta[code];
            html += '<option value="' + code + '"' + (String(code) === String(selected) ? ' selected' : '') + '>' + item.name + '</option>';
        }
        html += '</select>';
        return html;
    }

    function getEstTimeDisplay(ctypeCode) {
        if (!ctypeCode || !cleaningTypeMeta[ctypeCode]) return '—';
        return cleaningTypeMeta[ctypeCode].esttime || '—';
    }

    function getCleaningTypeName(ctypeCode) {
        if (!ctypeCode || !cleaningTypeMeta[ctypeCode]) return '—';
        return cleaningTypeMeta[ctypeCode].name || '—';
    }

    function mapStatusToCtype(s) {
        if (!s) return '—';
        var status = String(s).toLowerCase();
        if (status.indexOf('vacant') !== -1) return 'Checkout Cleaning';
        if (status.indexOf('occupied') !== -1) return 'Normal Cleaning';
        return '—';
    }

    function statusHtml(s) {
        if (s && s.toLowerCase().indexOf('vacant') !== -1)
            return '<span class="text-primary fw-semibold">' + s + '</span>';
        return '<span class="text-warning fw-semibold">' + (s || '') + '</span>';
    }

    function getRowData(row) {
        var status = $(row).data('status') || '';
        var ctype  = $(row).find('.ctype-select').val() || $(row).data('ctype') || getDefaultCtypeCodeFromStatus(status);
        return {
            roomno:   String($(row).data('roomno')),
            floor:    $(row).data('floor')    || '',
            status:   status,
            type:     $(row).data('type')     || '',
            ctype:    ctype,
            esttime:  getEstTimeDisplay(ctype),
        };
    }

    function cloneRoomObject(src) {
        var status = src.roomstatus || src.status || '';
        var ctype = src.ctype || getDefaultCtypeCodeFromStatus(status);
        return {
            roomno:  String(src.roomno),
            floor:   src.floor || '',
            status:  status,
            type:    src.type || '',
            ctype:   ctype,
            esttime: src.esttime || getEstTimeDisplay(ctype)
        };
    }

    function loadAssignedRoomsFromServer() {
        $.each(assignedRoomsByHk, function (scode, data) {
            var name = $('#inline-hk-select option[value="' + scode + '"]').data('name') || '';
            hkStore[scode] = {
                name: name || 'Housekeeper',
                supervisor: data.supervisor || '',
                assno: data.assno || '',
                rooms: $.map(data.rows || [], function (row) {
                    return cloneRoomObject(row);
                })
            };
        });

        // Don't auto-open any HK — all start closed
    }

    // 6 columns: checkbox | roomno | floor | status | type | ctype
    function buildUnassignedRow(d) {
        var ctypeCode = d.ctype || getDefaultCtypeCodeFromStatus(d.status);
        var ctypeName = getCleaningTypeName(ctypeCode) || mapStatusToCtype(d.status);
        return '<tr data-roomno="' + d.roomno + '" data-floor="' + d.floor + '" data-status="' + d.status + '" data-type="' + d.type + '" data-ctype="' + ctypeCode + '">'
            + '<td class="text-center"><input type="checkbox" class="chk-unassigned-room"></td>'
            + '<td class="fw-semibold">' + d.roomno + '</td>'
            + '<td>' + (d.floor || '—') + '</td>'
            + '<td>' + statusHtml(d.status) + '</td>'
            + '<td>' + (d.type || '—') + '</td>'
            + '<td>' + ctypeName + '</td>'
            + '</tr>';
    }

    function updateCounts() {
        var assigned = 0;
        $.each(hkStore, function (k, v) { assigned += v.rooms.length; });
        var unassigned = $('#unassigned-tbody tr[data-roomno]').length;
        $('#total-assigned-count').text(assigned);
        $('#unassigned-count').text(unassigned);
        $('#unassigned-total').text(unassigned);
        $('#sum-assigned').text(assigned);
        $('#sum-unassigned').text(unassigned);
        $('#chk-unassigned-all').prop('checked', false);
    }

    function renderHkBlock(scode) {
        var hk     = hkStore[scode];
        var isOpen = (String(scode) === String(activeHk));
        var rc     = hk.rooms.length;
        var supName = hk.supervisor ? (supervisorsMap[hk.supervisor] || '') : '';
        var h = '<div class="hk-block' + (isOpen ? ' open' : '') + '" id="hk-block-' + scode + '" data-scode="' + scode + '">';
        h += '<div class="hk-header" data-toggle-hk="' + scode + '">';
        h += '<div class="hka-flex-row">';
        h += '<i class="fa-solid ' + (isOpen ? 'fa-chevron-down' : 'fa-chevron-right') + ' text-muted me-1"></i>';
        h += '<i class="fa-solid fa-circle-user text-success"></i>';
        h += '<span class="fw-semibold">' + hk.name + '</span>';
        h += '<span class="hk-room-count">' + rc + ' Room' + (rc !== 1 ? 's' : '') + '</span>';
        h += '<span class="hk-supervisor-badge badge bg-light text-dark ms-2" style="font-size:.75rem;">' + (supName ? 'Sup: ' + supName : '') + (hk.assno ? ' | AssNo: ' + hk.assno : '') + '</span>';
        h += '</div>';
        // btn-remove-hk removed
        h += '</div>';  // end hk-header
        if (isOpen) {
            h += '<div class="hk-body">';
            h += '<div class="hk-body-scroll">';
            h += '<table class="table table-sm table-hover mb-0 align-middle">';
            h += '<thead class="table-light"><tr>';
            h += '<th class="text-center" style="width:36px;"><input type="checkbox" class="chk-hk-all" data-scode="' + scode + '"></th>';
            h += '<th>Room No.</th><th>Floor</th><th>Status</th><th>Type</th><th>CType</th><th>Est Time</th>';
            h += '</tr></thead><tbody>';
            if (rc === 0) {
                h += '<tr><td colspan="7" class="text-center text-muted py-3">No rooms assigned.</td></tr>';
            } else {
                $.each(hk.rooms, function (i, d) {
                    h += '<tr data-roomno="' + d.roomno + '" data-floor="' + d.floor + '"'
                       + ' data-status="' + d.status + '" data-type="' + d.type + '"'
                       + ' data-ctype="' + (d.ctype || '') + '" data-esttime="' + (d.esttime || '') + '">';
                    h += '<td class="text-center"><input type="checkbox" class="chk-hk-room"></td>';
                    h += '<td class="fw-semibold">' + d.roomno + '</td>';
                    h += '<td>' + (d.floor || '—') + '</td>';
                    h += '<td>' + statusHtml(d.status) + '</td>';
                    h += '<td>' + (d.type || '—') + '</td>';
                    h += '<td>' + buildCtypeSelect(d.ctype) + '</td>';
                    h += '<td class="hk-est-time-cell">' + (d.esttime || getEstTimeDisplay(d.ctype)) + '</td>';
                    // btn-remove-room td removed
                    h += '</tr>';
                });
            }
            h += '</tbody></table>';
            h += '</div>';  // end hk-body-scroll
            // btn-unassign-hk footer removed
            h += '</div>';  // end hk-body
        }
        h += '</div>';  // end hk-block
        return h;
    }

    function renderAll() {
        if (!Object.keys(hkStore).length) {
            $('#hk-list-container').html(
                '<div class="text-center text-muted py-5">'
                + '<i class="fa-solid fa-user-plus fa-2x mb-2 d-block text-secondary"></i>'
                + 'Select a housekeeper and press the assign arrow to start assigning rooms.</div>'
            );
            updateCounts();
        } else {
            var h = '';
            $.each(hkStore, function (sc) { h += renderHkBlock(sc); });
            $('#hk-list-container').html(h);
            updateCounts();
        }
    }

    loadAssignedRoomsFromServer();
    renderAll();

    // ── No HK auto-opened — dropdown starts empty ──────────────────────────────
    // (All HK blocks are closed initially, user clicks to expand)
    // ────────────────────────────────────────────────────────────────────────────

    // ── Supervisor Validation Helper ─────────────────────────────────────────────
    function checkSupervisorSelected() {
        var sup = $('#assignment-supervisor-select').val() || '';
        if (!sup) {
            $('#assignment-supervisor-select').addClass('is-invalid');
            return false;
        }
        $('#assignment-supervisor-select').removeClass('is-invalid');
        return true;
    }

    // ── Supervisor dropdown — updates only the currently expanded HK ──────────────
    // No HK open? Dropdown value is simply stored until an HK is expanded/selected.
    $('#assignment-supervisor-select').on('change', function () {
        var sup = $(this).val() || '';
        if (sup) {
            $(this).removeClass('is-invalid');
        }
        // Update only the currently active (expanded) HK's supervisor
        if (activeHk && hkStore[activeHk]) {
            hkStore[activeHk].supervisor = sup;
            renderAll();
        }
    });

    // ── Inline HK select → auto-expand block ───────────────────────────────────────
    $('#inline-hk-select').on('change', function () {
        var selectedHk = String($(this).val());
        if (!selectedHk || selectedHk === '') return;

        var name = $(this).find('option:selected').data('name') || '';

        // If HK doesn't exist in store yet, create an empty entry — NO supervisor copied
        if (!hkStore[selectedHk]) {                    hkStore[selectedHk] = {
                name: name,
                supervisor: '',  // Fresh HK starts with no supervisor
                assno: '',
                rooms: []
            };
        }

        // Make this HK active (expanded)
        activeHk = selectedHk;
        // If HK has no supervisor but dropdown has a value, apply dropdown to HK
        if (!hkStore[selectedHk].supervisor) {
            var dropSup = $('#assignment-supervisor-select').val() || '';
            if (dropSup) {
                hkStore[selectedHk].supervisor = dropSup;
            }
        }
        // Sync dropdown to show this HK's supervisor
        $('#assignment-supervisor-select').val(hkStore[selectedHk].supervisor || '');
        renderAll();
    });

    // String() fix: jQuery .data() returns integer for numeric scode
    $(document).on('click', '[data-toggle-hk]', function (e) {
        var sc = String($(this).data('toggle-hk'));
        activeHk = (activeHk === sc) ? null : sc;
        // When expanding an HK, show ITS supervisor in dropdown (or clear if none)
        if (activeHk && hkStore[activeHk]) {
            // If HK has no supervisor but dropdown has a value, apply dropdown to HK
            if (!hkStore[activeHk].supervisor) {
                var dropSup = $('#assignment-supervisor-select').val() || '';
                if (dropSup) {
                    hkStore[activeHk].supervisor = dropSup;
                }
            }
            $('#assignment-supervisor-select').val(hkStore[activeHk].supervisor || '');
        }
        renderAll();
    });

    $(document).on('change', '.chk-hk-all', function () {
        $('#hk-block-' + $(this).data('scode') + ' .chk-hk-room').prop('checked', $(this).prop('checked'));
    });

    $(document).on('change', '#chk-unassigned-all', function () {
        $('.chk-unassigned-room').prop('checked', $(this).prop('checked'));
    });

    $(document).on('change', '.ctype-select', function () {
        var $row = $(this).closest('tr');
        var selected = $(this).val();
        $row.find('.hk-est-time-cell').text(getEstTimeDisplay(selected));

        var sc = $row.closest('.hk-block').data('scode');
        if (!sc || !hkStore[sc]) return;
        var roomno = String($row.data('roomno'));
        $.each(hkStore[sc].rooms, function (i, d) {
            if (String(d.roomno) === roomno) {
                d.ctype = selected;
                d.esttime = getEstTimeDisplay(selected);
                return false;
            }
        });
    });

    $('#btn-assign-selected').on('click', function () {
        // Check: either top dropdown has a supervisor OR the active HK already has one
        var supOk = checkSupervisorSelected() || (activeHk && hkStore[activeHk] && hkStore[activeHk].supervisor);
        if (!supOk) {
            Swal.fire('Validation Error', 'Please select a Supervisor first.', 'warning');
            return;
        }
        // If top dropdown has a value, sync it to the active HK
        var topSup = $('#assignment-supervisor-select').val() || '';
        if (topSup && activeHk && hkStore[activeHk]) {
            hkStore[activeHk].supervisor = topSup;
        }
        // If user just came without selecting from dropdown, try inline-hk-select value
        if (!activeHk) {
            var selectedHk = String($('#inline-hk-select').val());
            if (selectedHk && selectedHk !== '') {
                if (!hkStore[selectedHk]) {
                    var name = $('#inline-hk-select option:selected').data('name');
                    hkStore[selectedHk] = { name: name, supervisor: '', assno: '', rooms: [] };
                }
                activeHk = selectedHk;
                // Apply dropdown supervisor to the now-active HK (user's intent via the button)
                var dropSup = $('#assignment-supervisor-select').val() || '';
                if (dropSup) {
                    hkStore[activeHk].supervisor = dropSup;
                }
                $('#assignment-supervisor-select').val(hkStore[activeHk].supervisor || '');
                renderAll();
            }
        }
        if (!activeHk) { Swal.fire('No Selection', 'Please select and expand a housekeeper first.', 'warning'); return; }
        var sel = $('#unassigned-tbody tr[data-roomno]').filter(function () {
            return $(this).find('.chk-unassigned-room').is(':checked');
        });
        if (!sel.length) { Swal.fire('No Rooms Selected', 'Please select at least one room.', 'warning'); return; }
        sel.each(function () {
            hkStore[activeHk].rooms.push(getRowData(this));
            $(this).remove();
        });
        if (!$('#unassigned-tbody tr[data-roomno]').length) {
            $('#unassigned-tbody').html(
                '<tr id="unassigned-empty-row"><td colspan="7" class="text-center text-muted py-4">'
                + 'No unassigned dirty rooms found.</td></tr>'
            );
        }
        renderAll();
    });

    $('#btn-unassign-selected').on('click', function () {
        if (!activeHk) { Swal.fire('No Selection', 'Please expand a housekeeper block first.', 'warning'); return; }
        var sc  = activeHk;
        var sel = $('#hk-block-' + sc + ' tr[data-roomno]').filter(function () {
            return $(this).find('.chk-hk-room').is(':checked');
        });
        if (!sel.length) { Swal.fire('No Rooms Selected', 'Please select at least one assigned room.', 'warning'); return; }

        var roomsToUnassign = [];
        sel.each(function () {
            roomsToUnassign.push({ roomno: String($(this).data('roomno')), code: String(sc) });
        });

        doUnassign(roomsToUnassign, function () {
            sel.each(function () {
                var d = getRowData(this);
                hkStore[sc].rooms = $.grep(hkStore[sc].rooms, function (r) {
                    return String(r.roomno) !== String(d.roomno);
                });
                $('#unassigned-empty-row').remove();
                $('#unassigned-tbody').append(buildUnassignedRow(d));
            });
            renderAll();
        });
    });

    $('#btn-assign-all').on('click', function () {
        if (!activeHk) { Swal.fire('No Selection', 'Please add and expand a housekeeper first.', 'warning'); return; }
        var rows = $('#unassigned-tbody tr[data-roomno]');
        if (!rows.length) { Swal.fire('No Rooms', 'No unassigned rooms available.', 'info'); return; }
        // Check: either top dropdown has a supervisor OR the active HK already has one
        var supOk = checkSupervisorSelected() || (activeHk && hkStore[activeHk] && hkStore[activeHk].supervisor);
        if (!supOk) {
            Swal.fire('Validation Error', 'Please select a Supervisor first.', 'warning');
            return;
        }
        // Set the active HK's supervisor from dropdown (may have been changed before expanding)
        hkStore[activeHk].supervisor = $('#assignment-supervisor-select').val() || hkStore[activeHk].supervisor || '';
        // Assign all rooms to active HK
        rows.each(function () {
            hkStore[activeHk].rooms.push(getRowData(this));
            $(this).remove();
        });
        $('#unassigned-tbody').html(
            '<tr id="unassigned-empty-row"><td colspan="7" class="text-center text-muted py-4">'
            + 'No unassigned dirty rooms found.</td></tr>'
        );
        renderAll();
    });

    $('#btn-unassign-all').on('click', function () {
        var total = 0;
        $.each(hkStore, function (k, v) { total += v.rooms.length; });
        if (!total) { Swal.fire('No Rooms', 'No assigned rooms to unassign.', 'info'); return; }

        var roomsToUnassign = [];
        $.each(hkStore, function (sc, hk) {
            $.each(hk.rooms, function (i, d) {
                roomsToUnassign.push({ roomno: String(d.roomno), code: String(sc) });
            });
        });

        doUnassign(roomsToUnassign, function () {
            $('#unassigned-empty-row').remove();
            $.each(hkStore, function (sc, hk) {
                $.each(hk.rooms, function (i, d) { $('#unassigned-tbody').append(buildUnassignedRow(d)); });
                hkStore[sc].rooms = [];
            });
            renderAll();
        });
    });

    // ── Shared unassign AJAX helper ───────────────────────────────────────────────
    // Senior ki query per HK:
    // UPDATE hkroomassigns SET assno=0, supervisor='', code=0
    // WHERE propertyid=? AND code=? AND vdate=ncurdate AND roomno IN (...)
    function doUnassign(roomsPayload, onSuccess) {
        Swal.fire({
            title: 'Unassigning...',
            text: 'Please wait.',
            allowOutsideClick: false,
            didOpen: function () { Swal.showLoading(); }
        });

        $.ajax({
            url: '{{ route('assignments.unassign') }}',
            method: 'POST',
            data: {
                _token: '{{ csrf_token() }}',
                rooms: JSON.stringify(roomsPayload)
            },
            success: function (response) {
                if (response.success) {
                    Swal.fire({ icon: 'success', title: 'Done!', text: response.message, timer: 1500, showConfirmButton: false });
                    onSuccess();
                } else {
                    Swal.fire('Error!', response.message || 'Unable to unassign.', 'error');
                }
            },
            error: function () {
                Swal.fire('Error!', 'Server error. Please try again.', 'error');
            }
        });
    }
    // ─────────────────────────────────────────────────────────────────────────────

    function getAssignmentPayload() {
        var assignments = [];
        console.log(`hkstore: ${hkStore}`);
        $.each(hkStore, function (scode, hk) {
            if (!hk.rooms || !hk.rooms.length) {
                return;
            }
            assignments.push({
                scode: scode,
                name: hk.name,
                supervisor: hk.supervisor || '',  // Each HK has its own supervisor
                rooms: $.map(hk.rooms, function (room) {
                    return {
                        roomno: room.roomno,
                        floor: room.floor || '',
                        status: room.status || 'dirty',
                        ctype: room.ctype || '',
                        esttime: room.esttime || ''
                    };
                })
            });
        });
        return assignments;
    }

    $('#btn-save-assignment').on('click', function () {
        // ── Apply dropdown supervisor to ALL HKs missing one ────────────────────
        // var topSup = $('#assignment-supervisor-select').val() || '';
        // if (topSup) {
        //     $.each(hkStore, function (sc, hk) {
        //         if (hk.rooms && hk.rooms.length && !hk.supervisor) {
        //             hk.supervisor = topSup;
        //         }
        //     });
        //     renderAll(); // Update UI badges to reflect newly applied supervisors
        // }
        // ─────────────────────────────────────────────────────────────────────

        // ── Validate: All HKs with rooms must have a supervisor ────────────────
        // var missingSupervisor = [];
        // $.each(hkStore, function (sc, hk) {
        //     if (hk.rooms && hk.rooms.length && !hk.supervisor) {
        //         missingSupervisor.push(hk.name);
        //     }
        // });
        // if (missingSupervisor.length > 0) {
        //     Swal.fire('Missing Supervisor', 'Please set a Supervisor for: ' + missingSupervisor.join(', ') + ' before saving.', 'warning');
        //     return;
        // }
        // ─────────────────────────────────────────────────────────────────────

        var assignments = getAssignmentPayload();

        // console.log(assignments);

        // return;
        if (!assignments.length) {
            Swal.fire('No Data', 'No assigned rooms to save.', 'info');
            return;
        }

        // ── Loading SweetAlert ────────────────────────────────────────────────
        Swal.fire({
            title: 'Saving...',
            text: 'Please wait while assignments are being saved.',
            allowOutsideClick: false,
            didOpen: function () {
                Swal.showLoading();
            }
        });
        // ─────────────────────────────────────────────────────────────────────

        $.ajax({
            url: '{{ route('assignments.save') }}',
            method: 'POST',
            data: {
                _token: '{{ csrf_token() }}',
                assignments: JSON.stringify(assignments)
            },
            success: function (response) {
                if (response.success) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Success!',
                        text: response.message || 'Assignment saved successfully.',
                        timer: 2000,
                        showConfirmButton: true
                    }).then(function () {
                        location.reload();
                    });
                } else {
                    Swal.fire('Error!', response.message || 'Unable to save assignment.', 'error');
                }
            },
            error: function (xhr) {
                var message = 'Unable to save assignment.';
                if (xhr.responseJSON && xhr.responseJSON.message) {
                    message = xhr.responseJSON.message;
                }
                Swal.fire('Error!', message, 'error');
            }
        });
    });

    $('#search-unassigned').on('input', function () {
        var q = $(this).val().toLowerCase();
        $('#unassigned-tbody tr[data-roomno]').each(function () {
            $(this).toggle(String($(this).data('roomno')).toLowerCase().indexOf(q) !== -1);
        });
    });

    // ── View Assignment Report (opens in new tab) ────────────────────────────────
    $('#btn-view-assignment').on('click', function () {
        window.open('{{ route('assignments.view') }}', '_blank');
    });
    // ─────────────────────────────────────────────────────────────────────────────

    // ── Print Assignment (Dropdown Filter) ────────────────────────────────────────
    $('#btn-print-assignment').on('click', function () {
        var hkList = [];
        $.each(hkStore, function (sc, hk) {
            if (hk.rooms && hk.rooms.length) {
                hkList.push({ scode: sc, name: hk.name });
            }
        });
        if (!hkList.length) {
            Swal.fire('No Assignments', 'No rooms have been assigned yet. Please assign rooms before printing.', 'info');
            return;
        }

        // Build dropdown HTML
        var selectHtml = '<select id="swal-print-hk-select" class="form-select" style="width:100%;">';
        selectHtml += '<option value="">All Housekeepers</option>';
        $.each(hkList, function (i, hk) {
            selectHtml += '<option value="' + hk.scode + '">' + hk.name + '</option>';
        });
        selectHtml += '</select>';

        Swal.fire({
            title: 'Select Housekeeper',
            html: selectHtml,
            confirmButtonText: 'Print',
            showCancelButton: true,
            cancelButtonText: 'Cancel',
            preConfirm: function () {
                var selected = $('#swal-print-hk-select').val();
                if (selected === undefined) {
                    Swal.showValidationMessage('Please select an option');
                    return false;
                }
                return selected || 'all';
            }
        }).then(function (result) {
            if (!result.isConfirmed) return;
            var hkCode = result.value;
            var url = '{{ route("assignments.print") }}';
            if (hkCode !== 'all') {
                url += '?hk_code=' + encodeURIComponent(hkCode);
            }
            window.open(url, '_blank');
        });
    });
    // ─────────────────────────────────────────────────────────────────────────────

});
</script>

@endsection