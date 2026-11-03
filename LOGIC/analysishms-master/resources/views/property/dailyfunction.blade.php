@extends('property.layouts.main')
@section('main-container')
    {{-- ✅ DataTables CSS --}}
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.0/css/buttons.dataTables.css">

    {{-- ✅ jQuery + DataTables JS --}}
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
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


                                    <div class="text-center titlep mb-3">
                                        <h3>{{ $comp->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $comp->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">
                                            {{ $statename . ' - ' . $comp->city . ' - ' . $comp->pin }}
                                        </p>
                                        <p style="margin-top:-10px; font-size:16px;">Daily Function Report</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">
                                            From Date: <span id="fromdatep"></span> To Date: <span id="todatep"></span>
                                        </p>
                                    </div>


                                    <div>
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
                                                name="fromdate" id="fromdate">
                                        </div>
                                    </div>


                                    <div>
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $todate }}" class="form-control"
                                                name="todate" id="todate">
                                        </div>
                                    </div>


                                    <div>
                                        <label for="itemwise" class="col-form-label">Details</label>
                                        <select class="form-control" name="itemwise" id="itemwise">
                                            <option value="function" selected>Function</option>
                                            <option value="pending">Pending</option>
                                            <option value="advance">Advance</option>
                                        </select>
                                    </div>


                                    <div style="margin-top: 30px;">
                                        <button id="fetchbutton" name="fetchbutton" type="button"
                                            class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>


                            <div id="myloader" class="none text-center my-3">Loading...</div>


                            <div class="mt-3 table-responsive">
                                <table id="arrival-list-table" class="table table-hover" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>SNo.</th>
                                            <th>FP No</th>
                                            <th>Venue</th>
                                            <th>Start Date</th>
                                            <th>For Time</th>
                                            <th>End Date</th>
                                            <th>To Time</th>
                                            <th>Pax</th>
                                            <th>Pax Rate</th>
                                            <th>Function Type</th>
                                            <th>Party Name</th>
                                            <th>Amount</th>
                                            <th>Advance</th>
                                            <th>Type</th>
                                            <th>RectNo.</th>
                                            <th>Rect.Date</th>
                                            <th>Stauts</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
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

            function loadSalesRegister(fromdate, todate, itemwise) {
                $('#myloader').removeClass('none');

                if (dataTable) {
                    // 🔥 Reload DataTable with new params
                    dataTable.destroy(); // prevent reinit error
                    $('#arrival-list-table tbody').empty(); // clear table
                }

                dataTable = $('#arrival-list-table').DataTable({
                    processing: true,
                    serverSide: false,
                    destroy: true, // ✅ allows re-init
                    ajax: {
                        url: '/report',
                        type: "POST",
                        data: function(d) {
                            d.fromDate = fromdate;
                            d.toDate = todate;
                            d.itemwise = itemwise;
                            d._token = "{{ csrf_token() }}";
                        },
                        dataSrc: function(json) {
                            $('#myloader').addClass('none');

                            // ✅ Always return an array
                            if (!json) return [];

                            if (itemwise === "function" && Array.isArray(json.bookings)) return json
                                .bookings;
                            if (itemwise === "pending" && Array.isArray(json.pending)) return json
                                .pending;
                            if (itemwise === "advance" && Array.isArray(json.advances)) return json
                                .advances;

                            return [];
                        }
                    },
                    columns: [{
                            data: null,
                            render: (d, t, r, m) => m.row + 1
                        }, // SNo
                        {
                            data: "vno",
                            // defaultContent: ""
                        },
                        {
                            data: "Venue",
                            // defaultContent: ""
                        },
                        {
                            data: "fromdate",
                            // defaultContent: ""
                        },
                        {
                            data: "ForTime",
                            // defaultContent: ""
                        },
                        {
                            data: "todate",
                            // defaultContent: ""
                        },
                        {
                            data: "ToTime",
                            // defaultContent: ""
                        },
                        {
                            data: "Pax",
                            // defaultContent: ""
                        },
                        {
                            data: "Rate",
                            // defaultContent: ""
                        },
                        {
                            data: "FuncType",
                            // defaultContent: ""
                        },
                        {
                            data: "PartyName",
                            // defaultContent: ""
                        },
                        {
                            data: "Amount",
                            // defaultContent: ""
                        },
                        {
                            data: "Advance",
                            // defaultContent: ""
                        },
                        {
                            data: "Adv_Type",
                            // defaultContent: ""
                        },
                        {
                            data: "Adv_No",
                            // defaultContent: ""
                        },
                        {
                            data: "Adv_Date",
                            // defaultContent: ""
                        },
                        {
                            data: "Status",
                            // defaultContent: ""
                        }
                    ]
                });
            }

            $('#fetchbutton').on('click', function() {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let itemwise = $('#itemwise').val();

                if (!fromdate || !todate) {
                    alert("Please select From and To date");
                    return;
                }
                loadSalesRegister(fromdate, todate, itemwise);
            });
        });
    </script>
@endsection
