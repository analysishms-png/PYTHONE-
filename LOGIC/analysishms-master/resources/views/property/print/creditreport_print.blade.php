@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Credit Report',
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

<p style="text-align:center; font-size:11px; margin-bottom:6px;">
    Pay Type: <strong>{{ $paytype }}</strong>
</p>

{{-- ── Detail Table ── --}}
<table>
    <thead>
        <tr>
            <th style="width:4%; text-align:center;">S.No</th>
            <th style="width:8%;">Date</th>
            <th style="width:10%;">Voucher</th>
            <th style="width:6%; text-align:center;">Folio No</th>
            <th style="width:6%; text-align:center;">Room No</th>
            <th style="width:9%;">Mode</th>
            <th style="width:12%;">Reference / Company</th>
            <th style="width:14%;">Particular</th>
            <th style="width:8%;">Chq No</th>
            <th style="width:7%;">Chq Date</th>
            <th style="width:8%; text-align:right;">Amount</th>
            <th style="width:8%;">User</th>
            <th style="width:10%;">Department</th>
        </tr>
    </thead>
    <tbody>
        @php $total = 0; @endphp
        @forelse ($rows as $row)
            @php $total += (float) $row->AmtCr; @endphp
            <tr>
                <td style="text-align:center;">{{ $loop->iteration }}</td>
                <td>{{ $row->VDate }}</td>
                <td>{{ $row->VType . '/' . $row->VNo }}</td>
                <td style="text-align:center;">{{ $row->FolioNo }}</td>
                <td style="text-align:center;">{{ $row->RoomNo }}</td>
                <td>{{ $row->PayType }}</td>
                <td>{{ $row->CompanyName ?? '' }}</td>
                <td>{{ $row->Comments ?? '' }}</td>
                <td>{{ $row->ChqNo ?? '' }}</td>
                <td>{{ $row->ChqDate ? \Carbon\Carbon::parse($row->ChqDate)->format('d/m/Y') : '' }}</td>
                <td class="text-right">{{ number_format((float)$row->AmtCr, 2) }}</td>
                <td>{{ $row->U_Name ?? '' }}</td>
                <td>{{ $row->Department ?? '' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="13" style="text-align:center; padding:10px;">No records found.</td>
            </tr>
        @endforelse
    </tbody>
    <tfoot>
        <tr>
            <td colspan="10" style="text-align:right; font-weight:700;">Total</td>
            <td class="text-right" style="font-weight:700;">{{ number_format($total, 2) }}</td>
            <td colspan="2"></td>
        </tr>
    </tfoot>
</table>

{{-- ── Summary Table ── --}}
@if(count($summary) > 0)
<br>
<p style="font-weight:700; font-size:12px; margin-bottom:4px;">Summary by Pay Type</p>
<table style="width:40%;">
    <thead>
        <tr>
            <th>Pay Type</th>
            <th class="text-right">Amount</th>
        </tr>
    </thead>
    <tbody>
        @php $grand = 0; @endphp
        @foreach ($summary as $s)
            @php $grand += (float) $s->AmtCr; @endphp
            <tr>
                <td>{{ $s->PayType }}</td>
                <td class="text-right">{{ number_format((float)$s->AmtCr, 2) }}</td>
            </tr>
        @endforeach
    </tbody>
    <tfoot>
        <tr>
            <td style="font-weight:700;">Grand Total</td>
            <td class="text-right" style="font-weight:700;">{{ number_format($grand, 2) }}</td>
        </tr>
    </tfoot>
</table>
@endif

</body>
</html>
