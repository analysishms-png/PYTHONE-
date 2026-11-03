@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body inhouse">
                            <input style="display: none;" type="date" id="sss"
                                value="{{ date('Y-m-d', strtotime('-1 day', strtotime(ncurdate()))) }}">

                            <div class="modal fade" id="changeprofilemodal" tabindex="-1"
                                aria-labelledby="changeprofilemodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div style="width: 57rem;" class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="changeprofilemodalLabel">Profile Change For: <span
                                                    class="ADA" id="profilechangespan"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="changeprofilemodalLabel">Folio No.:
                                                <span class="BANX" id="profilechangecode"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="changeprofileframe" src="" frameborder="0"
                                                style="width: 100%; height: 60rem;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="guestprofilemodal" tabindex="-1"
                                aria-labelledby="guestprofilemodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div style="width: 57rem;" class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="guestprofilemodalLabel">Add Guest For: <span
                                                    class="ADA" id="guestprofilechangespan"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="guestprofilemodalLabel">Folio No.:
                                                <span class="BANX" id="guestprofilechangecode"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="guestaddprofileframe" src="" frameborder="0"
                                                style="width: 100%; height: 60rem;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="ammendstaymodal" tabindex="-1"
                                aria-labelledby="ammendstaymodalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="ammendstaymodalLabel">Ammend Stay For: <span
                                                    class="ADA" id="ammendstayspan"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="ammendstaymodalLabel">Folio No.:
                                                <span class="BANX" id="guestcode1"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="ammenstayiframe" src="" frameborder="0"
                                                style="width: 100%; height: 15em;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="guestledgermodal" tabindex="-1"
                                aria-labelledby="guestledgermodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="guestledgermodalLabel">Guest Ledger For: <span
                                                    class="ADA" id="guestledgerspan"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="guestledgermodalLabel">Folio No.:
                                                <span class="BANX" id="guestcode2"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="guestledgeriframe" src="" frameborder="0"
                                                style="width: 100%; height: 35em;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="guestchargemodal" tabindex="-1"
                                aria-labelledby="guestchargemodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="guestchargemodalLabel">Guest Charge Summary For:
                                                <span class="ADA" id="guestchargespan"></span>
                                            </h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="guestchargemodalLabel">Folio No.:
                                                <span class="BANX" id="guestcode7"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="guestchargeiframe" src="" frameborder="0"
                                                style="width: 100%; height: 35em;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="roomchangemodal" tabindex="-1"
                                aria-labelledby="roomchangemodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="roomchangemodalLabel">Room Change For: <span
                                                    class="ADA" id="roomchangespan"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="roomchangemodalLabel">Folio No.:
                                                <span style="display: none;" id="docidd"></span>
                                                <span class="BANX" id="guestcode3"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="roomchangeiframe" src="" frameborder="0"
                                                style="width: 100%; height: 37em;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="advchargemodal" tabindex="-1"
                                aria-labelledby="advchargemodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="advchargemodalLabel">Advance Change For: <span
                                                    class="ADA" id="advchargespan"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="advchargemodalLabel">Folio No.:
                                                <span style="display: none;" id="docidd"></span>
                                                <span class="BANX" id="guestcode4"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="advchargeiframe" src="" frameborder="0"
                                                style="width: 100%; height: 37em;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="billsettlemodal" tabindex="-1"
                                aria-labelledby="billsettlemodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="billsettlemodalLabel">Bill Settlement For: <span
                                                    class="ADA" id="billsettlespan"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="billsettlemodalLabel">Folio No.:
                                                <span style="display: none;" id="docidd"></span>
                                                <span class="BANX" id="guestcode6"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="billsettleiframe" src="" frameborder="0"
                                                style="width: 100%; height: 37em;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="billprintmodal" tabindex="-1"
                                aria-labelledby="billprintmodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="billprintmodalLabel">Bill Print For: <span
                                                    class="ADA" id="billprintspan"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="billprintmodalLabel">Folio No.:
                                                <span class="BANX" id="guestcode5"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="billprintiframe" src="" frameborder="0"
                                                style="width: 100%; height: 35em;"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- Button Groups -->
                            <div class="row mb-2">
                                <div class="col-12">
                                    <div class="" role="group">
                                        <button disabled type="button" class="btn isbtn btn-change" data-toggle="modal"
                                            data-target="#changeprofilemodal">
                                            Change Guest Profile
                                        </button>
                                        <button disabled type="button" class="btn isbtn btn-change" data-toggle="modal"
                                            data-target="#guestprofilemodal">
                                            Add Guest Profile
                                        </button>
                                        <button disabled type="button" class="btn isbtn btn-amend" data-toggle="modal"
                                            data-target="#ammendstaymodal">
                                            Amend Stay
                                        </button>
                                        <button disabled type="button" class="btn isbtn btn-guestledger"
                                            data-toggle="modal" data-target="#guestledgermodal">
                                            Guest Ledger
                                        </button>
                                        <button disabled type="button" class="btn isbtn btn-guestcharge"
                                            data-toggle="modal" data-target="#guestchargemodal">
                                            Ledger Item
                                        </button>
                                        <button disabled type="button" class="btn isbtn btn-room btn-roomchange"
                                            data-toggle="modal" data-target="#roomchangemodal">
                                            Room Change
                                        </button>
                                        <button disabled type="button" class="btn isbtn btn-extra" data-toggle="modal"
                                            data-target="#advchargemodal">
                                            Advance Charge / Paid Out
                                        </button>
                                        <button disabled type="button" class="btn isbtn btn-billprint"
                                            data-toggle="modal" data-target="#billprintmodal" id="billprintbtn">
                                            Bill Print 📄
                                        </button>
                                        @if (Auth::user()->useroradmin === 'admin' || optional(userdata())->billcancel == 1)
                                            <button disabled type="button" class="btn isbtn btn-billcancel" id="billCancelBtn">
                                                Bill Cancel
                                            </button>
                                        @endif
                                        <button disabled type="button" class="btn isbtn btn-billsettle"
                                            data-toggle="modal" data-target="#billsettlemodal" id="billSettleBtn">
                                            Bill Settle
                                        </button>
                                        <button type="button" class="btn hidden isbtn btn-success btn-compsettle"
                                            id="compsettle">Comp. Settle</button>
                                    </div>
                                </div>
                            </div>

                            <!-- Table Container -->
                            <div class="table-container" style="overflow-x: auto; width: 100%;">
                                <div class="table-responsive">
                                    <table id="guestinhouse" class="table table-bordered mb-0" style="width: 100%;">
                                        <thead>
                                            <tr>
                                                <th>Folio No</th>
                                                <th>Room No</th>
                                                <th>Guest Name</th>
                                                <th>Arrival<br>Date</th>
                                                <th>Arr.<br>Time</th>
                                                <th>Departure<br>Date</th>
                                                <th>Guest<br>Status</th>
                                                <th>Company/Travel Agent</th>
                                                <th>Address</th>
                                                <th>City</th>
                                                <th>Country</th>
                                                <th>Plan</th>
                                                <th>Pax</th>
                                                <th>Leader</th>
                                                <th>SN</th>
                                                <th>Bill No</th>
                                            </tr>
                                        </thead>
                                        <tbody id="guestTableBody">
                                            <!-- Dynamic rows will be inserted here -->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="d-flex text-center flex-wrap" style="font-weight:700; color:#000;">

                                <!-- Legend -->
                                <div class="flex-fill p-2" style="background:#ffffff; color:#000;">In House Guest</div>
                                <div class="flex-fill p-2" style="background:#90ee90;">Guest Bill Printed</div>
                                <div class="flex-fill p-2" style="background:#FFC0CB;">Current Guest Selected</div>
                                <div class="flex-fill p-2" style="background:#add8e6;">Plan / Package Guest</div>
                                <div class="flex-fill p-2" style="background:#f4d35e;">Over Stay</div>

                                <!-- Room Status Codes -->
                                <div class="flex-fill p-2" style="background:#c2f0c2;">TR – {{ $roomStatusCounts['TR'] }}
                                </div>
                                <div class="flex-fill p-2" style="background:#b0e0e6;">OR – {{ $roomStatusCounts['OR'] }}
                                </div>
                                <div class="flex-fill p-2" style="background:#c2f0c2;">VR – {{ $roomStatusCounts['VR'] }}
                                </div>
                                <div class="flex-fill p-2" style="background:#ffe4b5;">OO – {{ $roomStatusCounts['OO'] }}
                                </div>
                                <div class="flex-fill p-2" style="background:#f8bfbf;">OD – {{ $roomStatusCounts['OD'] }}
                                </div>
                                <div class="flex-fill p-2" style="background:#c9c9ff;">OC – {{ $roomStatusCounts['OC'] }}
                                </div>
                                <div class="flex-fill p-2" style="background:#ffe4b5;">VD – {{ $roomStatusCounts['VD'] }}
                                </div>
                                <div class="flex-fill p-2" style="background:#d3d3d3;">VC – {{ $roomStatusCounts['VC'] }}
                                </div>

                            </div>

                            <!-- Today's Arrivals Section -->
                            <div class="todays-arrivals-banner cursor-pointer"
                                style="
                                padding: 15px 20px;
                                margin-top: 20px;
                                border-radius: 8px;
                                text-align: center;
                                font-weight: 700;
                                font-size: 18px;
                                color: #000;
                                box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                                transition: background-color 2s ease-in-out;
                            ">
                                @php
                                    $filteredArrivals = $getTodayArrivals->filter(function ($item) {
                                        return $item->total_rooms > 0;
                                    });
                                    $totalArrivals = $filteredArrivals->sum('total_rooms');
                                    $roomDetails = $filteredArrivals
                                        ->map(function ($item) {
                                            return $item->name . ' (' . $item->total_rooms . ')';
                                        })
                                        ->implode(', ');
                                @endphp
                                Today's Arrivals ({{ $totalArrivals }}) = {{ $roomDetails ?: 'No Arrivals' }}
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <link rel="stylesheet" href="{{ asset('admin/css/inhousedt.css') }}">
    <script src="https://cdn.datatables.net/2.3.2/js/dataTables.min.js"></script>
    <script>
        let dataTableInstance;

        let globalname = '';
        let folioNo = '';
        let globaldocid = '';
        let globalsno1 = '';
        let globalsno = '';
        let globalroomno = '';
        let selectedRow = null;

        // Function to fetch data from API
        function fetchGuestData() {
            $.ajax({
                url: 'inhoseroomstatusfetch',
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    let guestdata = data;
                    populateTable(guestdata);
                    if ($.fn.DataTable.isDataTable('#guestinhouse')) {
                        $('#guestinhouse').DataTable().destroy();
                    }
                    dataTableInstance = new DataTable('#guestinhouse', {
                        pageLength: 100,
                        order: [
                            [1, 'asc']
                        ],
                        responsive: true,
                        scrollX: true,
                        scrollCollapse: true,
                        autoWidth: false,
                        columnDefs: [{
                                width: '80px',
                                targets: [0, 1, 13, 15]
                            }, // Folio, Room, Pax, Bill No
                            {
                                width: '150px',
                                targets: [2]
                            }, // Guest Name
                            {
                                width: '100px',
                                targets: [3, 5]
                            }, // Dates
                            {
                                width: '60px',
                                targets: [4]
                            }, // Time
                            {
                                width: '100px',
                                targets: [6, 11]
                            }, // Status, Plan
                            {
                                responsivePriority: 1,
                                targets: [0, 1, 2]
                            }, // Always show Folio, Room, Guest Name
                            {
                                responsivePriority: 2,
                                targets: [3, 5, 15]
                            } // Show dates and bill no next
                        ],
                        language: {
                            lengthMenu: 'Show _MENU_ entries',
                            info: 'Showing _START_ to _END_ of _TOTAL_ guests',
                            infoEmpty: 'No guests available',
                            infoFiltered: '(filtered from _MAX_ total guests)'
                        }
                    });
                },
                error: function(xhr, status, error) {
                    console.error('Error fetching data:', error);
                }
            });
        }

        // Function to populate table with data
        function populateTable(data) {
            const tbody = $('#guestTableBody');
            tbody.empty();
            let options = {
                timeZone: 'Asia/Kolkata',
                hour12: false,
                hour: '2-digit',
                minute: '2-digit',
                second: '2-digit'
            };

            let currentTime = new Date().toLocaleString('en-US', options);
            let tmpncurdate = document.getElementById('sss').value;

            data.forEach((guest, index) => {
                const row = $(`
                                        <tr style="background-color: ${guest.billno != '0' ? '#90ee90' : ''}" data-roomno="${guest.RoomNo}" data-complimentry="${guest.complimentry}" data-docid="${guest.docid}" data-folio="${guest.FolioNo}" data-sno1="${guest.SN}" data-sno="${guest.sno}" data-billno="${guest.billno || ''}" data-guest-name="${guest.GuestName}">
                                            <td>${guest.FolioNo}</td>
                                            <td>${guest.RoomNo}</td>
                                            <td>${guest.GuestName}</td>
                                            <td>${guest.ChkInDate}</td>
                                            <td>${guest.ChkTime}</td>
                                            <td>${guest.DepDate}</td>
                                            <td>${guest.GuestStatus || ''}</td>
                                            <td>${guest.CompanyName || ''}</td>
                                            <td>${guest.Adress || ''}</td>
                                            <td>${guest.City || ''}</td>
                                            <td>${guest.Country || ''}</td>
                                            <td>${guest.Plan || ''}</td>
                                            <td>${guest.Pax}</td>
                                            <td>${guest.Leader || ''}</td>
                                            <td>${guest.SN || ''}</td>
                                            <td>${guest.billno}</td>
                                        </tr>
                                    `);

                if (guest.plancode != '' && guest.plancode != null) {
                    row.removeClass('selected').addClass('plantd');
                }

                if (currentTime > guest.envcheck && guest.billno == '0' && guest.depdate_minus_one <= tmpncurdate) {
                    row.removeClass('selected, plantd').addClass('delaytd');
                }


                if (guest.complimentry == 'Y') {
                    row.addClass('complimentry');
                }

                if (guest.billno != '0') {
                    row.removeClass('selected, plantd').addClass('billprinted');
                }
                tbody.append(row);
            });
        }

        function handleRowSelection(row) {
            $('.table tbody tr').removeClass('selected');

            $('.isbtn').prop('disabled', false);

            row.addClass('selected');
            selectedRow = row;

            folioNo = row.data('folio');
            globalname = row.data('guest-name');
            let billno = row.data('billno');

            globaldocid = row.data('docid');
            globalsno1 = row.data('sno1');
            globalsno = row.data('sno');
            globalroomno = row.data('roomno');
            globalcomplimentry = row.data('complimentry');

            localStorage.setItem('idocid', globaldocid);
            localStorage.setItem('isno1', globalsno1);
            localStorage.setItem('isno', globalsno);
            localStorage.setItem('iroomno', globalroomno);
            localStorage.setItem('complimentry', globalcomplimentry);
            $('#compsettle').addClass('hidden');
            if (billno != '0') {
                $('#billCancelBtn').removeClass('hidden');
                $('#billSettleBtn').removeClass('hidden');
                $('#billprintbtn').addClass('hidden');
                $('.btn-roomchange').addClass('hidden');
            } else {
                $('#billCancelBtn').addClass('hidden');
                $('#billSettleBtn').addClass('hidden');
                $('#billprintbtn').removeClass('hidden');
                $('.btn-roomchange').removeClass('hidden');
            }

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            $.ajax({
                type: 'POST',
                url: '/checkamountpayable',
                data: {
                    docid: globaldocid,
                    sno1: globalsno1
                },
                success: function(response) {
                    let balance = Number(response.tbl.balance);
                    localStorage.setItem('compbalance', balance);
                    if (globalcomplimentry == 'Y' && (balance < 0 || balance == 0 || balance == null)) {
                        pushNotify('info', 'Room Status', 'Complimentry Room', 'fade', 300, '', '', true, true,
                            true, 15000, 20, 20, 'outline', 'right top');
                        $('#compsettle').removeClass('hidden');
                        $('#billCancelBtn').addClass('hidden');
                        $('#billSettleBtn').addClass('hidden');
                        $('#billprintbtn').addClass('hidden');
                    }
                },
                error: function(xhr) {
                    console.log(xhr.responseText);
                    Swal.fire('Error', 'Something went wrong while checking bill details!', 'error');
                }
            });

        }

        $(document).on('click', '#compsettle', function() {
            let docid = localStorage.getItem('idocid');
            let sno1 = localStorage.getItem('isno1');
            let sno = localStorage.getItem('isno');
            let compbalance = Number(localStorage.getItem('compbalance'));

            if (compbalance < 0) {
                Swal.fire({
                    icon: 'error',
                    title: 'Complimentry Settlement',
                    text: `Balance is ${compbalance}. First Post Refund and Retention! To Complimentry Settlement`,
                });
                return;
            }

            const postdata = {
                'docid': docid,
                'sno1': sno1,
                'sno': sno
            };

            const options = {
                method: 'POST',
                headers: {
                    'content-type': 'application/json',
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                },
                body: JSON.stringify(postdata)
            };
            fetch('/nillsettle', options)
                .then(response => response.json())
                .then(data => {
                    if (data.status) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Settlement',
                            text: data.message,
                        });
                    }
                    setTimeout(() => {
                        window.location.reload();
                    }, 2000);
                })
                .catch(error => {
                    console.log(error);
                })
        });

        $(document).on('click', '#billprintbtn', function() {

            $('#myloader').removeClass('none');
            $('#myloader').find('img').attr('src', 'admin/icons/custom/typewriter.gif');
            $('#myloader').find('.loader-text').html('Getting Bill Details');
            let docid = localStorage.getItem('idocid');
            let sno1 = localStorage.getItem('isno1');

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            $.ajax({
                type: 'POST',
                url: '/checkbillalreadyprinted',
                data: {
                    docid: docid,
                    sno1: sno1
                },
                success: function(response) {
                    if (response.exists == true) {
                        Swal.fire({
                            title: "Bill Print",
                            text: `Bill Already Printed For Room No : ${globalroomno}. Refreshing Page.`,
                            icon: "info",
                            timer: 3000
                        }).then(() => {
                            window.location.reload();
                        });
                    } else {
                        setTimeout(() => {
                            $('#myloader').addClass('none');
                            let checkpostxhr = new XMLHttpRequest();
                            checkpostxhr.open('POST', '/checkchargecount', true);
                            checkpostxhr.setRequestHeader('Content-Type',
                                'application/x-www-form-urlencoded');
                            checkpostxhr.onreadystatechange = function() {
                                if (checkpostxhr.readyState === 4 && checkpostxhr.status === 200) {
                                    let resultsd = JSON.parse(checkpostxhr.responseText);
                                    let results = resultsd.chargecount;
                                    let allrooms = resultsd.allrooms || [];
                                    let leaderyn = resultsd.leaderyn;
                                    if (results === 0) {
                                        Swal.fire({
                                            title: "Bill Print",
                                            text: `Charge Posting For Room No : ${globalroomno}, for date ${dmy(resultsd.checkdate)} ?`,
                                            icon: "error",
                                            showCancelButton: true,
                                            confirmButtonColor: "#1EE01E",
                                            cancelButtonColor: "#d33",
                                            confirmButtonText: "Yes"
                                        }).then((result) => {
                                            if (result.isConfirmed) {
                                                $('#billprintmodal').modal('hide');
                                                let startposting =
                                                    new XMLHttpRequest();
                                                startposting.open('POST',
                                                    '/postchargesone', true);
                                                startposting.setRequestHeader(
                                                    'Content-Type',
                                                    'application/x-www-form-urlencoded'
                                                );
                                                startposting.onreadystatechange =
                                                    function() {
                                                        if (startposting.status ===
                                                            200 && startposting
                                                            .readyState === 4) {
                                                            let results = JSON
                                                                .parse(startposting
                                                                    .responseText);
                                                            $('#billprintmodal')
                                                                .modal('hide');
                                                            if (results.success ==
                                                                'Charge Posted') {
                                                                Swal.fire({
                                                                    title: "Charge Posting",
                                                                    text: `Charges have been posted for Room No. : ${globalroomno}. Reopen Bill Print.`,
                                                                    icon: "success",
                                                                    timer: 3000
                                                                }).then(() => {
                                                                    if (results
                                                                        .backposting ==
                                                                        1 &&
                                                                        allrooms &&
                                                                        Array
                                                                        .isArray(
                                                                            allrooms
                                                                        )
                                                                    ) {
                                                                        showAlertForRooms
                                                                            (allrooms,
                                                                                0,
                                                                                results
                                                                                .backposting
                                                                            );
                                                                    } else {
                                                                        continueAfterRoomPost
                                                                            ([{
                                                                                    docid: docid,
                                                                                    sno1: sno1,
                                                                                    roomno: globalroomno
                                                                                }],
                                                                                0,
                                                                                results
                                                                                .backposting
                                                                            );
                                                                    }
                                                                });
                                                            } else if (results
                                                                .error ==
                                                                'Unable To Post Charge'
                                                            ) {
                                                                Swal.fire({
                                                                    title: "Charge Posting",
                                                                    text: `Unable to Post Charge`,
                                                                    icon: "error",
                                                                    timer: 3000
                                                                }).then(() => {
                                                                    if (allrooms &&
                                                                        Array
                                                                        .isArray(
                                                                            allrooms
                                                                        )
                                                                    ) {
                                                                        showAlertForRooms
                                                                            (allrooms,
                                                                                0
                                                                            );
                                                                    }
                                                                });
                                                            } else {
                                                                Swal.fire({
                                                                    title: "Charge Posting",
                                                                    text: `Unknown Error Occurred`,
                                                                    icon: "error",
                                                                    timer: 3000
                                                                }).then(() => {
                                                                    if (allrooms &&
                                                                        Array
                                                                        .isArray(
                                                                            allrooms
                                                                        )
                                                                    ) {
                                                                        showAlertForRooms
                                                                            (allrooms,
                                                                                0
                                                                            );
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    };
                                                startposting.send(
                                                    `docid=${docid}&chargedate=${resultsd.checkdate}&roomno=${globalroomno}&sno1=${sno1}&_token={{ csrf_token() }}`
                                                );
                                            } else if (result.isDismissed) {
                                                if (allrooms && Array.isArray(
                                                        allrooms)) {
                                                    showAlertForRooms(allrooms, 0);
                                                }
                                            }
                                        });
                                    } else {
                                        if (allrooms && Array.isArray(allrooms)) {
                                            showAlertForRooms(allrooms, 0);
                                        }
                                    }
                                }
                            };
                            checkpostxhr.send(
                                `docid=${globaldocid}&sno1=${globalsno1}&_token={{ csrf_token() }}`
                            );
                        }, 1000);
                    }
                },
                error: function(xhr) {
                    console.log(xhr.responseText);
                    Swal.fire('Error', 'Something went wrong while fetching bill details!', 'error');
                    $('#myloader').addClass('none');
                }
            });
        });

        function continueAfterRoomPost(rooms, index, backposting) {
            backposting = Number(backposting) || 0;

            if (backposting == 1) {
                showAlertForRooms(rooms, index, backposting);
                return;
            }

            const postedRoom = rooms[index] || {};

            if (postedRoom.docid == globaldocid && postedRoom.sno1 == globalsno1) {
                let checkpostxhr = new XMLHttpRequest();
                checkpostxhr.open('POST', '/checkchargecount', true);
                checkpostxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                checkpostxhr.onreadystatechange = function() {
                    if (checkpostxhr.readyState === 4 && checkpostxhr.status === 200) {
                        let resultsd = JSON.parse(checkpostxhr.responseText);
                        let allrooms = resultsd.allrooms || [];

                        if (allrooms && Array.isArray(allrooms) && allrooms.length > 0) {
                            showAlertForRooms(allrooms, 0, resultsd.backposting);
                        } else {
                            showAlertForRooms([], 0, 0);
                        }
                    }
                };
                checkpostxhr.send(`docid=${globaldocid}&sno1=${globalsno1}&_token={{ csrf_token() }}`);
                return;
            }

            showAlertForRooms(rooms, index + 1, backposting);
        }

        function showAlertForRooms(rooms, index, backposting) {
            backposting = Number(backposting) || 0;

            console.log('Rooms:', rooms);
            console.log('Index:', index);
            console.log('Backposting:', backposting);

            // Handle undefined or null rooms
            if (!rooms || !Array.isArray(rooms)) {
                console.warn('Rooms data is undefined or not an array');
                return;
            }

            if (backposting == 0) {
                if (rooms.length === 0) {
                    console.log('No more rooms to process, opening bill print modal');
                    let billprintiframe = document.getElementById("billprintiframe");
                    billprintiframe.src = "billprint?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno +
                        "&origin=inhoseroomstatus";
                    $('#billprintmodal').modal('show');
                    return;
                }

                if (index >= rooms.length) return;
            } else {
                let billprintiframe = document.getElementById("billprintiframe");
                billprintiframe.src = "billprint?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno +
                    "&origin=inhoseroomstatus";
                $('#billprintmodal').modal('show');
            }

            if (typeof rooms[index] != 'undefined' || backposting == 1) {
                let checkpostxhr = new XMLHttpRequest();
                checkpostxhr.open('POST', '/checkchargecount', true);
                checkpostxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                checkpostxhr.onreadystatechange = function() {
                    if (checkpostxhr.readyState === 4 && checkpostxhr.status === 200) {
                        let resultsd = JSON.parse(checkpostxhr.responseText);
                        let results = resultsd.chargecount;
                        let allrooms = resultsd.allrooms || [];
                        if (results === 0) {
                            Swal.fire({
                                title: "Bill Print",
                                text: `Charge Posting For Room No : ${rooms[index].roomno}, for date ${dmy(resultsd.checkdate)} ?`,
                                icon: "error",
                                showCancelButton: true,
                                confirmButtonColor: "#1EE01E",
                                cancelButtonColor: "#d33",
                                confirmButtonText: "Yes"
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    $('#billprintmodal').modal('hide');
                                    let startposting = new XMLHttpRequest();
                                    startposting.open('POST', '/postchargesone', true);
                                    startposting.setRequestHeader('Content-Type',
                                        'application/x-www-form-urlencoded');
                                    startposting.onreadystatechange = function() {
                                        if (startposting.status === 200 && startposting.readyState === 4) {
                                            let results = JSON.parse(startposting.responseText);
                                            $('#billprintmodal').modal('hide');
                                            if (results.success == 'Charge Posted') {
                                                Swal.fire({
                                                    title: "Charge Posting",
                                                    text: `Charges have been posted for Room No. : ${rooms[index].roomno}. Reopen Bill Print.`,
                                                    icon: "success",
                                                    timer: 3000
                                                }).then(() => {
                                                    continueAfterRoomPost(rooms, index, results
                                                        .backposting);
                                                });
                                            } else if (results.error == 'Unable To Post Charge') {
                                                Swal.fire({
                                                    title: "Charge Posting",
                                                    text: `Unable to Post Charge`,
                                                    icon: "error",
                                                    timer: 3000
                                                }).then(() => {
                                                    continueAfterRoomPost(rooms, index, results
                                                        .backposting);
                                                });
                                            } else {
                                                Swal.fire({
                                                    title: "Charge Posting",
                                                    text: `Unknown Error Occurred`,
                                                    icon: "error",
                                                    timer: 3000
                                                }).then(() => {
                                                    continueAfterRoomPost(rooms, index, results
                                                        .backposting);
                                                });
                                            }
                                        }
                                    };
                                    startposting.send(
                                        `docid=${rooms[index].docid ?? ''}&chargedate=${resultsd.checkdate}&roomno=${rooms[index].roomno}&sno1=${rooms[index].sno1}&_token={{ csrf_token() }}`
                                    );
                                } else if (result.isDismissed) {
                                    showAlertForRooms(rooms, index + 1, results.backposting);
                                }
                            });
                        } else {
                            if (resultsd.condition == 'Auto') {
                                Swal.fire({
                                    title: "Charge Posting",
                                    text: `Charges have been posted for Room No. : ${rooms[index].roomno}. Reopen Bill Print.`,
                                    icon: "info",
                                    timer: 3000
                                }).then(() => {
                                    continueAfterRoomPost(rooms, index, resultsd.backposting);
                                });
                            } else {
                                showAlertForRooms(rooms, index + 1, resultsd.backposting);
                            }
                        }
                    }
                }
                checkpostxhr.send(`docid=${rooms[index].docid}&sno1=${rooms[index].sno1}&_token={{ csrf_token() }}`);
            }

        }

        $(document).on('click', '#billCancelBtn', function() {
            let docid = localStorage.getItem('idocid');
            let sno1 = localStorage.getItem('isno1');

            Swal.fire({
                icon: 'question',
                title: 'Cancel Bill',
                text: 'Why do you want to cancel this bill?',
                input: 'text',
                inputPlaceholder: 'Reason',
                inputValue: 'Wrong Bill Entry',
                showCancelButton: true,
                confirmButtonText: 'Delete',
                inputValidator: (value) => {
                    if (!value) {
                        return 'Reason is required';
                    }
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    let reason = result.value;

                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': "{{ csrf_token() }}"
                        }
                    });

                    $.ajax({
                        type: 'POST',
                        url: '/billcancel',
                        data: {
                            docid: docid,
                            sno1: sno1,
                            reason: reason
                        },
                        success: function(response) {
                            Swal.fire('Cancelled!', response.message, 'success');
                            setTimeout(() => {
                                window.location.reload();
                            }, 1000);
                        },
                        error: function(xhr) {
                            Swal.fire('Error', 'Something went wrong!', 'error');
                            console.log(xhr.responseText);
                        }
                    });
                }
            });
        });


        // Event handlers
        $(document).ready(function() {
            // Fetch data on page load
            fetchGuestData();

            // Handle row click
            $(document).on('click', '.table tbody tr', function() {
                handleRowSelection($(this));
            });

            // Modal event handlers
            $('#changeprofilemodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("changeprofileframe");
                let profilechangespan = document.getElementById('profilechangespan');
                let profilechangecode = document.getElementById('profilechangecode');
                profilechangespan.textContent = globalname;
                profilechangecode.textContent = folioNo;
                iframe.src = "changeprofile?docid=" + globaldocid + "&sno1=" + globalsno1;
            });

            $('#guestprofilemodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("guestaddprofileframe");
                let profilechangespan = document.getElementById('guestprofilechangespan');
                let profilechangecode = document.getElementById('guestprofilechangecode');
                profilechangespan.textContent = globalname;
                profilechangecode.textContent = folioNo;
                iframe.src = "guestaddprofile?docid=" + globaldocid + "&sno1=" + globalsno1;
            });

            $('#ammendstaymodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("ammenstayiframe");
                let profilechangespan = document.getElementById('ammendstayspan');
                let guestcode1 = document.getElementById('guestcode1');
                profilechangespan.textContent = globalname;
                guestcode1.textContent = folioNo;
                iframe.src = "ammendstay?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" +
                    globalsno;
            });

            $('#guestledgermodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("guestledgeriframe");
                let guestledgerspan = document.getElementById('guestledgerspan');
                let guestcode1 = document.getElementById('guestcode2');
                guestledgerspan.textContent = globalname;
                guestcode1.textContent = folioNo;
                iframe.src = "guestledger?docid=" + globaldocid + "&sno1=" + globalsno1;
            });

            $('#guestchargemodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("guestchargeiframe");
                let guestchargespan = document.getElementById('guestchargespan');
                let guestcode1 = document.getElementById('guestcode7');
                guestchargespan.textContent = globalname;
                guestcode1.textContent = folioNo;
                iframe.src = "guestcharge?docid=" + globaldocid + "&sno1=" + globalsno1;
            });

            $('#roomchangemodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("roomchangeiframe");
                let profilechangespan = document.getElementById('roomchangespan');
                profilechangespan.textContent = globalname;
                let guestcode3 = document.getElementById('guestcode3');
                guestcode3.textContent = folioNo;
                iframe.src = "roomchange?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" +
                    globalsno;
            });

            $('#advchargemodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("advchargeiframe");
                let profilechangespan = document.getElementById('advchargespan');
                profilechangespan.textContent = globalname;
                let guestcode4 = document.getElementById('guestcode4');
                guestcode4.textContent = folioNo;
                iframe.src = "advcharge?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno;
            });

            $('#billprintmodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("billprintiframe");
                let billprintspan = document.getElementById('billprintspan');
                let guestcode5 = document.getElementById('guestcode5');
                billprintspan.textContent = globalname;
                guestcode5.textContent = folioNo;
                iframe.src = "billprint?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" +
                    globalsno + "&origin=inhoseroomstatus";
            });

            $('#billsettlemodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("billsettleiframe");
                let profilechangespan = document.getElementById('billsettlespan');
                profilechangespan.textContent = globalname;
                let guestcode6 = document.getElementById('guestcode6');
                guestcode6.textContent = folioNo;
                console.log(folioNo);
                iframe.src = "billsettle?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" +
                    globalsno;
            });

            function createTodaysArrivalsModal() {
                if ($('#todaysArrivalsModal').length) {
                    return $('#todaysArrivalsModal');
                }

                const modalMarkup = `
                    <div class="modal fade" id="todaysArrivalsModal" tabindex="-1" aria-labelledby="todaysArrivalsModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" style="max-width: 96vw;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <div>
                                        <h5 class="modal-title font-weight-bold" id="todaysArrivalsModalLabel">Today's Arrivals</h5>
                                        <small class="text-muted" id="todaysArrivalsModalSubtext"></small>
                                    </div>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body pt-2" style="max-height: 80vh; overflow-y: auto;">
                                    <div class="table-responsive" style="max-height: 72vh; overflow: auto;">
                                        <table class="table table-hover table-bordered mb-0" id="todaysArrivalsTable">
                                            <thead>
                                                <tr>
                                                    <th>Booking No</th>
                                                    <th>Room No</th>
                                                    <th>Guest Name</th>
                                                    <th>Room Type</th>
                                                    <th>Mobile No</th>
                                                    <th>Arrival</th>
                                                    <th>Departure</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody></tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`;

                $('body').append(modalMarkup);
                return $('#todaysArrivalsModal');
            }

            function renderTodaysArrivals(arrivals) {
                const modal = createTodaysArrivalsModal();
                const modalSubtext = modal.find('#todaysArrivalsModalSubtext');
                const tableBody = modal.find('#todaysArrivalsTable tbody');
                const bookingColors = ['#fff7d6', '#e8f6ff', '#eafbe7', '#fdecef', '#f3edff'];
                const bookingColorMap = {};
                let colorIndex = 0;

                const rowsHtml = arrivals.map(function(arrival) {
                    const bookingDocid = arrival.BookingDocid || '';

                    if (!bookingColorMap[bookingDocid]) {
                        bookingColorMap[bookingDocid] = bookingColors[colorIndex % bookingColors.length];
                        colorIndex += 1;
                    }

                    const bookingNumber = String(bookingDocid).replace(/\s+/g, ' ').trim();
                    const mobile = (arrival.mobile_no || '').replace(/\D/g, '');

                    return `
        <tr class="arrival-row cursor-pointer"
            data-docid="${escapeHtml(arrival.BookingDocid)}"
            data-sno="${escapeHtml(arrival.Sno)}"
            style="background-color: ${bookingColorMap[bookingDocid]};"
            title="Open prefilled walk-in">
            <td class="font-weight-bold">${escapeHtml(arrival.BookNo || '-')}</td>
            <td class="font-weight-bold">${escapeHtml(arrival.RoomNo || '-')}</td>
            <td>${escapeHtml(arrival.guestname || '-')}</td>
            <td>${escapeHtml(arrival.roomcatname || arrival.RoomCat || '-')}</td>
            <td>${escapeHtml(arrival.mobile_no || '-')}</td>
            <td>${escapeHtml(formatArrivalDate(arrival.ArrDate))} ${escapeHtml(arrival.ArrTime || '')}</td>
            <td>${escapeHtml(formatArrivalDate(arrival.DepDate))} ${escapeHtml(arrival.DepTime || '')}</td>
            <td>${escapeHtml(arrival.ResStatus || '-')}</td>
            <td>
                ${mobile ? `
                                                            <button type="button" class="btn btn-sm btn-success send-location-btn"
                                                                data-mobile="${mobile}"
                                                                data-guest="${escapeHtml(arrival.guestname || '')}">
                                                                Send Location
                                                            </button>
                                                        ` : '<span class="text-muted">No Mobile</span>'}
            </td>
        </tr>`;
                }).join('');

                modalSubtext.text(arrivals.length + ' arrival' + (arrivals.length > 1 ? 's' : '') + ' found');
                tableBody.html(rowsHtml);
                modal.modal('show');
            }

            $(document).on('click', '.todays-arrivals-banner', function() {
                $.ajax({
                    url: 'todaysarrivals',
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        const arrivals = Array.isArray(data) ? data : [];

                        if (!arrivals.length) {
                            swal('No arrivals today');
                            return;
                        }

                        renderTodaysArrivals(arrivals);
                    },
                    error: function(xhr, status, error) {
                        swal("Unable to fetch today's arrivals");
                        console.error('Error fetching today\'s arrivals:', error);
                    }
                });
            });

            $(document).on('click', '#todaysArrivalsTable .arrival-row', function() {
                const docid = $(this).data('docid');
                const sno = $(this).data('sno');
                const url = 'prefilledwalkin?docid=' + encodeURIComponent(docid) + '&sno=' +
                    encodeURIComponent(sno);

                window.location.href = url;
            });

            // Refresh data function (can be called periodically)
            function refreshData() {
                fetchGuestData();
            }

            // Auto-refresh every 30 seconds (optional)
            // setInterval(refreshData, 30000);

            // Animate Today's Arrivals banner background color
            const colors = ['#FFE4B5', '#ADD8E6', '#90EE90', '#FFC0CB', '#F4D35E', '#C2F0C2', '#B0E0E6'];
            let colorIndex = 0;

            function changeBackgroundColor() {
                const banner = document.querySelector('.todays-arrivals-banner');
                if (banner) {
                    colorIndex = (colorIndex + 1) % colors.length;
                    banner.style.backgroundColor = colors[colorIndex];
                }
            }

            // Initial color
            document.addEventListener('DOMContentLoaded', function() {
                const banner = document.querySelector('.todays-arrivals-banner');
                if (banner) {
                    banner.style.backgroundColor = colors[0];
                }
            });
            $(document).on('click', '.send-location-btn', function(e) {
                e.preventDefault();
                e.stopPropagation();
                e.stopImmediatePropagation();

                const mobile = $(this).data('mobile');
                const guestName = $(this).data('guest') || '';
                const $btn = $(this);

                $btn.prop('disabled', true).text('Sending...');

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    }
                });

                $.ajax({
                    url: 'getpropertylocation',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        mobile: mobile,
                        guestname: guestName
                    },
                    success: function(response) {
                        if (response.success) {
                            Swal.fire('Sent', response.message, 'success');
                        } else {
                            Swal.fire('Failed', response.message, 'warning');
                        }
                        $btn.prop('disabled', false).text('Send Location');
                    },
                    error: function(xhr) {
                        console.log(xhr.responseText);
                        Swal.fire('Error', 'Something went wrong while sending the location!',
                            'error');
                        $btn.prop('disabled', false).text('Send Location');
                    }
                });

                return false;
            });

            // Change color every 2 seconds
            setInterval(changeBackgroundColor, 2000);
        });
    </script>
@endsection
