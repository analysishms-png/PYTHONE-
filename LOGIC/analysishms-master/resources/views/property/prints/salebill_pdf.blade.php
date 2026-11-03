<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Sale Bill Receipt</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            font-size: 11px;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        @page {
            size: 72mm auto;
            margin: 0;
        }

        .receipt {
            width: 72mm;
            padding: 10px;
            margin: 0 auto;
            background: #fff;
            box-sizing: border-box;
        }

        header {
            margin-bottom: 10px;
        }

        .header-flex {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 8px;
        }

        .header-logo {
            flex: 0 0 auto;
        }

        .header-logo img {
            max-width: 60px;
            max-height: 60px;
            display: block;
        }

        .header-title {
            flex: 1;
            text-align: center;
            padding: 0 10px;
        }

        .header-title h1 {
            font-size: 13px;
            margin: 0;
            font-weight: bold;
        }

        .header-info {
            font-size: 10px;
            line-height: 1.2;
            margin-top: 3px;
        }

        .line {
            border-bottom: 1px dashed;
            margin: 4px 0;
        }

        header h1 {
            font-size: 13px;
            margin: 0;
            font-weight: bold;
        }

        header h2 {
            font-size: 12px;
            margin: 5px 0;
            font-weight: normal;
        }

        header p {
            margin: 0;
            font-size: 10px;
            line-height: 1.2;
        }

        .details-row {
            width: 100%;
            margin-bottom: 3px;
            display: table;
            table-layout: fixed;
        }

        .details-row p {
            margin: 0;
            font-size: 10px;
            word-wrap: break-word;
            display: table-cell;
            width: 50%;
            padding: 0 5px 0 0;
        }

        .receipt-details,
        footer {
            margin-bottom: 10px;
        }

        .receipt-details p,
        footer p {
            margin: 0;
            line-height: 1.4;
            font-size: 10px;
        }

        .amount-section {
            margin: 5px 0;
            font-size: 10px;
        }

        .amount-row {
            display: table;
            width: 100%;
            padding: 2px 0;
            border-bottom: 1px solid #f0f0f0;
        }

        .amount-label {
            display: table-cell;
            text-align: left;
            width: auto;
            padding-right: 10px;
        }

        .amount-value {
            display: table-cell;
            text-align: right;
            width: 50px;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th,
        table td {
            font-size: 10px;
            text-align: left;
            padding: 2px 3px;
        }

        table th {
            border-bottom: 1px dashed;
            font-weight: bold;
        }

        table td {
            border-bottom: 1px solid #f0f0f0;
        }

        table tfoot td {
            font-weight: bold;
            padding-top: 5px;
            border: none;
        }

        .right-align {
            text-align: right;
        }

        h3 {
            border-bottom: 1px dashed;
            font-size: 11px;
            padding: 2px 0;
            margin: 5px 0 2px 0;
            text-align: center;
        }

        .d-flex {
            display: flex !important;
        }

        .text-center {
            text-align: center;
        }

        .m-0 {
            margin: 0;
        }

        .bold {
            font-weight: 700;
        }

        .no-items {
            text-align: center;
            padding: 5px;
            color: #999;
        }

        footer .line {
            border-bottom: 1px dashed;
            margin: 8px 0 0 0;
        }

        .taxes-container {
            display: table;
            width: 100%;
            margin-bottom: 5px;
        }

        .tax-column {
            display: table-cell;
            text-align: center;
            padding: 0 5px;
        }

        #grouptaxes {
            display: table;
            width: 100%;
            margin: 4px 0;
        }

        #grouptaxes>div {
            display: table-cell;
            text-align: center;
            padding: 0 5px;
            vertical-align: middle;
        }

        @media print {
            body {
                background: none;
                margin: 0;
                padding: 0;
            }

            .receipt {
                box-shadow: none;
                margin: 0;
                padding: 5px;
            }
        }
    </style>
</head>

