@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')

    <style>
        .titlep h3 { font-size: 1.2rem; font-weight: 700; margin-bottom: 2px; }
        .titlep p  { font-size: 0.85rem; margin-bottom: 2px; }

        #printContainer { display: none; }

        @media print {
            @page { size: A4 portrait; margin: 0.5cm; }
            body * { visibility: hidden; }
            #printContainer, #printContainer * { visibility: visible; }
            #printContainer {
                display: block !important;
                position: absolute;
                left: 0; top: 0;
                width: 100%; padding: 0; margin: 0;
            }
            .print-header-section {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                padding-bottom: 8px;
                border-bottom: 2px solid #000;
                margin-bottom: 8px;
            }
            .print-logo-box { width: 60px; height: 60px; display: flex; align-items: center; justify-content: center; }
            .print-logo-box img { max-width: 60px; max-height: 60px; object-fit: contain; }
            .print-company-details { flex: 1; text-align: center; padding: 0 15px; }
            .print-company-details h1 { font-size: 16px; font-weight: bold; margin: 0 0 4px 0; }
            .print-company-details p { font-size: 10px; margin: 2px 0; }
            .print-report-meta { text-align: right; font-size: 9px; min-width: 150px; }
            .print-report-meta p { margin: 3px 0; }
            .print-table-title {
                background: #e8e8e8 !important;
                color: #333 !important;
                padding: 6px 8px;
                text-align: center;
                font-weight: bold;
                font-size: 11px;
                margin: 8px 0 0 0;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }
            .print-data-table {
                width: 100%;
                border-collapse: collapse;
                border: 2px solid #000;
                margin-top: 0;
                table-layout: fixed;
            }
            .print-data-table th {
                background: #e8e8e8 !important;
                border: 1px solid #333;
                padding: 3px 2px;
                font-size: 9px;
                font-weight: bold;
                text-align: left;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }
            .print-data-table td {
                border: 1px solid #666;
                padding: 3px 2px;
                font-size: 9px;
                overflow: hidden;
                word-break: break-word;
            }
            .print-data-table .col-item { display: none; }
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow-sm">
                        <div class="card-body">

                            {{-- Header --}}
                            <div class="text-center titlep mb-4">
                                <h3>{{ companydata()->comp_name }}</h3>
                                <p class="mb-1">{{ companydata()->address1 }}</p>
                                <p class="mb-1">{{ $statename . ' - ' . companydata()->city . ' - ' . companydata()->pin }}</p>
                                <p class="mb-0 font-weight-bold">Stock Movement Report</p>
                            </div>

                            {{-- Filters --}}
                            <div class="row align-items-end mb-3">
                                <div class="col-md-3">
                                    <label class="col-form-label">From Date</label>
                                    <input type="date" id="fromdate" class="form-control" value="{{ $ncurdate }}">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label">To Date</label>
                                    <input type="date" id="todate" class="form-control" value="{{ $ncurdate }}">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label">Search Item</label>
                                    <input type="text" id="itemsearch" class="form-control" placeholder="Type item name...">
                                </div>
                                <div class="col-md-3 mt-3">
                                    <button id="refreshBtn" class="btn btn-success btn-block">
                                        <i class="fa-solid fa-rotate-right"></i> Refresh
                                    </button>
                                </div>
                            </div>

                            {{-- Loading --}}
                            <div id="loadingDiv" class="text-center mt-3" style="display:none;">
                                <div class="spinner-border text-primary" role="status"></div>
                                <p class="mt-2">Loading data...</p>
                            </div>

                            {{-- Table --}}
                            <div class="table-responsive mt-3" id="tableWrapper" style="display:none;">
                                <table id="stockmovementtable"
                                    class="table table-hover table-striped table-bordered">
                                    <thead class="bg-secondary text-white">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Date</th>
                                            <th>Type</th>
                                            <th>Vou No.</th>
                                            <th>Item</th>
                                            <th>Item Name</th>
                                            <th>From Dept</th>
                                            <th>To Dept</th>
                                            <th>In Qty</th>
                                            <th>Out Qty</th>
                                            <th>Running Balance</th>
                                            <th>Dept Balance</th>
                                        </tr>
                                    </thead>
                                    <tbody id="stockmovementtbody">
                                    </tbody>
                                </table>
                            </div>

                            {{-- No data --}}
                            <div id="nodataDiv" class="alert alert-warning mt-3" style="display:none;">
                                No data found for selected date range.
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Hidden Print Container --}}
    <div id="printContainer"></div>

    {{-- Hidden logo --}}
    <div id="logoData" style="display:none;">
        @php $logoPath = companylogo(); @endphp
        @if (!empty($logoPath) && file_exists($logoPath))
            <img src="data:image/png;base64,{{ base64_encode(file_get_contents($logoPath)) }}"
                 alt="Logo" id="companyLogo" style="max-width:60px; max-height:60px; object-fit:contain;">
        @endif
    </div>

    <script>
        let dtTable = null;

        $(document).ready(function() {
            fetchData();
            $('#refreshBtn').click(function() { fetchData(); });
        });

        function fetchData() {
            const fromdate   = $('#fromdate').val();
            const todate     = $('#todate').val();
            const itemsearch = $('#itemsearch').val();

            if (!fromdate || !todate) {
                alert('Please select From Date and To Date.');
                return;
            }

            $('#loadingDiv').show();
            $('#tableWrapper').hide();
            $('#nodataDiv').hide();

            if (dtTable) { dtTable.destroy(); dtTable = null; }
            $('#stockmovementtbody').empty();

            $.ajax({
                url: '{{ route("getstockmovementdata") }}',
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    fromdate: fromdate,
                    todate: todate,
                    itemsearch: itemsearch
                },
                success: function(response) {
                    $('#loadingDiv').hide();

                    if (!response || response.length === 0) {
                        $('#nodataDiv').show();
                        return;
                    }

                    let rows = '';
                    $.each(response, function(i, row) {
                        rows += `<tr>
                            <td>${i + 1}</td>
                            <td>${row.VDate ?? ''}</td>
                            <td>${row.VType ?? ''}</td>
                            <td>${row.VNo ?? ''}</td>
                            <td>${row.Item ?? ''}</td>
                            <td>${row.ItemName ?? ''}</td>
                            <td>${row.FromDepartment ?? ''}</td>
                            <td>${row.ToDepartment ?? ''}</td>
                            <td>${row.InQty ?? 0}</td>
                            <td>${row.OutQty ?? 0}</td>
                            <td>${row.TotalRunningBalance ?? 0}</td>
                            <td>${row.DepartmentBalance ?? 0}</td>
                        </tr>`;
                    });

                    $('#stockmovementtbody').html(rows);
                    $('#tableWrapper').show();

                    dtTable = new DataTable('#stockmovementtable', {
                        dom: 'Bfrtip',
                        ordering: true,
                        order: [],
                        pageLength: 25,
                        autoWidth: false,
                        columnDefs: [
                            { targets: 0, width: '3%' },   // Sn
                            { targets: 1, width: '8%' },   // Date
                            { targets: 2, width: '5%' },   // Type
                            { targets: 3, width: '5%' },   // Vou No
                            { targets: 4, width: '6%' },   // Item
                            { targets: 5, width: '14%' },  // Item Name
                            { targets: 6, width: '10%' },  // From Dept
                            { targets: 7, width: '10%' },  // To Dept
                            { targets: 8, width: '7%' },   // In Qty
                            { targets: 9, width: '7%' },   // Out Qty
                            { targets: 10, width: '8%' },  // Running Balance
                            { targets: 11, width: '8%' },  // Dept Balance
                        ],
                        buttons: [
                            'excel',
                            'pdf',
                            {
                                text: '<i class="fa fa-print"></i> Print',
                                action: function() { printReport(); }
                            }
                        ]
                    });
                },
                error: function(xhr) {
                    $('#loadingDiv').hide();
                    alert('Error fetching data: ' + xhr.responseText);
                }
            });
        }

        function printReport() {
            const logoHTML = $('#logoData').html().trim();
            const fromdate = $('#fromdate').val();
            const todate   = $('#todate').val();
            const now      = new Date();
            const reportDate   = now.toLocaleDateString('en-GB');
            const generatedAt  = now.toLocaleString('en-GB', {
                day: '2-digit', month: '2-digit', year: 'numeric',
                hour: '2-digit', minute: '2-digit', hour12: false
            }).replace(',', '');

            // Build table rows from tbody
            let tableRows = '';
            $('#stockmovementtbody tr').each(function() {
                let cells = '';
                $(this).find('td').each(function(idx) {
                    if (idx === 4) return; // Skip Item code column
                    cells += `<td>${$(this).text()}</td>`;
                });
                tableRows += `<tr>${cells}</tr>`;
            });

            let printHTML = `
                <div class="print-header-section">
                    <div class="print-logo-box">${logoHTML}</div>
                    <div class="print-company-details">
                        <h1>{{ companydata()->comp_name }}</h1>
                        <p>{{ companydata()->address1 }}</p>
                        <p>{{ $statename }} - {{ companydata()->city }} - {{ companydata()->pin }}</p>
                        <p><strong>Stock Movement Report</strong></p>
                    </div>
                    <div class="print-report-meta">
                        <p><strong>From:</strong> ${fromdate}</p>
                        <p><strong>To:</strong> ${todate}</p>
                        <p><strong>Generated:</strong> ${generatedAt}</p>
                    </div>
                </div>
                <table class="print-data-table">
                    <thead>
                        <tr>
                            <th style="width:3%">Sn.</th>
                            <th style="width:8%">Date</th>
                            <th style="width:5%">Type</th>
                            <th style="width:4%">Vou.</th>
                            <th style="width:16%">Item Name</th>
                            <th style="width:12%">From Dept</th>
                            <th style="width:12%">To Dept</th>
                            <th style="width:6%">In Qty</th>
                            <th style="width:6%">Out Qty</th>
                            <th style="width:6%">Run Bal</th>
                            <th style="width:6%">Dept Bal</th>
                        </tr>
                    </thead>
                    <tbody>${tableRows}</tbody>
                </table>
            `;

            $('#printContainer').html(printHTML);
            window.print();
        }
    </script>
@endsection
