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
    .nowrap { white-space: nowrap; }
</style>

@if ($view === 'item')
<table>
    <thead>
        <tr>
            <th>Outlet</th>
            <th>Bill No</th>
            <th>Bill Date</th>
            <th>Bill Time</th>
            <th>User</th>
            <th>Before Sno</th>
            <th>Before Item</th>
            <th>Before Qty</th>
            <th>Before Rate</th>
            <th>Before Disc%</th>
            <th>Before Disc Amt</th>
            <th>After Sno</th>
            <th>After Item</th>
            <th>After Qty</th>
            <th>After Rate</th>
            <th>After Disc%</th>
            <th>After Disc Amt</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td>{{ $row->Outlet ?? '' }}</td>
                <td>{{ $row->BillNo ?? '' }}</td>
                <td class="nowrap">{{ $row->BillDate ? \Carbon\Carbon::parse($row->BillDate)->format('d/m/Y') : '' }}</td>
                <td>{{ $row->BillTime ?? '' }}</td>
                <td>{{ $row->UserName ?? '' }}</td>
                <td class="text-center">{{ $row->BeforeSno ?? '' }}</td>
                <td>{{ $row->BeforeName ?? '' }}</td>
                <td class="text-right">{{ number_format((float)$row->BeforeQty, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->BeforeRate, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->BeforeDiscPer, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->BeforeDiscAmt, 2) }}</td>
                <td class="text-center">{{ $row->AfterSno ?? '' }}</td>
                <td>{{ $row->AfterName ?? '' }}</td>
                <td class="text-right">{{ is_numeric($row->AfterQty) ? number_format((float)$row->AfterQty, 2) : '' }}</td>
                <td class="text-right">{{ is_numeric($row->AfterRate) ? number_format((float)$row->AfterRate, 2) : '' }}</td>
                <td class="text-right">{{ is_numeric($row->AfterDiscPer) ? number_format((float)$row->AfterDiscPer, 2) : '' }}</td>
                <td class="text-right">{{ is_numeric($row->AfterDiscAmt) ? number_format((float)$row->AfterDiscAmt, 2) : '' }}</td>
            </tr>
        @empty
            <tr><td colspan="17" class="text-center" style="padding:12px;">No data found.</td></tr>
        @endforelse
    </tbody>
</table>
@else
<table>
    <thead>
        <tr>
            <th>Outlet</th>
            <th>Bill No</th>
            <th>Bill Date</th>
            <th>Bill Time</th>
            <th>Version</th>
            <th>Record Status</th>
            <th>User</th>
            <th>Updated At</th>
            <th>Prev Disc%</th>
            <th>Curr Disc%</th>
            <th>Disc% Change</th>
            <th>Prev Disc Amt</th>
            <th>Curr Disc Amt</th>
            <th>Disc Amt Change</th>
            <th>Prev Net Amt</th>
            <th>Curr Net Amt</th>
            <th>Net Amt Change</th>
            <th>Change Status</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td>{{ $row->Outlet ?? '' }}</td>
                <td>{{ $row->BillNo ?? '' }}</td>
                <td class="nowrap">{{ $row->BillDate ? \Carbon\Carbon::parse($row->BillDate)->format('d/m/Y') : '' }}</td>
                <td>{{ $row->BillTime ?? '' }}</td>
                <td class="text-center">{{ $row->VersionNo ?? '' }}</td>
                <td>{{ $row->RecordStatus ?? '' }}</td>
                <td>{{ $row->UserName ?? '' }}</td>
                <td class="nowrap">{{ $row->UpdateDateTime ?? '' }}</td>
                <td class="text-right">{{ number_format((float)$row->PrevDiscPer, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->CurrentDiscPer, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->DiscPerChange, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->PrevDiscAmt, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->CurrentDiscAmt, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->DiscAmtChange, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->PrevNetAmt, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->CurrentNetAmt, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->NetAmtChange, 2) }}</td>
                <td>{{ $row->ChangeStatus ?? '' }}</td>
            </tr>
        @empty
            <tr><td colspan="18" class="text-center" style="padding:12px;">No data found.</td></tr>
        @endforelse
    </tbody>
</table>
@endif

</body>
</html>
