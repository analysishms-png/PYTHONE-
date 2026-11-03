@extends('property.layouts.main')
@section('main-container')
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <style>
        .tabulator-group {
            position: relative !important;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn ">
                            <form action="{% url 'report' %}" method="GET">
                                <div class="row justify-content-around">

                                    <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $fromdate }}" name="ncurdatef" id="ncurdatef">
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
                                            <input type="date" value="{{ $todate ?? $fromdate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", function() {
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
                                        <label for="groupby" class="col-form-label">Group By</label>
                                        <select class="form-control" name="groupby" id="groupby">
                                            <option value="DepartCode" selected>Outlet Wise</option>
                                            <option value="ITEMGROUP">Item Group</option>
                                            <option value="ITEMNAME">Item Name</option>
                                        </select>
                                    </div>

                                    <div class="">
                                        <label for="nckot" class="col-form-label">NC KOT</label>
                                        <select class="form-control" name="nckot" id="nckot">
                                            <option value="N" selected>No</option>
                                            <option value="Y">Yes</option>
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
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                    </p>
                                    <p style="margin-top:-10px; font-size:16px;">Item Wise Sale Report</p>
                                    <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                            id="fromdatep"></span> To Date:
                                        <span id="todatep"></span>
                                    </p>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn rhead btn-outline-primary" name="itemgrplistbtn"
                                            id="itemgrplistbtn">Item Group <i class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeditemgrp" style="display:none;">
                                            <li> <input type="checkbox" id="checkallitemgrps" checked>
                                                <span>Select All <span class="tcount"></span></span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col-md-3">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn rhead btn-outline-success" name="departlistbtn"
                                            id="departlistbtn">Outlet <i class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeddepart" style="display:none;">
                                            <li> <input type="checkbox" id="checkalldepart">
                                                <span>Select All <span class="tcount">{{ count($departs) }}</span></span>
                                            </li>
                                            <li><input type="text" placeholder="Enter Outlet Name..."
                                                    class="form-control outletsearch"></li>
                                            @foreach ($departs as $item)
                                                <li data-outletname="{{ $item->name }}" class="outletnameli">
                                                    <input class="departcheckbox" value="{{ $item->dcode }}" type="checkbox">
                                                    <span>{{ $item->name }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>

                                    <div class="col-md-3">
                                        <button style="width: -webkit-fill-available;" type="button"
                                            class="btn rhead btn-outline-secondary" name="itemlistbtn"
                                            id="itemlistbtn">Items <i class="fa-solid fa-angle-down"></i></button>
                                        <ul class="checkul" id="listeditems" style="display:none;">
                                            <li> <input type="checkbox" id="checkallitems">
                                                <span>Select All <span class="tcount"></span></span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                            <div id="printSection">
                                <div class="text-center pdetail">
                                    <h3>{{ $company->name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $company->name }}
                                    </p>


                                </div>

                                <div class="mt-3">
                                    <button id="print-table" class="btn btn-primary">Print <i
                                            class="fa-solid fa-print"></i></button>
                                    <button id="download-xlsx" class="btn btn-success">Excel <i
                                            class="fa fa-file-excel-o"></i></button>
                                </div>


                                <div class="mt-3" id="itemwisesale"></div>

                                <div class="paygroup font-weight-bold"></div>
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
            let currentTableData = [];

            let csrftoken = "{{ csrf_token() }}";

            function formatHeaderDate(dateStr) {
                if (!dateStr) return '';
                if (typeof dmy === 'function') return dmy(dateStr);
                return dateStr;
            }

            function updateHeaderDates() {
                $('#fromdatep').text(formatHeaderDate($('#fromdate').val()));
                $('#todatep').text(formatHeaderDate($('#todate').val()));
            }

            function parseNumeric(value) {
                let parsed = parseFloat(value);
                return isNaN(parsed) ? 0 : parsed;
            }

            function getOverallTotalValue() {
                return currentTableData.reduce((sum, row) => {
                    return sum + parseNumeric(row.VALUE1);
                }, 0);
            }

            function calculateItemGroupRatio(values, data) {
                if ($('#groupby').val() !== 'ITEMGROUP' || !Array.isArray(data) || data.length === 0) {
                    return '';
                }

                const overallTotal = getOverallTotalValue();

                if (!overallTotal || data.length === currentTableData.length) {
                    return '';
                }

                const groupTotal = data.reduce((sum, row) => {
                    return sum + parseNumeric(row.VALUE1);
                }, 0);

                return ((groupTotal / overallTotal) * 100).toFixed(2) + '%';
            }

            function showGroupTotalLabel() {
                return 'Group Total';
            }

            function formatCalcValue(cell) {
                const value = cell.getValue();
                return value === null || value === undefined || value === '' ? '' : value;
            }

            updateHeaderDates();

            $(document).on('change', '#fromdate', function() {
                validateFinancialYear('#fromdate');
                updateHeaderDates();
            });
            $(document).on('change', '#todate', function() {
                validateFinancialYear('#todate');
                updateHeaderDates();
            });

            $(document).on('change', '#groupby', function() {
                let groupByValue = $(this).val();
                if (table) {
                    table.setGroupBy(groupByValue);
                    table.redraw(true);
                }
            });

            function getCheckedOutletCodes() {
                return $('.departcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();
            }

            function populateItemLists(data) {
                let itemgroups = data.itemgroups;
                let itemmast = data.itemmast;

                $('#listeditemgrp li:not(:first-child)').remove();
                $('#listeditems li:not(:first-child)').remove();

                $('#listeditemgrp').append('<li><input type="text" placeholder="Enter Group Name..." class="form-control groupsearch"></li>');
                $('#listeditems').append('<li><input type="text" placeholder="Enter Item Name..." class="form-control itemsearch"></li>');

                $('#listeditemgrp').find('span.tcount').text(itemgroups.length);
                $('#listeditems').find('span.tcount').text(itemmast.length);

                itemgroups.forEach((element) => {
                    $('#listeditemgrp').append(`
                    <li data-itemgroup="${element.name}" class="itemgroupli">
                        <input class="itemgrpcheckbox" value="${element.code}" type="checkbox" checked>
                        <span>${element.name} - ${element.depname}</span>
                    </li>
                `);
                });

                itemmast.forEach((element) => {
                    $('#listeditems').append(`
                            <li data-itemname="${element.Name}" class="itemnameli">
                                <input class="itemcheckbox" value="${element.Code}" type="checkbox" checked>
                                <span>${element.Name}</span>
                            </li>
                        `);
                });

            }

            $(document).on('change', '.departcheckbox', function() {
                let checkedOutletCodes = getCheckedOutletCodes();

                if (checkedOutletCodes.length > 0) {
                    const otpostdata = {
                        'outletcodes': checkedOutletCodes
                    };

                    const optionsot = {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': csrftoken
                        },
                        body: JSON.stringify(otpostdata)
                    };

                    fetch('/outletitems', optionsot)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            populateItemLists(data);
                        })
                        .catch(error => {
                            console.error('Error fetching outlet items:', error);
                        })
                        .finally(() => {

                        });
                } else {
                    $('#listeditemgrp li:not(:first-child)').remove();
                    $('#listeditems li:not(:first-child)').remove();

                    $('#listeditemgrp').append('<li><input type="text" placeholder="Enter Group Name..." class="form-control groupsearch"></li>');
                    $('#listeditems').append('<li><input type="text" placeholder="Enter Item Name..." class="form-control itemsearch"></li>');


                    $('#listeditemgrp').find('span.tcount').text('0');
                    $('#listeditems').find('span.tcount').text('0');

                }
            });

            $('#checkalldepart').change(function() {
                let isChecked = $(this).is(':checked');
                $('.departcheckbox').prop('checked', isChecked).trigger('change');
            });

            $('#checkallitemgrps').change(function() {
                let isChecked = $(this).is(':checked');
                $('.itemgrpcheckbox').prop('checked', isChecked);
            });

            $('#checkallitems').change(function() {
                let isChecked = $(this).is(':checked');
                $('.itemcheckbox').prop('checked', isChecked);
            });

            dynamicSearch('.groupsearch', 'itemgroup', '.itemgroupli');
            dynamicSearch('.itemsearch', 'itemname', '.itemnameli');
            dynamicSearch('.outletsearch', 'outletname', '.outletnameli');

            toggleList("#itemgrplistbtn", "#listeditemgrp");
            checkAllCheckboxes("#checkallitemgrps", ".itemgrpcheckbox");

            toggleList("#itemlistbtn", "#listeditems");
            checkAllCheckboxes("#checkallitems", ".itemcheckbox");

            toggleList("#departlistbtn", "#listeddepart");
            checkAllCheckboxes("#checkalldepart", ".departcheckbox");

            $(document).on('click', '#fetchbutton', function() {
                let comps = $('#company').val();
                let taxdetail = $('#taxdetail').val();
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let nckot = $(this).val();
                let itemdetails = $('#itemdetails').val();
                if (fromdate == '') {
                    pushNotify('error', 'Sale Register', 'Please Select From Date', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
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

                    let allitems = $('.itemcheckbox').map(function() {
                        if ($(this).is(':checked')) {
                            return $(this).val();
                        }
                    }).get();

                    let allitemgroups = $('.itemgrpcheckbox').map(function() {
                        if ($(this).is(':checked')) {
                            return $(this).val();
                        }
                    }).get();

                    if (alloutlets.length == 0) {
                        pushNotify('error', 'Item Wise Sale', 'Please Select Outlets', 'fade', 300, '', '',
                            true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }

                    if (allitemgroups.length == 0) {
                        pushNotify('error', 'Item Wise Sale', 'Please Select Item Group', 'fade', 300, '', '',
                            true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }

                    if (allitems.length == 0) {
                        pushNotify('error', 'Item Wise Sale', 'Please Select Item', 'fade', 300, '', '',
                            true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }

                    showLoader();
                    let compname = $('#compname').val();
                    let nckot = $('#nckot').val();
                    let fdata = new XMLHttpRequest();
                    fdata.open('POST', '/itemwiserepfetch', true);
                    fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    fdata.onreadystatechange = function() {
                        if (fdata.status === 200 && fdata.readyState === 4) {
                            setTimeout(hideLoader, 1000);
                            let results = JSON.parse(fdata.responseText);
                            let tableData = processData(results);
                            currentTableData = tableData;

                            updateHeaderDates();

                            let columns = [{
                                    title: "ITEMNAME",
                                    field: "ITEMNAME",
                                    bottomCalc: showGroupTotalLabel,
                                    bottomCalcFormatter: formatCalcValue,
                                    headerWordWrap: true,
                                    minWidth: 200
                                },

                                {
                                    title: "HSNCODE",
                                    field: "HSNCODE",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "UNIT",
                                    field: "UNIT",
                                    bottomCalc: calculateItemGroupRatio,
                                    bottomCalcFormatter: formatCalcValue,
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "QTY",
                                    field: "QTY",
                                    bottomCalc: "sum",
                                    bottomCalcFormatter: "money",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "NCKOT",
                                    field: "NCQTY",
                                    bottomCalc: "sum",
                                    bottomCalcFormatter: "money",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "TOTAL VALUE",
                                    field: "VALUE1",
                                    bottomCalc: "sum",
                                    bottomCalcFormatter: "money",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "DISC",
                                    field: "DISC",
                                    bottomCalc: "sum",
                                    bottomCalcFormatter: "money",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Outlet",
                                    field: "DepartCode",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                            ];

                            let items = results.items;
                            pushNotify('info', 'Itemwise Sale', `${items.length} Rows found`, 'fade',
                                300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');

                            if (table) {
                                table.setData(tableData);
                            } else {
                                table = new Tabulator("#itemwisesale", {
                                    data: tableData,
                                    layout: "fitColumns",
                                    groupBy: $("#groupby").val(),
                                    printHeader: function() {
                                        return $('.titlep').html();
                                    },
                                    printFooter: "<h2>Copyright @Analysis</h2>",
                                    columns: columns,
                                    groupHeader: function(value, count, data, group) {
                                        return '<span style="position:absolute; left:50%; transform:translateX(-50%); font-weight:bold; color:#000;">' + value + '</span>';
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
                    fdata.send(
                        `nckot=${nckot}&fromdate=${fromdate}&todate=${todate}&alloutlets=${alloutlets}&allitemgroups=${allitemgroups}&allitems=${allitems}&_token={{ csrf_token() }}`
                    );
                }
            });


            $("#print-table").on("click", function() {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let nckot = $('#nckot').val();
                let groupby = $('#groupby').val();
                let alloutlets = $('.departcheckbox:checked').map(function(){ return $(this).val(); }).get().join(',');
                let allitemgroups = $('.itemgrpcheckbox:checked').map(function(){ return $(this).val(); }).get().join(',');
                let allitems = $('.itemcheckbox:checked').map(function(){ return $(this).val(); }).get().join(',');

                let url = `/printitemwisesale?fromdate=${fromdate}&todate=${todate}&nckot=${nckot}&groupby=${groupby}&alloutlets=${alloutlets}&allitemgroups=${allitemgroups}&allitems=${allitems}`;
                window.open(url, '_blank');
            });

            $("#download-xlsx").on("click", function() {
                table.download("xlsx", "itemwisesale.xlsx", {
                    sheetName: "Item Wise Sale"
                });
            });

            function processData(results) {
                let tableData = [];
                let nckotValue = $('#nckot').val();
                results.items.forEach(sale => {
                    let saleRow = {
                        ITEMNAME: sale.ITEMNAME,
                        HSNCODE: sale.HSNCODE == '' ? 'NA' : sale.HSNCODE,
                        UNIT: sale.UNIT,
                        QTY: parseFloat(sale.QTY).toFixed(3),
                        NCQTY: nckotValue === 'N' ? '0.00' : parseFloat(sale.NCQTY || 0).toFixed(3),
                        VALUE1: parseFloat(sale.VALUE1).toFixed(2),
                        DISC: parseFloat(sale.DISC).toFixed(2),
                        ITEMGROUP: sale.ITEMGROUP,
                        DepartCode: sale.DepartCode,
                    };

                    tableData.push(saleRow);
                });

                return tableData;
            }

        });
    </script>
@endsection
