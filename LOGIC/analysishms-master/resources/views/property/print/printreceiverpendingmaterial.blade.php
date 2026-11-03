@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Received vs Pending Material Report',
    'fromDate' => $fromDate,
    'toDate'   => $toDate,
])

<table>
    <thead>
        <tr>
            <th>PO No</th>
            <th>Item</th>
            <th class="text-right">Ordered Qty</th>
            <th class="text-right">Received Qty</th>
            <th class="text-right">Pending Qty</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($reportData as $row)
            <tr>
                <td>{{ $row->po_no }}</td>
                <td>{{ $row->item_name }}</td>
                <td class="text-right">{{ number_format($row->ordered_qty, 0) }}</td>
                <td class="text-right">{{ number_format($row->received_qty, 0) }}</td>
                <td class="text-right">{{ number_format($row->pending_qty, 0) }}</td>
                <td>{{ $row->status }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="6" style="text-align:center; padding:10px;">
                    No records found for the selected date range.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
