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
        .tabulator-col .tabulator-arrow { display: none !important; }
        #reward-table { width: 100% !important; }
        #mobile-select2-wrap {
            position: relative;
            display: inline-block;
            min-width: 200px;
        }
        #mobile-search {
            width: 100%;
            border: 1px solid #d0d5dd;
            border-radius: 6px;
            padding: 5px 10px;
            font-size: 13px;
            outline: none;
            height: 36px;
        }
        #mobile-search:focus { border-color: #6c63ff; box-shadow: 0 0 0 2px rgba(108,99,255,.15); }
        #mobile-dropdown {
            position: absolute;
            top: calc(100% + 2px);
            left: 0;
            right: 0;
            z-index: 999;
            background: #fff;
            border: 1px solid #d0d5dd;
            border-radius: 6px;
            max-height: 200px;
            overflow-y: auto;
            display: none;
            box-shadow: 0 4px 10px rgba(0,0,0,.1);
        }
        #mobile-dropdown .mob-opt {
            padding: 6px 12px;
            font-size: 13px;
            cursor: pointer;
        }
        #mobile-dropdown .mob-opt:hover { background: #f5f3ff; }
        #mobile-dropdown .mob-opt.selected { background: #ede9fe; font-weight: 600; }
    </style>

    {{-- Readonly remove for date inputs --}}
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ids = ['fromdate', 'todate'];
            const observer = new MutationObserver(muts =>
                muts.forEach(m => m.target.removeAttribute('readonly'))
            );
            ids.forEach(id => {
                const el = document.getElementById(id);
                if (el) {
                    el.removeAttribute('readonly');
                    observer.observe(el, { attributes: true, attributeFilter: ['readonly'] });
                }
            });
        });
    </script>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form action="" method="post">
                                {{-- Hidden company info --}}
                                <input type="hidden" value="{{ $company->start_dt }}"   name="start_dt"   id="start_dt">
                                <input type="hidden" value="{{ $company->end_dt }}"     name="end_dt"     id="end_dt">
                                <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"   name="propertyid">
                                <input type="hidden" value="{{ $company->comp_name }}"  id="compname"     name="compname">
                                <input type="hidden" value="{{ $company->address1 }}"   id="address"      name="address">
                                <input type="hidden" value="{{ $company->city }}"       id="city"         name="city">
                                <input type="hidden" value="{{ $company->mobile }}"     id="compmob"      name="compmob">
                                <input type="hidden" value="{{ $statename }}"           id="statename"    name="statename">
                                <input type="hidden" value="{{ $company->pin }}"        id="pin"          name="pin">
                                <input type="hidden" value="{{ $company->email }}"      id="email"        name="email">
                                <input type="hidden" value="{{ $company->logo }}"       id="logo"         name="logo">
                                <input type="hidden" value="{{ $company->u_name }}"     id="u_name"       name="u_name">
                                <input type="hidden" value="{{ $company->gstin }}"      id="gstin"        name="gstin">

                                {{-- Report Header --}}
                                <div class="text-center titlep">
                                    <h3>{{ $company->comp_name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                    </p>
                                    <p style="margin-top:-10px; font-size:16px;">Reward Point Report</p>
                                    <p style="text-align:left; margin-top:-10px; font-size:16px;">
                                        From Date: <span id="fromdatep"></span>&nbsp;&nbsp;
                                        To Date: <span id="todatep"></span>
                                    </p>
                                </div>

                                {{-- Date Filters --}}
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">
                                                From Date <i class="fa-regular fa-calendar mb-1"></i>
                                            </label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
                                                   name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">
                                                To Date <i class="fa-regular fa-calendar mb-1"></i>
                                            </label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
                                                   name="todate" id="todate">
                                        </div>
                                    </div>

                                    {{-- Party Wise checkbox + mobile dropdown --}}
                                    <div class="col-md-4">
                                        <div class="form-group d-flex align-items-center gap-3" style="padding-top:28px;">
                                            <div class="form-check mb-0">
                                                <input class="form-check-input" type="checkbox" id="partywise-chk">
                                                <label class="form-check-label fw-semibold" for="partywise-chk">
                                                    Party Wise
                                                </label>
                                            </div>
                                            <div id="mobile-select2-wrap" style="display:none; margin-left:12px;">
                                                <input type="text" id="mobile-search" placeholder="Search mobile No.."
                                                       autocomplete="off">
                                                <div id="mobile-dropdown"></div>
                                                <input type="hidden" id="selected-mobile">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="refresh-button-container mt-2">
                                    <button type="button" id="refreshbutton" class="btn btn-primary">
                                        Refresh
                                    </button>
                                </div>
                            </form>

                            {{-- Action Buttons --}}
                            <div class="mt-3">
                                <button id="print-table" class="btn btn-primary">
                                    Print <i class="fa-solid fa-print"></i>
                                </button>
                                <button id="download-xlsx" class="btn btn-success">
                                    Excel <i class="fa fa-file-excel-o"></i>
                                </button>
                            </div>

                            <div class="custom-header">Reward Point Report</div>
                            <div class="mt-3" id="reward-table"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $(document).ready(function () {
            let table;
            let allMobiles = [];

            // ── Load mobile numbers on page load ─────────────────────────────
            $.get('/fetchrewardmobilenumbers', function (res) {
                allMobiles = (res.data || []).map(r => r.mobileno);
                renderMobileOptions(allMobiles);
            });

            function renderMobileOptions(list) {
                $('#mobile-dropdown').empty();
                list.forEach(function (mob) {
                    $('#mobile-dropdown').append(
                        '<div class="mob-opt" data-val="' + mob + '">' + mob + '</div>'
                    );
                });
            }

            // ── Party Wise checkbox toggle ────────────────────────────────────
            $('#partywise-chk').on('change', function () {
                if ($(this).is(':checked')) {
                    $('#mobile-select2-wrap').show();
                } else {
                    $('#mobile-select2-wrap').hide();
                    $('#mobile-search').val('');
                    $('#selected-mobile').val('');
                    $('#mobile-dropdown').hide();
                }
            });

            // ── Mobile search input ───────────────────────────────────────────
            $('#mobile-search').on('focus', function () {
                renderMobileOptions(allMobiles);
                $('#mobile-dropdown').show();
            }).on('input', function () {
                var q = $(this).val().toLowerCase();
                var filtered = allMobiles.filter(m => m.toLowerCase().includes(q));
                renderMobileOptions(filtered);
                $('#mobile-dropdown').show();
            });

            // ── Mobile option select ──────────────────────────────────────────
            $(document).on('click', '.mob-opt', function () {
                var val = $(this).data('val');
                $('#mobile-search').val(val);
                $('#selected-mobile').val(val);
                $('.mob-opt').removeClass('selected');
                $(this).addClass('selected');
                $('#mobile-dropdown').hide();
            });

            // Hide dropdown on outside click
            $(document).on('click', function (e) {
                if (!$(e.target).closest('#mobile-select2-wrap').length) {
                    $('#mobile-dropdown').hide();
                }
            });

            // ── Refresh ───────────────────────────────────────────────────────
            $(document).on('click', '#refreshbutton', function () {
                let fromdate    = $('#fromdate').val();
                let todate      = $('#todate').val();
                let partywise   = $('#partywise-chk').is(':checked');
                let mobileno    = $('#selected-mobile').val();

                if (!partywise) {
                    if (!fromdate) {
                        pushNotify('error', 'Reward Point Report', 'Please select From Date',
                            'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }
                    if (!todate) {
                        pushNotify('error', 'Reward Point Report', 'Please select To Date',
                            'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }
                } else {
                    if (!mobileno) {
                        pushNotify('error', 'Reward Point Report', 'Please select a Mobile No',
                            'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                        return;
                    }
                }

                showLoader();

                let postData = `fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`;
                if (partywise && mobileno) {
                    postData += `&mobileno=${encodeURIComponent(mobileno)}`;
                }

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/fetchrewardpointreport', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function () {
                    if (fdata.readyState === 4 && fdata.status === 200) {
                        let response  = JSON.parse(fdata.responseText);
                        let results   = response.data || [];
                        let tabledata = processData(results);

                        $('#fromdatep').text(partywise ? mobileno : dmy(fromdate));
                        $('#todatep').text(partywise ? '' : dmy(todate));

                        if (table) {
                            table.destroy();
                            table = null;
                        }

                        let columns = [
                            { title: "Date",      field: "date",        sorter: "string", width: 110 },
                            { title: "Time",      field: "time",        sorter: "string", width: 90  },
                            { title: "Outlet",    field: "outlet",      sorter: "string" },
                            { title: "Mobile No", field: "mobileno",    sorter: "string", width: 130 },
                            { title: "Bill No",   field: "billno",      sorter: "string", width: 100 },
                            {
                                title: "Good Amt", field: "goodamt", sorter: "number", hozAlign: "right", width: 110,
                                bottomCalc: "sum", bottomCalcParams: { precision: 2 },
                                formatter: "money", formatterParams: { precision: 2 },
                                bottomCalcFormatter: "money", bottomCalcFormatterParams: { precision: 2 },
                            },
                            {
                                title: "Reward Pts", field: "rewardpoint", sorter: "number", hozAlign: "right", width: 110,
                                bottomCalc: "sum", bottomCalcParams: { precision: 2 },
                                formatter: "money", formatterParams: { precision: 2 },
                                bottomCalcFormatter: "money", bottomCalcFormatterParams: { precision: 2 },
                            },
                            {
                                title: "Reward Val", field: "rewardvalue", sorter: "number", hozAlign: "right", width: 110,
                                bottomCalc: "sum", bottomCalcParams: { precision: 2 },
                                formatter: "money", formatterParams: { precision: 2 },
                                bottomCalcFormatter: "money", bottomCalcFormatterParams: { precision: 2 },
                            },
                            {
                                title: "Redeem Pts", field: "redeempoint", sorter: "number", hozAlign: "right", width: 110,
                                bottomCalc: "sum", bottomCalcParams: { precision: 2 },
                                formatter: "money", formatterParams: { precision: 2 },
                                bottomCalcFormatter: "money", bottomCalcFormatterParams: { precision: 2 },
                            },
                            {
                                title: "Redeem Val", field: "reedemvalue", sorter: "number", hozAlign: "right", width: 110,
                                bottomCalc: "sum", bottomCalcParams: { precision: 2 },
                                formatter: "money", formatterParams: { precision: 2 },
                                bottomCalcFormatter: "money", bottomCalcFormatterParams: { precision: 2 },
                            },
                            { title: "User",        field: "u_name",   sorter: "string", width: 100 },
                            {
                                title: "Balance Pts", field: "balance", sorter: "number", hozAlign: "right", width: 110,
                                formatter: "money", formatterParams: { precision: 2 },
                            },
                        ];

                        table = new Tabulator("#reward-table", {
                            data: tabledata,
                            printHeader: $('.titlep').html(),
                            printFooter: "<h2>Copyright @Analysis</h2>",
                            columns: columns,
                            layout: "fitColumns",
                            layoutColumnsOnNewData: true,
                            width: "100%",
                            pagination: "local",
                            paginationSize: 100,
                            tooltips: true,
                        });

                        setTimeout(hideLoader, 800);
                    } else if (fdata.readyState === 4) {
                        setTimeout(hideLoader, 800);
                    }
                };

                fdata.send(postData);
            });

            // Print
            $("#print-table").on("click", function () {
                if (!table) return;
                table.print(false, true);
            });

            // Excel Download
            $("#download-xlsx").on("click", function () {
                if (!table) return;
                let fromdate = dmy($('#fromdate').val());
                let todate   = dmy($('#todate').val());
                table.download("xlsx", `reward_point_report_${fromdate}_to_${todate}.xlsx`, {
                    sheetName: "Reward Point Report"
                });
            });
        });

        function processData(results) {
            let reportData = [];
            let runningBalance = 0;
            results.forEach(function (row) {
                let rp  = parseFloat(row.rewardpoint  || 0);
                let rdp = parseFloat(row.redeempoint  || 0);
                runningBalance += rp - rdp;
                reportData.push({
                    date        : dmy(row.Date)   || '-',
                    time        : row.Time         || '-',
                    outlet      : row.Outlet       || '-',
                    mobileno    : row.mobileno     || '-',
                    billno      : row.BillNo       || '-',
                    goodamt     : row.GoodAmt      || 0,
                    rewardpoint : rp,
                    rewardvalue : row.rewardvalue  || 0,
                    redeempoint : rdp,
                    reedemvalue : row.reedemvalue  || 0,
                    u_name      : row.u_name       || '-',
                    balance     : runningBalance,
                });
            });
            return reportData;
        }
    </script>
@endsection
