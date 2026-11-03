@extends('property.layouts.main')

@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <div>
                                    <h3 class="mb-1">Received vs Pending Material</h3>

                                </div>

                            </div>
                            <div class="d-flex align-items-center justify-content-start mb-3 gap-2">
                                <a href="{{ route('invdashboard') }}" class="btn btn-secondary btn-sm">← Back</a>
                                <button type="button" id="excelButton" class="btn btn-success btn-sm">Excel</button>
                                <button type="button" id="printButton"
                                    class="btn btn-info btn-sm text-white">Print</button>
                                <span id="printDateRange" style="display:none;">
                                    {{ route('printreceiverpendingmaterial') }}
                                </span>
                            </div>

                            <form method="GET" action="{{ route('receiverpendingmaterial') }}">
                                <div class="row gy-3 align-items-end">
                                    <div class="col-md-3">
                                        <label for="fromdate" class="form-label">From Date</label>
                                        <input type="date" id="fromdate" name="fromdate" class="form-control"
                                            value="{{ $fromDate ?? \Carbon\Carbon::parse($ncurdate)->startOfMonth()->format('Y-m-d') }}">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="todate" class="form-label">To Date</label>
                                        <input type="date" id="todate" name="todate" class="form-control"
                                            value="{{ $toDate ?? $ncurdate }}">
                                    </div>
                                    <div class="col-md-2">
                                        <button type="submit" class="btn btn-primary w-100">Refresh</button>
                                    </div>
                                </div>
                            </form>



                            <div class="table-responsive mt-2">
                                <table class="table table-bordered table-striped" id="receiverPendingTable">
                                    <thead class="table-light">
                                        <tr>
                                            <th>PO No</th>
                                            <th>Item</th>
                                            <th class="text-end">Ordered Qty</th>
                                            <th class="text-end">Received Qty</th>
                                            <th class="text-end">Pending Qty</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($reportData as $row)
                                            <tr>
                                                <td>{{ $row->po_no }}</td>
                                                <td>{{ $row->item_name }}</td>
                                                <td class="text-end">{{ number_format($row->ordered_qty, 0) }}</td>
                                                <td class="text-end">{{ number_format($row->received_qty, 0) }}</td>
                                                <td class="text-end">{{ number_format($row->pending_qty, 0) }}</td>
                                                <td>{{ $row->status }}</td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="6" class="text-center py-4">No records found for the
                                                    selected date range.</td>
                                            </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>
    <script>
        const companyName = @json($company->comp_name ?? '');
        const companyAddress = @json(trim(($company->address1 ?? '') . ' ' . ($company->address2 ?? '')));
        const companyCity = @json(trim(($company->city ?? '') . ($company->pin ?? '' ? ' - ' . $company->pin : '')));
        const reportTitle = 'Received vs Pending Material Report';

        function getReportRows() {
            const rows = [];
            document.querySelectorAll('#receiverPendingTable tbody tr').forEach(function(row) {
                const cells = row.querySelectorAll('td');
                if (cells.length === 6) {
                    rows.push([
                        cells[0].innerText.trim(),
                        cells[1].innerText.trim(),
                        cells[2].innerText.trim(),
                        cells[3].innerText.trim(),
                        cells[4].innerText.trim(),
                        cells[5].innerText.trim()
                    ]);
                }
            });
            return rows;
        }

        function exportToExcel() {
            const rows = getReportRows();
            if (!rows.length) {
                alert('No data to export.');
                return;
            }

            const fromDate = document.getElementById('fromdate').value;
            const toDate = document.getElementById('todate').value;
            const wb = XLSX.utils.book_new();
            const wsData = [
                [companyName],
                [companyAddress],
                [companyCity],
                [reportTitle],
                ['Date Range', `${fromDate} to ${toDate}`],
                [],
                ['PO No', 'Item', 'Ordered Qty', 'Received Qty', 'Pending Qty', 'Status'],
                ...rows
            ];
            const ws = XLSX.utils.aoa_to_sheet(wsData);
            ws['!cols'] = [{
                wch: 18
            }, {
                wch: 28
            }, {
                wch: 14
            }, {
                wch: 14
            }, {
                wch: 14
            }, {
                wch: 20
            }];
            XLSX.utils.book_append_sheet(wb, ws, 'ReceiverPendingMaterial');
            XLSX.writeFile(wb, 'Received_vs_Pending_Material_Report.xlsx');
        }

        function printReport() {
            const fromDate = document.getElementById('fromdate').value;
            const toDate = document.getElementById('todate').value;
            const baseUrl = document.getElementById('printDateRange').innerText.trim();
            const url = baseUrl + '?fromdate=' + fromDate + '&todate=' + toDate;
            window.open(url, '_blank');
        }

        document.getElementById('excelButton').addEventListener('click', exportToExcel);
        document.getElementById('printButton').addEventListener('click', printReport);
    </script>
@endsection
