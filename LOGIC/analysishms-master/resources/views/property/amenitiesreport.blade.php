@extends('property.layouts.main')
@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
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

        #amenities-table {
            width: 100% !important;
        }

        .summary-box {
            display: inline-block;
            background: #f8f9fa;
            border: 1px solid #dee2e6;
            border-radius: 6px;
            padding: 10px 24px;
            margin: 0 8px 12px 0;
            text-align: center;
            min-width: 160px;
        }

        .summary-box .summary-label {
            font-size: 13px;
            color: #6c757d;
            margin-bottom: 4px;
        }

        .summary-box .summary-value {
            font-size: 22px;
            font-weight: bold;
            color: #343a40;
        }
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
                                    <p style="margin-top:-10px; font-size:16px;">Amenities Report</p>
                                    <p style="text-align:left; margin-top:-10px; font-size:16px;">
                                        From Date: <span id="fromdatep"></span>&nbsp;&nbsp;
                                        To Date: <span id="todatep"></span>
                                    </p>
                                </div>

                                {{-- Date Filters --}}
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">
                                                From Date <i class="fa-regular fa-calendar mb-1"></i>
                                            </label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control"
                                                   name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">
                                                To Date <i class="fa-regular fa-calendar mb-1"></i>
                                            </label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control"
                                                   name="todate" id="todate">
                                        </div>
                                    </div>
                                </div>

                                <div class="refresh-button-container mt-2">
                                    <button type="button" id="refreshbutton" class="btn btn-primary">
                                        Refresh
                                    </button>
                                </div>
                            </form>

                            {{-- Summary Cards: Total Rooms & Total Pax --}}
                            <div class="mt-3" id="summary-section" style="display:none;">
                                <div class="summary-box">
                                    <div class="summary-label">Total No. of Rooms</div>
                                    <div class="summary-value" id="total-rooms-val">0</div>
                                </div>
                                <div class="summary-box">
                                    <div class="summary-label">Total Pax</div>
                                    <div class="summary-value" id="total-pax-val">0</div>
                                </div>
                            </div>

                            {{-- Action Buttons --}}
                            <div class="mt-3">
                                <button id="printBtn" class="btn btn-primary mb-3">
                                    <i class="fas fa-print"></i> Print Report
                                </button>
                                <button id="exportExcelBtn" class="btn btn-success mb-3 ms-2">
                                    <i class="fas fa-file-excel"></i> Export to Excel
                                </button>
                                <span id="exportUrl" style="display:none;">{{ route('exportamenitiesreport') }}</span>
                            </div>

                            <div class="custom-header">Amenities Report</div>
                            <div class="mt-3" id="amenities-table"></div>

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

            $(document).on('click', '#refreshbutton', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();

                if (!fromdate) {
                    pushNotify('error', 'Amenities Report', 'Please select From Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#fromdate').addClass('invalid');
                    return;
                }
                if (!todate) {
                    pushNotify('error', 'Amenities Report', 'Please select To Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#todate').addClass('invalid');
                    return;
                }

                showLoader();

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/amenitiesreportfetch', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function () {
                    if (fdata.readyState === 4 && fdata.status === 200) {
                        let response   = JSON.parse(fdata.responseText);
                        let results    = response.data;
                        let totalRooms = response.totalRooms;
                        let totalPax   = response.totalPax;

                        // Show summary cards
                        $('#total-rooms-val').text(totalRooms);
                        $('#total-pax-val').text(totalPax);
                        $('#summary-section').show();

                        // Update header dates
                        $('#fromdatep').text(dmy(fromdate));
                        $('#todatep').text(dmy(todate));

                        let tabledata = processData(results);

                        if (table) {
                            table.setData(tabledata);
                        } else {
                            let columns = [
                                {
                                    title: "Item Name",
                                    field: "item",
                                    sorter: "string",
                                },
                                {
                                    title: "Qty Used",
                                    field: "qtyused",
                                    sorter: "number",
                                    hozAlign: "right",
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    formatter: "money",
                                    formatterParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2 },
                                },
                                {
                                    title: "Cost",
                                    field: "cost",
                                    sorter: "number",
                                    hozAlign: "right",
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    formatter: "money",
                                    formatterParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2 },
                                },
                                {
                                    title: "Total Rooms",
                                    field: "totalrooms",
                                    sorter: "number",
                                    hozAlign: "right",
                                    bottomCalc: "sum",
                                },
                            ];

                            table = new Tabulator("#amenities-table", {
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
                        }

                        setTimeout(hideLoader, 800);
                    } else if (fdata.readyState === 4) {
                        setTimeout(hideLoader, 800);
                    }
                };

                fdata.send(
                    `fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`
                );
            });

            // Print
            $("#printBtn").on("click", function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();

                if (!fromdate || !todate) {
                    pushNotify('error', 'Print Failed', 'Please select dates before printing.',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                let url = '{{ route('printamenitiesreport') }}'
                        + '?fromdate=' + encodeURIComponent(fromdate)
                        + '&todate='   + encodeURIComponent(todate);

                window.open(url, '_blank');
            });

            // Excel Download
            $("#exportExcelBtn").on("click", function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();

                if (!fromdate || !todate) {
                    pushNotify('error', 'Export Failed', 'Please select dates before exporting.',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                let url = $('#exportUrl').text().trim()
                        + '?fromdate=' + encodeURIComponent(fromdate)
                        + '&todate='   + encodeURIComponent(todate);

                window.location.href = url;
            });
        });

        function processData(results) {
            let reportData = [];
            results.forEach(function (row) {
                reportData.push({
                    item       : row.Item,
                    qtyused    : row.QtyUsed    ?? 0,
                    cost       : row.Cost       ?? 0,
                    totalrooms : row.TotalRooms ?? 0,
                });
            });
            return reportData;
        }
    </script>
@endsection
