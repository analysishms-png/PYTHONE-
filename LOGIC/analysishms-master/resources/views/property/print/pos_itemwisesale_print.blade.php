@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Item Wise Sale Report',
    'fromDate' => $fromDate,
    'toDate'   => $toDate,
])

<style>
    .group-heading {
        background-color: #e0e0e0;
        font-weight: bold;
        color: #000 !important;
        text-align: center;
        padding: 6px;
    }
    .group-total {
        background-color: #d0e8ff;
        font-weight: bold;
        color: #000;
    }
    .grand-total {
        background-color: #b8d4f0;
        font-weight: bold;
        color: #000;
        font-size: 13px;
    }
    td.num {
        text-align: right;
    }
</style>

<table>
    <thead>
        <tr>
            <th>Item Name</th>
            <th>HSN Code</th>
            <th>Unit</th>
            <th class="text-right">Qty</th>
            <th class="text-right">NC KOT</th>
            <th class="text-right">Total Value</th>
            <th class="text-right">Disc</th>
            <th>Outlet</th>
        </tr>
    </thead>
    <tbody>
        @php
            // Pre-calculate grand total value for ratio
            $preTotalValue = 0;
            foreach ($grouped as $rows) {
                foreach ($rows as $row) {
                    $preTotalValue += floatval($row->VALUE1);
                }
            }

            $grandQty   = 0;
            $grandNcqty = 0;
            $grandValue = 0;
            $grandDisc  = 0;
        @endphp

        @foreach ($grouped as $groupName => $rows)
            @php
                $grpQty   = 0;
                $grpNcqty = 0;
                $grpValue = 0;
                $grpDisc  = 0;
            @endphp

            {{-- Group Heading --}}
            <tr>
                <td colspan="8" class="group-heading">{{ $groupName }}</td>
            </tr>

            {{-- Data Rows --}}
            @foreach ($rows as $row)
                @php
                    $qty   = floatval($row->QTY);
                    $ncqty = floatval($row->NCQTY);
                    $value = floatval($row->VALUE1);
                    $disc  = floatval($row->DISC);

                    $grpQty   += $qty;
                    $grpNcqty += $ncqty;
                    $grpValue += $value;
                    $grpDisc  += $disc;
                @endphp
                <tr>
                    <td>{{ $row->ITEMNAME }}</td>
                    <td style="text-align:center;">{{ $row->HSNCODE ?? 'NA' }}</td>
                    <td style="text-align:center;">{{ $row->UNIT }}</td>
                    <td class="num">{{ number_format($qty, 3) }}</td>
                    <td class="num">{{ number_format($ncqty, 3) }}</td>
                    <td class="num">{{ number_format($value, 2) }}</td>
                    <td class="num">{{ number_format($disc, 2) }}</td>
                    <td style="text-align:center;">{{ $row->DepartCode }}</td>
                </tr>
            @endforeach

            {{-- Group Total --}}
            <tr class="group-total">
                <td style="text-align:center;">Group Total</td>
                <td></td>
                <td class="num">
                    {{ $preTotalValue > 0 ? number_format(($grpValue / $preTotalValue) * 100, 2) . '%' : '' }}
                </td>
                <td class="num">{{ number_format($grpQty, 3) }}</td>
                <td class="num">{{ number_format($grpNcqty, 3) }}</td>
                <td class="num">{{ number_format($grpValue, 2) }}</td>
                <td class="num">{{ number_format($grpDisc, 2) }}</td>
                <td></td>
            </tr>

            @php
                $grandQty   += $grpQty;
                $grandNcqty += $grpNcqty;
                $grandValue += $grpValue;
                $grandDisc  += $grpDisc;
            @endphp
        @endforeach

        {{-- Grand Total --}}
        <tr class="grand-total">
            <td style="text-align:center;">Grand Total</td>
            <td></td>
            <td></td>
            <td class="num">{{ number_format($grandQty, 3) }}</td>
            <td class="num">{{ number_format($grandNcqty, 3) }}</td>
            <td class="num">{{ number_format($grandValue, 2) }}</td>
            <td class="num">{{ number_format($grandDisc, 2) }}</td>
            <td></td>
        </tr>
    </tbody>
</table>

</body>
</html>
