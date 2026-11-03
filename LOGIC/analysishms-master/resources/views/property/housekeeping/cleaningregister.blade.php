@extends('property.layouts.main')
@section('main-container')

{{-- DataTables CSS --}}
<link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />

{{-- DataTables JS --}}
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

<style>
    /* Print-only header hidden on screen */
    .cr-print-header { display: none; }

    @media print {
        .cr-print-header       { display: block !important; text-align: center; margin-bottom: 12px; }
        .cr-filter-card        { display: none !important; }
        .dataTables_wrapper .dataTables_filter,
        .dataTables_wrapper .dataTables_length,
        .dataTables_wrapper .dataTables_info,
        .dataTables_wrapper .dataTables_paginate,
        .dt-buttons             { display: none !important; }
    }

    /* Banner gradient same as other HK pages */
    .cr-banner {
        background: linear-gradient(135deg, #1e3a5f, #2d6a9f) !important;
    }

    /* Filter card top border accent */
    .cr-filter-card {
        border-top: 3px solid #2d6a9f;
    }

    /* Table header */
    #cr-table thead th {
        background: #1e3a5f;
        color: #fff;
        white-space: nowrap;
        font-size: 12px;
        text-align: center;
    }

    #cr-table tbody td {
        font-size: 13px;
        vertical-align: middle;
    }

    /* Status badges */
    .badge-cleaning-pending  { background: #f59e0b; color: #fff; }
    .badge-cleaning-done     { background: #16a34a; color: #fff; }
    .badge-cleaning-progress { background: #2563eb; color: #fff; }
</style>

<div class="content-body">
<div class="container-fluid px-4 py-3">

    {{-- ── BANNER ── --}}
    <div class="d-flex align-items-center justify-content-between cr-banner text-white rounded p-3 mb-3 shadow-sm">
        <div>
            <h3 class="mb-0 fw-bold text-white" style="text-shadow:0 2px 4px rgba(0,0,0,.3); letter-spacing:.5px;">
                <i class="fa-solid fa-broom me-2"></i>Cleaning Register
            </h3>
            {{-- <small class="opacity-75">Housekeeping Module &bull; Date-wise Cleaning Report</small> --}}
        </div>
        <div class="d-none d-md-block">
            <i class="fa-solid fa-house-chimney-window fa-2x opacity-50"></i>
        </div>
    </div>

    {{-- ── HIDDEN COMPANY INFO (for DataTables export) ── --}}
    <input type="hidden" id="cr-compname"   value="{{ $company->comp_name }}">
    <input type="hidden" id="cr-address"    value="{{ $company->address1 }}">
    <input type="hidden" id="cr-city"       value="{{ $company->city ?? '' }}">
    <input type="hidden" id="cr-statename"  value="{{ $statename }}">
    <input type="hidden" id="cr-pin"        value="{{ $company->pin ?? '' }}">
    <input type="hidden" id="cr-propertyid" value="{{ $company->propertyid }}">
    <input type="hidden" id="cr-csrf"       value="{{ csrf_token() }}">

    {{-- ── FILTER CARD ── --}}
    <div class="card shadow-sm mb-3 cr-filter-card">
        <div class="card-header bg-light border-bottom py-2 px-3 fw-bold text-uppercase small text-primary">
            <i class="fa-solid fa-filter me-1"></i>Filter
        </div>
        <div class="card-body py-3 px-3">
            <div class="row g-2 align-items-end">

                {{-- FROM DATE --}}
                <div class="col-6 col-md-3">
                    <label class="form-label fw-semibold small text-uppercase mb-1">
                        From Date <i class="fa-regular fa-calendar ms-1"></i>
                    </label>
                    <input type="date" id="cr-fromdate" class="form-control form-control-sm"
                           value="{{ $fromdate }}">
                </div>

                {{-- TO DATE --}}
                <div class="col-6 col-md-3">
                    <label class="form-label fw-semibold small text-uppercase mb-1">
                        To Date <i class="fa-regular fa-calendar ms-1"></i>
                    </label>
                    <input type="date" id="cr-todate" class="form-control form-control-sm"
                           value="{{ $fromdate }}">
                </div>

                {{-- REFRESH BUTTON --}}
                <div class="col-6 col-md-2">
                    <button type="button" id="cr-refresh-btn" class="btn btn-primary btn-sm w-100 fw-semibold">
                        <i class="fa-solid fa-arrows-rotate me-1"></i>Refresh
                    </button>
                </div>

                {{-- PRINT BUTTON --}}
                {{-- <div class="col-6 col-md-2">
                    <button type="button" id="cr-print-btn" class="btn btn-secondary btn-sm w-100 fw-semibold">
                        <i class="fa-solid fa-print me-1"></i>Print
                    </button>
                </div> --}}

                {{-- EXCEL BUTTON --}}
                {{-- <div class="col-6 col-md-2">
                    <button type="button" id="cr-excel-btn" class="btn btn-success btn-sm w-100 fw-semibold">
                        <i class="fa fa-file-excel-o me-1"></i>Excel
                    </button>
                </div> --}}

            </div>
        </div>
    </div>

    {{-- ── PRINT HEADER (visible only during print) ── --}}
    <div class="cr-print-header">
        <h4 id="ph-compname"></h4>
        <p style="margin:0; font-size:13px;" id="ph-address"></p>
        <p style="margin:0; font-size:13px;" id="ph-location"></p>
        <p style="margin:4px 0 0; font-size:14px; font-weight:600;">Cleaning Register</p>
        <p style="margin:0; font-size:13px; text-align:left;">
            From Date: <span id="ph-fromdate"></span> &nbsp;&nbsp; To Date: <span id="ph-todate"></span>
        </p>
        <hr>
    </div>

    {{-- ── RESULTS CARD ── --}}
    <div class="card shadow-sm mb-4">
        <div class="card-header py-2 px-3 d-flex justify-content-between align-items-center"
             style="background: linear-gradient(135deg, #1e3a5f, #2d6a9f);">
            <span class="fw-bold text-white small text-uppercase">
                <i class="fa-solid fa-table-list me-2"></i>Cleaning Records
            </span>
            <span class="text-white small opacity-75" id="cr-result-count"></span>
        </div>

        <div class="card-body p-0">
            <div class="table-responsive">
                <table id="cr-table" class="table table-hover table-striped table-bordered align-middle mb-0"
                       style="width:100%; font-size:13px;">
                    <thead>
                        <tr>
                            <th>SN</th>
                            <th>Cleaning Date</th>
                            <th>Room No</th>
                            <th>Ass No</th>
                            <th>Cleaning No</th>
                            <th>Start Time</th>
                            <th>End Time</th>
                            <th>Duration (Min)</th>
                            <th>Cleaned By</th>
                            <th>Supervisor</th>
                            <th>Clean Status</th>
                            <th>Inspection Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="12" class="text-center text-muted py-4">
                                <i class="fa-solid fa-filter me-1"></i>
                                Select date range and click <strong>Refresh</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="card-footer bg-light py-2 px-3 text-muted small" id="cr-footer-info">
            &nbsp;
        </div>
    </div>

</div>
</div>

<script>
$(document).ready(function () {

    var crTable = null;

    // ── Date validation helper (same as other report pages) ──────────────
    $(document).on('change', '#cr-fromdate', function () {
        if (typeof validateFinancialYear === 'function') {
            validateFinancialYear('#cr-fromdate');
        }
    });
    $(document).on('change', '#cr-todate', function () {
        if (typeof validateFinancialYear === 'function') {
            validateFinancialYear('#cr-todate');
        }
    });

    // ── Format yyyy-mm-dd → dd-Mon-yyyy for display ───────────────────────
    function crDmy(dt) {
        if (!dt) return '';
        var d = new Date(dt);
        if (isNaN(d)) return dt;
        var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
        return ('0'+d.getDate()).slice(-2) + '-' + months[d.getMonth()] + '-' + d.getFullYear();
    }

    // ── Status badge helper ───────────────────────────────────────────────
    function statusBadge(val) {
        val = (val || '').toString().trim().toLowerCase();
        if (val === 'done' || val === 'complete' || val === 'completed')
            return '<span class="badge badge-cleaning-done px-2 py-1">Done</span>';
        if (val === 'in progress' || val === 'inprogress' || val === 'started')
            return '<span class="badge badge-cleaning-progress px-2 py-1">In Progress</span>';
        return '<span class="badge badge-cleaning-pending px-2 py-1">Pending</span>';
    }

    // ── Refresh button ────────────────────────────────────────────────────
    $('#cr-refresh-btn').on('click', function () {

        var fromdate = $('#cr-fromdate').val();
        var todate   = $('#cr-todate').val();
        var csrf     = $('#cr-csrf').val();
        var compname = $('#cr-compname').val();

        if (!fromdate || !todate) {
            alert('Please select both From Date and To Date.');
            return;
        }
        if (fromdate > todate) {
            alert('From Date cannot be greater than To Date.');
            return;
        }

        // Update print header values
        $('#ph-compname').text($('#cr-compname').val());
        $('#ph-address').text($('#cr-address').val());
        $('#ph-location').text($('#cr-statename').val() + ' - ' + $('#cr-city').val() + ' - ' + $('#cr-pin').val());
        $('#ph-fromdate').text(crDmy(fromdate));
        $('#ph-todate').text(crDmy(todate));

        // Destroy old DataTable
        if (crTable) {
            crTable.destroy();
            crTable = null;
        }

        $('#cr-table tbody').html(
            '<tr><td colspan="12" class="text-center text-muted py-4">' +
            '<i class="fa-solid fa-spinner fa-spin me-1"></i>Loading...</td></tr>'
        );
        $('#cr-result-count').text('');
        $('#cr-footer-info').html('&nbsp;');

        var xhr = new XMLHttpRequest();
        xhr.open('POST', '/fetchcleaningregister', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

        xhr.onreadystatechange = function () {
            if (xhr.readyState !== 4) return;

            if (xhr.status === 200) {
                var res = JSON.parse(xhr.responseText);
                var rows = res.data || [];

                var tbody = '';
                if (rows.length === 0) {
                    tbody = '<tr><td colspan="12" class="text-center text-muted py-4">' +
                            '<i class="fa-solid fa-circle-info me-1"></i>No records found for the selected date range.' +
                            '</td></tr>';
                    $('#cr-table tbody').html(tbody);
                    $('#cr-result-count').text('0 records');
                    $('#cr-footer-info').text('No records found.');
                    return;
                }

                rows.forEach(function (row, idx) {
                    tbody += '<tr>' +
                        '<td class="text-center">' + (idx + 1) + '</td>' +
                        '<td class="text-center">' + crDmy(row.cleaningdate) + '</td>' +
                        '<td class="text-center fw-bold">' + (row.roommo || '--') + '</td>' +
                        '<td class="text-center">' + (row.assno || '--') + '</td>' +
                        '<td class="text-center">' + (row.cleaningno || '--') + '</td>' +
                        '<td class="text-center">' + (row.starttime || '--') + '</td>' +
                        '<td class="text-center">' + (row.endtime || '--') + '</td>' +
                        '<td class="text-center">' + (row.duration !== null && row.duration !== '' ? row.duration : '--') + '</td>' +
                        '<td>' + (row.cleandby || '--') + '</td>' +
                        '<td>' + (row.supervisor || '--') + '</td>' +
                        '<td class="text-center">' + statusBadge(row.cleanstatus) + '</td>' +
                        '<td class="text-center">' + statusBadge(row.inspectionstatus) + '</td>' +
                    '</tr>';
                });

                $('#cr-table tbody').html(tbody);

                // Init DataTable
                crTable = $('#cr-table').DataTable({
                    dom: 'Bfrtip',
                    pageLength: 25,
                    ordering: true,
                    buttons: [
                        {
                            extend: 'excelHtml5',
                            text: '<i class="fa fa-file-excel-o me-1"></i>Excel',
                            className: 'btn btn-success btn-sm',
                            title: compname + ' — Cleaning Register',
                            filename: 'Cleaning_Register_' + fromdate + '_to_' + todate,
                            footer: true,
                            exportOptions: { columns: ':visible' }
                        },
                        {
                            extend: 'print',
                            text: '<i class="fa-solid fa-print me-1"></i>Print',
                            className: 'btn btn-secondary btn-sm',
                            footer: true,
                            exportOptions: { columns: ':visible' },
                            customize: function (win) {
                                $(win.document.body).find('table').css('margin-top', '10px');
                                $(win.document.body).prepend(
                                    '<div style="text-align:center; margin-bottom:12px;">' +
                                    '<h4>' + $('#cr-compname').val() + '</h4>' +
                                    '<p style="margin:0;font-size:13px;">' + $('#cr-address').val() + '</p>' +
                                    '<p style="margin:0;font-size:13px;">' + $('#cr-statename').val() + ' - ' + $('#cr-city').val() + ' - ' + $('#cr-pin').val() + '</p>' +
                                    '<p style="margin:4px 0 0;font-size:14px;font-weight:600;">Cleaning Register</p>' +
                                    '<p style="margin:0;font-size:13px;text-align:left;">From Date: ' + crDmy(fromdate) + ' &nbsp; To Date: ' + crDmy(todate) + '</p>' +
                                    '<hr></div>'
                                );
                            }
                        }
                    ],
                });

                $('#cr-result-count').text(rows.length + ' record(s)');
                $('#cr-footer-info').text('Showing ' + rows.length + ' record(s) from ' + crDmy(fromdate) + ' to ' + crDmy(todate));

            } else {
                $('#cr-table tbody').html(
                    '<tr><td colspan="12" class="text-center text-danger py-4">' +
                    '<i class="fa-solid fa-triangle-exclamation me-1"></i>Error fetching data. Please try again.' +
                    '</td></tr>'
                );
            }
        };

        xhr.send('fromdate=' + fromdate + '&todate=' + todate + '&_token=' + csrf);
    });

    // ── Top Print / Excel buttons trigger DataTables built-in buttons ─────
    $('#cr-print-btn').on('click', function () {
        if (crTable) {
            crTable.button('.buttons-print').trigger();
        } else {
            alert('Please load data first by clicking Refresh.');
        }
    });

    $('#cr-excel-btn').on('click', function () {
        if (crTable) {
            crTable.button('.buttons-excel').trigger();
        } else {
            alert('Please load data first by clicking Refresh.');
        }
    });

});
</script>

@endsection
