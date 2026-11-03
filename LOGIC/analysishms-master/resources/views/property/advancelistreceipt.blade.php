{{-- {{ dd($banquet->toArray()) }} --}}
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Advance Receipt</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
            color: #000;
        }

        .page {
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .receipt-copy {
            flex: 1;
            padding: 12px 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .divider {
            border: none;
            border-top: 2px dashed #000;
            margin: 0;
        }

        .top-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 6px;
        }

        .company-info h2 {
            font-size: 15px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .company-info p {
            font-size: 11px;
            margin: 1px 0;
        }

        .receipt-info {
            text-align: right;
            font-size: 11px;
            line-height: 1.8;
        }

        .receipt-info p {
            margin: 1px 0;
        }

        .receipt-title {
            text-align: center;
            font-size: 14px;
            font-weight: bold;
            text-decoration: underline;
            text-transform: uppercase;
            margin: 6px 0;
            letter-spacing: 1px;
        }

        .divider-solid {
            border: none;
            border-top: 1px solid #000;
            margin: 4px 0;
        }

        .info-row {
            font-size: 12px;
            margin: 3px 0;
        }

        .info-row b {
            font-weight: bold;
        }

        .amount-box {
            border: 1px solid #000;
            padding: 7px 10px;
            margin: 8px 0;
        }

        .amount-box .line {
            margin: 3px 0;
            font-size: 12px;
        }

        .amount-box .line b {
            font-weight: bold;
        }

        .tax-line {
            display: flex;
            gap: 40px;
            margin: 3px 0;
            font-size: 12px;
        }

        .total-line {
            font-size: 13px;
            font-weight: bold;
            border-top: 1px solid #000;
            padding-top: 4px;
            margin-top: 5px;
        }

        .terms {
            font-size: 10px;
            margin: 6px 0;
            line-height: 1.6;
        }

        .sign-row {
            display: flex;
            justify-content: space-between;
            margin-top: 25px;
            /* increased spacing */
            font-size: 12px;
        }

        .sign-row .left {
            margin-top: 20px;
            /* push signature line down */
        }

        .sign-row .right {
            text-align: right;
        }

        .copy-label {
            font-size: 10px;
            font-style: italic;
            text-align: right;
            margin-bottom: 3px;
        }

        @media print {
            @page {
                size: A4;
                margin: 6mm 8mm;
            }

            html,
            body {
                height: 100%;
            }

            .page {
                height: 100vh;
            }
        }
    </style>
</head>

<body>
    <div class="page">

        @php
            $displayName = !empty($banquet->companyname) ? $banquet->companyname : $companydata->comp_name;
            $displayAddress = !empty($banquet->companyaddress) ? $banquet->companyaddress : $companydata->address1;
            $displayMobile = !empty($banquet->mobile) ? $banquet->mobile : $companydata->mobile;
            $displayGstin = !empty($banquet->gstin) ? $banquet->gstin : $companydata->gstin ?? '';
            $displayLogo = !empty($banquet->logo) ? $banquet->logo : $companydata->logo ?? '';

            $isRefund = $advance->vtype !== 'AD';
            $receiptTitle = $isRefund ? 'Refund' : 'Receipt';
            $receivedLabel = $isRefund ? 'Refund paid to' : 'Received with thanks from';

            $cgstAmt = floatval($advance->CGST ?? 0);
            $sgstAmt = floatval($advance->SGST ?? 0);
            $taxable = floatval($advance->Amount ?? 0);
            $totalAmt = $taxable + $cgstAmt + $sgstAmt;

            $cgstPct = $taxable > 0 && $cgstAmt > 0 ? round(($cgstAmt / $taxable) * 100, 2) : 0;
            $sgstPct = $taxable > 0 && $sgstAmt > 0 ? round(($sgstAmt / $taxable) * 100, 2) : 0;

            $copies = ['Office Copy', 'Customer Copy'];
        @endphp

        @foreach ($copies as $index => $copy)
            @if ($index > 0)
                <hr class="divider">
            @endif

            <div class="receipt-copy">

                <div>
                    <div class="copy-label">{{ $copy }}</div>

                    <div class="top-header">
                        <div class="company-info">
                            @if ($displayLogo)
                                <img src="{{ asset('storage/admin/property_logo/' . $displayLogo) }}"
                                    style="height:40px; margin-bottom:3px; display:block;">
                            @endif
                            <h2>{{ $displayName }}</h2>
                            <p>{{ $displayAddress }}</p>
                            <p>Mobile: {{ $displayMobile }}</p>
                            @if (!empty($displayGstin))
                                <p>GSTIN: {{ $displayGstin }}</p>
                            @endif
                        </div>
                        <div class="receipt-info">
                            <table style="width:100%; font-size:11px;">
                                <tr>
                                    <td>Receipt No:</td>
                                    <td style="text-align:right; white-space:nowrap;">
                                        <b>{{ $advance->vprefix }}-{{ $advance->Rectno }}</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Date:</td>
                                    <td style="text-align:right; white-space:nowrap;">
                                        <b>{{ \Carbon\Carbon::parse($advance->RectDate)->format('d-m-Y') }}</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="white-space: nowrap;">Place of Service:</td>
                                    <td style="text-align:right; white-space: nowrap;">
                                        <b>{{ $banquet->city ?? $companydata->city }}</b>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="white-space: nowrap;">State:</td>
                                    <td style="text-align:right; white-space: nowrap;">
                                        <b>{{ strtoupper($banquet->state ?? $companydata->state) }}</b>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <hr class="divider-solid">

                    <div class="receipt-title">{{ $receiptTitle }}</div>

                    <hr class="divider-solid">

                    <div class="info-row">{{ $receivedLabel }}: <b>{{ $advance->PartyName }}</b></div>
                    @if (!empty($advance->PartyMobile))
                        <div class="info-row">Mobile: <b>{{ $advance->PartyMobile }}</b></div>
                    @endif
                    @if (!empty($advance->PartyAddress))
                        <div class="info-row">Address: <b>{{ $advance->PartyAddress }}</b></div>
                    @endif

                    <div class="amount-box">
                        <div class="line">A sum of Rs: <b>{{ ucwords($advance->AmountWords) }}</b></div>
                        <div class="line">Booking No: <b>{{ $advance->FPNo }}</b></div>
                        <div class="line">
    Drawn on: <b>{{ $advance->Nature ?? 'N/A' }}</b>
    &nbsp;&nbsp;&nbsp; Towards: Function Dt.
    <b>{{ $advance->FunctionDate ? \Carbon\Carbon::parse($advance->FunctionDate)->format('d/m/Y') : 'N/A' }}</b>
</div>
                        <div class="line">Via: <b>{{ $advance->Nature }}</b></div>
                        <br>
                        @if ($taxable > 0)
                            <div class="line">Taxable Amount: Rs. {{ number_format($taxable, 1) }}</div>
                        @endif
                        @if ($cgstAmt > 0 || $sgstAmt > 0)
                            <div class="tax-line">
                                @if ($cgstAmt > 0)
                                    <span>CGST&#64;{{ $cgstPct }}%: Rs. {{ number_format($cgstAmt, 1) }}</span>
                                @endif
                                @if ($sgstAmt > 0)
                                    <span>SGST&#64;{{ $sgstPct }}%: Rs. {{ number_format($sgstAmt, 1) }}</span>
                                @endif
                            </div>
                        @endif
                        <div class="total-line">
                            Total Amount: Rs. {{ number_format($totalAmt, 1) }}
                            ({{ $totalAmountWords }} Only)
                        </div>
                    </div>
                </div>

                <div>
                    <div class="terms">
                        {!! nl2br(e($termsText)) !!}
                    </div>

                    <div class="sign-row">
                        <div class="left">
                            <br><br>
                            Receiver Signature
                        </div>
                        <div class="right">
                            For {{ $displayName }}<br><br><br>
                            Authorised Signatory
                        </div>
                    </div>
                </div>

            </div>
        @endforeach

    </div>

    <script>
        window.onload = function() {
            window.print();
        };
    </script>
</body>

</html>
