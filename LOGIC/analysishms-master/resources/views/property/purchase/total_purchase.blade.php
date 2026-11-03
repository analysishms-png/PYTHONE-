@extends('property.layouts.main')

@section('main-container')
<div class="content-body">
    <div class="container-fluid">

        <!-- Back + Print Button -->
        <div style="display:flex; justify-content:space-between; margin-bottom:15px;">

          <a href="{{ route('invdashboard') }}" class="btn btn-secondary mb-3">
                ← Back to Dashboard
            </a>

            <button onclick="printReport()"
                style="background:#0d6efd; color:white; padding:8px 15px; border:none; border-radius:5px;">
                🖨 Print Report
            </button>

        </div>

        <div class="card shadow-sm p-3" id="printTable">

            <!-- Print Header -->
            <div id="printHeader"
                 style="text-align:center; margin-bottom:15px; display:none;">

                <h3 style="margin:0;">
                    {{ companydata()->comp_name ?? 'Company Name' }}
                </h3>

                <h5 style="margin:0;">
                    Purchase Summary Report
                </h5>

                <p style="margin:0;">
                    {{ now()->format('d-m-Y') }}
                </p>

            </div>

            <div class="table-responsive" style="width:100%;">

                <table class="table table-bordered table-hover align-middle text-center">

                    <thead class="table-light">
                        <tr>
                            <th rowspan="2" class="text-start">Group Name</th>
                            <th colspan="2">Today</th>
                            <th colspan="2">MTD</th>
                            <th colspan="2">YTD</th>
                        </tr>
                        <tr>
                            <th>Cash</th>
                            <th>Credit</th>
                            <th>Cash</th>
                            <th>Credit</th>
                            <th>Cash</th>
                            <th>Credit</th>
                        </tr>
                    </thead>

                    <tbody>
                        @forelse ($rows as $row)
                            <tr>
                                <td class="text-start fw-bold">
                                    {{ $row['godown'] }}
                                </td>

                                <td>{{ number_format($row['today_cash'], 2) }}</td>
                                <td>{{ number_format($row['today_credit'], 2) }}</td>
                                <td>{{ number_format($row['month_cash'], 2) }}</td>
                                <td>{{ number_format($row['month_credit'], 2) }}</td>
                                <td>{{ number_format($row['year_cash'], 2) }}</td>
                                <td>{{ number_format($row['year_credit'], 2) }}</td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="7" class="text-muted py-4">
                                    No purchase data available
                                </td>
                            </tr>
                        @endforelse
                    </tbody>

                    <tfoot class="table-light fw-bold">
                        <tr>
                            <td class="text-end">Total:</td>

                            <td>{{ number_format(collect($rows)->sum('today_cash'), 2) }}</td>
                            <td>{{ number_format(collect($rows)->sum('today_credit'), 2) }}</td>
                            <td>{{ number_format(collect($rows)->sum('month_cash'), 2) }}</td>
                            <td>{{ number_format(collect($rows)->sum('month_credit'), 2) }}</td>
                            <td>{{ number_format(collect($rows)->sum('year_cash'), 2) }}</td>
                            <td>{{ number_format(collect($rows)->sum('year_credit'), 2) }}</td>
                        </tr>
                    </tfoot>

                </table>

            </div>

        </div>
    </div>
</div>

<!-- Print Script -->
<script>
function printReport() {

    let header = document.getElementById('printHeader');
    let table = document.getElementById('printTable');

    header.style.display = "block";

    document.body.querySelectorAll("body *").forEach(el => {
        el.style.visibility = "hidden";
    });

    header.style.visibility = "visible";
    table.style.visibility = "visible";

    window.print();

    location.reload();
}
</script>

@endsection
