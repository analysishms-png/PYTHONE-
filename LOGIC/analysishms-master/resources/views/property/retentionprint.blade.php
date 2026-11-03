@php
    $fmt = fn($n) => number_format((float) $n, 2);
    $rate = fn($n) => rtrim(rtrim(number_format((float) $n, 2), '0'), '.');
    $mainLine = $lines->firstWhere('sno', 1);
    $taxLines = $lines->where('sno', '>', 1);
    $title = $isNoShow ? 'RETENTION CHARGE INVOICE' : 'RETENTION CHARGE INVOICE (CANCELLATION)';
    $banner = trim((string) ($main->remarks ?? ''));
    $stayLabel = $isNoShow ? 'No-Show' : 'Cancelled';
    $arr = !empty($first->ArrDate) ? \Carbon\Carbon::parse($first->ArrDate)->format('d M Y') : '';
    $dep = !empty($first->DepDate) ? \Carbon\Carbon::parse($first->DepDate)->format('d M Y') : '';
    $sn = 1;
@endphp
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>{{ $invoiceNo }}</title>
    <style>
        @page {
            size: A4;
            margin: 0;
        }

        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            color: #1e293b;
            margin: 0;
            padding: 12mm;
        }

        .navy {
            color: #0b2a55;
        }

        .r {
            text-align: right;
        }

        .c {
            text-align: center;
        }

        .top {
            display: flex;
            gap: 16px;
            align-items: flex-start;
        }

        .top .brand {
            flex: 1;
            display: flex;
            gap: 16px;
        }

        .logo {
            width: 150px;
            text-align: center;
            font-weight: 700;
            font-size: 18px;
            letter-spacing: 1px;
            color: #0b2a55;
        }

        .logo img {
            max-width: 150px;
            max-height: 90px;
        }

        .hotel h1 {
            margin: 0 0 4px;
            font-size: 19px;
            color: #0f172a;
        }

        .hotel div {
            line-height: 1.55;
            font-size: 12.5px;
        }

        .invbox {
            width: 300px;
            border: 1px solid #b6c6dc;
        }

        .invbox .hd {
            background: #dbe7f5;
            color: #0b2a55;
            text-align: center;
            font-weight: 700;
            font-size: 15px;
            padding: 8px 6px;
            line-height: 1.25;
        }

        .invbox table {
            width: 100%;
            border-collapse: collapse;
        }

        .invbox td {
            padding: 3px 8px;
            font-size: 12px;
        }

        .invbox td:first-child {
            width: 42%;
        }

        .banner {
            margin: 6px 8px 8px;
            background: #fde2e2;
            color: #9b1c1c;
            font-weight: 700;
            text-align: center;
            padding: 6px;
            border-radius: 3px;
        }

        .cards {
            display: flex;
            gap: 14px;
            margin-top: 14px;
        }

        .card {
            flex: 1;
            border: 1px solid #b6c6dc;
        }

        .card .hd {
            background: #dbe7f5;
            color: #0b2a55;
            font-weight: 700;
            font-size: 13.5px;
            padding: 6px 12px;
        }

        .card table {
            width: 100%;
            border-collapse: collapse;
        }

        .card td {
            padding: 3px 12px;
            vertical-align: top;
        }

        .card td:first-child {
            width: 38%;
            color: #475569;
        }

        .items {
            width: 100%;
            border-collapse: collapse;
            margin-top: 14px;
            border: 1px solid #b6c6dc;
        }

        .items th {
            background: #dbe7f5;
            color: #0b2a55;
            padding: 8px;
            border: 1px solid #b6c6dc;
        }

        .items td {
            padding: 7px 8px;
            border: 1px solid #d3deec;
            vertical-align: top;
        }

        .items .sub td {
            background: #e8f0fa;
            font-weight: 700;
            font-size: 15px;
            border-top: 1px solid #b6c6dc;
        }

        .items .less td {
            font-weight: 700;
            border-left: 1px solid #b6c6dc;
            padding: 6px 8px;
        }

        .items .bal td {
            background: #fde2e2;
            color: #9b1c1c;
            font-weight: 700;
            font-size: 15px;
        }

        .lower {
            display: flex;
            gap: 20px;
            margin-top: 16px;
            align-items: flex-start;
        }

        .lower .left {
            flex: 1;
        }

        .terms {
            margin-top: 16px;
            background: #eef4fb;
            border: 1px solid #b6c6dc;
            border-radius: 4px;
            padding: 10px 14px;
        }

        .terms h4 {
            margin: 0 0 6px;
            color: #0b2a55;
            font-size: 13.5px;
        }

        .terms ol {
            margin: 0;
            padding-left: 18px;
            line-height: 1.7;
        }

        .summary {
            width: 290px;
            border-collapse: collapse;
            border: 1px solid #b6c6dc;
        }

        .summary td {
            padding: 6px 10px;
            border: 1px solid #d3deec;
        }

        .summary .tot td {
            font-weight: 700;
            font-size: 14px;
        }

        .summary .bal td {
            background: #fde2e2;
            color: #9b1c1c;
            font-weight: 700;
            font-size: 14px;
        }

        .sign {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-top: 34px;
        }

        .sign .box {
            width: 200px;
            text-align: center;
            border-top: 1px dashed #64748b;
            padding-top: 6px;
        }

        .sign .for {
            text-align: center;
            width: 200px;
            font-weight: 700;
            margin-bottom: 36px;
        }

        .note {
            color: #64748b;
        }

        .no-print {
            text-align: center;
            margin-top: 20px;
        }

        @media print {
            .no-print {
                display: none;
            }

            * {
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }
        }
    </style>
