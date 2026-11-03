@extends('property.layouts.main')
@section('main-container')
    {{-- Custom CSS for target styling overrides --}}
    <style>
        .vv-header-gradient {
            background: linear-gradient(135deg, #4e73df 0%, #224abe 100%);
        }

        .dataTables_length select,
        .dataTables_filter input {
            border: 1px solid #ced4da !important;
            border-radius: .25rem !important;
            padding: .25rem .5rem !important;
            background-color: #ffffff !important;
            color: #495057 !important;
        }

        .dataTables_length select {
            padding-right: 1.5rem !important;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid px-4 pt-3">

            {{-- Back Button (Small & Clean) --}}
            <div class="mb-2">
                <a href="{{ route('finance.transaction.voucherverification') }}"
                    class="btn btn-xs btn-light border bg-white text-dark px-2 py-1 small" style="font-size: 11px;">
                    <i class="fa fa-arrow-left me-1"></i> Back
                </a>
            </div>

            {{-- Compact Header --}}
            <div
                class="vv-header-gradient px-3 py-2 d-flex align-items-center justify-content-between flex-wrap gap-2 rounded shadow-sm mb-3">
                <div>
                    <h5 class="text-white fw-bold m-0 fs-6 lh-base"><i class="fa fa-bar-chart me-2"></i>User Wise Entry Report
                    </h5>
                    <p class="text-white-50 m-0" style="font-size: 11px;">Voucher entry summary and logs broken down by user
                        profiles.</p>
                </div>
                <div>
                    <button class="btn btn-success btn-sm px-3 py-1 shadow-sm small" id="exportExcelBtn"
                        style="font-size: 12px;">
                        <i class="fa fa-file-excel-o me-1"></i> Export Excel
                    </button>
                </div>
            </div>

            {{-- Filters --}}
            <div class="card shadow-sm border-0 mb-4 rounded-3">
                <div class="card-body p-3">
                    <div class="row g-3 align-items-end">
                        <div class="col-12 col-md-2">
                            <label class="form-label text-muted fw-semibold small mb-1">From Date</label>
                            <input type="date" id="fromDate" class="form-control form-control-sm"
                                value="{{ $fromDate }}">
                        </div>
                        <div class="col-12 col-md-2">
                            <label class="form-label text-muted fw-semibold small mb-1">To Date</label>
                            <input type="date" id="toDate" class="form-control form-control-sm"
                                value="{{ $toDate }}">
                        </div>
                        <div class="col-12 col-md-2">
                            <label class="form-label text-muted fw-semibold small mb-1">Voucher Type</label>
                            <select id="voucherType" class="form-select form-select-sm">
                                <option value="">-- ALL --</option>
                                @foreach ($voucherTypes as $vt)
                                    <option value="{{ $vt->vtype }}"
                                        {{ ($selectedVType ?? '') == $vt->vtype ? 'selected' : '' }}>
                                        {{ $vt->description }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-12 col-md-2">
                            <label class="form-label text-muted fw-semibold small mb-1">User</label>
                            <select id="userFilter" class="form-select form-select-sm">
                                <option value="">-- ALL --</option>
                                @foreach ($users as $u)
                                    <option value="{{ $u->u_name }}"
                                        {{ ($selectedUser ?? '') == $u->u_name ? 'selected' : '' }}>
                                        {{ $u->u_name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-12 col-md-2 d-flex gap-2">
                            <button class="btn btn-sm btn-primary px-3 flex-grow-1" id="searchBtn">
                                <i class="fa fa-search me-1"></i> Search
                            </button>
                            <button class="btn btn-sm btn-outline-secondary bg-white text-secondary px-2" id="clearBtn">
                                <i class="fa fa-refresh"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Original Metric Blocks Layout --}}
            <div class="row g-3 mb-4">
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="p-3 rounded text-white bg-primary">
                        <div class="small fw-semibold text-uppercase opacity-75">Total Users</div>
                        <div class="fs-4 fw-bold mt-1">{{ count($data) }}</div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="p-3 rounded text-white bg-success">
                        <div class="small fw-semibold text-uppercase opacity-75">Total Vouchers</div>
                        <div class="fs-4 fw-bold mt-1">{{ number_format($data->sum('total_vouchers')) }}</div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="p-3 rounded text-white bg-info">
                        <div class="small fw-semibold text-uppercase opacity-75">Total Debit</div>
                        <div class="fs-4 fw-bold mt-1">{{ number_format($data->sum('total_debit'), 2) }}</div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="p-3 rounded text-dark bg-warning">
                        <div class="small fw-semibold text-uppercase opacity-75">Total Credit</div>
                        <div class="fs-4 fw-bold mt-1">{{ number_format($data->sum('total_credit'), 2) }}</div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="p-3 rounded text-white bg-danger">
                        <div class="small fw-semibold text-uppercase opacity-75">Average Per User</div>
                        <div class="fs-4 fw-bold mt-1">
                            {{ count($data) > 0 ? round($data->sum('total_vouchers') / count($data)) : 0 }}
                        </div>
                    </div>
                </div>
            </div>

            {{-- Summary Table --}}
            <div class="card shadow-sm border-0 mb-4 rounded-3">
                <div class="card-body p-3">
                    <div class="text-primary fw-bold fs-6 mb-3">User Wise Summary</div>
                    <div class="table-responsive">
                        <table id="summaryDataTable" class="table table-bordered table-hover align-middle w-100 m-0 small">
                            <thead class="table-light text-nowrap">
                                <tr>
                                    <th>Sr. No.</th>
                                    <th>User Name</th>
                                    <th class="text-end">Total Vouchers</th>
                                    <th class="text-end">Total Debit</th>
                                    <th class="text-end">Total Credit</th>
                                    <th>Last Entry Date</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($data as $i => $row)
                                    <tr>
                                        <td>{{ $i + 1 }}</td>
                                        <td>{{ $row->u_name ?? '—' }}</td>
                                        <td class="text-end fw-semibold text-success">
                                            {{ number_format($row->total_vouchers) }}</td>
                                        <td class="text-end text-info fw-semibold">
                                            {{ number_format($row->total_debit, 2) }}</td>
                                        <td class="text-end text-warning fw-semibold">
                                            {{ number_format($row->total_credit, 2) }}</td>
                                        <td class="text-muted">{{ $row->last_entry_date ?? '—' }}</td>
                                        <td class="text-center">
                                            <button class="btn btn-sm btn-outline-primary view-btn py-0 px-2 small"
                                                data-uname="{{ $row->u_name }}">
                                                <i class="fa fa-eye"></i> View
                                            </button>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="7" class="text-center text-muted py-4">No data found for selected
                                            filters.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                            <tfoot class="table-light">
                                <tr class="fw-bold">
                                    <td colspan="2" class="text-center">Total</td>
                                    <td class="text-end text-success">{{ number_format($data->sum('total_vouchers')) }}
                                    </td>
                                    <td class="text-end text-info">{{ number_format($data->sum('total_debit'), 2) }}</td>
                                    <td class="text-end text-warning">{{ number_format($data->sum('total_credit'), 2) }}
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>

            {{-- Bottom Section: Chart + User Detail --}}
            <div class="row g-4 mb-4" id="bottomSection">
                <div class="col-12 col-lg-6">
                    <div class="card shadow-sm border-0 h-100 rounded-3">
                        <div class="card-body p-3">
                            <div class="text-primary fw-bold fs-6 mb-3">User Entry Trend (Vouchers)</div>
                            <div class="ratio ratio-21x9" style="height:260px;">
                                <canvas id="userChart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="card shadow-sm border-0 h-100 rounded-3">
                        <div class="card-body p-3 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex align-items-center gap-1 mb-1">
                                    <span class="text-primary fw-bold fs-6">
                                        <i class="fa fa-user"></i> Selected User Detail
                                    </span>
                                </div>
                                <div id="selectedUserName" class="text-muted fw-semibold small mb-3">
                                    <i class="fa fa-info-circle me-1"></i> Select a user row above to see metrics breakdown
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered align-middle m-0 xsmall" id="userDetailTable"
                                        style="font-size: 12px;">
                                        <thead class="table-light text-nowrap fw-semibold">
                                            <tr>
                                                <th>Voucher Type</th>
                                                <th class="text-end">Total Vouchers</th>
                                                <th class="text-end">Total Debit</th>
                                                <th class="text-end">Total Credit</th>
                                                <th class="text-end">Approved</th>
                                                <th class="text-end">Rejected</th>
                                                <th class="text-end">Pending</th>
                                            </tr>
                                        </thead>
                                        <tbody id="userDetailTbody">
                                            <tr>
                                                <td colspan="7" class="text-center text-muted py-4">
                                                    Click "View" on any row to see details.
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot class="table-light fw-bold text-nowrap">
                                            <tr>
                                                <td>Total</td>
                                                <td class="text-end text-success" id="udTotal">0</td>
                                                <td class="text-end text-info" id="udDebit">0.00</td>
                                                <td class="text-end text-warning" id="udCredit">0.00</td>
                                                <td class="text-end text-success" id="udApproved">0</td>
                                                <td class="text-end text-danger" id="udRejected">0</td>
                                                <td class="text-end text-warning" id="udPending">0</td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                            <div id="viewAllBtnWrap" style="display:none;" class="text-end mt-3">
                                <button class="btn btn-sm btn-primary px-3" id="viewAllBtn">
                                    View All Vouchers <i class="fa fa-arrow-right ms-1"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-muted py-2 mb-3 small">
                <i class="fa fa-info-circle"></i> <strong>Note:</strong> This report shows user wise voucher entry summary
                based on selected date range and filters.
            </div>

        </div>
    </div>

    {{-- Assets Scripts and Config Blocks (Fixed Broken jQuery DataTables CDN Script Links) --}}
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.2/css/buttons.bootstrap5.min.css">
    <script src="https://cdn.datatables.net/buttons/2.4.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.html5.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>

    <script>
        let selectedUser = null;
        let chartInstance = null;
        let dtTable = null;

        $(document).ready(function() {
            $('#searchBtn').on('click', function() {
                $(this).prop('disabled', true);
                window.location.href =
                    `?fromDate=${$('#fromDate').val()}&toDate=${$('#toDate').val()}&voucherType=${$('#voucherType').val()}&user=${$('#userFilter').val()}`;
            });

            $('#clearBtn').on('click', function() {
                $(this).prop('disabled', true);
                window.location.href = window.location.pathname;
            });

            dtTable = $('#summaryDataTable').DataTable({
                destroy: true,
                pageLength: 10,
                lengthMenu: [
                    [5, 10, 25, 50, -1],
                    [5, 10, 25, 50, 'All']
                ],
                ordering: true,
                searching: true,
                responsive: true,
                dom: "<'row'<'col-sm-12 col-md-6'l><'col-sm-12 col-md-6'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
                buttons: [{
                    extend: 'excelHtml5',
                    text: 'Export Excel',
                    title: 'User Wise Entry Report',
                    filename: 'UserWiseReport_{{ $fromDate }}_{{ $toDate }}',
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5]
                    },
                    customize: function(xlsx) {
                        var sheet = xlsx.xl.worksheets['sheet1.xml'];
                        $('row:first c', sheet).attr('s', '2');
                    }
                }],
                columnDefs: [{
                    orderable: false,
                    targets: [0, 6]
                }],
                language: {
                    search: "Search:",
                    lengthMenu: "Show _MENU_ entries"
                },
                initComplete: function() {
                    $('.dataTables_length select').addClass(
                        'form-select form-select-sm d-inline-block w-auto ms-1');
                    $('.dataTables_filter input').addClass(
                        'form-control form-control-sm d-inline-block w-auto ms-1');
                }
            });

            $('#exportExcelBtn').on('click', function() {
                dtTable.button(0).trigger();
            });

            renderChart();

            $(document).on('click', '.view-btn', function(e) {
                e.stopPropagation();
                loadUserDetail($(this).data('uname'), $(this));
            });
        });

        function renderChart() {
            const labels = @json($data->pluck('u_name'));
            const values = @json($data->pluck('total_vouchers'));

            if (chartInstance) {
                chartInstance.destroy();
            }
            if (!labels.length) return;

            chartInstance = new Chart(document.getElementById('userChart').getContext('2d'), {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Vouchers',
                        data: values,
                        backgroundColor: '#4e73df',
                        borderRadius: 4,
                        barThickness: 24
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        x: {
                            grid: {
                                display: false
                            },
                            ticks: {
                                font: {
                                    size: 11
                                }
                            }
                        },
                        y: {
                            beginAtZero: true,
                            ticks: {
                                font: {
                                    size: 11
                                }
                            }
                        }
                    }
                }
            });
        }

        function loadUserDetail(uname, triggerElement) {
            if (!uname) return;
            selectedUser = uname;

            $('.view-btn').prop('disabled', true);
            $('#summaryDataTable tbody tr').removeClass('table-active');
            triggerElement.closest('tr').addClass('table-active');

            $('#selectedUserName').html(`<i class="fa fa-user text-primary"></i> ${uname.toUpperCase()}`);
            $('#userDetailTbody').html(
                '<tr><td colspan="7" class="text-center py-3"><i class="fa fa-spinner fa-spin"></i> Processing...</td></tr>'
                );

            $.ajax({
                url: '{{ route('userwise.detail') }}',
                type: 'GET',
                data: {
                    u_name: uname,
                    fromDate: $('#fromDate').val(),
                    toDate: $('#toDate').val()
                },
                success: function(res) {
                    $('.view-btn').prop('disabled', false);
                    if (res.success && res.data.length > 0) {
                        let html = '',
                            tv = 0,
                            td = 0,
                            tc = 0,
                            ta = 0,
                            tr_ = 0,
                            tp = 0;
                        res.data.forEach(function(item) {
                            tv += parseInt(item.total_vouchers) || 0;
                            td += parseFloat(item.total_debit) || 0;
                            tc += parseFloat(item.total_credit) || 0;
                            ta += parseInt(item.approved) || 0;
                            tr_ += parseInt(item.rejected) || 0;
                            tp += parseInt(item.pending) || 0;

                            html += `<tr>
                                <td class="fw-semibold">${item.vtype ?? ''}</td>
                                <td class="text-end text-success fw-semibold">${item.total_vouchers ?? 0}</td>
                                <td class="text-end text-info">${formatAmt(item.total_debit)}</td>
                                <td class="text-end text-warning">${formatAmt(item.total_credit)}</td>
                                <td class="text-end text-success fw-bold">${item.approved ?? 0}</td>
                                <td class="text-end text-danger fw-bold">${item.rejected ?? 0}</td>
                                <td class="text-end text-warning fw-bold">${item.pending ?? 0}</td>
                            </tr>`;
                        });
                        $('#userDetailTbody').html(html);
                        $('#udTotal').text(tv);
                        $('#udDebit').text(formatAmt(td));
                        $('#udCredit').text(formatAmt(tc));
                        $('#udApproved').text(ta);
                        $('#udRejected').text(tr_);
                        $('#udPending').text(tp);
                        $('#viewAllBtnWrap').show();
                    } else {
                        $('#userDetailTbody').html(
                            '<tr><td colspan="7" class="text-center text-muted py-3">No data found.</td></tr>'
                            );
                        $('#viewAllBtnWrap').hide();
                    }
                },
                error: function() {
                    $('.view-btn').prop('disabled', false);
                    $('#userDetailTbody').html(
                        '<tr><td colspan="7" class="text-center text-danger py-3">Failed to load data.</td></tr>'
                        );
                }
            });
        }

        function formatAmt(val) {
            return (parseFloat(val) || 0).toLocaleString('en-IN', {
                minimumFractionDigits: 2,
                maximumFractionDigits: 2
            });
        }
    </script>
