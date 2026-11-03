@extends('property.layouts.main')
@section('main-container')
    <style>
        /* e-Invoice QR section */
        #einvoice-wrapper {
            width: 100%;
            display: flex;
            justify-content: flex-end;
            margin-bottom: 10px;
        }

        #qrshow {
            text-align: center;
        }

        #qrshow img {
            height: 160px;
            width: 160px;
            object-fit: contain;
            display: block;
            margin: 0 auto;
        }

        #einvoice-info {
            margin-top: 4px;
            padding: 4px 8px;
            background-color: #ffffff;
            border: 1px solid #999;
            font-size: 11px;
            line-height: 1.2;
            display: inline-block;
            text-align: left;
        }

        #einvoice-info-title {
            font-weight: 600;
            margin-bottom: 2px;
        }

        #einvoice-info div {
            white-space: nowrap;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            {{-- <form id="billreprintform" action="{{ route('billreprintsubmit') }}" name="billreprintform"
                                method="post" target="_blank"> --}}
                            <form id="billreprintform" action="javascript:void(0);" name="billreprintform"
                                method="post">
                                @csrf
                                <div class="row">
                                    <div class="">
                                        <label for="vprefix">For Year</label>
                                        <select class="form-control" name="vprefix" id="vprefix">
                                            @foreach (uniqueyearsfom() as $item)
                                                <option value="{{ $item->prefix }}" {{ $year == $item->prefix ? 'selected' : '' }}>
                                                    {{ $item->prefix }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="billno">Bill No.</label>
                                            <input type="text" value="{{ $latestbillno }}" class="form-control"
                                                placeholder="Enter Bill No." name="billno" id="billno">
                                            <span id="invalidbillno" class="text-danger none">Invalid Bill No.</span>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="foliono">Folio No.</label>
                                            <input type="text" value="" class=" beempty form-control fiveem"
                                                name="foliono" id="foliono" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="guestname">Guest Name</label>
                                            <input type="text" value="" class="beempty form-control"
                                                placeholder="Enter Guest Name." name="guestname" id="guestname">
                                            <span id="invalidguestname" class="text-danger none">Invalid Guest
                                                Name</span>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="checkindate">Checkin Date</label>
                                            <input type="text" value="" class=" beempty form-control" name="checkindate"
                                                id="checkindate" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="checkoutdate">Checkout Date</label>
                                            <input type="text" value="" class=" beempty form-control"
                                                name="checkoutdate" id="checkoutdate" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="pax">Adult/Child</label>
                                            <input type="text" value="" class=" beempty form-control fiveem" name="pax"
                                                id="pax" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="address1client">Address 1</label>
                                            <input type="text" value="" class=" beempty form-control"
                                                name="address1client" id="address1client" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="address2client">Address 2</label>
                                            <input type="text" value="" class=" beempty form-control"
                                                name="address2client" id="address2client" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="cityclient">City</label>
                                            <input type="text" value="" class=" beempty form-control" name="cityclient"
                                                id="cityclient" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="state">State</label>
                                            <input type="text" value="" class=" beempty form-control" name="state"
                                                id="state" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="roomcat">Room Category</label>
                                            <input type="text" value="" class=" beempty form-control" name="roomcat"
                                                id="roomcat" readonly>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="guestcomp">Guest Company</label>
                                            <input type="text" value="" class=" beempty form-control" name="guestcomp"
                                                id="guestcomp" readonly>
                                            <span class="none text-dpink font-weight-bold position-absolute"
                                                id="companygst"></span>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="guestravelagent">Guest Travel Agent</label>
                                            <input type="text" value="" class=" beempty form-control"
                                                name="guestravelagent" id="guestravelagent" readonly>
                                            <span class="none text-dpink font-weight-bold position-absolute"
                                                id="travelgst"></span>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="paymentmode">Payment Mode</label>
                                            <input type="text" value="" class=" beempty form-control" name="paymentmode"
                                                id="paymentmode" readonly>
                                            <span class="none text-dpink font-weight-bold position-absolute"
                                                id="paymodecomp"></span>
                                        </div>
                                    </div>
                                    <div id="alertspandiv" style="display: none;"
                                        class="alert alert-primary alert-dismissible fade show" role="alert">
                                        <strong><span id="alertmsg"></span></strong>
                                    </div>

                                    <!-- e-Invoice QR + info block -->
                                    <div id="einvoice-wrapper">
                                        <div>
                                            <div id="qrshow"></div>
                                            <div id="einvoice-info">
                                                <div id="einvoice-info-title">eInvoice Info:</div>
                                                <div id="irncode"></div>
                                                <div id="ackno"></div>
                                                <div id="ackdate"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="font-size: small;" class="col-md-12">
                                        <h3 class="text-center BCH-alt border-bottom-1">Bill Re Print <span
                                                class="text AUR">Bill
                                                No: <span id="billnoshow"></span></span></h3>
                                        <input type="hidden" value="{{ $company->comp_name }}" id="compname"
                                            name="compname">
                                        <input type="hidden" value="{{ $company->address1 }}" id="address1"
                                            name="address1">
                                        <input type="hidden" value="{{ $company->address2 }}" id="address2"
                                            name="address2">
                                        <input type="hidden" value="{{ $company->city }}" id="city" name="city">
                                        <input type="hidden" value="{{ $company->mobile }}" id="compmob" name="compmob">
                                        <input type="hidden" value="{{ $company->email }}" id="email" name="email">
                                        <input type="hidden" value="{{ $company->logo }}" id="logo" name="logo">
                                        <input type="hidden" value="{{ $company->u_name }}" id="u_name" name="u_name">
                                        <input type="hidden" value="" id="rooomoccroomno" name="rooomoccroomno">
                                        <input type="hidden" class="none" name="docid" id="docid" value="">
                                        <input type="hidden" class="none" name="billreprint" id="billreprint"
                                            value="Yes">
                                        <input type="hidden" class="none" name="sno1" id="sno1" value="">
                                        <input type="hidden" class="none" name="folionodocid" id="folionodocid"
                                            value="">
                                        <input type="hidden" class="none" name="propertyid" id="propertyid"
                                            value="{{ $company->propertyid }}">
                                        <input type="hidden" class="none" name="invoiceno" id="invoiceno" value="">
                                        <input type="hidden" class="none" name="guestsign" id="guestsign" value="">
                                        <input type="hidden" class="none" name="billamt" id="billamt" value="">
                                        <input type="hidden" class="none" name="name" id="name" value="">
                                        <input type="hidden" class="none" name="folioNo" id="folioNo" value="">
                                        <input type="hidden" class="none" name="split" id="split" value="1">
                                        <input type="hidden" class="none" name="onamt" id="onamt" value="">
                                        <input type="hidden" class="none" name="sumrev" id="sumrev" value="">
                                        <input type="hidden" class="none" name="sumfieldc" id="sumfieldc" value="">
                                        <input type="hidden" class="none" name="taxsummary" id="taxsummary"
                                            value="{{ $enviro_form->taxsummary }}">
                                        <input type="hidden" value="{{ $printsetup->description }}" name="printdescription" id="printdescription">
                                        <input type="hidden" value="{{ $enviro_form->billprintingsummerised }}"
                                            name="billprintingsummerised" id="billprintingsummerised">
                                        <input type="hidden" class="none" name="totalbalinput" id="totalbalinput">
                                        <input type="hidden" value="0" name="rowcount" id="rowcount">
                                        <div id="alertspandiv" style="display: none;"
                                            class="alert alert-primary alert-dismissible fade show" role="alert">
                                            <strong><span id="alertmsg"></span></strong>
                                        </div>


                                        <div class="table-responsive">
                                            <table style="font-size: small;" id="guestledger"
                                                class="table table-hover guestledger table-download-with-search table-hover table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th>
                                                        <th class="none">Bill/Voucher</th>
                                                        <th>Particulars</th>
                                                        <th>Debit</th>
                                                        <th>Credit</th>
                                                        <th>Balance</th>
                                                        <th>Dr/Cr</th>
                                                        <th>User</th>
                                                        <th class="none">Rate</th>
                                                        <th>Split</th>
                                                    </tr>
                                                </thead>
                                                <tbody></tbody>
                                                <tfoot></tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div class="row mt-3 justify-content-center">
                                    <div class="col-auto">
                                        <button disabled name="billprint" type="submit" id="submitBtn"
                                            class="btn btn-outline-success ti-bookmark-alt"> Bill Re Print
                                        </button>
                                    </div>
                                    @if (invoiceparameter()->activeyn == 'Y')
                                        <div class="col-auto">
                                            <button id="einvoicebtn" type="button" class="btn btn-outline-info">eInvoice <i
                                                    class="fa-solid fa-money-bill"></i></button>
                                            <button id="einvoicebtncancel" type="button" class="btn none btn-outline-danger">eInvoice Cancel <i
                                                    class="fa-solid fa-money-bill"></i></button>
                                        </div>
                                    @endif
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            pushNotify('info', 'Bill Reprint', 'Fetching Last Printed Bill');
            $(document).on('change', '#vprefix', function() {
                let year = $(this).val();
                $.get(`/maxbilledno/${year}`, function(response) {
                    let latestbillno = response.latestbillno;
                    if (latestbillno == null) {
                        $('#billno').val('');
                        $('#billno').trigger('input');
                    } else {
                        $('#billno').val(latestbillno);
                        $('#billno').trigger('input');
                    }
                });
            });

            $(document).on('input', '#billno', function() {
                $('#guestname').val('');
            });
            let timer;

            function beempty() {
                let table = $('#guestledger');
                let tbody = $('#guestledger tbody');
                let tfoot = $('#guestledger tfoot');
                tfoot.css('display', 'none');
                $('#guestledger tbody').empty();
                $('#guestledger tfoot').empty();
                $('#billno').addClass('invalid');
                $('#billno').val('');
                $('#companygst').text('');
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
            $(document).on('input', '#billno, #guestname', function() {
                clearTimeout(timer);
                let billno = $('#billno').val();
                if (billno == '0') {
                    pushNotify('info', 'Bill Reprint', 'Please Enter Valid Billno', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    beempty();
                    return;
                }
                let vprefix = $('#vprefix').val();
                let guestname = $('#guestname').val();
                let fetchbillxhr = new XMLHttpRequest();
                fetchbillxhr.open('POST', '/fetchbilldata', true);
                fetchbillxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fetchbillxhr.onreadystatechange = function() {
                    if (fetchbillxhr.status === 200 && fetchbillxhr.readyState === 4) {
                        let results = JSON.parse(fetchbillxhr.responseText);
                        if (results.length == 0 || results == null) {
                            pushNotify('info', 'No Data Found', 'No Data Found');
                            beempty();
                            return;
                        }
                        let table = $('#guestledger');
                        let tbody = $('#guestledger tbody');
                        let tfoot = $('#guestledger tfoot');
                        if (results == 'Invalid') {
                            pushNotify('info', 'No Data Found', 'No Data Found');
                            beempty();

                        } else if (billno != 'Invalid') {
                            tfoot.css('display', 'none');
                            tbody.empty();
                            tfoot.empty();
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
                            $('#folionodocid').val(paychargedata[0]['folionodocid']);
                            let roomoccdata = results.roomoccdata;
                            if (roomoccdata == null) {
                                pushNotify('info', 'No Data Found', 'No Data Found');
                                beempty();
                                return;
                            }
                            $('#rooomoccroomno').val(roomoccdata.roomno);
                            $('#guestsign').val(roomoccdata.guestsign);
                            $('#name').val(roomoccdata.name);
                            $('#docid').val(roomoccdata.docid);
                            $('#folioNo').val(roomoccdata.folioNo);
                            $('#sno1').val(results.sno1);
                            $('#invoiceno').val(results.invoiceno);
                            $('#billamt').val(results.billamt);
                            $('#onamt').val(results.onamt);
                            $('#sumrev').val(results.sumtyperev);
                            $('#sumfieldc').val(results.sumfieldc);
                            $('#guestname').val(roomoccdata.name);
                            $('#address1client').val(roomoccdata.add1 ?? '');
                            $('#address2client').val(roomoccdata.add2 ?? '');
                            $('#cityclient').val(roomoccdata.cityname);
                            $('#state').val(roomoccdata.statename);

                            let inputreadonly = '';
                            localStorage.setItem('allowdeletefom', true);
                            if (results.einvoicebill != null) {
                                let eentrydate = results.einvoicebill.created_at;
                                let currentdate = new Date();
                                let eentrydatedate = new Date(eentrydate);
                                let timeDiff = Math.abs(currentdate - eentrydatedate);
                                let hoursDiff = timeDiff / (1000 * 60 * 60);
                                if (hoursDiff < 24) {
                                    $('#einvoicebtncancel').removeClass('none');
                                } else {
                                    $('#einvoicebtncancel').addClass('none');
                                }
                                localStorage.setItem('allowdeletefom', false);
                                $('#einvoice-info-title').removeClass('none');
                                let irncode = results.einvoicebill.irn;
                                let ackno = results.einvoicebill.ackno;
                                let ackdate = results.einvoicebill.ackdt;
                                $('#irncode').text(`IRN : ${irncode}`);
                                $('#ackno').text(`Ack No : ${ackno}`);
                                $('#ackdate').text(`Ack Date : ${ackdate}`);
                                let qrimagedata = results.einvoicebill.qrcodeimage;
                                let qrimage = `<img src="data:image/png;base64,${qrimagedata}" alt="QR Code E Invoice">`;
                                $('#qrshow').html(qrimage);
                                inputreadonly = 'readonly';
                            } else {
                                localStorage.setItem('allowdeletefom', true);
                                $('#einvoicebtncancel').addClass('none');
                                $('#qrshow').html('');
                                $('#einvoice-info-title').addClass('none');
                                $('#irncode').text('');
                                $('#ackno').text('');
                                $('#ackdate').text('');
                            }

                            $('#roomcat').val(roomoccdata.roomcategory);
                            $('#guestcomp').val(roomoccdata.companyname);
                            $('#guestravelagent').val(roomoccdata.travelname);
                            $('#checkindate').val(`${dmy(roomoccdata.chkindate)} ${roomoccdata.chkintime == null ? '' : roomoccdata.chkintime.substr(0, 5)}`);
                            $('#checkoutdate').val(`${roomoccdata.chkoutdate == null ? '' : dmy(roomoccdata.chkoutdate)} ${roomoccdata.chkouttime == null ? '' : roomoccdata.chkouttime.substr(0, 5)}`);
                            $('#pax').val(`${roomoccdata.adult} / ${roomoccdata.children}`);
                            $(`#foliono`).val(roomoccdata.folioNo);
                            if (roomoccdata.companygst != null) {
                                $('#companygst').text(`GST: ${roomoccdata.companygst}`).removeClass('none');
                                $('#einvoicebtn').removeClass('none');
                            } else {
                                $('#einvoicebtn').addClass('none');
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

                            var xhrledger = new XMLHttpRequest();
                            let ldocid = $('#docid').val();
                            xhrledger.open('POST', '/fetchbilldataledger', true);
                            xhrledger.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                            xhrledger.onreadystatechange = function() {
                                if (xhrledger.readyState === 4 && xhrledger.status === 200) {
                                    $('#rowcount').val('0');
                                    var result = JSON.parse(xhrledger.responseText);
                                    let table = $('#guestledger');
                                    let tbody = $('#guestledger tbody');
                                    let tfoot = $('#guestledger tfoot');
                                    tfoot.css('display', 'contents');
                                    tbody.empty();
                                    let totalDebit = 0;
                                    let totalCredit = 0;
                                    let payableamt = 0.00;
                                    let c = 0;
                                    $('#rowcount').val(result.length);
                                    result.forEach(function(ledger, index) {
                                        c++;
                                        payableamt = parseFloat(ledger.payableamt);
                                        let amtdr = parseFloat(ledger.amtdr);
                                        let amtcr = parseFloat(ledger.amtcr || 0);
                                        var taxper = parseFloat(ledger.taxper || 0);
                                        let vdatetmp = ledger.vdate;
                                        let parts = vdatetmp.split('-');
                                        let vdate = parts[2] + '-' + parts[1] + '-' + parts[0].slice(2);

                                        let row = `<tr data-vprefixrow="${ledger.vprefix}" vtype="${ledger.vtype}" removable="${ledger.field_type}" docid="${ledger.docid}" sno1="${ledger.sno1}" sno="${ledger.sno}" data-new-value="${ledger.vno}" data-value="${vdate}" data-id="${ledger.vno}">
                                                    <td style="white-space: nowrap;">${vdate}</td>
                                                    <td class="none">${ledger.vtype}/${ledger.vno}</td>
                                                    <td>${ledger.comments}</td>
                                                    <td data-id="${vdate}" data-value="${ledger.comments}" class="debitamt" id="debitamt">
                                                        <input ${inputreadonly} removable="${ledger.field_type}" data-id="${ledger.docid}" type="text" class="reprintrooomval" name="room_charge_${c}" id="room_charge_${c}" value="${amtdr.toFixed(2)}" ${(ledger.comments.slice(0, 11) == 'ROOM CHARGE' ? '' : 'readonly')}>
                                                        <input type="hidden" name="paydocid${c}" id="paydocid${c}" value="${ledger.docid}">
                                                        <input type="hidden" name="paysno${c}" id="paysno${c}" value="${ledger.sno}">
                                                        <input type="hidden" data-id="${ledger.docid}" name="paysnoone${c}" id="paysnoone${c}" value="${ledger.sno1}">
                                                        <input type="hidden" class="paybillamt" data-id="${ledger.docid}" name="paybillamt${c}" id="paybillamt${c}" value="${ledger.billamount}">
                                                        <input type="hidden" class="payonamt" data-id="${ledger.docid}" name="payonamt${c}" id="payonamt${c}" value="${ledger.onamt}">
                                                    </td>
                                                    <td data-id="${vdate}" class="creditamtcell">${amtcr.toFixed(2)}</td>
                                                    <td data-id="${vdate}" class="balance"></td>
                                                    <td data-id="${vdate}" class="dr-cr"></td>
                                                    <td>${ledger.u_name}</td>
                                                    <td class="taxper none">${taxper.toFixed(2)}</td>
                                                    <td data-value="${ledger.comments}" class="split">
                                                        <input ${inputreadonly} type="text" class="splitinput" name="split_value_${c}" id="split_value_${c}" value="${ledger.split}">
                                                    </td>
                                            </tr>`;

                                        tbody.append(row);
                                        totalDebit += amtdr;
                                        totalCredit += amtcr;
                                    });
                                    let balance = totalDebit - totalCredit;
                                    let tfoototalbal = balance.toFixed(2);
                                    $('#totalbalinput').val(tfoototalbal);
                                    let balanceType = balance >= 0 ? 'Dr' : 'Cr';
                                    let totalRow = '<tr style="font-weight: 600;">' +
                                        '<td><b>Total</b></td>' +
                                        '<td>‎</td>' +
                                        '<td id="totalDebit">' + totalDebit.toFixed(2) + '</td>' +
                                        '<td id="totalCredit">' + totalCredit.toFixed(2) + '</td>' +
                                        '<td id="totalBalance">' + tfoototalbal + '</td>' +
                                        '<td id="totalDrCr">' + balanceType + '</td>' +
                                        '<td>‎</td>' +
                                        '</tr>';
                                    tfoot.empty().append(totalRow);
                                    // populateTable(result);
                                    var rows = document.querySelectorAll('#guestledger tbody tr');
                                    var prevBalance = 0;
                                    var totalBalance = 0;
                                    rows.forEach((row, index) => {
                                        var debitCell = row.querySelector('td:nth-child(4)');
                                        var creditCell = row.querySelector('td:nth-child(5)');
                                        var balanceCell = row.querySelector('.balance');
                                        var drCrCell = row.querySelector('.dr-cr');

                                        if (debitCell && creditCell && balanceCell &&
                                            drCrCell) {
                                            var debit = parseFloat(debitCell.innerText);
                                            if (isNaN(debit)) {
                                                let inputValue = $(`input[name="room_charge_${index + 1}"]`).val();
                                                debit = parseFloat(inputValue);
                                            }
                                            var credit = parseFloat(creditCell.innerText);
                                            var balance = prevBalance + debit - credit;
                                            drCrCell.innerText = balance < 0 ? 'Cr' : 'Dr';
                                            balanceCell.innerText = balance.toFixed(2);
                                            prevBalance = balance;
                                            var absolutebalance = balance.toFixed(2);
                                            totalBalance += absolutebalance;
                                        } else {
                                            // console.log('Cells not found');
                                        }
                                    });
                                }
                            }
                            xhrledger.send(
                                `docid=${ldocid}&sno1=${results.sno1}&_token={{ csrf_token() }}`
                            );
                            let timer;
                            let splitUpdatePending = false;
                            let splitUpdatePromise = null;

                            $('#guestledger tbody').on('input', 'input[name^="split_value_"]', function() {
                                let curval = $(this).val();
                                let currentRow = $(this).closest('tr');
                                let docid = currentRow.attr('docid');
                                let sno1 = currentRow.attr('sno1');
                                let sno = currentRow.attr('sno');
                                var csrftoken = "{{ csrf_token() }}";
                                clearTimeout(timer);
                                splitUpdatePending = true;

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

                                    splitUpdatePromise = fetch('/postsplit', option)
                                        .then(response => response.json())
                                        .then(data => {
                                            splitUpdatePending = false;
                                            pushNotify('success', 'Bill Reprint', data.message, 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                                            return data;
                                        })
                                        .catch(error => {
                                            splitUpdatePending = false;
                                            console.log(error);
                                            throw error;
                                        });

                                    let rowsWithSameDocid = $('#guestledger tbody').find(`tr[docid="${docid}"]`);

                                    rowsWithSameDocid.each(function() {
                                        $(this).find('input[name^="split_value_"]').val(curval);
                                    });
                                }, 1000);
                            });


                            $('#guestledger tbody').on('input', 'input[name^="room_charge_"]', function() {
                                let curval = $(this).val();
                                let currentRow = $(this).closest('tr');
                                let docid = currentRow.attr('docid');

                                let rowsWithSameDocid = $('#guestledger tbody').find(`tr[docid="${docid}"]`);

                                let rows = $(this).closest('tbody').find('tr');
                                let rowindex = rows.index() + 1;
                                let dataid = $(this).data('id');
                                let tdvdate = $(this).closest('td').data('id');
                                let debitCell = parseFloat($(this).val());
                                let payonamt = $(this).closest('tr').find('.payonamt');
                                let paybillamt = $(this).closest('tr').find('.paybillamt');
                                $(payonamt).val(debitCell);
                                $(paybillamt).val(debitCell);
                                let taxableamt = debitCell;
                                $('#onamt').val(taxableamt.toFixed(2));
                                let creditCell = parseFloat($(rows).find('td:nth-child(5)').text());
                                let balanceCell = $(this).closest('tr').find('.balance');
                                let balance = debitCell - creditCell;
                                balanceCell.text(isNaN(balance) ? '0.00' : balance.toFixed(2));
                                let nextRows = rows.nextAll();
                                let totalDebit = 0;
                                let totalCredit = 0;
                                let totalDebittmp = 0;
                                let totalCredittmp = 0;
                                let prevTrvDate = null;
                                let prevBalance = 0.00;
                                let c = 0.00;
                                let creditcellnew
                                nextRows.each(function(index, row) {
                                    var rowdocid = $(row).attr('docid');
                                    let trvdate = $(this).data('value');
                                    if (docid == rowdocid) {
                                        let debitcellnewtmp = $(row).find("td:nth-child(4) input[type='text']");

                                        let paybillamt = $(row).find("td:nth-child(4) input[class='paybillamt']");
                                        let payonamt = $(row).find("td:nth-child(4) input[class='payonamt']");
                                        let debitcellnew = parseFloat(debitcellnewtmp.val());
                                        let debitcellnewforsum = parseFloat(debitcellnewtmp.val());
                                        if (isNaN(debitcellnewforsum)) {
                                            let inputValue = $(`input[name^="room_charge_${index + 2}"]`).val();
                                            debitcellnewforsum = parseFloat(inputValue);
                                        }
                                        let creditcellnewtmp = $(row).find('td:nth-child(5)');
                                        creditcellnew = parseFloat(creditcellnewtmp.text());
                                        let balancerowstmp = $(row).find('.balance');
                                        let drcr = $(row).find('.dr-cr');
                                        if (isNaN(debitcellnew)) {
                                            let inputValue = $(
                                                `input[name^="room_charge_${index + 2}"]`).val();
                                            debitcellnew = parseFloat(inputValue);
                                        }
                                        let taxper = parseFloat($(row).find('.taxper').text());
                                        // console.log(taxper);
                                        let calculatedtax = 0;
                                        let assigned = 0.00;
                                        if (taxper != 0) {
                                            calculatedtax = (taxableamt * taxper / 100).toFixed(2);
                                            if (trvdate == tdvdate) {
                                                assigned = debitcellnewtmp.val(isNaN(calculatedtax) ? '0.00' : calculatedtax);
                                                paybillamt.val(debitCell);
                                                payonamt.val(debitCell);
                                            }
                                        }
                                        if (tdvdate <= trvdate) {
                                            let tempbal;
                                            let prevTrvDateElement = $(this).prevAll('tr:not([data-value="' + tdvdate + '"])').first();
                                            if (prevTrvDateElement.length > 0) {
                                                let prevTrvDate = prevTrvDateElement.data('value');
                                                if (prevTrvDate !== trvdate) {
                                                    prevBalance = prevTrvDateElement.find('.balance').text();
                                                    if (c == 0.00) {
                                                        balance = prevBalance;
                                                        c = c + 1
                                                    }
                                                }
                                            } else {
                                                // console.log("Previous trvdate not found.");
                                            }
                                            let debitcellnewtmp2 = $(row).find('td:nth-child(4)');
                                            let debitcellnew2 = parseFloat(debitcellnewtmp2.text());
                                            let debitcellnewforsum2 = parseFloat(debitcellnewtmp2.text());
                                            if (isNaN(debitcellnewforsum2)) {
                                                let inputValue2 = $(`input[name^="room_charge_${index + 2}"]`).val();
                                                debitcellnewforsum2 = parseFloat(inputValue2);
                                            }
                                            let creditcellnewtmp2 = $(row).find('td:nth-child(5)');
                                            let creditcellnew2 = parseFloat(creditcellnewtmp2.text());
                                            let creditcellnewforsum2 = parseFloat(creditcellnewtmp2.text());
                                            tempbal = (parseFloat(balance) + parseFloat(debitcellnewforsum2)) - parseFloat(creditcellnewforsum2);
                                            let fixedbal = tempbal.toFixed(2);
                                            balancerowstmp.text(isNaN(fixedbal) ? '0.00' : Math.abs(fixedbal));
                                            balance = fixedbal;
                                            drcr.text(balance < 0 ? 'Cr' : 'Dr');
                                        }
                                        prevTrvDate = trvdate;
                                    }

                                    setTimeout(() => {
                                        let debitcellnewtmp1 = $(row).find('td:nth-child(4)');
                                        let debitcellnew1 = parseFloat(debitcellnewtmp1.text());
                                        let debitcellnewforsum1 = parseFloat(debitcellnewtmp1.text());
                                        if (isNaN(debitcellnewforsum1)) {
                                            let inputValue1 = $(`input[name^="room_charge_${index + 2}"]`).val();
                                            debitcellnewforsum1 = parseFloat(inputValue1);
                                        }
                                        totalDebittmp += parseFloat(debitcellnewforsum1);
                                        totalCredittmp += parseFloat(creditcellnew);
                                    }, 500);
                                });
                                setTimeout(() => {
                                    let letfirstval = parseFloat($('#room_charge_1').val() || 0.00);
                                    totalDebit = parseFloat(totalDebittmp) + letfirstval || 0.00;
                                    totalCredit = parseFloat(totalCredittmp) + creditCell || 0.00;
                                    let totalbalup = totalDebit - totalCredit;
                                    $('#totalbalinput').val(totalbalup.toFixed(2));
                                    let billamt = totalDebit;
                                    $('#billamt').val(totalbalup.toFixed(2));
                                    $('#totalDebit').text(totalDebit.toFixed(2));
                                    $('#totalCredit').text(totalCredit.toFixed(2));
                                    $('#totalBalance').text(totalbalup.toFixed(2));
                                    $('#totalDrCr').text(totalDebit > totalCredit ?
                                        'Dr' : 'Cr');
                                }, 500);
                            });
                        }
                    }
                }

                timer = setTimeout(function() {
                    pushNotify('info', 'Bill Reprint', 'Fetching Bill Details');
                    fetchbillxhr.send(`vprefix=${vprefix}&billno=${billno}&guestname=${guestname}&_token={{ csrf_token() }}`);
                }, 1000);
            });

            $('#billreprintform').on('submit', function(e) {
                e.preventDefault();

                let submitButton = $('#submitBtn');

                // Check if split update is pending
                if (typeof splitUpdatePending !== 'undefined' && splitUpdatePending) {
                    // Show waiting alert for split update
                    let waitInterval;
                    Swal.fire({
                        icon: 'info',
                        title: 'Please Wait',
                        html: 'Waiting for split value update to complete...<br><b></b>',
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                        didOpen: () => {
                            Swal.showLoading();
                            let dots = 0;
                            const b = Swal.getHtmlContainer().querySelector('b');
                            waitInterval = setInterval(() => {
                                dots = (dots + 1) % 4;
                                b.textContent = '.'.repeat(dots);
                            }, 500);
                        },
                        willClose: () => {
                            clearInterval(waitInterval);
                        }
                    });

                    // Wait for split update to complete
                    if (splitUpdatePromise) {
                        splitUpdatePromise.then(() => {
                            Swal.close();
                            // Trigger submit again after update completes
                            $('#billreprintform').trigger('submit');
                        }).catch(() => {
                            Swal.close();
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Split value update failed. Please try again.'
                            });
                        });
                    }
                    return;
                }

                setTimeout(function() {
                    submitButton.prop('disabled', true).text('Processing...');
                }, 100);

                // Show SweetAlert with timer
                let timerInterval;
                let estimatedTime = 5; // 5 seconds estimated time
                Swal.fire({
                    icon: 'info',
                    title: 'Please Wait',
                    html: 'Bill print is being processed...<br>Estimated time: <b></b> seconds',
                    timer: estimatedTime * 1000,
                    timerProgressBar: true,
                    allowOutsideClick: false,
                    allowEscapeKey: false,
                    didOpen: () => {
                        Swal.showLoading();
                        const b = Swal.getHtmlContainer().querySelector('b');
                        timerInterval = setInterval(() => {
                            b.textContent = Math.ceil(Swal.getTimerLeft() / 1000);
                        }, 100);
                    },
                    willClose: () => {
                        clearInterval(timerInterval);
                    }
                });

                showLoader();
                let formData = new FormData(this);

                $.ajax({
                    url: '{{ route('billreprintsubmit') }}',
                    method: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    },
                    success: function(response) {
                        let charged = response.charged;
                        let company = response.company;
                        let guest = response.guest;
                        let paycharger = response.paycharger;
                        let totalbalance = response.totalbalance;
                        let taxsummary = response.taxsummary;
                        let invoiceno = response.invoiceno;
                        let billprintingsummerised = response.billprintingsummerised;
                        let igncode = response.igncode;
                        let guestsign = '';
                        if (guest.guestsign != '') {
                            guestsign = `<img src="storage/walkin/signature/${guest.guestsign}" name="guestsign" id="guestsign" alt="Guest Sign">`;
                        }
                        let splitGroups = {};
                        setTimeout(hideLoader, 500);
                        charged.forEach((ledger) => {
                            let splitVal = ledger.split;
                            if (!splitGroups[splitVal]) {
                                splitGroups[splitVal] = {
                                    rows: [],
                                    totalDebit: 0
                                };
                            }
                            splitGroups[splitVal].rows.push(ledger);
                            splitGroups[splitVal].totalDebit += parseFloat(ledger.amtdr) || 0;
                        });

                        Swal.close();

                        setTimeout(function() {
                            $('#submitBtn').prop('disabled', false).text('Bill Re Print');
                        }, 2000);

                        Object.keys(splitGroups).forEach(splitVal => {
                            let printdescription = $('#printdescription').val();
                            let filetoprint = '';
                            if (printdescription == 'Guest Bill Window Plain Paper 1') {
                                filetoprint = '{{ url('billreprintview2') }}';
                            } else if (printdescription == 'Guest Bill Window Plain Paper 2') {
                                filetoprint = '{{ url('billreprintview2type2') }}';
                            }
                            let newWindow = window.open(filetoprint, '_blank');

                            newWindow.onload = function() {
                                let tablebody = '';
                                let totalsumdebit = 0.00;
                                splitGroups[splitVal].rows.forEach(ledger => {
                                    if (!igncode.includes(ledger.paycode)) {
                                        // totalsumdebit += parseFloat(ledger.amtdr) - parseFloat(ledger.amtcr || 0);
                                        totalsumdebit += parseFloat(ledger.amtdr);
                                    }
                                    tablebody += `<tr>
                                            <td style="white-space:nowrap;">${dmy(ledger.vdate)}</td>
                                            <td style="white-space:nowrap;">${ledger.vtype}/${ledger.vno}</td>
                                            <td>${ledger.comments}</td>
                                            <td style="white-space:nowrap; text-align:right;">${ledger.amtdr ?? '0'}</td>
                                            <td style="white-space:nowrap; text-align:right;">${ledger.amtcr ?? '0'}</td>
                                        </tr>`;
                                });

                                newWindow.document.title = `Bill Print - ${guest.name} Split ${splitVal}`;
                                $('#propertyid', newWindow.document).text(company.propertyid);
                                $('#folionodocid', newWindow.document).text(guest.docid);
                                $('#sno1', newWindow.document).text(guest.sno1);
                                $('#billno', newWindow.document).text(paycharger.billno);
                                $('#totalbalance', newWindow.document).text(totalsumdebit.toFixed(2));
                                $('#totalroomcharge', newWindow.document).text(totalsumdebit.toFixed(2));
                                $('#billprintingsummerised', newWindow.document).text(billprintingsummerised);
                                $('#taxsummary', newWindow.document).text(taxsummary);
                                $('#splitval', newWindow.document).text(splitVal);
                                $('#compname', newWindow.document).text(company.comp_name);
                                $('#invoiceno', newWindow.document).text(invoiceno);
                                $('#complogo', newWindow.document).attr('src', `storage/admin/property_logo/${company.logo}`);
                                $('.signimage', newWindow.document).append(guestsign);
                                $('#billdetails', newWindow.document).html(tablebody);
                                $('#totalsumdebit', newWindow.document).html(totalsumdebit.toFixed(2));

                                // Add empty padding rows to fill minimum 10 rows height
                                let actualRows = splitGroups[splitVal].rows.length;
                                let minRows = 10;
                                let emptyRowsNeeded = Math.max(0, minRows - actualRows);
                                let paddingHtml = '';
                                for (let i = 0; i < emptyRowsNeeded; i++) {
                                    paddingHtml += `<tr><td>&nbsp;</td><td></td><td></td><td></td><td></td></tr>`;
                                }
                                $('#billdetails-padding', newWindow.document).html(paddingHtml);

                            };
                        });
                    },
                    error: function(xhr, status, error) {
                        setTimeout(hideLoader, 500);
                        Swal.close(); // Close the SweetAlert on error
                        // Re-enable button on error
                        $('#submitBtn').prop('disabled', false).text('Bill Re Print');
                        console.error('Error printing bills:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Error occurred while printing bills. Please try again.'
                        });
                    }
                });
            });

            $('#billno').trigger('input');

        });
        $(document).ready(function() {
            let datanewvalue;
            let vprefixrow;
            $(document).on('click', '#guestledger tbody tr', function() {
                $('#guestledger tbody tr').removeClass('bgchangegtr');
                $(this).addClass('bgchangegtr');
                datanewvalue = $(this).data('new-value');
                datavalue = $(this).attr('vtype');
                vprefixrow = $(this).data('vprefixrow');
            });

            $(document).on('keydown', function(event) {
                if (event.shiftKey && event.key === 'D') {
                    let billno = $('#billno').val();
                    if (localStorage.getItem('allowdeletefom') != 'true') {
                        Swal.fire({
                            icon: 'error',
                            title: 'Unauthorized',
                            text: 'EInvoice has been generated for this bill, deletion is not allowed.',
                        });
                        return;
                    }
                    var selectedRows = $('#guestledger tbody tr[data-new-value="' + datanewvalue + '"]');
                    if (selectedRows.length > 0) {
                        Swal.fire({
                            icon: 'info',
                            title: 'Are you sure?',
                            text: 'Enter the reason for deleting:',
                            input: 'text',
                            inputPlaceholder: 'Reason',
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
                                                Swal.fire({
                                                    text: 'Selected Guest Ledger has been deleted',
                                                    icon: 'success',
                                                    timer: 2000,
                                                    showConfirmButton: false
                                                });

                                                setTimeout(() => {
                                                    Swal.close();
                                                    location.reload();
                                                }, 2000);
                                                selectedRows.remove();
                                            } else {
                                                Swal.fire({
                                                    text: result.message,
                                                    icon: 'error',
                                                    timer: 3000,
                                                    showConfirmButton: false
                                                });
                                                setTimeout(() => {
                                                    Swal.close();
                                                }, 3000);
                                            }
                                        }
                                    };
                                    xhrledger.send(`vprefix=${vprefixrow}&dataid=${datanewvalue}&datavalue=${datavalue}&reason=${reason}&_token={{ csrf_token() }}`);
                                } else {
                                    Swal.fire('No reason provided', 'You need to enter a reason to proceed.', 'info');
                                }
                            }
                        });
                    }
                }
            });

            setInterval(() => {
                let billno = $('#billno').val();
                if (billno == '') {
                    let table = $('#guestledger');
                    let tbody = $('#guestledger tbody');
                    let tfoot = $('#guestledger tfoot');
                    $('#paymodecomp').text('');
                    $('input.beempty').val('');
                    tfoot.css('display', 'none');
                    tbody.empty();
                    tfoot.empty();
                }
            }, 1000);

            $(document).on('click', '#einvoicebtn', function() {
                let $button = $(this);
                $button.text('Generating...').prop('disabled', true);
                let docid = $('#docid').val();
                let sno1 = $('#sno1').val();
                let billno = $('#billno').val();

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    }
                });

                $.ajax({
                    url: '/generate-einvoice',
                    type: 'POST',
                    data: {
                        docid: docid,
                        sno1: sno1,
                        billno: billno
                    },
                    success: function(response) {
                        $button.text('Generate E-Invoice').prop('disabled', false);
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'E-Invoice generated successfully',
                            });
                            setTimeout(() => {
                                window.location.reload();
                            }, 2000);
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: response.message || 'Error generating E-Invoice',
                            });
                        }
                    },
                    error: function(xhr, status, error) {
                        $button.text('Generate E-Invoice').prop('disabled', false);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Error generating E-Invoice',
                        });
                    }
                });
            });

            $(document).on('click', '#einvoicebtncancel', function() {
                let $button = $(this);
                $button.text('Cancelling...').prop('disabled', true);
                let docid = $('#docid').val();
                let sno1 = $('#sno1').val();
                let billno = $('#billno').val();

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    }
                });

                $.ajax({
                    url: '/cancel-einvoice',
                    type: 'POST',
                    data: {
                        type: 'FOM',
                        docid: docid,
                        sno1: sno1,
                        billno: billno
                    },
                    success: function(response) {
                        $button.text('Cancel E-Invoice').prop('disabled', false);
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'E-Invoice cancelled successfully',
                            });
                            setTimeout(() => {
                                window.location.reload();
                            }, 2000);
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: response.message || 'Error cancelling E-Invoice',
                            });
                        }
                    },
                    error: function(xhr, status, error) {
                        $button.text('Cancel E-Invoice').prop('disabled', false);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Error cancelling E-Invoice',
                        });
                    }
                });

            });
        });
    </script>

    {{-- Auto-load bill when opened from roomstatus Bill No. link --}}
    <script>
        $(document).ready(function () {
            const params = new URLSearchParams(window.location.search);
            const autoload = params.get('autoload');
            const billno   = params.get('billno');

            if (autoload === '1' && billno) {
                // Set bill no input and trigger search so the bill loads (no auto print)
                $('#billno').val(billno).trigger('input');
            }
        });
    </script>
@endsection
