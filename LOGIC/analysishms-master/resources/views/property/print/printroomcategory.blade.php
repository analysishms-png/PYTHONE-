@include('property.print._header', ['company' => $company, 'title' => 'Room Category'])
<table>
    <thead><tr><th>Sn.</th><th>Cat Code</th><th>Map Code</th><th>Name</th><th>Revenue Name</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->cat_code }}</td>
                <td>{{ $row->map_code }}</td>
                <td>{{ $row->name }}</td>
                <td>{{ $row->taxname }}</td>
            </tr>
        @empty
            <tr><td colspan="5" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>