@extends('property.layouts.main')
@section('main-container')

<style>
    .fbr .table th {
        background-color: #5c2d91;
        color: #fff;
        vertical-align: middle;
        text-align: center;
        white-space: nowrap;
        font-size: 12px;
    }

    .fbr .table td {
        vertical-align: middle;
        font-size: 12px;
        white-space: nowrap;
    }

    .fbr tfoot td {
        font-weight: 600;
        background-color: #f1eaf9;
    }
</style>

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body fbr">

                        <form method="GET" action="{{ route('facilitybillregister') }}" id="fbrForm">
                            <div class="row g-2 mb-3 align-items-end">
                                <div class="col-auto">
                                    <label for="from_date" class="form-label mb-1">From Date</label>
                                    <input type="date" class="form-control form-control-sm" name="from_date"
                                        id="from_date" value="{{ $fromDate }}">
                                </div>
                                <div class="col-auto">
                                    <label for="to_date" class="form-label mb-1">To Date</label>
                                    <input type="date" class="form-control form-control-sm" name="to_date"
                                        id="to_date" value="{{ $toDate }}">
                                </div>
                                <div class="col-auto">
                                    <button type="submit" class="btn btn-success btn-sm">
                                        Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <div class="d-flex gap-2 mb-3">
                            <button type="button" id="printBtn" class="btn btn-primary btn-sm">
                                <i class="fas fa-print"></i> Print Report
                            </button>
                            <button type="button" id="excelBtn" class="btn btn-success btn-sm">
                                <i class="fas fa-file-excel"></i> Export Excel
                            </button>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover" id="fbrTable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Bill No</th>
                                        <th>Date</th>
                                        <th>Party</th>
                                        <th>Facility</th>
                                        <th>For Period</th>
                                        <th>To Period</th>
                                        <th>Unit</th>
                                        <th>Rate</th>
                                        <th>Amount</th>
                                        <th>CGST %</th>
                                        <th>CGST</th>
                                        <th>SGST %</th>
                                        <th>SGST</th>
                                        <th>IGST %</th>
                                        <th>IGST</th>
                                        <th>Discount</th>
                                        <th>Round Off</th>
                                        <th>Net Amount</th>
                                        <th>Remark</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $totAmount = 0; $totCgst = 0; $totSgst = 0; $totIgst = 0;

                                        // Group lines by bill so Bill No / Date / Party print only once.
                                        $grouped = [];
                                        foreach ($rows as $row) {
                                            $key = $row->Docid ?? ($row->BillNo ?? spl_object_hash($row));
                                            $grouped[$key][] = $row;
                                        }
                                    @endphp
                                    @forelse($grouped as $group)
                                        @php $lineCount = count($group); @endphp
                                        @foreach($group as $j => $row)
                                            @php
                                                $totAmount += (float) ($row->Amount ?? 0);
                                                $totCgst   += (float) ($row->CGSTAmt ?? 0);
                                                $totSgst   += (float) ($row->SGSTAmt ?? 0);
                                                $totIgst   += (float) ($row->IGSTAmt ?? 0);
                                            @endphp
                                            <tr>
                                                <td class="text-center">{{ $loop->parent->iteration }}</td>
                                                @if($j == 0)
                                                    <td rowspan="{{ $lineCount }}">{{ $row->BillNo ?? '—' }}</td>
                                                    <td rowspan="{{ $lineCount }}" class="text-center">
                                                        {{ $row->VDate ? \Carbon\Carbon::parse($row->VDate)->format('d/m/Y') : '—' }}
                                                    </td>
                                                    <td rowspan="{{ $lineCount }}">{{ $row->Party ?? '—' }}</td>
                                                @endif
                                                <td>{{ $row->Facility ?? '—' }}</td>
                                                <td class="text-center">
                                                    {{ $row->ForPeriod ? \Carbon\Carbon::parse($row->ForPeriod)->format('d/m/Y') : '—' }}
                                                </td>
                                                <td class="text-center">
                                                    {{ $row->ToPeriod ? \Carbon\Carbon::parse($row->ToPeriod)->format('d/m/Y') : '—' }}
                                                </td>
                                                <td class="text-end">{{ number_format((float) ($row->Unit ?? 0), 2) }}</td>
                                                <td class="text-end">{{ number_format((float) ($row->UnitRate ?? 0), 2) }}</td>
                                                <td class="text-end">{{ number_format((float) ($row->Amount ?? 0), 2) }}</td>
                                                <td class="text-end">{{ number_format((float) ($row->CGSTPer ?? 0), 2) }}</td>
                                                <td class="text-end">{{ number_format((float) ($row->CGSTAmt ?? 0), 2) }}</td>
                                                <td class="text-end">{{ number_format((float) ($row->SGSTPer ?? 0), 2) }}</td>
                                                <td class="text-end">{{ number_format((float) ($row->SGSTAmt ?? 0), 2) }}</td>
                                                <td class="text-end">{{ number_format((float) ($row->IGSTPer ?? 0), 2) }}</td>
                                                <td class="text-end">{{ number_format((float) ($row->IGSTAmt ?? 0), 2) }}</td>
                                                @if($j == 0)
                                                    {{-- Bill-level sundries — sirf bill ki pehli line pe ek baar --}}
                                                    <td rowspan="{{ $lineCount }}" class="text-end">{{ number_format((float) ($row->Discount ?? 0), 2) }}</td>
                                                    <td rowspan="{{ $lineCount }}" class="text-end">{{ number_format((float) ($row->RoundOff ?? 0), 2) }}</td>
                                                    <td rowspan="{{ $lineCount }}" class="text-end">{{ number_format((float) ($row->NetAmount ?? 0), 2) }}</td>
                                                @endif
                                                <td>{{ $row->Remark ?? '—' }}</td>
                                            </tr>
                                        @endforeach
                                    @empty
                                        <tr>
                                            <td colspan="20" class="text-center text-muted py-4">
                                                No facility bills found for the selected date range.
                                            </td>
                                        </tr>
                                    @endforelse
                                </tbody>
                                @if(count($rows) > 0)
                                    <tfoot>
                                        <tr>
                                            <td colspan="9" class="text-end">Total</td>
                                            <td class="text-end">{{ number_format($totAmount, 2) }}</td>
                                            <td></td>
                                            <td class="text-end">{{ number_format($totCgst, 2) }}</td>
                                            <td></td>
                                            <td class="text-end">{{ number_format($totSgst, 2) }}</td>
                                            <td></td>
                                            <td class="text-end">{{ number_format($totIgst, 2) }}</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </tfoot>
                                @endif
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        function query() {
            return 'from_date=' + encodeURIComponent($('#from_date').val()) +
                   '&to_date=' + encodeURIComponent($('#to_date').val());
        }

        $('#printBtn').on('click', function () {
            window.open("{{ route('printfacilitybillregister') }}?" + query(), '_blank');
        });

        $('#excelBtn').on('click', function () {
            window.location.href = "{{ route('excelfacilitybillregister') }}?" + query();
        });
    });
</script>

@endsection
