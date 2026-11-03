@include('property.print._header', [
    'company' => $company,
    'title'   => 'Housekeeping Assignment Sheet',
])

<style>
    .text-center  { text-align: center; }
    .text-right   { text-align: right; }
    .bold         { font-weight: 700; }
    .text-blue    { color: #0d6efd; }
    .text-orange  { color: #e07700; }
    .text-red     { color: #dc3545; }
    .text-green   { color: #198754; }
    .text-muted   { color: #666; }
</style>
<!-- 
{{-- Date + Summary Bar --}}
<table style="width:100%; border-collapse:collapse; margin-bottom:12px; background:#f5f7fa; border:1px solid #ccc;">
    <tr>
        <td style="padding:5px 12px; border:1px solid #ccc; text-align:center; font-size:11px;">
            Assignment Date<br><span style="font-size:14px; font-weight:700;">{{ \Carbon\Carbon::parse($asOnDate)->format('d/m/Y') }}</span>
        </td>
        <td style="padding:5px 12px; border:1px solid #ccc; text-align:center; font-size:11px;">
            Total Assigned Rooms<br><span style="font-size:14px; font-weight:700; color:#0d6efd;">{{ $totalAssigned }}</span>
        </td>
        <td style="padding:5px 12px; border:1px solid #ccc; text-align:center; font-size:11px;">
            Housekeepers On Duty<br><span style="font-size:14px; font-weight:700; color:#198754;">{{ $totalHk }}</span>
        </td>
    </tr>
</table> -->

@forelse($groupedByHk as $code => $hk)

{{-- HK Section Header --}}
<table style="width:100%; border-collapse:collapse; margin-top:14px; margin-bottom:0;">
    <tr>
        <td style="background:#e8edf7; border-left:4px solid #0d6efd; padding:5px 8px; font-size:12px; font-weight:700;">
            {{ $hk['hkname'] }}
            &nbsp;&mdash;&nbsp;
            {{ count($hk['rooms']) }} Room{{ count($hk['rooms']) !== 1 ? 's' : '' }}
            @if(!empty($hk['assno']))
                <span style="font-weight:700; font-size:11px; color:#0d6efd;">
                    &nbsp;|&nbsp; Ass No: #{{ $hk['assno'] }}
                </span>
            @endif
            @if(!empty($hk['supname']))
                <span style="font-weight:400; font-size:10px; color:#555;">
                    &nbsp;|&nbsp; Supervisor: {{ $hk['supname'] }}
                </span>
            @endif
        </td>
    </tr>
</table>

{{-- Rooms Table --}}
<table style="width:100%; border-collapse:collapse; margin-bottom:4px;">
    <thead>
        <tr>
            <th style="width:4%;  text-align:center;">SN</th>
            <th style="width:10%;">Room No.</th>
            <th style="width:16%;">Floor</th>
            <th style="width:18%;">Status</th>
            <th style="width:14%;">Type</th>
            <th style="width:20%;">Cleaning Type</th>
            <th style="width:10%; text-align:center;">Est. Time</th>
            <th style="width:8%;  text-align:center;">Priority</th>
        </tr>
    </thead>
    <tbody>
        @foreach($hk['rooms'] as $i => $room)
        <tr style="{{ $i % 2 === 0 ? '' : 'background:#f9f9f9;' }}">
            <td style="text-align:center;">{{ $i + 1 }}</td>
            <td style="font-weight:700;">{{ $room->roomno }}</td>
            <td>{{ $room->floor ?? '—' }}</td>
            <td style="{{ str_contains($room->roomstatus ?? '', 'Vacant') ? 'color:#0d6efd; font-weight:600;' : 'color:#e07700; font-weight:600;' }}">
                {{ $room->roomstatus ?? '—' }}
            </td>
            <td>{{ $room->type ?? '—' }}</td>
            <td>{{ $room->ctypename ?? '—' }}</td>
            <td style="text-align:center;">{{ $room->esttime ?? '—' }}</td>
            <td style="text-align:center; {{ ($room->priority ?? '') === 'High' ? 'color:#dc3545; font-weight:600;' : 'color:#198754; font-weight:600;' }}">
                {{ $room->priority ?? '—' }}
            </td>
        </tr>
        @endforeach
    </tbody>
    <tfoot>
        <tr>
            <td colspan="8" style="text-align:right; font-weight:700; font-size:11px; padding:4px 7px; border-top:2px solid #000;">
                Total: {{ count($hk['rooms']) }} Room{{ count($hk['rooms']) !== 1 ? 's' : '' }}
            </td>
        </tr>
    </tfoot>
</table>

@empty
<p style="text-align:center; padding:20px; color:#666;">No assignments found for today.</p>
@endforelse

<!-- {{-- Signature Row --}}
<table style="width:100%; border-collapse:collapse; margin-top:40px;">
    <tr>
        <td style="border:none; border-top:1px solid #000; text-align:center; padding-top:5px; font-size:11px; width:33%;">Prepared By</td>
        <td style="border:none; width:5%;"></td>
        <td style="border:none; border-top:1px solid #000; text-align:center; padding-top:5px; font-size:11px; width:33%;">Supervisor</td>
        <td style="border:none; width:5%;"></td>
        <td style="border:none; border-top:1px solid #000; text-align:center; padding-top:5px; font-size:11px; width:33%;">Housekeeping Manager</td>
    </tr>
</table> -->


</body>
</html>
