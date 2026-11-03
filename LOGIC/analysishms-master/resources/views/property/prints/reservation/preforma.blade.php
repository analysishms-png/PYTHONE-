<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Estimated Invoice - {{ $data->BookNo }} - {{ $data->GuestName }}</title>

    <style>
        @page {
            size: A4 portrait;
            margin: 6mm;
        }

        * {
            box-sizing: border-box;
        }

        body {
            font-family: DejaVu Sans, Arial, sans-serif;
            font-size: 8pt;
            line-height: 1.2;
            color: #222;
            margin: 0;
            padding: 0;
        }

        p {
            margin: 2px 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 4px 0;
            table-layout: fixed;
        }

        th,
        td {
            border: 0.5px solid #ccc;
            padding: 3px 4px;
            vertical-align: top;
            text-align: left;
            overflow-wrap: break-word;
        }

        th {
            background-color: #f0f2f4;
            font-weight: bold;
        }

        thead {
            display: table-header-group;
        }

        tr {
            page-break-inside: avoid;
        }

        .header-table,
        .header-table td,
        .no-border,
        .no-border td {
            border: none;
        }

        .header-table {
            margin: 0 0 4px;
        }

        .logo-cell {
            width: 95px;
            vertical-align: middle;
        }

        .header-info {
            width: 75%;
            text-align: center;
            vertical-align: middle;
            padding-right: 100px;
        }

        .logo {
            display: block;
            max-width: 85px;
            max-height: 65px;
        }

        .invoice-title {
            font-size: 10pt;
            font-weight: bold;
            margin-bottom: 3px;
            text-transform: uppercase;
        }

        .hotel-name {
            font-size: 13pt;
            font-weight: bold;
            margin-bottom: 3px;
        }

        .contact-info {
            font-size: 7.5pt;
            margin: 1px 0;
        }

        .gstin {
            font-weight: bold;
            margin-top: 3px;
        }

        .header-divider {
            border: none;
            border-top: 1px solid #999;
            margin: 4px 0;
            height: 0;
        }

        .details-table {
            table-layout: fixed;
        }

        .details-table td {
            padding: 3px 4px;
        }

        .details-table td:nth-child(odd) {
            width: 50%;
        }

        .label {
            font-weight: bold;
        }

        .main-table {
            font-size: 7.5pt;
        }

        .main-table th,
        .main-table td {
            padding: 3px;
        }

        .main-table th:nth-child(1) {
            width: 7%;
        }

        .main-table th:nth-child(2) {
            width: 25%;
        }

        .main-table th:nth-child(3) {
            width: 10%;
        }

        .main-table th:nth-child(4) {
            width: 7%;
        }

        .main-table th:nth-child(5) {
            width: 12%;
        }

        .main-table th:nth-child(6) {
            width: 13%;
        }

        .main-table th:nth-child(7),
        .main-table th:nth-child(8) {
            width: 13%;
        }

        .num {
            text-align: right;
            white-space: nowrap;
        }

        .center {
            text-align: center;
        }

        .section-title {
            font-size: 8.5pt;
            font-weight: bold;
            margin: 5px 0 2px;
        }

        .summary-layout {
            table-layout: fixed;
            margin-top: 5px;
        }

        .summary-layout>tbody>tr>td {
            vertical-align: top;
            padding: 0;
            border: none;
        }

        .summary-left {
            width: 63%;
            padding-right: 5px !important;
        }

        .summary-right {
            width: 37%;
            padding-left: 2px !important;
        }

        .compact-table {
            font-size: 7.5pt;
            margin: 0 0 4px;
        }

        .compact-table th,
        .compact-table td {
            padding: 3px;
        }

        .totals-table td:first-child {
            width: 62%;
        }

        .totals-table td:last-child {
            text-align: right;
            white-space: nowrap;
        }

        .amount-words {
            margin: 2px 0 5px;
            padding: 4px;
            border: 0.5px solid #ccc;
        }

        .signatures {
            margin-top: 16px;
        }

        .signatures td {
            border: none;
            padding: 0;
            vertical-align: bottom;
        }

        .signature-line {
            width: 160px;
            border-top: 1px solid #555;
            padding-top: 3px;
            margin-top: 20px;
        }

        .signature-right {
            text-align: right;
        }

        .signature-right .signature-line {
            margin-left: auto;
        }

        .footer {
            margin-top: 6px;
            font-size: 7.5pt;
        }

        .footer p {
            margin: 2px 0;
        }

        .policy-title {
            font-weight: bold;
            text-decoration: underline;
            margin-top: 4px;
        }

        .total-row {
            font-weight: bold;
        }
    </style>
