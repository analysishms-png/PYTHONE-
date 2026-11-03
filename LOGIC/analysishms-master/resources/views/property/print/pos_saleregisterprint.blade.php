@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Sale Register Report',
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

@php
    $totalWidth = array_sum(array_column($columns, 'width'));
    $leadingTextCols = 0;
    foreach ($columns as $col) {
        if ($col['type'] === 'money') {
            break;
        }
        $leadingTextCols++;
    }
    $payTotal = 0.0;
    $payRows = [];
    foreach ($paygrouped as $pg) {
        $amount = (float) $pg->payment;
        if ($amount <= 0) {
            continue;
        }
        $payTotal += $amount;
        $payRows[] = ['paytype' => $pg->paytype, 'payment' => $amount];
    }
@endphp

<style>
    body { font-size: 8px; margin: 8px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 2px 3px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 7px; }
    td { font-size: 7px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .item-row td { background-color: #f4f1fa; color: #333; }
    .item-name { color: #00008b; font-weight: 700; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
    .pay-title { margin: 12px 0 0; font-size: 10px; font-weight: 700; }
</style>

<p class="type-info">
    {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            @foreach ($columns as $col)
                <th style="width:{{ round(($col['width'] / $totalWidth) * 100, 2) }}%;">{{ $col['label'] }}</th>
            @endforeach
        </tr>
    </thead>
    <tbody>
        @forelse ($rows as $row)
            <tr class="{{ ($row['type'] ?? '') === 'item-detail' ? 'item-row' : '' }}">
                @foreach ($columns as $col)
                    @php
                        $value = $row[$col['key']] ?? '';
                        $isMoney = ($col['type'] === 'money');
                        $alignClass = $isMoney ? 'text-right' : (in_array($col['key'], ['date', 'billTime']) ? 'text-center' : '');
                    @endphp
                    <td class="{{ $alignClass }} {{ $col['key'] === 'itemName' ? 'item-name' : '' }}">
                        @if ($isMoney)
                            {{ $value === '' ? '' : number_format((float) $value, 2) }}
                        @else
                            {{ $value }}
                        @endif
                    </td>
                @endforeach
            </tr>
        @empty
            <tr>
                <td colspan="{{ count($columns) }}" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if (count($rows) > 0)
        <tfoot>
            <tr class="tfoot-row">
                <td colspan="{{ $leadingTextCols }}" class="text-right">Grand Total</td>
                @foreach (array_slice($columns, $leadingTextCols) as $col)
                    <td class="text-right">
                        @if (array_key_exists($col['key'], $totals))
                            {{ number_format((float) $totals[$col['key']], 2) }}
                        @endif
                    </td>
                @endforeach
            </tr>
        </tfoot>
    @endif
</table>

@if (count($payRows) > 0)
    <p class="pay-title">Payment Summary</p>
    <table style="width:45%;">
        <thead>
            <tr>
                <th style="width:60%;">Payment Mode</th>
                <th style="width:40%;">Amount</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($payRows as $pay)
                <tr>
                    <td>{{ $pay['paytype'] }}</td>
                    <td class="text-right">{{ number_format((float) $pay['payment'], 2) }}</td>
                </tr>
            @endforeach
        </tbody>
        <tfoot>
            <tr class="tfoot-row">
                <td class="text-right">Total</td>
                <td class="text-right">{{ number_format($payTotal, 2) }}</td>
            </tr>
        </tfoot>
    </table>
@endif

</body>
</html>
