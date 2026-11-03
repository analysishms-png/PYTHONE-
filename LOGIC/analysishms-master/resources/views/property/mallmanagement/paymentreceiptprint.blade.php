@include('property.print._header', [
    'company' => $company,
    'title'   => 'Payment Receipt',
])

{{-- Receipt info --}}
<table>
    <tr>
        <td><b>Receipt No.</b></td>
        <td>{{ $vno }}</td>
        <td><b>Receipt Date</b></td>
        <td>{{ $receipt->vdate ? \Carbon\Carbon::parse($receipt->vdate)->format('d/m/Y') : '—' }}</td>
    </tr>
    <tr>
        <td><b>Tenant</b></td>
        <td colspan="3">{{ $receipt->tenantname ?? $receipt->tenantid }}</td>
    </tr>
    <tr>
        <td><b>Contact Person</b></td>
        <td>{{ $receipt->contactperson ?: '—' }}</td>
        <td><b>Mobile No.</b></td>
        <td>{{ $receipt->tenantmobile ?: ($receipt->mobileno ?? '—') }}</td>
    </tr>
    <tr>
        <td><b>Remarks</b></td>
        <td colspan="3">{{ $receipt->remarks ?: '—' }}</td>
    </tr>
</table>

{{-- Payment details --}}
<table>
    <thead>
        <tr>
            <th>Payment Mode</th>
            <th>Nature</th>
            <th>Reference / Cheque No.</th>
            <th>Card / Batch / Expiry</th>
            <th>Narration</th>
            <th class="text-right">Amount (Rs.)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{{ $receipt->paymodename ?? $receipt->paycode }}</td>
            <td>{{ $receipt->paytype ?: '—' }}</td>
            <td>{{ $receipt->refno ?: '—' }}</td>
            <td>
                @php
                    $cardBits = array_filter([
                        $receipt->cardno  ? 'Card: '  . $receipt->cardno  : null,
                        $receipt->batchno ? 'Batch: ' . $receipt->batchno : null,
                        $receipt->expdate ? 'Exp: '   . \Carbon\Carbon::parse($receipt->expdate)->format('m/Y') : null,
                    ]);
                @endphp
                {{ $cardBits ? implode(' | ', $cardBits) : '—' }}
            </td>
            <td>{{ $receipt->narration ?: '—' }}</td>
            <td class="text-right">{{ number_format((float) $receipt->receiptamount, 2) }}</td>
        </tr>
    </tbody>
</table>

{{-- Total --}}
<table>
    <tr>
        <td class="text-right" style="width:80%;"><b>Total Receipt Amount (Rs.)</b></td>
        <td class="text-right"><b>{{ number_format((float) $receipt->receiptamount, 2) }}</b></td>
    </tr>
</table>

<p style="margin-top:8px;">Amount in words: Rupees {{ ucwords($words) }} Only</p>

{{-- Signatures --}}
<table>
    <tr>
        <td style="border:none; text-align:center; padding-top:45px;">Received By</td>
        <td style="border:none; text-align:center; padding-top:45px;">Authorised Signatory</td>
    </tr>
</table>

<p style="text-align:center; font-size:9px;">
    Printed by: {{ $receipt->u_name ?: '—' }}
    @if ($receipt->u_entdt)
        | Entry Date: {{ \Carbon\Carbon::parse($receipt->u_entdt)->format('d/m/Y H:i') }}
    @endif
    | Doc ID: {{ $receipt->docid }}
</p>

</body>
</html>
