@extends('property.layouts.main')
@section('main-container')

{{-- DataTables --}}
<link  href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet"/>
<link  href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet"/>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

<style>
    /* ── Page wrapper ───────────────────────────────── */
    .ar-wrap { font-family: inherit; }

    /* ── Banner ─────────────────────────────────────── */
    .ar-banner {
        background: linear-gradient(135deg, #1e3a5f 0%, #2d6a9f 100%);
        border-radius: .6rem;
    }

    /* ── Filter card accent ──────────────────────────── */
    .ar-filter-card { border-top: 3px solid #2d6a9f; border-radius: .6rem; }

    /* ── Table header ────────────────────────────────── */
    #ar-table thead th {
        background: #1e3a5f;
        color: #fff;
        font-size: 12px;
        text-align: center;
        white-space: nowrap;
        border: 1px solid #2d6a9f;
    }
    #ar-table tbody td {
        font-size: 13px;
        vertical-align: middle;
    }
    #ar-table tfoot td {
        background: #f1f5f9;
        font-weight: 700;
        font-size: 13px;
    }

    /* ── Qty — plain number ──────────────────────────── */
    .ar-qty-badge {
        font-size: 13px;
        font-weight: 400;
        color: inherit;
    }

    /* ── Compact rows ────────────────────────────────── */
    #ar-table tbody td,
    #ar-table tfoot td {
        padding: 4px 8px !important;
        white-space: nowrap;
    }
    /* Item name column wrap allow karo agar lamba ho */
    #ar-table tbody td:nth-child(2),
    #ar-table thead th:nth-child(2) {
        white-space: normal;
        word-break: break-word;
    }

    /* ── Print ───────────────────────────────────────── */
    .ar-print-header { display: none; }
    @media print {
        .ar-banner,
        .ar-filter-card         { display: none !important; }
        .ar-print-header        { display: block !important; text-align: center; margin-bottom: 12px; }
        .dataTables_wrapper .dataTables_filter,
        .dataTables_wrapper .dataTables_length,
        .dataTables_wrapper .dataTables_info,
        .dataTables_wrapper .dataTables_paginate,
        .dt-buttons              { display: none !important; }
    }
</style>

