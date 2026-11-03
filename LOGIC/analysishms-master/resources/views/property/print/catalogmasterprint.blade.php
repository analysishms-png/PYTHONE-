<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>{{ $catalog->name }}</title>
<style>
@page { size: A4; margin: 12mm 20mm; }
* { margin: 0; padding: 0; box-sizing: border-box; }
body { font-family: Arial, sans-serif; background: #fff; color: #1c2340; }

.page {
    width: 100%;
    padding: 20px 30px;
    background: #fff;
}

.header {
    text-align: center;
    border-bottom: 2px solid #1c2340;
    padding-bottom: 12px;
    margin-bottom: 18px;
}
.header .logo-img {
    height: 65px;
    margin-bottom: 8px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    max-width: 220px;
    object-fit: contain;
}
.header h1 {
    font-size: 22px;
    font-weight: 900;
    letter-spacing: 4px;
    text-transform: uppercase;
    margin-bottom: 4px;
}
.header .address {
    font-size: 11px;
    color: #333;
    margin: 2px 0;
}
.header .tagline {
    font-size: 10px;
    letter-spacing: 3px;
    color: #555;
    margin-bottom: 10px;
}
.header .events-bar {
    display: inline-block;
    border: 1px solid #1c2340;
    padding: 5px 16px;
    font-size: 9px;
    letter-spacing: 2px;
    color: #1c2340;
}

.cat-heading {
    font-size: 18px;
    font-weight: 900;
    letter-spacing: 3px;
    text-transform: uppercase;
    margin-bottom: 10px;
    text-align: center;
}
.rate-line {
    font-size: 13px;
    margin-bottom: 10px;
}
.guests-line {
    font-size: 13px;
    margin-bottom: 16px;
}
.group-label {
    font-size: 13px;
    font-weight: bold;
    letter-spacing: 1px;
    text-transform: uppercase;
    color: #333;
    margin: 14px 0 6px;
    padding: 6px 8px;
    background: #f4f4f4;
    border-bottom: 1px solid #eee;
    text-align: center;
}
.group-mlimit {
    text-transform: none;
    font-weight: normal;
    font-size: 12px;
    color: #555;
    margin-left: 300px;
    white-space: nowrap;
}

.menu-page {
    page-break-before: always;
    text-align: center;
    padding: 20px 30px;
}
.menu-heading {
    font-size: 22px;
    font-weight: 900;
    letter-spacing: 4px;
    text-transform: uppercase;
    color: #1c2340;
    margin-top: 16px;
    margin-bottom: 16px;
}
.group-subheading {
    font-size: 14px;
    font-weight: bold;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #1c2340;
    margin: 16px 0 6px;
}
.group-choice {
    font-size: 12px;
    font-weight: normal;
    text-transform: none;
    letter-spacing: 0;
    color: #555;
    margin-left: 5px;
}
.item-row {
    display: table;
    width: 100%;
    padding: 3px 0;
    border-bottom: 1px solid #eee;
    font-size: 12.5px;
    text-align: left;
}
.item-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    text-align: left;
    padding-top: 6px;
}
.item-tile {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    font-size: 12.5px;
    padding: 3px 4px;
    min-width: 210px;
}
.item-chk {
    display: table-cell;
    width: 18px;
    vertical-align: middle;
}
.chk-box {
    width: 12px;
    height: 12px;
    border: 1.5px solid #444;
    border-radius: 2px;
    display: inline-block;
}
.item-name {
    display: inline-block;
    vertical-align: middle;
}
.item-choice {
    display: table-cell;
    text-align: right;
    vertical-align: middle;
    font-size: 10px;
    color: #666;
    white-space: nowrap;
    padding-left: 10px;
}
</style>
</head>
<body>
<div class="page">

    {{-- ── HEADER (center aligned) ── --}}
    <div class="header">
        @if(!empty($company->logo) && file_exists(public_path('storage/admin/property_logo/' . $company->logo)))
            <img src="{{ public_path('storage/admin/property_logo/' . $company->logo) }}" class="logo-img" alt="Logo">
        @endif
        <h1>{{ $company->comp_name ?? '' }}</h1>
        <div class="address">{{ trim(($company->address1 ?? '') . ' ' . ($company->address2 ?? '')) }}</div>
        <div class="address">{{ trim(($company->city ?? '') . ($company->pin ?? '' ? ' - ' . $company->pin : '')) }}</div>
        <div class="tagline">CELEBRATE LIFE'S SPECIAL MOMENTS</div>
        <div class="events-bar">
            WEDDINGS &nbsp;|&nbsp; CORPORATE EVENTS &nbsp;|&nbsp; SOCIAL GATHERINGS &nbsp;|&nbsp; BIRTHDAY PARTIES &nbsp;|&nbsp; ANNIVERSARIES
        </div>
    </div>

    {{-- ── CATALOG ── --}}
    <div class="cat-heading">{{ $catalog->name }}</div>

    <div class="rate-line">Per Person Rate __________________ Per Plate</div>
    <div class="guests-line">Minimum_________________________Guests</div>

    @php $grouped = $catalog->items->groupBy('itemgroupname'); @endphp

    @foreach($grouped as $groupName => $groupItems)
        <div class="group-label">
            <span>{{ $groupName && $groupName !== '-' ? $groupName : 'Items' }}</span>
            <span class="group-mlimit">(Choice Any {{ $groupItems->max('mlimit') }})</span>
        </div>
    @endforeach

</div>

{{-- ── MENU SELECTION PAGE ── --}}
<div class="menu-page">
    <div class="menu-heading">Menu Selection</div>

    @foreach($grouped as $groupName => $groupItems)
        <div class="group-subheading">{{ $groupName && $groupName !== '-' ? $groupName : 'Items' }}<span class="group-choice">(Choice Any {{ $groupItems->max('mlimit') }})</span></div>
        <div class="item-list">
            @foreach($groupItems as $item)
                <div class="item-tile">
                    <span class="chk-box"></span>
                    <span class="item-name">{{ $item->itemname ?? $item->itemcode }}</span>
                </div>
            @endforeach
        </div>
    @endforeach
</div>

</body>
</html>