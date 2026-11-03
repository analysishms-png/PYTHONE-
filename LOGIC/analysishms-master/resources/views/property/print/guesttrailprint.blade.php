@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Guest Trail',
    'fromDate' => $fromdate,
    'toDate'   => $fromdate,
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
</style>

<table>
    <thead>
        <tr>
            <th style="width:2%;">#</th>
            <th style="width:5%;">Folio</th>
            <th style="width:10%;">Guest Name</th>
            <th style="width:5%;">Room</th>
            <th style="width:7%;">In Date</th>
            <th style="width:7%;">Out Date</th>
            <th style="width:3%;">Occ</th>
            <th style="width:3%;">Nights</th>
            <th style="width:5%;">Tariff</th>
            <th style="width:5%;">Room Rent</th>
            <th style="width:5%;">Room Disc</th>
            <th style="width:5%;">Extra Chg</th>
            <th style="width:4%;">Tax</th>
            <th style="width:4%;">Outlet</th>
            <th style="width:5%;">Credit Amt</th>
            <th style="width:5%;">Backfor</th>
            <th style="width:5%;">Total Today</th>
            <th style="width:5%;">Total Upto</th>
            <th style="width:5%;">Carryfor</th>
            <th style="width:4%;">Bill No</th>
            <th style="width:8%;">Payment Detail</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            @php
                $nights = 1;
                if ($row->checkindate && $row->chkoutdate) {
                    $diff = \Carbon\Carbon::parse($row->checkindate)->diffInDays(\Carbon\Carbon::parse($row->chkoutdate));
                    $nights = $diff > 0 ? $diff : 1;
                }
            @endphp
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="text-center">{{ $row->foliono ?? '-' }}</td>
                <td class="guest-col">{{ $row->guestname ?? '-' }}</td>
                <td class="text-center">{{ $row->roomno ?? '-' }}</td>
                <td class="text-center">{{ $row->checkindate ? \Carbon\Carbon::parse($row->checkindate)->format('d/m/Y') : '-' }}</td>
                <td class="text-center">{{ $row->chkoutdate ? \Carbon\Carbon::parse($row->chkoutdate)->format('d/m/Y') : '-' }}</td>
                <td class="text-center">{{ $row->adult ?? '-' }}</td>
                <td class="text-center">{{ $nights }}</td>
                <td class="money-col">{{ number_format($row->tarrif ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->RoomRent ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->RoomDisc ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->ExtraCharge ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->Tax ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->Outlet ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->CreditAmt ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->Backfor ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->TotalToday ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->TotaluptoDate ?? 0, 2) }}</td>
                <td class="money-col">{{ number_format($row->Carryfor ?? 0, 2) }}</td>
                <td class="text-center">{{ $row->billno ?? '-' }}</td>
                <td>{{ $row->PaymentDetail ?? '-' }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="21" class="text-center" style="padding:12px;">
                    No data found for the selected date.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>