</head>

<body>
    @php
        $company = companydata();
        $enviro = fomparameter();

        $logoPath = public_path('storage/admin/property_logo/' . ($company->logo ?? ''));
        $logoSrc = '';

        if (!empty($company->logo) && is_file($logoPath)) {
            $extension = strtolower(pathinfo($logoPath, PATHINFO_EXTENSION));

            $mimeTypes = [
                'jpg' => 'image/jpeg',
                'jpeg' => 'image/jpeg',
                'png' => 'image/png',
                'gif' => 'image/gif',
                'webp' => 'image/webp',
            ];

            if (isset($mimeTypes[$extension])) {
                $logoSrc = 'data:' . $mimeTypes[$extension] . ';base64,' . base64_encode(file_get_contents($logoPath));
            }
        }

        $sn = 1;
        $sne = 1;
        $total = 0;
        $totalroomcharge = 0.0;
        $totalcgst = 0.0;
        $totalsgst = 0.0;
        $totalextras = 0.0;

        $totalExtraCgst = 0.0;
        $totalExtraSgst = 0.0;

        $roomGroups = $rooms->groupBy(function ($room) {
            return $room->RoomCat . '|' . $room->Tarrif . '|' . $room->IncTax;
        });

        $advancesum = 0.0;

        foreach ($advance as $payment) {
            $advancesum += $payment->amtcr;
        }

        $taxableRoomCharge = 0.0;
        $totalTaxCgst = 0.0;
        $totalTaxSgst = 0.0;
    @endphp

    <table class="header-table">
        <tr>
            <td class="logo-cell">
                @if ($logoSrc)
                    <img src="{{ $logoSrc }}" alt="Hotel Logo" class="logo">
                @endif
            </td>

            <td class="header-info">
                <p class="invoice-title">Estimated Invoice</p>
                <p class="hotel-name">{{ $company->comp_name }}</p>

                <p class="contact-info">
                    {{ $company->address1 }}
                    {{ !empty($company->address2) ? ', ' . $company->address2 : '' }}
                    {{ !empty($company->city) ? ', ' . $company->city : '' }}
                    {{ !empty($company->pin) ? ' - ' . $company->pin : '' }}
                    {{ !empty($company->state) ? ', ' . $company->state : '' }}
                </p>

                @if (!empty($company->mobile))
                    <p class="contact-info">Phone: {{ $company->mobile }}</p>
                @endif

                @if (!empty($company->email))
                    <p class="contact-info">Email: {{ $company->email }}</p>
                @endif

                @if (!empty($company->website))
                    <p class="contact-info">Website: {{ $company->website }}</p>
                @endif

                @if (!empty($company->gstin))
                    <p class="contact-info gstin">GSTIN: {{ $company->gstin }}</p>
                @endif
            </td>
        </tr>
    </table>

    <hr class="header-divider">

    <table class="details-table">
        <tbody>
            <tr>
                <td><span class="label">Res. No.:</span> {{ $data->BookNo }}/{{ date('d-M-Y', strtotime($curdate)) }}</td>
                <td><span class="label">G.R. Card No.:</span></td>
            </tr>

            <tr>
                <td><span class="label">Guest Name:</span> {{ $data->GuestName }}</td>
                <td><span class="label">Invoice Date:</span> {{ date('d-M-Y h:i A') }}</td>
            </tr>

            <tr>
                <td><span class="label">Bill To:</span> {{ $data->bill_to }}</td>
                <td><span class="label">Room:</span> {{ $roomcatsnameswithcomma }}</td>
            </tr>

            <tr>
                <td><span class="label">Bill To Address:</span> {{ $data->guestadd }}</td>
                <td><span class="label">Persons:</span> {{ $data->total_adults }} Adults / {{ $data->total_childs }} Children</td>
            </tr>

            <tr>
                <td><span class="label">State:</span> {{ $data->state_name }}</td>
                <td><span class="label">Rate Type:</span> {{ $data->planname }}</td>
            </tr>

            <tr>
                <td>
                    <span class="label">Bill To GSTIN:</span>
                    {{ !empty($data->Company) && subgroup($data->Company) ? subgroup($data->Company)->gstin : '' }}
                </td>
                <td><span class="label">No. of Nights:</span> {{ $data->NoDays }}</td>
            </tr>

            <tr>
                <td><span class="label">Arrival:</span> {{ date('d-M-Y', strtotime($data->ArrDate)) }}</td>
                <td><span class="label">Departure:</span> {{ date('d-M-Y', strtotime($data->DepDate)) }}</td>
            </tr>
        </tbody>
    </table>

    <table class="main-table">
        <thead>
            <tr>
                <th>Sr.</th>
                <th>Particular</th>
                <th>HSN</th>
                <th class="center">Qty</th>
                <th class="num">Rate</th>
                <th class="num">Total</th>
                <th class="num">CGST</th>
                <th class="num">SGST</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($roomGroups as $group)
                @php
                    $item = $group->first();
                    $taxinc = $item->IncTax == 'Y';
                    $totalNights = $group->sum('NoDays');
                    $totalRows = $group->count();

                    if ($taxinc) {
                        $tarrifamt = $item->Tarrif / (1 + ($item->cgst_rate + $item->sgst_rate) / 100);
                    } else {
                        $tarrifamt = $item->Tarrif;
                    }

                    $total = $tarrifamt * $totalNights;
                    $cgst = ($total * $item->cgst_rate) / 100;
                    $sgst = ($total * $item->sgst_rate) / 100;

                    $totalroomcharge += $total;
                    $totalcgst += $cgst;
                    $totalsgst += $sgst;
                @endphp

                <tr>
                    <td>{{ $sn++ }}</td>
                    <td>Room Charges ({{ $item->roomcatname }})</td>
                    <td>996311</td>
                    <td class="center">{{ $totalRows }}</td>
                    <td class="num">{{ number_format($tarrifamt, 2) }}</td>
                    <td class="num">{{ number_format($total, 2) }}</td>
                    <td class="num">{{ number_format($cgst, 2) }}</td>
                    <td class="num">{{ number_format($sgst, 2) }}</td>
                </tr>
            @endforeach
        </tbody>

        <tfoot>
            <tr class="total-row">
                <td colspan="5">Total Room Charges</td>
                <td class="num">{{ number_format($totalroomcharge, 2) }}</td>
                <td class="num">{{ number_format($totalcgst, 2) }}</td>
                <td class="num">{{ number_format($totalsgst, 2) }}</td>
            </tr>
        </tfoot>
    </table>

    @if (count($roominclusive) > 0)
        <p class="section-title">Extra Charges</p>

        <table class="main-table">
            <thead>
                <tr>
                    <th>Sr.</th>
                    <th>Particular</th>
                    <th>HSN</th>
                    <th class="center">Qty</th>
                    <th class="num">Rate</th>
                    <th class="num">Total</th>
                    <th class="num">CGST</th>
                    <th class="num">SGST</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($roominclusive as $item)
                    @php
                        $extraTaxinc = $item->IncTax == 'Y';
                        $extraRate = $item->amount;
                        $extraCgst = 0;
                        $extraSgst = 0;

                        if ($item->chargepost == 'Daily') {
                            $baseQty = $item->total_nights;
                        } elseif ($item->chargepost == 'Once') {
                            $baseQty = $item->total_roomdet;
                        } elseif ($item->chargepost == 'Group') {
                            $baseQty = 1;
                        } else {
                            $baseQty = 0;
                        }

                        $inclusiveAmount = $item->amount * $baseQty;

                        if ($extraTaxinc) {
                            $extraRate = $item->amount / (1 + ($item->cgst_rate + $item->sgst_rate) / 100);
                            $inclusiveAmount = $extraRate * $baseQty;

                            $extraCgst = ($inclusiveAmount * $item->cgst_rate) / 100;
                            $extraSgst = ($inclusiveAmount * $item->sgst_rate) / 100;
                        } else {
                            $extraCgst = ($inclusiveAmount * $item->cgst_rate) / 100;
                            $extraSgst = ($inclusiveAmount * $item->sgst_rate) / 100;
                        }

                        $totalExtraCgst += $extraCgst;
                        $totalExtraSgst += $extraSgst;
                        $totalextras += $inclusiveAmount;
                    @endphp

                    <tr>
                        <td>{{ $sne++ }}</td>
                        <td>{{ $item->revmastname }}</td>
                        <td>{{ $item->hsn_code }}</td>
                        <td class="center">{{ $baseQty }}</td>
                        <td class="num">{{ number_format($extraRate, 2) }}</td>
                        <td class="num">{{ number_format($inclusiveAmount, 2) }}</td>
                        <td class="num">{{ number_format($extraCgst, 2) }}</td>
                        <td class="num">{{ number_format($extraSgst, 2) }}</td>
                    </tr>
                @endforeach
            </tbody>

            <tfoot>
                <tr class="total-row">
                    <td colspan="5">Total Extra Charges</td>
                    <td class="num">{{ number_format($totalextras, 2) }}</td>
                    <td class="num">{{ number_format($totalExtraCgst, 2) }}</td>
                    <td class="num">{{ number_format($totalExtraSgst, 2) }}</td>
                </tr>
            </tfoot>
        </table>
    @endif

    @php
        $totalcgsttotal = $totalcgst + $totalExtraCgst;
        $totalsgsttotal = $totalsgst + $totalExtraSgst;

        foreach ($roomGroups as $group) {
            $room = $group->first();

            if ($room->IncTax == 'Y') {
                $roomTariffAmt = $room->Tarrif / (1 + ($room->cgst_rate + $room->sgst_rate) / 100);
            } else {
                $roomTariffAmt = $room->Tarrif;
            }

            $roomTotal = $roomTariffAmt * $group->sum('NoDays');

            $taxableRoomCharge += $roomTotal;
            $totalTaxCgst += ($roomTotal * $room->cgst_rate) / 100;
            $totalTaxSgst += ($roomTotal * $room->sgst_rate) / 100;
        }

        foreach ($roominclusive as $item) {
            if ($item->IncTax == 'Y') {
                $extraTariffAmt = $item->amount / (1 + ($item->cgst_rate + $item->sgst_rate) / 100);
            } else {
                $extraTariffAmt = $item->amount;
            }

            if ($item->chargepost == 'Daily') {
                $extraQty = $item->total_nights;
            } elseif ($item->chargepost == 'Once') {
                $extraQty = $item->total_roomdet;
            } elseif ($item->chargepost == 'Group') {
                $extraQty = 1;
            } else {
                $extraQty = 0;
            }

            $extraTotal = $extraTariffAmt * $extraQty;

            $taxableRoomCharge += $extraTotal;
            $totalTaxCgst += ($extraTotal * $item->cgst_rate) / 100;
            $totalTaxSgst += ($extraTotal * $item->sgst_rate) / 100;
        }

        $totalTaxes = $totalcgsttotal + $totalsgsttotal;
        $totalCharges = $totalroomcharge + $totalextras;
        $grandTotal = $totalCharges + $totalTaxes;
        $balance = $grandTotal - $advancesum;
    @endphp

    <table class="summary-layout">
        <tbody>
            <tr>
                <td class="summary-left">
                    <p class="label">Total Payable Amount (in words)</p>

                    <div class="amount-words">
                        {{ amountToWords(str_replace(',', '', number_format($balance, 2, '.', ''))) }}
                    </div>

                    <table class="compact-table">
                        <thead>
                            <tr>
                                <th>Payment Date</th>
                                <th>Description</th>
                                <th class="num">Amount</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($advance as $payment)
                                <tr>
                                    <td>{{ date('d-M-Y', strtotime($payment->vdate)) }}</td>
                                    <td>{{ $payment->comments }}</td>
                                    <td class="num">{{ number_format($payment->amtcr, 2) }}</td>
                                </tr>
                            @endforeach

                            @if (count($advance) == 0)
                                <tr>
                                    <td colspan="3" class="center">No advance payments</td>
                                </tr>
                            @endif
                        </tbody>
                    </table>

                    <table class="compact-table">
                        <thead>
                            <tr>
                                <th>Tax Name</th>
                                <th class="num">Taxable Amount</th>
                                <th class="num">Tax Amount</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>{{ $txnames[0]['name'] ?? '' }} @ {{ $txnames[0]['rate'] ?? '' }}%</td>
                                <td class="num">{{ number_format($taxableRoomCharge, 2) }}</td>
                                <td class="num">{{ number_format($totalcgsttotal, 2) }}</td>
                            </tr>

                            <tr>
                                <td>{{ $txnames[1]['name'] ?? '' }} @ {{ $txnames[1]['rate'] ?? '' }}%</td>
                                <td class="num">{{ number_format($taxableRoomCharge, 2) }}</td>
                                <td class="num">{{ number_format($totalsgsttotal, 2) }}</td>
                            </tr>
                        </tbody>
                    </table>
                </td>

                <td class="summary-right">
                    <table class="compact-table totals-table">
                        <tbody>
                            <tr>
                                <td>Total Charges</td>
                                <td>{{ number_format($totalCharges, 2) }}</td>
                            </tr>

                            <tr>
                                <td>Total CGST</td>
                                <td>{{ number_format($totalcgsttotal, 2) }}</td>
                            </tr>

                            <tr>
                                <td>Total SGST</td>
                                <td>{{ number_format($totalsgsttotal, 2) }}</td>
                            </tr>

                            <tr class="total-row">
                                <td>Grand Total</td>
                                <td>{{ number_format($grandTotal, 2) }}</td>
                            </tr>

                            <tr>
                                <td>Advance</td>
                                <td>{{ number_format($advancesum, 2) }}</td>
                            </tr>

                            <tr class="total-row">
                                <td>Balance Due</td>
                                <td>{{ number_format($balance, 2) }}</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>

    <table class="signatures">
        <tr>
            <td width="50%">
                <div class="signature-line">Guest Signature</div>
            </td>

            <td width="50%" class="signature-right">
                <div class="signature-line">Authorized Signature</div>
            </td>
        </tr>
    </table>

    <div class="footer">
        <p>
            Indian and foreign residents are required to present valid identity proof at check-in.
            Accepted documents include a driving licence, passport or voter ID.
        </p>

        <p>
            <strong>Check-in:</strong> {{ date('g:i A', strtotime($enviro->checkintime)) }}
            &nbsp;&nbsp;
            <strong>Check-out:</strong> {{ date('g:i A', strtotime($enviro->checkout)) }}
        </p>

        <p class="policy-title">Cancellation Policy</p>

        @foreach ([$enviro->resinstruction1, $enviro->resinstruction2, $enviro->resinstruction3, $enviro->resinstruction4, $enviro->resinstruction5, $enviro->resinstruction6] as $instruction)
            @if (!empty($instruction))
                <p>{{ $instruction }}</p>
            @endif
        @endforeach
    </div>
</body>

</html>
