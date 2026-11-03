<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Daily Register Report</title>
    <meta name="author" content="Analysis HMS">
    <meta name="description" content="Daily Register Report">
    <meta name="keywords" content="Analysis HMS, Daily Register Report, Hotel Management">
    <style>
        @page {
            margin: 14px 14px 18px 14px;
        }

        body {
            font-family: DejaVu Sans, sans-serif;
            font-size: 9.5px;
            line-height: 1.35;
            color: #1f2937;
        }

        .report-header {
            width: 100%;
            border-bottom: 2px solid #111827;
            padding: 0 0 8px 0;
            margin-bottom: 12px;
        }

        .header-table {
            width: 100%;
            border-collapse: collapse;
        }

        .header-table td {
            vertical-align: top;
            border: none;
            padding: 0;
        }

        .header-logo-cell {
            width: 92px;
        }

        .header-title-cell {
            padding: 0 10px;
            text-align: center;
        }

        .header-meta-cell {
            width: 175px;
            text-align: right;
        }

        .report-logo {
            width: 84px;
            max-height: 58px;
            object-fit: contain;
        }

        .report-header h1 {
            margin: 0;
            font-size: 17px;
        }

        .report-header p {
            margin: 1px 0;
            font-size: 9px;
        }

        .meta-row {
            width: 100%;
            border-collapse: collapse;
        }

        .meta-row td {
            font-size: 8.5px;
            padding: 1px 0;
            border: none;
        }

        .meta-right {
            text-align: right;
        }

        .section {
            margin-bottom: 12px;
            page-break-inside: avoid;
        }

        .page-break {
            page-break-before: always;
        }

        .section-title {
            background: #e5e7eb;
            border: 1px solid #9ca3af;
            color: #111827;
            font-size: 10px;
            font-weight: bold;
            letter-spacing: .3px;
            padding: 5px 7px;
            margin-bottom: 4px;
            text-transform: uppercase;
        }

        table.report-table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
        }

        table.report-table th,
        table.report-table td {
            border: 1px solid #9ca3af;
            padding: 4px 5px;
            vertical-align: top;
            word-wrap: break-word;
        }

        table.report-table th {
            background: #f3f4f6;
            font-size: 8px;
            text-transform: uppercase;
        }

        table.report-table td {
            font-size: 8.6px;
        }

        .text-right {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }

        .group-row td {
            background: #f9fafb;
            font-weight: bold;
        }

        .totals-row td {
            background: #eef2ff;
            font-weight: bold;
        }

        .empty-note {
            border: 1px solid #d1d5db;
            color: #6b7280;
            padding: 8px;
            text-align: center;
            font-size: 8.8px;
        }

        .footer {
            position: fixed;
            bottom: -8px;
            left: 0;
            right: 0;
            font-size: 8px;
            color: #6b7280;
            border-top: 1px solid #d1d5db;
            padding-top: 4px;
        }
    </style>
</head>

