@include('property.print._header', ['company' => $company, 'title' => 'Item Category'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>Department</th><th>Tax Structure</th><th>Account Name</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr><td>{{ $index + 1 }}</td><td>{{ $row->Name }}</td><td>{{ $row->departname }}</td><td>{{ $row->taxstruname }}</td><td>{{ $row->subgrpname }}</td></tr>
        @empty
            <tr><td colspan="5" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>
