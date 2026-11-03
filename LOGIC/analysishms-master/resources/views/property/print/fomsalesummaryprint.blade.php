@include('property.print._header', [
    'company'  => $company,
    'title'    => 'FOM Sale Summary',
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

<style>
    body { font-size: 8px; margin: 8px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 2px 3px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 7px; }
    td { font-size: 7px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .date-col { white-space: nowrap; font-weight: 700; color: #00008b; }
    .money-col { text-align: right; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:6%;">Date</th>
            <th style="width:4%;">No Of Rooms</th>
            <th style="width:5%;">Chargeable Rooms</th>
            <th style="width:4%;">Occupancy %</th>
            <th style="width:6%;">ARR</th>
            <th style="width:4%;">Balance Room</th>
            <th style="width:3%;">Adult</th>
            <th style="width:3%;">Child</th>
            @foreach ($revNames as $name)
                <th>{{ $name }}</th>
            @endforeach
            @foreach ($outNames as $name)
                <th>{{ $name }}</th>
            @endforeach
            <th style="width:7%;">TOTAL</th>
            <th style="width:6%;">CGST</th>
            <th style="width:6%;">SGST</th>
            <th style="width:8%;">Grand Total</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($rows as $row)
            <tr>
                <td class="date-col text-center">{{ $row['date'] }}</td>
                <td class="text-center">{{ $row['totalrooms'] }}</td>
                <td class="text-center">{{ $row['chargable'] }}</td>
                <td class="text-center">{{ number_format($row['occupancy'], 2) }}</td>
                <td class="money-col">{{ number_format($row['arr'], 2) }}</td>
                <td class="text-center">{{ $row['balance'] }}</td>
                <td class="text-center">{{ $row['adult'] }}</td>
                <td class="text-center">{{ $row['child'] }}</td>
                @foreach ($row['revs'] as $v)
                    <td class="money-col">{{ number_format($v, 2) }}</td>
                @endforeach
                @foreach ($row['outs'] as $v)
                    <td class="money-col">{{ number_format($v, 2) }}</td>
                @endforeach
                <td class="money-col">{{ number_format($row['total'], 2) }}</td>
                <td class="money-col">{{ number_format($row['cgst'], 2) }}</td>
                <td class="money-col">{{ number_format($row['sgst'], 2) }}</td>
                <td class="money-col">{{ number_format($row['grand'], 2) }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="{{ 14 + count($revNames) + count($outNames) }}" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if (count($rows) > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td class="text-center">Total</td>
            <td class="text-center">{{ $totals['rooms'] }}</td>
            <td class="text-center">{{ $totals['chargable'] }}</td>
            <td class="text-center">{{ number_format($totals['occupancy'], 2) }}</td>
            <td class="money-col">{{ number_format($totals['arr'], 2) }}</td>
            <td class="text-center">{{ $totals['balance'] }}</td>
            <td class="text-center">{{ $totals['adult'] }}</td>
            <td class="text-center">{{ $totals['child'] }}</td>
            @foreach ($totals['revs'] as $v)
                <td class="money-col">{{ number_format($v, 2) }}</td>
            @endforeach
            @foreach ($totals['outs'] as $v)
                <td class="money-col">{{ number_format($v, 2) }}</td>
            @endforeach
            <td class="money-col">{{ number_format($totals['total'], 2) }}</td>
            <td class="money-col">{{ number_format($totals['cgst'], 2) }}</td>
            <td class="money-col">{{ number_format($totals['sgst'], 2) }}</td>
            <td class="money-col">{{ number_format($totals['grand'], 2) }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