<body>
    <div class="receipt">
        <header>
            <div class="header-flex">
                <div class="header-logo">
                    @if (companydata() && companydata()->logo)
                        <img src="{{ public_path('storage/admin/property_logo/' . companydata()->logo) }}" alt="Logo">
                    @endif
                </div>
                <div class="header-title">
                    @if (companydata())
                        <h1>{{ companydata()->comp_name ?? 'Hotel' }}</h1>
                    @else
                        <h1>Sale Bill Receipt</h1>
                    @endif
                </div>
                <div style="flex: 0 0 60px;"></div>
            </div>
            @if (companydata())
                <div class="header-info">
                    <p><strong>{{ companydata()->address1 ?? '' }}</strong></p>
                    @if (companydata()->address2)
                        <p>{{ companydata()->address2 }}</p>
                    @endif
                    <p>{{ companydata()->cityname ?? '' }}</p>
                    <p><strong>Mob:</strong> {{ companydata()->mobile ?? '' }}</p>
                    <p><strong>Email:</strong> {{ companydata()->email ?? '' }}</p>
                    @if (companydata()->gstin)
                        <p><strong>GSTIN:</strong> {{ companydata()->gstin }} <strong>SAC Code:</strong> 996332</p>
                    @endif
                </div>
            @endif
        </header>

        <div class="line"></div>

        <section class="receipt-details">
            <div class="details-row">
                <p><strong>Bill No:</strong> <span>{{ $billDisplay ?? '' }}</span></p>
                <p><strong>{{ $tbro ?? 'Table No.' }}:</strong> <span>{{ $sale1->roomno ?? '' }}</span></p>
            </div>
            <div class="details-row">
                <p><strong>Bill Date:</strong> <span>{{ $sale1->vdate ? \Carbon\Carbon::createFromFormat('Y-m-d', $sale1->vdate)->format('d-m-Y') : '' }}</span></p>
                <p><strong>Time:</strong> <span>{{ date('H:i', strtotime($sale1->vtime ?? '')) }}</span></p>
            </div>
            <div class="details-row">
                <p><strong>KOT No:</strong></p>
                <p></p>
            </div>
        </section>

        @if ($guestdetails)
            <div class="line"></div>
            <h3 class="text-center m-0">Customer Details</h3>
            <table>
                @if ($guestdetails->name)
                    <tr>
                        <th>Name:</th>
                        <td>{{ $guestdetails->name }}</td>
                    </tr>
                @endif
                @if ($guestdetails->add1 || $guestdetails->add2)
                    <tr>
                        <th>Address:</th>
                        <td>{{ $guestdetails->add1 ?? '' }}{{ $guestdetails->add2 ? ', ' . $guestdetails->add2 : '' }}</td>
                    </tr>
                @endif
                @if ($guestdetails->mobile_no)
                    <tr>
                        <th>Mobile:</th>
                        <td>{{ $guestdetails->mobile_no }}</td>
                    </tr>
                @endif
                @if ($guestdetails->guestcityname)
                    <tr>
                        <th>City:</th>
                        <td>{{ $guestdetails->guestcityname }}</td>
                    </tr>
                @endif
            </table>
        @endif

        @if ($companydata)
            <div class="line"></div>
            <h3 class="text-center m-0">Company Details</h3>
            <table>
                @if ($companydata->name)
                    <tr>
                        <th>Company Name:</th>
                        <td>{{ $companydata->name }}</td>
                    </tr>
                @endif
                @if ($companydata->gstin)
                    <tr>
                        <th>Company GSTIN:</th>
                        <td>{{ $companydata->gstin }}</td>
                    </tr>
                @endif
                @if ($companydata->address)
                    <tr>
                        <th>Company Address:</th>
                        <td>{{ $companydata->address }}</td>
                    </tr>
                @endif
                @if ($companydata->statename)
                    <tr>
                        <th>Company State:</th>
                        <td>{{ $companydata->statename }}</td>
                    </tr>
                @endif
                @if ($companydata->state_code)
                    <tr>
                        <th>Company State Code:</th>
                        <td>{{ $companydata->state_code }}</td>
                    </tr>
                @endif
                @if ($companydata->cityname)
                    <tr>
                        <th>Company City:</th>
                        <td>{{ $companydata->cityname }}</td>
                    </tr>
                @endif
            </table>
        @endif

        <div class="line"></div>

        <table class="items">
            <thead style="border-bottom: 1px dashed; margin: 4px 0;">
                <tr>
                    <th>Particulars</th>
                    <th class="right-align">Qty</th>
                    <th class="right-align">Rate</th>
                    <th class="right-align">Amount</th>
                </tr>
            </thead>
            <tbody style="border-bottom: 1px dashed; margin: 4px 0;">
                @forelse($items as $item)
                    <tr>
                        <td>
                            {{ $item->itemname ?? 'N/A' }}
                            @if ($item->discper > 0)
                                <div style="font-size: 9px; color: #666;">(Disc: {{ $item->discper }}%)</div>
                            @endif
                        </td>
                        <td class="right-align">{{ number_format($item->qty, 0) }}</td>
                        <td class="right-align">{{ number_format($item->rate, 2) }}</td>
                        <td class="right-align">{{ number_format($item->amt, 2) }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="4" class="no-items">No items</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
        <div class="line" style="margin: 8px 0; border-bottom: 1px dashed #000;"></div>
        @if ($suntran && count($suntran) > 0)
            @foreach ($suntran as $sun)
                @if (isset($sun->amount) && (float) $sun->amount > 0)
                    <div class="amount-row">
                        <span class="amount-label">
                            @if (strtolower($sun->dispname) === 'discount')
                                Discount ({{ $sun->baseamount }}%)
                            @elseif(strtolower($sun->dispname) === 'service charge')
                                Service Charge ({{ $sun->baseamount }}%)
                            @else
                                {{ $sun->dispname ?? 'Charge' }}
                            @endif
                        </span>
                        <span class="amount-value">{{ number_format($sun->amount, 2) }}</span>
                    </div>
                @endif
            @endforeach
        @endif
        <div class="line" style="margin: 8px 0; border-bottom: 1px dashed #000;"></div>
        @if ($taxes && count($taxes) > 0)
            <div id="grouptaxes">
                @foreach ($taxes as $tax)
                    <div>
                        <p class="bold">{{ $tax->taxname ?? 'Tax' }}</p>
                        <p class="bold">{{ $tax->taxper ?? 0 }}%</p>
                        <p>{{ number_format($tax->taxamt ?? 0, 2) }}</p>
                        <p>{{ number_format($tax->taxableamt ?? 0, 2) }}</p>
                    </div>
                @endforeach
            </div>
        @endif

        <div class="line" style="margin: 5px 0; border-bottom: 1px dashed #000;"></div>

        <div style="display: flex; justify-content: space-between; font-size: 11px; font-weight: bold; padding: 3px 0;">
            <span>Grand Total:</span>
            <span>{{ number_format($sale1->netamt ?? 0, 2) }}</span>
        </div>

        <footer>
            <p style="font-size: 10px; margin: 2px 0;"><strong>Steward Name:</strong> {{ $waitername->sname ?? ($waitername->name ?? 'N/A') }}</p>
            <p style="font-size: 10px; margin: 2px 0;"><strong>Cashier:</strong> {{ $sale1->u_name ?? 'N/A' }}</p>
            <div class="line"></div>
            <p style="font-size: 10px; margin: 5px 0 2px 0;">Analysis Software Services - 9161380170</p>
            <p style="font-size: 10px; font-weight: 700; margin: 2px 0;">Guest Signature: _________________________</p>
            <div class="line"></div>
        </footer>
    </div>
</body>

</html>
