@include('property.print._header', ['company' => $company, 'title' => 'Booking Source'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>Defined</th><th>Active</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->name }}</td>
                <td>{{ $row->sysYN == 'Y' ? 'System' : 'User' }}</td>
                <td>{{ $row->activeYN == 'Y' ? 'Yes' : 'No' }}</td>
            </tr>
        @empty
            <tr><td colspan="4" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>