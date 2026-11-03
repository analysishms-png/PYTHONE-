@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Assignment Report',
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
    .col-green { color: #198754; font-weight: 700; }
    .col-orange { color: #fd7e14; font-weight: 700; }
    .col-red { color: #dc3545; font-weight: 700; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

<table>
    <thead>
        <tr>
            <th style="width:3%; text-align:center;">#</th>
            <th style="width:11%;">Date</th>
            <th style="width:24%; text-align:left;">Housekeeper</th>
            <th style="width:8%;">Total Rooms</th>
            <th style="width:8%;">Completed</th>
            <th style="width:8%;">In Progress</th>
            <th style="width:8%;">Pending</th>
            <th style="width:10%;">Avg Est (min)</th>
            <th style="width:10%;">Avg Actual (min)</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="text-center">{{ \Carbon\Carbon::parse($row->Date)->format('d/m/Y') }}</td>
                <td>{{ $row->Housekeeper }}</td>
                <td class="text-center">{{ $row->TotalRooms }}</td>
                <td class="text-center col-green">{{ $row->CompletedRooms }}</td>
                <td class="text-center col-orange">{{ $row->InProgressRooms }}</td>
                <td class="text-center col-red">{{ $row->PendingRooms }}</td>
                <td class="text-center">{{ $row->AvgEst }}</td>
                <td class="text-center">{{ $row->AvgActual }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="9" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @php
        $totalRooms = collect($data)->sum('TotalRooms');
        $completed  = collect($data)->sum('CompletedRooms');
        $inProgress = collect($data)->sum('InProgressRooms');
        $pending    = collect($data)->sum('PendingRooms');
        $rowCount   = count($data);
        $avgEst     = $rowCount > 0 ? round(collect($data)->avg(fn($r) => (int)$r->AvgEst))     : 0;
        $avgActual  = $rowCount > 0 ? round(collect($data)->avg(fn($r) => (int)$r->AvgActual))  : 0;
    @endphp
    @if ($rowCount > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="3" class="text-right">Grand Total</td>
            <td class="text-center">{{ $totalRooms }}</td>
            <td class="text-center col-green">{{ $completed }}</td>
            <td class="text-center col-orange">{{ $inProgress }}</td>
            <td class="text-center col-red">{{ $pending }}</td>
            <td class="text-center">{{ $avgEst }}</td>
            <td class="text-center">{{ $avgActual }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>