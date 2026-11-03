@include('property.print._header', [
    'company' => $company,
    'title'   => 'Damage Report',
])

<style>
    .badge-status {
        display: inline-block;
        padding: 2px 8px;
        border-radius: 4px;
        font-size: 11px;
        font-weight: 700;
        color: #fff;
    }
    .badge-pending    { background: #e67e22; }
    .badge-resolved   { background: #27ae60; }
    .badge-inprogress { background: #2980b9; }
    .info-grid {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 14px;
        font-size: 12px;
    }
    .info-grid td {
        border: none;
        padding: 4px 8px;
        vertical-align: top;
    }
    .info-grid td:first-child {
        font-weight: 700;
        width: 130px;
        color: #555;
    }
    .info-grid td:nth-child(2) {
        color: #333;
    }
    .divider {
        border: none;
        border-top: 1px solid #ccc;
        margin: 10px 0;
    }
    .dr-id {
        font-size: 15px;
        font-weight: 700;
        color: #c0392b;
        text-align: center;
        margin-bottom: 10px;
        letter-spacing: 1px;
    }
    .section-title {
        font-size: 11px;
        font-weight: 700;
        text-transform: uppercase;
        color: #555;
        background: #f2f2f2;
        padding: 4px 8px;
        margin: 10px 0 6px;
        border-left: 3px solid #c0392b;
    }
    .desc-box {
        border: 1px solid #ccc;
        padding: 8px;
        font-size: 12px;
        min-height: 40px;
        border-radius: 3px;
        color: #333;
    }
    .footer-note {
        margin-top: 30px;
        font-size: 10px;
        color: #888;
        text-align: center;
        border-top: 1px solid #ddd;
        padding-top: 8px;
    }
</style>

{{-- Damage ID heading --}}
<div class="dr-id">
    DR / {{ $record->propertyid }} / {{ $record->damageid }}
</div>

<hr class="divider">

{{-- Two-column info grid --}}
<div class="section-title">Room &amp; Damage Info</div>
<table class="info-grid">
    <tr>
        <td>Room No</td>
        <td>: <strong>{{ $record->roomno }}</strong></td>
        <td>Date</td>
        <td>: <strong>{{ $record->date ? \Carbon\Carbon::parse($record->date)->format('d-M-Y') : '—' }}</strong></td>
    </tr>
    <tr>
        <td>Damage Type</td>
        <td>: {{ $record->damagetype }}</td>
        <td>Item Name</td>
        <td>: {{ $record->item }}</td>
    </tr>
</table>

<div class="section-title">Description</div>
<div class="desc-box">
    {{ $record->description ?: 'N/A' }}
</div>

<div class="section-title">Status &amp; Entry Info</div>
<table class="info-grid">
    <tr>
        <td>Status</td>
        <td>:
            @php
                $st  = $record->status ?? 'Pending';
                $cls = 'badge-pending';
                if (strtolower($st) === 'resolved')    $cls = 'badge-resolved';
                if (strtolower($st) === 'in progress') $cls = 'badge-inprogress';
            @endphp
            <span class="badge-status {{ $cls }}">{{ $st }}</span>
        </td>
        <td>Reported By</td>
        <td>: {{ $record->u_name }}</td>
    </tr>
    <tr>
        <td>Entry Date &amp; Time</td>
        <td>: {{ $record->created_at ? \Carbon\Carbon::parse($record->created_at)->format('d-M-Y H:i') : '—' }}</td>
        <td></td>
        <td></td>
    </tr>
</table>

{{-- Signature block --}}
<table style="width:100%; margin-top:40px; font-size:11px;">
    <tr>
        <td style="width:33%; text-align:center; border-top:1px solid #000; padding-top:4px;">
            Reported By
        </td>
        <td style="width:33%;"></td>
        <td style="width:33%; text-align:center; border-top:1px solid #000; padding-top:4px;">
            Authorized Signatory
        </td>
    </tr>
</table>

<div class="footer-note">
    Printed on: {{ \Carbon\Carbon::now()->format('d-M-Y H:i') }} &nbsp;|&nbsp;
    {{ $company->comp_name ?? '' }}
</div>

</body>
</html>
