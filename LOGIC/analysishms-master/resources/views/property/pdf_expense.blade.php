<!DOCTYPE html>
<html>

<head>
    <title>Receipt Expense</title>
    <style>
        .watermark {
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%) rotate(-45deg);
            color: red;
            font-size: 6em;
            opacity: 0.2;
            pointer-events: none;
            white-space: nowrap;
            z-index: 9999;
            user-select: none;
        }

        .watermark2 {
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50%, -50%) rotate(-45deg);
            color: rgb(218, 22, 22);
            font-size: 6em;
            opacity: 0.2;
            pointer-events: none;
            white-space: nowrap;
            z-index: 9999;
            user-select: none;
        }


        /* Ensure at least 3 positions for the watermark */
        @media print {
            .cancelled-watermark:nth-child(1) {
                top: 10%;
                left: 10%;
            }

            .cancelled-watermark:nth-child(2) {
                top: 30%;
                left: 30%;
            }

            .cancelled-watermark:nth-child(3) {
                top: 50%;
                left: 50%;
            }
        }




        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
            line-height: 1.4;
            margin: 0;
            padding: 0;
            /* Removed the top margin */
        }

        .receipt-container {
            width: 500px;
            margin: 0 auto;
            padding: 20px;
            border-bottom: 1px dashed black;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .company-name {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .company-address {
            margin-bottom: 5px;
        }

        .receipt-title {
            text-align: center;
            text-decoration: underline;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .receipt-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .misc-receipt {
            text-align: center;
            margin: 15px 0;
        }

        .posted-for {
            margin-bottom: 20px;
        }

        .details-table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: collapse;
        }

        .details-table th {
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            text-align: left;
            padding: 8px 0;
        }

        .details-table td {
            padding: 8px 0;
        }

        .amount-cell {
            text-align: right;
        }

        .charge-line {
            margin: 20px 0;
            border-top: 1px solid black;
            padding-top: 15px;
        }

        .col-right {
            text-align: right;
        }

        .label {
            font-weight: normal;
        }

        .signature-row {
            display: table;
            width: 100%;
            margin-top: 20px;
        }

        .signature-cell {
            display: table-cell;
            width: 33.33%;
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid black;
        }

        .receipt-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .col-left,
        .col-right {
            margin: 0;
            padding: 0;
        }

        .signature-cell:first-child {
            text-align: left;
        }

        .signature-cell:last-child {
            text-align: right;
        }
    </style>
</head>

<body>
    @if ($expense->delflag === 'Y')
        <div class="watermark">Cancelled</div>
        <div class="watermark2">Cancelled</div>
    @endif

    <!-- Receipt Copy 1 -->
    <div class="receipt-container">
        <div class="header">
            <div class="company-name">{{ $company->comp_name }}</div>
            <div class="company-address">{{ trim($company->address1 . ', ' . $company->address2, ', ') }}</div>
            <div class="company-address">{{ $company->state }} - {{ $company->city }}-{{ $company->pin }} </div>
        </div>

        <div class="receipt-title">{{ $type }}</div>

        <div class="receipt-details">
            <div class="receipt-row">
                <div class="col-left"><strong>V No. </strong>{{ $expense->vno }}</div>
                <div class="col-right" style="margin-top: -50px"><strong>Date:
                    </strong>{{ date('d/M/Y', strtotime($expense->vdate)) }}</div>
            </div>
        </div>

        <div class="misc-receipt"><strong>{{ $head }}</strong></div>

        <div class="posted-for">
            <span class="label"><strong>Posted For : {{ $expense->postedname }}</strong>
                {{ $expense->posted_for }} </span>
        </div>

        <table class="details-table">
            <thead>
                <tr>
                    <th>Particulars</th>
                    <th style="text-align: right;">Amount</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>{{ $expense->remark }}</strong></td>
                    <td class="amount-cell">{{ number_format($amount, 2) }}</td>
                </tr>
            </tbody>
        </table>

        <div class="charge-line">
            Charge : Rs. {{ $wordsrupee }}
        </div>

        <p class="username" style="margin-bottom: -40px; margin-left: 25px;  font-size: 15px"><strong>{{ $username }}</strong></p>
        <div class="signature-row">
            <div class="signature-cell">Prepared By</div>
            <div class="signature-cell">Guest Signature</div>
            <div class="signature-cell">Auth. Signature</div>
        </div>
    </div>

    <!-- Receipt Copy 2 -->
    {{-- {{ fomparameter()->dualprintexpsheet}} --}}
    @if (fomparameter()->dualprintexpsheet == 'Y')
        <div class="receipt-container">
            <div class="header">
                <div class="company-name">{{ $company->comp_name }}</div>
                <div class="company-address">{{ trim($company->address1 . ', ' . $company->address2, ', ') }}</div>
                <div class="company-address">{{ $company->city }}</div>
            </div>

            <div class="receipt-title">{{ $type }}</div>

            <div class="receipt-details">
                <div class="receipt-row">
                    <div class="col-left"><strong>V No. </strong>{{ $expense->vno }}</div>
                    <div class="col-right" style="margin-top: -50px"><strong>Date:
                        </strong>{{ date('d/M/Y', strtotime($expense->vdate)) }}</div>
                </div>
            </div>

            <div class="misc-receipt"><strong>{{ $head }}</strong></div>

            <div class="posted-for">
                <span class="label"><strong>Posted For : {{ $expense->postedname }}</strong>
                    {{ $expense->posted_for }} </span>
            </div>

            <table class="details-table">
                <thead>
                    <tr>
                        <th>Particulars</th>
                        <th style="text-align: right;">Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><strong>{{ $expense->remark }}</strong></td>
                        <td class="amount-cell">{{ number_format($amount, 2) }}</td>
                    </tr>
                </tbody>
            </table>

            <div class="charge-line">
                Charge : Rs. {{ $wordsrupee }}
            </div>

            <p class="username" style="margin-bottom: -40px; margin-left: 25px; font-size: 15px"><strong>{{ $username }}</strong></p>
            <div class="signature-row">
                <div class="signature-cell">Prepared By</div>
                <div class="signature-cell">Guest Signature</div>
                <div class="signature-cell">Auth. Signature</div>
            </div>
        </div>
    @endif
</body>

</html>
