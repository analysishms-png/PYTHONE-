@extends('property.layouts.main')
@section('main-container')
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
    {{-- <style>
        @media print {
            @page {
                margin: 2px;
            }

            body {
                margin: 2px;
            }
        }
    </style> --}}
    <style>
        @media print {
            div.titlep {
                display: block;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                background-color: white;
                text-align: center;
            }

            #bulkpaycharge {
                margin-top: 250px;
            }

            table#bulkpaycharge tbody td.name,
            table#bulkpaycharge tbody td.billdate {
                white-space: nowrap;
            }
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body checkoutreport">
                            <form action="">
                                <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                <input type="hidden" value="{{ $company->propertyid }}" id="propertyid" name="propertyid">
                                <input type="hidden" value="{{ $company->comp_name }}" id="compname" name="compname">
                                <input type="hidden" value="{{ $company->address1 }}" id="address" name="address">
                                <input type="hidden" value="{{ $company->city }}" id="city" name="city">
                                <input type="hidden" value="{{ $company->mobile }}" id="compmob" name="compmob">
                                <input type="hidden" value="{{ $statename }}" id="statename" name="statename">
                                <input type="hidden" value="{{ $company->pin }}" id="pin" name="pin">
                                <input type="hidden" value="{{ $company->email }}" id="email" name="email">
                                <input type="hidden" value="{{ $company->logo }}" id="logo" name="logo">
                                <input type="hidden" value="{{ $company->u_name }}" id="u_name" name="u_name">
                                <input type="hidden" value="{{ $company->gstin }}" id="gstin" name="gstin">
                                <div class="text-center titlep">
                                    <h3>{{ $company->comp_name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">Check Out Register</p>
                                    <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span id="fromdatep"></span> To Date:
                                        <span id="todatep"></span>
                                    </p>
                                </div>
                                {{-- <div class="row"> --}}
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="todate" id="todate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="settlemode" class="col-form-label">Settlement Mode</label>
                                            <select class="form-control" name="settlemode" id="settlemode">
                                                <option value="All">All</option>
                                                <option value="Cash">Cash</option>
                                                <option value="Cheque">Cheque</option>
                                                <option value="Complementary">Complementary</option>
                                                <option value="Company">Company</option>
                                                <option value="Cash Card">Cash Card</option>
                                                <option value="Credit Card">Credit Card</option>
                                                <option value="Hold">Hold</option>
                                                <option value="Member">Member</option>
                                                <option value="Other">Other</option>
                                                <option value="Room">Room</option>
                                                <option value="Staff">Staff</option>
                                                <option value="UPI">UPI</option>
                                                <option value="Void">Void</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="settlfor" class="col-form-label">For</label>
                                            <select class="form-control" name="settlefor" id="settlefor">
                                                <option value="All">All</option>
                                                <option value="Company">Company</option>
                                                <option value="Travel Agent">Travel Agent</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="">
                                        <label for="bsourcebtn" class="col-form-label">‎ </label>
                                        <div class="form-group">
                                            <button type="button" class="btn btn-outline-success btn-success" name="bsourcebtn" id="bsourcebtn">Buss Source</button>
                                        </div>
                                    </div>
                                    <div id="paygroup" class="none">
                                    </div>
                                {{-- </div> --}}
                            </form>
                            <div class="table-responsive">
                                <table id="bulkpaycharge"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <th id="billnoth">Bill No.</th>
                                        <th>Folio No.</th>
                                        <th>Guest Name</th>
                                        <th>Bill Date</th>
                                        <th>Mobile</th>
                                        <th>In Date</th>
                                        <th>Out Date</th>
                                        <th>Room No.</th>
                                        <th>Occ</th>
                                        <th>NIS</th>
                                        <th>Goods</th>
                                        @foreach ($revmast as $item)
                                            <th>{{ $item->name }}</th>
                                        @endforeach
                                        <th>CGST</th>
                                        <th>SGST</th>
                                        <th>TTL Tax</th>
                                        <th>Discount</th>
                                        <th>Round Off</th>
                                        <th>Advance</th>
                                        <th>Bill Amt</th>
                                        <th>Mode</th>
                                        <th>Payment</th>
                                        <th>Company/Travel</th>
                                        <th>Book No</th>
                                        <th>Ref. Book Id.</th>
                                        <th>Bus Source</th>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>
                                    </tfoot>
                                </table>
                            </div>
                            <div id="compnames" class="none">
                            </div>
                            <div id="busssource" class="none">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function counting(arr) {
            if (!Array.isArray(arr)) {
                throw new Error("Input must be an array");
            }
            return arr.length;
        }
        $(document).ready(function() {
            let dataTableInitialized = false;
            $('#todate, #fromdate').on('change', function() {
                showLoader();
                pushNotify('info', 'Check Out Register', 'Fetching Report, Please Wait...', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                $('#bulkpaycharge').DataTable().destroy();
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                $('#fromdatep').text(dmy(fromdate));
                $('#todatep').text(dmy(todate));
                if (fromdate > todate) {
                    pushNotify('error', 'From Date should not be greater than To Date');
                    $('#fromdate').val(todate);
                    return;
                }
                let settlemode = $('#settlemode').val();
                let settlefor = $('#settlefor').val();
                let compname = $('#compname').val();
                let tbody = $('#bulkpaycharge tbody');
                let tfoot = $('#bulkpaycharge tfoot');
                tbody.empty();
                tfoot.empty();
                let chargexhr = new XMLHttpRequest();
                chargexhr.open('POST', '/fetchpaydata', true);
                chargexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                chargexhr.onreadystatechange = function() {
                    if (chargexhr.readyState === 4 && chargexhr.status === 200) {
                        let resulttmp = JSON.parse(chargexhr.responseText);
                        let result = resulttmp.report;
                        let revmast = resulttmp.revmast;
                        if (result.length == 0) {
                            pushNotify('info', 'No Data Found', 'No Data Found for the Selected Dates');
                        }
                        if (result == '1') {
                            pushNotify('error', `From Date should not be less than: ${dmy($('#start_dt').val())}`);
                            $('#fromdate').val($('#start_dt').val());
                        } else if (result == '2') {
                            pushNotify('error', `To Date should not be greater than: ${dmy($('#end_dt').val())}`);
                            $('#todate').val($('#start_dt').val());
                        } else {
                            let goodssum = 0.00;
                            let cgstsum = 0.00;
                            let sgstsum = 0.00;
                            let rmchsum = 0.00;
                            let extrabedsum = 0.00;
                            let discsum = 0.00;
                            let mealsum = 0.00;
                            let totaltax = 0.00;
                            let totaldiscount = 0.00;
                            let totalroundoff = 0.00;
                            let totaladvance = 0.00;
                            let totalbill = 0.00;
                            let paymentsum = 0.00;
                            let totalroomcount = 0;
                            let totalguests = 0;
                            let totalnight = 0;
                            let revSums = {};
                            revmast.forEach((rdata) => {
                                revSums[rdata.rev_code.substring(0, 4).toLowerCase()] = 0.00;
                            });
                            let data = '';
                            let paymentarray = [];
                            result.forEach((item, index) => {
                                totalroomcount++;
                                // filtering paymentmode with their row adding payment and doing total of each paymeode payment then making array of that
                                let paymentmode = item.paytype;
                                let payment = item.payment;
                                // if (paymentmode != null) {
                                //     if (paymentmode.includes(',')) {
                                //         paymentmode = paymentmode.split(',');
                                //         payment = payment.split(',');
                                //         paymentmode.forEach((item, index) => {
                                //             paymentarray.push({
                                //                 paymentmode: item,
                                //                 payment: payment[index]
                                //             });
                                //         });
                                //     } else {
                                //         paymentarray.push({
                                //             paymentmode: paymentmode,
                                //             payment: payment
                                //         });
                                //     }
                                // }

                                data = `<tr bcode="${item.bcode}" paymode="${item.paymentmode}" compcode="${item.compcode}" travelcode="${item.travelcode}">
                                            <td class="bg-warning-rgba1 font-tiny">
                                                ${item.billno == null ? '' : `<a href="billreprint?billno=${item.billno}">${item.billno}</a>`}
                                            </td>
                                            <td>${item.foliono}</td>
                                            <td>${item.guestname == null ? '' : item.guestname}</td>
                                            <td class="billdate">${dmy(item.settledate)}</td>
                                            <td>${item.mobile_no == null ? '' : `<a class="text-info" href="tel: ${item.mobile_no}">${item.mobile_no}`}</a></td>
                                            <td class="nowrap">${item.checkindate == null ? '' : dmy(item.checkindate)} ${item.checkintime == null ? '' : item.checkintime.substr(0, 5)}</td>
                                            <td>${item.chkoutdate == null ? '' : dmy(item.chkoutdate)} ${item.chkouttime == null ? '' : item.chkouttime.substr(0, 5)}</td>
                                            <td>${item.roomno == null ? '' : item.roomno}</td>
                                            <td>${item.occ == null ? '' : item.occ}</td>
                                            <td>${item.nights == null ? '' : item.nights}</td>
                                            <td>${item.goods1 == null ? '0.00' : item.goods1}</td>`
                                revmast.forEach((rdata) => {
                                    // console.log(`sum_${rdata.rev_code.substring(0, 4).toLowerCase()}`);
                                    let value = parseFloat(item["sum_" + rdata.rev_code.substring(0, 4).toLowerCase()] ?? 0.00);
                                    revSums[rdata.rev_code.substring(0, 4).toLowerCase()] += value;
                                    data += `<td>${value.toFixed(2)}</td>`;
                                });
                                data += `<td>${item.cgstsum == null ? '0.00' : item.cgstsum}</td>
                                            <td>${item.sgstsum == null ? '0.00' : item.sgstsum}</td>
                                            <td>${item.total_tax == null ? '0.00' : item.total_tax}</td>
                                            <td>${item.discount == null ? '0.00' : item.discount}</td>
                                            <td>${item.roundoff == null ? '0.00' : item.roundoff}</td>
                                            <td>${item.advance}</td>
                                            <td>${item.billamt == null ? '0.00' : item.billamt}</td>
                                            <td>${item.paytype == null ? '' : item.paytype}</td>
                                            <td>${item.payment == null ? '0.00' : item.payment}</td>
                                            <td>${item.company == null ? '' : item.company} ${item.compgstin == null ? '' : `(${item.compgstin})`} / ${item.travelcompany == null ? '' : item.travelcompany} ${item.travelgstin == null ? '' : `(${item.travelgstin})`}</td>
                                            <td>${item.bookno == null ? '' : item.bookno}</td>
                                            <td>${item.refbookingid == null ? '' : item.refbookingid}</td>
                                            <td>${item.busssource == null ? '' : item.busssource}</td>
                                         </tr>`;
                                tbody.append(data);

                                totalguests += parseInt(item.occ ?? 0);
                                totalnight += parseInt(item.nights ?? 0);
                                goodssum += parseFloat(item.goods1 ?? 0.00);
                                cgstsum += parseFloat(item.cgstsum ?? 0.00);
                                sgstsum += parseFloat(item.sgstsum ?? 0.00);
                                rmchsum += parseFloat(item.rmchsum ?? 0.00);
                                extrabedsum += parseFloat(item.extrabed ?? 0.00);
                                mealsum += parseFloat(item.mealcharge ?? 0.00);
                                totaltax += parseFloat(item.total_tax ?? 0.00);
                                totaldiscount += parseFloat(item.discount ?? 0.00);
                                totalroundoff += parseFloat(item.roundoff ?? 0.00);
                                totaladvance += parseFloat(item.advance ?? 0.00);
                                totalbill += parseFloat(item.billamt ?? 0.00);
                            });
                            let grouped = paymentarray.reduce((acc, item) => {
                                if (!acc[item.paymentmode]) {
                                    acc[item.paymentmode] = 0;
                                }
                                acc[item.paymentmode] += parseFloat(item.payment);
                                return acc;
                            }, {});
                            let paygroup = $('#paygroup');
                            paygroup.empty();
                            paygroup.removeClass('none');
                            let paydata = '';
                            let total = 0;
                            for (const [key, value] of Object.entries(grouped)) {
                                paydata += `<ul><li>${key} : ${value.toFixed(2)}</li></ul>`;
                                total += value;
                            }
                            // paydata += `<ul><li><b>Total:</b> ${total.toFixed(2)}</li></ul>`;
                            // paygroup.append(paydata);
                            $('#billnoth').click();
                            let explancode = 'CGSS: CGST (SALES), SGSS: SGST (SALES), RMCH: ROOM CHARGE, TOUT: TRANSFER FROM OUTLET, ROFF: ROUND OFF A/C';
                            let footdata = `<tr class="font-weight-bold"><td><b>Total:</b></td><td></td><td></td><td></td><td></td><td></td><td></td>
                        <td id="roomcount">${totalroomcount}</td>
                        <td id="totalguests">${totalguests}</td>
                        <td id="totalnights">${totalnight}</td>
                        <td id="goodssum">${goodssum.toFixed(2)}</td>`;

                            revmast.forEach((rdata) => {
                                footdata += `<td id="${rdata.rev_code.substring(0, 4).toLowerCase()}-sum">${revSums[rdata.rev_code.substring(0, 4).toLowerCase()].toFixed(2)}</td>`;
                            });

                            footdata += `<td id="sgstsum">${sgstsum.toFixed(2)}</td>
                        <td id="cgstsum">${cgstsum.toFixed(2)}</td>
                        <td id="totaltax">${totaltax.toFixed(2)}</td>
                        <td id="totaldiscount">${totaldiscount.toFixed(2)}</td>
                        <td id="totalroundoff">${totalroundoff.toFixed(2)}</td>
                        <td id="totaladvance">${totaladvance.toFixed(2)}</td>
                        <td id="totalbill">${totalbill.toFixed(2)}</td>
                        <td></td>
                        <td></td><td></td><td></td><td></td></td>
                    </tr>`;
                            tfoot.append(footdata);

                            setTimeout(hideLoader, 1000);
                            if (!dataTableInitialized) {
                                $('#bulkpaycharge').DataTable({
                                    dom: 'Bfrtip',
                                    pageLength: 15,
                                    buttons: [{
                                            extend: 'excelHtml5',
                                            text: 'Excel <i class="fa fa-file-excel-o"></i>',
                                            title: compname,
                                            filename: 'Checkout Register',
                                            exportOptions: {
                                                rows: function(idx, data, node) {
                                                    return !$(node).hasClass('none');
                                                }
                                            },
                                            footer: true
                                        },
                                        {
                                            extend: 'csvHtml5',
                                            text: 'Csv <i class="fa-solid fa-file-csv"></i>',
                                            title: compname,
                                            filename: 'Checkout Register',
                                            footer: true,
                                            exportOptions: {
                                                rows: function(idx, data, node) {
                                                    return !$(node).hasClass('none');
                                                }
                                            }
                                        },
                                        {
                                            extend: 'print',
                                            text: 'Print <i class="fa-solid fa-print"></i>',
                                            title: 'Checkout Register',
                                            filename: 'Checkout Register',
                                            footer: true,
                                            exportOptions: {
                                                rows: function(idx, data, node) {
                                                    return !$(node).hasClass('none');
                                                }
                                            },
                                            customize: function(win) {
                                                $(win.document.body).find('th').removeClass('sorting sorting_asc sorting_desc');
                                                $(win.document.body).find('table').css('margin-top', '115px');
                                                $(win.document.body).prepend('<div class="titlep">' + $('.titlep').html() + '</div>');
                                                $(win.document.body).append('<div class="paygroup">' + paygroup.html() + '</div>');
                                                $(win.document.body).append('<div class="explancode">' + explancode + '</div>');
                                                $(win.document.body).find('table').addClass('print-landscape');
                                                var css = '@page { size: landscape; }';
                                                var head = win.document.head || win.document.getElementsByTagName('head')[0];
                                                var style = win.document.createElement('style');
                                                style.type = 'text/css';
                                                style.media = 'print';
                                                if (style.styleSheet) {
                                                    style.styleSheet.cssText = css;
                                                } else {
                                                    style.appendChild(win.document.createTextNode(css));
                                                }
                                                head.appendChild(style);
                                            }
                                        }
                                    ],
                                });
                            }
                        }
                    } else if (chargexhr.readyState === 4 && chargexhr.status === 500) {
                        pushNotify('error', 'Error Fetching Data', 'Error Fetching Data, Please Try Again Later');
                        console.error(chargexhr.responseText);

                        setTimeout(hideLoader, 1000);
                    }
                }
                chargexhr.send(`fromdate=${fromdate}&todate=${todate}&settlemode=${settlemode}&settlefor=${settlefor}&_token={{ csrf_token() }}`);
            });
            $('#todate').trigger('change');

            let div = `<div class=""></div>`;
            $(document).on('change', '#settlefor, #settlemode', function() {
                let settlefor = $('#settlefor').val();
                let settlemode = $('#settlemode').val();
                let div = $('#compnames');
                div.html('');
                if (settlefor != 'All') {
                    let setforxhr = new XMLHttpRequest();
                    setforxhr.open('POST', '/fetchcompname', true);
                    setforxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    setforxhr.onreadystatechange = function() {
                        if (setforxhr.readyState === 4 && setforxhr.status === 200) {
                            let results = JSON.parse(setforxhr.responseText);
                            if (results.length < 1) {
                                div.addClass('none');
                                pushNotify('error', 'No data found');
                            } else {
                                div.removeClass('none');
                                let data = `<ul id="compnamesul"><li class="text-center movableli">${settlefor} <button style="top:2px;" class="btn btn-sm btn-danger" id="closeBtn"><i class="fa-regular fa-circle-xmark"></i></button></li><li><input class="" id="allcheckbox" checked value="All" type="checkbox"> All</li>`;
                                results.forEach((item, index) => {
                                    data += `
                                    <li data-id="${item.sub_code}"><input class="menucheckbox" checked value="${item.sub_code}" type="checkbox"> ${item.name} ${item.gstin == null ? '' : `(${item.gstin})`}</li>
                                `;
                                });
                                data += '</ul>';
                                div.html(data);
                            }
                        }
                    };
                    setforxhr.send(`settlemode=${settlemode}&settlefor=${settlefor}&_token={{ csrf_token() }}`);
                }
            });

            // Fetch Buss Source
            let divbus = `<div class=""></div>`;
            $(document).on('click', '#bsourcebtn', function() {
                let divbus = $('#busssource');
                divbus.html('');
                let setforxhr = new XMLHttpRequest();
                setforxhr.open('GET', '/fetchbussource', true);
                setforxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                setforxhr.onreadystatechange = function() {
                    if (setforxhr.readyState === 4 && setforxhr.status === 200) {
                        let results = JSON.parse(setforxhr.responseText);
                        if (results.length < 1) {
                            divbus.addClass('none');
                            pushNotify('error', 'No data found');
                        } else {
                            divbus.removeClass('none');
                            let data = `<ul id="busssourceul"><li class="text-center movablelibus">Buss Source <button style="top:2px;" class="btn btn-sm btn-danger" id="closeBtnbuss"><i class="fa-regular fa-circle-xmark"></i></button></li><li><input class="" id="allcheckboxbus" checked value="All" type="checkbox"> All</li>`;
                            results.forEach((item, index) => {
                                data += `
                                    <li data-id="${item.bcode}"><input class="menucheckboxbuss" checked value="${item.bcode}" type="checkbox"> ${item.name}</li>
                                `;
                            });
                            data += '</ul>';
                            divbus.html(data);
                        }
                    }
                };
                setforxhr.send();
            });

            $(document).on('change', '.menucheckbox', function() {
                let checkbox = $(this);
                let code = $(this).val();
                let settlefor = $('#settlefor').val();
                if (settlefor == 'All') {
                    return;
                } else if (settlefor == 'Company') {
                    if (code == 'All') {
                        if (checkbox.prop('checked')) {
                            $('#bulkpaycharge tbody tr').removeClass('none');
                        } else {
                            $('#bulkpaycharge tbody tr').addClass('none');
                        }
                    } else {
                        if (checkbox.prop('checked')) {
                            $(`#bulkpaycharge tbody tr[compcode="${code}"]`).removeClass('none');
                        } else {
                            $(`#bulkpaycharge tbody tr[compcode="${code}"]`).addClass('none');
                        }
                    }
                } else if (settlefor == 'Travel Agent') {
                    if (code == 'All') {
                        if (checkbox.prop('checked')) {
                            $('#bulkpaycharge tbody tr').removeClass('none');
                        } else {
                            $('#bulkpaycharge tbody tr').addClass('none');
                        }
                    } else {
                        if (checkbox.prop('checked')) {
                            $(`#bulkpaycharge tbody tr[travelcode="${code}"]`).removeClass('none');
                        } else {
                            $(`#bulkpaycharge tbody tr[travelcode="${code}"]`).addClass('none');
                        }
                    }
                }

                let rowsToUpdate = $('#bulkpaycharge tbody tr:not(.none)');
                let updatetfoottota;
                s = $('#bulkpaycharge tfoot tr td');
                let goodssum = 0.00;
                let cgstsum = 0.00;
                let sgstsum = 0.00;
                let rmchsum = 0.00;
                let extrabedsum = 0.00;
                let totaltax = 0.00;
                let totaldiscount = 0.00;
                let totalroundoff = 0.00;
                let totaladvance = 0.00;
                let totalbill = 0.00;
                let totalroomcount = 0;
                let totalguests = 0;
                let totalnights = 0;
                pushNotify('info', 'Success', 'Calculating...', 'fade', 300, '', '', true, true, true, 1000, 20, 20, 'outline', 'right top');
                rowsToUpdate.each(function(index, item) {
                    let row = $(item);
                    totalroomcount++;
                    totalguests += parseInt(row.find('td:nth-child(9)').text());
                    totalnights += parseInt(row.find('td:nth-child(10)').text());
                    goodssum += parseFloat(row.find('td:nth-child(11)').text());
                    rmchsum += parseFloat(row.find('td:nth-child(12)').text());
                    extrabedsum += parseFloat(row.find('td:nth-child(13)').text());
                    cgstsum += parseFloat(row.find('td:nth-child(14)').text());
                    sgstsum += parseFloat(row.find('td:nth-child(15)').text());
                    totaltax += parseFloat(row.find('td:nth-child(16)').text());
                    totaldiscount += parseFloat(row.find('td:nth-child(17)').text());
                    totalroundoff += parseFloat(row.find('td:nth-child(18)').text());
                    totaladvance += parseFloat(row.find('td:nth-child(19)').text());
                    totalbill += parseFloat(row.find('td:nth-child(20)').text());
                });

                $('#roomcount').text(totalroomcount);
                $('#totalguests').text(totalguests);
                $('#totalnights').text(totalnights);
                $('#goodssum').text(goodssum.toFixed(2));
                $('#cgstsum').text(cgstsum.toFixed(2));
                $('#sgstsum').text(sgstsum.toFixed(2));
                $('#rmch-sum').text(rmchsum.toFixed(2));
                $('#extrabed').text(extrabedsum.toFixed(2));
                $('#totaltax').text(totaltax.toFixed(2));
                $('#totaldiscount').text(totaldiscount.toFixed(2));
                $('#totalroundoff').text(totalroundoff.toFixed(2));
                $('#totaladvance').text(totaladvance.toFixed(2));
                $('#totalbill').text(totalbill.toFixed(2));
            });

            // Hide data base on buss source 
            $(document).on('change', '.menucheckboxbuss', function() {
                let checkbox = $(this);
                let code = $(this).val();

                if (code == 'All') {
                    if (checkbox.prop('checked')) {
                        $('#bulkpaycharge tbody tr').removeClass('none');
                    } else {
                        $('#bulkpaycharge tbody tr').addClass('none');
                    }
                } else {
                    if (checkbox.prop('checked')) {
                        $(`#bulkpaycharge tbody tr[bcode="${code}"]`).removeClass('none');
                    } else {
                        $(`#bulkpaycharge tbody tr[bcode="${code}"]`).addClass('none');
                    }
                }

                let rowsToUpdate = $('#bulkpaycharge tbody tr:not(.none)');
                let updatetfoottota;
                s = $('#bulkpaycharge tfoot tr td');
                let goodssum = 0.00;
                let cgstsum = 0.00;
                let sgstsum = 0.00;
                let rmchsum = 0.00;
                let extrabedsum = 0.00;
                let totaltax = 0.00;
                let totaldiscount = 0.00;
                let totalroundoff = 0.00;
                let totaladvance = 0.00;
                let totalbill = 0.00;
                let totalroomcount = 0;
                let totalguests = 0;
                let totalnights = 0;
                pushNotify('info', 'Success', 'Calculating...', 'fade', 300, '', '', true, true, true, 1000, 20, 20, 'outline', 'right top');
                rowsToUpdate.each(function(index, item) {
                    let row = $(item);
                    totalroomcount++;
                    totalguests += parseInt(row.find('td:nth-child(9)').text());
                    totalnights += parseInt(row.find('td:nth-child(10)').text());
                    goodssum += parseFloat(row.find('td:nth-child(11)').text());
                    rmchsum += parseFloat(row.find('td:nth-child(12)').text());
                    extrabedsum += parseFloat(row.find('td:nth-child(13)').text());
                    cgstsum += parseFloat(row.find('td:nth-child(14)').text());
                    sgstsum += parseFloat(row.find('td:nth-child(15)').text());
                    totaltax += parseFloat(row.find('td:nth-child(16)').text());
                    totaldiscount += parseFloat(row.find('td:nth-child(17)').text());
                    totalroundoff += parseFloat(row.find('td:nth-child(18)').text());
                    totaladvance += parseFloat(row.find('td:nth-child(19)').text());
                    totalbill += parseFloat(row.find('td:nth-child(20)').text());
                });

                $('#roomcount').text(totalroomcount);
                $('#totalguests').text(totalguests);
                $('#totalnights').text(totalnights);
                $('#goodssum').text(goodssum.toFixed(2));
                $('#cgstsum').text(cgstsum.toFixed(2));
                $('#sgstsum').text(sgstsum.toFixed(2));
                $('#rmch-sum').text(rmchsum.toFixed(2));
                $('#extrabed').text(extrabedsum.toFixed(2));
                $('#totaltax').text(totaltax.toFixed(2));
                $('#totaldiscount').text(totaldiscount.toFixed(2));
                $('#totalroundoff').text(totalroundoff.toFixed(2));
                $('#totaladvance').text(totaladvance.toFixed(2));
                $('#totalbill').text(totalbill.toFixed(2));
            });

            $(document).on('change', '#settlemode', function() {
                let settlemode = $(this).val();
                let rows = $('#bulkpaycharge tbody tr');
                if ($(`#bulkpaycharge tbody tr[paymode="${settlemode}"]`)) {
                    $('#bulkpaycharge tbody tr').addClass('none');
                    $(`#bulkpaycharge tbody tr[paymode="${settlemode}"]`).removeClass('none');
                }
                let rowsToUpdate = $('#bulkpaycharge tbody tr:not(.none)');
                let updatetfoottota;
                s = $('#bulkpaycharge tfoot tr td');
                let goodssum = 0.00;
                let cgstsum = 0.00;
                let sgstsum = 0.00;
                let rmchsum = 0.00;
                let extrabedsum = 0.00;
                let totaltax = 0.00;
                let totaldiscount = 0.00;
                let totalroundoff = 0.00;
                let totaladvance = 0.00;
                let totalbill = 0.00;
                let totalroomcount = 0;
                let totalguests = 0;
                let totalnights = 0;
                pushNotify('info', 'Success', 'Calculating...', 'fade', 300, '', '', true, true, true, 1000, 20, 20, 'outline', 'right top');
                rowsToUpdate.each(function(index, item) {
                    let row = $(item);
                    totalroomcount++;
                    totalguests += parseInt(row.find('td:nth-child(9)').text());
                    totalnights += parseInt(row.find('td:nth-child(10)').text());
                    goodssum += parseFloat(row.find('td:nth-child(11)').text());
                    rmchsum += parseFloat(row.find('td:nth-child(12)').text());
                    extrabedsum += parseFloat(row.find('td:nth-child(13)').text());
                    cgstsum += parseFloat(row.find('td:nth-child(14)').text());
                    sgstsum += parseFloat(row.find('td:nth-child(15)').text());
                    totaltax += parseFloat(row.find('td:nth-child(16)').text());
                    totaldiscount += parseFloat(row.find('td:nth-child(17)').text());
                    totalroundoff += parseFloat(row.find('td:nth-child(18)').text());
                    totaladvance += parseFloat(row.find('td:nth-child(19)').text());
                    totalbill += parseFloat(row.find('td:nth-child(20)').text());
                });

                $('#roomcount').text(totalroomcount);
                $('#totalguests').text(totalguests);
                $('#totalnights').text(totalnights);
                $('#goodssum').text(goodssum.toFixed(2));
                $('#cgstsum').text(cgstsum.toFixed(2));
                $('#sgstsum').text(sgstsum.toFixed(2));
                $('#rmch-sum').text(rmchsum.toFixed(2));
                $('#extrabed').text(extrabedsum.toFixed(2));
                $('#totaltax').text(totaltax.toFixed(2));
                $('#totaldiscount').text(totaldiscount.toFixed(2));
                $('#totalroundoff').text(totalroundoff.toFixed(2));
                $('#totaladvance').text(totaladvance.toFixed(2));
                $('#totalbill').text(totalbill.toFixed(2));
            });

            let offsetX, offsetY;
            let isDragging = false;

            $(document).on('mousedown', '.movableli', function(e) {
                isDragging = true;
                offsetX = e.clientX - $(this).offset().left;
                offsetY = e.clientY - $(this).offset().top;
            });

            $(document).on('mousemove', function(e) {
                if (isDragging) {
                    $('#compnames').css({
                        left: e.clientX - offsetX,
                        top: e.clientY - offsetY
                    });
                }
            });

            $(document).on('mousedown', '.movablelibus', function(e) {
                isDragging = true;
                offsetX = e.clientX - $(this).offset().left;
                offsetY = e.clientY - $(this).offset().top;
            });

            $(document).on('mousemove', function(e) {
                if (isDragging) {
                    $('#busssource').css({
                        left: e.clientX - offsetX,
                        top: e.clientY - offsetY
                    });
                }
            });

            $(document).on('mouseup', function() {
                isDragging = false;
            });

            $(document).on('change', '#allcheckbox', function() {
                let checkbox = $(this);
                let checked = checkbox.prop('checked');
                if (checked === true) {
                    $('.menucheckbox').prop('checked', true);
                } else {
                    $('.menucheckbox').prop('checked', false);
                }
                let checkboxes = $('.menucheckbox');
                checkboxes.trigger('change');
            });

            $(document).on('change', '#allcheckboxbus', function() {
                let checkbox = $(this);
                let checked = checkbox.prop('checked');
                if (checked === true) {
                    $('.menucheckboxbuss').prop('checked', true);
                } else {
                    $('.menucheckboxbuss').prop('checked', false);
                }
                let checkboxes = $('.menucheckboxbuss');
                checkboxes.trigger('change');
            });

            $(document).on('click', '#closeBtn', function() {
                $('#compnames').addClass('none');
                $('#settlefor').val('All');
            });

            $(document).on('click', '#closeBtnbuss', function() {
                $('#busssource').addClass('none');
            });

        });
    </script>
@endsection
