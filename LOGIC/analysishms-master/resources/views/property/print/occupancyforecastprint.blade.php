@include('property.print._header', ['company' => $company, 'title' => 'Occupancy Forecast Report Day Wise'])
<table>
    <thead>
        <tr>
            <th style="text-align:left;">Date</th>
            <th>Total Room</th>
            <th>Expected Arrival</th>
            <th>Expected Departure</th>
            <th>Complimentary</th>
            <th>Stay Over</th>
            <th>Occupied Rooms</th>
            <th>OCC %</th>
            <th>Total Pax</th>
            <th>Available Room</th>
            <th>Total Revenue</th>
            <th>ARR</th>
            <th>RevPAR</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($rows as $row)
            <tr>
                <td style="text-align:left;">{{ $row['date'] }}</td>
                <td class="text-right">{{ $row['total_rooms'] }}</td>
                <td class="text-right">{{ $row['expected_arrival'] }}</td>
                <td class="text-right">{{ $row['expected_departure'] }}</td>
                <td class="text-right">{{ $row['complimentary'] }}</td>
                <td class="text-right">{{ $row['stay_over'] }}</td>
                <td class="text-right">{{ $row['occupied_rooms'] }}</td>
                <td class="text-right">{{ number_format($row['occ_percent'], 2) }}</td>
                <td class="text-right">{{ $row['total_pax'] }}</td>
                <td class="text-right">{{ $row['available_rooms'] }}</td>
                <td class="text-right">{{ number_format($row['total_revenue'], 2) }}</td>
                <td class="text-right">{{ number_format($row['arr'], 2) }}</td>
                <td class="text-right">{{ number_format($row['revpar'], 2) }}</td>
            </tr>
        @empty
            <tr><td colspan="13" style="text-align:center;padding:10px;">No records found.</td></tr>
        @endforelse
    </tbody>
    <tfoot>
        <tr style="font-weight:bold;background-color:#f2f2f2;">
            <td style="text-align:left;">Grand Total</td>
            <td class="text-right">{{ $totals['total_rooms'] }}</td>
            <td class="text-right">{{ $totals['expected_arrival'] }}</td>
            <td class="text-right">{{ $totals['expected_departure'] }}</td>
            <td class="text-right">{{ $totals['complimentary'] }}</td>
            <td class="text-right">{{ $totals['stay_over'] }}</td>
            <td class="text-right">{{ $totals['occupied_rooms'] }}</td>
            <td class="text-right">{{ $totals['occ_percent'] }}</td>
            <td class="text-right">{{ $totals['total_pax'] }}</td>
            <td class="text-right">{{ $totals['available_rooms'] }}</td>
            <td class="text-right">{{ $totals['total_revenue'] }}</td>
            <td class="text-right">{{ $totals['arr'] }}</td>
            <td class="text-right">{{ $totals['revpar'] }}</td>
        </tr>
    </tfoot>
</table>
</body>
</html>
