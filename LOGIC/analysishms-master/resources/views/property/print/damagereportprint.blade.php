@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Damage Report',
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

<style>
    body { font-size: 9px; margin: 10px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 3px 4px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 8px; }
    td { font-size: 8px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

<table>
    <thead>
        <tr>
            <th style="width:3%; text-align:center;">#</th>
            <th style="width:8%;">Date</th>
            <th style="width:10%;">Room No.</th>
            <th style="width:18%; text-align:left;">Item Name</th>
            <th style="width:15%;">Damage Type</th>
            <th style="width:34%; text-align:left;">Description</th>
            <th style="width:12%;">Reported By</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="text-center">{{ \Carbon\Carbon::parse($row->date)->format('d/m/Y') }}</td>
                <td class="text-center">{{ $row->roomno }}</td>
                <td>{{ $row->item }}</td>
                <td class="text-center">{{ $row->damagetype }}</td>
                <td>{{ $row->description }}</td>
                <td>{{ $row->ReportedBy }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="7" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if (count($data) > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="7" class="text-right">Total Records: {{ count($data) }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>