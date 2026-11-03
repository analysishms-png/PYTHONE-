@include('property.print._header', [
    'company' => $company,
    'title'   => 'Charge Master',
])

<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Name</th>
            <th>Account Name</th>
            <th>Tax Structure</th>
            <th>Seq No</th>
            <th>Defined</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->taxname }}</td>
                <td>{{ $row->subname }}</td>
                <td>{{ $row->taxstruname }}</td>
                <td>{{ $row->seq_no }}</td>
                <td>{{ $row->SysYN == 'Y' ? 'System' : 'User' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="6" style="text-align:center; padding:10px;">No records found.</td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