<div class="content-body ar-wrap">
<div class="container-fluid px-4 py-3">

    {{-- ── BANNER ── --}}
    <div class="ar-banner d-flex align-items-center justify-content-between text-white p-3 mb-3 shadow-sm">
        <div>
            <h3 class="mb-0 fw-bold text-white" style="text-shadow:0 2px 4px rgba(0,0,0,.3); letter-spacing:.4px;">
                <i class="fa-solid fa-soap me-2"></i>Amenities Usage Report
            </h3>

        </div>
        <i class="fa-solid fa-boxes-stacked fa-2x opacity-40 d-none d-md-block"></i>
    </div>

    {{-- ── HIDDEN FIELDS ── --}}
    <input type="hidden" id="ar-csrf"     value="{{ csrf_token() }}">
    <input type="hidden" id="ar-compname" value="{{ $company->comp_name }}">
    <input type="hidden" id="ar-address"  value="{{ $company->address1 }}">
    <input type="hidden" id="ar-state"    value="{{ $statename }}">
    <input type="hidden" id="ar-city"     value="{{ $company->city ?? '' }}">
    <input type="hidden" id="ar-pin"      value="{{ $company->pin  ?? '' }}">

    {{-- ── FILTER CARD ── --}}
    <div class="card shadow-sm mb-3 ar-filter-card">
        <div class="card-header bg-light border-bottom py-2 px-3 fw-bold small text-uppercase text-primary">
            <i class="fa-solid fa-filter me-1"></i>Filter
        </div>
        <div class="card-body py-3 px-3">
            <div class="row g-2 align-items-end">

                <div class="col-6 col-sm-3 col-md-2">
                    <label class="form-label fw-semibold small text-uppercase mb-1">
                        From Date <i class="fa-regular fa-calendar ms-1"></i>
                    </label>
                    <input type="date" id="ar-fromdate" class="form-control form-control-sm"
                           value="{{ $fromdate }}">
                </div>

                <div class="col-6 col-sm-3 col-md-2">
                    <label class="form-label fw-semibold small text-uppercase mb-1">
                        To Date <i class="fa-regular fa-calendar ms-1"></i>
                    </label>
                    <input type="date" id="ar-todate" class="form-control form-control-sm"
                           value="{{ $fromdate }}">
                </div>

                <div class="col-6 col-sm-3 col-md-2">
                    <button type="button" id="ar-refresh" class="btn btn-primary btn-sm w-100 fw-semibold">
                        <i class="fa-solid fa-arrows-rotate me-1"></i>Refresh
                    </button>
                </div>
            </div>
        </div>
    </div>

    {{-- ── PRINT HEADER ── --}}
    <div class="ar-print-header">
        <h4 id="ar-ph-comp"></h4>
        <p style="margin:0;font-size:13px;" id="ar-ph-addr"></p>
        <p style="margin:0;font-size:13px;" id="ar-ph-loc"></p>
        <p style="margin:4px 0 0;font-size:14px;font-weight:700;">Amenities Usage Report</p>
        <p style="margin:0;font-size:13px;text-align:left;">
            From: <span id="ar-ph-from"></span> &nbsp; To: <span id="ar-ph-to"></span>
        </p>
        <hr>
    </div>

    {{-- ── RESULTS CARD ── --}}
    <div class="card shadow-sm mb-4">
        <div class="card-header d-flex justify-content-between align-items-center py-2 px-3"
             style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
            <span class="fw-bold text-white small text-uppercase">
                <i class="fa-solid fa-table-list me-2"></i>Amenities Usage — Item Wise
            </span>
            <span class="text-white small opacity-75" id="ar-count"></span>
        </div>

        <div class="card-body p-0">
            <div class="table-responsive">
                <table id="ar-table"
                       class="table table-hover table-striped table-bordered align-middle mb-0"
                       style="width:100%;">
                    <thead>
                        <tr>
                            <th style="width:120px;">Room No</th>
                            <th>Item Name</th>
                            <th style="width:80px;">Qty</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="3" class="text-center text-muted py-5">
                                <i class="fa-solid fa-filter me-1"></i>
                                Select date range and click <strong>Refresh</strong>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2" class="text-end pe-3">Grand Total</td>
                            <td class="text-center" id="ar-grand-total">—</td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>

        <div class="card-footer bg-light py-2 px-3 text-muted small" id="ar-footer">
            &nbsp;
        </div>
    </div>

</div>
</div>

