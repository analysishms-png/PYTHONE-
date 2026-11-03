@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Lost & Found Register',
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

<style>
    body { font-size: 9px; margin: 10px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 3px 4px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 8px; }
    td { font-size: 8px; vertical-align: middle; }
    .text-center { text-align: center; }
    .status-found { color: green; font-weight: bold; }
    .status-claim { color: #e67e00; font-weight: bold; }
</style>

<table>
    <thead>
        <tr>
            <th style="width:3%;">#</th>
            <th>Tag No</th>
            <th>Found Date</th>
            <th>Time</th>
            <th>Location</th>
            <th>Room No</th>
            <th>Item Name</th>
            <th>Brand</th>
            <th>Condition</th>
            <th>Found By</th>
            <th>Storage</th>
            <th>Status</th>
            <th>Claim By</th>
            <th>Received By</th>
            <th>Mobile</th>
            <th>Email</th>
            <th>Remark</th>
            <th>Courier</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            @php $tagno = !empty($row->vno) ? 'LF-' . str_pad((int)$row->vno, 2, '0', STR_PAD_LEFT) : ''; @endphp
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="text-center">{{ $tagno }}</td>
                <td class="text-center">{{ $row->founddate ? \Carbon\Carbon::parse($row->founddate)->format('d/m/Y') : '' }}</td>
                <td class="text-center">{{ $row->foundtime ?? '' }}</td>
                <td>{{ $row->foundlocation ?? '' }}</td>
                <td class="text-center">{{ $row->roomno ?? '' }}</td>
                <td>{{ $row->itemname ?? '' }}</td>
                <td>{{ $row->brandname ?? '' }}</td>
                <td>{{ $row->itemcondition ?? '' }}</td>
                <td>{{ $row->foundby ?? '' }}</td>
                <td>{{ $row->storagelocation ?? '' }}</td>
                <td class="text-center">
                    @if(strtolower($row->status) === 'found')
                        <span class="status-found">Found</span>
                    @else
                        <span class="status-claim">Claimed</span>
                    @endif
                </td>
                <td>{{ $row->claimby ?? '' }}</td>
                <td>{{ $row->receivedby ?? '' }}</td>
                <td>{{ $row->claimmoblieno ?? '' }}</td>
                <td>{{ $row->claimemail ?? '' }}</td>
                <td>{{ $row->claimremark ?? '' }}</td>
                <td>{{ $row->couiername ?? '' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="18" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
