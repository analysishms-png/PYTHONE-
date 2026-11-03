@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Pending Purchase Order Report',
    'fromDate' => $fromDate,
    'toDate'   => $toDate,
])

<table>
    <thead>
        <tr>
            <th>Ord. No</th>
            <th>Date</th>
            <th>Exp. Delivery</th>
            <th>Party</th>
            <th>Item Name</th>
            <th>Specification</th>
            <th class="text-right">Qty</th>
            <th>Unit</th>
            <th class="text-right">Rate</th>
            <th class="text-right">Amount</th>
        </tr>
    </thead>
    <tbody>
        @php $totalAmount = 0; @endphp
        @forelse ($reportData as $row)
            @php $totalAmount += $row->Amount ?? 0; @endphp
            <tr>
                <td>{{ $row->PONo }}</td>
                <td>{{ $row->vdate ? \Carbon\Carbon::parse($row->vdate)->format('d/m/Y') : '' }}</td>
                <td>{{ $row->exp_delivery ? \Carbon\Carbon::parse($row->exp_delivery)->format('d/m/Y') : '' }}</td>
                <td>{{ $row->PartyName }}</td>
                <td>{{ $row->ItemName }}</td>
                <td>{{ $row->Specification }}</td>
                <td class="text-right">{{ number_format($row->Qty, 2) }}</td>
                <td>{{ $row->UnitName }}</td>
                <td class="text-right">{{ number_format($row->Rate, 2) }}</td>
                <td class="text-right">{{ number_format($row->Amount, 2) }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="10" style="text-align:center; padding:10px;">
                    No pending purchase orders found for the selected date range.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if($reportData->count() > 0)
    <tfoot>
        <tr>
            <th colspan="9" class="text-right">Total Amount</th>
            <th class="text-right">{{ number_format($totalAmount, 2) }}</th>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
