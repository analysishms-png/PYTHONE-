@include('property.print._header', [
    'company' => $company,
    'title'   => 'Lost & Found Report',
])

<style>
    .text-center  { text-align: center; }
    .text-right   { text-align: right; }
    .bold         { font-weight: 700; }
    .text-muted   { color: #666; }
    .text-blue    { color: #1e3a5f; }
    .text-green   { color: #0d9488; }
    .text-rose    { color: #9f1239; }
    .text-orange  { color: #b45309; }
    .text-slate   { color: #475569; }
    .section-title { background: #1e3a5f; color: #fff; padding: 4px 8px; font-size: 11px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 6px; margin-top: 12px; }
    .section-title:first-of-type { margin-top: 0; }
    .section-green  { background: #0d9488; }
    .section-orange { background: #b45309; }
    .section-rose   { background: #9f1239; }
    .section-slate  { background: #475569; }
    .dashed-line { border-bottom: 1px dashed #ccc; margin: 0; }
    .info-table { width: 100%; border-collapse: collapse; margin-bottom: 4px; }
    .info-table td { padding: 3px 6px; font-size: 11px; border: none; vertical-align: top; }
    .info-table .label { width: 130px; font-weight: 700; color: #555; white-space: nowrap; }
    .info-table .value { color: #000; }
    .badge { display: inline-block; padding: 1px 8px; font-size: 10px; font-weight: 700; border-radius: 3px; }
    .badge-success { background: #d1fae5; color: #065f46; }
    .badge-warning { background: #fef3c7; color: #92400e; }
    .badge-primary { background: #dbeafe; color: #1e40af; }
    .badge-secondary { background: #f1f5f9; color: #475569; }
    .badge-danger  { background: #fee2e2; color: #991b1b; }
    .badge-info    { background: #cffafe; color: #155e75; }
</style>

{{-- Tag Info Row --}}
<table style="width:100%; border-collapse:collapse; margin-bottom:10px;">
    <tr>
        <td style="width:50%; vertical-align:top;">
            <div style="font-size:18px; font-weight:800; color:#1e3a5f; letter-spacing:1px;">{{ $tagNo }}</div>
            <div style="font-size:10px; color:#666;">Tag No.</div>
        </td>
        <td style="width:50%; vertical-align:top; text-align:right;">
            <div style="font-size:11px; color:#555;">
                @php
                    $badgeCls = match($item->status ?? 'Found') {
                        'Found'      => 'badge-success',
                        'Claimed'    => 'badge-warning',
                        'Stored'     => 'badge-info',
                        'HandedOver' => 'badge-primary',
                        'Courier'    => 'badge-secondary',
                        'Disposed'   => 'badge-danger',
                        default      => 'badge-secondary',
                    };
                @endphp
                <span class="badge {{ $badgeCls }}">{{ $item->status ?: 'Found' }}</span>
            </div>
            <div style="font-size:10px; color:#999; margin-top:2px;">Current Status</div>
        </td>
    </tr>
</table>

<div style="display:flex; gap:16px;">

    {{-- ══ LEFT COLUMN ══ --}}
    <div style="flex:7;">

        {{-- Found By / Location / Time --}}
        <div class="section-title">&#128269; Found By / Location / Time</div>
        <table class="info-table">
            <tr><td class="label">Found Date</td><td class="value">{{ $item->founddate ? \Carbon\Carbon::parse($item->founddate)->format('d-M-Y') : '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Found Time</td><td class="value">{{ $item->foundtime ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Room No.</td><td class="value">{{ $item->roomno ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Area / Location</td><td class="value">{{ $item->foundlocation ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Found By</td><td class="value">{{ $foundByName ?: '—' }}</td></tr>
        </table>

        {{-- Item Information --}}
        <div class="section-title section-green">&#128230; Item Information</div>
        <table class="info-table">
            <tr><td class="label">Category</td><td class="value">{{ $item->itemcategory ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Item Name</td><td class="value">{{ $item->itemname ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Brand / Model</td><td class="value">{{ $item->brandname ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Color</td><td class="value">{{ $item->color ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Quantity</td><td class="value">
                {{ $item->quantity ?: '—' }}
                @if($item->perishable)
                    <span class="badge {{ $item->perishable === 'Yes' ? 'badge-danger' : 'badge-secondary' }}">
                        Perishable: {{ $item->perishable }}
                    </span>
                @endif
            </td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Condition</td><td class="value">{{ $item->itemcondition ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Description</td><td class="value">{{ $item->description ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Est. Value (&#8377;)</td><td class="value">{{ $item->estimatedvalue ? '&#8377;' . number_format($item->estimatedvalue, 2) : '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Storage Location</td><td class="value">{{ $item->storagelocation ?: '—' }}</td></tr>
        </table>

        {{-- Remarks --}}
        @if($item->remarks)
        <div class="section-title" style="background:#5b21b6;">&#128196; Remarks</div>
        <p style="margin:4px 6px; font-size:11px; color:#555;">{{ $item->remarks }}</p>
        @endif

    </div>

    {{-- ══ RIGHT COLUMN ══ --}}
    <div style="flex:5;">

        {{-- Guest / Claim Info --}}
        <div class="section-title section-rose">&#128100; Guest / Claim Info</div>
        <table class="info-table">
            <tr><td class="label">Guest Name</td><td class="value">{{ $item->claimby ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Mobile No.</td><td class="value">{{ $item->claimmoblieno ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Email</td><td class="value">{{ $item->claimemail ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Remarks</td><td class="value">{{ $item->claimremark ?: '—' }}</td></tr>
        </table>

        {{-- Handover / Disposition --}}
        <div class="section-title section-slate">&#129508; Handover / Disposition</div>
        <table class="info-table">
            <tr><td class="label">Handover To</td><td class="value">{{ $item->handoverto ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Handover Date</td><td class="value">{{ $item->handoverdate ?: '—' }}</td></tr>
            <tr><td colspan="2" class="dashed-line"></td></tr>
            <tr><td class="label">Received By</td><td class="value">{{ $item->receivedby ?: '—' }}</td></tr>
        </table>

    </div>

</div>

<p style="text-align:center; margin-top:20px; padding-top:10px; border-top:1px solid #ddd; font-size:10px; color:#999;">
    This is a computer-generated report.<br>
    Printed on: {{ now()->format('d-M-Y h:i A') }}
</p>

</body>
</html>
