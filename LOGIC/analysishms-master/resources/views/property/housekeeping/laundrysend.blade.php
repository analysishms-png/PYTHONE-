@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')

<style>
    /* Only minimal scoped tweaks — the rest is Bootstrap 5 */
    .laundry-send .total-row td {
        background: #f2f6fc;
        font-weight: 600;
    }
    .laundry-send .table-qty { width: 110px; }
    .laundry-send .table-remarks { min-width: 160px; }
</style>

<div class="content-body">
    <div class="container-fluid px-4 py-3">
        <div class="laundry-send">

            <form id="laundrySendForm">
                @csrf

                {{-- Page header --}}
                <div class="row mb-3 align-items-center">
                    <div class="col">
                        <h4 class="font-weight-bold mb-0 text-dark">
                            <i class="fa-solid fa-shirt me-2 text-primary"></i>Laundry Send (Dirty Linen)
                        </h4>
                        <small class="text-muted">
                            <i class="fa-regular fa-calendar me-1"></i>
                            {{ \Carbon\Carbon::parse($ncurdate)->format('d-M-Y') }}
                            &nbsp;&bull;&nbsp; Housekeeping Module
                        </small>
                    </div>
                    <div class="col-auto">
                        <span class="font-weight-bold text-primary" style="font-size:1.2rem;">{{ $sendNo }}</span>
                    </div>
                </div>

                {{-- 1. SEND INFORMATION + LAUNDRY INFORMATION --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-3 px-4" style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
                        <span class="font-weight-bold text-white">
                            <i class="fa-solid fa-paper-plane me-2"></i>Send Information
                        </span>
                    </div>
                    <div class="card-body py-4 px-4">
                        <div class="row g-3">
                            {{-- left column: Send Information --}}
                            <div class="col-md-6">
                                <div class="row g-3">
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Send No.</label>
                                        <input type="text" class="form-control bg-light" value="{{ $sendNo }}" id="sendNo" readonly>
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Send Date <span class="text-danger">*</span></label>
                                        <input type="date" class="form-control" name="vdate" id="sendDate" value="{{ $ncurdate }}">
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Send Time</label>
                                        <input type="time" class="form-control" name="vtime" id="sendTime" value="{{ date('H:i') }}">
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Sent By <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="sent_by" id="sentBy" required maxlength="25"
                                               oninput="this.value = this.value.toUpperCase()">
                                    </div>
                                    <div class="col-12">
                                        <label class="col-form-label fw-semibold">Remark</label>
                                        <input type="text" class="form-control" name="hdr_send_remarks" id="remarkSend" maxlength="200">
                                    </div>
                                </div>
                            </div>

                            {{-- right column: Laundry Information --}}
                            <div class="col-md-6">
                                <div class="row g-3">
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Received By (Contractor)</label>
                                        <input type="text" class="form-control" name="contractor_recv_by" id="receivedBy" maxlength="25"
                                               oninput="this.value = this.value.toUpperCase()">
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Challan No.</label>
                                        <input type="text" class="form-control" name="challan_no" id="challanNo" maxlength="20">
                                    </div>
                                    <div class="col-6">
                                        <label class="col-form-label fw-semibold">Expected Return Date</label>
                                        <input type="date" class="form-control" name="expected_return_date" id="returnDate">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- 2. LINEN ITEMS TABLE --}}
                <div class="card shadow-sm mb-3">
                    <div class="card-header py-3 px-4 bg-light border-bottom">
                        <span class="font-weight-bold text-primary text-uppercase">
                            <i class="fa-solid fa-list-check me-1"></i>Linen Items
                        </span>
                    </div>
                    <div class="card-body py-3 px-3">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle" id="linenTable">
                                <thead class="thead-muted">
                                    <tr>
                                        <th style="width:50px;">Sr.</th>
                                        <th>Linen Item</th>
                                        <th style="width:80px;">UOM</th>
                                        <th class="table-qty">Qty (Pieces)</th>
                                        <th class="table-remarks">Remarks</th>
                                        <th style="width:110px;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="tableBody">
                                    @foreach ($linenItems as $i => $item)
                                        <tr class="item-row">
                                            <td>{{ $i + 1 }}</td>
                                            <td>
                                                {{ $item->item_name }}
                                                <input type="hidden" name="item_code[]" value="{{ $item->item_code }}">
                                                <input type="hidden" name="item_name[]" value="{{ $item->item_name }}">
                                            </td>
                                            <td><span class="font-weight-bold text-primary">Nos</span></td>
                                            <td>
                                                <input type="number" name="send_qty[]" value="0" min="0" step="1"
                                                       class="form-control qty-input">
                                            </td>
                                            <td>
                                                <input type="text" name="send_remarks[]" class="form-control remark-input"
                                                       placeholder="Remarks" maxlength="200">
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-outline-danger remove-row">
                                                    <i class="fa-solid fa-trash"></i> Remove
                                                </button>
                                            </td>
                                        </tr>
                                    @endforeach
                                    <tr class="total-row">
                                        <td colspan="3" class="text-end font-weight-bold">TOTAL</td>
                                        <td id="totalQtyDisplay" class="font-weight-bold text-primary" style="font-size:1.2rem;">0</td>
                                        <td colspan="2"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="form-text">* Only rows with Qty &gt; 0 will be saved.</div>
                    </div>
                </div>

                {{-- Action bar --}}
                <div class="d-flex justify-content-end gap-2">
                    <button type="button" class="btn btn-light border" id="clearBtn">Clear</button>
                    <button type="button" class="btn btn-primary" id="submitBtn">
                        <i class="fa-solid fa-floppy-disk me-1"></i>Submit
                    </button>
                </div>

            </form>

            {{-- 3. SENT VOUCHERS HISTORY — fetched from DB after submit --}}
            <div class="card shadow-sm mb-3 mt-4" id="sentVouchersCard">
                <div class="card-header py-3 px-4" style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
                    <span class="font-weight-bold text-white">
                        <i class="fa-solid fa-clock-rotate-left me-2"></i>Sent Vouchers (DB se fetched)
                    </span>
                    <span class="text-white ml-2">{{ count($sentVouchers) }} voucher(s)</span>
                </div>
                <div class="card-body py-3 px-3">
                    @if (count($sentVouchers) > 0)
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle" id="sentVouchersTable">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sr.</th>
                                        <th>Voucher No</th>
                                        <th>Send Date</th>
                                        <th>Sent By</th>
                                        <th>Challan No</th>
                                        <th class="text-center">Total Qty</th>
                                        <th class="text-center">Status</th>
                                        <th>Items</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($sentVouchers as $v)
                                        @php
                                            $vItems = isset($voucherFtrs[$v->id]) ? $voucherFtrs[$v->id] : collect();
                                            $totQty = $vItems->sum('send_qty');
                                            $vNo    = 'LAISS' . str_pad($v->vno, 4, '0', STR_PAD_LEFT);
                                            $recvNo = !empty($v->recv_vno)
                                                ? 'LAREC' . str_pad($v->recv_vno, 4, '0', STR_PAD_LEFT)
                                                : null;
                                        @endphp
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td class="font-weight-bold">{{ $vNo }}</td>
                                            <td>{{ \Carbon\Carbon::parse($v->vdate)->format('d-M-Y') }}</td>
                                            <td>{{ $v->sent_by }}</td>
                                            <td>{{ $v->challan_no ?? '—' }}</td>
                                            <td class="text-center font-weight-bold">{{ $totQty }}</td>
                                            <td class="text-center font-weight-bold">
                                                {{ $v->send_status }}
                                                @if ($recvNo)
                                                    <small class="d-block text-muted mt-1">
                                                        recv {{ $recvNo }}
                                                        {{ $v->recv_date ? \Carbon\Carbon::parse($v->recv_date)->format('d-M-Y') : '' }}
                                                    </small>
                                                @endif
                                            </td>
                                            <td class="text-center">
                                                <button type="button" class="btn btn-sm btn-outline-primary toggle-items"
                                                        data-target="#voucherItems{{ $v->id }}">
                                                    <i class="fa-solid fa-eye me-1"></i>View
                                                </button>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>

                        {{-- Detail panels (table ke bahar — DataTables tbody ko clean rakhta hai) --}}
                        @foreach ($sentVouchers as $v)
                            @php
                                $vItems = isset($voucherFtrs[$v->id]) ? $voucherFtrs[$v->id] : collect();
                                $vNo    = 'LAISS' . str_pad($v->vno, 4, '0', STR_PAD_LEFT);
                            @endphp
                            <div class="voucher-items-panel d-none mt-2" id="voucherItems{{ $v->id }}">
                                <div class="card border">
                                    <div class="card-header py-2 px-3 bg-secondary text-white">
                                        <span class="font-weight-bold" style="font-size:16px;">Items of {{ $vNo }}</span>
                                        <button type="button" class="btn btn-sm btn-outline-light float-right toggle-items" data-target="#voucherItems{{ $v->id }}">&times;</button>
                                    </div>
                                    <div class="card-body p-3">
                                        <div class="table-responsive">
                                            <table class="table table-bordered mb-0" style="font-size:16px;">
                                                <thead class="bg-secondary">
                                                    <tr>
                                                        <th style="width:40px;">Sr.</th>
                                                        <th>Item</th>
                                                        <th>UOM</th>
                                                        <th class="text-center">Qty</th>
                                                        <th>Remarks</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @forelse ($vItems as $it)
                                                        <tr>
                                                            <td>{{ $loop->iteration }}</td>
                                                            <td>{{ $it->item_name }}</td>
                                                            <td>{{ $it->uom }}</td>
                                                            <td class="text-center font-weight-bold">{{ $it->send_qty }}</td>
                                                            <td>{{ $it->send_remarks ?? '—' }}</td>
                                                        </tr>
                                                    @empty
                                                        <tr>
                                                            <td colspan="5" class="text-center text-muted">No items</td>
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
                            No send vouchers yet — submit the form above to create the first one.
                        </div>
                    @endif
                </div>
            </div>

        </div>
    </div>
