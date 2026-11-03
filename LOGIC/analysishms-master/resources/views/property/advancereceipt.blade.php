<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Advance Receipt</title>
    <style>
        @page {
            margin: 10mm 10mm;
        }

        * {
            box-sizing: border-box;
        }

        body {
            color: #111;
            font-family: "DejaVu Sans", sans-serif;
            font-size: 10px;
            line-height: 1.2;
            margin: 0;
        }

        .receipt-copy {
            height: 130mm;
            padding: 2mm 0;
        }

        .divider {
            border-top: 1px dashed #333;
            margin: 3mm 0;
        }

        .title {
            font-size: 13px;
            font-weight: bold;
            margin-bottom: 3mm;
            text-align: left;
        }

        .header-table,
        .info-table,
        .amount-table {
            border-collapse: collapse;
            width: 100%;
        }

        .header-logo {
            text-align: left;
            vertical-align: top;
            width: 18mm;
        }

        .header-logo img {
            max-height: 14mm;
            max-width: 16mm;
        }

        .company {
            text-align: center;
            vertical-align: top;
        }

        .company-name {
            font-size: 13px;
            font-weight: bold;
            margin: 0 0 1mm;
            text-transform: uppercase;
        }

        .company p {
            margin: 0 0 0.5mm;
        }

        .info-table {
            margin-top: 6mm;
        }

        .info-table td {
            padding: 1mm 0;
            vertical-align: top;
            width: 33.33%;
        }

        .amount-table {
            margin-top: 4mm;
        }

        .amount-table td {
            padding: 1mm 0;
            vertical-align: top;
        }

        .right {
            text-align: right;
        }

        .label {
            color: #444;
            font-weight: bold;
        }

        .capitalize {
            text-transform: capitalize;
        }

        .user {
            font-weight: bold;
            margin-top: 4mm;
        }

        .signature {
            margin-top: 9mm;
            text-align: right;
        }
    </style>
</head>

<body>
    @for ($copy = 1; $copy <= 2; $copy++)
        <div class="receipt-copy">
            <div class="title">Advance Receipt</div>

            <table class="header-table">
                <tr>
                    <td class="header-logo">
                        @if (!empty($receipt['logoPath']))
                            <img src="{{ $receipt['logoPath'] }}" alt="Logo">
                        @endif
                    </td>
                    <td class="company">
                        <p class="company-name">{{ $receipt['companyName'] }}</p>
                        <p><span class="label">Address:</span> {{ $receipt['address'] }}</p>
                        <p><span class="label">E-mail:</span> {{ $receipt['email'] }}</p>
                        <p><span class="label">Mobile:</span> {{ $receipt['phone'] }}</p>
                    </td>
                    <td style="width: 22mm;"></td>
                </tr>
            </table>

            <table class="info-table">
                <tr>
                    <td><span class="label">Date:</span> {{ $receipt['date'] }}</td>
                    <td><span class="label">Room No.:</span> {{ $receipt['roomNo'] }}</td>
                    <td class="right"><span class="label">Receipt No.:</span> {{ $receipt['receiptNo'] }}</td>
                </tr>
            </table>

            <table class="amount-table">
                <tr>
                    <td>
                        {{ $receipt['receiptType'] }} with thanks from
                        <span class="capitalize">{{ $receipt['guestName'] }}</span>
                    </td>
                    <td class="right">
                        A sum of Rs. {{ $receipt['amount'] }}
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="label">In Words:</span>
                        <span class="capitalize">{{ $receipt['amountWords'] }}</span>
                    </td>
                    <td class="right">
                        {{ $receipt['advanceType'] }} By {{ $receipt['nature'] }}
                    </td>
                </tr>
            </table>

            <p class="user">User: {{ $receipt['userName'] }}</p>

            <div class="signature">(Authorised Signatory)</div>
        </div>

        @if ($copy === 1)
            <div class="divider"></div>
        @endif
    @endfor
</body>

</html>
