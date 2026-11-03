@extends('property.layouts.main')
@section('main-container')

    {{-- DataTables CSS --}}
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />

    {{-- DataTables JS --}}
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

    <style>
        /* ── summary table ── */
        #summaryTable { width: 100%; max-width: 500px; }
        #summaryTable th, #summaryTable td { padding: 6px 12px; }
        #summaryTable tfoot td { font-weight: bold; border-top: 2px solid #333; }

        /* ── footer totals row ── */
        #creditReportTable tfoot th { background: #f0f0f0; }
    </style>

    {{-- Hidden company info for print --}}
    <input type="hidden" value="{{ $company->comp_name }}"  id="compname">
    <input type="hidden" value="{{ $company->address1 }}"   id="address">
    <input type="hidden" value="{{ $company->city }}"       id="city">
    <input type="hidden" value="{{ $statename }}"           id="statename">
    <input type="hidden" value="{{ $company->pin }}"        id="pin">
    <input type="hidden" value="{{ $company->logo }}"       id="logo">
    <input type="hidden" value="{{ $company->gstin }}"      id="gstin">    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            {{-- Title --}}
                            <div class="row mb-2">
                                <div class="col-md-12">
                                    <h3>Credit Report</h3>
                                </div>
                            </div>

                            {{-- Filters --}}
                            <form id="filterForm" autocomplete="off">
                                <div class="row g-3 align-items-end">

                                    {{-- From Date --}}
                                    <div class="col-auto">
                                        <label class="col-form-label" for="fromdate">
                                            From Date <i class="fa-regular fa-calendar"></i>
                                        </label>
                                        <input type="date" id="fromdate" name="fromdate"
                                               value="{{ $fromdate }}" class="form-control">
                                    </div>

                                    {{-- To Date --}}
                                    <div class="col-auto">
                                        <label class="col-form-label" for="todate">
                                            To Date <i class="fa-regular fa-calendar"></i>
                                        </label>
                                        <input type="date" id="todate" name="todate"
                                               value="{{ $fromdate }}" class="form-control">
                                    </div>

                                    {{-- Pay Type --}}
                                    <div class="col-auto">
                                        <label class="col-form-label" for="paytype">Pay Type</label>
                                        <select id="paytype" name="paytype" class="form-control">
                                            <option value="All">All</option>
                                            @foreach ($payTypes as $pt)
                                                <option value="{{ $pt }}">{{ $pt }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    {{-- Refresh button --}}
                                    <div class="col-auto" style="margin-top:30px;">
                                        <button id="fetchbutton" type="button" class="btn btn-success">
                                            Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                    </div>

                                    {{-- Print button --}}
                                    <div class="col-auto" style="margin-top:30px;">
                                        <button id="printbutton" type="button" class="btn btn-info text-white">
                                            <i class="fa-solid fa-print"></i> Print
                                        </button>
                                    </div>

                                    {{-- Excel button --}}
                                    <div class="col-auto" style="margin-top:30px;">
                                        <button id="excelbutton" type="button" class="btn btn-warning">
                                            <i class="fa-solid fa-file-excel"></i> Excel
                                        </button>
                                    </div>

                                </div>
                            </form>

                            {{-- Detail table --}}
                            <div class="row table-responsive mt-3">
                                <table id="creditReportTable"
                                       class="table table-bordered table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Date</th>
                                            <th>Voucher</th>
                                            <th>Folio No</th>
                                            <th>Room No</th>
                                            <th>Mode</th>
                                            <th>Reference / Company</th>
                                            <th>Particular</th>
                                            <th>Chq No</th>
                                            <th>Chq Date</th>
                                            <th style="text-align:right;">Amount</th>
                                            <th>User</th>
                                            <th>Department</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="10" style="text-align:right;">Total:</th>
                                            <th id="totalAmtCr" style="text-align:right;"></th>
                                            <th colspan="2"></th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>

                            {{-- Summary table --}}
                            <div class="row mt-4">
                                <div class="col-md-5">
                                    <h5>Summary by Pay Type</h5>
                                    <table id="summaryTable"
                                           class="table table-bordered table-sm">
                                        <thead>
                                            <tr>
                                                <th>Pay Type</th>
                                                <th style="text-align:right;">Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody id="summaryBody"></tbody>
                                        <tfoot>
                                            <tr>
                                                <td><strong>Grand Total</strong></td>
                                                <td id="summaryGrandTotal" style="text-align:right;font-weight:bold;"></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>

                        </div>{{-- /card-body --}}
                    </div>{{-- /card --}}
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {

            var table = $('#creditReportTable').DataTable({
                processing : true,
                serverSide : false,
                searching  : true,
                paging     : true,
                ordering   : true,
                data       : [],
                columns    : [
                    { data: 'sno',         name: 'sno' },
                    { data: 'VDate',       name: 'VDate' },
                    { data: 'VNo',         name: 'VNo' },
                    { data: 'FolioNo',     name: 'FolioNo' },
                    { data: 'RoomNo',      name: 'RoomNo' },
                    { data: 'PayType',     name: 'PayType' },
                    {
                        data: null,
                        render: function (d, t, row) {
                            return row.CompanyName || '';
                        }
                    },
                    { data: 'Comments',    name: 'Comments' },
                    { data: 'ChqNo',       name: 'ChqNo' },
                    { data: 'ChqDate',     name: 'ChqDate' },
                    {
                        data: 'AmtCr',
                        name: 'AmtCr',
                        className: 'text-right'
                    },
                    { data: 'U_Name',      name: 'U_Name' },
                    { data: 'Department',  name: 'Department' },
                ],
                drawCallback: function () {
                    var api   = this.api();
                    var total = 0;
                    api.rows({ page: 'current' }).every(function () {
                        total += parseFloat(String(this.data().AmtCr).replace(/,/g, '')) || 0;
                    });
                    $('#totalAmtCr').html(total.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 }));
                }
            });

            // ── Fetch data ──────────────────────────────────────────────────
            function loadData() {
                var fromdate = $('#fromdate').val();
                var todate   = $('#todate').val();
                var paytype  = $('#paytype').val();

                if (!fromdate || !todate) {
                    alert('Please select both dates.');
                    return;
                }

                $.ajax({
                    url  : '{{ route("creditreportdata") }}',
                    type : 'POST',
                    data : {
                        fromdate : fromdate,
                        todate   : todate,
                        paytype  : paytype,
                        _token   : '{{ csrf_token() }}'
                    },
                    success: function (res) {
                        table.clear().rows.add(res.data).draw();

                        var summaryHtml = '';
                        $.each(res.summary, function (i, s) {
                            summaryHtml += '<tr><td>' + s.PayType + '</td>'
                                         + '<td style="text-align:right;">' + s.AmtCr + '</td></tr>';
                        });
                        $('#summaryBody').html(summaryHtml);
                        $('#summaryGrandTotal').text(res.grandTotal);
                    },
                    error: function (xhr) {
                        var msg = 'Error loading data.';
                        if (xhr.responseJSON && xhr.responseJSON.error) msg = xhr.responseJSON.error;
                        alert(msg);
                    }
                });
            }

            // ── Refresh ──────────────────────────────────────────────────────
            $('#fetchbutton').on('click', loadData);

            // ── Print — open PDF in new tab ──────────────────────────────────
            $('#printbutton').on('click', function () {
                var fromdate = $('#fromdate').val();
                var todate   = $('#todate').val();
                var paytype  = $('#paytype').val();
                if (!fromdate || !todate) { alert('Please select both dates.'); return; }
                var url = '{{ route("creditreport.print") }}'
                        + '?fromdate=' + encodeURIComponent(fromdate)
                        + '&todate='   + encodeURIComponent(todate)
                        + '&paytype='  + encodeURIComponent(paytype);
                window.open(url, '_blank');
            });

            // ── Excel — direct download ──────────────────────────────────────
            $('#excelbutton').on('click', function () {
                var fromdate = $('#fromdate').val();
                var todate   = $('#todate').val();
                var paytype  = $('#paytype').val();
                if (!fromdate || !todate) { alert('Please select both dates.'); return; }
                var url = '{{ route("creditreport.export") }}'
                        + '?fromdate=' + encodeURIComponent(fromdate)
                        + '&todate='   + encodeURIComponent(todate)
                        + '&paytype='  + encodeURIComponent(paytype);
                window.location.href = url;
            });

            // Auto-load on page ready
            loadData();
        });
    </script>

@endsection
