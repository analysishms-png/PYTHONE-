@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Cashier Report',
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

<style>
    body { font-size: 7px; margin: 8px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 2px 3px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 6.5px; }
    td { font-size: 6.5px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

<p style="text-align:left; font-size: 8px; margin-top: -4px;">
    From Date: {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} To Date: {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
    @if(isset($username) && $username) | User: {{ $username }} @endif
</p>

<table>
    <thead>
        <tr>
            <th style="width:5%;">Bill No</th>
            <th style="width:5%;">Folio No</th>
            <th style="width:10%;">Guest Name</th>
            <th style="width:5%;">Room No</th>
            <th style="width:6%;">Reg Type</th>
            <th style="width:6%;">Payment Mode</th>
            @foreach ($revheading as $rh)
                <th>{{ strtoupper($rh->name) }}</th>
            @endforeach
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
        @php
            $totalAmount = 0;
            $revTotals = [];
            foreach ($revheading as $rh) {
                $revTotals[$rh->name] = 0;
            }
        @endphp
        @forelse ($data as $row)
            @php
                $totalAmount += (float)($row->Total ?? 0);
                foreach ($revheading as $rh) {
                    $key = strtolower($rh->name);
                    if (isset($row->$key)) {
                        $revTotals[$rh->name] += (float)($row->$key);
                    }
                }
            @endphp
            <tr>
                <td class="text-center">{{ $row->billno ?? '' }}</td>
                <td class="text-center">{{ $row->folio_no ?? '' }}</td>
                <td>{{ $row->Name ?? '' }}</td>
                <td class="text-center">{{ $row->RoomNo ?? '' }}</td>
                <td class="text-center">{{ $row->Regtype ?? '' }}</td>
                <td class="text-center">{{ $row->modeset ?? '' }}</td>
                @foreach ($revheading as $rh)
                    @php $key = strtolower($rh->name); @endphp
                    <td class="text-right">{{ number_format($row->$key ?? 0, 2) }}</td>
                @endforeach
                <td class="text-right">{{ number_format($row->Total ?? 0, 2) }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="{{ 6 + count($revheading) + 1 }}" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if ($data->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="6" class="text-right">Total</td>
            @foreach ($revheading as $rh)
                <td class="text-right">{{ number_format($revTotals[$rh->name] ?? 0, 2) }}</td>
            @endforeach
            <td class="text-right">{{ number_format($totalAmount, 2) }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
