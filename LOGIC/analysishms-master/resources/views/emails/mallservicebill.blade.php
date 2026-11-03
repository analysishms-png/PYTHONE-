<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Service Bill</title>
</head>
<body style="margin:0; padding:0; background-color:#eef1f6; font-family:Arial,Helvetica,sans-serif; font-size:12px; color:#1b1f27;">

@php
    $fmtDate = fn($d) => $d ? date('d/m/Y', strtotime($d)) : '';
    $fmt2    = fn($n) => number_format((float)$n, 2);
    $addrParts = [];
    if (!empty($company->address1)) { $addrParts[] = $company->address1; }
    if (!empty($company->city))     { $addrParts[] = $company->city; }
    if (!empty($company->pin))      { $addrParts[] = $company->pin; }
    $companyAddr = trim(implode(', ', $addrParts));
@endphp

<table width="100%" cellpadding="0" cellspacing="0" border="0" style="background-color:#eef1f6; padding:24px 0;">
  <tr>
    <td align="center" valign="top">

      <!-- MAIN CARD -->
      <table width="560" cellpadding="0" cellspacing="0" border="0"
             style="background-color:#ffffff; border:1px solid #d9dee8; width:560px; max-width:560px; border-radius:6px;">

        {{-- HEADER BAR --}}
        <tr>
          <td style="background-color:#003580; border-radius:6px 6px 0 0; padding:16px 24px;">
            <div style="font-size:16px; font-weight:bold; color:#ffffff;">
              {{ $company->comp_name ?? $company->legal_name ?? 'Service Bill' }}
            </div>
            @if($companyAddr)
            <div style="font-size:11px; color:#b8d0ff; margin-top:2px;">
              {{ $companyAddr }}
            </div>
            @endif
          </td>
        </tr>

        {{-- BODY --}}
        <tr>
          <td style="padding:20px 24px;">
            <div style="font-size:13px; margin-bottom:12px;">Dear {{ $tenant->name ?? 'Customer' }},</div>
            <div style="font-size:12px; line-height:1.7; color:#3a4050; margin-bottom:14px;">
              Your service bill (PDF) is attached with this email. Please download it and keep it for your records.
            </div>

            {{-- SUMMARY --}}
            <table width="100%" cellpadding="0" cellspacing="0" border="0"
                   style="border:1px solid #dde3ec; border-collapse:collapse; font-size:12px;">
              <tr>
                <td style="padding:8px 12px; border-bottom:1px solid #eef1f6; color:#6a7280; width:140px;">Bill No.</td>
                <td style="padding:8px 12px; border-bottom:1px solid #eef1f6; font-weight:bold;">{{ $bill['billNo'] ?? '' }}</td>
              </tr>
              <tr>
                <td style="padding:8px 12px; border-bottom:1px solid #eef1f6; color:#6a7280;">Bill Date</td>
                <td style="padding:8px 12px; border-bottom:1px solid #eef1f6;">{{ $fmtDate($bill['vdate'] ?? '') }}</td>
              </tr>
              <tr>
                <td style="padding:8px 12px; border-bottom:1px solid #eef1f6; color:#6a7280;">For Period</td>
                <td style="padding:8px 12px; border-bottom:1px solid #eef1f6;">{{ $fmtDate($bill['fromperiod'] ?? '') }} to {{ $fmtDate($bill['toperiod'] ?? '') }}</td>
              </tr>
              <tr>
                <td style="padding:8px 12px; border-bottom:1px solid #eef1f6; color:#6a7280;">Due Date</td>
                <td style="padding:8px 12px; border-bottom:1px solid #eef1f6; color:#c0392b; font-weight:bold;">{{ $fmtDate($bill['dueDate'] ?? '') }}</td>
              </tr>
              <tr>
                <td style="padding:8px 12px; color:#6a7280;">Net Amount</td>
                <td style="padding:8px 12px; font-size:15px; font-weight:bold; color:#003580;">{{ $fmt2($bill['netAmount'] ?? 0) }}</td>
              </tr>
            </table>

            <div style="font-size:11px; color:#6a7280; margin-top:14px; line-height:1.6;">
              Please refer to the attached PDF for the full bill details.
            </div>
          </td>
        </tr>

        {{-- FOOTER --}}
        <tr>
          <td style="padding:14px 24px; background-color:#f5f8ff; border-top:1px solid #e2e8f5; border-radius:0 0 6px 6px; font-size:10px; color:#8a93a3;">
            <div>This email is generated automatically by the system. If you have any questions regarding this bill, please contact our office.</div>
            @if(!empty($company->website))
            <div style="margin-top:4px;">Visit us at : {{ $company->website }}</div>
            @endif
          </td>
        </tr>

      </table>
    </td>
  </tr>
</table>

</body>
</html>