<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{{ $title ?? 'Report' }}</title>
    <style>
        body {
            font-family: 'DejaVu Sans', Arial, sans-serif;
            font-size: 12px;
            color: #000;
            margin: 20px;
        }
        h2, h4, p { margin: 0; }
        .header {
            text-align: center;
            margin-bottom: 16px;
        }
        .header p {
            margin: 2px 0;
            font-size: 11px;
            color: #333;
        }
        .header h4 {
            margin-top: 8px;
            font-size: 14px;
        }
        .date-range {
            font-size: 11px;
            margin-top: 4px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 14px;
        }
        th, td {
            border: 1px solid #000;
            padding: 5px 7px;
        }
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
        .text-right { text-align: right; }
        td { vertical-align: top; }
    </style>
</head>
<body>
<div class="header">
    <h2>{{ $company->comp_name ?? '' }}</h2>
    <p>{{ trim(($company->address1 ?? '') . ' ' . ($company->address2 ?? '')) }}</p>
    <p>{{ trim(($company->city ?? '') . ($company->pin ?? '' ? ' - ' . $company->pin : '')) }}</p>
    <h4>{{ $title ?? 'Report' }}</h4>
    @if(isset($fromDate) && isset($toDate))
    <p class="date-range">
        Date: {{ \Carbon\Carbon::parse($fromDate)->format('d/m/Y') }}
        to {{ \Carbon\Carbon::parse($toDate)->format('d/m/Y') }}
    </p>
    @endif
</div>
