@include('property.print._header', [
    'company' => $company,
    'title'   => 'Pay Master',
])

<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Name</th>
            <th>Ac. Name</th>
            <th>AC Posting</th>
            <th>Nature</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->taxname }}</td>
                <td>{{ $row->subname }}</td>
                <td>{{ $row->ac_posting }}</td>
                <td>{{ $row->nature }}</td>
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
