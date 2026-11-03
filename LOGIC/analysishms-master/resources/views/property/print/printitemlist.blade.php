@include('property.print._header', ['company' => $company, 'title' => 'Item List'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>Barcode</th><th>HSN Code</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr><td>{{ $index + 1 }}</td><td>{{ $row->name }}</td><td>{{ $row->barcode }}</td><td>{{ $row->hsncode }}</td></tr>
        @empty
            <tr><td colspan="4" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>