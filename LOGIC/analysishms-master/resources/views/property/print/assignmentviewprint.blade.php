@include('property.print._header', [
    'company'  => $company,
    'title'    => 'View Assignment',
    'fromDate' => $fromDate,
    'toDate'   => $toDate,
])

<style>
    body { font-size: 10px; margin: 10px; }
    table { width: 100%; border-collapse: collapse; margin-top: 14px; }
    th, td { border: 1px solid #000; padding: 4px 5px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 9px; }
    td { font-size: 9px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .bold { font-weight: 700; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
    .day-title { text-align: left; font-weight: 700; font-size: 11px; margin-top: 12px; }
    .day-title .subtxt { font-weight: 400; color: #555; }
</style>

@if(!empty($hkFilterName))
    <p class="type-info">
        Housekeeper: {{ $hkFilterName }}
    </p>
@endif

@forelse($grouped as $date => $hks)
    @php
        $dateTotal = collect($hks)->sum(fn($h) => count($h['rooms']));
    @endphp

    <div class="day-title">
        {{ \Carbon\Carbon::parse($date)->format('d/m/Y') }}
        <span class="subtxt">— {{ $dateTotal }} Room{{ $dateTotal !== 1 ? 's' : '' }}</span>
    </div>

    <table>
        <thead>
            <tr>
                <th style="width:3%;">#</th>
                <th style="width:17%; text-align:left;">HK Name</th>
                <th style="width:14%; text-align:left;">Supervisor</th>
                <th style="width:8%;">Ass No</th>
                <th style="width:10%;">Room No.</th>
                <th style="width:12%; text-align:left;">Floor</th>
                <th style="width:12%; text-align:left;">Type</th>
                <th style="width:16%; text-align:left;">CType</th>
            </tr>
        </thead>
        <tbody>
            @foreach($hks as $code => $hk)
                @php
                    $rowspan = count($hk['rooms']);
                    $first = true;
                @endphp
                @foreach($hk['rooms'] as $room)
                    <tr>
                        @if($first)
                            <td class="text-center" rowspan="{{ $rowspan }}">{{ $loop->parent->iteration }}</td>
                            <td class="bold" rowspan="{{ $rowspan }}">{{ $hk['hkname'] }}</td>
                            <td rowspan="{{ $rowspan }}">{{ $hk['supname'] }}</td>
                            <td class="text-center" rowspan="{{ $rowspan }}">{{ $hk['assno'] ? '#' . $hk['assno'] : '—' }}</td>
                            @php
                                $first = false;
                            @endphp
                        @endif
                        <td class="text-center bold">{{ $room->roomno }}</td>
                        <td>{{ $room->floor ?? '—' }}</td>
                        <td>{{ $room->type ?? '—' }}</td>
                        <td>{{ $room->ctypename ?? '—' }}</td>
                    </tr>
                @endforeach
            @endforeach
        </tbody>
    </table>
@empty
    <p style="text-align:center; padding:20px; color:#666; font-size:11px;">
        No assignments found for the selected period.
    </p>
@endforelse

</body>
</html>