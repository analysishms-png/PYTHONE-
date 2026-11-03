@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <style>
        .form-control {
            max-height: 34px !important;
            min-height: 19px !important;
        }

        .crdisps {
            display: none;
        }

        .pending-bill-meta {
            display: block;
            font-size: 11px;
            color: #666;
            margin-top: 2px;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">

                            <form class="form" name="salebillsettleform" action="{{ route('possalebillsettle') }}"
                                id="salebillsettleform" method="POST">
                                @csrf
                                <input type="hidden" value="{{ $depdata->dcode }}" name="dcode" id="dcode">
                                <input type="hidden" value="{{ $depdata->name }}" name="departname" id="departname">
                                <input type="hidden" value="{{ $vno }}" name="vno" id="vno">

                                <input type="hidden" name="dcode2" id="dcode2">
                                <input type="hidden" name="departname2" id="departname2">
                                <input type="hidden" name="vno2" id="vno2">


                                <div class="row mb-2">
                                    <div class="col-md-3">
                                        <label for="vprefix">For Year</label>
                                        <select class="form-control" name="vprefix" id="vprefix">
                                            @foreach (uniqueyearspos($depdata->dcode) as $item)
                                                <option value="{{ $item->prefix }}">{{ $item->prefix }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="billno" class="col-form-label">Bill No</label>
                                        <input value="{{ $vno }}" autocomplete="off" aria-autocomplete="list"
                                            placeholder="Enter Bill No..." type="text" class="form-control" name="billno"
                                            id="billno">
                                        {{-- <ul id="suggestions1" class="list-group suggestions-list mt-1"></ul> --}}
                                    </div>
                                    <div id="details" class="col-md-5">
                                        <div class="head2 d-flex bubble-text stylish-border">
                                            <p id="waitername"></p>
                                        </div>
                                    </div>
                                    <div id="deletediv" class="col-md-2 none">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn ml-1 rhead btn-sm btn-danger" name="deletebill"
                                            id="deletebill">Delete</button>
                                    </div>
                                    <div class="col-md-2">
                                        <button onclick="Simongoback()" style="width: -webkit-fill-available;" type="button"
                                            class="btn ml-1 rhead btn-sm btn-info" name="goback" id="goback">Display
                                            Table</button>
                                    </div>
                                </div>


                                <input type="hidden" value="{{ $companydata->comp_name }}" id="compname" name="compname">
                                <input type="hidden" value="{{ $companydata->address1 }}" id="address" name="address">
                                <input type="hidden" value="{{ $companydata->mobile }}" id="compmob" name="compmob">
                                <input type="hidden" value="{{ $companydata->email }}" id="email" name="email">
                                <input type="hidden" value="{{ $companydata->logo }}" id="logo" name="logo">
                                <input type="hidden" value="{{ $companydata->u_name }}" id="u_name" name="u_name">
                                <input type="hidden" name="sale1docid" value="" id="sale1docid">
                                <input type="hidden" value="" name="netamount" id="netamount">
                                <input type="hidden" value="" name="sno" id="sno">
                                <input type="hidden" value="" name="sno1" id="sno1">
                                <input type="hidden" value="" name="existing" id="existing">
                                <input type="hidden" value="" name="countrows" id="countrows">
                                <input type="hidden" value="{{ count($pending) }}" name="pendingrowscount"
                                    id="pendingrowscount">
                                <input type="hidden" value="" name="rowcount" id="rowcount">
                                <input type="hidden" value="N" name="oldbillyn" id="oldbillyn">

                                {{-- Secound Bill entry --}}

                                <input type="hidden" name="sale1docid2" value="" id="sale1docid2">
                                <input type="hidden" value="" name="netamount2" id="netamount2">
                                <input type="hidden" value="" name="sno2" id="sno2">
                                <input type="hidden" value="" name="sno12" id="sno12">
                                <input type="hidden" value="" name="existing2" id="existing2">
                                <input type="hidden" value="" name="countrows2" id="countrows2">
                                <input type="hidden" value="" name="rowcount2" id="rowcount2">
                                <input type="hidden" value="N" name="oldbillyn2" id="oldbillyn2">

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
                                                    <option data-id="{{ $item->nature }}" value="{{ $item->rev_code }}">
                                                        {{ $item->name }}
                                                    </option>
                                                    @php
                                                        $uniquerecords[] = $item->rev_code;
                                                    @endphp
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div id="dispcomp" class="none">
                                        <label for="company">Company</label>
                                        <select class="form-control select2-multiple" name="company" id="company">
                                            <option value="">Select</option>
                                            @foreach ($company as $item)
                                                <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="fixroomno">Table No</label>
                                        <input value="" type="text" name="fixroomno" id="fixroomno"
                                            class="fiveem form-control" readonly>
                                        <input value="" type="hidden" name="fixroomno2" id="fixroomno2">
                                    </div>
                                    <div id="roomsshow" class="none">
                                        <label for="roomno">Room No.</label>
                                        <select class="form-control" name="roomno" id="roomno">
                                            <option value="">Select</option>
                                            @foreach ($secondrooms as $item)
                                                <option value="{{ $item->roomno }}">
                                                    {{ $item->roomno }} - {{ $item->name }} - F.O. {{ $item->folioNo }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="amount">Amount</label>
                                        <input value="" autocomplete="off" aria-autocomplete="none" type="number"
                                            oninput="allmx(this, 6)" placeholder="Enter Amt." name="amount" id="amount"
                                            class="form-control">
                                    </div>
                                    <div class="">
                                        <label for="narration">Narration</label>
                                        <input type="text" value="" placeholder="Enter Narration"
                                            name="narration" id="narration" class="form-control">
                                    </div>
                                    <div class="crdisps">
                                        <label for="crnumber">Credit Card Number</label>
                                        <input type="number" oninput="allmx(this, 16)" value=""
                                            placeholder="Enter Credit Card" name="crnumber" id="crnumber"
                                            class="form-control">
                                    </div>
                                    <div class="crdisps">
                                        <label for="holdername">Holder Name</label>
                                        <input type="text" value="" placeholder="Enter Name"
                                            name="holdername" id="holdername" class="form-control">
                                    </div>
                                    <div class="crdisps">
                                        <label for="expdatecr">Exp. Date</label>
                                        <input type="date" oninput="PastDtNA(this)" value="" name="expdatecr" id="expdatecr"
                                            class="form-control">
                                    </div>
                                    <div class="crdisps">
                                        <label for="batchno">Batch No.</label>
                                        <input type="number" oninput="allmx(this, 10)" value=""
                                            placeholder="Enter Batch  No." name="batchno" id="batchno" class="form-control">
                                    </div>
                                    <div id="upidisp" class="none">
                                        <label for="referencenoupi">UPI Reference No.</label>
                                        <input type="text" oninput="allmx(this, 25)" value=""
                                            placeholder="Enter Reference No." name="referencenoupi" id="referencenoupi"
                                            class="form-control">
                                    </div>
                                </div>

                                <h5 class="text-center mt-4 adc-alt bg-facebook text-white p-1">Payment/Charge Details</h5>
                                <div class="d-flex">
                                    <div class="col-md-3">
                                        <table class="table text-nowrap table-striped table-item table-hover"
                                            id="chargeadded">
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
                                        <div class="mt-3 text-center">
                                            <button id="submitBtn" onclick="wantprint()" type="submit"
                                                class="btn ti-save btn-primary">
                                                Submit</button>
                                            <p id="settledshow" class="text font-weight-bold ARK"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 offset-1 mt-4">
                                        <table id="resettletable" class="table-success boxbg">
                                            <thead>
                                                <tr>
                                                    <th class="p-2">Total Amount</th>
                                                    <td id="totalamt"></td>
                                                </tr>
                                                <tr>
                                                    <th class="p-2">Paid Amount</th>
                                                    <td id="paidamt2"></td>
                                                    <input type="hidden" id="paidamt" name="paidamt">
                                                </tr>
                                                <tr>
                                                    <th class="p-2">Balance</th>
                                                    <td id="balanceamt"></td>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>
                                    <div class="col-md-6">
                                        <table id="pendinglisttable"
                                            class="table table-hover table-responsive table-striped">
                                            <thead>
                                                <tr class="thead-dark">
                                                    <th colspan="5">Settlement Payment Pending Bill Details</th>
                                                </tr>
                                                <tr>
                                                    <th>Bill No.</th>
                                                    <th>Table No.</th>
                                                    <th>Waiter</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($pending as $item)
                                                    <tr data-billedyear="{{ $item['billedyear'] }}" data-billno="{{ $item['vno'] }}" style="background:{{ $item['billedyear'] < now()->year ? '#da000059' : '#fff' }};cursor:pointer">
                                                        <td class="pendingbillno curp">
                                                            {{ $item['vno'] }} <b>(Yr. {{ $item['billedyear'] }})</b>
                                                            <span class="pending-bill-meta">
                                                                Net: {{ number_format((float) $item['netamt'], 2) }}
                                                            </span>
                                                        </td>
                                                        <td>
                                                            {{ $item['roomno'] }}
                                                            <span class="pending-bill-meta">
                                                                Paid: {{ number_format((float) $item['total_paid'], 2) }}
                                                            </span>
                                                        </td>
                                                        <td>
                                                            {{ $item['waitername'] }}
                                                            <span class="pending-bill-meta">
                                                                Balance: {{ number_format((float) $item['balanceamt'], 2) }}
                                                            </span>
                                                        </td>
                                                        <td>Pending</td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{--
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script> --}}
    <script>
        function Simongoback() {
            window.location.href = `displaytable?dcode=${$('#dcode').val()}`;
        }

        $(document).ready(function() {

            $(document).on('click', '.pendingbillno', function() {
                let vno = $(this).closest('tr').data('billno');
                let billedyear = $(this).closest('tr').data('billedyear');
                $('#billno').val(vno);
                $('#vprefix').val(billedyear);
                $('#billno').trigger('input');
            });
            let mvno = $('#vno').val();
            if (mvno != '') {
                setTimeout(() => {
                    $('#billno').trigger('input');
                }, 500);
            }

            const pending = $('#pendingrowscount').val();
            if (pending == 0) {
                pushNotify('error', 'Settlement Entry', 'No Pending Records Found', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
            } else {
                pushNotify('success', 'Settlement Entry', `${pending} Pending Bill Records Found`, 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
            }
            let inputTimer;
            $(document).on('input', '#billno', function() {
                clearTimeout(inputTimer);
                // console.log('Input detected, waiting for pause...');
                inputTimer = setTimeout(() => {
                    let tbody = $('#chargeadded tbody');
                    tbody.empty();
                    currentRowCount = 0;
                    $('#totalamt').text('');
                    $('#paidamt').val('');
                    $('#paidamt2').text('');
                    $('#balanceamt').text('');
                    let billno = $(this).val();
                    let dcode = $('#dcode').val();
                    let vprefix = $('#vprefix').val();
                    let setentrypos = new XMLHttpRequest();
                    setentrypos.open('POST', '/setentrypos', true);
                    setentrypos.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                    setentrypos.onreadystatechange = function() {
                        if (setentrypos.status === 200 && setentrypos.readyState === 4) {
                            let result = JSON.parse(setentrypos.responseText);
                            // console.log(result.depart2);
                            let sale1 = result.sale1;
                            let sale2 = result.sale2;
                            let netamt = result.netamt;
                            if (sale1 === null) {
                                pushNotify('error', 'Settlement Entry', `Invalid Bill No. ${result.billno}`, 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                            } else {
                                // let sale2netamt = 0.00;
                                if (sale2 !== null) {
                                    $("#sale1docid2").val(sale2.docid);
                                    $("#netamount2").val(sale2.netamt);
                                }
                                let finelNetAmt = parseFloat(netamt);
                                $('#totalamt').text(parseFloat(finelNetAmt));
                                let paycharge1 = result.paycharge1;
                                let paycharge2 = result.paycharge2;
                                $('#waitername').text(`Waiter: ${result.sale1.waitername ?? ''}`);
                                if (paycharge2.length == 0) {
                                    $('#deletediv').addClass('none');
                                    $('#paidamt').val('0.00');
                                    $('#paidamt2').text('0.00');
                                    $('#rowcount').val('');
                                    $('#oldbillyn').val('N');
                                } else {
                                    // Set Form Route #address
                                    $('#salebillsettleform').attr('action', '{{ route('possalebillsettleupdate') }}');
                                    $('#deletediv').removeClass('none');
                                    currentRowCount = paycharge2.length;
                                    $('#rowcount').val(paycharge2.length);
                                    $('#oldbillyn').val('Y');
                                }
                                let paidamt = 0.00;
                                let fdata = '';
                                let sno = 1;
                                paycharge2.forEach((data, index) => {
                                    if (parseFloat(data.amtcr) === 0.00) {
                                        return;
                                    }

                                    paidamt += parseFloat(data.amtcr);
                                    fdata += `<tr>
                                                                        <td><input type="hidden" value="${sno}" name="sno${sno}" id="sno${sno}"><span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span> <p style="display: contents;">${sno}</p></td>
                                                                        <td><input type="hidden" value="${data.comments}" name="chargetype${sno}" id="chargetype${sno}">
                                                                        <input type="hidden" value="${data.paycode}" name="chargecode${sno}" id="chargecode${sno}">
                                                                        <input type="hidden" value="${data.comp_code}" name="compcode${sno}" id="compcode${sno}">
                                                                        <input type="hidden" value="${data.comments}" name="chargenarration${sno}" id="chargenarration${sno}">${data.comments}  <b>${data.companyname ?? ''}</b></td>
                                                                        <td><input type="hidden" class="amtrow" value=${data.amtcr} name="amtrow${sno}" id="amtrow${sno}">${data.amtcr}</td>
                                                                    </tr>`;
                                    sno++;
                                });

                                $('#chargeadded tbody').append(fdata);
                                let balance = finelNetAmt - paidamt;
                                $('#balanceamt').text(balance.toFixed(2));
                                //$('#paidamt').val(sale1.netamt);
                                $('#paidamt').val(netamt);
                                $('#paidamt2').text(paidamt.toFixed(2));
                                $('#amount').val(balance.toFixed(2));
                                $('#C').val(sale1.roomno);
                                $('#fixroomno').val(sale1.roomno);
                                $('#sale1docid').val(sale1.docid);
                                if (sale2 !== null) {

                                    $('#dcode2').val(sale2.restcode);
                                    // $('#departname2').val(result.depart2.name ?? '');
                                    $('#vno2').val(sale2.vno);

                                    $('#fixroomno2').val(sale2.roomno);
                                    $('#sale1docid2').val(sale2.docid);
                                    $('#netamount2').val(parseFloat(sale2.netamt));
                                }
                                $('#netamount').val(parseFloat(sale1.netamt));
                                let countrow = $('#chargeadded tbody tr').length;
                                $('#countrows').val(countrow);
                                currentRowCount = countrow;
                                $('#rowcount').val(countrow);
                                if (result.settled == 'Yes') {
                                    $('#submitBtn').fadeOut('1000');
                                    $('#settledshow').html(`Bill Already settled with roomno ${result.settledroom}`).fadeIn('1000');
                                } else {
                                    $('#submitBtn').fadeIn('1000');
                                    $('#settledshow').fadeOut('1000');
                                }
                            }
                        }
                    }
                    setentrypos.send(`vprefix=${vprefix}&dcode=${dcode}&billno=${billno}&_token={{ csrf_token() }}`);
                }, 2000);
            });
            3568550000


            let billnos = [];
            let dcode = $('#dcode').val();
            let allsalebillxhr = new XMLHttpRequest();
            allsalebillxhr.open('POST', '/allbillxhrsale', true);
            allsalebillxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            allsalebillxhr.onreadystatechange = function() {
                if (allsalebillxhr.status === 200 && allsalebillxhr.readyState === 4) {
                    let results = JSON.parse(allsalebillxhr.responseText);
                    let sale1 = results.sale1;
                    sale1.forEach((data) => {
                        billnos.push(data.vno.toString());
                    });

                    initAutoSuggest('billno', 'suggestions1', billnos);
                    if (results.length == 0 || results == null) {
                        pushNotify('info', 'No Data Found', 'No Data Found');
                        return;
                    }
                }
            }
            allsalebillxhr.send(`vprefix=${$('#vprefix').val()}&dcode=${dcode}&_token={{ csrf_token() }}`);
        });

        $(document).on('change', '#billno', function() {
            let billno = $(this).val();

        });

        let timer;
        let currentRowCount = 0; // Global variable for row counter

        $(document).ready(function() {
            let oldbillyn = $('#oldbillyn');
            // Initialize row counter from existing rows
            currentRowCount = 0;
            $('#chargeadded tbody tr').each(function() {
                currentRowCount++;
            });

            $('#charge').on('change', function() {
                let curval = $(this).find('option:selected').text().trim();
                if (curval == 'ROOM SETTLEMENT') {
                    $('#roomsshow').removeClass('none');
                    $('#roomno').prop('required', true);
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

            $('#amount').keypress(function(e) {
                if (e.which == 13) {
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

            // Handle row addition on Enter key
            $('#narration, #batchno, #referencenoupi').keypress(function(e) {
                if (e.which == 13) {
                    e.preventDefault();
                    addChargeRow();
                }
            });

            // Add Charge Row Function
            function addChargeRow() {
                let chargecode = $('#charge').val();
                let amttmp = $('#amount').val();
                let amt = parseFloat(amttmp);

                // Validation: Check if charge code is selected
                if (!chargecode || chargecode.trim() === '') {
                    pushNotify('error', 'Validation Error', 'Please select a Charge/Payment type');
                    $('#charge').focus();
                    return false;
                }

                // Validation: Check if amount is valid
                if (!amttmp || amt <= 0 || isNaN(amt)) {
                    pushNotify('error', 'Validation Error', 'Please enter a valid amount greater than 0');
                    $('#amount').focus();
                    return false;
                }

                let balanceamttmp = $('#balanceamt').text();
                let balanceamt = parseFloat(balanceamttmp);

                // Validation: Check if balance is 0
                if (balanceamt <= 0) {
                    pushNotify('warning', 'Settlement Complete', 'Balance is already settled');
                    return false;
                }

                // Validation: Check if amount exceeds balance
                if (amt > balanceamt) {
                    pushNotify('error', 'Amount Error', 'Amount cannot exceed balance of ' + balanceamt.toFixed(2));
                    $('#amount').focus();
                    return false;
                }

                // Get charge data
                let chargetype = $('#charge').find('option:selected').text();
                let compcode = $('#company').find('option:selected').val() ?? '';
                let chargenarration = $('#charge').find('option:selected').data('id');

                // Update balances
                let newbalanceamt = balanceamt - amt;
                let paidamttmp = $('#paidamt2').text();
                let paidamt = parseFloat(paidamttmp);
                let newpaidamt = amt + paidamt;

                $('#balanceamt').text(newbalanceamt.toFixed(2));
                $('#paidamt2').text(newpaidamt.toFixed(2));
                $('#netamount').val(newpaidamt.toFixed(2));

                // Increment row count before creating row
                currentRowCount = parseInt(currentRowCount) + 1;
                let newRowIndex = currentRowCount;

                // Create new row
                let tbody = $('#chargeadded tbody');
                let row = $('<tr>');
                let data = `
                            <td><input type="hidden" value="${newRowIndex}" name="sno${newRowIndex}" id="sno${newRowIndex}"><span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span> <p style="display: contents;">${newRowIndex}</p></td>
                            <td><input type="hidden" value="${chargetype}" name="chargetype${newRowIndex}" id="chargetype${newRowIndex}">
                                <input type="hidden" value="${chargecode}" name="chargecode${newRowIndex}" id="chargecode${newRowIndex}">
                                <input type="hidden" value="${compcode}" name="compcode${newRowIndex}" id="compcode${newRowIndex}">
                                <input type="hidden" value="${chargenarration}" name="chargenarration${newRowIndex}" id="chargenarration${newRowIndex}">${chargetype}</td>
                            <td><input type="hidden" class="amtrow" value="${amt.toFixed(2)}" name="amtrow${newRowIndex}" id="amtrow${newRowIndex}">${amt.toFixed(2)}</td>
                        `;
                row.append(data);
                tbody.append(row);

                // Update rowcount field
                $('#rowcount').val(newRowIndex);

                // Reset form inputs
                $('#charge').val('');
                $('#company').val('');
                $('#amount').val('');
                $('#narration').val('');
                $('#dispcomp').addClass('none');

                // Auto-fill balance if settlement is complete
                if (newbalanceamt.toFixed(2) == '0.00') {
                    pushNotify('success', 'Settlement Complete', 'Balance is now settled');
                }

                return true;
            }

            // Remove row handler
            $('#chargeadded tbody').on('click', '.removeItem', function() {
                let row = $(this).closest('tr');
                let amt = parseFloat(row.find('.amtrow').val());

                // Update balances
                let paidamt = parseFloat($('#paidamt2').text());
                let newpaidamt = paidamt - amt;
                $('#paidamt2').text(newpaidamt.toFixed(2));
                $('#netamount').val(newpaidamt.toFixed(2));

                let balanceamt = parseFloat($('#balanceamt').text());
                let newBalanceAmt = balanceamt + amt;
                $('#balanceamt').text(newBalanceAmt.toFixed(2));

                // Remove row
                row.remove();
                console.log('Row removed Count before removal: ' + currentRowCount);
                currentRowCount--;
                console.log('Current Row Count after removal: ' + currentRowCount);

                // Reindex all rows
                let tbody = $('#chargeadded tbody');
                tbody.find('tr').each(function(index) {
                    let newIndex = index + 1;
                    $(this).find('td:first p').text(newIndex);

                    // Update all input names with new index
                    $(this).find('input[type="hidden"]').each(function() {
                        let name = $(this).attr('name');
                        let newName = name.replace(/\d+$/, newIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newName);
                    });

                    // Also update the value of sno input
                    $(this).find('input[name^="sno"]').val(newIndex);
                });

                // Update rowcount
                $('#rowcount').val(currentRowCount);

                if (currentRowCount === 0) {
                    pushNotify('info', 'Row Removed', 'All rows have been removed');
                }
            });

            $('#submitBtn').click(function(e) {
                // Prevent default form submission to handle validation first
                e.preventDefault();

                // Check if button is already disabled to prevent double-clicking
                if ($(this).prop('disabled')) {
                    return false;
                }

                // Validate balance
                let balance = parseFloat($('#balanceamt').text());
                if (balance !== 0) {
                    pushNotify('error', 'Validation Error', 'Balance must be 0.00 for settlement. Current balance: ' + balance.toFixed(2));
                    return false;
                }

                // Validate that at least one row exists
                let rowcount = parseInt($('#rowcount').val()) || 0;
                if (rowcount === 0) {
                    pushNotify('error', 'Validation Error', 'Please add at least one payment/charge entry');
                    return false;
                }

                // Validate all rows have paycode and valid amount
                let isValid = true;
                for (let i = 1; i <= rowcount; i++) {
                    let paycode = $('#chargecode' + i).val();
                    let amount = $('#amtrow' + i).val();

                    if (!paycode || paycode.trim() === '') {
                        pushNotify('error', 'Validation Error', 'Row ' + i + ' is missing payment code');
                        isValid = false;
                        break;
                    }

                    let amt = parseFloat(amount);
                    if (!amount || amt <= 0 || isNaN(amt)) {
                        pushNotify('error', 'Validation Error', 'Row ' + i + ' has invalid amount');
                        isValid = false;
                        break;
                    }
                }

                if (!isValid) {
                    return false;
                }

                // Disable button and show processing
                $(this).prop('disabled', true);
                let originalText = $(this).text();
                $(this).text('Processing...');

                // Submit the form
                let self = this;
                setTimeout(function() {
                    wantprint();
                    $(self).closest('form')[0].submit();
                }, 300);

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
            // $('#billno').trigger('input');

            $(document).on('click', '#deletebill', function() {
                let saledocid = $('#sale1docid').val();
                let billno = $('#billno').val();
                if (billno != '' && saledocid != '') {
                    Swal.fire({
                        title: 'Settlement Entry',
                        icon: 'question',
                        text: `Are you sure you want to delete billo ${billno}`,
                        showCancelButton: true,
                        showConfirmButton: true,
                        confirmButtonText: 'Delete',
                        input: 'text',
                        inputValidator: (value) => {
                            if (!value) {
                                return 'Reason is required';
                            }
                        }
                    }).then((success) => {
                        if (success.isConfirmed) {
                            let reason = success.value;
                            let deletebillxhr = new XMLHttpRequest();
                            deletebillxhr.open('post', '/deletebillxhr', true);
                            deletebillxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                            deletebillxhr.onreadystatechange = function() {
                                let result = JSON.parse(deletebillxhr.responseText);
                                pushNotify('success', 'Success', result, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                                setTimeout(() => {
                                    location.reload();
                                }, 2000);
                            }
                            deletebillxhr.send(`docid=${saledocid}&reason=${reason}&_token={{ csrf_token() }}`);
                        }
                    });
                }
            });
        });


        // Force remove readonly from all inputs except #fixroomno
        function removeReadonlyFromAllInputs() {
            const allInputs = document.querySelectorAll('input, select, textarea');

            allInputs.forEach(function(element) {

                // Skip the element with id="fixroomno"
                if (element.id === 'fixroomno') {
                    return;
                }

                element.removeAttribute('readonly');
                element.removeAttribute('disabled');

                element.style.pointerEvents = 'auto';
                element.style.userSelect = 'auto';
                element.style.webkitUserSelect = 'auto';

                if (element.hasAttribute('contenteditable')) {
                    element.setAttribute('contenteditable', 'true');
                }
            });
        }

        document.addEventListener('DOMContentLoaded', function() {
            removeReadonlyFromAllInputs();

            setTimeout(removeReadonlyFromAllInputs, 500);
            setTimeout(removeReadonlyFromAllInputs, 1000);
            setTimeout(removeReadonlyFromAllInputs, 2000);
        });

        // MutationObserver
        const observer = new MutationObserver(function(mutations) {
            mutations.forEach(function(mutation) {

                const element = mutation.target;

                // Skip #fixroomno
                if (element.id === 'fixroomno') {
                    return;
                }

                if (
                    mutation.type === 'attributes' &&
                    (mutation.attributeName === 'readonly' ||
                        mutation.attributeName === 'disabled')
                ) {
                    element.removeAttribute('readonly');
                    element.removeAttribute('disabled');
                    element.style.pointerEvents = 'auto';
                }
            });
        });

        document.addEventListener('DOMContentLoaded', function() {
            const config = {
                attributes: true,
                childList: true,
                subtree: true,
                attributeFilter: ['readonly', 'disabled']
            };
            observer.observe(document.body, config);
        });

        window.addEventListener('load', function() {
            removeReadonlyFromAllInputs();
        });
    </script>
@endsection
