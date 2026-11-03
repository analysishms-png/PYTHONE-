<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Card Folio {{ $data->foliono }} Name {{ $data->GuestName }}</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 16px;
            font-family: Arial, sans-serif;
            font-size: 10pt;
            line-height: 1.35;
            font-weight: 500;
            color: #111;
            background: #fff;
        }

        .page {
            width: 100%;
            max-width: 900px;
            margin: 0 auto;
            border: 1px solid #cfcfcf;
            padding: 14px;
        }

        .header {
            display: grid;
            grid-template-columns: 90px 1fr;
            gap: 12px;
            align-items: center;
            border-bottom: 2px solid #222;
            padding-bottom: 10px;
        }

        .logo {
            width: 85px;
            max-height: 80px;
            object-fit: contain;
        }

        .hotel-name {
            margin: 0;
            font-size: 16pt;
            font-weight: 700;
        }

        .contact-info {
            margin: 2px 0;
            font-size: 9pt;
        }

        .doc-head {
            margin: 10px 0 8px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px;
            font-size: 9.5pt;
        }

        .doc-title {
            margin: 0;
            font-size: 12pt;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.4px;
        }

        .section {
            margin-top: 10px;
        }

        .section-title {
            margin: 0 0 6px;
            font-size: 10pt;
            font-weight: 700;
            text-transform: uppercase;
            border-bottom: 1px solid #777;
            padding-bottom: 4px;
        }

        .details-panel {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 8px;
        }

        .details-card {
            border: 1px solid #d8d8d8;
            padding: 8px;
            min-height: 100px;
        }

        .details-card h3 {
            margin: 0 0 6px;
            font-size: 9.5pt;
        }

        .details-card p {
            margin: 3px 0;
            font-size: 9pt;
            font-weight: 500;
            word-break: break-word;
        }

        .summary-table,
        .data-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 9pt;
        }

        .summary-table th,
        .summary-table td,
        .data-table th,
        .data-table td {
            border: 1px solid #d7d7d7;
            padding: 6px;
            vertical-align: top;
            font-weight: 500;
        }

        .summary-table th,
        .data-table th {
            background: #f5f5f5;
            font-weight: 700;
        }

        .summary-table th {
            width: 18%;
        }

        .summary-table td {
            width: 32%;
        }

        .text-right {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }

        .bold {
            font-weight: 700;
        }

        .note {
            margin: 8px 0 0;
            font-size: 9pt;
            font-weight: 500;
        }

        .footer {
            margin-top: 12px;
            font-size: 9pt;
        }

        .footer p {
            margin: 4px 0;
        }

        .policy-list {
            margin: 6px 0 0;
            padding-left: 16px;
        }

        .policy-list li {
            margin: 2px 0;
        }

        .payment-mode-grid {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 6px 10px;
            font-size: 9pt;
        }

        .payment-mode-item {
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

        .payment-mode-item input[type="checkbox"] {
            margin: 0;
        }

        .form-line {
            margin: 4px 0;
            font-size: 9pt;
            font-weight: 500;
        }

        @media print {
            @page {
                size: A4 landscape;
                margin: 8mm 7mm;
            }

            body {
                padding: 0;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }

            * {
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }

            .page {
                width: 100%;
                max-width: 283mm;
                border: 1px solid #cfcfcf;
                padding: 14px;
                margin: 0 auto;
            }

            .section {
                margin-top: 8px;
                break-inside: auto;
                page-break-inside: auto;
            }

            .details-panel,
            .summary-table,
            .data-table {
                break-inside: auto;
                page-break-inside: auto;
            }

            .details-card,
            .summary-table tr,
            .data-table tr {
                break-inside: avoid;
                page-break-inside: avoid;
            }

            .details-card {
                min-height: auto;
            }
        }

        @media (max-width: 768px) {
            .page {
                padding: 10px;
            }  

            .header {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .logo {
                margin: 0 auto;
            }

            .doc-head {
                flex-direction: column;
                align-items: flex-start;
            }

            .details-panel {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>
    <div class="page">
        <div class="header">
            <img src="storage/admin/property_logo/{{ $company->logo }}" alt="{{ $company->comp_name }}" class="logo">
            <div>
                <p class="hotel-name">{{ $company->comp_name }}</p>
                <p class="contact-info">{{ $company->address1 }}, {{ $company->city }} ({{ $company->state }})</p>

                @if (!empty($company->website))
                    <p class="contact-info">Website: {{ $company->website }}</p>
                @endif

                @if (!empty($company->mobile))
                    <p class="contact-info">Contact: {{ $company->mobile }}</p>
                @endif

                @if (!empty($company->email))
                    @php
                        $emails = explode(',', $company->email);
                    @endphp
                    @foreach ($emails as $email)
                        <p class="contact-info">Email: {{ trim($email) }}</p>
                    @endforeach
                @endif

                @if (!empty($company->gstin))
                    <p class="contact-info">GSTIN: {{ $company->gstin }}</p>
                @endif
            </div>
        </div>

        <div class="doc-head">
            <p class="doc-title" style="padding-left: 337px;">Registration Card</p>
            <p><span class="bold">Reservation. No:</span> {{ $data->BookNo }}/{{ date('d-M-Y', strtotime($curdate)) }}</p>
        </div>

         <div class="section">
            <p class="section-title">Reservation Summary</p>
            <table class="summary-table">
                <tr>
                    <th>Check-in Date</th>
                    <td>{{ date('d-M-Y', strtotime($data->ArrDate)) }}</td>
                    <th>Folio No</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Check-out Date (Exp.)</th>
                    <td>{{ date('d-M-Y', strtotime($data->DepDate)) }}</td>
                    <th>Plan Name</th>
                    <td>{{ $data->planname }}</td>
                </tr>
                <tr>
                    <th>No. of Nights</th>
                    <td>{{ $data->NoDays }}</td>
                    <th>Booked By</th>
                    <td>{{ $data->BookedBy }}</td>
                </tr>
                <tr>
                    <th>Room No</th>
                    <td></td>
                    <th>Room Type</th>
                    <td></td> 
                </tr>
                <tr>
                    <th>Rate per Night</th>
                    <td></td>
                    <th>No. of </th>
                    <td>Adult ___ Child __</td>
                </tr>
            </table>
            {{-- @if ($data->remarks != '')
                <p class="note"><span class="bold">Remarks:</span> {{ $data->remarks }}</p>
            @endif
            <p class="note"><span class="bold">Subject:</span> Registration  Card for Ref. No.
                {{ $data->BookNo }}/{{ date('d-m-Y', strtotime($curdate)) }}
            </p>
            <p class="note">Dear Guest, we are pleased to confirm your registration as per the following details:</p> --}}
        </div>

        <div class="section">
            <p class="section-title">Guest / Company Details</p>
            <div class="details-panel">
                <div class="details-card">
                    <h3>Guest Details</h3>
                    <p><span class="bold">Name:</span> {{ $data->GuestName }}</p>
                    <p><span class="bold">Address:</span> {{ $data->guestadd }}</p>
                    <p><span class="bold">State:</span> {{ $data->state_name }}</p>
                    <p><span class="bold">Mobile:</span> {{ $data->mobile_no }}</p>
                    <p><span class="bold">Email:</span> {{ $data->email_id }}</p>
                </div>
                <div class="details-card">
                    <h3>Company Details</h3>
                    <p><span class="bold">Name:</span> {{ $data->companyname }}</p>
                    <p><span class="bold">GSTIN:</span> {{ $data->companygstin }}</p>
                </div>
                <div class="details-card">
                    <h3>Travel Agency Details</h3>
                    <p><span class="bold">Name:</span> {{ $data->travelname }}</p>
                    <p><span class="bold">GSTIN:</span> {{ $data->travelgstin }}</p>
                </div>
            </div>
        </div>

       

        {{-- <div class="section">
            <p class="section-title">Room Details</p>
            <table class="data-table">
                <tr>
                    <th>Room Type</th>
                    <th>Occupancy</th>
                    <th>No. of Rooms</th>
                    <th>Adults</th>
                    <th>Children</th>
                    <th>Room Tariff</th>
                    <th>Amount</th>
                    <th>Incl. Tax</th>
                </tr>
                @php
                $totalroom = 0;
                $totaladult = 0;
                $totalchild = 0;
                $totaltarrif = 0;
                $totalamount = 0;
                $totalextras = 0;
                $roomtotalamount = 0;
                @endphp
                @foreach ($rooms as $item)
                @php
                $roomAmount = $item->total_roomdet * $data->NoDays * $item->Tarrif;
                $totalroom += $item->total_roomdet;
                $totaladult += $item->total_adults;
                $totalchild += $item->total_childs;
                $totaltarrif += $item->Tarrif;
                $roomtotalamount += $roomAmount;
                @endphp
                <tr>
                    <td>{{ $item->roomcatname }}</td>
                    <td>Double</td>
                    <td>{{ $item->total_roomdet }}</td>
                    <td>{{ $item->total_adults }}</td>
                    <td>{{ $item->total_childs }}</td>
                    <td class="text-right"><span class="bold">{{ number_format($item->Tarrif, 2) }}</span></td>
                    <td class="text-right"><span class="bold">{{ number_format($roomAmount, 2) }}</span></td>
                    <td class="text-center">{{ $item->IncTax == 'Y' ? 'Yes' : 'No' }}</td>
                </tr>
                @endforeach
                <tfoot>
                    <tr>
                        <td class="bold">Total</td>
                        <td></td>
                        <td class="bold">{{ $totalroom }}</td>
                        <td class="bold">{{ $totaladult }}</td>
                        <td class="bold">{{ $totalchild }}</td>
                        <td></td>
                        <td class="text-right bold">{{ number_format($roomtotalamount, 2) }}</td>
                        <td></td>
                    </tr>
                </tfoot>
            </table>
        </div> --}}

        {{-- @if (count($roominclusive) > 0)
        <div class="section">
            <p class="section-title">Extra Charges</p>
            <table class="data-table">
                <tr>
                    <th>Description</th>
                    <th>No. of Rooms</th>
                    <th>Rate</th>
                    <th>Amount</th>
                </tr>
                @foreach ($roominclusive as $item)
                @php
                $chargecalculatedaily = $item->chargepost == 'Daily' ? true : false;
                if ($chargecalculatedaily) {
                $inclusiveAmount = $item->total_roomdet * $data->NoDays * $item->amount;
                } else {
                $inclusiveAmount = $item->total_roomdet * $item->amount;
                }
                $totalextras += $inclusiveAmount;
                @endphp
                <tr>
                    <td>{{ $item->revmastname }}</td>
                    <td>{{ $item->total_roomdet }}</td>
                    <td class="text-right"><span class="bold">{{ number_format($item->amount, 2) }}</span></td>
                    <td class="text-right"><span class="bold">{{ number_format($inclusiveAmount, 2) }}</span></td>
                </tr>
                @endforeach
                <tfoot>
                    <tr>
                        <td class="bold">Total Extra Charges</td>
                        <td></td>
                        <td></td>
                        <td class="text-right bold">{{ number_format($totalextras, 2) }}</td>
                    </tr>
                </tfoot>
            </table>
        </div>
        @endif --}}

        @php
            $roomtotalamount = 0;
            $totalroom = 0;
            $totaladult = 0;
            $totalchild = 0;
            $totaltarrif = 0;
            $totalextras = 0;
            foreach ($rooms as $item) {
                $roomAmount = $item->total_roomdet * $data->NoDays * $item->Tarrif;
                $totalroom += $item->total_roomdet;
                $totaladult += $item->total_adults;
                $totalchild += $item->total_childs;
                $totaltarrif += $item->Tarrif;
                $roomtotalamount += $roomAmount;
            }
            if (count($roominclusive) > 0) {
                foreach ($roominclusive as $item) {
                    $chargecalculatedaily = $item->chargepost == 'Daily' ? true : false;
                    if ($chargecalculatedaily) {
                        $inclusiveAmount = $item->total_roomdet * $data->NoDays * $item->amount;
                    } else {
                        $inclusiveAmount = $item->total_roomdet * $item->amount;
                    }
                    $totalextras += $inclusiveAmount;
                }
            }
            $totalamount = $roomtotalamount + $totalextras;
        @endphp

        

        {{-- <div class="section">
            <p class="section-title">Advance Details</p>
            <table class="data-table">
                <tr>
                    <th>Receipt Number</th>
                    <th>Date</th>
                    <th>Type</th>
                    <th>Amount</th>
                </tr>
                @php
                    $totalamtcr = 0.0;
                @endphp
                @foreach ($advance as $item)
                    @php
                        $totalamtcr += $item->amtcr;
                    @endphp
                    <tr>
                        <td>{{ $item->vno }}</td>
                        <td>{{ date('d-M-Y', strtotime($item->vdate)) }}</td>
                        <td>{{ $item->paytype }}</td>
                        <td class="text-right"><span class="bold">{{ number_format($item->amtcr, 2) }}</span></td>
                    </tr>
                @endforeach
                <tfoot>
                    <tr>
                        <td class="bold">Total</td>
                        <td></td>
                        <td></td>
                        <td class="text-right bold">{{ number_format($totalamtcr, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="bold">Balance</td>
                        <td></td>
                        <td></td>
                        <td class="text-right bold">{{ number_format($totalamount - $totalamtcr, 2) }}</td>
                    </tr>
                </tfoot>
            </table>
        </div> --}}

        <div class="section">
            <p class="section-title">Payment Mode</p>
            @php
                $selectedPayModes = collect($advance)
                    ->pluck('paytype')
                    ->filter()
                    ->map(function ($item) {
                        return preg_replace('/\s+/', ' ', strtolower(trim($item)));
                    })
                    ->values()
                    ->all();

                $allowedPayModes = ['CASH IN HAND', 'CREDIT CARD', 'UPI'];
            @endphp
            <div class="payment-mode-grid">
                @foreach ($allowedPayModes as $modeName)
                    @php
                        $isChecked = in_array(strtolower($modeName), $selectedPayModes, true);
                    @endphp
                    <label class="payment-mode-item">
                        <input type="checkbox">
                        <span>{{ $modeName }}</span>
                    </label>
                @endforeach
            </div>
        </div>

        <div class="section">
            <p class="section-title">Vehicle Details (Optional)</p>
            <p class="form-line">• Vehicle No: ______________________</p>
            <p class="form-line">• Vehicle Type: ______________________</p>
        </div>

        <div class="section">
            <p class="section-title">Declaration</p>
            <p class="form-line">"I hereby declare that the above information is true and I agree to abide by the hotel rules."</p>
            <p class="form-line">Guest Signature: ______________________</p>
            <p class="form-line">Date: ______________________</p>
            <p class="form-line">Receptionist Name: ______________________</p>
            <p class="form-line">Receptionist Signature: _____________________</p>
        </div>

         <!-- #region -->
        {{-- <div class="footer">
            @php
                $chkintime = new DateTime($enviro->checkintime);
                $deptime = new DateTime($enviro->checkout);
            @endphp

            <p>A government notification requires Indian/Foreign residents to carry proof of identity at the time of
                check-in. Accepted proof includes driving license, passport, or voter card.</p>
            <p><span class="bold">Check-in Time:</span> {{ $chkintime->format('g:i A') }} &nbsp; | &nbsp; <span
                    class="bold">Check-out Time:</span> {{ $deptime->format('g:i A') }}</p>
            <p class="bold">Cancellation Policy:</p>
            <ul class="policy-list">
                @if ($enviro->resinstruction1 != '' && $enviro->resinstruction1 != null)
                    <li>{{ $enviro->resinstruction1 }}</li>
                @endif
                @if ($enviro->resinstruction2 != '' && $enviro->resinstruction2 != null)
                    <li>{{ $enviro->resinstruction2 }}</li>
                @endif
                @if ($enviro->resinstruction3 != '' && $enviro->resinstruction3 != null)
                    <li>{{ $enviro->resinstruction3 }}</li>
                @endif
                @if ($enviro->resinstruction4 != '' && $enviro->resinstruction4 != null)
                    <li>{{ $enviro->resinstruction4 }}</li>
                @endif
                @if ($enviro->resinstruction5 != '' && $enviro->resinstruction5 != null)
                    <li>{{ $enviro->resinstruction5 }}</li>
                @endif
                @if ($enviro->resinstruction6 != '' && $enviro->resinstruction6 != null)
                    <li>{{ $enviro->resinstruction6 }}</li>
                @endif
            </ul>
        </div> --}}
    </div>
</body>

</html>

<script>
    setTimeout(() => {
        window.print();
    }, 1000);
</script>