@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <style>
        .table-voucher thead.table-head-gray th {
            color: #6c757d;
            background-color: #f8f9fa;
            padding: 0.5rem;
        }

        .table-voucher tbody.table-body-dark tr {
            border: 1px solid #212529;
        }

        .table-voucher tbody.table-body-dark td {
            border-color: #212529;
            padding: 0.5rem;
        }

        .table-voucher th {
            padding: 0.5rem;
        }

        .stat-btn {
            border: 1px ridge black;
        }

        .col-form-label {
            background: #f8f9fa;
            padding: 0.5rem;
            border: transparent;
            border-radius: 5px;
            width: -webkit-fill-available;
        }

        .form-control:focus {
            border-color: #40a9ff;
            border-right-width: 1px !important;
            outline: 0;
            -webkit-box-shadow: 0 0 0 2px rgba(24, 144, 255, .2);
            box-shadow: 0 0 1px 2px rgb(190 0 0);
        }

        .tds-edit-link {
            display: inline-block;
            margin-top: 4px;
            font-size: 11px;
            color: #0d6efd;
            cursor: pointer;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="" id="voucherentryform">
                                @csrf
                                <input type="hidden" name="docid" id="docid" value="{{ $data[0]->docid ?? '' }}">
                                <input type="hidden" name="totalrows" id="totalrows" value="{{ count($data) }}">
                                <div class="row mb-3">
                                    <div class="col-md-12">
                                        <button style="background: #2596be" type="button" class="btn btn-lg stat-btn" disabled>{{ getVoucherTypeName($data[0]->vtype ?? '') }}</button>
                                        <button type="button" class="btn btn-sm btn-warning" onclick="goBack()"><i class="fa fa-arrow-left"></i> Back</button>
                                        <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-check"></i> Update</button>
                                        <button type="button" class="btn btn-sm btn-info" onclick="printVoucher()"><i class="fa fa-print"></i> Print</button>
                                        <b>User: {{ $data[0]->u_name ?? '' }}</b>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="row justify-content-around">
                                            <div class="">
                                                <div class="form-group">
                                                    <label for="vrdate" class="col-form-label">Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                    <input type="date" value="{{ $data[0]->vdate ?? ncurdate() }}" class="form-control" name="vrdate" id="vrdate">
                                                </div>
                                            </div>

                                            <div class="">
                                                <div class="form-group">
                                                    <label for="vrtype" class="col-form-label">Vr. Type</label>
                                                    <input type="text" class="form-control" id="vrtype_text" value="{{ getVoucherTypeName($data[0]->vtype ?? '') }}" disabled>
                                                    <input type="hidden" name="vrtype" id="vrtype" value="{{ $data[0]->vtype ?? '' }}">
                                                </div>
                                            </div>

                                            <div class="">
                                                <div class="form-group">
                                                    <label for="vrno" class="col-form-label">Vr. No.</label>
                                                    <input type="text" name="vrno" id="vrno" class="form-control" value="{{ $data[0]->vno ?? '' }}" readonly>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="table-responsive">
                                            <table id="voucherrowtable" class="table table-voucher">
                                                <thead class="table-head-gray">
                                                    <th>Sr.</th>
                                                    <th>CR/DR</th>
                                                    <th>Particulars</th>
                                                    <th>Debit</th>
                                                    <th>Credit</th>
                                                    <th></th>
                                                </thead>

                                                <tbody class="table-body-dark" id="voucherTableBody"></tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th colspan="3" class="text-end">Total</th>
                                                        <th><input type="text" class="form-control" id="totaldr" name="totaldr" placeholder="0.00" readonly></th>
                                                        <th><input type="text" class="form-control" id="totalcr" name="totalcr" placeholder="0.00" readonly></th>
                                                        <th></th>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>

                                        <div id="narrationrow" class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="narration" class="col-form-label">Narration</label>
                                                    <textarea name="narration" id="narration" class="form-control" rows="4" placeholder="Enter narration">{{ $narration ?? '' }}</textarea>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row" id="chequeDetails" style="display: none;">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="chequeno" class="col-form-label">Cheque No.</label>
                                                    <input type="text" name="chequeno" id="chequeno" class="form-control" value="{{ $data[0]->chqno ?? '' }}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="chequedate" class="col-form-label">Cheque Date</label>
                                                    <input type="date" name="chequedate" id="chequedate" class="form-control" value="{{ $data[0]->chqdate ?? '' }}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="clearingdate" class="col-form-label">Clearing Date</label>
                                                    <input type="date" name="clearingdate" id="clearingdate" class="form-control" value="{{ $data[0]->clgdate ?? '' }}">
                                                </div>
                                            </div>
                                        </div>
                                        @if ($tdsData['amount'] > 0)
                                            <b class="text-danger">T.D.S. Amt.: {{ str_replace(',', '', number_format($tdsData['amount'], 2)) }}
                                                <br>
                                                {{ $tdsData['narration'] }}
                                            </b>
                                        @endif
                                        <div style="display: none;" id="tdsrow" class="row offset-9">
                                            <p class="bg-black text-center rounded p-1">(ALT+T) T.D.S. Entry</p>
                                        </div>
                                        @include('property.general.tdswindow')
                                    </div>

                                    <div class="col-md-4"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        let voucherData = @json($data);
        let commonNarr = @json($commonNarr);
        let separateNarr = @json($separateNarr);
        let defaultCrac = @json($defaultCrac);
        let defaultDrac = @json($defaultDrac);
        let tdsData = @json($tdsData ?? []);

        $(document).ready(function() {

            let lastValidDate = $('#vrdate').val() || null;

            $(document).on('change', '#vrdate', function() {
                let date = $(this).val();
                if (!date) return;

                let selectedDate = new Date(date + 'T00:00:00');

                let today = new Date();
                let currentYear = today.getFullYear();
                let currentMonth = today.getMonth() + 1;

                let fyStart, fyEnd;

                if (currentMonth >= 4) {
                    fyStart = new Date(currentYear, 3, 1);
                    fyEnd = new Date(currentYear + 1, 2, 31);
                } else {
                    fyStart = new Date(currentYear - 1, 3, 1);
                    fyEnd = new Date(currentYear, 2, 31);
                }

                fyStart.setHours(0, 0, 0, 0);
                fyEnd.setHours(23, 59, 59, 999);

                if (selectedDate < fyStart || selectedDate > fyEnd) {
                    pushNotify('error', 'Date must be within current financial year only.');
                    $(this).val(lastValidDate);
                    return;
                }

                if (lastValidDate) {
                    let lastDateObj = new Date(lastValidDate + 'T00:00:00');

                    if (selectedDate.getTime() > lastDateObj.getTime()) {
                        pushNotify('error', 'Future dates are not allowed.');
                        $(this).val(lastValidDate);
                        return;
                    }
                }

                lastValidDate = date;
            });

            let tdsWasAppliedWhenOpened = false;

            function getTdsRowIndex() {
                return parseInt($('#tds_row_index').val(), 10) || 0;
            }

            function isTdsApplied() {
                return $('#tds_applied').val() === '1' && getTdsRowIndex() > 0;
            }

            function isTdsProtectedRow(index) {
                return isTdsApplied() && getTdsRowIndex() === index;
            }

            function refreshTotalRows() {
                $('#totalrows').val($('#voucherTableBody tr').length);
            }

            function refreshSerialNumbers() {
                $('#voucherTableBody tr').each(function(index) {
                    $(this).find('.srno').text(index + 1);
                });
            }

            function reserializeRows() {
                $('#voucherTableBody tr').each(function(newIndex) {
                    let newIdx = newIndex + 1;
                    let row = $(this);

                    // Update serial number
                    row.find('.srno').text(newIdx);

                    // Update input names and ids
                    row.find('input, select').each(function() {
                        let element = $(this);
                        let oldName = element.attr('name');
                        let oldId = element.attr('id');

                        if (oldName) {
                            let newName = oldName.replace(/\d+/, newIdx);
                            element.attr('name', newName);
                        }
                        if (oldId) {
                            let newId = oldId.replace(/\d+/, newIdx);
                            element.attr('id', newId);
                        }
                    });
                });

                refreshTotalRows();
                refreshSerialNumbers();
            }

            function formatAutoAmount(amount) {
                return amount > 0 ? amount.toFixed(2) : '';
            }

            function refreshTdsEditLink() {
                $('.tds-edit-link').remove();

                if (!isTdsApplied()) {
                    return;
                }

                let rowIndex = getTdsRowIndex();
                let particularField = $(`#particular${rowIndex}`);

                if (!particularField.length) {
                    return;
                }

                particularField.after(`<span class="tds-edit-link" data-row-index="${rowIndex}">Edit TDS</span>`);
            }

            function clearAppliedTds(resetRowAmount = false) {
                if (!isTdsApplied()) {
                    refreshTdsEditLink();
                    return;
                }

                let rowIndex = getTdsRowIndex();

                if (resetRowAmount) {
                    let currentDebitAmount = parseFloat($(`#dramt${rowIndex}`).val()) || 0;
                    let currentTdsAmount = parseFloat($('#tds_amount').val()) || 0;
                    $(`#dramt${rowIndex}`).val((currentDebitAmount + currentTdsAmount).toFixed(2));
                }

                $('#tds_applied').val('0');
                $('#tds_row_index').val('');
                refreshTdsEditLink();
                calculatetotals();
            }

            function hydrateTdsFields() {
                $('#tds_applied').val(tdsData.applied || '0');
                $('#tds_row_index').val(tdsData.row_index || '');
                $('#tds_on_amount').val(tdsData.on_amount || '');
                $('#tds_percent').val(tdsData.percent || '');
                $('#tds_amount').val(tdsData.amount || '');
                $('#tds_narration').val(tdsData.narration || '');

                if (tdsData.code) {
                    $('#code').html(`<option value="${tdsData.code}" selected>${tdsData.code_name || tdsData.code}</option>`);
                } else {
                    $('#code').html('<option value="">Select</option>');
                }
            }

            // function openTdsEntryForRow(rowIndex) {
            //     if (isTdsApplied() && !isTdsProtectedRow(rowIndex)) {
            //         clearAppliedTds(true);
            //     }

            //     let drAmountInput = $(`#dramt${rowIndex}`);
            //     let currentDebitAmount = parseFloat(drAmountInput.val()) || 0;
            //     let previousTdsAmount = isTdsProtectedRow(rowIndex) ? (parseFloat($('#tds_amount').val()) || 0) : 0;
            //     let baseAmount = currentDebitAmount + previousTdsAmount;
            //     let particular = $(`#particular${rowIndex}`).val();

            //     if (particular == '') {
            //         pushNotify('warning', 'Please select Particulars before opening TDS entry');
            //         $(`#particular${rowIndex}`).focus();
            //         return;
            //     }

            //     if (!drAmountInput.length || drAmountInput.is('[readonly]') || baseAmount <= 0) {
            //         pushNotify('warning', 'Please enter a valid amount before opening TDS entry');
            //         drAmountInput.focus();
            //         return;
            //     }

            //     $.ajax({
            //         url: "{{ route('tdsentrycheckup') }}",
            //         type: "POST",
            //         data: {
            //             _token: '{{ csrf_token() }}',
            //             particular: particular
            //         },
            //         success: function(response) {
            //             if (response.success && response.subgroup) {
            //                 let tdsCatg = response.subgroup.tds_catg;

            //                 if (tdsCatg && tdsCatg.trim() !== '') {
            //                     let particularText = $(`#particular${rowIndex} option:selected`).text();
            //                     let currentCode = $('#code').val();
            //                     let currentCodeText = $('#code option:selected').text();
            //                     let currentPercent = $('#tds_percent').val();
            //                     let currentNarration = $('#tds_narration').val();
            //                     let currentTdsAmount = parseFloat($('#tds_amount').val()) || 0;
            //                     let responsePercent = response.tdscategories ? response.tdscategories.tdspercentage : '';

            //                     $('.tds-subtitle').text(particularText);

            //                     tdsWasAppliedWhenOpened = isTdsProtectedRow(rowIndex);
            //                     $('#tds_row_index').val(rowIndex);
            //                     $('#tds_on_amount').val(baseAmount.toFixed(2));

            //                     if (tdsWasAppliedWhenOpened) {
            //                         if (currentCode) {
            //                             $('#code').html(`<option value="${currentCode}" selected>${currentCodeText}</option>`);
            //                         } else if (response.tdscategories) {
            //                             $('#code').html(`<option value="${response.tdscategories.code}" selected>${response.tdscategories.name}</option>`);
            //                         } else {
            //                             $('#code').html('<option value="">Select</option>');
            //                         }

            //                         $('#tds_percent').val(currentPercent || responsePercent || '');
            //                         $('#tds_amount').val(currentTdsAmount.toFixed(2));
            //                         $('#tds_narration').val(currentNarration);
            //                     } else {
            //                         $('#code').html('<option value="">Select</option>');

            //                         if (response.tdscategories) {
            //                             let tdsAmount = (baseAmount * response.tdscategories.tdspercentage) / 100;
            //                             let narration = `TDS on ${particularText} (${baseAmount.toFixed(2)} @ ${response.tdscategories.tdspercentage}%)`;
            //                             $('#code').append(`<option value="${response.tdscategories.code}" selected>${response.tdscategories.name}</option>`);
            //                             $('#tds_percent').val(response.tdscategories.tdspercentage);
            //                             $('#tds_amount').val(tdsAmount.toFixed(2));
            //                             $('#tds_narration').val(narration);
            //                         }
            //                     }

            //                     showTdsModal();
            //                 } else {
            //                     pushNotify('info', 'No TDS category found for this particular, TDS entry cannot be opened.');
            //                 }
            //             } else {
            //                 pushNotify('error', response.message || 'Unable to open TDS entry.');
            //             }
            //         },
            //         error: function(xhr) {
            //             console.log(xhr.responseText);
            //             pushNotify('error', 'An error occurred while opening TDS entry.');
            //         }
            //     });
            // }

            function openTdsEntryForRow(rowIndex) {

                if (isTdsApplied() && !isTdsProtectedRow(rowIndex)) {
                    clearAppliedTds(true);
                }

                let drInput = $(`#dramt${rowIndex}`);
                let crInput = $(`#cramt${rowIndex}`);

                let drVal = parseFloat(drInput.val()) || 0;
                let crVal = parseFloat(crInput.val()) || 0;

                let activeInput = null;
                let baseAmount = 0;

                if (drVal > 0) {
                    activeInput = drInput;
                    baseAmount = drVal;
                } else if (crVal > 0) {
                    activeInput = crInput;
                    baseAmount = crVal;
                } else {
                    pushNotify('warning', 'Please enter a valid amount before opening TDS entry');
                    return;
                }

                let previousTdsAmount = isTdsProtectedRow(rowIndex) ?
                    (parseFloat($('#tds_amount').val()) || 0) :
                    0;

                baseAmount += previousTdsAmount;

                let particular = $(`#particular${rowIndex}`).val();

                if (particular == '') {
                    pushNotify('warning', 'Please select Particulars before opening TDS entry');
                    $(`#particular${rowIndex}`).focus();
                    return;
                }

                if (activeInput.is('[readonly]') || baseAmount <= 0) {
                    pushNotify('warning', 'Please enter a valid amount before opening TDS entry');
                    return;
                }

                $.ajax({
                    url: "{{ route('tdsentrycheckup') }}",
                    type: "POST",
                    data: {
                        _token: '{{ csrf_token() }}',
                        particular: particular
                    },
                    success: function(response) {
                        if (response.success && response.subgroup) {

                            let tds_catg = response.subgroup.tds_catg;

                            if (tds_catg && tds_catg.trim() !== '') {

                                let particularText = $(`#particular${rowIndex} option:selected`).text();
                                let currentCode = $('#code').val();
                                let currentCodeText = $('#code option:selected').text();
                                let currentPercent = $('#tds_percent').val();
                                let currentNarration = $('#tds_narration').val();
                                let currentTdsAmount = parseFloat($('#tds_amount').val()) || 0;

                                $('.tds-subtitle').text(particularText);

                                tdsWasAppliedWhenOpened = isTdsProtectedRow(rowIndex);
                                $('#tds_row_index').val(rowIndex);
                                $('#tdscrdr').val(activeInput.attr('name').includes('dramt') ? 'dr' : 'cr');
                                $('#tds_on_amount').val(baseAmount.toFixed(2));

                                if (tdsWasAppliedWhenOpened) {

                                    if (currentCode) {
                                        $('#code').html(`<option value="${currentCode}" selected>${currentCodeText}</option>`);
                                    } else if (response.tdscategories) {
                                        $('#code').html(`<option value="${response.tdscategories.code}" selected>${response.tdscategories.name}</option>`);
                                    } else {
                                        $('#code').html('<option value="">Select</option>');
                                    }

                                    $('#tds_percent').val(currentPercent || response.tdscategories?.tdspercentage || '');
                                    $('#tds_amount').val(currentTdsAmount.toFixed(2));
                                    $('#tds_narration').val(currentNarration);

                                } else {

                                    $('#code').html('<option value="">Select</option>');

                                    if (response.tdscategories) {
                                        $('#code').append(`<option value="${response.tdscategories.code}" selected>${response.tdscategories.name}</option>`);
                                        $('#tds_percent').val(response.tdscategories.tdspercentage);

                                        let tdsamount = (baseAmount * response.tdscategories.tdspercentage) / 100;
                                        let narration = `TDS on ${particularText} (${baseAmount.toFixed(2)} @ ${response.tdscategories.tdspercentage}%)`;

                                        $('#tds_amount').val(tdsamount.toFixed(2));
                                        $('#tds_narration').val(narration);
                                    }
                                }

                                showTdsModal();

                            } else {
                                pushNotify('info', 'No TDS category found for this particular, TDS entry cannot be opened.');
                            }

                        } else {
                            pushNotify('error', response.message || 'Unable to open TDS entry.');
                        }
                    },
                    error: function(xhr) {
                        console.log(xhr.responseText);
                        pushNotify('error', 'An error occurred while opening TDS entry.');
                    }
                });
            }

            loadVoucherRows();
            hydrateTdsFields();
            refreshTdsEditLink();
            checkChequeDetails();

            if (commonNarr == 'N') {
                $('#narrationrow').hide();
            } else {
                $('#narrationrow').show();
            }

            // $(document).on('keydown', function(e) {
            //     if (e.altKey && e.key.toLowerCase() === 't') {
            //         e.preventDefault();

            //         let vrtypeText = $('#vrtype_text').val().toLowerCase();

            //         if (vrtypeText.includes('bank payment') || vrtypeText.includes('journal') || vrtypeText.includes('contra')) {
            //             let currentInput = $('input[name^="dramt"]:focus');
            //             let currentrowindex = currentInput.closest('tr').index() + 1;

            //             if (currentInput.length) {
            //                 if (!currentInput.is('[readonly]')) {
            //                     openTdsEntryForRow(currentrowindex);
            //                 } else {
            //                     pushNotify('warning', 'Please enter a valid amount before opening TDS entry');
            //                     currentInput.focus();
            //                     return;
            //                 }
            //             }
            //         }
            //     }
            // });

            let lastInput = null;

            $(document).on('mousedown keydown', 'input[name^="dramt"], input[name^="cramt"]', function() {
                lastInput = $(this);
            });

            $(document).on('keydown', function(e) {
                if (e.altKey && e.key.toLowerCase() === 't') {
                    e.preventDefault();

                    if (!lastInput || !lastInput.length) return;

                    let vrtypeText = $('#vrtype_text').val().toLowerCase();

                    if (!(vrtypeText.includes('bank payment') || vrtypeText.includes('journal') || vrtypeText.includes('contra'))) {
                        return;
                    }

                    let currentrowindex = lastInput.closest('tr').index() + 1;
                    let val = parseFloat(lastInput.val()) || 0;

                    if (val > 0) {
                        openTdsEntryForRow(currentrowindex);
                        $('#tdsrow').show();
                    } else {
                        pushNotify('warning', 'Please enter a valid amount before opening TDS entry');
                    }
                }
            });

            $(document).on('keydown', function(e) {
                if (e.shiftKey && e.key.toLowerCase() === 'd' && !$(e.target).is('textarea, select')) {
                    e.preventDefault();

                    let voucherTable = $('#voucherTableBody');

                    // Get the row where the user is currently focused
                    let focusedElement = $(document.activeElement);
                    let currentRow = focusedElement.closest('tr');

                    if (currentRow.length === 0) {
                        pushNotify('warning', 'Please focus on a row to delete.');
                        return;
                    }

                    let currentRowIndex = currentRow.index() + 1;

                    if (voucherTable.find('tr').length <= 1) {
                        pushNotify('warning', 'At least one row must remain in the voucher.');
                        return;
                    }

                    if (isTdsProtectedRow(currentRowIndex)) {
                        pushNotify('warning', 'TDS row cant be remove');
                        return;
                    }

                    currentRow.remove();
                    reserializeRows();
                    calculatetotals();
                    refreshTdsEditLink();
                }
            });

            $(document).on('keydown', '.drcrrow', function(e) {
                let index = $(this).closest('tr').index() + 1;
                let totaldr = 0;
                let totalcr = 0;

                if (e.key.toLowerCase() === 'c' && defaultCrac != '') {
                    $(`#particular${index}`).val(defaultCrac).trigger('change');
                } else if (e.key.toLowerCase() === 'd' && defaultDrac != '') {
                    $(`#particular${index}`).val(defaultDrac).trigger('change');
                }

                if (e.key.toLowerCase() === 'c') {
                    $(this).val('CR');
                    $(`#dramt${index}`).attr('readonly', 'readonly').val('');
                    $(`#cramt${index}`).removeAttr('readonly');

                    $('input[name^="dramt"]').each(function() {
                        let val = parseFloat($(this).val());
                        if (!isNaN(val)) {
                            totaldr += val;
                        }
                    });
                    $('input[name^="cramt"]').each(function() {
                        let val = parseFloat($(this).val());
                        if (!isNaN(val)) {
                            totalcr += val;
                        }
                    });
                    // Set credit amount to the difference: totaldr - totalcr
                    let differenceAmount = totaldr - totalcr;
                    $(`#cramt${index}`).val(formatAutoAmount(differenceAmount));
                } else if (e.key.toLowerCase() === 'd') {
                    $(this).val('DR');
                    $(`#cramt${index}`).attr('readonly', 'readonly').val('');
                    $(`#dramt${index}`).removeAttr('readonly');

                    $('input[name^="cramt"]').each(function() {
                        let val = parseFloat($(this).val());
                        if (!isNaN(val)) {
                            totalcr += val;
                        }
                    });
                    $('input[name^="dramt"]').each(function() {
                        let val = parseFloat($(this).val());
                        if (!isNaN(val)) {
                            totaldr += val;
                        }
                    });
                    // Set debit amount to the difference: totalcr - totaldr
                    let differenceAmount = totalcr - totaldr;
                    $(`#dramt${index}`).val(formatAutoAmount(differenceAmount));
                }
            });

            $(document).on('change', '.particularsel', function() {
                let index = $(this).closest('tr').index() + 1;
                let particular = $(this).val();
                let el = $(this);
                let totaldr = 0;
                let totalcr = 0;

                if (separateNarr == 'Y') {
                    let narrationInput = `<textarea name="narration${index}" id="narration${index}" class="form-control mt-1 narrationparticular" rows="1" placeholder="Enter narration"></textarea>`;
                    if ($(`#particular${index}`).next('textarea').length) {
                        $(`#particular${index}`).next('textarea').remove();
                    }
                    $(`#particular${index}`).after(narrationInput);
                }

                if ($(`#drcr${index}`).val().toLowerCase() === 'dr') {
                    $('input[name^="cramt"]').each(function() {
                        let val = parseFloat($(this).val());
                        if (!isNaN(val)) {
                            totalcr += val;
                        }
                    });
                    $('input[name^="dramt"]').each(function() {
                        let val = parseFloat($(this).val());
                        if (!isNaN(val)) {
                            totaldr += val;
                        }
                    });
                    if (index > 1) {
                        let differenceAmount = totalcr - totaldr;
                        $(`#dramt${index}`).val(formatAutoAmount(differenceAmount));
                    }
                } else if ($(`#drcr${index}`).val().toLowerCase() === 'cr') {
                    $('input[name^="dramt"]').each(function() {
                        let val = parseFloat($(this).val());
                        if (!isNaN(val)) {
                            totaldr += val;
                        }
                    });
                    $('input[name^="cramt"]').each(function() {
                        let val = parseFloat($(this).val());
                        if (!isNaN(val)) {
                            totalcr += val;
                        }
                    });
                    if (index > 1) {
                        let differenceAmount = totaldr - totalcr;
                        $(`#cramt${index}`).val(formatAutoAmount(differenceAmount));
                    }
                }

                $.ajax({
                    url: "{{ route('checksubledger') }}",
                    method: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        particular: particular
                    },
                    success: function(response) {
                        if (response.success) {

                            let balance = response.balance;
                            let crdr = balance >= 0 ? 'Dr' : 'Cr';
                            let absBalance = Math.abs(balance).toFixed(2);
                            let showtext = `Current Balance: ${absBalance} ${crdr}`;
                            let hiddeninput = `<input type="hidden" name="current_balance${index}" id="current_balance${index}" value="${balance}">`;

                            el.next('.current-balance-info').remove();

                            el.after(`
                            <b class="current-balance-info bg-black p-1 rounded">
                                ${showtext}
                                ${hiddeninput}
                            </b>`);
                        }
                    },
                    error: function(xhr) {
                        pushNotify('error', `Error: ${xhr.responseText}`);
                    }
                })

                if (isTdsProtectedRow(index)) {
                    clearAppliedTds(true);
                    pushNotify('info', 'TDS was cleared because the TDS row particular was changed.');
                }

                refreshTdsEditLink();
            });

            $(document).on('keydown', '.particularsel', function(e) {
                if (e.key === 'Tab') {
                    e.preventDefault();
                    let index = $(this).closest('tr').index() + 1;
                    let narrationTextarea = $(`#narration${index}`);

                    if (narrationTextarea.length) {
                        narrationTextarea.focus();
                    } else {
                        let drcr = $(`#drcr${index}`).val().toLowerCase();

                        if (drcr === 'dr') {
                            $(`#dramt${index}`).focus();
                        } else if (drcr === 'cr') {
                            $(`#cramt${index}`).focus();
                        }
                    }
                }
            });

            $(document).on('keydown', '.narrationparticular', function(e) {
                if (e.key === 'Tab') {
                    e.preventDefault();
                    let index = $(this).closest('tr').index() + 1;
                    let drcr = $(`#drcr${index}`).val().toLowerCase();

                    if (drcr === 'dr') {
                        $(`#dramt${index}`).focus();
                    } else if (drcr === 'cr') {
                        $(`#cramt${index}`).focus();
                    }
                }
            });

            // Handle Enter key in main narration textarea for submission confirmation
            $(document).on('keydown', '#narration', function(e) {
                if (e.key === 'Enter' && !e.shiftKey) {
                    e.preventDefault();

                    let totaldr = parseFloat($('#totaldr').val()) || 0;
                    let totalcr = parseFloat($('#totalcr').val()) || 0;

                    // Check if totals are equal
                    if (totaldr !== totalcr) {
                        pushNotify('warning', 'Total Debit and Credit amounts must be equal before submitting.');
                        return;
                    }

                    // Show SweetAlert confirmation
                    Swal.fire({
                        icon: 'question',
                        title: 'Do you want to submit this entry?',
                        showCancelButton: true,
                        confirmButtonText: 'Yes',
                        cancelButtonText: 'No',
                        reverseButtons: true
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $('#voucherentryform').submit();
                        }
                        // If No is clicked, do nothing and keep as is
                    });
                }
            });

            $(document).on('keydown', '.amountrow', function(e) {
                let currentRow = $(this).closest('tr');
                let isLastRowInTable = currentRow.index() === $('#voucherTableBody tr').length - 1;

                if (e.key === 'Tab' && isLastRowInTable) {
                    e.preventDefault();
                    $('#narration').focus();
                    return;
                }

                if (e.key === 'Enter') {
                    e.preventDefault();
                    let voucherTable = $('#voucherTableBody');
                    let lastRow = voucherTable.find('tr:last');
                    let index = voucherTable.find('tr').length + 1;
                    let prevIndex = index - 1;

                    if ($(`#particular${prevIndex}`).val() == '') {
                        pushNotify('warning', 'Please select Particulars before adding new row');
                        $(`#particular${prevIndex}`).focus();
                        return;
                    }

                    let dramt = ($(`#dramt${prevIndex}`).val() || '').trim();
                    let cramt = ($(`#cramt${prevIndex}`).val() || '').trim();
                    let dramtVal = parseFloat(dramt) || 0;
                    let cramtVal = parseFloat(cramt) || 0;

                    let drorcr = $(`#drcr${prevIndex}`).val().toLowerCase();

                    if (dramtVal === 0 && cramtVal === 0) {
                        pushNotify('warning', `Please enter Debit or Credit amount in row ${prevIndex} before adding new row`);
                        if (!$(`#dramt${prevIndex}`).is('[readonly]')) {
                            $(`#dramt${prevIndex}`).focus();
                        } else {
                            $(`#cramt${prevIndex}`).focus();
                        }
                        return;
                    }

                    // Calculate totals
                    let totalDr = 0;
                    let totalCr = 0;

                    $('#voucherTableBody tr').each(function() {
                        let rowIndex = $(this).find('.srno').text().trim();
                        let dr = parseFloat($(`#dramt${rowIndex}`).val()) || 0;
                        let cr = parseFloat($(`#cramt${rowIndex}`).val()) || 0;
                        totalDr += dr;
                        totalCr += cr;
                    });

                    let current_balance = $(`#current_balance${prevIndex}`).val();
                    let particularselectname = $(`#particular${prevIndex} option:selected`).text();
                    let particularnature = $(`#particular${prevIndex} option:selected`).data('nature');
                    if (particularnature.toLowerCase() == 'cash' && current_balance != undefined) {
                        if ("{{ financeparameter()->negtivecashbalance }}" == 'warn') {
                            if (current_balance <= 0) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Negative ${particularselectname} Balance ${Math.abs(current_balance).toFixed(2)} ${current_balance <= 0 ? 'Cr' : 'Dr'}`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                            } else if (current_balance > 0 && drorcr == 'dr' && dramtVal > current_balance) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Entered Debit amount exceeds current balance of ${particularselectname} which is ${Math.abs(current_balance).toFixed(2)} Dr`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                            } else if (current_balance > 0 && drorcr == 'cr' && cramtVal > current_balance) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Entered Credit amount exceeds current balance of ${particularselectname} which is ${Math.abs(current_balance).toFixed(2)} Cr`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                            }
                        } else if ("{{ financeparameter()->negtivecashbalance }}" == 'block') {
                            if (current_balance <= 0) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Negative ${particularselectname} Balance ${Math.abs(current_balance).toFixed(2)} ${current_balance <= 0 ? 'Cr' : 'Dr'}`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                                return;
                            } else if (current_balance > 0 && drorcr == 'dr' && dramtVal > current_balance) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Entered Debit amount exceeds current balance of ${particularselectname} which is ${Math.abs(current_balance).toFixed(2)} Dr`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                                return;
                            } else if (current_balance > 0 && drorcr == 'cr' && cramtVal > current_balance) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Entered Credit amount exceeds current balance of ${particularselectname} which is ${Math.abs(current_balance).toFixed(2)} Cr`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                                return;
                            }
                        }
                    }

                    if (totalDr === totalCr) {
                        $('#narration').focus();
                        return;
                    }

                    let chklastcrordr = $(`#drcr${prevIndex}`).val().toLowerCase();
                    let newdrcr = (chklastcrordr === 'dr') ? 'CR' : 'DR';

                    let newtr = `<tr>
                                    <td class="text-center align-middle srno">${index}</td>
                                    <td><input type="text" name="drcr${index}" id="drcr${index}" value="${newdrcr}" class="drcrrow fiveem form-control" readonly></td>
                                    <td>
                                        <select name="particular${index}" id="particular${index}" class="form-control particularsel">
                                            <option value="">Select</option>
                                            @foreach (subgroupall() as $item)
                                                <option data-nature="{{ $item->nature }}" value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td><input type="text" name="dramt${index}" id="dramt${index}" class="form-control fiveem amountrow" placeholder="0.00" ${newdrcr === 'DR' ? '' : 'readonly'}></td>
                                    <td><input type="text" name="cramt${index}" id="cramt${index}" class="form-control fiveem amountrow" placeholder="0.00" ${newdrcr === 'CR' ? '' : 'readonly'}></td>
                                    <td class="text-center align-middle">
                                        <i class="fa fa-trash text-danger remove-row" style="cursor: pointer;" title="Remove Row"></i>
                                    </td>
                                </tr>`;

                    let newtrElement = $(newtr);
                    lastRow.after(newtrElement);
                    refreshTotalRows();
                    refreshSerialNumbers();

                    if (defaultCrac != '' && newdrcr === 'CR') {
                        $(`#particular${index}`).val(defaultCrac).trigger('change');
                    } else if (defaultDrac != '' && newdrcr === 'DR') {
                        $(`#particular${index}`).val(defaultDrac).trigger('change');
                    }

                    newtrElement.find('input, select').first().focus();
                    calculatetotals();
                }
            });

            $(document).on('blur', '.amountrow', function() {
                calculatetotals();
            });

            function closeTdsModal() {
                if ($.fn.modal) {
                    $('#tdsModal').modal('hide');
                } else if (window.bootstrap && bootstrap.Modal && typeof bootstrap.Modal.getOrCreateInstance === 'function') {
                    let modalEl = document.getElementById('tdsModal');
                    let modalInstance = bootstrap.Modal.getOrCreateInstance(modalEl);
                    modalInstance.hide();
                }
            }

            function showTdsModal() {
                if ($.fn.modal) {
                    $('#tdsModal').modal('show');
                } else if (window.bootstrap && bootstrap.Modal && typeof bootstrap.Modal.getOrCreateInstance === 'function') {
                    let modalEl = document.getElementById('tdsModal');
                    let modalInstance = bootstrap.Modal.getOrCreateInstance(modalEl);
                    modalInstance.show();
                }
            }

            function recalculateTdsAmount() {
                let onAmount = parseFloat($('#tds_on_amount').val()) || 0;
                let percent = parseFloat($('#tds_percent').val()) || 0;
                let tdsAmount = (onAmount * percent) / 100;
                $('#tds_amount').val(tdsAmount.toFixed(2));
            }

            $(document).on('input', '#tds_on_amount, #tds_percent', function() {
                recalculateTdsAmount();
            });

            $(document).on('click', '.tds-modal-close', function() {
                tdsWasAppliedWhenOpened = false;
                closeTdsModal();
            });

            $(document).on('click', '#tds_apply', function() {
                if ($('#code').val() === '') {
                    pushNotify('warning', 'Please select TDS A/C before apply');
                    $('#code').focus();
                    return;
                }

                recalculateTdsAmount();
                let tdsRowIndex = getTdsRowIndex();
                let onAmount = parseFloat($('#tds_on_amount').val()) || 0;
                let tdsAmount = parseFloat($('#tds_amount').val()) || 0;
                // let drcr = $('#tdscrdr').val();
                // if (drcr == 'dr') {
                //     $(`#dramt${tdsRowIndex}`).val((onAmount - tdsAmount).toFixed(2));
                // } else if (drcr == 'cr') {
                //     $(`#cramt${tdsRowIndex}`).val((onAmount - tdsAmount).toFixed(2));
                // } else {
                //     pushNotify('error', 'Invalid DR/CR value for TDS entry');
                //     return;
                // }
                $('#tds_applied').val('1');
                calculatetotals();
                refreshTdsEditLink();
                tdsWasAppliedWhenOpened = false;
                closeTdsModal();
                pushNotify('success', 'TDS applied successfully');
            });

            $(document).on('click', '.tds-edit-link', function() {
                let rowIndex = parseInt($(this).data('row-index'), 10) || 0;

                if (rowIndex > 0) {
                    openTdsEntryForRow(rowIndex);
                }
            });

            $(document).on('click', '.remove-row', function() {
                let voucherTable = $('#voucherTableBody');
                let currentRow = $(this).closest('tr');
                let currentRowIndex = currentRow.index() + 1;

                if (voucherTable.find('tr').length <= 1) {
                    pushNotify('warning', 'At least one row must remain in the voucher.');
                    return;
                }

                if (isTdsProtectedRow(currentRowIndex)) {
                    pushNotify('warning', 'TDS row cant be remove');
                    return;
                }

                currentRow.remove();
                reserializeRows();
                calculatetotals();
                refreshTdsEditLink();
            });

            $('#voucherentryform').on('submit', function(e) {
                e.preventDefault();

                let formData = $(this).serialize();

                let totaldr = parseFloat($('#totaldr').val()) || 0;
                let totalcr = parseFloat($('#totalcr').val()) || 0;
                let appliedTdsAmount = $('#tds_applied').val() === '1' ? (parseFloat($('#tds_amount').val()) || 0) : 0;
                let balancedTotalDr = totaldr;

                if (balancedTotalDr !== totalcr) {
                    pushNotify('error', 'Total Debit and Credit amounts must be equal.');
                    return;
                }

                var $lastRow = $('#voucherrowtable tbody tr:last');

                var rowIndex = $lastRow.index() + 1;

                var nature = $lastRow
                    .find('select[name^="particular"] option:selected')
                    .data('nature');

                let particularselectname = $(`#particular${rowIndex} option:selected`).text();

                let current_balance = Number(parseFloat($(`#current_balance${rowIndex}`).val() || 0).toFixed(2));

                let drInput = $(`#dramt${rowIndex}`);
                let crInput = $(`#cramt${rowIndex}`);

                let drVal = parseFloat(drInput.val()) || 0;
                let crVal = parseFloat(crInput.val()) || 0;

                let activeInput = null;
                let baseAmount = 0;
                let drorcr = '';

                if (drVal > 0) {
                    activeInput = drInput;
                    baseAmount = drVal;
                    drorcr = 'dr';
                } else if (crVal > 0) {
                    activeInput = crInput;
                    baseAmount = crVal;
                    drorcr = 'cr';
                } else {
                    pushNotify('warning', 'Please enter a valid amount');
                    return;
                }

                if (nature.toLowerCase() == 'cash') {
                    if (current_balance < baseAmount) {
                        if ("{{ financeparameter()->negtivecashbalance }}" == 'warn') {
                            if (current_balance <= 0) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Negative ${particularselectname} Balance ${Math.abs(current_balance).toFixed(2)} ${current_balance <= 0 ? 'Cr' : 'Dr'}. Do you want to continue?`,
                                    showDenyButton: true,
                                    confirmButtonText: 'Yes',
                                    denyButtonText: 'No',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        submitVoucher(formData);
                                    }
                                });

                                return;
                            } else if (current_balance > 0 && drorcr == 'dr' && baseAmount > current_balance) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Entered Debit amount exceeds current balance of ${particularselectname} which is ${Math.abs(current_balance).toFixed(2)} Dr. Do you want to continue?`,
                                    showDenyButton: true,
                                    confirmButtonText: 'Yes',
                                    denyButtonText: 'No',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        submitVoucher(formData);
                                    }
                                });

                                return;
                            } else if (current_balance > 0 && drorcr == 'cr' && baseAmount > current_balance) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Entered Credit amount exceeds current balance of ${particularselectname} which is ${Math.abs(current_balance).toFixed(2)} Cr. Do you want to continue?`,
                                    showDenyButton: true,
                                    confirmButtonText: 'Yes',
                                    denyButtonText: 'No',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        submitVoucher(formData);
                                    }
                                });

                                return;
                            }
                        } else if ("{{ financeparameter()->negtivecashbalance }}" == 'block') {
                            if (current_balance <= 0) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Negative ${particularselectname} Balance ${Math.abs(current_balance).toFixed(2)} ${current_balance <= 0 ? 'Cr' : 'Dr'}`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                                return;
                            } else if (current_balance > 0 && drorcr == 'dr' && baseAmount > current_balance) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Entered Debit amount exceeds current balance of ${particularselectname} which is ${Math.abs(current_balance).toFixed(2)} Dr`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                                return;
                            } else if (current_balance > 0 && drorcr == 'cr' && baseAmount > current_balance) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Voucher Entry',
                                    text: `Entered Credit amount exceeds current balance of ${particularselectname} which is ${Math.abs(current_balance).toFixed(2)} Cr`,
                                    confirmButtonText: 'OK',
                                    allowEnterKey: true,
                                    didOpen: () => {
                                        Swal.getConfirmButton().focus();
                                    }
                                });
                                return;
                            }
                        }
                    }
                }

                submitVoucher(formData);
            });

            function submitVoucher(formData) {
                $.ajax({
                    url: "{{ route('updatevoucherentry') }}",
                    type: "POST",
                    data: formData,
                    success: function(response) {
                        if (response.success === true) {
                            pushNotify('success', response.message);

                            if (response.askprintyn === 'Y') {
                                let docid = response.docid;
                                Swal.fire({
                                    icon: 'info',
                                    title: 'Do you want to print the voucher?',
                                    showDenyButton: true,
                                    confirmButtonText: 'Yes',
                                    denyButtonText: 'No',
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        window.open(`{{ url('printvoucherentry') }}/${docid}`, '_blank');
                                        setTimeout(function() {
                                            window.location.href = "{{ route('finance.transaction.voucherentry') }}";
                                        }, 1000);
                                    } else if (result.isDenied) {
                                        window.location.href = "{{ route('finance.transaction.voucherentry') }}";
                                    }
                                });
                            } else {
                                window.location.href = "{{ route('finance.transaction.voucherentry') }}";
                            }
                        } else {
                            pushNotify('error', response.message);
                        }
                    },
                    error: function(xhr) {
                        console.log(xhr.responseText);
                        pushNotify('error', 'Unable to save voucher entry.');
                    }
                });
            }

            // $('#voucherentryform').on('submit', function(e) {
            //     e.preventDefault();

            //     let formData = $(this).serialize();
            //     let totaldr = parseFloat($('#totaldr').val()) || 0;
            //     let totalcr = parseFloat($('#totalcr').val()) || 0;

            //     if (totaldr !== totalcr) {
            //         pushNotify('error', 'Total Debit and Credit amounts must be equal.');
            //         return;
            //     }

            //     $.ajax({
            //         url: "{{ route('updatevoucherentry') }}",
            //         type: "POST",
            //         data: formData,
            //         success: function(response) {
            //             if (response.success === true) {
            //                 pushNotify('success', response.message);

            //                 if (response.askprintyn === 'Y') {
            //                     let docid = response.docid;
            //                     Swal.fire({
            //                         icon: 'info',
            //                         title: 'Do you want to print the voucher?',
            //                         showDenyButton: true,
            //                         confirmButtonText: 'Yes',
            //                         denyButtonText: 'No',
            //                     }).then((result) => {
            //                         if (result.isConfirmed) {
            //                             window.open(`{{ url('printvoucherentry') }}/${docid}`, '_blank');
            //                             setTimeout(function() {
            //                                 window.location.href = "{{ route('finance.transaction.voucherentry') }}";
            //                             }, 1000);
            //                         } else if (result.isDenied) {
            //                             window.location.href = "{{ route('finance.transaction.voucherentry') }}";
            //                         }
            //                     });
            //                 } else {
            //                     window.location.href = "{{ route('finance.transaction.voucherentry') }}";
            //                 }
            //             } else {
            //                 pushNotify('error', response.message);
            //             }
            //         },
            //         error: function(xhr) {
            //             console.log(xhr.responseText);
            //             pushNotify('error', 'Unable to update voucher entry.');
            //         }
            //     });
            // });

            function loadVoucherRows() {
                let tbody = $('#voucherTableBody');
                tbody.empty();

                voucherData.forEach((row, index) => {
                    let rowNum = index + 1;
                    let drcr = parseFloat(row.amtdr) > 0 ? 'DR' : 'CR';
                    let dramt = parseFloat(row.amtdr) > 0 ? parseFloat(row.amtdr).toFixed(2) : '';
                    let cramt = parseFloat(row.amtcr) > 0 ? parseFloat(row.amtcr).toFixed(2) : '';
                    let narrationInput = '';
                    let balance = row.balance;
                    let crdr = balance >= 0 ? 'Dr' : 'Cr';
                    let absBalance = Math.abs(balance).toFixed(2);
                    let showtext = `Current Balance: ${absBalance} ${crdr}`;
                    let hiddeninput = `<input type="hidden" name="current_balance${rowNum}" id="current_balance${rowNum}" value="${balance}">`;

                    if (separateNarr == 'Y' && row.narration) {
                        narrationInput = `<textarea name="narration${rowNum}" id="narration${rowNum}" class="form-control mt-1 narrationparticular" rows="1" placeholder="Enter narration">${row.narration}</textarea>`;
                    }

                    let rowHtml = `<tr>
                                    <td class="text-center align-middle srno">${rowNum}</td>
                                    <td><input type="text" name="drcr${rowNum}" id="drcr${rowNum}" value="${drcr}" class="drcrrow fiveem form-control" readonly></td>
                                    <td>
                                        <select name="particular${rowNum}" id="particular${rowNum}" class="form-control particularsel">
                                            <option value="">Select</option>
                                            @foreach (subgroupall() as $item)
                                                <option data-nature="{{ $item->nature }}" value="{{ $item->sub_code }}" ${row.subcode === '{{ $item->sub_code }}' ? 'selected' : ''}>{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        <b class="current-balance-info bg-black p-1 rounded">
                                            ${showtext}
                                            ${hiddeninput}
                                        </b>
                                        ${narrationInput}
                                    </td>
                                    <td><input type="text" name="dramt${rowNum}" id="dramt${rowNum}" class="form-control fiveem amountrow" placeholder="0.00" value="${dramt}" ${drcr === 'CR' ? 'readonly' : ''}></td>
                                    <td><input type="text" name="cramt${rowNum}" id="cramt${rowNum}" class="form-control fiveem amountrow" placeholder="0.00" value="${cramt}" ${drcr === 'DR' ? 'readonly' : ''}></td>
                                    <td class="text-center align-middle">
                                        <i class="fa fa-trash text-danger remove-row" style="cursor: pointer;" title="Remove Row"></i>
                                    </td>
                                </tr>`;

                    tbody.append(rowHtml);
                });

                refreshTotalRows();
                refreshSerialNumbers();
                calculatetotals();
            }

            function calculatetotals() {
                let totaldr = 0;
                let totalcr = 0;

                $('input[name^="dramt"]').each(function() {
                    let val = parseFloat($(this).val());
                    if (!isNaN(val)) {
                        totaldr += val;
                    }
                });

                $('input[name^="cramt"]').each(function() {
                    let val = parseFloat($(this).val());
                    if (!isNaN(val)) {
                        totalcr += val;
                    }
                });

                $('#totaldr').val(totaldr.toFixed(2));
                $('#totalcr').val(totalcr.toFixed(2));
            }

            function checkChequeDetails() {
                let vrtypeText = $('#vrtype_text').val().toLowerCase();

                if (vrtypeText.includes('cash receipt') || vrtypeText.includes('cash payment')) {
                    $('#chequeDetails').hide();
                    $('#tdsrow').hide();
                } else {
                    $('#chequeDetails').show();

                    if (vrtypeText.includes('bank payment') || vrtypeText.includes('journal') || vrtypeText.includes('contra')) {
                        $('#tdsrow').show();
                    } else {
                        $('#tdsrow').hide();
                    }
                }
            }
        });

        function goBack() {
            window.location.href = "{{ route('finance.transaction.voucherentry') }}";
        }

        function printVoucher() {
            let docid = "{{ $data[0]->docid ?? '' }}";
            if (docid) {
                window.open(`{{ url('printvoucherentry') }}/${docid}`, '_blank');
            } else {
                pushNotify('error', 'Document ID not found for printing.');
            }
        }
    </script>
@endsection
