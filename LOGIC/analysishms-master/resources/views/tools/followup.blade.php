@extends('tools.layouts.main')

@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

    <style>
        .row-green {
            background-color: #d4edda !important;
        }

        .row-red {
            background-color: #f8d7da !important;
        }

        .blur-text {
            filter: blur(4px);
            pointer-events: none;
            user-select: none;
        }

        .action-btn-group {
            display: flex;
            flex-direction: column;
            gap: 6px;
            align-items: center;
        }

        .action-btn-group .btn {
            width: 120px;
            font-size: 12px;
            padding: 5px 8px;
            line-height: 1.4;
            white-space: nowrap;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">

            <a href="{{ route('markDashboard') }}" class="btn btn-secondary mb-3">
                ← Back to Dashboard
            </a>

            <div class="card shadow-sm p-3">
                <div class="table-responsive">

                    <table id="followupTable" class="table table-bordered text-center">

                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Order No</th>
                                <th>Sno</th>
                                <th>Call Date</th>
                                <th>Next Follow</th>
                                <th>Remark</th>
                                <th>Property</th>
                                <th>City</th>
                                <th>Contact</th>
                                <th>Mobile</th>
                                <th>Assigned</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>

                            @php
                                $counter = 1;
                                $today = \Carbon\Carbon::today();
                                $grouped = collect($data)->groupBy('orderno');
                                $historyData = [];
                            @endphp

                            @foreach ($grouped as $orderno => $rows)
                                @php
                                    $rowsSorted = $rows->sortByDesc('sno')->values();
                                    $latestRow = $rowsSorted->first();

                                    // ---- build history array for this orderno (for modal) ----
                                    $historyRows = [];
                                    foreach ($rowsSorted as $r) {
                                        $rIsSupervisor = auth()->check() && auth()->user()->superwiser == 1;
                                        $rIsOwner = false;
                                        if (!empty($r->Username) && auth()->check()) {
                                            $rIsOwner = strtolower($r->Username) == strtolower(auth()->user()->name);
                                        }
                                        $rHasAccess = $rIsSupervisor || $rIsOwner;

                                        $historyRows[] = [
                                            'sno' => $r->sno,
                                            'calldate' => $r->CallDate
                                                ? \Carbon\Carbon::parse($r->CallDate)->format('d M Y')
                                                : '-',
                                            'nextfollow' => $r->Nextfolldate
                                                ? \Carbon\Carbon::parse($r->Nextfolldate)->format('d M Y')
                                                : '-',
                                            'remark' => $rHasAccess ? $r->remark ?? '-' : '••••••••',
                                            'contact' => $rHasAccess ? $r->Conname ?? '-' : '••••••',
                                            'mobile' => $rHasAccess ? $r->Phone ?? '-' : '••••••',
                                            'status' => $r->Status,
                                        ];
                                    }
                                    $historyData[$orderno] = $historyRows;
                                    // -----------------------------------------------------------

                                    $row = $latestRow;

                                    $isSupervisor = auth()->check() && auth()->user()->superwiser == 1;

                                    $isOwner = false;
                                    if (!empty($row->Username) && auth()->check()) {
                                        $isOwner = strtolower($row->Username) == strtolower(auth()->user()->name);
                                    }

                                    $hasAccess = $isSupervisor || $isOwner;

                                    $rowClass = '';
                                    if (!empty($row->Nextfolldate)) {
                                        $followDate = \Carbon\Carbon::parse($row->Nextfolldate)->startOfDay();

                                        if ($followDate->lt($today)) {
                                            $rowClass = 'row-red'; // past date
                                        } elseif ($followDate->isToday()) {
                                            $rowClass = 'row-green';
                                        }
                                    }
                                @endphp

                                <tr class="{{ $rowClass }}">

                                    <td>{{ $counter++ }}</td>

                                    <td class="fw-bold text-primary">{{ $row->orderno }}</td>

                                    <td>{{ $row->sno }}</td>

                                    <td>
                                        {{ $row->CallDate ? \Carbon\Carbon::parse($row->CallDate)->format('d M Y') : '-' }}
                                    </td>

                                    <td>
                                        {{ $row->Nextfolldate ? \Carbon\Carbon::parse($row->Nextfolldate)->format('d M Y') : '-' }}
                                    </td>

                                    <td class="text-start {{ !$hasAccess ? 'blur-text' : '' }}">
                                        {{ $row->remark ?? '-' }}
                                    </td>

                                    <td>{{ $row->PropertyName ?? '-' }}</td>

                                    <td>{{ $row->City ?? '-' }}</td>

                                    <td class="{{ !$hasAccess ? 'blur-text' : '' }}">
                                        {{ $row->Conname ?? '-' }}
                                    </td>

                                    <td class="{{ !$hasAccess ? 'blur-text' : '' }}">
                                        {{ $row->Phone ?? '-' }}
                                    </td>

                                    <td>{{ $row->Username ?? '-' }}</td>

                                    <td>
                                        @if ($row->Status == 'Closed Won')
                                            <span style="color:#28a745; font-weight:600;">Closed Won</span>
                                        @elseif($row->Status == 'In Progress')
                                            <span style="color:#ffc107; font-weight:600;">In Progress</span>
                                        @elseif($row->Status == 'No Follow Up')
                                            <span style="color:#6c757d; font-weight:600;">No Follow Up</span>
                                        @else
                                            <span style="color:#343a40; font-weight:600;">{{ $row->Status }}</span>
                                        @endif
                                    </td>
                                    <td>
                                        <div class="action-btn-group">

                                            @if ($row->Status == 'Closed Lost')
                                                <button class="btn btn-danger" disabled style="opacity:0.6;"
                                                    title="Closed Lost - No further follow up needed">
                                                    Closed Lost
                                                </button>
                                            @elseif ($hasAccess)
                                                <button type="button" class="btn btn-primary addFollowBtn"
                                                    data-orderno="{{ $row->orderno }}">
                                                    Add Follow Up
                                                </button>
                                            @else
                                                <button class="btn btn-secondary" disabled style="opacity:0.5;">
                                                    Locked
                                                </button>
                                            @endif

                                            @if (count($historyRows) > 1)
                                                <button type="button" class="btn btn-info text-white viewHistoryBtn"
                                                    data-orderno="{{ $row->orderno }}">
                                                    View
                                                </button>
                                            @endif

                                        </div>
                                    </td>

                                </tr>
                            @endforeach

                        </tbody>

                    </table>

                </div>
            </div>

        </div>
    </div>

    {{-- ADD FOLLOW-UP MODAL --}}

    <div class="modal fade" id="editModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <form method="POST" action="{{ route('followup.update') }}">
                    @csrf

                    <div class="modal-header">
                        <h5>Add Follow-Up</h5>
                    </div>

                    <div class="modal-body">

                        <input type="hidden" name="orderno" id="orderno">

                        <div class="form-group">
                            <label>Date</label>
                            <input type="date" name="nextfollowdate" class="form-control" id="followDate">
                        </div>

                        <div class="form-group">
                            <label>Remark</label>
                            <textarea name="remark" class="form-control"></textarea>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>

                </form>

            </div>
        </div>
    </div>

    {{-- VIEW HISTORY MODAL --}}

    <div class="modal fade" id="historyModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <div class="modal-header">
                    <h5>Follow-Up History — <span id="historyOrderno"></span></h5>
                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="modal-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-sm text-center" id="historyTable">
                            <thead>
                                <tr>
                                    <th>Sno</th>
                                    <th>Call Date</th>
                                    <th>Next Follow</th>
                                    <th>Remark</th>
                                    <th>Contact</th>
                                    <th>Mobile</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody id="historyTableBody">
                                {{-- filled via JS --}}
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>

            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

    <script>
        // history data passed from server
        const followupHistory = @json($historyData);

        $(document).ready(function() {

            $('#followupTable').DataTable();

            // Add Follow Up button click
            $(document).on('click', '.addFollowBtn', function(e) {
                e.preventDefault();
                let orderno = $(this).data('orderno');
                $('#orderno').val(orderno);
                $('#editModal').modal('show');
            });

            // View history button click
            $(document).on('click', '.viewHistoryBtn', function(e) {
                e.preventDefault();
                let orderno = $(this).data('orderno');
                let rows = followupHistory[orderno] || [];

                $('#historyOrderno').text(orderno);

                let bodyHtml = '';
                if (rows.length === 0) {
                    bodyHtml = '<tr><td colspan="7">No history found</td></tr>';
                } else {
                    rows.forEach(function(r) {
                        bodyHtml += `
                            <tr>
                                <td>${r.sno}</td>
                                <td>${r.calldate}</td>
                                <td>${r.nextfollow}</td>
                                <td class="text-start">${r.remark}</td>
                                <td>${r.contact}</td>
                                <td>${r.mobile}</td>
                                <td>${r.status}</td>
                            </tr>`;
                    });
                }

                $('#historyTableBody').html(bodyHtml);
                $('#historyModal').modal('show');
            });

            // Enable date input
            $('#editModal').on('shown.bs.modal', function() {
                let input = document.getElementById('followDate');
                if (input) {
                    input.removeAttribute('readonly');
                    input.removeAttribute('disabled');
                }
            });
            setInterval(function() {
                $('input[type="text"], input[type="number"], input[type="email"], textarea').prop(
                    'readonly', false);
            }, 1000);

            // Mobile date fix
            $(document).on('focus', '#followDate', function() {
                this.removeAttribute('readonly');
                this.removeAttribute('disabled');

                if (this.showPicker) {
                    this.showPicker();
                }
            });

        });
    </script>
@endsection
