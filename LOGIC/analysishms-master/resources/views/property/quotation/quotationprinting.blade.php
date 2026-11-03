<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Material Receipt / Credit Report</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 14px;
            margin: 40px;
            color: #333;
        }
        .header, .footer {
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
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f0f0f0;
            font-weight: bold;
        }
        .remarks, .signatures {
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
    <div class="report-title">Quotation Entry</div>
</div>

@if(!is_null($data))

    @php $first = $data->first();
         $item = $data->items;
    @endphp

    <div class="doc-info">
        <div class="info-row">
            {{-- <div><strong>Type:</strong> {{ $first->vtype }}</div> --}}
            {{-- <div><strong>GIN No.:</strong> {{ $first->MRNo }}</div> --}}
        </div>
         @php
                    $partyName = \App\Models\SubGroup::where('propertyid', $first->propertyid)
                        ->where('sub_code', $first->partycode)
                        ->value('name');
                    $partyName = $partyName ?? 'Unknown Party';
                @endphp
        <div class="info-row">
            <div><strong>Party Name:</strong> {{ $partyName }}</div>
            <div><strong>Date:</strong> {{ \Carbon\Carbon::parse($first->Date)->format('d/m/y') }}</div>
        </div>
        <div class="info-row">
            <div><strong>Quotation. No.:</strong> {{ $first->quotno }}</div>
            <div><strong>Quotation Date:</strong> {{ \Carbon\Carbon::parse($first->quotdate)->format('d/m/y') }}</div>
            <div><strong>Valied Date:</strong> {{ \Carbon\Carbon::parse($first->valiedup)->format('d/m/y') }}</div>
        </div>
    </div>

    <table>
        <thead>
            <tr>
                <th>S.No</th>
                <th>Item Name</th>
                <th>Unit</th>
                <th>Qty</th>
                {{-- <th>In-Stock</th> --}}
                <th>Rate</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>
            @foreach($item as $row)
             <!-- Get- Item Name -->
                @php
                    $itemName = \App\Models\ItemMast::where('Property_ID', $first->propertyid)
                        ->where('Code', $row->itemcode)
                        ->value('Name');
                    $row->ItemName = $itemName ?? 'Unknown Item';
                    $unit = \App\Models\UnitMast::where('propertyid', $first->propertyid)
                        ->where('ucode', $row->unit)
                        ->value('name');
                    $row->unit = $unit ?? 'Unknown Unit';
                @endphp
                <tr>
                    <td>{{ $row->sno }}</td>
                    <td style="text-align: left;">{{ $row->ItemName }}</td>
                    <td>{{ $row->unit }}</td>
                    <td>{{ $row->qty }}</td>
                    {{-- <td>{{ $row->instock }}</td> --}}
                    <td>{{ number_format($row->rate, 2) }}</td>
                    <td>{{ number_format($row->amount, 2) }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {{-- <div class="signatures">
        <div><strong>Inspected By:</strong> {{ $first->InspBy ?? '.' }}</div>
        <div><strong>Approved By:</strong> {{ $first->ApprBy ?? '.' }}</div>
        <div><strong>Puch. Manager:</strong></div>
        <div><strong>Auth. Signatory:</strong></div>
    </div> --}}

    <div class="remarks">
        <strong>Remarks:</strong> {{ $first->remark ?? '-' }}
    </div>

@else
    <div class="no-data">No record found for this PO No.</div>
@endif

<div class="footer">
    <p>Generated on {{ now()->format('d-m-Y H:i') }}</p>
</div>

</body>
</html>
