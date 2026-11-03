@include('property.print._header', [
    'company'  => $company,
    'title'    => $reportTitle,
    'fromDate' => $startdate,
    'toDate'   => $enddate,
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
    .total-col { background-color: #e6e6fa; font-weight: 700; text-align: center; }
    .revenue-col { background-color: #e6e6fa; font-weight: 700; text-align: right; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    Type: {{ $type }} &nbsp;|&nbsp;
    {{ \Carbon\Carbon::parse($startdate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($enddate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:3%; text-align:center;">#</th>
            <th style="min-width:120px; text-align:left;">Company Name</th>
            @for ($d = 1; $d <= 31; $d++)
                <th style="width:2.1%;">{{ str_pad($d, 2, '0', STR_PAD_LEFT) }}</th>
            @endfor
            <th style="width:3%;">Tot</th>
            <th style="width:8%; text-align:right;">Revenue</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            @if ((float)$row->revenue > 0)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="company-col">{{ $row->company_name }}</td>
                @for ($d = 1; $d <= 31; $d++)
                    @php $key = str_pad($d, 2, '0', STR_PAD_LEFT); @endphp
                    <td class="text-center">{{ ($row->$key ?? 0) > 0 ? $row->$key : '' }}</td>
                @endfor
                <td class="total-col">{{ $row->total_nights }}</td>
                <td class="revenue-col">{{ number_format($row->revenue, 2) }}</td>
            </tr>
            @endif
        @empty
            <tr>
                <td colspan="35" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @php
        $filteredData = $data->filter(fn($r) => (float)$r->revenue > 0);
        $grandTotal   = $filteredData->sum('revenue');
        $grandNights  = $filteredData->sum('total_nights');
    @endphp
    @if ($filteredData->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="2" class="text-right">Grand Total</td>
            @for ($d = 1; $d <= 31; $d++)
                @php
                    $key = str_pad($d, 2, '0', STR_PAD_LEFT);
                    $dayTotal = $filteredData->sum(fn($r) => $r->$key ?? 0);
                @endphp
                <td class="text-center">{{ $dayTotal > 0 ? $dayTotal : '' }}</td>
            @endfor
            <td class="total-col">{{ $grandNights }}</td>
            <td class="revenue-col">{{ number_format($grandTotal, 2) }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
