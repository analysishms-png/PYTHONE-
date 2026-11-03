<!DOCTYPE html>
<html>
@php
    $first = $purchaseData->first();
@endphp

<head>
    <meta charset="UTF-8">
    <title>Purchase Bill</title>
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
            font-family: Arial, sans-serif;
            margin: 40px;
        }

        h2,
        h3 {
            text-align: center;
            margin: 0;
        }

        .center {
            text-align: center;
        }

        .bill-header,
        .bill-footer {
            text-transform: capitalize;
            margin-top: 20px;
            font-size: 14px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
            margin-top: 20px;
        }

        table,
        th,
        td {
            border: 1px solid #000;
        }

        th,
        td {
            padding: 6px;
            text-align: left;
        }

        .totals td {
            border: none;
            text-align: right;
            padding-right: 40px;
        }

        .signatures {
            margin-top: 20px;
        }

        .signatures div {
            display: inline-block;
            width: 30%;
            text-align: center;
        }
    </style>
</head>

<body>
    <h2>{{ $comp->comp_name }}</h2>
    <div class="center">{{ $comp->address1 }}</div>
    <h3>Purchase Bill</h3>

    @php
        $first = $purchaseData->first();
    @endphp

    <div class="bill-header">
        <strong>Type:</strong> {{ $first->InvoiceType ?? 'Purchase Bill' }} &nbsp;&nbsp;
        <strong>Voucher No.:</strong> {{ $first->vno ?? '' }} &nbsp;&nbsp;
        <strong>Date:</strong> {{ \Carbon\Carbon::parse($first->vdate)->format('d/m/y') ?? '' }}<br>
        <strong>Party Name:</strong> {{ $first->PartyName ?? '' }} &nbsp;&nbsp;
        <strong>Party Bill No.:</strong> {{ $first->partybillno ?? '' }} &nbsp;&nbsp;
        <strong>Bill Date:</strong> {{ \Carbon\Carbon::parse($first->partybilldt)->format('d/m/y') ?? '' }}<br>
        <strong>Party Address:</strong> {{ $first->PartyAddress ?? '' }}<br>
        <strong>GSTIN:</strong> {{ $first->gstno ?? '' }}
        @if ($first->delflag == 'Y')
            <br>
            <b class="text-danger">This record has been deleted.</b>
        @endif
    </div>

    <table>
        <thead>
            <tr>
                <th>S.No.</th>
                <th>Item Name</th>
                <th>Unit</th>
                <th>Qty</th>
                <th>Rate</th>
                <th>Amount</th>
                <th>Godown</th>
                <th>Ac Name</th>
                <th>Last Rate</th>
                <th>MR No.</th>
            </tr>
        </thead>
        <tbody>
            @php
                $sn = 1;
            @endphp
            @foreach ($purchaseData as $item)
                <tr>
                    <td>{{ $sn++ }}</td>
                    <td>{{ $item->ItemName }}</td>
                    <td>{{ $item->Unit }}</td>
                    <td>{{ number_format($item->Qty, 3) }}</td>
                    <td>{{ number_format($item->itemrate, 2) }}</td>
                    <td>{{ number_format($item->amount, 2) }}</td>
                    <td>{{ $item->GodName }}</td>
                    <td>{{ $item->SaleAcName }}</td>
                    <td>{{ $item->LPurRate }}</td>
                    <td>{{ $item->mrno }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {{-- <div class="totals">
        <table class="totals-table">
            <tr>
                <td><strong>Total:</strong></td>
                <td>{{ number_format($first->total ?? 0, 2) }}</td>
            </tr>
            <tr>
                <td><strong>Discount:</strong></td>
                <td>{{ number_format($first->discamt ?? 0, 2) }}</td>
            </tr>
            @foreach ($suntranData as $row)
                <tr>
                    <td><strong>{{ strtoupper($row->dispname) }}</strong></td>
                    <td>{{ number_format($row->amount, 2) }}</td>
                </tr>
            @endforeach
            <tr>
                <td><strong>ROUND OFF:</strong></td>
                <td>{{ number_format($first->roundoff ?? 0, 2) }}</td>
            </tr>
            <tr>
                <td><strong>NET AMOUNT:</strong></td>
                <td>{{ number_format($first->netamt ?? 0, 2) }}</td>
            </tr>
        </table>
    </div> --}}

    <div class="totals">
        <table class="totals-table">
            {{-- Total sirf tab dikhao jab suntranData mein AMOUNT na ho --}}
            @php
                $hasAmount = $suntranData->contains(fn($r) => strtolower(trim($r->dispname)) == 'amount');
            @endphp

            {{-- suntranData loop - 0 wali rows skip karo --}}
            @foreach ($suntranData as $row)
                @if ($row->amount != 0 && strtoupper(trim($row->dispname)) != 'NET AMOUNT')
                    <tr>
                        <td><strong>{{ strtoupper($row->dispname) }}</strong></td>
                        <td>{{ number_format($row->amount, 2) }}</td>
                    </tr>
                @endif
            @endforeach


            {{-- NET AMOUNT sirf ek baar - last mein --}}
            <tr>
                <td><strong>NET AMOUNT:</strong></td>
                <td>{{ number_format($first->netamt ?? 0, 2) }}</td>
            </tr>
        </table>
    </div>
    <br>

    <div class="signatures">
        <div>Prepared By</div>
        <div>Checked By</div>
        <div>A/c Dept. / Auth. Signature</div>
    </div>

</body>

</html>
<script>
    setTimeout(() => {
        window.print();
    }, 1000);
</script>
