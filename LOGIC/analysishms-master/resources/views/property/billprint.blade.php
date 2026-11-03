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
    <form class="form" name="billprintform" id="billprintform" method="POST">
        @csrf
        {{-- <form id="billprintform" name="billprintform" method="post">
        @csrf --}}
        <div style="font-size: small;" class="col-md-12">
            <h3 class="text-center BCH-alt border-bottom-1">Bill Print</h3>
            <p class="none" id="docid">{{ $docid }}</p>
            <p class="none" id="sno1">{{ $sno1 }}</p>
            {{-- <p class="none" id="folionodocid">{{ $data[0]->folionodocid }}</p> --}}
            <p class="none" id="propertyid">{{ $company->propertyid }}</p>
            <input type="hidden" value="{{ $company->comp_name }}" id="compname" name="compname">
            <input type="hidden" value="{{ $company->address1 }}" id="address" name="address">
            <input type="hidden" value="{{ $company->address2 }}" id="address2" name="address2">
            <input type="hidden" value="{{ $company->city }}" id="city" name="city">
            <input type="hidden" value="{{ $company->mobile }}" id="compmob" name="compmob">
            <input type="hidden" value="{{ $company->email }}" id="email" name="email">
            <input type="hidden" value="{{ $company->logo }}" id="logo" name="logo">
            <input type="hidden" value="{{ $company->u_name }}" id="u_name" name="u_name">
            <input type="hidden" value="{{ $company->gstin }}" id="gstin" name="gstin">
            <input type="hidden" value="{{ $roomoccdata->roomno }}" id="rooomoccroomno" name="rooomoccroomno">
            <input type="hidden" class="none" name="docid" id="docid" value="{{ $docid }}">
            <input type="hidden" class="none" name="sno1" id="sno1" value="{{ $sno1 }}">
            <input type="hidden" class="none" name="sno" id="sno" value="{{ $sno }}">
            <input type="hidden" class="none" name="folionodocid" id="folionodocid"
                value="{{ $data[0]->folionodocid }}">
            <input type="hidden" class="none" name="guestsign" id="guestsign" value="{{ $guestprof->guestsign }}">
            <input type="hidden" class="none" name="propertyid" id="propertyid" value="{{ $company->propertyid }}">
            <input type="hidden" class="none" name="billamt" id="billamt" value="{{ $billamt }}">
            <input type="hidden" class="none" name="name" id="name" value="{{ $roomoccdata->name }}">
            <input type="hidden" class="none" name="folioNo" id="folioNo" value="{{ $roomoccdata->folioNo }}">
            <input type="hidden" class="none" name="split" id="split" value="1">
            <input type="hidden" class="none" name="onamt" id="onamt" value="{{ $onamt }}">
            <input type="hidden" class="none" name="taxsummary" id="taxsummary" value="{{ $enviro_form->taxsummary }}">
            <input type="hidden" value="{{ $enviro_form->billprintingsummerised }}" name="billprintingsummerised" id="billprintingsummerised">
            <input type="hidden" class="none" name="totalbalinput" id="totalbalinput">
            <input type="hidden" name="rowcount" id="rowcount">

            <div id="alertspandiv" style="display: none;" class="alert alert-primary alert-dismissible fade show"
                role="alert">
                <strong><span id="alertmsg"></span></strong>
            </div>

            <div class="scrollbar" id="style-7">
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

        <div class="text-center">
            <button name="billprint" type="submit" id="submitBtn" class="btn btn-outline-success ti-bookmark-alt">
                Bill
                Print
            </button>
        </div>
    </form>
</body>

