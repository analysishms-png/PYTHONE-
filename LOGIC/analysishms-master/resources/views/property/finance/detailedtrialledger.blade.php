@extends('property.layouts.main')

@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>

    <style>
        .report-card {
            margin-top: 20px;
        }

        .report-toolbar {
            margin-bottom: 20px;
        }

        .report-summary {
            margin-top: 10px;
        }

        .text-right {
            text-align: right;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow report-card">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">Detailed Trial Ledger</h5>
                        </div>
                        <div class="card-body">
                            <div class="report-header text-center mb-4">
                                <h4 class="mb-1">{{ $companyName }}</h4>
                            </div>
                            <div class="d-flex align-items-center justify-content-start mb-3 gap-2">
                                <button type="button" id="backButton" class="btn btn-secondary btn-sm">← Back</button>
                                <button type="button" id="excelButton" class="btn btn-success btn-sm">Excel</button>
                                <button type="button" id="printButton" class="btn btn-info btn-sm text-white">Print</button>
                                <span id="printUrl" style="display:none;">{{ route('printdetailedtrialledger') }}</span>
                            </div>
                            <div class="row report-toolbar align-items-center">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="fromdate" class="col-form-label mb-0">From Date</label>
                                        <input type="date" id="fromdate" class="form-control" value="{{ $fromdate }}">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="todate" class="col-form-label mb-0">To Date</label>
                                        <input type="date" id="todate" class="form-control" value="{{ $todate }}">
                                    </div>
                                </div>
                                <div class="col-md-3 d-flex align-items-center">
                                    <button id="refreshButton" class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                </div>
                                <div class="col-md-3">
                                    <div id="report-status" class="text-end text-muted"></div>
                                </div>
                            </div>

                            <div class="table-responsive">
                                <table id="detailed-ledger-table" class="table table-bordered table-striped table-hover">
                                    <thead class="bg-secondary text-white">
                                        <tr>
                                            <th style="width: 26%;">A/C Name</th>
                                            <th class="text-right">Opening Dr</th>
                                            <th class="text-right">Opening Cr</th>
                                            <th class="text-right">Trans Dr</th>
                                            <th class="text-right">Trans Cr</th>
                                            <th class="text-right">Closing Dr</th>
                                            <th class="text-right">Closing Cr</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                    <tfoot class="bg-light fw-bold">
                                        <tr>
                                            <td class="text-end">Grand Total</td>
                                            <td class="text-right" id="total-opening-dr">0.00</td>
                                            <td class="text-right" id="total-opening-cr">0.00</td>
                                            <td class="text-right" id="total-trans-dr">0.00</td>
                                            <td class="text-right" id="total-trans-cr">0.00</td>
                                            <td class="text-right" id="total-closing-dr">0.00</td>
                                            <td class="text-right" id="total-closing-cr">0.00</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            function formatNumber(value) {
                return Number(value || 0).toLocaleString('en-IN', {
                    minimumFractionDigits: 2,
                    maximumFractionDigits: 2
                });
            }

            function buildReportRows(data) {
                const grouped = {};
                data.forEach(item => {
                    const groupName = item.group_name || 'Other';
                    if (!grouped[groupName]) {
                        grouped[groupName] = {
                            rows: [],
                            totals: {
                                opening_dr: 0,
                                opening_cr: 0,
                                trans_dr: 0,
                                trans_cr: 0,
                                closing_dr: 0,
                                closing_cr: 0
                            }
                        };
                    }

                    grouped[groupName].rows.push(item);
                    grouped[groupName].totals.opening_dr += Number(item.opening_dr || 0);
                    grouped[groupName].totals.opening_cr += Number(item.opening_cr || 0);
                    grouped[groupName].totals.trans_dr += Number(item.trans_dr || 0);
                    grouped[groupName].totals.trans_cr += Number(item.trans_cr || 0);
                    grouped[groupName].totals.closing_dr += Number(item.closing_dr || 0);
                    grouped[groupName].totals.closing_cr += Number(item.closing_cr || 0);
                });
                return grouped;
            }

            function updateGrandTotals(data) {
                const totals = {
                    opening_dr: 0,
                    opening_cr: 0,
                    trans_dr: 0,
                    trans_cr: 0,
                    closing_dr: 0,
                    closing_cr: 0
                };

                data.forEach(item => {
                    totals.opening_dr += Number(item.opening_dr || 0);
                    totals.opening_cr += Number(item.opening_cr || 0);
                    totals.trans_dr += Number(item.trans_dr || 0);
                    totals.trans_cr += Number(item.trans_cr || 0);
                    totals.closing_dr += Number(item.closing_dr || 0);
                    totals.closing_cr += Number(item.closing_cr || 0);
                });

                $('#total-opening-dr').text(formatNumber(totals.opening_dr));
                $('#total-opening-cr').text(formatNumber(totals.opening_cr));
                $('#total-trans-dr').text(formatNumber(totals.trans_dr));
                $('#total-trans-cr').text(formatNumber(totals.trans_cr));
                $('#total-closing-dr').text(formatNumber(totals.closing_dr));
                $('#total-closing-cr').text(formatNumber(totals.closing_cr));
            }

            function exportToExcel() {
                const fromDate = $('#fromdate').val();
                const toDate = $('#todate').val();
                if (!fromDate || !toDate) {
                    alert('Please select both From Date and To Date.');
                    return;
                }
                window.location.href = '{{ route('detailedtrialledger.export') }}'
                    + '?fromdate=' + encodeURIComponent(fromDate)
                    + '&todate='   + encodeURIComponent(toDate);
            }

            function printReport() {
                const fromDate = $('#fromdate').val();
                const toDate = $('#todate').val();
                const baseUrl = $('#printUrl').text().trim();
                if (!baseUrl) {
                    alert('Print route is not configured.');
                    return;
                }
                window.open(baseUrl + '?fromdate=' + encodeURIComponent(fromDate) + '&todate=' + encodeURIComponent(toDate), '_blank');
            }

            function loadDetailedTrialLedger() {
                const fromdate = $('#fromdate').val();
                const todate = $('#todate').val();

                if (!fromdate || !todate) {
                    alert('Please select both From Date and To Date.');
                    return;
                }

                $('#report-status').text('Loading...');
                $('#detailed-ledger-table tbody').empty();

                $.ajax({
                    url: '{{ route('detailedtrialledger.fetch') }}',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        fromdate: fromdate,
                        todate: todate
                    },
                    success: function(response) {
                        if (!response.data || response.data.length === 0) {
                            $('#report-status').text('No data found for the selected date range.');
                            return;
                        }

                        const grouped = buildReportRows(response.data);
                        let html = '';

                        Object.keys(grouped).forEach(groupName => {
                            html += `<tr class="table-secondary"><td colspan="7"><strong>${groupName}</strong></td></tr>`;
                            grouped[groupName].rows.forEach(item => {
                                html += `<tr>
                                    <td>${item.name || ''}</td>
                                    <td class="text-right">${formatNumber(item.opening_dr)}</td>
                                    <td class="text-right">${formatNumber(item.opening_cr)}</td>
                                    <td class="text-right">${formatNumber(item.trans_dr)}</td>
                                    <td class="text-right">${formatNumber(item.trans_cr)}</td>
                                    <td class="text-right">${formatNumber(item.closing_dr)}</td>
                                    <td class="text-right">${formatNumber(item.closing_cr)}</td>
                                </tr>`;
                            });
                            html += `<tr class="table-info fw-bold">
                                <td>Sub Total</td>
                                <td class="text-right">${formatNumber(grouped[groupName].totals.opening_dr)}</td>
                                <td class="text-right">${formatNumber(grouped[groupName].totals.opening_cr)}</td>
                                <td class="text-right">${formatNumber(grouped[groupName].totals.trans_dr)}</td>
                                <td class="text-right">${formatNumber(grouped[groupName].totals.trans_cr)}</td>
                                <td class="text-right">${formatNumber(grouped[groupName].totals.closing_dr)}</td>
                                <td class="text-right">${formatNumber(grouped[groupName].totals.closing_cr)}</td>
                            </tr>`;
                        });

                        $('#detailed-ledger-table tbody').html(html);
                        updateGrandTotals(response.data);
                        $('#report-status').text('Report refreshed successfully.');
                    },
                    error: function(xhr) {
                        $('#report-status').text('Unable to load data.');
                        console.error(xhr.responseText || xhr.statusText);
                    }
                });
            }

            $('#refreshButton').on('click', loadDetailedTrialLedger);
            $('#backButton').on('click', function() { window.history.back(); });
            $('#excelButton').on('click', exportToExcel);
            $('#printButton').on('click', printReport);
            loadDetailedTrialLedger();
        });
    </script>
@endsection
