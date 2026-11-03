@extends('property.layouts.main')
@section('main-container')
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <style>
        .custom-header {
            background-color: #777575;
            text-align: center;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            border: 1px solid #ddd;
            margin: 10px 0 -17px 0;
            color: white;
            display: none;
        }

        .tabulator-col .tabulator-arrow {
            display: none !important;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="" method="post">
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
                                    <p style="margin-top:-10px; font-size:16px;">
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">FOCC Report</p>
                                    <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                            id="fromdatep"></span> To Date:
                                        <span id="todatep"></span>
                                    </p>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <label for="fordate" class="col-form-label">From Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" value="{{ $ncurdate }}" class="form-control" name="fordate"
                                            id="fordate">
                                    </div>
                                    <div class="form-group">
                                        <label for="interestamount" class="col-form-label">Interest Amount</label>
                                        <input type="text" value="0" class="form-control" placeholder="Enter Amount" name="interestamount" id="interestamount">
                                    </div>

                                </div>
                                <div class="refresh-button-container">
                                    <button type="button" id="refreshbutton" class="btn btn-primary">Refresh</button>
                                </div>

                            </form>
                            <div class="mt-3">
                                <button id="printBtn" class="btn btn-primary">Print <i
                                        class="fa-solid fa-print"></i></button>
                            </div>
                            <div class="custom-header">Front Office Cash Collection Details</div>
                            <div class="mt-3" id="front-office"></div>
                            <div class="custom-header">POS Cash Collection Details</div>
                            <div class="mt-3" id="pos-outlet"></div>
                            <div class="custom-header">Banquet Cash Collection Details</div>
                            <div class="mt-3" id="banquet-outlet"></div>
                            <div class="custom-header">Misc. Cash Collection Details</div>
                            <div class="mt-3" id="misc-collection"></div>
                            <div class="custom-header">Misc. Expence Details</div>
                            <div class="mt-3" id="misx-collection"></div>
                            <div class="netcash">
                                <table id="imperesttable" class="table table-bordered table-no-border">
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                            <div class="custom-header">Bill To Company Details</div>
                            <div class="mt-3" id="bill-tocompany"></div>
                            <div class="custom-header">Other Payment Details</div>
                            <div class="mt-3" id="other-collection"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {

            $(document).on('change', '#fordate', function() {
                validateFinancialYear('#fordate');

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    }
                });

                $.post('/foccamount', {
                        date: $(this).val()
                    },
                    function(response) {
                        if (response[0] != null) {
                            $('#interestamount').val(response[0].interestamount);
                        }
                    }
                );

            });

            $('#fordate').trigger('change');

            $('.custom-header').fadeOut(1000);
            let table;
            let table2;
            let table3;
            let table4;
            let table5;
            let table6;
            let table7;
            let totalamount;
            let sums = [];

            $(document).on('click', '#refreshbutton', function() {
                let fordate = $('#fordate').val();
                let interestamount = $('#interestamount').val();

                sums = [];

                if (!fordate) {
                    pushNotify('error', 'FOCC Report', 'Please Select For Date', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                showLoader();

                const frontOfficeColumns = [{
                        title: "Guest Name",
                        field: "guestname",
                        sorter: "string",
                        width: 400
                    },
                    {
                        title: "Rect No",
                        field: "rectno",
                        sorter: "string",
                        width: 150
                    },
                    {
                        title: "Folio / Res No",
                        field: "foliono",
                        sorter: "number",
                        width: 200,
                    },
                    {
                        title: "Bill No",
                        field: "billno",
                        sorter: "number",
                        width: 100,
                    },
                    {
                        title: "Room No",
                        field: "roomno",
                        sorter: "number",
                        hozAlign: "left",
                    },
                    {
                        title: "Amount",
                        field: "amount",
                        sorter: "number",
                        width: 150,
                        hozAlign: "right",
                        formatter: "money",
                        formatterParams: {
                            precision: 2,
                        },
                        bottomCalc: "sum",
                        bottomCalcFormatter: "money",
                        bottomCalcFormatterParams: {
                            precision: 2,
                        },
                    }
                ];

                const posOutletColumns = [{
                        title: "Outlet",
                        field: "outlet",
                        sorter: "string",
                        width: 399
                    },
                    {
                        title: "Amount",
                        field: "amount",
                        sorter: "number",
                        hozAlign: "right",
                        formatter: "money",
                        formatterParams: {
                            precision: 2,
                        },
                        bottomCalc: "sum",
                        bottomCalcFormatter: "money",
                        bottomCalcFormatterParams: {
                            precision: 2,
                        },
                    }
                ];

                const banquetcolumns = [{
                        title: "Banquet",
                        field: "banquet",
                        sorter: "string",
                        width: 399
                    },
                    {
                        title: "Bill No.",
                        field: "billno",
                        sorter: "string",
                        width: 399
                    },
                    {
                        title: "Amount",
                        field: "amount",
                        sorter: "number",
                        hozAlign: "right",
                        formatter: "money",
                        formatterParams: {
                            precision: 2,
                        },
                        bottomCalc: "sum",
                        bottomCalcFormatter: "money",
                        bottomCalcFormatterParams: {
                            precision: 2,
                        },
                    }
                ];

                const misccolcolumn = [{
                        title: "Ac. Name",
                        field: "acname",
                        sorter: "string",
                        width: 400
                    },
                    {
                        title: "Rect No",
                        field: "voucherno",
                        sorter: "string",
                        width: 150
                    },
                    {
                        title: "Amount",
                        field: "amount",
                        sorter: "number",
                        hozAlign: "right",
                        formatter: "money",
                        formatterParams: {
                            precision: 2,
                        },
                        bottomCalc: "sum",
                        bottomCalcFormatter: "money",
                        bottomCalcFormatterParams: {
                            precision: 2,
                        },
                    }
                ];

                const misxcolcolumn = [{
                        title: "Ac. Name",
                        field: "acname",
                        sorter: "string",
                        width: 400
                    },
                    {
                        title: "Remarks",
                        field: "remarks",
                        sorter: "string",
                        width: 400
                    },
                    {
                        title: "Rect No",
                        field: "voucherno",
                        sorter: "string",
                        width: 150
                    },
                    {
                        title: "Amount",
                        field: "amount",
                        sorter: "number",
                        width: 150,
                        hozAlign: "right",
                        formatter: "money",
                        formatterParams: {
                            precision: 2,
                        },
                        bottomCalc: "sum",
                        bottomCalcFormatter: "money",
                        bottomCalcFormatterParams: {
                            precision: 2,
                        },
                    }
                ];

                const billtocompdetail = [{
                        title: "Comp Name",
                        field: "compname",
                        sorter: "string",
                        width: 400
                    },
                    {
                        title: "Rect No",
                        field: "vno",
                        sorter: "string",
                        width: 150
                    },
                    {
                        title: "Foliono",
                        field: "foliono",
                        sorter: "string",
                        width: 150
                    },
                    {
                        title: "Bill No",
                        field: "billno",
                        sorter: "string",
                        width: 150
                    },
                    {
                        title: "Amount",
                        field: "amount",
                        sorter: "number",
                        width: 150,
                        hozAlign: "right",
                        formatter: "money",
                        formatterParams: {
                            precision: 2,
                        },
                        bottomCalc: "sum",
                        bottomCalcFormatter: "money",
                        bottomCalcFormatterParams: {
                            precision: 2,
                        },
                    }
                ];

                const othercollectioncolumn = [{
                        title: "Guest Name",
                        field: "guestname",
                        sorter: "string",
                        width: 400
                    },
                    {
                        title: "Rect No",
                        field: "vno",
                        sorter: "string",
                        width: 150
                    },
                    {
                        title: "Folio / Res No",
                        field: "foliono",
                        sorter: "number",
                        width: 200,
                    },
                    {
                        title: "Bill No",
                        field: "billno",
                        sorter: "number",
                        width: 100,
                    },
                    {
                        title: "Paymode",
                        field: "paymode",
                        sorter: "string",
                        width: 150,
                    },
                    {
                        title: "Amount",
                        field: "amount",
                        sorter: "number",
                        width: 150,
                        hozAlign: "right",
                        formatter: "money",
                        formatterParams: {
                            precision: 2,
                        },
                        bottomCalc: "sum",
                        bottomCalcFormatter: "money",
                        bottomCalcFormatterParams: {
                            precision: 2,
                        },
                    }
                ];

                $.ajax({
                    url: '/focc_reportfetch',
                    type: 'POST',
                    data: {
                        fordate: fordate,
                        interestamount: interestamount,
                        _token: $('meta[name="csrf-token"]').attr('content')
                    },
                    dataType: 'json',
                    success: function(results) {

                        if (results.status == 'error') {
                            Swal.fire({
                                title: 'FOCC Report',
                                text: results.message,
                                icon: 'info',
                                confirmButtonText: 'OK'
                            });
                            setTimeout(hideLoader, 1000);
                        } else {
                            sums.push({
                                totalamount: results.totalamount,
                                frontofcsum: results.frontofcsum,
                                outletsum: results.outletsum,
                                miscolsum: results.miscolsum,
                                banquetsum: results.banquetsum,
                                misexpsum: results.misexpsum,
                                compsum: results.compsum,
                                othersum: results.othersum,
                                threesum: results.frontofcsum + results.outletsum + results.miscolsum + parseFloat($('#interestamount').val()),
                                netcashbalance: (results.frontofcsum + +results.banquetsum + results.outletsum + results.miscolsum + parseFloat($('#interestamount').val())) - results.misexpsum
                            });

                            fillimperesttable(sums);

                            const frontOfficeData = processData(results);
                            const posOutletData = processData2(results);
                            const banquetdata = processData7(results);
                            const misccoldata = processData3(results);
                            const misxcoldata = processData4(results);
                            const companydata = processData5(results);
                            const othercollectiondata = processData6(results);

                            totalamount = results.totalamount;

                            $('#fordatep').text(dmy(fordate));

                            if (table) {
                                table.setData(frontOfficeData);
                            } else {
                                table = new Tabulator("#front-office", {
                                    data: frontOfficeData,
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: frontOfficeColumns,
                                    layout: "fitColumns",
                                    tooltips: true,
                                });
                            }

                            if (table2) {
                                table2.setData(posOutletData);
                            } else {
                                table2 = new Tabulator("#pos-outlet", {
                                    data: posOutletData,
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: posOutletColumns,
                                    layout: "fitColumns",
                                    tooltips: true,
                                });
                            }

                            if (table7) {
                                table7.setData(banquetdata);
                            } else {
                                table7 = new Tabulator("#banquet-outlet", {
                                    data: banquetdata,
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: banquetcolumns,
                                    layout: "fitColumns",
                                    tooltips: true,
                                });
                                posOutletColumns
                            }

                            if (table3) {
                                table3.setData(misccoldata);
                            } else {
                                table3 = new Tabulator("#misc-collection", {
                                    data: misccoldata,
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: misccolcolumn,
                                    layout: "fitColumns",
                                    tooltips: true,
                                });
                            }

                            if (table4) {
                                table4.setData(misxcoldata);
                            } else {
                                table4 = new Tabulator("#misx-collection", {
                                    data: misxcoldata,
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: misxcolcolumn,
                                    layout: "fitColumns",
                                    tooltips: true,
                                });
                            }

                            if (table5) {
                                table5.setData(companydata);
                            } else {
                                table5 = new Tabulator("#bill-tocompany", {
                                    data: companydata,
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: billtocompdetail,
                                    layout: "fitColumns",
                                    tooltips: true,
                                });
                            }

                            if (table6) {
                                table6.setData(othercollectiondata);
                            } else {
                                table6 = new Tabulator("#other-collection", {
                                    data: othercollectiondata,
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: othercollectioncolumn,
                                    layout: "fitColumns",
                                    tooltips: true,
                                });
                            }

                            setTimeout(hideLoader, 1000);
                            $('.custom-header').fadeIn(1000);
                        }
                    },
                    error: function(xhr, status, error) {
                        hideLoader();
                        pushNotify('error', 'FOCC Report', 'Error loading report data: ' + error, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            $("#printBtn").click(function() {
                var printContent = `
                    <div class="table-container">
                        <div class="custom-header">Front Office Cash Collection Details</div>
                        ${table.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">POS Cash Collection Details</div>
                        ${table2.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">Banquet Cash Collection Details</div>
                        ${table7.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">Misc. Cash Collection Details</div>
                        ${table3.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">Misx. Expence Details</div>
                        ${table4.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">Net</div>
                        ${$('.netcash').html()}
                    </div>
                `;

                var printcontent2 = `
                    <div class="table-container">
                        <div class="custom-header">Bill To Company Details</div>
                        ${table5.element.outerHTML}
                    </div>
                    <div class="table-container">
                        <div class="custom-header">Other Payment Details</div>
                        ${table6.element.outerHTML}
                    </div>`

                let filetoprint = 'foccreportprint';
                let newWindow = window.open(filetoprint, '_blank');
                newWindow.onload = function() {
                    $('#reportprint', newWindow.document).html(printContent);
                    $('#reportprint2', newWindow.document).html(printcontent2);
                    $('#fordatep', newWindow.document).text($('#fordate').val());
                    $('#totalamount', newWindow.document).text(totalamount);
                }
            });

        });

        function processData(results) {
            let reportData = [];

            if (results && results.reportdata) {
                results.reportdata.forEach(function(row) {
                    if (row.frontoffice == 'Y') {
                        reportData.push({
                            guestname: row.guestname,
                            rectno: row.rectno,
                            foliono: row.foliono,
                            billno: row.billno,
                            roomno: row.roomno,
                            amount: row.amount
                        });
                    }
                });
            }

            return reportData;
        }

        function processData2(results) {
            let reportData2 = [];

            if (results && results.reportdata) {
                results.reportdata.forEach(function(row) {
                    if (row.pos == 'Y' && row.amount > 0) {
                        reportData2.push({
                            outlet: row.outlet,
                            amount: row.amount
                        });
                    }
                });
            }

            return reportData2;
        }

        function processData7(results) {
            let reportData7 = [];

            if (results && results.reportdata) {
                results.reportdata.forEach(function(row) {
                    if (row.banquet == 'Y' && row.amount > 0) {
                        reportData7.push({
                            banquet: row.outlet,
                            billno: row.billno,
                            amount: row.amount
                        });
                    }
                });
            }

            return reportData7;
        }

        function processData3(results) {
            let reportData3 = [];

            if (results && results.reportdata) {
                results.reportdata.forEach(function(row) {
                    if (row.miscy == 'Y' && row.amount > 0) {
                        reportData3.push({
                            acname: row.acname,
                            voucherno: row.voucherno,
                            amount: row.amount
                        });
                    }
                });
            }

            return reportData3;
        }

        function processData4(results) {
            let reportData3 = [];

            if (results && results.reportdata) {
                results.reportdata.forEach(function(row) {
                    if (row.miscx == 'Y' && row.amount > 0) {
                        reportData3.push({
                            acname: row.acname,
                            voucherno: row.voucherno,
                            amount: row.amount,
                            remarks: row.remark
                        });
                    }
                });
            }

            return reportData3;
        }

        function processData5(results) {
            let reportData5 = [];

            if (results && results.reportdata) {
                results.reportdata.forEach(function(row) {
                    if (row.comp == 'Y' && row.amount > 0) {
                        reportData5.push({
                            compname: row.compname,
                            vno: row.vno,
                            foliono: row.foliono,
                            billno: row.billno,
                            amount: row.amount
                        });
                    }
                });
            }

            return reportData5;
        }


        function processData6(results) {
            let reportData6 = [];

            if (results && results.reportdata) {
                results.reportdata.forEach(function(row) {
                    if (row.otherpay == 'Y' && row.amount > 0) {
                        reportData6.push({
                            guestname: row.guestname,
                            vno: row.vno,
                            foliono: row.foliono,
                            billno: row.billno,
                            paymode: row.paymode,
                            amount: row.amount
                        });
                    }
                });
            }

            return reportData6;
        }

        function fillimperesttable(sums) {
            let tbody = $('#imperesttable tbody');
            tbody.empty();
            let tr = `<tr>
                        <td>Imprest:</td>
                        <td>${$('#interestamount').val()}</td>
                        <td>Front Office Collection:</td>
                        <td>${sums[0].frontofcsum.toFixed(2)}</td>
                    </tr>
                    <tr>
                        <td>F.O. Cashier:</td>
                        <td></td>
                        <td>Outlet Collection:</td>
                        <td>${sums[0].outletsum.toFixed(2)}</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>Banquet Collection:</td>
                        <td>${sums[0].banquetsum.toFixed(2)}</td>
                    </tr>
                    <tr>
                        <td>F.O. Manager:</td>
                        <td></td>
                        <td>Misc Rect.:</td>
                        <td>${sums[0].miscolsum.toFixed(2)}</td>
                    </tr>
                    <tr>
                        <td>Verified By:</td>
                        <td></td>
                        <td>Total:</td>
                        <td>${sums[0].threesum.toFixed(2)}</td>
                    </tr>
                    <tr>
                        <td>Received By:</td>
                        <td></td>
                        <td>Less Paid:</td>
                        <td>${sums[0].misexpsum.toFixed(2)}</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>Net Cash Balance:</td>
                        <td>${sums[0].netcashbalance.toFixed(2)}</td>
                    </tr>
                    <tr>
                        <td>Charge Handled By:</td>
                        <td></td>
                        <td>Charge Taken By:</td>
                        <td></td>
                    </tr>`;
            tbody.append(tr);


        }
    </script>
@endsection
