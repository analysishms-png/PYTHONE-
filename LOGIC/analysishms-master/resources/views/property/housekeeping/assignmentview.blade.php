@extends('property.layouts.main')
@section('main-container')

<style>
    .hka .hka-sb { display:flex; align-items:center; justify-content:space-between; gap:.75rem; flex-wrap:wrap; }
    .hka .table th, .hka .table td { padding:.55rem .75rem; font-size:.88rem; vertical-align:middle; }
    .hka .card { overflow:hidden; border-radius:.85rem; }
    .hka .card-header { border-bottom:1px solid #e9ecef; background:#fff; }
    .hka .text-label { font-size:.82rem; color:#6c757d; }
    .hka .table thead th { border-bottom:2px solid #dee2e6; font-weight:700; text-transform: uppercase; letter-spacing: .01em; }
    .hka .table td, .hka .table th { border-top:none; font-size:.93rem; }
    .hka .form-control, .hka .form-select { border-radius:.5rem; font-size:.98rem; }
    .hka .field-label { font-size: .95rem; font-weight: 700; color: #2c3e50; }
    .hka .heading-assignment-name { font-size: 1.35rem; font-weight: 800; margin-bottom: 1rem; color: #1f2937; }
    .hk-block { border:1px solid #dee2e6; border-radius:.65rem; overflow:hidden; margin-bottom:.6rem; }
    .hk-block .hk-header { background:#f8f9fa; padding:.6rem 1rem; display:flex; align-items:center; justify-content:space-between; gap:.5rem; flex-wrap:wrap; }
    .hk-block .hk-body-scroll { overflow:visible; }
</style>

<div class="content-body">
<div class="container-fluid hka px-4 py-3">
    <div class="row gx-3 mb-3 align-items-end">
        <div class="col-12">
            <h2 class="heading-assignment-name">View Assignment</h2>
        </div>
        <div class="col-auto">
            <label class="form-label field-label mb-1">From Date</label>
            <input type="date" class="form-control form-control-sm" id="report-from-date" value="{{ $fromDate }}">
        </div>
        <div class="col-auto">
            <label class="form-label field-label mb-1">To Date</label>
            <input type="date" class="form-control form-control-sm" id="report-to-date" value="{{ $toDate }}">
        </div>
        <div class="col-auto">
            <label class="form-label field-label mb-1">HK Name</label>
            <select class="form-select form-select-sm" id="report-hk-filter" style="min-width:180px;">
                <option value="">All Housekeepers</option>
                @foreach($housekeepers as $hk)
                    <option value="{{ $hk->scode }}">{{ $hk->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="col-auto d-flex gap-2">
            <button class="btn btn-primary btn-sm px-3" id="btn-fetch-report">
                <i class="fa-solid fa-search me-1"></i> Fetch Report
            </button>
            <button class="btn btn-outline-secondary btn-sm px-3" id="btn-print-view">
                <i class="fa-solid fa-print me-1"></i> Print
            </button>
        </div>
        <div class="col-auto ms-auto">
            <span class="small text-muted" id="report-summary"></span>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div id="report-content">
                <div class="text-center text-muted py-5">
                    <i class="fa-solid fa-calendar-day fa-2x mb-2 d-block"></i>
                    Select dates and click Fetch Report to view assignments.
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script>
$(window).on('load', function () {
    // ── Auto-fetch on page load ────────────────────────────────────────────────
    $('#btn-fetch-report').click();

    $('#btn-fetch-report').on('click', function () {
        var fromDate = $('#report-from-date').val();
        var toDate = $('#report-to-date').val();
        var hkFilter = $('#report-hk-filter').val();

        if (!fromDate || !toDate) {
            Swal.fire('Validation', 'Please select both From and To dates.', 'warning');
            return;
        }
        if (fromDate > toDate) {
            Swal.fire('Validation', 'From Date cannot be after To Date.', 'warning');
            return;
        }

        $('#report-content').html(
            '<div class="text-center py-5"><div class="spinner-border text-primary" role="status"><span class="visually-hidden">Loading...</span></div><div class="mt-2 text-muted small">Fetching report...</div></div>'
        );
        $('#report-summary').text('');

        $.ajax({
            url: '{{ route('assignments.viewreport') }}',
            method: 'POST',
            data: {
                _token: '{{ csrf_token() }}',
                from_date: fromDate,
                to_date: toDate,
                hk_code: hkFilter
            },
            success: function (response) {
                if (response.success) {
                    $('#report-content').html(response.html);
                    if (response.summary) {
                        $('#report-summary').text('Dates: ' + response.summary.total_dates + ' | HKs: ' + response.summary.total_hk + ' | Rooms: ' + response.total);
                    }
                } else {
                    $('#report-content').html(
                        '<div class="text-center text-danger py-5"><i class="fa-solid fa-circle-exclamation fa-2x mb-2 d-block"></i>' + (response.message || 'Failed to fetch report.') + '</div>'
                    );
                }
            },
            error: function () {
                $('#report-content').html(
                    '<div class="text-center text-danger py-5"><i class="fa-solid fa-circle-exclamation fa-2x mb-2 d-block"></i>Unable to fetch report. Please try again.</div>'
                );
            }
        });
    });

    // ── Print report (catalogmaster print format) ─────────────────────────────
    $('#btn-print-view').on('click', function () {
        var fromDate = $('#report-from-date').val();
        var toDate = $('#report-to-date').val();
        var hkFilter = $('#report-hk-filter').val();

        if (!fromDate || !toDate) {
            Swal.fire('Validation', 'Please select both From and To dates.', 'warning');
            return;
        }
        if (fromDate > toDate) {
            Swal.fire('Validation', 'From Date cannot be after To Date.', 'warning');
            return;
        }

        var url = '{{ route("assignments.viewprint") }}'
                + '?from_date=' + encodeURIComponent(fromDate)
                + '&to_date='   + encodeURIComponent(toDate)
                + '&hk_code='   + encodeURIComponent(hkFilter || '');
        window.open(url, '_blank');
    });
});
</script>

@endsection
