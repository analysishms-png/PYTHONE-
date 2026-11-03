@include('property.print._header', ['company' => $company, 'title' => 'Session Master'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>From Time</th><th>To Time</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->name }}</td>
                <td>{{ substr($row->from_time, 0, -3) }}</td>
                <td>{{ substr($row->to_time, 0, -3) }}</td>
            </tr>
        @empty
            <tr><td colspan="4" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>