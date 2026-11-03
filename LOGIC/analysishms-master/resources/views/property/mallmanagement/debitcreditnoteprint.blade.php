@include('property.print._header', [
    'company' => $company,
    'title'   => ($note->vtype === 'CEN' ? 'Credit Note' : 'Debit Note'),
])

{{-- Note info --}}
<table>
    <tr>
        <td><b>{{ $note->vtype === 'CEN' ? 'Credit Note No.' : 'Debit Note No.' }}</b></td>
        <td>{{ $vno }}</td>
        <td><b>Note Date</b></td>
        <td>{{ $note->vdate ? \Carbon\Carbon::parse($note->vdate)->format('d/m/Y') : '—' }}</td>
    </tr>
    <tr>
        <td><b>Tenant</b></td>
        <td colspan="3">{{ $note->tenantname ?? $note->tenantid }}</td>
    </tr>
    <tr>
        <td><b>Reference Invoice</b></td>
        <td>{{ $note->refdocid ?: '—' }}</td>
        <td><b>Reference Date</b></td>
        <td>{{ $note->refdate ? \Carbon\Carbon::parse($note->refdate)->format('d/m/Y') : '—' }}</td>
    </tr>
    <tr>
        <td><b>Reason</b></td>
        <td colspan="3">{{ $note->reason ?: '—' }}</td>
    </tr>
    <tr>
        <td><b>Remarks</b></td>
        <td colspan="3">{{ $note->remarks ?: '—' }}</td>
    </tr>
</table>

{{-- Charge details --}}
<table>
    <thead>
        <tr>
            <th>#</th>
            <th>Charge Code</th>
            <th>Charge Name</th>
            <th>From Date</th>
            <th>To Date</th>
            <th>Area / Unit</th>
            <th class="text-right">Rate (Rs.)</th>
            <th class="text-right">Tax %</th>
            <th class="text-right">Amount (Rs.)</th>
            <th class="text-right">Tax (Rs.)</th>
            <th class="text-right">Total (Rs.)</th>
            <th>Remarks</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($details as $i => $d)
            <tr>
                <td>{{ $i + 1 }}</td>
                <td>{{ $d->chargecode }}</td>
                <td>{{ $d->chargename }}</td>
                <td>{{ $d->fromdate ? \Carbon\Carbon::parse($d->fromdate)->format('d/m/Y') : '—' }}</td>
                <td>{{ $d->todate ? \Carbon\Carbon::parse($d->todate)->format('d/m/Y') : '—' }}</td>
                <td>
                    {{ rtrim(rtrim(number_format((float) $d->qty, 3), '0'), '.') }}
                    {{ $d->unit ? ' ' . $d->unit : '' }}
                </td>
                <td class="text-right">{{ number_format((float) $d->rate, 2) }}</td>
                <td class="text-right">{{ number_format((float) $d->taxrate, 2) }}</td>
                <td class="text-right">{{ number_format((float) $d->amount, 2) }}</td>
                <td class="text-right">{{ number_format((float) $d->taxamount, 2) }}</td>
                <td class="text-right">{{ number_format((float) $d->totalamount, 2) }}</td>
                <td>{{ $d->remarks ?: '—' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="12" style="text-align:center;">No charge lines found.</td>
            </tr>
        @endforelse
    </tbody>
</table>

{{-- Total --}}
<table>
    <tr>
        <td class="text-right" style="width:80%;">Taxable Amount (Rs.)</td>
        <td class="text-right">{{ number_format((float) $note->taxableamount, 2) }}</td>
    </tr>
    <tr>
        <td class="text-right">Tax Amount (Rs.)</td>
        <td class="text-right">{{ number_format((float) $note->taxamount, 2) }}</td>
    </tr>
    <tr>
        <td class="text-right"><b>Total {{ $note->vtype === 'CEN' ? 'Credit' : 'Debit' }} Amount (Rs.)</b></td>
        <td class="text-right"><b>{{ number_format((float) $note->totalamount, 2) }}</b></td>
    </tr>
</table>

<p style="margin-top:8px;">Amount in words: Rupees {{ ucwords($words) }} Only</p>

{{-- Signatures --}}
<table>
    <tr>
        <td style="border:none; text-align:center; padding-top:45px;">Prepared By</td>
        <td style="border:none; text-align:center; padding-top:45px;">Authorised Signatory</td>
    </tr>
</table>

<p style="text-align:center; font-size:9px;">
    Printed by: {{ $note->u_name ?: '—' }}
    @if ($note->u_entdt)
        | Entry Date: {{ \Carbon\Carbon::parse($note->u_entdt)->format('d/m/Y H:i') }}
    @endif
    | Doc ID: {{ $note->docid }}
</p>

</body>
</html>
