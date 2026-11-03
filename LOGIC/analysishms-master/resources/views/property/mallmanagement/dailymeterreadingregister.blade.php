@extends('property.layouts.main')
@section('main-container')

<style>
    .dmr .table th {
        background-color: #5c2d91;
        color: #fff;
        vertical-align: middle;
        text-align: center;
    }

    .dmr .table td {
        vertical-align: middle;
    }
</style>

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body dmr">

                        <form method="GET" action="{{ route('dailymeterreadingregister') }}" id="dmrForm">
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
                            <table class="table table-bordered table-striped table-hover" id="dmrTable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Date</th>
                                        <th>Floor</th>
                                        <th>Shop No</th>
                                        <th>Meter No</th>
                                        <th>Previous</th>
                                        <th>Current</th>
                                        <th>Photo</th>
                                        <th>MF</th>
                                        <th>Consumption</th>
                                        <th>Reading By</th>
                                        <th>Time</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($rows as $i => $row)
                                        <tr>
                                            <td class="text-center">{{ $i + 1 }}</td>
                                            <td class="text-center">
                                                {{ $row->ReadingDate ? \Carbon\Carbon::parse($row->ReadingDate)->format('d/m/Y') : '—' }}
                                            </td>
                                            <td>{{ $row->Floor ?? '—' }}</td>
                                            <td>{{ $row->ShopNo ?? '—' }}</td>
                                            <td>{{ $row->MeterNo ?? '—' }}</td>
                                            <td class="text-end">{{ $row->Previous }}</td>
                                            <td class="text-end">{{ $row->Current }}</td>
                                            <td class="text-center" data-raw-photo="{{ $row->Photo }}">
                                                @php
                                                    $photoUrl = null;
                                                    if (!empty($row->Photo)) {
                                                        $p = trim($row->Photo);
                                                        // Strip storage/ prefix if present (legacy)
                                                        $p = ltrim(preg_replace('#^/?storage/#i', '', $p), '/');
                                                        // Append .jpg if stored without extension
                                                        if (!pathinfo($p, PATHINFO_EXTENSION)) {
                                                            $p .= '.jpg';
                                                        }
                                                        $photoUrl = asset($p);
                                                    }
                                                @endphp
                                                @if($photoUrl)
                                                    <a href="{{ $photoUrl }}" target="_blank">
                                                        <img src="{{ $photoUrl }}"
                                                             height="50"
                                                             style="border-radius:4px; border:1px solid #ccc; cursor:zoom-in;"
                                                             alt="Photo"
                                                             onload="this.style.display='inline-block';"
                                                             onerror="this.style.display='none'; this.parentElement.insertAdjacentText('afterend','—');">
                                                    </a>
                                                @else
                                                    —
                                                @endif
                                            </td>
                                            <td class="text-center">{{ $row->MF }}</td>
                                            <td class="text-end fw-semibold">{{ $row->Consumption }}</td>
                                            <td>{{ $row->ReadingBy ?? '—' }}</td>
                                            <td>
                                                @if($row->Time)
                                                    {{ \Carbon\Carbon::parse($row->Time)->format('d/m/Y h:i A') }}
                                                @else
                                                    —
                                                @endif
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="12" class="text-center text-muted py-4">
                                                No meter readings found for the selected date range.
                                            </td>
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

<script>
    $(document).ready(function () {
        function fromDateValue() { return $('#from_date').val() || ''; }
        function toDateValue()   { return $('#to_date').val()   || ''; }

        $('#printBtn').on('click', function () {
            var url = '{{ route("printdailymeterreadingregister") }}'
                    + '?from_date=' + encodeURIComponent(fromDateValue())
                    + '&to_date='   + encodeURIComponent(toDateValue());
            window.open(url, '_blank');
        });

        $('#excelBtn').on('click', function () {
            var url = '{{ route("exceldailymeterreadingregister") }}'
                    + '?from_date=' + encodeURIComponent(fromDateValue())
                    + '&to_date='   + encodeURIComponent(toDateValue());
            window.location.href = url;
        });
    });
</script>

@endsection