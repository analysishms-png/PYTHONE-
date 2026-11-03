@include('property.print._header', ['company' => $company, 'title' => 'NC Type Master'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>Percentage</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr><td>{{ $index + 1 }}</td><td>{{ $row->nctype }}</td><td>{{ $row->ncper }}</td></tr>
        @empty
            <tr><td colspan="3" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>