@include('property.print._header', [
    'company' => $company,
    'title'   => 'Purchase Trend Report',
])

@php
$monthNames = ['','January','February','March','April','May','June',
               'July','August','September','October','November','December'];
@endphp

<table>
    <thead>
        <tr>
            <th style="width:6%;">No.</th>
            <th>Year</th>
            <th>Month</th>
            <th class="text-right">Purchase Amount (₹)</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($reportData as $index => $row)
            <tr>
                <td style="text-align:center;">{{ $index + 1 }}</td>
                <td>{{ $row->Year }}</td>
                <td>{{ $monthNames[$row->Month] ?? '' }}</td>
                <td class="text-right">₹ {{ number_format($row->PurchaseAmount ?? $row->Purchaseamount ?? 0, 2) }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="4" style="text-align:center; padding:10px;">
                    No purchase data available.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
