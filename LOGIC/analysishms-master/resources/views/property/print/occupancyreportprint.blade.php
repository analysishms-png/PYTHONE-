@include('property.print._header', [
    'company'  => $comp,
    'title'    => 'Occupancy Report',
    'fromDate' => $fordate,
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
    .name-col { text-align: left; font-weight: 700; color: #00008b; }
    .money-col { text-align: right; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
    .summary-block { margin-top: 14px; page-break-inside: avoid; font-size: 10px; }
    .summary-block p { margin: 2px 0; }
</style>

<p class="type-info">
    {{ \Carbon\Carbon::parse($fordate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
    &nbsp;|&nbsp; {{ $summary['condition'] }}
</p>

<table>
    <thead>
        <tr>
            <th>GRC No.</th>
            <th>Room No.</th>
            @if ($printcondition == 1)sit 
                <th>Room Rate</th>
                <th>Room Disc</th>
                <th>Room Tax</th>
            @elseif ($printcondition == 2)
                <th>Room Rate</th>
                <th>Room Tax</th>
            @endif
            <th>Name</th>
            <th>Pax</th>
            <th>Nationality</th>
            <th>Comp/T.A.</th>
            <th>Plan</th>
            <th>In Dt</th>
            <th>Exp. Dep Dt</th>
            <th>Dep Dt</th>
            @if ($printcondition != 3)
                <th>Mobile</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @forelse ($occdata as $data)
            <tr>
                <td class="text-center">{{ $data->foliono }}</td>
                <td class="text-center">{{ $data->roomno }}</td>
                @if ($printcondition == 1)
                    <td class="money-col">{{ number_format($data->roomrate ?? 0, 2) }}</td>
                    <td class="money-col">{{ number_format($data->roomdisc ?? 0, 2) }}</td>
                    <td class="text-center">{{ $data->RRTaxInc == 'N' ? 'No' : 'Yes' }}</td>
                @elseif ($printcondition == 2)
                    <td class="money-col">{{ number_format($data->roomrate ?? 0, 2) }}</td>
                    <td class="text-center">{{ $data->RRTaxInc == 'N' ? 'No' : 'Yes' }}</td>
                @endif
                <td class="name-col">{{ $data->guestname }}</td>
                <td class="text-center">{{ $data->adult }} / {{ $data->children }}</td>
                <td>{{ $data->CName }}</td>
                <td>{{ trim(($data->companyname ?? '') . (($data->companyname && $data->travelname) ? ' / ' : '') . ($data->travelname ?? '')) }}</td>
                <td>{{ $data->tarrif }}</td>
                <td class="text-center">{{ $data->chkindate }}</td>
                <td class="text-center">{{ $data->expdepdate }}</td>
                <td class="text-center">{{ $data->depdate }}</td>
                @if ($printcondition != 3)
                    <td class="text-center">{{ $data->mobileno }}</td>
                @endif
            </tr>
        @empty
            <tr>
                <td colspan="{{ $printcondition == 1 ? 14 : ($printcondition == 2 ? 13 : 10) }}" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

<div class="summary-block">
    <p><strong>No. Of Rooms:</strong> {{ $summary['rooms'] }}</p>
    <p><strong>Dayuse:</strong> {{ $summary['dayuse'] }}</p>
    <p><strong>Total Person:</strong> {{ $summary['totalperson'] }}</p>
    <p><strong>Plan Summary:</strong> {{ $summary['plansummary'] }}</p>
</div>

</body>
</html>
