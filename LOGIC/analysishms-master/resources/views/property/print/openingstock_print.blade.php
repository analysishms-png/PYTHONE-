@include('property.print._header', ['company' => $company, 'title' => 'Opening Stock List'])
<table>
    <thead><tr><th>Sn.</th><th>Department</th><th>Voucher No</th><th>Date</th></tr></thead>
    <tbody>
        @forelse ($data as $index => $row)
            <tr><td>{{ $index + 1 }}</td><td>{{ $row->subname }}</td><td>{{ $row->vno }}</td><td>{{ date('d-m-Y', strtotime($row->vdate)) }}</td></tr>
        @empty
            <tr><td colspan="4" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
</table>
</body>
</html>
