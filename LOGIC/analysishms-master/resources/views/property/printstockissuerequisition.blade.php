<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stock Issue Requisition - Print</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            font-size: 14px;
        }
        
        .report-header {
            width: 100%;
            border-bottom: 3px solid #111827;
            padding: 0 0 15px 0;
            margin-bottom: 20px;
        }

        .header-table {
            width: 100%;
            border-collapse: collapse;
        }

        .header-table td {
            vertical-align: middle;
            border: none;
            padding: 5px;
        }

        .header-logo-cell {
            width: 80px;
            text-align: center;
        }

        .header-title-cell {
            padding: 0 15px;
            text-align: center;
        }

        .header-meta-cell {
            width: 200px;
            text-align: right;
        }

        .report-logo {
            width: 70px;
            max-height: 70px;
            object-fit: contain;
        }

        .report-header h1 {
            margin: 0 0 5px 0;
            font-size: 24px;
            font-weight: bold;
            color: #111827;
        }

        .report-header p {
            margin: 3px 0;
            font-size: 14px;
            color: #374151;
            font-weight: 500;
        }

        .report-header p.location-line strong {
            font-size: 14px;
            font-weight: bold;
            color: #111827;
        }

        .report-header p strong {
            font-size: 16px;
            color: #111827;
            letter-spacing: 1px;
        }

        .meta-row {
            width: 100%;
            border-collapse: collapse;
        }

        .meta-row td {
            font-size: 11px;
            padding: 3px 0;
            border: none;
            color: #374151;
        }

        .meta-right {
            text-align: right;
        }

        .meta-row strong {
            color: #111827;
        }
        
        .details {
            margin-bottom: 20px;
        }
        
        .details table {
            width: 100%;
            border-collapse: collapse;
        }
        
        .details td {
            padding: 5px;
            font-size: 13px;
        }
        
        .details td:first-child {
            width: 150px;
            font-weight: bold;
        }
        
        .items-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 11px;
        }
        
        .items-table th,
        .items-table td {
            border: 1px solid #ddd;
            padding: 4px 6px;
            text-align: left;
        }
        
        .items-table thead {
            border-bottom: 2px solid #000;
        }
        
        .items-table th {
            background-color: #f5f5f5;
            font-weight: bold;
            text-align: center;
            padding: 6px;
            font-size: 11px;
        }
        
        .items-table td:first-child {
            text-align: center;
            width: 40px;
        }
        
        .items-table td:nth-child(2) {
            width: 200px;
        }
        
        .items-table td:nth-child(3),
        .items-table td:nth-child(5),
        .items-table td:nth-child(6) {
            text-align: right;
            width: 70px;
        }
        
        .items-table td:nth-child(4) {
            text-align: center;
            width: 60px;
        }
        
        .total-row {
            background-color: #f5f5f5;
            font-weight: bold;
            border-top: 2px solid #000 !important;
        }
        
        .total-row td {
            font-weight: bold !important;
            padding: 8px 6px !important;
            border-top: 2px solid #000 !important;
            font-size: 11px;
        }
        
        .footer {
            margin-top: 40px;
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
        }
        
        .signature {
            text-align: center;
            width: 200px;
            position: relative;
        }
        
        .signature .username {
            margin-bottom: 10px;
            font-size: 12px;
            font-weight: 500;
        }
        
        .signature-line {
            border-top: 1px solid #111827;
            padding-top: 8px;
            font-size: 12px;
            font-weight: 500;
            color: #374151;
        }
        
        @media print {
            body {
                padding: 10px;
            }
            
            .no-print {
                display: none;
            }
        }
    </style>
