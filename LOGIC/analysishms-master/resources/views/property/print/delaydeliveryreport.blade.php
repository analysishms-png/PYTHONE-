@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Delay Delivery Report',
    'fromDate' => $fromDate,
    'toDate'   => $toDate,
])

<table>
    <thead>
        <tr>
            <th style="width:4%;">Sr.</th>
            <th>PO No</th>
            <th>PO Date</th>
            <th>Supplier Name</th>
            <th>Item Name</th>
            <th class="text-right">Ordered Qty</th>
            <th>Expected Delivery</th>
            <th>Actual Receive</th>
            <th class="text-right">Delay Days</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($reportData as $index => $row)
            <tr>
                <td style="text-align:center;">{{ $index + 1 }}</td>
                <td>{{ $row['po_no'] ?? '' }}</td>
                <td>{{ $row['po_date'] ?? '' }}</td>
                <td>{{ $row['supplier_name'] ?? '' }}</td>
                <td>{{ $row['item_name'] ?? '' }}</td>
                <td class="text-right">{{ $row['ordered_qty'] ?? '' }}</td>
                <td>{{ $row['expected_delivery_date'] ?? '' }}</td>
                <td>{{ $row['actual_receive_date'] ?? '' }}</td>
                <td class="text-right">{{ $row['delay_days'] ?? '' }}</td>
                <td>{{ $row['status'] ?? '' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="10" style="text-align:center; padding:10px;">
                    No records found for the selected date range.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
