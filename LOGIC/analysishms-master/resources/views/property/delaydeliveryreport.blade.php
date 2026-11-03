@extends('property.layouts.main')

@section('main-container')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="d-flex align-items-center justify-content-between mb-3">
                                <div class="d-flex gap-2 align-items-center">
                                    <a href="{{ route('invdashboard') }}" class="btn btn-secondary btn-sm">
                                        ← Back
                                    </a>
                                    <button type="button" id="excelButton" class="btn btn-success btn-sm">
                                        <i class="fa fa-file-excel"></i> Excel
                                    </button>
                                    <button type="button" id="printButton" class="btn btn-info btn-sm text-white">
                                        <i class="fa fa-print"></i> Print
                                    </button>
                                </div>
                            </div>
                            <div class="text-center mb-4">
                                <h3>Delay Delivery Report</h3>
                            </div>

                            <form id="delayDeliveryForm">
                                @csrf
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fromdate">From Date</label>
                                        <input type="date" id="fromdate" name="fromdate"
                                            value="{{ \Carbon\Carbon::parse($ncurdate)->startOfMonth()->format('Y-m-d') }}"
                                            class="form-control">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="todate">To Date</label>
                                        <input type="date" id="todate" name="todate" value="{{ $ncurdate }}"
                                            class="form-control">
                                    </div>
                                    <div class="col-md-2 d-flex align-items-end">
                                        <button type="submit" id="submitBtn" class="btn btn-success w-100">Submit</button>
                                    </div>
                                </div>
                            </form>

                            <div class="table-responsive mt-4">
                                <table class="table table-bordered table-striped" id="delayDeliveryTable">
                                    <thead>
                                        <tr>
                                            <th>SrNo</th>
                                            <th>PO No</th>
                                            <th>PO Date</th>
                                            <th>Supplier Name</th>
                                            <th>Item Name</th>
                                            <th>Ordered Qty</th>
                                            <th>Expected Delivery Date</th>
                                            <th>Actual Receive Date</th>
                                            <th>Delay Days</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td colspan="10" class="text-center">Please select date range and submit.</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="row mt-3" id="delayDeliverySummary" style="display:none;">
                                <div class="col-md-3">
                                    <div class="alert alert-secondary py-2 mb-2">
                                        <strong>Total Purchase Orders:</strong> <span id="summaryTotal">0</span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="alert alert-warning py-2 mb-2">
                                        <strong>Delayed Orders:</strong> <span id="summaryDelayed">0</span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="alert alert-success py-2 mb-2">
                                        <strong>On Time Orders:</strong> <span id="summaryOnTime">0</span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="alert alert-info py-2 mb-2">
                                        <strong>Early Deliveries:</strong> <span id="summaryEarly">0</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function showToast(message, type = 'error') {
            const background = type === 'success' ? 'linear-gradient(to right, #00b09b, #96c93d)' :
                'linear-gradient(to right, #ff5f6d, #ffc371)';

            if (typeof Toastify !== 'undefined') {
                Toastify({
                    text: message,
                    duration: 3500,
                    gravity: 'top',
                    position: 'right',
                    close: true,
                    backgroundColor: background,
                }).showToast();
            } else {
                alert(message);
            }
        }

        function setTableRows(rows) {
            const tbody = $('#delayDeliveryTable tbody');
            tbody.empty();

            if (!rows.length) {
                tbody.append('<tr><td colspan="10" class="text-center">No records found for selected dates.</td></tr>');
                $('#delayDeliverySummary').hide();
                return;
            }

            rows.forEach(function (item, index) {
                tbody.append(`
                        <tr>
                            <td>${index + 1}</td>
                            <td>${item.po_no ?? ''}</td>
                            <td>${item.po_date ?? ''}</td>
                            <td>${item.supplier_name ?? ''}</td>
                            <td>${item.item_name ?? ''}</td>
                            <td>${item.ordered_qty ?? ''}</td>
                            <td>${item.expected_delivery_date ?? ''}</td>
                            <td>${item.actual_receive_date ?? ''}</td>
                            <td>${item.delay_days ?? ''}</td>
                            <td>${item.status ?? ''}</td>
                        </tr>
                    `);
            });
        }

        let currentReportData = [];
        const compName = @json($company->comp_name ?? '');
        const compAddr = @json($company->address1 ?? '');
        const compCity = @json(($company->city ?? '') . ($company->pin ? ' - ' . $company->pin : ''));

        function setSummary(summary) {
            $('#summaryTotal').text(summary.total_orders || 0);
            $('#summaryDelayed').text(summary.delayed_orders || 0);
            $('#summaryOnTime').text(summary.on_time_orders || 0);
            $('#summaryEarly').text(summary.early_orders || 0);
            $('#delayDeliverySummary').show();
        }

        function exportToExcel() {
            if (!Array.isArray(currentReportData) || currentReportData.length === 0) {
                showToast('No report data available to export.');
                return;
            }

            const fromDate = $('#fromdate').val();
            const toDate = $('#todate').val();

            const wsData = [
                [compName],
                [compAddr],
                [compCity],
                [],
                ['Delay Delivery Report'],
                ['Date Range', `${fromDate} to ${toDate}`],
                ['Generated On', new Date().toLocaleString()],
                [],
                ['SrNo', 'PO No', 'PO Date', 'Supplier Name', 'Item Name', 'Ordered Qty', 'Expected Delivery Date', 'Actual Receive Date', 'Delay Days', 'Status']
            ];

            currentReportData.forEach(function (row, index) {
                wsData.push([
                    index + 1,
                    row.po_no || '',
                    row.po_date || '',
                    row.supplier_name || '',
                    row.item_name || '',
                    row.ordered_qty || '',
                    row.expected_delivery_date || '',
                    row.actual_receive_date || '',
                    row.delay_days || '',
                    row.status || ''
                ]);
            });

            const wb = XLSX.utils.book_new();
            const ws = XLSX.utils.aoa_to_sheet(wsData);
            ws['!cols'] = [{ wch: 6 }, { wch: 12 }, { wch: 14 }, { wch: 20 }, { wch: 18 }, { wch: 12 }, { wch: 16 }, { wch: 16 }, { wch: 10 }, { wch: 14 }];
            XLSX.utils.book_append_sheet(wb, ws, 'DelayDeliveryReport');
            XLSX.writeFile(wb, 'DelayDeliveryReport.xlsx');
        }

        function printReport() {
            const fromDate = $('#fromdate').val();
            const toDate   = $('#todate').val();

            if (!fromDate || !toDate) {
                showToast('Please select date range first.');
                return;
            }

            const params = new URLSearchParams({
                fromdate: fromDate,
                todate:   toDate
            });

            window.open("{{ route('printdelaydeliveryreport') }}?" + params.toString(), '_blank');
        }

        function fetchDelayDeliveryData(showSuccessToast = true) {
            const fromdate = $('#fromdate').val();
            const todate = $('#todate').val();

            if (!fromdate || !todate) {
                showToast('From Date and To Date both are required.');
                return false;
            }

            if (todate < fromdate) {
                showToast('To Date must be greater than or equal to From Date.');
                return false;
            }

            $('#submitBtn').prop('disabled', true).text('Loading...');

            $.ajax({
                url: "{{ route('delaydeliveryreport.fetch') }}",
                method: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    fromdate: fromdate,
                    todate: todate
                },
                success: function (response) {
                    if (!response.status) {
                        showToast(response.message || 'Unable to fetch report.');
                        return;
                    }

                    const rows = response.data || [];
                    currentReportData = rows;
                    setTableRows(rows);
                    if (rows.length) {
                        setSummary(response.summary || {
                            total_orders: 0,
                            delayed_orders: 0,
                            on_time_orders: 0,
                            early_orders: 0,
                        });
                    } else {
                        $('#delayDeliverySummary').hide();
                    }
                    if (showSuccessToast) {
                        showToast(response.message || 'Report fetched successfully.', 'success');
                    }
                },
                error: function (xhr) {
                    if (xhr.status === 422 && xhr.responseJSON && xhr.responseJSON.errors) {
                        const errors = xhr.responseJSON.errors;
                        const firstKey = Object.keys(errors)[0];
                        const firstError = firstKey ? errors[firstKey][0] : 'Validation error.';
                        showToast(firstError);
                        return;
                    }

                    showToast('Something went wrong while fetching report.');
                },
                complete: function () {
                    $('#submitBtn').prop('disabled', false).text('Submit');
                }
            });
            return true;
        }

        $('#delayDeliveryForm').on('submit', function (e) {
            e.preventDefault();
            fetchDelayDeliveryData(true);
        });

        $('#excelButton').on('click', exportToExcel);
        $('#printButton').on('click', printReport);

        $('#fromdate, #todate').on('change', function () {
            fetchDelayDeliveryData(false);
        });

        $(document).ready(function () {
            $('#delayDeliveryForm').trigger('submit');
        });
    </script>
@endsection