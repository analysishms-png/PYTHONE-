@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Revenue Source Report',
    'fromDate' => $fromdate,
    'toDate'   => $todate,
])

<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Revenue Source</th>
            <th class="text-right">Check-ins</th>
            <th class="text-right">Room Nights</th>
            <th class="text-right">Guests</th>
            <th class="text-right">Gross Revenue</th>
            <th class="text-right">Room Rent</th>
            <th class="text-right">Transfer From Outlet</th>
            <th class="text-right">Tax</th>
            <th class="text-right">ADR</th>
        </tr>
    </thead>
    <tbody>
        @php
            $sn                  = 1;
            $tCheckins           = 0;
            $tRoomNights         = 0;
            $tGuests             = 0;
            $tGrossRevenue       = 0;
            $tRoomRent           = 0;
            $tTransferFromOutlet = 0;
            $tTax                = 0;
        @endphp

        @forelse ($data as $row)
            @php
                $tCheckins           += (int)   ($row->Checkins          ?? 0);
                $tRoomNights         += (int)   ($row->RoomNights        ?? 0);
                $tGuests             += (int)   ($row->Guests            ?? 0);
                $tGrossRevenue       += (float) ($row->GrossRevenue      ?? 0);
                $tRoomRent           += (float) ($row->RoomRent          ?? 0);
                $tTransferFromOutlet += (float) ($row->TranferFromOutlet ?? 0);
                $tTax                += (float) ($row->Tax               ?? 0);
            @endphp
            <tr>
                <td>{{ $sn++ }}</td>
                <td>{{ $row->RevenueSource ?? '-' }}</td>
                <td class="text-right">{{ $row->Checkins ?? 0 }}</td>
                <td class="text-right">{{ $row->RoomNights ?? 0 }}</td>
                <td class="text-right">{{ $row->Guests ?? 0 }}</td>
                <td class="text-right">{{ number_format($row->GrossRevenue ?? 0, 2) }}</td>
                <td class="text-right">{{ number_format($row->RoomRent ?? 0, 2) }}</td>
                <td class="text-right">{{ number_format($row->TranferFromOutlet ?? 0, 2) }}</td>
                <td class="text-right">{{ number_format($row->Tax ?? 0, 2) }}</td>
                <td class="text-right">
                    {{ $row->ADR !== null ? number_format($row->ADR, 2) : '0.00' }}
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="10" style="text-align:center; padding:10px;">No records found.</td>
            </tr>
        @endforelse
    </tbody>
    <tfoot>
        <tr style="font-weight:bold; background-color:#f2f2f2;">
            <td colspan="2">Grand Total</td>
            <td class="text-right">{{ $tCheckins }}</td>
            <td class="text-right">{{ $tRoomNights }}</td>
            <td class="text-right">{{ $tGuests }}</td>
            <td class="text-right">{{ number_format($tGrossRevenue, 2) }}</td>
            <td class="text-right">{{ number_format($tRoomRent, 2) }}</td>
            <td class="text-right">{{ number_format($tTransferFromOutlet, 2) }}</td>
            <td class="text-right">{{ number_format($tTax, 2) }}</td>
            <td class="text-right">
                {{ $tRoomNights > 0 ? number_format($tRoomRent / $tRoomNights, 2) : '0.00' }}
            </td>
        </tr>
    </tfoot>
</table>

</body>
</html>
