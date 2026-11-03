<!DOCTYPE html>
<html>

<head>
    <title>Function Prospectus</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 14px;
            margin: 20px;
        }

        .header,
        .section {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 8px;
        }

        .header td,
        .section td {
            padding: 4px;
            vertical-align: top;
        }

        .title {
            text-align: center;
            font-weight: bold;
            font-size: 18px;
            text-transform: uppercase;
        }

        .company-name {
            text-align: center;
            font-weight: bold;
            font-size: 16px;
        }

        .company-address {
            text-align: center;
            font-size: 12px;
        }

        .bold {
            font-weight: bold;
        }

        .line {
            border-top: 2px solid #000;
            margin: 10px 0;
        }

        .table-border {
            border: 1px solid #000;
            width: 100%;
            border-collapse: collapse;
        }

        .table-border td {
            border: 1px solid #000;
            padding: 5px;
        }

        ol {
            margin: 5px 0 0 15px;
            padding: 0;
        }

        .signature {
            margin-top: 40px;
        }

        .pay-inner {
            border-collapse: collapse;
            width: auto;
        }

        .pay-inner td {
            padding: 2px 8px 2px 0;
            font-size: 13px;
            white-space: nowrap;
            vertical-align: top;
        }

        .pay-inner .pay-mode {
            font-weight: bold;
        }

        .pay-inner .pay-dates {
            font-size: 11px;
            color: #555;
        }

        .pay-inner .pay-amt {
            text-align: right;
            padding-left: 20px;
        }

        .pay-inner .pay-total td {
            border-top: 1px solid #999;
            background: #f0f0f0;
            font-weight: bold;
            font-size: 12px;
            padding-top: 3px;
        }
    </style>
</head>