</head>

<body onload="window.print()">

    {{-- Header --}}
    <div class="top">
        <div class="brand">
            <div class="logo">
                @if (!empty($header['logo']))
                    <img src="{{ $header['logo'] }}" alt="Logo">
                @else
                    {{ strtoupper($header['name']) }}
                @endif
            </div>
            <div class="hotel">
                <h1>{{ $header['name'] }}</h1>
                @if ($header['address'])
                    <div>{{ $header['address'] }}</div>
                @endif
                @if ($header['phone'] || $header['email'])
                    <div>
                        @if ($header['phone'])
                            Phone: {{ $header['phone'] }}
                        @endif
                        @if ($header['phone'] && $header['email'])
                            &nbsp;|&nbsp;
                        @endif
                        @if ($header['email'])
                            Email: {{ $header['email'] }}
                        @endif
                    </div>
                @endif
                @if ($header['gstin'])
                    <div>GSTIN: {{ $header['gstin'] }}</div>
                @endif
                @if ($header['website'])
                    <div>{{ $header['website'] }}</div>
                @endif
            </div>
        </div>

        <div class="invbox">
            <div class="hd">{{ $title }}</div>
            <table>
                <tr>
                    <td>Invoice No.</td>
                    <td>: <strong>{{ $invoiceNo }}</strong></td>
                </tr>
                <tr>
                    <td>Invoice Date</td>
                    <td>: {{ \Carbon\Carbon::parse($main->vdate)->format('d M Y') }}</td>
                </tr>
                <tr>
                    <td>Reservation No.</td>
                    <td>: {{ $first->BookNo }}</td>
                </tr>
                <tr>
                    <td>Folio / Doc ID</td>
                    <td>: {{ $docRef }}</td>
                </tr>
                <tr>
                    <td>GSTIN (Guest)</td>
                    <td>: {{ $guestInfo['gstin'] }}</td>
                </tr>
            </table>
            @if ($banner !== '')
                <div class="banner">{!! nl2br(e($banner)) !!}</div>
            @endif
        </div>
    </div>

    {{-- Guest + Reservation --}}
    <div class="cards">
        <div class="card">
            <div class="hd">Guest Details</div>
            <table>
                <tr>
                    <td>Guest Name</td>
                    <td>: {{ $guestInfo['name'] }}</td>
                </tr>
                <tr>
                    <td>Contact No.</td>
                    <td>: {{ $guestInfo['mobile'] }}</td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>: {{ $guestInfo['email'] }}</td>
                </tr>
                <tr>
                    <td>Company</td>
                    <td>: {{ $guestInfo['company'] }}</td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>: {{ $guestInfo['address'] }}</td>
                </tr>
            </table>
        </div>

        <div class="card">
            <div class="hd">Reservation Details</div>
            <table>
                <tr>
                    <td>Arrival Date</td>
                    <td>: <strong>{{ $arr }}</strong></td>
                </tr>
                <tr>
                    <td>Departure Date</td>
                    <td>: {{ $dep }}</td>
                </tr>
                <tr>
                    <td>No. of Nights</td>
                    <td>: {{ $first->NoDays ?? '' }}</td>
                </tr>
                <tr>
                    <td>Room Type</td>
                    <td>: {{ $info['roomType'] }}</td>
                </tr>
                <tr>
                    <td>No. of Rooms</td>
                    <td>: {{ $info['rooms'] }}</td>
                </tr>
                <tr>
                    <td>Room Rate (₹)</td>
                    <td>: {{ $info['roomRate'] !== null ? $fmt($info['roomRate']) : '-' }}</td>
                </tr>
            </table>
        </div>
    </div>

    {{-- Items --}}
    <table class="items">
        <thead>
            <tr>
                <th style="width:6%">S.No.</th>
                <th>Description</th>
                <th style="width:12%">HSN/SAC</th>
                <th style="width:7%">Qty</th>
                <th style="width:13%">Rate (₹)</th>
                <th style="width:15%">Amount (₹)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="c">{{ $sn++ }}</td>
                <td>
                    <strong>{{ $info['revName'] }}</strong><br>
                    Reservation No. {{ $first->BookNo }}<br>
                    Stay Period: {{ $arr }} to {{ $dep }} ({{ $stayLabel }})
                </td>
                <td class="c">{{ $info['hsn'] }}</td>
                <td class="c">1</td>
                <td class="c">{{ $fmt($mainLine->amtdr ?? 0) }}</td>
                <td class="r"><strong>{{ $fmt($mainLine->amtdr ?? 0) }}</strong></td>
            </tr>

            @foreach ($taxLines as $t)
                <tr>
                    <td class="c">{{ $sn++ }}</td>
                    <td>{{ \Illuminate\Support\Str::before($t->comments, ',') }} @ {{ $rate($t->taxper) }}%</td>
                    <td class="c">-</td>
                    <td class="c">-</td>
                    <td class="c">{{ $rate($t->taxper) }}%</td>
                    <td class="r">{{ $fmt($t->amtdr) }}</td>
                </tr>
            @endforeach

            <tr class="sub">
                <td colspan="5" class="r">Total</td>
                <td class="r">{{ $fmt($total) }}</td>
            </tr>
        </tbody>
    </table>

    {{-- Words + summary --}}
    <div class="lower">
        <div class="left">
            <strong>Amount in Words :</strong><br>
            {{ $words }}

            <div class="terms">
                <h4>Terms &amp; Conditions :</h4>
                <ol>
                    <li>This invoice is raised as per the hotel's cancellation / no-show policy.</li>
                    @if ($isNoShow)
                        <li>Guest did not arrive on the scheduled check-in date.</li>
                    @else
                        <li>The booking was cancelled by the guest.</li>
                    @endif
                    <li>Advance received has been adjusted towards retention charges.</li>
                    <li>This is a non-refundable charge as per the booking terms.</li>
                    <li>For any queries, please contact Front Office Manager.</li>
                </ol>
            </div>
        </div>

        <table class="summary">
            <tr class="tot">
                <td>Total</td>
                <td class="r">₹ {{ $fmt($total) }}</td>
            </tr>
            <tr>
                <td>Advance Received</td>
                <td class="r">(-) ₹ {{ $fmt($advanceTotal) }}</td>
            </tr>
            <tr class="bal">
                <td>{{ $balance >= 0 ? 'Balance Receivable' : 'Balance Payable' }}</td>
                <td class="r">₹ {{ $fmt(abs($balance)) }}</td>
            </tr>
        </table>
    </div>

    {{-- Signatures --}}
    <div class="sign">
        <div class="note">This is a computer generated invoice.</div>
        <div class="box">Guest Signature<br>(Acknowledged)</div>
        <div>
            <div class="for">For {{ $header['name'] }}</div>
            <div class="box">Authorized Signatory</div>
        </div>
    </div>

    <div class="no-print">
        <button onclick="window.print()">Print</button>
    </div>
</body>

</html>
