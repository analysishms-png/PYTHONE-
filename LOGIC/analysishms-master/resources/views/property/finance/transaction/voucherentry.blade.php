@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    @include('cdns.datatable')
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
                            <form action="" id="voucherentryform" id="voucherentryform">
                                @csrf
                                <input type="hidden" id="userid" value="{{ Auth::user()->id }}">
                                <input type="hidden" id="username" value="{{ Auth::user()->name }}">
                                <input type="hidden" id="propertyid" value="{{ Auth::user()->property_id }}">
                                <input type="hidden" name="totalrows" id="totalrows" value="1">
                                <div class="row mb-3">
                                    <div class="col-md-12">
                                        <button style="background: #72e872" type="button" data-type="contrabtn" class="btn btn-lg stat-btn">Shift + 6 Contra</button>
                                        <button style="background: #2596be" type="button" data-type="paymentbtn" class="btn btn-lg stat-btn">Shift + 7 Payment</button>
                                        <button style="background: #84ffff" type="button" data-type="receiptbtn" class="btn btn-lg stat-btn">Shift + 8 Receipt</button>
                                        <button style="background: #ffff84" type="button" data-type="journalbtn" class="btn btn-lg stat-btn">Shift + 9 Journal</button>
                                        <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-check"></i> Submit</button>
                                        @include('components.designPanelButton')
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="row justify-content-around">
                                            <div class="">
                                                <div class="form-group">
                                                    <label for="vrdate" class="col-form-label">Date <i
                                                            class="fa-regular fa-calendar mb-1"></i></label>
                                                    <input type="date" value="{{ ncurdate() }}" class="form-control" name="vrdate"
                                                        id="vrdate">
                                                </div>
                                            </div>

                                            <div class="">
                                                <div class="form-group">
                                                    <label for="vrtype" class="col-form-label">Vr. Type</label>
                                                    <select class="form-control" name="vrtype" id="vrtype">
                                                        <option value="">Select</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="">
                                                <div class="form-group">
                                                    <label for="vrno" class="col-form-label">Vr. No.</label>
                                                    <input type="text" name="vrno" id="vrno" class="form-control" readonly>
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
                                                    <th><i class="fa-solid fa-square-caret-down"></i></th>
                                                </thead>

                                                <tbody class="table-body-dark">
                                                    <tr>
                                                        <td class="text-center align-middle srno">1</td>
                                                        <td><input type="text" name="drcr1" id="drcr1" class="drcrrow fiveem form-control" readonly></td>
                                                        <td>
                                                            <select name="particular1" id="particular1" class="form-control particularsel">
                                                                <option value="">Select</option>
                                                                @foreach (subgroupall() as $item)
                                                                    <option data-nature="{{ $item->nature }}" value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </td>
                                                        <td><input type="text" name="dramt1" id="dramt1" class="form-control fiveem amountrow" placeholder="0.00" readonly></td>
                                                        <td><input type="text" name="cramt1" id="cramt1" class="form-control fiveem amountrow" placeholder="0.00" readonly></td>
                                                        <td class="text-center align-middle">
                                                            <i class="fa-solid fa-eraser remove-row" style="cursor: pointer;" title="Remove Row"></i>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th colspan="3" class="text-end">Total</th>
                                                        <th><input type="text" name="totaldr" id="totaldr" class="form-control fiveem" readonly></th>
                                                        <th><input type="text" name="totalcr" id="totalcr" class="form-control fiveem" readonly></th>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>

                                        <div id="narrationrow" class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="narration" class="col-form-label">Narration</label>
                                                    <textarea name="narration" id="narration" class="form-control" rows="4" placeholder="Enter narration"></textarea>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row" id="chequeDetails" style="display: none;">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="chequeno" class="col-form-label">Cheque No.</label>
                                                    <input type="text" name="chequeno" id="chequeno" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="chequedate" class="col-form-label">Cheque Date</label>
                                                    <input type="date" name="chequedate" id="chequedate" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="clearingdate" class="col-form-label">Clearing Date</label>
                                                    <input type="date" name="clearingdate" id="clearingdate" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div style="display: none;" id="tdsrow" class="row offset-9">
                                            <p class="bg-black text-center rounded p-1">(ALT+T) T.D.S. Entry</p>
                                        </div>
                                        @include('property.general.tdswindow')
                                    </div>

                                    <div class="col-md-4">

                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                    <div class="table-responsive">
                        <table id="voucherentrytable" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Voucher Type</th>
                                    <th>User</th>
                                    <th>Account Name</th>
                                    <th>Vno</th>
                                    <th>Date</th>
                                    <th>Narration</th>
                                    <th>Debit Amount</th>
                                    <th>Credit Amount</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $today = date('Y-m-d');
                                    $blockdays = enviromaingeneral()->blockdays;
                                    $laterdays = date('Y-m-d', strtotime("-{$blockdays} days"));
                                @endphp
                                @foreach ($data as $item)
                                    <tr>
                                        <td>{{ $item->vouchername }}</td>
                                        <td>{{ $item->u_name }}</td>
                                        <td>{{ $item->accountname }}</td>
                                        <td>{{ $item->vno }}</td>
                                        <td>{{ date('d-m-Y', strtotime($item->vdate)) }}</td>
                                        <td>{{ $item->narration }}</td>
                                        <td>{{ number_format($item->amtdr, 2) }}</td>
                                        <td>{{ number_format($item->amtcr, 2) }}</td>
                                        <td class="ins">
                                            @php
                                                $canEdit = Auth::user()->superwiser == '1' || ($item->vdate > $laterdays && Auth::user()->superwiser != '0');
                                            @endphp

                                            @if ($item->status == 'Y')
                                                <button type="button" class="btn btn-sm btn-secondary" disabled>Verified</button>
                                                <button type="button" class="btn btn-sm btn-secondary" disabled>Delete</button>
                                            @elseif ($item->status == 'R')
                                                @if ($canEdit)
                                                    <a href="{{ route('editvoucherentry', ['docid' => $item->docid]) }}" class="btn btn-sm btn-warning">
                                                        Rejected
                                                    </a>
                                                @endif

                                                <a href="{{ route('deletevoucherentry', ['docid' => $item->docid]) }}"
                                                    class="btn btn-sm btn-danger"
                                                    onclick="return confirm('Are you sure you want to delete this voucher entry?');">
                                                    Delete
                                                </a>
                                            @else
                                                @if ($canEdit)
                                                    <a href="{{ route('editvoucherentry', ['docid' => $item->docid]) }}" class="btn btn-sm btn-success">
                                                        Edit
                                                    </a>
                                                @endif

                                                <a href="{{ route('deletevoucherentry', ['docid' => $item->docid]) }}"
                                                    class="btn btn-sm btn-danger"
                                                    onclick="return confirm('Are you sure you want to delete this voucher entry?');">
                                                    Delete
                                                </a>
                                            @endif

                                            <a href="{{ route('finance.transaction.printvoucherentry', ['docid' => $item->docid]) }}"
                                                class="btn btn-sm btn-secondary"
                                                target="_blank">
                                                Print
                                            </a>

                                            @if ($item->nature == 'Bank')
                                                <button
                                                    type="button"
                                                    class="btn btn-warning btn-sm cheque-print-btn"
                                                    data-docid="{{ $item->docid }}"
                                                    data-subcode="{{ $item->subcode }}"
                                                    data-cheque_design="{{ $item->cheque_design }}"
                                                    data-date="{{ \Carbon\Carbon::parse($item->vdate)->format('Y-m-d') }}">
                                                    Cheque Print
                                                </button>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('property.finance.transaction.chequemodal')

    <script>
        $(document).ready(function() {

            const vrentrydate = localStorage.getItem('vrentrydate') ?? '{{ ncurdate() }}';

            if (vrentrydate) {
                $('#vrdate').val(vrentrydate);
            }

            $('.cheque-print-btn').on('click', function() {
                let cheque_design = $(this).data('cheque_design');
                if (cheque_design != 0) {
                    $('#cheque_design_id').val($(this).data('cheque_design'));
                }
                $('#print_docid').val($(this).data('docid'));
                $('#ac_payee_name').val('');
                $('#sub_code').val($(this).data('subcode'));
                $('#print_payee').prop('checked', false);
                $('#print_company').prop('checked', false);
                $('#print_date').prop('checked', false);
                $('input[name="signature_type"]').prop('checked', false);

                $('#chequePrintModal').modal('show');

            });

            $('#btnChequePrint').on('click', function() {

                let docid = $('#print_docid').val();

                let cheque_design_id = $('#cheque_design_id').val();

                if (!cheque_design_id) {
                    pushNotify('info', 'Voucher Entry', 'Please select a cheque design before printing.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }

                if (!docid) {
                    pushNotify('info', 'Voucher Entry', 'Document ID is missing. Cannot proceed with cheque print.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }

                const params = $.param({

                    cheque_design_id: $('#cheque_design_id').val(),
                    cheque_date: $('#cheque_date').val(),
                    ac_payee_name: $('#ac_payee_name').val(),
                    print_payee: $('#print_payee').is(':checked') ? 1 : 0,
                    print_company: $('#print_company').is(':checked') ? 1 : 0,
                    print_date: $('#print_date').is(':checked') ? 1 : 0,
                    signature_type: $('input[name="signature_type"]:checked').val() || '',
                    sub_code: $('#sub_code').val(),
                    'cheque_amount': $('#cheque_amount').val()
                });

                window.open(
                    '/printvouchercheque/' + docid + '?' + params,
                    '_blank'
                );

                $('#chequePrintModal').modal('hide');

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
                $('#totalrows').val($('.table-voucher tbody tr').length);
            }

            function refreshSerialNumbers() {
                $('.table-voucher tbody tr').each(function(index) {
                    $(this).find('.srno').text(index + 1);
                });
            }

            function reserializeRows() {
                $('.table-voucher tbody tr').each(function(newIndex) {
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

                particularField.after(`<span class="tds-edit-link bg-light p-1 rounded" data-row-index="${rowIndex}">Edit TDS</span>`);
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

            let table = new DataTable('#voucherentrytable', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    'excel', 'pdf', 'print'
                ]
            });

            $(document).on('change', '#vrdate', function() {
                localStorage.setItem('vrentrydate', $(this).val());

                $('#vrtype').val('');
                $('#vrno').val('');
                validateFinancialYear('#vrdate');
            });

            $(document).on('click', '.stat-btn', function() {
                $('#vrtype').val('');
                $('#vrno').val('');
                let type = $(this).data('type');

                if (type === 'contrabtn') {
                    $('.card').css('background-color', '#72e872');
                    $(this).css('background-color', '#72e872');
                } else if (type === 'paymentbtn') {
                    $('.card').css('background-color', '#2596be');
                    $(this).css('background-color', '#2596be');
                } else if (type === 'receiptbtn') {
                    $('.card').css('background-color', '#84ffff');
                    $(this).css('background-color', '#84ffff');
                } else if (type === 'journalbtn') {
                    $('.card').css('background-color', '#ffff84');
                    $(this).css('background-color', '#ffff84');
                }

                $.ajax({
                    url: "{{ route('getvoucherentrydatavr') }}",
                    type: "POST",
                    data: {
                        _token: '{{ csrf_token() }}',
                        type: type,
                    },
                    success: function(response) {
                        if (response.length > 0) {
                            $('#vrtype').empty().append('<option value="">Select</option>');
                            $.each(response, function(index, item) {
                                if (item.firstdrcr == null || item.firstdrcr == '') {
                                    pushNotify('warning', 'Warning', `Voucher type ${item.v_type} has no default DR/CR defined, please set it up in voucher type master to enable auto population of DR/CR and amounts.`, 'fade', 300, '', '', true, true, true, 10000, 20, 20, 'outline', 'right top');
                                }
                                $('#vrtype').append(`<option data-defaultcrac="${item.defaultcrac ?? ''}" data-defaultdrac="${item.defaultdrac ?? ''}" data-separate_narr="${item.separate_narr ??''}" data-common_narr="${item.common_narr ?? ''}" data-firstdrcr="${item.firstdrcr ?? ''}" value="${item.v_type ?? ''}">${item.description}</option>`);
                            });
                        } else {
                            pushNotify('info', 'No Data Found');
                        }
                    },
                    error: function(xhr) {
                        console.log(xhr.responseText);
                    }
                });
            });

            $(document).on('change', '#vrtype', function(e) {
                let vrtype = $(this).val();
                let firstdrcr = $('#vrtype option:selected').data('firstdrcr');
                let defaultcrac = $('#vrtype option:selected').data('defaultcrac');
                let defaultdrac = $('#vrtype option:selected').data('defaultdrac');
                let common_narr = $('#vrtype option:selected').data('common_narr');
                let separate_narr = $('#vrtype option:selected').data('separate_narr');

                let narrationInput = `<textarea name="narration1" id="narration1" class="form-control mt-1 narrationparticular" rows="1" placeholder="Enter narration"></textarea>`;

                if (common_narr == 'N') {
                    $('#narrationrow').hide();
                    $('#narration').val('');
                } else {
                    $('#narrationrow').show();
                    $('#narration').val('');
                }
                $('#drcr1').val(firstdrcr);
                if (firstdrcr.toLowerCase() === 'dr') {
                    $('#dramt1').removeAttr('readonly');
                    $('#cramt1').attr('readonly', 'readonly').val('');
                    $('#particular1').val(defaultdrac);
                    if (separate_narr == 'Y' && defaultdrac != '') {
                        if ($(`#particular1`).next('textarea').length) {
                            $(`#particular1`).next('textarea').remove();
                        }
                        $(`#particular1`).after(narrationInput);
                    }
                } else if (firstdrcr.toLowerCase() === 'cr') {
                    $('#cramt1').removeAttr('readonly');
                    $('#dramt1').attr('readonly', 'readonly').val('');
                    $('#particular1').val(defaultcrac);
                    if (separate_narr == 'Y' && defaultcrac != '') {
                        if ($(`#particular1`).next('textarea').length) {
                            $(`#particular1`).next('textarea').remove();
                        }
                        $(`#particular1`).after(narrationInput);
                    }
                }

                // Show/Hide cheque details based on vrtype
                let vrtypeText = $('#vrtype option:selected').text().toLowerCase();
                if (vrtypeText.includes('cash receipt') || vrtypeText.includes('cash payment')) {
                    $('#chequeDetails').hide();
                    $('#chequeno').val('');
                    $('#chequedate').val('');
                    $('#clearingdate').val('');
                } else {
                    $('#chequeDetails').show();
                }

                if (vrtypeText.includes('bank payment') || vrtypeText.includes('journal') || vrtypeText.includes('contra')) {
                    $('#tdsrow').show();
                } else {
                    $('#tdsrow').hide();
                }

                let vrdate = $('#vrdate').val();

                if (vrtype !== '') {
                    $.ajax({
                        url: "{{ route('getvoucherentrydatavno') }}",
                        type: "POST",
                        data: {
                            _token: '{{ csrf_token() }}',
                            vrtype: vrtype,
                            vrdate: vrdate
                        },
                        success: function(response) {
                            if (response.success === false) {
                                pushNotify('error', response.message);
                                $('#vrno').val('');
                                return;
                            }
                            $('#vrno').val(parseInt(response.start_srl_no) + 1);
                            $('#drcr1').focus();
                        },
                        error: function(xhr) {
                            console.log(xhr.responseText);
                        }
                    });
                } else {
                    $('#vrno').val('');
                }
            });

            let lastInput = null;

            $(document).on('mousedown keydown', 'input[name^="dramt"], input[name^="cramt"]', function() {
                lastInput = $(this);
            });

            $(document).on('keydown', function(e) {
                if (e.altKey && e.key.toLowerCase() === 't') {
                    e.preventDefault();

                    if (!lastInput || !lastInput.length) return;

                    let vrtypeText = $('#vrtype option:selected').text().toLowerCase();

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

                    let voucherTable = $('.table-voucher tbody');

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


            $(document).on('keydown', function(e) {
                if (e.shiftKey && e.code === 'Digit6') {
                    $('.stat-btn[data-type="contrabtn"]').click();
                    focusshow();
                } else if (e.shiftKey && e.code === 'Digit7') {
                    $('.stat-btn[data-type="paymentbtn"]').click();
                    focusshow();
                } else if (e.shiftKey && e.code === 'Digit8') {
                    $('.stat-btn[data-type="receiptbtn"]').click();
                    focusshow();
                } else if (e.shiftKey && e.code === 'Digit9') {
                    $('.stat-btn[data-type="journalbtn"]').click();
                    focusshow();
                }
            });

            function focusshow() {
                $('#vrtype').focus();
            }

            $(document).on('keydown', '.drcrrow', function(e) {
                let index = $(this).closest('tr').index() + 1;
                let totaldr = 0;
                let totalcr = 0;

                let firstdrcr = $('#vrtype option:selected').data('firstdrcr');
                let defaultcrac = $('#vrtype option:selected').data('defaultcrac');
                let defaultdrac = $('#vrtype option:selected').data('defaultdrac');

                if (e.key.toLowerCase() === 'c' && defaultcrac != '') {
                    $(`#particular${index}`).val(defaultcrac).trigger('change');
                } else if (e.key.toLowerCase() === 'd' && defaultdrac != '') {
                    $(`#particular${index}`).val(defaultdrac).trigger('change');
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
                let totaldr = 0;
                let totalcr = 0;
                let particular = $(this).val();
                let el = $(this);
                let separate_narr = $('#vrtype option:selected').data('separate_narr');

                let particularEl = $(`#particular${index}`);

                particularEl.nextAll('.narrationparticular, .current-balance-info').remove();
                if (separate_narr == 'Y') {
                    let narrationInput = `
                        <textarea 
                            name="narration${index}" 
                            id="narration${index}" 
                            class="form-control mt-1 narrationparticular" 
                            rows="1" 
                            placeholder="Enter narration">
                        </textarea>
                    `;
                    particularEl.after(narrationInput);
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

                calculatetotals();
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
                let isLastRowInTable = currentRow.index() === $('table tbody tr').length - 1;

                if (e.key === 'Tab' && isLastRowInTable) {
                    e.preventDefault();
                    $('#narration').focus();
                    return;
                }

                if (e.key === 'Enter') {
                    e.preventDefault();

                    let voucherTable = $('.table-voucher tbody');
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

                    $('.table-voucher tbody tr').each(function() {
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

                    let newdrcr = (totalDr > totalCr) ? 'CR' : 'DR';

                    let defaultcrac = $('#vrtype option:selected').data('defaultcrac');
                    let defaultdrac = $('#vrtype option:selected').data('defaultdrac');

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

                    if (defaultcrac != '' && newdrcr === 'CR') {
                        $(`#particular${index}`).val(defaultcrac).trigger('change');
                    } else if (defaultdrac != '' && newdrcr === 'DR') {
                        $(`#particular${index}`).val(defaultdrac).trigger('change');
                    }

                    newtrElement.find('input, select').first().focus();

                    calculatetotals();
                }
            });

            $(document).on('blur', '.amountrow', function() {
                calculatetotals();
            });

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
                let voucherTable = $('.table-voucher tbody');
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
                    url: "{{ route('finance.transaction.savevoucherentry') }}",
                    type: "POST",
                    data: formData,
                    success: function(response) {
                        if (response && response.success === true) {
                            pushNotify('success', response.message || 'Voucher saved successfully.');

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
                                        window.open(
                                            `{{ route('finance.transaction.printvoucherentry', ['docid' => '__DOCID__']) }}`.replace('__DOCID__', docid),
                                            '_blank'
                                        );

                                        setTimeout(function() {
                                            window.location.reload();
                                        }, 1000);
                                    } else {
                                        window.location.reload();
                                    }
                                });
                            } else {
                                window.location.reload();
                            }
                        } else {
                            pushNotify('error', response?.message || 'Unable to save voucher entry.');
                        }
                    },
                    error: function(xhr) {
                        console.log(xhr.responseText);
                        pushNotify('error', 'Unable to save voucher entry.');
                    }
                });
            }
        });
    </script>
@endsection
