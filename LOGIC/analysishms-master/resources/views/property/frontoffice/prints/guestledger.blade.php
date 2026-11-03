<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Guest Ledger Book No {{ $guestdata[0]->folioNo }} Arrival {{ date('d-M-Y', strtotime($guestdata[0]->vdate)) }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-size: 13px;
            padding: 0;
            margin: 0;
        }

        @page {
            size: A4 portrait;
            margin: 10mm;
        }

        p {
            margin: 0;
            padding: 0;
        }

        .invoice-container {
            padding: 0;
            margin: 0 auto;
            width: 100%;
            background: #fff;
        }

        .table-borderless td {
            padding: 2px 0 !important;
        }

        .header-title {
            font-weight: 700;
            font-size: 20px;
        }

        .sub-title {
            font-weight: 600;
            font-size: 16px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 5px 0;
            font-size: 9pt;
        }

        table th,
        table td {
            border: 1px solid #ddd;
            padding: 3px;
            text-align: left;
        }

        table th {
            background-color: #f2f2f2;
        }

        .footer {
            margin-top: 5px;
            font-size: 10pt;
        }

        .footer p {
            margin: 0;
        }

        tfoot {
            font-weight: bold;
        }

        .logo {
            max-height: 80px;
            width: auto;
        }

        .header-content {
            display: flex;
            align-items: flex-start;
            gap: 20px;
            margin-bottom: 10px;
            page-break-after: avoid;
        }

        .header-logo {
            flex-shrink: 0;
        }

        .header-info {
            flex-grow: 1;
            text-align: center;
        }

        .main,
        .extra-charges,
        .print-area,
        .footer {
            page-break-inside: avoid;
        }

        .footer {
            margin-top: 12px;
            page-break-before: avoid;
        }

        /* PRINT OPTIMIZATION */
        @media print {
            body {
                margin: 0 !important;
                padding: 0 !important;
            }

            .invoice-container {
                margin: 0 !important;
                width: 100% !important;
            }
        }
    </style>
</head>

