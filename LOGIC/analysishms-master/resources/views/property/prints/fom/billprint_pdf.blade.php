<!DOCTYPE html>
<html>

<head>
    <title>Bill Print</title>
    <style>
        body {
            font-size: smaller !important;
        }

        .roomchargeval {
            border: none;
            background: inherit;
        }

        .roomchargeval:disabled {
            border: none;
            background: inherit;
            color: black;
        }

        #website {
            text-transform: lowercase;
        }

        .none {
            display: none;
        }

        a {
            text-decoration: none !important;
            color: #020911 !important;
        }

        a:hover {
            text-decoration: none !important;
            color: #020911 !important;
        }

        #compname {
            font-family: namdhinggo-regular;
        }

        table {
            margin-bottom: 1px !important;
        }

        .table td,
        .table th {
            padding: 2px !important;
        }


        .table-bordered td,
        .table-bordered th {
            border: 1px solid black !important;
            /* border-bottom: 1px solid #020911 !important; */
            /* border-top: 1px solid #020911 !important; */
            border-left: 1px solid #020911 !important;
            border-right: 1px solid #020911 !important;
            text-transform: capitalize;
        }

        .table-bordered>:not(caption)>* {
            border-width: 0 !important;
        }

        tbody#billdetails td {
            border: none !important;
        }

        tbody#billdetails td {
            border-left: 1px solid #020911 !important;
            border-right: 1px solid #020911 !important;
        }

        tbody#billdetails tr:last-child,
        {
        border-bottom: 1px solid #020911 !important;
        }

        #taxdivision p:last-child {
            border-bottom: 1px solid black;
        }

        /* .table tbody+tbody {
            border: 1px solid black !important;
        } */

        span {
            font-weight: 400 !important;
            text-transform: capitalize;
        }

        .payment-details label {
            margin-right: 10px;
            margin-bottom: 0;
        }

        .payment-details input[type="checkbox"] {
            margin-right: 5px;
        }

        .payment-details p,
        span#netamt,
        span#roomno2 {
            text-indent: 4px;
        }

        table th {
            text-align: inherit;
            font-weight: 600;
        }

        table#lightdark th,
        table#billdetails th {
            background: #cbd0d5;
        }

        img {
            position: absolute;
            width: 142px;
            height: 110px;
        }

        p {
            margin: 0 !important;
            font-weight: 500;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            margin: 0%;
        }

        #end {
            text-align: center;
        }

        .signnn {
            margin-top: 7em;
            display: flex;
            justify-content: space-between;
        }

        .signimage {
            display: flex;
            justify-content: end;
        }

        @media print {
            body {
                font-size: smaller !important;
            }

            body::after {
                content: none !important;
            }

            .table-bordered>:not(caption)>* {
                border-width: 0 !important;
            }

            .signimage {
                display: flex;
                justify-content: end;
            }

            .signnn {
                margin-top: 7em;
                display: flex;
                justify-content: space-between;
            }

            tbody#billdetails td {
                border: none !important;
            }

            tbody#billdetails td {
                border-left: 1px solid #020911 !important;
                border-right: 1px solid #020911 !important;
            }

            tbody#billdetails tr:last-child,
            {
            border-bottom: 1px solid #020911 !important;
        }

        #taxdivision p:last-child {
            border-bottom: 1px solid black;
        }

        img {
            position: absolute;
        }

        #taxdivision p:last-child {
            border-bottom: 1px solid black;
        }

        tbody#billdetails td {
            border: .1px solid black !important;
        }

        .table tbody+tbody {
            border: 1px solid black !important;
        }

        span {
            font-weight: 400 !important;
            text-transform: capitalize;
        }

        .payment-details label {
            margin-right: 10px;
            margin-bottom: 0;
        }

        .payment-details input[type="checkbox"] {
            margin-right: 5px;
        }

        .payment-details p,
        span#netamt,
        span#roomno2 {
            text-indent: 4px;
        }

        table th {
            text-align: inherit;
            font-weight: 600;
        }

        table#lightdark th,
        table#billdetails th {
            background: #cbd0d5;
        }

        img {
            position: absolute;
        }

        p {
            margin: 0 !important;
            font-weight: 500;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            margin: 0%;
        }

        #end {
            text-align: center;
        }

        p {
            margin: 0;
            font-weight: 500;
        }

        }

        #taxdivision {
            display: flex;
            flex-direction: column;
            gap: 0;
        }

        #taxdivision p {
            display: flex;
            justify-content: space-between;
            margin: 0 !important;
            font-weight: 500;
            padding: 2px 0;
        }

        .amount-row {
            display: flex;
            justify-content: space-between;
            margin: 0 !important;
            font-weight: 500;
            padding: 2px 0;
        }

        .amount-row.hidden {
            display: none;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css"
        integrity="sha512-jnSuA4Ss2PkkikSOLtYs8BlYIeeIK1h99ty4YfvRPAlzr377vr3CXDb7sb7eEEBYjDtcYj+AjBH3FLv5uSJuXg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    {{--
    {{--
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"> --}}
</head>

<body>
    <div class="container-fluid">
        <div class="logoimg">
            <img alt="analysishms" class="" id="complogo" src="{{ public_path('storage/admin/property_logo/' . companydata()->logo) }}">
        </div>
        <h5 id="compname" class="text-center">{{ companydata()->comp_name }}</h5>

        <div class="d-flex justify-content-between">
            <div class="text-center" style="margin-left: 11em;">
                <p class="text-center"><span id="address1">{{ companydata()->address1 }}</span></p>
                <p class="text-center"><span id="address2">{{ companydata()->address2 }}</span></p>
                <p class="text-center"><span id="city">{{ companydata()->city }}</span> <span id="state">{{ companydata()->state }}</span> <span id="pincode">{{ companydata()->pincode }}</span></p>
                <p id="tagemail">E-mail: <span id="email">{{ companydata()->email }}</span></p>
                <p>Mobile: <span id="phone">{{ companydata()->phone }}</span></p>
                <p id="tagwebsite">Website: <span id="website">{{ companydata()->website }}</span></p>
                <p>TAX INVOICE</p>
            </div>
            <div>
                <p>
                <p>GST IN: <span id="gstin">{{ companydata()->gstin }}</span></p>
                <p>
                <p>SAC Code: <span id="sascode">996311</span></p>
                @if (fomparameter()->printfoodsaccode == 'Y')
                    <p>SAC Food Code: <span id="sascode">996332</span></p>
                @endif
            </div>
        </div>

        <div class="table-responsive">
            <table id="lightdark" class="table table-bordered">
                <tr>
                    <th>G.R.C. No.</th>
                    <td id="grcno">{{ $guest->folioNo }}</td>
                    <th id="invoicetext">Invoice No.</th>
                    <td id="invoiceno">{{ $invoiceno }}</td>
                    <th>Room No.</th>
                    <td id="roomno">{{ $guest->roomno }}</td>
                    <th>Invoice Date.</th>
                    <td id="invoicedate">{{ date('d-m-Y', strtotime($fombilldetail->billdate)) }}</td>
                </tr>
            </table>
        </div>
        <div class="table-responsive">
            <table id="lightdark" class="table table-bordered">
                <tr>
                    <th>Pax</th>
                    <th>Room Disc</th>
                    <th>Room Type</th>
                    <th>Nationality</th>
                    <th>Arrival Date & Time</th>
                    <th>Departure Date & Time</th>
                    @if (fomparameter()->displayplanonprint == 'Y')
                        <th>Plan/Package</th>
                    @endif
                </tr>
                <tr>
                    <td><span id="adult">{{ $adult }}</span>/<span id="children">{{ $children }}</span></td>
                    <td id="rodisc">{{ $guest->rodisc }}</td>
                    <td id="categname">{{ $guest->categname }}</td>
                    <td id="nationality">{{ $guest->nationality }}</td>
                    <td><span id="arrdate">{{ date('d-m-Y', strtotime($guest->chkindate)) }}</span> <span id="arrtime">{{ date('H:i', strtotime($guest->chkintime)) }}</span></td>
                    <td><span id="depdate">{{ date('d-m-Y', strtotime($guest->depdate)) }}</span> <span id="deptime">{{ date('H:i', strtotime($guest->deptime)) }}</span></td>
                    @if (fomparameter()->displayplanonprint == 'Y')
                        <td id="package">{{ $guest->plankanam }}</td>
                    @endif
                </tr>
            </table>
        </div>
        <div class="table-responsive">
            <table id="lightdark" class="table table-bordered">
                <tr>
                    <th>Guest Details</th>
                    <th>Company Details</th>
                    <th>Traveller Details</th>
                </tr>
                <tr>
                    <td>
                        <p>Guest Name: <span id="guestname">{{ $guest->name }}</span></p>
                        <p>Address: <span id="addressclient">{{ isset($guest->add1) ? $guest->add1 : '' }} {{ isset($guest->add2) ? $guest->add2 : '' }}</span></p>
                        <p>City: <span id="cityclient">{{ $guest->city_name }}</span></p>
                        <p>State: <span id="stateclient">{{ $guest->state_name }}</span></p>
                        <p>Mobile No.: <span id="mobno">{{ $guest->mobile_no }}</span></p>
                    </td>
                    <td>
                        <p>Company: <span id="subname">{{ $guestcomp->name ?? '' }}</span></p>
                        <p>Address: <span id="subaddress">{{ $guestcomp->address ?? '' }}</span></p>
                        <p>GSTIN: <span id="subgstin">{{ $guestcomp->gstin ?? '' }}</span></p>
                        <p>State: <span id="substatename">{{ $guestcomp->statename ?? '' }}</span></p>
                        <p>State Code: <span id="substatecode">{{ $guestcomp->state_code ?? '' }}</span></p>
                    </td>
                    <td>
                        <p>Agency: <span id="travelname">{{ $guesttravel->name ?? '' }}</span></p>
                        <p>Address: <span id="traveladdress">{{ $guesttravel->address ?? '' }}</span></p>
                        <p>GSTIN: <span id="travelgstin">{{ $guesttravel->gstin ?? '' }}</span></p>
                        <p>State: <span id="travelstatename">{{ $guesttravel->statename ?? '' }}</span></p>
                        <p>State Code: <span id="travelstatecode">{{ $guesttravel->state_code ?? '' }}</span></p>
                </tr>
            </table>
        </div>
        <div class="table-responsive">
            <table id="lightdark" class="table table-bordered">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Bill/Voucher</th>
                        <th>Description</th>
                        <th>Debit</th>
                        <th>Credit</th>
                    </tr>
                </thead>
                <tbody id="billdetails">
                    @foreach ($charged as $item)
                        <tr>
                            <td>{{ date('d-m-Y', strtotime($item->vdate)) }}</td>
                            <td>{{ $item->vtype }}/{{ $item->vno }}</td>
                            <td>{{ $item->comments }}</td>
                            <td>{{ $item->amtdr ?? '0' }}</td>
                            <td>{{ $item->amtcr ?? '0' }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div class="table-responsive">
            <table id="lightdark" class="table table-bordered">
                <tr>
                    <td class="payment-details d-flex">
                        <p>
                            Payment Mode:
                            @if (!empty($payments))
                                @foreach ($payments as $pay)
                                    {{ $pay['name'] }}: {{ number_format($pay['amt'], 2) }}
                                    @if (!$loop->last)
                                        ,
                                    @endif
                                @endforeach
                            @else
                                Not Paid Yet
                            @endif
                        </p>
                        {{-- <p>Room Details: </p> --}}
                        <span id="roomno2"> </span>
                    </td>

            </table>
        </div>

        <div class="table-responsive">
            <table id="lightdark" class="table table-bordered">
                <tr>
                    <td>
                        <p>In Words: <span id="rupeewords">{{ amountToWords($netamount) }}</span></p>
                        <p>User Name: <span id="username">{{ Auth::user()->u_name }}</span></p>
                        @if (!empty(companydata()->acname))
                            <p class="bankdetails">Account Name: <span id="acname">{{ companydata()->acname }}</span></p>
                            <p class="bankdetails">Account No.: <span id="acnum">{{ companydata()->acnum }}</span></p>
                            <p class="bankdetails">Bank Name: <span id="bankname">{{ companydata()->bankname }}</span></p>
                            <p class="bankdetails">IFSC Code: <span id="ifsccode">{{ companydata()->ifsccode }}</span></p>
                            <p class="bankdetails">Branch Name: <span id="branchname">{{ companydata()->branchname }}</span></p>
                        @endif
                        <div id="grouptaxesdiv" style="margin: 4px 0;" class="d-flex text-center">
                            @foreach ($taxes as $item)
                                <div>
                                    <p class="bold">{{ $item->name }}</p>
                                    <p class="bold">{{ $item->taxper }}%</p>
                                    <p>{{ $item->onamt }}</p>
                                    <p>{{ $item->amtdr }}</p>
                                </div>
                            @endforeach
                        </div>
                    </td>
                    <td>
                        <p class="amount-row"><b>TOTAL:</b> <span id="totalsumdebit">{{ number_format($totalsumdebit, 2) }}</span></p>
                        <div id="taxdivision">
                            @foreach ($taxname as $index => $tax)
                                @if ($taxedamount[$index] > 0)
                                    <p><b>{{ $tax }}:</b> <span>{{ number_format($taxedamount[$index], 2) }}</span></p>
                                @endif
                            @endforeach
                        </div>
                        <p class="amount-row"><b>TOTAL:</b> <span id="totalaftertax">{{ number_format($totalaftertaxadd, 2) }}</span></p>
                        @if ($creditsum > 0)
                            <p class="amount-row"><b>ADVANCE & OTHER CREDIT:</b> <span id="totalcredit">{{ number_format($creditsum, 2) }}</span></p>
                        @endif
                        <p class="amount-row" style="border-bottom: 1px solid black;"><b>Round Off:</b> <span id="roundoff">{{ number_format($roundoff, 2) }}</span></p>
                        <p class="amount-row"><b>NET AMOUNT:</b> <span id="netamount">{{ number_format($netamount, 2) }}</span></p>
                    </td>
                </tr>
            </table>
        </div>

        <div class="table-responsive">
            <table id="lightdark" class="table table-bordered">
                <tr>
                    <td class="text-center">PLEASE RETURN YOUR KEY ON DEPARTURE</td>
                </tr>
            </table>
        </div>

        <div class="table-responsive">
            <table id="lightdark" class="table table-bordered">
                <tr>
                    <td>
                        <div class="signimage">
                            {!! $guestsign !!}
                        </div>
                        <div class="signnn">
                            <p>Cashier's Signature</p>
                            <p>Guest's Signature</p>
                        </div>
                        <p class="text-center">-----------------------------------------Thank You for
                            Honouring us by your
                            visit-----------------------------------------
                        </p>
                        <p style="text-align:center;font-weight: 400">(Subject to <span id="citynamed"></span>
                            Jurisdiction)</p>
                    </td>
                </tr>
            </table>
        </div>
        <p style="font-weight: 400">Analysis Software Services - <a href="tel:9161380170">9161380170</a></p>

    </div>
</body>

</html>
