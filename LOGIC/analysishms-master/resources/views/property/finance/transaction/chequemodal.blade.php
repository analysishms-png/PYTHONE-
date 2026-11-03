<div class="modal fade" id="chequePrintModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-header py-2">
                <h6 class="modal-title mb-0">
                    Cheque Print
                </h6>

                <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal">
                </button>
            </div>

            <div class="modal-body">

                <input type="hidden" id="print_docid">
                <input type="hidden" name="sub_code" id="sub_code">
                <div class="row g-2 mb-2">

                    <div class="col-6">
                        <label class="form-label mb-1">
                            Date
                        </label>

                        <input
                            type="date"
                            class="form-control form-control-sm"
                            id="cheque_date">
                    </div>

                    <div class="col-6">
                        <label class="form-label mb-1">
                            Amount
                        </label>

                        <input
                            type="text"
                            class="form-control form-control-sm"
                            id="cheque_amount"
                            >
                    </div>

                </div>

                <div class="mb-2">
                    <input
                        type="text"
                        class="form-control form-control-sm"
                        id="ac_payee_name"
                        placeholder="A/C Payee Custom Text">
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="print_payee" checked>
                    <label class="form-check-label" for="print_payee">
                        Payee Name
                    </label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="print_company">
                    <label class="form-check-label" for="print_company">
                        Company Name
                    </label>
                </div>

                <div class="mb-2">
                    <label class="form-label mb-1">
                        Cheque Design
                    </label>

                    <select
                        class="form-control form-select-sm"
                        id="cheque_design_id">

                        <option value="">
                            Select Design
                        </option>

                        @foreach ($chequedesigns as $design)
                            <option value="{{ $design->id }}">
                                {{ $design->design_name }}
                            </option>
                        @endforeach

                    </select>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="print_date" checked>
                    <label class="form-check-label" for="print_date">
                        Full Date
                    </label>
                </div>

                <hr>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="signature_type" value="authorised">
                    <label class="form-check-label">
                        Authorised Signatory
                    </label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="signature_type" value="director">
                    <label class="form-check-label">
                        Director
                    </label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="signature_type" value="president">
                    <label class="form-check-label">
                        President
                    </label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="signature_type" value="proprietor">
                    <label class="form-check-label">
                        Proprietor
                    </label>
                </div>

            </div>

            <div class="modal-footer py-2">

                <button
                    type="button"
                    class="btn btn-secondary btn-sm"
                    data-bs-dismiss="modal">
                    Cancel
                </button>

                <button
                    type="button"
                    class="btn btn-warning btn-sm"
                    id="btnChequePrint">
                    Cheque Print
                </button>

            </div>

        </div>
    </div>
</div>
