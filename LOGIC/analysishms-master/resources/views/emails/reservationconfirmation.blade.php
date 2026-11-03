<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Confirmation</title>
</head>
<body style="margin:0; padding:0; background-color:#f4f6f9; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color:#333333;">
    <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color:#f4f6f9; padding:25px 0;">
        <tr>
            <td align="center">
                <!-- Main Card -->
                <table role="presentation" width="620" cellspacing="0" cellpadding="0" border="0" style="background-color:#ffffff; border-radius:10px; overflow:hidden; box-shadow:0 4px 15px rgba(0,0,0,0.06); border:1px solid #e2e8f0;">
                    
                    <!-- Header -->
                    <tr>
                        <td style="padding:25px 30px; background:linear-gradient(135deg, #1e3a8a 0%, #2563eb 100%); color:#ffffff;">
                            <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td align="left">
                                        <div style="font-size:22px; font-weight:700; letter-spacing:0.5px; margin-bottom:4px;">
                                            {{ $company->comp_name ?? 'Hotel & Resort' }}
                                        </div>
                                        <div style="font-size:12px; color:#cbd5e1;">
                                            {{ $company->add1 ?? '' }} {{ $company->city ?? '' }} {{ $company->state ?? '' }}
                                        </div>
                                    </td>
                                    <td align="right" valign="top">
                                        <div style="background:rgba(255,255,255,0.15); padding:6px 12px; border-radius:20px; font-size:11px; font-weight:600; text-transform:uppercase; letter-spacing:1px; color:#ffffff; display:inline-block;">
                                            Confirmed
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- Greeting & Booking Summary Banner -->
                    <tr>
                        <td style="padding:25px 30px 10px 30px;">
                            <p style="font-size:15px; margin:0 0 10px 0; color:#1e293b;">
                                Dear <strong>{{ $data->GuestName ?? 'Valued Guest' }}</strong>,
                            </p>
                            <p style="font-size:13px; line-height:1.6; color:#475569; margin:0;">
                                We are pleased to confirm your reservation with us. Below are your booking details for your upcoming stay:
                            </p>
                        </td>
                    </tr>

                    <!-- Booking Key Details Box -->
                    <tr>
                        <td style="padding:15px 30px;">
                            <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="background:#f8fafc; border:1px solid #e2e8f0; border-radius:8px; padding:15px;">
                                <tr>
                                    <td width="50%" style="padding:8px 12px; border-bottom:1px solid #edf2f7;">
                                        <div style="font-size:11px; text-transform:uppercase; color:#64748b; font-weight:600;">Booking No</div>
                                        <div style="font-size:14px; font-weight:700; color:#1e3a8a; margin-top:2px;">{{ $data->BookNo ?? '—' }}</div>
                                    </td>
                                    <td width="50%" style="padding:8px 12px; border-bottom:1px solid #edf2f7;">
                                        <div style="font-size:11px; text-transform:uppercase; color:#64748b; font-weight:600;">Booking Date</div>
                                        <div style="font-size:14px; font-weight:600; color:#334155; margin-top:2px;">{{ !empty($data->vdate) ? date('d-M-Y', strtotime($data->vdate)) : date('d-M-Y') }}</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%" style="padding:8px 12px; border-bottom:1px solid #edf2f7;">
                                        <div style="font-size:11px; text-transform:uppercase; color:#64748b; font-weight:600;">Check-In Date</div>
                                        <div style="font-size:14px; font-weight:600; color:#0f766e; margin-top:2px;">{{ !empty($data->ArrDate) ? date('d-M-Y', strtotime($data->ArrDate)) : '—' }} {{ $data->ArrTime ?? '' }}</div>
                                    </td>
                                    <td width="50%" style="padding:8px 12px; border-bottom:1px solid #edf2f7;">
                                        <div style="font-size:11px; text-transform:uppercase; color:#64748b; font-weight:600;">Check-Out Date</div>
                                        <div style="font-size:14px; font-weight:600; color:#b91c1c; margin-top:2px;">{{ !empty($data->DepDate) ? date('d-M-Y', strtotime($data->DepDate)) : '—' }} {{ $data->DepTime ?? '' }}</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%" style="padding:8px 12px;">
                                        <div style="font-size:11px; text-transform:uppercase; color:#64748b; font-weight:600;">Room No / Type</div>
                                        <div style="font-size:14px; font-weight:600; color:#334155; margin-top:2px;">{{ $data->RoomNo ?? '—' }} ({{ $data->RoomDet ?? 'Standard' }})</div>
                                    </td>
                                    <td width="50%" style="padding:8px 12px;">
                                        <div style="font-size:11px; text-transform:uppercase; color:#64748b; font-weight:600;">Plan / Pax</div>
                                        <div style="font-size:14px; font-weight:600; color:#334155; margin-top:2px;">{{ $data->planname ?? 'EP' }} | Adults: {{ $data->Adults ?? 1 }}</div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- Financial & Tariff Details -->
                    <tr>
                        <td style="padding:10px 30px;">
                            <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="border:1px solid #e2e8f0; border-radius:8px; overflow:hidden;">
                                <tr style="background:#f1f5f9;">
                                    <th align="left" style="padding:10px 14px; font-size:12px; color:#475569; font-weight:700;">Description</th>
                                    <th align="right" style="padding:10px 14px; font-size:12px; color:#475569; font-weight:700;">Amount (INR)</th>
                                </tr>
                                <tr>
                                    <td style="padding:10px 14px; font-size:13px; color:#334155; border-bottom:1px solid #f1f5f9;">Room Tariff / Night</td>
                                    <td align="right" style="padding:10px 14px; font-size:13px; color:#334155; border-bottom:1px solid #f1f5f9; font-weight:600;">₹{{ number_format((float) ($data->Tarrif ?? 0), 2) }}</td>
                                </tr>
                                @if(!empty($data->amtcr) && (float)$data->amtcr > 0)
                                <tr>
                                    <td style="padding:10px 14px; font-size:13px; color:#0f766e; border-bottom:1px solid #f1f5f9;">Advance Deposit Received</td>
                                    <td align="right" style="padding:10px 14px; font-size:13px; color:#0f766e; border-bottom:1px solid #f1f5f9; font-weight:600;">₹{{ number_format((float) $data->amtcr, 2) }}</td>
                                </tr>
                                @endif
                            </table>
                        </td>
                    </tr>

                    <!-- Special Note / Instructions -->
                    <tr>
                        <td style="padding:15px 30px;">
                            <div style="background:#eff6ff; border-left:4px solid #2563eb; padding:12px 16px; border-radius:4px; font-size:12px; color:#1e40af; line-height:1.5;">
                                <strong>Check-In Policy:</strong> Please carry a valid Government ID Proof (Aadhar Card, Passport, or Driving License) at the time of check-in.
                            </div>
                        </td>
                    </tr>

                    <!-- Footer -->
                    <tr>
                        <td style="background-color:#f8fafc; padding:20px 30px; text-align:center; border-top:1px solid #e2e8f0; font-size:12px; color:#64748b;">
                            <p style="margin:0 0 6px 0; font-weight:600; color:#334155;">{{ $company->comp_name ?? '' }}</p>
                            <p style="margin:0 0 10px 0; font-size:11px; color:#94a3b8;">
                                Contact: {{ $company->phone ?? '' }} | Email: {{ $company->email ?? '' }} | GSTIN: {{ $company->gstin ?? '' }}
                            </p>
                            <p style="margin:0; font-size:10px; color:#cbd5e1;">This is an automated system generated email confirmation.</p>
                        </td>
                    </tr>

                </table>
            </td>
        </tr>
    </table>
</body>
</html>
