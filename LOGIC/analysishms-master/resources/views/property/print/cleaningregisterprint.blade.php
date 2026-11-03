@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Cleaning Register',
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
    .duration-col { background-color: #e6e6fa; font-weight: 700; text-align: right; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

<table>
    <thead>
        <tr>
            <th style="width:3%; text-align:center;">#</th>
            <th style="width:9%;">Cleaning Date</th>
            <th style="width:7%;">Room No</th>
            <th style="width:7%;">Ass No</th>
            <th style="width:9%;">Cleaning No</th>
            <th style="width:8%;">Start Time</th>
            <th style="width:8%;">End Time</th>
            <th style="width:9%;">Duration (Min)</th>
            <th style="width:12%; text-align:left;">Cleaned By</th>
            <th style="width:12%; text-align:left;">Supervisor</th>
            <th style="width:8%;">Clean Status</th>
            <th style="width:8%;">Inspection Status</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="text-center">{{ \Carbon\Carbon::parse($row->cleaningdate)->format('d/m/Y') }}</td>
                <td class="text-center">{{ $row->roommo }}</td>
                <td class="text-center">{{ $row->assno }}</td>
                <td class="text-center">{{ $row->cleaningno }}</td>
                <td class="text-center">{{ $row->starttime }}</td>
                <td class="text-center">{{ $row->endtime }}</td>
                <td class="duration-col">{{ $row->duration }}</td>
                <td>{{ $row->cleandby }}</td>
                <td>{{ $row->supervisor }}</td>
                <td class="text-center">{{ $row->cleanstatus }}</td>
                <td class="text-center">{{ $row->inspectionstatus }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="12" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @php
        $totalRows    = count($data);
        $totalMinutes = collect($data)->sum(fn($r) => (int)($r->duration ?? 0));
    @endphp
    @if ($totalRows > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="7" class="text-right">Total Records: {{ $totalRows }}</td>
            <td class="duration-col">{{ $totalMinutes }}</td>
            <td colspan="4"></td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>