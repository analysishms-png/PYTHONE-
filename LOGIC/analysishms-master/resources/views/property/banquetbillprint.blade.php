<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $hallsale1->party }} Bill No_{{ $hallsale1->vno }} Banquet Bill Receipt</title>
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('admin/images/favicon.png') }}">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        @media print {
            @page {
                size: A4;
                margin: 0.2in;
            }

            body {
                margin: 0;
                padding: 0;
                font-size: 11px;
                line-height: 1.2;
            }

            table th {
                background: #adb5bdb5 !important;
            }

            .no-print {
                display: none;
            }

            .print-break {
                page-break-after: always;
            }
        }

        body {
            font-family: Arial, sans-serif;
            font-size: 11px;
            line-height: 1.3;
            margin: 0;
            padding: 5px;
        }

        .invoice-header {
            border: 2px solid #000;
            padding: 2px;
            margin-bottom: 2px;
        }

        .company-info {
            text-align: center;
            margin-bottom: 10px;
        }

        .duplicate-original {
            text-align: right;
            font-size: 10px;
            margin-bottom: 5px;
        }

        .table-custom {
            border: 1px solid #000;
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 10px;
        }

        table th {
            background: #adb5bdb5 !important;
        }

        .table-custom th,
        .table-custom td {
            border: 1px solid #000;
            padding: 4px;
            font-size: 10px;
            vertical-align: top;
        }

        .table-custom th {
            background-color: #f8f9fa;
            font-weight: bold;
            text-align: center;
        }

        .amount-section {
            border: 1px solid #000;
            padding: 8px;
            margin-top: 10px;
        }

        .footer-section {
            margin-top: 15px;
            border: 1px solid #000;
            padding: 8px;
        }

        .text-bold {
            font-weight: bold;
        }

        .text-right {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }

        .small-text {
            font-size: 12px;
        }

        .gst-details {
            display: flex;
            justify-content: space-between;
            margin-bottom: 5px;
        }

        .function-details {
            background-color: #f8f9fa;
            border: 1px solid #000;
            padding: 8px;
            margin-bottom: 10px;
        }

        @media print {

            tr th,
            tr td {
                border-left: 1px solid #020911 !important;
                border-right: 1px solid #020911 !important;
                border-top: 1px solid #020911 !important;
                border-bottom: 1px solid #020911 !important;
            }
        }

        tr th,
        tr td {
            border-left: 1px solid #020911 !important;
            border-right: 1px solid #020911 !important;
            border-top: 1px solid #020911 !important;
            border-bottom: 1px solid #020911 !important;
        }
    </style>
</head>

