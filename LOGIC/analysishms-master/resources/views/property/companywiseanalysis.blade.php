@extends('property.layouts.main')
@section('main-container')
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>
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
        #analysis-table { width: 100% !important; }
    </style>

    {{-- Remove readonly from date inputs --}}
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            ['fromdate', 'todate'].forEach(function (id) {
                var el = document.getElementById(id);
                if (!el) return;
                el.removeAttribute('readonly');
                new MutationObserver(function (muts) {
                    muts.forEach(function (m) { m.target.removeAttribute('readonly'); });
                }).observe(el, { attributes: true, attributeFilter: ['readonly'] });
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
                                    <p style="margin-top:-10px; font-size:16px;">Company Wise Analysis Report</p>
                                    <p style="text-align:left; margin-top:-10px; font-size:16px;">
                                        From Date: <span id="fromdatep"></span>&nbsp;&nbsp;
                                        To Date: <span id="todatep"></span>&nbsp;&nbsp;
                                        Type: <span id="typep"></span>
                                    </p>
                                </div>

                                {{-- Filters --}}
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
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="comptype" class="col-form-label">Type</label>
                                            <select class="form-control" id="comptype" name="comptype">
                                                <option value="Corporate">Corporate</option>
                                                <option value="Travel Agency">Travel Agency</option>
                                                <option value="Travel Agency (OTA)">Travel Agency (OTA)</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <button type="button" id="refreshbutton" class="btn btn-primary mt-4">
                                                Refresh
                                            </button>
                                        </div>
                                    </div>
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

                            <div class="custom-header">Company Wise Analysis Report</div>
                            <div class="mt-3" id="analysis-table"></div>

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

            $('#refreshbutton').on('click', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                let type     = $('#comptype').val();

                if (!fromdate) {
                    pushNotify('error', 'Company Wise Analysis', 'Please select From Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (!todate) {
                    pushNotify('error', 'Company Wise Analysis', 'Please select To Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                showLoader();

                // Update header display dates
                $('#fromdatep').text(dmy(fromdate));
                $('#todatep').text(dmy(todate));
                $('#typep').text(type);

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/fetchcompanywiseanalysis', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function () {
                    if (fdata.readyState === 4 && fdata.status === 200) {
                        let response = JSON.parse(fdata.responseText);
                        let rows     = response.data || [];

                        if (table) { table.destroy(); table = null; }

                        // Add serial number
                        rows.forEach(function (r, i) { r._sno = i + 1; });

                        table = new Tabulator("#analysis-table", {
                            data: rows,
                            printHeader: $('.titlep').html(),
                            printFooter: "<h2>Copyright @Analysis</h2>",
                            columns: [
                                {
                                    title: "#",
                                    field: "_sno",
                                    sorter: "number",
                                    width: 55,
                                    hozAlign: "center",
                                },
                                {
                                    title: "Name",
                                    field: "name",
                                    sorter: "string",
                                    minWidth: 200,
                                },
                                {
                                    title: "Last Checkout",
                                    field: "last_checkout",
                                    sorter: "string",
                                    width: 140,
                                    hozAlign: "center",
                                    formatter: function (cell) {
                                        let v = cell.getValue();
                                        return v ? dmy(v) : '-';
                                    },
                                },
                                {
                                    title: "Nights",
                                    field: "nights",
                                    sorter: "number",
                                    hozAlign: "right",
                                    width: 90,
                                    bottomCalc: "sum",
                                },
                                {
                                    title: "Room Rent",
                                    field: "room_rent",
                                    sorter: "number",
                                    hozAlign: "right",
                                    formatter: "money",
                                    formatterParams: { precision: 2, thousand: ",", symbol: "" },
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2, thousand: ",", symbol: "" },
                                },
                                {
                                    title: "Out Charge",
                                    field: "out_charge",
                                    sorter: "number",
                                    hozAlign: "right",
                                    formatter: "money",
                                    formatterParams: { precision: 2, thousand: ",", symbol: "" },
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2, thousand: ",", symbol: "" },
                                },
                                {
                                    title: "Tax",
                                    field: "tax",
                                    sorter: "number",
                                    hozAlign: "right",
                                    formatter: "money",
                                    formatterParams: { precision: 2, thousand: ",", symbol: "" },
                                    bottomCalc: "sum",
                                    bottomCalcParams: { precision: 2 },
                                    bottomCalcFormatter: "money",
                                    bottomCalcFormatterParams: { precision: 2, thousand: ",", symbol: "" },
                                },
                            ],
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

                let postData = 'fromdate=' + fromdate
                    + '&todate=' + todate
                    + '&type='   + encodeURIComponent(type)
                    + '&_token={{ csrf_token() }}';

                fdata.send(postData);
            });

            // Print (server-side DomPDF, contributionreport format)
            $('#print-table').on('click', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                let type     = $('#comptype').val();

                if (!fromdate || !todate || !type) {
                    pushNotify('error', 'Print Failed', 'Please select all filters before printing.',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                let url = '{{ route('printcompanywiseanalysis') }}'
                        + '?fromdate=' + encodeURIComponent(fromdate)
                        + '&todate='   + encodeURIComponent(todate)
                        + '&type='     + encodeURIComponent(type);

                window.open(url, '_blank');
            });

            // Excel Download (server-side PhpSpreadsheet, contributionreport format)
            $('#download-xlsx').on('click', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                let type     = $('#comptype').val();

                if (!fromdate || !todate || !type) {
                    pushNotify('error', 'Export Failed', 'Please select all filters before exporting.',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                let url = '{{ route('exportcompanywiseanalysis') }}'
                        + '?fromdate=' + encodeURIComponent(fromdate)
                        + '&todate='   + encodeURIComponent(todate)
                        + '&type='     + encodeURIComponent(type);

                window.location.href = url;
            });
        });
    </script>
@endsection
