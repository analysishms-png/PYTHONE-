@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Supplier Wise Purchase Report',
    'fromDate' => $startOfYear,
    'toDate'   => $today,
])

<table>
    <thead>
        <tr>
            <th rowspan="2" style="width:30px; text-align:center;">No.</th>
            <th rowspan="2" style="text-align:left;">Supplier Name</th>
            @foreach ($months as $ym)
                <th colspan="2" style="text-align:center;">
                    {{ \Carbon\Carbon::createFromFormat('Y-m', $ym)->format('M Y') }}
                </th>
            @endforeach
        </tr>
        <tr>
            @foreach ($months as $ym)
                <th style="text-align:right;">Amt (&#8377;)</th>
                <th style="text-align:center;">Bills</th>
            @endforeach
        </tr>
    </thead>
    <tbody>
        @forelse ($pivoted as $supplierName => $monthData)
            <tr>
                <td style="text-align:center; font-weight:700;">{{ $loop->iteration }}</td>
                <td style="font-weight:600;">{{ $supplierName }}</td>
                @foreach ($months as $ym)
                    @php
                        $amt   = $monthData[$ym]['amt']   ?? 0;
                        $bills = $monthData[$ym]['bills'] ?? 0;
                    @endphp
                    <td style="text-align:right;">{!! $amt > 0 ? '&#8377;'.number_format($amt, 2) : '-' !!}</td>
                    <td style="text-align:center;">{{ $bills > 0 ? $bills : '-' }}</td>
                @endforeach
            </tr>
        @empty
            <tr>
                <td colspan="{{ 2 + count($months) * 2 }}" style="text-align:center; padding:10px;">
                    No purchase data available.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if(count($pivoted) > 0)
    <tfoot>
        <tr>
            <td colspan="2" style="text-align:right; font-weight:700;">Grand Total</td>
            @foreach ($months as $ym)
                @php
                    $tAmt   = collect($pivoted)->sum(fn($m) => $m[$ym]['amt']   ?? 0);
                    $tBills = collect($pivoted)->sum(fn($m) => $m[$ym]['bills'] ?? 0);
                @endphp
                <td style="text-align:right; font-weight:700;">{!! $tAmt > 0 ? '&#8377;'.number_format($tAmt,2) : '-' !!}</td>
                <td style="text-align:center; font-weight:700;">{{ $tBills > 0 ? $tBills : '-' }}</td>
            @endforeach
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