<body>

    <div class="invoice-container">
        @php
            $totalExtraCgst = 0.0;
            $totalExtraSgst = 0.0;
            $totalextras = 0.0;
            $totalcgst = 0.0;
            $totalsgst = 0.0;
            $sne = 1;

            foreach ($taxes as $tax) {
                $taxAmount = (float) ($tax->amtdr ?? 0);
                $taxName = strtoupper((string) ($tax->name ?? ''));
                if (str_contains($taxName, 'CGST')) {
                    $totalcgst += $taxAmount;
                } elseif (str_contains($taxName, 'SGST')) {
                    $totalsgst += $taxAmount;
                }
            }
        @endphp
        <!-- HEADER -->
        <div class="header-content">
            <div class="header-logo">
                @if ($logoPath)
                    <img src="{{ $logoPath }}" alt="{{ $company->comp_name }}" class="logo">
                @endif
            </div>
            <div class="header-info">
                <div class="header-title">Estimated Invoice</div>
                <div class="sub-title">{{ $company->comp_name ?? '' }}</div>

                <div class="mt-1">
                    <p> {{ $company->address1 ?? '' }} {{ !empty($company->address2) ? ',' . $company->address2 : '' }},
                        {{ $company->city ?? '' }} - {{ $company->pin ?? '' }} {{ $company->state ?? '' }}
                    </p>
                    <p>Phone: {{ $company->mobile ?? '' }}</p>
                    <p>E-mail: {{ $company->email ?? '' }} Website: {{ $company->website ?? '' }}</p>
                </div>

                <div class="fw-bold mt-2">GSTIN No : {{ $company->gstin ?? '' }}</div>
            </div>
        </div>

        <hr class="my-2">

        <!-- TWO COLUMN TABLE -->
        <table class="table table-borderless w-100">
            <tbody>
                <tr>
                    <td width="50%">
                        <b>Checkin No.</b> : {{ $guestdata[0]->folioNo }}/{{ date('d-M-Y', strtotime($guestdata[0]->vdate)) }}
                    </td>
                    <td width="50%">
                        <b>G.R. Card No</b> :
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>Guest Name</b> : {{ $guestdata[0]->clientname }}
                    </td>
                    <td>
                        <b>Date of Print</b> : {{ date('d-M-Y h:i:s A') }}
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>Bill To</b> : {{ $guestdata[0]->bill_to }}
                    </td>
                    <td>
                        <b>Room</b> : {{ $roomcatsnameswithcomma }}
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>Bill To Address</b> : {{ $guestdata[0]->guestadd }}
                    </td>
                    <td>
                        <b>No of Person</b> : {{ $guestdata[0]->adult }} (A) / {{ $guestdata[0]->children }} (C)
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>State</b> : {{ $guestdata[0]->state_name }}
                    </td>
                    <td>
                        <b>Rate Type</b> : {{ $guestdata[0]->planname }}
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>Bill To GSTIN No</b> : {{ $guestdata[0]->company != '' ? subgroup($guestdata[0]->company)->gstin : '' }}
                    </td>
                    <td>
                        <b>No of Nights</b> : {{ $guestdata[0]->nodays }}
                    </td>
                </tr>

                <tr>
                    <td><b>Date of Arrival</b> : {{ date('d-M-Y', strtotime($guestdata[0]->chkindate)) }}</td>
                    <td>
                        <b>Date of Departure</b> : {{ date('d-M-Y', strtotime($guestdata[0]->depdate)) }}
                    </td>
                </tr>
            </tbody>
        </table>

        <table class="main">
            <thead>
                <tr>
                    <th>Sr No.</th>
                    <th>Date</th>
                    <th>Bill/Voucher</th>
                    <th>Description</th>
                    <th>Debit</th>
                    <th>Credit</th>
                    <th>User</th>
                </tr>
            </thead>


            <tbody>
                @php $sn = 1; @endphp
                @foreach ($paychargedata as $ledger)
                    <tr>
                        <td>{{ $sn++ }}</td>
                        <td style="white-space: nowrap;">{{ date('d-m-Y', strtotime($ledger->vdate)) }}</td>
                        <td>{{ $ledger->vtype }}/{{ $ledger->vno }}</td>
                        <td>{{ $ledger->comments }}</td>
                        <td>{{ $ledger->amtdr ?? '0' }}</td>
                        <td>{{ $ledger->amtcr ?? '0' }}</td>
                        <td>{{ $ledger->u_name }}</td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="4">Total Ledger</td>
                    <td>{{ number_format($totalDebit, 2) }}</td>
                    <td>{{ number_format($totalCredit, 2) }}</td>
                    <td></td>
                </tr>
            </tfoot>
        </table>

        @if (count($roominclusive) > 0)
            <p class="text-center">Extra Charges</p>
            <table class="extra-charges">
                <tr>
                    <th>Sr No.</th>
                    <th>Description</th>
                    <th>HSN</th>
                    <th>Qty</th>
                    <th>Rate</th>
                    <th>Total</th>
                    <th>CGST</th>
                    <th>SGST</th>
                </tr>
                @foreach ($roominclusive as $item)
                    @php
                        $extraTaxinc = $item->IncTax == 'Y' ? true : false;
                        $extraRate = $item->amount;
                        $extraCgst = 0;
                        $extraSgst = 0;
                        $roomqty = $item->total_roomdet;

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
                        $roomqty = $baseQty;

                        if ($extraTaxinc) {
                            $extraRate = $item->amount / (1 + ($item->cgst_rate + $item->sgst_rate) / 100);
                            $inclusiveAmount = $extraRate * $baseQty;
                            $extraRate = $baseQty > 0 ? $inclusiveAmount / $baseQty : 0;
                            $extraCgst = ($inclusiveAmount * $item->cgst_rate) / 100;
                            $extraSgst = ($inclusiveAmount * $item->sgst_rate) / 100;
                            $totalExtraCgst += $extraCgst;
                            $totalExtraSgst += $extraSgst;
                        } else {
                            $extraCgst = ($inclusiveAmount * $item->cgst_rate) / 100;
                            $extraSgst = ($inclusiveAmount * $item->sgst_rate) / 100;
                            $totalExtraCgst += $extraCgst;
                            $totalExtraSgst += $extraSgst;
                        }

                        $totalextras += $inclusiveAmount;

                    @endphp
                    <tr>
                        <td>{{ $sne++ }}</td>
                        <td>{{ $item->revmastname }}</td>
                        <td>{{ $item->hsn_code }}</td>
                        <td>{{ $roomqty }}</td>
                        <td><b>{{ number_format($extraRate, 2) }}</b></td>
                        <td><b>{{ number_format($inclusiveAmount, 2) }}</b></td>
                        <td><b>{{ number_format($extraCgst, 2) }}</b></td>
                        <td><b>{{ number_format($extraSgst, 2) }}</b></td>
                    </tr>
                @endforeach
                <tfoot>
                    <tr>
                        <td colspan="5">Total Extra Charges</td>
                        <td>{{ number_format($totalextras, 2) }}</td>
                        <td>{{ number_format($totalExtraCgst, 2) }}</td>
                        <td>{{ number_format($totalExtraSgst, 2) }}</td>
                    </tr>
                </tfoot>
            </table>
        @endif

        @php
            $totalcgsttotal = $totalcgst + $totalExtraCgst;
            $totalsgsttotal = $totalsgst + $totalExtraSgst;
            $totalCharges = $totalRoomCharge + $totalextras;
            $grandTotal = $totalCharges + $totalTax + $totalExtraCgst + $totalExtraSgst;
            $advancesum = (float) $advance_rows->sum(fn ($payment) => (float) ($payment->amtcr ?? 0));
            $balance = $grandTotal - $totalCredit;
        @endphp

        <div class="print-area p-2">
            <div class="row g-2">
                <div class="col-8">
                    <div class="box-border p-2">
                        <h6 class="fw-bold mb-1">Total Payable Amount</h6>
                        <p class="mb-2">{{ amountToWords($balance) }}</p>

                        <table class="table table-bordered mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th>Payment Date</th>
                                    <th>Description</th>
                                    <th class="text-end">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($advance_rows as $payment)
                                    <tr>
                                        <td>{{ date('d-M-Y', strtotime($payment->vdate)) }}</td>
                                        <td>{{ $payment->comments }}</td>
                                        <td>{{ number_format($payment->amtcr, 2) }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                    <div class="box-border mt-2 p-2">
                        <table class="table table-bordered mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th>Tax Name</th>
                                    <th class="text-end">Taxable Amount</th>
                                    <th class="text-end">Tax Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($taxes as $tax)
                                    <tr>
                                        <td>{{ $tax->name ?? 'Tax' }} @ {{ $tax->taxper ?? 0 }}% Rate</td>
                                        <td class="text-end">{{ number_format((float) ($tax->onamt ?? $totalCharges), 2) }}</td>
                                        <td class="text-end">{{ number_format((float) ($tax->amtdr ?? 0), 2) }}</td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="3" class="text-center">No tax posted</td>
                                    </tr>
                                @endforelse
                                @if ($totalExtraCgst > 0)
                                    <tr>
                                        <td>Extra Charges CGST</td>
                                        <td class="text-end">{{ number_format($totalextras, 2) }}</td>
                                        <td class="text-end">{{ number_format($totalExtraCgst, 2) }}</td>
                                    </tr>
                                @endif
                                @if ($totalExtraSgst > 0)
                                    <tr>
                                        <td>Extra Charges SGST</td>
                                        <td class="text-end">{{ number_format($totalextras, 2) }}</td>
                                        <td class="text-end">{{ number_format($totalExtraSgst, 2) }}</td>
                                    </tr>
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- RIGHT BOX -->
                <div class="col-4 mt-3">
                    <div class="box-border p-2">
                        <table class="table mb-0">
                            <tbody>
                                <tr>
                                    <td>Total Charges (Rs)</td>
                                    <td class="text-end fw-bold">{{ number_format($totalCharges, 2) }}</td>
                                </tr>
                                <tr>
                                    <td>Total CGST (Rs)</td>
                                    <td class="text-end">{{ number_format($totalcgsttotal, 2) }}</td>
                                </tr>
                                <tr>
                                    <td>Total SGST (Rs)</td>
                                    <td class="text-end">{{ number_format($totalsgsttotal, 2) }}</td>
                                </tr>
                                <tr>
                                    <td>Grand Total (Rs)</td>
                                    <td class="text-end fw-bold">{{ number_format($grandTotal, 2) }}</td>
                                </tr>
                                <tr>
                                    <td>Advance (Rs)</td>
                                    <td class="text-end">{{ number_format($advancesum, 2) }}</td>
                                </tr>
                                <tr>
                                    <td class="fw-bold">Balance Due (Rs)</td>
                                    <td class="text-end fw-bold">{{ number_format($balance, 2) }}
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="footer">
        @php
            $chkintime = new DateTime(fomparameter()->checkintime);
            $deptime = new DateTime(fomparameter()->checkout);
        @endphp
        <p>A Government notification requires Indian / Foreign residents to carry proof of identity at the time of check
            in. The proof of identity can either be the guests driving license, passport or voters card.</p>
        </br>
        <p>Check in Time :- <b>{{ $chkintime->format('g:i A') }}</b> Check out time :
            <b>{{ $deptime->format('g:i A') }}</b>
        </p>
        <p style="text-decoration: underline;"><b>Cancellation Policy : </b></p>
        @if (fomparameter()->resinstruction1 != '' && fomparameter()->resinstruction1 != null)
            <p>{{ fomparameter()->resinstruction1 }}</p>
        @endif
        @if (fomparameter()->resinstruction2 != '' && fomparameter()->resinstruction2 != null)
            <p>{{ fomparameter()->resinstruction2 }}</p>
        @endif
        @if (fomparameter()->resinstruction3 != '' && fomparameter()->resinstruction3 != null)
            <p>{{ fomparameter()->resinstruction3 }}</p>
        @endif
        @if (fomparameter()->resinstruction4 != '' && fomparameter()->resinstruction4 != null)
            <p>{{ fomparameter()->resinstruction4 }}</p>
        @endif
        @if (fomparameter()->resinstruction5 != '' && fomparameter()->resinstruction5 != null)
            <p>{{ fomparameter()->resinstruction5 }}</p>
        @endif
        @if (fomparameter()->resinstruction6 != '' && fomparameter()->resinstruction6 != null)
            <p>{{ fomparameter()->resinstruction6 }}</p>
        @endif
        <br><br><br>
    </div>
</body>

</html>
