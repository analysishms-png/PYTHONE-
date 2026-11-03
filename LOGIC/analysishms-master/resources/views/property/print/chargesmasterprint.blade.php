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
            <th style="width:8%; text-align:left;">Charge Code</th>
            <th style="width:12%; text-align:left;">Charge Name</th>
            <th style="width:10%; text-align:left;">SAC Code</th>
            <th style="width:10%; text-align:left;">Category</th>
            <th style="width:10%; text-align:center;">Calculation Basis</th>
            <th style="width:6%; text-align:center;">Unit</th>
            <th style="width:6%; text-align:right;">Tax %</th>
            <th style="width:8%; text-align:center;">Escalation</th>
            <th style="width:10%; text-align:center;">Frequency</th>
            <th style="width:10%; text-align:left;">Account Name</th>
            <th style="width:6%; text-align:center;">Active</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
        <tr>
            <td class="text-center">{{ $loop->iteration }}</td>
            <td>{{ $row->chargecode }}</td>
            <td>{{ $row->chargename }}</td>
            <td>{{ $row->saccode ?? '-' }}</td>
            <td>{{ $row->chargecategory }}</td>
            <td class="text-center">{{ $row->calculationbasis }}</td>
            <td class="text-center">{{ $row->unit }}</td>
            <td class="text-right">{{ $row->taxstruname ?? $row->taxstru }}</td>
            <td class="text-center">{{ $row->escalationyn == 1 ? 'Yes' : 'No' }}</td>
            <td class="text-center">{{ $row->billingfrequency }}</td>
            <td>{{ $row->accountname ?? $row->accountcode }}</td>
            <td class="text-center">{{ $row->activeyn == 1 ? 'Active' : 'Inactive' }}</td>
        </tr>
        @empty
        <tr>
            <td colspan="11" class="text-center" style="padding:12px;">
                No data found.
            </td>
        </tr>
        @endforelse
    </tbody>
    @if ($data->count() > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="2" class="text-right">Total Charges: {{ $data->count() }}</td>
            <td colspan="9"></td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
