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

        /* ===== BACK BAR ===== */
        .vv-back-bar {
            background: #f4f6fb;
            border-bottom: 1px solid #dde3f0;
            padding: 6px 18px;
        }

        .vv-back-btn {
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
        }

        .vv-back-btn:hover {
            background: #1a3a6b;
            color: #fff;
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

        .vv-count-badge {
            display: inline-block;
            background: #1a3a6b;
            color: #fff;
            font-size: 12px;
            font-weight: bold;
            border-radius: 12px;
            padding: 2px 10px;
            margin-left: 8px;
            vertical-align: middle;
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

        .vv-dh-row {
            display: flex;
            flex-wrap: wrap;
            gap: 0;
            font-size: 12px;
            margin-bottom: 12px;
        }

        .vv-dh-item {
            display: flex;
            flex-direction: column;
            margin-right: 32px;
            margin-bottom: 6px;
        }

        .vv-dh-item .dh-label {
            font-size: 11px;
            color: #666;
            margin-bottom: 2px;
        }

        .vv-dh-item .dh-val {
            font-size: 13px;
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

        /* ===== INFO CARD ===== */
        .vv-info-card {
            border: 1px solid #ccc;
            border-left: none;
            border-radius: 0;
            padding: 14px 16px;
            background: #fff;
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .vv-info-title {
            color: #1a3a6b;
            font-weight: bold;
            font-size: 14px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 8px;
            margin-bottom: 14px;
        }

        .vv-info-label {
            font-size: 12px;
            color: #555;
            font-weight: 600;
            margin-bottom: 4px;
            display: block;
        }

        .vv-info-val-box {
            font-size: 13px;
            color: #111;
            font-weight: 500;
            background: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 3px;
            padding: 5px 10px;
            display: block;
            margin-bottom: 12px;
        }

        .vv-info-remark {
            width: 100%;
            font-size: 13px;
            background: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 3px;
            padding: 6px 10px;
            resize: none;
            min-height: 90px;
            color: #111;
            margin-bottom: 12px;
        }

        .vv-two-col {
            display: flex;
            gap: 12px;
            margin-bottom: 12px;
        }

        .vv-two-col>div {
            flex: 1;
        }

        /* Actions section */
        .vv-actions-title {
            color: #1a3a6b;
            font-weight: bold;
            font-size: 14px;
            border-top: 1px solid #ddd;
            padding-top: 12px;
            margin-top: auto;
            margin-bottom: 10px;
        }

        .vv-action-btns {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .vv-action-btns .btn {
            font-size: 12px;
            padding: 6px 14px;
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

        /* ===== FOOTER NOTE ===== */
        .vv-footer-note {
            text-align: center;
            color: red;
            font-size: 13px;
            font-weight: 600;
            padding: 12px 0 6px;
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

        .vv-toast.info {
            background: #1a3a6b;
            color: #fff;
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
    </style>

    <div class="content-body">
        <div class="container-fluid px-2">
            {{-- BACK BAR --}}


            {{-- PAGE HEADER --}}
            <div class="vv-page-header">
                <h5>APPROVED VOUCHER LIST</h5>
                <div class="vv-user-info">
                    <span>User : <strong>{{ Auth::user()->name }}</strong></span>
                    <span>|</span>
                    <span>Role : <strong>VERIFIER</strong></span>
                    <span>|</span>
                    <span>{{ \Carbon\Carbon::now()->format('d-M-Y h:i A') }}</span>
                </div>
            </div>

            <div class="vv-back-bar">
                <a href="{{ route('finance.transaction.voucherverification') }}" class="vv-back-btn">
                    <i class="fa fa-arrow-left" style="font-size:11px;"></i> Back to Dashboard
                </a>
            </div>

            {{-- FILTER BAR --}}
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
                    <label>Verified By</label>
                    <select id="verifiedBy" class="form-select">
                        <option value="">-- ALL --</option>
                        @foreach ($verifiers as $v)
                            <option value="{{ $v->verifyuser }}"
                                {{ ($selectedVerifier ?? '') == $v->verifyuser ? 'selected' : '' }}>
                                {{ $v->verifyuser }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="vv-field" style="flex-direction:row; gap:6px;">
                    <button class="btn-search" id="searchBtn">
                        <i class="fa fa-search"></i> Search
                    </button>
                    <button class="btn-clear" id="clearBtn">↺ Clear</button>
                </div>
            </div>

            {{-- VOUCHER TABLE --}}
            <div class="card shadow-sm mb-3 mt-3" style="border-radius:4px;">
                <div class="card-body pb-2">

                    <div style="margin-bottom:8px;">
                        <span class="vv-section-title" style="margin-bottom:0;">Approved Vouchers</span>
                        <span class="vv-count-badge" id="totalCount">0</span>
                    </div>

                    <div class="d-flex justify-content-between align-items-center mb-2 flex-wrap gap-2">
                        <div class="d-flex align-items-center gap-2">
                            <select id="pageSize" class="form-select form-select-sm" style="width:65px;">
                                <option value="5">5</option>
                                <option value="10" selected>10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                            </select>
                            <span style="font-size:12px; color:#555;">Entries Per Page</span>
                        </div>
                        <div id="tableInfo" style="font-size:12px; color:#555;"></div>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered vv-table w-100">
                            <thead>
                                <tr>
                                    <th>Sr No.</th>
                                    <th>Voucher No</th>
                                    <th>Voucher Date</th>
                                    <th>Voucher Type</th>
                                    <th>Narration</th>
                                    <th class="text-end">Debit</th>
                                    <th class="text-end">Credit</th>
                                    <th>Verified By</th>
                                    <th>Verified Date</th>
                                    <th>Action</th>
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

            {{-- DETAIL + INFO PANEL --}}
            <div class="row g-0" id="detailSection" style="display:none; margin-bottom:0;">

                {{-- Left: Voucher Details --}}
                <div class="col-lg-8">
                    <div class="vv-detail-card">

                        <div class="vv-section-title">Voucher Details</div>

                        {{-- Header row --}}
                        <div class="vv-dh-row">
                            <div class="vv-dh-item">
                                <span class="dh-label">Voucher No</span>
                                <span class="dh-val" id="dVoucherNo">—</span>
                            </div>
                            <div class="vv-dh-item">
                                <span class="dh-label">Voucher Date</span>
                                <span class="dh-val" id="dVoucherDate">—</span>
                            </div>
                            <div class="vv-dh-item">
                                <span class="dh-label">Voucher Type</span>
                                <span class="dh-val" id="dVoucherType">—</span>
                            </div>
                            <div class="vv-dh-item" style="flex:2;">
                                <span class="dh-label">Narration</span>
                                <span class="dh-val" id="dNarration">—</span>
                            </div>
                            <div class="vv-dh-item">
                                <span class="dh-label">Total Debit</span>
                                <span class="dh-val" id="dDebit">—</span>
                            </div>
                            <div class="vv-dh-item">
                                <span class="dh-label">Total Credit</span>
                                <span class="dh-val" id="dCredit">—</span>
                            </div>
                        </div>

                        {{-- Detail table --}}
                        <div class="table-responsive">
                            <table class="table vv-detail-table mb-2">
                                <thead>
                                    <tr>
                                        <th style="width:45px;">S.No.</th>
                                        <th>Ledger Code</th>
                                        <th>Ledger Name</th>
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

                        {{-- Attached Doc
                        <div class="mt-3">
                            <div class="vv-attach-title mb-1">
                                <i class="fa fa-paperclip"></i> Attached Document
                            </div>
                            <div id="attachedDoc" style="font-size:13px; padding-left:4px;">
                                <span class="text-muted">—</span>
                            </div>
                        </div> --}}

                    </div>
                </div>

                {{-- Right: Verification Information --}}
                <div class="col-lg-4">
                    <div class="vv-info-card">

                        <div class="vv-info-title">Verification Information</div>

                        {{-- Status --}}
                        <div style="margin-bottom:12px;">
                            <span class="vv-info-label">Status</span>
                            <span>
                                <span class="badge bg-success"
                                    style="font-size:13px; padding:5px 16px; border-radius:4px;">
                                    ✔ Approved
                                </span>
                            </span>
                        </div>

                        {{-- Verified By + Verified Date --}}
                        <div class="vv-two-col">
                            <div>
                                <span class="vv-info-label">Verified By</span>
                                <span class="vv-info-val-box" id="infoVerifiedBy">—</span>
                            </div>
                            <div>
                                <span class="vv-info-label">Verified Date</span>
                                <span class="vv-info-val-box" id="infoVerifiedDate">—</span>
                            </div>
                        </div>

                        {{-- Remark --}}
                        <div>
                            <span class="vv-info-label">Remark</span>
                            <textarea class="vv-info-remark" id="infoRemark" readonly></textarea>
                        </div>

                        {{-- Actions --}}
                        <div class="vv-actions-title">Actions</div>
                        <div class="vv-action-btns">
                            <a href="#" id="printLink" class="btn btn-primary" target="_blank">
                                <i class="fa fa-print"></i> Print Voucher
                            </a>
                            <button class="btn btn-success" id="exportBtn">
                                <i class="fa fa-file-excel-o"></i> Export to Excel
                            </button>
                            <button class="btn btn-secondary" id="backBtn">
                                <i class="fa fa-arrow-left"></i> Back to List
                            </button>
                        </div>

                    </div>
                </div>

            </div>
            {{-- end detail section --}}

            {{-- FOOTER NOTE --}}
            <div class="vv-footer-note" id="footerNote" style="display:none;">
                <strong>Note :</strong> Approved Voucher cannot be edited.
            </div>

            {{-- TOAST CONTAINER --}}
            <div id="vvToastContainer"></div>

        </div>
    </div>

    <script>
        let allData = @json($data ?? []);
        let pageSize = 10;
        let curPage = 1;
        let selectedDocid = null;

        // ============================================================
        // TOAST
        // ============================================================
        function showToast(msg, type = 'info', duration = 3000) {
            const icons = {
                success: 'fa-check-circle',
                error: 'fa-times-circle',
                info: 'fa-info-circle'
            };
            const id = 'toast_' + Date.now();
            $('#vvToastContainer').append(`
        <div class="vv-toast ${type}" id="${id}">
            <i class="fa ${icons[type]??'fa-info-circle'}"></i>
            <span class="vv-toast-msg">${msg}</span>
            <button class="vv-toast-close" onclick="removeToast('${id}')">✕</button>
        </div>`);
            setTimeout(() => removeToast(id), duration);
        }

        function removeToast(id) {
            const el = $('#' + id);
            el.css('animation', 'vvSlideOut 0.3s ease forwards');
            setTimeout(() => el.remove(), 300);
        }

        // ============================================================
        // SEARCH / CLEAR
        // ============================================================
        $('#searchBtn').on('click', function() {
            const fromDate = $('#fromDate').val();
            const toDate = $('#toDate').val();
            const voucherType = $('#voucherType').val();
            const verifiedBy = $('#verifiedBy').val();
            window.location.href =
                `?fromDate=${fromDate}&toDate=${toDate}&voucherType=${voucherType}&verifiedBy=${verifiedBy}`;
        });

        $('#clearBtn').on('click', function() {
            $('#fromDate').val('{{ ncurdate() }}');
            $('#toDate').val('{{ ncurdate() }}');
            $('#voucherType').val('');
            $('#verifiedBy').val('');
            allData = [];
            curPage = 1;
            renderTable();
            resetDetail();
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
            const slice = allData.slice(start, start + pageSize);
            $('#totalCount').text(allData.length);

            let html = '';
            if (!slice.length) {
                html = '<tr><td colspan="10" class="text-center text-muted py-3">No Approved Vouchers Found.</td></tr>';
            } else {
                slice.forEach(function(row, i) {
                    html += `<tr class="voucher-row" data-docid="${row.docid}">
                <td>${start + i + 1}</td>
                <td>${row.vprefix ?? ''}/${row.vno ?? ''}</td>
                <td>${row.vdate ?? ''}</td>
                <td>${row.description ?? row.vtype ?? ''}</td>
                <td>${row.narration ?? ''}</td>
                <td class="text-end">${formatAmt(row.amtdr)}</td>
                <td class="text-end">${formatAmt(row.amtcr)}</td>
                <td>${row.verifyuser ?? '—'}</td>
                <td>${row.verifydate ?? '—'}</td>
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
            const total = allData.length,
                pages = Math.ceil(total / pageSize) || 1;
            let html = '';
            html += `<button onclick="goPage(1)" ${curPage===1?'disabled':''}>|◀</button>`;
            html += `<button onclick="goPage(${curPage-1})" ${curPage===1?'disabled':''}>◀</button>`;
            for (let p = 1; p <= pages; p++)
                html += `<button onclick="goPage(${p})" class="${p===curPage?'active':''}">${p}</button>`;
            html += `<button onclick="goPage(${curPage+1})" ${curPage>=pages?'disabled':''}>▶</button>`;
            html += `<button onclick="goPage(${pages})" ${curPage>=pages?'disabled':''}>▶|</button>`;
            html += `&nbsp;<span style="font-size:12px;color:#555;">Page size:</span>
             <select onchange="changePageSize(this.value)">
               <option value="5"  ${pageSize==5 ?'selected':''}>5</option>
               <option value="10" ${pageSize==10?'selected':''}>10</option>
               <option value="25" ${pageSize==25?'selected':''}>25</option>
               <option value="50" ${pageSize==50?'selected':''}>50</option>
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
            if (!total) {
                $('#pageInfoText, #tableInfo').text('');
                return;
            }
            const start = (curPage - 1) * pageSize + 1;
            const end = Math.min(curPage * pageSize, total);
            const pages = Math.ceil(total / pageSize);
            $('#pageInfoText').text(`Showing ${start} to ${end} of ${total} entries`);
            $('#tableInfo').text(`${total} items in ${pages} pages`);
        }

        // ============================================================
        // VIEW BUTTON
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

            const row = allData.find(r => r.docid == docid);
            if (!row) return;

            // Fill header info
            $('#dVoucherNo').text(`${row.vprefix ?? ''}/${row.vno ?? ''}`);
            $('#dVoucherDate').text(row.vdate ?? '—');
            $('#dVoucherType').text(row.description ?? row.vtype ?? '—');
            $('#dNarration').text(row.narration ?? '—');
            $('#dDebit').text(formatAmt(row.amtdr));
            $('#dCredit').text(formatAmt(row.amtcr));

            // Fill verification info
            $('#infoVerifiedBy').text(row.verifyuser ?? '—');
            $('#infoVerifiedDate').text(row.verifydate ?? '—');
            $('#infoRemark').val(row.verifyremark ?? '');

            // Attachment
            $('#attachedDoc').html(row.attached_doc ?
                `<a href="${row.attached_doc}" target="_blank" class="vv-attach-link">
               <i class="fa fa-paperclip"></i> ${row.attached_doc_name ?? 'View Attachment'}
           </a>` :
                '<span class="text-muted">—</span>');

            // Load detail lines via AJAX
            $('#detailTbody').html(
                '<tr><td colspan="6" class="text-center text-muted py-2"><i class="fa fa-spinner fa-spin"></i> Loading...</td></tr>'
            );
            $('#totalDr, #totalCr').text('0.00');

            $.ajax({
                url: '{{ route('voucher.detail') }}',
                type: 'GET',
                data: {
                    vno: row.vno,
                    vtype: row.vtype
                },
                success: function(res) {
                    if (res.success && res.data.length > 0) {
                        let html = '',
                            dr = 0,
                            cr = 0;
                        res.data.forEach(function(item, i) {
                            dr += parseFloat(item.AmtDr) || 0;
                            cr += parseFloat(item.AmtCr) || 0;
                            html += `<tr>
                        <td>${i + 1}</td>
                        <td>${item.sub_code ?? ''}</td>
                        <td>${item.AccountName ?? ''}</td>
                        <td class="text-end">${formatAmt(item.AmtDr)}</td>
                        <td class="text-end">${formatAmt(item.AmtCr)}</td>
                        <td>${item.Narration ?? ''}</td>
                    </tr>`;
                        });
                        $('#detailTbody').html(html);
                        $('#totalDr').text(formatAmt(dr));
                        $('#totalCr').text(formatAmt(cr));
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
            $('#printLink').attr('href', `/printvoucherentry/${docid}`);
        }

        function resetDetail() {
            $('#dVoucherNo,#dVoucherDate,#dVoucherType,#dNarration,#dDebit,#dCredit').text('—');
            $('#infoVerifiedBy,#infoVerifiedDate').text('—');
            $('#infoRemark').val('');
            $('#detailTbody').html(
                '<tr><td colspan="6" class="text-center text-muted py-2">Select a voucher to view details.</td></tr>'
            );
            $('#totalDr,#totalCr').text('0.00');
            $('#attachedDoc').html('<span class="text-muted">—</span>');
            $('#detailSection').hide();
            $('#footerNote').hide();
            selectedDocid = null;
        }

        // // ============================================================
        // // PRINT VOUCHER
        // // ============================================================
        // $('#printBtn').on('click', function() {
        //     if (!selectedDocid) {
        //         showToast('Please select a voucher first.', 'info');
        //         return;
        //     }
        //     const row = allData.find(r => r.docid == selectedDocid);
        //     if (!row) return;

        //     $.ajax({
        //         url: '{{ route('voucher.detail') }}',
        //         type: 'GET',
        //         data: {
        //             vno: row.vno,
        //             vtype: row.vtype
        //         },
        //         success: function(res) {
        //             const details = (res.success && res.data.length) ? res.data : [];
        //             let detailRows = '',
        //                 dr = 0,
        //                 cr = 0;
        //             details.forEach(function(item, i) {
        //                 dr += parseFloat(item.AmtDr) || 0;
        //                 cr += parseFloat(item.AmtCr) || 0;
        //                 detailRows += `<tr>
        //             <td>${i+1}</td>
        //             <td>${item.sub_code??''}</td>
        //             <td>${item.AccountName??''}</td>
        //             <td style="text-align:right;">${formatAmt(item.AmtDr)}</td>
        //             <td style="text-align:right;">${formatAmt(item.AmtCr)}</td>
        //             <td>${item.Narration??''}</td>
        //         </tr>`;
        //             });

        //             const printWin = window.open('', '_blank', 'width=900,height=650');
        //             printWin.document.write(`
        //         <!DOCTYPE html><html><head>
        //         <title>Voucher - ${row.vprefix??''}/${row.vno??''}</title>
        //         <style>
        //             body { font-family: Arial, sans-serif; font-size: 12px; margin: 20px; }
        //             h2   { color: #1a3a6b; margin-bottom: 4px; }
        //             .hdr-row { display:flex; gap:32px; margin-bottom:12px; border:1px solid #ddd; padding:8px 12px; }
        //             .hdr-item .lbl { font-size:11px; color:#666; }
        //             .hdr-item .val { font-weight:bold; font-size:12px; }
        //             table { width:100%; border-collapse:collapse; margin-bottom:12px; }
        //             th { background:#1a3a6b; color:#fff; padding:6px 8px; font-size:11px; }
        //             td { padding:5px 8px; border:1px solid #ddd; font-size:11px; }
        //             tfoot td { background:#f0f0f0; font-weight:bold; }
        //             .vi-box { border:1px solid #ccc; padding:10px 14px; margin-top:10px; }
        //             .vi-box h4 { color:#1a3a6b; margin:0 0 8px; font-size:13px; }
        //             .vi-row { display:flex; gap:32px; }
        //             .vi-item .lbl { font-size:11px; color:#666; }
        //             .vi-item .val { font-size:12px; font-weight:bold; }
        //             .badge-ok { background:#198754; color:#fff; padding:3px 12px; border-radius:4px; font-size:12px; }
        //             .note { color:red; font-size:12px; font-weight:bold; text-align:center; margin-top:10px; }
        //             @media print { body { margin:10px; } }
        //         </style></head><body>
        //         <h2>Voucher - ${row.vprefix??''}/${row.vno??''}</h2>
        //         <div class="hdr-row">
        //             <div class="hdr-item"><div class="lbl">Voucher No</div><div class="val">${row.vprefix??''}/${row.vno??''}</div></div>
        //             <div class="hdr-item"><div class="lbl">Voucher Date</div><div class="val">${row.vdate??'—'}</div></div>
        //             <div class="hdr-item"><div class="lbl">Voucher Type</div><div class="val">${row.description??row.vtype??'—'}</div></div>
        //             <div class="hdr-item"><div class="lbl">Narration</div><div class="val">${row.narration??'—'}</div></div>
        //         </div>
        //         <table>
        //             <thead><tr><th>S.No.</th><th>Ledger Code</th><th>Ledger Name</th><th>Debit</th><th>Credit</th><th>Narration</th></tr></thead>
        //             <tbody>${detailRows}</tbody>
        //             <tfoot><tr>
        //                 <td colspan="3" style="text-align:right;">Total</td>
        //                 <td style="text-align:right;">${formatAmt(dr)}</td>
        //                 <td style="text-align:right;">${formatAmt(cr)}</td>
        //                 <td></td>
        //             </tr></tfoot>
        //         </table>
        //         <div class="vi-box">
        //             <h4>Verification Information</h4>
        //             <div class="vi-row">
        //                 <div class="vi-item"><div class="lbl">Status</div><div class="val"><span class="badge-ok">✔ Approved</span></div></div>
        //                 <div class="vi-item"><div class="lbl">Verified By</div><div class="val">${row.verifyuser??'—'}</div></div>
        //                 <div class="vi-item"><div class="lbl">Verified Date</div><div class="val">${row.verifydate??'—'}</div></div>
        //                 <div class="vi-item"><div class="lbl">Remark</div><div class="val">${row.verifyremark??'—'}</div></div>
        //             </div>
        //         </div>
        //         <div class="note">Note : Approved Voucher cannot be edited.</div>
        //         <script>window.onload = function(){ window.print(); }<\/script>
        //         </body></html>`);
        //             printWin.document.close();
        //         },
        //         error: function() {
        //             showToast('Failed to load details for print.', 'error');
        //         }
        //     });
        // });

        // ============================================================
        // EXPORT TO EXCEL
        // ============================================================
        $('#exportBtn').on('click', function() {
            if (!selectedDocid) {
                showToast('Please select a voucher first.', 'info');
                return;
            }
            const row = allData.find(r => r.docid == selectedDocid);
            if (!row) return;

            $.ajax({
                url: '{{ route('voucher.detail') }}',
                type: 'GET',
                data: {
                    vno: row.vno,
                    vtype: row.vtype
                },
                success: function(res) {
                    const details = (res.success && res.data.length) ? res.data : [];
                    let csv = 'S.No.,Ledger Code,Ledger Name,Debit,Credit,Narration\n';
                    let dr = 0,
                        cr = 0;
                    details.forEach(function(item, i) {
                        dr += parseFloat(item.AmtDr) || 0;
                        cr += parseFloat(item.AmtCr) || 0;
                        csv +=
                            `${i+1},"${item.sub_code??''}","${item.AccountName??''}",${formatAmt(item.AmtDr)},${formatAmt(item.AmtCr)},"${item.Narration??''}"\n`;
                    });
                    csv += `,,Total,${formatAmt(dr)},${formatAmt(cr)},\n`;
                    csv += `\nVoucher No,${row.vprefix??''}/${row.vno??''}\n`;
                    csv += `Voucher Date,${row.vdate??''}\n`;
                    csv += `Verified By,${row.verifyuser??''}\n`;
                    csv += `Verified Date,${row.verifydate??''}\n`;
                    csv += `Remark,${row.verifyremark??''}\n`;

                    const blob = new Blob([csv], {
                        type: 'text/csv'
                    });
                    const a = document.createElement('a');
                    a.href = URL.createObjectURL(blob);
                    a.download = `Voucher_${row.vprefix??''}_${row.vno??''}.csv`;
                    a.click();
                    showToast('Exported successfully!', 'success');
                },
                error: function() {
                    showToast('Failed to export.', 'error');
                }
            });
        });

        // ============================================================
        // BACK TO LIST
        // ============================================================
        $('#backBtn').on('click', function() {
            resetDetail();
            $('html, body').animate({
                scrollTop: 0
            }, 400);
        });

        // ============================================================
        // HELPER
        // ============================================================
        function formatAmt(val) {
            return (parseFloat(val) || 0).toLocaleString('en-IN', {
                minimumFractionDigits: 2,
                maximumFractionDigits: 2
            });
        }

        $(document).ready(function() {
            renderTable();
        });
    </script>
@endsection
