@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">

                        <div class="card-body">

                            <form id="purchaseAmountForm" method="post">
                                @csrf
                                <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="formType" value="purchase amount">
                                <div class="row">
                                    <div class="d-flex align-items-center gap-2 mb-3" style="justify-content: flex-start;">
                                        <a href="{{ route('invdashboard') }}" class="btn btn-secondary btn-sm" style="min-width:120px; font-weight:600;">← Back</a>
                                        <button type="button" id="excelButton" class="btn btn-success btn-sm"><i class="fa fa-file-excel"></i> Excel</button>
                                        <button type="button" id="printButton" class="btn btn-info btn-sm text-white"><i class="fa fa-print"></i> Print</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- Results Table -->
                    <div class="card" id="resultsCard" style="display: none; margin-top: 0px;">
                        <div class="card-header">
                            <h5 class="mb-0">Purchase Amount Report</h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="purchaseTable" class="table table-striped table-bordered table-hover"
                                    style="table-layout:fixed; width:100%;">
                                    <thead class="table-header">
                                        <tr>
                                            <th style="width: 20%;">Year</th>
                                            <th style="width: 40%;">Month</th>
                                            <th style="width: 40%; text-align: right;">Purchase Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableBody">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Small CSS tweaks to improve table appearance -->
    <style>
        .table-header th {
            background: #f7f7fb;
            /* light neutral header */
            color: #222;
            padding: 10px 12px;
            font-weight: 700;
            text-align: center;
            vertical-align: middle;
        }

        .table-header th .header-value {
            display: block;
            font-weight: 600;
            font-size: 1.05rem;
            margin-top: 8px;
            color: #111;
        }

        #purchaseTable td {
            padding: 10px 12px;
            vertical-align: middle;
        }

        .table-responsive {
            overflow-x: auto;
        }

        @media (max-width: 576px) {
            .table-header th {
                font-size: 13px;
                padding: 8px;
            }

            #purchaseTable td {
                font-size: 13px;
                padding: 8px;
            }
        }
    </style>

    <!-- Include SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <!-- DataTables CSS/JS (Bootstrap 5 + Responsive) -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.4.1/css/responsive.bootstrap5.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.4.1/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.4.1/js/responsive.bootstrap5.min.js"></script>

    <script>
        let purchaseTable = null;
        const tableSelector = '#purchaseTable';
        let currentReportData = [];
        const compName = @json($company->comp_name ?? '');
        const compAddr = @json($company->address1 ?? '');
        const compCity = @json(($company->city ?? '') . ($company->pin ? ' - ' . $company->pin : ''));
        const monthNames = ['', 'January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December'
        ];

        $(document).ready(function () {
            // Load data automatically on page load
            loadPurchaseData();

            // Form submission with AJAX
            $('#purchaseAmountForm').on('submit', function (e) {
                e.preventDefault();
                loadPurchaseData();
            });

            // Main function to load purchase data
            function loadPurchaseData() {
                // Show loading state
                $('#submitBtn').prop('disabled', true);
                $('#btnText').hide();
                $('#loadingSpinner').show();

                // AJAX request - propertyid will be handled in controller
                $.ajax({
                    url: '{{ route("getpurchaseamountsubmit") }}',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        _token: '{{ csrf_token() }}'
                    },
                    success: function (response) {
                        $('#submitBtn').prop('disabled', false);
                        $('#btnText').show();
                        $('#loadingSpinner').hide();

                        if (response.success === true) {
                            // Success
                            // No success popup
                            populateTable(response.data);
                            $('#resultsCard').show();
                        } else {
                            // No data found
                            Swal.fire({
                                icon: 'info',
                                title: 'No Data',
                                text: response.message || 'No purchase data found for the selected property.',
                                confirmButtonColor: '#17a2b8'
                            });
                            $('#resultsCard').hide();
                        }
                    },
                    error: function (xhr, status, error) {
                        $('#submitBtn').prop('disabled', false);
                        $('#btnText').show();
                        $('#loadingSpinner').hide();

                        let errorMessage = 'An error occurred while processing your request.';

                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        } else if (xhr.status === 422) {
                            // Validation errors
                            let validationErrors = xhr.responseJSON.errors;
                            let errorList = Object.values(validationErrors).flat().join('\n');
                            errorMessage = errorList;
                        }

                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: errorMessage,
                            confirmButtonColor: '#dc3545'
                        });
                        $('#resultsCard').hide();
                    }
                });
            }

            // Function to populate table
            function populateTable(data) {
                const tableBody = $('#tableBody');
                tableBody.empty();

                if (!Array.isArray(data) || data.length === 0) {
                    tableBody.append('<tr><td colspan="3" class="text-center">No data available</td></tr>');
                    // destroy DataTable if exists
                    if (purchaseTable) { purchaseTable.clear().destroy(); purchaseTable = null; }
                    return;
                }

                currentReportData = Array.isArray(data) ? data : [];

                data.forEach(function (row) {
                    const monthName = monthNames[row.Month] || 'Unknown';
                    const amount = Number(row.PurchaseAmount || row.Purchaseamount || 0).toFixed(2);

                    tableBody.append(`
                                    <tr>
                                        <td class="text-center">${row.Year}</td>
                                        <td>${monthName}</td>
                                        <td class="text-end">₹ ${amount}</td>
                                    </tr>
                                `);
                });

                // If exactly one row, move values into headers (stacked under header labels)
                if (data.length === 1) {
                    // set header labels with values
                    $('#purchaseTable thead th').eq(0).html('Year<span class="header-value">' + data[0].Year + '</span>');
                    $('#purchaseTable thead th').eq(1).html('Month<span class="header-value">' + (monthNames[data[0].Month] || 'Unknown') + '</span>');
                    $('#purchaseTable thead th').eq(2).html('Purchase Amount<span class="header-value">₹ ' + Number(data[0].PurchaseAmount || data[0].Purchaseamount || 0).toFixed(2) + '</span>');
                    // hide body row since values are shown in header
                    $(tableSelector).find('tbody').hide();
                } else {
                    // restore header labels and ensure body visible for multiple rows
                    $('#purchaseTable thead th').eq(0).text('Year');
                    $('#purchaseTable thead th').eq(1).text('Month');
                    $('#purchaseTable thead th').eq(2).text('Purchase Amount');
                    $(tableSelector).find('tbody').show();
                }

                // Destroy existing DataTable if it exists
                if (purchaseTable) {
                    purchaseTable.clear().destroy();
                    $(tableSelector).find('tbody').off();
                }

                // Initialize DataTable with responsive and visual options
                purchaseTable = $(tableSelector).DataTable({
                    responsive: true,
                    paging: true,
                    pageLength: 10,
                    searching: true,
                    ordering: true,
                    lengthChange: true,
                    info: true,
                    autoWidth: false,
                    columnDefs: [
                        { targets: 0, width: '20%', className: 'dt-center', responsivePriority: 2 },
                        { targets: 1, width: '40%', responsivePriority: 3 },
                        { targets: 2, width: '40%', className: 'dt-right', responsivePriority: 1 }
                    ],
                    language: {
                        search: "Filter:",
                        lengthMenu: "Show _MENU_ entries",
                        info: "Showing _START_ to _END_ of _TOTAL_ entries",
                        paginate: { previous: '‹', next: '›' }
                    }
                });
            }

            function exportToExcel() {
                if (!Array.isArray(currentReportData) || currentReportData.length === 0) {
                    Swal.fire({ icon: 'info', title: 'No Data', text: 'No purchase data available to export.' });
                    return;
                }

                const wsData = [
                    [compName],
                    [compAddr],
                    [compCity],
                    [],
                    ['Purchase Amount Report'],
                    ['Generated On', new Date().toLocaleString()],
                    [],
                    ['Year', 'Month', 'Purchase Amount']
                ];

                currentReportData.forEach(function (row) {
                    wsData.push([
                        row.Year || '',
                        monthNames[row.Month] || 'Unknown',
                        parseFloat(row.PurchaseAmount || row.Purchaseamount || 0).toFixed(2)
                    ]);
                });

                const wb = XLSX.utils.book_new();
                const ws = XLSX.utils.aoa_to_sheet(wsData);
                ws['!cols'] = [{ wch: 10 }, { wch: 18 }, { wch: 18 }];
                XLSX.utils.book_append_sheet(wb, ws, 'PurchaseAmount');
                XLSX.writeFile(wb, 'PurchaseAmount.xlsx');
            }

            function printReport() {
                window.open("{{ route('printpurchaseamount') }}", '_blank');
            }

            $('#excelButton').on('click', exportToExcel);
            $('#printButton').on('click', printReport);
        });
    </script>
@endsection