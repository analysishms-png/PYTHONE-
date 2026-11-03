@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Housekeeping Report',
    'fromDate' => null,
    'toDate'   => null,
])

<style>
    body { font-size: 8px; margin: 10px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 2px 3px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 7px; }
    td { font-size: 8px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .money { text-align: right; white-space: nowrap; }
    .status-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

<p class="status-info">Status: {{ $status }}</p>

<table>
    <thead>
        <tr>
            <th style="width:3%;">#</th>
            <th style="width:5%;">Room No</th>
            <th style="width:8%;">Type</th>
            <th style="width:6%;">Folio No</th>
            <th style="width:14%; text-align:left;">Guest Name</th>
            <th style="width:6%;">Arrival</th>
            <th style="width:6%;">Departure</th>
            <th style="width:6%;">Adult/Child</th>
            <th style="width:6%;">Plan</th>
            <th style="width:7%;">Room Rate</th>
            <th style="width:7%;">Plan Amt</th>
            <th style="width:7%;">Advance</th>
            <th style="width:7%;">Balance</th>
            <th style="width:6%;">Booked By</th>
            <th style="width:7%;">MKT Segment</th>
            <th style="width:8%; text-align:left;">Company</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($reportData as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="text-center">{{ $row['rm_no'] }}</td>
                <td class="text-center">{{ $row['type'] }}</td>
                <td class="text-center">{{ $row['foliono'] }}</td>
                <td>{{ $row['guestname'] }}</td>
                <td class="text-center">{{ $row['arrival'] }}</td>
                <td class="text-center">{{ $row['dep'] }}</td>
                <td class="text-center">{{ $row['person'] }}</td>
                <td class="text-center">{{ $row['planname'] }}</td>
                <td class="money">{{ $row['rate'] !== '' ? number_format($row['rate'], 2) : '' }}</td>
                <td class="money">{{ $row['planamt'] !== '' ? number_format($row['planamt'], 2) : '' }}</td>
                <td class="money">{{ $row['advance'] !== '' ? number_format($row['advance'], 2) : '' }}</td>
                <td class="money">{{ $row['balance'] !== '' ? number_format($row['balance'], 2) : '' }}</td>
                <td class="text-center">{{ $row['bookedby'] }}</td>
                <td class="text-center">{{ $row['mkt'] }}</td>
                <td>{{ $row['companyname'] }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="16" class="text-center" style="padding:12px;">
                    No data found for the selected status.
                </td>
            </tr>
        @endforelse
    </tbody>
    @php
        $totAdvance = collect($reportData)->sum(fn($r) => (float)($r['advance'] !== '' ? $r['advance'] : 0));
        $totBalance = collect($reportData)->sum(fn($r) => (float)($r['balance'] !== '' ? $r['balance'] : 0));
    @endphp
    @if (count($reportData) > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="11" class="text-right">Grand Total</td>
            <td class="money">{{ number_format($totAdvance, 2) }}</td>
            <td class="money">{{ number_format($totBalance, 2) }}</td>
            <td colspan="3"></td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
