@include('property.print._header', [
    'company'  => $company,
    'title'    => $reportTitle,
    'fromDate' => $startdate,
    'toDate'   => $enddate,
])

<style>
    body  { font-size: 8px; margin: 8px; font-family: Arial, sans-serif; }
    h4    { font-size: 10px; margin: 4px 0; }

    table { width: 100%; border-collapse: collapse; margin-top: 6px; }
    th, td { border: 1px solid #999; padding: 2px 4px; }

    /* Header row */
    thead th {
        background: #5c2d91;
        color: #fff;
        text-align: center;
        font-size: 7px;
        font-weight: bold;
    }
    thead th.label-col { text-align: left; min-width: 130px; }

    /* Data cells */
    td { font-size: 7px; vertical-align: middle; }
    td.label-col { text-align: left; }
    td.amt-cell  { text-align: right; }
    td.amt-zero  { color: #bbb; }

    /* Section header */
    tr.section-hdr td {
        background: #dce6f1;
        font-weight: bold;
        color: #00008b;
        text-align: left;
    }

    /* Subtotal rows */
    tr.row-subtotal td {
        background: #d9e1f2;
        font-weight: bold;
        text-align: right;
    }
    tr.row-subtotal td.label-col { text-align: left; }

    /* Summary / bold rows */
    tr.row-summary td { background: #f5f5f5; }
    tr.row-bold td    { background: #d9e1f2; font-weight: bold; }

    /* Total column */
    td.col-total, th.col-total {
        background: #fffacd;
        font-weight: bold;
        text-align: right;
    }
</style>

@php
    /* ── helpers ───────────────────────────────────────── */
    $fmt = fn($v) => $v != 0 ? number_format((float)$v, 2) : '';
    $fmtF = fn($v) => number_format((float)$v, 2);   // always show
    $totalCols = count($kitchens) + 2;                 // label + kitchens + Total
@endphp

<table>
    {{-- ── THEAD ─────────────────────────────────────── --}}
    <thead>
        <tr>
            <th class="label-col"></th>
            @foreach($kitchens as $k)
                <th style="text-align:right;">{{ is_array($k) ? $k['name'] : $k->name }}</th>
            @endforeach
            <th class="col-total">Total</th>
        </tr>
    </thead>

    <tbody>

    {{-- ════ SALE SECTION ══════════════════════════════ --}}
    <tr class="section-hdr"><td colspan="{{ $totalCols }}">Sale</td></tr>

    {{-- Beverage sale --}}
    <tr>
        <td class="label-col">Beverage</td>
        @foreach($kitchens as $k)
            @php $dc = is_array($k) ? $k['dcode'] : $k->dcode; $v = $saleBevPerKitchen[$dc] ?? 0; @endphp
            <td class="amt-cell {{ $v == 0 ? 'amt-zero' : '' }}">{{ $fmt($v) }}</td>
        @endforeach
        <td class="col-total">{{ $fmtF($grandSaleBev) }}</td>
    </tr>

    {{-- Food sale --}}
    <tr>
        <td class="label-col">Food</td>
        @foreach($kitchens as $k)
            @php $dc = is_array($k) ? $k['dcode'] : $k->dcode; $v = $saleFoodPerKitchen[$dc] ?? 0; @endphp
            <td class="amt-cell {{ $v == 0 ? 'amt-zero' : '' }}">{{ $fmt($v) }}</td>
        @endforeach
        <td class="col-total">{{ $fmtF($grandSaleFood) }}</td>
    </tr>

    {{-- Net Sale --}}
    <tr class="row-subtotal">
        <td class="label-col">Net Sale</td>
        @foreach($kitchens as $k)
            @php $dc = is_array($k) ? $k['dcode'] : $k->dcode; $v = $netSalePerKitchen[$dc] ?? 0; @endphp
            <td class="amt-cell">{{ $fmtF($v) }}</td>
        @endforeach
        <td class="col-total">{{ $fmtF($grandNetSale) }}</td>
    </tr>

    {{-- ════ COST INCURRED SECTION ═══════════════════════ --}}
    <tr class="section-hdr"><td colspan="{{ $totalCols }}">Cost Incurred</td></tr>

    @foreach($costCatTypes as $cat)
        @php
            $byDcode  = $costMatrix[$cat] ?? [];
            $rowTotal = array_sum($byDcode);
        @endphp
        <tr>
            <td class="label-col">{{ $cat }}</td>
            @foreach($kitchens as $k)
                @php $dc = is_array($k) ? $k['dcode'] : $k->dcode; $v = $byDcode[$dc] ?? 0; @endphp
                <td class="amt-cell {{ $v == 0 ? 'amt-zero' : '' }}">{{ $fmt($v) }}</td>
            @endforeach
            <td class="col-total">{{ $fmt($rowTotal) }}</td>
        </tr>
    @endforeach

    {{-- Net Consumed --}}
    <tr class="row-subtotal">
        <td class="label-col">Net Consumed</td>
        @foreach($kitchens as $k)
            @php $dc = is_array($k) ? $k['dcode'] : $k->dcode; $v = $netConsumedPerKitchen[$dc] ?? 0; @endphp
            <td class="amt-cell">{{ $fmtF($v) }}</td>
        @endforeach
        <td class="col-total">{{ $fmtF($grandNetConsumed) }}</td>
    </tr>

    {{-- ════ SUMMARY SECTION ══════════════════════════════ --}}
    <tr class="section-hdr"><td colspan="{{ $totalCols }}"></td></tr>

    {{-- Net Cost Ratio --}}
    <tr class="row-summary">
        <td class="label-col">Net Cost Ratio</td>
        @foreach($kitchens as $k)<td class="amt-cell"></td>@endforeach
        <td class="col-total">{{ $fmtF($netCostRatio) }}</td>
    </tr>

    {{-- NC Details --}}
    <tr class="row-summary">
        <td class="label-col">NC Details</td>
        @foreach($kitchens as $k)<td class="amt-cell"></td>@endforeach
        <td class="col-total"></td>
    </tr>

    {{-- Staff Kitchen Issue --}}
    <tr class="row-summary">
        <td class="label-col">Staff Kitchen Issue</td>
        @foreach($kitchens as $k)<td class="amt-cell"></td>@endforeach
        <td class="col-total">{{ $fmtF($grandStaffIssue) }}</td>
    </tr>

    {{-- Net Cost --}}
    <tr class="row-bold">
        <td class="label-col">Net Cost</td>
        @foreach($kitchens as $k)<td class="amt-cell"></td>@endforeach
        <td class="col-total">{{ $fmtF($grandNetCost) }}</td>
    </tr>

    {{-- Net Cost Of Food --}}
    <tr class="row-summary">
        <td class="label-col">Net Cost Of Food</td>
        @foreach($kitchens as $k)<td class="amt-cell"></td>@endforeach
        <td class="col-total">{{ $fmtF($netCostOfFood) }}</td>
    </tr>

    {{-- Net Cost Of Beverages --}}
    <tr class="row-summary">
        <td class="label-col">Net Cost Of Beverages</td>
        @foreach($kitchens as $k)<td class="amt-cell"></td>@endforeach
        <td class="col-total">{{ $fmtF($netCostOfBev) }}</td>
    </tr>

    {{-- Net Cost Of Liquor --}}
    <tr class="row-summary">
        <td class="label-col">Net Cost Of Liquor</td>
        @foreach($kitchens as $k)<td class="amt-cell"></td>@endforeach
        <td class="col-total">{{ $fmtF($netCostOfLiquor) }}</td>
    </tr>

    {{-- Net Total Cost --}}
    <tr class="row-bold">
        <td class="label-col">Net Total Cost</td>
        @foreach($kitchens as $k)<td class="amt-cell"></td>@endforeach
        <td class="col-total">{{ $fmtF($netTotalCost) }}</td>
    </tr>

    </tbody>
</table>

</body>
</html>
