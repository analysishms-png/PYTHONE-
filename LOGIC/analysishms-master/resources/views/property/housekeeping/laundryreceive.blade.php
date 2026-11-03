@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')

<style>
    /* Only minimal scoped tweaks — the rest is Bootstrap 5 */
    .laundry-recv .total-row td { background: #f2f6fc; font-weight: 600; }
    .laundry-recv .recv-num { width: 76px; }
    .laundry-recv .recv-tbl td input[type="text"] { min-width: 110px; }
</style>

<div class="content-body">
    <div class="container-fluid px-4 py-3">
        <div class="laundry-recv">

            <form id="laundryRecvForm">
                @csrf

                {{-- Page header --}}
                <div class="row mb-3 align-items-center">
                    <div class="col">
                        <h4 class="font-weight-bold mb-0 text-dark">
                            <i class="fa-solid fa-spray-can-sparkles me-2 text-primary"></i>Laundry Receive (Clean Linen)
                        </h4>
                        <small class="text-muted">
                            <i class="fa-regular fa-calendar me-1"></i>
                            {{ \Carbon\Carbon::parse($ncurdate)->format('d-M-Y') }}
                            &nbsp;&bull;&nbsp; Housekeeping Module
                        </small>
                    </div>
                </div>

                {{-- 1. RECEIVE INFORMATION + LAUNDRY INFORMATION --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-3 px-4" style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
                        <span class="font-weight-bold text-white">
                            <i class="fa-solid fa-box-open me-2"></i>Receive Information
                        </span>
                    </div>
                    <div class="card-body py-4 px-4">
                        <div class="row g-3">
                            {{-- left: Receive Information --}}
                            <div class="col-md-6">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <label class="col-form-label fw-semibold">Send Voucher <span class="text-danger">*</span></label>
                                        <select id="hdr_sn_select" name="hdr_id" class="form-select">
                                            <option value="">-- Select Send Voucher --</option>
                                            @foreach ($openVouchers as $v)
                                                <option value="{{ $v->id }}">
                                                    LAISS{{ str_pad($v->vno, 4, '0', STR_PAD_LEFT) }} | {{ $v->vdate }} | {{ $v->sent_by }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Receive Date <span class="text-danger">*</span></label>
                                        <input type="date" class="form-control" name="recv_date" id="recv_date" value="{{ $ncurdate }}">
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Receive Time</label>
                                        <input type="time" class="form-control" name="recv_time" id="recv_time" value="{{ date('H:i') }}">
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Received By <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="recv_by" id="recv_by" required maxlength="25"
                                               oninput="this.value = this.value.toUpperCase()">
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Remarks</label>
                                        <input type="text" class="form-control" name="hdr_recv_remarks" id="hdr_recv_remarks" maxlength="200">
                                    </div>
                                </div>
                            </div>

                            {{-- right: Laundry Information --}}
                            <div class="col-md-6">
                                <div class="row g-3">
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Delivered By</label>
                                        <input type="text" class="form-control" name="delivered_by" id="delivered_by" maxlength="25"
                                               oninput="this.value = this.value.toUpperCase()">
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Challan No.</label>
                                        <input type="text" class="form-control" name="recv_challan_no" id="recv_challan_no" maxlength="20">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- 2. TWO TABLES — send/received qty + condition --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-3 px-4 bg-light border-bottom">
                        <span class="font-weight-bold text-primary text-uppercase">
                            <i class="fa-solid fa-list-check me-1"></i>Linen Details
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="row g-4">
                            {{-- table 1: send / received qty --}}
                            <div class="col-lg-6">
                                <h6 class="font-weight-bold text-dark mb-2">
                                    <i class="fa-solid fa-arrow-right-arrow-left me-1 text-primary"></i>Send / Received Quantity
                                </h6>
                                <div class="table-responsive recv-tbl">
                                    <table class="table table-bordered table-hover align-middle">
                                        <thead class="thead-muted">
                                            <tr>
                                                <th style="width:40px;">Sr.</th>
                                                <th>Linen Item</th>
                                                <th style="width:60px;">UOM</th>
                                                <th class="recv-num">Send Qty</th>
                                                <th class="recv-num">Received Qty</th>
                                            </tr>
                                        </thead>
                                        <tbody id="recvMainBody">
                                            <tr><td colspan="5" class="text-center text-muted">Select a Send Voucher to load items</td></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            {{-- table 2: condition of received linen --}}
                            <div class="col-lg-6">
                                <h6 class="font-weight-bold text-dark mb-2">
                                    <i class="fa-solid fa-clipboard-check me-1 text-primary"></i>Condition of Received Linen
                                </h6>
                                <div class="table-responsive recv-tbl">
                                    <table class="table table-bordered table-hover align-middle">
                                        <thead class="thead-muted">
                                            <tr>
                                                <th class="recv-num">Good</th>
                                                <th class="recv-num">Missing</th>
                                                <th class="recv-num">Damage</th>
                                                <th>Remarks</th>
                                            </tr>
                                        </thead>
                                        <tbody id="condBody">
                                            <tr><td colspan="4" class="text-center text-muted">—</td></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Action bar --}}
                <div class="d-flex justify-content-end gap-2">
                    <button type="submit" class="btn btn-primary" id="saveBtn">
                        <i class="fa-solid fa-floppy-disk me-1"></i>Save
                    </button>
                    <button type="button" class="btn btn-light border" id="closeBtn">
                        <i class="fa-solid fa-xmark me-1"></i>Close
                    </button>
                </div>

            </form>

            {{-- 3. RECEIVED VOUCHERS HISTORY — fetched from DB after save --}}
            <div class="card shadow-sm mb-3 mt-4" id="receivedVouchersCard">
                <div class="card-header py-3 px-4" style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
                    <span class="font-weight-bold text-white">
                        <i class="fa-solid fa-clock-rotate-left me-2"></i>Received Vouchers (DB se fetched)
                    </span>
                    <span class="text-white ml-2">{{ count($receivedVouchers) }} voucher(s)</span>
                </div>
                <div class="card-body py-3 px-3">
                    @if (count($receivedVouchers) > 0)
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle" id="receivedVouchersTable">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sr.</th>
                                        <th>Send Voucher</th>
                                        <th>Receive Voucher</th>
                                        <th>Send Date</th>
                                        <th>Sent By</th>
                                        <th>Receive Date</th>
                                        <th>Received By</th>
                                        <th class="text-center">Total Qty</th>
                                        <th class="text-center">Status</th>
                                        <th>Items</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($receivedVouchers as $v)
                                        @php
                                            $vItems  = isset($receivedFtrs[$v->id]) ? $receivedFtrs[$v->id] : collect();
                                            $totQty  = $vItems->sum('send_qty');
                                            $totRecv = $vItems->sum('received_qty');
                                            $vNo     = 'LAISS' . str_pad($v->vno, 4, '0', STR_PAD_LEFT);
                                            $recvNo  = !empty($v->recv_vno)
                                                ? 'LAREC' . str_pad($v->recv_vno, 4, '0', STR_PAD_LEFT)
                                                : '—';
                                        @endphp
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td class="font-weight-bold">{{ $vNo }}</td>
                                            <td class="font-weight-bold">{{ $recvNo }}</td>
                                            <td>{{ \Carbon\Carbon::parse($v->vdate)->format('d-M-Y') }}</td>
                                            <td>{{ $v->sent_by }}</td>
                                            <td>{{ $v->recv_date ? \Carbon\Carbon::parse($v->recv_date)->format('d-M-Y') : '—' }}</td>
                                            <td>{{ $v->recv_by ?? '—' }}</td>
                                            <td class="text-center font-weight-bold">
                                                {{ $totQty }}
                                                <small class="d-block text-muted">recv {{ $totRecv }}</small>
                                            </td>
                                            <td class="text-center font-weight-bold">
                                                {{ $v->send_status }}
                                            </td>
                                            <td class="text-center">
                                                <button type="button" class="btn btn-sm btn-outline-primary toggle-items"
                                                        data-target="#recvItems{{ $v->id }}">
                                                    <i class="fa-solid fa-eye me-1"></i>View
                                                </button>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>

                        {{-- Detail panels (table ke bahar — DataTables tbody ko clean rakhta hai) --}}
                        @foreach ($receivedVouchers as $v)
                            @php
                                $vItems  = isset($receivedFtrs[$v->id]) ? $receivedFtrs[$v->id] : collect();
                                $vNo     = 'LAISS' . str_pad($v->vno, 4, '0', STR_PAD_LEFT);
                                $recvNo  = !empty($v->recv_vno)
                                    ? 'LAREC' . str_pad($v->recv_vno, 4, '0', STR_PAD_LEFT)
                                    : '—';
                            @endphp
                            <div class="recv-items-panel d-none mt-2" id="recvItems{{ $v->id }}">
                                <div class="card border">
                                    <div class="card-header py-2 px-3 bg-secondary text-white">
                                        <span class="font-weight-bold" style="font-size:16px;">Send: {{ $vNo }} &nbsp;|&nbsp; Receive: {{ $recvNo }}</span>
                                        <button type="button" class="btn btn-sm btn-outline-light float-right toggle-items" data-target="#recvItems{{ $v->id }}">&times;</button>
                                    </div>
                                    <div class="card-body p-3">
                                        <div class="table-responsive">
                                            <table class="table table-bordered mb-0" style="font-size:16px;">
                                                <thead class="bg-secondary">
                                                    <tr>
                                                        <th style="width:40px;">Sr.</th>
                                                        <th>Item</th>
                                                        <th class="text-center">Send</th>
                                                        <th class="text-center">Received</th>
                                                        <th class="text-center">Good</th>
                                                        <th class="text-center">Missing</th>
                                                        <th class="text-center">Damage</th>
                                                        <th>Remarks</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @forelse ($vItems as $it)
                                                        <tr>
                                                            <td>{{ $loop->iteration }}</td>
                                                            <td>{{ $it->item_name }}</td>
                                                            <td class="text-center font-weight-bold">{{ $it->send_qty }}</td>
                                                            <td class="text-center">{{ $it->received_qty ?? 0 }}</td>
                                                            <td class="text-center font-weight-bold">{{ $it->good_qty ?? 0 }}</td>
                                                            <td class="text-center">{{ $it->missing_qty ?? 0 }}</td>
                                                            <td class="text-center">{{ $it->damage_qty ?? 0 }}</td>
                                                            <td>{{ $it->recv_remarks ?? '—' }}</td>
                                                        </tr>
                                                    @empty
                                                        <tr>
                                                            <td colspan="8" class="text-center text-muted">No items</td>
                                                        </tr>
                                                    @endforelse
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @else
                        <div class="text-center text-muted py-4">
                            <i class="fa-solid fa-inbox fa-2x mb-2 d-block"></i>
                            No received vouchers yet — save a receive above to see it here.
                        </div>
                    @endif
                </div>
            </div>

        </div>
    </div>
</div>

<script>
$(document).ready(function () {

    // escape helper (XSS fix) — item names come from DB, don't trust raw HTML
    function escapeHtml(str) {
        return String(str || '')
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#39;');
    }

    const csrfToken  = $('meta[name="csrf-token"]').attr('content');
    const itemsUrl   = '{{ route("getlaundrysenditems", ["hdr_id" => "__ID__"]) }}';
    const emptyMain  = '<tr><td colspan="5" class="text-center text-muted">Select a Send Voucher to load items</td></tr>';
    const emptyCond  = '<tr><td colspan="4" class="text-center text-muted">—</td></tr>';

    // ── Load voucher items on dropdown change ─────────────────────────────
    $('#hdr_sn_select').on('change', function () {
        const hdrId = this.value;
        if (!hdrId) {
            $('#recvMainBody').html(emptyMain);
            $('#condBody').html(emptyCond);
            return;
        }

        $.ajax({
            url: itemsUrl.replace('__ID__', hdrId),
            type: 'GET',
            success: function (res) {
                if (res.success !== true) {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                    return;
                }
                renderTables(res.items);
            },
            error: function (xhr) {
                Swal.fire({ icon: 'error', title: 'Error', text: (xhr.responseJSON && xhr.responseJSON.message) || 'Failed to load voucher.' });
            }
        });
    });

    // ── Build both tables ─────────────────────────────────────────────────
    function renderTables(items) {
        let mainRows = '';
        let condRows = '';
        let totalSend = 0, totalRecv = 0, totalGood = 0, totalMiss = 0, totalDamage = 0;

        $.each(items, function (i, it) {
            const sr      = i + 1;
            const sendQty = parseInt(it.send_qty) || 0;
            totalSend += sendQty;

            mainRows +=
                '<tr>' +
                    '<td>' + sr + '<input type="hidden" name="ftr_id[]" value="' + it.id + '"></td>' +
                    '<td>' + escapeHtml(it.item_name || '') + '</td>' +
                    '<td>' + (it.uom || 'Nos') + '</td>' +
                    '<td class="fw-semibold">' + sendQty + '</td>' +
                    '<td><input type="number" name="received_qty[]" class="form-control form-control-sm recv-qty" value="' + sendQty + '" min="0" step="1"></td>' +
                '</tr>';

            condRows +=
                '<tr>' +
                    '<td><input type="number" name="good_qty[]" class="form-control form-control-sm good-qty" value="0" min="0" step="1" readonly></td>' +
                    '<td><input type="number" name="missing_qty[]" class="form-control form-control-sm missing-qty" value="0" min="0" step="1"></td>' +
                    '<td><input type="number" name="damage_qty[]" class="form-control form-control-sm damage-qty" value="0" min="0" step="1"></td>' +
                    '<td><input type="text" name="recv_remarks[]" class="form-control form-control-sm" placeholder="Remarks" maxlength="200"></td>' +
                '</tr>';
        });

        mainRows += '<tr class="total-row"><td colspan="3" class="text-end font-weight-bold">TOTAL</td><td id="totSend">' + totalSend + '</td><td id="totRecv">0</td></tr>';
        condRows += '<tr class="total-row"><td id="totGood">0</td><td id="totMiss">0</td><td id="totDamage">0</td><td></td></tr>';

        $('#recvMainBody').html(mainRows);
        $('#condBody').html(condRows);

        recalcAll();
    }

    // ── good = received - missing - damage (auto) + totals ────────────────
    function recalcAll() {
        let totalRecv = 0, totalGood = 0, totalMiss = 0, totalDamage = 0;

        $('.recv-qty').each(function (i) {
            const recv   = parseInt(this.value) || 0;
            const miss   = parseInt($('.missing-qty').eq(i).val()) || 0;
            const damage = parseInt($('.damage-qty').eq(i).val()) || 0;
            const good   = Math.max(0, recv - miss - damage);

            $('.good-qty').eq(i).val(good);

            totalRecv   += recv;
            totalGood   += good;
            totalMiss   += miss;
            totalDamage += damage;
        });

        $('#totRecv').text(totalRecv);
        $('#totGood').text(totalGood);
        $('#totMiss').text(totalMiss);
        $('#totDamage').text(totalDamage);
    }

    $(document).on('input', '.recv-qty, .missing-qty, .damage-qty', recalcAll);

    // ── Save (AJAX → laundryreceivestore) ─────────────────────────────────
    $('#laundryRecvForm').on('submit', function (e) {
        e.preventDefault();

        if (!$('#hdr_sn_select').val()) {
            Swal.fire({ icon: 'warning', title: 'Select Voucher', text: 'Please select a Send Voucher first.' });
            return;
        }
        if (!$('#recv_date').val()) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Receive Date is required.' });
            return;
        }
        if (!$('#recv_by').val().trim()) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Received By is required.' });
            return;
        }

        $('#saveBtn').prop('disabled', true);

        $.ajax({
            url: '{{ route("laundryreceivestore") }}',
            type: 'POST',
            data: new FormData(this),
            processData: false,
            contentType: false,
            headers: { 'X-CSRF-TOKEN': csrfToken },
            success: function (res) {
                $('#saveBtn').prop('disabled', false);
                if (res.success === true) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: res.message,
                        timer: 1500,
                        showConfirmButton: false
                    }).then(function () {
                        // reload, and scroll straight to the received-voucher table below
                        sessionStorage.setItem('scrollToRecvVouchers', '1');
                        window.location.reload();
                    });
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#saveBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error', text: (xhr.responseJSON && xhr.responseJSON.message) || 'Something went wrong.' });
            }
        });
    });

    // ── Toggle voucher items (expand/collapse detail panels) ──────────────
    $(document).on('click', '.toggle-items', function () {
        const target = $(this).data('target');
        $(target).toggleClass('d-none');
    });

    // ── Close ─────────────────────────────────────────────────────────────
    $('#closeBtn').on('click', function () { window.history.back(); });

    // ── After save reload: jump to the Received Vouchers table ────────────
    if (sessionStorage.getItem('scrollToRecvVouchers') === '1') {
        sessionStorage.removeItem('scrollToRecvVouchers');
        const card = document.getElementById('receivedVouchersCard');
        if (card) {
            setTimeout(function () {
                card.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }, 150);
        }
    }

    // ── DataTables (search / sort / pagination) for the history table ────
    if (document.getElementById('receivedVouchersTable')) {
        if (typeof DataTable !== 'undefined') {
            new DataTable('#receivedVouchersTable', {
                ordering: true,
                order: [],
                lengthMenu: [10, 25, 50],
                pageLength: 10
            });
        } else if ($.fn.DataTable) {
            $('#receivedVouchersTable').DataTable({
                ordering: true,
                order: [],
                lengthMenu: [10, 25, 50],
                pageLength: 10
            });
        }
    }

});
</script>

@endsection
