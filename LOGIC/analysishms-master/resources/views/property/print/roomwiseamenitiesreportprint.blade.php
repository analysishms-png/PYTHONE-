@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Room Wise Amenities Report',
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
    .qty-col { background-color: #e6e6fa; font-weight: 700; text-align: right; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

<table>
    <thead>
        <tr>
            <th style="width:5%; text-align:center;">#</th>
            <th style="width:15%;">Room No.</th>
            <th style="width:70%; text-align:left;">Item Name</th>
            <th style="width:10%;">Qty</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="text-center">{{ $row->roommo }}</td>
                <td>{{ $row->Item }}</td>
                <td class="qty-col">{{ number_format((float)$row->Qty, 2) }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="4" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @php
        $totalQty = collect($data)->sum(fn($r) => (float)$r->Qty);
    @endphp
    @if (count($data) > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="3" class="text-right">Grand Total</td>
            <td class="qty-col">{{ number_format($totalQty, 2) }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>