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
    .user-col { min-width: 120px; font-weight: 700; color: #00008b; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    Status: {{ $statusLabel }} &nbsp;|&nbsp;
    Total Users: {{ $data->count() }}
</p>

<table>
    <thead>
        <tr>
            <th style="width:4%; text-align:center;">#</th>
            <th style="min-width:120px; text-align:left;">User Name</th>
            <th style="min-width:110px; text-align:left;">Designation</th>
            <th style="width:10%;">Is Superwiser</th>
            <th style="width:12%;">BackDate Entry Allow</th>
            <th style="width:14%;">Create Date</th>
            <th style="min-width:90px; text-align:left;">Create User</th>
            <th style="width:9%;">Status</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="user-col">{{ $row->username }}</td>
                <td>{{ $row->designation ?? '-' }}</td>
                <td class="text-center">{{ $row->issuperwiser }}</td>
                <td class="text-center">{{ $row->backdateentryallow }}</td>
                <td class="text-center">
                    {{ $row->createdate ? \Carbon\Carbon::parse($row->createdate)->format('d/m/Y h:i A') : '-' }}
                </td>
                <td>{{ $row->createuser }}</td>
                <td class="text-center">{{ $row->status }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="8" class="text-center" style="padding:12px;">
                    No data found.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if ($data->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="7" class="text-right">Total Users</td>
            <td class="text-center">{{ $data->count() }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
