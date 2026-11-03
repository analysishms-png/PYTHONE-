@include('property.print._header', [
    'company' => $company,
    'title'   => 'Minus Stock Report',
])

<p style="text-align:center; font-size:11px; margin-bottom:10px;">
    As on: {{ \Carbon\Carbon::parse($today)->format('d/m/Y') }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:5%; text-align:center;">No.</th>
            <th>Item Name</th>
            <th class="text-right" style="width:10%;">Unit</th>
            <th class="text-right" style="width:15%;">Balance Qty</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td style="text-align:center; font-weight:700;">{{ $loop->iteration }}</td>
                <td>{{ $row->Name }}</td>
                <td style="text-align:center;">{{ $row->UnitName }}</td>
                <td class="text-right" style="color:#dc3545; font-weight:600;">
                    {{ number_format($row->BalQty, 2) }}
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="4" style="text-align:center; padding:10px;">
                    No minus stock found.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if($data->count() > 0)
    <tfoot>
        <tr>
            <td colspan="3" style="text-align:right; font-weight:700;">Total Items</td>
            <td style="text-align:right; font-weight:700;">{{ $data->count() }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