</html>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    $(document).ready(function() {

        $('#billprintform').on('submit', function(e) {
            e.preventDefault();

            $('#submitBtn').prop('disabled', true).text('Processing...');

            showLoader();
            let formData = new FormData(this);
            let folionodocid = $('#folionodocid').val();
            let sno1 = $('#sno1').val();
            let sno = $('#sno').val();

            $.ajax({
                url: '{{ url('chkkotpendingroom') }}',
                method: 'POST',
                data: {
                    folionodocid: folionodocid,
                    sno1: sno1,
                    sno: sno
                },
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function(response) {
                    if (response.kot == 'pending') {
                        $('#submitBtn').prop('disabled', false).text('Bill Print');
                        Swal.fire({
                            title: 'KOT Pending',
                            icon: 'info',
                            text: response.message
                        });
                    } else {
                        $.ajax({
                            url: '{{ route('billdatasubmit') }}',
                            method: 'POST',
                            data: formData,
                            processData: false,
                            contentType: false,
                            headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}"
                            },
                            success: function(response) {
                                // Refresh reload page routename inhouseroomstatus
                                setTimeout(() => {
                                    window.location.href = 'autorefreshmain';
                                }, 2000);
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

                                Object.keys(splitGroups).forEach(splitVal => {
                                    let newWindow = window.open('{{ url('billprintview') }}', '_blank');

                                    newWindow.onload = function() {
                                        let tablebody = '';
                                        let totalsumdebit = 0.00;
                                        splitGroups[splitVal].rows.forEach(ledger => {
                                            if (!igncode.includes(ledger.paycode)) {
                                                totalsumdebit += parseFloat(ledger.amtdr);
                                            }
                                            tablebody += `<tr>
                                        <td style="white-space: nowrap;">${dmy(ledger.vdate)}</td>
                                        <td>${ledger.vtype}/${ledger.vno}</td>
                                        <td>${ledger.comments}</td>
                                        <td>${ledger.amtdr ?? '0'}</td>
                                        <td>${ledger.amtcr ?? '0'}</td>
                                    </tr>`;
                                        });

                                        let compname = $('#compname').val();
                                        let address1 = $('#address').val();
                                        let address2 = $('#address2').val();
                                        let city = $('#city').val();
                                        let name = $('#name').val();
                                        let mob = $('#compmob').val();
                                        let email = $('#email').val();
                                        let gstin = $('#gstin').val();

                                        newWindow.document.title = `Bill Print - ${guest.name} Split ${splitVal}`;
                                        $('#compname', newWindow.document).text(compname);
                                        $('#address1', newWindow.document).text(address1);
                                        $('#address2', newWindow.document).text(address2);
                                        $('#name', newWindow.document).text(name);
                                        $('#phone', newWindow.document).text(mob);
                                        $('#email', newWindow.document).text(email);
                                        $('#gstin', newWindow.document).text(gstin);
                                        $('#complogo', newWindow.document).attr('src', `storage/admin/property_logo/${company.logo}`);
                                        $('#propertyid', newWindow.document).text(company.propertyid);
                                        $('#folionodocid', newWindow.document).text(guest.docid);
                                        $('#sno1', newWindow.document).text(guest.sno1);
                                        $('#sno', newWindow.document).text(guest.sno);
                                        $('#billno', newWindow.document).text(paycharger.billno);
                                        $('#totalbalance', newWindow.document).text(totalbalance.toFixed(2));
                                        $('#totalsumdebittemp', newWindow.document).text(totalsumdebit.toFixed(2));
                                        $('#totalroomcharge', newWindow.document).text(totalsumdebit.toFixed(2));
                                        $('#onamttotals', newWindow.document).text(totalsumdebit.toFixed(2));
                                        $('#billamount', newWindow.document).text(totalbalance.toFixed(2));
                                        $('#billprintingsummerised', newWindow.document).text(billprintingsummerised);
                                        $('#taxsummary', newWindow.document).text(taxsummary);
                                        $('#splitval', newWindow.document).text(splitVal);
                                        $('#invoiceno', newWindow.document).text(invoiceno);
                                        $('.signimage', newWindow.document).append(guestsign);
                                        $('#billdetails', newWindow.document).html(tablebody);
                                        $('#totalsumdebit', newWindow.document).html(totalsumdebit.toFixed(2));

                                    };
                                });
                            },
                            error: function(xhr, status, error) {
                                setTimeout(hideLoader, 500);
                                $('#submitBtn').prop('disabled', false).text('Bill Print');
                                console.error('Error printing bills:', error);
                                alert('Error occurred while printing bills. Please try again.');
                            }
                        });
                    }
                },
                error: function(xhr, status, error) {
                    setTimeout(hideLoader, 500);
                    $('#submitBtn').prop('disabled', false).text('Bill Print');
                    console.error('Error printing bills:', error);
                    alert('Error occurred while printing bills. Please try again.');
                }
            })

        });
    });

    $(document).ready(function() {
        let docid = $('#docid').text();
        let sno1 = $('#sno1').text();
        var xhrledger = new XMLHttpRequest();
        xhrledger.open('POST', '/fetchdatabillprint', true);
        xhrledger.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhrledger.onreadystatechange = function() {
            if (xhrledger.readyState === 4 && xhrledger.status === 200) {
                var result = JSON.parse(xhrledger.responseText);
                let table = $('#guestledger');
                let tbody = $('#guestledger tbody');
                let tfoot = $('#guestledger tfoot');
                tfoot.css('display', 'contents');
                tbody.empty();
                let totalDebit = 0;

                let totalCredit = 0;
                let sn = 1;
                result.forEach(function(ledger) {
                    let amtdr = parseFloat(ledger.amtdr);
                    let amtcr = parseFloat(ledger.amtcr || 0);
                    var taxper = parseFloat(ledger.taxper || 0);
                    let vdatetmp = ledger.vdate;
                    let parts = vdatetmp.split('-');
                    let vdate = parts[2] + '-' + parts[1] + '-' + parts[0].slice(2);

                    let row = `<tr vtype="${ledger.vtype}" removable="${ledger.field_type}" docid="${ledger.docid}" sno1="${ledger.sno1}" sno="${ledger.sno}" data-new-value="${ledger.vno}" data-value="${vdate}" data-id="${ledger.vno}">
                                    <td style="white-space: nowrap;">${vdate}</td>
                                    <td class="none">${ledger.vtype}/${ledger.vno}</td>
                                    <td>${ledger.comments}</td>
                                    <td data-id="${vdate}" data-value="${ledger.comments}" class="debitamt" id="debitamt">
                                        <input removable="${ledger.field_type}" data-id="${ledger.docid}" type="text" class="reprintrooomval" name="room_charge_${sn}" id="room_charge_${sn}" value="${amtdr.toFixed(2)}" ${(ledger.comments.slice(0, 11) == 'ROOM CHARGE' ? '' : 'readonly')}>
                                        <input type="hidden" name="paydocid${sn}" id="paydocid${sn}" value="${ledger.docid}">
                                        <input type="hidden" name="paysno${sn}" id="paysno${sn}" value="${ledger.sno}">
                                        <input type="hidden" data-id="${ledger.docid}" name="paysnoone${sn}" id="paysnoone${sn}" value="${ledger.sno1}">
                                        <input type="hidden" class="paybillamt" data-id="${ledger.docid}" name="paybillamt${sn}" id="paybillamt${sn}" value="${ledger.billamount}">
                                        <input type="hidden" class="payonamt" data-id="${ledger.docid}" name="payonamt${sn}" id="payonamt${sn}" value="${ledger.onamt}">
                                    </td>
                                    <td data-id="${vdate}" class="creditamtcell">${amtcr.toFixed(2)}</td>
                                    <td data-id="${vdate}" class="balance"></td>
                                    <td data-id="${vdate}" class="dr-cr"></td>
                                    <td>${ledger.u_name}</td>
                                    <td class="taxper none">${taxper.toFixed(2)}</td>
                                    <td data-value="${ledger.comments}" class="split">
                                        <input type="text" class="splitinput" name="split_value_${sn}" id="split_value_${sn}" value="${ledger.split}">
                                   </td>
                                </tr>
                                `;

                    tbody.append(row);
                    totalDebit += amtdr;
                    totalCredit += amtcr;
                    sn++;
                });
                $('#rowcount').val(sn);
                let balance = totalDebit - totalCredit;
                let tfoototalbal = parseFloat(balance.toFixed(2));
                $('#totalbalinput').val(tfoototalbal);
                let btn = false;
                if (tfoototalbal < 0) {
                    $('#submitBtn').remove();
                    $('#guestledger').after('<p class="text-center h3 text-danger">First Post Refund and Retention!</br>To Print Bill</p>');
                }
                let balanceType = balance >= 0 ? 'Dr' : 'Cr';
                let totalRow = '<tr style="font-weight: 600;">' +
                    '<td><b>Total</b></td>' +
                    '<td>‎</td>' +
                    '<td id="totalDebit">' + totalDebit.toFixed(2) + '</td>' +
                    '<td id="totalCredit">' + totalCredit.toFixed(2) + '</td>' +
                    '<td id="totalBalance">' + Math.abs(tfoototalbal) + '</td>' +
                    '<td id="totalDrCr">' + balanceType + '</td>' +
                    '<td>‎</td>' +
                    '</tr>';
                tfoot.empty().append(totalRow);

                var rows = document.querySelectorAll('#guestledger tbody tr');
                var prevBalance = 0;
                var totalBalance = 0;

                rows.forEach((row, index) => {
                    var debitCell = row.querySelector('td:nth-child(4)');
                    var creditCell = row.querySelector('td:nth-child(5)');
                    var balanceCell = row.querySelector('.balance');
                    var drCrCell = row.querySelector('.dr-cr');

                    if (debitCell && creditCell && balanceCell && drCrCell) {
                        var debit = parseFloat(debitCell.innerText);
                        if (isNaN(debit)) {
                            let inputValue = $(`input[name="room_charge_${index + 1}"]`).val();
                            debit = parseFloat(inputValue);
                        }
                        var credit = parseFloat(creditCell.innerText);
                        var balance = prevBalance + debit - credit;
                        drCrCell.innerText = balance < 0 ? 'Cr' : 'Dr';
                        balanceCell.innerText = Math.abs(balance.toFixed(2));
                        prevBalance = balance;
                        var absolutebalance = Math.abs(balance.toFixed(2));
                        totalBalance += parseFloat(absolutebalance);
                    } else {
                        // console.log('Cells not found');
                    }
                });

            }
        }
        xhrledger.send(`docid=${docid}&sno1=${sno1}&_token={{ csrf_token() }}`);


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
                        pushNotify('success', 'Bill Reprint', data.message, 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                        // setTimeout(() => {
                        //     location.reload();
                        // }, 1000);
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

        $('#guestledger tbody').on('input', 'input[name^="room_charge_"]', function() {
            let rows = $(this).closest('tbody').find('tr');
            let tdvdate = $(this).closest('td').data('id');
            let debitCell = parseFloat($(this).val());
            let taxableamt = debitCell;
            $('#onamt').val(taxableamt);
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
            nextRows.each(function(index, row) {
                let trvdate = $(this).data('value');
                let debitcellnewtmp = $(row).find('td:nth-child(4)');
                let debitcellnew = parseFloat(debitcellnewtmp.text());
                let debitcellnewforsum = parseFloat(debitcellnewtmp.text());
                if (isNaN(debitcellnewforsum)) {
                    let inputValue = $(`input[name^="room_charge_${index + 2}"]`).val();
                    debitcellnewforsum = parseFloat(inputValue);
                }
                let creditcellnewtmp = $(row).find('td:nth-child(5)');
                let creditcellnew = parseFloat(creditcellnewtmp.text());
                let balancerowstmp = $(row).find('.balance');
                let drcr = $(row).find('.dr-cr');
                if (isNaN(debitcellnew)) {
                    let inputValue = $(`input[name^="room_charge_${index + 2}"]`).val();
                    debitcellnew = parseFloat(inputValue);
                }
                let taxper = parseFloat($(row).find('.taxper').text()) || 0;
                let calculatedtax = 0;
                let assigned = 0.00;
                if (taxper != 0) {
                    calculatedtax = (taxableamt * taxper / 100).toFixed(2);
                    if (trvdate == tdvdate) {
                        assigned = debitcellnewtmp.text(isNaN(calculatedtax) ? '0.00' : calculatedtax);
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
                let debitcellnewtmp1 = $(row).find('td:nth-child(4)');
                let debitcellnew1 = parseFloat(debitcellnewtmp1.text());
                let debitcellnewforsum1 = parseFloat(debitcellnewtmp1.text());
                if (isNaN(debitcellnewforsum1)) {
                    let inputValue1 = $(`input[name^="room_charge_${index + 2}"]`).val();
                    debitcellnewforsum1 = parseFloat(inputValue1);
                }
                totalDebittmp += parseFloat(debitcellnewforsum1);
                totalCredittmp += parseFloat(creditcellnew);
            });
            let letfirstval = parseFloat($('#room_charge_1').val() || 0.00);
            totalDebit = parseFloat(totalDebittmp) + letfirstval || 0.00;
            totalCredit = parseFloat(totalCredittmp) + creditCell || 0.00;
            let totalbalup = totalDebit - totalCredit;
            $('#totalbalinput').val(totalbalup.toFixed(2));
            let billamt = totalDebit;
            $('#billamt').val(totalbalup.toFixed(2));
            $('#totalDebit').text(totalDebit.toFixed(2));
            $('#totalCredit').text(totalCredit.toFixed(2));
            // console.log(totalbalup.toFixed(2));
            $('#totalBalance').text(totalbalup.toFixed(2));
            $('#totalDrCr').text(totalDebit > totalCredit ? 'Dr' : 'Cr');
        });
    });
</script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<!-- Notify JS -->
<script src="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.min.js"></script>
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
