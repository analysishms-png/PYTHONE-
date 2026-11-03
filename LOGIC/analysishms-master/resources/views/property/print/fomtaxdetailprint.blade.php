@include('property.print._header', [
    'company'  => $company,
    'title'    => $reportTitle,
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

<style>
    body { font-size: 9px; margin: 10px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 3px 4px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 8px; }
    td { font-size: 8px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .company-col { font-weight: 700; color: #00008b; }
    .gst-col { font-weight: 700; color: #00008b; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

@php
    $num = fn ($v) => number_format((float) ($v ?? 0), 2);
    $totals = [
        'billamount' => 0, 'BASEVALUE5' => 0, 'BASEVALUE1' => 0, 'BASEVALUE2' => 0,
        'TAXAMT5' => 0, 'TAXAMT6' => 0, 'TAXAMT1' => 0, 'TAXAMT3' => 0,
        'TAXAMT2' => 0, 'TAXAMT4' => 0, 'ETAXAMT' => 0,
    ];
    foreach ($data as $row) {
        foreach (array_keys($totals) as $k) {
            $totals[$k] += (float) ($row[$k] ?? 0);
        }
    }
@endphp

<table>
    <thead>
        <tr>
            <th style="width:6%;">Date</th>
            <th style="width:12%; text-align:left;">Guest Name</th>
            <th style="width:6%;">Folio No.</th>
            <th style="width:6%;">Bill No.</th>
            <th style="width:7%;">Room No.</th>
            <th style="width:8%; text-align:right;">Bill Amt</th>
            <th style="width:7%; text-align:right;">Goods 2.5%</th>
            <th style="width:7%; text-align:right;">Goods 6%</th>
            <th style="width:7%; text-align:right;">Goods 9%</th>
            <th style="width:7%; text-align:right;">CGST 2.5%</th>
            <th style="width:7%; text-align:right;">SGST 2.5%</th>
            <th style="width:7%; text-align:right;">CGST 6%</th>
            <th style="width:7%; text-align:right;">SGST 6%</th>
            <th style="width:7%; text-align:right;">CGST 9%</th>
            <th style="width:7%; text-align:right;">SGST 9%</th>
            <th style="width:8%; text-align:right;">Till Tax Amt</th>
            <th style="width:11%; text-align:left;">Company</th>
            <th style="width:9%; text-align:left;">GSTIN</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $row['settledate'] ? \Carbon\Carbon::parse($row['settledate'])->format('d/m/Y') : '' }}</td>
                <td>{{ $row['GuestName'] }}</td>
                <td class="text-center">{{ $row['foliono'] }}</td>
                <td class="text-center">{{ $row['BILL_NO'] }}</td>
                <td class="text-center">{{ $row['RoomNo'] }}</td>
                <td class="text-right">{{ $num($row['billamount']) }}</td>
                <td class="text-right">{{ $num($row['BASEVALUE5']) }}</td>
                <td class="text-right">{{ $num($row['BASEVALUE1']) }}</td>
                <td class="text-right">{{ $num($row['BASEVALUE2']) }}</td>
                <td class="text-right">{{ $num($row['TAXAMT5']) }}</td>
                <td class="text-right">{{ $num($row['TAXAMT6']) }}</td>
                <td class="text-right">{{ $num($row['TAXAMT1']) }}</td>
                <td class="text-right">{{ $num($row['TAXAMT3']) }}</td>
                <td class="text-right">{{ $num($row['TAXAMT2']) }}</td>
                <td class="text-right">{{ $num($row['TAXAMT4']) }}</td>
                <td class="text-right">{{ $num($row['ETAXAMT']) }}</td>
                <td class="company-col">{{ $row['companyname'] }}</td>
                <td class="gst-col">{{ $row['companygstin'] }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="18" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if (count($data) > 0)
        <tfoot>
            <tr class="tfoot-row">
                <td colspan="5" class="text-right">Grand Total</td>
                <td class="text-right">{{ $num($totals['billamount']) }}</td>
                <td class="text-right">{{ $num($totals['BASEVALUE5']) }}</td>
                <td class="text-right">{{ $num($totals['BASEVALUE1']) }}</td>
                <td class="text-right">{{ $num($totals['BASEVALUE2']) }}</td>
                <td class="text-right">{{ $num($totals['TAXAMT5']) }}</td>
                <td class="text-right">{{ $num($totals['TAXAMT6']) }}</td>
                <td class="text-right">{{ $num($totals['TAXAMT1']) }}</td>
                <td class="text-right">{{ $num($totals['TAXAMT3']) }}</td>
                <td class="text-right">{{ $num($totals['TAXAMT2']) }}</td>
                <td class="text-right">{{ $num($totals['TAXAMT4']) }}</td>
                <td class="text-right">{{ $num($totals['ETAXAMT']) }}</td>
                <td colspan="2"></td>
            </tr>
        </tfoot>
    @endif
</table>

</body>
</html>
