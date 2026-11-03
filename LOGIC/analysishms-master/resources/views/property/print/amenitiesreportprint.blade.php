@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Amenities Report',
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
    .item-col { min-width: 120px; font-weight: 700; color: #00008b; }
    .total-col { background-color: #e6e6fa; font-weight: 700; text-align: right; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
    .summary-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="summary-info">
    Total Rooms: {{ $totalRooms }} &nbsp;|&nbsp; Total Pax: {{ $totalPax }} &nbsp;|&nbsp;
    {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:4%; text-align:center;">#</th>
            <th style="min-width:120px; text-align:left;">Item Name</th>
            <th style="width:14%; text-align:right;">Qty Used</th>
            <th style="width:16%; text-align:right;">Cost</th>
            <th style="width:12%; text-align:center;">Total Rooms</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="item-col">{{ $row->Item }}</td>
                <td class="text-right">{{ number_format((float)$row->QtyUsed, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->Cost, 2) }}</td>
                <td class="text-center">{{ (int)$row->TotalRooms }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="5" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @php
        $totalQty   = collect($data)->sum(fn($r) => (float)$r->QtyUsed);
        $totalCost  = collect($data)->sum(fn($r) => (float)$r->Cost);
        $totalRoomsUsed = collect($data)->sum(fn($r) => (int)$r->TotalRooms);
    @endphp
    @if (count($data) > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="2" class="text-right">Grand Total</td>
            <td class="total-col">{{ number_format($totalQty, 2) }}</td>
            <td class="total-col">{{ number_format($totalCost, 2) }}</td>
            <td class="text-center">{{ $totalRoomsUsed }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>