@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Daily Meter Reading Register',
    'fromDate' => $fromDate ?? '',
    'toDate'   => $toDate   ?? '',
])

<style>
    body { font-size: 9px; margin: 10px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 3px 4px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 8px; }
    td { font-size: 8px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    From: {{ $fromDate ? \Carbon\Carbon::parse($fromDate)->format('d/m/Y') : '—' }}
    &nbsp;&nbsp;To: {{ $toDate ? \Carbon\Carbon::parse($toDate)->format('d/m/Y') : '—' }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:3%;">#</th>
            <th style="width:9%;">Date</th>
            <th style="width:11%; text-align:left;">Floor</th>
            <th style="width:11%; text-align:left;">Shop No</th>
            <th style="width:10%; text-align:left;">Meter No</th>
            <th style="width:8%;">Previous</th>
            <th style="width:8%;">Current</th>
            <th style="width:5%;">MF</th>
            <th style="width:8%;">Consumption</th>
            <th style="width:10%; text-align:left;">Reading By</th>
            <th style="width:12%;">Time</th>
            <th style="width:5%;">Photo</th>
        </tr>
    </thead>
    <tbody>
        @forelse($rows as $i => $row)
            <tr>
                <td class="text-center">{{ $i + 1 }}</td>
                <td class="text-center">
                    {{ $row->ReadingDate ? \Carbon\Carbon::parse($row->ReadingDate)->format('d/m/Y') : '—' }}
                </td>
                <td>{{ $row->Floor ?? '—' }}</td>
                <td>{{ $row->ShopNo ?? '—' }}</td>
                <td>{{ $row->MeterNo ?? '—' }}</td>
                <td class="text-right">{{ $row->Previous }}</td>
                <td class="text-right">{{ $row->Current }}</td>
                <td class="text-center">{{ $row->MF }}</td>
                <td class="text-right">{{ $row->Consumption }}</td>
                <td>{{ $row->ReadingBy ?? '—' }}</td>
                <td class="text-center">
                    @if($row->Time)
                        {{ \Carbon\Carbon::parse($row->Time)->format('d/m/Y h:i A') }}
                    @else
                        —
                    @endif
                </td>
                <td class="text-center">
                    @php
                        $photoPath = $row->Photo
                            ? ltrim(preg_replace('#^(storage/|/storage/)#i', '', $row->Photo), '/')
                            : null;
                        $photoFile = null;
                        if ($photoPath) {
                            if (file_exists(public_path($photoPath))) {
                                $photoFile = public_path($photoPath);
                            } elseif (file_exists(storage_path('app/public/' . $photoPath))) {
                                $photoFile = storage_path('app/public/' . $photoPath);
                            }
                        }
                    @endphp
                    @if($photoFile)
                        <img src="{{ $photoFile }}" style="max-height:28px; max-width:56px;">
                    @else
                        
                    @endif
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="12" class="text-center" style="padding:12px;">
                    No meter readings found.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>