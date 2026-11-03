@extends('property.layouts.main')

@section('main-container')

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

<style>
    #reportTable { width:100%; border-collapse:collapse; font-size:13px; }
    #reportTable th {
        background:#6c757d; color:#fff;
        border:1px solid #dee2e6; padding:6px 10px; text-align:center;
    }
    #reportTable td { border:1px solid #dee2e6; padding:5px 10px; }
    #reportTable tbody tr:hover { background:#fff5f5; }
    #reportTable tfoot td {
        background:#fff3cd; font-weight:700;
        border-top:2px solid #adb5bd;
    }
    .bal-neg { color:#dc3545; font-weight:600; }
</style>

<div class="content-body">
    <div class="container-fluid">
        <div class="card shadow-sm">
            <div class="card-body">

                <h5 class="mb-1 font-weight-bold">Minus Stock Report</h5>
               

                {{-- Buttons --}}
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
                                <th style="width:5%;">No.</th>
                                <th style="text-align:left;">Item Name</th>
                                <th style="width:10%;">Unit</th>
                                <th style="width:15%;">Balance Qty</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($data as $row)
                                <tr>
                                    <td style="text-align:center; font-weight:700;">{{ $loop->iteration }}</td>
                                    <td>{{ $row->Name }}</td>
                                    <td style="text-align:center;">{{ $row->UnitName }}</td>
                                    <td style="text-align:right;" class="bal-neg">
                                        {{ number_format($row->BalQty, 2) }}
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="4" class="text-muted py-4 text-center">
                                        No minus stock found
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                        @if($data->count() > 0)
                        <tfoot>
                            <tr>
                                <td colspan="3" style="text-align:right; font-weight:700;">Total Items</td>
                                <td style="text-align:right; font-weight:700; color:#dc3545;">
                                    {{ $data->count() }}
                                </td>
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
    const tableData  = @json($data);
    const compName   = "{{ $company->comp_name ?? '' }}";
    const compAddr   = "{{ $company->address1 ?? '' }}";
    const compCity   = "{{ ($statename ?? '') . ($company->city ? ' - '.$company->city : '') . ($company->pin ? ' - '.$company->pin : '') }}";
    const asOnDate   = "{{ \Carbon\Carbon::parse($today)->format('d/m/Y') }}";

    // ══════════════════════════════════════════
    // EXCEL
    // ══════════════════════════════════════════
    document.getElementById('excelButton').addEventListener('click', function () {
        const wsData = [
            [compName],
            [compAddr],
            [compCity],
            [],
            ['Minus Stock Report'],
            ['As on: ' + asOnDate],
            [],
            ['No.', 'Item Name', 'Unit', 'Balance Qty']
        ];

        tableData.forEach(function (row, i) {
            wsData.push([i + 1, row.Name, row.UnitName, parseFloat(row.BalQty)]);
        });

        wsData.push(['', 'Total Items', '', tableData.length]);

        const wb = XLSX.utils.book_new();
        const ws = XLSX.utils.aoa_to_sheet(wsData);
        ws['!cols'] = [{ wch: 5 }, { wch: 40 }, { wch: 12 }, { wch: 15 }];
        XLSX.utils.book_append_sheet(wb, ws, 'Minus Stock');
        XLSX.writeFile(wb, 'MinusStock.xlsx');
    });

    // ══════════════════════════════════════════
    // PRINT
    // ══════════════════════════════════════════
    document.getElementById('printButton').addEventListener('click', function () {
        window.open("{{ route('printminiusstock') }}", '_blank');
    });
</script>

@endsection
