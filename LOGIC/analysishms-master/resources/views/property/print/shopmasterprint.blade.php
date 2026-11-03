@include('property.print._header', [
    'company'  => $company,
    'title'    => $reportTitle,
])

<style>
    body { font-size: 9px; margin: 10px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 3px 4px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 8px; }
    td { font-size: 8px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
</style>

<table>
    <thead>
        <tr>
            <th style="width:3%; text-align:center;">#</th>
            <th style="width:8%; text-align:left;">Shop Code</th>
            <th style="width:14%; text-align:left;">Shop Name</th>
            <th style="width:8%; text-align:center;">Shop Type</th>
            <th style="width:10%; text-align:left;">Business Category</th>
            <th style="width:6%; text-align:right;">Carpet Area</th>
            <th style="width:6%; text-align:right;">Built-up Area</th>
            <th style="width:7%; text-align:right;">Chargeable Area</th>
            <th style="width:5%; text-align:center;">Area Unit</th>
            <th style="width:5%; text-align:right;">Frontage</th>
            <th style="width:6%; text-align:right;">Ceiling Height</th>
            <th style="width:7%; text-align:center;">Shop Status</th>
            <th style="width:10%; text-align:left;">Electricity Meter No</th>
            <th style="width:5%; text-align:center;">Active</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
        <tr>
            <td class="text-center">{{ $loop->iteration }}</td>
            <td>{{ $row->shopcode }}</td>
            <td>{{ $row->shopname }}</td>
            <td class="text-center">{{ $row->shoptype }}</td>
            <td>{{ $row->businesscategory }}</td>
            <td class="text-right">{{ $row->carpetarea }}</td>
            <td class="text-right">{{ $row->builtuparea }}</td>
            <td class="text-right">{{ $row->chargeablearea }}</td>
            <td class="text-center">{{ $row->areaunit }}</td>
            <td class="text-right">{{ $row->frontage }}</td>
            <td class="text-right">{{ $row->ceilingheight }}</td>
            <td class="text-center">{{ $row->shopstatus }}</td>
            <td>{{ $row->electricitymeterno }}</td>
            <td class="text-center">{{ $row->activeyn == 1 ? 'Active' : 'Inactive' }}</td>
        </tr>
        @empty
        <tr>
            <td colspan="14" class="text-center" style="padding:12px;">
                No data found.
            </td>
        </tr>
        @endforelse
    </tbody>
    @if ($data->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="2" class="text-right">Total Shops: {{ $data->count() }}</td>
            <td colspan="4"></td>
            <td class="text-right">{{ $data->sum('carpetarea') }}</td>
            <td class="text-right">{{ $data->sum('builtuparea') }}</td>
            <td class="text-right">{{ $data->sum('chargeablearea') }}</td>
            <td colspan="5"></td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
