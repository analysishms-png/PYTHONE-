@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Discount Report',
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
    .guest-col { font-weight: 700; color: #00008b; }
    .money-col { text-align: right; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:3%;">#</th>
            <th style="width:9%;">Outlet</th>
            <th style="width:7%;">Date</th>
            <th style="width:10%;">Guest Name</th>
            <th style="width:8%;">Mobile No</th>
            <th style="width:6%;">Bill No</th>
            <th style="width:13%;">Item Name</th>
            <th style="width:4%;">Qty</th>
            <th style="width:6%;">Rate</th>
            <th style="width:7%;">Amount</th>
            <th style="width:5%;">Disc %</th>
            <th style="width:7%;">Disc Amt</th>
            <th style="width:8%;">User</th>
            <th style="width:11%;">Change Date</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td>{{ $row->departname ?? '-' }}</td>
                <td class="text-center">{{ $row->vdate ? \Carbon\Carbon::parse($row->vdate)->format('d/m/Y') : '-' }}</td>
                <td class="guest-col">{{ $row->name ?? '-' }}</td>
                <td class="text-center">{{ $row->mobileno ?? '-' }}</td>
                <td class="text-center">{{ $row->vno ?? '-' }}</td>
                <td>{{ $row->itemname ?? '-' }}</td>
                <td class="text-center">{{ number_format($row->quantity ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->rate ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->amount ?? 0, 2) }}</td>
                <td class="text-center">{{ number_format($row->discper ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->discamt ?? 0, 2) }}</td>
                <td class="text-center">{{ $row->username ?? '-' }}</td>
                <td class="text-center">{{ $row->changedate ? \Carbon\Carbon::parse($row->changedate)->format('d/m/Y H:i:s') : '-' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="14" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
