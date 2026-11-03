@extends('property.layouts.main')
@section('main-container')
    <style>
        .rsb-metrics-container {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .rsb-stat-card {
            flex: 1 1 120px;
            min-width: 120px;
            background: #ffffff;
        }

        .rsb-icon-box {
            width: 36px;
            height: 36px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 6px;
        }

        /* Room Grid layout */
        .rsb-room-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(110px, 1fr));
            gap: 8px;
        }

        .rsb-room-box {
            height: 82px;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            background: #ffffff;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .rsb-room-box:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1) !important;
        }

        .rsb-b-occupied {
            border-left: 4px solid #2563eb !important;
            color: #2563eb;
        }

        .rsb-b-vclean {
            border-left: 4px solid #16a34a !important;
            color: #16a34a;
        }

        .rsb-b-vdirty {
            border-left: 4px solid #dc2626 !important;
            color: #dc2626;
        }

        .rsb-b-odirty {
            border-left: 4px solid #ea580c !important;
            color: #ea580c;
        }

        .rsb-b-ooo {
            border-left: 4px solid #64748b !important;
            color: #64748b;
        }

        .rsb-b-maint {
            border-left: 4px solid #9333ea !important;
            color: #9333ea;
        }

        .rsb-b-inspect {
            border-left: 4px solid #0891b2 !important;
            color: #0891b2;
        }

        .rsb-fs-xs {
            font-size: 0.95rem !important;
        }

        .rsb-fs-xxs {
            font-size: 0.85rem !important;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid px-3 py-3">

            <!-- Header Section -->
            <div class="d-flex justify-content-between align-items-center flex-wrap gap-2 mb-3">
                <div>
                    <h4 class="fw-bold mb-0 text-dark fs-3">ROOM STATUS BOARD </h4>
                </div>
                <div class="d-flex gap-2">
                    <!-- UPDATED: New Assignment URL redirect path -->
                    <a href="{{ url('hkstockreport') }}" class="btn btn-primary btn-sm rsb-fs-xs fw-semibold px-3">
                        <i class="fa-solid fa-box me-1"></i> HK Stock Report
                    </a>
                    <a href="{{ url('assignments') }}" class="btn btn-success btn-sm rsb-fs-xs fw-semibold px-3">
                        <i class="fa-solid fa-plus me-1"></i> New Assignment
                    </a>
                    <a href="{{ request()->url() }}" class="btn btn-outline-secondary btn-sm"><i
                            class="fa-solid fa-rotate-right"></i></a>
                </div>
            </div>

            <!-- Stat Cards -->
            <div class="rsb-metrics-container mb-3">
                @php
                    $stats = [
                        ['fa-bed', 'text-primary', 'bg-primary-subtle', 'Total Rooms', $totalRooms ?? 0],
                        ['fa-door-closed', 'text-primary', 'bg-light', 'Occupied Clean', $occupiedRooms ?? 0],
                        ['fa-broom', 'text-warning', 'bg-light', 'Occupied Dirty', $occupiedDirty ?? 0],
                        ['fa-triangle-exclamation', 'text-danger', 'bg-light', 'Vacant Dirty', $vacantDirty ?? 0],
                        ['fa-circle-check', 'text-success', 'bg-light', 'Vacant Clean', $vacantClean ?? 0],
                        ['fa-ban', 'text-secondary', 'bg-light', 'Out of Order', $outOfOrder ?? 0],
                        ['fa-screwdriver-wrench', 'text-purple', 'bg-light', 'Maintenance', $maintenanceRooms ?? 0],
                        ['fa-magnifying-glass', 'text-info', 'bg-light', 'Inspection Pending', $inspectionPending ?? 0],
                    ];
                @endphp

                @foreach ($stats as $s)
                    <div class="card shadow-sm p-2 rsb-stat-card border">
                        <div class="d-flex align-items-center gap-2">
                            <div class="rsb-icon-box {{ $s[2] }} {{ $s[1] }}">
                                <i class="fa-solid {{ $s[0] }}"></i>
                            </div>
                            <div class="overflow-hidden">
                                <div class="text-muted text-truncate rsb-fs-xxs">{{ $s[3] }}</div>
                                <div class="fw-bold fs-4 text-dark lh-1">{{ $s[4] }}</div>
                            </div>
                        </div>
                    </div>
                @endforeach

                <div
                    class="card shadow-sm p-2 rsb-stat-card border d-flex flex-row align-items-center justify-content-between">
                    <div>
                        <div class="text-muted rsb-fs-xxs">Occupancy</div>
                        <div class="fw-bold fs-4 text-dark lh-1">{{ $occupancyRate ?? 0 }}%</div>
                    </div>
                    <div class="spinner-border text-primary" style="width: 28px; height: 28px; border-width: 3px;"></div>
                </div>
            </div>

            <!-- Filter Form -->
            <form action="{{ request()->url() }}" method="GET">
                <div class="card shadow-sm border p-3 mb-3 bg-white">
                    <div class="row g-2 align-items-end">
                        <div class="col">
                            <label class="rsb-fs-xs text-secondary mb-1">Floor</label>
                            <select name="floor" class="form-select form-select-sm rsb-fs-xs">
                                <option value="">All Floors</option>
                                @foreach ($uniqueFloors as $flName)
                                    <option value="{{ $flName }}"
                                        {{ request('floor') == $flName ? 'selected' : '' }}>
                                        {{ $flName }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col">
                            <label class="rsb-fs-xs text-secondary mb-1">Status</label>
                            <select name="status" class="form-select form-select-sm rsb-fs-xs">
                                <option value="">All Status</option>
                                @foreach ($statusMap as $code => $meta)
                                    <option value="{{ $code }}"
                                        {{ request('status') == $code ? 'selected' : '' }}>{{ $meta['label'] }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col">
                            <label class="rsb-fs-xs text-secondary mb-1">Room Type</label>
                            <select name="room_type" class="form-select form-select-sm rsb-fs-xs">
                                <option value="">All Types</option>
                                @foreach ($roomTypes as $type)
                                    <option value="{{ $type['room_cat_code'] }}"
                                        {{ request('room_type') == $type['room_cat_code'] ? 'selected' : '' }}>
                                        {{ $type['roomcatname'] }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col">
                            <label class="rsb-fs-xs text-secondary mb-1">Priority</label>
                            <select class="form-select form-select-sm rsb-fs-xs" disabled>
                                <option>All</option>
                            </select>
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary btn-sm rsb-fs-xs px-3">
                                <i class="fa-solid fa-filter me-1"></i> Filter
                            </button>
                        </div>
                    </div>
                </div>
            </form>

            <!-- Dynamic Room Grid grouped by Floor -->
            @forelse ($roomsByFloor as $index => $floorGroup)
                @php
                    $floorNum = $floorGroup['floor'] ?? $index;
                    // UPDATED: Check if this iteration is the very first loop item
                    $isFirstFloor = $loop->first;
                @endphp
                <div class="mb-4">
                    <div class="bg-light border border-bottom-0 rounded-top p-2 d-flex justify-content-between align-items-center flex-wrap gap-2 text-dark"
                        style="cursor: pointer;" onclick="toggleFloor('{{ Str::slug($floorNum) }}', this)">
                        <div class="fw-bold rsb-fs-xs">
                            <!-- UPDATED: If it's the first floor, start chevron with 0deg rotation (facing down) -->
                            <i class="fa-solid fa-chevron-down me-1 text-secondary dynamic-arrow"
                                style="transition: transform 0.2s ease; transform: {{ $isFirstFloor ? 'rotate(0deg)' : 'rotate(-90deg)' }};"></i>
                            Floor {{ $floorGroup['floor'] }}
                        </div>
                        <div class="d-flex gap-1 align-items-center rsb-fs-xxs" onclick="event.stopPropagation();">
                            <span class="badge bg-white text-dark border py-1 px-2">Total:
                                {{ $floorGroup['total'] }}</span>
                            <span class="badge bg-primary-subtle text-primary border py-1 px-2">Occ Clean:
                                {{ $floorGroup['occ'] }}</span>
                            <span class="badge bg-warning-subtle text-warning border py-1 px-2"
                                style="color: #ea580c !important;">Occ Dirty: {{ $floorGroup['od'] }}</span>
                                <span class="badge bg-purple-subtle text-purple border py-1 px-2" style="color: #9333ea !important;">Maint:
                                {{ $floorGroup['maint'] }}</span>
                            <span class="badge bg-success-subtle text-success border py-1 px-2">Vac Clean:
                                {{ $floorGroup['vc'] }}</span>
                            <span class="badge bg-danger-subtle text-danger border py-1 px-2">Vac Dirty:
                                {{ $floorGroup['vd'] }}</span>
                        </div>
                    </div>

                    <!-- UPDATED: Display block set on first iteration so that it's defaultly open -->
                    <div id="floor-body-{{ Str::slug($floorNum) }}" class="bg-white border rounded-bottom p-2"
                        style="display: {{ $isFirstFloor ? 'block' : 'none' }};">
                        <div class="rsb-room-grid">
                            @foreach ($floorGroup['rooms'] as $room)
                                @php
                                    $meta = $statusMap[$room->status] ?? [
                                        'label' => $room->status ?? 'Unknown',
                                        'class' => '',
                                    ];
                                @endphp
                                <div class="rsb-room-card-wrapper" data-room-no="{{ $room->roomno }}"
                                    data-room-cat="{{ $room->roomcatname }}" data-room-status="{{ $meta['label'] }}"
                                    data-room-status-code="{{ $room->status }}" data-bs-toggle="modal"
                                    data-bs-target="#roomStatusModal">
                                    <div
                                        class="card shadow-sm bg-white p-2 border rounded-2 d-flex flex-column justify-content-between rsb-room-box {{ $meta['class'] }}">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <span class="fw-bold text-dark rsb-fs-xs">{{ $room->roomno }}</span>
                                            <span class="text-muted rsb-fs-xxs fw-normal text-truncate"
                                                style="max-width: 55px;">{{ $room->roomcatname }}</span>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center mt-1">
                                            <span
                                                class="fw-semibold text-truncate rsb-fs-xxs opacity-90">{{ $meta['label'] }}</span>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            @empty
                <div class="text-center text-muted py-4">No rooms match the criteria</div>
            @endforelse

            <!-- Bottom Panels -->
            <div class="row g-3">
                <div class="col-12 col-md-4">
                    <div class="card shadow-sm border rounded-3 p-3 bg-white h-100">
                        <div class="fw-bold mb-2 text-dark rsb-fs-xs">HOUSEKEEPER WORKLOAD</div>
                        <div class="table-responsive">
                            <table class="table table-sm table-hover border-0 align-middle mb-0 text-nowrap">
                                <thead>
                                    <tr class="text-secondary border-bottom rsb-fs-xxs">
                                        <th>Housekeeper</th>
                                        <th class="text-center">Assigned</th>
                                        <th class="text-center">Done</th>
                                        <th>Efficiency</th>
                                    </tr>
                                </thead>
                                <tbody class="rsb-fs-xs">
                                    {{-- Controller se data collection pass ho rhi hogi let's say $housekeeperWorkloads --}}
                                    @forelse ($housekeeperWorkloads->take(5) as $row)
                                        <tr>
                                            <td class="fw-semibold text-dark">{{ $row->HouseKeeper ?? 'Unassigned' }}</td>
                                            <td class="text-center">{{ $row->total_assigned ?? 0 }}</td>
                                            <td class="text-center text-success">{{ $row->total_done ?? 0 }}</td>
                                            @php
                                                $eff = ($row->total_assigned > 0)
                                                    ? round(($row->total_done / $row->total_assigned) * 100)
                                                    : 0;
                                            @endphp
                                            <td>
                                                <div class="progress" style="height:5px; width:50px;">
                                                    <div class="progress-bar bg-success" style="width: {{ $eff }}%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="4" class="text-center text-muted py-2 rsb-fs-xxs">No workload
                                                assigned today.</td>
                                        </tr>
                                    @endforelse
                                </tbody>

                                {{-- Agar total items 5 se zyada hain, toh hum hidden tbody aur extra control switch attach karenge --}}
                                @if (count($housekeeperWorkloads) > 5)
                                    <tbody id="more-housekeepers" class="rsb-fs-xs"
                                        style="display: none; border-top: 0 !important;">
                                        @foreach ($housekeeperWorkloads->slice(5) as $row)
                                            <tr>
                                                <td class="fw-semibold text-dark">{{ $row->HouseKeeper ?? 'Unassigned' }}</td>
                                                <td class="text-center">{{ $row->total_assigned ?? 0 }}</td>
                                                <td class="text-center text-success">{{ $row->total_done ?? 0 }}</td>
                                                @php
                                                    $eff2 = ($row->total_assigned > 0)
                                                        ? round(($row->total_done / $row->total_assigned) * 100)
                                                        : 0;
                                                @endphp
                                                <td>
                                                    <div class="progress" style="height:5px; width:50px;">
                                                        <div class="progress-bar bg-success" style="width: {{ $eff2 }}%;"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                @endif
                            </table>

                            @if (count($housekeeperWorkloads) > 5)
                                <div class="text-center mt-2">
                                    <button type="button" id="toggle-hk-btn" onclick="toggleHousekeepers()"
                                        class="btn btn-link btn-sm text-primary p-0 fw-semibold rsb-fs-xxs text-decoration-none">
                                        View More <i class="fa-solid fa-chevron-down ms-1"></i>
                                    </button>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-4">
                    <div class="card shadow-sm border rounded-3 p-3 bg-white h-100">
                        <div class="fw-bold mb-2 text-dark rsb-fs-xs">PENDING INSPECTIONS</div>
                        <div class="table-responsive">
                            <table class="table table-sm table-hover border-0 align-middle mb-0 text-nowrap">
                                <thead>
                                    <tr class="text-secondary border-bottom rsb-fs-xxs">
                                        <th>Room</th>
                                        <th>Housekeeper</th>
                                        <th>Priority</th>
                                    </tr>
                                </thead>
                                <tbody class="rsb-fs-xs">
                                    @forelse($pendingInspections->take(5) as $pi)
                                        <tr>
                                            <td class="fw-bold text-dark">{{ $pi->roomno }}</td>
                                            <td class="text-secondary">{{ $pi->hkname ?? '—' }}</td>
                                            <td>
                                                @if(strtolower($pi->priority) === 'high')
                                                    <span class="badge bg-danger rsb-fs-xxs">High</span>
                                                @elseif(strtolower($pi->priority) === 'medium')
                                                    <span class="badge bg-warning text-dark rsb-fs-xxs">Medium</span>
                                                @else
                                                    <span class="badge bg-secondary rsb-fs-xxs">{{ $pi->priority ?? 'Normal' }}</span>
                                                @endif
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="3" class="text-center text-muted py-2 rsb-fs-xxs">No pending inspections.</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-4">
                    <div class="card shadow-sm border rounded-3 p-3 bg-white h-100">
                        <div class="fw-bold mb-2 text-dark rsb-fs-xs">STATUS LEGEND</div>
                        <div class="row g-2 rsb-fs-xxs">
                            <div class="col-6 d-flex flex-column gap-1">
                                <div class="p-1 border rounded bg-light-subtle rsb-b-occupied">
                                    <span class="badge me-1" style="background:#2563eb;"></span> Occupied
                                </div>
                                <div class="p-1 border rounded bg-light-subtle rsb-b-odirty">
                                    <span class="badge me-1" style="background:#ea580c;"></span> Occupied Dirty
                                </div>
                                <div class="p-1 border rounded bg-light-subtle rsb-b-vclean">
                                    <span class="badge me-1" style="background:#16a34a;"></span> Vacant Clean
                                </div>
                                <div class="p-1 border rounded bg-light-subtle rsb-b-vdirty">
                                    <span class="badge me-1" style="background:#dc2626;"></span> Vacant Dirty
                                </div>
                                <div class="p-1 border rounded bg-light-subtle rsb-b-ooo">
                                    <span class="badge me-1" style="background:#64748b;"></span> Out Of Order
                                </div>
                                <div class="p-1 border rounded bg-light-subtle rsb-b-maint">
                                    <span class="badge me-1" style="background:#9333ea;"></span> Maintenance
                                </div>
                            </div>
                            <div class="col-6 d-flex flex-column gap-1 text-secondary">
                                <div><span class="badge bg-purple me-1"></span> VIP Room</div>
                                <div><i class="fa-regular fa-clock text-warning me-1"></i> Early Check-in</div>
                                <div><i class="fa-solid fa-clock-rotate-left text-info me-1"></i> Late Check-in</div>
                                <div><i class="fa-solid fa-ban text-danger me-1"></i> Do Not Disturb</div>
                                <div><i class="fa-solid fa-exclamation text-danger me-1"></i> Inspection Pending</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- ROOM STATUS QUICK UPDATE MODAL -->
    <div class="modal fade" id="roomStatusModal" tabindex="-1" aria-labelledby="roomStatusModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header bg-light py-2">
                    <h5 class="modal-title fw-bold text-dark fs-5" id="roomStatusModalLabel">Room Details</h5>
                    <button type="button" class="btn-close" data-bs-close="modal" aria-label="Close"></button>
                </div>
                <form id="roomStatusForm" method="POST" action="">
                    @csrf
                    @method('PATCH')
                    <div class="modal-body">
                        <div class="row g-3 mb-3">
                            <div class="col-6">
                                <small class="text-secondary d-block">Room Number</small>
                                <span id="modal-room-no" class="fw-bold text-dark fs-5">-</span>
                            </div>
                            <div class="col-6">
                                <small class="text-secondary d-block">Room Type</small>
                                <span id="modal-room-cat" class="fw-semibold text-dark">-</span>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="modal-status-select" class="form-label text-secondary rsb-fs-xs mb-1">Update
                                Status</label>
                            <select id="modal-status-select" name="status" class="form-select rsb-fs-xs">
                                @foreach ($statusMap as $code => $meta)
                                    <option value="{{ $code }}">{{ $meta['label'] }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer py-2 bg-light">
                        <button type="button" class="btn btn-secondary btn-sm px-3"
                            data-bs-close="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary btn-sm px-3">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function toggleFloor(floorId, headerEl) {
            const contentEl = document.getElementById('floor-body-' + floorId);
            const arrowEl = headerEl.querySelector('.dynamic-arrow');

            if (contentEl.style.display === 'none') {
                contentEl.style.display = 'block';
                if (arrowEl) arrowEl.style.transform = 'rotate(0deg)';
            } else {
                contentEl.style.display = 'none';
                if (arrowEl) arrowEl.style.transform = 'rotate(-90deg)';
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            const statusModal = document.getElementById('roomStatusModal');
            if (statusModal) {
                statusModal.addEventListener('show.bs.modal', function(event) {
                    const targetCard = event.relatedTarget;

                    const roomNo = targetCard.getAttribute('data-room-no');
                    const roomCat = targetCard.getAttribute('data-room-cat');
                    const statusCode = targetCard.getAttribute('data-room-status-code');

                    document.getElementById('modal-room-no').textContent = roomNo;
                    document.getElementById('modal-room-cat').textContent = roomCat;
                    document.getElementById('modal-status-select').value = statusCode;

                    const updateForm = document.getElementById('roomStatusForm');
                    updateForm.action = `/property/rooms/${roomNo}/status`;
                });
            }
        });

        function toggleHousekeepers() {
            const moreBody = document.getElementById('more-housekeepers');
            const toggleBtn = document.getElementById('toggle-hk-btn');

            if (moreBody.style.display === 'none') {
                moreBody.style.display = 'table-row-group';
                toggleBtn.innerHTML = 'View Less <i class="fa-solid fa-chevron-up ms-1"></i>';
            } else {
                moreBody.style.display = 'none';
                toggleBtn.innerHTML = 'View More <i class="fa-solid fa-chevron-down ms-1"></i>';
            }
        }
    </script>
@endsection
