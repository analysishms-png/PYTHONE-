        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        @include('cdns.datatable')
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Pignose Calender -->
            <link href="{{ asset('admin/plugins/pg-calendar/css/pignose.calendar.min.css') }}" rel="stylesheet">
            <!-- Chartist -->
            <link rel="stylesheet" href="{{ asset('admin/plugins/chartist/css/chartist.min.css') }}">
            <link rel="stylesheet" href="{{ asset('admin/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css') }}">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
                integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />
            <!-- Custom Stylesheet -->
            <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">
            <link
                href="{{ asset('admin/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css') }}"
                rel="stylesheet">
            <!-- Color picker plugins css -->
            <link href="{{ asset('admin/plugins/jquery-asColorPicker-master/css/asColorPicker.css') }}" rel="stylesheet">
            <!-- Daterange picker plugins css -->
            <link href="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.css') }}" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
            <!-- Notify CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.css" />
            <style>
                #guestledger tbody tr.bgchangegtr td {
                    background-color: #08ed3e !important;
                }

                #advanceLedgerActions {
                    display: none;
                    float: right;
                    gap: 8px;
                    margin-left: 12px;
                }

                #advanceLedgerActions .btn {
                    padding: 0.55rem 1rem;
                }
            </style>
        </head>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        @if (isset($message))
            <script>
                Swal.fire({
                    icon: '{{ $type }}',
                    title: '{{ $type == 'success' ? 'Success' : 'Error' }}',
                    text: '{{ $message }}',
                    timer: 5000,
                    showConfirmButton: true
                });
            </script>
        @endif

        @if (session('success'))
            <script>
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: '{{ session('success') }}',
                });
                setTimeout(function() {
                    Swal.close();
                }, 5000);
            </script>
        @endif
        @if (session('error'))
            <script>
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: '{{ session('error') }}',
                });
                setTimeout(function() {
                    Swal.close();
                }, 5000);
            </script>
        @endif

        <body>
            <div style="font-size: small;" class="col-md-12">
                <input type="hidden" id="docid" value="{{ $roomdataparticular->docid }}">
                <input type="hidden" id="sno1" value="{{ $roomdataparticular->sno1 }}">
                <h3 class="text-center BCH-alt border-bottom-1">Charge Details</h3>
                <h5 class="ada"><span>Room Rate: {{ $roomdataparticular->roomrate ?? '0' }}</span> <span>Plan Amt: {{ $roomdataparticular->planamt ?? '0' }}</span></h5>
                <div id="advanceLedgerActions">
                    <button type="button" id="printAdvanceReceiptBtn" class="btn btn-success btn-sm">
                        Print Receipt <i class="fa-solid fa-print"></i>
                    </button>
                    <button type="button" id="editAdvanceReceiptBtn" class="btn btn-warning btn-sm">
                        Edit <i class="fa-solid fa-pen-to-square"></i>
                    </button>
                </div>
                {{-- <span style="float: inline-end;">Use <code>Shift + D</code> To Delete Rows</span> --}}
                <div id="alertspandiv" style="display: none;" class="alert alert-primary alert-dismissible fade show" role="alert">
                    <strong><span id="alertmsg"></span></strong>
                </div>

                <div class="table-responsive">
                    <table style="font-size: small;" id="guestledger"
                        class="table table-hover guestledger table-download-with-search table-hover table-striped">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Particulars</th>
                                <th>Debit</th>
                                <th>Credit</th>
                                <th>Balance</th>
                                <th>Dr/Cr</th>
                                <th>User</th>
                                <th>Split</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $totalDebit = 0;
                                $totalCredit = 0;
                                $prevBalance = 0;
                                $sn = 1;
                            @endphp
                            @foreach ($data as $ledger)
                                @if ((!empty($ledger->refdocid) && substr($ledger->comments, 0, 7) == 'Advance') || ($ledger->vtype == 'REC' || $ledger->vtype == 'REV'))
                                    @php
                                        $trcolor = 'pink';
                                        $trdata = 'advance';
                                    @endphp
                                @elseif($ledger->paycode == 'TOUT' . companydata()->propertyid)
                                    @php
                                        $trcolor = '#6868ff';
                                        $trdata = 'checkout';
                                    @endphp
                                @else
                                    @php
                                        $trcolor = 'white';
                                        $trdata = '';
                                    @endphp
                                @endif
                                <tr data-type="{{ $trdata }}" style="background: {{ $trcolor }}" data-value="{{ $ledger->vtype }}" data-id="{{ $ledger->vno }}" docid="{{ $ledger->docid }}" sno1="{{ $ledger->sno1 }}" data-vprefix="{{ $ledger->vprefix }}" sno="{{ $ledger->sno }}">
                                    <td style="white-space: nowrap;">{{ date('d-m-Y', strtotime($ledger->vdate)) }}</td>
                                    <td>{{ $ledger->comments }}</td>
                                    <td>{{ $ledger->amtdr ?? '0' }}</td>
                                    <td>{{ $ledger->amtcr ?? '0' }}</td>
                                    <td class="balance"></td>
                                    <td class="dr-cr"></td>
                                    <td>{{ $ledger->u_name }}</td>
                                    <td data-value="{{ $ledger->comments }}" class="split">
                                        <input type="text" class="splitinput" name="split_value_{{ $sn }}" id="split_value_{{ $sn }}" value="{{ $ledger->split ?? '1' }}">
                                    </td>
                                </tr>
                                <?php
                                $totalDebit += $ledger->amtdr;
                                $totalCredit += $ledger->amtcr;
                                $sn++;
                                ?>
                            @endforeach
                            <tr style="font-weight: 600;">
                                <td><b>Total</b></td>
                                <td>‎ </td>
                                <td id="totalDebit">{{ number_format($totalDebit, 2) }}</td>
                                <td id="totalCredit">{{ number_format($totalCredit, 2) }}</td>
                                <td>{{ number_format(abs($totalDebit - $totalCredit), 2) }}</td>
                                <td>{{ $totalDebit > $totalCredit ? 'Dr' : 'Cr' }}</td>
                                <td>‎ </td>
                                <td>‎ </td>
                            </tr>
                        </tbody>
                    </table>

                    <script>
                        $(document).ready(function() {
                            let dataid;
                            let datavalue;
                            let vprefix;
                            let selectedAdvanceRow = null;
                            const canEditAdvanceCharge = "{{ Auth::user()->useroradmin }}" === 'admin' ||
                                "{{ optional(userdata())->allowadvancechargeedit }}" === 'Y';

                            function showAdvanceActions(show) {
                                if (show) {
                                    $('#advanceLedgerActions').css('display', 'inline-flex');
                                    $('#editAdvanceReceiptBtn').toggle(canEditAdvanceCharge);
                                } else {
                                    $('#advanceLedgerActions').hide();
                                }
                            }

                            function openAdvanceEditModal() {
                                if ($.fn.modal) {
                                    $('#advanceLedgerEditModal').modal('show');
                                } else {
                                    $('#advanceLedgerEditModal').show();
                                }
                            }

                            function closeAdvanceEditModal() {
                                if ($.fn.modal) {
                                    $('#advanceLedgerEditModal').modal('hide');
                                } else {
                                    $('#advanceLedgerEditModal').hide();
                                }
                            }

                            $('.dt-buttons').append($('#advanceLedgerActions'));

                            $(document).on('click', '#guestledger tbody tr', function() {
                                $('#guestledger tbody tr').removeClass('bgchangegtr');
                                $(this).addClass('bgchangegtr');
                                dataid = $(this).data('id');
                                datavalue = $(this).data('value');
                                vprefix = $(this).data('vprefix');
                                selectedAdvanceRow = null;

                                if ($(this).data('type') === 'advance') {
                                    selectedAdvanceRow = {
                                        docid: $(this).attr('docid'),
                                        sno: $(this).attr('sno')
                                    };
                                    showAdvanceActions(true);
                                } else {
                                    showAdvanceActions(false);
                                }
                            });

                            $(document).on('click', '#printAdvanceReceiptBtn', function() {
                                if (!selectedAdvanceRow) {
                                    pushNotify('warning', 'Guest Ledger', 'Please select an advance row first.');
                                    return;
                                }

                                let params = new URLSearchParams(selectedAdvanceRow);
                                window.open(`{{ route('guestledger.advance.receipt') }}?${params.toString()}`, '_blank');
                            });

                            $(document).on('click', '#editAdvanceReceiptBtn', function() {
                                if (!selectedAdvanceRow) {
                                    pushNotify('warning', 'Guest Ledger', 'Please select an advance row first.');
                                    return;
                                }

                                let params = new URLSearchParams(selectedAdvanceRow);

                                fetch(`{{ route('guestledger.advance.entry') }}?${params.toString()}`)
                                    .then(response => response.json())
                                    .then(data => {
                                        if (!data.success) {
                                            pushNotify('error', 'Guest Ledger', data.message || 'Unable to load advance row.');
                                            return;
                                        }

                                        $('#advance_edit_docid').val(data.row.docid);
                                        $('#advance_edit_sno').val(data.row.sno);
                                        $('#advance_edit_paycode').val(data.row.paycode);
                                        $('#advance_edit_amount').val(data.row.amount);
                                        $('#advance_edit_cardno').val(data.row.cardno || '');
                                        $('#advance_edit_cardholder').val(data.row.cardholder || '');
                                        $('#advance_edit_expdate').val(data.row.expdate || '');
                                        $('#advance_edit_bookno').val(data.row.bookno || '');
                                        $('#advance_edit_chqno').val(data.row.chqno || '');
                                        $('#advance_edit_upi_reference').val(data.row.chqno || '');
                                        $('#advance_edit_comp_code').val(data.row.comp_code || '');
                                        toggleAdvanceEditFields();
                                        openAdvanceEditModal();
                                    })
                                    .catch(error => {
                                        console.log(error);
                                        pushNotify('error', 'Guest Ledger', 'Unable to load advance row.');
                                    });
                            });

                            $(document).on('click', '.advance-modal-close', function() {
                                closeAdvanceEditModal();
                            });

                            $('#advanceLedgerEditForm').on('submit', function(e) {
                                e.preventDefault();

                                $('#advanceLedgerUpdateBtn').prop('disabled', true).text('Updating...');

                                fetch(`{{ route('guestledger.advance.update') }}`, {
                                        method: 'POST',
                                        headers: {
                                            'Content-Type': 'application/json',
                                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                                        },
                                        body: JSON.stringify({
                                            docid: $('#advance_edit_docid').val(),
                                            sno: $('#advance_edit_sno').val(),
                                            paycode: $('#advance_edit_paycode').val(),
                                            amount: $('#advance_edit_amount').val(),
                                            cardno: $('#advance_edit_cardno').val(),
                                            cardholder: $('#advance_edit_cardholder').val(),
                                            expdate: $('#advance_edit_expdate').val() || null,
                                            bookno: $('#advance_edit_bookno').val(),
                                            chqno: $('#advance_edit_chqno').val(),
                                            upi_reference: $('#advance_edit_upi_reference').val(),
                                            comp_code: $('#advance_edit_comp_code').val()
                                        })
                                    })
                                    .then(response => response.json())
                                    .then(data => {
                                        if (data.success) {
                                            pushNotify('success', 'Guest Ledger', data.message || 'Advance row updated successfully.');
                                            closeAdvanceEditModal();
                                            setTimeout(() => location.reload(), 800);
                                            return;
                                        }

                                        pushNotify('error', 'Guest Ledger', data.message || 'Unable to update advance row.');
                                    })
                                    .catch(error => {
                                        console.log(error);
                                        pushNotify('error', 'Guest Ledger', 'Unable to update advance row.');
                                    })
                                    .finally(() => {
                                        $('#advanceLedgerUpdateBtn').prop('disabled', false).text('Update');
                                    });
                            });

                            function resetAdvanceEditOptionalFields(clearValues = false) {
                                $('.advance-edit-credit-card, .advance-edit-cheque, .advance-edit-upi, .advance-edit-company').hide();

                                if (clearValues) {
                                    $('#advance_edit_cardno').val('');
                                    $('#advance_edit_cardholder').val('');
                                    $('#advance_edit_expdate').val('');
                                    $('#advance_edit_bookno').val('');
                                    $('#advance_edit_chqno').val('');
                                    $('#advance_edit_upi_reference').val('');
                                    $('#advance_edit_comp_code').val('');
                                }
                            }

                            function toggleAdvanceEditFields(clearValues = false) {
                                let selected = $('#advance_edit_paycode option:selected');
                                let nature = (selected.data('nature') || '').toString().toLowerCase();
                                let payName = (selected.data('name') || selected.text() || '').toString().toLowerCase();

                                resetAdvanceEditOptionalFields(clearValues);

                                if (nature === 'credit card') {
                                    $('.advance-edit-credit-card').show();
                                } else if (nature === 'upi') {
                                    $('.advance-edit-upi').show();
                                } else if (nature === 'cheque') {
                                    $('.advance-edit-cheque').show();
                                }

                                if (payName.includes('bill to company')) {
                                    $('.advance-edit-company').show();
                                }
                            }

                            $(document).on('change', '#advance_edit_paycode', function() {
                                toggleAdvanceEditFields(true);
                            });

                            $(document).on('keydown', function(event) {
                                if (event.shiftKey && event.key === 'D') {
                                    var selectedRows = $('#guestledger tbody tr[data-id="' + dataid + '"]');
                                    if (selectedRows.length > 0) {
                                        Swal.fire({
                                            icon: 'info',
                                            title: 'Are you sure?',
                                            text: 'Enter the reason for deleting:',
                                            input: 'text',
                                            inputPlaceholder: 'Reason',
                                            inputValue: 'Wrong Entry',
                                            showCancelButton: true,
                                            confirmButtonText: 'Delete',
                                            cancelButtonText: 'Cancel',
                                            reverseButtons: true
                                        }).then((result) => {
                                            if (result.isConfirmed) {
                                                var reason = result.value;
                                                if (reason) {
                                                    var xhrledger = new XMLHttpRequest();
                                                    xhrledger.open('POST', '/deleteguestledger', true);
                                                    xhrledger.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                                                    xhrledger.onreadystatechange = function() {
                                                        if (xhrledger.readyState === 4 && xhrledger.status === 200) {
                                                            var result = JSON.parse(xhrledger.responseText);

                                                            if (result.success) {
                                                                $('#alertspandiv').css('display', 'block');
                                                                $('#alertmsg').text('Selected Guest Ledger has been deleted');

                                                                setTimeout(() => {
                                                                    $('#alertmsg').text('');
                                                                    $('#alertspandiv').css('display', 'none');
                                                                    location.reload();
                                                                }, 2000);
                                                                selectedRows.remove();
                                                            } else {
                                                                $('#alertspandiv').css('display', 'block');
                                                                $('#alertmsg').text(result.message);

                                                                setTimeout(() => {
                                                                    $('#alertmsg').text('');
                                                                    $('#alertspandiv').css('display', 'none');
                                                                }, 3000);
                                                            }
                                                        }
                                                    };
                                                    xhrledger.send(`dataid=${dataid}&datavalue=${datavalue}&vprefix=${vprefix}&reason=${reason}&_token={{ csrf_token() }}`);
                                                } else {
                                                    Swal.fire('No reason provided', 'You need to enter a reason to proceed.', 'info');
                                                }
                                            }
                                        });
                                    }
                                }
                            });

                            let table = new DataTable('#guestledger', {
                                dom: 'Bfrtip',
                                ordering: true,
                                order: [],
                                buttons: [{
                                        extend: 'excelHtml5',
                                        title: 'Guest Ledger Data',
                                        exportOptions: {
                                            columns: ':visible'
                                        }
                                    },
                                    {
                                        text: '<i class="fa-solid fa-print"></i> Print',
                                        className: 'btn-print-guest-ledger',
                                        action: function(e, dt, node, config) {

                                            let docid = $('#docid').val();
                                            let sno1 = $('#sno1').val();

                                            if (!docid || !sno1) {
                                                pushNotify('error', 'Guest Ledger', 'Missing required parameters for printing.');
                                                return;
                                            }

                                            let url = `{{ route('frontoffice.prints.guestledger') }}?docid=${encodeURIComponent(docid)}&sno1=${encodeURIComponent(sno1)}`;

                                            window.open(url, '_blank');

                                        }
                                    }
                                ]
                            });

                            // Split value change handler
                            let timer;
                            $('#guestledger tbody').on('input', 'input[name^="split_value_"]', function() {
                                let curval = $(this).val();
                                let currentRow = $(this).closest('tr');
                                let docid = currentRow.attr('docid');
                                let sno1 = currentRow.attr('sno1');
                                let sno = currentRow.attr('sno');
                                var csrftoken = "{{ csrf_token() }}";
                                clearTimeout(timer);
                                timer = setTimeout(function() {
                                    const postdata = {
                                        'docid': docid,
                                        'sno1': sno1,
                                        'sno': sno,
                                        'split': curval,
                                    };
                                    const option = {
                                        method: 'POST',
                                        headers: {
                                            'Content-Type': 'application/json',
                                            'X-CSRF-TOKEN': csrftoken
                                        },
                                        body: JSON.stringify(postdata)
                                    };

                                    fetch('/postsplit', option)
                                        .then(response => response.json())
                                        .then(data => {
                                            pushNotify('success', 'Guest Ledger', data.message, 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                                        })
                                        .catch(error => {
                                            console.log(error);
                                        })

                                    let rowsWithSameDocid = $('#guestledger tbody').find(`tr[docid="${docid}"]`);

                                    rowsWithSameDocid.each(function() {
                                        $(this).find('input[name^="split_value_"]').val(curval);
                                    });
                                }, 1000);
                            });

                        });

                        var rows = document.querySelectorAll('tbody tr');
                        var prevBalance = 0;
                        var totalBalance = 0;

                        rows.forEach((row, index) => {
                            var debitCell = row.querySelector('td:nth-child(3)');
                            var creditCell = row.querySelector('td:nth-child(4)');
                            var balanceCell = row.querySelector('.balance');
                            var drCrCell = row.querySelector('.dr-cr');
                            if (debitCell && creditCell && balanceCell && drCrCell) {
                                var debit = parseFloat(debitCell.innerText);
                                var credit = parseFloat(creditCell.innerText);
                                var balance = prevBalance + debit - credit;
                                drCrCell.innerText = balance < 0 ? 'Cr' : 'Dr';
                                balanceCell.innerText = Math.abs(balance.toFixed(2));
                                prevBalance = balance;
                                var absolutebalance = Math.abs(balance.toFixed(2));
                                totalBalance += absolutebalance;
                            } else {
                                // console.log('Cells not found');
                            }
                        });
                    </script>

                    </table>

                </div>
            </div>

            <div class="modal fade" id="advanceLedgerEditModal" tabindex="-1" role="dialog" aria-labelledby="advanceLedgerEditModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form id="advanceLedgerEditForm">
                            @csrf
                            <input type="hidden" name="docid" id="advance_edit_docid">
                            <input type="hidden" name="sno" id="advance_edit_sno">
                            <div class="modal-header">
                                <h5 class="modal-title" id="advanceLedgerEditModalLabel">Edit Advance Ledger Row</h5>
                                <button type="button" class="close advance-modal-close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="advance_edit_paycode">Pay Type</label>
                                    <select name="paycode" id="advance_edit_paycode" class="form-control" required>
                                        <option value="">Select</option>
                                        @foreach ($advancePayOptions as $option)
                                            <option value="{{ $option->rev_code }}" data-nature="{{ $option->nature }}" data-name="{{ $option->name }}">{{ $option->name }}{{ $option->nature ? ' - ' . $option->nature : '' }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="advance_edit_amount">Amount</label>
                                    <input type="number" step="0.01" name="amount" id="advance_edit_amount" class="form-control" required>
                                    <small class="form-text text-muted">Use a negative amount for refund/payment out.</small>
                                </div>
                                <div class="form-group advance-edit-company" style="display: none;">
                                    <label for="advance_edit_comp_code">Company</label>
                                    <select name="comp_code" id="advance_edit_comp_code" class="form-control">
                                        <option value="">Select</option>
                                        @foreach ($advanceCompanyOptions as $company)
                                            <option value="{{ $company->sub_code }}">{{ $company->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group advance-edit-cheque" style="display: none;">
                                    <label for="advance_edit_chqno">Check No</label>
                                    <input type="text" name="chqno" id="advance_edit_chqno" class="form-control" placeholder="Enter Check No.">
                                </div>
                                <div class="form-group advance-edit-upi" style="display: none;">
                                    <label for="advance_edit_upi_reference">UPI Reference No.</label>
                                    <input type="text" name="upi_reference" id="advance_edit_upi_reference" class="form-control" placeholder="Enter UPI Reference No.">
                                </div>
                                <div class="form-group advance-edit-credit-card" style="display: none;">
                                    <label for="advance_edit_cardno">Credit Card Number</label>
                                    <input type="text" name="cardno" id="advance_edit_cardno" class="form-control" placeholder="Enter Credit Card">
                                </div>
                                <div class="form-group advance-edit-credit-card" style="display: none;">
                                    <label for="advance_edit_cardholder">Holder Name</label>
                                    <input type="text" name="cardholder" id="advance_edit_cardholder" class="form-control" placeholder="Enter Name">
                                </div>
                                <div class="form-group advance-edit-credit-card" style="display: none;">
                                    <label for="advance_edit_expdate">Exp. Date</label>
                                    <input type="date" name="expdate" id="advance_edit_expdate" class="form-control">
                                </div>
                                <div class="form-group advance-edit-credit-card" style="display: none;">
                                    <label for="advance_edit_bookno">Batch No.</label>
                                    <input type="text" name="bookno" id="advance_edit_bookno" class="form-control" placeholder="Enter Batch No.">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary advance-modal-close" data-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-primary" id="advanceLedgerUpdateBtn">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>

        <script src="{{ asset('admin/plugins/common/common.min.js') }}"></script>
        <script src="{{ asset('admin/js/custom.min.js') }}"></script>
        <script src="{{ asset('admin/js/settings.js') }}"></script>
        <script src="{{ asset('admin/js/gleek.js') }}"></script>
        <script src="{{ asset('admin/js/styleSwitcher.js') }}"></script>
        <script src="{{ asset('admin/js/dashboard/dashboard-1.js') }}"></script>

        <script src="{{ asset('admin/plugins/moment/moment.js') }}"></script>
        <script src="{{ asset('admin/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js') }}"></script>
        <!-- Clock Plugin JavaScript -->
        <script src="{{ asset('admin/plugins/clockpicker/dist/jquery-clockpicker.min.js') }}"></script>
        <!-- Date Picker Plugin JavaScript -->
        <script src="{{ asset('admin/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>
        <!-- Date range Plugin JavaScript -->
        <script src="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>
        <script src="{{ asset('admin/js/plugins-init/form-pickers-init.js') }}"></script>

        <!-- Color Picker Plugin JavaScript -->
        <script src="{{ asset('admin/plugins/jquery-asColorPicker-master/libs/jquery-asColor.js') }}"></script>
        <script src="{{ asset('admin/plugins/jquery-asColorPicker-master/libs/jquery-asGradient.js') }}"></script>
        <script src="{{ asset('admin/plugins/jquery-asColorPicker-master/dist/jquery-asColorPicker.min.js') }}"></script>

        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
        <!-- Notify JS -->
        <script src="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.min.js"></script>
