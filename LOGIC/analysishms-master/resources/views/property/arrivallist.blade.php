@extends('property.layouts.main')
@section('main-container')
@include('cdns.select')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.0/css/buttons.dataTables.css">
    {{-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> --}}
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/dataTables.buttons.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.print.min.js"></script>

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
                                        <p style="margin-top:-10px; font-size:16px;">Arrival List Report</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span id="fromdatep"></span> To Date: <span id="todatep"></span></p>
                                    </div>

                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="todate" id="todate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <label for="pendingyn" class="col-form-label">Pending Y/N</label>
                                        <select class="form-control" name="pendingyn" id="pendingyn">
                                            <option value="pending">Pending</option>
                                            <option value="all" selected>All</option>
                                        </select>
                                    </div>

                                    <div class="">
                                        <label for="busssource" class="col-form-label">Business Source</label>
                                        <select class="form-control select2-multiple" name="busssource" id="busssource">
                                            <option value="all" selected>All</option>
                                            @foreach ($busssource as $bs)
                                                <option value="{{ $bs->BussSource }}">{{ $bs->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="">
                                        <label for="bookingsource" class="col-form-label">Booking Source</label>
                                        <select class="form-control select2-multiple" name="bookingsource" id="bookingsource">
                                            <option value="all" selected>All</option>
                                            @foreach ($bookingsource as $bks)
                                                <option value="{{ $bks->MarketSeg }}">{{ $bks->MarketSeg }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                    </div>
                                </div>
                            </form>

                            <div class="mt-3 table-responsive">
                                <table id="arrival-list-table" class="table -table-hover" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Res. No</th>
                                            <th>Guest Name</th>
                                            <th>MobNo</th>
                                            <th>Company</th>
                                            <th>Travel</th>
                                            <th>Room Details</th>
                                            <th>Arrival Date</th>
                                            <th>Pax</th>
                                            <th>Child</th>
                                            <th>Departure Date</th>
                                            <th>Plan Name</th>
                                            <th>Room No</th>
                                            <th>Room Type</th>
                                            <th>Booked By</th>
                                            <th>Reservation Status</th>
                                            <th>Remarks</th>
                                            <th>Tarrif</th>
                                            <th>Room Charge</th>
                                            <th>Extra's</th>
                                            <th>Advance</th>
                                            <th>Balance</th>
                                            <th>Uname</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                    <tfoot>
                                        <tr>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">-</td>
                                            <td style="font-weight: bold;">Total</td>
                                            <td id="tfoot-tarrif" style="font-weight: bold;">0.00</td>
                                            <td id="tfoot-roomcharge" style="font-weight: bold;">0.00</td>
                                            <td id="tfoot-extras" style="font-weight: bold;">0.00</td>
                                            <td id="tfoot-advance" style="font-weight: bold;">0.00</td>
                                            <td id="tfoot-balance" style="font-weight: bold;">0.00</td>
                                            <td style="font-weight: bold;">-</td>
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
        $(document).ready(function() {
            let dataTable;

            $(document).on('click', '#fetchbutton', function() {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let pendingyn = $('#pendingyn').val();

                if (fromdate == '' || todate == '') {
                    pushNotify('error', fromdate == '' ? 'Please Select From Date' : 'Please Select To Date');
                    return;
                }

                $('#myloader').removeClass('none');

                let busssource = $('#busssource').val();
                let bookingsource = $('#bookingsource').val();

                $.ajax({
                    url: '/arrivallistfetch',
                    method: 'POST',
                    data: {
                        fromdate: fromdate,
                        todate: todate,
                        pendingyn: pendingyn,
                        busssource: busssource,
                        bookingsource: bookingsource,
                        _token: "{{ csrf_token() }}"
                    },
                    success: function(results) {
                        $('#myloader').addClass('none');
                        $('#fromdatep').text(formatDate(fromdate));
                        $('#todatep').text(formatDate(todate));

                        if (dataTable) {
                            dataTable.destroy();
                        }

                        let tbody = $('#arrival-list-table tbody');
                        tbody.empty();

                        let grouped = {};

                        results.data.forEach(function(item) {
                            let res = item.ResNo;
                            if (!grouped[res]) grouped[res] = [];
                            grouped[res].push(item);
                        });

                        let sortedResNos = Object.keys(grouped).sort((a, b) => parseInt(a) - parseInt(b)).reverse();
                        
                        let totalTarrif = 0;
                        let totalRoomCharge = 0;
                        let totalExtras = 0;
                        let totalAdvance = 0;
                        let totalBalance = 0;

                        sortedResNos.forEach(function(resNo) {
                            let rows = grouped[resNo];

                            let maxDays = Math.max(...rows.map(r => parseInt(r.NoDays) || 1));
                            let totalExtrasForRes = 0;

                            rows.forEach(item => {
                                if (item.room_inclusive && Array.isArray(item.room_inclusive)) {
                                    item.room_inclusive.forEach(extra => {
                                        let amt = parseFloat(extra.amount) || 0;
                                        let post = String(extra.chargepost || '').toLowerCase();

                                        if (post === 'daily') {
                                            totalExtrasForRes += amt * maxDays;
                                        } else {
                                            totalExtrasForRes += amt;
                                        }
                                    });
                                }
                            });

                            rows.forEach(item => {
                                let roomcharge = parseFloat(item.tarrifamount) || 0;
                                let noofdays = parseInt(item.NoDays) || 1;
                                let totalroomcharge = roomcharge * noofdays;
                                let extrasDisplay = totalExtrasForRes / 2;
                                let advance = parseFloat(item.advance) || 0;
                                let balance = totalroomcharge + extrasDisplay - advance;

                                totalTarrif += roomcharge;
                                totalRoomCharge += totalroomcharge;
                                totalExtras += extrasDisplay;
                                totalAdvance += advance;
                                totalBalance += balance;

                                tbody.append(`
                                        <tr>
                                            <td>${item.ResNo || ''}</td>
                                            <td>${item.GuestName || ''}</td>
                                            <td>${item.MobNo || ''}</td>
                                            <td>${item.Company || ''}</td>
                                            <td>${item.travelname || ''}</td>
                                            <td>${item.RoomDet || ''}</td>
                                            <td>${item.ArrDate || ''}</td>
                                            <td>${item.Pax || ''}</td>
                                            <td>${item.Child || ''}</td>
                                            <td>${item.DepDate || ''}</td>
                                            <td>${item.PlanName || ''}</td>
                                            <td>${item.RoomNo || ''}</td>
                                            <td>${item.RoomType || ''}</td>
                                            <td>${item.BookedBy || ''}</td>
                                            <td>${item.ResStatus || ''}</td>
                                            <td>${item.Remarks || ''}</td>
                                            <td>${roomcharge.toFixed(2)}</td>
                                            <td>${totalroomcharge.toFixed(2)}</td>
                                            <td>${extrasDisplay.toFixed(2)}</td>
                                            <td>${advance.toFixed(2)}</td>
                                            <td>${balance.toFixed(2)}</td>
                                            <td>${item.U_Name || ''}</td>
                                        </tr>
                                    `);
                            });

                        });

                        $('#tfoot-tarrif').text(totalTarrif.toFixed(2));
                        $('#tfoot-roomcharge').text(totalRoomCharge.toFixed(2));
                        $('#tfoot-extras').text(totalExtras.toFixed(2));
                        $('#tfoot-advance').text(totalAdvance.toFixed(2));
                        $('#tfoot-balance').text(totalBalance.toFixed(2));

                        dataTable = $('#arrival-list-table').DataTable({
                            scrollX: true,
                            ordering: true,
                            order: [],
                            dom: 'Bfrtip',
                            buttons: [
                                {
                                    extend: 'print',
                                    title: '',
                                    messageTop: function() {
                                        return $('.titlep').html();
                                    },
                                    exportOptions: {
                                        columns: ':visible',
                                        orthogonal: 'export'
                                    }
                                },
                                {
                                    extend: 'excelHtml5',
                                    title: 'Arrival List Report',
                                    filename: 'arrival_list_' + fromdate + '_to_' + todate,
                                    exportOptions: {
                                        columns: ':not(.no-export)',
                                        orthogonal: 'export',
                                        rows: ':not(.footer-row)'
                                    }
                                },
                                {
                                    extend: 'csvHtml5',
                                    title: 'Arrival List Report',
                                    filename: 'arrival_list_' + fromdate + '_to_' + todate,
                                    exportOptions: {
                                        columns: ':visible',
                                        orthogonal: 'export',
                                        rows: ':not(.footer-row)'
                                    }
                                },
                                {
                                    extend: 'pdfHtml5',
                                    title: 'Arrival List Report',
                                    filename: 'arrival_list_' + fromdate + '_to_' + todate,
                                    orientation: 'landscape',
                                    pageSize: 'A4',
                                    margin: [10, 10, 10, 10],
                                    exportOptions: {
                                        columns: ':visible',
                                        orthogonal: 'export',
                                        rows: ':not(.footer-row)'
                                    }
                                }
                            ]
                        });
                    },
                    error: function() {
                        $('#myloader').addClass('none');
                        pushNotify('error', 'Failed to fetch data');
                    }
                });
            });

            function formatDate(dateString) {
                if (!dateString) return '';
                const date = new Date(dateString);
                const options = { year: 'numeric', month: 'long', day: 'numeric' };
                return date.toLocaleDateString('en-US', options);
            }

        });


        // old calculations
        // if (results && results.data && Array.isArray(results.data)) {
        //     results.data.forEach(function(item) {
        //         let roomcharge = parseFloat(String(item.tarrifamount || 0).replace(/,/g, '')) || 0;
        //         let noofdays = parseInt(item.NoDays) || 1;

        //         let totalextras = 0.00;

        //         if (item.room_inclusive && Array.isArray(item.room_inclusive)) {
        //             item.room_inclusive.forEach(function(extra) {
        //                 let amt = parseFloat(String(extra.amount || 0).replace(/,/g, '')) || 0.00;
        //                 let chargepost = String(extra.chargepost || '').trim().toLowerCase();
        //                 let daysForExtra = parseInt(extra.NoDays) || noofdays || 1;

        //                 if (chargepost === 'daily') {
        //                     totalextras += amt * daysForExtra;
        //                 } else {
        //                     totalextras += amt;
        //                 }
        //             });
        //         }

        //         let totalroomcharge = roomcharge * noofdays;

        //         tbody.append(`
    //     <tr>
    //         <td>${item.ResNo || ''}</td>
    //         <td>${item.GuestName || ''}</td>
    //         <td>${item.MobNo || ''}</td>
    //         <td>${item.Company || ''}</td>
    //         <td>${item.travelname || ''}</td>
    //         <td>${item.RoomDet || ''}</td>
    //         <td>${item.ArrDate || ''}</td>
    //         <td>${item.Pax || ''}</td>
    //         <td>${item.Child || ''}</td>
    //         <td>${item.DepDate || ''}</td>
    //         <td>${item.PlanName || ''}</td>
    //         <td>${item.RoomNo || ''}</td>
    //         <td>${item.RoomType || ''}</td>
    //         <td>${item.BookedBy || ''}</td>
    //         <td>${item.ResStatus || ''}</td>
    //         <td>${item.Remarks || ''}</td>
    //         <td>${roomcharge.toFixed(2)}</td>
    //         <td>${totalroomcharge.toFixed(2)}</td>
    //         <td>${totalextras.toFixed(2)}</td>
    //     </tr>
    // `);
        //     });
        // }
    </script>
@endsection
