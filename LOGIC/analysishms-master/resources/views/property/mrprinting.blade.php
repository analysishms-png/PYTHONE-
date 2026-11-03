<!DOCTYPE html>
<html lang="en">
@php
    $first = $ginData->first();
@endphp

<head>
    <meta charset="UTF-8">
    <title>Material Receipt / Credit Report</title>
    <style>
        @if ($first->delflag == 'Y')
            body::after {
                content: "CANCELLED";
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%) rotate(-25deg);
                font-size: 120px;
                font-weight: bold;
                color: red;
                opacity: 0.2;
                z-index: 9999;
                pointer-events: none;
                white-space: nowrap;
            }
        @endif
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 14px;
            margin: 40px;
            color: #333;
        }

        .header,
        .footer {
            text-align: center;
            margin-bottom: 20px;
        }

        .company-name {
            font-size: 22px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .company-address {
            font-size: 14px;
        }

        .report-title {
            font-size: 20px;
            font-weight: bold;
            margin-top: 10px;
            text-decoration: underline;
        }

        .doc-info {
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 15px;
            margin-top: 20px;
        }

        .info-row {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 10px;
        }

        .info-row div {
            flex: 1 1 50%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table,
        th,
        td {
            border: 1px solid #ccc;
        }

        th,
        td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f0f0f0;
            font-weight: bold;
        }

        .remarks,
        .signatures {
            border: 1px solid #ccc;
            background-color: #f1f1f1;
            border-radius: 8px;
            padding: 15px;
            margin-top: 20px;
        }

        .signatures div {
            margin-bottom: 8px;
        }

        .footer {
            font-size: 13px;
            margin-top: 50px;
            color: #555;
        }

        .no-data {
            text-align: center;
            font-size: 18px;
            margin-top: 40px;
        }
    </style>
</head>

<body>

    <div class="header">
        <div class="company-name">{{ $comp->comp_name }}</div>
        <div class="company-address">{{ $comp->address1 }}</div>
        <div class="company-address">{{ $comp->address2 }}</div>
        <div class="report-title">MR Entry</div>
    </div>



    @if ($ginData->isNotEmpty())

        <div class="doc-info">
            <div class="info-row">
                <div><strong>Type:</strong> {{ $first->Type }}</div>
                <div><strong>GIN No.:</strong> {{ $first->MRNo }}</div>
            </div>
            <div class="info-row">
                <div><strong>Party Name:</strong> {{ $first->PartyName }}</div>
                <div><strong>Date:</strong> {{ \Carbon\Carbon::parse($first->Date)->format('d/m/y') }}</div>
            </div>
            <div class="info-row">
                <div><strong>Chalan No.:</strong> {{ $first->ChalanNo }}</div>
                <div><strong>Chalan Date:</strong> {{ \Carbon\Carbon::parse($first->ChakanDate)->format('d/m/y') }}</div>
            </div>
            <div class="info-row">
                <div><strong>Memo/Inv. No.:</strong> {{ $first->MemoInvNo }}</div>
                <div><strong>Invoice Date:</strong> {{ \Carbon\Carbon::parse($first->InvoiceDate)->format('d/m/y') }}</div>
            </div>
        </div>

        <table>
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Item Name</th>
                    <th>Unit</th>
                    <th>Chalan Qty</th>
                    <th>Rec Qty</th>
                    <th>Rej Qty</th>
                    <th>Rate</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($ginData as $row)
                    <tr>
                        <td>{{ $row->Sno }}</td>
                        <td style="text-align: left;">{{ $row->ItemName }}</td>
                        <td>{{ $row->Unit }}</td>
                        <td>{{ number_format($row->ChalanQty, 2) }}</td>
                        <td>{{ number_format($row->RecdQty, 2) }}</td>
                        <td>{{ number_format($row->RejQty, 2) }}</td>
                        <td>{{ number_format($row->Rate, 2) }}</td>
                        <td>{{ number_format($row->Amount, 2) }}</td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="7" style="text-align: right; font-weight: bold;">Total Amount</td>
                    <td style="font-weight: bold;">{{ number_format($ginData->sum('Amount'), 2) }}</td>
                </tr>
            </tfoot>
        </table>

        <div class="signatures">
            <div><strong>Inspected By:</strong> {{ $first->InspBy ?? '.' }}</div>
            <div><strong>Approved By:</strong> {{ $first->ApprBy ?? '.' }}</div>
            <div><strong>Puch. Manager:</strong></div>
            <div><strong>Auth. Signatory:</strong></div>
        </div>

        <div class="remarks">
            <strong>Remarks:</strong> {{ $first->remark ?? '-' }}
        </div>
    @else
        <div class="no-data">No record found for this MR No.</div>
    @endif

    <div class="footer">
        <p>Generated on {{ now()->format('d-m-Y H:i') }}</p>
    </div>

</body>

</html>
<script>
    window.onload = function() {
        window.print();
    };
</script>