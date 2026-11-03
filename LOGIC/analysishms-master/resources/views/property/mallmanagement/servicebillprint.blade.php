<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>{{ $billNo }}</title>
<style>
    @page { margin: 12px 20px; }
    * { box-sizing: border-box; }
    body { font-family: DejaVu Sans, Arial, sans-serif; font-size: 11px; color: #000; margin: 0; }
    table { border-collapse: collapse; width: 100%; }
    .right { text-align: right; }
    .center { text-align: center; }
    .bold { font-weight: bold; }
    .page { page-break-after: auto; }

    .hdr-left { width: 30%; vertical-align: top; font-size: 10px; line-height: 1.4; font-weight: bold; }
    .hdr-mid { width: 40%; vertical-align: middle; text-align: center; padding-top: 0px; }
    .hdr-right { width: 30%; vertical-align: middle; text-align: right; padding-top: 0px; }
    .comp-name { font-size: 13px; font-weight: bold; white-space: nowrap; }
    .comp-sub { font-size: 10px; font-weight: bold; }
    .logo { width: 100px; height: 65px; }
    .irn { font-size: 8px; word-break: break-all; }

    .doc-title { text-align: center; font-size: 12px; font-weight: bold; margin-top: 4px; }
    .charge-title { text-align: center; font-size: 12px; font-weight: bold; text-decoration: underline; margin-top: 2px; }

    .to-tbl { margin-top: 6px; }
    .to-left { width: 70%; vertical-align: top; }
    .to-right { width: 30%; vertical-align: top; }
    .kv td { padding: 1px 0; vertical-align: top; font-size: 11px; }
    .to-left > .kv { width: 90%; margin-left: 30px; }
    .kv .k { width: 65px; white-space: nowrap; }
    .kv .c { width: 6px; }
    .to-right .kv .k { width: 48px; }
    .to-right .kv td:last-child { text-align: right; font-weight: bold; }

    .items { margin-top: 6px; }
    .items th { border-top: 1px solid #000; border-bottom: 1px solid #000; padding: 3px 4px; font-size: 11px; }
    .items td { padding: 2px 4px; font-size: 11px; }
    .items td.right { text-align: right; font-weight: bold; }
    .items th.units, .items td.units { text-align: center; }
    .items td.units { font-weight: bold; }
    .charge-name { font-weight: bold; padding-top: 2px; font-size: 11px; }
    .period { padding-left: 12px; font-size: 11px; }
    .meter { padding-left: 12px; font-size: 11px; }

    .sum { margin-top: 6px; }

    .words { margin-top: 2px; padding: 2px 0; border-bottom: 1px solid #000; font-size: 10px; }

    .taxtbl { margin-top: 2px; width: 42%; }
    .taxtbl th, .taxtbl td { border: 1px solid #000; padding: 2px; text-align: center; font-size: 10px; }

    .balance { margin-top: 2px; font-weight: bold; font-size: 10px; }
    .note { font-size: 10px; font-weight: bold; margin-top: 2px; }

    .terms { margin-top: 4px; font-size: 10px; line-height: 1.3; }
    .terms .title { font-weight: bold; }
    .eoe { margin-top: 4px; font-size: 10px; font-weight: bold; }
    .forco { margin-top: 10px; text-align: right; font-size: 10px; font-weight: bold; }
</style>
</head>
<body>

@php
    $fmtDate = function ($d) { return $d ? date('d/M/Y', strtotime($d)) : ''; };
    $fmt3 = function ($n) { return number_format((float) $n, 3); };
    $addrParts = [];
    if (!empty($company->address1)) { $addrParts[] = $company->address1; }
    if (!empty($company->city))     { $addrParts[] = $company->city; }
    if (!empty($company->pin))      { $addrParts[] = $company->pin; }
    $companyAddr = trim(implode(', ', $addrParts));
@endphp

{{-- ===================== PAGE 1 : CUSTOMER COPY ===================== --}}
<div class="page">
    <table>
        <tr>
            <td class="hdr-left">
                <div>PAN No. {{ $companyPanNo }}</div>
                <div>GSTIN : {{ $company->gstin ?? '' }}</div>
                @if(!$isBillOfSupply && !empty($master->saccode))
                    <div>Service Code : {{ $master->saccode }}</div>
                @endif
                @if(!empty($irn))
                    <div>IRN: <span class="irn">{{ $irn }}</span></div>
                @endif
            </td>
            <td class="hdr-mid">
                <div class="comp-name">{{ strtoupper($company->comp_name ?? $company->legal_name ?? '') }}</div>
                @if($companyCinNo !== '' && $companyCinNo !== '0')
                    <div class="comp-sub">[ CIN NO : {{ $companyCinNo }} ]</div>
                @endif
                <div class="comp-sub">
                    {{ $companyAddr }}
                </div>
            </td>
            <td class="hdr-right">
                @if($logoPath)
                    <img class="logo" src="{{ $logoPath }}" alt="Logo">
                @endif
            </td>
        </tr>
    </table>

    <div class="doc-title">{{ $isBillOfSupply ? 'BILL OF SUPPLY' : 'TAX INVOICE' }}</div>
    <div class="charge-title">{{ $master->chargename ?? $first->facilitycode }}</div>

    <table class="to-tbl">
        <tr>
            <td class="to-left">
                <div>To,</div>
                <table class="kv">
                    <tr><td class="k" style="white-space:nowrap;">Party Name</td><td class="c">:</td><td>{{ $tenant->name ?? '' }}</td></tr>
                    <tr><td class="k" style="white-space:nowrap;">Address</td><td class="c">:</td><td>{{ $tenant->address ?? '' }}</td></tr>
                    <tr><td class="k" style="white-space:nowrap;">City</td><td class="c">:</td><td>{{ $cityName }}</td></tr>
                    <tr><td class="k" style="white-space:nowrap;">State</td><td class="c">:</td><td>{{ trim($partyStateCode . ' ' . $partyStateName) }}</td></tr>
                    <tr><td class="k" style="white-space:nowrap;">GSTIN</td><td class="c">:</td><td>{{ $tenant->gstin ?? '' }}</td></tr>
                </table>
            </td>
            <td class="to-right">
                <table class="kv">
                    <tr><td class="k">Bill No</td><td class="c">:</td><td>{{ $billNo }}</td></tr>
                    <tr><td class="k">Bill Date</td><td class="c">:</td><td>{{ $fmtDate($first->vdate) }}</td></tr>
                    <tr><td class="k">Due Date</td><td class="c">:</td><td>{{ $fmtDate($dueDate) }}</td></tr>
                </table>
            </td>
        </tr>
    </table>

    <table class="items">
        <thead>
            <tr>
                <th style="text-align:left; width:46%;">Particulars</th>
                <th class="units" style="width:24%;">No. Of Units/Sq Feet</th>
                <th style="text-align:right; width:14%;">Rate/Unit</th>
                <th style="text-align:right; width:16%;">Amount</th>
            </tr>
        </thead>
        <tbody>
            @foreach($groups as $g)
                <tr><td class="charge-name" colspan="4">{{ $g['name'] }}</td></tr>
                @foreach($g['rows'] as $r)
                    <tr>
                        <td class="period">
                            @if(!empty($r['shopname']))
                                <span style="font-weight:bold;">{{ $r['shopname'] }}</span><br>
                            @endif
                            For the Period of {{ $fmtDate($r['from']) }} To {{ $fmtDate($r['to']) }}
                        </td>
                        <td class="units">{{ number_format($r['unit'], 2) }}</td>
                        <td class="right">{{ number_format($r['rate'], 2) }}</td>
                        <td class="right">{{ number_format($r['amount'], 2) }}</td>
                    </tr>
                    @if(!empty($r['meter']))
                        <tr>
                            <td class="meter" colspan="4">MeterReading {{ $fmt3($r['meter']['previous']) }} To {{ $fmt3($r['meter']['current']) }}</td>
                        </tr>
                    @endif
                @endforeach
            @endforeach
        </tbody>
    </table>

    <div class="remarks-sum-wrap">
        <table style="width:100%; border-top:1px solid #000; border-bottom:1px solid #000; margin-top:14px;">
            <tr>
                <td style="width:71%; vertical-align:top; padding:4px 0;">
                    <span style="font-size:12px;">Remarks:</span>
                </td>
                <td style="width:29%; vertical-align:top; padding:2px 0;">
                    <table style="width:100%; border-collapse:collapse;">
                        @if($discount > 0)
                            <tr>
                                <td style="font-size:11px; width:50%; padding:2px 3px;">Discount</td>
                                <td style="font-size:11px; padding:2px 1px;">:</td>
                                <td style="font-size:11px; text-align:right; padding:2px 3px;">{{ number_format($discount, 2) }}</td>
                            </tr>
                        @endif
                        <tr>
                            <td style="font-size:11px; font-weight:bold; width:50%; padding:2px 3px; border-bottom:1px solid #000;"><u>Total</u></td>
                            <td style="font-size:11px; font-weight:bold; padding:2px 1px; border-bottom:1px solid #000;">:</td>
                            <td style="font-size:11px; font-weight:bold; text-align:right; padding:2px 3px; border-bottom:1px solid #000;"><u>{{ number_format($total, 2) }}</u></td>
                        </tr>
                        @foreach($taxes as $code => $t)
                            <tr>
                                <td style="font-size:11px; width:50%; padding:2px 3px;">{{ $t['label'] ?? $code }} {{ rtrim(rtrim(number_format($t['per'], 2), '0'), '.') }}%</td>
                                <td style="font-size:11px; padding:2px 1px;">:</td>
                                <td style="font-size:11px; text-align:right; padding:2px 3px;">{{ number_format($t['amt'], 2) }}</td>
                            </tr>
                        @endforeach
                        <tr>
                            <td style="font-size:11px; padding:2px 3px;">Round Off</td>
                            <td style="font-size:11px; padding:2px 1px;">:</td>
                            <td style="font-size:11px; text-align:right; padding:2px 3px;">{{ number_format($roundOff, 2) }}</td>
                        </tr>
                        <tr>
                            <td style="font-size:12px; font-weight:bold; padding:2px 3px; border-top:1px solid #000; border-bottom:2px solid #000;">Net Amount</td>
                            <td style="font-size:12px; font-weight:bold; padding:2px 1px; border-top:1px solid #000; border-bottom:2px solid #000;">:</td>
                            <td style="font-size:12px; font-weight:bold; text-align:right; padding:2px 3px; border-top:1px solid #000; border-bottom:2px solid #000;">{{ number_format($netAmount, 2) }}</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <div class="words">Amount In Words : {{ $amountWords }}</div>

    {{-- Previous Outstanding + Net Payable --}}
    <div style="border-bottom:1px solid #000; padding:2px 0; margin-top:2px;">
        <table style="width:29%; margin-left:71%; border-collapse:collapse;">
            <tr><td style="font-size:11px; width:46%; padding:2px 3px;">Previous Outstanding</td><td style="font-size:11px; padding:2px 1px;">:</td><td style="font-size:11px; text-align:right; padding:2px 3px;">{{ number_format($previousOutstanding, 2) }}</td></tr>
            <tr style="border-top:1px solid #000;"><td style="font-size:12px; font-weight:bold; padding:2px 3px;">Net Payable</td><td style="font-size:12px; font-weight:bold; padding:2px 1px;">:</td><td style="font-size:12px; font-weight:bold; text-align:right; padding:2px 3px;">{{ number_format($netPayable, 2) }}</td></tr>
        </table>
    </div>

    @if(!$isBillOfSupply && !empty($taxes))
        <table class="taxtbl">
            <tr>
                @foreach($taxes as $code => $t)
                    <th>{{ $t['label'] ?? $code }} (SALES)</th>
                @endforeach
            </tr>
            <tr>
                @foreach($taxes as $code => $t)
                    <td>{{ rtrim(rtrim(number_format($t['per'], 2), '0'), '.') }}%</td>
                @endforeach
            </tr>
            <tr>
                @foreach($taxes as $code => $t)
                    <td>{{ number_format($t['amt'], 2) }}</td>
                @endforeach
            </tr>
            <tr>
                @foreach($taxes as $code => $t)
                    <td>{{ number_format($total, 2) }}</td>
                @endforeach
            </tr>
        </table>
    @endif

    <div class="terms">
        <div class="title">Terms and Conditions :</div>
        @if(!empty($termLines))
            @foreach($termLines as $t)
                <div>{!! nl2br(e($t)) !!}</div>
            @endforeach
        @else
            <div>1. Payment should be made by cheque or Demand Draft in favour of {{ $company->comp_name ?? '' }}, {{ $company->city ?? '' }}</div>
            <div>2. For online Transfer or Payment :- {{ $company->bankname ?? '' }}, Current A/C No.{{ $company->acnum ?? '' }}, IFSC Code- {{ $company->ifsccode ?? '' }}</div>
            <div>3. Interest will be charged @ 24% p.a. on overdue Bills.</div>
            <div>4. Any taxes and duties not covered in this bill but charged by the authorities in future with retrospective effect shall be extra and chargeable</div>
            <div>5. All the disputes are subject to judicial jurisdiction of {{ $company->city ?? '' }} only.</div>
        @endif
    </div>
    <div class="eoe">E . &amp; O . E .</div>
    <div class="forco">For {{ $company->comp_name ?? '' }}</div>

</div>

</body>
</html>
