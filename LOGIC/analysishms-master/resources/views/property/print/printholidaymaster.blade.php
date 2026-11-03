@include('property.print._header', ['company' => $company, 'title' => 'Holiday Master'])
<table>
    <thead><tr><th>Sn.</th><th>Date</th><th>Name</th><th>Type</th><th>Repeat</th><th>Active</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr><td>{{ $index+1 }}</td><td>{{ $row->holiday_date }}</td><td>{{ $row->name }}</td><td>{{ $row->type }}</td><td>{{ $row->is_repeat == 'Y' ? 'Yes' : 'No' }}</td><td>{{ $row->is_active == 'Y' ? 'Yes' : 'No' }}</td></tr>
        @empty
            <tr><td colspan="6" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>