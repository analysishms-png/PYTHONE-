@extends('property.layouts.main')
@section('main-container')
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <style>
        .pdetail {
            display: none;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">

                            <form action="">
                                <div class="row">
                                    <input type="hidden" value="{{ $comp->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $comp->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $comp->comp_name }}" name="compname" id="compname">
                                    <input class="none" type="date" value="{{ $fromdate }}" name="ncurdatef" id="ncurdatef">
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
                                    <div style="margin-top: 30px;" class="ml-5">
                                        <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <button style="width: -webkit-fill-available;" type="button" class="btn rhead btn-outline-danger"
                                            name="userlistbtn" id="userlistbtn">Users <i
                                                class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listusers" style="display:none;">
                                            <li> <input type="checkbox" id="checkallusers" checked>
                                                <span>Select All <span class="tcount">{{ count($users) }}</span></span>
                                            </li>
                                            <li><input type="text" placeholder="Enter User Name..." class="form-control usersearch"></li>
                                            @foreach ($users as $item)
                                                <li data-user="{{ $item->u_name }}" class="userli">
                                                    <input class="usercheckbox" value="{{ $item->u_name }}"
                                                        type="checkbox" checked>
                                                    <span>{{ $item->u_name }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </form>

                            <div id="printSection">
                                <div class="text-center titlep">
                                    <h3>{{ $comp->comp_name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $comp->address1 }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $statename . ' - ' . $comp->city . ' - ' . $comp->pin }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">Banquet Settlement Summary Report</p>
                                    <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span id="fromdatep"></span> To Date:
                                        <span id="todatep"></span>
                                    </p>
                                </div>

                                <div class="mt-3">
                                    <button id="print-table" class="btn btn-primary">Print <i
                                            class="fa-solid fa-print"></i></button>
                                    <button id="download-xlsx" class="btn btn-success">Excel <i
                                            class="fa fa-file-excel-o"></i></button>
                                </div>

                                <div class="mt-3" id="settlement-summary"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            let table;

            $(document).on('change', '#fromdate', function() {
                validateFinancialYear('#fromdate');
            });
            $(document).on('change', '#todate', function() {
                validateFinancialYear('#todate');
            });

            dynamicSearch('.outletsearch', 'outletname', '.outletnameli');
            toggleList("#departlistbtn", "#listeddepart");
            checkAllCheckboxes("#checkalldepart", ".departcheckbox");

            dynamicSearch('.usersearch', 'user', '.userli');
            toggleList("#userlistbtn", "#listusers");
            checkAllCheckboxes("#checkallusers", ".usercheckbox");

            $(document).on('click', '#fetchbutton', function() {
                $('#setsummarytbl tbody').addClass('animate__zoomIn');
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                if (fromdate == '') {
                    pushNotify('error', 'Settlement Summary', 'Please Select From Date', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#fromdate').addClass('invalid');
                }
                if (todate == '') {
                    pushNotify('error', 'Settlement Summary', 'Please Select To Date', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#todate').addClass('invalid');
                }

                if (fromdate != '' && todate != '') {
                    let allusers = $('.usercheckbox').map(function() {
                        if ($(this).is(':checked')) {
                            return $(this).val();
                        }
                    }).get();

                    // if (alloutlets.length == 0) {
                    //     pushNotify('error', 'Settlement Summary', 'Please Select Outlets', 'fade', 300, '', '',
                    //         true, true, true, 2000, 20, 20, 'outline', 'right top');
                    //     return;
                    // }

                    if (allusers.length == 0) {
                        pushNotify('error', 'Settlement Summary', 'Please Select User', 'fade', 300, '', '',
                            true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }
                    showLoader();
                    let fdata = new XMLHttpRequest();
                    fdata.open('POST', '/banqsettlefetch', true);
                    fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    fdata.onreadystatechange = function() {
                        if (fdata.status === 200 && fdata.readyState === 4) {
                            $('#myloader').addClass('none');
                            let results = JSON.parse(fdata.responseText);
                            let tableData = processData(results);

                            let revheading = results.revheading;
                            let paytypes = revheading.map(x => x.pay_type);
                            let columns = [{
                                    title: "Date",
                                    field: "date",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Outlet",
                                    field: "outletName",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Bill No",
                                    field: "billno",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Bill Amount",
                                    field: "billamount",
                                    hozAlign: "right",
                                    bottomCalc: "sum",
                                    bottomCalcFormatter: "money",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Description",
                                    field: "description",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "User",
                                    field: "user",
                                    headerWordWrap: true,
                                    minWidth: 100
                                }
                            ];

                            paytypes.forEach(element => {
                                if (element != '' && element != null) {
                                    columns.push({
                                        title: element,
                                        field: element.toLowerCase().replace(/\s/g, ''),
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    });
                                }
                            });


                            pushNotify('success', 'Settlement Summary', results.report.length + ' Records Found', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');

                            if (table) {
                                table.setData(tableData);
                            } else {

                                $('#fromdatep').text(dmy(fromdate));
                                $('#todatep').text(dmy(todate));

                                table = new Tabulator("#settlement-summary", {
                                    data: tableData,
                                    layout: "fitColumns",
                                    groupBy: "outletName",
                                    printHeader: $('.titlep').html(),
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: columns,
                                    groupHeader: function(value, count, data, group) {
                                        return value + " - " + count + " bills";
                                    },
                                    groupToggleElement: "header",
                                    groupStartOpen: true,
                                    columnCalcs: "both",
                                });
                            }

                        } else {
                            setTimeout(hideLoader, 1000);
                        }
                    }
                    fdata.send(`fromdate=${fromdate}&todate=${todate}&usernames=${allusers}&_token={{ csrf_token() }}`);
                }
            });

            $("#print-table").on("click", function() {
                table.print(false, true);
            });

            $("#download-xlsx").on("click", function() {
                table.download("xlsx", "settlemententryreport.xlsx", {
                    sheetName: "Settlement Entry"
                });
            });

            function processData(results) {
                let tableData = [];

                results.report.forEach(sale => {
                    let saleRow = {
                        date: dmy(sale.vdate),
                        outletName: sale.depname,
                        billno: sale.billno,
                        billamount: parseFloat(sale.billamt).toFixed(2),
                        description: `${sale.comments} / ${sale.rooomnoset}`,
                        cash: parseFloat(sale.Cash).toFixed(2),
                        company: parseFloat(sale.Company).toFixed(2),
                        hold: parseFloat(sale.Hold).toFixed(2),
                        room: parseFloat(sale.Room).toFixed(2),
                        upi: parseFloat(sale.UPI).toFixed(2),
                        creditcard: parseFloat(sale.CreditCard).toFixed(2),
                        user: sale.username || 'Unset'
                    };

                    tableData.push(saleRow);
                });
                setTimeout(hideLoader, 1000);
                return tableData;
            }

            setTimeout(() => {
                $('#fetchbutton').trigger('click');
            }, 500);

        });
    </script>
@endsection