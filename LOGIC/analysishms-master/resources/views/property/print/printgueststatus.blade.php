@include('property.print._header', [
    'company' => $company,
    'title'   => 'Guest Status',
])

<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Name</th>
            <th>Defined</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->name }}</td>
                <td>{{ $row->sysYN == 'Y' ? 'System' : 'User' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="3" style="text-align:center; padding:10px;">No records found.</td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
