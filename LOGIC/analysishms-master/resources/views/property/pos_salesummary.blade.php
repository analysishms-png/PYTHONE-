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
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                    </p>
                                    <p style="margin-top:-10px; font-size:16px;">Sale Summary Report</p>
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
                                            <li><input type="text" placeholder="Enter Outlet Name..."
                                                    class="form-control outletsearch"></li>
                                            @foreach ($departs as $item)
                                                <li data-outletname="{{ $item->name }}" class="outletnameli">
                                                    <input class="departcheckbox" value="{{ $item->dcode }}" type="checkbox"
                                                        checked>
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

                            <div class="mt-3" id="salesummary"></div>

                            <div class="paygroup font-weight-bold"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function () {
            let table;

            dynamicSearch('.outletsearch', 'outletname', '.outletnameli');
            toggleList("#departlistbtn", "#listeddepart");
            checkAllCheckboxes("#checkalldepart", ".departcheckbox");

            $(document).on('change', '#fromdate', function () {
                validateFinancialYear('#fromdate');
            });
            $(document).on('change', '#todate', function () {
                validateFinancialYear('#todate');
            });

            $(document).on('click', '#fetchbutton', function () {
                $('#myloader').removeClass('none');

                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();

                if (fromdate === '') {
                    pushNotify('error', 'Sale Register', 'Please Select From Date');
                    $('#fromdate').addClass('invalid');
                    return;
                }
                if (todate === '') {
                    pushNotify('error', 'Sale Register', 'Please Select To Date');
                    $('#todate').addClass('invalid');
                    return;
                }

                let alloutlets = $('.departcheckbox').map(function () {
                    return $(this).is(':checked') ? $(this).val() : null;
                }).get().filter(Boolean);

                if (alloutlets.length === 0) {
                    pushNotify('error', 'Sale Register', 'Please Select Outlets');
                    return;
                }

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/salesummaryrpt', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function () {
                    if (fdata.status === 200 && fdata.readyState === 4) {
                        $('#myloader').addClass('none');
                        let results = JSON.parse(fdata.responseText);
                        let items = results.items;
                        pushNotify('info', 'Data Loaded', `${items.length} Rows found`);

                        let tableData = [];
                        let dynamicColumns = [];

                        if (items.length > 0) {
                            let firstRow = items[0];

                            Object.keys(firstRow).forEach(key => {
                                if (key.startsWith('CGST_BASE_') || key.startsWith('CGST_TAXAMT_') ||
                                    key.startsWith('SGST_BASE_') || key.startsWith('SGST_TAXAMT_') ||
                                    key.startsWith('IGST_BASE_') || key.startsWith('IGST_TAXAMT_')) {

                                    dynamicColumns.push({
                                        title: key.replace(/_/g, ' '),
                                        field: key,
                                        hozAlign: "right",
                                        bottomCalc: "sum",
                                        bottomCalcFormatter: "money",
                                        headerWordWrap: true,
                                        minWidth: 100
                                    });
                                }
                            });

                            dynamicColumns.push({
                                title: "Round Off",
                                field: "roundoff",
                                hozAlign: "right",
                                bottomCalc: "sum",
                                bottomCalcFormatter: "money",
                                headerWordWrap: true,
                                minWidth: 120
                            }, {
                                title: "Billamt",
                                field: "totalbillamt",
                                hozAlign: "right",
                                bottomCalc: "sum",
                                bottomCalcFormatter: "money",
                                headerWordWrap: true,
                                minWidth: 120
                            });
                        }

                        items.forEach(row => {
                            let newRow = {
                                date: dmy(row.vdate),
                                outletName: row.DepartName,
                                minbillno: `${row.MinBillNo} - ${row.MaxBillNo}`,
                                taxable: parseFloat(row.Taxable).toFixed(2),
                                nontaxable: parseFloat(row.NonTaxable).toFixed(2),
                                roundoff: parseFloat(row.RoundOff).toFixed(2),
                                servicecharge: parseFloat(row.ServiceCharge).toFixed(2),
                                discamount: parseFloat(row.DiscAmt).toFixed(2),
                                goodsamount: parseFloat(row.GoodsAmt).toFixed(2),
                                totalbillamt: parseFloat(row.NetAmt).toFixed(2)
                            };

                            // let totaltaxbase = 0;

                            Object.keys(row).forEach(key => {
                                if (key.startsWith('CGST_BASE_') || key.startsWith('SGST_BASE_') || key.startsWith('IGST_BASE_')) {
                                    newRow[key] = parseFloat(row[key]).toFixed(2);
                                    // totaltaxbase += parseFloat(row[key]);
                                } else if (key.startsWith('CGST_TAXAMT_') || key.startsWith('SGST_TAXAMT_') || key.startsWith('IGST_TAXAMT_')) {
                                    newRow[key] = parseFloat(row[key]).toFixed(2);
                                }
                            });

                            // newRow.totaltaxbase = totaltaxbase.toFixed(2);
                            tableData.push(newRow);
                        });

                        let columns = [{
                            title: "Outlet Name",
                            field: "outletName",
                            headerWordWrap: true,
                            minWidth: 120
                        },
                        {
                            title: "Date",
                            field: "date",
                            headerWordWrap: true,
                            minWidth: 100
                        },
                        {
                            title: "Bill No(s)",
                            field: "minbillno",
                            headerWordWrap: true,
                            minWidth: 130
                        },
                        {
                            title: "Goods Amount",
                            field: "goodsamount",
                            hozAlign: "right",
                            bottomCalc: "sum",
                            bottomCalcFormatter: "money",
                            headerWordWrap: true,
                            minWidth: 110
                        },
                        {
                            title: "Taxable",
                            field: "taxable",
                            hozAlign: "right",
                            bottomCalc: "sum",
                            bottomCalcFormatter: "money",
                            headerWordWrap: true,
                            minWidth: 100
                        },
                        {
                            title: "Non-Taxable",
                            field: "nontaxable",
                            hozAlign: "right",
                            bottomCalc: "sum",
                            bottomCalcFormatter: "money",
                            headerWordWrap: true,
                            minWidth: 100
                        },
                        {
                            title: "Service Charge",
                            field: "servicecharge",
                            hozAlign: "right",
                            bottomCalc: "sum",
                            bottomCalcFormatter: "money",
                            headerWordWrap: true,
                            minWidth: 110
                        },
                        {
                            title: "Disc. Amt",
                            field: "discamount",
                            hozAlign: "right",
                            bottomCalc: "sum",
                            bottomCalcFormatter: "money",
                            headerWordWrap: true,
                            minWidth: 100
                        },
                        ...dynamicColumns
                        ];

                        if (table) {
                            table.setData(tableData);
                        } else {
                            $('#fromdatep').text(dmy(fromdate));
                            $('#todatep').text(dmy(todate));

                            table = new Tabulator("#salesummary", {
                                data: tableData,
                                layout: "fitColumns",
                                groupBy: "outletName",
                                printHeader: $('.titlep').html(),
                                printFooter: "<h2>Copyright @Analysis</h2>",
                                columns: columns,
                                groupHeader: function (value, count, data, group) {
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
                };

                fdata.send(`&fromdate=${fromdate}&todate=${todate}&alloutlets=${alloutlets}&_token={{ csrf_token() }}`);
            });

            $("#print-table").on("click", function () {
                table.print(false, true);
            });

            $("#download-xlsx").on("click", function () {
                table.download("xlsx", "salesummaryreport.xlsx", {
                    sheetName: "Sale Summary Report"
                });
            });

        });
    </script>
@endsection