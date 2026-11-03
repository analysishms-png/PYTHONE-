<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quotation - {{ $data->orderno }}</title>
    <style>
        @page {
            margin: 8mm 10mm;
        }
        
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            font-size: 13px;
            line-height: 1.6;
            color: #222;
            margin: 0;
            padding: 0;
        }

        /* Each Page Box to Fix Footer at Bottom */
        .page-container {
            position: relative;
            height: 268mm; /* Standard A4 printable height */
            width: 100%;
            page-break-after: always;
            box-sizing: border-box;
        }

        .page-container:last-child {
            page-break-after: auto;
        }

        /* Pure Table Layout */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 12px;
        }

        td, th {
            padding: 7px 9px;
            vertical-align: top;
            word-wrap: break-word;
        }

        .header-bar {
            border-bottom: 2px solid #1e3a5f;
            padding-bottom: 8px;
            margin-bottom: 18px;
        }

        .brand {
            color: #1e3a5f;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .recipient-box {
            background: #f4f6f9;
            border-left: 4px solid #1e3a5f;
            padding: 10px 14px;
            margin-bottom: 18px;
        }

        .subject-box {
            background: #eef2f7;
            padding: 10px 14px;
            font-weight: bold;
            color: #1e3a5f;
            margin-bottom: 20px;
            font-size: 13px;
            border-radius: 3px;
        }

        .letter-text p {
            margin-bottom: 12px;
            font-size: 13px;
            text-align: justify;
        }

        /* Bordered tables for pricing and details */
        .bordered-table th, 
        .bordered-table td {
            border: 1px solid #ccc;
            padding: 7px 9px;
        }

        .bordered-table th {
            background: #1e3a5f;
            color: #fff;
            text-transform: uppercase;
            font-size: 11px;
        }

        .total-row td {
            background: #eef2f7;
            font-size: 13px;
            font-weight: bold;
        }

        .text-right { text-align: right; }
        .text-center { text-align: center; }
        .bold { font-weight: bold; }
        .text-danger { color: #c0392b; }
        .text-primary { color: #1e3a5f; }

        /* T&C Specific Styles for Spacious Layout */
        .terms-title {
            font-weight: bold;
            font-size: 14px;
            color: #1e3a5f;
            margin-top: 18px;
            margin-bottom: 6px;
            border-bottom: 1px solid #e0e0e0;
            padding-bottom: 3px;
        }

        .terms-list {
            margin: 6px 0 14px 20px;
            padding: 0;
        }

        .terms-list li {
            margin-bottom: 8px;
            font-size: 13.5px;
            line-height: 1.65;
            color: #333;
        }

        /* Fixed Footer at Page Bottom */
        .footer {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            width: 100%;
            border-top: 1px solid #ccc;
            padding-top: 6px;
            font-size: 8.5px;
            color: #555;
            text-align: center;
            line-height: 1.4;
            background: #fff;
        }
    </style>
</head>
<body>

    {{-- ===================== PAGE 1 ===================== --}}
    <div class="page-container">
        <table class="header-bar">
            <tr>
                <td style="width: 50%;">
                    @if (!empty($printCompany->logo) && file_exists(public_path('storage/' . $printCompany->logo)))
                        <img src="{{ public_path('storage/' . $printCompany->logo) }}" style="max-width: 120px; height: auto;">
                    @else
                        <div class="brand">CLOUD HMS</div>
                    @endif
                </td>
                <td class="text-right" style="width: 50%;">
                    <div class="brand">Cloud HMS</div>
                    <div style="color: #555; font-size: 12px; margin-top: 4px;"><strong>Date:</strong> {{ \Carbon\Carbon::now()->format('d/M/Y') }}</div>
                </td>
            </tr>
        </table>

        <div class="recipient-box">
            <div class="bold" style="font-size: 14px; color: #1e3a5f;">Mr. {{ $data->name }}</div>
            <div class="bold" style="text-transform: uppercase; color: #555; margin-top: 2px;">{{ $data->hotel_name }}</div>
            <div style="color: #555;">{{ $data->CityName }}</div>
        </div>

        <div class="subject-box">
            Sub: Proposal for Software License and Service of CLOUD HMS for {{ $data->hotel_name }}, {{ $data->CityName }}
        </div>

        <div class="letter-text">
            <p>Dear Sir,</p>
            <p><strong>Greetings from CLOUD HMS!</strong></p>
            <p>We would like to take this opportunity to thank you for your interest in Cloud HMS, a global leader in providing integrated, full-service enterprise property management solutions for the hospitality and leisure industry.</p>
            <p>CLOUD HMS designs, develops, markets, and maintains a comprehensive range of information management systems for various hospitality businesses including Hotels, Restaurants, Bars, Clubs, and Resorts.</p>
            <p>This proposal seeks to confirm our discussions and assure you that your investment in Cloud HMS is the right decision. Attached is the proposal for the Software License and Service of Cloud HMS for <strong>{{ $data->hotel_name }}, {{ $data->CityName }}</strong>.</p>
            <p>We are pleased to assist you to make the most of CLOUD HMS solutions, its features, and functionality. Our software is specifically designed keeping in mind three important factors which a hospitality establishment looks for: enhancing guest experience, reducing costs, and increasing profitability.</p>
            <p>We assure you of our best attention and services at all times. Should you require any further clarifications, please feel free to contact us.</p>
        </div>

        <div style="margin-top: 30px;">
            <div>Thanks &amp; Regards,</div>
            <div class="bold text-primary" style="font-size: 15px; margin-top: 6px;">Pushpendra Gupta</div>
            <div style="color: #555;">MD Marketing</div>
            <div class="bold" style="color: #555; margin-top: 3px;">pushpendra.analysis@outlook.com</div>
            <div class="bold" style="color: #555;">+91 9161 3801 70</div>
        </div>

        <div class="footer">
            <p><strong>Reg. Office:</strong> A-2039, Awas Vikas Colony, Hanspuram, Naubasta, Kanpur – 208011 &nbsp;|&nbsp; pushpendra.analysis@outlook.com &nbsp;|&nbsp; +91 9161 3801 70</p>
            <p><strong>Gwalior:</strong> House No.-23, Viveka Nand Colony, Jiwaji University Road, Gwalior-474011 (M.P.) &nbsp;|&nbsp; <strong>Lucknow:</strong> 46/8, Gokhale Vihar Marg, Butler Colony, Lucknow</p>
        </div>
    </div>

    {{-- ===================== PAGE 2 ===================== --}}
    <div class="page-container">
        <table class="header-bar">
            <tr>
                <td style="width: 50%;">
                    @if (!empty($printCompany->logo) && file_exists(public_path('storage/' . $printCompany->logo)))
                        <img src="{{ public_path('storage/' . $printCompany->logo) }}" style="max-width: 120px; height: auto;">
                    @else
                        <div class="brand">CLOUD HMS</div>
                    @endif
                </td>
                <td class="text-right brand" style="width: 50%;">
                    Software License Costing
                </td>
            </tr>
        </table>

        <table class="bordered-table">
            <thead>
                <tr>
                    <th style="width: 50%; text-align: left;">Standard Modules &amp; Interfaces</th>
                    <th style="width: 20%; text-align: center;">Qty</th>
                    <th style="width: 30%; text-align: right;">Price (INR)</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($items as $item)
                    <tr>
                        <td class="bold">{{ $item['name'] }}</td>
                        <td class="text-center bold">{{ $item['qty'] }}</td>
                        <td class="text-right bold">INR {{ number_format($item['qty'] * $item['price'], 2) }}</td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2" class="bold">Subtotal</td>
                    <td class="text-right bold">INR {{ number_format($subtotal, 2) }}</td>
                </tr>
                @if ($discountAllowed > 0)
                    <tr>
                        <td colspan="2" style="color: #555;">
                            Discount Allowed
                            @if ($discountType === 'percentage')
                                ({{ rtrim(rtrim(number_format($discountValue, 2), '0'), '.') }}%)
                            @endif
                        </td>
                        <td class="text-right text-danger bold">- INR {{ number_format($discountAllowed, 2) }}</td>
                    </tr>
                @endif
                <tr class="total-row">
                    <td colspan="2" class="bold">Total CLOUD HMS License Fee</td>
                    <td class="text-right text-primary bold">INR {{ number_format($grandTotal, 2) }}</td>
                </tr>
            </tfoot>
        </table>

        <table class="bordered-table" style="margin-top: 12px;">
            <thead>
                <tr><th style="text-align: left;">Important Notes</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <ul style="margin: 4px 0 6px 18px; padding:0;">
                            <li style="font-size:12px; margin-bottom:4px;">Additional Outlet will be charged at <strong class="text-danger">INR 8,500/-</strong></li>
                            <li style="font-size:12px; margin-bottom:4px;">We will manage your real time room booking inventory tariffs with the Channel Manager.</li>
                            <li style="font-size:12px; margin-bottom:4px;">WhatsApp / SMS Charges: <strong>INR 0.30 per SMS</strong></li>
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>

        <table class="bordered-table" style="margin-top: 12px;">
            <thead>
                <tr><th style="text-align: left;">TAXES</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td class="bold" style="color: #333; font-size: 12.5px;">
                        &Oslash;&nbsp; GST 18 % (Extra)
                    </td>
                </tr>
            </tbody>
        </table>

        <table class="bordered-table" style="margin-top: 12px;">
            <thead>
                <tr><th colspan="2" style="text-align: left;">Payment Schedule</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 50%;">Advance with firm order</td>
                    <td class="text-primary bold">50% of Total Project Cost</td>
                </tr>
                <tr>
                    <td>On Installation Of Readymade software</td>
                    <td class="text-primary bold">50% of Total Project Cost</td>
                </tr>
            </tbody>
        </table>

        <table class="bordered-table" style="margin-top: 12px;">
            <thead>
                <tr><th colspan="2" style="text-align: left;">Bank Details</th></tr>
            </thead>
            <tbody>
                <tr><td style="width: 35%;" class="bold">Account Name</td><td>Analysis Software Services</td></tr>
                <tr><td class="bold">Account Number</td><td class="bold" style="font-size: 13px;">0600 0550 0120</td></tr>
                <tr><td class="bold">Bank Name</td><td>ICICI Bank</td></tr>
                <tr><td class="bold">RTGS / IFSC Code</td><td class="text-danger bold">ICIC0000600</td></tr>
            </tbody>
        </table>

        <div class="footer">
            <p><strong>Reg. Office:</strong> A-2039, Awas Vikas Colony, Hanspuram, Naubasta, Kanpur – 208011 &nbsp;|&nbsp; pushpendra.analysis@outlook.com &nbsp;|&nbsp; +91 9161 3801 70</p>
            <p><strong>Gwalior:</strong> House No.-23, Viveka Nand Colony, Jiwaji University Road, Gwalior-474011 (M.P.) &nbsp;|&nbsp; <strong>Lucknow:</strong> 46/8, Gokhale Vihar Marg, Butler Colony, Lucknow</p>
        </div>
    </div>

    {{-- ===================== PAGE 3: TERMS & CONDITIONS (PART 1 - WITH HEADER) ===================== --}}
    <div class="page-container">
        <table class="header-bar">
            <tr>
                <td style="width: 50%;">
                    @if (!empty($printCompany->logo) && file_exists(public_path('storage/' . $printCompany->logo)))
                        <img src="{{ public_path('storage/' . $printCompany->logo) }}" style="max-width: 120px; height: auto;">
                    @else
                        <div class="brand">CLOUD HMS</div>
                    @endif
                </td>
                <td class="text-right brand" style="width: 50%;">
                    Terms &amp; Conditions
                </td>
            </tr>
        </table>

        <div class="terms-title">1. Software License</div>
        <ul class="terms-list">
            <li>The software license is non-transferable and is intended solely for the customer's own business use.</li>
            <li>The source code, software architecture, database design, and all intellectual property rights remain the exclusive property of Analysis Software Services.</li>
            <li>The customer is granted only the right to use the software and shall not copy, modify, distribute, reverse engineer, or resell the software without prior written permission.</li>
        </ul>

        <div class="terms-title">2. Cloud Hosting</div>
        <ul class="terms-list">
            <li>The software will be hosted on a secure cloud server managed by Analysis Software Services.</li>
            <li>Cloud hosting charges for the first year are included in the quotation unless otherwise specified.</li>
            <li>Analysis Software Services will manage server maintenance, security updates, SSL certificate, and regular server monitoring.</li>
            <li>Daily database backups will be maintained to ensure data safety.</li>
            <li>If additional server resources, storage, or bandwidth are required due to business growth, the customer will be informed in advance and any additional charges will be mutually agreed upon.</li>
        </ul>

        <div class="terms-title">3. Annual Maintenance Contract (AMC)</div>
        <ul class="terms-list">
            <li>Free technical support will be provided for one (1) year from the date of installation or Go-Live.</li>
            <li>After completion of the first year, an Annual Maintenance Contract (AMC) of <strong>INR 15,000 per year</strong> will be applicable.</li>
            <li>AMC includes: Remote Technical Support, Bug Fixes, Minor Software Updates, Technical Assistance.</li>
            <li>AMC does not include new modules, major feature enhancements, custom development, or third-party integrations.</li>
        </ul>

        <div class="terms-title">4. Onsite Visit Charges</div>
        <ul class="terms-list">
            <li>If an onsite visit is requested by the customer, a charge of <strong>INR 3,500 per engineer per day</strong> will apply.</li>
            <li>Food, Travel, accommodation, and other out-of-pocket expenses will be borne by the customer.</li>
        </ul>

        <div class="terms-title">5. Installation &amp; Training</div>
        <ul class="terms-list">
            <li>Software installation and initial configuration will be carried out by Analysis Software Services.</li>
            <li>Basic user training is included with the implementation.</li>
            <li>Additional training sessions requested after implementation may be charged separately.</li>
        </ul>

        <div class="footer">
            <p><strong>Reg. Office:</strong> A-2039, Awas Vikas Colony, Hanspuram, Naubasta, Kanpur – 208011 &nbsp;|&nbsp; pushpendra.analysis@outlook.com &nbsp;|&nbsp; +91 9161 3801 70</p>
            <p><strong>Gwalior:</strong> House No.-23, Viveka Nand Colony, Jiwaji University Road, Gwalior-474011 (M.P.) &nbsp;|&nbsp; <strong>Lucknow:</strong> 46/8, Gokhale Vihar Marg, Butler Colony, Lucknow</p>
        </div>
    </div>

    {{-- ===================== PAGE 4: TERMS & CONDITIONS (PART 2 - NO HEADER) ===================== --}}
    <div class="page-container" style="padding-top: 15px;">
        
        <div class="terms-title" style="margin-top: 0;">6. Customization</div>
        <ul class="terms-list">
            <li>Any customization, additional reports, APIs, new modules, or feature enhancements beyond the agreed scope of work will be charged separately after customer approval.</li>
        </ul>

        <div class="terms-title">7. Customer Responsibilities</div>
        <ul class="terms-list">
            <li>The customer shall provide a stable internet connection and compatible hardware for smooth operation of the software.</li>
            <li>The customer is responsible for maintaining the accuracy and legality of the data entered into the system.</li>
        </ul>

        <div class="terms-title">8. Payment Terms &amp; Delay</div>
        <ul class="terms-list">
            <li>50% Advance Payment along with Purchase Order/Work Confirmation; 50% Upon Successful Implementation.</li>
            <li>Analysis Software Services reserves the right to suspend technical support in case of delayed payments beyond agreed terms.</li>
        </ul>

        <div class="terms-title">9. Warranty &amp; Confidentiality</div>
        <ul class="terms-list">
            <li>Bugs reported during warranty period will be corrected without additional charges.</li>
            <li>All software, source code, database structure, reports, and designs remain exclusive intellectual property of Analysis Software Services.</li>
        </ul>

        <div class="terms-title">10. Quotation Validity</div>
        <ul class="terms-list">
            <li>This quotation shall remain valid for 30 days from the date of issue.</li>
        </ul>

        <p class="text-center bold" style="color: #198754; margin-top: 35px; font-size: 14px;">
            Looking forward to a long and happy relationship with you.
        </p>

        <table style="margin-top: 40px;">
            <tr>
                <td class="text-center" style="width: 48%;">
                    <div class="bold" style="color: #1e3a5f; font-size: 13.5px;">Analysis Software Services</div>
                    <div style="border-top: 1.5px dashed #333; margin: 45px auto 6px auto; width: 80%;"></div>
                    <div style="color: #555; font-size: 11px;">Authorized Signatory</div>
                </td>
                <td style="width: 4%;"></td>
                <td class="text-center" style="width: 48%;">
                    <div class="bold" style="text-transform: uppercase; color: #1e3a5f; font-size: 13.5px;">{{ $data->hotel_name }}</div>
                    <div style="border-top: 1.5px dashed #333; margin: 45px auto 6px auto; width: 80%;"></div>
                    <div style="color: #555; font-size: 11px;">Accepted By (Signature &amp; Stamp)</div>
                </td>
            </tr>
        </table>

        <div class="footer">
            <p><strong>Reg. Office:</strong> A-2039, Awas Vikas Colony, Hanspuram, Naubasta, Kanpur – 208011 &nbsp;|&nbsp; pushpendra.analysis@outlook.com &nbsp;|&nbsp; +91 9161 3801 70</p>
            <p><strong>Gwalior:</strong> House No.-23, Viveka Nand Colony, Jiwaji University Road, Gwalior-474011 (M.P.) &nbsp;|&nbsp; <strong>Lucknow:</strong> 46/8, Gokhale Vihar Marg, Butler Colony, Lucknow</p>
        </div>
    </div>

</body>
</html>