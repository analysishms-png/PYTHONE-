@include('property.print._header', ['company' => $company, 'title' => 'Menu Item List'])

<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Restaurant</th>
            <th>Item Name</th>
            <th>Item Group</th>
            <th>Category</th>
            <th>Unit</th>
            <th class="text-right">Rate</th>
            <th>HSN Code</th>
            <th>Type</th>
            <th>Active</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->Restaurant ?? '' }}</td>
                <td>{{ $row->itemname ?? '' }}</td>
                <td>{{ $row->itemgrpname ?? '' }}</td>
                <td>{{ $row->itemcatname ?? '' }}</td>
                <td>{{ $row->unitname ?? '' }}</td>
                <td class="text-right">{{ number_format($row->Rate ?? 0, 2) }}</td>
                <td>{{ $row->HSNCode ?? '' }}</td>
                <td>{{ $row->NType ?? '' }}</td>
                <td>{{ $row->ActiveYN ?? '' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="10" style="text-align:center;padding:10px;">No records found.</td>
            </tr>
        @endforelse
    </tbody>
</table>
</body>
</html>
