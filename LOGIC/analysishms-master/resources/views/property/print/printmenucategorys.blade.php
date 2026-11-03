@include('property.print._header', ['company' => $company, 'title' => 'Menu Categorys'])
<table>
    <thead><tr><th>Sn.</th><th>Name</th><th>Depart</th><th>Tax Stru</th><th>Account Name</th></tr></thead>
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