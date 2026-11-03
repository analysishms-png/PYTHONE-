@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Cancel Bills',
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
    .bill-col { white-space: nowrap; font-weight: 700; color: #00008b; }
    .amount-col { text-align: right; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:4%; text-align:center;">#</th>
            <th style="width:9%;">Bill No.</th>
            <th style="width:10%;">Date</th>
            <th style="width:10%;">Folio No.</th>
            <th style="width:22%; text-align:left;">Name</th>
            <th style="width:11%; text-align:right;">Amount</th>
            <th style="width:22%; text-align:left;">Reason</th>
            <th style="width:12%; text-align:left;">User</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="bill-col">{{ $row->billno }}</td>
                <td class="text-center">{{ \Carbon\Carbon::parse($row->billdate)->format('d/m/Y') }}</td>
                <td class="text-center">{{ $row->foliono }}</td>
                <td>{{ $row->guestname }}</td>
                <td class="amount-col">{{ number_format((float) $row->billamt, 2) }}</td>
                <td>{{ $row->cancelremark }}</td>
                <td>{{ $row->u_name }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="8" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if ($data->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="5" class="text-right">Total</td>
            <td class="amount-col">{{ number_format((float) $total, 2) }}</td>
            <td colspan="2"></td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
