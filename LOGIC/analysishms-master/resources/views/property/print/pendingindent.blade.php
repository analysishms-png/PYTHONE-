@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Pending Indent Report',
    'fromDate' => $fromDate,
    'toDate'   => $toDate,
])

<table>
    <thead>
        <tr>
            <th>Ind. No</th>
            <th>Date</th>
            <th>Remark</th>
            <th>Department</th>
            <th>Item Name</th>
            <th>Specification</th>
            <th class="text-right">Qty</th>
            <th class="text-right">Rate</th>
            <th>Unit</th>
            <th class="text-right">Amount</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($reportData as $row)
            <tr>
                <td>{{ $row->IndNo }}</td>
                <td>{{ $row->Date }}</td>
                <td>{{ $row->Remark }}</td>
                <td>{{ $row->Department }}</td>
                <td>{{ $row->ItemName }}</td>
                <td>{{ $row->Specification }}</td>
                <td class="text-right">{{ number_format($row->Qty, 2) }}</td>
                <td class="text-right">{{ number_format($row->Rate, 2) }}</td>
                <td>{{ $row->Unit }}</td>
                <td class="text-right">{{ number_format($row->Amount, 2) }}</td>
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
