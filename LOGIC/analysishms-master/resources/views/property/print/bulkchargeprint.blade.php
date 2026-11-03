@include('property.print._header', [
    'company' => $company,
    'title' => 'Check Out Register',
    'fromDate' => $fromdate,
    'toDate' => $todate,
])

<style>
    body {
        font-size: 9px;
    }

    table {
        font-size: 7px;
    }

    th,
    td {
        padding: 3px 4px;
        white-space: nowrap;
    }

    th {
        font-size: 6.5px;
    }

    .money-col {
        text-align: right;
    }

    .text-center {
        text-align: center;
    }

    .tfoot-row td {
        background-color: #d3d3d3;
        font-weight: 700;
    }

    .leader-row td {
        background-color: #fff3cd;
    }
</style>

<table>
    <thead>
        <tr>
            <th>Bill No</th>
            <th>Folio No</th>
            <th>Guest Name</th>
            <th>Bill Date</th>
            <th>Mobile</th>
            <th>In</th>
            <th>Out</th>
            <th>Room</th>
            <th>Occ</th>
            <th>Nights</th>
            <th>Goods</th>
            @foreach ($revNames as $name)
                <th>{{ $name }}</th>
            @endforeach
            <th>CGST</th>
            <th>SGST</th>
            <th>Total Tax</th>
            <th>Discount</th>
            <th>Round Off</th>
            <th>Adv Mode</th>
            <th>Adv Date</th>
            <th>Advance</th>
            <th>Bill Amt</th>
            <th>P.Mode</th>
            <th>Payment</th>
            <th>Company</th>
            <th>Company GSTIN</th>
            <th>Travel Company</th>
            <th>Travel GSTIN</th>
            <th>Book No</th>
            <th>Ref. Book Id.</th>
            <th>Bus Source</th>
            <th>Uname</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($rows as $row)
            <tr class="{{ $row['leaderyn'] === 'Y' ? 'leader-row' : '' }}">
                <td class="text-center">{{ $row['billno'] }}</td>
                <td class="text-center">{{ $row['foliono'] }}</td>
                <td>{{ $row['guestname'] }}</td>
                <td class="text-center">{{ $row['settledate'] }}</td>
                <td>{{ $row['mobile_no'] }}</td>
                <td class="text-center">{{ $row['checkin'] }}</td>
                <td class="text-center">{{ $row['checkout'] }}</td>
                <td class="text-center">{{ $row['roomno'] }}</td>
                <td class="text-center">{{ $row['occ'] }}</td>
                <td class="text-center">{{ $row['nights'] }}</td>
                <td class="money-col">{{ number_format($row['goods'], 2) }}</td>
                @foreach ($row['revs'] as $v)
                    <td class="money-col">{{ number_format($v, 2) }}</td>
                @endforeach
                <td class="money-col">{{ number_format($row['cgst'], 2) }}</td>
                <td class="money-col">{{ number_format($row['sgst'], 2) }}</td>
                <td class="money-col">{{ number_format($row['tax'], 2) }}</td>
                <td class="money-col">{{ number_format($row['discount'], 2) }}</td>
                <td class="money-col">{{ number_format($row['roundoff'], 2) }}</td>
                <td class="text-center">{{ $row['advmode'] }}</td>
                <td class="text-center">{{ $row['advdate'] }}</td>
                <td class="money-col">{{ number_format($row['advance'], 2) }}</td>
                <td class="money-col">{{ number_format($row['billamt'], 2) }}</td>
                <td class="text-center">{{ $row['pmode'] }}</td>
                <td class="money-col">{{ number_format($row['payment'], 2) }}</td>
                <td>{{ $row['company'] }}</td>
                <td>{{ $row['compgstin'] ? '(' . $row['compgstin'] . ')' : '' }}</td>
                <td>{{ $row['travelcompany'] }}</td>
                <td>{{ $row['travelgstin'] ? '(' . $row['travelgstin'] . ')' : '' }}</td>
                <td class="text-center">{{ $row['bookno'] }}</td>
                <td class="text-center">{{ $row['refbookingid'] }}</td>
                <td>{{ $row['busssource'] }}</td>
                <td>{{ $row['u_name'] }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="{{ 30 + count($revNames) }}" class="text-center" style="padding:12px;">
                    No data found for the selected period.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if (count($rows) > 0)
        <tfoot>
            <tr class="tfoot-row">
                <td class="text-center">Total</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="text-center">{{ $totals['occ'] }}</td>
                <td class="text-center">{{ $totals['nights'] }}</td>
                <td class="money-col">{{ number_format($totals['goods'], 2) }}</td>
                @foreach ($totals['revs'] as $v)
                    <td class="money-col">{{ number_format($v, 2) }}</td>
                @endforeach
                <td class="money-col">{{ number_format($totals['cgst'], 2) }}</td>
                <td class="money-col">{{ number_format($totals['sgst'], 2) }}</td>
                <td class="money-col">{{ number_format($totals['tax'], 2) }}</td>
                <td class="money-col">{{ number_format($totals['discount'], 2) }}</td>
                <td class="money-col">{{ number_format($totals['roundoff'], 2) }}</td>
                <td></td>
                <td class="money-col">{{ number_format($totals['advance'], 2) }}</td>
                <td class="money-col">{{ number_format($totals['billamt'], 2) }}</td>
                <td></td>
                <td class="money-col">{{ number_format($totals['payment'], 2) }}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </tfoot>
    @endif
</table>