<script>
$(document).ready(function () {

    var arTable = null;

    /* ── date display helper ─────────────────────────── */
    function arDmy(dt) {
        if (!dt) return '';
        var d = new Date(dt);
        if (isNaN(d)) return dt;
        var m = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
        return ('0'+d.getDate()).slice(-2)+'-'+m[d.getMonth()]+'-'+d.getFullYear();
    }

    /* ── Refresh ─────────────────────────────────────── */
    $('#ar-refresh').on('click', function () {

        var from  = $('#ar-fromdate').val();
        var to    = $('#ar-todate').val();
        var csrf  = $('#ar-csrf').val();

        if (!from || !to) { alert('Please select both From Date and To Date.'); return; }
        if (from > to)    { alert('From Date cannot be greater than To Date.'); return; }

        /* update print header */
        $('#ar-ph-comp').text($('#ar-compname').val());
        $('#ar-ph-addr').text($('#ar-address').val());
        $('#ar-ph-loc').text($('#ar-state').val()+' - '+$('#ar-city').val()+' - '+$('#ar-pin').val());
        $('#ar-ph-from').text(arDmy(from));
        $('#ar-ph-to').text(arDmy(to));

        /* destroy old table */
        if (arTable) { arTable.destroy(); arTable = null; }

        $('#ar-table tbody').html(
            '<tr><td colspan="3" class="text-center text-muted py-4">' +
            '<i class="fa-solid fa-spinner fa-spin me-1"></i>Loading...</td></tr>'
        );
        $('#ar-count').text('');
        $('#ar-grand-total').text('—');
        $('#ar-footer').html('&nbsp;');

        $.ajax({
            url: '/fetchassignmentreport',
            method: 'POST',
            data: { _token: csrf, fromdate: from, todate: to },
            success: function (res) {
                var rows = res.data || [];

                if (rows.length === 0) {
                    $('#ar-table tbody').html(
                        '<tr><td colspan="3" class="text-center text-muted py-5">' +
                        '<i class="fa-solid fa-circle-info me-1"></i>' +
                        'No records found for the selected date range.</td></tr>'
                    );
                    $('#ar-count').text('0 items');
                    $('#ar-grand-total').text('0');
                    $('#ar-footer').text('No records found.');
                    return;
                }

                var tbody = '';
                var grandTotal = 0;

                rows.forEach(function (row) {
                    var qty = parseFloat(row.Qty) || 0;
                    grandTotal += qty;
                    tbody +=
                        '<tr>' +
                        '<td class="text-center fw-bold">'   + (row.roommo || '--') + '</td>' +
                        '<td>'                               + (row.Item   || '--') + '</td>' +
                        '<td class="text-center">' +
                            '<span class="ar-qty-badge">'    + qty.toFixed(0)       + '</span>' +
                        '</td>' +
                        '</tr>';
                });

                $('#ar-table tbody').html(tbody);
                $('#ar-grand-total').text(grandTotal.toFixed(0));

                /* init DataTable */
                arTable = $('#ar-table').DataTable({
                    dom: 'Bfrtip',
                    pageLength: 25,
                    ordering: true,
                    autoWidth: false,
                    columnDefs: [
                        { targets: 0, width: '120px', className: 'text-center' },
                        { targets: 1, width: 'auto'  },
                        { targets: 2, width: '80px',  className: 'text-center' }
                    ],
                    buttons: [
                        {
                            extend: 'excelHtml5',
                            text: '<i class="fa fa-file-excel-o me-1"></i>Excel',
                            className: 'btn btn-success btn-sm',
                            title: $('#ar-compname').val() + ' — Amenities Usage Report',
                            filename: 'Amenities_Report_' + from + '_to_' + to,
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
                                $(win.document.body).prepend(
                                    '<div style="text-align:center;margin-bottom:12px;">' +
                                    '<h4>'  + $('#ar-compname').val() + '</h4>' +
                                    '<p style="margin:0;font-size:13px;">' + $('#ar-address').val() + '</p>' +
                                    '<p style="margin:0;font-size:13px;">' + $('#ar-state').val() + ' - ' + $('#ar-city').val() + ' - ' + $('#ar-pin').val() + '</p>' +
                                    '<p style="margin:4px 0 0;font-size:14px;font-weight:700;">Amenities Usage Report</p>' +
                                    '<p style="margin:0;font-size:13px;text-align:left;">From: ' + arDmy(from) + ' &nbsp; To: ' + arDmy(to) + '</p>' +
                                    '<hr></div>'
                                );
                            }
                        }
                    ]
                });

                $('#ar-count').text(rows.length + ' item(s)');
                $('#ar-footer').text(
                    'Showing ' + rows.length + ' item(s) from ' + arDmy(from) + ' to ' + arDmy(to)
                );
            },
            error: function () {
                $('#ar-table tbody').html(
                    '<tr><td colspan="3" class="text-center text-danger py-4">' +
                    '<i class="fa-solid fa-triangle-exclamation me-1"></i>' +
                    'Error fetching data. Please try again.</td></tr>'
                );
            }
        });
    });

    /* ── Top Print / Excel buttons → trigger DT buttons ─ */
    $('#ar-print').on('click', function () {
        if (arTable) { arTable.button('.buttons-print').trigger(); }
        else { alert('Please load data first by clicking Refresh.'); }
    });

    $('#ar-excel').on('click', function () {
        if (arTable) { arTable.button('.buttons-excel').trigger(); }
        else { alert('Please load data first by clicking Refresh.'); }
    });

});
</script>

@endsection
