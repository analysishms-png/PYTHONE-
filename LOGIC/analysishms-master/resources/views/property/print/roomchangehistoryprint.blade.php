@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Room Change History',
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

<style>
    body { font-size: 8px; margin: 8px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 2px 3px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 7px; }
    td { font-size: 7px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .guest-col { font-weight: 700; color: #00008b; min-width: 80px; }
    .money-col { text-align: right; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    {{ \Carbon\Carbon::parse($fromdate)->format('d/m/Y') }} to
    {{ \Carbon\Carbon::parse($todate)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:3%;">#</th>
            <th style="width:12%;">Date</th>
            <th style="width:10%;">Guest Name</th>
            <th style="width:5%;">Folio</th>
            <th style="width:5%;">Old Room</th>
            <th style="width:7%;">Old Type</th>
            <th style="width:6%;">Old Rate</th>
            <th style="width:7%;">Old Plan</th>
            <th style="width:4%;">Old Pax</th>
            <th style="width:5%;">New Room</th>
            <th style="width:7%;">New Type</th>
            <th style="width:6%;">New Rate</th>
            <th style="width:7%;">New Plan</th>
            <th style="width:4%;">New Pax</th>
            <th style="width:10%;">Reason</th>
            <th style="width:7%;">Changed By</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="text-center">{{ $row->changedate ? \Carbon\Carbon::parse($row->changedate)->format('d/m/Y H:i:s') : '-' }}</td>
                <td class="guest-col">{{ $row->guestname ?? '-' }}</td>
                <td class="text-center">{{ $row->foliono ?? '-' }}</td>
                <td class="text-center">{{ $row->oldroomno ?? '-' }}</td>
                <td class="text-center">{{ $row->oldtype ?? '-' }}</td>
                <td class="money-col">{{ number_format($row->oldrate ?? 0, 2) }}</td>
                <td class="text-center">{{ $row->oldplan ?? '-' }}</td>
                <td class="text-center">{{ $row->oldpax ?? '-' }}</td>
                <td class="text-center">{{ $row->newroomno ?? '-' }}</td>
                <td class="text-center">{{ $row->newtype ?? '-' }}</td>
                <td class="money-col">{{ number_format($row->newrate ?? 0, 2) }}</td>
                <td class="text-center">{{ $row->newplan ?? '-' }}</td>
                <td class="text-center">{{ $row->newpax ?? '-' }}</td>
                <td>{{ $row->reason ?? '-' }}</td>
                <td class="text-center">{{ $row->changedby ?? '-' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="16" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
