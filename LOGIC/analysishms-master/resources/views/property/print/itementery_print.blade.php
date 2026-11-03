@include('property.print._header', ['company' => $company, 'title' => 'Item Entry List'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>Unit</th><th>Group</th><th>Category</th><th>Restaurant</th><th>Rate</th><th>Active</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr><td>{{ $index + 1 }}</td><td>{{ $row->itemname }}</td><td>{{ $row->unitname }}</td><td>{{ $row->itemgrpname }}</td><td>{{ $row->itemcatname }}</td><td>{{ $row->Restaurant }}</td><td>{{ $row->PurchRate }}</td><td>{{ $row->ActiveYN }}</td></tr>
        @empty
            <tr><td colspan="8" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>
