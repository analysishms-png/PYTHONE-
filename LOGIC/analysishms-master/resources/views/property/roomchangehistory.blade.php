@extends('property.layouts.main')
@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
        #roomchange-table { width: 100% !important; }
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
                                    <p style="margin-top:-10px; font-size:16px;">Room Change History</p>
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
                                </div>

                                <div class="refresh-button-container mt-2">
                                    <button type="button" id="refreshbutton" class="btn btn-primary">
                                        Refresh
                                    </button>
                                </div>
                            </form>

                            {{-- Action Buttons --}}
                            <div class="mt-3">
                                <button id="printBtn" class="btn btn-primary mb-3">
                                    <i class="fas fa-print"></i> Print Report
                                </button>
                                <button id="exportExcelBtn" class="btn btn-success mb-3 ms-2">
                                    <i class="fas fa-file-excel"></i> Export to Excel
                                </button>
                                <span id="printUrl" style="display:none;">{{ route('printroomchangehistory') }}</span>
                                <span id="exportUrl" style="display:none;">{{ route('exportroomchangehistory') }}</span>
                            </div>

                            <div class="custom-header">Room Change History</div>
                            <div class="mt-3" id="roomchange-table"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('printBtn').addEventListener('click', function() {
            let fromdate = document.getElementById('fromdate').value;
            let todate   = document.getElementById('todate').value;

            if (!fromdate || !todate) {
                pushNotify('error', 'Print Failed', 'Please select From Date and To Date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            let url = document.getElementById('printUrl').textContent.trim()
                    + '?fromdate=' + encodeURIComponent(fromdate)
                    + '&todate='   + encodeURIComponent(todate);

            window.open(url, '_blank');
        });

        document.getElementById('exportExcelBtn').addEventListener('click', function() {
            let fromdate = document.getElementById('fromdate').value;
            let todate   = document.getElementById('todate').value;

            if (!fromdate || !todate) {
                pushNotify('error', 'Export Failed', 'Please select From Date and To Date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            let url = document.getElementById('exportUrl').textContent.trim()
                    + '?fromdate=' + encodeURIComponent(fromdate)
                    + '&todate='   + encodeURIComponent(todate);

            window.location.href = url;
        });
    </script>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $(document).ready(function () {
            let table;

            $(document).on('click', '#refreshbutton', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();

                if (!fromdate) {
                    pushNotify('error', 'Room Change History', 'Please select From Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#fromdate').addClass('invalid');
                    return;
                }
                if (!todate) {
                    pushNotify('error', 'Room Change History', 'Please select To Date',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    $('#todate').addClass('invalid');
                    return;
                }

                showLoader();

                let fdata = new XMLHttpRequest();
                fdata.open('POST', '/fetchroomchangehistory', true);
                fdata.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fdata.onreadystatechange = function () {
                    if (fdata.readyState === 4 && fdata.status === 200) {
                        let response  = JSON.parse(fdata.responseText);
                        let results   = response.data || [];
                        let tabledata = processData(results);

                        $('#fromdatep').text(dmy(fromdate));
                        $('#todatep').text(dmy(todate));

                        if (table) {
                            table.setData(tabledata);
                        } else {
                            let columns = [
                                {
                                    title: "Date",
                                    field: "changedate",
                                    sorter: "string",
                                    width: 110,
                                },
                                {
                                    title: "Guest Name",
                                    field: "guestname",
                                    sorter: "string",
                                    minWidth: 140,
                                },
                                {
                                    title: "Folio No",
                                    field: "foliono",
                                    sorter: "string",
                                    width: 90,
                                    hozAlign: "center",
                                },
                                {
                                    title: "Old Room",
                                    field: "oldroomno",
                                    sorter: "string",
                                    width: 100,
                                    hozAlign: "center",
                                },
                                {
                                    title: "Old Type",
                                    field: "oldtype",
                                    sorter: "string",
                                    minWidth: 110,
                                },
                                {
                                    title: "Old Rate",
                                    field: "oldrate",
                                    sorter: "number",
                                    hozAlign: "right",
                                    width: 100,
                                    formatter: "money",
                                    formatterParams: { thousand: ",", decimal: ".", precision: 2 },
                                },
                                {
                                    title: "Old Plan",
                                    field: "oldplan",
                                    sorter: "string",
                                    width: 100,
                                },
                                {
                                    title: "Old Pax",
                                    field: "oldpax",
                                    sorter: "string",
                                    width: 90,
                                    hozAlign: "center",
                                },
                                {
                                    title: "New Room",
                                    field: "newroomno",
                                    sorter: "string",
                                    width: 100,
                                    hozAlign: "center",
                                },
                                {
                                    title: "New Type",
                                    field: "newtype",
                                    sorter: "string",
                                    minWidth: 110,
                                },
                                {
                                    title: "New Rate",
                                    field: "newrate",
                                    sorter: "number",
                                    hozAlign: "right",
                                    width: 100,
                                    formatter: "money",
                                    formatterParams: { thousand: ",", decimal: ".", precision: 2 },
                                },
                                {
                                    title: "New Plan",
                                    field: "newplan",
                                    sorter: "string",
                                    width: 100,
                                },
                                {
                                    title: "New Pax",
                                    field: "newpax",
                                    sorter: "string",
                                    width: 90,
                                    hozAlign: "center",
                                },
                                {
                                    title: "Reason",
                                    field: "reason",
                                    sorter: "string",
                                    minWidth: 140,
                                },
                                {
                                    title: "Changed By",
                                    field: "changedby",
                                    sorter: "string",
                                    width: 120,
                                },
                            ];

                            table = new Tabulator("#roomchange-table", {
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
        });

        function formatDateTime(dateString) {
            if (!dateString) return '-';
            var dtParts = dateString.split(' ');
            var parts = dtParts[0].split('-');
            var result = parts[2] + '-' + parts[1] + '-' + parts[0];
            if (dtParts[1]) result += ' ' + dtParts[1];
            return result;
        }

        function processData(results) {
            let reportData = [];
            results.forEach(function (row) {
                reportData.push({
                    changedate : formatDateTime(row.changedate),
                    guestname  : row.guestname   || '-',
                    foliono    : row.foliono      || '-',
                    oldroomno  : row.oldroomno   || '-',
                    oldtype    : row.oldtype      || '-',
                    oldrate    : row.oldrate      || 0,
                    oldplan    : row.oldplan      || '-',
                    oldpax     : row.oldpax       || '-',
                    newroomno  : row.newroomno    || '-',
                    newtype    : row.newtype      || '-',
                    newrate    : row.newrate       || 0,
                    newplan    : row.newplan       || '-',
                    newpax     : row.newpax        || '-',
                    reason     : row.reason        || '-',
                    changedby  : row.changedby     || '-',
                });
            });
            return reportData;
        }
    </script>
@endsection
