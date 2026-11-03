@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Facility Bill Register',
    'fromDate' => $fromDate ?? '',
    'toDate'   => $toDate   ?? '',
])

<style>
    body { font-size: 8px; margin: 8px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 2px 3px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 7px; }
    td { font-size: 7px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    tfoot td { font-weight: bold; background-color: #f1eaf9; }
</style>

<table>
    <thead>
        <tr>
            <th style="width:3%;">#</th>
            <th style="width:7%;">Bill No</th>
            <th style="width:5%;">Date</th>
            <th style="width:11%; text-align:left;">Party</th>
            <th style="width:10%; text-align:left;">Facility</th>
            <th style="width:6%;">For Period</th>
            <th style="width:6%;">To Period</th>
            <th style="width:5%;">Unit</th>
            <th style="width:5%;">Rate</th>
            <th style="width:7%;">Amount</th>
            <th style="width:4%;">CGST %</th>
            <th style="width:6%;">CGST</th>
            <th style="width:4%;">SGST %</th>
            <th style="width:6%;">SGST</th>
            <th style="width:4%;">IGST %</th>
            <th style="width:6%;">IGST</th>
        </tr>
    </thead>
    <tbody>
        @php
            $totAmount = 0; $totCgst = 0; $totSgst = 0; $totIgst = 0;
        @endphp
        @forelse($rows as $i => $row)
            @php
                $totAmount += (float) ($row->Amount ?? 0);
                $totCgst   += (float) ($row->CGSTAmt ?? 0);
                $totSgst   += (float) ($row->SGSTAmt ?? 0);
                $totIgst   += (float) ($row->IGSTAmt ?? 0);
            @endphp
            <tr>
                <td class="text-center">{{ $i + 1 }}</td>
                <td>{{ $row->BillNo ?? '—' }}</td>
                <td class="text-center">
                    {{ $row->VDate ? \Carbon\Carbon::parse($row->VDate)->format('d/m/Y') : '—' }}
                </td>
                <td>{{ $row->Party ?? '—' }}</td>
                <td>{{ $row->Facility ?? '—' }}</td>
                <td class="text-center">
                    {{ $row->ForPeriod ? \Carbon\Carbon::parse($row->ForPeriod)->format('d/m/Y') : '—' }}
                </td>
                <td class="text-center">
                    {{ $row->ToPeriod ? \Carbon\Carbon::parse($row->ToPeriod)->format('d/m/Y') : '—' }}
                </td>
                <td class="text-right">{{ number_format((float) ($row->Unit ?? 0), 2) }}</td>
                <td class="text-right">{{ number_format((float) ($row->UnitRate ?? 0), 2) }}</td>
                <td class="text-right">{{ number_format((float) ($row->Amount ?? 0), 2) }}</td>
                <td class="text-right">{{ number_format((float) ($row->CGSTPer ?? 0), 2) }}</td>
                <td class="text-right">{{ number_format((float) ($row->CGSTAmt ?? 0), 2) }}</td>
                <td class="text-right">{{ number_format((float) ($row->SGSTPer ?? 0), 2) }}</td>
                <td class="text-right">{{ number_format((float) ($row->SGSTAmt ?? 0), 2) }}</td>
                <td class="text-right">{{ number_format((float) ($row->IGSTPer ?? 0), 2) }}</td>
                <td class="text-right">{{ number_format((float) ($row->IGSTAmt ?? 0), 2) }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="16" class="text-center" style="padding:12px;">
                    No facility bills found.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if(count($rows) > 0)
        <tfoot>
            <tr>
                <td colspan="9" class="text-right">Total</td>
                <td class="text-right">{{ number_format($totAmount, 2) }}</td>
                <td></td>
                <td class="text-right">{{ number_format($totCgst, 2) }}</td>
                <td></td>
                <td class="text-right">{{ number_format($totSgst, 2) }}</td>
                <td></td>
                <td class="text-right">{{ number_format($totIgst, 2) }}</td>
            </tr>
        </tfoot>
    @endif
</table>

</body>
</html>