<body>
    <div class="container-fluid">

        <!-- Invoice Header -->
        <div style="display:flex; justify-content:space-between; align-items:flex-start;">

            <!-- LEFT (logo space) -->
            <div style="width:25%;">
                @if (!empty($printCompany['logo']) && file_exists(public_path('storage/' . $printCompany['logo'])))
                    <img src="{{ asset('storage/' . $printCompany['logo']) }}" style="width:120px; height:70px;">
                @endif
            </div>

            <!-- CENTER (company details) -->
            <div style="width:50%; text-align:center;">
                <div style="font-weight:bold; font-size:16px;">
                    {{ $printCompany['comp_name'] }}
                </div>

                <!-- Address auto wrap (3 line type) -->
                <div>
                    {!! wordwrap($printCompany['address'], 40, '<br>', true) !!}
                </div>

                <div>
                    {{ companydata()->city }} - {{ companydata()->state }} - {{ companydata()->pincode }}
                </div>

                <div><b>E-mail:</b> {{ companydata()->email }}</div>
                <div><b>Mobile:</b> {{ companydata()->mobile }}</div>
                <div><b>Website:</b> {{ companydata()->website }}</div>

                <div style="margin-top:5px;"><b>TAX INVOICE</b></div>
            </div>

            <!-- RIGHT (GST aligned properly same line) -->
            <div style="width:25%; text-align:right;">
                <div style="display:flex; justify-content:flex-end; gap:5px;">
                    <b>GST IN :</b>
                    <span>{{ $printCompany['gstin'] }}</span>
                </div>

                <div style="display:flex; justify-content:flex-end; gap:5px;">
                    <b>SAC Code :</b>
                    <span>996334</span>
                </div>
            </div>

        </div>

        <div class="duplicate-original text-end mb-2">
            <label><input type="checkbox" name="duplicate_copy" value="1"> Duplicate</label>
            <label style="margin-left: 20px;"><input type="checkbox" name="original_copy" value="1">
                Original</label>
        </div>
    </div>

    <!-- Function Details -->
    <table class="table table-bordered table-sm m-0 p-0" style="font-size: 12px;">
        <thead>
            @if (!empty($hallsale1->remark))
                <tr class="text-center fw-bold">
                    <th colspan="7" class="text-uppercase" style="font-size: 18px;">{{ $hallsale1->remark }}
                    </th>
                </tr>
            @endif

            <tr class="text-center fw-bold">
                <th>Function</th>
                <th>PAN No.</th>
                <th colspan="2">Bill No.</th>
                <th colspan="3">Bill Date</th>
            </tr>

            <tr class="text-center">
                <td>{{ $hallsale1->functionname }}</td>
                <td>{{ $hallsale1->panno }}</td>
                <td colspan="2">{{ $invoiceno }}</td>
                <td colspan="3">{{ date('d-m-Y', strtotime($hallsale1->vdate)) }}</td>
            </tr>

            <tr class="text-center fw-bold">
                <th colspan="3">Name & Address</th>
                <th>Venue Name</th>
                <th colspan="2">From Date & Time</th>
                <th colspan="2">To Date & Time</th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <td colspan="3">
                    {{ $hallsale1->party }} </br>
                    {{ $hallsale1->add1 }} {{ $hallsale1->cityname }}
                </td>
                <td>
                    @foreach ($venueocc as $item)
                        {{ strtoupper($item->venuename) }}<br>
                    @endforeach
                </td>
                <td colspan="2">
                    @foreach ($venueocc as $item)
                        {{ date('d-m-Y', strtotime($item->fromdate)) }}
                        {{ date('H:i', strtotime($item->dromtime)) }}<br>
                    @endforeach
                </td>
                <td colspan="2">
                    @foreach ($venueocc as $item)
                        {{ date('d-m-Y', strtotime($item->todate)) }}
                        {{ date('H:i', strtotime($item->totime)) }}<br>
                    @endforeach
                </td>
            </tr>

            @if (!empty($hallsale1->comp_code))
                <tr class="text-center fw-bold">
                    <th colspan="4">Company Details</th>
                    <th>GSTIN</th>
                    <th>State</th>
                    <th>State Code</th>
                </tr>
            @endif

            <tr>
                @if (!empty($hallsale1->comp_code))
                    <td colspan="4">{{ subgroup($hallsale1->comp_code)->name }}</td>
                    <td>{{ subgroup($hallsale1->comp_code)->gstin }}</td>
                    <td>{{ subgroup($hallsale1->comp_code)->statename }}</td>
                    <td>{{ subgroup($hallsale1->comp_code)->state_code }}</td>
                @endif
            </tr>
        </tbody>
    </table>

    <!-- Items Table -->
    <table class="table-custom">
        <thead>
            <tr>
                <th style="width: 5%;">S.No.</th>
                <th style="width: 45%;">Particular</th>
                <th style="width: 10%;">HSN/SAC Code</th>
                <th style="width: 8%;">Qty.</th>
                <th style="width: 15%;">Rate</th>
                <th style="width: 15%;">Amount (Rs.)</th>
            </tr>
        </thead>
        <tbody>
            @php $index = 1; @endphp

            @if (!empty($hallsale1->narration) || $hallsale1->noofpax > 0 || $hallsale1->rateperpax > 0 || $hallsale1->totalpercover > 0)
                <tr>
                    <td class="text-center"><b>{{ $index++ }}.</b></td>
                    <td>{{ $hallsale1->narration }} </br><i>{{ $hallsale1->remark }}</i></td>
                    <td class="text-center">-</td>
                    <td class="text-right">{{ $hallsale1->noofpax }}</td>
                    <td class="text-right">{{ $hallsale1->rateperpax }}</td>
                    <td class="text-right">{{ $hallsale1->totalpercover }}</td>
                </tr>
            @endif

            @if ($stockitems->isNotEmpty())
                @foreach ($stockitems as $item)
                    @if ($item->qtyiss > 0 || $item->rate > 0 || $item->amount > 0)
                        <tr>
                            <td class="text-center"><b>{{ $index++ }}.</b></td>
                            <td>{{ $item->Name }} </br><i>{{ $item->remarks }}</i></td>

                            <td class="text-center">
                                {{ $item->HSNCode ?? '-' }}
                            </td>
                            <td class="text-right">{{ $item->qtyiss }}</td>
                            <td class="text-right">{{ $item->rate }}</td>
                            <td class="text-right">{{ $item->amount }}</td>
                        </tr>
                    @endif
                @endforeach
            @endif

            {{-- @if ($stockitems->isNotEmpty())
                    @php $index = 2; @endphp
                    @foreach ($stockitems as $item)
                        <tr>
                            <td class="text-center"><b>{{ $index++ }}.</b></td>
                            <td>{{ $item->Name }} </br><i>{{ $item->remarks }}</i></td>
                            <td class="text-right">{{ $item->qtyiss }}</td>
                            <td class="text-right">{{ $item->rate }}</td>
                            <td class="text-right">{{ $item->amount }}</td>
                        </tr>
                    @endforeach
                @endif --}}
        </tbody>
    </table>

    <div class="amount-section mt-3" style="display:flex; gap:15px; align-items:flex-start;">
        <!-- LEFT: Settlement/Advance (auto width) -->
        <div style="flex-shrink:0;">
            @if ($paidrows->isNotEmpty())
                <div class="mt-3">
                    <strong>Settlement Mode:</strong><br>
                    @foreach ($paidrows as $item)
                        {{ $item->paytype }} :
                        <b>{{ number_format($item->amtcr, 2) }}</b><br>
                    @endforeach
                </div>
            @endif

            @if ($advancerows->isNotEmpty())
                <div class="mt-3">
                    <strong>Advance Mode:</strong>
                    <table class="table table-hover table-bordered table-payshow mt-2">
                        <thead>
                            <tr>
                                <th>Paytype</th>
                                <th>Rect. No.</th>
                                <th>Date</th>
                                <th>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (banquetparameter()->adv_tax_on_bill == 1)
                                @php
                                    $advTotalSum = $advancerows->sum('amtcr');
                                    $advDisplayRows = $advancerows->where('sno', '1');
                                    $advGrouped = $advancerows->groupBy('docid');
                                @endphp
                                @foreach ($advDisplayRows as $item)
                                    @php
                                        $rowTotal = $advGrouped->has($item->docid) ? $advGrouped[$item->docid]->sum('amtcr') : $item->amtcr;
                                    @endphp
                                    <tr>
                                        <td>{{ $item->paytype }}</td>
                                        <td>{{ $item->vno }}</td>
                                        <td>{{ date('d-m-Y', strtotime($item->vdate)) }}</td>
                                        <td>{{ number_format($rowTotal, 2) }}</td>
                                    </tr>
                                @endforeach
                            @else
                                @php $total = 0; @endphp
                                @foreach ($advancerows as $item)
                                    @php $total += $item->amtcr; @endphp
                                    <tr>
                                        <td>{{ $item->paytype }}</td>
                                        <td>{{ $item->vno }}</td>
                                        <td>{{ date('d-m-Y', strtotime($item->vdate)) }}</td>
                                        <td>{{ number_format($item->amtcr, 2) }}</td>
                                    </tr>
                                @endforeach
                            @endif
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="3"><b>Total</b></td>
                                <td><b>{{ number_format(banquetparameter()->adv_tax_on_bill == 1 ? $advTotalSum : $total, 2) }}</b></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            @endif
        </div>

        <div style="flex:1;">
            @if (!empty(companydata()->acnum))
                <div class="mb-2">
                    <p class="mb-1"><b>Account Name:</b> {{ companydata()->acname }}</p>
                    <p class="mb-1"><b>Account No.:</b> {{ companydata()->acnum }}</p>
                    <p class="mb-1"><b>Bank Name:</b> {{ companydata()->bankname }}</p>
                    <p class="mb-1"><b>IFSC Code:</b> {{ companydata()->ifsccode }}</p>
                    <p class="mb-1"><b>Branch Name:</b> {{ companydata()->branchname }}</p>
                </div>
            @endif

            <div style="display:flex; gap:15px; align-items:flex-start;">
                <div>
                    @if ($resulttaxfull->isNotEmpty())
                        <div class="d-flex flex-wrap">
                            @foreach ($resulttaxfull as $item)
                                <div class="text-center me-4 mb-2">
                                    <b>{{ $item->TaxName }}</b><br>
                                    <b>{{ number_format($item->TaxPer, 2) }}%</b><br>
                                    {{ number_format($item->TaxAmt, 2) }}<br>
                                    <b>Base:</b>
                                    {{ number_format($item->TaxableAmt, 2) }}
                                </div>
                            @endforeach
                        </div>
                    @endif
                </div>

                <div style="margin-left:auto; margin-top:-auto;">
                    <table class="table table-bordered mb-0" style="font-weight:bold;">
                        @php $netamount = 0; @endphp
                        @foreach ($finalData as $item)
                            @if ($item['dispname'] == 'Net Amount')
                                @php $netamount = $item['amount']; @endphp
                            @endif
                            @if ($item['amount'] > 0)
                                <tr style="background:#d3d3d3;">
                                    <th>{{ $item['dispname'] }}</th>
                                    <td>:</td>
                                    <td class="text-end">₹{{ number_format($item['amount'], 2) }}</td>
                                </tr>
                            @endif
                        @endforeach
                        @if ($advancerows->sum('amtcr') > 0)
                            <tr style="background:#d3d3d3;">
                                <th>Advance (-)</th>
                                <td>:</td>
                                <td class="text-end">₹{{ number_format($advancerows->sum('amtcr'), 2) }}</td>
                            </tr>
                        @endif
                        <tr style="background:#d3d3d3;">
                            <th>Net Payable Amount</th>
                            <td>:</td>
                            <td class="text-end">₹{{ number_format($netamount - $advancerows->sum('amtcr'), 2) }}</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="mt-2 text-end">
                <strong>
                    Rs.
                    {{ amountToWords($netamount - $advancerows->sum('amtcr')) }}
                    Only
                </strong>
            </div>
        </div>
    </div>

    <div class="footer-section">

        <!-- TOP ROW -->
        <div style="display:flex; justify-content:space-between; font-size:12px;">

            <!-- LEFT: Terms -->
            <div>
                @if (!empty(optional($comintrction)->resinstructionbillno1) || !empty(optional($comintrction)->resinstructionbillno2) || !empty(optional($comintrction)->resinstructionbillno3))

                    <strong>Terms & Conditions:</strong><br>

                    @if (!empty(optional($comintrction)->resinstructionbillno1))
                        <div>• {{ $comintrction->resinstructionbillno1 }}</div>
                    @endif

                    @if (!empty(optional($comintrction)->resinstructionbillno2))
                        <div>• {{ $comintrction->resinstructionbillno2 }}</div>
                    @endif

                    @if (!empty(optional($comintrction)->resinstructionbillno3))
                        <div>• {{ $comintrction->resinstructionbillno3 }}</div>
                    @endif

                @endif
            </div>

            <!-- RIGHT: Company -->
            <div style="text-align:right;">
                <strong>For: {{ $printCompany['comp_name'] }}</strong>
            </div>

        </div>


        <!-- 🔥 SIGNATURE SECTION (FINAL PERFECT ALIGNMENT) -->
        <div style="position:relative; margin-top:120px; font-size:12px;">

            <!-- LEFT -->
            <div style="float:left;">
                Prepared by: <b>{{ strtoupper($hallsale1->u_name) }}</b>
            </div>

            <!-- CENTER -->
            <div style="position:absolute; left:50%; transform:translateX(-50%); border-top:1px solid #000; width:180px; margin-bottom:5px;">
                Receiver’s Signature
            </div>

            <!-- RIGHT -->
            <div style="float:right; text-align:center;">
                <div style="border-top:1px solid #000; width:180px; margin-bottom:5px;"></div>
                Accountants Deptt.<br>
                Authorised Signatory
            </div>

            <div style="clear:both;"></div>
        </div>

    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>

<script>
    setTimeout(() => {
        window.print();
    }, 1000);
</script>
