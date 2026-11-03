@include('property.print._header', ['company' => $company, 'title' => 'Item Group'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>Type</th><th>Active YN</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr><td>{{ $index + 1 }}</td><td>{{ $row->name }}</td><td>{{ $row->type }}</td><td>{{ $row->activeyn }}</td></tr>
        @empty
            <tr><td colspan="4" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>
