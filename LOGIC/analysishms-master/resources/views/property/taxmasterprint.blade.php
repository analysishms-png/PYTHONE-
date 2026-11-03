<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tax Master Print</title>
    <style>
        body { font-family: Arial, sans-serif; font-size: 13px; margin: 20px; }
        h2 { text-align: center; margin-bottom: 5px; }
        p.date { text-align: center; margin-bottom: 15px; color: #555; }
        table { width: 100%; border-collapse: collapse; }
        th { background-color: #adb0b3; color: #fff; padding: 8px; text-align: left; }
        td { padding: 7px 8px; border-bottom: 1px solid #ddd; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        @media print {
            .no-print { display: none; }
        }
    </style>
</head>
<body>

    <h2>Tax Master</h2>
    <p class="date">Date: {{ date('d-m-Y') }}</p>

    <div class="no-print" style="text-align:center; margin-bottom: 15px;">
        <button onclick="window.print()" style="padding:8px 20px; background:#28a745; color:#fff; border:none; border-radius:4px; cursor:pointer; font-size:14px;">
            🖨️ Print
        </button>
    </div>
<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Tax Name</th>
            <th>Account Name</th>
            <th>Sundry</th>
            <th>Payable Accounts</th>
            <th>Unregistered Accounts</th>
            <th>Active Or Not</th>
        </tr>
    </thead>
    <tbody>
        @php $sn = 1; @endphp
        @foreach ($taxdata as $data)
            <tr>
                <td>{{ $sn }}</td>
                <td>{{ $data->taxname }}</td>
                <td>{{ $data->subname ?: $data->ac_code }}</td>
                <td>{{ $data->sundryname ?: $data->sundry }}</td>
                <td>{{ $data->payable_account ?? 'N/A' }}</td>
                <td>{{ $data->unregistered_account ?? 'N/A' }}</td>
                <td>{{ $data->SysYN == 'Y' ? 'Active' : 'Inactive' }}</td>
            </tr>
            @php $sn++; @endphp
        @endforeach
    </tbody>
</table>
