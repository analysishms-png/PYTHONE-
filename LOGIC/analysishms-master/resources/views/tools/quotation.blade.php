@extends('tools.layouts.main')

@section('main-container')
    <!-- Top Level Logo check -->
    <div style="width:25%;">
        @if (!empty($printCompany->logo) && file_exists(public_path('storage/' . $printCompany->logo)))
            <img src="{{ asset('storage/' . $printCompany->logo) }}" style="width:120px; height:70px;">
        @endif
    </div>

    <div class="content-body">
        <div class="container-fluid">

            {{-- ===================== STEP 1: MODULE SELECTION SCREEN ===================== --}}
            <div class="card shadow-sm mb-4 no-print" id="selectionCard">
                <div class="card-header bg-primary text-white">
                    <h5 class="card-title mb-0 text-white"><i class="fas fa-tasks mr-2"></i> Select Modules, Discount &
                        Pricing</h5>
                </div>
                <div class="card-body">
                    <p class="text-muted small">Choose the modules and interfaces you want to include. Adjust quantities,
                        pricing, and apply discount before generating the final copy.</p>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped text-center align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th style="width: 8%;">Include</th>
                                    <th class="text-left">Module / Interface Name</th>
                                    <th style="width: 15%;">Type</th>
                                    <th style="width: 15%;">Qty (UOM)</th>
                                    <th style="width: 20%;">Price (INR)</th>
                                </tr>
                            </thead>
                            <tbody id="selectorTableBody">
                                {{-- Dynamic Rows Will Be Injected Here by JS --}}
                            </tbody>
                        </table>
                    </div>

                    {{-- Discount Panel --}}
                    <div class="row bg-light p-3 rounded border my-3 mx-0">
                        <div class="col-12 col-md-4">
                            <label class="font-weight-bold text-dark">Discount Type</label>
                            <select id="discountType" class="form-control" onchange="calculateTemporaryTotal()">
                                <option value="percentage">Percentage (%)</option>
                                <option value="flat">Flat Amount (INR)</option>
                            </select>
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="font-weight-bold text-dark">Discount Value</label>
                            <input type="number" id="discountValue" class="form-control" value="0" min="0"
                                oninput="calculateTemporaryTotal()">
                        </div>
                        <div class="col-12 col-md-4 d-flex align-items-end">
                            <div class="w-100 text-right">
                                <span class="text-muted font-weight-bold">Est. Subtotal: </span>
                                <span class="font-weight-bold text-primary h5 ml-2" id="tempSubtotal">₹ 0.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="text-right mt-3">
                        <button type="button" class="btn btn-success btn-lg shadow" onclick="generateQuotation()">
                            <i class="fas fa-file-invoice mr-2"></i> Generate &amp; View Quotation
                        </button>
                    </div>
                </div>
            </div>

            {{-- ===================== STEP 2: THE FINAL QUOTATION VIEW ===================== --}}
            <div id="finalQuotationWrapper" style="display: none;">

                {{-- Action Topbar --}}
                <div class="no-print d-flex justify-content-between align-items-center mb-4 bg-light p-3 rounded shadow-sm">
                    <button type="button" class="btn btn-secondary" onclick="backToSelection()">
                        <i class="fas fa-edit mr-1"></i> Edit Selection
                    </button>
                    <div>
                        <button type="button" class="btn btn-outline-danger mr-2 shadow-sm" onclick="viewPdf()">
                            <i class="fas fa-eye mr-1"></i> View PDF
                        </button>
                        <button type="button" class="btn btn-danger mr-2 shadow-sm" onclick="downloadPdf()">
                            <i class="fas fa-file-pdf mr-1"></i> Download PDF
                        </button>
                        <button type="button" class="btn btn-success shadow-sm" onclick="sendWhatsApp()">
                            <i class="fab fa-whatsapp mr-1"></i> WhatsApp Quotation
                        </button>
                    </div>
                </div>

                {{-- Hidden form used to POST selected items to the server and open/download the
                     dompdf-generated PDF (View PDF / Download PDF). --}}
                <form id="pdfForm" action="{{ route('CRM.quotation.pdf', $data->orderno) }}" method="POST" target="_blank">
                    @csrf
                    <input type="hidden" name="items" id="pdfItemsInput">
                    <input type="hidden" name="discount_type" id="pdfDiscountType">
                    <input type="hidden" name="discount_value" id="pdfDiscountValue">
                    <input type="hidden" name="action" id="pdfActionInput" value="view">
                </form>

                {{-- Actual Document Sheet (on-screen preview, also used for the client-side Print) --}}
                <div class="quotation-container" id="quotationSheet">

                    {{-- ===================== PAGE 1: LETTER ===================== --}}
                    <div class="print-page">
                        <div class="page-body-content">

                            <table class="header-bar">
                                <tr>
                                    <td style="width: 50%;">
                                        @if (!empty($printCompany->logo) && file_exists(public_path('storage/' . $printCompany->logo)))
                                            <img src="{{ asset('storage/' . $printCompany->logo) }}" class="company-logo-img">
                                        @else
                                            <div class="brand">Cloud HMS</div>
                                        @endif
                                    </td>
                                    <td class="text-right" style="width: 50%;">
                                        <div class="brand">Cloud HMS</div>
                                        <div class="letter-meta-box">
                                            <strong>Date:</strong> {{ \Carbon\Carbon::now()->format('d/M/Y') }}
                                        </div>
                                    </td>
                                </tr>
                            </table>

                            <div class="recipient-box">
                                <div class="bold recipient-name">Mr. {{ $data->name }}</div>
                                <div class="bold recipient-hotel">{{ $data->hotel_name }}</div>
                                <div class="recipient-city">{{ $data->CityName }}</div>
                            </div>

                            <div class="subject-box">
                                Sub: Proposal for Software License and Service of CLOUD HMS for {{ $data->hotel_name }},
                                {{ $data->CityName }}
                            </div>

                            <div class="letter-body-text">
                                <p>Dear Sir,</p>
                                <p><strong>Greetings from CLOUD HMS!</strong></p>
                                <p>We would like to take this opportunity to thank you for your interest in Cloud HMS, a
                                    global leader in providing integrated, full-service enterprise property management
                                    solutions for the hospitality and leisure industry.</p>
                                <p>CLOUD HMS designs, develops, markets, and maintains a comprehensive range of information
                                    management systems for various hospitality businesses including Hotels, Restaurants,
                                    Bars, Clubs, and Resorts.</p>
                                <p>This proposal seeks to confirm our discussions and assure you that your investment in
                                    Cloud HMS is the right decision. Attached is the proposal for the Software License and
                                    Service of Cloud HMS for <strong>{{ $data->hotel_name }},
                                        {{ $data->CityName }}</strong>.</p>
                                <p>We are pleased to assist you to make the most of CLOUD HMS solutions, its features, and
                                    functionality. Our software is specifically designed keeping in mind three important
                                    factors which a hospitality establishment looks for: enhancing guest experience,
                                    reducing costs, and increasing profitability.</p>
                                <p>We assure you of our best attention and services at all times. Should you require any
                                    further clarifications, please feel free to contact us.</p>
                            </div>

                            <div class="letter-closing mt-3">
                                <div>Thanks &amp; Regards,</div>
                                <div class="bold text-primary closing-name">Pushpendra Gupta</div>
                                <div class="closing-role">MD Marketing</div>
                                <div class="bold closing-contact">pushpendra.analysis@outlook.com</div>
                                <div class="bold closing-contact">+91 9161 3801 70</div>
                            </div>
                        </div>

                        {{-- Footer displayed explicitly on Page 1 --}}
                        <div class="page-footer-static">
                            <p><strong>Reg. Office:</strong> A-2039, Awas Vikas Colony, Hanspuram, Naubasta, Kanpur –
                                208011 &nbsp;|&nbsp; pushpendra.analysis@outlook.com &nbsp;|&nbsp; +91 9161 3801 70</p>
                            <p><strong>Gwalior:</strong> House No.-23, Viveka Nand Colony, Jiwaji University Road,
                                Gwalior-474011 (M.P.) &nbsp;|&nbsp; <strong>Lucknow:</strong> 46/8, Gokhale Vihar Marg,
                                Butler Colony, Lucknow</p>
                        </div>
                    </div>

                    <div class="page-break"></div>

                    {{-- ===================== PAGE 2: SOFTWARE LICENSE COSTING SHEET ===================== --}}
                    <div class="print-page">
                        <div class="page-body-content">

                            <table class="header-bar">
                                <tr>
                                    <td style="width: 50%;">
                                        @if (!empty($printCompany->logo) && file_exists(public_path('storage/' . $printCompany->logo)))
                                            <img src="{{ asset('storage/' . $printCompany->logo) }}" class="company-logo-img">
                                        @else
                                            <div class="brand">Cloud HMS</div>
                                        @endif
                                    </td>
                                    <td class="text-right brand" style="width: 50%;">
                                        Software License Costing
                                    </td>
                                </tr>
                            </table>

                            {{-- DYNAMIC OUTPUT MODULE TABLE — discount is shown right inside this table,
                                 directly under Subtotal, as soon as the quotation is generated. --}}
                            <table class="bordered-table">
                                <thead>
                                    <tr>
                                        <th style="width: 50%; text-align: left;">Standard Modules &amp; Interfaces</th>
                                        <th style="width: 20%; text-align: center;">Qty</th>
                                        <th style="width: 30%; text-align: right;">Price (INR)</th>
                                    </tr>
                                </thead>
                                <tbody id="displayQuotationBody">
                                    {{-- Injected dynamic layout rows --}}
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="2" class="bold">Subtotal</td>
                                        <td class="text-right bold" id="lblSubTotal">INR 0.00</td>
                                    </tr>
                                    <tr id="discountRow">
                                        <td colspan="2" style="color: #555;">Discount Allowed <span
                                                id="lblDiscountPercent"></span></td>
                                        <td class="text-right text-danger bold" id="lblDiscountAmount">- INR 0.00</td>
                                    </tr>
                                    <tr class="total-row">
                                        <td colspan="2" class="bold">Total CLOUD HMS License Fee</td>
                                        <td class="text-right text-primary bold" id="lblGrandTotal">INR 0.00</td>
                                    </tr>
                                </tfoot>
                            </table>

                            {{-- IMPORTANT NOTES --}}
                            <table class="bordered-table" style="margin-top: 12px;">
                                <thead>
                                    <tr>
                                        <th style="text-align: left;">Important Notes</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <ul style="margin: 4px 0 6px 18px; padding:0;">
                                                <li style="font-size:12px; margin-bottom:4px;">Additional Outlet will be
                                                    charged at <strong class="text-danger">INR 8,500/-</strong></li>
                                                <li style="font-size:12px; margin-bottom:4px;">We will manage your real
                                                    time room booking inventory tariffs with the Channel Manager.</li>
                                                <li style="font-size:12px; margin-bottom:4px;">WhatsApp / SMS Charges:
                                                    <strong>INR 0.30 per SMS</strong></li>
                                            </ul>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            {{-- TAXES --}}
                            <table class="bordered-table" style="margin-top: 12px;">
                                <thead>
                                    <tr>
                                        <th style="text-align: left;">Taxes</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="bold" style="color: #333; font-size: 12.5px;">
                                            &Oslash;&nbsp; GST 18 % (Extra)
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            {{-- PAYMENT SCHEDULE --}}
                            <table class="bordered-table" style="margin-top: 12px;">
                                <thead>
                                    <tr>
                                        <th colspan="2" style="text-align: left;">Payment Schedule</th>
                                    </tr>
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

                            {{-- BANK DETAILS --}}
                            <table class="bordered-table" style="margin-top: 12px;">
                                <thead>
                                    <tr>
                                        <th colspan="2" style="text-align: left;">Bank Details</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="width: 35%;" class="bold">Account Name</td>
                                        <td>Analysis Software Services</td>
                                    </tr>
                                    <tr>
                                        <td class="bold">Account Number</td>
                                        <td class="bold" style="font-size: 13px;">0600 0550 0120</td>
                                    </tr>
                                    <tr>
                                        <td class="bold">Bank Name</td>
                                        <td>ICICI Bank</td>
                                    </tr>
                                    <tr>
                                        <td class="bold">RTGS / IFSC Code</td>
                                        <td class="text-danger bold">ICIC0000600</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="page-footer-static">
                            <p><strong>Reg. Office:</strong> A-2039, Awas Vikas Colony, Hanspuram, Naubasta, Kanpur –
                                208011 &nbsp;|&nbsp; pushpendra.analysis@outlook.com &nbsp;|&nbsp; +91 9161 3801 70</p>
                            <p><strong>Gwalior:</strong> House No.-23, Viveka Nand Colony, Jiwaji University Road,
                                Gwalior-474011 (M.P.) &nbsp;|&nbsp; <strong>Lucknow:</strong> 46/8, Gokhale Vihar Marg,
                                Butler Colony, Lucknow</p>
                        </div>
                    </div>

                    <div class="page-break"></div>

                    {{-- ===================== PAGE 3: TERMS & CONDITIONS (PART 1 - WITH HEADER) ===================== --}}
                    <div class="print-page">
                        <div class="page-body-content">

                            <table class="header-bar">
                                <tr>
                                    <td style="width: 50%;">
                                        @if (!empty($printCompany->logo) && file_exists(public_path('storage/' . $printCompany->logo)))
                                            <img src="{{ asset('storage/' . $printCompany->logo) }}" class="company-logo-img">
                                        @else
                                            <div class="brand">Cloud HMS</div>
                                        @endif
                                    </td>
                                    <td class="text-right brand" style="width: 50%;">
                                        Terms &amp; Conditions
                                    </td>
                                </tr>
                            </table>

                            <div class="terms-title">1. Software License</div>
                            <ul class="terms-list">
                                <li>The software license is non-transferable and is intended solely for the customer's
                                    own business use.</li>
                                <li>The source code, software architecture, database design, and all intellectual
                                    property rights remain the exclusive property of Analysis Software Services.</li>
                                <li>The customer is granted only the right to use the software and shall not copy,
                                    modify, distribute, reverse engineer, or resell the software without prior written
                                    permission.</li>
                            </ul>

                            <div class="terms-title">2. Cloud Hosting</div>
                            <ul class="terms-list">
                                <li>The software will be hosted on a secure cloud server managed by Analysis Software
                                    Services.</li>
                                <li>Cloud hosting charges for the first year are included in the quotation unless
                                    otherwise specified.</li>
                                <li>Analysis Software Services will manage server maintenance, security updates, SSL
                                    certificate, and regular server monitoring.</li>
                                <li>Daily database backups will be maintained to ensure data safety.</li>
                                <li>If additional server resources, storage, or bandwidth are required due to business
                                    growth, the customer will be informed in advance and any additional charges will be
                                    mutually agreed upon.</li>
                            </ul>

                            <div class="terms-title">3. Annual Maintenance Contract (AMC)</div>
                            <ul class="terms-list">
                                <li>Free technical support will be provided for one (1) year from the date of
                                    installation or Go-Live.</li>
                                <li>After completion of the first year, an Annual Maintenance Contract (AMC) of
                                    <strong>INR 15,000 per year</strong> will be applicable.</li>
                                <li>AMC includes:
                                    <ul class="terms-sublist">
                                        <li>Remote Technical Support</li>
                                        <li>Bug Fixes</li>
                                        <li>Minor Software Updates</li>
                                        <li>Technical Assistance</li>
                                    </ul>
                                </li>
                                <li>AMC does not include new modules, major feature enhancements, custom development, or
                                    third-party integrations.</li>
                            </ul>

                            <div class="terms-title">4. Onsite Visit Charges</div>
                            <ul class="terms-list">
                                <li>If an onsite visit is requested by the customer, a charge of
                                    <strong>INR 3,500 per engineer per day</strong> will apply.</li>
                                <li>Food, Travel, accommodation, and other out-of-pocket expenses will be borne by the
                                    customer.</li>
                            </ul>

                            <div class="terms-title">5. Installation &amp; Training</div>
                            <ul class="terms-list">
                                <li>Software installation and initial configuration will be carried out by Analysis
                                    Software Services.</li>
                                <li>Basic user training is included with the implementation.</li>
                                <li>Additional training sessions requested after implementation may be charged
                                    separately.</li>
                            </ul>
                        </div>

                        <div class="page-footer-static">
                            <p><strong>Reg. Office:</strong> A-2039, Awas Vikas Colony, Hanspuram, Naubasta, Kanpur –
                                208011 &nbsp;|&nbsp; pushpendra.analysis@outlook.com &nbsp;|&nbsp; +91 9161 3801 70</p>
                            <p><strong>Gwalior:</strong> House No.-23, Viveka Nand Colony, Jiwaji University Road,
                                Gwalior-474011 (M.P.) &nbsp;|&nbsp; <strong>Lucknow:</strong> 46/8, Gokhale Vihar Marg,
                                Butler Colony, Lucknow</p>
                        </div>
                    </div>

                    <div class="page-break"></div>

                    {{-- ===================== PAGE 4: TERMS & CONDITIONS (PART 2 - NO HEADER) ===================== --}}
                    <div class="print-page">
                        <div class="page-body-content" style="padding-top: 15px;">

                            <div class="terms-title" style="margin-top: 0;">6. Customization</div>
                            <ul class="terms-list">
                                <li>Any customization, additional reports, APIs, new modules, or feature enhancements
                                    beyond the agreed scope of work will be charged separately after customer approval.
                                </li>
                            </ul>

                            <div class="terms-title">7. Customer Responsibilities</div>
                            <ul class="terms-list">
                                <li>The customer shall provide a stable internet connection and compatible hardware for
                                    smooth operation of the software.</li>
                                <li>The customer is responsible for maintaining the accuracy and legality of the data
                                    entered into the system.</li>
                            </ul>

                            <div class="terms-title">8. Payment Terms</div>
                            <ul class="terms-list">
                                <li>50% Advance Payment along with Purchase Order/Work Confirmation.</li>
                                <li>50% Upon Successful Implementation.</li>
                            </ul>

                            <div class="terms-title">9. Payment Delay</div>
                            <ul class="terms-list">
                                <li>Analysis Software Services reserves the right to suspend technical support and other
                                    services in case of delayed payments beyond the agreed terms.</li>
                            </ul>

                            <div class="terms-title">10. Warranty</div>
                            <ul class="terms-list">
                                <li>Any software bugs reported during the warranty period will be corrected without
                                    additional charges.</li>
                                <li>Requests for new functionality, process changes, or custom features will be treated
                                    as separate development work and charged accordingly.</li>
                            </ul>

                            <div class="terms-title">11. Confidentiality &amp; Intellectual Property</div>
                            <ul class="terms-list">
                                <li>All software, source code, documentation, database structure, reports, and designs
                                    remain the exclusive intellectual property of Analysis Software Services.</li>
                                <li>The customer agrees not to reproduce, copy, sublicense, lease, or distribute the
                                    software without written authorization.</li>
                            </ul>

                            <div class="terms-title">12. Quotation Validity</div>
                            <ul class="terms-list">
                                <li>This quotation shall remain valid for 30 days from the date of issue unless
                                    otherwise stated.</li>
                            </ul>

                            <div class="terms-title">13. Acceptance</div>
                            <ul class="terms-list">
                                <li>Acceptance of this quotation confirms that the customer agrees to all the above
                                    terms and conditions.</li>
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
                        </div>

                        <div class="page-footer-static">
                            <p><strong>Reg. Office:</strong> A-2039, Awas Vikas Colony, Hanspuram, Naubasta, Kanpur –
                                208011 &nbsp;|&nbsp; pushpendra.analysis@outlook.com &nbsp;|&nbsp; +91 9161 3801 70</p>
                            <p><strong>Gwalior:</strong> House No.-23, Viveka Nand Colony, Jiwaji University Road,
                                Gwalior-474011 (M.P.) &nbsp;|&nbsp; <strong>Lucknow:</strong> 46/8, Gokhale Vihar Marg,
                                Butler Colony, Lucknow</p>
                        </div>
                    </div>

                    <style>
                        /* ============ Base "Cloud HMS" quotation styling — matches the
                           dompdf print template so on-screen preview, browser print and
                           the server-rendered PDF all look identical. ============ */

                        .quotation-container {
                            background: #fff;
                            padding: 40px;
                            border-radius: 4px;
                        }

                        .print-page {
                            width: 210mm;
                            min-height: 297mm;
                            padding: 15mm;
                            margin: auto auto 20px auto;
                            background: #fff;
                            box-sizing: border-box;

                            font-family: Arial, sans-serif;
                            font-size: 13px;
                            line-height: 1.6;
                            color: #222;

                            border: 1px solid #ddd;
                            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
                            position: relative;
                        }

                        .print-page table {
                            width: 100%;
                            border-collapse: collapse;
                            margin-bottom: 12px;
                            border: none;
                        }

                        .print-page td,
                        .print-page th {
                            padding: 7px 9px;
                            vertical-align: top;
                            word-wrap: break-word;
                            border: none;
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

                        .company-logo-img {
                            max-width: 120px;
                            max-height: 70px;
                            width: auto;
                            height: auto;
                            object-fit: contain;
                            display: block;
                        }

                        .letter-meta-box {
                            color: #555;
                            font-size: 12px;
                            margin-top: 4px;
                        }

                        .recipient-box {
                            background: #f4f6f9;
                            border-left: 4px solid #1e3a5f;
                            padding: 10px 14px;
                            margin-bottom: 18px;
                        }

                        .recipient-name {
                            font-size: 14px;
                            color: #1e3a5f;
                        }

                        .recipient-hotel {
                            text-transform: uppercase;
                            color: #555;
                            margin-top: 2px;
                        }

                        .recipient-city {
                            color: #555;
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

                        .letter-body-text p {
                            margin-bottom: 12px;
                            font-size: 13px;
                            text-align: justify;
                            color: #1a1a1a;
                        }

                        .letter-closing {
                            margin-top: 30px;
                            color: #1a1a1a;
                        }

                        .closing-name {
                            font-size: 15px;
                            margin-top: 6px;
                        }

                        .closing-role {
                            color: #555;
                        }

                        .closing-contact {
                            color: #555;
                            margin-top: 3px;
                        }

                        /* Bordered tables for pricing, notes, payment & bank details */
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

                        /* Terms & Conditions */
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

                        .terms-sublist {
                            margin: 4px 0 0 20px;
                            padding: 0;
                        }

                        .terms-sublist li {
                            margin-bottom: 3px;
                            font-size: 13px;
                            line-height: 1.5;
                            color: #333;
                        }

                        /* Fixed footer at page bottom, matches dompdf template */
                        .page-footer-static {
                            position: absolute;
                            bottom: 15mm;
                            left: 15mm;
                            right: 15mm;
                            width: calc(100% - 30mm);
                            border-top: 1px solid #ccc;
                            padding-top: 6px;
                            font-size: 8.5px;
                            color: #555;
                            text-align: center;
                            line-height: 1.4;
                            background: #fff;
                        }

                        .page-footer-static p {
                            margin: 0 0 2px 0;
                        }

                        @media print {
                            @page {
                                size: A4;
                                margin: 0 !important;
                            }

                            body {
                                margin: 1.6cm !important;
                                -webkit-print-color-adjust: exact !important;
                                print-color-adjust: exact !important;
                            }

                            .no-print,
                            #selectionCard,
                            .header,
                            .navigation,
                            .sidebar,
                            .footer,
                            nav {
                                display: none !important;
                            }

                            #finalQuotationWrapper {
                                display: block !important;
                                width: 100% !important;
                                margin: 0 !important;
                                padding: 0 !important;
                            }

                            html,
                            body,
                            .content-body,
                            .container-fluid,
                            #main-wrapper {
                                height: auto !important;
                                min-height: auto !important;
                                overflow: visible !important;
                                display: block !important;
                                position: relative !important;
                                background: transparent !important;
                                margin: 0 !important;
                                padding: 0 !important;
                            }

                            .print-page {
                                page-break-inside: avoid !important;
                                break-inside: avoid !important;
                                display: block !important;
                                width: 100% !important;
                                page-break-after: always !important;
                                break-after: page !important;
                            }

                            .page-break {
                                display: none !important;
                            }

                            img {
                                max-width: 100% !important;
                            }

                            .terms-list,
                            .bordered-table tr,
                            .bordered-table table {
                                page-break-inside: avoid !important;
                                break-inside: avoid !important;
                            }
                        }
                    </style>

                    <script>
                        const masterModules = [{
                                name: "Reservation",
                                type: "Module",
                                price: 13500
                            },
                            {
                                name: "Front Office",
                                type: "Module",
                                price: 18000
                            },
                            {
                                name: "House Keeping",
                                type: "Module",
                                price: 12000
                            },
                            {
                                name: "POS",
                                type: "Module",
                                price: 8500
                            },
                            {
                                name: "Inventory (Purchase & Store)",
                                type: "Module",
                                price: 17000
                            },
                            {
                                name: "Banquet",
                                type: "Module",
                                price: 16000
                            },
                            {
                                name: "Finance",
                                type: "Module",
                                price: 9500
                            },
                            {
                                name: "HR Pay Roll",
                                type: "Module",
                                price: 12500
                            },
                            {
                                name: "Channel Manager",
                                type: "Module",
                                price: 17000
                            },
                            {
                                name: "Channel Manager (Interface)",
                                type: "Interface",
                                price: 5000
                            },
                            {
                                name: "Digital Signature",
                                type: "Interface",
                                price: 1000
                            },
                            {
                                name: "What's App",
                                type: "Interface",
                                price: 3000
                            },
                            {
                                name: "E Invoice",
                                type: "Interface",
                                price: 3500
                            }
                        ];

                        // Holds the last generated selection so the PDF buttons can reuse it
                        // without re-reading the DOM.
                        let currentQuotationPayload = null;

                        // Render input matrix inside selector screen
                        const selectorBody = document.getElementById('selectorTableBody');
                        masterModules.forEach((mod, i) => {
                            const row = document.createElement('tr');
                            row.innerHTML = `
                <td>
                    <input type="checkbox" class="select-mod-chk" data-index="${i}" checked style="transform: scale(1.3);" onchange="calculateTemporaryTotal()">
                </td>
                <td class="text-left font-weight-bold text-dark">${mod.name}</td>
                <td><span class="badge ${mod.type === 'Module' ? 'badge-primary' : 'badge-info'} p-2">${mod.type}</span></td>
                <td>
                    <input type="number" class="form-control form-control-sm text-center font-weight-bold qty-input"
                        id="input_qty_${i}" value="${mod.name === 'POS' ? 2 : 1}" min="1" oninput="calculateTemporaryTotal()">
                </td>
                <td>
                    <input type="number" class="form-control form-control-sm text-center font-weight-bold price-input"
                        id="input_price_${i}" value="${mod.price}" min="0" oninput="calculateTemporaryTotal()">
                </td>
            `;
                            selectorBody.appendChild(row);
                        });

                        document.addEventListener('change', function(e) {
                            if (e.target.classList.contains('select-mod-chk')) {
                                const idx = e.target.dataset.index;
                                document.getElementById(`input_qty_${idx}`).disabled = !e.target.checked;
                                document.getElementById(`input_price_${idx}`).disabled = !e.target.checked;
                            }
                        });

                        function calculateTemporaryTotal() {
                            let total = 0;
                            masterModules.forEach((mod, i) => {
                                const isChecked = document.querySelector(`.select-mod-chk[data-index="${i}"]`).checked;
                                if (isChecked) {
                                    const qty = parseFloat(document.getElementById(`input_qty_${i}`).value) || 0;
                                    const price = parseFloat(document.getElementById(`input_price_${i}`).value) || 0;
                                    total += qty * price;
                                }
                            });
                            document.getElementById('tempSubtotal').textContent = '₹ ' + total.toLocaleString('en-IN', {
                                minimumFractionDigits: 2
                            });
                        }

                        calculateTemporaryTotal();

                        // Builds the final quotation view. No GST right now — Grand Total is
                        // simply Subtotal minus Discount. The discount picked on the selection
                        // screen is applied here immediately, inside the same "Standard Modules
                        // & Interfaces" table (Subtotal -> Discount Allowed -> Total).
                        function generateQuotation() {
                            const displayBody = document.getElementById('displayQuotationBody');
                            displayBody.innerHTML = '';

                            let subtotal = 0;
                            let checkedAny = false;
                            const selectedItems = [];

                            masterModules.forEach((mod, i) => {
                                const isChecked = document.querySelector(`.select-mod-chk[data-index="${i}"]`).checked;

                                if (isChecked) {
                                    checkedAny = true;
                                    const qty = parseFloat(document.getElementById(`input_qty_${i}`).value) || 1;
                                    const price = parseFloat(document.getElementById(`input_price_${i}`).value) || 0;
                                    const total = qty * price;
                                    subtotal += total;

                                    selectedItems.push({
                                        name: mod.name,
                                        type: mod.type,
                                        qty: qty,
                                        price: price
                                    });

                                    const row = document.createElement('tr');
                                    row.innerHTML = `
                        <td class="bold">${mod.name}</td>
                        <td class="text-center bold">${qty}</td>
                        <td class="text-right bold">INR ${total.toLocaleString('en-IN', { minimumFractionDigits: 2 })}</td>
                    `;
                                    displayBody.appendChild(row);
                                }
                            });

                            if (!checkedAny) {
                                alert('Please select at least one item to display your quotation document.');
                                return;
                            }

                            // Discount calculation — applied immediately to this table.
                            const discType = document.getElementById('discountType').value;
                            const discVal = parseFloat(document.getElementById('discountValue').value) || 0;
                            let discountAllowed = 0;

                            const discountRow = document.getElementById('discountRow');

                            if (discVal > 0) {
                                discountRow.style.display = '';

                                if (discType === 'percentage') {
                                    discountAllowed = (subtotal * discVal) / 100;
                                    document.getElementById('lblDiscountPercent').textContent = `(${discVal}%)`;
                                } else {
                                    discountAllowed = discVal;
                                    document.getElementById('lblDiscountPercent').textContent = '';
                                }

                                if (discountAllowed > subtotal) {
                                    discountAllowed = subtotal;
                                }
                            } else {
                                discountRow.style.display = 'none';
                                discountAllowed = 0;
                            }

                            const grandTotal = subtotal - discountAllowed;

                            document.getElementById('lblSubTotal').textContent = 'INR ' + subtotal.toLocaleString('en-IN', {
                                minimumFractionDigits: 2
                            });
                            document.getElementById('lblDiscountAmount').textContent = '- INR ' + discountAllowed.toLocaleString('en-IN', {
                                minimumFractionDigits: 2
                            });
                            document.getElementById('lblGrandTotal').textContent = 'INR ' + grandTotal.toLocaleString('en-IN', {
                                minimumFractionDigits: 2
                            });

                            // Keep the exact selection + discount so the server-side
                            // (barryvdh/laravel-dompdf) PDF matches this screen 1:1.
                            currentQuotationPayload = {
                                items: selectedItems,
                                discount_type: discType,
                                discount_value: discVal
                            };

                            document.getElementById('selectionCard').style.display = 'none';
                            document.getElementById('finalQuotationWrapper').style.display = 'block';
                            window.scrollTo({
                                top: 0,
                                behavior: 'smooth'
                            });
                        }

                        function backToSelection() {
                            document.getElementById('finalQuotationWrapper').style.display = 'none';
                            document.getElementById('selectionCard').style.display = 'block';
                            window.scrollTo({
                                top: 0,
                                behavior: 'smooth'
                            });
                        }

                        // Fills and submits the hidden #pdfForm so the browser opens/downloads
                        // the PDF that Barryvdh\LaravelDomPDF renders on the server.
                        function submitPdfForm(action) {
                            if (!currentQuotationPayload) {
                                alert('Please generate the quotation first.');
                                return;
                            }

                            document.getElementById('pdfItemsInput').value = JSON.stringify(currentQuotationPayload.items);
                            document.getElementById('pdfDiscountType').value = currentQuotationPayload.discount_type;
                            document.getElementById('pdfDiscountValue').value = currentQuotationPayload.discount_value;
                            document.getElementById('pdfActionInput').value = action;

                            document.getElementById('pdfForm').submit();
                        }

                        function viewPdf() {
                            submitPdfForm('view');
                        }

                        function downloadPdf() {
                            submitPdfForm('download');
                        }

                        function sendWhatsApp() {
                            const customerPhone = "{{ $data->phone_number ?? '' }}";

                            if (!customerPhone) {
                                alert('No WhatsApp number is saved against this record.');
                                return;
                            }

                            let cleanNumber = customerPhone.replace(/\D/g, '');
                            if (cleanNumber.length === 10) {
                                cleanNumber = '91' + cleanNumber;
                            }

                            // Text-only message — no PDF attached automatically. Use
                            // "Download PDF" first if you also want to attach the file.
                            const message =
                                `Dear {{ $data->name }},%0A%0AThank you for your interest in CLOUD HMS. Please find your quotation attached.%0A%0ABest Regards,%0APushpendra Gupta%0ACLOUD HMS`;
                            const waUrl = `https://wa.me/${cleanNumber}?text=${message}`;

                            const waWindow = window.open(waUrl, '_blank');
                            if (!waWindow) {
                                alert('Popup was blocked. Please allow popups for this site in your browser settings.');
                            }
                        }
                    </script>
                </div>
            </div>
        </div>
    </div>
@endsection