@include('property.print._header', [
    'company' => $company,
    'title'   => 'Tax Master',
])

<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Tax Name</th>
            <th>Account Name</th>
            <th>Sundry</th>
            <th>Defined</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($taxdata as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->taxname }}</td>
                <td>{{ $row->subname ?: $row->ac_code }}</td>
                <td>{{ $row->sundryname ?: $row->sundry }}</td>
                <td>{{ $row->SysYN == 'Y' ? 'System' : 'User' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="5" style="text-align:center; padding:10px;">No records found.</td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
