@extends('property.layouts.main')

@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <style>
        .titlep h3 { font-size: 1.2rem; font-weight: 700; margin-bottom: 2px; }
        .titlep p  { font-size: 0.85rem; margin-bottom: 2px; }
        .custom-header {
            background: #2c3e50; color: #fff;
            padding: 8px 14px; font-weight: 600;
            font-size: 0.9rem; border-radius: 4px 4px 0 0;
        }
        .tabulator { border: 1px solid #dee2e6; }
        .tabulator .tabulator-header { background: #f1f3f5; }
        .tabulator .tabulator-col-title { font-weight: 600; font-size: 0.82rem; }
        .tabulator .tabulator-cell { font-size: 0.82rem; padding: 5px 8px; }
        .tabulator .tabulator-row:nth-child(even) { background: #f9f9f9; }
        .tabulator .tabulator-row:hover { background: #e8f4fd !important; }
        .balance-dr { color: #c0392b; font-weight: 600; }
        .balance-cr { color: #27ae60; font-weight: 600; }
        #validation-msg { font-size: 0.85rem; }
        .btn-sm { font-size: 0.82rem; }
        .summary-box {
            border: 1px solid #dee2e6; border-radius: 6px;
            padding: 10px 16px; background: #fff;
            display: inline-block; min-width: 140px; text-align: center;
        }
        .summary-box .lbl { font-size: 0.75rem; color: #6c757d; }
        .summary-box .val { font-size: 1rem; font-weight: 700; }
        .val-dr { color: #c0392b; }
        .val-cr { color: #27ae60; }

        /* Print container - hidden on screen */
        #printContainer {
            display: none;
        }

        /* Print specific styles */
        @media print {
            @page {
                size: A4 portrait;
                margin: 0.8cm;
            }
            
            body {
                margin: 0;
                padding: 0;
            }
            
            body * {
                visibility: hidden;
            }
            
            #printContainer, #printContainer * {
                visibility: visible;
            }
            
            #printContainer {
                display: block !important;
                position: absolute;
                left: 0;
                top: 0;
                width: 100%;
                padding: 0;
                margin: 0;
            }
            
            .print-header-section {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                padding-bottom: 8px;
                border-bottom: 2px solid #000;
                margin-bottom: 8px;
            }
            
            .print-logo-box {
                width: 50px;
                height: 50px;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            
            .print-company-details {
                flex: 1;
                text-align: center;
                padding: 0 15px;
            }
            
            .print-company-details h1 {
                font-size: 16px;
                font-weight: bold;
                margin: 0 0 4px 0;
            }
            
            .print-company-details p {
                font-size: 10px;
                margin: 2px 0;
            }
            
            .print-report-meta {
                text-align: right;
                font-size: 9px;
                min-width: 150px;
            }
            
            .print-report-meta p {
                margin: 3px 0;
            }
            
            .print-table-title {
                background: #e8e8e8 !important;
                color: #333 !important;
                padding: 8px;
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
                padding: 5px 4px;
                font-size: 10px;
                font-weight: bold;
                text-align: left;
                word-wrap: break-word;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }
            
            .print-data-table td {
                border: 1px solid #666;
                padding: 5px 4px;
                font-size: 10px;
                word-wrap: break-word;
            }
            
            .print-data-table .text-right {
                text-align: right;
            }
            
            .print-data-table .total-row {
                background: #f5f5f5 !important;
                font-weight: bold;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow-sm">
                        <div class="card-body">

                            {{-- Header --}}
                            <div class="text-center titlep mb-3">
                                <h3>{{ companydata()->comp_name }}</h3>
                                <p class="mb-0">{{ companydata()->address1 }}</p>
                                <p class="mb-0">{{ $statename . ' - ' . companydata()->city . ' - ' . companydata()->pin }}</p>
                                <p class="mb-0 font-weight-bold">Cheque Cleared Register</p>
                            </div>

                            {{-- Filter Row --}}
                            <div class="row justify-content-center align-items-end mb-3">
                                <div class="col-auto">
                                    <label class="col-form-label">From Date</label>
                                    <input type="date" id="fromdate" class="form-control form-control-sm"
                                           value="{{ date('Y-m-01') }}">
                                </div>
                                <div class="col-auto">
                                    <label class="col-form-label">To Date</label>
                                    <input type="date" id="todate" class="form-control form-control-sm"
                                           value="{{ date('Y-m-d') }}">
                                </div>
                                <div class="col-auto">
                                    <label class="col-form-label">Bank Account</label>
                                    <select id="bankselect" class="form-control form-control-sm" style="min-width:200px;">
                                        <option value="">-- Select Bank --</option>
                                        @foreach($banks as $bank)
                                            <option value="{{ $bank->sub_code }}">{{ $bank->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-auto pt-2">
                                    <button type="button" id="refreshbutton" class="btn btn-success btn-sm mt-3">
                                        <i class="fa fa-sync-alt"></i> Refresh
                                    </button>
                                    <button type="button" id="printButton" class="btn btn-info btn-sm mt-3">
                                        <i class="fa fa-print"></i> Print
                                    </button>
                                    <button type="button" id="excelButton" class="btn btn-success btn-sm mt-3">
                                        <i class="fa fa-file-excel"></i> Excel
                                    </button>
                                </div>
                            </div>

                            <div id="validation-msg" class="text-danger text-center mb-2"></div>

                            {{-- Summary Row --}}
                            <div id="summaryRow" class="d-flex justify-content-center gap-3 mb-3" style="display:none!important; gap:12px;">
                                <div class="summary-box">
                                    <div class="lbl">Total Debit</div>
                                    <div class="val val-dr" id="sumDebit">0.00</div>
                                </div>
                                <div class="summary-box">
                                    <div class="lbl">Total Credit</div>
                                    <div class="val val-cr" id="sumCredit">0.00</div>
                                </div>
                                <div class="summary-box">
                                    <div class="lbl">Closing Balance</div>
                                    <div class="val" id="sumBalance">0.00</div>
                                </div>
                            </div>

                            {{-- Table --}}
                            <div class="mt-2">
                                <div class="custom-header" id="tableHeader">Cheque Cleared Register</div>
                                <div id="chqTable"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Hidden Print Container --}}
    <div id="printContainer"></div>
    
    {{-- Hidden logo for print --}}
    <div id="logoData" style="display:none;">
        @php
            $logoPath = companylogo();
        @endphp
        @if (!empty($logoPath) && file_exists($logoPath))
            <img src="data:image/png;base64,{{ base64_encode(file_get_contents($logoPath)) }}" 
                 alt="Logo" id="companyLogo" style="max-width: 50px; max-height: 50px; object-fit: contain;">
        @endif
    </div>

    <script>
    $(document).ready(function () {
        let table;
        
        // Get logo HTML from hidden div
        const logoHTML = $('#logoData').html().trim();

        function fmt(val) {
            if (val === null || val === undefined || val === '') return '';
            return parseFloat(val).toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        }

        function fmtDate(val) {
            if (!val) return '';
            // Convert YYYY-MM-DD to DD/MM/YYYY
            const parts = val.split('-');
            if (parts.length === 3) return parts[2] + '/' + parts[1] + '/' + parts[0];
            return val;
        }

        $('#refreshbutton').click(function () {
            $('#validation-msg').text('');
            const fromdate  = $('#fromdate').val();
            const todate    = $('#todate').val();
            const bankcode  = $('#bankselect').val();

            if (!fromdate || !todate) {
                $('#validation-msg').text('Please select From and To dates.');
                return;
            }
            if (!bankcode) {
                $('#validation-msg').text('Please select a Bank Account.');
                return;
            }

            $.ajax({
                url: "{{ route('fetchchequecleareddata') }}",
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    fromdate,
                    todate,
                    bankcode
                },
                success: function (response) {
                    $('#chqTable').empty();
                    $('#summaryRow').hide();
                    $('#printButton, #excelButton').hide();

                    if (!response || response.length === 0) {
                        $('#chqTable').html('<div class="alert alert-warning mt-2">No Data Found for selected criteria.</div>');
                        return;
                    }

                    // Compute summary
                    let totDr = 0, totCr = 0;
                    response.forEach(r => {
                        totDr += parseFloat(r.Debit  || 0);
                        totCr += parseFloat(r.Credit || 0);
                    });
                    const closing = totDr - totCr;
                    $('#sumDebit').text(fmt(totDr));
                    $('#sumCredit').text(fmt(totCr));
                    $('#sumBalance').text(fmt(Math.abs(closing)));
                    $('#sumBalance').removeClass('val-dr val-cr')
                        .addClass(closing >= 0 ? 'val-dr' : 'val-cr');
                    $('#summaryRow').show();

                    // Build table header info
                    const bankName = $('#bankselect option:selected').text();
                    const fd = fmtDate(fromdate), td = fmtDate(todate);
                    $('#tableHeader').text('Cheque Cleared Register | ' + bankName + ' | ' + fd + ' to ' + td);

                    table = new Tabulator('#chqTable', {
                        data: response,
                        layout: 'fitColumns',
                        height: 'auto',
                        placeholder: 'No Data Found',
                        columns: [
                            {
                                title: 'Clearing Dt.',
                                field: 'ClgDate',
                                width: 105,
                                formatter: function(cell) {
                                    return fmtDate(cell.getValue());
                                },
                                bottomCalc: function() { return '<strong>Total</strong>'; },
                                bottomCalcFormatter: "html"
                            },
                            { 
                                title: 'Cheque No.',  
                                field: 'ChqNo',      
                                width: 100,
                                bottomCalc: function() { return ''; }
                            },
                            {
                                title: 'Cheque Dt.',
                                field: 'ChqDate',
                                width: 100,
                                formatter: function(cell) {
                                    return fmtDate(cell.getValue());
                                },
                                bottomCalc: function() { return ''; }
                            },
                            { 
                                title: 'Vr No.',      
                                field: 'VrNo',       
                                width: 90,
                                bottomCalc: function() { return ''; }
                            },
                            { 
                                title: 'Particulars', 
                                field: 'Particular',  
                                widthGrow: 3,
                                bottomCalc: function() { return ''; }
                            },
                            {
                                title: 'Debit',
                                field: 'Debit',
                                hozAlign: 'right',
                                width: 110,
                                formatter: function(cell) {
                                    const v = cell.getValue();
                                    return (v && parseFloat(v) > 0)
                                        ? '<span class="balance-dr">' + fmt(v) + '</span>'
                                        : '';
                                },
                                bottomCalc: function(values, data) {
                                    return '<strong><span class="balance-dr">' + fmt(totDr) + '</span></strong>';
                                },
                                bottomCalcFormatter: "html"
                            },
                            {
                                title: 'Credit',
                                field: 'Credit',
                                hozAlign: 'right',
                                width: 110,
                                formatter: function(cell) {
                                    const v = cell.getValue();
                                    return (v && parseFloat(v) > 0)
                                        ? '<span class="balance-cr">' + fmt(v) + '</span>'
                                        : '';
                                },
                                bottomCalc: function(values, data) {
                                    return '<strong><span class="balance-cr">' + fmt(totCr) + '</span></strong>';
                                },
                                bottomCalcFormatter: "html"
                            },
                            {
                                title: 'Balance',
                                field: 'Balance',
                                hozAlign: 'right',
                                width: 120,
                                formatter: function(cell) {
                                    const v = parseFloat(cell.getValue() || 0);
                                    const cls = v >= 0 ? 'balance-dr' : 'balance-cr';
                                    return '<span class="' + cls + '">' + fmt(Math.abs(v)) + (v >= 0 ? ' Dr' : ' Cr') + '</span>';
                                },
                                bottomCalc: function(values, data) {
                                    const cls = closing >= 0 ? 'balance-dr' : 'balance-cr';
                                    const type = closing >= 0 ? 'Dr' : 'Cr';
                                    return '<strong><span class="' + cls + '">' + fmt(Math.abs(closing)) + ' ' + type + '</span></strong>';
                                },
                                bottomCalcFormatter: "html"
                            },
                            { 
                                title: 'Narration',   
                                field: 'Narration',  
                                widthGrow: 4,
                                bottomCalc: function() { return ''; }
                            },
                        ]
                    });

                    $('#printButton, #excelButton').show();
                },
                error: function () {
                    $('#chqTable').html('<div class="alert alert-danger mt-2">Error fetching data. Please try again.</div>');
                }
            });
        });

        $('#printButton').click(function () {
            if (!table) return;
            
            const data = table.getData();
            const bankName = $('#bankselect option:selected').text();
            const fromdate = $('#fromdate').val();
            const todate = $('#todate').val();
            const fd = fmtDate(fromdate), td = fmtDate(todate);
            
            // Get totals
            const totDr = $('#sumDebit').text();
            const totCr = $('#sumCredit').text();
            const totBal = $('#sumBalance').text();
            const balType = $('#sumBalance').hasClass('val-dr') ? 'Dr' : 'Cr';
            const balClass = $('#sumBalance').hasClass('val-dr') ? 'print-dr' : 'print-cr';
            
            // Current date/time
            const now = new Date();
            const reportDate = now.toLocaleDateString('en-GB');
            const generatedAt = now.toLocaleString('en-GB', { 
                day: '2-digit', month: '2-digit', year: 'numeric', 
                hour: '2-digit', minute: '2-digit', hour12: false 
            }).replace(',', '');
            
            // Build print HTML
            let printHTML = `
                <div class="print-header-section">
                    <div class="print-logo-box">
                        ${logoHTML || 'A'}
                    </div>
                    <div class="print-company-details">
                        <h1>{{ companydata()->comp_name }}</h1>
                        <p>{{ companydata()->address1 }}</p>
                        <p>{{ $statename }} - {{ companydata()->city }} - {{ companydata()->pin }}</p>
                        <p><strong>Cheque Cleared Register</strong></p>
                    </div>
                    <div class="print-report-meta">
                        <p><strong>Report Date:</strong> ${reportDate}</p>
                        <p><strong>Generated At:</strong> ${generatedAt}</p>
                    </div>
                </div>
                
                <div class="print-table-title">
                    Cheque Cleared Register | ${bankName} | ${fd} to ${td}
                </div>
                
                <table class="print-data-table">
                    <thead>
                        <tr>
                            <th style="width:9%;">Clearing Dt.</th>
                            <th style="width:9%;">Cheque No.</th>
                            <th style="width:9%;">Cheque Dt.</th>
                            <th style="width:7%;">Vr No.</th>
                            <th style="width:22%;">Particulars</th>
                            <th style="width:10%;" class="text-right">Debit</th>
                            <th style="width:10%;" class="text-right">Credit</th>
                            <th style="width:12%;" class="text-right">Balance</th>
                            <th style="width:12%;">Narration</th>
                        </tr>
                    </thead>
                    <tbody>
            `;
            
            // Add data rows
            data.forEach(row => {
                const debit = row.Debit && parseFloat(row.Debit) > 0 ? fmt(row.Debit) : '';
                const credit = row.Credit && parseFloat(row.Credit) > 0 ? fmt(row.Credit) : '';
                const balance = parseFloat(row.Balance || 0);
                const balText = fmt(Math.abs(balance)) + ' ' + (balance >= 0 ? 'Dr' : 'Cr');
                
                printHTML += `
                    <tr>
                        <td>${fmtDate(row.ClgDate)}</td>
                        <td>${row.ChqNo || ''}</td>
                        <td>${fmtDate(row.ChqDate)}</td>
                        <td>${row.VrNo || ''}</td>
                        <td>${row.Particular || ''}</td>
                        <td class="text-right">${debit}</td>
                        <td class="text-right">${credit}</td>
                        <td class="text-right">${balText}</td>
                        <td>${row.Narration || ''}</td>
                    </tr>
                `;
            });
            
            // Add total row at the end
            printHTML += `
                    <tr class="total-row">
                        <td colspan="5" style="text-align:right; padding-right:10px;"><strong>Total</strong></td>
                        <td class="text-right"><strong>${totDr}</strong></td>
                        <td class="text-right"><strong>${totCr}</strong></td>
                        <td class="text-right"><strong>${totBal} ${balType}</strong></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            `;
            
            // Insert into print container and print
            $('#printContainer').html(printHTML);
            window.print();
        });

        $('#excelButton').click(function () {
            if (table) table.download('xlsx', 'ChequeClearedRegister.xlsx');
        });
    });
    </script>
@endsection