<body>
    @php
        $sections = $payload['sections'] ?? [];
        $fordate = $payload['fordate'] ?? '';
        $monthDays = $payload['ranges']['month_days'] ?? 1;
        $financialDays = $payload['ranges']['financial_days'] ?? 1;
        $generatedAt = now()->format('d-m-Y h:i A');
        $fmt = fn ($value) => number_format((float) $value, 2);
        $pct = fn ($value) => number_format((float) $value, 2) . '%';
    @endphp

    <div class="report-header">
        <table class="header-table">
            <tr>
                <td class="header-logo-cell">
                    @if (!empty($logoPath))
                        <img alt="{{ $comp->comp_name }}"
                            src="data:image/png;base64,{{ base64_encode(file_get_contents($logoPath)) }}"
                            class="report-logo">
                    @endif
                </td>
                <td class="header-title-cell">
                    <h1>{{ $comp->comp_name }}</h1>
                    <p>{{ $comp->address1 }}</p>
                    <p>{{ $statename }} - {{ $comp->city }} - {{ $comp->pin }}</p>
                    <p><strong>Daily Register Report</strong></p>
                </td>
                <td class="header-meta-cell">
                    <table class="meta-row">
                        <tr>
                            <td class="meta-right"><strong>Report Date:</strong> {{ $fordate ? date('d-m-Y', strtotime($fordate)) : '' }}</td>
                        </tr>
                        <tr>
                            <td class="meta-right"><strong>Month Days:</strong> {{ $monthDays }}</td>
                        </tr>
                        <tr>
                            <td class="meta-right"><strong>Generated At:</strong> {{ $generatedAt }}</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <div class="section">
        <div class="section-title">Front Office</div>
        @if (count($sections['front_office'] ?? []))
            @php
                $rows = collect($sections['front_office']);
            @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th class="text-right">Today</th>
                        <th class="text-right">Month To Date</th>
                        <th class="text-right">YTD</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $row)
                        <tr>
                            <td>{{ $row['name'] }}</td>
                            <td class="text-right">{{ $fmt($row['today']) }}</td>
                            <td class="text-right">{{ $fmt($row['MTD']) }}</td>
                            <td class="text-right">{{ $fmt($row['YTD']) }}</td>
                        </tr>
                    @endforeach
                    <tr class="totals-row">
                        <td>Total</td>
                        <td class="text-right">{{ $fmt($rows->sum('today')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('MTD')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('YTD')) }}</td>
                    </tr>
                </tbody>
            </table>
        @else
            <div class="empty-note">No front office data available.</div>
        @endif
    </div>

    <div class="section">
        <div class="section-title">Sales Summary</div>
        @if (count($sections['sales_summary'] ?? []))
            @php
                $rows = collect($sections['sales_summary'])->groupBy('group');
            @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Department / Name</th>
                        <th class="text-right">Today</th>
                        <th class="text-right">Month To Date</th>
                        <th class="text-right">YTD</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $group => $groupRows)
                        <tr class="group-row">
                            <td colspan="4">{{ $group }}</td>
                        </tr>
                        @foreach ($groupRows as $row)
                            <tr>
                                <td>
                                    @if (($row['name'] ?? '') === 'Discount')
                                        <strong>{{ $row['name'] }}</strong>
                                    @else
                                        {{ $row['name'] }}
                                    @endif
                                </td>
                                <td class="text-right">{{ $fmt($row['today']) }}</td>
                                <td class="text-right">{{ $fmt($row['MTD']) }}</td>
                                <td class="text-right">{{ $fmt($row['YTD']) }}</td>
                            </tr>
                        @endforeach
                    @endforeach
                    @php
                        $flatRows = collect($sections['sales_summary']);
                    @endphp
                    <tr class="totals-row">
                        <td>Total</td>
                        <td class="text-right">{{ $fmt($flatRows->sum('today')) }}</td>
                        <td class="text-right">{{ $fmt($flatRows->sum('MTD')) }}</td>
                        <td class="text-right">{{ $fmt($flatRows->sum('YTD')) }}</td>
                    </tr>
                </tbody>
            </table>
        @else
            <div class="empty-note">No sales summary data available.</div>
        @endif
    </div>

    <div class="section">
        <div class="section-title">Banquet Summary</div>
        @if (count($sections['banquet_summary'] ?? []))
            @php $rows = collect($sections['banquet_summary']); @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th class="text-right">Today</th>
                        <th class="text-right">Month To Date</th>
                        <th class="text-right">YTD</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $row)
                        <tr>
                            <td>{{ $row['name'] }}</td>
                            <td class="text-right">{{ $fmt($row['today']) }}</td>
                            <td class="text-right">{{ $fmt($row['MTD']) }}</td>
                            <td class="text-right">{{ $fmt($row['YTD']) }}</td>
                        </tr>
                    @endforeach
                    <tr class="totals-row">
                        <td>Total</td>
                        <td class="text-right">{{ $fmt($rows->sum('today')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('MTD')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('YTD')) }}</td>
                    </tr>
                </tbody>
            </table>
        @else
            <div class="empty-note">No banquet summary data available.</div>
        @endif
    </div>

    <div class="section">
        <div class="section-title">Total Revenue</div>
        @if (count($sections['total_revenue'] ?? []))
            @php $rows = collect($sections['total_revenue']); @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th class="text-right">Today</th>
                        <th class="text-right">Month To Date</th>
                        <th class="text-right">YTD</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $row)
                        <tr class="totals-row">
                            <td>{{ $row['name'] }}</td>
                            <td class="text-right">{{ $fmt($row['today']) }}</td>
                            <td class="text-right">{{ $fmt($row['MTD']) }}</td>
                            <td class="text-right">{{ $fmt($row['YTD']) }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @else
            <div class="empty-note">No total revenue data available.</div>
        @endif
    </div>

    <div class="section">
        <div class="section-title">Tax Summary</div>
        @if (count($sections['tax_summary'] ?? []))
            @php $rows = collect($sections['tax_summary']); @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th class="text-right">Today</th>
                        <th class="text-right">Month To Date</th>
                        <th class="text-right">YTD</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $row)
                        <tr>
                            <td>{{ $row['name'] }}</td>
                            <td class="text-right">{{ $fmt($row['today']) }}</td>
                            <td class="text-right">{{ $fmt($row['MTD']) }}</td>
                            <td class="text-right">{{ $fmt($row['YTD']) }}</td>
                        </tr>
                    @endforeach
                    <tr class="totals-row">
                        <td>Total</td>
                        <td class="text-right">{{ $fmt($rows->sum('today')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('MTD')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('YTD')) }}</td>
                    </tr>
                </tbody>
            </table>
        @else
            <div class="empty-note">No tax summary data available.</div>
        @endif
    </div>

    <div class="section">
        <div class="section-title">Payment Summary</div>
        @if (count($sections['payment_summary'] ?? []))
            @php $rows = collect($sections['payment_summary']); @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th class="text-right">Today</th>
                        <th class="text-right">Month To Date</th>
                        <th class="text-right">YTD</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $row)
                        <tr>
                            <td>{{ $row['name'] }}</td>
                            <td class="text-right">{{ $fmt($row['today']) }}</td>
                            <td class="text-right">{{ $fmt($row['MTD']) }}</td>
                            <td class="text-right">{{ $fmt($row['YTD']) }}</td>
                        </tr>
                    @endforeach
                    <tr class="totals-row">
                        <td>Total</td>
                        <td class="text-right">{{ $fmt($rows->sum('today')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('MTD')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('YTD')) }}</td>
                    </tr>
                </tbody>
            </table>
        @else
            <div class="empty-note">No payment summary data available.</div>
        @endif
    </div>

    <div class="section">
        <div class="section-title">Bill To Company Settlement Summary</div>
        @if (count($sections['company_summary'] ?? []))
            @php $rows = collect($sections['company_summary']); @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Company Name</th>
                        <th>Bill No</th>
                        <th class="text-right">Amount</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $row)
                        <tr>
                            <td>{{ $row['compname'] }}</td>
                            <td>{{ $row['billno'] }}</td>
                            <td class="text-right">{{ $fmt($row['amount']) }}</td>
                        </tr>
                    @endforeach
                    <tr class="totals-row">
                        <td colspan="2">Total</td>
                        <td class="text-right">{{ $fmt($rows->sum('amount')) }}</td>
                    </tr>
                </tbody>
            </table>
        @else
            <div class="empty-note">No company settlement data available.</div>
        @endif
    </div>

    <div class="section page-break">
        <div class="section-title">Occupancy Analysis Summary</div>
        @if (count($sections['occupancy_summary'] ?? []))
            @php
                $rows = collect($sections['occupancy_summary']);
                $totalRooms = $rows->sum('totalRooms');
                $todayCount = $rows->sum('todayCount');
                $mtdCount = $rows->sum('mtdCount');
                $ytdCount = $rows->sum('ytdCount');
                $mtdBase = $totalRooms * max($monthDays, 1);
                $ytdBase = $totalRooms * max($financialDays, 1);
            @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Room Category</th>
                        <th class="text-right">Total Rooms</th>
                        <th class="text-right">Today IN Count</th>
                        <th class="text-right">Today IN %</th>
                        <th class="text-right">MTD IN Count</th>
                        <th class="text-right">MTD IN %</th>
                        <th class="text-right">YTD IN Count</th>
                        <th class="text-right">YTD IN %</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $row)
                        <tr>
                            <td>{{ $row['catname'] }}</td>
                            <td class="text-right">{{ $fmt($row['totalRooms']) }}</td>
                            <td class="text-right">{{ $fmt($row['todayCount']) }}</td>
                            <td class="text-right">{{ $pct($row['todayPercent']) }}</td>
                            <td class="text-right">{{ $fmt($row['mtdCount']) }}</td>
                            <td class="text-right">{{ $pct($row['mtdPercent']) }}</td>
                            <td class="text-right">{{ $fmt($row['ytdCount']) }}</td>
                            <td class="text-right">{{ $pct($row['ytdPercent']) }}</td>
                        </tr>
                    @endforeach
                    <tr class="totals-row">
                        <td>Total</td>
                        <td class="text-right">{{ $fmt($totalRooms) }}</td>
                        <td class="text-right">{{ $fmt($todayCount) }}</td>
                        <td class="text-right">{{ $pct($totalRooms > 0 ? ($todayCount * 100) / $totalRooms : 0) }}</td>
                        <td class="text-right">{{ $fmt($mtdCount) }}</td>
                        <td class="text-right">{{ $pct($mtdBase > 0 ? ($mtdCount * 100) / $mtdBase : 0) }}</td>
                        <td class="text-right">{{ $fmt($ytdCount) }}</td>
                        <td class="text-right">{{ $pct($ytdBase > 0 ? ($ytdCount * 100) / $ytdBase : 0) }}</td>
                    </tr>
                </tbody>
            </table>
            @if (count($sections['occupancy_totals_summary'] ?? []))
                @php
                    $totalRows = collect($sections['occupancy_totals_summary'])->map(function ($row) use ($totalRooms, $todayCount, $mtdCount, $ytdCount, $monthDays, $financialDays) {
                        if (($row['name'] ?? '') === 'Total Vacant Room') {
                            $row['today'] = max(0, $totalRooms - $todayCount);
                            $row['MTD'] = max(0, ($totalRooms * max($monthDays, 1)) - $mtdCount);
                            $row['YTD'] = max(0, ($totalRooms * max($financialDays, 1)) - $ytdCount);
                        }

                        return $row;
                    });
                @endphp
                <table class="report-table" style="margin-top: 12px;">
                    <thead>
                        <tr>
                            <th>Summary</th>
                            <th class="text-right">For Date</th>
                            <th class="text-right">MTD</th>
                            <th class="text-right">YTD</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($totalRows as $row)
                            <tr>
                                <td>{{ $row['name'] }}</td>
                                <td class="text-right">{{ $fmt($row['today']) }}</td>
                                <td class="text-right">{{ $fmt($row['MTD']) }}</td>
                                <td class="text-right">{{ $fmt($row['YTD']) }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @endif
        @else
            <div class="empty-note">No occupancy data available.</div>
        @endif
    </div>

    <div class="section">
        <div class="section-title">Average Rate Per Night</div>
        @if (count($sections['average_rate_summary'] ?? []))
            @php $rows = collect($sections['average_rate_summary']); @endphp
            <table class="report-table">
                <thead>
                    <tr>
                        <th>Room Category</th>
                        <th class="text-right">Today</th>
                        <th class="text-right">Month To Date</th>
                        <th class="text-right">YTD</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rows as $row)
                        <tr>
                            <td>{{ $row['category'] }}</td>
                            <td class="text-right">{{ $fmt($row['today']) }}</td>
                            <td class="text-right">{{ $fmt($row['monthToDate']) }}</td>
                            <td class="text-right">{{ $fmt($row['yearToDate']) }}</td>
                        </tr>
                    @endforeach
                    <tr class="totals-row">
                        <td>Total</td>
                        <td class="text-right">{{ $fmt($rows->sum('today')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('monthToDate')) }}</td>
                        <td class="text-right">{{ $fmt($rows->sum('yearToDate')) }}</td>
                    </tr>
                </tbody>
            </table>
        @else
            <div class="empty-note">No average rate data available.</div>
        @endif
    </div>

    <div class="footer">
        <div>Generated by Analysis HMS Daily Report Engine</div>
    </div>
</body>

</html>
