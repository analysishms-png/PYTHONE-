<style>
    #tdsModal .modal-content {
        border: none;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.15);
    }

    #tdsModal .tds-header {
        background: linear-gradient(135deg, #1a3fa8, #2f5fd0);
        padding: 10px 14px;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    #tdsModal .tds-header-icon {
        width: 28px;
        height: 28px;
        border-radius: 7px;
        background: rgba(255, 255, 255, 0.15);
        border: 1px solid rgba(255, 255, 255, 0.2);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 11px;
        color: #fff;
    }

    #tdsModal .tds-title {
        color: #fff;
        font-size: 14px;
        font-weight: 600;
    }

    #tdsModal .tds-subtitle {
        color: rgba(255, 255, 255, 0.6);
        font-size: 10px;
    }

    #tdsModal .modal-body {
        background: #f7f9ff;
        padding: 14px;
    }

    #tdsModal label {
        font-size: 12px;
        font-weight: 500;
        color: #5a6478;
    }

    #tdsModal .form-control,
    #tdsModal .form-select {
        border-radius: 7px;
        border: 1.5px solid #dde3f0;
        font-size: 13px;
        transition: border-color 0.2s, box-shadow 0.2s;
    }

    #tdsModal .form-control:focus,
    #tdsModal .form-select:focus {
        border-color: #2f5fd0;
        box-shadow: 0 0 0 3px rgba(47, 95, 208, 0.1);
    }

    #tdsModal .tds-result {
        background: #eef2ff;
        border-color: #b8c8f5 !important;
        color: #1a3fa8;
        font-weight: 600;
    }

    #tdsModal .modal-footer {
        background: #fff;
        border-top: 1px solid #edf0f8;
        padding: 10px 14px;
    }

    #tdsModal .btn-tds-apply {
        background: linear-gradient(135deg, #2f5fd0, #4a78e8);
        color: #fff;
        border: none;
        border-radius: 7px;
        padding: 6px 18px;
        font-size: 13px;
        font-weight: 600;
        box-shadow: 0 3px 10px rgba(47, 95, 208, 0.3);
        transition: opacity 0.2s, transform 0.2s;
    }

    #tdsModal .btn-tds-apply:hover {
        opacity: 0.92;
        transform: translateY(-1px);
    }
</style>

<div class="modal fade" id="tdsModal" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="tds-header">
                <div class="d-flex align-items-center gap-2">
                    <div class="tds-header-icon"><i class="fa fa-percent"></i></div>
                    <div>
                        <div class="tds-title">T.D.S.</div>
                        <div class="tds-subtitle"></div>
                    </div>
                </div>
                <button type="button" class="btn-close btn-close-white btn-sm tds-modal-close" aria-label="Close"></button>
            </div>

            <div class="modal-body">
                <input type="hidden" name="tds_row_index" id="tds_row_index">
                <input type="hidden" name="tds_applied" id="tds_applied" value="0">
                <input type="hidden" name="tdscrdr" id="tdscrdr" value="dr">

                <div class="row g-1 align-items-center mb-2">
                    <div class="col-4"><label class="mb-0">TDS A/C</label></div>
                    <div class="col-8">
                        <select name="tds_code" id="code" class="form-control">
                            <option value="">Select</option>
                        </select>
                    </div>
                </div>

                <div class="row g-1 align-items-start mb-2">
                    <div class="col-4 pt-1"><label class="mb-0">Narration</label></div>
                    <div class="col-8">
                        <textarea name="tds_narration" id="tds_narration" rows="3" class="form-control form-control-sm"></textarea>
                    </div>
                </div>

                <div class="row g-1 align-items-center mb-2">
                    <div class="col-4"><label class="mb-0">On Amount</label></div>
                    <div class="col-8">
                        <input type="number" name="tds_on_amount" id="tds_on_amount" class="form-control form-control-sm text-end">
                    </div>
                </div>

                <div class="row g-1 align-items-center mb-2">
                    <div class="col-4"><label class="mb-0">T.D.S. %</label></div>
                    <div class="col-8">
                        <input type="number" name="tds_percent" id="tds_percent" class="form-control form-control-sm text-end">
                    </div>
                </div>

                <hr class="my-2">

                <div class="row g-1 align-items-center">
                    <div class="col-4"><label class="mb-0 fw-semibold" style="color:#1a3fa8;">T.D.S. Amt</label></div>
                    <div class="col-8">
                        <input type="number" name="tds_amount" id="tds_amount" class="form-control form-control-sm text-end tds-result" readonly>
                    </div>
                </div>

            </div>

            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-sm btn-light rounded-2 px-3 tds-modal-close">Cancel</button>
                <button type="button" class="btn-tds-apply" id="tds_apply">
                    <i class="fa fa-check me-1"></i> Apply
                </button>
            </div>

        </div>
    </div>
</div>
