@extends('property.layouts.main')

@section('main-container')

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

<style>
    #reportTable { width:100%; border-collapse:collapse; font-size:10px; table-layout:auto; }
    #reportTable th {
        background:#343a40; color:#fff;
        border:1px solid #dee2e6; padding:4px 5px; text-align:center;
        white-space:nowrap;
    }
    #reportTable th.sub-head {
        background:#6c757d; color:#fff;
        border:1px solid #dee2e6; padding:3px 5px;
        white-space:nowrap;
    }
    #reportTable td { border:1px solid #dee2e6; padding:3px 5px; white-space:nowrap; }
    #reportTable td.amt   { text-align:right; color:#1a7a3c; font-weight:600; }
    #reportTable td.bills { text-align:center; }
    #reportTable td.dash  { text-align:center; color:#aaa; }
    #reportTable tfoot td {
        background:#fff3cd; font-weight:700;
        border-top:2px solid #adb5bd; padding:3px 5px;
    }
    #reportTable tfoot td.amt { color:#1a7a3c; }
</style>

<div class="content-body">
    <div class="container-fluid">
        <div class="card shadow-sm">
            <div class="card-body">

                <h5 class="mb-3 font-weight-bold">Supplier Wise Purchase Report</h5>
               

                <div class="mb-3 d-flex gap-2">
                    <a href="{{ route('invdashboard') }}" class="btn btn-secondary btn-sm">← Back</a>
                    <button id="excelButton" class="btn btn-success btn-sm">
                        <i class="fa fa-file-excel"></i> Excel
                    </button>
                    <button id="printButton" class="btn btn-info btn-sm">
                        <i class="fa fa-print"></i> Print
                    </button>
                </div>

                <div style="overflow-x:auto;">
                    <table id="reportTable">
                        <thead>
                            <tr>
                                <th rowspan="2" style="width:30px;">No.</th>
                                <th rowspan="2" style="text-align:left; width:130px;">Supplier Name</th>
                                @foreach ($months as $ym)
                                    <th colspan="2">
                                        {{ \Carbon\Carbon::createFromFormat('Y-m', $ym)->format('M Y') }}
                                    </th>
                                @endforeach
                            </tr>
                            <tr>
                                @foreach ($months as $ym)
                                    <th class="sub-head" style="width:80px;">TotalAmt (₹)</th>
                                    <th class="sub-head" style="width:50px;">No.Bills</th>
                                @endforeach
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($pivoted as $supplierName => $monthData)
                                <tr>
                                    <td style="text-align:center; font-weight:700;">{{ $loop->iteration }}</td>
                                    <td style="font-weight:600;">{{ $supplierName }}</td>
                                    @foreach ($months as $ym)
                                        @php
                                            $amt   = $monthData[$ym]['amt']   ?? 0;
                                            $bills = $monthData[$ym]['bills'] ?? 0;
                                        @endphp
                                        @if($amt > 0)
                                            <td class="amt">₹{{ number_format($amt, 2) }}</td>
                                        @else
                                            <td class="dash">-</td>
                                        @endif
                                        @if($bills > 0)
                                            <td class="bills">{{ $bills }}</td>
                                        @else
                                            <td class="dash">-</td>
                                        @endif
                                    @endforeach
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="{{ 2 + count($months) * 2 }}" class="text-muted py-4 text-center">
                                        No purchase data available
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                        @if(count($pivoted) > 0)
                        <tfoot>
                            <tr>
                                <td colspan="2" style="text-align:right; font-weight:700;">Grand Total</td>
                                @foreach ($months as $ym)
                                    @php
                                        $tAmt   = collect($pivoted)->sum(fn($m) => $m[$ym]['amt']   ?? 0);
                                        $tBills = collect($pivoted)->sum(fn($m) => $m[$ym]['bills'] ?? 0);
                                    @endphp
                                    <td class="amt">{{ $tAmt > 0 ? '₹'.number_format($tAmt,2) : '-' }}</td>
                                    <td class="bills">{{ $tBills > 0 ? $tBills : '-' }}</td>
                                @endforeach
                            </tr>
                        </tfoot>
                        @endif
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    const pivotedData = @json($pivoted);
    const months      = @json($months);
    const startOfYear = "{{ \Carbon\Carbon::parse($startOfYear)->format('d/m/Y') }}";
    const todayDate   = "{{ \Carbon\Carbon::today()->format('d/m/Y') }}";

    // ══════════════════════════════════════════
    // EXCEL
    // ══════════════════════════════════════════
    document.getElementById('excelButton').addEventListener('click', function () {

        const wsData = [
            ['Supplier Wise Purchase Report'],
            ['Period: ' + startOfYear + ' to ' + todayDate],
            []
        ];

        // Header row 1
        const hdr1 = ['No.', 'Supplier Name'];
        months.forEach(function (ym) {
            const parts = ym.split('-');
            const d = new Date(parts[0], parts[1] - 1, 1);
            const label = d.toLocaleString('default', { month: 'short' }) + ' ' + parts[0];
            hdr1.push(label, '');
        });
        wsData.push(hdr1);

        // Header row 2
        const hdr2 = ['', ''];
        months.forEach(() => hdr2.push('Amt (Rs)', 'No. of Bills'));
        wsData.push(hdr2);

        // Data rows
        let i = 1;
        Object.keys(pivotedData).sort().forEach(function (supplier) {
            const row = [i++, supplier];
            months.forEach(function (ym) {
                const d = pivotedData[supplier][ym];
                row.push(d ? parseFloat(d.amt   || 0) : 0);
                row.push(d ? parseInt(d.bills   || 0) : 0);
            });
            wsData.push(row);
        });

        // Grand total
        const gtRow = ['', 'Grand Total'];
        months.forEach(function (ym) {
            let tAmt = 0, tBills = 0;
            Object.values(pivotedData).forEach(function (m) {
                tAmt   += parseFloat((m[ym] && m[ym].amt)   || 0);
                tBills += parseInt((m[ym]   && m[ym].bills) || 0);
            });
            gtRow.push(tAmt, tBills);
        });
        wsData.push(gtRow);

        const wb = XLSX.utils.book_new();
        const ws = XLSX.utils.aoa_to_sheet(wsData);
        const cols = [{ wch: 5 }, { wch: 25 }];
        months.forEach(() => { cols.push({ wch: 14 }); cols.push({ wch: 12 }); });
        ws['!cols'] = cols;
        XLSX.utils.book_append_sheet(wb, ws, 'Supplier Purchase');
        XLSX.writeFile(wb, 'SupplierWisePurchase.xlsx');
    });

    // ══════════════════════════════════════════
    // PRINT
    // ══════════════════════════════════════════
    document.getElementById('printButton').addEventListener('click', function () {
        window.open("{{ route('printsupplierwisepurchase') }}", '_blank');
    });
</script>

@endsection