<body>

    <!-- Header -->
    <div class="company-name">{{ $companyfp->companyname ?? ($company->comp_name ?? 'COMPANY NAME') }}</div>
    <div class="company-address">{{ $companyfp->companyaddress ?? ($company->address1 ?? '') }}</div>
    <div class="company-address">{{ $statename ?? '' }}</div>
    <div class="title">FUNCTION PROSPECTUS</div>
    <div style="text-align:right;"><b>FP No : </b>{{ $hallbookData->vno ?? '-' }}</div>
    <div class="line"></div>

    <!-- Event Info -->
    <table class="header">
        <tr>
            <td class="bold">DATE</td>
            <td>{{ $hallbookData->vdate ? \Carbon\Carbon::parse($hallbookData->vdate)->format('d-m-Y') : '-' }}</td>
            <td class="bold">DAY</td>
            <td>{{ $hallbookData->vdate ? \Carbon\Carbon::parse($hallbookData->vdate)->format('l') : '-' }}</td>
            <td class="bold">TIME</td>
            <td>{{ $hallbookData->vtime ?? '-' }}</td>
        </tr>
        <tr>
            <td class="bold">TYPE OF FUNCTION</td>
            <td>{{ $hallbookData->functionname ?? '-' }}</td>
            <td class="bold">VENUE</td>
            <td colspan="3">
                @if ($venueData->count() > 0)
                    {{ $venueData->pluck('VenuName')->implode(', ') }}
                @else
                    N/A
                @endif
            </td>
        </tr>
    </table>
    <hr style="border: 1px solid black; width: 100%;">

    <!-- Party Info -->
    <table class="section">
        <tr>
            <td class="bold">NAME OF THE GROUP/PERSON</td>
            <td>{{ $hallbookData->partyname ?? '-' }}</td>
            <td class="bold">PAN NO.</td>
            <td>{{ $hallbookData->panno ?? '-' }}</td>
        </tr>
        <tr>
            <td class="bold">ADDRESS</td>
            <td colspan="3">{{ trim($hallbookData->add1 . ' ' . $hallbookData->add2) }}</td>
        </tr>
        <tr>
            <td class="bold">CONTACT NO.</td>
            <td colspan="3">{{ $hallbookData->mobileno ?? '-' }}</td>
        </tr>
    </table>
    <hr style="border: 1px solid black; width: 100%;">

    <!-- Payment & PAX -->
    <table class="section">
        <tr>
            <td class="bold" style="width:160px; vertical-align:top;">MODE OF PAYMENT</td>
            <td style="vertical-align:top;">
                @if ($advanceData->count() > 0)
                    <table class="pay-inner">
                        @foreach ($advanceData->groupBy('paytype') as $mode => $payments)
                            <tr>
                                <td>
                                    <div class="pay-mode">{{ $mode ?: 'Cash' }}</div>
                                    <div class="pay-dates">
                                        @foreach ($payments->pluck('vdate')->unique() as $d)
                                            {{ \Carbon\Carbon::parse($d)->format('d-m-Y') }}{{ !$loop->last ? ', ' : '' }}
                                        @endforeach
                                    </div>
                                </td>
                                <td class="pay-amt">&#8377;{{ number_format($payments->sum('Adv'), 2) }}</td>
                            </tr>
                        @endforeach
                        <tr class="pay-total">
                            <td>Total Advance</td>
                            <td class="pay-amt">&#8377;{{ number_format($advanceData->sum('Adv'), 2) }}</td>
                        </tr>
                    </table>
                @else
                    {{ $hallbookData->PaymentMode ?? 'Cash' }}
                @endif
            </td>
            <td class="bold" style="width:130px;">R.T.NO. &amp; DATE</td>
            <td>{{ $rtno ?? '-' }} &amp; {{ $dates ?? '-' }}</td>
        </tr>
        <tr>
            <td class="bold">GUARANTEED PAX</td>
            <td>{{ $hallbookData->guaratt ?? '-' }}</td>
            <td class="bold">EXPECTED PAX</td>
            <td>{{ $hallbookData->expatt ?? '-' }}</td>
            <td class="bold">VARIANCE</td>
            <td>{{ ($hallbookData->expatt ?? 0) - ($hallbookData->guaratt ?? 0) }}</td>
        </tr>
        <tr>
            <td class="bold">RATE PER PAX</td>
            <td colspan="5">{{ number_format($hallbookData->coverrate ?? 0, 2) }}</td>
        </tr>
    </table>
    <hr style="border: 1px solid black; width: 100%;">

    <!-- Menu Section -->
    <div class="bold">MENU :</div>
    <table class="table-border">
        <tr>
            <td class="bold">Item Name</td>
            <td class="bold">Remarks</td>
        </tr>
        <tr>
            <td colspan="2">remark</td>
        </tr>
    </table>

    <!-- Special Instructions -->
    <hr style="border: 1px solid black; width: 100%;">
    @if ($hallbookData->menuspl1 || $hallbookData->menuspl2 || $hallbookData->menuspl3)
        <div class="bold">SPECIAL INSTRUCTIONS :</div>
        <ul>
            @foreach (range(1, 7) as $i)
                @php $field = 'menuspl' . $i; @endphp
                @if (!empty($hallbookData->$field))
                    <li>{{ $hallbookData->$field }}</li>
                @endif
            @endforeach
        </ul>
    @endif

    <hr style="border: 1px solid black; width: 100%;">

    <!-- Board to Read -->
    <p class="bold">BOARD TO READ: <span style="font-weight:normal;">{{ $hallbookData->board ?? '-' }}</span></p>

    <!-- Terms -->
    <div class="bold">TERMS & CONDITIONS :</div>
    <ol>
        @if ($companyfp && $companyfp->resinstructionfp1)
            <li>{{ $companyfp->resinstructionfp1 }}</li>
        @endif
        @if ($companyfp && $companyfp->resinstructionfp2)
            <li>{{ $companyfp->resinstructionfp2 }}</li>
        @endif
        @if ($companyfp && $companyfp->resinstructionfp3)
            <li>{{ $companyfp->resinstructionfp3 }}</li>
        @endif
        @if ($companyfp && $companyfp->resinstructionfp4)
            <li>{{ $companyfp->resinstructionfp4 }}</li>
        @endif
        @if ($companyfp && $companyfp->resinstructionfp5)
            <li>{{ $companyfp->resinstructionfp5 }}</li>
        @endif
    </ol>

    <hr style="border: 1px solid black; width: 100%;">

    <p class="bold">NET RATE PER PAX : RATES, TERMS & CONDITIONS, READ & ACCEPTED</p>

    <!-- Signature -->
    <div class="signature">
        <span>(SIG. OF GUEST)</span>
        <span style="float:right;">BANQUET MANAGER</span>
    </div>

    <script>
        window.onload = function() {
            window.print();
        }
    </script>

</body>

</html>
