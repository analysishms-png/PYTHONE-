<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menu Items Report</title>
    <style>
        body { font-family: Arial, sans-serif; font-size: 12px; color: #000; margin: 20px; }
        h2, h4, p { margin: 0; }
        .header { text-align: center; margin-bottom: 16px; }
        .header p { margin: 2px 0; font-size: 11px; color: #333; }
        .header h4 { margin-top: 8px; font-size: 14px; }
        table { width: 100%; border-collapse: collapse; margin-top: 14px; }
        th, td { border: 1px solid #000; padding: 5px 7px; font-size: 11px; }
        th { background-color: #f2f2f2; text-align: left; }
        td { vertical-align: top; }
    </style>
</head>
<body>
<div class="header">
    <h2>{{ $company->comp_name ?? '' }}</h2>
    <p>{{ trim(($company->address1 ?? '') . ' ' . ($company->address2 ?? '')) }}</p>
    <p>{{ trim(($company->city ?? '') . ($company->pin ?? '' ? ' - ' . $company->pin : '')) }}</p>
    <h4>Menu Items Report</h4>
</div>

<table>
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Name</th>
            <th>Unit</th>
            <th>Group</th>
            <th>Category</th>
            <th>Disp</th>
            <th>Restaurant</th>
            <th>Rate</th>
            <th>Disc</th>
            <th>Rate Edit</th>
            <th>Active</th>
            <th>Kitchen</th>
            <th>Specification</th>
        </tr>
    </thead>
    <tbody>
        @php $sn = 1; @endphp
        @forelse ($itemmast as $row)
            <tr>
                <td>{{ $sn }}</td>
                <td>{{ $row->itemname }}</td>
                <td>{{ $row->unitname }}</td>
                <td>{{ $row->itemgrpname }}</td>
                <td>{{ $row->itemcatname }}</td>
                <td>{{ $row->DispCode }}</td>
                <td>{{ $row->Restaurant }}</td>
                <td>{{ $row->Rate }}</td>
                <td>{{ $row->DiscApp == 'N' ? 'No' : 'Yes' }}</td>
                <td>{{ $row->RateEdit == 'N' ? 'No' : 'Yes' }}</td>
                <td>{{ $row->ActiveYN == 'N' ? 'No' : 'Yes' }}</td>
                <td>{{ $row->kitchenname }}</td>
                <td>{{ $row->Specification }}</td>
            </tr>
            @php $sn++; @endphp
        @empty
            <tr>
                <td colspan="13" style="text-align:center; padding:10px;">No records found.</td>
            </tr>
        @endforelse
    </tbody>
</table>
</body>
</html>
