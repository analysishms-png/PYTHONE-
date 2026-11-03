@include('property.print._header', [
    'company' => $company,
    'title'   => 'Tax Structure',
])

<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Name</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($taxdata as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->name }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="2" style="text-align:center; padding:10px;">No records found.</td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
