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
            <th style="width:5%; text-align:center;">#</th>
            <th style="width:15%; text-align:left;">Type Code</th>
            <th style="width:25%; text-align:left;">Type Name</th>
            <th style="width:45%; text-align:left;">Description</th>
            <th style="width:10%; text-align:center;">Active</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
        <tr>
            <td class="text-center">{{ $loop->iteration }}</td>
            <td>{{ $row->typecode }}</td>
            <td>{{ $row->typename }}</td>
            <td>{{ $row->description }}</td>
            <td class="text-center">{{ $row->activeyn == 1 ? 'Active' : 'Inactive' }}</td>
        </tr>
        @empty
        <tr>
            <td colspan="5" class="text-center" style="padding:12px;">
                No data found.
            </td>
        </tr>
        @endforelse
    </tbody>
    @if ($data->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="2" class="text-right">Total Unit Types: {{ $data->count() }}</td>
            <td colspan="3"></td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
