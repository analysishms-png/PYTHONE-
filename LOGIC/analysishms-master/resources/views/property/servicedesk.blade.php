@extends('property.layouts.main')

@section('main-container')
    <style>
        .pos-wrapper {
            width: 100%;
            overflow-x: auto;
            background-color: #dbe2ef;
            font-family: 'Segoe UI', Arial, sans-serif;
        }

        .pos-container {
            font-size: 0.88rem;
            min-width: 1150px;
        }

        .pos-card {
            background: #ffffff;
            border: 1px solid #b8c4d1;
            border-radius: 4px;
        }

        .pos-header-navy {
            background-color: #031b4e;
            color: #ffffff;
            padding: 6px 12px;
            font-weight: 700;
            font-size: 0.9rem;
            letter-spacing: 0.5px;
        }

        .form-control-sm,
        .form-select-sm {
            font-size: 0.85rem !important;
            padding: 0.2rem 0.4rem !important;
            border: 1px solid #a0aec0;
            border-radius: 3px;
            height: 28px;
        }

        .pos-label {
            font-weight: 700;
            color: #1a202c;
            font-size: 0.83rem;
            white-space: nowrap;
            margin-bottom: 0;
        }

        .category-container-wrapper {
            display: flex;
            flex-direction: column;
            height: 100%;
        }

        .category-scroll-body {
            max-height: 430px;
            overflow-y: auto;
            scrollbar-width: thin;
        }

        .category-scroll-body::-webkit-scrollbar {
            width: 4px;
        }

        .category-scroll-body::-webkit-scrollbar-thumb {
            background: #cbd5e1;
        }

        .category-arrow-btn {
            background-color: #f1f5f9;
            border: none;
            border-top: 1px solid #cbd5e1;
            border-bottom: 1px solid #cbd5e1;
            color: #334155;
            padding: 4px;
            text-align: center;
            cursor: pointer;
        }

        .category-btn {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 8px 12px;
            border: 1px solid #e2e8f0;
            background: #ffffff;
            border-radius: 4px;
            color: #1e293b;
            font-weight: 600;
            font-size: 0.88rem;
            cursor: pointer;
            margin-bottom: 5px;
            transition: all 0.15s ease;
        }

        .category-btn.active,
        .category-btn:hover {
            background-color: #baebff;
            border-color: #38bdf8;
            color: #0369a1;
        }

        .item-card {
            border: 1px solid #cbd5e1;
            border-radius: 4px;
            background: #ffffff;
            padding: 6px;
            text-align: center;
            position: relative;
        }

        .item-card img {
            height: 75px;
            object-fit: cover;
            border-radius: 4px;
            width: 100%;
        }

        .item-card .item-title {
            font-weight: 700;
            font-size: 0.83rem;
            margin-top: 4px;
            color: #0f172a;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            text-align: left;
        }

        .item-card .item-price {
            color: #0044cc;
            font-weight: 700;
            font-size: 0.85rem;
        }

        .item-card .add-btn {
            background-color: #16a34a;
            color: white;
            border: none;
            padding: 0px 8px;
            border-radius: 3px;
            font-size: 0.9rem;
            font-weight: bold;
            line-height: 1.4;
        }

        .item-card .add-btn:hover {
            background-color: #15803d;
        }

        .items-scroll-body {
            max-height: 430px;
            overflow-y: auto;
            scrollbar-width: thin;
        }

        .items-scroll-body::-webkit-scrollbar {
            width: 4px;
        }

        .items-scroll-body::-webkit-scrollbar-thumb {
            background: #cbd5e1;
        }

        .order-table th {
            background-color: #f1f5f9;
            color: #0f172a;
            font-weight: 700;
            font-size: 0.82rem;
            border-color: #cbd5e1;
            padding: 5px;
        }

        .order-table td {
            padding: 5px;
            font-size: 0.85rem;
            border-color: #e2e8f0;
        }

        .description-cell {
            color: #0d6efd;
            font-size: 0.78rem;
        }

        .order-scroll-body {
            max-height: 430px;
            overflow-y: auto;
            scrollbar-width: thin;
        }

        .order-scroll-body::-webkit-scrollbar {
            width: 4px;
        }

        .order-scroll-body::-webkit-scrollbar-thumb {
            background: #cbd5e1;
        }

        /* ===== Bottom action buttons: equal-size grid, no dead gaps ===== */
        .pos-actions-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(104px, 1fr));
            gap: 6px;
            margin-top: 4px;
        }

        .pos-bottom-btn {
            border-radius: 5px;
            font-weight: 700;
            padding: 8px 4px;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 2px;
            font-size: 0.78rem;
            line-height: 1.15;
            border: none;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.15);
            min-height: 56px;
            width: 100%;
            text-align: center;
            text-decoration: none;
            white-space: normal;
            transition: filter 0.12s ease, transform 0.08s ease;
        }

        .pos-bottom-btn i {
            font-size: 1rem;
        }

        .pos-bottom-btn:hover:not(.disabled):not(:disabled) {
            filter: brightness(1.08);
            transform: translateY(-1px);
            color: #fff;
        }

        .pos-bottom-btn small {
            font-size: 0.68rem;
            font-weight: normal;
            opacity: 0.9;
        }

        .pos-bottom-btn.disabled,
        .pos-bottom-btn:disabled {
            opacity: 0.45;
            cursor: not-allowed;
            pointer-events: none;
        }

        /* Exact Button Colors */
        .btn-pos-new {
            background-color: #0284c7;
        }

        .btn-pos-save {
            background-color: #16a34a;
        }

        .btn-pos-print {
            background-color: #ea580c;
        }

        .btn-pos-hold {
            background-color: #eab308;
            color: #000;
        }

        .btn-pos-recall {
            background-color: #0284c7;
        }

        .btn-pos-pending {
            background-color: #0d9488;
        }

        .btn-pos-merge {
            background-color: #6b21a8;
        }

        .btn-pos-split {
            background-color: #1e3a8a;
        }

        .btn-pos-transfer {
            background-color: #0891b2;
        }

        .btn-pos-bill {
            background-color: #16a34a;
        }

        .btn-pos-settle {
            background-color: #f39c12;
            color: #000;
        }

        .btn-pos-cancel {
            background-color: #dc2626;
        }

        .btn-pos-exit {
            background-color: #475569;
        }

        .totals-panel {
            font-size: 0.85rem;
            background-color: #ffffff;
        }

        .totals-row {
            display: flex;
            justify-content: space-between;
            padding: 3px 0;
        }

        #orderBody tr.row-locked .removeItem,
        #orderBody tr.row-locked .voidyn,
        #orderBody tr.row-locked .description-cell {
            pointer-events: none;
            opacity: 0.5;
        }

        .rateclass {
            width: 100% !important;
            min-width: 65px;
        }

        /* ===== Display Table inline panel ===== */
        .table-swatch {
            display: inline-block;
            width: 12px;
            height: 12px;
            border-radius: 3px;
            margin-right: 4px;
            vertical-align: middle;
        }

        .table-display-box {
            width: 64px;
            height: 46px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 6px 8px;
            border-radius: 6px;
            text-align: center;
            font-weight: 700;
            color: #fff;
            cursor: pointer;
            transition: transform .15s ease;
            user-select: none;
        }

        .table-display-box:hover {
            transform: translateY(-2px);
        }

        .table-display-box.occupied {
            background-color: {{ $depart->occupied ?? '#dc3545' }};
        }

        .table-display-box.vacant {
            background-color: {{ $depart->vacant ?? '#198754' }};
        }

        .table-display-box.billed {
            background-color: {{ $depart->billed ?? '#0d6efd' }};
        }

        .table-display-box.booked {
            background-color: {{ $depart->booked ?? '#6f42c1' }};
        }

        .table-display-box {
            flex-direction: column;
            line-height: 1.15;
        }

        .table-display-box .table-box-sub {
            font-size: 0.6rem;
            font-weight: 500;
            opacity: 0.9;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 60px;
        }

        .items-panel-locked {
            opacity: 0.55;
            pointer-events: none;
            position: relative;
        }

        #orderBody tr.selected-for-free {
            background-color: #fff3cd !important;
            border-left: 4px solid #ffc107;
        }

        #orderBody tr.free-item {
            background-color: #d4edda !important;
            border-left: 4px solid #28a745;
        }

        #freeBtn:not(:disabled) {
            cursor: pointer;
            animation: pulse 1.5s infinite;
        }

        @keyframes pulse {

            0%,
            100% {
                opacity: 1;
            }

            50% {
                opacity: 0.7;
            }
        }
    </style>


    <div class="pos-wrapper p-2">
        <div class="content-body pos-container">

            <form id="servicedeskform" name="servicedeskform" method="POST">
                @csrf
                <input type="hidden" name="fixrestcode" id="fixrestcode" value="{{ $depart->dcode ?? '' }}">
                <input type="hidden" name="restcode" id="restcode" value="{{ $depart->dcode ?? '' }}">
                <input type="hidden" name="shortname" id="shortname" value="{{ $shortname }}">
                <input type="hidden" name="totalitems" id="totalitems" value="0">
                <input type="hidden" name="sale1docid" id="sale1docid" value="">
                <input type="hidden" name="vprefix" id="vprefix" value="">
                <input type="hidden" name="oldroomyn" id="oldroomyn" value="N">
                <input type="hidden" name="olddocidpendingkot" id="olddocidpendingkot" value="">
                <input type="hidden" name="ncoldyn" id="ncoldyn" value="">
                <input type="hidden" name="nckotreason" id="nckotreason" value="">
                <input type="hidden" name="nckotper" id="nckotper" value="{{ $envpos->nckot ?? 0 }}">
                {{-- ✅ ADD --}}
                <input type="hidden" name="editingreasons" id="editingreasons" value="">
                <input type="hidden" name="ncurdate" id="ncurdate" value="{{ $ncurdate ?? now()->format('Y-m-d') }}">
                <input type="hidden" name="phoneno" id="phoneno">
                <input type="hidden" name="customername" id="customername">
                <input type="hidden" name="address" id="address">
                <input type="hidden" name="customercity" id="customercity">
                <input type="hidden" name="like" id="like">
                <input type="hidden" name="dislike" id="dislike">
                <input type="hidden" name="birthdate" id="birthdate">
                <input type="hidden" name="anniversary" id="anniversary">
                <input type="hidden" id="sundrytypeData" value='@json($sundrytypejson ?? [])'>
                <input type="hidden" name="rewardpointused" id="rewardpointused" value="0">
                <input type="hidden" name="rewardvalueused" id="rewardvalueused" value="0">

                <div class="modal fade" id="customerModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Customer Information</h5>
                                <button type="button" class="close modalclosebtn" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group row">
                                    <label for="modal_phoneno" class="col-sm-4 col-form-label">Phone No</label>
                                    <div class="col-sm-8">
                                        <input type="text" autocomplete="off" class="form-control" id="modal_phoneno"
                                            placeholder="Enter phone number">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="modal_customername" class="col-sm-4 col-form-label">Customer Name</label>
                                    <div class="col-sm-8">
                                        <input type="text" autocomplete="off" class="form-control"
                                            id="modal_customername" placeholder="Enter customer name">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="modal_address" class="col-sm-4 col-form-label">Address</label>
                                    <div class="col-sm-8">
                                        <input type="text" autocomplete="off" class="form-control" id="modal_address"
                                            placeholder="Enter address">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="modal_customercity" class="col-sm-4 col-form-label">City</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="modal_customercity">
                                            <option value="">Select</option>
                                            @foreach ($citydata ?? [] as $item)
                                                <option value="{{ $item->city_code }}">{{ $item->cityname }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="modal_like" class="col-sm-4 col-form-label">Like</label>
                                    <div class="col-sm-8">
                                        <input type="text" autocomplete="off" class="form-control" id="modal_like"
                                            placeholder="Enter like">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="modal_dislike" class="col-sm-4 col-form-label">Dislike</label>
                                    <div class="col-sm-8">
                                        <input type="text" autocomplete="off" class="form-control" id="modal_dislike"
                                            placeholder="Enter dislike">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="modal_birthdate" class="col-sm-4 col-form-label">Birth Date</label>
                                    <div class="col-sm-8">
                                        <input type="date" class="form-control" id="modal_birthdate">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="modal_anniversary" class="col-sm-4 col-form-label">Anniversary</label>
                                    <div class="col-sm-8">
                                        <input type="date" class="form-control" id="modal_anniversary">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="customerdetailsave" class="btn btn-success">Save</button>
                                <button type="button" class="btn btn-secondary modalclosebtn"
                                    data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Merge Table Modal -->
                <div class="modal fade" id="mergeTableModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Merge Table</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <p class="small text-muted">Select table(s) with pending KOT to merge into the
                                    current bill for <strong id="mergeCurrentTable"></strong>.</p>
                                <div id="mergeTableList" class="list-group" style="max-height: 300px; overflow-y: auto;">
                                    <div class="text-muted small p-2">No other pending tables found.</div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="mergeTableConfirm" class="btn btn-success">Merge
                                    Selected</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Split Bill Modal -->
                <div class="modal fade" id="splitBillModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Split Bill</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <p class="small text-muted">Select items to move into a separate bill. Remaining
                                    items stay in the current order.</p>
                                <div id="splitItemList" class="list-group" style="max-height: 300px; overflow-y: auto;">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="splitBillConfirm" class="btn btn-warning">Create Split
                                    Bill</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- KOT Print Preview Modal -->
                <div class="modal fade" id="kotPreviewModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">KOT Print Preview — KOT No: <span id="previewKotNo"></span>
                                </h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <p class="mb-2"><strong>Table:</strong> <span id="previewTable"></span>
                                    &nbsp;&nbsp; <strong>Waiter:</strong> <span id="previewWaiter"></span></p>
                                <table class="table table-sm table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Item</th>
                                            <th>Qty</th>
                                            <th>Note</th>
                                            <th>Void</th>
                                        </tr>
                                    </thead>
                                    <tbody id="previewItemsBody"></tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="kotPreviewConfirm" class="btn btn-success">Confirm &amp;
                                    Print</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Recall Held Orders Modal -->
                <div class="modal fade" id="recallOrderModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Recall Held Orders</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div id="recallOrderList" class="list-group" style="max-height:320px; overflow-y:auto;">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending KOT (saved, not billed) Modal -->
                <div class="modal fade" id="pendingKotModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Pending KOT (Not Billed)</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div id="pendingKotList" class="list-group" style="max-height:320px; overflow-y:auto;">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="itemDiscountModal" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Select Items for Discount</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Discount Percentage (%)</label>
                                    <input type="number" class="form-control" id="itemDiscountInput" min="0"
                                        max="100" step="0.01">
                                </div>
                                <div id="itemCheckboxList" style="max-height:300px;overflow-y:auto;"></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-primary" id="applyItemDiscount">Apply
                                    Discount</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="groupDiscountModal" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Select Groups for Discount</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Discount Percentage (%)</label>
                                    <input type="number" class="form-control" id="groupDiscountInput" min="0"
                                        max="100" step="0.01">
                                </div>
                                <div id="groupCheckboxList" style="max-height:300px;overflow-y:auto;"></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-primary" id="applyGroupDiscount">Apply
                                    Discount</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="rewardModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Redeem Reward Points</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group row">
                                    <label class="col-sm-6 col-form-label">Available Points</label>
                                    <div class="col-sm-6">
                                        <span id="availablepoint" class="fw-bold">0</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="redeemamount" class="col-sm-6 col-form-label">Redeem Amount</label>
                                    <div class="col-sm-6">
                                        <input type="number" class="form-control" id="redeemamount" min="0"
                                            step="0.01" placeholder="Enter amount">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="applyRewardBtn" class="btn btn-primary">Apply</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Top Details Form Section -->
                <div class="pos-card p-2 mb-2">
                    <div class="row g-2 align-items-center mb-1">
                        <div class="col-md-3 d-flex align-items-center gap-2">
                            <label class="pos-label">Outlet</label>
                            <select class="form-select form-select-sm fw-bold" id="outlet_id" name="outlet_id">
                                @foreach ($outlets as $outlet)
                                    <option value="{{ $outlet->dcode }}"
                                        {{ $dcode == $outlet->dcode ? 'selected' : '' }}>
                                        {{ $outlet->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        @php
                            $isRoomServiceOutlet = strtolower($depart->nature ?? '') == 'room service';
                        @endphp
                        <div class="col-md-5 d-flex align-items-center gap-3">
                            <button type="button" id="btnDisplayTable" class="btn btn-sm btn-outline-primary">
                                <i class="fa-solid fa-table-cells"></i> Display Table
                            </button>

                            <input type="hidden" name="orderType" id="ordertype"
                                value="{{ $isRoomServiceOutlet ? 'Room Service' : 'Dine In' }}">
                        </div>
                        <div class="col-md-4">
                            <div class="d-flex justify-content-between align-items-center border p-1 rounded bg-light mb-1"
                                style="white-space: nowrap;">
                                <span class="fw-bold text-dark me-2" id="kotnolabel">KOT No.</span>
                                <span class="fw-bold text-primary fs-6" id="krsno">{{ $kot_no ?? '' }}</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center border p-1 rounded bg-light"
                                style="white-space: nowrap;">
                                <span class="fw-bold text-dark" style="font-size:0.75rem;">Date / Time</span>
                                <span class="fw-bold text-dark" id="curtime"
                                    style="font-size:0.75rem;">{{ date('d-m-Y  h:i A') }}</span>
                            </div>
                        </div>
                    </div>

                    <div class="row g-2 align-items-center">
                        <div class="col-md-2 d-flex align-items-center gap-2">
                            <label class="pos-label" id="tablelabel">{{ $label }}</label>
                            <select class="form-select form-select-sm fw-bold" name="roomno" id="roomno" required>
                                <option value="">{{ $label }}</option>
                                @foreach ($tables as $table)
                                    <option value="{{ $table->table_number }}">{{ $table->table_number }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-2 d-flex align-items-center gap-2">
                            <label class="pos-label">Old Bill</label>
                            <select class="form-select form-select-sm" name="oldroomno" id="oldroomno">
                                <option value="">Old Bill No.</option>
                            </select>
                        </div>
                        <div class="col-md-1 d-flex align-items-center gap-2">
                            <label class="pos-label">Pax</label>
                            <select class="form-select form-select-sm fw-bold" name="pax" id="pax" required>
                                @for ($i = 1; $i <= 10; $i++)
                                    <option value="{{ $i }}" {{ $i == 1 ? 'selected' : '' }}>
                                        {{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                        <div class="col-md-4 d-flex align-items-center gap-2">
                            <label class="pos-label">Steward</label>
                            <select class="form-select form-select-sm" name="waiter" id="waiter" required>
                                <option value="">Select Waiter</option>
                                @foreach ($servermast as $item)
                                    <option value="{{ $item->scode }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-3 d-flex align-items-center gap-1">
                            <label class="pos-label mb-0" style="cursor:pointer; white-space: nowrap;">
                                <input type="checkbox" name="nctypecheckbox" id="showNcSelect"> NC
                            </label>
                            <select class="form-select form-select-sm" name="nctype" id="nctype" disabled
                                style="display:none;">
                                <option value="">NC Type</option>
                                @foreach ($nctype ?? [] as $item)
                                    <option value="{{ $item->ncode }}">{{ $item->nctype }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="row g-2 align-items-center mt-1">
                        <div class="col-md-1">
                            <span id="guestdt" class="text-primary small fw-bold"></span>
                        </div>
                    </div>

                    <div class="row g-2 align-items-center mt-1">
                        <div class="col-md-4 d-flex align-items-center gap-2">
                            <button type="button" id="customerbutton" class="btn btn-sm btn-primary"
                                data-toggle="modal" data-target="#customerModal">
                                Customer
                            </button>
                            <button type="button" id="rewardBtn" class="btn btn-sm btn-warning" data-toggle="modal"
                                data-target="#rewardModal">Reward</button>
                            <span id="customerSummary" class="text-muted small"></span>
                        </div>
                        <div class="col-md-4 d-flex align-items-center gap-2">
                            <label class="pos-label">Company</label>
                            <select class="form-select form-select-sm" name="company" id="company">
                                <option value="">Company</option>
                                @foreach ($company ?? [] as $item)
                                    <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                            <span id="compgst" class="text-muted small"></span>
                        </div>
                        <div class="col-md-4 d-flex align-items-center justify-content-end gap-2">
                            <span class="pos-label">Session:</span>
                            <span id="sessionmast" class="fw-bold text-dark"></span>
                        </div>
                    </div>
                </div>

                <div class="row g-2">
                    <div class="col-md-2">
                        <div class="pos-card category-container-wrapper">
                            <div class="pos-header-navy text-center text-uppercase">GROUP</div>
                            <div class="category-scroll-body p-2" id="categoryContainer">
                                <div class="category-btn active menugrpitem" data-value="favourite" id="favourite">⭐
                                    Favourite</div>
                                @foreach ($categories as $cat)
                                    <div class="category-btn menugrpitem" data-value="{{ $cat->code }}">
                                        {{ $cat->name }}</div>
                                @endforeach
                            </div>
                            <button type="button" class="category-arrow-btn" onclick="scrollCategory(80)">
                                <i class="fa-solid fa-chevron-down"></i>
                            </button>
                        </div>
                    </div>

                    <!-- Menu Items Grid -->
                    <div class="col-md-5">
                        <div class="pos-card p-2 h-100" id="menuItemsPanel">
                            <div class="d-flex gap-2 mb-2">
                                <div class="input-group input-group-sm">
                                    <span class="input-group-text bg-white"><i
                                            class="fa-solid fa-magnifying-glass text-muted"></i></span>
                                    <input type="text" class="form-control" id="searchname"
                                        placeholder="Enter Item Name">
                                </div>
                                <input type="text" class="form-control form-control-sm" id="searchbar"
                                    placeholder="Scan Barcode" style="max-width:150px;">
                            </div>
                            <div class="items-scroll-body">
                                <div class="row g-2" id="itemsGrid">
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Current Order -->
                    <div class="col-md-5">
                        <div class="pos-card h-100 d-flex flex-column justify-content-between">
                            <div>
                                <div
                                    class="pos-header-navy text-center text-uppercase d-flex justify-content-between align-items-center px-2">
                                    <span id="currentOrderTitle">CURRENT ORDER</span>
                                    <span id="kottype" class="text-warning" style="font-size:0.75rem;">Standard
                                        KOT</span>
                                </div>
                                <div id="billSuccessPanel" class="alert alert-success d-none mb-0 py-2 px-2 rounded-0"
                                    role="alert">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span id="billSuccessMsg" class="small fw-bold"></span>
                                        <div class="d-flex gap-1">
                                            <button type="button" id="btnBillPrintNow"
                                                class="btn btn-sm btn-success py-0">🖨 Bill Print</button>
                                            <button type="button" id="btnBillSettlement"
                                                class="btn btn-sm btn-primary py-0">Settlement</button>

                                            <button type="button" id="btnBillNewOrder"
                                                class="btn btn-sm btn-secondary py-0">New Order</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- ✅ shown only while reviewing a table's bill before final confirm -->
                                <div id="billReviewBanner" class="alert alert-info d-none mb-0 py-2 px-2 rounded-0"
                                    role="alert">
                                    <span class="small fw-bold">Bill Review Mode — verify quantities, then click
                                        "Confirm Bill" to save &amp; print.</span>
                                </div>
                                <!-- ✅ shown while a saved KOT/Bill is being edited: items locked, only void allowed -->
                                <div id="pendingKotEditBanner" class="alert alert-warning d-none mb-0 py-2 px-2 rounded-0"
                                    role="alert">
                                    <span class="small fw-bold">Editing Saved KOT — new items cannot be added, you can
                                        only Void existing items.</span>
                                </div>
                                <div class="order-scroll-body">
                                    <table class="table table-bordered table-sm align-middle text-center mb-0 order-table">
                                        <thead>
                                            <tr>
                                                <th style="width: 8%;">✕</th>
                                                <th class="text-start" style="width: 28%;">Item Name</th>
                                                <th style="width: 14%;">Qty</th>
                                                <th style="width: 10%;">Rate</th>
                                                <th style="width: 10%;">Amount</th>
                                                <th style="width: 18%;">Note</th>
                                                <th style="width: 12%;">Void</th>
                                            </tr>
                                        </thead>
                                        <tbody id="orderBody">

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="p-2 border-top totals-panel">
                                <input type="hidden" id="sundrycount" name="sundrycount"
                                    value="{{ count($sundrytype1) }}">
                                <input type="hidden" id="totalamt" name="totalamt" value="0.00">
                                <input type="hidden" id="taxableamt" name="taxableamt" value="0.00">
                                <input type="hidden" id="discountsundry" name="discountsundry" value="0.00">
                                <input type="hidden" id="servicechargeamount" name="servicechargeamount"
                                    value="0.00">
                                <input type="hidden" id="cgstamount" name="cgstamount" value="0.00">
                                <input type="hidden" id="sgstamount" name="sgstamount" value="0.00">
                                <input type="hidden" id="igstamt" name="igstamt" value="0.00">
                                <input type="hidden" id="roundoffamount" name="roundoffamount" value="0.00">
                                <input type="hidden" id="netamount" name="netamount" value="0.00">

                                <div class="totals-row border-bottom pb-1">
                                    <span class="fw-bold text-dark">Total Qty</span>
                                    <span class="fw-bold text-primary fs-6" id="totalQty">0.00</span>
                                </div>
                                <div class="totals-row py-1">
                                    <span class="fw-bold text-dark">Gross Amount</span>
                                    <span class="fw-bold text-dark" id="grossAmount">0.00</span>
                                </div>

                                <div id="taxDetailsPanel" class="d-none">
                                    <input type="hidden" id="discountfix" name="discountfix" value="0.00">
                                    <input type="hidden" id="servicechargefix" name="servicechargefix" value="0.00">
                                    <div class="totals-row align-items-center py-1">
                                        <div class="dropdown">
                                            <button class="btn btn-sm btn-outline-info dropdown-toggle" type="button"
                                                id="discBtn" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                Discount
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="discBtn">
                                                <a class="dropdown-item" href="#" id="billDiscountOption">Bill
                                                    Discount</a>
                                                <a class="dropdown-item" href="#" id="itemDiscountOption">Item
                                                    Discount</a>
                                                <a class="dropdown-item" href="#" id="groupDiscountOption">Group
                                                    Discount</a>
                                            </div>
                                        </div>
                                        <small id="discountInfo" style="display:none;color:#17a2b8;"></small>
                                    </div>
                                    <div class="totals-row py-1">
                                        <span class="text-dark">CGST</span>
                                        <span id="cgstDisplay">0.00</span>
                                    </div>
                                    <div class="totals-row py-1">
                                        <span class="text-dark">SGST</span>
                                        <span id="sgstDisplay">0.00</span>
                                    </div>
                                    <div id="igstRow" class="totals-row py-1 d-none">
                                        <span class="text-dark">IGST</span>
                                        <span id="igstDisplay">0.00</span>
                                    </div>
                                    <div id="vatRow" class="totals-row py-1 d-none">
                                        <span class="text-dark">Sale Tax</span>
                                        <span id="vatDisplay">0.00</span>
                                        <input type="hidden" id="vatamount" name="vatamount" value="0.00">
                                    </div>
                                    <div id="additionRow" class="totals-row align-items-center py-1 d-none">
                                        <span class="text-dark">Addition</span>
                                        <input type="number" id="additionamount"
                                            class="form-control form-control-sm text-end" style="width:80px;"
                                            value="0.00" oninput="calculatetaxes()">
                                    </div>
                                    <div id="deductionRow" class="totals-row align-items-center py-1 d-none">
                                        <span class="text-dark">Deduction</span>
                                        <input type="number" id="deductionamount"
                                            class="form-control form-control-sm text-end" style="width:80px;"
                                            value="0.00" oninput="calculatetaxes()">
                                    </div>
                                    <div id="redemptionRow" class="totals-row align-items-center py-1 d-none">
                                        <span class="text-dark">Redemption</span>
                                        <input type="number" id="redemptionamount"
                                            class="form-control form-control-sm text-end" style="width:80px;"
                                            value="0.00" oninput="calculatetaxes()">
                                    </div>
                                    <div class="totals-row py-1">
                                        <span class="text-dark">Round Off</span>
                                        <span id="roundoffDisplay">0.00</span>
                                    </div>
                                    <div class="totals-row align-items-center py-1 fw-bold border-top pt-1">
                                        <span class="text-dark">Net Amount</span>
                                        <span class="text-primary fs-6" id="netAmount">0.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Remarks -->
                <div class="pos-card p-2 my-2">
                    <div class="row g-2">
                        <div class="col-md-6 d-flex align-items-center gap-2">
                            <label class="pos-label">Kot Remark</label>
                            <input type="text" class="form-control form-control-sm" name="kotremark" id="kotremark">
                        </div>
                    </div>
                </div>

                <div class="pos-actions-grid">
                    <button type="button" id="btnNew" class="btn btn-pos-new pos-bottom-btn"><i
                            class="fa-solid fa-file-lines mb-1"></i> New KOT</button>
                    <button type="button" id="btnSave" class="btn btn-pos-save pos-bottom-btn"><i
                            class="fa-solid fa-floppy-disk mb-1"></i> Save KOT<small>F6</small></button>
                    {{-- <button type="button" id="btnPrint" class="btn btn-pos-print pos-bottom-btn"><i
                            class="fa-solid fa-print mb-1"></i> Print KOT<small>F7</small></button> --}}
                    <button type="button" id="btnHold" class="btn btn-pos-hold pos-bottom-btn"><i
                            class="fa-solid fa-pause mb-1"></i> Hold<small>F9</small></button>
                    <button type="button" id="btnRecall" class="btn btn-pos-recall pos-bottom-btn position-relative"><i
                            class="fa-solid fa-rotate mb-1"></i> Recall<span id="recallCount"
                            class="badge bg-danger position-absolute"
                            style="top:-5px; right:-5px; display:none;">0</span></button>
                    <button type="button" id="btnPendingKot" class="btn btn-pos-pending pos-bottom-btn"><i
                            class="fa-solid fa-hourglass-half mb-1"></i> Pending KOT</button>
                    @if (checkisadmin('freeitemsale') == true)
                        <button type="button" id="freeBtn" class="btn btn-pos-hold pos-bottom-btn" disabled>
                            <i class="fa-solid fa-gift mb-1"></i> Free</button>
                        <button type="button" id="unfreeBtn" class="btn btn-pos-recall pos-bottom-btn"
                            style="display:none;" disabled>
                            <i class="fa-solid fa-gift mb-1"></i> Unfree</button>
                    @endif
                    <button type="button" id="btnPendingNcKot" class="btn btn-pos-pending pos-bottom-btn"><i
                            class="fa-solid fa-hourglass-half mb-1"></i> Pending NC KOT</button>
                    <button type="button" id="btnMerge" class="btn btn-pos-merge pos-bottom-btn"><i
                            class="fa-solid fa-code-merge mb-1"></i> Merge Table</button>
                    <button type="button" id="btnSplit" class="btn btn-pos-split pos-bottom-btn"><i
                            class="fa-solid fa-border-all mb-1"></i> Split Bill</button>
                    <a href="{{ url('kottransfer') }}?dcode={{ $dcode }}" target="_blank" id="btnTransferLink"
                        class="btn btn-pos-transfer pos-bottom-btn"><i
                            class="fa-solid fa-arrow-right-arrow-left mb-1"></i> Transfer</a>
                    <button type="button" id="btnBill" class="btn btn-pos-bill pos-bottom-btn"><i
                            class="fa-solid fa-receipt mb-1"></i> Bill<small>F8</small></button>
                    <button type="button" id="btnSettlement" class="btn btn-pos-settle pos-bottom-btn"><i
                            class="fa-solid fa-hammer mb-1"></i> Settlement</button>
                    <button type="button" id="btnDeleteBill" class="btn btn-pos-cancel pos-bottom-btn" disabled>
                        <i class="fa-solid fa-trash mb-1"></i> Delete Bill</button>
                    <button type="button" id="btnCancel" class="btn btn-pos-cancel pos-bottom-btn"><i
                            class="fa-solid fa-xmark mb-1"></i> Cancel</button>
                    <a href="{{ url('/company') }}" class="btn btn-pos-exit pos-bottom-btn"><i
                            class="fa-solid fa-door-open mb-1"></i> Exit<small>Esc</small></a>
                </div>
                <div id="tableDisplayPanel" class="pos-card p-2 mt-2" style="display:none;">
                    <div class="pos-header-navy text-uppercase mb-2 d-flex justify-content-between align-items-center">
                        <span>Table Status — click a table to select it</span>
                        <button type="button" id="btnCloseTableDisplay" class="btn btn-sm btn-light py-0 px-2"
                            title="Close">&times;</button>
                    </div>
                    <div class="d-flex gap-3 justify-content-center mb-2 small flex-wrap">
                        <span><span class="table-swatch"
                                style="background: {{ $depart->occupied ?? '#dc3545' }};"></span> Occupied</span>
                        <span><span class="table-swatch" style="background: {{ $depart->vacant ?? '#198754' }};"></span>
                            Vacant</span>
                        <span><span class="table-swatch" style="background: {{ $depart->billed ?? '#0d6efd' }};"></span>
                            Billed</span>
                        <span><span class="table-swatch" style="background: {{ $depart->booked ?? '#6f42c1' }};"></span>
                            Booked</span>
                    </div>
                    <div class="d-flex justify-content-center align-items-center gap-2 mb-2">
                        <button type="button" id="btnChangeTableMode" class="btn btn-sm btn-outline-warning">
                            <i class="fa-solid fa-shuffle"></i> Change Table
                        </button>
                        <span id="changeTableHint" class="small text-muted d-none"></span>
                    </div>
                    <div id="tableDisplayGrid" class="d-flex flex-wrap gap-2 justify-content-center"></div>
                </div>
            </form>
            <!-- Bill Settlement Modal -->
            <div class="modal fade" id="serviceSettlementModal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">
                                Settlement <span id="serviceSettlementBillNo" class="text-primary"></span>
                            </h5>
                            <button type="button" class="close" data-dismiss="modal">
                                <span>&times;</span>
                            </button>
                        </div>
                        <div class="modal-body p-0">
                            <iframe id="serviceSettlementIframe" src="" frameborder="0"
                                style="width:100%; height:600px;"></iframe>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2 px-3 py-1 bg-dark text-white rounded">
                <div class="fw-semibold small">
                    <span class="me-3">F6 - Save</span>
                    {{-- <span class="me-3">F7 - Print</span> --}}
                    <span class="me-3">F8 - Bill</span>
                    <span>Esc - Exit</span>
                </div>
                <div class="fw-bold small text-light">Powered By : Analysis Software Services</div>
            </div>
        </div>
    </div>

    <script>
        function scrollCategory(amount) {
            document.getElementById('categoryContainer').scrollBy({
                top: amount,
                behavior: 'smooth'
            });
        }

        $(document).ready(function() {
            let totaladditems = 0;
            let mergedKotDocids = [];
            let lastBillPrintData = null;
            let currentMergeTable = '';
            let billMode = false;
            // ✅ true while a previously SAVED KOT (Pending KOT resume) or an Old Bill is being
            // reviewed — in this mode no new items may be added, only Void is allowed.
            let pendingKotEditMode = false;
            // ✅ Change Table mode: pick current table, then click a vacant table to move it there.
            let changeTableMode = false;
            let changeTableFrom = null;
            // ✅ cache of the last /fetchtablestatusservicedesk response, reused by the
            // Settlement button so it doesn't have to re-fetch every click.
            let TABLE_STATUS_DATA = [];
            let LAST_SAVED_HASH = null;
            let selectedItemRow = null;
            let currentDiscount = {
                type: '',
                percent: 0,
                items: []
            };
            const token = '{{ csrf_token() }}';

            // Small helper so every pushNotify call uses the exact same option set consistently.
            function notify(type, title, message) {
                pushNotify(type, title, message, 'fade', 300, '', '', true, true, true, 3000, 20, 20,
                    'outline', 'right top');
            }

            // ✅ Locks / unlocks the item grid so items cannot be added while editing a saved KOT/Bill.
            function setItemAddLock(locked) {
                if (locked) {
                    $('#menuItemsPanel').addClass('items-panel-locked');
                    $('#searchname, #searchbar').prop('disabled', true);
                    $('#pendingKotEditBanner').removeClass('d-none');
                } else {
                    $('#menuItemsPanel').removeClass('items-panel-locked');
                    $('#searchname, #searchbar').prop('disabled', false);
                    $('#pendingKotEditBanner').addClass('d-none');
                }
            }

            // ✅ NEW — single source of truth for Free / Unfree button state, driven purely by
            // the currently selected row. Called after selection changes AND after Free/Unfree
            // actions so the buttons never go stale.
            function updateFreeUnfreeButtonState() {
                if (!selectedItemRow) {
                    $('#freeBtn').prop('disabled', true).show();
                    $('#unfreeBtn').prop('disabled', true).hide();
                    return;
                }
                let rate = parseFloat(selectedItemRow.find('.rateclass').val()) || 0;
                let isItemFree = rate === 0;

                if (isItemFree) {
                    $('#freeBtn').prop('disabled', true).hide();
                    $('#unfreeBtn').prop('disabled', false).show();
                } else {
                    $('#freeBtn').prop('disabled', false).show();
                    $('#unfreeBtn').prop('disabled', true).hide();
                }
            }

            $('#btnDisplayTable').on('click', function() {
                if ($('#tableDisplayPanel').is(':visible')) {
                    $('#tableDisplayPanel').slideUp(150);
                    return;
                }
                populateTableDisplayGrid();
                $('#tableDisplayPanel').slideDown(150);
            });

            // ✅ Explicit close button — panel otherwise stays open until this (or the toggle button above) is clicked.
            $('#btnCloseTableDisplay').on('click', function() {
                $('#tableDisplayPanel').slideUp(150);
                changeTableMode = false;
                changeTableFrom = null;
                $('#changeTableHint').addClass('d-none').text('');
            });

            // ✅ Toggle "Change Table" mode — select the table you want to move (defaults to the
            // currently selected table), then click a Vacant table box to move it there.
            $('#btnChangeTableMode').on('click', function() {
                let roomno = $('#roomno').val();
                if (!roomno) {
                    notify('error', 'Change Table', 'Please select the current table first');
                    return;
                }
                changeTableMode = true;
                changeTableFrom = roomno;
                $('#changeTableHint').removeClass('d-none')
                    .text('Select a Vacant table to move Table ' + roomno + ' to.');
                if (!$('#tableDisplayPanel').is(':visible')) {
                    populateTableDisplayGrid();
                    $('#tableDisplayPanel').slideDown(150);
                } else {
                    populateTableDisplayGrid();
                }
            });

            function populateTableDisplayGrid() {
                let grid = $('#tableDisplayGrid').empty();
                let options = $('#roomno option').filter(function() {
                    return $(this).val() !== '';
                });

                if (options.length === 0) {
                    grid.append('<div class="text-muted small p-2">No tables found for this outlet.</div>');
                    return;
                }

                grid.append('<div class="text-muted small p-2">Loading table status...</div>');

                // ✅ Same status logic as the main Display Table screen: Occupied / Vacant /
                // Billed / Booked. A table only goes back to Vacant once its bill is settled.
                $.ajax({
                    url: '/fetchtablestatusservicedesk',
                    method: 'POST',
                    data: {
                        dcode: $('#restcode').val(),
                        _token: token
                    },
                    success: function(results) {
                        results = typeof results === 'string' ? JSON.parse(results) : results;
                        TABLE_STATUS_DATA = results || [];
                        let statusByRoom = {};
                        TABLE_STATUS_DATA.forEach(function(r) {
                            statusByRoom[String(r.roomno).trim()] = r;
                        });

                        grid.empty();
                        options.each(function() {
                            let val = $(this).val();
                            let info = statusByRoom[String(val).trim()];
                            let status = info ? info.status : 'vacant';
                            let sub = '';
                            if (status === 'occupied' && info && info.waitername) sub = info
                                .waitername;
                            if (status === 'billed' && info && info.vno) sub = 'Bill #' + info
                                .vno;
                            if (status === 'booked') sub = 'Booked';
                            grid.append(
                                `<div class="table-display-box ${status}" data-roomno="${val}" data-status="${status}">
                            <div>${val}</div>
                            ${sub ? `<div class="table-box-sub">${sub}</div>` : ''}
                        </div>`
                            );
                        });
                    },
                    error: function() {
                        grid.empty();
                        options.each(function() {
                            let val = $(this).val();
                            grid.append(
                                `<div class="table-display-box vacant" data-roomno="${val}" data-status="vacant">${val}</div>`
                            );
                        });
                    }
                });
            }

            $(document).on('click', '.table-display-box', function() {
                let roomno = $(this).data('roomno');
                let status = $(this).data('status');

                if (changeTableMode) {
                    if (!changeTableFrom) {
                        changeTableMode = false;
                        return;
                    }
                    if (String(roomno) === String(changeTableFrom)) {
                        notify('warning', 'Change Table', 'Select a different table to move to.');
                        return;
                    }
                    if (status && status !== 'vacant') {
                        notify('error', 'Change Table', 'Please select a Vacant table only.');
                        return;
                    }
                    Swal.fire({
                        icon: 'info',
                        title: 'Change Table',
                        text: `Move Table ${changeTableFrom} to Table ${roomno}?`,
                        showCancelButton: true,
                        confirmButtonText: 'Yes, Move'
                    }).then((result) => {
                        if (!result.isConfirmed) return;
                        $.ajax({
                            url: '/changetblxhr',
                            method: 'POST',
                            data: {
                                dcode: $('#restcode').val(),
                                fromroom: changeTableFrom,
                                toroomno: roomno,
                                _token: token
                            },
                            success: function() {
                                notify('success', 'Change Table',
                                    'Table changed from ' + changeTableFrom +
                                    ' to ' + roomno);
                                changeTableMode = false;
                                changeTableFrom = null;
                                $('#changeTableHint').addClass('d-none').text('');
                                $('#roomno').val(roomno).trigger('change');
                                populateTableDisplayGrid();
                            },
                            error: function() {
                                notify('error', 'Change Table',
                                    'Unable to change table');
                            }
                        });
                    });
                    return;
                }

                $('#roomno').val(roomno).trigger('change');
            });

            function getOrderHash() {
                let parts = [];
                $('#orderBody tr').each(function() {
                    let itemcodeInput = $(this).find('input[name^="itemcode"]');
                    if (!itemcodeInput.length) return;
                    let code = itemcodeInput.val();
                    let qty = $(this).find('.qtyitem').val();
                    let rate = $(this).find('.rateclass').val();
                    let idx = itemcodeInput.attr('name').replace('itemcode', '');
                    let note = $(`#description${idx}`).val() || '';
                    let voidyn = $(this).find('.voidyn').val() || 'N';
                    parts.push([code, qty, rate, note, voidyn].join(':'));
                });
                return parts.join('|');
            }

            function disableAllExceptSave() {
                $('.pos-bottom-btn').not('#btnSave, #btnPendingKot').prop('disabled', true).addClass('disabled');
            }

            function enableAllButtons() {
                $('.pos-bottom-btn').not('#btnBill, #btnSplit, #btnDeleteBill, #freeBtn, #unfreeBtn')
                    .prop('disabled', false).removeClass('disabled');
                $('#outlet_id, #roomno, #waiter, #pax').prop('disabled', false);
                $('#btnDeleteBill').prop('disabled', true).addClass('disabled');
                $('#freeBtn').prop('disabled', true).addClass('disabled');
                $('#unfreeBtn').prop('disabled', true).addClass('disabled').hide();

                updateBillSplitButtons();
            }

            function lockBillReviewUI() {
                $('#btnNew, #btnSave, #btnPrint, #btnPendingKot')
                    .prop('disabled', true).addClass('disabled');

                let isOldBill = $('#oldroomyn').val() === 'Y';

                if (isOldBill) {
                    $('#btnSplit, #btnMerge').prop('disabled', true).addClass('disabled');
                    $('#btnCancel').prop('disabled', false).removeClass('disabled');
                } else {
                    $('#btnSplit, #btnCancel, #btnMerge').prop('disabled', false).removeClass('disabled');
                }

                $('#btnTransferLink').addClass('disabled').css('pointer-events', 'none');
                $('#outlet_id, #roomno, #waiter, #pax')
                    .css('pointer-events', 'none')
                    .css('background-color', '#e9ecef');

                $('#orderBody tr').addClass('row-locked');

                $('#billReviewBanner').removeClass('d-none');

                $('#btnBill').prop('disabled', false).removeClass('disabled')
                    .html('<i class="fa-solid fa-receipt mb-1"></i> Confirm Bill<small>F8</small>');
            }


            function unlockFromBillReview() {
                billMode = false;
                pendingKotEditMode = false;
                setItemAddLock(false);
                $('#taxDetailsPanel').addClass('d-none');
                $('#billReviewBanner').addClass('d-none');
                $('#orderBody tr').removeClass('row-locked');
                $('#btnBill').html('<i class="fa-solid fa-receipt mb-1"></i> Bill<small>F8</small>');

                $('#outlet_id, #roomno, #waiter, #pax')
                    .css('pointer-events', '')
                    .css('background-color', '');

                enableAllButtons();
            }

            function enterBillReviewMode() {
                let roomno = $('#roomno').val();
                let dcode = $('#restcode').val();

                function proceedWithBillItems() {
                    $.ajax({
                        url: '/fetchtableitemspreview',
                        method: 'POST',
                        data: {
                            dcode: dcode,
                            roomno: roomno,
                            _token: token
                        },
                        success: function(items) {
                            if (!items || items.length === 0) {
                                notify('error', 'Bill', 'No pending KOT found for this table');
                                return;
                            }
                            $('#orderBody').empty();
                            totaladditems = 0;
                            mergedKotDocids = [];
                            items.forEach(function(item) {
                                addOrderItem(item.itemcode, item.rate, item.itemrestcode, item
                                    .itemname,
                                    item.quantity, item.description || '', item.tax_rate,
                                    item.tax_code,
                                    item.discapp, item.schrgapp, item.rateinctax, item
                                    .docid,
                                    undefined, item.voidyn || 'N');
                                if (!mergedKotDocids.includes(item.docid)) mergedKotDocids.push(
                                    item
                                    .docid);
                            });
                            if (!$('#waiter').val()) {
                                let firstWithWaiter = items.find(it => it.waiter);
                                if (firstWithWaiter) $('#waiter').val(firstWithWaiter.waiter);
                            }
                            billMode = true;
                            pendingKotEditMode = false;
                            setItemAddLock(false);
                            $('#taxDetailsPanel').removeClass('d-none');
                            updateTotals();
                            lockBillReviewUI();
                            notify('success', 'Bill', 'Items loaded for Table ' + roomno +
                                '. Verify qty & click Confirm Bill to save.');
                        },
                        error: function() {
                            notify('error', 'Bill', 'Unable to load table items');
                        }
                    });
                }

                let hasUnsavedChanges = getOrderHash() !== LAST_SAVED_HASH;

                if ($('#orderBody tr').length > 0 && hasUnsavedChanges) {
                    if (!$('#waiter').val()) {
                        notify('error', 'Bill',
                            'Please select Waiter to save the items currently on screen before billing.');
                        return;
                    }
                    let formData = $('#servicedeskform').serialize();
                    $.ajax({
                        type: 'POST',
                        url: '/kotstore',
                        data: formData,
                        success: function(response) {
                            if (response.status === 'success') {
                                LAST_SAVED_HASH = getOrderHash();
                                proceedWithBillItems();
                            } else {
                                notify('error', 'Service Desk', response.message);
                            }
                        },
                        error: function() {
                            notify('error', 'Service Desk',
                                'Unable to save current KOT before billing');
                        }
                    });
                } else {
                    proceedWithBillItems();
                }
            }

            function refreshTableList(preserveSelection) {
                let dcode = $('#restcode').val();
                let ordertype = $('#ordertype').val();
                if (!dcode) return;

                $.ajax({
                    url: '/fetchtablesservicedesk',
                    method: 'POST',
                    data: {
                        dcode: dcode,
                        ordertype: ordertype,
                        _token: token
                    },
                    success: function(res) {
                        let sel = $('#roomno');
                        let selectedVal = preserveSelection ? sel.val() : null;
                        sel.empty().append(`<option value="">${res.label}</option>`);
                        (res.data || []).forEach(function(item) {
                            let guestTxt = item.guest ? ` (${item.guest})` : '';
                            sel.append(
                                `<option value="${item.table_number}">${item.table_number}${guestTxt}</option>`
                            );
                        });
                        if (selectedVal) sel.val(selectedVal);

                        if ($('#tableDisplayPanel').is(':visible')) {
                            populateTableDisplayGrid();
                        }
                    }
                });
            }

            $(document).on('change', '#roomno', function() {
                let roomno = $(this).val();
                updateBillSplitButtons();
                if (!roomno) {
                    $('#guestdt').text('');
                    return;
                }
                $.ajax({
                    url: '/guestdtfetchkot',
                    method: 'POST',
                    data: {
                        roomno: roomno,
                        _token: token
                    },
                    success: function(results) {
                        if (results && results.pax) {
                            $('#pax').val(results.pax);
                        }
                        $('#guestdt').text(results && results.concat ? results.concat : '');
                    },
                    error: function() {
                        $('#guestdt').text('');
                    }
                });
            });

            $(document).on('change', '#company', function() {
                let sub_code = $(this).val();
                if (!sub_code) {
                    $('#compgst').text('');
                    return;
                }
                $.ajax({
                    url: '/fetchcompdetail',
                    method: 'POST',
                    data: {
                        sub_code: sub_code,
                        _token: token
                    },
                    success: function(results) {
                        $('#compgst').text(results ? results : '');
                    }
                });
            });

            function updateSessionAndClock() {
                let options = {
                    timeZone: 'Asia/Kolkata',
                    hour12: false,
                    hour: '2-digit',
                    minute: '2-digit',
                    second: '2-digit'
                };
                let currentTime = new Date().toLocaleString('en-US', options);
                $.ajax({
                    url: '/getsessionmast',
                    method: 'POST',
                    data: {
                        curtime: currentTime,
                        _token: token
                    },
                    success: function(data) {
                        $('#sessionmast').text(data || '');
                    }
                });
            }
            updateSessionAndClock();
            setInterval(updateSessionAndClock, 60000);

            function updateBillSplitButtons() {
                if (billMode) return;

                let roomno = $('#roomno').val();
                let dcode = $('#restcode').val();

                if (!roomno) {
                    $('#btnBill, #btnSplit').prop('disabled', true).addClass('disabled');
                    return;
                }

                $.ajax({
                    url: '/fetchpendingkot',
                    method: 'POST',
                    data: {
                        dcode: dcode,
                        _token: token
                    },
                    success: function(results) {
                        results = typeof results === 'string' ? JSON.parse(results) : results;
                        let hasPending = (results || []).some(function(r) {
                            return String(r.roomno) === String(roomno);
                        });
                        $('#btnBill').prop('disabled', !hasPending).toggleClass('disabled', !
                            hasPending);
                        $('#btnSplit').prop('disabled', true).addClass('disabled');
                    },
                    error: function() {
                        $('#btnBill, #btnSplit').prop('disabled', true).addClass('disabled');
                    }
                });
            }

            function populateOldBillDropdown() {
                let dcode = $('#restcode').val();
                $.ajax({
                    url: '/fetcholdbills',
                    method: 'POST',
                    data: {
                        dcode: dcode,
                        _token: token
                    },
                    success: function(rows) {
                        let sel = $('#oldroomno').empty().append(
                            '<option value="">Old Bill No.</option>');
                        (rows || []).forEach(function(r) {
                            sel.append(
                                `<option data-vprefix="${r.vprefix}" value="${r.vno}">Bill No: ${r.vno} Waiter: ${r.waitername ?? ''}</option>`
                            );
                        });
                    }
                });
            }

            $(document).on('change', '#oldroomno', function() {
                let billno = $(this).val();
                let vprefix = $(this).find('option:selected').data('vprefix') || $('#vprefix').val();
                let dcode = $('#restcode').val();
                if (billno === '') return;

                $('#orderBody').empty();
                totaladditems = 0;

                $.ajax({
                    url: '/fetchitemoldroomno',
                    method: 'POST',
                    data: {
                        billno: billno,
                        vprefix: vprefix,
                        dcode: dcode,
                        _token: token
                    },
                    success: function(results) {
                        results = typeof results === 'string' ? JSON.parse(results) : results;
                        if (results === 'false') {
                            notify('error', 'Service Desk', `Invalid Bill No. ${billno}`);
                            return;
                        }

                        $('#oldroomyn').val('Y');
                        $('#sale1docid').val(results.sale1.docid);
                        $('#vprefix').val(results.sale1.vprefix);
                        $('#roomno').val(results.roomno);
                        $('#pax').val(results.sale1.guaratt);
                        $('#waiter').val(results.sale1.waiter);
                        $('#company').val(results.sale1.party);
                        $('#compgst').text(results.subgroup?.gstin ?? '');
                        $('#guestdt').text(results.concat || '');

                        if (results.chkguestprof) {
                            $('#customername').val(results.chkguestprof.name ?? '');
                            $('#phoneno').val(results.chkguestprof.mobile_no ?? '');
                            $('#address').val(results.chkguestprof.add1 ?? '');
                            $('#customercity').val(results.chkguestprof.city ?? '');
                        }

                        results.items.forEach(function(item) {
                            addOrderItem(
                                item.item, item.actualrate, item.restcode, item
                                .Name,
                                item.qtyiss, item.description, item.tax_rate, item
                                .tax_code,
                                item.discapp, item.SChrgApp, item.RateIncTax,
                                item.kotdocid, item.stocksno, item.voidyn || 'N'
                            );
                        });

                        $('#btnCancel').data('delete-allowed', results.deleteallow);
                        $('#sale1docid').val(results.sale1.docid);
                        $('#btnDeleteBill').prop('disabled', !results.deleteallow);

                        billMode = true;
                        $('#taxDetailsPanel').removeClass('d-none');
                        $('#kotnolabel').text('Bill No.');
                        $('#krsno').text(billno);
                        lockBillReviewUI();
                        updateTotals();

                        pendingKotEditMode = true;
                        setItemAddLock(true);

                        lastBillPrintData = {
                            billno: billno,
                            docid: results.sale1.docid,
                            vdate: results.sale1.vdate,
                            outletcode: dcode
                        };
                        $('#currentOrderTitle').text('CURRENT BILL');
                        $('#billSuccessMsg').text('Bill #' + billno + ' — Table ' + results
                            .roomno);
                        $('#billSuccessPanel').removeClass('d-none');
                        $('#btnBillSettlement').prop('disabled', false);

                        notify('success', 'Service Desk', `Bill No. ${billno} loaded`);
                    },
                    error: function() {
                        notify('error', 'Service Desk', 'Unable to load old bill');
                    }
                });
            });

            $(document).on('change', '#showNcSelect', function() {
                if ($(this).is(':checked')) {
                    $('#nctype').prop('disabled', false).show();
                } else {
                    $('#nctype').prop('disabled', true).hide().val('');
                }
            });

            function toISODate(dmy) {
                if (!dmy) return '';
                let parts = dmy.split('-');
                if (parts.length !== 3) return '';
                return `${parts[2]}-${parts[1]}-${parts[0]}`;
            }

            let customerPhoneTimer;
            $(document).on('input', '#modal_phoneno', function() {
                let phoneno = $(this).val().trim();
                clearTimeout(customerPhoneTimer);
                if (phoneno.length !== 10) return;
                customerPhoneTimer = setTimeout(() => {
                    $.ajax({
                        url: '/phonefindxhr',
                        method: 'POST',
                        data: {
                            phoneno: phoneno,
                            _token: token
                        },
                        success: function(result) {
                            if (result !== 'Not Found' && result.data && result.data
                                .length > 0) {
                                let tdata = result.data[0];
                                $('#modal_customername').val(tdata.customername || '');
                                $('#modal_address').val(tdata.add1 || '');
                                $('#modal_customercity').val(tdata.city || '');
                                $('#modal_like').val(tdata.likes || '');
                                $('#modal_dislike').val(tdata.dislikes || '');
                                $('#modal_birthdate').val(toISODate(tdata.dob));
                                $('#modal_anniversary').val(toISODate(tdata
                                    .anniversary));
                            }
                        }
                    });
                }, 400);
            });

            $('#customerdetailsave').on('click', function() {
                $('#phoneno').val($('#modal_phoneno').val());
                $('#customername').val($('#modal_customername').val());
                $('#address').val($('#modal_address').val());
                $('#customercity').val($('#modal_customercity').val());
                $('#like').val($('#modal_like').val());
                $('#dislike').val($('#modal_dislike').val());
                $('#birthdate').val($('#modal_birthdate').val());
                $('#anniversary').val($('#modal_anniversary').val());

                let name = $('#modal_customername').val();
                let phone = $('#modal_phoneno').val();
                let summary = [name, phone ? `(${phone})` : ''].filter(Boolean).join(' ');
                $('#customerSummary').text(summary);

                if (phone) {
                    $.ajax({
                        url: '/checkcustomerreward',
                        method: 'POST',
                        data: {
                            mobileno: phone,
                            restcode: $('#restcode').val(),
                            _token: token
                        },
                        success: function(res) {
                            if (res && res.success) {
                                $('#availablepoint').text(res.availablepoint || 0);
                                $('#redeemamount').data('max-value', res.availablevalue || 0);
                            } else {
                                $('#availablepoint').text('0');
                            }
                        }
                    });
                }

                $('#customerModal').modal('hide');
            });

            const itemPlaceholderImage = "{{ asset('admin/icons/custom/60x60.svg') }}";
            const itemStorageBase = "{{ asset('storage/property/itempicture') }}";
            const itemFallbackImage = "{{ url('assets/img/100_90.svg') }}";

            function getItemImageSrc(item) {
                if (!item.iempic) return itemPlaceholderImage;
                return `${itemStorageBase}/${item.iempic}`;
            }

            $('#outlet_id').on('change', function() {
                let dcode = $(this).val();

                $.ajax({
                    url: '/switchoutletxhr',
                    method: 'POST',
                    data: {
                        dcode: dcode,
                        _token: token
                    },
                    success: function(res) {
                        $('#fixrestcode, #restcode').val(res.dcode);
                        $('#shortname').val(res.shortname);
                        $('#krsno').text(res.kot_no);
                        $('#tablelabel').text(res.label);

                        $('#btnTransferLink').attr('href', '{{ url('kottransfer') }}?dcode=' +
                            res.dcode);

                        $('#ordertype').val(res.isRoomService ? 'Room Service' : 'Dine In');
                        SUNDRY_TYPES = res.sundrytype || [];
                        renderDynamicTaxRows(0, 0, 0, 0);

                        let sel = $('#roomno');
                        sel.empty().append(`<option value="">${res.label}</option>`);
                        res.tables.forEach(function(item) {
                            let guestTxt = item.guest ? ` (${item.guest})` : '';
                            sel.append(
                                `<option value="${item.table_number}">${item.table_number}${guestTxt}</option>`
                            );
                        });

                        let catContainer = $('#categoryContainer');
                        catContainer.empty();
                        catContainer.append(
                            `<div class="category-btn active menugrpitem" data-value="favourite" id="favourite">⭐ Favourite</div>`
                        );
                        res.categories.forEach(function(cat) {
                            catContainer.append(
                                `<div class="category-btn menugrpitem" data-value="${cat.code}">${cat.name}</div>`
                            );
                        });

                        resetOrderForm();
                        $('#searchname, #searchbar').val('');
                        $('#itemsGrid').empty();
                        populateOldBillDropdown();

                        $('#favourite').trigger('click');

                        // ✅ Display Table panel (if open) refreshes for the newly selected outlet
                        // instead of showing stale table data or disappearing.
                        if ($('#tableDisplayPanel').is(':visible')) {
                            populateTableDisplayGrid();
                        }
                    },
                    error: function() {
                        notify('error', 'Service Desk', 'Unable to switch outlet');
                    }
                });
            });

            $(document).on('click', '.menugrpitem', function() {
                $('.menugrpitem').removeClass('active');
                $(this).addClass('active');
                let grpid = $(this).data('value');
                let dcode = $('#restcode').val();
                $('#searchname, #searchbar').val('');
                fetchItems(`grpid=${grpid}&dcode=${dcode}&_token=${token}`);
            });

            let searchTimer;
            $('#searchname').on('input', function() {
                let val = $(this).val().trim();
                $('#searchbar').val('');
                clearTimeout(searchTimer);
                if (!val) return;
                searchTimer = setTimeout(() => {
                    fetchItems(
                        `name=${encodeURIComponent(val)}&dcode=${$('#restcode').val()}&_token=${token}`
                    );
                }, 350);
            });
            $('#searchbar').on('input', function() {
                let val = $(this).val().trim();
                $('#searchname').val('');
                clearTimeout(searchTimer);
                if (!val) return;
                searchTimer = setTimeout(() => {
                    fetchItems(
                        `barcodeinput=${encodeURIComponent(val)}&dcode=${$('#restcode').val()}&_token=${token}`
                    );
                }, 350);
            });


            function fetchItems(data) {
                $.ajax({
                    url: '/fetchitemnames',
                    method: 'POST',
                    data: data,
                    success: function(results) {
                        let grid = $('#itemsGrid');
                        grid.empty();
                        results.forEach(function(item) {
                            let imgSrc = getItemImageSrc(item);
                            grid.append(`
                        <div class="col-4">
                            <div class="item-card tditemname" data-value="${item.Code}" data-id="${item.rateofitem}" data-itemrestcode="${item.RestCode}"
                                data-taxrate="${item.tax_rate || 0}" data-taxcode="${item.tax_code || ''}"
                                data-discapp="${item.DiscApp || 'N'}" data-schrgapp="${item.SChrgApp || 'N'}" data-rateinctax="${item.RateIncTax || 'N'}"
                                data-groupname="${item.groupname || ''}" data-groupcode="${item.groupcode || ''}">
                                <img src="${imgSrc}" alt="${item.Name}" onerror="this.onerror=null;this.src='${itemFallbackImage}';">
                                <div class="item-title">${item.Name}</div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <span class="item-price">${parseFloat(item.rateofitem || 0).toFixed(2)}</span>
                                    <button type="button" class="add-btn">+</button>
                                </div>
                            </div>
                        </div>`);
                        });
                    }
                });
            }

            function addOrderItem(itemcode, itemrate, itemrestcode, itemname, qty = 1, description = '',
                taxrate = 0, taxcode = '', discapp = 'N', schrgapp = 'N', rateinctax = 'N', kotdocid = '',
                kotsno = '', voidyn = 'N', groupname = '', groupcode = '') {
                itemcode = String(itemcode);
                itemrate = parseFloat(itemrate) || 0;
                qty = parseInt(qty) || 1;

                let existing = $('#orderBody tr').filter(function() {
                    return String($(this).find('input[name^="itemcode"]').val()) === itemcode;
                });

                if (existing.length) {
                    let qtyInput = existing.find('.qtyitem');
                    qtyInput.val(parseInt(qtyInput.val()) + qty).trigger('change');
                } else {
                    totaladditems++;
                    let idx = totaladditems;
                    let row = `<tr data-groupname="${groupname || ''}" data-groupcode="${groupcode || ''}">
                <td><button type="button" class="btn btn-sm btn-outline-danger removeItem">✕</button></td>
                <td class="text-start fw-bold">${itemname}</td>
                <td>
                    <input type="hidden" name="itemcode${idx}" value="${itemcode}">
                    <input type="hidden" name="itemrestcode${idx}" value="${itemrestcode}">
                    <input type="hidden" name="itemname${idx}" value="${itemname}">
                    <input type="hidden" name="itemnumber${idx}" id="itemnumber${idx}" value="${idx}">
                   <input type="hidden" name="kotdocidrow${idx}" id="kotdocidrow${idx}" value="${kotdocid || ''}">
                   <input type="hidden" name="kotsno${idx}" id="kotsno${idx}" value="${kotsno || ''}">
                    <input type="hidden" name="tax_rate${idx}" id="tax_rate${idx}" value="${taxrate || 0}">
                    <input type="hidden" name="taxrate_sum${idx}" id="taxrate_sum${idx}" value="${taxrate || 0}">
                    <input type="hidden" name="tax_code${idx}" id="tax_code${idx}" value="${taxcode || ''}">
                    <input type="hidden" name="discapp${idx}" id="discapp${idx}" value="${discapp || 'N'}">
                    <input type="hidden" name="SChrgApp${idx}" id="SChrgApp${idx}" value="${schrgapp || 'N'}">
                    <input type="hidden" name="RateIncTax${idx}" id="RateIncTax${idx}" value="${rateinctax || 'N'}">
                    <input type="hidden" name="fixamount${idx}" id="fixamount${idx}" value="${itemrate.toFixed(2)}">
                    <input type="hidden" name="taxedrate${idx}" id="taxedrate${idx}" value="${itemrate.toFixed(2)}">
                    <div class="d-flex align-items-center justify-content-center gap-1">
                        <button type="button" class="btn btn-sm btn-outline-secondary decrementRow px-2 py-0">-</button>
                        <input type="text" class="form-control form-control-sm qtyitem text-center" name="quantity${idx}" value="${qty}" style="width:44px;">
                        <button type="button" class="btn btn-sm btn-outline-secondary incrementRow px-2 py-0">+</button>
                    </div>
                </td>
                <td><input type="text" class="form-control form-control-sm rateclass text-end" name="rate${idx}" value="${itemrate.toFixed(2)}" readonly></td>
                <td class="fw-bold amount-cell">${(itemrate * qty).toFixed(2)}</td>
                <td>
                    <input type="hidden" name="description${idx}" id="description${idx}" value="${description}">
                    <span class="text-primary small description-cell" style="cursor:pointer;text-decoration:underline;" data-idx="${idx}">${description ? description : '+ Note'}</span>
                </td>
                <td>
                   <input type="text" name="voidyn${idx}" id="voidyn${idx}" value="${voidyn}" class="form-control form-control-sm voidyn text-center" readonly style="cursor:pointer;">
                </td>
            </tr>`;
                    $('#orderBody').append(row);
                    $('#totalitems').val(totaladditems);

                    if (billMode) {
                        $('#orderBody tr').last().addClass('row-locked');
                    }
                }
                updateTotals();
            }

            $(document).on('click', '.tditemname', function() {
                if (pendingKotEditMode) {
                    notify('error', 'Pending KOT',
                        'Items cannot be added while editing a saved KOT/Bill. Only Void is allowed for existing items.'
                    );
                    return;
                }
                let itemcode = String($(this).data('value'));
                let itemrate = parseFloat($(this).data('id')) || 0;

                let nckotper = parseFloat($('#nckotper').val()) || 0;
                if ($('#showNcSelect').is(':checked') && nckotper > 0) {
                    itemrate = Math.ceil((itemrate * nckotper) / 100);
                }

                let itemrestcode = $(this).data('itemrestcode');
                let itemname = $(this).find('.item-title').text().trim();
                let taxrate = $(this).data('taxrate');
                let taxcode = $(this).data('taxcode');
                let discapp = $(this).data('discapp');
                let schrgapp = $(this).data('schrgapp');
                let rateinctax = $(this).data('rateinctax');
                let groupname = $(this).data('groupname');
                let groupcode = $(this).data('groupcode');

                addOrderItem(itemcode, itemrate, itemrestcode, itemname, 1, '', taxrate, taxcode,
                    discapp, schrgapp, rateinctax, '', '', 'N', groupname, groupcode);

                $.ajax({
                    url: '/fetchitemdetails',
                    method: 'POST',
                    data: {
                        itemcode: itemcode,
                        itemrestcode: itemrestcode,
                        _token: token
                    },
                    success: function(results) {
                        if (results && results.happyhour) handleHappyHourLogic(itemcode, results
                            .happyhour);
                    }
                });
            });

            $(document).on('click', '.incrementRow', function() {
                let qtyInput = $(this).siblings('.qtyitem');
                let value = parseInt(qtyInput.val()) || 0;
                qtyInput.val(value + 1);
                updateTotals();
            });
            $(document).on('click', '.decrementRow', function() {
                let qtyInput = $(this).siblings('.qtyitem');
                let value = parseInt(qtyInput.val()) || 0;
                if (value > 1) {
                    qtyInput.val(value - 1);
                    updateTotals();
                }
            });

            $(document).on('click', '.voidyn', function() {
                let input = $(this);
                input.val(input.val() === 'N' ? 'Y' : 'N');
                updateTotals();
            });

            $(document).on('input', '#discountfix, #servicechargefix', function() {
                calculatetaxes();
            });

            function updateDiscountInfo() {
                const info = $('#discountInfo');
                if (currentDiscount.type) {
                    info.text(`${currentDiscount.type}: ${currentDiscount.percent}%`).show();
                    $('#discountfix').val(currentDiscount.type === 'Bill' ? currentDiscount.percent
                        .toFixed(2) : '0.00');
                } else {
                    info.hide();
                }
            }

            function resetAllDiscounts() {
                $('#discountfix').val('0.00');
                $('#orderBody tr').each(function(i) {
                    let idx = i + 1;
                    let orig = $(`#rate${idx}`).data('original-rate');
                    if (orig) $(`#rate${idx}`).val(parseFloat(orig).toFixed(2));
                    $(this).find('td:first .discount-badge').remove();
                });
                updateTotals();
            }

            function showDiscountDialog(type, cb) {
                if (currentDiscount.type && currentDiscount.type !== type) {
                    Swal.fire({
                        title: 'Discount Already Applied',
                        text: `${currentDiscount.type} discount (${currentDiscount.percent}%) is already applied. Replace with ${type} discount?`,
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonText: 'Yes, replace it'
                    }).then(r => {
                        if (r.isConfirmed) {
                            resetAllDiscounts();
                            currentDiscount = {
                                type: '',
                                percent: 0,
                                items: []
                            };
                            updateDiscountInfo();
                            showDiscountInputDialog(type, cb);
                        }
                    });
                } else {
                    showDiscountInputDialog(type, cb);
                }
            }

            function showDiscountInputDialog(type, cb) {
                Swal.fire({
                    title: `${type} Discount`,
                    input: 'number',
                    inputPlaceholder: 'e.g. 10',
                    inputAttributes: {
                        min: 0,
                        max: 100,
                        step: 0.01
                    },
                    showCancelButton: true,
                    confirmButtonText: 'Apply',
                    inputValidator: v => (!v || v < 0 || v > 100) ? 'Enter 0-100!' : null
                }).then(r => {
                    if (r.isConfirmed) {
                        cb(parseFloat(r.value));
                    }
                });
            }

            $(document).on('click', '#billDiscountOption', function(e) {
                e.preventDefault();
                showDiscountDialog('Bill', function(percent) {
                    currentDiscount = {
                        type: 'Bill',
                        percent,
                        items: []
                    };
                    updateDiscountInfo();
                    calculatetaxes();
                });
            });

            $(document).on('click', '#itemDiscountOption', function(e) {
                e.preventDefault();
                let html = '';
                $('#orderBody tr').each(function(i) {
                    let idx = i + 1;
                    let discapp = $(`#discapp${idx}`).val();
                    if (discapp === 'Y') {
                        let name = $(`input[name=itemname${idx}]`).val();
                        html +=
                            `<div class="form-check"><input class="form-check-input item-checkbox" type="checkbox" value="${idx}" id="itemChk${idx}"><label class="form-check-label" for="itemChk${idx}">${name}</label></div>`;
                    }
                });
                $('#itemCheckboxList').html(html ||
                    '<p class="text-muted">No discount-applicable items</p>');
                $('#itemDiscountInput').val('');
                $('#itemDiscountModal').modal('show');
            });
            $(document).on('click', '#groupDiscountOption', function(e) {
                e.preventDefault();
                let groups = new Map();
                $('#orderBody tr').each(function(i) {
                    let idx = i + 1;
                    if ($(`#discapp${idx}`).val() === 'Y') {
                        let gcode = $(this).data('groupcode');
                        let gname = $(this).data('groupname');
                        if (gcode && gname && !groups.has(gcode)) groups.set(gcode, gname);
                    }
                });
                let html = '';
                if (groups.size === 0) {
                    html = '<p class="text-muted">No discount-applicable groups found</p>';
                } else {
                    groups.forEach((name, code) => {
                        html +=
                            `<div class="form-check"><input class="form-check-input group-checkbox" type="checkbox" value="${code}" id="grpChk${code}"><label class="form-check-label" for="grpChk${code}">${name}</label></div>`;
                    });
                }
                $('#groupCheckboxList').html(html);
                $('#groupDiscountInput').val('');
                $('#groupDiscountModal').modal('show');
            });

            $('#applyGroupDiscount').on('click', function() {
                let percent = parseFloat($('#groupDiscountInput').val());
                if (!percent || percent < 0 || percent > 100) {
                    notify('error', 'Invalid Input', 'Enter 0-100!');
                    return;
                }
                let groups = [];
                $('.group-checkbox:checked').each(function() {
                    groups.push($(this).val());
                });
                if (!groups.length) return;

                $('#discountfix').val('0.00');
                currentDiscount = {
                    type: 'Group',
                    percent,
                    items: [],
                    groups
                };

                $('#orderBody tr').each(function(i) {
                    let idx = i + 1;
                    let gcode = $(this).data('groupcode');
                    if (!gcode || !groups.includes(gcode.toString())) return;

                    let rateInput = $(`#rate${idx}`);
                    let original = rateInput.data('original-rate') || parseFloat(rateInput.val());
                    rateInput.data('original-rate', original);
                    let discRate = original * (1 - percent / 100);
                    rateInput.val(discRate.toFixed(2));

                    let row = $(`#orderBody tr`).eq(idx - 1);
                    row.find('td:first .discount-badge').remove();
                    row.find('td:first').append(
                        `<span class="discount-badge badge bg-warning ms-1">${percent}% OFF</span>`
                    );
                });

                $('#groupDiscountModal').modal('hide');
                updateDiscountInfo();
                updateTotals();
            });

            $('#applyItemDiscount').on('click', function() {
                let percent = parseFloat($('#itemDiscountInput').val());
                if (!percent || percent < 0 || percent > 100) {
                    notify('error', 'Invalid Input', 'Enter 0-100!');
                    return;
                }
                let selected = [];
                $('.item-checkbox:checked').each(function() {
                    selected.push(parseInt($(this).val()));
                });
                if (!selected.length) return;

                $('#discountfix').val('0.00');
                currentDiscount = {
                    type: 'Item',
                    percent,
                    items: selected
                };

                selected.forEach(function(idx) {
                    let rateInput = $(`#rate${idx}`);
                    let original = rateInput.data('original-rate');
                    if (!original) {
                        original = parseFloat(rateInput.val());
                        rateInput.data('original-rate', original);
                    }
                    let discRate = original * (1 - percent / 100);
                    rateInput.val(discRate.toFixed(2));
                    let row = $(`#orderBody tr`).eq(idx - 1);
                    row.find('td:first .discount-badge').remove();
                    row.find('td:first').append(
                        `<span class="discount-badge badge bg-danger ms-1">${percent}% OFF</span>`
                    );
                });

                $('#itemDiscountModal').modal('hide');
                updateDiscountInfo();
                updateTotals();
            });

            $(document).on('click', '#discountInfo', function() {
                $(`#${currentDiscount.type.toLowerCase()}DiscountOption`).click();
            });

            // ✅ UPDATED — row select/deselect now delegates all Free/Unfree button
            // state to updateFreeUnfreeButtonState() instead of inline logic.
            $(document).on('click', '#orderBody tr', function(e) {
                if ($(e.target).closest('.removeItem,.incrementRow,.decrementRow,.voidyn,.description-cell')
                    .length) return;
                if ($(this).hasClass('selected-for-free')) {
                    $(this).removeClass('selected-for-free');
                    selectedItemRow = null;
                } else {
                    $('#orderBody tr').removeClass('selected-for-free');
                    $(this).addClass('selected-for-free');
                    selectedItemRow = $(this);
                }
                updateFreeUnfreeButtonState();
            });

            // ✅ UPDATED — refreshes button state right after marking free.
            $('#freeBtn').on('click', function() {
                if (!selectedItemRow) return;
                let rateInput = selectedItemRow.find('.rateclass');
                Swal.fire({
                    title: 'Mark Item as Free?',
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes'
                }).then(r => {
                    if (r.isConfirmed) {
                        rateInput.data('original-rate', parseFloat(rateInput.val()));
                        rateInput.val('0.00');
                        selectedItemRow.removeClass('selected-for-free').addClass('free-item');
                        updateTotals();
                        updateFreeUnfreeButtonState();
                    }
                });
            });

            // ✅ UPDATED — refreshes button state right after restoring the rate.
            $('#unfreeBtn').on('click', function() {
                if (!selectedItemRow) return;
                let rateInput = selectedItemRow.find('.rateclass');
                let original = rateInput.data('original-rate') || 0;
                rateInput.val(parseFloat(original).toFixed(2));
                selectedItemRow.removeClass('free-item selected-for-free');
                updateTotals();
                updateFreeUnfreeButtonState();
            });

            $('#btnDeleteBill').on('click', function() {
                let docid = $('#sale1docid').val();
                if (!docid) {
                    notify('error', 'Service Desk', 'No bill loaded');
                    return;
                }
                Swal.fire({
                    icon: 'info',
                    title: 'Are you sure?',
                    input: 'text',
                    inputPlaceholder: 'Reason',
                    text: 'Enter the reason for deleting:',
                    showCancelButton: true,
                    confirmButtonText: 'Delete'
                }).then(r => {
                    if (r.isConfirmed && r.value) {
                        $.ajax({
                            url: '/updatedelflagxhr',
                            method: 'POST',
                            data: {
                                docid: docid,
                                reason: r.value,
                                _token: token
                            },
                            success: function(msg) {
                                notify('success', 'Service Desk', msg);
                                setTimeout(() => resetOrderForm(), 1500);
                            }
                        });
                    }
                });
            });

            $(document).on('input', '#redeemamount', function() {});
            $('#applyRewardBtn').on('click', function() {
                let amount = parseFloat($('#redeemamount').val()) || 0;
                let availableValue = parseFloat($('#redeemamount').data('max-value')) || 0;
                let availablePoint = parseFloat($('#availablepoint').text()) || 0;
                if (amount <= 0) {
                    notify('error', 'Reward', 'Enter a valid amount to redeem');
                    return;
                }
                if (amount > availableValue) {
                    notify('error', 'Reward', 'Amount exceeds available value');
                    return;
                }
                let pointValue = availablePoint > 0 ? (availableValue / availablePoint) : 0;
                let pointsUsed = pointValue > 0 ? Math.round(amount / pointValue) : 0;

                $('#redemptionamount').val(amount.toFixed(2));
                $('#rewardvalueused').val(amount.toFixed(2));
                $('#rewardpointused').val(pointsUsed);
                $('#rewardModal').modal('hide');
                calculatetaxes();
            });

            $('#rewardModal').on('show.bs.modal', function() {
                let phone = $('#phoneno').val();
                if (!phone) {
                    $('#availablepoint').text('0');
                    $('#redeemamount').val('').data('max-value', 0);
                    notify('warning', 'Reward', 'Please add Customer phone number first');
                    return;
                }
                $.ajax({
                    url: '/checkcustomerreward',
                    method: 'POST',
                    data: {
                        mobileno: phone,
                        restcode: $('#restcode').val(),
                        _token: token
                    },
                    success: function(res) {
                        if (res && res.success) {
                            $('#availablepoint').text(res.availablepoint || 0);
                            $('#redeemamount').data('max-value', res.availablevalue || 0);
                        } else {
                            $('#availablepoint').text('0');
                            $('#redeemamount').data('max-value', 0);
                        }
                    },
                    error: function() {
                        $('#availablepoint').text('0');
                        $('#redeemamount').data('max-value', 0);
                    }
                });
            });

            function handleHappyHourLogic(itemcode, happyhour) {
                if (!happyhour) return;
                let freeItemCode = happyhour.freeitemcode || happyhour.item;
                let freeItemName = happyhour.freeitemname || happyhour.Name;
                let freeItemRestcode = happyhour.restcode || $('#restcode').val();
                if (!freeItemCode) return;

                let alreadyAdded = $('#orderBody tr').filter(function() {
                    return String($(this).find('input[name^="itemcode"]').val()) === String(
                        freeItemCode);
                }).length > 0;
                if (alreadyAdded) return;

                addOrderItem(freeItemCode, 0, freeItemRestcode, freeItemName, 1, 'Happy Hour Free Item');
            }

            function ncpreviouskot() {
                $.ajax({
                    url: '/fetchncpreviouskot',
                    method: 'POST',
                    data: {
                        dcode: $('#restcode').val(),
                        _token: token
                    },
                    success: function(results) {
                        results = typeof results === 'string' ? JSON.parse(results) : results;
                        if (!results || !results.length) {
                            notify('info', 'Pending NC KOT', 'No pending NC KOT found');
                            return;
                        }
                        resetOrderForm();

                        let firstItem = results[0];
                        $('#olddocidpendingkot').val(firstItem.docid);
                        $('#ncoldyn').val('Y');
                        $('#showNcSelect').prop('checked', true).trigger('change');
                        $('#nctype').val(firstItem.nctype);
                        $('#roomno').val(firstItem.roomno).trigger('change');
                        $('#waiter').val(firstItem.waiter);
                        $('#pax').val(firstItem.pax);
                        $('#kotremark').val(firstItem.remarks);
                        $('#krsno').text(firstItem.vno);


                        results.forEach(function(item) {
                            addOrderItem(item.item, item.rate, item.restcode, item.Name, item
                                .qty,
                                item.description, undefined, undefined, undefined,
                                undefined,
                                undefined, item.docid, item.sno, item.voidyn);
                        });

                        LAST_SAVED_HASH = getOrderHash();
                        notify('success', 'Pending NC KOT', 'NC KOT items loaded');
                    },
                    error: function() {
                        notify('error', 'Pending NC KOT', 'Unable to load NC KOT');
                    }
                });
            }

            $('#btnPendingNcKot').on('click', function() {
                ncpreviouskot();
            });

            $('#btnMerge').on('click', function() {
                currentMergeTable = $('#roomno').val();
                let currentTable = currentMergeTable;
                if (!currentTable) {
                    notify('error', 'Merge Table', 'Please select the current table first');
                    return;
                }
                $('#mergeCurrentTable').text(currentTable);
                let listDiv = $('#mergeTableList');
                listDiv.html('<div class="text-muted small p-2">Loading...</div>');

                $.ajax({
                    url: '/fetchpendingtables',
                    method: 'POST',
                    data: {
                        dcode: $('#restcode').val(),
                        excluderoomno: currentTable,
                        _token: token
                    },
                    success: function(tables) {
                        listDiv.empty();
                        if (!tables || tables.length === 0) {
                            listDiv.html(
                                '<div class="text-muted small p-2">No other pending tables found.</div>'
                            );
                            return;
                        }
                        tables.forEach(function(t) {
                            listDiv.append(`
                        <label class="list-group-item d-flex align-items-center gap-2" style="cursor:pointer;">
                            <input type="checkbox" class="merge-table-checkbox" value="${t.roomno}">
                            <span>Table ${t.roomno} — ${t.itemcount} item(s), KOT #${t.vno}</span>
                        </label>
                    `);
                        });
                    },
                    error: function() {
                        listDiv.html(
                            '<div class="text-danger small p-2">Unable to load pending tables.</div>'
                        );
                    }
                });

                $('#mergeTableModal').modal('show');
            });

            $('#mergeTableConfirm').on('click', function() {
                let selectedTables = [];
                $('.merge-table-checkbox:checked').each(function() {
                    selectedTables.push($(this).val());
                });
                if (selectedTables.length === 0) {
                    notify('warning', 'Merge Table', 'Select at least one table to merge');
                    return;
                }

                let requests = selectedTables.map(function(roomno) {
                    return $.ajax({
                        url: '/mergetableitems',
                        method: 'POST',
                        data: {
                            dcode: $('#restcode').val(),
                            roomno: roomno,
                            targetroomno: currentMergeTable,
                            _token: token
                        }
                    });
                });

                $.when.apply($, requests).always(function() {
                    let responses = requests.length === 1 ? [arguments[0]] : arguments;
                    let mergedCount = 0;
                    Array.from(responses).forEach(function(res) {
                        let items = Array.isArray(res) ? res[0] : res;
                        if (!items || !items.length) return;
                        items.forEach(function(item) {
                            addOrderItem(item.itemcode, item.rate, item
                                .itemrestcode, item.itemname,
                                item.quantity, item.description || '',
                                item.tax_rate, item.tax_code, item.discapp, item
                                .schrgapp,
                                item.rateinctax, item.docid, undefined, item
                                .voidyn || 'N');
                            if (!mergedKotDocids.includes(item.docid)) {
                                mergedKotDocids.push(item.docid);
                            }
                        });
                        mergedCount++;
                    });

                    if (!$('#olddocidpendingkot').val() && mergedKotDocids.length) {
                        $('#olddocidpendingkot').val(mergedKotDocids[0]);
                    }

                    $('#mergeTableModal').modal('hide');
                    notify('success', 'Merge Table', mergedCount +
                        ' table(s) merged into current bill');
                });
            });

            $('#btnSplit').on('click', function() {
                if (!billMode) {
                    notify('error', 'Split Bill',
                        'Split Bill is only available during Bill review. Click Bill first to load the table.'
                    );
                    return;
                }
                if ($('#orderBody tr').length === 0) {
                    notify('error', 'Split Bill', 'No items to split');
                    return;
                }
                let listDiv = $('#splitItemList');
                listDiv.empty();
                $('#orderBody tr').each(function() {
                    let itemname = $(this).find('input[name^="itemname"]').val();
                    let qty = $(this).find('.qtyitem').val();
                    let idx = $(this).find('input[name^="itemcode"]').attr('name').replace(
                        'itemcode', '');
                    listDiv.append(`
                <label class="list-group-item d-flex align-items-center gap-2" style="cursor:pointer;">
                    <input type="checkbox" class="split-item-checkbox" data-row-idx="${idx}">
                    <span>${itemname} (Qty: ${qty})</span>
                </label>
            `);
                });
                $('#splitBillModal').modal('show');
            });

            $('#splitBillConfirm').on('click', function() {
                let selectedIdxs = [];
                $('.split-item-checkbox:checked').each(function() {
                    selectedIdxs.push($(this).data('row-idx').toString());
                });
                if (selectedIdxs.length === 0) {
                    notify('warning', 'Split Bill', 'Select at least one item to split');
                    return;
                }
                if (!$('#roomno').val() || !$('#waiter').val()) {
                    notify('error', 'Split Bill', 'Please select Table/Room & Waiter first');
                    return;
                }

                $('#splitBillConfirm').prop('disabled', true).text('Processing...');

                let splitItems = [];
                let rowsToRemove = [];
                let splitDocids = [];
                let remainingDocids = [];
                $('#orderBody tr').each(function() {
                    let idxAttr = $(this).find('input[name^="itemcode"]').attr('name');
                    if (!idxAttr) return;
                    let idx = idxAttr.replace('itemcode', '');
                    let existingDocid = $(`#kotdocidrow${idx}`).val();
                    if (selectedIdxs.includes(idx)) {
                        if (existingDocid) splitDocids.push(existingDocid);
                        splitItems.push({
                            itemcode: $(this).find('input[name^="itemcode"]').val(),
                            itemrestcode: $(this).find('input[name^="itemrestcode"]').val(),
                            itemname: $(this).find('input[name^="itemname"]').val(),
                            description: $(this).find('input[name^="description"]').val(),
                            quantity: $(this).find('.qtyitem').val(),
                            rate: $(this).find('.rateclass').val(),
                            amount: $(this).find('.amount-cell').text()
                        });
                        rowsToRemove.push($(this));
                    } else if (existingDocid) {
                        remainingDocids.push(existingDocid);
                    }
                });

                let restcode = $('#restcode').val();
                let splitFormData = {
                    _token: token,
                    fixrestcode: restcode,
                    restcode: restcode,
                    shortname: $('#shortname').val(),
                    olddocidpendingkot: '',
                    nckotreason: '',
                    editingreasons: '',
                    ncurdate: $('#ncurdate').val(),
                    roomno: $('#roomno').val(),
                    pax: $('#pax').val(),
                    waiter: $('#waiter').val(),
                    kotremark: $('#kotremark').val() + ' (Split Bill)',
                    totalitems: splitItems.length
                };
                splitItems.forEach(function(item, i) {
                    let idx = i + 1;
                    splitFormData['itemcode' + idx] = item.itemcode;
                    splitFormData['itemrestcode' + idx] = item.itemrestcode;
                    splitFormData['itemname' + idx] = item.itemname;
                    splitFormData['description' + idx] = item.description;
                    splitFormData['quantity' + idx] = item.quantity;
                    splitFormData['rate' + idx] = item.rate;
                    splitFormData['voidyn' + idx] = 'N';
                });

                $.ajax({
                    type: 'POST',
                    url: '/kotstore',
                    data: splitFormData,
                    success: function(kotResponse) {
                        if (kotResponse.status !== 'success') {
                            $('#splitBillConfirm').prop('disabled', false).text(
                                'Create Split Bill');
                            notify('error', 'Split Bill', kotResponse.message);
                            return;
                        }
                        let kotdocid = Array.isArray(kotResponse.docid) ? kotResponse.docid
                            .join(',') :
                            kotResponse.docid;
                        let grossAmount = splitItems.reduce((sum, it) => sum + (parseFloat(it
                                .amount) ||
                            0), 0);

                        let billData = {
                            _token: token,
                            fixrestcode: restcode,
                            restcode: restcode,
                            roomno: $('#roomno').val(),
                            pax: $('#pax').val(),
                            waiter: $('#waiter').val(),
                            waitersname: $('#waiter option:selected').text(),
                            kotdocid: kotdocid,
                            kotdocidfix: kotdocid,
                            kotno: kotResponse.docid,
                            vtype: 'B{{ $shortname }}',
                            vdatesale1: $('#ncurdate').val(),
                            totalitems: splitItems.length,
                            oldroomyn: 'N',
                            totalitemsum: grossAmount.toFixed(2),
                            totalamt: grossAmount.toFixed(2),
                            taxableamt: grossAmount.toFixed(2),
                            netamount: grossAmount.toFixed(2),
                            discountfix: '0.00',
                            discountsundry: '0.00',
                            servicechargefix: '0.00',
                            servicechargeamount: '0.00',
                            cgstamount: '0.00',
                            sgstamount: '0.00',
                            igstamt: '0.00',
                            roundoffamount: '0',
                            sundrycount: 0,
                        };
                        billData[restcode + 'discountfix'] = '0.00';
                        billData[restcode + 'discountsundry'] = '0.00';
                        billData[restcode + 'servicechargefix'] = '0.00';
                        billData[restcode + 'servicechargeamount'] = '0.00';
                        billData[restcode + 'cgstamount'] = '0.00';
                        billData[restcode + 'sgstamount'] = '0.00';
                        billData[restcode + 'igstamount'] = '0.00';
                        billData[restcode + 'roundoffamount'] = '0.00';
                        billData[restcode + 'netamount'] = grossAmount.toFixed(2);
                        billData[restcode + 'totalamountoutlet'] = grossAmount.toFixed(2);
                        billData[restcode + 'totaltaxable'] = grossAmount.toFixed(2);
                        billData[restcode + 'totalnontaxable'] = '0.00';
                        billData[restcode + 'sundrycount'] = 0;

                        splitItems.forEach(function(item, i) {
                            let idx = i + 1;
                            billData['itemcode' + idx] = item.itemcode;
                            billData['itemrestcode' + idx] = item.itemrestcode;
                            billData['itemname' + idx] = item.itemname;
                            billData['description' + idx] = item.description;
                            billData['quantity' + idx] = item.quantity;
                            billData['rate' + idx] = item.rate;
                            billData['amount' + idx] = item.amount;
                            billData['voidyn' + idx] = 'N';
                        });

                        $.ajax({
                            type: 'POST',
                            url: '{{ route('salebillsubmit') }}',
                            dataType: 'json',
                            data: billData,
                            success: function() {
                                rowsToRemove.forEach(function($row) {
                                    $row.remove();
                                });
                                updateTotals();
                                let safeToMarkSplit = [...new Set(splitDocids)]
                                    .filter(d => !remainingDocids.includes(d));
                                if (safeToMarkSplit.length) {
                                    $.ajax({
                                        url: '/markkotsplit',
                                        method: 'POST',
                                        data: {
                                            docids: safeToMarkSplit.join(
                                                ','),
                                            _token: token
                                        }
                                    });
                                }
                                $('#splitBillConfirm').prop('disabled', false).text(
                                    'Create Split Bill');
                                $('#splitBillModal').modal('hide');
                                notify('success', 'Split Bill',
                                    'Split bill created successfully!');
                            },
                            error: function() {
                                $('#splitBillConfirm').prop('disabled', false).text(
                                    'Create Split Bill');
                                notify('error', 'Split Bill',
                                    'Split bill submit failed');
                            }
                        });
                    },
                    error: function() {
                        $('#splitBillConfirm').prop('disabled', false).text(
                            'Create Split Bill');
                        notify('error', 'Split Bill', 'Unable to save split KOT');
                    }
                });
            });

            $(document).on('click', '.description-cell', function() {
                let idx = $(this).data('idx');
                let input = $(`#description${idx}`);
                let currentVal = input.val();
                let cell = $(this);

                Swal.fire({
                    title: 'Enter Description',
                    input: 'text',
                    inputValue: currentVal,
                    inputPlaceholder: 'Enter your value here',
                    showCancelButton: true,
                    showDenyButton: true,
                    confirmButtonText: 'OK',
                    denyButtonText: 'Clear',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) {
                        input.val(result.value);
                        cell.text(result.value ? result.value : '+ Note');
                    } else if (result.isDenied) {
                        input.val('');
                        cell.text('+ Note');
                    }
                });
            });

            $(document).on('change input', '.qtyitem', updateTotals);

            $(document).on('click', '.removeItem', function() {
                $(this).closest('tr').remove();
                reindexRows();
                updateTotals();
            });

            function reindexRows() {
                let idx = 0;
                $('#orderBody tr').each(function() {
                    idx++;
                    $(this).find('.description-cell').data('idx', idx);
                    $(this).find('input, select').each(function() {
                        let name = $(this).attr('name');
                        let id = $(this).attr('id');
                        if (name) $(this).attr('name', name.replace(/\d+$/, idx));
                        if (id) $(this).attr('id', id.replace(/\d+$/, idx));
                    });
                });
                totaladditems = idx;
                $('#totalitems').val(totaladditems);
            }

            let SUNDRY_TYPES = JSON.parse($('#sundrytypeData').val() || '[]');

            function calculatetaxes() {
                let discountfix = parseFloat($('#discountfix').val()) || 0;
                let servicefix = parseFloat($('#servicechargefix').val()) || 0;
                let total = 0,
                    discountableTotal = 0,
                    taxable = 0,
                    serviceableAmt = 0;
                let taxGroups = {};

                $('#orderBody tr').each(function() {
                    let idxAttr = $(this).find('input[name^="itemcode"]').attr('name');
                    if (!idxAttr) return;
                    let idx = idxAttr.replace('itemcode', '');
                    if ($(this).find('.voidyn').val() === 'Y') return;

                    let qty = parseFloat($(this).find('.qtyitem').val()) || 0;
                    let rate = parseFloat($(this).find('.rateclass').val()) || 0;
                    let rateinctax = $(`#RateIncTax${idx}`).val();
                    let taxrate = parseFloat($(`#tax_rate${idx}`).val()) || 0;
                    let taxcode = $(`#tax_code${idx}`).val() || '';
                    let discapp = $(`#discapp${idx}`).val() || 'N';
                    let schrgapp = $(`#SChrgApp${idx}`).val() || 'N';

                    let grossamt = qty * rate;
                    let fixamount = rateinctax === 'Y' ? (grossamt * 100) / (100 + taxrate) : grossamt;
                    $(`#fixamount${idx}`).val(fixamount.toFixed(2));
                    $(`#taxedrate${idx}`).val(qty > 0 ? (fixamount / qty).toFixed(2) : rate.toFixed(2));

                    let discedamount = fixamount;
                    if (discapp === 'Y') {
                        discountableTotal += fixamount;
                        discedamount = fixamount - (fixamount * discountfix / 100);
                    }

                    total += fixamount;
                    if (taxrate > 0) taxable += fixamount;
                    if (schrgapp === 'Y') serviceableAmt += discedamount;

                    if (taxrate > 0 && taxcode) {
                        if (!taxGroups[taxcode]) taxGroups[taxcode] = {
                            rate: taxrate,
                            amount: 0
                        };
                        taxGroups[taxcode].amount += discedamount;
                    }
                });

                let discountsundry = (discountableTotal * discountfix) / 100;
                let serviceamt = (serviceableAmt > 0 && servicefix > 0) ? (serviceableAmt * servicefix) / 100 :
                    0;

                let cgst = 0,
                    sgst = 0,
                    igst = 0,
                    vat = 0;
                for (const code in taxGroups) {
                    let info = taxGroups[code];
                    let taxvalue = (info.amount * info.rate) / 100;
                    if (code.toUpperCase().includes('IGST')) {
                        igst += taxvalue;
                    } else if (code.toUpperCase().includes('VAAT') || code.toUpperCase().includes('VAT')) {
                        vat += taxvalue;
                    } else {
                        cgst += taxvalue / 2;
                        sgst += taxvalue / 2;
                    }
                }

                let additionamount = parseFloat($('#additionamount').val()) || 0;
                let deductionamount = parseFloat($('#deductionamount').val()) || 0;
                let redemptionamount = parseFloat($('#redemptionamount').val()) || 0;

                let afterDiscount = total - discountsundry;
                let netbeforeround = afterDiscount + cgst + sgst + igst + vat + serviceamt +
                    additionamount - deductionamount - redemptionamount;

                let rounded = Math.round(netbeforeround);
                let roundoff = parseFloat((rounded - netbeforeround).toFixed(2));

                $('#discountsundry').val(discountsundry.toFixed(2));
                $('#servicechargeamount').val(serviceamt.toFixed(2));
                $('#cgstamount').val(cgst.toFixed(2));
                $('#sgstamount').val(sgst.toFixed(2));
                $('#igstamt').val(igst.toFixed(2));
                $('#vatamount').val(vat.toFixed(2));
                $('#roundoffamount').val(roundoff.toFixed(2));
                $('#taxableamt').val(taxable.toFixed(2));
                $('#totalamt').val(total.toFixed(2));
                $('#netamount').val(rounded.toFixed(2));

                $('#grossAmount').text(total.toFixed(2));
                $('#cgstDisplay').text(cgst.toFixed(2));
                $('#sgstDisplay').text(sgst.toFixed(2));
                $('#igstDisplay').text(igst.toFixed(2));
                $('#vatDisplay').text(vat.toFixed(2));
                $('#roundoffDisplay').text(roundoff.toFixed(2));
                $('#netAmount').text(rounded.toFixed(2));

                renderDynamicTaxRows(cgst, sgst, igst, vat);
            }

            function computeGroupTotals($rows, discountfix, servicefix) {
                let total = 0,
                    discountableTotal = 0,
                    taxable = 0,
                    serviceableAmt = 0;
                let taxGroups = {};

                $rows.each(function() {
                    let idxAttr = $(this).find('input[name^="itemcode"]').attr('name');
                    if (!idxAttr) return;
                    let idx = idxAttr.replace('itemcode', '');
                    if ($(this).find('.voidyn').val() === 'Y') return;

                    let qty = parseFloat($(this).find('.qtyitem').val()) || 0;
                    let rate = parseFloat($(this).find('.rateclass').val()) || 0;
                    let rateinctax = $(`#RateIncTax${idx}`).val();
                    let taxrate = parseFloat($(`#tax_rate${idx}`).val()) || 0;
                    let taxcode = $(`#tax_code${idx}`).val() || '';
                    let discapp = $(`#discapp${idx}`).val() || 'N';
                    let schrgapp = $(`#SChrgApp${idx}`).val() || 'N';

                    let grossamt = qty * rate;
                    let fixamount = rateinctax === 'Y' ? (grossamt * 100) / (100 + taxrate) : grossamt;

                    let discedamount = fixamount;
                    if (discapp === 'Y') {
                        discountableTotal += fixamount;
                        discedamount = fixamount - (fixamount * discountfix / 100);
                    }

                    total += fixamount;
                    if (taxrate > 0) taxable += fixamount;
                    if (schrgapp === 'Y') serviceableAmt += discedamount;

                    if (taxrate > 0 && taxcode) {
                        if (!taxGroups[taxcode]) taxGroups[taxcode] = {
                            rate: taxrate,
                            amount: 0
                        };
                        taxGroups[taxcode].amount += discedamount;
                    }
                });

                let discountsundry = (discountableTotal * discountfix) / 100;
                let serviceamt = (serviceableAmt > 0 && servicefix > 0) ? (serviceableAmt * servicefix) / 100 : 0;

                let cgst = 0,
                    sgst = 0,
                    igst = 0,
                    vat = 0;
                for (const code in taxGroups) {
                    let info = taxGroups[code];
                    let taxvalue = (info.amount * info.rate) / 100;
                    if (code.toUpperCase().includes('IGST')) {
                        igst += taxvalue;
                    } else if (code.toUpperCase().includes('VAAT') || code.toUpperCase().includes('VAT')) {
                        vat += taxvalue;
                    } else {
                        cgst += taxvalue / 2;
                        sgst += taxvalue / 2;
                    }
                }

                let additionamount = parseFloat($('#additionamount').val()) || 0;
                let deductionamount = parseFloat($('#deductionamount').val()) || 0;
                let redemptionamount = parseFloat($('#redemptionamount').val()) || 0;

                let afterDiscount = total - discountsundry;
                let netbeforeround = afterDiscount + cgst + sgst + igst + vat + serviceamt +
                    additionamount - deductionamount - redemptionamount;

                let rounded = Math.round(netbeforeround);
                let roundoff = parseFloat((rounded - netbeforeround).toFixed(2));

                return {
                    totalamt: total.toFixed(2),
                    taxableamt: taxable.toFixed(2),
                    discountsundry: discountsundry.toFixed(2),
                    servicechargeamount: serviceamt.toFixed(2),
                    cgstamount: cgst.toFixed(2),
                    sgstamount: sgst.toFixed(2),
                    igstamount: igst.toFixed(2),
                    vatamount: vat.toFixed(2),
                    roundoffamount: roundoff.toFixed(2),
                    netamount: rounded.toFixed(2),
                    totalnontaxable: (total - taxable).toFixed(2)
                };
            }

            function renderDynamicTaxRows(cgst, sgst, igst, vat) {
                let hasIGST = SUNDRY_TYPES.some(s => (s.nature || '').toLowerCase() === 'igst' || (s
                    .disp_name || '').toUpperCase().includes('IGST'));
                let hasVAT = SUNDRY_TYPES.some(s => (s.nature || '').toLowerCase() === 'sale tax' || (s
                    .disp_name || '').toUpperCase().includes('VAT'));
                let hasDeduction = SUNDRY_TYPES.some(s => (s.disp_name || '').toLowerCase() === 'deduction');
                let hasAddition = SUNDRY_TYPES.some(s => (s.disp_name || '').toLowerCase() === 'addition');
                let hasRedemption = SUNDRY_TYPES.some(s => (s.disp_name || '').toLowerCase() === 'redemption');

                $('#igstRow').toggleClass('d-none', !hasIGST);
                $('#vatRow').toggleClass('d-none', !hasVAT);
                $('#deductionRow').toggleClass('d-none', !hasDeduction);
                $('#additionRow').toggleClass('d-none', !hasAddition);
                $('#redemptionRow').toggleClass('d-none', !hasRedemption);
            }

            function updateTotals() {
                let totalQty = 0;
                $('#orderBody tr').each(function() {
                    let qty = parseFloat($(this).find('.qtyitem').val()) || 0;
                    let rate = parseFloat($(this).find('.rateclass').val()) || 0;
                    let isVoid = $(this).find('.voidyn').val() === 'Y';
                    let amt = qty * rate;
                    $(this).find('.amount-cell').text(amt.toFixed(2));
                    if (!isVoid) {
                        totalQty += qty;
                    }
                });
                $('#totalQty').text(totalQty.toFixed(2));
                calculatetaxes();
            }

            // ✅ UPDATED — Free/Unfree reset now goes through updateFreeUnfreeButtonState()
            // instead of manually poking disabled/hide, so it stays in sync with the same
            // rule used everywhere else.
            function resetOrderForm() {
                $('#orderBody').empty();
                totaladditems = 0;
                mergedKotDocids = [];
                lastBillPrintData = null;
                LAST_SAVED_HASH = null;
                currentDiscount = {
                    type: '',
                    percent: 0,
                    items: []
                };
                updateDiscountInfo();
                selectedItemRow = null;
                updateFreeUnfreeButtonState();
                $('#sale1docid').val('');
                $('#vprefix').val('');
                $('#oldroomyn').val('N');
                $('#oldroomno').val('');
                $('#btnDeleteBill').prop('disabled', true);
                $('#totalitems').val(0);
                $('#olddocidpendingkot').val('');
                $('#nckotreason').val('');
                $('#editingreasons').val('');
                $('#phoneno, #customername, #address, #customercity, #like, #dislike, #birthdate, #anniversary')
                    .val('');
                $('#modal_phoneno, #modal_customername, #modal_address, #modal_customercity, #modal_like, #modal_dislike, #modal_birthdate, #modal_anniversary')
                    .val('');
                $('#customerSummary').text('');
                $('#availablepoint').text('0');
                $('#redeemamount').val('');
                $('#company').val('');
                $('#compgst').text('');
                $('#guestdt').text('');
                $('#showNcSelect').prop('checked', false).trigger('change');
                $('#kotremark').val('');
                $('#pax').val(1);
                $('#waiter').val('');
                $('#roomno').val('');
                $('#discountfix').val('0.00');
                $('#kotnolabel').text('KOT No.');
                $('#billSuccessPanel').addClass('d-none');
                $('#currentOrderTitle').text('CURRENT ORDER');
                $('#orderBody :input').prop('disabled', false);
                $('#redemptionamount, #rewardpointused, #rewardvalueused').val('0');

                // ✅ Leaving any prior saved-KOT/old-bill edit context — item adding unlocked again.
                pendingKotEditMode = false;
                setItemAddLock(false);

                unlockFromBillReview();

                updateTotals();
            }

            const HOLD_STORAGE_KEY = 'posHeldOrders';

            function getHeldOrders() {
                try {
                    return JSON.parse(localStorage.getItem(HOLD_STORAGE_KEY)) || [];
                } catch (e) {
                    return [];
                }
            }

            function saveHeldOrders(orders) {
                localStorage.setItem(HOLD_STORAGE_KEY, JSON.stringify(orders));
            }

            function updateHoldRecallBadge() {
                let held = getHeldOrders();
                if (held.length > 0) {
                    $('#recallCount').text(held.length).show();
                } else {
                    $('#recallCount').hide();
                }
            }
            updateHoldRecallBadge();

            $('#btnHold').on('click', function() {
                if ($('#orderBody tr').length === 0) {
                    notify('error', 'Hold Order', 'No items to hold');
                    return;
                }
                if (!$('#roomno').val()) {
                    notify('error', 'Hold Order', 'Please select Table/Room first');
                    return;
                }

                let items = [];
                $('#orderBody tr').each(function() {
                    let idxAttr = $(this).find('input[name^="itemcode"]').attr('name');
                    let idx = idxAttr ? idxAttr.replace('itemcode', '') : '';
                    items.push({
                        itemcode: $(this).find('input[name^="itemcode"]').val(),
                        itemrestcode: $(this).find('input[name^="itemrestcode"]').val(),
                        itemname: $(this).find('input[name^="itemname"]').val(),
                        description: $(this).find('input[name^="description"]').val(),
                        quantity: $(this).find('.qtyitem').val(),
                        rate: $(this).find('.rateclass').val(),
                        taxrate: idx ? $(`#tax_rate${idx}`).val() : 0,
                        taxcode: idx ? $(`#tax_code${idx}`).val() : '',
                        discapp: idx ? $(`#discapp${idx}`).val() : 'N',
                        schrgapp: idx ? $(`#SChrgApp${idx}`).val() : 'N',
                        rateinctax: idx ? $(`#RateIncTax${idx}`).val() : 'N',
                        kotdocid: idx ? $(`#kotdocidrow${idx}`).val() : '',
                        kotsno: idx ? $(`#kotsno${idx}`).val() : '',
                        voidyn: $(this).find('.voidyn').val() || 'N',
                        groupname: $(this).data('groupname') || '',
                        groupcode: $(this).data('groupcode') || ''
                    });
                });

                let heldOrder = {
                    id: Date.now(),
                    dcode: $('#restcode').val(),
                    outletName: $('#outlet_id option:selected').text(),
                    roomno: $('#roomno').val(),
                    tableLabel: $('#tablelabel').text(),
                    pax: $('#pax').val(),
                    waiter: $('#waiter').val(),
                    kotremark: $('#kotremark').val(),
                    orderType: $('#ordertype').val(),
                    phoneno: $('#phoneno').val(),
                    customername: $('#customername').val(),
                    address: $('#address').val(),
                    customercity: $('#customercity').val(),
                    like: $('#like').val(),
                    dislike: $('#dislike').val(),
                    birthdate: $('#birthdate').val(),
                    anniversary: $('#anniversary').val(),
                    customerSummary: $('#customerSummary').text(),
                    company: $('#company').val(),
                    nctypecheckbox: $('#showNcSelect').is(':checked'),
                    nctype: $('#nctype').val(),
                    items: items,
                    heldAt: new Date().toLocaleString(),
                    // ✅ extra context so a held Bill / saved-KOT edit restores correctly on Recall
                    billMode: billMode,
                    pendingKotEditMode: pendingKotEditMode,
                    oldroomyn: $('#oldroomyn').val(),
                    sale1docid: $('#sale1docid').val(),
                    vprefix: $('#vprefix').val(),
                    olddocidpendingkot: $('#olddocidpendingkot').val(),
                    mergedKotDocids: mergedKotDocids.slice(),
                    krsno: $('#krsno').text(),
                    kotnolabel: $('#kotnolabel').text()
                };

                let held = getHeldOrders();
                held.push(heldOrder);
                saveHeldOrders(held);
                updateHoldRecallBadge();

                resetOrderForm();
                notify('success', 'Hold Order', 'Order held for Table ' + heldOrder.roomno);
            });

            $('#btnRecall').on('click', function() {
                let held = getHeldOrders();
                let listDiv = $('#recallOrderList');
                listDiv.empty();
                if (held.length === 0) {
                    listDiv.html('<div class="text-muted small p-2">No held orders.</div>');
                } else {
                    held.forEach(function(order) {
                        // ✅ Distinguish a held Bill (billMode) from a plain held KOT.
                        let badge = order.billMode ?
                            '<span class="badge bg-warning text-dark ms-1">🧾 Bill Hold</span>' :
                            '<span class="badge bg-secondary ms-1">KOT Hold</span>';
                        listDiv.append(`
                    <div class="list-group-item d-flex justify-content-between align-items-center">
                        <div>
                            <strong>${order.outletName}</strong> — ${order.tableLabel} ${order.roomno} ${badge}<br>
                            <span class="small text-muted">${order.items.length} item(s), held at ${order.heldAt}</span>
                        </div>
                        <div class="d-flex gap-1">
                            <button type="button" class="btn btn-sm btn-success recall-order-btn" data-id="${order.id}">Recall</button>
                            <button type="button" class="btn btn-sm btn-outline-danger delete-held-btn" data-id="${order.id}">✕</button>
                        </div>
                    </div>
                `);
                    });
                }
                $('#recallOrderModal').modal('show');
            });

            $(document).on('click', '.delete-held-btn', function() {
                let id = parseInt($(this).data('id'));
                let held = getHeldOrders().filter(o => o.id !== id);
                saveHeldOrders(held);
                updateHoldRecallBadge();
                $(this).closest('.list-group-item').remove();
            });

            $(document).on('click', '.recall-order-btn', function() {
                let id = parseInt($(this).data('id'));
                let held = getHeldOrders();
                let order = held.find(o => o.id === id);
                if (!order) return;

                function restoreOrder() {
                    resetOrderForm();
                    $('#roomno').val(order.roomno);
                    $('#pax').val(order.pax);
                    $('#waiter').val(order.waiter);
                    $('#kotremark').val(order.kotremark);
                    if (order.orderType) $('#ordertype').val(order.orderType);
                    $('#phoneno').val(order.phoneno);
                    $('#customername').val(order.customername);
                    $('#address').val(order.address);
                    $('#customercity').val(order.customercity);
                    $('#like').val(order.like);
                    $('#dislike').val(order.dislike);
                    $('#birthdate').val(order.birthdate);
                    $('#anniversary').val(order.anniversary);
                    $('#customerSummary').text(order.customerSummary);
                    $('#company').val(order.company);
                    if (order.nctypecheckbox) {
                        $('#showNcSelect').prop('checked', true).trigger('change');
                        $('#nctype').val(order.nctype);
                    }
                    order.items.forEach(function(item) {
                        addOrderItem(item.itemcode, item.rate, item.itemrestcode, item.itemname,
                            item.quantity, item.description, item.taxrate, item.taxcode,
                            item.discapp, item.schrgapp, item.rateinctax, item.kotdocid,
                            item.kotsno, item.voidyn || 'N', item.groupname, item.groupcode);
                    });

                    // ✅ restore bill / saved-KOT-edit context if the held order was mid-billing
                    if (order.sale1docid) $('#sale1docid').val(order.sale1docid);
                    if (order.vprefix) $('#vprefix').val(order.vprefix);
                    if (order.oldroomyn) $('#oldroomyn').val(order.oldroomyn);
                    if (order.olddocidpendingkot) $('#olddocidpendingkot').val(order.olddocidpendingkot);
                    mergedKotDocids = order.mergedKotDocids || [];
                    if (order.krsno) $('#krsno').text(order.krsno);
                    if (order.kotnolabel) $('#kotnolabel').text(order.kotnolabel);

                    if (order.billMode) {
                        billMode = true;
                        $('#taxDetailsPanel').removeClass('d-none');
                        lockBillReviewUI();
                        updateTotals();
                    }
                    if (order.pendingKotEditMode) {
                        pendingKotEditMode = true;
                        setItemAddLock(true);
                    }

                    let remaining = getHeldOrders().filter(o => o.id !== id);
                    saveHeldOrders(remaining);
                    updateHoldRecallBadge();
                    $('#recallOrderModal').modal('hide');

                    if (order.billMode) {
                        notify('success', 'Recall Order',
                            'Bill recalled for Table ' + order.roomno +
                            ' — continue with Confirm Bill.');
                    } else {
                        notify('success', 'Recall Order', 'Order recalled for Table ' + order
                            .roomno);
                    }
                }

                if (order.dcode !== $('#restcode').val()) {
                    $('#outlet_id').val(order.dcode).trigger('change');
                    setTimeout(restoreOrder, 900);
                } else {
                    restoreOrder();
                }
            });

            $('#btnPendingKot').on('click', function() {
                if (billMode) {
                    notify('error', 'Pending KOT', 'Cannot view Pending KOT while Bill review is active.');
                    return;
                }
                let listDiv = $('#pendingKotList');
                listDiv.html('<div class="text-muted small p-2">Loading...</div>');

                $.ajax({
                    url: '/fetchpendingkot',
                    method: 'POST',
                    data: {
                        dcode: $('#restcode').val(),
                        _token: token
                    },
                    success: function(results) {
                        results = typeof results === 'string' ? JSON.parse(results) : results;
                        let grouped = {};
                        results.forEach(function(r) {
                            if (!grouped[r.vno]) grouped[r.vno] = [];
                            grouped[r.vno].push(r);
                        });
                        listDiv.empty();
                        // ✅ newest KOT (highest vno) shows first in the list.
                        let vnos = Object.keys(grouped).sort(function(a, b) {
                            return parseFloat(b) - parseFloat(a);
                        });
                        if (!vnos.length) {
                            listDiv.html(
                                '<div class="text-muted small p-2">No pending KOT found.</div>'
                            );
                            return;
                        }
                        vnos.forEach(function(vno) {
                            let rows = grouped[vno];
                            let first = rows[0];
                            listDiv.append(`
                        <button type="button" class="list-group-item list-group-item-action pendingkot-row"
                            data-vno="${vno}" data-docid="${first.docid}" data-roomno="${first.roomno}">
                            KOT #${vno} — Table ${first.roomno} — Waiter: ${first.waiterbhai ?? ''} — ${rows.length} item(s)
                        </button>`);
                        });
                    },
                    error: function() {
                        listDiv.html(
                            '<div class="text-danger small p-2">Unable to load pending KOT.</div>'
                        );
                    }
                });

                $('#pendingKotModal').modal('show');
            });

            $(document).on('click', '.pendingkot-row', function() {
                let docid = $(this).data('docid');
                let roomno = $(this).data('roomno');
                let vno = $(this).data('vno');

                $.ajax({
                    url: '/fetchitemdetailsbbyvno',
                    method: 'POST',
                    data: {
                        docid: docid,
                        _token: token
                    },
                    success: function(results) {
                        results = typeof results === 'string' ? JSON.parse(results) : results;
                        resetOrderForm();
                        $('#roomno').val(roomno).trigger('change');
                        $('#olddocidpendingkot').val(docid);
                        $('#krsno').text(vno);
                        results.forEach(function(item) {
                            $('#waiter').val(item.waiter);
                            $('#pax').val(item.pax);
                            $('#kotremark').val(item.remarks);
                            addOrderItem(item.item, item.rate, item.restcode, item.Name,
                                item.qty, item.description,
                                undefined, undefined, undefined, undefined,
                                undefined,
                                item.docid, item.sno, item.voidyn || 'N');
                        });
                        $('#pendingKotModal').modal('hide');
                        notify('success', 'Pending KOT', 'KOT #' + vno + ' loaded for editing');
                        LAST_SAVED_HASH = getOrderHash();

                        // ✅ Editing a saved KOT: only Void is allowed, no new items can be added.
                        pendingKotEditMode = true;
                        setItemAddLock(true);
                    },
                    error: function() {
                        notify('error', 'Pending KOT', 'Unable to load KOT items');
                    }
                });
            });

            function doSaveKot() {
                let $allRows = $('#orderBody tr');
                let $newRows = $allRows.filter(function() {
                    let idxAttr = $(this).find('input[name^="itemcode"]').attr('name');
                    if (!idxAttr) return false;
                    let idx = idxAttr.replace('itemcode', '');
                    return !$(`#kotdocidrow${idx}`).val();
                });
                let isPendingEdit = $('#olddocidpendingkot').val() !== '';
                let hasPersistedRows = $newRows.length < $allRows.length;

                if ($newRows.length === 0 && !isPendingEdit) {
                    notify('info', 'Service Desk', 'Items already saved (merged) — nothing new to save.');
                    resetOrderForm();
                    return;
                }

                let hashAtSaveTime = getOrderHash();
                let formData;

                if (!isPendingEdit && hasPersistedRows) {
                    let indexedFields = ['itemcode', 'itemrestcode', 'itemname', 'description',
                        'tax_rate', 'taxrate_sum', 'tax_code', 'discapp', 'SChrgApp',
                        'RateIncTax', 'fixamount', 'taxedrate'
                    ];
                    let excludePattern = new RegExp(
                        '^(' + indexedFields.join('|') +
                        '|quantity|rate|voidyn|itemnumber|kotdocidrow|kotsno)\\d+$'
                    );
                    let payload = {};
                    $('#servicedeskform').serializeArray().forEach(function(f) {
                        if (!excludePattern.test(f.name)) payload[f.name] = f.value;
                    });
                    $newRows.each(function(i) {
                        let $row = $(this);
                        let origIdx = $row.find('input[name^="itemcode"]').attr('name').replace(
                            'itemcode', '');
                        let newIdx = i + 1;
                        indexedFields.forEach(function(f) {
                            let $el = $row.find(`[name="${f}${origIdx}"]`);
                            payload[f + newIdx] = $el.length ? $el.val() : ($(
                                `#${f}${origIdx}`).val() || '');
                        });
                        payload['quantity' + newIdx] = $row.find('.qtyitem').val();
                        payload['rate' + newIdx] = $row.find('.rateclass').val();
                        payload['voidyn' + newIdx] = $row.find('.voidyn').val();
                    });
                    payload.totalitems = $newRows.length;
                    formData = $.param(payload);
                } else {
                    formData = $('#servicedeskform').serialize();
                }

                $.ajax({
                    type: 'POST',
                    url: '/kotstore',
                    data: formData,
                    success: function(response) {
                        if (response.status === 'success') {
                            LAST_SAVED_HASH = hashAtSaveTime;
                            notify('success', 'Service Desk', response.message);
                            let returnedDocids = Array.isArray(response.docid) ?
                                response.docid : [response.docid];
                            returnedDocids = returnedDocids.filter(Boolean);

                            $('#olddocidpendingkot').val(returnedDocids[0] || '');
                            returnedDocids.forEach(function(d) {
                                if (!mergedKotDocids.includes(d)) mergedKotDocids.push(d);
                            });

                            Swal.fire({
                                icon: 'success',
                                title: 'Service Desk',
                                text: 'Do you want to print KOT',
                                showCancelButton: true,
                                confirmButtonText: 'Yes',
                                cancelButtonText: 'No'
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    let allDocids = [...new Set([...returnedDocids, ...
                                        mergedKotDocids
                                    ])];
                                    const printdata = {
                                        docid: allDocids,
                                        printedit: isPendingEdit ? 'Y' : 'N'
                                    };
                                    fetch('/sendprintdata', {
                                            method: 'POST',
                                            headers: {
                                                'Content-Type': 'application/json',
                                                'X-CSRF-TOKEN': token
                                            },
                                            body: JSON.stringify(printdata)
                                        })
                                        .then(r => r.json())
                                        .then(data => {
                                            notify('success', 'Print', data.message);
                                        })
                                        .finally(() => {
                                            resetOrderForm();
                                        });
                                } else {
                                    resetOrderForm();
                                }
                            });
                        } else {
                            notify('error', 'Service Desk', response.message);
                        }
                    },
                    error: function(xhr) {
                        notify('error', 'Service Desk', 'Something went wrong');
                    }
                });
            }

            $('#btnSave').on('click', function(e) {
                e.preventDefault();
                if (billMode) {
                    notify('error', 'Service Desk',
                        'Cannot save KOT while Bill review is active. Click New KOT to start fresh.');
                    return;
                }
                if ($('#orderBody tr').length === 0) {
                    notify('error', 'Service Desk', 'Please Add At Least 1 Item');
                    return;
                }
                if (!$('#roomno').val() || !$('#waiter').val() || !$('#pax').val()) {
                    notify('error', 'Service Desk', 'Please Fill Table/Waiter/Pax');
                    return;
                }

                if (getOrderHash() === LAST_SAVED_HASH) {
                    notify('info', 'Service Desk', 'No changes to save since last save.');
                    return;
                }

                let isPendingEdit = $('#olddocidpendingkot').val() !== '';
                let isNc = $('#showNcSelect').is(':checked');

                function askEditingReasonThenSave() {
                    Swal.fire({
                        title: 'Editing Reason',
                        input: 'text',
                        icon: 'info',
                        text: 'Please specify reason for editing!',
                        showCancelButton: true,
                        confirmButtonText: 'Submit',
                        inputValidator: (value) => {
                            if (!value) return 'Reason is required';
                        }
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $('#editingreasons').val(result.value);
                            doSaveKot();
                        }
                    });
                }

                if (isNc && $('#nckotreason').val() === '') {
                    Swal.fire({
                        title: 'NC KOT',
                        input: 'text',
                        icon: 'info',
                        text: 'Please specify Reason for NC KOT',
                        showCancelButton: true,
                        confirmButtonText: 'Submit',
                        inputValidator: (value) => {
                            if (!value) return 'Reason is required';
                        }
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $('#nckotreason').val(result.value);
                            isPendingEdit ? askEditingReasonThenSave() : doSaveKot();
                        }
                    });
                } else if (isPendingEdit) {
                    askEditingReasonThenSave();
                } else {
                    doSaveKot();
                }
            });

            $('#btnPrint').on('click', function() {
                if (billMode) {
                    notify('error', 'Service Desk', 'Cannot print KOT while Bill review is active.');
                    return;
                }
                let docid = $('#olddocidpendingkot').val();
                if (!docid) {
                    notify('warning', 'Service Desk', 'Please Save KOT First');
                    return;
                }
                $('#previewKotNo').text($('#krsno').text());
                $('#previewTable').text($('#roomno').val());
                $('#previewWaiter').text($('#waiter option:selected').text());
                let body = $('#previewItemsBody');
                body.empty();
                $('#orderBody tr').each(function() {
                    let itemname = $(this).find('input[name^="itemname"]').val();
                    let qty = $(this).find('.qtyitem').val();
                    let note = $(this).find('input[name^="description"]').val();
                    let voidval = $(this).find('.voidyn').val();
                    body.append(`<tr>
                <td class="text-start">${itemname}</td>
                <td>${qty}</td>
                <td>${note || ''}</td>
                <td>${voidval}</td>
            </tr>`);
                });
                $('#kotPreviewModal').modal('show');
            });

            $('#kotPreviewConfirm').on('click', function() {
                let allDocids = [...new Set([$('#olddocidpendingkot').val(), ...mergedKotDocids]
                    .filter(Boolean))];
                $('#kotPreviewModal').modal('hide');
                fetch('/sendprintdata', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': token
                        },
                        body: JSON.stringify({
                            docid: allDocids,
                            printedit: 'N'
                        })
                    })
                    .then(r => r.json())
                    .then(data => notify('success', 'Print', data.message));
            });

            $('#btnBill').on('click', function(e) {
                e.preventDefault();

                if (!billMode) {
                    if (!$('#roomno').val()) {
                        notify('error', 'Service Desk', 'Please Select Table/Room First');
                        return;
                    }
                    enterBillReviewMode();
                    return;
                }

                if ($('#sale1docid').val()) {
                    notify('info', 'Service Desk',
                        'This bill is already saved. Use Bill Print or Settlement instead.');
                    return;
                }

                if ($('#orderBody tr').length === 0) {
                    notify('error', 'Service Desk', 'Please Add At Least 1 Item');
                    return;
                }
                if (!$('#roomno').val()) {
                    notify('error', 'Service Desk', 'Please Select Table/Room');
                    return;
                }

                $('#btnBill').prop('disabled', true).text('Processing...');
                calculatetaxes();

                let kotdocid = mergedKotDocids.length > 0 ? mergedKotDocids.join(',') : '';

                if (!kotdocid) {
                    $('#btnBill').prop('disabled', false).text('Confirm Bill');
                    notify('error', 'Service Desk',
                        'No pending KOT reference found. Please reload the table.');
                    return;
                }

                let restcode = $('#restcode').val();
                let billData = {
                    _token: token,
                    isajax: 1,
                    fixrestcode: restcode,
                    restcode: restcode,
                    roomno: $('#roomno').val(),
                    pax: $('#pax').val(),
                    waiter: $('#waiter').val(),
                    waitersname: $('#waiter').val() ? $('#waiter option:selected').text() : '',
                    kotdocid: kotdocid,
                    kotdocidfix: kotdocid,
                    kotno: kotdocid,
                    vtype: 'B' + $('#shortname').val(),
                    vdatesale1: $('#ncurdate').val(),
                    totalitems: $('#totalitems').val(),
                    oldroomyn: 'N',
                    company: $('#company').val(),
                    phoneno: $('#phoneno').val(),
                    customername: $('#customername').val(),
                    address: $('#address').val(),
                    customercity: $('#customercity').val(),
                    like: $('#like').val(),
                    dislike: $('#dislike').val(),
                    birthdate: $('#birthdate').val(),
                    anniversary: $('#anniversary').val(),
                    totalitemsum: $('#totalamt').val(),
                    totalamt: $('#totalamt').val(),
                    taxableamt: $('#taxableamt').val(),
                    netamount: $('#netamount').val(),
                    discountfix: $('#discountfix').val(),
                    discountsundry: $('#discountsundry').val(),
                    servicechargefix: $('#servicechargefix').val(),
                    servicechargeamount: $('#servicechargeamount').val(),
                    cgstamount: $('#cgstamount').val(),
                    sgstamount: $('#sgstamount').val(),
                    igstamt: $('#igstamt').val(),
                    roundoffamount: $('#roundoffamount').val(),
                    sundrycount: $('#sundrycount').val(),
                    rewardpointused: $('#rewardpointused').val() || 0,
                    rewardvalueused: $('#rewardvalueused').val() || 0,
                };
                let restGroups = {};
                $('#orderBody tr').each(function() {
                    let idxAttr = $(this).find('input[name^="itemcode"]').attr('name');
                    if (!idxAttr) return;
                    let rowRest = $(this).find('input[name^="itemrestcode"]').val() || restcode;
                    if (!restGroups[rowRest]) restGroups[rowRest] = [];
                    restGroups[rowRest].push(this);
                });

                let discountfixVal = parseFloat($('#discountfix').val()) || 0;
                let servicefixVal = parseFloat($('#servicechargefix').val()) || 0;

                Object.keys(restGroups).forEach(function(rest) {
                    let $rows = $(restGroups[rest]);
                    let g = computeGroupTotals($rows, discountfixVal, servicefixVal);

                    billData[rest + 'vatamount'] = g.vatamount;
                    billData[rest + 'deductionamount'] = $('#deductionamount').val() || '0.00';
                    billData[rest + 'additionamount'] = $('#additionamount').val() || '0.00';
                    billData[rest + 'redemptionamount'] = $('#redemptionamount').val() || '0.00';
                    billData[rest + 'cgstamount'] = g.cgstamount;
                    billData[rest + 'sgstamount'] = g.sgstamount;
                    billData[rest + 'igstamount'] = g.igstamount;
                    billData[rest + 'totaltaxable'] = g.taxableamt;
                    billData[rest + 'totalnontaxable'] = g.totalnontaxable;
                    billData[rest + 'servicechargefix'] = $('#servicechargefix').val() || '0.00';
                    billData[rest + 'servicechargeamount'] = g.servicechargeamount;
                    billData[rest + 'discountfix'] = $('#discountfix').val() || '0.00';
                    billData[rest + 'discountsundry'] = g.discountsundry;
                    billData[rest + 'roundoffamount'] = g.roundoffamount;
                    billData[rest + 'netamount'] = g.netamount;
                    billData[rest + 'totalamountoutlet'] = g.totalamt;
                    billData[rest + 'sundrycount'] = $('#sundrycount').val() || 0;
                });

                let idx = 0;
                $('#orderBody tr').each(function() {
                    idx++;
                    billData['itemcode' + idx] = $(this).find('input[name^="itemcode"]').val();
                    billData['itemrestcode' + idx] = $(this).find('input[name^="itemrestcode"]')
                        .val();
                    billData['itemname' + idx] = $(this).find('input[name^="itemname"]').val();
                    billData['description' + idx] = $(this).find('input[name^="description"]')
                        .val();
                    billData['quantity' + idx] = $(this).find('.qtyitem').val();
                    billData['rate' + idx] = $(this).find('.rateclass').val();
                    billData['amount' + idx] = $(this).find('.amount-cell').text();
                    billData['voidyn' + idx] = $(this).find('.voidyn').val();
                    billData['itemnumber' + idx] = idx;
                    billData['taxedrate' + idx] = $(`#taxedrate${idx}`).val();
                    billData['fixamount' + idx] = $(`#fixamount${idx}`).val();
                    billData['tax_rate' + idx] = $(`#tax_rate${idx}`).val();
                    billData['taxrate_sum' + idx] = $(`#taxrate_sum${idx}`).val();
                    billData['discapp' + idx] = $(`#discapp${idx}`).val();
                });
                billData.vatamount = $('#vatamount').val() || '0.00';
                billData.additionamount = $('#additionamount').val() || '0.00';
                billData.deductionamount = $('#deductionamount').val() || '0.00';
                billData.redemptionamount = $('#redemptionamount').val() || '0.00';

                $.ajax({
                    type: 'POST',
                    url: '{{ route('salebillsubmit') }}',
                    data: billData,
                    dataType: 'json',
                    success: function(response) {
                        if (!response || typeof response !== 'object' || response.status !==
                            'success') {
                            $('#btnBill').prop('disabled', false).text('Confirm Bill');
                            let msg = (response && response.message) ? response.message :
                                'Bill submit failed. Please verify.';
                            notify('error', 'Service Desk', msg);
                            return;
                        }
                        $('#btnBill').prop('disabled', false).text('Confirm Bill');

                        lastBillPrintData = response.printdata || {};

                        lastBillPrintData.phoneno = lastBillPrintData.phoneno || $('#phoneno')
                            .val();
                        lastBillPrintData.customername = lastBillPrintData.customername || $(
                                '#customername')
                            .val();
                        lastBillPrintData.address = lastBillPrintData.address || $('#address')
                            .val();
                        lastBillPrintData.customercity = lastBillPrintData.customercity || $(
                                '#customercity')
                            .val();
                        lastBillPrintData.company = lastBillPrintData.company || $('#company')
                            .val();

                        if (lastBillPrintData.billno) {
                            $('#kotnolabel').text('Bill No.');
                            $('#krsno').text(lastBillPrintData.billno);
                        }

                        showCurrentBill();
                        notify('success', 'Service Desk', 'Bill Saved Successfully!');

                        // ✅ Ask whether to print, same as KOT save. Default paper (when
                        // printdescription is not returned / unmatched) is now salebillprint2 —
                        // see the fallback branch inside openBillPrint(). Other paper types keep
                        // printing exactly as they already do.
                        Swal.fire({
                            icon: 'success',
                            title: 'Service Desk',
                            text: 'Do you want to print Bill?',
                            showCancelButton: true,
                            confirmButtonText: 'Yes',
                            cancelButtonText: 'No'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                openBillPrint(lastBillPrintData);
                            }
                        });
                    },
                    error: function(xhr) {
                        $('#btnBill').prop('disabled', false).text('Confirm Bill');

                        if (xhr.status === 401) {
                            notify('error', 'Session Expired',
                                'Your session has expired. Redirecting to login...');
                            setTimeout(function() {
                                window.location.href = '/';
                            }, 1500);
                            return;
                        }

                        let msg = 'Bill submit failed. Please verify.';
                        if (xhr.responseJSON && xhr.responseJSON.message) msg = xhr.responseJSON
                            .message;
                        notify('error', 'Service Desk', msg);
                    }
                });
            });

            function showCurrentBill() {
                $('#currentOrderTitle').text('CURRENT BILL');
                let billnoText = (lastBillPrintData && lastBillPrintData.billno) ?
                    ('Bill #' + lastBillPrintData.billno + ' — ') : '';
                $('#billSuccessMsg').text(billnoText + 'Generated for Table ' + $('#roomno').val());
                $('#billSuccessPanel').removeClass('d-none');
                $('#billReviewBanner').addClass('d-none');
                $('#orderBody :input').prop('disabled', true);

                $('#btnBillSettlement').prop('disabled', !lastBillPrintData);

                if (!lastBillPrintData) {
                    notify('warning', 'Bill Print',
                        'Bill was saved, but print data was not returned by the server.');
                }
            }

            function openBillPrint(printdata) {
                if (!printdata || !printdata.billno || !printdata.docid) {
                    notify('error', 'Bill Print', 'Bill print data is incomplete.');
                    return;
                }
                let vnoup = printdata.billno;
                let vdatesale1 = printdata.vdate;
                let sale1docid = printdata.docid;
                let vtype = printdata.vtype;
                let departname = printdata.departname;
                let kotno = printdata.kotno;
                let waitersname = printdata.waiter;
                let outletcode = printdata.outletcode;
                let departnature = printdata.departnature;
                let roomno = printdata.roomno;
                let printdescription = printdata.printdescription;
                let totalamount = parseFloat($('#netAmount').text() || 0).toFixed(2);

                function fillPrintWindow(openfile) {
                    openfile.onload = function() {
                        $('#roomno', openfile.document).text(roomno);
                        $('#vdate', openfile.document).text(vdatesale1);
                        $('#billno', openfile.document).text(vnoup);
                        $('#vtype', openfile.document).text(vtype);
                        $('#departname', openfile.document).text(departname);
                        $('#kotno', openfile.document).html(kotno ?
                            `<strong>KOT No: <span id="kotno">${kotno}</span></strong>` : '');
                        $('#waiter', openfile.document).html(waitersname ?
                            '<strong>Waiter: </strong>' + waitersname : '');
                        $('#outletcode', openfile.document).text(outletcode);
                        $('#departnature', openfile.document).text(departnature);
                        $('#sale1docid', openfile.document).text(sale1docid);
                        $('#totalamount', openfile.document).text(totalamount);
                        $('#phoneno', openfile.document).text(printdata.phoneno || '');
                        $('#customername', openfile.document).text(printdata.customername || '');
                        $('#address', openfile.document).text(printdata.address || '');
                        $('#customercity', openfile.document).text(printdata.customercity || '');
                        $('#company', openfile.document).text(printdata.company || '');
                    };
                }

                if (printdescription == 'Bill Windows Plain Paper 1') {
                    fillPrintWindow(window.open('salebillprint', '_blank'));
                } else if (printdescription == 'Bill Windows Plain Paper 2') {
                    fillPrintWindow(window.open('salebillprinttype2', '_blank'));
                } else if (printdescription == '3 Inch Running Paper Windows Print 1') {
                    fillPrintWindow(window.open('salebillprint2', '_blank'));
                } else if (printdescription == '3 Inch Running Paper Windows Print 2') {
                    fillPrintWindow(window.open('salebillprint2type2', '_blank'));
                } else if (printdescription == '3 Inch Running Paper DOS Print') {
                    $.ajax({
                        url: 'salebillprintthermal',
                        data: {
                            docid: sale1docid
                        },
                        method: 'POST',
                        success: function(response) {
                            notify('success', 'Print', 'Sent to thermal printer');
                        },
                        error: function(error) {
                            notify('error', 'Print', 'Thermal print failed');
                        }
                    });
                } else {
                    // ✅ Default bill print (no/unrecognised printdescription) is now salebillprint2.
                    // All other configured paper types above are unchanged and print as before.
                    fillPrintWindow(window.open('salebillprint2', '_blank'));
                }
            }

            $('#btnBillPrintNow').on('click', function() {
                if (lastBillPrintData) {
                    openBillPrint(lastBillPrintData);
                    return;
                }
                let fallbackDocid = $('#olddocidpendingkot').val();
                if (!fallbackDocid) {
                    notify('error', 'Bill Print', 'No print data available for this bill.');
                    return;
                }
                $.ajax({
                    url: '/fetchbillprintdata',
                    method: 'POST',
                    data: {
                        docid: fallbackDocid,
                        _token: token
                    },
                    success: function(data) {
                        lastBillPrintData = data;
                        openBillPrint(data);
                    },
                    error: function() {
                        notify('error', 'Bill Print',
                            'Unable to fetch bill print data from server');
                    }
                });
            });
            $('#btnBillSettlement').on('click', function() {
                function openSettlement(data) {
                    const billNo = data.billno || '';
                    const sale1DocId = data.docid || '';
                    const restCode = data.outletcode || $('#restcode').val();

                    if (!billNo || !sale1DocId) {
                        notify('error', 'Settlement', 'Bill number or bill document ID is missing.');
                        return;
                    }
                    $('#serviceSettlementBillNo').text('Bill No: ' + billNo);
                    // ✅ ab exactly purane salebillentry.blade.php jaisa hi — sirf 3 params
                    const settlementUrl =
                        "{{ url('/salebillsettle') }}" +
                        '?vno=' + encodeURIComponent(billNo) +
                        '&sale1docid=' + encodeURIComponent(sale1DocId) +
                        '&rest_code=' + encodeURIComponent(restCode);
                    $('#serviceSettlementIframe').attr('src', settlementUrl);
                    $('#serviceSettlementModal').modal('show');
                }

                if (lastBillPrintData && lastBillPrintData.billno) {
                    openSettlement(lastBillPrintData);
                    return;
                }

                // ✅ fallback — lastBillPrintData khaali hai (reload hua ya Old Bill se load hua bill)
                let fallbackDocid = $('#sale1docid').val() || $('#olddocidpendingkot').val();
                if (!fallbackDocid) {
                    notify('error', 'Settlement', 'No bill loaded to settle.');
                    return;
                }
                $.ajax({
                    url: '/fetchbillprintdata',
                    method: 'POST',
                    data: {
                        docid: fallbackDocid,
                        _token: token
                    },
                    success: function(data) {
                        lastBillPrintData = data;
                        openSettlement(data);
                    },
                    error: function() {
                        notify('error', 'Settlement',
                            'Unable to fetch bill data for settlement.');
                    }
                });
            });
            $('#serviceSettlementModal').on('hidden.bs.modal', function() {
                $('#serviceSettlementIframe').attr('src', '');
            });

            // ✅ Same simple route pattern as pos_displaytable's top "Settlement" button —
            // just opens settlemententry?dcode=... directly, no table/vno lookup needed.
            $('#btnSettlement').on('click', function() {
                let dcode = $('#restcode').val();
                window.location.href = `settlemententry?dcode=${dcode}`;
            });

            $('#btnBillNewOrder').on('click', function() {
                resetOrderForm();
            });

            $('#btnNew').on('click', function() {
                if (billMode) {
                    notify('error', 'Service Desk',
                        'Bill review is active. Use "New Order" after confirming the bill to start a fresh KOT.'
                    );
                    return;
                }
                resetOrderForm();
            });
            $('#btnCancel').on('click', function() {
                if ($('#orderBody tr').length === 0 && !billMode) {
                    notify('info', 'Cancel', 'Nothing to cancel.');
                    return;
                }

                let confirmMsg = billMode ?
                    'Cancel Bill review? Items will be cleared and nothing will be settled.' :
                    'Clear current order?';
                if (!confirm(confirmMsg)) return;

                $('#orderBody').empty();
                totaladditems = 0;
                mergedKotDocids = [];
                lastBillPrintData = null;
                LAST_SAVED_HASH = null;
                $('#totalitems').val(0);
                $('#olddocidpendingkot').val('');
                $('#nckotreason').val('');
                $('#editingreasons').val('');
                $('#kotnolabel').text('KOT No.');
                $('#billSuccessPanel').addClass('d-none');
                $('#currentOrderTitle').text('CURRENT ORDER');
                $('#orderBody :input').prop('disabled', false);

                unlockFromBillReview();
                updateTotals();

                notify('info', 'Cancel', 'Order cleared.');
            });

            $(document).on('keydown', function(e) {
                if (e.key === 'F6') {
                    e.preventDefault();
                    $('#btnSave').click();
                }
                // if (e.key === 'F7') {
                //     e.preventDefault();
                //     $('#btnPrint').click();
                // }
                if (e.key === 'F8') {
                    e.preventDefault();
                    $('#btnBill').click();
                }
                if (e.key === 'Escape') {
                    window.location.href = "{{ url('/company') }}";
                }
            });

            $(window).on('focus', function() {
                refreshTableList(true);
            });

            $('#favourite').trigger('click');
            enableAllButtons();
            populateOldBillDropdown();
            refreshTableList(true);
        });
    </script>
@endsection
