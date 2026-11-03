<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>Analysis</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('admin/images/favicon.png') }}">
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/spin.js/2.3.2/spin.min.js"></script>

    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

<body>
    <style>
        .form-control {
            max-height: 34px !important;
            min-height: 19px !important;
        }

        .crdisps {
            display: none;
        }
    </style>
    <div class="modal-body">
        <form class="form" name="banquetbillsettle" action="{{ route('banquetbillsubmit') }}" id="banquetbillsettle"
            method="POST">
            @csrf
            <input type="hidden" value="{{ companydata()->comp_name }}" id="compname" name="compname">
            <input type="hidden" value="{{ companydata()->address1 }}" id="address" name="address">
            <input type="hidden" value="{{ companydata()->mobile }}" id="compmob" name="compmob">
            <input type="hidden" value="{{ companydata()->email }}" id="email" name="email">
            <input type="hidden" value="{{ companydata()->logo }}" id="logo" name="logo">
            <input type="hidden" value="{{ companydata()->logo }}" id="logo" name="logo">
            <input type="hidden" name="hallsale1docid" value="{{ $hallsale1->docId }}" id="hallsale1docid">
            <input type="hidden" name="hallsale1Bookingid" value="{{ $hallsale1->bookdocid }}" id="hallsale1Bookingid">
            <input type="hidden" name="fixrestcode" value="{{ $hallsale1->restcode }}" id="fixrestcode">
            <input type="hidden" value="{{ $hallsale1->netamount }}" name="netamount" id="netamount">
            <input type="hidden" value="{{ count($paidrows) > 0 ? '1' : '0' }}" name="existing" id="existing">
            <input type="hidden" value="{{ count($paidrows) > 0 ? count($paidrows) : '' }}" name="rowcount"
                id="rowcount">
            <div class="row">
                <div class="">
                    <label for="charge">Charge/Payment</label>
                    <select class="form-control" name="charge" id="charge">
                        <option value="">Select</option>
                        @php
                            $uniquerecords = [];
                        @endphp
                        @foreach ($revdata as $item)
                            @if (!in_array($item->rev_code, $uniquerecords))
                                <option data-id="{{ $item->nature }}" value="{{ $item->rev_code }}">{{ $item->name }}</option>
                                @php
                                    $uniquerecords[] = $item->rev_code;
                                @endphp
                            @endif
                        @endforeach
                    </select>
                </div>
                <div id="dispcomp" class="none">
                    <label for="company">Company</label>
                    <select class="form-control" name="company" id="company">
                        <option value="">Select</option>
                        @foreach ($company as $item)
                            <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div id="roomsshow" class="none">
                    <label for="roomno">Room No</label>
                    <select name="roomno" id="roomno" class="form-control">
                        <option value="">Select</option>
                        @foreach (bookedroomslist() as $item)
                            <option value="{{ $item->roomno }}">{{ $item->roomno }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="">
                    <label for="amount">Amount</label>
                    <input value="{{ $balance }}" type="number" oninput="allmx(this, 6)" placeholder="Enter Amt."
                        name="amount" id="amount" class="form-control">
                </div>
                <div class="">
                    <label for="narration">Narration</label>
                    <input type="text"  value="" placeholder="Enter Narration" name="narration"
                        id="narration" class="form-control">
                </div>
                <div class="crdisps">
                    <label for="crnumber">Credit Card Number</label>
                    <input type="number" oninput="allmx(this, 16)" value="" placeholder="Enter Credit Card"
                        name="crnumber" id="crnumber" class="form-control">
                </div>
                <div class="crdisps">
                    <label for="holdername">Holder Name</label>
                    <input type="text"  value="" placeholder="Enter Name" name="holdername"
                        id="holdername" class="form-control">
                </div>
                <div class="crdisps">
                    <label for="expdatecr">Exp. Date</label>
                    <input type="date" oninput="PastDtNA(this)" value="" name="expdatecr" id="expdatecr"
                        class="form-control">
                </div>
                <div class="crdisps">
                    <label for="batchno">Batch No.</label>
                    <input type="number" oninput="allmx(this, 10)" value="" placeholder="Enter Batch  No."
                        name="batchno" id="batchno" class="form-control">
                </div>
                <div id="upidisp" class="none">
                    <label for="referencenoupi">UPI Reference No.</label>
                    <input type="text" oninput="allmx(this, 25)" value="" placeholder="Enter Reference No."
                        name="referencenoupi" id="referencenoupi" class="form-control">
                </div>
            </div>

            <h5 class="text-center mt-4 adc-alt bg-facebook text-white p-1">Payment/Charge Details</h5>
            <div class="d-flex">
                <div class="col-md-6">
                    <table class="table text-nowrap table-striped table-item table-hover" id="chargeadded">
                        <thead class="text-nowrap">
                            <tr>
                                <th>Sno.</th>
                                <th>Payment Type</th>
                                <th>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (count($paidrows) > 0)
                                @php
                                    $sno = 1;
                                @endphp
                                @foreach ($paidrows as $rows)
                                    @if ($rows->vtype != 'AD')
                                        <tr>
                                            <td><input type="hidden" value="{{ $sno }}" name="sno{{ $sno }}"
                                                    id="sno{{ $sno }}"><span><button type="button" class="removeItem"><i
                                                            class="fa-regular fa-circle-xmark"></i></button></span>
                                                <p style="display: contents;">{{ $sno }}</p>
                                            </td>
                                            <td><input type="hidden" value="{{ $rows->paytype }}" name="chargetype{{ $sno }}"
                                                    id="chargetype{{ $sno }}">
                                                <input type="hidden" value="{{ $rows->paycode }}" name="chargecode{{ $sno }}"
                                                    id="chargecode{{ $sno }}">
                                                <input type="hidden" value="{{ $rows->comp_code }}" name="compcode{{ $sno }}"
                                                    id="compcode{{ $sno }}">
                                                <input type="hidden" value="{{ $rows->comments }}" name="chargenarration{{ $sno }}"
                                                    id="chargenarration{{ $sno }}">{{ $rows->paytype }} {{ $rows->companyname ? '- ' . $rows->companyname : '' }}
                                            </td>
                                            <td><input type="hidden" class="amtrow" value="{{ $rows->amtcr }}"
                                                    name="amtrow{{ $sno }}" id="amtrow{{ $sno }}">{{ $rows->amtcr }}</td>
                                        </tr>
                                        @php
                                            $sno++;
                                        @endphp
                                    @endif
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
                <div class="col-md-6 offset-3 mt-4">
                    <table id="resettletable" class="table-success boxbg">
                        <thead>
                            <tr>
                                <th class="p-2">Total Amount</th>
                                <td id="totalamt">{{ str_replace(',', '', number_format($hallsale1->netamt, 2)) }}</td>
                            </tr>
                            <tr>
                                <th class="p-2">Paid Amount</th>
                                <td id="paidamt">{{ str_replace(',', '', number_format($paidamt, 2)) }}</td>
                            </tr>
                            <tr>
                                <th class="p-2">Balance</th>
                                <td id="balanceamt">
                                    {{ $balance == '0' ? '0.00' : str_replace(',', '', number_format($balance, 2)) }}
                                </td>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>

            <div class="text-center mt-4">
                <button id="submitBtn" onclick="wantprint()" type="submit" class="btn ti-save btn-primary">
                    Submit</button>
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        $(document).ready(function () {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);
        });
    </script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <!-- Notify JS -->
    <script src="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.min.js"></script>
    <script src="{{ asset('admin/plugins/common/common.min.js') }}"></script>
    <script src="{{ asset('admin/js/publicval.js') }}"></script>
    <script src="{{ asset('admin/js/custom.min.js') }}"></script>
    <script src="{{ asset('admin/js/settings.js') }}"></script>
    <script src="{{ asset('admin/js/gleek.js') }}"></script>
    <script src="{{ asset('admin/js/styleSwitcher.js') }}"></script>
    <script src="{{ asset('admin/js/dashboard/dashboard-1.js') }}"></script>

    <script src="{{ asset('admin/plugins/moment/moment.js') }}"></script>
    <script
        src="{{ asset('admin/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js') }}"></script>
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
    <script>
        let timer;
        $(document).ready(function () {
            var sno = $('#rowcount').val() == '' ? 0 : parseInt($('#rowcount').val());
            $('#charge').on('change', function () {
                let curval = $(this).find('option:selected').text();
                if (curval == 'ROOM SETTLEMENT') {
                    $('#roomsshow').removeClass('none');
                    $('#roomno').prop('required', true);
                    if ($('#checked').val() == 'true') {
                        let opt = `<option value="${roomoccroomno}" selected>${roomoccroomno}</option>`;
                        $('#roomno').append(opt);
                    }
                } else {
                    $('#roomsshow').addClass('none');
                    $('#roomno').prop('required', false);
                }
                $('#company').val('');
                let chargedataid = $(this).find('option:selected').data('id');
                $('#dispcomp').toggleClass('none', chargedataid !== 'Company');
                $('#roomnodisp').toggleClass('none', chargedataid !== 'Room');
                $('#company').val(chargedataid === 'Company' ? '' : $('#company').val(''));
                if (chargedataid !== 'Cash') {
                    setTimeout(() => {
                        $('#narration').val(chargedataid);
                    }, 500);
                }
            });

            $('#amount').keypress(function (e) {
                if (e.which == 13) {
                    e.preventDefault();
                    $('#narration').focus();
                }
            });
            $('#charge').keypress(function (e) {
                if (e.which == 13) {
                    e.preventDefault();
                    $('#amount').focus();
                }
            });
            $('#narration').keypress(function (e) {
                if (e.which == 13) {
                    $('#rowcount').val(sno);
                    sno++;
                    let tbody = $('#chargeadded tbody');
                    let chargetype = $('#charge').find('option:selected').text();
                    let chargecode = $('#charge').find('option:selected').val();
                    let compcode = $('#company').find('option:selected').val() ?? '';
                    let chargenarration = $('#charge').find('option:selected').data('id');
                    let amttmp = $('#amount').val();
                    let amt = parseFloat(amttmp);
                    let balanceamttmp = $('#balanceamt').text();
                    let balanceamt = parseFloat(balanceamttmp);
                    let paidamttmp = $('#paidamt').text();
                    let paidamt = parseFloat(paidamttmp);
                    if (chargecode != '' && amt != 0 && amt != '' && balanceamt != 0) {
                        let newbalanceamt = balanceamt - amt;
                        let newpaidamt = amt + paidamt;
                        $('#balanceamt').text(newbalanceamt.toFixed(2));
                        $('#totalbal').val(newpaidamt.toFixed(2));
                        $('#paidamt').text(newpaidamt.toFixed(2));
                        $('#netamount').val(newpaidamt.toFixed(2));
                        let row = $('<tr>');
                        let data = `
                                    <td><input type="hidden" value="${sno}" name="sno${sno}" id="sno${sno}"><span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span> <p style="display: contents;">${sno}</p></td>
                                    <td><input type="hidden" value="${chargetype}" name="chargetype${sno}" id="chargetype${sno}">
                                        <input type="hidden" value="${chargecode}" name="chargecode${sno}" id="chargecode${sno}">
                                        <input type="hidden" value="${compcode}" name="compcode${sno}" id="compcode${sno}">
                                        <input type="hidden" value="${chargenarration}" name="chargenarration${sno}" id="chargenarration${sno}">${chargetype}</td>
                                    <td><input type="hidden" class="amtrow" value=${amt.toFixed(2)} name="amtrow${sno}" id="amtrow${sno}">${amt.toFixed(2)}</td>
                                `;
                        row.append(data);
                        tbody.append(row);
                    }
                    let balanceamttmp2 = $('#balanceamt').text();
                    let balanceamt2 = parseFloat(balanceamttmp2);
                    if (balanceamt2 == 0) {
                        $('#charge').val('');
                        $('#company').val('');
                        $('#amount').val('');
                        $('#dispcomp').addClass('none');
                    }
                    e.preventDefault();
                    // sno++;
                }
            });

            $('#chargeadded tbody').on('click', '.removeItem', function () {
                let row = $(this).closest('tr');
                let rowIndex = row.index();

                let maxid = $('#maxfullid');
                let amt = parseFloat($(row).find('.amtrow').val());
                let paidamt = parseFloat($('#paidamt').text());
                let newpaidamt = paidamt - amt;
                $('#paidamt').text(newpaidamt.toFixed(2));
                $('#netamount').val(newpaidamt.toFixed(2))
                let balanceamt = parseFloat($('#balanceamt').text());
                let newBalanceAmt = balanceamt + amt;
                $('#balanceamt').text(newBalanceAmt.toFixed(2));
                row.remove();
                sno--;
                // sno = sno == 0 ? 1 : sno;
                let curcount = $('#rowcount').val();
                $('#rowcount').val(curcount - 1);
                $('#chargeadded tbody tr').each(function (index) {
                    let snos = index + 1;
                    $(this).find('td:first p').text(snos);
                    $(this).find('input[type="hidden"]').each(function () {
                        let originalName = $(this).attr('name');
                        let newName = originalName.replace(/\d+$/, snos);
                        $(this).attr('name', newName);
                    });
                });
            });

            $('#banquetbillsettle').on('submit', function (e) {
                e.preventDefault();
                let form = this;
                let balance = parseFloat($('#balanceamt').text());

                if (balance === 0) {
                    wantprint();
                    form.submit();
                } else {
                    Swal.fire({
                        icon: 'info',
                        title: 'Hall Bill Settlement',
                        text: 'Bill Amount And Received Amount Not Matched. Are you sure you want to save?',
                        showCancelButton: true,
                    }).then((r) => {
                        if (r.isConfirmed) {
                            wantprint();
                            form.submit();
                        }
                    });
                }
            });

        });

        $(document).ready(function () {
            $('#charge').on('change', function () {
                let balance = $('#balanceamt').text().trim();   // Remove spaces/new lines
                balance = balance.replace(/,/g, '');            // Remove commas
                balance = balance.replace(/[^\d.-]/g, '');      // Remove Rs, text, symbols

                $('#amount').val(balance);

                var fieldtype;
                let docid = $('#hallsale1docid').val();

                function processResponse() {
                    if (fieldtype == 'P') {
                        let xhrcharge2 = new XMLHttpRequest();
                        xhrcharge2.open('POST', '/fetchadvamtpayhall', true);
                        xhrcharge2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhrcharge2.onreadystatechange = function () {
                            if (xhrcharge2.readyState === 4 && xhrcharge2.status === 200) {
                                let result = JSON.parse(xhrcharge2.responseText);
                            }

                        };
                        xhrcharge2.send(`docid=${docid}&_token={{ csrf_token() }}`);
                    } else if (fieldtype == 'C') {
                        let xhrcharge = new XMLHttpRequest();
                        xhrcharge.open('POST', '/fetchadvamt', true);
                        xhrcharge.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhrcharge.onreadystatechange = function () {
                            if (xhrcharge.readyState === 4 && xhrcharge.status === 200) {
                                let result = JSON.parse(xhrcharge.responseText);

                                if (result.narration != null) {
                                    $('#narration').val(result.narration);
                                }
                            }

                        };
                        xhrcharge.send(`rev_code=${code}&_token={{ csrf_token() }}`);
                    }
                }
                code = $(this).val();

                let xhrnature = new XMLHttpRequest();
                xhrnature.open('POST', '/fetchrevnature', true);
                xhrnature.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhrnature.onreadystatechange = function () {
                    if (xhrnature.readyState === 4 && xhrnature.status === 200) {
                        let result = JSON.parse(xhrnature.responseText);
                        fieldtype = result.fieldtype;
                        $('#nature').val(result.nature);
                        if (result.nature == 'Cash') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').addClass('none');
                            $('#referencenoupi').val('');
                            $('#narration').val('Cash Received');
                        } else if (result.nature == 'Credit Card') {
                            $('#upidisp').addClass('none');
                            $('#referencenoupi').val('');
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'block';
                            });
                        } else if (result.nature == 'UPI') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').removeClass('none');
                        } else if (result.nature == 'Cheque') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').addClass('none');
                            $('#referencenoupi').val('');
                            $('#checknodisp').removeClass('none');
                            $('#checkno').attr('required', true);
                        } else {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').addClass('none');
                            $('#referencenoupi').val('');
                            $('#checknodisp').addClass('none');
                            $('#checkno').attr('required', false);
                        }
                        processResponse();
                    }

                };
                xhrnature.send(`rev_code=${code}&_token={{ csrf_token() }}`);
            });
        });
        var amount;

        function wantprint() {
            let checkbox = $('#printreceipt');
            let charge = $('#charge').val();
            amount = $('#amount').val();

            var a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '];
            var b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

            function inWords(num) {
                if ((num = num.toString()).length > 9) return 'overflow';
                n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
                if (!n) return;
                var str = '';
                str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
                str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
                str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
                str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
                str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'only ' : '';
                return str;
            }

            let fixval = Math.abs(amount);
            let textamount = inWords(fixval);

            if (checkbox.prop('checked') && charge != '' && amount != '') {
                let compname = $('#compname').val();
                let address = $('#address').val();
                let name = $('#name').val();
                let mob = $('#compmob').val();
                let email = $('#email').val();
                let roomno = $('#rooomoccroomno').val();
                let nature = $('#nature').val();
                let u_name = $('#u_name').val();
                let logo = 'storage/admin/property_logo/' + $('#logo').val();
                let filetoprint = 'advancereceipt';
                let curdate = new Date().toLocaleDateString('en-IN', {
                    day: '2-digit',
                    month: '2-digit',
                    year: 'numeric'
                });

                let newWindow = window.open(filetoprint, '_blank');

                newWindow.onload = function () {
                    $('#compname', newWindow.document).text(compname);
                    $('#address', newWindow.document).text(address);
                    $('#name', newWindow.document).text(name);
                    $('#phone', newWindow.document).text(mob);
                    $('#email', newWindow.document).text(email);
                    $('#roomno', newWindow.document).text(roomno);
                    $('#amount', newWindow.document).text(amount);
                    $('#textamount', newWindow.document).text(textamount);
                    $('#curdate', newWindow.document).text(curdate);
                    $('#nature', newWindow.document).text(nature);
                    $('#u_name', newWindow.document).text(u_name);
                    $('#complogo', newWindow.document).attr('src', logo);
                    $('#compname2', newWindow.document).text(compname);
                    $('#address2', newWindow.document).text(address);
                    $('#name2', newWindow.document).text(name);
                    $('#phone2', newWindow.document).text(mob);
                    $('#email2', newWindow.document).text(email);
                    $('#roomno2', newWindow.document).text(roomno);
                    $('#amount2', newWindow.document).text(amount);
                    $('#textamount2', newWindow.document).text(textamount);
                    $('#curdate2', newWindow.document).text(curdate);
                    $('#nature2', newWindow.document).text(nature);
                    $('#u_name2', newWindow.document).text(u_name);
                    $('#complogo2', newWindow.document).attr('src', logo);

                    setTimeout(function () {
                        newWindow.print();
                        newWindow.close();
                    }, 500);
                };
            }
        }



        $(document).ready(function () {
            $('#charge').on('change', function () {
                var fieldtype;
                let sno1 = $('#sno1').val();

                function processResponse() {
                    if (fieldtype == 'P') {
                        let xhrcharge2 = new XMLHttpRequest();
                        xhrcharge2.open('POST', '/fetchadvamtpay', true);
                        xhrcharge2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhrcharge2.onreadystatechange = function () {
                            if (xhrcharge2.readyState === 4 && xhrcharge2.status === 200) {
                                let result = JSON.parse(xhrcharge2.responseText);

                                // if (result != null) {
                                //     $('#amount').val(result);
                                // } else {
                                //     $('#amount').val('');
                                // }
                            }

                        };
                        xhrcharge2.send(`rev_code=${code}&docid=${docid}&sno1=${sno1}&_token={{ csrf_token() }}`);
                    } else if (fieldtype == 'C') {
                        let xhrcharge = new XMLHttpRequest();
                        xhrcharge.open('POST', '/fetchadvamt', true);
                        xhrcharge.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhrcharge.onreadystatechange = function () {
                            if (xhrcharge.readyState === 4 && xhrcharge.status === 200) {
                                let result = JSON.parse(xhrcharge.responseText);

                                // if (result.amount != null) {
                                //     $('#amount').val(result.amount);
                                // } else {
                                //     $('#amount').val('');
                                // }
                                if (result.narration != null) {
                                    $('#narration').val(result.narration);
                                }
                            }

                        };
                        xhrcharge.send(`rev_code=${code}&_token={{ csrf_token() }}`);
                    }
                }
                code = $(this).val();
                docid = $('#docid').val();

                let xhrnature = new XMLHttpRequest();
                xhrnature.open('POST', '/fetchrevnature', true);
                xhrnature.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhrnature.onreadystatechange = function () {
                    if (xhrnature.readyState === 4 && xhrnature.status === 200) {
                        let result = JSON.parse(xhrnature.responseText);
                        fieldtype = result.fieldtype;
                        $('#nature').val(result.nature);
                        if (result.nature == 'Cash') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').addClass('none');
                            $('#referencenoupi').val('');
                            $('#narration').val('Cash Received');
                        } else if (result.nature == 'Credit Card') {
                            $('#upidisp').addClass('none');
                            $('#referencenoupi').val('');
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'block';
                            });
                            $('#narration').val(result.nature);
                        } else if (result.nature == 'UPI') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').removeClass('none');
                            $('#narration').val(result.nature);
                        } else if (result.nature == 'Cheque') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').addClass('none');
                            $('#referencenoupi').val('');
                            $('#checknodisp').removeClass('none');
                            $('#checkno').attr('required', true);
                            $('#narration').val(result.nature);
                        } else {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function (element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').addClass('none');
                            $('#referencenoupi').val('');
                            $('#checknodisp').addClass('none');
                            $('#checkno').attr('required', false);
                            // $('#narration').val('');
                        }
                        processResponse();
                    }

                };
                xhrnature.send(`rev_code=${code}&_token={{ csrf_token() }}`);


            });
        });
        $(document).ready(function () {
            $('#charge').on('change', function () {
                let chargedataid = $(this).find('option:selected').data('id');
                if (chargedataid != 'Cash') {
                    setTimeout(() => {
                        $('#narration').val(chargedataid);
                    }, 500);
                }
            });
            setInterval(() => {
                $('#curtime').val(curtimes());
            }, 1000);
            $('#billno').trigger('input');
        });
    </script>
    {{-- @endsection --}}