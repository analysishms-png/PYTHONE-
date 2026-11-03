@extends('property.layouts.main')
@section('main-container')
    <style>
        .form-control {
            max-height: 34px !important;
            min-height: 19px !important;
        }

        .crdisps {
            display: none;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="modal-body">
                                <form class="form" name="roomsettleformupdate" action="{{ route('roomsettlestoreupdate') }}"
                                    id="roomsettleformupdate" method="POST">
                                    @csrf
                                    <input type="hidden" value="{{ $companydata->comp_name }}" id="compname" name="compname">
                                    <input type="hidden" value="{{ $companydata->address1 }}" id="address" name="address">
                                    <input type="hidden" value="{{ $companydata->mobile }}" id="compmob" name="compmob">
                                    <input type="hidden" value="{{ $companydata->email }}" id="email" name="email">
                                    <input type="hidden" value="{{ $companydata->logo }}" id="logo" name="logo">
                                    <input type="hidden" value="{{ $companydata->u_name }}" id="u_name" name="u_name">
                                    <input type="hidden" value="" id="roomoccroomno" name="rooomoccroomno">
                                    <input type="hidden" value="" id="roomoccsno1" name="roomoccsno1">
                                    <input type="hidden" value="" id="roomoccsno" name="roomoccsno">
                                    <input type="hidden" value="" id="name" name="name">
                                    <input type="hidden" value="" name="docid" id="docid" class="form-control">
                                    <input type="hidden" value="" name="sno" id="sno" class="form-control">
                                    <input type="hidden" value="" name="sno1" id="sno1" class="form-control">
                                    <input type="hidden" value="" name="nature" id="nature" class="form-control">
                                    <input type="hidden" value="" name="countrows" id="countrows" class="form-control">
                                    <input type="hidden" name="oldvdate" id="oldvdate">
                                    <div class="row">
                                        <div class="">
                                            <label for="vprefix">For Year</label>
                                            <select class="form-control" name="vprefix" id="vprefix">
                                                @foreach (uniqueyearsfom() as $item)
                                                    <option value="{{ $item->prefix }}">{{ $item->prefix }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="billno">Bill No.</label>
                                                <input type="text" value="{{ $latestbillno }}" class="form-control" placeholder="Enter Bill No." name="billno" id="billno">
                                                <span id="invalidbillno" class="text-danger none">Invalid Bill No.</span>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="foliono">Folio No.</label>
                                                <input type="text" value="" class=" beempty form-control fiveem" name="foliono" id="foliono" readonly>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="guestname">Guest Name</label>
                                                <input type="text" value="" class=" beempty form-control" name="guestname" id="guestname" readonly>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="checkindate">Checkin Date</label>
                                                <input type="text" value="" class=" beempty form-control" name="checkindate" id="checkindate" readonly>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="checkoutdate">Checkout Date</label>
                                                <input type="text" value="" class=" beempty form-control" name="checkoutdate" id="checkoutdate" readonly>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="pax">Adult/Child</label>
                                                <input type="text" value="" class=" beempty form-control fiveem" name="pax" id="pax" readonly>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <input type="text" value="" class=" beempty form-control" name="address" id="address" readonly>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="roomcat">Room Category</label>
                                                <input type="text" value="" class=" beempty form-control" name="roomcat" id="roomcat" readonly>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="guestcomp">Guest Company</label>
                                                <input type="text" value="" class=" beempty form-control" name="guestcomp" id="guestcomp" readonly>
                                                <span class="none text-dpink font-weight-bold position-absolute" id="companygst"></span>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="guestravelagent">Guest Travel Agent</label>
                                                <input type="text" value="" class=" beempty form-control" name="guestravelagent" id="guestravelagent" readonly>
                                                <span class="none text-dpink font-weight-bold position-absolute" id="travelgst"></span>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="form-group">
                                                <label for="paymentmode">Payment Mode</label>
                                                <input type="text" value="" class=" beempty form-control" name="paymentmode" id="paymentmode" readonly>
                                                <span class="none text-dpink font-weight-bold position-absolute" id="paymodecomp"></span>
                                            </div>
                                        </div>
                                        <div id="alertspandiv" style="display: none;" class="alert alert-primary alert-dismissible fade show" role="alert">
                                            <strong><span id="alertmsg"></span></strong>
                                        </div>
                                        <div class="">
                                            <label for="ncurdate">Vr Date</label>
                                            <input type="date" value="" name="ncurdate" id="ncurdate"
                                                class="form-control ncurdate" readonly>
                                        </div>
                                        <div class="">
                                            <label for="curtime">Time</label>
                                            <input type="time" value="" name="curtime" id="curtime" readonly
                                                class="form-control">
                                        </div>
                                        <div class="">
                                            <label for="charge">Charge/Payment</label>
                                            <select class="form-control" name="charge" id="charge">
                                                <option value="">Select</option>
                                                {{-- @php
                                                    $uniquerecords = [];
                                                @endphp
                                                @foreach ($revdata as $item)
                                                    @if (!in_array($item->rev_code, $uniquerecords))
                                                        <option data-id="{{ $item->nature }}" value="{{ $item->rev_code }}">{{ $item->name }}</option>
                                                        @php
                                                            $uniquerecords[] = $item->rev_code;
                                                        @endphp
                                                    @endif
                                                @endforeach --}}
                                            </select>
                                        </div>
                                        <div id="dispcomp" class="none">
                                            <label for="company">Company</label>
                                            <select class="form-control" name="company" id="company">
                                                <option value="">Select</option>
                                                @foreach ($subgroup as $item)
                                                    <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div id="roomnodisp" class="none">
                                            <label for="roomno">Room No</label>
                                            <select class="form-control" name="roomno" id="roomno">
                                                <option value="">Select</option>
                                            </select>
                                        </div>
                                        <div id="checknodisp" class="none">
                                            <label for="checkno">Check No</label>
                                            <input type="text" oninput="allmx(this, 6)" value="" placeholder="Enter Check No."
                                                name="checkno" id="checkno" class="form-control">
                                        </div>
                                        <div class="">
                                            <label for="amount">Amount</label>
                                            <input type="number" oninput="allmx(this, 6)" value="" placeholder="Enter Amt."
                                                name="amount" id="amount" class="form-control">
                                        </div>
                                        <div class="">
                                            <label for="narration">Narration</label>
                                            <textarea placeholder="Enter Narration" name="narration" id="narration" class="form-control" rows="5"></textarea>

                                        </div>
                                        <div class="crdisps">
                                            <label for="crnumber">Credit Card Number</label>
                                            <input type="number" oninput="allmx(this, 16)" value="" placeholder="Enter Credit Card"
                                                name="crnumber" id="crnumber" class="form-control">
                                        </div>
                                        <div class="crdisps">
                                            <label for="holdername">Holder Name</label>
                                            <input type="text"  value="" placeholder="Enter Name"
                                                name="holdername" id="holdername" class="form-control">
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

                                    {{-- <div class="form-group form-check mt-4">
                                        <input type="checkbox" checked class="form-check-input" name="printreceipt"
                                            id="printreceipt">
                                        <label class="form-check-label" for="printreceipt"><i
                                                class="fa-solid fa-money-bill-transfer"></i> Print
                                            Receipt</label>
                                    </div> --}}
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
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="col-md-6 offset-3 mt-4">
                                            <table id="resettletable" class="table-success boxbg">
                                                <thead>
                                                    <tr>
                                                        <th class="p-2">Total Amount</th>
                                                        <td id="totalamt">0.00</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="p-2">Paid Amount</th>
                                                        <td id="paidamt">0.00</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="p-2">Balance</th>
                                                        <td id="balanceamt">0.00</td>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>

                                    <div class="text-center mt-4">
                                        <button id="submitBtn" type="submit" class="btn ti-save btn-primary">
                                            Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        // Narration field: allow letters, numbers, spaces, / - . , : # @ & ( )
        // Used for entries like "12/05/26- bill settle"
        function narrationmx(input, maxLen) {
            // Trim to max length
            if (input.value.length > maxLen) {
                input.value = input.value.slice(0, maxLen);
            }
            // Allow: letters, digits, space, / - . , : # @ & ( ) '
            input.value = input.value.replace(/[^a-zA-Z0-9 \/\-\.\,\:\#\@\&\(\)\']/g, '');
        }

        let timer;
        $(document).ready(function() {
            var sno = 1;

            function beempty() {
                $('#chargeadded tbody').empty();
                $('#totalamt, #paidamt, #balanceamt').text('0.00');
                $('#billno').addClass('invalid');
                $('#billno').val('');
                $('#invalidbillno').removeClass('none');
                $('#billnoshow').text('');
                $('#submitBtn').prop('disabled', true);
                $('#paymodecomp').addClass('none');
                $('#paymodecomp').text('');
                $('#sumrev').val('');
                $('#sumfieldc').val('');
                $('#guestname').val('');
                $('#guestname').addClass('invalid');
                $('#invalidguestname').removeClass('none');
                $('#address').val('');
                $('#roomcat').val('');
                $('#guestcomp').val('');
                $('#guestravelagent').val('');
                $('#checkindate').val('');
                $('#guestravelagent').val('');
                $('#checkoutdate').val('');
                $('#pax').val('');
                $('#foliono').val('');
                $('#companygst').val('');
                $('#travelgst').val('');
                $('#paymentmode').val('');
                $('#paymodecomp').val('');
            }
            pushNotify('info', 'Room Resettlement', 'Fetching Last Settled Bill');
            $(document).on('input', '#billno', function() {
                clearTimeout(timer);
                let billno = $('#billno').val();
                if (billno == '0' || billno == '') {
                    pushNotify('info', 'Bill Re-Settlement', 'Please enter a valid Bill No.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    beempty();
                    return;
                }
                let vprefix = $('#vprefix').val();
                let resettlexhr = new XMLHttpRequest();
                resettlexhr.open('POST', '/fetchroomresettle', true);
                resettlexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                resettlexhr.onreadystatechange = function() {
                    if (resettlexhr.status === 200 && resettlexhr.readyState === 4) {
                        let results = JSON.parse(resettlexhr.responseText);
                        if (results.length == 0 || results == null) {
                            beempty();
                            pushNotify('info', 'Room Re-Settlement', 'No bill data found for this Bill No.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            return;
                        }
                        if (results == 'Invalid') {
                            beempty();
                            pushNotify('error', 'Room Re-Settlement', 'Invalid Bill No. Please check and try again.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');

                        } else if (billno != 'Invalid') {
                            $('#paymentmode').val('');
                            $('#paymodecomp').val('');
                            $('#submitBtn').prop('disabled', false);
                            $('#billno').removeClass('invalid');
                            $('#invalidbillno').addClass('none');
                            $('#guestname').removeClass('invalid');
                            $('#invalidguestname').addClass('none');
                            $('#billnoshow').text(results.billno);
                            $('#billno').val(results.billno);
                            let paychargedata = results.paychargedata;
                            let roomoccdata = results.roomoccdata;
                            let address = `${roomoccdata.cityname}`;
                            $('#folionodocid').val(roomoccdata.docid);
                            $('#roomoccroomno').val(roomoccdata.roomno);
                            $('#roomoccsno1').val(roomoccdata.sno1);
                            $('#roomoccsno').val(roomoccdata.sno);
                            $('#name').val(roomoccdata.name);
                            $('#docid').val(roomoccdata.docid);
                            $('#folioNo').val(roomoccdata.folioNo);
                            $('#sno1').val(results.sno1);
                            // console.log(results.sno1)
                            // console.log($('#sno1').val());
                            $('#billamt').val(results.billamt);
                            if (results.payd != null) {
                                $('#oldvdate').val(results.payd.vdate);
                            }
                            // console.log(results.payd ?? '');
                            $('#onamt').val(results.onamt);
                            $('#sumrev').val(results.sumtyperev);
                            $('#sumfieldc').val(results.sumfieldc);
                            $('#guestname').val(roomoccdata.name);
                            $('#address').val(address);
                            $('#roomcat').val(roomoccdata.roomcategory);
                            $('#guestcomp').val(roomoccdata.companyname);
                            $('#guestravelagent').val(roomoccdata.travelname);
                            $('#checkindate').val(`${dmy(roomoccdata.chkindate)} ${roomoccdata.chkintime == null ? '' : roomoccdata.chkintime.substr(0, 5)}`);
                            $('#checkoutdate').val(`${roomoccdata.chkoutdate == null ? '' : dmy(roomoccdata.chkoutdate)} ${roomoccdata.chkouttime == null ? '' : roomoccdata.chkouttime.substr(0, 5)}`);
                            $('#pax').val(`${roomoccdata.adult} / ${roomoccdata.children}`);
                            $(`#foliono`).val(roomoccdata.folioNo);
                            if (roomoccdata.companygst != null) {
                                $('#companygst').text(`GST: ${roomoccdata.companygst}`).removeClass('none');
                            } else {
                                $('#companygst').text('');
                                $('#companygst').addClass('none');
                            }

                            if (roomoccdata.travelgst != null) {
                                $('#trvelgst').text(`GST:  ${roomoccdata.travelgst}`).removeClass('none');
                            } else {
                                $('#travelgst').addClass('none');
                                $('#travelgst').text('');
                            }
                            let paymodedata = results.paymodedata;
                            let payTypes = new Set();
                            let paymodename = new Set();
                            paymodedata.forEach((data, index) => {
                                payTypes.add(data.pay_type);
                                paymodename.add(data.paycompname);
                            });
                            if (paymodename.size != 0) {
                                $('#paymodecomp').removeClass('none');
                                $('#paymodecomp').text(Array.from(paymodename).join(', '));
                            } else {
                                $('#paymodecomp').addClass('none');
                                $('#paymodecomp').text('');
                            }
                            $('#paymentmode').val(Array.from(payTypes).join(', '));
                            let oldsettle = results.oldsettledata;
                            $('#totalamt').text(results.totalamt);
                            let rowssettle = results.qry3;
                            if (rowssettle != '' && rowssettle.length > 0) {
                                $('.ncurdate').val(rowssettle[0]['vdate']);
                                pushNotify('success', 'Room Re-Settlement', 'Bill details loaded successfully.', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                            } else {
                                pushNotify('error', 'Room Re-Settlement', 'No settlement data found. Please check bill details.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            }
                            let tbody = $('#chargeadded tbody');
                            tbody.empty();
                            let rows = '';
                            let paidamt = 0.00;
                            let countrows = rowssettle.length;
                            $('#countrows').val(countrows);

                            rowssettle.forEach((data, index) => {
                                paidamt += parseFloat(data.amtcr);
                                sno++;
                                rows += `<tr>
                                    <td><input type="hidden" value="${data.sno}" name="sno${data.sno}" id="sno${data.sno}"><span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span> <p style="display: contents;">${data.sno}</p></td>
                                    <td><input type="hidden" value="${data.revname}" name="chargetype${data.sno}" id="chargetype${data.sno}">
                                        <input type="hidden" value="${data.paycode}" name="chargecode${data.sno}" id="chargecode${data.sno}">
                                        <input type="hidden" value="${data.comp_code}" name="compcode${data.sno}" id="compcode${data.sno}">
                                        <input type="hidden" value="${data.comments}" name="chargenarration${data.sno}" id="chargenarration${data.sno}">${data.comments}</td>
                                    <td><input type="hidden" class="amtrow" value=${data.amtcr} name="amtrow${data.sno}" id="amtrow${data.sno}">${data.amtcr}</td>
                                    </tr>`;
                            });
                            $('#paidamt').text(paidamt.toFixed(2));
                            let balanceleft = parseFloat(results.totalamt) - paidamt;
                            $('#balanceamt').text(balanceleft.toFixed(2));
                            $('#amount').val(balanceleft.toFixed(2));
                            tbody.append(rows);
                        }

                        let paytypeData = results.paytype;
                        let chargeSelect = $('#charge');
                        chargeSelect.empty();
                        chargeSelect.append('<option value="">Select</option>');
                        paytypeData.forEach((item) => {
                            chargeSelect.append(`<option data-id="${item.nature}" value="${item.rev_code}">${item.name}</option>`);
                        });

                    }
                }
                timer = setTimeout(function() {
                    pushNotify('info', 'Room Re-Settlement', 'Fetching bill and settlement details...', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    resettlexhr.send(`vprefix=${vprefix}&billno=${billno}&_token={{ csrf_token() }}`);
                }, 1000);
            });

            $('#charge').on('change', function() {
                let balance = parseFloat($('#balanceamt').text());
                if (balance <= 0) {
                    $(this).val('');
                    pushNotify('warning', 'Room Re-Settlement', 'Balance is already settled. Cannot add more entries.', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                $('#company').val('');
                let chargedataid = $(this).find('option:selected').data('id');
                $('#dispcomp').toggleClass('none', chargedataid !== 'Company');
                $('#roomnodisp').toggleClass('none', chargedataid !== 'Room');
                $('#roomno').val(chargedataid === 'Room' ? '' : $('#roomno').val(''));
                $('#company').val(chargedataid === 'Company' ? '' : $('#company').val(''));
                if (chargedataid !== 'Cash' && chargedataid !== undefined) {
                    setTimeout(() => {
                        $('#narration').val(chargedataid);
                    }, 500);
                }
                $('#amount').focus();
            });

            $('#amount').keypress(function(e) {
                if (e.which == 13) {
                    let balance = parseFloat($('#balanceamt').text());
                    if (balance <= 0) {
                        e.preventDefault();
                        pushNotify('warning', 'Room Re-Settlement', 'Balance is settled. No more entries allowed.', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }
                    e.preventDefault();
                    $('#narration').focus();
                }
            });
            $('#charge').keypress(function(e) {
                if (e.which == 13) {
                    e.preventDefault();
                    $('#amount').focus();
                }
            });
            $('#narration').keypress(function(e) {
                if (e.which == 13) {
                    let balanceamttmp = $('#balanceamt').text();
                    let balanceamt = parseFloat(balanceamttmp);

                    if (balanceamt <= 0) {
                        e.preventDefault();
                        pushNotify('warning', 'Room Re-Settlement', 'Balance is already settled. No more entries allowed.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        return;
                    }

                    let chargecode = $('#charge').find('option:selected').val();
                    let amttmp = $('#amount').val();
                    let amt = parseFloat(amttmp);

                    if (chargecode == '') {
                        e.preventDefault();
                        pushNotify('warning', 'Room Re-Settlement', 'Please select a Charge/Payment type.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        return;
                    }

                    if (!amt || amt <= 0) {
                        e.preventDefault();
                        pushNotify('warning', 'Room Re-Settlement', 'Please enter a valid amount greater than 0.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        return;
                    }

                    if (amt > balanceamt) {
                        e.preventDefault();
                        pushNotify('warning', 'Room Re-Settlement', `Amount cannot exceed balance of ${balanceamt.toFixed(2)}.`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        return;
                    }

                    let tbody = $('#chargeadded tbody');
                    let chargetype = $('#charge').find('option:selected').text();
                    let compcode = $('#company').find('option:selected').val() ?? '';
                    // let chargenarration = $('#charge').find('option:selected').data('id');
                    let chargenarration = $('#narration').val() ||
                        $('#charge').find('option:selected').data('id');
                    let paidamttmp = $('#paidamt').text();
                    let paidamt = parseFloat(paidamttmp);

                    let currentRowCount = tbody.find('tr').length;
                    let sno = currentRowCount + 1;
                    $('#countrows').val(sno);

                    let newbalanceamt = balanceamt - amt;
                    let newpaidamt = amt + paidamt;
                    $('#balanceamt').text(newbalanceamt.toFixed(2));
                    $('#totalbal').val(newpaidamt.toFixed(2));
                    $('#paidamt').text(newpaidamt.toFixed(2));

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

                    pushNotify('success', 'Room Re-Settlement', 'Charge added successfully.', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');

                    $('#charge').val('');
                    $('#company').val('');
                    $('#amount').val('');
                    $('#narration').val('');
                    $('#dispcomp').addClass('none');

                    let balanceamttmp2 = $('#balanceamt').text();
                    let balanceamt2 = parseFloat(balanceamttmp2);
                    if (balanceamt2 <= 0) {
                        $('#charge').prop('disabled', true);
                        $('#amount').prop('disabled', true);
                        $('#narration').prop('disabled', true);
                        $('#company').prop('disabled', true);
                        pushNotify('info', 'Room Re-Settlement', 'Balance settled. No more entries can be added.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    }
                    e.preventDefault();
                }
            });

            $('#chargeadded tbody').on('click', '.removeItem', function() {
                let row = $(this).closest('tr');
                let amt = parseFloat($(row).find('.amtrow').val());
                let paidamt = parseFloat($('#paidamt').text());
                let newpaidamt = paidamt - amt;
                $('#paidamt').text(newpaidamt.toFixed(2));
                let balanceamt = parseFloat($('#balanceamt').text());
                let newBalanceAmt = balanceamt + amt;
                $('#balanceamt').text(newBalanceAmt.toFixed(2));
                row.remove();

                let newcount = $('#chargeadded tbody tr').length;
                $('#countrows').val(newcount);

                $('#chargeadded tbody tr').each(function(index) {
                    let snos = index + 1;
                    $(this).find('td:first p').text(snos);
                    $(this).find('input[type="hidden"]').each(function() {
                        let name = $(this).attr('name');
                        let id = $(this).attr('id');
                        if (name && id) {
                            let oldnum = name.match(/\d+$/);
                            let oldidnum = id.match(/\d+$/);
                            if (oldnum) {
                                let newName = name.replace(/\d+$/, snos);
                                $(this).attr('name', newName);
                            }
                            if (oldidnum) {
                                let newId = id.replace(/\d+$/, snos);
                                $(this).attr('id', newId);
                            }
                        }
                    });
                });

                let newbalanceamt = parseFloat($('#balanceamt').text());
                if (newbalanceamt > 0) {
                    $('#charge').prop('disabled', false);
                    $('#amount').prop('disabled', false);
                    $('#narration').prop('disabled', false);
                    $('#company').prop('disabled', false);
                    $('#amount').val(newbalanceamt.toFixed(2));
                    pushNotify('info', 'Room Re-Settlement', 'Entry removed. Settlement fields enabled.', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                }
            });

            $('#submitBtn').click(function(e) {
                let balance = parseFloat($('#balanceamt').text());
                let rowcount = $('#chargeadded tbody tr').length;

                if (rowcount === 0) {
                    e.preventDefault();
                    pushNotify('error', 'Room Re-Settlement', 'Please add at least one charge/payment entry.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return false;
                }

                if (balance !== 0) {
                    e.preventDefault();
                    pushNotify('error', 'Room Re-Settlement', `Balance must be 0 for settlement. Current balance: ${balance.toFixed(2)}`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return false;
                }

                wantprint();
                let submitButton = $(this);
                submitButton.prop('disabled', true).text('Processing...');
                pushNotify('info', 'Room Re-Settlement', 'Processing settlement...', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');

                setTimeout(() => {
                    $('#roomsettleformupdate').submit();
                }, 500);

                return false;
            });
        });

        $(document).ready(function() {
            $('#charge').on('change', function() {
                let balance = $('#balanceamt').text();
                $('#amount').val(balance);
                var fieldtype;
                let sno1 = $('#sno1').val();

                function processResponse() {
                    if (fieldtype == 'P') {
                        let xhrcharge2 = new XMLHttpRequest();
                        xhrcharge2.open('POST', '/fetchadvamtpay', true);
                        xhrcharge2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhrcharge2.onreadystatechange = function() {
                            if (xhrcharge2.readyState === 4 && xhrcharge2.status === 200) {
                                let result = JSON.parse(xhrcharge2.responseText);
                            }

                        };
                        xhrcharge2.send(`rev_code=${code}&docid=${docid}&sno1=${sno1}&_token={{ csrf_token() }}`);
                    } else if (fieldtype == 'C') {
                        let xhrcharge = new XMLHttpRequest();
                        xhrcharge.open('POST', '/fetchadvamt', true);
                        xhrcharge.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhrcharge.onreadystatechange = function() {
                            if (xhrcharge.readyState === 4 && xhrcharge.status === 200) {
                                let result = JSON.parse(xhrcharge.responseText);

                                // if (result.amount != null) {
                                //     //  $('#amount').val(result.amount);
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
                xhrnature.onreadystatechange = function() {
                    if (xhrnature.readyState === 4 && xhrnature.status === 200) {
                        let result = JSON.parse(xhrnature.responseText);
                        fieldtype = result.fieldtype;
                        $('#nature').val(result.nature);
                        if (result.nature == 'Cash') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function(element) {
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
                            crdisps.forEach(function(element) {
                                element.style.display = 'block';
                            });
                            // $('#narration').val(result.nature);
                        } else if (result.nature == 'UPI') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function(element) {
                                element.style.display = 'none';
                                $('#crnumber').val('');
                                $('#holdername').val('');
                                $('#expdatecr').val('');
                                $('#batchno').val('');
                            });
                            $('#upidisp').removeClass('none');
                            // $('#narration').val(result.nature);
                        } else if (result.nature == 'Cheque') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function(element) {
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
                            // $('#narration').val(result.nature);
                        } else {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function(element) {
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

                newWindow.onload = function() {
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

                    setTimeout(function() {
                        newWindow.print();
                        newWindow.close();
                    }, 500);
                };
            }
        }



        $(document).ready(function() {
            $('#charge').on('change', function() {
                var fieldtype;
                let sno1 = $('#sno1').val();

                function processResponse() {
                    if (fieldtype == 'P') {
                        let xhrcharge2 = new XMLHttpRequest();
                        xhrcharge2.open('POST', '/fetchadvamtpay', true);
                        xhrcharge2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhrcharge2.onreadystatechange = function() {
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
                        xhrcharge.onreadystatechange = function() {
                            if (xhrcharge.readyState === 4 && xhrcharge.status === 200) {
                                let result = JSON.parse(xhrcharge.responseText);

                                if (result.amount != null) {
                                    $('#amount').val(result.amount);
                                } else {
                                    $('#amount').val('');
                                }
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
                xhrnature.onreadystatechange = function() {
                    if (xhrnature.readyState === 4 && xhrnature.status === 200) {
                        let result = JSON.parse(xhrnature.responseText);
                        fieldtype = result.fieldtype;
                        $('#nature').val(result.nature);
                        if (result.nature == 'Cash') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function(element) {
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
                            crdisps.forEach(function(element) {
                                element.style.display = 'block';
                            });
                            $('#narration').val(result.nature);
                        } else if (result.nature == 'UPI') {
                            var crdisps = document.querySelectorAll('.crdisps');
                            crdisps.forEach(function(element) {
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
                            crdisps.forEach(function(element) {
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
                            crdisps.forEach(function(element) {
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
        $(document).ready(function() {
            $('#charge').on('change', function() {
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
@endsection
