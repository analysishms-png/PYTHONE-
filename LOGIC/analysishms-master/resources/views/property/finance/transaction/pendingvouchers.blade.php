@extends('property.layouts.main')
@section('main-container')
    <style>
        /* ===== PAGE HEADER ===== */
        .vv-page-header {
            background: #1a3a6b;
            color: #fff;
            padding: 10px 18px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 8px;
            margin-bottom: 0;
        }

        .vv-page-header h5 {
            margin: 0;
            font-size: 16px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .vv-page-header .vv-user-info {
            font-size: 12px;
            display: flex;
            align-items: center;
            gap: 14px;
            flex-wrap: wrap;
        }

        .vv-page-header .vv-user-info span {
            white-space: nowrap;
        }

        .vv-page-header .vv-user-info a {
            color: #ffd700;
            text-decoration: none;
            font-weight: bold;
        }

        .vv-page-header .vv-user-info a:hover {
            text-decoration: underline;
        }

        /* ===== FILTER BAR ===== */
        .vv-filter-bar {
            background: #fff;
            border: 1px solid #ccc;
            border-top: none;
            padding: 10px 16px;
            display: flex;
            align-items: flex-end;
            flex-wrap: wrap;
            gap: 12px;
        }

        .vv-filter-bar .vv-field {
            display: flex;
            flex-direction: column;
            gap: 3px;
        }

        .vv-filter-bar label {
            font-size: 12px;
            font-weight: 600;
            color: #333;
            margin: 0;
        }

        .vv-filter-bar .form-control,
        .vv-filter-bar .form-select {
            font-size: 13px;
            height: 32px;
            padding: 2px 8px;
            min-width: 130px;
            border: 1px solid #aaa;
        }

        .vv-filter-bar .btn-search {
            background: #1a3a6b;
            color: #fff;
            font-size: 13px;
            height: 32px;
            padding: 0 16px;
            border: none;
            border-radius: 4px;
            white-space: nowrap;
        }

        .vv-filter-bar .btn-search:hover {
            background: #0d2a55;
        }

        .vv-filter-bar .btn-clear {
            background: #fff;
            color: #333;
            font-size: 13px;
            height: 32px;
            padding: 0 14px;
            border: 1px solid #aaa;
            border-radius: 4px;
            white-space: nowrap;
        }

        .vv-filter-bar .btn-clear:hover {
            background: #f0f0f0;
        }

        /* ===== SECTION TITLE ===== */
        .vv-section-title {
            font-size: 14px;
            font-weight: bold;
            color: #1a3a6b;
            margin-bottom: 8px;
        }

        /* ===== VOUCHER TABLE ===== */
        .vv-table thead th {
            background: #1a3a6b;
            color: #fff;
            font-size: 12px;
            padding: 7px 10px;
            white-space: nowrap;
            border: 1px solid #2a4a7b;
        }

        .vv-table tbody td {
            font-size: 12px;
            padding: 6px 10px;
            vertical-align: middle;
            border: 1px solid #ddd;
        }

        .vv-table tbody tr:hover {
            background: #e8f0fe;
            cursor: pointer;
        }

        .vv-table tbody tr.selected-row {
            background: #cfe2ff;
        }

        .btn-vv-view {
            background: #1a3a6b;
            color: #fff;
            font-size: 11px;
            padding: 3px 10px;
            border-radius: 4px;
            border: none;
            white-space: nowrap;
        }

        .btn-vv-view:hover {
            background: #0d2a55;
            color: #fff;
        }

        /* ===== PAGINATION ===== */
        .vv-pagi {
            display: flex;
            align-items: center;
            gap: 3px;
            flex-wrap: wrap;
        }

        .vv-pagi button {
            min-width: 28px;
            height: 26px;
            font-size: 12px;
            padding: 0 5px;
            border: 1px solid #aaa;
            background: #fff;
            border-radius: 3px;
            cursor: pointer;
        }

        .vv-pagi button:disabled {
            opacity: 0.4;
            cursor: default;
        }

        .vv-pagi button.active {
            background: #1a3a6b;
            color: #fff;
            border-color: #1a3a6b;
        }

        .vv-pagi select {
            height: 26px;
            font-size: 12px;
            padding: 0 4px;
            border: 1px solid #aaa;
            border-radius: 3px;
        }

        /* ===== DETAIL CARD ===== */
        .vv-detail-card {
            border: 1px solid #ccc;
            border-radius: 0;
            padding: 14px 16px;
            background: #fff;
        }

        .vv-dh-inline {
            display: flex;
            flex-wrap: wrap;
            gap: 0;
            font-size: 12px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
        }

        .vv-dh-inline .vv-dh-col {
            padding: 5px 12px;
            border-right: 1px solid #ddd;
            min-width: 100px;
        }

        .vv-dh-inline .vv-dh-col:last-child {
            border-right: none;
        }

        .vv-dh-inline .vv-dh-col .dh-label {
            font-size: 11px;
            color: #555;
            display: block;
            margin-bottom: 1px;
        }

        .vv-dh-inline .vv-dh-col .dh-val {
            font-size: 12px;
            font-weight: 600;
            color: #111;
        }

        .vv-detail-table {
            border: 1px solid #ccc;
            margin-bottom: 0;
        }

        .vv-detail-table thead th {
            background: #f2f2f2;
            font-size: 12px;
            font-weight: 600;
            padding: 6px 10px;
            border: 1px solid #ccc;
            color: #222;
        }

        .vv-detail-table tbody td {
            font-size: 12px;
            padding: 5px 10px;
            border: 1px solid #ddd;
            vertical-align: middle;
        }

        .vv-detail-table tfoot td {
            font-size: 12px;
            font-weight: bold;
            padding: 6px 10px;
            background: #f0f0f0;
            border: 1px solid #ccc;
        }

        /* ===== VERIFY CARD ===== */
        .vv-verify-card {
            border: 1px solid #ccc;
            border-radius: 0;
            padding: 14px 16px;
            background: #fff;
            height: 100%;
        }

        .vv-verify-card .vv-verify-title {
            color: #1a3a6b;
            font-weight: bold;
            font-size: 14px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 8px;
            margin-bottom: 14px;
        }

        .vv-radio-approve {
            accent-color: #1a3a6b;
        }

        .vv-radio-reject {
            accent-color: #dc3545;
        }

        .vv-verifier-row {
            display: flex;
            gap: 12px;
            margin-bottom: 14px;
        }

        .vv-verifier-row .vv-vf-item {
            flex: 1;
        }

        .vv-verifier-row .vv-vf-item label {
            font-size: 12px;
            color: #444;
            display: block;
            margin-bottom: 3px;
        }

        .vv-verifier-row .vv-vf-item input {
            width: 100%;
            font-size: 12px;
            padding: 4px 8px;
            border: 1px solid #aaa;
            border-radius: 3px;
            background: #f9f9f9;
        }

        .vv-action-btns {
            display: flex;
            gap: 8px;
        }

        .vv-action-btns .btn {
            font-size: 13px;
            padding: 6px 18px;
        }

        /* ===== FOOTER NOTE ===== */
        .vv-footer-note {
            text-align: center;
            color: red;
            font-size: 13px;
            font-weight: 600;
            padding: 12px 0 6px;
        }

        /* ===== ATTACHED DOC ===== */
        .vv-attach-title {
            color: #1a3a6b;
            font-weight: bold;
            font-size: 13px;
        }

        .vv-attach-link {
            color: #1a3a6b;
            font-size: 13px;
            text-decoration: none;
        }

        .vv-attach-link:hover {
            text-decoration: underline;
        }

        /* ===== TOAST ===== */
        .vv-toast {
            position: fixed;
            top: 24px;
            right: 24px;
            z-index: 9999;
            min-width: 280px;
            max-width: 380px;
            padding: 14px 18px;
            border-radius: 6px;
            font-size: 13px;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.18);
            animation: vvSlideIn 0.3s ease;
        }

        .vv-toast.success {
            background: #1a7a1a;
            color: #fff;
        }

        .vv-toast.error {
            background: #dc3545;
            color: #fff;
        }

        .vv-toast.warning {
            background: #e67e00;
            color: #fff;
        }

        .vv-toast.info {
            background: #1a3a6b;
            color: #fff;
        }

        .vv-toast .vv-toast-icon {
            font-size: 16px;
        }

        .vv-toast .vv-toast-msg {
            flex: 1;
        }

        .vv-toast .vv-toast-close {
            cursor: pointer;
            font-size: 16px;
            opacity: 0.8;
            background: none;
            border: none;
            color: #fff;
            padding: 0;
            line-height: 1;
        }

        .vv-toast .vv-toast-close:hover {
            opacity: 1;
        }

        @keyframes vvSlideIn {
            from {
                opacity: 0;
                transform: translateX(60px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes vvSlideOut {
            from {
                opacity: 1;
                transform: translateX(0);
            }

            to {
                opacity: 0;
                transform: translateX(60px);
            }
        }

        /* ===== CONFIRM MODAL ===== */
        .vv-modal-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.45);
            z-index: 9998;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .vv-modal-box {
            background: #fff;
            border-radius: 6px;
            padding: 24px 28px;
            min-width: 320px;
            max-width: 420px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.22);
            animation: vvSlideIn 0.25s ease;
        }

        .vv-modal-box .vv-modal-title {
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 10px;
            color: #1a3a6b;
        }

        .vv-modal-box .vv-modal-msg {
            font-size: 13px;
            color: #333;
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .vv-modal-box .vv-modal-btns {
            display: flex;
            justify-content: flex-end;
            gap: 10px;
        }

        .vv-modal-box .vv-modal-btns .btn {
            font-size: 13px;
            padding: 6px 20px;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid px-2">
            {{-- ===== BACK TO DASHBOARD BUTTON ===== --}}
            <div style="background:#f4f6fb; border-bottom:1px solid #dde3f0; padding:6px 18px;">
                <a href="{{ route('finance.transaction.voucherverification') }}"
                    style="
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: #fff;
            color: #1a3a6b;
            font-size: 12px;
            font-weight: 600;
            padding: 5px 14px;
            border: 1px solid #1a3a6b;
            border-radius: 4px;
            text-decoration: none;
            transition: all 0.2s;
        "
                    onmouseover="this.style.background='#1a3a6b';this.style.color='#fff';"
                    onmouseout="this.style.background='#fff';this.style.color='#1a3a6b';">
                    <i class="fa fa-arrow-left" style="font-size:11px;"></i> Back to Dashboard
                </a>
            </div>

            {{-- ===== PAGE HEADER ===== --}}
            <div class="vv-page-header">
                <h5>VOUCHER VERIFICATION</h5>
                <div class="vv-user-info">
                    <span>User : <strong>{{ Auth::user()->name }}</strong></span>
                    <span>|</span>
                    <span>Role : <strong>VERIFIER</strong></span>
                    <span>|</span>
                    <span id="headerDateTime">{{ \Carbon\Carbon::now()->format('d-M-Y h:i A') }}</span>
                </div>
            </div>

            {{-- ===== FILTER BAR ===== --}}
            <div class="vv-filter-bar">
                <div class="vv-field">
                    <label>From Date</label>
                    <input type="date" id="fromDate" class="form-control" value="{{ $fromDate ?? ncurdate() }}">
                </div>
                <div class="vv-field">
                    <label>To Date</label>
                    <input type="date" id="toDate" class="form-control" value="{{ $toDate ?? ncurdate() }}">
                </div>
                <div class="vv-field">
                    <label>Voucher Type</label>
                    <select id="voucherType" class="form-select">
                        <option value="">-- ALL --</option>
                        @foreach ($voucherTypes as $vt)
                            <option value="{{ $vt->vtype }}"
                                {{ ($selectedVType ?? '') == $vt->vtype ? 'selected' : '' }}>
                                {{ $vt->description }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="vv-field">
                    <label>Status</label>
                    <select id="statusFilter" class="form-select">
                        <option value="P" {{ ($statusFilter ?? 'P') == 'P' ? 'selected' : '' }}>Pending</option>
                        <option value="A" {{ ($statusFilter ?? '') == 'A' ? 'selected' : '' }}>Approved</option>
                        <option value="R" {{ ($statusFilter ?? '') == 'R' ? 'selected' : '' }}>Rejected</option>
                    </select>
                </div>
                <div class="vv-field" style="flex-direction:row; gap:6px;">
                    <button class="btn-search" id="searchBtn">
                        <i class="fa fa-search"></i> Search
                    </button>
                    <button class="btn-clear" id="clearBtn">
                        ↺ Clear
                    </button>
                </div>
            </div>

            {{-- ===== VOUCHER TABLE CARD ===== --}}
            <div class="card shadow-sm mb-3 mt-3" style="border-radius:4px;">
                <div class="card-body pb-2">

                    <div class="vv-section-title">
                        @if (($statusFilter ?? 'P') == 'A')
                            Approved Vouchers
                        @elseif(($statusFilter ?? 'P') == 'R')
                            Rejected Vouchers
                        @else
                            Pending Vouchers
                        @endif
                    </div>

                    <div class="d-flex justify-content-between align-items-center mb-2 flex-wrap gap-2">
                        <div class="d-flex align-items-center gap-2">
                            <select id="pageSize" class="form-select form-select-sm" style="width:65px;">
                                <option value="5">5</option>
                                <option value="10">10</option>
                                <option value="25" selected>25</option>
                                <option value="50">50</option>
                            </select>
                            <span style="font-size:12px; color:#555;">Entries Per Page</span>
                        </div>
                        <div id="tableInfo" style="font-size:12px; color:#555;"></div>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered vv-table w-100" id="voucherTable">
                            <thead>
                                <tr>
                                    <th>Sr No.</th>
                                    <th>Voucher No</th>
                                    <th>Voucher Date</th>
                                    <th>Voucher Type</th>
                                    <th>Narration</th>
                                    <th class="text-end">Debit</th>
                                    <th class="text-end">Credit</th>
                                    <th>Entry User</th>
                                    <th>Entry Date</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody id="voucherTbody">
                                <tr>
                                    <td colspan="10" class="text-center text-muted py-3">
                                        Click Search To Load Data.
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="d-flex justify-content-between align-items-center mt-2 flex-wrap gap-2">
                        <div id="pageInfoText" style="font-size:12px; color:#555;"></div>
                        <div class="vv-pagi" id="pagination"></div>
                    </div>

                </div>
            </div>

            {{-- ===== DETAIL + VERIFICATION PANEL ===== --}}
            <div class="row g-0" id="detailSection" style="display:flex; margin-bottom:0;">

                {{-- Left: Voucher Details --}}
                <div class="col-lg-8">
                    <div class="vv-detail-card" style="border-right:none;">
                        <div class="vv-section-title">Voucher Details</div>

                        <div class="vv-dh-inline mb-2">
                            <div class="vv-dh-col">
                                <span class="dh-label">Voucher No</span>
                                <span class="dh-val" id="dVoucherNo">—</span>
                            </div>
                            <div class="vv-dh-col">
                                <span class="dh-label">Voucher Date</span>
                                <span class="dh-val" id="dVoucherDate">—</span>
                            </div>
                            <div class="vv-dh-col">
                                <span class="dh-label">Voucher Type</span>
                                <span class="dh-val" id="dVoucherType">—</span>
                            </div>
                            <div class="vv-dh-col" style="flex:2;">
                                <span class="dh-label">Narration</span>
                                <span class="dh-val" id="dNarration">—</span>
                            </div>
                            <div class="vv-dh-col">
                                <span class="dh-label">Debit</span>
                                <span class="dh-val" id="dDebit">—</span>
                            </div>
                            <div class="vv-dh-col" style="border-right:none;">
                                <span class="dh-label">Credit</span>
                                <span class="dh-val" id="dCredit">—</span>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table class="table vv-detail-table mb-2">
                                <thead>
                                    <tr>
                                        <th style="width:45px;">S.No.</th>
                                        <th>Account Code</th>
                                        <th>Account Name</th>
                                        <th class="text-end">Debit</th>
                                        <th class="text-end">Credit</th>
                                        <th>Narration</th>
                                    </tr>
                                </thead>
                                <tbody id="detailTbody">
                                    <tr>
                                        <td colspan="6" class="text-center text-muted py-2">
                                            Select a voucher to view details.
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="3" class="text-end fw-bold">Total</td>
                                        <td class="text-end fw-bold" id="totalDr">0.00</td>
                                        <td class="text-end fw-bold" id="totalCr">0.00</td>
                                        <td></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        {{-- <div class="mt-3">
                            <div class="vv-attach-title mb-1">
                                <i class="fa fa-paperclip"></i> Attached Document
                            </div>
                            <div id="attachedDoc" style="font-size:13px; padding-left:4px;">
                                <span class="text-muted">—</span>
                            </div>
                        </div> --}}
                    </div>
                </div>

                {{-- Right: Verification Action --}}
                <div class="col-lg-4">
                    <div class="vv-verify-card">
                        <div class="vv-verify-title">Verification Action</div>

                        {{-- Status --}}
                        <div class="mb-3">
                            <div style="font-size:13px; font-weight:600; margin-bottom:6px;">Status</div>
                            <div class="d-flex align-items-center gap-4">
                                <div class="d-flex align-items-center gap-2">
                                    <input type="radio" name="verifyStatus" id="radioApprove" value="Y" checked
                                        class="vv-radio-approve" style="width:16px;height:16px;">
                                    <label for="radioApprove"
                                        style="font-size:13px; font-weight:600; color:#1a7a1a; margin:0; cursor:pointer;">
                                        Verify
                                    </label>
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <input type="radio" name="verifyStatus" id="radioReject" value="R"
                                        class="vv-radio-reject" style="width:16px;height:16px;">
                                    <label for="radioReject"
                                        style="font-size:13px; font-weight:600; color:#dc3545; margin:0; cursor:pointer;">
                                        Reject
                                    </label>
                                </div>
                            </div>
                        </div>

                        {{-- Remark --}}
                        <div class="mb-3">
                            <label style="font-size:13px; font-weight:600; margin-bottom:4px; display:block;">
                                Remark <span style="color:red;">*</span>
                            </label>
                            <textarea id="verifyRemark" class="form-control" rows="5" style="font-size:13px; resize:vertical;"
                                placeholder="Remark is required..."></textarea>
                        </div>

                        {{-- Verifier User + Date --}}
                        <div class="vv-verifier-row">
                            <div class="vv-vf-item">
                                <label>Verifier User</label>
                                <input type="text" id="verifierUser" value="{{ Auth::user()->name }}" readonly>
                            </div>
                            <div class="vv-vf-item">
                                <label>Verification Date</label>
                                <div style="position:relative;">
                                    <input type="text" id="verifierDate"
                                        value="{{ \Carbon\Carbon::now()->format('d/m/Y h:i A') }}" readonly
                                        style="width:100%; font-size:12px; border:1px solid #aaa; border-radius:3px; padding:4px 28px 4px 8px; background:#f9f9f9;">
                                    <i class="fa fa-calendar"
                                        style="position:absolute; right:8px; top:50%; transform:translateY(-50%); color:#888; font-size:13px; pointer-events:none;"></i>
                                </div>
                            </div>
                        </div>

                        {{-- Action Buttons --}}
                        <div class="vv-action-btns">
                            <button class="btn btn-success" id="approveBtn">
                                <i class="fa fa-check"></i> Verify
                            </button>
                            <button class="btn btn-danger" id="rejectBtn">
                                <i class="fa fa-times"></i> Reject
                            </button>
                            <button class="btn btn-secondary" id="resetBtn">
                                ↺ Reset
                            </button>
                        </div>

                    </div>
                </div>

            </div>
            {{-- end detail section --}}

            {{-- ===== FOOTER NOTE ===== --}}
            <div class="vv-footer-note" id="footerNote" style="display:block;">
                <strong>Note :</strong> After Approval, Voucher cannot be edited.
            </div>

            {{-- ===== TOAST CONTAINER ===== --}}
            <div id="vvToastContainer"></div>

            {{-- ===== CONFIRM MODAL ===== --}}
            <div class="vv-modal-overlay" id="vvConfirmModal" style="display:none;">
                <div class="vv-modal-box">
                    <div class="vv-modal-title" id="vvModalTitle">Confirm</div>
                    <div class="vv-modal-msg" id="vvModalMsg">Are you sure?</div>
                    <div class="vv-modal-btns">
                        <button class="btn btn-secondary" id="vvModalCancel">Cancel</button>
                        <button class="btn btn-success" id="vvModalConfirm">Confirm</button>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script>
        // ============================================================
        // DATA
        // ============================================================
        let allData = @json($data);
        let pageSize = 25;
        let curPage = 1;
        let selectedDocid = null;

        // ============================================================
        // TOAST HELPER
        // ============================================================
        function showToast(msg, type = 'info', duration = 3500) {
            const icons = {
                success: 'fa-check-circle',
                error: 'fa-times-circle',
                warning: 'fa-exclamation-triangle',
                info: 'fa-info-circle'
            };
            const id = 'toast_' + Date.now();
            const html = `
                <div class="vv-toast ${type}" id="${id}">
                    <i class="fa ${icons[type] ?? 'fa-info-circle'} vv-toast-icon"></i>
                    <span class="vv-toast-msg">${msg}</span>
                    <button class="vv-toast-close" onclick="removeToast('${id}')">✕</button>
                </div>`;
            $('#vvToastContainer').append(html);
            setTimeout(() => removeToast(id), duration);
        }

        function removeToast(id) {
            const el = $('#' + id);
            el.css('animation', 'vvSlideOut 0.3s ease forwards');
            setTimeout(() => el.remove(), 300);
        }

        // ============================================================
        // CONFIRM MODAL HELPER
        // ============================================================
        function showConfirm(title, msg, confirmText, confirmClass, onConfirm) {
            $('#vvModalTitle').text(title);
            $('#vvModalMsg').text(msg);
            $('#vvModalConfirm')
                .text(confirmText)
                .removeClass('btn-success btn-danger btn-primary')
                .addClass(confirmClass);
            $('#vvConfirmModal').show();

            $('#vvModalConfirm').off('click').on('click', function() {
                $('#vvConfirmModal').hide();
                onConfirm();
            });
            $('#vvModalCancel').off('click').on('click', function() {
                $('#vvConfirmModal').hide();
            });
        }

        // ============================================================
        // SEARCH
        // ============================================================
        $('#searchBtn').on('click', function() {
            const fromDate = $('#fromDate').val();
            const toDate = $('#toDate').val();
            const voucherType = $('#voucherType').val();
            const statusFilter = $('#statusFilter').val();
            window.location.href =
                `?fromDate=${fromDate}&toDate=${toDate}&voucherType=${voucherType}&statusFilter=${statusFilter}`;
        });

        $('#clearBtn').on('click', function() {
            $('#fromDate').val('{{ ncurdate() }}');
            $('#toDate').val('{{ ncurdate() }}');
            $('#voucherType').val('');
            $('#statusFilter').val('P');
            allData = [];
            curPage = 1;
            renderTable();
            hideDetail();
        });

        $('#pageSize').on('change', function() {
            pageSize = parseInt($(this).val());
            curPage = 1;
            renderTable();
        });

        // ============================================================
        // RENDER TABLE
        // ============================================================
        function renderTable() {
            const start = (curPage - 1) * pageSize;
            const end = start + pageSize;
            const slice = allData.slice(start, end);

            let html = '';
            if (slice.length === 0) {
                html = '<tr><td colspan="10" class="text-center text-muted py-3">No Vouchers Found.</td></tr>';
            } else {
                slice.forEach(function(row, i) {
                    const srNo = start + i + 1;
                    html += `<tr class="voucher-row" data-docid="${row.docid}">
                        <td>${srNo}</td>
                        <td>${row.vprefix ?? ''}/${row.vno ?? ''}</td>
                        <td>${row.vdate ?? ''}</td>
                        <td>${row.description ?? row.vtype ?? ''}</td>
                        <td>${row.narration ?? ''}</td>
                        <td class="text-end">${formatAmt(row.amtdr)}</td>
                        <td class="text-end">${formatAmt(row.amtcr)}</td>
                        <td>${row.u_name ?? ''}</td>
                        <td>${row.created_at ?? ''}</td>
                        <td>
                            <button class="btn-vv-view view-btn" data-docid="${row.docid}">
                                <i class="fa fa-eye"></i> View
                            </button>
                        </td>
                    </tr>`;
                });
            }

            $('#voucherTbody').html(html);
            renderPagination();
            updateInfo();
        }

        // ============================================================
        // PAGINATION
        // ============================================================
        function renderPagination() {
            const total = allData.length;
            const pages = Math.ceil(total / pageSize) || 1;
            let html = '';

            html += `<button onclick="goPage(1)" ${curPage === 1 ? 'disabled' : ''}>|◀</button>`;
            html += `<button onclick="goPage(${curPage - 1})" ${curPage === 1 ? 'disabled' : ''}>◀</button>`;
            for (let p = 1; p <= pages; p++) {
                html += `<button onclick="goPage(${p})" class="${p === curPage ? 'active' : ''}">${p}</button>`;
            }
            html += `<button onclick="goPage(${curPage + 1})" ${curPage >= pages ? 'disabled' : ''}>▶</button>`;
            html += `<button onclick="goPage(${pages})" ${curPage >= pages ? 'disabled' : ''}>▶|</button>`;
            html += `&nbsp;<span style="font-size:12px;color:#555;">Page size:</span>
                     <select onchange="changePageSize(this.value)">
                        <option value="5"  ${pageSize == 5  ? 'selected' : ''}>5</option>
                        <option value="10" ${pageSize == 10 ? 'selected' : ''}>10</option>
                        <option value="25" ${pageSize == 25 ? 'selected' : ''}>25</option>
                        <option value="50" ${pageSize == 50 ? 'selected' : ''}>50</option>
                     </select>`;

            $('#pagination').html(html);
        }

        function goPage(p) {
            const pages = Math.ceil(allData.length / pageSize) || 1;
            if (p < 1 || p > pages) return;
            curPage = p;
            renderTable();
        }

        function changePageSize(val) {
            pageSize = parseInt(val);
            $('#pageSize').val(val);
            curPage = 1;
            renderTable();
        }

        function updateInfo() {
            const total = allData.length;
            const start = (curPage - 1) * pageSize + 1;
            const end = Math.min(curPage * pageSize, total);
            const pages = Math.ceil(total / pageSize) || 0;
            if (total === 0) {
                $('#pageInfoText').text('');
                $('#tableInfo').text('');
            } else {
                $('#pageInfoText').text(`Showing ${start} to ${end} of ${total} entries`);
                $('#tableInfo').text(`${total} items in ${pages} pages`);
            }
        }

        // ============================================================
        // VIEW BUTTON — load detail via AJAX
        // ============================================================
        $(document).on('click', '.view-btn', function(e) {
            e.stopPropagation();
            loadDetail($(this).data('docid'));
        });

        $(document).on('click', '.voucher-row', function() {
            loadDetail($(this).data('docid'));
        });

        function loadDetail(docid) {
            selectedDocid = docid;

            $('.voucher-row').removeClass('selected-row');
            $(`.voucher-row[data-docid="${docid}"]`).addClass('selected-row');

            const row = allData.find(item => item.docid == docid);
            if (!row) return;

            // Fill header
            $('#dVoucherNo').text(`${row.vprefix ?? ''}/${row.vno ?? ''}`);
            $('#dVoucherDate').text(row.vdate ?? '—');
            $('#dVoucherType').text(row.description ?? row.vtype ?? '—');
            $('#dNarration').text(row.narration ?? '—');
            $('#dDebit').text(formatAmt(row.amtdr));
            $('#dCredit').text(formatAmt(row.amtcr));
            $('#attachedDoc').html('<span class="text-muted">—</span>');

            // Loading state
            $('#detailTbody').html(
                '<tr><td colspan="6" class="text-center text-muted py-2"><i class="fa fa-spinner fa-spin"></i> Loading...</td></tr>'
            );
            $('#totalDr, #totalCr').text('0.00');

            // AJAX
            $.ajax({
                url: '{{ route('voucher.detail') }}',
                type: 'GET',
                data: {
                    vno: row.vno,
                    vtype: row.vtype
                },
                success: function(res) {
                    if (res.success && res.data.length > 0) {
                        let html = '';
                        let totalDr = 0,
                            totalCr = 0;

                        res.data.forEach(function(item, index) {
                            totalDr += parseFloat(item.AmtDr) || 0;
                            totalCr += parseFloat(item.AmtCr) || 0;
                            html += `<tr>
                                <td>${index + 1}</td>
                                <td>${item.sub_code ?? ''}</td>
                                <td>${item.AccountName ?? ''}</td>
                                <td class="text-end">${formatAmt(item.AmtDr)}</td>
                                <td class="text-end">${formatAmt(item.AmtCr)}</td>
                                <td>${item.Narration ?? ''}</td>
                            </tr>`;
                        });

                        $('#detailTbody').html(html);
                        $('#totalDr').text(formatAmt(totalDr));
                        $('#totalCr').text(formatAmt(totalCr));
                    } else {
                        $('#detailTbody').html(
                            '<tr><td colspan="6" class="text-center text-muted">No detail found.</td></tr>'
                        );
                    }
                },
                error: function() {
                    $('#detailTbody').html(
                        '<tr><td colspan="6" class="text-center text-danger">Error loading details.</td></tr>'
                    );
                    showToast('Failed to load voucher details.', 'error');
                }
            });

            $('#detailSection').show();
            $('#footerNote').show();
            $('html, body').animate({
                scrollTop: $('#detailSection').offset().top - 20
            }, 400);
        }

        function hideDetail() {
            $('#dVoucherNo, #dVoucherDate, #dVoucherType, #dNarration, #dDebit, #dCredit').text('—');
            $('#detailTbody').html(
                '<tr><td colspan="6" class="text-center text-muted py-2">Select a voucher to view details.</td></tr>'
            );
            $('#totalDr, #totalCr').text('0.00');
            $('#attachedDoc').html('<span class="text-muted">—</span>');
            $('input[name="verifyStatus"][value="Y"]').prop('checked', true);
            $('#verifyRemark').val('');
            selectedDocid = null;
        }

        $('#approveBtn').on('click', function() {
            if (!selectedDocid) {
                showToast('Please select a voucher first.', 'warning');
                return;
            }
            const remark = $('#verifyRemark').val().trim();
            if (!remark) {
                showToast('Remark is required for verification.', 'warning');
                $('#verifyRemark').focus();
                return;
            }
            $('input[name="verifyStatus"][value="Y"]').prop('checked', true);
            showConfirm(
                'Voucher Verify',
                'Are you sure you want to verify this voucher?',
                'Yes, Verify',
                'btn-success',
                function() {
                    submitVerify('Y', remark);
                }
            );
        });

        $('#rejectBtn').on('click', function() {
            if (!selectedDocid) {
                showToast('Please select a voucher first.', 'warning');
                return;
            }
            const remark = $('#verifyRemark').val().trim();
            if (!remark) {
                showToast('Remark is required for rejection.', 'warning');
                $('#verifyRemark').focus();
                return;
            }
            $('input[name="verifyStatus"][value="R"]').prop('checked', true);
            showConfirm(
                'Voucher Reject',
                'Are you sure you want to reject this voucher?',
                'Yes, Reject',
                'btn-danger',
                function() {
                    submitVerify('R', remark);
                }
            );
        });

        $('#resetBtn').on('click', function() {
            $('input[name="verifyStatus"][value="Y"]').prop('checked', true);
            $('#verifyRemark').val('');
            showToast('Reset successfully.', 'info', 2000);
        });

        function submitVerify(status, remark) {
            const row = allData.find(item => item.docid == selectedDocid);

            const payload = {
                _token: '{{ csrf_token() }}',
                docid: selectedDocid,
                vno: row ? row.vno : '',
                vtype: row ? row.vtype : '',
                status: status,
            };

            if (status === 'Y') {
                payload.verifyuser = '{{ Auth::user()->name }}';
                payload.verifyremark = remark;
            } else {
                payload.rejecteduser = '{{ Auth::user()->name }}';
                payload.rejectedremark = remark;
            }

            $.ajax({
                url: '{{ route('voucher.verify') }}',
                type: 'POST',
                data: payload,
                success: function(res) {
                    if (res.success) {
                        const msg = status === 'Y' ?
                            'Voucher verified successfully!' :
                            'Voucher rejected successfully.';
                        showToast(msg, status === 'Y' ? 'success' : 'error');
                        allData = allData.filter(item => item.docid != selectedDocid);
                        renderTable();
                        hideDetail();
                    } else {
                        showToast(res.message ?? 'Something went wrong, please try again.', 'error');
                    }
                },
                error: function() {
                    showToast('Server error. Please try again.', 'error');
                }
            });
        }

        // ============================================================
        // HELPER
        // ============================================================
        function formatAmt(val) {
            const n = parseFloat(val) || 0;
            return n.toLocaleString('en-IN', {
                minimumFractionDigits: 2,
                maximumFractionDigits: 2
            });
        }

        $(document).ready(function() {
            renderTable();
        });
    </script>
@endsection
