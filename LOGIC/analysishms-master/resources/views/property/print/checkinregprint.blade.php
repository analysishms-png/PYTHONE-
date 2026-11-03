@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Check In Register',
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
    .guest-col { font-weight: 700; color: #00008b; }
    .money-col { text-align: right; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

<p style="text-align:left; font-size: 8px; margin-top: -4px;">
    From Date: {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} To Date: {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:4%;">GRC No.</th>
            <th style="width:10%;">Guest Name</th>
            <th style="width:10%;">Address</th>
            <th style="width:6%;">City</th>
            <th style="width:6%;">Nationality</th>
            <th style="width:7%;">Mobile No.</th>
            <th style="width:4%;">Room</th>
            <th style="width:3%;">Occ</th>
            <th style="width:5%;">R Rate</th>
            <th style="width:8%;">In Date</th>
            <th style="width:8%;">Out Date</th>
            <th style="width:8%;">Arr From/Dest.</th>
            <th style="width:8%;">Purpose Of Visit</th>
            <th style="width:6%;">Advance</th>
            <th style="width:8%;">Travel</th>
            <th style="width:6%;">User</th>
        </tr>
    </thead>
    <tbody>
        @php
            $totalrooms = 0;
            $totalguests = 0;
            $totaladvance = 0;
            $totalroomrate = 0;
        @endphp
        @forelse ($data as $item)
            @php
                $totalrooms++;
                $totalguests += (int) ($item->TotalGuest ?? 0);
                $totalroomrate += (float) ($item->RoomRate ?? 0);
                $totaladvance += (float) ($item->advance ?? 0);
                $address = trim(($item->add1 ?? '') . ' ' . ($item->add2 ?? ''));
                $indate = $item->ChkinDate ? \Carbon\Carbon::parse($item->ChkinDate)->format('d/m/Y') : '';
                $outdate = $item->chkoutdate ? \Carbon\Carbon::parse($item->chkoutdate)->format('d/m/Y') : '';
                $intime = $item->ChkinTime ? substr($item->ChkinTime, 0, 5) : '';
                $outtime = $item->chkouttime ? substr($item->chkouttime, 0, 5) : '';
                $arrfromdest = trim(($item->arrfrom ?? '') . '/' . ($item->destination ?? ''), '/');
            @endphp
            <tr>
                <td class="text-center">{{ $item->folio_no ?? '' }}</td>
                <td class="guest-col">{{ $item->Name ?? '' }}</td>
                <td>{{ $address }}</td>
                <td>{{ $item->city ?? '' }}</td>
                <td>{{ $item->nationality ?? '' }}</td>
                <td>{{ $item->mobile_no ?? '' }}</td>
                <td class="text-center">{{ $item->RoomNo ?? '' }}</td>
                <td class="text-center">{{ $item->TotalGuest ?? 0 }}</td>
                <td class="money-col">{{ number_format($item->RoomRate ?? 0, 2) }}</td>
                <td class="text-center">{{ trim($indate . ' ' . $intime) }}</td>
                <td class="text-center">{{ trim($outdate . ' ' . $outtime) }}</td>
                <td>{{ $arrfromdest }}</td>
                <td>{{ $item->PurVisit ?? '' }}</td>
                <td class="money-col">{{ number_format($item->advance ?? 0, 2) }}</td>
                <td>{{ $item->travelagent ?? '' }}</td>
                <td>{{ $item->U_Name ?? '' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="16" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if ($data->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="6" class="text-right">Total</td>
            <td class="text-center">{{ $totalrooms }}</td>
            <td class="text-center">{{ $totalguests }}</td>
            <td class="money-col">{{ number_format($totalroomrate, 2) }}</td>
            <td colspan="4"></td>
            <td class="money-col">{{ number_format($totaladvance, 2) }}</td>
            <td colspan="2"></td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
