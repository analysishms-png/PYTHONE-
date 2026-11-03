@extends('property.layouts.main')
@section('main-container')
    <script src="{{ asset('admin/js/dynamic/remarkform.js') }}"></script>
    <script src="{{ asset('admin/js/dynamic/roomblock.js') }}"></script>
    <script src="{{ asset('admin/js/dynamic/depupdate.js') }}"></script>
    <script src="{{ asset('admin/js/dynamic/rateupdate.js') }}"></script>
    <script src="{{ asset('admin/js/dynamic/roominclusive.js') }}"></script>
    <script src="{{ asset('admin/js/room.js') }}"></script>
    <div class="content-body">
        <div id="bookingmodal" class="bookingmodal">
            <h3>In House <span class="fa-2xs blinking-text ARDR">Room Status is a color coded indicator that shows
                    the status of the Rooms.</span></h3>
            <div class="booking-status">
                <div class="indicator confirmed">In House</div>
                <div class="indicator confirmreservation">Confirm Reservation</div>
                <div class="indicator billed">Billed</div>
                <div class="indicator delayed">Delayed</div>
                <div class="indicator outoforder">Out of Order</div>
                <div class="indicator maintainence">Maintainence</div>
                <div class="indicator management">Management</div>
                <div class="indicator marriage">Marriage</div>
                <div class="indicator complimentry">Complimentry</div>
                <div class="indicator dirty">Dirty</div>
                <div class="indicator inprogress">In Progress</div>
                {{-- <div class="indicator stayover">Stayover</div>
            <div class="indicator dayusenormal">Dayuse</div>
            <div class="indicator checked-out">Checked Out</div>
            <div class="indicator due-out">Due Out</div>
            <div class="indicator inhouse">Inhouse</div>
            <div class="indicator dayuse">Day Use Reservation</div>
            <div class="indicator maintenance-block">Maintenance Block</div> --}}
            </div>
            {{-- <h3>Booking Indicators</h3>
        <div class="booking-indicators">
            <div class="indicator group-owner"><img alt="Analysishms" src="{{ asset('admin/icons/custom/king.svg') }}">
                Group Owner</div>
            <div class="indicator payment-pending"><img alt="Analysishms"
                    src="{{ asset('admin/icons/custom/dollar.svg') }}"> Payment Pending</div>
            <div class="indicator single-lady"><img alt="Analysishms"
                    src="{{ asset('admin/icons/custom/singlelady.svg') }}"> Single Lady</div>
            <div class="indicator split-reservation"><img alt="Analysishms"
                    src="{{ asset('admin/icons/custom/split.svg') }}"> Split Reservation</div>
            <div class="indicator group-booking"><img alt="Analysishms"
                    src="{{ asset('admin/icons/custom/groupbooking.svg') }}"> Group Booking</div>
            <div class="indicator stop-room-move"><img alt="Analysishms"
                    src="{{ asset('admin/icons/custom/stoproom.svg') }}"> Stop Room Move</div>
            <div class="indicator vip-guest"><img alt="Analysishms" src="{{ asset('admin/icons/custom/star.svg') }}">
                VIP Guest</div>
        </div>
        <h3>Room Indicators</h3>
        <div class="room-indicators">
            <div class="indicator no-smoking"><img alt="Analysishms"
                    src="{{ asset('admin/icons/custom/dhuanotallow.svg') }}"> No Smoking</div>
            <div class="indicator dirty"><img alt="Analysishms" src="{{ asset('admin/icons/custom/dirty.svg') }}"> Dirty
            </div>
            <div class="indicator work-order"><img alt="Analysishms"
                    src="{{ asset('admin/icons/custom/workorder.svg') }}"> Work Order</div>
            <div class="indicator smoking"><img alt="Analysishms" src="{{ asset('admin/icons/custom/ciggerate.svg') }}">
                Smoking</div>
            <div class="indicator connected-rooms"><img alt="Analysishms"
                    src="{{ asset('admin/icons/custom/connroom.svg') }}"> Connected Rooms</div>
        </div>
        <h3>Inventory</h3>
        <div class="inventory">
            <div class="indicator unassigned-room">Unassigned Room</div>
            <div class="indicator unconfirmed-bookings">Unconfirm Bookings</div>
            <div class="indicator confirmed">Confirmed Reservation</div>
            <div class="indicator inventry">Inventry</div>
        </div> --}}
        </div>
        {{-- {{ $ncurdate }} --}}
        <input style="display: none;" type="date" id="fixncur" value="{{ $ncurdate }}">
        <input style="display: none;" type="date" id="sss" value="{{ date('Y-m-d', strtotime('-1 day', strtotime($ncurdate))) }}">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body roomstatus">

                        {{-- <div class="row"> --}}
                        {{-- <div class="col-md-8"> --}}
                        {{-- <div class="table-responsive"> --}}
                        {{-- {{ $roomtype = $roomcategorydata }} --}}

                        <form action="" method="post">
                            <input type="hidden" name="showList" value="">
                        </form>
                        <table style="background: #ffffff;margin: 0 0 -4px -14px;" class="table table-primary">
                            <thead>
                                <tr>
                                    <th>
                                        <input value="{{ date('Y-m-d', strtotime('-1 day', strtotime($ncurdate))) }}" class="form-control rhead" type="date"
                                            id="fromdate">
                                    </th>
                                    <th>
                                        <select class="form-control" id="default_days_roomstatus" name="default_days_roomstatus"
                                            onchange="updatedefaultdays(this.value)">
                                            @for ($i = 5; $i <= 30; $i++)
                                                <option value="{{ $i }}"
                                                    {{ $i == fomparameter()->default_days_roomstatus ? 'selected' : '' }}>
                                                    {{ $i }} Days
                                                </option>
                                            @endfor
                                        </select>
                                    </th>
                                    <th>
                                        <input type="search" placeholder="Search..." class="form-control rhead"
                                            name="guestsearch" id="guestsearch">
                                    </th>
                                    @if (fomparameter()->blockwisedisp == 1)
                                        <th>
                                            <div class="col-md-3">
                                                <button type="button"
                                                    class="btn rhead btn-outline-primary"
                                                    id="blockwiselistbtn">
                                                    <span id="blockwisetext">Blockwise</span>
                                                    <i class="fa-solid fa-angle-down"></i>
                                                </button>

                                                <ul class="checkul" id="listedblockwise" style="display:none;">
                                                    <li>
                                                        <input type="checkbox" id="checkallblockwise" checked>
                                                        <span>Select All <span class="tcount">{{ count($buildingmast) }}</span></span>
                                                    </li>

                                                    <li>
                                                        <input type="text"
                                                            placeholder="Enter Building Name..."
                                                            class="form-control blockwisesearch">
                                                    </li>

                                                    @foreach ($buildingmast as $item)
                                                        <li data-blockwisename="{{ $item->name }}" class="blockwisenameli">
                                                            <input
                                                                class="blockwisecheckbox"
                                                                value="{{ $item->code }}"
                                                                type="checkbox"
                                                                checked>
                                                            <span>{{ $item->name }}</span>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        </th>
                                    @endif
                                    <th style="cursor: pointer;" id="infoicon"><i class="fa-regular fa-circle-question"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>

                        {{-- <div
                                    style="position: fixed; top: 0; right: 0; padding: 10px; background-color: #f1f1f1;">
                                    <i class="fa-regular fa-circle-question"></i>
                                </div> --}}
                        {{--
                            </div>
                        </div>
                    </div> --}}

                        <table class="table-responsive table" id="dateTable"></table>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="changeprofilemodal" tabindex="-1" aria-labelledby="changeprofilemodalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div style="width: 57rem;" class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="changeprofilemodalLabel">Profile Change For: <span class="ADA"
                            id="profilechangespan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element" id="changeprofilemodalLabel">Folio No.:
                        <span class="BANX" id="profilechangecode"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="changeprofileframe" src="" frameborder="0" style="width: 100%; height: 60rem;"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="ammendstaymodal" tabindex="-1" aria-labelledby="ammendstaymodalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ammendstaymodalLabel">Ammend Stay For: <span class="ADA"
                            id="ammendstayspan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element" id="ammendstaymodalLabel">Folio No.:
                        <span class="BANX" id="guestcode1"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="ammenstayiframe" src="" frameborder="0" style="width: 100%; height: 15em;"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="guestledgermodal" tabindex="-1" aria-labelledby="guestledgermodalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="guestledgermodalLabel">Guest Ledger For: <span class="ADA"
                            id="guestledgerspan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element" id="guestledgermodalLabel">Folio No.:
                        <span class="BANX" id="guestcode2"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="guestledgeriframe" src="" frameborder="0" style="width: 100%; height: 35em;"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="guestchargemodal" tabindex="-1" aria-labelledby="guestchargemodalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="guestchargemodalLabel">Guest Charge Summary For: <span class="ADA"
                            id="guestchargespan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element" id="guestchargemodalLabel">Folio No.:
                        <span class="BANX" id="guestcode7"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="guestchargeiframe" src="" frameborder="0" style="width: 100%; height: 35em;"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="roomchangemodal" tabindex="-1" aria-labelledby="roomchangemodalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="roomchangemodalLabel">Room Change For: <span class="ADA"
                            id="roomchangespan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element" id="roomchangemodalLabel">Folio No.:
                        <span style="display: none;" id="docidd"></span>
                        <span class="BANX" id="guestcode3"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="roomchangeiframe" src="" frameborder="0" style="width: 100%; height: 37em;"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="advchargemodal" tabindex="-1" aria-labelledby="advchargemodalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="advchargemodalLabel">Advance Change For: <span class="ADA"
                            id="advchargespan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element" id="advchargemodalLabel">Folio No.:
                        <span style="display: none;" id="docidd"></span>
                        <span class="BANX" id="guestcode4"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="advchargeiframe" src="" frameborder="0" style="width: 100%; height: 37em;"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="billsettlemodal" tabindex="-1" aria-labelledby="billsettlemodalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="billsettlemodalLabel">Bill Settlement For: <span class="ADA"
                            id="billsettlespan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element" id="billsettlemodalLabel">Folio No.:
                        <span style="display: none;" id="docidd"></span>
                        <span class="BANX" id="guestcode6"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="billsettleiframe" src="" frameborder="0" style="width: 100%; height: 37em;"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="billprintmodal" tabindex="-1" aria-labelledby="billprintmodalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="billprintmodalLabel">Bill Print For: <span class="ADA"
                            id="billprintspan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element" id="billprintmodalLabel">Folio No.:
                        <span class="BANX" id="guestcode5"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="billprintiframe" src="" frameborder="0" style="width: 100%; height: 35em;"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div id="roomActionPanel" class="room-action-panel">
        <div class="room-action-panel-header">
            <div class="room-action-panel-title"></div>
            <button type="button" class="room-action-panel-close">
                <i class="fa-solid fa-xmark"></i>
            </button>
        </div>

        <div class="room-action-panel-body"></div>
    </div>

    <style>
        #dateTable tr td .roomstatus-segment.roomstatus-segment-crown {
            gap: 2px;
        }

        #dateTable tr td .roomstatus-segment .roomstatus-segment-crown-icon {
            width: 14px;
            height: 14px;
            object-fit: contain;
        }

        #dateTable tr td .roomstatus-segment:hover {
            filter: brightness(0.98);
        }

        #dateTable tr td .roomstatus-segment.roomstatus-search-match {
            outline: 2px solid #111;
            box-shadow: 0 0 0 3px rgba(255, 193, 7, 0.55);
            position: relative;
            z-index: 2;
        }

        .modal-packed {
            pointer-events: none;
        }

        .modal-packed .modal-custom {
            pointer-events: auto;
        }
    </style>
    <script>
        window.RoomStatusConfig = Object.assign(window.RoomStatusConfig || {}, {
            searchInputId: 'guestsearch',
            pageSource: 'roomstatus',
            reservationSingleUrl: '{{ route('fetchreservationsingle') }}',
            closeIconUrl: '{{ asset('admin/icons/custom/close2.svg') }}',
            travelLogoBaseUrl: '{{ asset('uploads/favicons') }}',
            crownIconUrl: '{{ asset('admin/icons/custom/king.svg') }}',
            truncateTravelName: true,
            showReservationStatus: true,
            enableLegacyRoomCategoryToggle: false
        });
    </script>

    <script>
        const default_days_roomstatus = @json(fomparameter()->default_days_roomstatus) ?? 14;
        $('#myloader').removeClass('none');
        setTimeout(() => {
            $('#myloader').addClass('none');
        }, 2000);
        let roomStatusFetchToken = 0;

        $(document).ready(function() {
            dynamicSearch('.blockwisesearch', 'blockwisename', '.blockwisenameli');
            toggleList("#blockwiselistbtn", "#listedblockwise");
            checkAllCheckboxes("#checkallblockwise", ".blockwisecheckbox");

            $(document).on('click', '#roomcategorybtn', function() {
                $('#listroomcat').toggle();
            });

            $(document).on('change', '.roomcatcheckbox', function() {
                if (!$(this).is(':checked')) {
                    let valueToHide = $(this).val();
                    $('#dateTable tbody tr').each(function() {
                        if ($(this).data('value') == valueToHide) {
                            $(this).hide();
                        }
                    });
                } else {
                    let valueToHide = $(this).val();
                    $('#dateTable tbody tr').each(function() {
                        if ($(this).data('value') == valueToHide) {
                            $(this).show();
                        }
                    });
                }
            });

            $(document).on('click', '#infoicon', function() {
                let modal = $('#bookingmodal');
                if (modal.css('display') === 'none') {
                    modal.css('display', 'block');
                } else {
                    modal.css('display', 'none');
                }
            });

            function generateDateRow() {
                let currentToken = ++roomStatusFetchToken;
                let startDate = document.getElementById('fromdate').value;
                let date = new Date(startDate);
                let table = document.getElementById('dateTable');
                table.innerHTML = '';
                let row = table.insertRow();
                row.classList.add('dateheader');

                let firstCell = row.insertCell();
                let nameSpan = document.createElement('span');
                nameSpan.innerHTML = `
                    <button style="width: -webkit-fill-available;" type="button" class="btn rhead btn-outline-primary"
                            name="roomcategorybtn" id="roomcategorybtn">Room Type <i
                            class="fa-solid fa-angle-down"></i></button>
                        <ul id="listroomcat" style="display:none;">
                            @foreach ($roomcategorydata as $item)
                                <li>
                                    <input class="roomcatcheckbox" value="{{ $item->cat_code }}" type="checkbox" checked>
                                    <span>{{ $item->name }}</span>
                                </li>
                            @endforeach
                        </ul>`;
                firstCell.appendChild(nameSpan);

                for (let i = 1; i <= default_days_roomstatus; i++) {
                    let cell = row.insertCell();
                    cell.classList.add('dateheadertd');
                    cell.dataset.nu = i;

                    let year = date.getFullYear();
                    let monthNum = String(date.getMonth() + 1).padStart(2, '0');
                    let dayNum = String(date.getDate()).padStart(2, '0');

                    let completedate = `${year}-${monthNum}-${dayNum}`;
                    cell.dataset.date = completedate;

                    let monthSpan = document.createElement('span');
                    monthSpan.textContent = new Intl.DateTimeFormat('en-US', {
                        month: 'short'
                    }).format(date);
                    cell.appendChild(monthSpan);

                    cell.appendChild(document.createElement('br'));

                    let strong = document.createElement("strong");
                    strong.textContent = date.getDate();
                    cell.appendChild(strong);

                    let yearSpan = document.createElement('span');
                    yearSpan.style.display = 'none';
                    yearSpan.textContent = year;
                    cell.appendChild(yearSpan);

                    cell.appendChild(document.createElement('br'));

                    let daySpan = document.createElement('span');
                    daySpan.textContent = new Intl.DateTimeFormat('en-US', {
                        weekday: 'short'
                    }).format(date);
                    cell.appendChild(daySpan);

                    exportdateformat(completedate);

                    date.setDate(date.getDate() + 1);
                }

                async function fetchRoomCategory() {
                    try {
                        const response = await fetch('/roomstatusdata');

                        if (!response.ok) {
                            throw new Error(`HTTP ${response.status}`);
                        }

                        const result = await response.json();

                        if (currentToken !== roomStatusFetchToken) {
                            return;
                        }

                        const categories = result.categories || [];
                        const roomsByCategory = result.rooms || {};
                        const table = document.getElementById('dateTable');

                        const buildingCodes = @json($buildingmast->pluck('code')->values());

                        const buildingColors = {};

                        const colors = [
                            '#FFFFC5',
                            '#c7e3ec',
                            '#d0e7c2',
                            '#f5d6ad',
                            '#dfc7e8',
                            '#c9d9f5',
                            '#f2caca',
                            '#c4e4d8',
                            '#f0e0a8',
                            '#d4cff0'
                        ];

                        buildingCodes.forEach((code, index) => {
                            buildingColors[code] = colors[index % colors.length];
                        });

                        for (const category of categories) {
                            const rooms = roomsByCategory[category.cat_code] || [];

                            let row = table.insertRow();

                            let cell = row.insertCell();
                            cell.classList.add('rstatuscatname');
                            cell.setAttribute('data-cat', category.cat_code);

                            $(cell).html(`${category.name} <span class="badge badge-primary">${category.norooms}</span>`);

                            row.dataset.value = category.cat_code;

                            for (let i = 1; i <= default_days_roomstatus; i++) {
                                let td = row.insertCell();
                                const header = document.querySelectorAll('.dateheadertd')[i - 1];

                                td.className = 'cat-avail-cell cursor-pointer';
                                td.dataset.cat = category.cat_code;
                                td.dataset.date = $(header).data('date');
                                td.innerHTML = '';
                            }

                            for (const room of rooms) {
                                row = table.insertRow();

                                const buildingcode = room.building;
                                const buildingColor = buildingColors[buildingcode];

                                cell = row.insertCell();

                                if ("{{ fomparameter()->blockwisedisp == 1 }}" == "1") {
                                    if (buildingColor) {
                                        cell.style.backgroundColor = buildingColor;
                                    }
                                }

                                if (
                                    room.room_stat === 'D' &&
                                    "{{ fomparameter()->housekeepingroomstatus }}" == 1 &&
                                    room.cleaningstatus === 'In Progress'
                                ) {
                                    const cleaning = getCleaningTimeStatus(room.vtime, room.esttime);

                                    cell.style.color = cleaning.isOver ? '#dc3545' : '#385ceb';

                                    cell.innerHTML = `${room.rcode} <i class="fa-solid fa-broom"></i><br>
                        <small>${cleaning.text}</small>`;
                                } else if (
                                    room.room_stat === 'D' &&
                                    "{{ fomparameter()->housekeepingroomstatus }}" == 1
                                ) {
                                    cell.style.color = '#ffc107';
                                    cell.innerHTML = `${room.rcode} <i class="fa-solid fa-smog"></i>`;
                                } else {
                                    cell.textContent = room.rcode;
                                }

                                row.dataset.value = room.room_cat;

                                for (let i = 1; i <= default_days_roomstatus; i++) {
                                    cell = row.insertCell();

                                    cell.classList.add('roomstatuscell');
                                    cell.innerHTML = '&nbsp;';
                                    cell.dataset.value = room.rcode;

                                    const header = document.querySelectorAll('.dateheadertd')[i - 1];

                                    cell.headers = $(header).data('date');
                                    cell.setAttribute('ofwhat', '');
                                }
                            }
                        }
                    } catch (error) {
                        console.error('Error fetching room status data:', error);
                    }
                }

                $(document).on('change', '.blockwisecheckbox, #checkallblockwise', function() {
                    generateDateRow();
                    $('#listedblockwise').css('display', 'none');
                });

                $(document).on('change', '.blockwisecheckbox', function() {
                    let totalCheckboxes = $('.blockwisecheckbox').length;
                    let checkedCheckboxes = $('.blockwisecheckbox:checked').length;
                    $('#checkallblockwise').prop('checked', totalCheckboxes === checkedCheckboxes);
                });

                async function fetchRooms(categoryCode) {
                    try {
                        let requestData = {
                            categoryCode: categoryCode
                        };

                        if ("{{ fomparameter()->blockwisedisp == 1 }}" == "1") {
                            let selectedBuildings = [];
                            $('.blockwisecheckbox:checked').each(function() {
                                selectedBuildings.push($(this).val());
                            });
                            requestData.buildings = selectedBuildings;
                        }

                        const response = await fetch('/roomget', {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json',
                                'X-CSRF-TOKEN': "{{ csrf_token() }}",
                            },
                            body: JSON.stringify(requestData),
                        });

                        const rooms = await response.json();
                        return rooms;
                    } catch (error) {
                        console.error('Error:', error);
                    }
                }

                async function fetchBookedRooms() {
                    try {
                        const response = await fetch('/bookedroomget');

                        if (response.ok) {
                            const datas = await response.json();
                            const data = datas.bookedroomdata;
                            const amountdetails = datas.amountdetails;
                            let roomblockout = datas.roomblockout;
                            if (roomblockout.length > 0) {
                                popupblockout(roomblockout);
                            }
                            if (data.length > 0) {
                                data.forEach(function(booking) {
                                    const name = booking.name || '';
                                    const roomno = booking.roomno;
                                    const [firstName] = name.split(' ');
                                    let tmpncurdate = document.getElementById('sss').value;
                                    let options = {
                                        timeZone: 'Asia/Kolkata',
                                        hour12: false,
                                        hour: '2-digit',
                                        minute: '2-digit',
                                        second: '2-digit'
                                    };
                                    let currentTime = new Date().toLocaleString('en-US', options);

                                    const getInHouseStatusClass = function(currentBooking) {
                                        if (currentBooking.billno != '0') {
                                            return 'billedtd';
                                        }

                                        if (currentTime > currentBooking.envcheck && currentBooking.billno == '0' && currentBooking.depdate <= tmpncurdate) {
                                            return 'delaytd';
                                        }

                                        if (currentBooking.complimentry == 'Y') {
                                            return 'complimentry';
                                        }

                                        return 'fromtd';
                                    };

                                    appendRoomStatusRange(roomno, booking.chkindate, booking.depdate, {
                                        text: buildRoomStatusLabel(booking.con_prefix, firstName),
                                        statusClass: getInHouseStatusClass(booking),
                                        crown: booking.leaderyn == 'Y',
                                        travellogo: booking.travellogo || 'N',
                                        travelname: booking.travelname || '',
                                        searchName: booking.GuestName || booking.name || '',
                                        segmentKey: ['inhouse', booking.docid, booking.sno1, booking.roomno, booking.chkindate, booking.depdate].join('|'),
                                        onClick: function() {
                                            OpenBookingInfoModal(booking, amountdetails);
                                        }
                                    }, 'checkin');
                                });
                            } else {
                                pushNotify('info', 'Room Status', 'No Booked Rooms Data Found', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'left top');
                            }
                        } else {
                            console.error('Failed to fetch booked rooms. Status:', response.status);
                        }
                    } catch (error) {
                        console.error('An error occurred during the fetch:', error);
                    }
                }

                function getAllDatesFromHeader() {
                    let dates = [];

                    $('.dateheadertd').each(function() {
                        let date = $(this).data('date');
                        if (date) {
                            dates.push(date);
                        }
                    });

                    return dates;
                }

                setTimeout(() => {
                    let dates = getAllDatesFromHeader();
                    fetchAvailabilityFromServer(dates);
                }, 2000);

                setTimeout(() => {
                    fetchBookedRooms();
                    fetchBookedRoomsres($('#fromdate').val().trim(), $('#default_days_roomstatus').val());
                    fetchCheckoutRooms();
                }, 3000);

                fetchRoomCategory();

            }

            document.getElementById('fromdate').addEventListener('change', generateDateRow);

            generateDateRow();
        });
    </script>




    <script>
        var globalguestcode;
        var globalname;
        var globalfoliono;
        var globaldocid;
        var globalsno1;
        var globalsno;
        var globalroomno;
        var globaldepdata;
        var globalncurdate;
        var globalleaderyn;

        var rglobaldocid;
        var rglobalsno1;

        function OpenBookingInfoModal(bookingarray, amountdetails, isCheckout = false) {
            if (!bookingarray) {
                return;
            }

            {
                let leaderyn = bookingarray['leaderyn'];
                let paydetail;
                if (leaderyn == 'Y') {
                    paydetail = amountdetails.filter(x => x.docid == bookingarray['docid']);
                } else {
                    paydetail = amountdetails.filter(x => x.docid == bookingarray['docid'] && x.sno1 == bookingarray['sno1']);
                }

                let totalamt = 0.00;
                let paidamt = 0.00;
                let balance = 0.00;
                paydetail.forEach((data) => {
                    totalamt += parseFloat(data.totalamt);
                    paidamt += parseFloat(data.paidamt);
                    balance += parseFloat(data.balance);
                });

                globalguestcode = bookingarray['guestcode'];
                folioNo = bookingarray['folioNo'];
                globaldocid = bookingarray['docid'];
                globalsno1 = bookingarray['sno1'];
                globalsno = bookingarray['sno'];
                globalroomno = bookingarray['roomno'];
                globaldepdata = bookingarray['depdate'];
                globalleaderyn = bookingarray['leaderyn'];
                let crowncls = globalleaderyn == 'Y' ? 'crown' : '';
                globalncurdate = $('#fixncur').val();
                document.getElementById('docidd').value = globaldocid;
                let prefix = bookingarray['con_prefix'] ?? '';
                globalname = prefix + ' ' + bookingarray['name'];
                let div1 = document.querySelector('.modal-packed');

                if (!div1) {
                    div1 = document.createElement('div');
                    div1.classList.add('modal-packed');
                    document.body.appendChild(div1);
                }

                let modal = div1.querySelector('.modal-custom');

                if (!modal) {
                    modal = document.createElement('div');
                    modal.classList.add('modal-custom');
                    div1.appendChild(modal);
                }

                modal.classList.add('booking-info-packed');

                let formbtndisplay;
                let billprintbtndisp;
                if (bookingarray['billno'] == '0') {
                    formbtndisplay = 'none';
                    billprintbtndisp = 'block';
                } else {
                    formbtndisplay = 'block';
                    billprintbtndisp = 'none';
                }
                const [hours, minutes] = bookingarray['deptime'].split(':').map(Number);
                const departureTime = new Date(2000, 0, 1, hours, minutes);

                let buttonGroupDisplay = isCheckout ? 'none' : 'block';
                let updateNameButton = isCheckout ?
                    `<button data-name="${bookingarray['name']}" data-docid="${globaldocid}" data-sno1="${globalsno1}" type="button" class="btn btn-eight btn-sm btn-outline-primary" id="updateCheckoutGuestName" style="width:100%; margin-bottom:8px;">
                        <i class="fa-solid fa-pen-to-square"></i> Update Name
                    </button>` :
                    '';
                let chkoutstring = `<p>Checkout: ${new Date(bookingarray['chkoutdate']).toLocaleDateString('en-GB').replace(/\//g,'-')}</p>`;

                let userOrAdmin = @json(Auth::user()->useroradmin);
                let billCancel = userOrAdmin === 'admin' ?
                    1 :
                    Number(@json(optional(userdata())->billcancel));

                let billcancelbtn = '';

                if (billCancel === 1) {
                    billcancelbtn = `<button style="display:${formbtndisplay}; width: 100%; margin-bottom: 8px;" id="billcancelbtn" type="button" onclick="openCancelPrompt()" class="btn btn-eight btn-sm btn-outline-primary">Bill Cancel</button>`;
                }

                modal.innerHTML = `
                    <div class="modal-content content-packed">
                        <div style="display:contents;">
                            <h3 class="RBT ${crowncls}"><i class="fa-solid fa-hotel"></i> ${bookingarray['con_prefix'] ? bookingarray['con_prefix'] : ''} ${bookingarray['name'] ? bookingarray['name'] : ''}</h3>
                            <img class="close" onclick="deletemodaldiv()" src="{{ asset('admin/icons/custom/close2.svg') }}" alt="Close"></div>
                            <p><i class="fa-solid fa-phone"></i> ${bookingarray['mobile_no'] ? bookingarray['mobile_no'] : ''}</p>
                            ${updateNameButton}
                            <div class="button-group mb-2" style="display:${buttonGroupDisplay};">
                                <div aria-label="Vertical button group" role="group" class="">
                                    <button style="display:none;" class="btn btn-eight ti-write btn-sm btn-dribbble" type="button"> Edit Reservation</button>
                                    <button data-toggle="modal" data-target="#changeprofilemodal" class="btn btn-eight ti-id-badge btn-sm btn-vimeo" type="button"> Change Profile</button>
                                    <div role="group" class="btn-group">
                                        <button data-toggle="dropdown" class="btn btn-eight btn-sm btn-outline-success dropdown-toggle" type="button">More Options</button>
                                        <div class="dropdown-menu .custom-dropdown">
                                        <button style="display:${billprintbtndisp}; width: 100%; margin-bottom: 8px;" data-toggle="modal" data-target="#ammendstaymodal" class="btn btn-eight btn-sm btn-outline-primary" type="button">Amend Stay</button>
                                        <button style="width: 100%; margin-bottom: 8px;" data-toggle="modal" data-target="#guestledgermodal" class="btn btn-eight btn-sm btn-outline-primary" type="button">Guest Ledger</button>
                                        <button style="width: 100%; margin-bottom: 8px;" data-toggle="modal" data-target="#guestchargemodal" class="btn btn-eight btn-sm btn-outline-primary" type="button">Ledger Item</button>
                                        <button style="display:${billprintbtndisp}; width: 100%; margin-bottom: 8px;" data-toggle="modal" data-target="#roomchangemodal" class="btn btn-eight btn-sm btn-outline-primary" type="button">Room Change</button>
                                        <button style="display:${billprintbtndisp}; width: 100%; margin-bottom: 8px;" data-toggle="modal" data-target="#advchargemodal" class="btn btn-eight btn-sm btn-outline-primary" type="button">Advance Charge</button>
                                        <button id="billprint" style="display:${billprintbtndisp}; width: 100%; margin-bottom: 8px;" data-toggle="modal" data-target="#billprintmodal" class="btn btn-eight btn-sm btn-outline-primary" type="button">Bill Print</button>
                                        <form id="cancelForm" method="POST" action="{{ route('billcancel') }}" style="width: 100%;">
                                            @csrf
                                            <input type="hidden" name="docid" value="${bookingarray['docid']}">
                                            <input type="hidden" name="sno1" value="${bookingarray['sno1']}">
                                            <input type="hidden" id="cancelreason" name="cancelreason" value="">
                                            ${billcancelbtn}
                                            <button data-toggle="modal" data-target="#billsettlemodal" style="display:${formbtndisplay}; width: 100%; margin-bottom: 8px;" type="button" class="btn btn-eight btn-sm btn-outline-primary">Bill Settle</button>
                                        </form>
                                        ${buildRoomKeyButton(bookingarray)}
                                        ${buildRoomTimeButton(bookingarray)}
                                        </div>
                                    </div>
                                    <button id="compsettle" style="display:none;" class="btn btn-success btn-sm" type="button">Comp. Settle</button>
                                </div>
                            </div>
                            <div class="row bodydatadetailstatus">
                                    <div class="col-md-6">
                                        <p>Folio No.:  ${bookingarray['folioNo']}</p>
                                        <p>Check-in Date: ${new Date(bookingarray['chkindate']).toLocaleDateString('en-GB').replace(/\//g,'-')}</p>
                                        <p>Room Type: ${bookingarray['roomcatname']}</p>
                                        <p>Rate Plan: ${bookingarray['planname'] ? bookingarray['planname'] : ''}</p> 
                                        <p>Plan Amount: ${bookingarray['planamt'] ? bookingarray['planamt'] : ''}</p>
                                        <p>Company: ${bookingarray['company'] ? bookingarray['companyname'] : ''}</p>
                                        <p>Booked By: ${bookingarray['BookedBy'] ? bookingarray['BookedBy'] : ''}</p>
                                        ${isCheckout == true ? chkoutstring : ''}
                                    </div>
                                    <div class="col-md-6">
                                        <p>Adults <i class="fa-solid fa-user"></i> : ${bookingarray['adult']} Children <i class="fa-solid fa-child"></i> : ${bookingarray['children'] ? bookingarray['children'] : ''}</p>
                                        <p>Exp. Departure Date: ${new Date(bookingarray['depdate']).toLocaleDateString('en-GB').replace(/\//g,'-')}</p>
                                        <p>Departure Time: ${departureTime.toLocaleTimeString('en-GB', {
                                            hour: '2-digit',
                                            minute: '2-digit'
                                        })}</p>                                    <p>Room Number: ${bookingarray['roomno']}</p>
                                        <p>Room Rate: ${bookingarray['roomrate']}</p>
                                        <p>Bill No.: ${bookingarray['billno'] == '0' ? '' : '<a href="javascript:void(0)" class="bill-no-link" data-billno="' + bookingarray['billno'] + '" data-docid="' + bookingarray['docid'] + '" data-sno1="' + bookingarray['sno1'] + '" style="color:rgb(243, 156, 18); font-weight:700; text-decoration:underline; cursor:pointer;">' + bookingarray['billno'] + '</a>'}</p>
                                        <p>Travel: ${bookingarray['travelname'] ? bookingarray['travelname'] : ''}</p>
                                        <p>Pick Up/Drop <i class="fa-solid fa-truck-pickup"></i>: ${bookingarray['pickupdrop'] ? bookingarray['pickupdrop'] : ''}</p>
                                        <p>Complimentry: ${bookingarray['complimentry'] == 'Y' ? 'Yes' : 'No'}</p>
                                    </div>
                                    <p class="ml-2">Remarks: ${bookingarray['remarks'] ? bookingarray['remarks'] : ''}</p>
                                </div>
                                <div>
                                    <div style="background: #f8f9fa; padding: 6px 8px; border: 1px solid #dee2e6; border-radius: 4px; margin-top: 8px; font-size: 12px;">
                                        <div class="d-flex justify-content-between" style="margin: 2px 0;">
                                            <span>Total</span>
                                            <strong>Rs. ${totalamt.toFixed(2)}</strong>
                                        </div>
                                        <div class="d-flex justify-content-between" style="margin: 2px 0;">
                                            <span>Paid</span>
                                            <strong>Rs. ${paidamt.toFixed(2)}</strong>
                                        </div>
                                        <div class="d-flex justify-content-between text-danger" style="margin: 2px 0; border-top: 1px solid #ccc; padding-top: 2px;">
                                            <span>Balance</span>
                                            <strong>Rs. ${balance.toFixed(2)}</strong>
                                        </div>
                                    </div>
                                </div>
                    <div class="modal-footer p-0"></div>
                    </div>`;

                function buildRoomKeyButton(booking) {
                    if ({{ fomparameter()->pushroomkey == 1 ? 'true' : 'false' }} !== true) {
                        return '';
                    }

                    const docid = encodeURIComponent(booking.docid || '');
                    const sno1 = encodeURIComponent(booking.sno1 || '');
                    const pushUrl = `{{ url('/pushroomkey') }}/${docid}/${sno1}`;
                    const pushDrUrl = `{{ url('/pushroomkeydr') }}/${docid}/${sno1}`;
                    const amendIcon = Number(booking.amendstay) === 1 ? ' <i class="fa-solid fa-arrow-up-long"></i>' : '';
                    const status = Number(booking.roomkey_status);

                    let buttonHtml = '';

                    if (!booking.roomkey_status && booking.roomkey_status !== 0) {
                        buttonHtml = `<button type="button" class="btn btn-eight btn-sm btn-outline-primary js-push-roomkey" data-push-url="${pushUrl}" data-push-status="new" style="width: 100%; margin-bottom: 8px;"><i class="fas fa-paper-plane mr-1"></i>Push${amendIcon}</button>`;
                    } else if (status === 0 || (status === 1 && Number(booking.amendstay) === 1)) {
                        buttonHtml = `<button type="button" class="btn btn-eight btn-sm btn-outline-primary js-push-roomkey" data-push-url="${pushUrl}" data-push-status="already_pushed" style="width: 100%; margin-bottom: 8px;"><i class="fas fa-paper-plane mr-1"></i>Already Pushed - Push Again${amendIcon}</button>`;
                    } else if (status === 1) {
                        buttonHtml = `<span class="btn btn-success btn-sm" style="width: 100%; margin-bottom: 8px;"><i class="fas fa-check mr-1"></i>Already Pushed</span>`;
                    } else if (status === 2) {
                        const reason = escapeHtml(booking.roomkey_reason || '');
                        buttonHtml = `<button type="button" class="btn btn-eight btn-sm btn-outline-primary js-push-roomkey" data-push-url="${pushUrl}" data-push-status="failed" title="${reason}" style="width: 100%; margin-bottom: 8px;"><i class="fas fa-exclamation-triangle mr-1"></i>Last Push Failed - Push Again${amendIcon}</button>`;
                    }

                    buttonHtml += `<button type="button" class="btn btn-eight btn-sm btn-outline-info js-push-roomkey-dr" data-push-url="${pushDrUrl}" style="width: 100%; margin-bottom: 8px; margin-top: 4px;"><i class="fas fa-door-open mr-1"></i>Push DR</button>`;

                    return buttonHtml;
                }

                function buildRoomTimeButton(booking) {
                    const currentTime = String(booking.deptime || booking.chkouttime || '').substring(0, 5);
                    const docid = escapeHtml(booking.docid || '');
                    const sno1 = escapeHtml(booking.sno1 || '');

                    return `<button type="button" class="btn btn-eight btn-sm btn-outline-primary js-push-roomtime" data-docid="${docid}" data-sno1="${sno1}" data-current-time="${escapeHtml(currentTime)}" style="width: 100%; margin-bottom: 8px;"><i class="fas fa-clock mr-1"></i>Push Room Time</button>`;
                }

                $(document).on('click', '.js-push-roomkey', function(event) {
                    event.preventDefault();

                    const button = $(this);
                    const url = button.data('push-url');
                    const pushStatus = button.data('push-status');
                    let pushTitle = 'Push Room Key';
                    let pushText = 'Do you want to push the room key now? This will queue the request.';

                    if (pushStatus === 'already_pushed') {
                        pushTitle = 'Already pushed';
                        pushText = 'Key is already pushed. Do you want to push again?';
                    } else if (pushStatus === 'failed') {
                        pushTitle = 'Push failed';
                        pushText = 'Last push was not successful. Do you want to push again?';
                    }

                    Swal.fire({
                        title: pushTitle,
                        text: pushText,
                        icon: 'question',
                        showCancelButton: true,
                        confirmButtonText: 'Yes, push it',
                        cancelButtonText: 'Cancel'
                    }).then((result) => {
                        if (!result.isConfirmed) {
                            return;
                        }

                        $.ajax({
                            url: url,
                            type: 'POST',
                            data: {
                                _token: "{{ csrf_token() }}"
                            },
                            beforeSend: function() {
                                Swal.fire({
                                    title: 'Please wait',
                                    html: 'Sending room key request...',
                                    allowOutsideClick: false,
                                    didOpen: () => Swal.showLoading()
                                });
                            },
                            success: function(res) {
                                const failed = res.status === 2;
                                Swal.fire({
                                    title: failed ? 'Push failed' : (res.status === 1 ? 'Room key allotted' : 'Success'),
                                    text: res.message || 'Room key request queued.',
                                    icon: failed ? 'error' : 'success'
                                }).then(() => window.location.reload());
                            },
                            error: function(xhr) {
                                const message = xhr.responseJSON && xhr.responseJSON.message ? xhr.responseJSON.message : 'Unable to push room key.';
                                Swal.fire('Error', message, 'error');
                            }
                        });
                    });
                });

                $(document).on('click', '.js-push-roomkey-dr', function(event) {
                    event.preventDefault();

                    const button = $(this);
                    const url = button.data('push-url');

                    Swal.fire({
                        title: 'Push DR',
                        text: 'Do you want to push the DR (direct/readmit) key request now?',
                        icon: 'question',
                        showCancelButton: true,
                        confirmButtonText: 'Yes, push it',
                        cancelButtonText: 'Cancel'
                    }).then((result) => {
                        if (!result.isConfirmed) {
                            return;
                        }

                        $.ajax({
                            url: url,
                            type: 'POST',
                            data: {
                                _token: "{{ csrf_token() }}"
                            },
                            beforeSend: function() {
                                Swal.fire({
                                    title: 'Please wait',
                                    html: 'Sending DR key request...',
                                    allowOutsideClick: false,
                                    didOpen: () => Swal.showLoading()
                                });
                            },
                            success: function(res) {
                                const failed = res.status === 2;
                                Swal.fire({
                                    title: failed ? 'Push failed' : (res.status === 1 ? 'DR key allotted' : 'Success'),
                                    text: res.message || 'DR key request queued.',
                                    icon: failed ? 'error' : 'success'
                                }).then(() => window.location.reload());
                            },
                            error: function(xhr) {
                                const message = xhr.responseJSON && xhr.responseJSON.message ? xhr.responseJSON.message : 'Unable to push DR key.';
                                Swal.fire('Error', message, 'error');
                            }
                        });
                    });
                });

                if (bookingarray['complimentry'] == 'Y') {
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
                            if (balance <= 0 || balance == null) {
                                pushNotify('info', 'Room Status', 'Complimentry Room', 'fade', 300, '', '', true, true, true, 15000, 20, 20, 'outline', 'right top');
                                $('#compsettle').css('display', 'block');
                                $('#billprint').css('display', 'none');
                                $('#billcancelbtn').css('display', 'none');
                            }
                        },
                        error: function(xhr) {
                            console.log(xhr.responseText);
                            Swal.fire('Error', 'Something went wrong while checking bill details!', 'error');
                        }
                    });
                }
            }
        }

        $(document).on('click', '.js-push-roomtime', function(event) {
            event.preventDefault();

            const button = $(this);
            const currentTime = button.data('current-time') || new Date().toTimeString().substring(0, 5);
            const docid = button.data('docid');
            const sno1 = button.data('sno1');

            Swal.fire({
                title: 'Push Room Time',
                input: 'time',
                inputLabel: 'Checkout time (24-hour format)',
                inputValue: currentTime,
                inputAttributes: {
                    step: 60
                },
                showCancelButton: true,
                confirmButtonText: 'Push',
                cancelButtonText: 'Cancel',
                preConfirm: function(newTime) {
                    if (!newTime) {
                        Swal.showValidationMessage('Please select a time');
                        return false;
                    }

                    return newTime;
                }
            }).then(function(result) {
                if (!result.isConfirmed) {
                    return;
                }

                $.ajax({
                    url: "{{ url('/pushroomtime') }}/" + encodeURIComponent(docid) + '/' + encodeURIComponent(sno1),
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}",
                        departure_time: result.value
                    },
                    beforeSend: function() {
                        Swal.fire({
                            title: 'Please wait',
                            html: 'Sending room time request...',
                            allowOutsideClick: false,
                            didOpen: function() {
                                Swal.showLoading();
                            }
                        });
                    },
                    success: function(res) {
                        const failed = res.status === 2;
                        Swal.fire({
                            title: failed ? 'Push failed' : (res.status === 1 ? 'Room time allotted' : 'Success'),
                            text: res.message || 'Room time request queued.',
                            icon: failed ? 'error' : 'success'
                        });
                    },
                    error: function(xhr) {
                        const message = xhr.responseJSON && xhr.responseJSON.message ? xhr.responseJSON.message : 'Unable to push room time.';
                        Swal.fire('Error', message, 'error');
                    }
                });
            });
        });


        $(document).on('click', '#compsettle', function() {
            let compbalance = Number(localStorage.getItem('compbalance'));

            if (compbalance < 0) {
                Swal.fire({
                    icon: 'error',
                    title: 'Complimentry Settlement',
                    text: `Balance is ${compbalance}. First Post Refund and Retention! To Complimentry Settlement`,
                });
                return;
            }

            Swal.fire({
                icon: 'warning',
                title: 'Complimentry Settlement',
                text: 'Are you sure you want to settle this complimentary balance?',
                showCancelButton: true,
                confirmButtonText: 'Yes, Settle',
                cancelButtonText: 'Cancel',
                reverseButtons: true
            }).then((result) => {

                if (!result.isConfirmed) {
                    return;
                }

                const postdata = {
                    'docid': globaldocid,
                    'sno1': globalsno1,
                    'sno': globalsno
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
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Settlement Failed',
                                text: data.message || 'Unable to complete settlement.',
                            });
                        }

                        setTimeout(() => {
                            window.location.reload();
                        }, 2000);
                    })
                    .catch(error => {
                        console.log(error);

                        Swal.fire({
                            icon: 'error',
                            title: 'Settlement Error',
                            text: 'Something went wrong while processing the settlement.',
                        });
                    });
            });
        });

        $(document).on('click', '.checkinbtnrocc', function() {
            let docid = $(this).data('docid');
            let sno = $(this).data('sno');
            sendroute(docid, sno);
        });

        $(document).on('click', '#billprint', function() {
            $('#myloader').removeClass('none');
            $('#myloader').find('img').attr('src', 'admin/icons/custom/typewriter.gif');
            $('#myloader').find('.loader-text').html('Getting Bill Details');

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            $.ajax({
                type: 'POST',
                url: '/checkbillalreadyprinted',
                data: {
                    docid: globaldocid,
                    sno1: globalsno1
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
                            checkpostxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
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
                                                let startposting = new XMLHttpRequest();
                                                startposting.open('POST', '/postchargesone', true);
                                                startposting.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                                                startposting.onreadystatechange = function() {
                                                    if (startposting.status === 200 && startposting.readyState === 4) {
                                                        let results = JSON.parse(startposting.responseText);
                                                        $('#billprintmodal').modal('hide');
                                                        if (results.success == 'Charge Posted') {
                                                            Swal.fire({
                                                                title: "Charge Posting",
                                                                text: `Charges have been posted for Room No. : ${globalroomno}. Reopen Bill Print.`,
                                                                icon: "success",
                                                                timer: 3000
                                                            }).then(() => {
                                                                if (results.backposting == 1 && allrooms && Array.isArray(allrooms)) {
                                                                    showAlertForRooms(allrooms, 0, results.backposting);
                                                                } else {
                                                                    continueAfterRoomPost([{
                                                                        docid: globaldocid,
                                                                        sno1: globalsno1,
                                                                        roomno: globalroomno
                                                                    }], 0, results.backposting);
                                                                }
                                                            });
                                                        } else if (results.error == 'Unable To Post Charge') {
                                                            Swal.fire({
                                                                title: "Charge Posting",
                                                                text: `Unable to Post Charge`,
                                                                icon: "error",
                                                                timer: 3000
                                                            }).then(() => {
                                                                if (allrooms && Array.isArray(allrooms)) {
                                                                    showAlertForRooms(allrooms, 0);
                                                                }
                                                            });
                                                        } else {
                                                            Swal.fire({
                                                                title: "Charge Posting",
                                                                text: `Unknown Error Occurred`,
                                                                icon: "error",
                                                                timer: 3000
                                                            }).then(() => {
                                                                if (allrooms && Array.isArray(allrooms)) {
                                                                    showAlertForRooms(allrooms, 0);
                                                                }
                                                            });
                                                        }
                                                    }
                                                };
                                                startposting.send(`docid=${globaldocid}&chargedate=${resultsd.checkdate}&roomno=${globalroomno}&sno1=${globalsno1}&_token={{ csrf_token() }}`);
                                            } else if (result.isDismissed) {
                                                if (allrooms && Array.isArray(allrooms)) {
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
                            checkpostxhr.send(`docid=${globaldocid}&sno1=${globalsno1}&_token={{ csrf_token() }}`);
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
                    billprintiframe.src = "{{ url('/billprint') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno + "&origin=roomstatus";
                    $('#billprintmodal').modal('show');
                    return;
                }

                if (index >= rooms.length) return;
            } else {
                let billprintiframe = document.getElementById("billprintiframe");
                billprintiframe.src = "{{ url('/billprint') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno + "&origin=roomstatus";
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
                                    startposting.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
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
                                                    continueAfterRoomPost(rooms, index, results.backposting);
                                                });
                                            } else if (results.error == 'Unable To Post Charge') {
                                                Swal.fire({
                                                    title: "Charge Posting",
                                                    text: `Unable to Post Charge`,
                                                    icon: "error",
                                                    timer: 3000
                                                }).then(() => {
                                                    continueAfterRoomPost(rooms, index, results.backposting);
                                                });
                                            } else {
                                                Swal.fire({
                                                    title: "Charge Posting",
                                                    text: `Unknown Error Occurred`,
                                                    icon: "error",
                                                    timer: 3000
                                                }).then(() => {
                                                    continueAfterRoomPost(rooms, index, results.backposting);
                                                });
                                            }
                                        }
                                    };
                                    startposting.send(`docid=${rooms[index].docid ?? ''}&chargedate=${resultsd.checkdate}&roomno=${rooms[index].roomno}&sno1=${rooms[index].sno1}&_token={{ csrf_token() }}`);
                                } else if (result.isDismissed) {
                                    showAlertForRooms(rooms, index + 1, results.backposting);
                                }
                            });
                        } else {
                            showAlertForRooms(rooms, index + 1, resultsd.backposting);
                        }
                    }
                }
                checkpostxhr.send(`docid=${rooms[index].docid}&sno1=${rooms[index].sno1}&_token={{ csrf_token() }}`);
            }

        }

        function openCancelPrompt() {
            // var reason = prompt("Why do you want to cancel this bill?");
            Swal.fire({
                icon: 'question',
                title: 'Bill',
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
                    document.getElementById("cancelreason").value = result.value;
                    document.getElementById("cancelForm").submit();
                }
            });
        }

        $('#changeprofilemodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("changeprofileframe");
            let profilechangespan = document.getElementById('profilechangespan');
            let profilechangecode = document.getElementById('profilechangecode');
            profilechangespan.textContent = globalname;
            profilechangecode.textContent = folioNo;
            iframe.src = "{{ url('/changeprofile') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1;
        });

        $('#ammendstaymodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("ammenstayiframe");
            let profilechangespan = document.getElementById('ammendstayspan');
            let guestcode1 = document.getElementById('guestcode1');
            profilechangespan.textContent = globalname;
            guestcode1.textContent = folioNo;
            iframe.src = "{{ url('/ammendstay') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno;
        });

        $('#guestledgermodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("guestledgeriframe");
            let guestledgerspan = document.getElementById('guestledgerspan');
            let guestcode1 = document.getElementById('guestcode2');
            guestledgerspan.textContent = globalname;
            guestcode1.textContent = folioNo;
            iframe.src = "{{ url('/guestledger') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1;
        });

        $('#guestchargemodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("guestchargeiframe");
            let guestchargespan = document.getElementById('guestchargespan');
            let guestcode1 = document.getElementById('guestcode7');
            guestchargespan.textContent = globalname;
            guestcode1.textContent = folioNo;
            iframe.src = "{{ url('/guestcharge') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1;
        });

        $('#roomchangemodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("roomchangeiframe");
            let profilechangespan = document.getElementById('roomchangespan');
            profilechangespan.textContent = globalname;
            let guestcode3 = document.getElementById('guestcode3');
            guestcode3.textContent = folioNo;
            iframe.src = "{{ url('/roomchange') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno;
        });

        $('#advchargemodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("advchargeiframe");
            let profilechangespan = document.getElementById('advchargespan');
            profilechangespan.textContent = globalname;
            let guestcode4 = document.getElementById('guestcode4');
            guestcode4.textContent = folioNo;
            iframe.src = "{{ url('/advcharge') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno;
        });

        $('#billprintmodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("billprintiframe");
            let billprintspan = document.getElementById('billprintspan');
            let guestcode5 = document.getElementById('guestcode5');
            billprintspan.textContent = globalname;
            guestcode5.textContent = folioNo;
            iframe.src = "{{ url('/billprint') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno + "&origin=roomstatus";
        });

        $('#billsettlemodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("billsettleiframe");
            let profilechangespan = document.getElementById('billsettlespan');
            profilechangespan.textContent = globalname;
            let guestcode6 = document.getElementById('guestcode6');
            guestcode6.textContent = folioNo;
            iframe.src = "{{ url('/billsettle') }}" + "?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno;
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
                        </tr>`;
            }).join('');

            modalSubtext.text(arrivals.length + ' arrival' + (arrivals.length > 1 ? 's' : '') + ' found');
            tableBody.html(rowsHtml);
            modal.modal('show');
        }

        $(document).on('click', '.avail-cell', function() {
            let date = $(this).data('date');

            $.ajax({
                url: 'todaysarrivalsbydate',
                type: 'POST',
                data: {
                    date: date
                },
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function(data) {
                    const arrivals = Array.isArray(data) ? data : [];

                    if (!arrivals.length) {
                        pushNotify('info', 'Room Status', 'No Arrivals Today', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'left top');

                        return;
                    }

                    renderTodaysArrivals(arrivals);
                },
                error: function(xhr, status, error) {
                    swal("Unable to fetch today's arrivals");
                    console.error("Error fetching today's arrivals:", error);
                }
            });

        });

        $(document).on('click', '.cat-avail-cell', function() {
            let date = $(this).data('date');
            let cat = $(this).data('cat');

            $.ajax({
                url: 'todaysarrivalsbydate',
                type: 'POST',
                data: {
                    date: date,
                    roomcat: cat
                },
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function(data) {
                    const arrivals = Array.isArray(data) ? data : [];

                    if (!arrivals.length) {
                        pushNotify('info', 'Room Status', 'No Arrivals Today', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'left top');

                        return;
                    }

                    renderTodaysArrivals(arrivals);
                },
                error: function(xhr, status, error) {
                    swal("Unable to fetch today's arrivals");
                    console.error("Error fetching today's arrivals:", error);
                }
            });

        });

        function sendroute(docid, sno) {
            Swal.fire({
                title: 'Room Status',
                text: "Mentioned thing(s) are compulsory in order to proceed to check in. Do you want to add this information?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, proceed',
                cancelButtonText: 'No, cancel'
            }).then((result) => {
                if (result.isConfirmed) {
                    var url = 'prefilledwalkin?docid=' + encodeURIComponent(docid) + '&sno=' + encodeURIComponent(sno);
                    window.location.href = url;
                }
            });
        }

        // ── Bill No. click → open billreprint page ──────────────────────
        $(document).on('click', '.bill-no-link', function() {
            var billno = $(this).data('billno');
            var docid = $(this).data('docid');
            var sno1 = $(this).data('sno1');
            var url = '{{ url('billreprint') }}?autoload=1&billno=' + encodeURIComponent(billno) +
                '&docid=' + encodeURIComponent(docid) +
                '&sno1=' + encodeURIComponent(sno1);
            window.open(url, '_blank');
        });
    </script>
@endsection
