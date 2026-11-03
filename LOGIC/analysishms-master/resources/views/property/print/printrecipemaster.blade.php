@include('property.print._header', [
    'company' => $company,
    'title'   => 'Recipe Master',
])

<p style="font-size:11px; margin-bottom:8px;">
    <strong>Finish Item:</strong> {{ $finishItem ?? 'All Items' }}
</p>

<table>
    <thead>
        <tr>
            <th>S.No</th>
            <th>Finish Item</th>
            <th>Raw Item</th>
            <th>Wt. Unit</th>
            <th>Qty</th>
            <th>Cost</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($rows as $index => $row)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $row->finishname ?? '' }}</td>
                <td>{{ $row->name      ?? '' }}</td>
                <td>{{ $row->wtunit   ?? '' }}</td>
                <td>{{ number_format($row->qty ?? 0, 3) }}</td>
                <td>{{ number_format(0, 2) }}</td>
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
