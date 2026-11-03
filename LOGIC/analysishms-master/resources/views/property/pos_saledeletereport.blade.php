@extends('property.layouts.main')
@section('main-container')

    <head>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
        <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
        <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript" src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
        <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    </head>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <form action="{% url 'report' %}" method="GET">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
                                                name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
                                                name="todate" id="todate">
                                        </div>
                                    </div>

                                    <div class="">
                                        <label for="delorunsettle" class="col-form-label">Delflag</label>
                                        <select class="form-control" name="delorunsettle" id="delorunsettle">
                                            <option value="delete" selected>Delete</option>
                                            <option value="unsettle">Unsettled</option>
                                            <option value="combine">All</option>

                                        </select>
                                    </div>

                                    <div style="margin-top:30px; margin-right: -50px;" class="">
                                        <div style="margin-top: 30px;" class="">
                                            <button id="fetchbutton" name="fetchbutton" type="button"
                                                class="btn btn-success">Refresh <i
                                                    class="fa-solid fa-arrows-rotate"></i></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center titlep">
                                    <h3>{{ $company->comp_name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">Sale Delete Report</p>
                                    <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                            id="fromdatep"></span> To Date:
                                        <span id="todatep"></span>
                                    </p>
                                </div>

                                <div class="row">

                                    <div class="col-md-3">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn rhead btn-outline-success" name="departlistbtn"
                                            id="departlistbtn">Outlet <i class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeddepart" style="display:none;">
                                            <li> <input type="checkbox" id="checkalldepart" checked>
                                                <span>Select All <span class="tcount">{{ count($departs) }}</span></span>
                                            </li>
                                            <li><input type="text" placeholder="Enter Outlet Name..." class="form-control outletsearch"></li>
                                            @foreach ($departs as $item)
                                                <li data-outletname="{{ $item->name }}" class="outletnameli">
                                                    <input class="departcheckbox" value="{{ $item->dcode }}"
                                                        type="checkbox" checked>
                                                    <span>{{ $item->name }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>

                                </div>
                            </form>

                            <div class="mt-3">
                                <button id="print-table" class="btn btn-primary">Print <i
                                        class="fa-solid fa-print"></i></button>
                                <button id="download-xlsx" class="btn btn-success">Excel <i
                                        class="fa fa-file-excel-o"></i></button>
                            </div>

                            <div class="mt-3" id="saledelete"></div>

                            <div class="paygroup font-weight-bold"></div>

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

            $(document).on('click', '#fetchbutton', function() {
                $('#myloader').removeClass('none');
                let comps = $('#company').val();
                let taxdetail = $('#taxdetail').val();
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let itemdetails = $('#itemdetails').val();
                if (fromdate == '') {
                    pushNotify('error', 'Sale Register', 'Please Select From Date', 'fade', 300, '', '',
                        true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#fromdate').addClass('invalid');
                }
                if (todate == '') {
                    pushNotify('error', 'Sale Register', 'Pleasee Select To Date', 'fade', 300, '', '',
                        true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#todate').addClass('invalid');
                }

                if (fromdate != '' && todate != '') {
                    let alloutlets = $('.departcheckbox').map(function() {
                        if ($(this).is(':checked')) {
                            return $(this).val();
                        }
                    }).get();

                    if (alloutlets.length == 0) {
                        pushNotify('error', 'Sale Delete', 'Please Select Outlets', 'fade', 300, '', '',
                            true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }


                    let compname = $('#compname').val();
                    let fromdate = $('#fromdate').val();
                    let todate = $('#todate').val();
                    let delorunsettle = $('#delorunsettle').val();
                    let fdata = new XMLHttpRequest();
                    fdata.open('POST', '/saledelxhr', true);
                    fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    fdata.onreadystatechange = function() {
                        if (fdata.status === 200 && fdata.readyState === 4) {
                            $('#myloader').addClass('none');
                            let results = JSON.parse(fdata.responseText);
                            let tableData = processData(results);
                            let items = results.items;
                            pushNotify('info', 'Delflag', `${items.length} Rows found`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');

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
                                    title: "Room / Table",
                                    field: "roomno",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Guaratt",
                                    field: "Guaratt",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Remark",
                                    field: "remark",
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

                            if (table) {
                                table.setData(tableData);
                            } else {

                                $('#fromdatep').text(dmy(fromdate));
                                $('#todatep').text(dmy(todate));

                                table = new Tabulator("#saledelete", {
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
                            $('#myloader').addClass('none');
                        }
                    }
                    fdata.send(
                        `delorunsettle=${delorunsettle}&fromdate=${fromdate}&todate=${todate}&alloutlets=${alloutlets}&_token={{ csrf_token() }}`
                    );
                }
            });

            $("#print-table").on("click", function() {
                table.print(false, true);
            });

            $("#download-xlsx").on("click", function() {
                table.download("xlsx", "saledeletereport.xlsx", {
                    sheetName: "Sale Delete Report"
                });
            });

            function processData(results) {
                let tableData = [];

                results.items.forEach(sale => {
                    let saleRow = {
                        date: dmy(sale.vdate),
                        outletName: sale.OutletName,
                        billno: sale.vno,
                        billamount: parseFloat(sale.netamt).toFixed(2),
                        roomno: sale.roomno,
                        Guaratt: sale.guaratt,
                        remark: sale.delremark,
                        user: sale.u_name
                    };

                    tableData.push(saleRow);
                });

                return tableData;
            }

            setTimeout(() => {
                $('#fetchbutton').trigger('click');
            }, 500);

        });
    </script>
@endsection