</head>
<body>
    @if($stockIssueData->count() > 0)
    <div class="report-header">
        <table class="header-table">
            <tr>
                <td class="header-logo-cell">
                    @if (!empty($logoPath) && file_exists($logoPath))
                        <img alt="{{ $comp->comp_name }}"
                            src="data:image/png;base64,{{ base64_encode(file_get_contents($logoPath)) }}"
                            class="report-logo">
                    @endif
                </td>
                <td class="header-title-cell">
                    <h1>{{ $comp->comp_name ?? 'Company Name' }}</h1>
                    <p>{{ $comp->address1 ?? '' }}</p>
                    <p class="location-line"><strong>{{ $statename ?? '' }} - {{ $comp->city ?? '' }} - {{ $comp->pin ?? '' }}</strong></p>
                    <p><strong>STOCK ISSUE REQUISITION</strong></p>
                </td>
            </tr>
        </table>
    </div>

        <!-- Stock Issue Details -->
        <div class="details">
            <table>
                <tr>
                    <td>Issue No:</td>
                    <td>{{ $stockIssueData->first()->IssueNo }}</td>
                    <td>Date:</td>
                    <td>{{ date('d/M/y H:i', strtotime($stockIssueData->first()->IssueDate . ' ' . $stockIssueData->first()->vtime)) }}</td>
                </tr>
                <tr>
                    <td>From Godown:</td>
                    <td>{{ $stockIssueData->first()->FromGodown }}</td>
                    <td>To Location:</td>
                    <td>{{ $stockIssueData->first()->ToLocation }}</td>
                </tr>
                @if($stockIssueData->first()->Remark)
                <tr>
                    <td>Remarks:</td>
                    <td colspan="3">{{ $stockIssueData->first()->Remark }}</td>
                </tr>
                @endif
            </table>
        </div>

        <!-- Items Table -->
        <table class="items-table">
            <thead>
                <tr>
                    <th>Sr No</th>
                    <th>Item Name</th>
                    <th>Issued Qty</th>
                    <th>Unit</th>
                    <th>Rate</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $totalQuantity = 0;
                    $totalAmount = 0;
                @endphp
                @foreach($stockIssueData as $row)
                <tr>
                    <td>{{ $row->sno }}</td>
                    <td>{{ $row->ItemName }}</td>
                    <td style="text-align: right;">{{ number_format($row->IssuedQty, 2) }}</td>
                    <td style="text-align: center;">{{ $row->Unit }}</td>
                    <td style="text-align: right;">{{ number_format($row->Rate ?? 0, 2) }}</td>
                    <td style="text-align: right;">{{ number_format($row->Amount ?? 0, 2) }}</td>
                </tr>
                @php
                    $totalQuantity += $row->IssuedQty;
                    $totalAmount += $row->Amount ?? 0;
                @endphp
                @endforeach
                <!-- Total Row -->
                <tr class="total-row">
                    <td colspan="2" style="text-align: right; font-weight: bold;">Total:</td>
                    <td style="text-align: right; font-weight: bold;">{{ number_format($totalQuantity, 2) }}</td>
                    <td style="text-align: center;">&nbsp;</td>
                    <td style="text-align: right;">&nbsp;</td>
                    <td style="text-align: right; font-weight: bold;">{{ number_format($totalAmount, 2) }}</td>
                </tr>
            </tbody>
        </table>

        <!-- Footer with Signatures -->
        <div class="footer">
            <div class="signature">
                <div class="username">{{ $username ?? '_________________' }}</div>
                <div class="signature-line">Issued By</div>
            </div>
            <div class="signature">
                <div class="username">&nbsp;</div>
                <div class="signature-line">Approved By</div>
            </div>
            <div class="signature">
                <div class="username">&nbsp;</div>
                <div class="signature-line">Received By</div>
            </div>
        </div>
    @else
        <div style="text-align: center; margin-top: 50px;">
            <h3>No Data Found</h3>
            <p>Stock Issue Requisition data not available.</p>
        </div>
    @endif

    <!-- Auto Print Script -->
    <script>
        window.onload = function() {
            window.print();
        }
    </script>
</body>
</html>
