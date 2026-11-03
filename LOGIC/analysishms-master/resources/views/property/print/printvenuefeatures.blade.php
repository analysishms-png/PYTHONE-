@include('property.print._header', ['company' => $company, 'title' => 'Venue Features'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>Active</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr><td>{{ $index + 1 }}</td><td>{{ $row->name }}</td><td>{{ $row->activeYN == 'Y' ? 'Yes' : 'No' }}</td></tr>
        @empty
            <tr><td colspan="3" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>