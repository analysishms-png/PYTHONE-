@extends('property.layouts.main')
@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.0/css/buttons.dataTables.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/dataTables.buttons.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.print.min.js"></script>
    <style>
        .vacant-row td {
            font-weight: bold;
        }

        @media print {
            @page {
                margin: 0;
                size: landscape;
            }
        }
    </style>
     <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ids = ['fromdate']; // sab IDs ek array me
            const observer = new MutationObserver(muts =>
                muts.forEach(m => m.target.removeAttribute('readonly'))
            );

            ids.forEach(id => {
                const el = document.getElementById(id);
                if (el) {
                    el.removeAttribute('readonly');
                    observer.observe(el, { attributes: true, attributeFilter: ['readonly'] });
                }
            });
        });
    </script>
    <div class="content-body possalereg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <form action="">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $comp->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $comp->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $fromdate }}" name="ncurdatef" id="ncurdatef">
                                    <input type="hidden" value="{{ $comp->propertyid }}" id="propertyid" name="propertyid">

                                    <div class="text-center titlep">
                                        <h3>{{ $comp->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $comp->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $statename . ' - ' . $comp->city . ' - ' . $comp->pin }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">Look Up Room Type Report</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span id="fromdatep"></span> To Date: <span id="todatep"></span></p>
                                    </div>

                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <label for="resstatus" class="col-form-label">Status</label>
                                        <select class="form-control" name="resstatus" id="resstatus">
                                            <option value="all" selected>All</option>
                                            @foreach ($resstatus as $item)
                                                <option value="{{ $item->ResStatus }}">{{ $item->ResStatus }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                    </div>
                                </div>
                            </form>

                            <div class="mt-3 table-responsive">
                                <table id="lookuproomtypetbl" class="table table-hover availability-table" style="width:100%">
                                    <thead>

                                    </thead>
                                    <tbody>

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
        $(document).ready(function() {
            let dataTable;

            $(document).on('click', '#fetchbutton', function() {
                let fromdate = $('#fromdate').val();
                let resstatus = $('#resstatus').val();
                showLoader();
                if (fromdate == '') {
                    pushNotify('error', fromdate == '' ? 'Please Select From Date' : 'Please Select To Date');
                    hideLoader();
                    return;
                }

                if ($.fn.DataTable.isDataTable('#lookuproomtypetbl')) {
                    $('#lookuproomtypetbl').DataTable().destroy();
                }

                // Clear table content
                $('#lookuproomtypetbl thead').empty();
                $('#lookuproomtypetbl tbody').empty();

                $.ajax({
                    url: '/lookuproomtypefetch',
                    method: 'POST',
                    data: {
                        fromdate: fromdate,
                        resstatus: resstatus,
                        _token: "{{ csrf_token() }}"
                    },
                    success: function(results) {
                        let totalrooms = results.totalrooms;

                        let thead = $('#lookuproomtypetbl thead');
                        let newthead = `
                                        <tr>
                                            <th rowspan="2">Room Type</th>
                                        </tr>
                                        <tr class="day-names">
                                        </tr>`;
                        thead.html(newthead);

                        const startdate = new Date(fromdate);
                        const numberofdays = 21;
                        const daysofweek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

                        const dateheaderrow = $('#lookuproomtypetbl thead tr:first');
                        const daynamerow = $('#lookuproomtypetbl thead tr.day-names');

                        let alldates = [];

                        for (let i = 0; i < numberofdays; i++) {
                            const currentdate = new Date(startdate);
                            currentdate.setDate(startdate.getDate() + i);

                            const datestr = `${currentdate.getDate().toString().padStart(2, '0')}/${(currentdate.getMonth() + 1).toString().padStart(2, '0')}`;
                            const fulldate = currentdate.toISOString().split('T')[0];
                            dateheaderrow.append(`<th data-fulldate='${fulldate}'>${datestr}</th>`);
                            alldates.push(fulldate);

                            const dayname = daysofweek[currentdate.getDay()];
                            daynamerow.append(`<th class="day-name">${dayname}</th>`);
                        }

                        let tbody = $('#lookuproomtypetbl tbody');
                        
                        let totalRow = `<tr class="total-row">
                            <td class="room-type-cell">Total Rooms</td>
                            ${Array(numberofdays).fill(`<td>${totalrooms}</td>`).join('')}
                        </tr>`;
                        tbody.append(totalRow);

                        const totalCounts = {};
                        
                        results.roomcategories.forEach(category => {
                            let row = `<tr class='room-type-celltr'><td class="room-type-cell">${category.category}</td>`;
                            alldates.forEach(date => {
                                const busyCount = category.daily_busy_counts[date] || 0;
                                row += `<td>${busyCount}</td>`;
                                totalCounts[date] = (totalCounts[date] || 0) + busyCount;
                            });

                            row += '</tr>';
                            tbody.append(row);
                        });

                        let ttr = `<tr class='vacant-row'><td>Total Vacant Room</td>`;
                        alldates.forEach(date => {
                            ttr += `<td>${totalCounts[date] || 0}</td>`;
                        });
                        ttr += '</tr>';
                        tbody.append(ttr);

                        dataTable = $('#lookuproomtypetbl').DataTable({
                            scrollX: true,
                            dom: 'Bfrtip',
                            buttons: [{
                                    extend: 'print',
                                    title: '',
                                    messageTop: function() {
                                        return $('.titlep').html();
                                    },
                                },
                                'excel',
                                'csv',
                            ]
                        });

                        hideLoader();
                    },
                    error: function() {
                        hideLoader();
                        pushNotify('error', 'Failed to fetch data');
                    }
                });
            });

        });
    </script>
@endsection