</div>

<script>
(function () {
    const totalQtyDisplay = document.getElementById('totalQtyDisplay');

    // auto total of all qty inputs
    function updateTotal() {
        let total = 0;
        document.querySelectorAll('.qty-input').forEach(function (input) {
            const val = parseInt(input.value, 10);
            if (!isNaN(val) && val >= 0) total += val;
        });
        totalQtyDisplay.textContent = total;
        return total;
    }

    // real-time total
    document.addEventListener('input', function (e) {
        if (e.target.classList && e.target.classList.contains('qty-input')) updateTotal();
    });

    // ── Remove row ─────────────────────────────────────────────────────────
    document.querySelectorAll('.remove-row').forEach(function (btn) {
        btn.addEventListener('click', function () {
            const tr = this.closest('tr');
            const qty = tr.querySelector('.qty-input');
            if (qty) qty.value = '0';
            tr.style.display = 'none';
            updateTotal();
        });
    });

    // ── Clear (reset form) ─────────────────────────────────────────────────
    document.getElementById('clearBtn').addEventListener('click', function (e) {
        e.preventDefault();

        // reset all inputs but keep sendNo
        document.querySelectorAll('#laundrySendForm input').forEach(function (inp) {
            if (inp.id === 'sendNo') return;
            if (inp.type === 'number') inp.value = '0';
            else if (inp.type === 'date' || inp.type === 'time') inp.value = '';
            else inp.value = '';
        });

        // show all rows again
        document.querySelectorAll('.item-row').forEach(function (tr) { tr.style.display = ''; });

        // restore defaults
        document.getElementById('sendDate').value = '{{ $ncurdate }}';
        document.getElementById('sendTime').value = '{{ date("H:i") }}';

        updateTotal();
    });

    // ── Submit (AJAX → laundrysendstore) ───────────────────────────────────
    document.getElementById('submitBtn').addEventListener('click', function (e) {
        e.preventDefault();

        const sendDate = document.getElementById('sendDate').value;
        const sentBy   = document.getElementById('sentBy').value.trim();

        if (!sendDate) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Send Date is required.' });
            return;
        }
        if (!sentBy) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Sent By is required.' });
            return;
        }
        if (updateTotal() <= 0) {
            Swal.fire({ icon: 'warning', title: 'No Quantity', text: 'Enter quantity for at least one linen item.' });
            return;
        }

        const btn = this;
        btn.disabled = true;

        const form     = document.getElementById('laundrySendForm');
        const formData = new FormData(form);

        fetch('{{ route("laundrysendstore") }}', {
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                'Accept': 'application/json'
            },
            body: formData
        })
        .then(function (res) {
            return res.json().then(function (data) { return { ok: res.ok, data: data }; });
        })
        .then(function (result) {
            btn.disabled = false;
            if (result.data.success === true) {
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: result.data.message + ' — ' + result.data.sendNo,
                    timer: 1500,
                    showConfirmButton: false
                }).then(function () {
                    // reload, and scroll straight to the saved-voucher table below
                    sessionStorage.setItem('scrollToVouchers', '1');
                    window.location.reload();
                });
            } else {
                Swal.fire({ icon: 'error', title: 'Error', text: result.data.message });
            }
        })
        .catch(function (err) {
            btn.disabled = false;
            Swal.fire({ icon: 'error', title: 'Error', text: 'Something went wrong. ' + err.message });
        });
    });

    // ── Toggle voucher items (expand/collapse detail panels) ──────────────
    document.querySelectorAll('.toggle-items').forEach(function (btn) {
        btn.addEventListener('click', function () {
            const target = document.querySelector(this.dataset.target);
            if (target) target.classList.toggle('d-none');
        });
    });

    // ── After submit reload: jump to the Sent Vouchers table ─────────────
    if (sessionStorage.getItem('scrollToVouchers') === '1') {
        sessionStorage.removeItem('scrollToVouchers');
        const card = document.getElementById('sentVouchersCard');
        if (card) {
            setTimeout(function () {
                card.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }, 150);
        }
    }

    // initial total
    updateTotal();

    // ── DataTables (search / sort / pagination) for the history table ────
    if (document.getElementById('sentVouchersTable')) {
        if (typeof DataTable !== 'undefined') {
            new DataTable('#sentVouchersTable', {
                ordering: true,
                order: [],
                lengthMenu: [10, 25, 50],
                pageLength: 10
            });
        } else if (window.jQuery && $.fn.DataTable) {
            $('#sentVouchersTable').DataTable({
                ordering: true,
                order: [],
                lengthMenu: [10, 25, 50],
                pageLength: 10
            });
        }
    }
})();
</script>

@endsection
