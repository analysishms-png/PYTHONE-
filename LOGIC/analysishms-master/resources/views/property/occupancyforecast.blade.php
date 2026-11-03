@extends('property.layouts.main')
@section('main-container')

<link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

<style>
    @media print {
        .no-print { display: none !important; }
        div.titlep {
            display: block;
            position: fixed;
            top: 0; left: 0; right: 0;
            background-color: white;
            text-align: center;
        }
        #forecasttable { margin-top: 250px; }
        @page { size: landscape; margin: 10mm; }
    }
</style>

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body box animate__animated animate__bounceIn">

                        {{-- Hidden company fields --}}
                        <input type="hidden" id="propertyid"  value="{{ $company->propertyid }}">
                        <input type="hidden" id="compname"    value="{{ $company->comp_name }}">
                        <input type="hidden" id="address"     value="{{ $company->address1 }}">
                        <input type="hidden" id="statename"   value="{{ $statename }}">
                        <input type="hidden" id="city"        value="{{ $company->city }}">
                        <input type="hidden" id="pin"         value="{{ $company->pin }}">
                        <input type="hidden" id="email"       value="{{ $company->email }}">
                        <input type="hidden" id="start_dt"    value="{{ $company->start_dt }}">
                        <input type="hidden" id="end_dt"      value="{{ $company->end_dt }}">

                        {{-- Print-only header (titlep hidden on screen via global CSS, fixed on print) --}}
                        <div class="text-center titlep">
                            <h3>{{ $company->comp_name }}</h3>
                            <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                            <p style="margin-top:-10px; font-size:16px;">{{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                            <p style="margin-top:-10px; font-size:16px;">Occupancy Forecast Report Day Wise</p>
                            <p style="text-align:left; margin-top:-10px; font-size:16px;">
                                From Date: <span id="ph_fromdate"></span> &nbsp; To Date: <span id="ph_todate"></span>
                            </p>
                        </div>

                        {{-- Filter row --}}
                        <form id="forecastform" class="no-print">
                            <div class="row align-items-end g-3 mb-3">
                                <div class="col-auto">
                                    <label class="form-label">From Date</label>
                                    <input type="date" id="fromdate" class="form-control" value="{{ $ncurdate }}">
                                </div>
                                <div class="col-auto">
                                    <label class="form-label">To Date</label>
                                    <input type="date" id="todate" class="form-control" value="{{ $ncurdate }}">
                                </div>
                                <div class="col-auto">
                                    <button type="button" id="fetchbtn" class="btn btn-primary mt-4">
                                        Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        {{-- Export / Print buttons --}}
                        <div class="d-flex gap-2 mb-3 no-print">
                            <button type="button" id="btn_excel" class="btn btn-success" disabled>
                                Excel <i class="fa fa-file-excel-o"></i>
                            </button>
                            <button type="button" id="btn_print" class="btn btn-primary" disabled>
                                Print <i class="fa-solid fa-print"></i>
                            </button>
                        </div>

                        {{-- Table --}}
                        <div id="table-container" class="table-responsive">
                            <table id="forecasttable" class="table table-bordered table-hover table-striped table-sm w-100">
                                <thead class="table-dark text-center">
                                    <tr>
                                        <th>Date</th>
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
                                <tbody class="text-center"></tbody>
                                <tfoot class="fw-bold bg-light text-center">
                                    <tr>
                                        <td>Total</td>
                                        <td id="ft_total_rooms">0</td>
                                        <td id="ft_arrival">0</td>
                                        <td id="ft_departure">0</td>
                                        <td id="ft_complimentary"></td>
                                        <td id="ft_stayover">0</td>
                                        <td id="ft_occupied">0</td>
                                        <td id="ft_occ">0</td>
                                        <td id="ft_pax">0</td>
                                        <td id="ft_available">0</td>
                                        <td id="ft_revenue">0</td>
                                        <td id="ft_arr">0</td>
                                        <td id="ft_revpar">0</td>
                                    </tr>
                                </tfoot>
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
    let dtTable = null;
    let currentFromdate = '';
    let currentTodate   = '';
    const csrfToken = "{{ csrf_token() }}";

    // ── Excel / Print buttons ─────────────────────────────────────────────────
    $('#btn_excel').on('click', function () {
        if (!currentFromdate || !currentTodate) return;
        window.open('/exportoccupancyforecast?fromdate=' + currentFromdate + '&todate=' + currentTodate, '_blank');
    });
    $('#btn_print').on('click', function () {
        if (!currentFromdate || !currentTodate) return;
        window.open('/printoccupancyforecast?fromdate=' + currentFromdate + '&todate=' + currentTodate, '_blank');
    });

    // ── Fetch & render ────────────────────────────────────────────────────────
    $('#fetchbtn').on('click', function () {
        const fromdate = $('#fromdate').val();
        const todate   = $('#todate').val();

        if (!fromdate || !todate) {
            pushNotify('error', 'Forecast', 'Please select both dates.', 'fade', 300, '', '', true, true, true, 2500, 20, 20, 'outline', 'right top');
            return;
        }
        if (fromdate > todate) {
            pushNotify('error', 'Forecast', 'From Date cannot be greater than To Date.', 'fade', 300, '', '', true, true, true, 2500, 20, 20, 'outline', 'right top');
            return;
        }

        // Update print header date spans
        $('#ph_fromdate').text(dmy(fromdate));
        $('#ph_todate').text(dmy(todate));

        if (typeof showLoader === 'function') showLoader();

        $.ajax({
            url: '/fetchoccupancyforecast',
            method: 'POST',
            data: {
                _token:   csrfToken,
                fromdate: fromdate,
                todate:   todate,
            },
            success: function (response) {
                if (typeof hideLoader === 'function') hideLoader();

                const rows   = response.rows   || [];
                const totals = response.totals || {};

                if (rows.length === 0) {
                    pushNotify('info', 'Forecast', 'No data found for the selected range.', 'fade', 300, '', '', true, true, true, 2500, 20, 20, 'outline', 'right top');
                    clearTable();
                    return;
                }

                pushNotify('success', 'Forecast', rows.length + ' day(s) loaded.', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                renderTable(rows, totals, fromdate, todate);
            },
            error: function (xhr) {
                if (typeof hideLoader === 'function') hideLoader();
                pushNotify('error', 'Forecast', 'Server error: ' + xhr.status, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
            }
        });
    });

    // ── Render DataTable ──────────────────────────────────────────────────────
    function renderTable(rows, totals, fromdate, todate) {
        // Remember current date range for Excel/Print buttons
        currentFromdate = fromdate;
        currentTodate   = todate;
        $('#btn_excel, #btn_print').prop('disabled', false);

        // Destroy existing instance
        if (dtTable && $.fn.DataTable.isDataTable('#forecasttable')) {
            dtTable.destroy();
            $('#forecasttable tbody').empty();
        }

        let tbody = '';
        rows.forEach(function (r) {
            tbody += `<tr>
                <td style="text-align:left;white-space:nowrap;">${r.date}</td>
                <td>${r.total_rooms}</td>
                <td>${r.expected_arrival}</td>
                <td>${r.expected_departure}</td>
                <td>${r.complimentary}</td>
                <td>${r.stay_over}</td>
                <td>${r.occupied_rooms}</td>
                <td>${fmt(r.occ_percent)}</td>
                <td>${r.total_pax}</td>
                <td>${r.available_rooms}</td>
                <td>${fmt(r.total_revenue)}</td>
                <td>${fmt(r.arr)}</td>
                <td>${fmt(r.revpar)}</td>
            </tr>`;
        });
        $('#forecasttable tbody').html(tbody);

        // Footer totals
        $('#ft_total_rooms').text(totals.total_rooms       || 0);
        $('#ft_arrival').text(totals.expected_arrival      || 0);
        $('#ft_departure').text(totals.expected_departure  || 0);
        $('#ft_stayover').text(totals.stay_over            || 0);
        $('#ft_occupied').text(totals.occupied_rooms       || 0);
        $('#ft_pax').text(totals.total_pax                 || 0);
        $('#ft_available').text(totals.available_rooms     || 0);
        $('#ft_revenue').text(totals.total_revenue         || 0);
        $('#ft_arr').text(totals.arr                       || 0);
        $('#ft_revpar').text(totals.revpar                 || 0);
        $('#ft_complimentary').text(totals.complimentary   || '');
        $('#ft_occ').text(totals.occ_percent               || 0);

        dtTable = $('#forecasttable').DataTable({
            pageLength: 50,
            ordering: false,
        });
    }

    function clearTable() {
        if (dtTable && $.fn.DataTable.isDataTable('#forecasttable')) {
            dtTable.destroy();
        }
        $('#forecasttable tbody').empty();
        ['ft_total_rooms','ft_arrival','ft_departure','ft_stayover',
         'ft_occupied','ft_pax','ft_available','ft_revenue','ft_arr','ft_revpar','ft_occ']
            .forEach(id => $('#' + id).text('0'));
        $('#ft_complimentary').text('');
        $('#btn_excel, #btn_print').prop('disabled', true);
        currentFromdate = '';
        currentTodate   = '';
    }

    // ── Helper: format number to 2 dp, dash if zero ───────────────────────────
    function fmt(val) {
        const n = parseFloat(val);
        if (isNaN(n) || n === 0) return '0';
        return n.toFixed(2);
    }

    // ── dmy helper (dd-mm-yyyy) — fallback if global dmy() not present ────────
    if (typeof dmy === 'undefined') {
        window.dmy = function (ymd) {
            if (!ymd) return '';
            const p = ymd.split('-');
            return p.length === 3 ? p[2] + '-' + p[1] + '-' + p[0] : ymd;
        };
    }
});
</script>

@endsection
