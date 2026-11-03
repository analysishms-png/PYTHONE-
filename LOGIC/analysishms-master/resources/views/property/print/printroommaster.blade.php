@include('property.print._header', ['company' => $company, 'title' => 'Room Master'])
<table>
    <thead><tr><th>Sn.</th><th>Room No.</th><th>Name</th><th>Category</th><th>Building</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->rcode }}</td>
                <td>{{ $row->rcode }}</td>
                <td>{{ $row->catname }}</td>
                <td>{{ $row->buildingname }}</td>
            </tr>
        @empty
            <tr><td colspan="5" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>