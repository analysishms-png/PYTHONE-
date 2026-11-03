<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Reservation Letter - {{ $data->foliono }} - {{ $data->GuestName }}</title>

    <style>
        @page {
            margin: 8mm;
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

        h3 {
            font-size: 8.5pt;
            margin: 0 0 4px;
            padding-bottom: 2px;
            border-bottom: 1px solid #ccc;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 4px 0;
            page-break-inside: auto;
        }

        th,
        td {
            border: 0.5px solid #ccc;
            padding: 3px 4px;
            text-align: left;
            vertical-align: top;
        }

        th {
            background-color: #f0f2f4;
            font-weight: bold;
        }

        thead {
            display: table-header-group;
        }

        tfoot {
            display: table-row-group;
            font-weight: bold;
        }

        tr {
            page-break-inside: avoid;
        }

        .no-border,
        .no-border td {
            border: none;
        }

        .header {
            margin-bottom: 4px;
            border-bottom: 1px solid #999;
            padding-bottom: 5px;
        }

        .header-table {
            margin: 0;
        }

        .logo-cell {
            width: 95px;
            vertical-align: middle;
        }

        .logo {
            max-width: 85px;
            max-height: 65px;
        }

        .header-text {
            text-align: center;
            vertical-align: middle;
        }

        .hotel-name {
            font-size: 13pt;
            font-weight: bold;
            margin: 0 0 3px;
        }

        .contact-info {
            font-size: 7.5pt;
            margin: 1px 0;
        }

        .ref-no {
            margin: 4px 0;
            font-size: 8pt;
        }

        .details-panel {
            table-layout: fixed;
            margin: 4px 0;
        }

        .details-panel td {
            width: 33.333%;
            padding: 4px 5px;
        }

        .details-panel p {
            overflow-wrap: break-word;
        }

        .section-title {
            text-align: center;
            font-weight: bold;
            margin: 5px 0 2px;
            font-size: 8.5pt;
        }

        .summary-table {
            table-layout: fixed;
        }

        .summary-table th,
        .summary-table td {
            padding: 3px 4px;
        }

        .room-table {
            table-layout: fixed;
            font-size: 7.5pt;
        }

        .room-table th,
        .room-table td {
            padding: 3px;
        }

        .room-table th:nth-child(1) {
            width: 20%;
        }

        .room-table th:nth-child(2) {
            width: 12%;
        }

        .room-table th:nth-child(3),
        .room-table th:nth-child(4),
        .room-table th:nth-child(5) {
            width: 8%;
        }

        .room-table th:nth-child(6) {
            width: 13%;
        }

        .room-table th:nth-child(7) {
            width: 17%;
        }

        .room-table th:nth-child(8) {
            width: 14%;
        }

        .num {
            text-align: right;
            white-space: nowrap;
        }

        .center {
            text-align: center;
        }

        .subject {
            margin: 5px 0 3px;
            font-weight: bold;
        }

        .footer {
            margin-top: 6px;
            font-size: 7.5pt;
        }

        .footer p {
            margin: 2px 0;
        }

        .policy-title {
            margin-top: 4px;
            font-weight: bold;
            text-decoration: underline;
        }

        .amount-table {
            table-layout: fixed;
        }

        .amount-table th:last-child,
        .amount-table td:last-child {
            text-align: right;
        }

        .amount-table th:nth-child(1) {
            width: 35%;
        }

        .amount-table th:nth-child(2) {
            width: 20%;
        }

        .amount-table th:nth-child(3) {
            width: 20%;
        }

        .amount-table th:nth-child(4) {
            width: 25%;
        }

        .muted {
            color: #555;
        }

        .closing-space {
            height: 12px;
        }
    </style>
</head>

<body>
    @php
        $logoPath = public_path('storage/admin/property_logo/' . ($company->logo ?? ''));
        $logoSrc = '';

        if (!empty($company->logo) && is_file($logoPath)) {
            $ext = strtolower(pathinfo($logoPath, PATHINFO_EXTENSION));
            $mimeTypes = [
                'jpg' => 'image/jpeg',
                'jpeg' => 'image/jpeg',
                'png' => 'image/png',
                'gif' => 'image/gif',
                'webp' => 'image/webp',
                'svg' => 'image/svg+xml',
            ];

            if (isset($mimeTypes[$ext])) {
                $logoSrc = 'data:' . $mimeTypes[$ext] . ';base64,' . base64_encode(file_get_contents($logoPath));
            }
        }

        $totalroom = 0;
        $totaladult = 0;
        $totalchild = 0;
        $totalextras = 0;
        $roomtotalamount = 0;
        $totalamtcr = 0;

        $types = [
            1 => 'Single',
            2 => 'Double',
            3 => 'Triple',
            4 => 'Four',
            5 => 'Five',
        ];

        $chkintime = new DateTime($enviro->checkintime);
        $deptime = new DateTime($enviro->checkout);
    @endphp

    <div class="header">
        <table class="header-table no-border">
            <tr>
                <td class="logo-cell">
                    @if ($logoSrc)
                        <img src="{{ $logoSrc }}" alt="Hotel Logo" class="logo">
                    @endif
                </td>

                <td class="header-text">
                    <p class="hotel-name">{{ $company->comp_name }}</p>

                    <p class="contact-info">
                        {{ $company->address1 }}{{ $company->city ? ', ' . $company->city : '' }}{{ $company->state ? ' (' . $company->state . ')' : '' }}
                    </p>

                    @if (!empty($company->website))
                        <p class="contact-info">{{ $company->website }}</p>
                    @endif

                    @if (!empty($company->mobile))
                        <p class="contact-info">Contact: {{ $company->mobile }}</p>
                    @endif

                    @if (!empty($company->email))
                        <p class="contact-info">{{ str_replace(',', ' | ', $company->email) }}</p>
                    @endif

                    @if (!empty($company->gstin))
                        <p class="contact-info">GSTIN: {{ $company->gstin }}</p>
                    @endif
                </td>
            </tr>
        </table>
    </div>

    <p class="ref-no">
        <strong>Ref. No.:</strong> {{ $data->BookNo }}/{{ date('d-M-Y', strtotime($curdate)) }}
    </p>

    <table class="details-panel">
        <tr>
            <td>
                <h3>Guest Details</h3>
                <p><strong>Name:</strong> {{ $data->GuestName }}</p>
                <p><strong>Address:</strong> {{ $data->guestadd }}</p>
                <p><strong>State:</strong> {{ $data->state_name }}</p>
                <p><strong>Mobile:</strong> {{ $data->mobile_no }}</p>
                <p><strong>Email:</strong> {{ $data->email_id }}</p>
            </td>

            <td>
                <h3>Company Details</h3>
                <p><strong>Name:</strong> {{ $data->companyname }}</p>
                <p><strong>GSTIN:</strong> {{ $data->companygstin }}</p>
            </td>

            <td>
                <h3>Travel Agency Details</h3>
                <p><strong>Name:</strong> {{ $data->travelname }}</p>
                <p><strong>GSTIN:</strong> {{ $data->travelgstin }}</p>
            </td>
        </tr>
    </table>

    <table class="summary-table">
        <tr>
            <th>Arrival Date</th>
            <td>{{ date('d-M-Y', strtotime($data->ArrDate)) }}</td>
            <th>Status</th>
            <td>{{ $data->ResStatus }}</td>
        </tr>
        <tr>
            <th>Departure Date</th>
            <td>{{ date('d-M-Y', strtotime($data->DepDate)) }}</td>
            <th>Plan Name</th>
            <td>{{ $data->planname }}</td>
        </tr>
        <tr>
            <th>No. of Days</th>
            <td>{{ $data->NoDays }}</td>
            <th>Booked By</th>
            <td>{{ $data->BookedBy }}</td>
        </tr>
    </table>

    @if (!empty($data->remarks))
        <p><strong>Remarks:</strong> {{ $data->remarks }}</p>
    @endif

    <p class="subject">
        Subject: Reservation Confirmation — Ref. No. {{ $data->BookNo }}/{{ date('d-m-Y', strtotime($curdate)) }}
    </p>

    <p>
        Dear Guest, we are pleased to confirm your reservation as per the following details.
    </p>

    <table class="room-table">
        <thead>
            <tr>
                <th>Room Type</th>
                <th>Occupancy</th>
                <th class="center">Rooms</th>
                <th class="center">Adults</th>
                <th class="center">Children</th>
                <th class="num">Tariff</th>
                <th class="num">Amount</th>
                <th class="center">Incl. Tax</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($rooms as $item)
                @php
                    $roomAmount = $item->total_roomdet * $item->NoDays * $item->Tarrif;

                    $totalroom += $item->total_roomdet;
                    $totaladult += $item->total_adults;
                    $totalchild += $item->total_childs;
                    $roomtotalamount += $roomAmount;
                @endphp

                <tr>
                    <td>{{ $item->roomcatname }}</td>
                    <td>{{ $types[$item->total_adults] ?? '' }}</td>
                    <td class="center">{{ $item->total_roomdet }}</td>
                    <td class="center">{{ $item->total_adults }}</td>
                    <td class="center">{{ $item->total_childs }}</td>
                    <td class="num">{{ number_format($item->Tarrif, 2) }}</td>
                    <td class="num">{{ number_format($roomAmount, 2) }}</td>
                    <td class="center">{{ $item->IncTax == 'Y' ? 'Yes' : 'No' }}</td>
                </tr>
            @endforeach
        </tbody>

        <tfoot>
            <tr>
                <td><strong>Total</strong></td>
                <td></td>
                <td class="center">{{ $totalroom }}</td>
                <td class="center">{{ $totaladult }}</td>
                <td class="center">{{ $totalchild }}</td>
                <td></td>
                <td class="num">{{ number_format($roomtotalamount, 2) }}</td>
                <td></td>
            </tr>
        </tfoot>
    </table>

    @if (count($roominclusive) > 0)
        <p class="section-title">Extra Charges</p>

        <table class="amount-table">
            <thead>
                <tr>
                    <th>Description</th>
                    <th class="center">Rooms</th>
                    <th class="num">Rate</th>
                    <th class="num">Amount</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($roominclusive as $item)
                    @php
                        if ($item->chargepost == 'Daily') {
                            $inclusiveAmount = $item->total_roomdet * $item->NoDays * $item->amount;
                        } elseif ($item->chargepost == 'Once') {
                            $inclusiveAmount = $item->total_roomdet * $item->amount;
                        } elseif ($item->chargepost == 'Group') {
                            $inclusiveAmount = $item->amount;
                        } else {
                            $inclusiveAmount = 0;
                        }

                        $totalextras += $inclusiveAmount;
                    @endphp

                    <tr>
                        <td>{{ $item->revmastname }}</td>
                        <td class="center">{{ $item->total_roomdet }}</td>
                        <td class="num">{{ number_format($item->amount, 2) }}</td>
                        <td class="num">{{ number_format($inclusiveAmount, 2) }}</td>
                    </tr>
                @endforeach
            </tbody>

            <tfoot>
                <tr>
                    <td><strong>Total Extra Charges</strong></td>
                    <td></td>
                    <td></td>
                    <td class="num">{{ number_format($totalextras, 2) }}</td>
                </tr>
            </tfoot>
        </table>
    @endif

    @php
        $totalamount = $roomtotalamount + $totalextras;
    @endphp

    <p class="section-title">Advance Details</p>

    <table class="amount-table">
        <thead>
            <tr>
                <th>Receipt Number</th>
                <th>Date</th>
                <th>Type</th>
                <th class="num">Amount</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($advance as $item)
                @php
                    $totalamtcr += $item->amtcr;
                @endphp

                <tr>
                    <td>{{ $item->vno }}</td>
                    <td>{{ date('d-M-Y', strtotime($item->vdate)) }}</td>
                    <td>{{ $item->paytype }}</td>
                    <td class="num">{{ number_format($item->amtcr, 2) }}</td>
                </tr>
            @endforeach
        </tbody>

        <tfoot>
            <tr>
                <td><strong>Total Advance</strong></td>
                <td></td>
                <td></td>
                <td class="num">{{ number_format($totalamtcr, 2) }}</td>
            </tr>
            <tr>
                <td><strong>Balance Due</strong></td>
                <td></td>
                <td></td>
                <td class="num">{{ number_format($totalamount - $totalamtcr, 2) }}</td>
            </tr>
        </tfoot>
    </table>

    <div class="footer">
        <p>
            Indian and foreign residents are required to present valid identity proof at check-in.
            Accepted documents include a driving licence, passport or voter ID.
        </p>

        <p>
            <strong>Check-in:</strong> {{ $chkintime->format('g:i A') }}
            &nbsp; <strong>Check-out:</strong> {{ $deptime->format('g:i A') }}
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