@endsection
















@extends('property.layouts.main')
@section('main-container')
    <style>
        .vv-header {
            background: linear-gradient(135deg, #4e73df 0%, #224abe 100%);
            border-radius: 6px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .report-header-title {
            color: #ffffff !important;
            font-weight: 700;
            font-size: 16px;
            margin-bottom: 2px;
            letter-spacing: 0.5px;
        }

        .report-header-subtitle {
            color: rgba(255, 255, 255, 0.8) !important;
            font-size: 12px;
            margin-bottom: 0;
        }

        .metric-card-title {
            font-size: 11px;
            font-weight: 600;
            color: #6c757d;
        }

        .metric-card-value {
            font-size: 24px;
            font-weight: 700;
        }

        .table-summary-title {
            color: #224abe;
            font-weight: 700;
            font-size: 14px;
        }

        .dataTables_length select,
        .dataTables_filter input {
            border: 1px solid #ced4da !important;
            border-radius: 4px !important;
            padding: 4px 8px !important;
            background-color: #ffffff !important;
            color: #495057 !important;
        }

        .dataTables_length select {
            padding-right: 24px !important;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid px-4 pt-3">

            {{-- Back Button --}}
            <div class="mb-3">
                <a href="{{ route('finance.transaction.voucherverification') }}" class="btn btn-sm btn-outline-secondary px-3"
                    style="border-color: #dcdcdc; color: #333; background: #fff;">
                    <i class="fa fa-arrow-left me-1"></i> Back to Dashboard
                </a>
            </div>

            {{-- Header --}}
            <div class="vv-header p-3 d-flex align-items-center justify-content-between flex-wrap gap-2 mb-4">
                <div>
                    <h4 class="report-header-title m-0"><i class="fa fa-bar-chart me-2"></i>User Wise Entry Report</h4>
                    <p class="report-header-subtitle">View user wise voucher entry summary and details</p>
                </div>
                <div class="d-flex gap-2">
                    <button class="btn btn-success btn-sm px-3 text-white d-flex align-items-center gap-1"
                        id="exportExcelBtn" style="background-color: #2ec4b6; border: none;">
                        <i class="fa fa-file-excel-o"></i> Export to Excel
                    </button>
                    {{-- <button class="btn btn-light btn-sm px-3 d-flex align-items-center gap-1 text-primary"
                        id="printReportBtn" style="border: none;">
                        <i class="fa fa-print"></i> Print Report
                    </button> --}}
                </div>
            </div>

            {{-- Filters --}}
            <div class="card shadow-sm border-0 mb-4" style="border-radius: 8px;">
                <div class="card-body p-3">
                    <div class="row g-3 align-items-end">
                        <div class="col-12 col-md-2">
                            <label class="form-label text-muted mb-1" style="font-size:12px; font-weight: 500;">From
                                Date</label>
                            <input type="date" id="fromDate" class="form-control form-control-sm"
                                value="{{ $fromDate }}">
                        </div>
                        <div class="col-12 col-md-2">
                            <label class="form-label text-muted mb-1" style="font-size:12px; font-weight: 500;">To
                                Date</label>
                            <input type="date" id="toDate" class="form-control form-control-sm"
                                value="{{ $toDate }}">
                        </div>
                        <div class="col-12 col-md-2">
                            <label class="form-label text-muted mb-1" style="font-size:12px; font-weight: 500;">Voucher
                                Type</label>
                            <select id="voucherType" class="form-select form-select-sm">
                                <option value="">-- ALL --</option>
                                @foreach ($voucherTypes as $vt)
                                    <option value="{{ $vt->vtype }}"
                                        {{ ($selectedVType ?? '') == $vt->vtype ? 'selected' : '' }}>
                                        {{ $vt->description }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-12 col-md-2">
                            <label class="form-label text-muted mb-1"
                                style="font-size:12px; font-weight: 500;">User</label>
                            <select id="userFilter" class="form-select form-select-sm">
                                <option value="">-- ALL --</option>
                                @foreach ($users as $u)
                                    <option value="{{ $u->u_name }}"
                                        {{ ($selectedUser ?? '') == $u->u_name ? 'selected' : '' }}>
                                        {{ $u->u_name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-12 col-md-2 d-flex gap-2">
                            <button class="btn btn-sm btn-primary px-3 flex-grow-1" id="searchBtn"
                                style="background-color: #3b59f6; border: none;">
                                <i class="fa fa-search me-1"></i> Search
                            </button>
                            <button class="btn btn-sm btn-outline-secondary px-2 bg-white" id="clearBtn"
                                style="color: #6c757d;">
                                <i class="fa fa-refresh"></i> Clear
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Metric Cards --}}
            <div class="row g-3 mb-4">
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="card border-0 shadow-sm h-100" style="background-color: #f0f4ff; border-radius: 8px;">
                        <div class="card-body p-3 d-flex align-items-center gap-3">
                            <div class="rounded-3 d-flex align-items-center justify-content-center bg-white border-0 shadow-sm"
                                style="width:46px; height:46px; color:#3b59f6; font-size:20px;">
                                <i class="fa fa-file-text-o"></i>
                            </div>
                            <div>
                                <div class="metric-card-title">Total Users</div>
                                <div class="metric-card-value" style="color: #3b59f6;">{{ count($data) }}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="card border-0 shadow-sm h-100" style="background-color: #ebfaf4; border-radius: 8px;">
                        <div class="card-body p-3 d-flex align-items-center gap-3">
                            <div class="rounded-3 d-flex align-items-center justify-content-center bg-white border-0 shadow-sm"
                                style="width:46px; height:46px; color:#2ec4b6; font-size:20px;">
                                <i class="fa fa-pencil-square-o"></i>
                            </div>
                            <div>
                                <div class="metric-card-title">Total Vouchers</div>
                                <div class="metric-card-value" style="color: #2ec4b6;">
                                    {{ number_format($data->sum('total_vouchers')) }}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="card border-0 shadow-sm h-100" style="background-color: #f5eeff; border-radius: 8px;">
                        <div class="card-body p-3 d-flex align-items-center gap-3">
                            <div class="rounded-3 d-flex align-items-center justify-content-center bg-white border-0 shadow-sm"
                                style="width:46px; height:46px; color:#723dbe; font-size:20px;">
                                <i class="fa fa-database"></i>
                            </div>
                            <div>
                                <div class="metric-card-title">Total Debit</div>
                                <div class="metric-card-value" style="color:#723dbe;">
                                    {{ number_format($data->sum('total_debit'), 2) }}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="card border-0 shadow-sm h-100" style="background-color: #fff6eb; border-radius: 8px;">
                        <div class="card-body p-3 d-flex align-items-center gap-3">
                            <div class="rounded-3 d-flex align-items-center justify-content-center bg-white border-0 shadow-sm"
                                style="width:46px; height:46px; color:#ff9f1c; font-size:20px;">
                                <i class="fa fa-money"></i>
                            </div>
                            <div>
                                <div class="metric-card-title">Total Credit</div>
                                <div class="metric-card-value" style="color:#ff9f1c;">
                                    {{ number_format($data->sum('total_credit'), 2) }}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg">
                    <div class="card border-0 shadow-sm h-100" style="background-color: #fff0f0; border-radius: 8px;">
                        <div class="card-body p-3 d-flex align-items-center gap-3">
                            <div class="rounded-3 d-flex align-items-center justify-content-center bg-white border-0 shadow-sm"
                                style="width:46px; height:46px; color:#ea4335; font-size:20px;">
                                <i class="fa fa-calculator"></i>
                            </div>
                            <div>
                                <div class="metric-card-title">Average Per User</div>
                                <div class="metric-card-value" style="color:#ea4335;">
                                    {{ count($data) > 0 ? round($data->sum('total_vouchers') / count($data)) : 0 }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Summary Table --}}
            <div class="card shadow-sm border-0 mb-4" style="border-radius: 8px;">
                <div class="card-body p-3">
                    <div class="table-summary-title mb-3">User Wise Summary</div>
                    <div class="table-responsive">
                        <table id="summaryDataTable" class="table table-bordered table-hover align-middle w-100 m-0"
                            style="font-size: 13px;">
                            <thead class="table-light text-nowrap">
                                <tr>
                                    <th style="background-color: #f8f9fa;">Sr. No.</th>
                                    <th style="background-color: #f8f9fa;">User Name</th>
                                    <th class="text-end" style="background-color: #f8f9fa;">Total Vouchers</th>
                                    <th class="text-end" style="background-color: #f8f9fa;">Total Debit</th>
                                    <th class="text-end" style="background-color: #f8f9fa;">Total Credit</th>
                                    <th style="background-color: #f8f9fa;">Last Entry Date</th>
                                    <th class="text-center" style="background-color: #f8f9fa;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($data as $i => $row)
                                    <tr>
                                        <td>{{ $i + 1 }}</td>
                                        <td>{{ $row->u_name ?? '—' }}</td>
                                        <td class="text-end fw-semibold">{{ number_format($row->total_vouchers) }}</td>
                                        <td class="text-end">{{ number_format($row->total_debit, 2) }}</td>
                                        <td class="text-end">{{ number_format($row->total_credit, 2) }}</td>
                                        <td class="text-muted">{{ $row->last_entry_date ?? '—' }}</td>
                                        <td class="text-center">
                                            <button class="btn btn-sm btn-outline-primary view-btn py-0 px-2"
                                                style="font-size: 12px; color: #3b59f6; border-color: #3b59f6;"
                                                data-uname="{{ $row->u_name }}">
                                                <i class="fa fa-eye"></i> View
                                            </button>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="7" class="text-center text-muted py-4">No data found for selected
                                            filters.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                            <tfoot class="table-light">
                                <tr class="fw-bold" style="background-color: #f8f9fa;">
                                    <td colspan="2" class="text-center">Total</td>
                                    <td class="text-end">{{ number_format($data->sum('total_vouchers')) }}</td>
                                    <td class="text-end">{{ number_format($data->sum('total_debit'), 2) }}</td>
                                    <td class="text-end">{{ number_format($data->sum('total_credit'), 2) }}</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>

            {{-- Bottom Section: Chart + User Detail --}}
            <div class="row g-4 mb-4" id="bottomSection">
                <div class="col-12 col-lg-6">
                    <div class="card shadow-sm border-0 h-100" style="border-radius: 8px;">
                        <div class="card-body p-3">
                            <div class="table-summary-title mb-3" style="font-size:14px;">User Entry Trend (Vouchers)
                            </div>
                            <div style="height:260px; position: relative;">
                                <canvas id="userChart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="card shadow-sm border-0 h-100" style="border-radius: 8px;">
                        <div class="card-body p-3 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex align-items-center gap-1 mb-1">
                                    <span class="table-summary-title" style="font-size:14px;">
                                        <i class="fa fa-user" style="color: #3b59f6;"></i> Selected User Detail
                                    </span>
                                </div>
                                <div id="selectedUserName" class="text-muted fw-semibold small mb-3">
                                    <i class="fa fa-info-circle me-1"></i> Select a user row above to see metrics breakdown
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered align-middle m-0" id="userDetailTable"
                                        style="font-size:12px;">
                                        <thead class="table-light text-nowrap fw-semibold">
                                            <tr>
                                                <th>Voucher Type</th>
                                                <th class="text-end">Total Vouchers</th>
                                                <th class="text-end">Total Debit</th>
                                                <th class="text-end">Total Credit</th>
                                                <th class="text-end">Approved</th>
                                                <th class="text-end">Rejected</th>
                                                <th class="text-end">Pending</th>
                                            </tr>
                                        </thead>
                                        <tbody id="userDetailTbody">
                                            <tr>
                                                <td colspan="7" class="text-center text-muted py-4">
                                                    Click "View" on any row to see details.
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot class="table-light fw-bold text-nowrap">
                                            <tr>
                                                <td>Total</td>
                                                <td class="text-end" id="udTotal">0</td>
                                                <td class="text-end" id="udDebit">0.00</td>
                                                <td class="text-end" id="udCredit">0.00</td>
                                                <td class="text-end text-success" id="udApproved">0</td>
                                                <td class="text-end text-danger" id="udRejected">0</td>
                                                <td class="text-end text-warning" id="udPending">0</td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                            <div id="viewAllBtnWrap" style="display:none;" class="text-end mt-3">
                                <button class="btn btn-sm btn-primary px-3" id="viewAllBtn"
                                    style="background-color: #3b59f6; border: none;">
                                    View All Vouchers <i class="fa fa-arrow-right ms-1"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-muted py-2 mb-3 small">
                <i class="fa fa-info-circle"></i> <strong>Note:</strong> This report shows user wise voucher entry summary
                based on selected date range and filters.
            </div>

        </div>
    </div>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.2/css/buttons.bootstrap5.min.css">
    <script src="https://cdn.datatables.net/buttons/2.4.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.html5.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>

    <script>
        let selectedUser = null;
        let chartInstance = null;
        let dtTable = null;

        $(document).ready(function() {

            $('#searchBtn').on('click', function() {
                $(this).prop('disabled', true);
                window.location.href =
                    `?fromDate=${$('#fromDate').val()}&toDate=${$('#toDate').val()}&voucherType=${$('#voucherType').val()}&user=${$('#userFilter').val()}`;
            });

            $('#clearBtn').on('click', function() {
                $(this).prop('disabled', true);
                window.location.href = window.location.pathname;
            });

            dtTable = $('#summaryDataTable').DataTable({
                destroy: true,
                pageLength: 10,
                lengthMenu: [
                    [5, 10, 25, 50, -1],
                    [5, 10, 25, 50, 'All']
                ],
                ordering: true,
                searching: true,
                responsive: true,
                dom: "<'row'<'col-sm-12 col-md-6'l><'col-sm-12 col-md-6'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
                buttons: [{
                    extend: 'excelHtml5',
                    text: 'Export Excel',
                    title: 'User Wise Entry Report',
                    filename: 'UserWiseReport_{{ $fromDate }}_{{ $toDate }}',
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5]
                    },
                    customize: function(xlsx) {
                        var sheet = xlsx.xl.worksheets['sheet1.xml'];
                        $('row:first c', sheet).attr('s', '2');
                    }
                }],
                columnDefs: [{
                    orderable: false,
                    targets: [0, 6]
                }],
                language: {
                    search: "Search:",
                    lengthMenu: "Show _MENU_ entries"
                },
                initComplete: function() {
                    $('.dataTables_length select').addClass(
                        'form-select form-select-sm d-inline-block w-auto ms-1');
                    $('.dataTables_filter input').addClass(
                        'form-control form-control-sm d-inline-block w-auto ms-1');
                }
            });

            $('#exportExcelBtn').on('click', function() {
                dtTable.button(0).trigger();
            });

            renderChart();

            $(document).on('click', '.view-btn', function(e) {
                e.stopPropagation();
                loadUserDetail($(this).data('uname'), $(this));
            });

        });

        function renderChart() {
            const labels = @json($data->pluck('u_name'));
            const values = @json($data->pluck('total_vouchers'));

            if (chartInstance) {
                chartInstance.destroy();
            }
            if (!labels.length) return;

            chartInstance = new Chart(document.getElementById('userChart').getContext('2d'), {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Vouchers',
                        data: values,
                        backgroundColor: '#3b59f6',
                        borderRadius: 2,
                        barThickness: 28
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        x: {
                            grid: {
                                display: false
                            },
                            ticks: {
                                font: {
                                    size: 11
                                }
                            }
                        },
                        y: {
                            beginAtZero: true,
                            ticks: {
                                font: {
                                    size: 11
                                }
                            }
                        }
                    }
                }
            });
        }

        function loadUserDetail(uname, triggerElement) {
            if (!uname) return;
            selectedUser = uname;

            $('.view-btn').prop('disabled', true);
            $('#summaryDataTable tbody tr').removeClass('table-active');
            triggerElement.closest('tr').addClass('table-active');

            $('#selectedUserName').html(`<i class="fa fa-user" style="color: #3b59f6;"></i> ${uname.toUpperCase()}`);
            $('#userDetailTbody').html(
                '<tr><td colspan="7" class="text-center py-3"><i class="fa fa-spinner fa-spin"></i> Processing...</td></tr>'
                );

            $.ajax({
                url: '{{ route('userwise.detail') }}',
                type: 'GET',
                data: {
                    u_name: uname,
                    fromDate: $('#fromDate').val(),
                    toDate: $('#toDate').val()
                },
                success: function(res) {
                    $('.view-btn').prop('disabled', false);
                    if (res.success && res.data.length > 0) {
                        let html = '',
                            tv = 0,
                            td = 0,
                            tc = 0,
                            ta = 0,
                            tr_ = 0,
                            tp = 0;
                        res.data.forEach(function(item) {
                            tv += parseInt(item.total_vouchers) || 0;
                            td += parseFloat(item.total_debit) || 0;
                            tc += parseFloat(item.total_credit) || 0;
                            ta += parseInt(item.approved) || 0;
                            tr_ += parseInt(item.rejected) || 0;
                            tp += parseInt(item.pending) || 0;

                            html += `<tr>
                                <td class="fw-semibold">${item.vtype ?? ''}</td>
                                <td class="text-end">${item.total_vouchers ?? 0}</td>
                                <td class="text-end">${formatAmt(item.total_debit)}</td>
                                <td class="text-end">${formatAmt(item.total_credit)}</td>
                                <td class="text-end text-success fw-bold">${item.approved ?? 0}</td>
                                <td class="text-end text-danger fw-bold">${item.rejected ?? 0}</td>
                                <td class="text-end text-warning fw-bold">${item.pending ?? 0}</td>
                            </tr>`;
                        });
                        $('#userDetailTbody').html(html);
                        $('#udTotal').text(tv);
                        $('#udDebit').text(formatAmt(td));
                        $('#udCredit').text(formatAmt(tc));
                        $('#udApproved').text(ta);
                        $('#udRejected').text(tr_);
                        $('#udPending').text(tp);
                        $('#viewAllBtnWrap').show();
                    } else {
                        $('#userDetailTbody').html(
                            '<tr><td colspan="7" class="text-center text-muted py-3">No data found.</td></tr>'
                            );
                        $('#viewAllBtnWrap').hide();
                    }
                },
                error: function() {
                    $('.view-btn').prop('disabled', false);
                    $('#userDetailTbody').html(
                        '<tr><td colspan="7" class="text-center text-danger py-3">Failed to load data.</td></tr>'
                        );
                }
            });
        }

        function formatAmt(val) {
            return (parseFloat(val) || 0).toLocaleString('en-IN', {
                minimumFractionDigits: 2,
                maximumFractionDigits: 2
            });
        }
    </script>
@endsection
