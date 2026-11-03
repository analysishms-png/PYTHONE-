@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Company Wise Analysis',
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
    .company-col { min-width: 120px; font-weight: 700; color: #00008b; }
    .money-col { text-align: right; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    Type: {{ $type }} &nbsp;|&nbsp;
    {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:4%; text-align:center;">#</th>
            <th style="min-width:140px; text-align:left;">Name</th>
            <th style="width:10%; text-align:center;">Last Checkout</th>
            <th style="width:7%; text-align:center;">Nights</th>
            <th style="width:12%; text-align:right;">Room Rent</th>
            <th style="width:12%; text-align:right;">Out Charge</th>
            <th style="width:12%; text-align:right;">Tax</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="company-col">{{ $row->name }}</td>
                <td class="text-center">{{ $row->last_checkout ? \Carbon\Carbon::parse($row->last_checkout)->format('d/m/Y') : '-' }}</td>
                <td class="text-center">{{ $row->nights }}</td>
                <td class="money-col">{{ number_format($row->room_rent, 2) }}</td>
                <td class="money-col">{{ number_format($row->out_charge, 2) }}</td>
                <td class="money-col">{{ number_format($row->tax, 2) }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="7" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if ($data->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="3" class="text-right">Grand Total</td>
            <td class="text-center">{{ $data->sum('nights') }}</td>
            <td class="money-col">{{ number_format($data->sum('room_rent'), 2) }}</td>
            <td class="money-col">{{ number_format($data->sum('out_charge'), 2) }}</td>
            <td class="money-col">{{ number_format($data->sum('tax'), 2) }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
