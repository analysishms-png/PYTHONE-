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
    <style>
        #usernames {
            max-height: 33em;
            max-width: fit-content;
            overflow: auto;
            text-align: left;
            position: fixed;
            top: 15%;
            left: 12%;
            z-index: 50;
        }

        #usernames ul {
            background: #c8d5b9;
            list-style-type: none;
            padding: 0;
            margin: 0;
            transition: background-color 0.6 ease;
            cursor: auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            width: max-content;
        }

        #usernames ul li:first-child {
            cursor: move;
            background: #8fc0a9;
            color: white;
            display: flex;
            justify-content: space-between;
        }

        #usernames ul:hover {
            background-color: #faf3dd;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }

        #usernames::-webkit-scrollbar {
            width: 3px;
            height: 3px;
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-thumb:hover {
            background-color: #000000;
        }

        .cashierreport #usernames::-webkit-scrollbar-thumb {
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
            background-color: #84e900;
        }

        #usernames::-webkit-scrollbar-thumb:active {
            background: #2708da;
        }

        /* Checkout Register Ul End */
        .titlep {
            display: none;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }
    </style>

    <div class="content-body cashierreport">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="" method="post">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"
                                        name="propertyid">
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
                                        <p style="margin-top:-10px; font-size:16px;">
                                            {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                        </p>
                                        <p style="margin-top:-10px; font-size:16px;">Check In Register</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                                id="fromdatep"></span> To Date:
                                            <span id="todatep"></span>
                                        </p>
                                    </div>
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
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", function () {
                                            const from = document.getElementById("fromdate");
                                            const to = document.getElementById("todate");

                                            [from, to].forEach(el => {
                                                if (!el) return;
                                                el.removeAttribute("readonly");
                                                el.removeAttribute("disabled");
                                                el.style.pointerEvents = "auto";
                                                el.style.backgroundColor = "#fff";
                                            });
                                        });
                                    </script>
                                    <div class="">
                                        <label for="users" class="col-form-label">‎ </label>
                                        <div class="form-group">
                                            <button type="button" class="btn btn-outline-success btn-success" name="users"
                                                id="users">Users</button>
                                        </div>
                                    </div>
                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">
                                            Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <button id="printBtn" class="btn btn-primary mb-3">
                                <i class="fas fa-print"></i> Print Report
                            </button>
                            <button id="exportExcelBtn" class="btn btn-success mb-3 ms-2">
                                <i class="fas fa-file-excel"></i> Export to Excel
                            </button>
                            <span id="printUrl" style="display:none;">{{ route('printcashierreport') }}</span>
                            <span id="exportUrl" style="display:none;">{{ route('exportcashierreport') }}</span>
                            <div class="row table-responsive">
                                <table id="cashierreport"
                                    class=" table table-border table-hover table striped border rounded">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Vou/No.</th>
                                            <th>Folio</th>
                                            <th>Billno</th>
                                            <th>Room No.</th>
                                            <th>Name</th>
                                            <th>Narration</th>
                                            @foreach ($revheading as $row)
                                                <th>{{ $row->pay_type }}</th>
                                            @endforeach
                                            <th>User</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="usernames"></div>

    <script>
        $(document).ready(function () {
            $(document).on('change', '#fromdate', function () {
                validateFinancialYear('#fromdate');
            });
            $(document).on('change', '#todate', function () {
                validateFinancialYear('#todate');
            });

            // let dataTableInitialized = false;
            // $(document).on('click', '#fetchbutton', function () {
            //     pushNotify('info', 'Cashier Report', 'Fetching Report, Please Wait...', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
            //     $('#cashierreport').DataTable().destroy();
            //     let compname = $('#compname').val();
            //     let fromdate = $('#fromdate').val();
            //     let todate = $('#todate').val();
            //     $('#fromdatep').text(dmy(fromdate));
            //     $('#todatep').text(dmy(todate));

            //     let tablebody = $('#cashierreport tbody');
            //     tablebody.empty();
            //     let tfoot = $('#cashierreport tfoot');
            //     tfoot.empty();
            //     let foot = '';
            //     let itemnamexhr = new XMLHttpRequest();
            //     itemnamexhr.open('POST', '/fetchcashierdata', true);
            //     itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            //     itemnamexhr.onreadystatechange = function () {
            //         if (itemnamexhr.readyState === 4 && itemnamexhr.status === 200) {
            //             let results = JSON.parse(itemnamexhr.responseText);
            //             if (results.length == 0) {
            //                 pushNotify('info', 'No Data Found', 'No Data Found for the Selected Dates');
            //             }
            //             let cashierdata = results.cashierdata;
            //             let paytype = results.paytype;
            //             let groupedRows = {};
            //             let groupedTotalNetSale = {};



            //             cashierdata.forEach((row) => {
            //                 const folioKey = `${row.FOLIONO} - ${row.SNO1}`;
            //                 console.log(folioKey);
            //                 if (!groupedRows[folioKey]) {
            //                     groupedRows[folioKey] = {
            //                         VDATE: row.VDATE,
            //                         FOLIONODOCID: row.FOLIONODOCID,
            //                         VTYPE: row.VTYPE,
            //                         VNO: row.VNO,
            //                         FOLIONO: row.FOLIONO,
            //                         billno: row.billno,
            //                         roomno: row.roomno,
            //                         GUESTNAME: row.GUESTNAME,
            //                         UNAME: row.UNAME,
            //                         payTypes: {}
            //                     };
            //                 }

            //                 let key = row.FOLIONODOCID;
            //                 let netsale = parseFloat(row.NetSale) || 0;

            //                 if (!groupedTotalNetSale[key]) {
            //                     groupedTotalNetSale[key] = 0;
            //                 }

            //                 groupedTotalNetSale[key] += netsale;



            //                 const payType = row.PType;
            //                 if (!groupedRows[folioKey].payTypes[payType]) {
            //                     groupedRows[folioKey].payTypes[payType] = 0;
            //                 }
            //                 console.log('Pay Type :' + groupedRows[folioKey].payTypes[payType]);
            //                 groupedRows[folioKey].payTypes[payType] += row.NetSale;
            //                 if (groupedRows[folioKey].COMMENT) {
            //                     let commentsArray = groupedRows[folioKey].COMMENT.split(', ');
            //                     let commentMap = new Map();
            //                     commentsArray.forEach(comment => {
            //                         let match = comment.match(/(.*)\((\d+)\)$/);
            //                         if (match) {
            //                             commentMap.set(match[1], parseInt(match[2]));
            //                         } else {
            //                             commentMap.set(comment, 1);
            //                         }
            //                     });
            //                     if (commentMap.has(row.COMMENT)) {
            //                         commentMap.set(row.COMMENT, commentMap.get(row.COMMENT) + 1);
            //                     } else {
            //                         commentMap.set(row.COMMENT, 1);
            //                     }
            //                     groupedRows[folioKey].COMMENT = Array.from(commentMap).map(([comment, count]) =>
            //                         count > 1 ? `${comment}(${count})` : comment).join(', ');
            //                 } else {
            //                     groupedRows[folioKey].COMMENT = row.COMMENT;
            //                 }

            //             });

            //             let rows = '';
            //             Object.values(groupedRows).forEach((rowData) => {
            //                 console.log(rowData);
            //                 console.log('Total Net Sale for this Doc ID: ' + groupedTotalNetSale[rowData.FOLIONODOCID]);
            //                  let totalForThisDoc = groupedTotalNetSale[rowData.FOLIONODOCID];
            //                 rows += `<tr data-id="${rowData.UNAME}">
            //                                 <td class="nocalculation nowrap">${dmy(rowData.VDATE)}</td>
            //                                 <td class="nocalculation">${rowData.VTYPE}/${rowData.VNO}</td>
            //                                 <td class="nocalculation">${rowData.FOLIONO}</td>
            //                                 <td class="nocalculation">${rowData.billno}</td>
            //                                 <td class="nocalculation">${rowData.roomno}</td>
            //                                 <td class="nocalculation">${rowData.GUESTNAME}</td>
            //                                 <td class="nocalculation">${rowData.COMMENT}</td>`;

            //                 paytype.forEach((pay) => {
            //                     // const netSale = rowData.payTypes[pay] || 0;
            //                     // rows += `<td class="${pay}">${netSale.toFixed(2)}</td>`;
            //                     const netSale = parseFloat(rowData.payTypes[pay]) || 0;
            //                     rows += `<td class="${pay}">${netSale.toFixed(2)}</td>`;
            //                   // rows += `<td class="${pay}">${totalForThisDoc.toFixed(2)}</td>`;
            //                 });

            //                 rows += `<td class="nocalculation">${rowData.UNAME}</td>
            //                                  </tr>`;
            //             });

            //             tablebody.append(rows);

            //             foot += `<tr class="font-weight-bold text-center">
            //                                      <td data-id="nocal" colspan="7">Total</td>`;

            //             let totals = {};
            //             paytype.forEach((pay) => {
            //                 totals[pay] = 0;
            //             });

            //             Object.values(groupedRows).forEach((rowData) => {
            //                 Object.keys(rowData.payTypes).forEach((payType) => {
            //                     // totals[payType] += rowData.payTypes[payType];
            //                     totals[payType] += parseFloat(rowData.payTypes[payType]) || 0;
            //                 });
            //             });

            //             paytype.forEach((pay) => {
            //                 foot += `<td class="${pay}">${totals[pay].toFixed(2)}</td>`;
            //             });

            //             foot += `<td data-id="nocal"></td>
            //                                 </tr>`;

            //             tfoot.append(foot);
            //             if (!dataTableInitialized) {
            //                 $('#cashierreport').DataTable({
            //                     dom: 'Bfrtip',
            //                     pageLength: 15,
            //                     buttons: [{
            //                         extend: 'excelHtml5',
            //                         text: 'Excel <i class="fa fa-file-excel-o"></i>',
            //                         title: compname,
            //                         filename: 'Cashier Report',
            //                         footer: true
            //                     },
            //                     {
            //                         extend: 'csvHtml5',
            //                         text: 'Csv <i class="fa-solid fa-file-csv"></i>',
            //                         title: compname,
            //                         filename: 'Cashier Report',
            //                         footer: true,
            //                     },
            //                     {
            //                         extend: 'print',
            //                         text: 'Print <i class="fa-solid fa-print"></i>',
            //                         title: 'Cashier Report',
            //                         filename: 'Cashier Report',
            //                         footer: true,
            //                         customize: function (win) {
            //                             $(win.document.body).find('th').removeClass('sorting sorting_asc sorting_desc');
            //                             $(win.document.body).find('table').css('margin-top', '115px');
            //                             $(win.document.body).prepend('<div class="titlep">' + $('.titlep').html() + '</div>');
            //                         }
            //                     }
            //                     ],
            //                 });
            //             }
            //         } else if (itemnamexhr.readyState === 4 && itemnamexhr.status === 500) {
            //             pushNotify('error', 'Error Fetching Data', 'Error Fetching Data, Please Try Again Later');
            //             console.error(itemnamexhr.responseText);
            //         }
            //     }
            //     itemnamexhr.send(`fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`);
            // });

            let dataTableInitialized = false;

            $(document).on('click', '#fetchbutton', function () {

                pushNotify('info', 'Cashier Report', 'Fetching Report, Please Wait...', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');

                $('#cashierreport').DataTable().destroy();

                let compname = $('#compname').val();
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();

                $('#fromdatep').text(dmy(fromdate));
                $('#todatep').text(dmy(todate));

                let tablebody = $('#cashierreport tbody');
                tablebody.empty();

                let tfoot = $('#cashierreport tfoot');
                tfoot.empty();

                let itemnamexhr = new XMLHttpRequest();
                itemnamexhr.open('POST', '/fetchcashierdata', true);
                itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

                itemnamexhr.onreadystatechange = function () {

                    if (itemnamexhr.readyState === 4 && itemnamexhr.status === 200) {

                        let results = JSON.parse(itemnamexhr.responseText);

                        let cashierdata = results.cashierdata;
                        let paytype = results.paytype;

                        let groupedRows = {};
                        let groupedTotalNetSale = {};

                        cashierdata.forEach((row) => {

                            /* UNIQUE GROUP KEY: VDATE + FOLIONO + SNO1 */
                            const folioKey = `${row.VDATE}_${row.FOLIONO}_${row.SNO1}`;

                            if (!groupedRows[folioKey]) {
                                groupedRows[folioKey] = {
                                    VDATE: row.VDATE,
                                    FOLIONODOCID: row.FOLIONODOCID,
                                    VTYPE: row.VTYPE,
                                    VNO: row.VNO,
                                    FOLIONO: row.FOLIONO,
                                    billno: row.billno,
                                    roomno: row.roomno,
                                    GUESTNAME: row.GUESTNAME,
                                    UNAME: row.UNAME,
                                    COMMENT: "",
                                    payTypes: {}
                                };
                            }

                            /* TOTAL NETSALE PER DOCID (DATE-WISE SPLIT FIXED) */
                            let docKey = `${row.VDATE}_${row.FOLIONODOCID}`;
                            let netsale = parseFloat(row.NetSale) || 0;

                            if (!groupedTotalNetSale[docKey]) {
                                groupedTotalNetSale[docKey] = 0;
                            }
                            groupedTotalNetSale[docKey] += netsale;

                            /* PAYMENT TYPE WISE TOTAL */
                            const payType = row.PType;

                            if (!groupedRows[folioKey].payTypes[payType]) {
                                groupedRows[folioKey].payTypes[payType] = 0;
                            }
                            groupedRows[folioKey].payTypes[payType] += netsale;

                            /* COMMENT CLEANING → Remove (2), (3)... parentheses count */
                            let cleanedComment = row.COMMENT?.replace(/\(\d+\)/g, '').trim() || '';
                            
                            /* Add company name if exists */
                            if (row.paycompanyname && cleanedComment === 'Company') {
                                cleanedComment = `Company <b>${row.paycompanyname}</b>`;
                            }

                            if (groupedRows[folioKey].COMMENT) {

                                let comments = groupedRows[folioKey].COMMENT.split(',')
                                    .map(c => c.trim());

                                if (!comments.includes(cleanedComment)) {
                                    comments.push(cleanedComment);
                                }

                                groupedRows[folioKey].COMMENT = comments.join(', ');

                            } else {
                                groupedRows[folioKey].COMMENT = cleanedComment;
                            }

                        });

                        /* BUILD TABLE ROWS */
                        let rows = '';

                        Object.values(groupedRows).forEach((rowData) => {

                            let docKey = `${rowData.VDATE}_${rowData.FOLIONODOCID}`;
                            let totalForThisDoc = groupedTotalNetSale[docKey] || 0;

                            rows += `<tr data-id="${rowData.UNAME}">
                        <td>${dmy(rowData.VDATE)}</td>
                        <td>${rowData.VTYPE}/${rowData.VNO}</td>
                        <td>${rowData.FOLIONO}</td>
                        <td>${rowData.billno ?? ''}</td>
                        <td>${rowData.roomno ?? ''}</td>
                        <td>${rowData.GUESTNAME ?? ''}</td>
                        <td>${rowData.COMMENT}</td>`;

                            paytype.forEach((pay) => {
                                const netSale = parseFloat(rowData.payTypes[pay]) || 0;
                                rows += `<td class="${pay}">${netSale.toFixed(2)}</td>`;
                            });

                            rows += `<td>${rowData.UNAME}</td></tr>`;
                        });

                        tablebody.html(rows);

                        /* FOOTER TOTALS */
                        let foot = `<tr class="font-weight-bold text-center">
                    <td colspan="7">Total</td>`;

                        let totals = {};

                        paytype.forEach((pay) => totals[pay] = 0);

                        Object.values(groupedRows).forEach((rowData) => {
                            Object.keys(rowData.payTypes).forEach((payType) => {
                                totals[payType] += parseFloat(rowData.payTypes[payType]) || 0;
                            });
                        });

                        paytype.forEach((pay) => {
                            foot += `<td class="${pay}">${totals[pay].toFixed(2)}</td>`;
                        });

                        foot += `<td></td></tr>`;

                        tfoot.append(foot);

                        /* DATATABLE INIT */
                        if (!dataTableInitialized) {
                            $('#cashierreport').DataTable({
                                dom: 'lfrtip',
                                pageLength: 15,
                                buttons: [],
                            });
                        }

                    }

                    else if (itemnamexhr.readyState === 4 && itemnamexhr.status === 500) {
                        pushNotify('error', 'Error Fetching Data', 'Error Fetching Data, Please Try Again Later');
                    }

                };

                itemnamexhr.send(`fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`);
            });


            $('#fromdate').trigger('change');

            // Fetch Users Name
            let divbus = `<div class=""></div>`;
            $(document).on('click', '#users', function () {
                let divbus = $('#usernames');
                divbus.html('');
                let setforxhr = new XMLHttpRequest();
                setforxhr.open('GET', '/fetchusersname', true);
                setforxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                setforxhr.onreadystatechange = function () {
                    if (setforxhr.readyState === 4 && setforxhr.status === 200) {
                        let results = JSON.parse(setforxhr.responseText);
                        if (results.length < 1) {
                            divbus.addClass('none');
                            pushNotify('error', 'No data found');
                        } else {
                            divbus.removeClass('none');
                            let data = `<ul id="usernamesul"><li class="text-center movableli">Users <button style="top:2px;" class="btn btn-sm btn-danger" id="closeBtn"><i class="fa-regular fa-circle-xmark"></i></button></li><li><input class="menucheckboxuname" id="allcheckbox" checked value="All" type="checkbox"> All</li>`;
                            results.forEach((item, index) => {
                                data += `
                                                        <li data-id="${item.u_name}"><input class="menucheckboxuname restcheck" checked value="${item.u_name}" type="checkbox"> ${item.u_name}</li>
                                                    `;
                            });
                            data += '</ul>';
                            divbus.html(data);
                        }
                    }
                };
                setforxhr.send();
            });

            $(document).on('change', '.menucheckboxuname', function () {
                let uname = $(this).val();
                if (uname == 'All') {
                    if ($(this).prop('checked')) {
                        $('.menucheckboxuname').prop('checked', true);
                    } else {
                        $('.menucheckboxuname').prop('checked', false);
                    }
                }
                let checkedboxeslength = $('.restcheck:checked').length;
                if (checkedboxeslength == 0) {
                    $('#allcheckbox').prop('checked', false);
                } else if (checkedboxeslength == $('.restcheck').length) {
                    $('#allcheckbox').prop('checked', true);
                }

                let checked = [];
                $('.menucheckboxuname').each(function () {
                    if ($(this).prop('checked')) {
                        checked.push($(this).val());
                    }
                });
                let unames = JSON.stringify(checked);
                let tablebody = $('#cashierreport tbody');
                tablebody.empty();
                let tfoot = $('#cashierreport tfoot');
                tfoot.empty();
                let foot = '';
                let itemnamexhr = new XMLHttpRequest();
                itemnamexhr.open('POST', '/fetchcashierdata2', true);
                itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                itemnamexhr.onreadystatechange = function () {
                    if (itemnamexhr.readyState === 4 && itemnamexhr.status === 200) {
                        let results = JSON.parse(itemnamexhr.responseText);
                        if (results == '1') {
                            pushNotify('error', `From Date should not be less than: ${dmy($('#start_dt').val())}`);
                            $('#fromdate').val($('#start_dt').val());
                        } else if (results == '2') {
                            pushNotify('error', `To Date should not be greater than: ${dmy($('#end_dt').val())}`);
                            $('#todate').val($('#start_dt').val());
                        }
                        if (results.length == 0) {
                            pushNotify('info', 'No Data Found', 'No Data Found for the Selected Dates');
                        }
                        let cashierdata = results.cashierdata;
                        let paytype = results.paytype;
                        let groupedRows = {};

                        cashierdata.forEach((row) => {
                            const folioKey = row.FOLIONO;
                            if (!groupedRows[folioKey]) {
                                groupedRows[folioKey] = {
                                    VDATE: row.VDATE,
                                    VTYPE: row.VTYPE,
                                    VNO: row.VNO,
                                    FOLIONO: row.FOLIONO,
                                    billno: row.billno,
                                    roomno: row.roomno,
                                    GUESTNAME: row.GUESTNAME,
                                    UNAME: row.UNAME,
                                    payTypes: {}
                                };
                            }

                            const payType = row.PType;
                            if (!groupedRows[folioKey].payTypes[payType]) {
                                groupedRows[folioKey].payTypes[payType] = 0;
                            }
                            //groupedRows[folioKey].payTypes[payType] += row.NetSale;
                            groupedRows[folioKey].payTypes[payType] += parseFloat(row.NetSale) || 0;
                            
                            /* Handle company name if exists */
                            let rowComment = row.COMMENT || '';
                            if (row.paycompanyname && rowComment === 'Company') {
                                rowComment = `Company <b>${row.paycompanyname}</b>`;
                            }
                            
                            if (groupedRows[folioKey].COMMENT) {
                                let commentsArray = groupedRows[folioKey].COMMENT.split(', ');
                                let commentMap = new Map();
                                commentsArray.forEach(comment => {
                                    let match = comment.match(/(.*)\((\d+)\)$/);
                                    if (match) {
                                        commentMap.set(match[1], parseInt(match[2]));
                                    } else {
                                        commentMap.set(comment, 1);
                                    }
                                });
                                if (commentMap.has(rowComment)) {
                                    commentMap.set(rowComment, commentMap.get(rowComment) + 1);
                                } else {
                                    commentMap.set(rowComment, 1);
                                }
                                groupedRows[folioKey].COMMENT = Array.from(commentMap).map(([comment, count]) =>
                                    count > 1 ? `${comment}(${count})` : comment).join(', ');
                            } else {
                                groupedRows[folioKey].COMMENT = rowComment;
                            }
                        });

                        let rows = '';
                        Object.values(groupedRows).forEach((rowData) => {
                            rows += `<tr data-id="${rowData.UNAME}">
                                                    <td class="nocalculation nowrap">${dmy(rowData.VDATE)}</td>
                                                    <td class="nocalculation">${rowData.VTYPE}/${rowData.VNO}</td>
                                                    <td class="nocalculation">${rowData.FOLIONO}/${rowData.billno}</td>
                                                    <td class="nocalculation">${rowData.roomno}</td>
                                                    <td class="nocalculation">${rowData.GUESTNAME}</td>
                                                    <td class="nocalculation">${rowData.COMMENT}</td>`;

                            paytype.forEach((pay) => {
                                // const netSale = rowData.payTypes[pay] || 0;
                                // rows += `<td class="${pay}">${netSale.toFixed(2)}</td>`;
                                const netSale = parseFloat(rowData.payTypes[pay]) || 0;
                                rows += `<td class="${pay}">${netSale.toFixed(2)}</td>`;
                            });

                            rows += `<td class="nocalculation">${rowData.UNAME}</td>
                                                     </tr>`;
                        });

                        tablebody.html(rows);

                        foot += `<tr class="font-weight-bold text-center">
                                                         <td data-id="nocal" colspan="6">Total</td>`;

                        let totals = {};
                        paytype.forEach((pay) => {
                            totals[pay] = 0;
                        });

                        Object.values(groupedRows).forEach((rowData) => {
                            Object.keys(rowData.payTypes).forEach((payType) => {
                                totals[payType] += rowData.payTypes[payType];
                            });
                        });

                        paytype.forEach((pay) => {
                            foot += `<td class="${pay}">${totals[pay].toFixed(2)}</td>`;
                        });

                        foot += `<td data-id="nocal"></td>
                                                    </tr>`;

                        tfoot.append(foot);
                    }
                }
                itemnamexhr.send(`unames=${unames}&fromdate=${$('#fromdate').val()}&todate=${$('#todate').val()}&_token={{ csrf_token() }}`);
            });

            let offsetX, offsetY;
            let isDragging = false;

            $(document).on('mousedown', '.movableli', function (e) {
                isDragging = true;
                offsetX = e.clientX - $(this).offset().left;
                offsetY = e.clientY - $(this).offset().top;
            });

            $(document).on('mousemove', function (e) {
                if (isDragging) {
                    $('#usernames').css({
                        left: e.clientX - offsetX,
                        top: e.clientY - offsetY
                    });
                }
            });
            $(document).on('mouseup', function () {
                isDragging = false;
            });

            $(document).on('click', '#closeBtn', function () {
                $('#usernames').addClass('none');
            });
        });

        document.getElementById('printBtn').addEventListener('click', function() {
            let fromdate = document.getElementById('fromdate').value;
            let todate = document.getElementById('todate').value;
            let usernamelist = [];
            $('#usernames input[type="checkbox"]:checked').each(function () {
                usernamelist.push($(this).val());
            });
            if (!fromdate || !todate) {
                pushNotify('error', 'Print Failed', 'Please select all filters before printing.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }
            let url = document.getElementById('printUrl').textContent.trim()
                    + '?fromdate=' + encodeURIComponent(fromdate)
                    + '&todate=' + encodeURIComponent(todate)
                    + '&username=' + encodeURIComponent(usernamelist.join(','));
            window.open(url, '_blank');
        });

        document.getElementById('exportExcelBtn').addEventListener('click', function() {
            let fromdate = document.getElementById('fromdate').value;
            let todate = document.getElementById('todate').value;
            let usernamelist = [];
            $('#usernames input[type="checkbox"]:checked').each(function () {
                usernamelist.push($(this).val());
            });
            if (!fromdate || !todate) {
                pushNotify('error', 'Export Failed', 'Please select all filters before exporting.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }
            let url = document.getElementById('exportUrl').textContent.trim()
                    + '?fromdate=' + encodeURIComponent(fromdate)
                    + '&todate=' + encodeURIComponent(todate)
                    + '&username=' + encodeURIComponent(usernamelist.join(','));
            window.location.href = url;
        });
    </script>
@endsection