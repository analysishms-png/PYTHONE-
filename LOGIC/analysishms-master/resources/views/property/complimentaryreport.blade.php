@extends('property.layouts.main')
@section('main-container')

    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://oss.sheetjs.com/sheetjs/xlsx.full.min.js"></script>

    <input type="hidden" value="{{ $company->comp_name }}" id="compname">
    <input type="hidden" value="{{ $company->address1 }}"  id="address">
    <input type="hidden" value="{{ $company->city }}"      id="city">
    <input type="hidden" value="{{ $statename }}"          id="statename">
    <input type="hidden" value="{{ $company->pin }}"       id="pin">
    <input type="hidden" value="{{ $company->mobile }}"    id="compmob">

    <style>
        .filter-label { font-size: 12px; font-weight: 600; margin-bottom: 2px; display: block; }
        @media print {
            .content-body > .container-fluid > .card { box-shadow: none !important; }
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="card shadow-sm">
                <div class="card-body">

                    <h5 class="mb-3 font-weight-bold">Complimentary Report</h5>

                    {{-- FILTERS --}}
                    <div class="row align-items-end mb-3">

                        <div class="col-auto">
                            <span class="filter-label">From Date</span>
                            <input type="date" id="fromdate" value="{{ $fromdate }}"
                                   class="form-control form-control-sm" style="width:145px;">
                        </div>

                        <div class="col-auto">
                            <span class="filter-label">To Date</span>
                            <input type="date" id="todate" value="{{ $fromdate }}"
                                   class="form-control form-control-sm" style="width:145px;">
                        </div>

                        <div class="col-auto">
                            <span class="filter-label">&nbsp;</span>
                            <div>
                                <button id="fetchbutton" type="button" class="btn btn-success btn-sm">
                                    <i class="fa-solid fa-arrows-rotate"></i> Refresh
                                </button>
                                <button type="button" id="printButton" class="btn btn-primary btn-sm ms-1">
                                    <i class="fa-solid fa-print"></i> Print
                                </button>
                                <button type="button" id="excelButton" class="btn btn-success btn-sm ms-1">
                                    <i class="fa fa-file-excel"></i> Excel
                                </button>
                            </div>
                        </div>

                    </div>

                    <div id="complimentaryTable"></div>

                </div>
            </div>
        </div>
    </div>

    <script>
    $(document).ready(function () {

        var tabulatorTable = null;
        var lastData       = null;

        /* ── Helpers ── */
        function dmy(d) {
            if (!d) return '';
            var p = d.split('-');
            return p.length === 3 ? p[2] + '-' + p[1] + '-' + p[0] : d;
        }

        /* ── Refresh ── */
        $('#fetchbutton').on('click', function () {

            var fromdate = $('#fromdate').val();
            var todate   = $('#todate').val();

            if (!fromdate || !todate) {
                alert('Please select From Date and To Date.');
                return;
            }

            showLoader();

            $.ajax({
                url  : '{{ route('complimentaryreportdata') }}',
                type : 'POST',
                data : {
                    _token   : '{{ csrf_token() }}',
                    fromdate : fromdate,
                    todate   : todate,
                },
                success: function (json) {
                    hideLoader();
                    lastData = json.data || [];

                    if (lastData.length === 0) {
                        if (tabulatorTable) { tabulatorTable.destroy(); tabulatorTable = null; }
                        $('#complimentaryTable').html('<div class="alert alert-warning mt-2">No data found.</div>');
                        return;
                    }

                    if (tabulatorTable) { tabulatorTable.destroy(); tabulatorTable = null; }

                    tabulatorTable = new Tabulator('#complimentaryTable', {
                        data   : lastData,
                        layout : 'fitDataFill',
                        columns: [
                            { title: '#',            formatter: 'rownum', width: 50, hozAlign: 'center' },
                            { title: 'Guest Name',   field: 'Name',       width: 160 },
                            { title: 'Folio No',     field: 'folioNo',    width: 100 },
                            { title: 'Room No',      field: 'roomno',     width: 80  },
                            { title: 'Check-In Date',  field: 'chkindate',  width: 120 },
                            { title: 'Check-In Time',  field: 'chkintime',  width: 110 },
                            { title: 'Check-Out Date', field: 'chkoutdate', width: 120 },
                            { title: 'Check-Out Time', field: 'chkouttime', width: 110 },
                            { title: 'Adults',       field: 'adult',      width: 70, hozAlign: 'center' },
                            { title: 'Children',     field: 'children',   width: 80, hozAlign: 'center' },
                            { title: 'Address',      field: 'Add1',       width: 180 },
                            { title: 'City',         field: 'cityname',   width: 120 },
                            { title: 'Mobile',       field: 'mobile_no',  width: 120 },
                            { title: 'Email',        field: 'email_id',   width: 180 },
                            { title: 'User',         field: 'u_name',     width: 110 },
                        ],
                    });
                },
                error: function (xhr) {
                    hideLoader();
                    var msg = 'Error loading data.';
                    try { msg = xhr.responseJSON.message || msg; } catch(e) {}
                    alert(msg);
                }
            });
        });

        /* ══════════════════════════════════════════
           PRINT
        ══════════════════════════════════════════ */
        $('#printButton').on('click', function () {
            if (!lastData || lastData.length === 0) { alert('Please load data first.'); return; }

            var fromdate  = $('#fromdate').val();
            var todate    = $('#todate').val();
            var compName  = $('#compname').val();
            var address   = $('#address').val();
            var city      = $('#city').val();
            var statename = $('#statename').val();
            var pin       = $('#pin').val();
            var mobile    = $('#compmob').val();

            var bodyRows = '';
            lastData.forEach(function (r, i) {
                bodyRows += '<tr>'
                    + '<td style="text-align:center;">' + (i + 1) + '</td>'
                    + '<td>' + (r.Name       || '') + '</td>'
                    + '<td>' + (r.folioNo    || '') + '</td>'
                    + '<td>' + (r.roomno     || '') + '</td>'
                    + '<td>' + (r.chkindate  || '') + '</td>'
                    + '<td>' + (r.chkintime  || '') + '</td>'
                    + '<td>' + (r.chkoutdate || '') + '</td>'
                    + '<td>' + (r.chkouttime || '') + '</td>'
                    + '<td style="text-align:center;">' + (r.adult    || '') + '</td>'
                    + '<td style="text-align:center;">' + (r.children || '') + '</td>'
                    + '<td>' + (r.Add1       || '') + '</td>'
                    + '<td>' + (r.cityname   || '') + '</td>'
                    + '<td>' + (r.mobile_no  || '') + '</td>'
                    + '<td>' + (r.email_id   || '') + '</td>'
                    + '<td>' + (r.u_name     || '') + '</td>'
                    + '</tr>';
            });

            var win = window.open('', '_blank', 'width=1400,height=900');
            win.document.write('<!DOCTYPE html><html><head><title>Complimentary Report</title>'
                + '<style>'
                + 'body{font-family:Arial,sans-serif;font-size:10px;margin:12px;}'
                + 'h2,h4,p{margin:2px 0;text-align:center;}'
                + 'table{width:100%;border-collapse:collapse;margin-top:8px;}'
                + 'th{background:#e0e0e0;border:1px solid #999;padding:3px 5px;font-size:9px;}'
                + 'td{border:1px solid #ccc;padding:2px 4px;font-size:9px;}'
                + '@media print{@page{size:A4 landscape;margin:1cm;}}'
                + '</style></head><body>'
                + '<h2>' + compName + '</h2>'
                + '<p>' + address + '</p>'
                + '<p>' + statename + ' - ' + city + ' - ' + pin + '</p>'
                + '<p>Mobile: ' + mobile + '</p>'
                + '<h4>Complimentary Report</h4>'
                + '<p style="text-align:left;"><strong>From:</strong> ' + dmy(fromdate)
                + ' &nbsp;&nbsp; <strong>To:</strong> ' + dmy(todate) + '</p>'
                + '<table><thead><tr>'
                + '<th>#</th><th>Guest Name</th><th>Folio No</th><th>Room No</th>'
                + '<th>Check-In Date</th><th>Check-In Time</th>'
                + '<th>Check-Out Date</th><th>Check-Out Time</th>'
                + '<th>Adults</th><th>Children</th>'
                + '<th>Address</th><th>City</th><th>Mobile</th><th>Email</th><th>User</th>'
                + '</tr></thead><tbody>' + bodyRows + '</tbody></table>'
                + '</body></html>');
            win.document.close();
            win.focus();
            setTimeout(function () { win.print(); win.close(); }, 600);
        });

        /* ══════════════════════════════════════════
           EXCEL
        ══════════════════════════════════════════ */
        $('#excelButton').on('click', function () {
            if (!lastData || lastData.length === 0) { alert('Please load data first.'); return; }

            var headers = [
                '#', 'Guest Name', 'Folio No', 'Room No',
                'Check-In Date', 'Check-In Time', 'Check-Out Date', 'Check-Out Time',
                'Adults', 'Children', 'Address', 'City', 'Mobile', 'Email', 'User'
            ];

            var wsData = [headers];
            lastData.forEach(function (r, i) {
                wsData.push([
                    i + 1,
                    r.Name       || '',
                    r.folioNo    || '',
                    r.roomno     || '',
                    r.chkindate  || '',
                    r.chkintime  || '',
                    r.chkoutdate || '',
                    r.chkouttime || '',
                    r.adult      || '',
                    r.children   || '',
                    r.Add1       || '',
                    r.cityname   || '',
                    r.mobile_no  || '',
                    r.email_id   || '',
                    r.u_name     || '',
                ]);
            });

            var wb = XLSX.utils.book_new();
            var ws = XLSX.utils.aoa_to_sheet(wsData);
            ws['!cols'] = [
                {wch:5},{wch:20},{wch:12},{wch:10},
                {wch:14},{wch:12},{wch:14},{wch:12},
                {wch:8},{wch:10},{wch:22},{wch:14},{wch:14},{wch:24},{wch:12}
            ];
            XLSX.utils.book_append_sheet(wb, ws, 'Complimentary Report');
            XLSX.writeFile(wb, 'Complimentary_Report.xlsx');
        });

    });
    </script>

@endsection