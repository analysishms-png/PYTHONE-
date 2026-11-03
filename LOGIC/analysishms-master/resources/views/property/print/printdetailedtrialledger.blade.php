@include('property.print._header', [
    'company'  => $company,
    'title'    => 'Detailed Trial Ledger Report',
    'fromDate' => $fromDate,
    'toDate'   => $toDate,
])

<table>
    <thead>
        <tr>
            <th>A/C Name</th>
            <th class="text-right">Opening Dr</th>
            <th class="text-right">Opening Cr</th>
            <th class="text-right">Trans Dr</th>
            <th class="text-right">Trans Cr</th>
            <th class="text-right">Closing Dr</th>
            <th class="text-right">Closing Cr</th>
        </tr>
    </thead>
    <tbody>
        @if (count($reportData) === 0)
            <tr>
                <td colspan="7" style="text-align:center; padding:10px;">No records found for the selected date range.</td>
            </tr>
        @else
            @php
                $currentGroup = null;
                $groupTotals = [
                    'opening_dr' => 0,
                    'opening_cr' => 0,
                    'trans_dr' => 0,
                    'trans_cr' => 0,
                    'closing_dr' => 0,
                    'closing_cr' => 0,
                ];
                $grandTotals = [
                    'opening_dr' => 0,
                    'opening_cr' => 0,
                    'trans_dr' => 0,
                    'trans_cr' => 0,
                    'closing_dr' => 0,
                    'closing_cr' => 0,
                ];
            @endphp

            @foreach ($reportData as $row)
                @php
                    $grp = $row->group_name ?? null;
                @endphp

                @if ($currentGroup !== $grp)
                    @if (!is_null($currentGroup))
                        <tr style="background:#e9f2ff; font-weight:700;">
                            <td style="padding:6px;">Sub Total</td>
                            <td class="text-right">{{ number_format($groupTotals['opening_dr'], 2) }}</td>
                            <td class="text-right">{{ number_format($groupTotals['opening_cr'], 2) }}</td>
                            <td class="text-right">{{ number_format($groupTotals['trans_dr'], 2) }}</td>
                            <td class="text-right">{{ number_format($groupTotals['trans_cr'], 2) }}</td>
                            <td class="text-right">{{ number_format($groupTotals['closing_dr'], 2) }}</td>
                            <td class="text-right">{{ number_format($groupTotals['closing_cr'], 2) }}</td>
                        </tr>
                        @php
                            // reset group totals
                            $groupTotals = array_map(fn($v) => 0, $groupTotals);
                        @endphp
                    @endif

                    <tr>
                        <td colspan="7" style="font-weight:700; background:#f2f4f8; padding:6px;">{{ strtoupper($grp ?? 'UNCLASSIFIED') }}</td>
                    </tr>
                    @php $currentGroup = $grp; @endphp
                @endif

                <tr>
                    <td>{{ $row->name }}</td>
                    <td class="text-right">{{ number_format($row->opening_dr, 2) }}</td>
                    <td class="text-right">{{ number_format($row->opening_cr, 2) }}</td>
                    <td class="text-right">{{ number_format($row->trans_dr, 2) }}</td>
                    <td class="text-right">{{ number_format($row->trans_cr, 2) }}</td>
                    <td class="text-right">{{ number_format($row->closing_dr, 2) }}</td>
                    <td class="text-right">{{ number_format($row->closing_cr, 2) }}</td>
                </tr>

                @php
                    // accumulate
                    $groupTotals['opening_dr'] += (float) $row->opening_dr;
                    $groupTotals['opening_cr'] += (float) $row->opening_cr;
                    $groupTotals['trans_dr'] += (float) $row->trans_dr;
                    $groupTotals['trans_cr'] += (float) $row->trans_cr;
                    $groupTotals['closing_dr'] += (float) $row->closing_dr;
                    $groupTotals['closing_cr'] += (float) $row->closing_cr;

                    $grandTotals['opening_dr'] += (float) $row->opening_dr;
                    $grandTotals['opening_cr'] += (float) $row->opening_cr;
                    $grandTotals['trans_dr'] += (float) $row->trans_dr;
                    $grandTotals['trans_cr'] += (float) $row->trans_cr;
                    $grandTotals['closing_dr'] += (float) $row->closing_dr;
                    $grandTotals['closing_cr'] += (float) $row->closing_cr;
                @endphp
            @endforeach

            {{-- last group subtotal --}}
            @if (!is_null($currentGroup))
                <tr style="background:#e9f2ff; font-weight:700;">
                    <td style="padding:6px;">Sub Total</td>
                    <td class="text-right">{{ number_format($groupTotals['opening_dr'], 2) }}</td>
                    <td class="text-right">{{ number_format($groupTotals['opening_cr'], 2) }}</td>
                    <td class="text-right">{{ number_format($groupTotals['trans_dr'], 2) }}</td>
                    <td class="text-right">{{ number_format($groupTotals['trans_cr'], 2) }}</td>
                    <td class="text-right">{{ number_format($groupTotals['closing_dr'], 2) }}</td>
                    <td class="text-right">{{ number_format($groupTotals['closing_cr'], 2) }}</td>
                </tr>
            @endif

            {{-- grand total --}}
            <tr style="background:#d9edf7; font-weight:800;">
                <td style="padding:6px;">Grand Total</td>
                <td class="text-right">{{ number_format($grandTotals['opening_dr'], 2) }}</td>
                <td class="text-right">{{ number_format($grandTotals['opening_cr'], 2) }}</td>
                <td class="text-right">{{ number_format($grandTotals['trans_dr'], 2) }}</td>
                <td class="text-right">{{ number_format($grandTotals['trans_cr'], 2) }}</td>
                <td class="text-right">{{ number_format($grandTotals['closing_dr'], 2) }}</td>
                <td class="text-right">{{ number_format($grandTotals['closing_cr'], 2) }}</td>
            </tr>
        @endif
    </tbody>
</table>

</body>
</html>