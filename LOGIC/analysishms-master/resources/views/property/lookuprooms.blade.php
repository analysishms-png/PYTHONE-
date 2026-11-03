@extends('property.layouts.main')
@section('main-container')
    <script src="{{ asset('admin/js/dynamic/remarkform.js') }}"></script>
    <script src="{{ asset('admin/js/dynamic/roomblock.js') }}"></script>
    <script src="{{ asset('admin/js/dynamic/depupdate.js') }}"></script>
    <script src="{{ asset('admin/js/room.js') }}"></script>
    <div class="content-body">
        <div id="bookingmodal" class="bookingmodal">
            <h3>In House <span class="fa-2xs blinking-text ARDR">Room Status is a color coded indicator that shows
                    the status of the booking.</span></h3>
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

        <div id="roomActionPanel" class="room-action-panel">
            <div class="room-action-panel-header">
                <div class="room-action-panel-title"></div>
                <button type="button" class="room-action-panel-close">
                    <i class="fa-solid fa-xmark"></i>
                </button>
            </div>

            <div class="room-action-panel-body"></div>
        </div>
        {{-- {{ $ncurdate }} --}}
        <input style="display: none;" type="date" id="sss" value="{{ $ncurdate }}">
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
                                            name="roomsearch" id="roomsearch">
                                    </th>
                                    <th id="infoicon"><i class="fa-regular fa-circle-question"></i></th>
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

    <style>
        #dateTable tr td .roomstatus-segment {
            width: 100%;
            border: 0;
            text-align: left;
            padding: 4px 6px;
            font-size: 12px;
            line-height: 1.2;
            color: #000;
            cursor: pointer;
            background-image: none;
        }

        #dateTable tr td .roomstatus-segment.roomstatus-segment-crown {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
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
            searchInputId: 'roomsearch',
            pageSource: 'openlookuproom',
            reservationSingleUrl: '{{ route('fetchreservationsingle') }}',
            closeIconUrl: '{{ asset('admin/icons/custom/close2.svg') }}',
            travelLogoBaseUrl: '{{ asset('uploads/favicons') }}',
            crownIconUrl: '{{ asset('admin/icons/custom/king.svg') }}',
            truncateTravelName: false,
            showReservationStatus: false,
            enableLegacyRoomCategoryToggle: true
        });
    </script>

    <script>
        const default_days_roomstatus = @json(fomparameter()->default_days_roomstatus) ?? 14;

        function generateDateRow() {
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
        <li> <input type="checkbox" id="checkallroomcat" checked>
            <span>Select All</span></li>
        @foreach ($roomcategorydata as $item)
            <li>
                <input class="roomcatcheckbox" value="{{ $item->cat_code }}"
                       type="checkbox" checked>
                <span>{{ $item->name }}</span>
            </li>
        @endforeach
    </ul>
`;
            firstCell.appendChild(nameSpan);

            for (let i = 1; i <= default_days_roomstatus; i++) {
                let cell = row.insertCell();
                cell.classList.add('dateheadertd');
                cell.id = 'datheaderid' + i;

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
                cell.appendChild(document.createElement("strong")).appendChild(document.createTextNode(date.getDate()));
                let yearSpan = document.createElement('span');
                yearSpan.style.display = 'none';
                yearSpan.textContent = date.getFullYear();
                cell.appendChild(yearSpan);
                cell.appendChild(document.createElement('br'));
                let daySpan = document.createElement('span');
                daySpan.textContent = new Intl.DateTimeFormat('en-US', {
                    weekday: 'short'
                }).format(date);
                cell.appendChild(daySpan);
                date.setDate(date.getDate() + 1);
                exportdateformat(completedate);
            }

            async function fetchRoomCategory() {
                try {
                    const response = await fetch('/roomstatusdata');

                    if (!response.ok) {
                        throw new Error(`HTTP ${response.status}`);
                    }

                    const result = await response.json();

                    const categories = result.categories || [];
                    const roomsByCategory = result.rooms || {};
                    const table = document.getElementById('dateTable');

                    for (const category of categories) {
                        const rooms = roomsByCategory[category.cat_code] || [];

                        let row = table.insertRow();

                        let cell = row.insertCell();
                        cell.classList.add('rstatuscatname');
                        cell.setAttribute('data-cat', category.cat_code);

                        $(cell).html(
                            `${category.name} <span class="badge badge-primary">${category.norooms}</span>`
                        );

                        row.dataset.value = category.cat_code;

                        for (let i = 0; i < default_days_roomstatus; i++) {
                            const td = row.insertCell();
                            const header = document.querySelectorAll('.dateheadertd')[i];

                            td.className = 'cat-avail-cell cursor-pointer';
                            td.dataset.cat = category.cat_code;
                            td.dataset.date = header.dataset.date;
                        }

                        for (const room of rooms) {
                            row = table.insertRow();

                            cell = row.insertCell();

                            if (
                                room.room_stat === 'D' &&
                                "{{ fomparameter()->housekeepingroomstatus }}" == 1 &&
                                room.cleaningstatus === 'In Progress'
                            ) {
                                const cleaning = getCleaningTimeStatus(
                                    room.vtime,
                                    room.esttime
                                );

                                cell.style.color = cleaning.isOver ?
                                    '#dc3545' :
                                    '#385ceb';

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

                            for (let i = 0; i < default_days_roomstatus; i++) {
                                cell = row.insertCell();

                                cell.classList.add('roomstatuscell');
                                cell.innerHTML = '&nbsp;';
                                cell.dataset.value = room.rcode;

                                const header = document.querySelectorAll('.dateheadertd')[i];

                                cell.headers = header.dataset.date;
                                cell.setAttribute('ofwhat', '');
                            }
                        }
                    }
                } catch (error) {
                    console.error('Error fetching room status data:', error);
                }
            }

            async function fetchRooms(categoryCode) {
                try {
                    const response = await fetch('/roomget', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                        },
                        body: JSON.stringify({
                            categoryCode: categoryCode,
                        }),
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
                        const amountdetails = datas.amountdetails ?? [];
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
                                        pushNotify('info', 'Room Status', 'Press ESC Button To Close Details', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'left top');
                                    }
                                }, 'checkin');
                            });
                        } else {
                            console.error('No booked rooms data found.');
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
                    let date = $(this).attr('data-date');
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
            }, 5000);

            fetchRoomCategory();

        }

        document.getElementById('fromdate').addEventListener('change', generateDateRow);

        generateDateRow();
    </script>



    <script>
        var globalguestcode;
        var globalname;
        var globalfoliono;

        function OpenBookingInfoModal(bookingarray, amountdetails = [], isCheckout = false) {
            globalguestcode = bookingarray['guestcode'];
            folioNo = bookingarray['folioNo'];
            globalname = bookingarray['con_prefix'] + ' ' + bookingarray['name'];
            let chkoutstring = `<p>Checkout: ${new Date(bookingarray['chkoutdate']).toLocaleDateString('en-GB').replace(/\//g,'-')}</p>`;

            let leaderyn = bookingarray['leaderyn'];
            let paydetail;
            if (leaderyn == 'Y') {
                paydetail = amountdetails.filter(x => x.docid == bookingarray['docid']);
            } else {
                paydetail = amountdetails.filter(x => x.docid == bookingarray['docid'] && x.sno1 == bookingarray['sno1']);
            }

            const [hours, minutes] = bookingarray['deptime'].split(':').map(Number);
            const departureTime = new Date(2000, 0, 1, hours, minutes);

            let totalamt = 0.00;
            let paidamt = 0.00;
            let balance = 0.00;
            paydetail.forEach((data) => {
                totalamt += parseFloat(data.totalamt);
                paidamt += parseFloat(data.paidamt);
                balance += parseFloat(data.balance);
            });

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

            modal.innerHTML = `
    <div class="modal-content content-packed">
        <div style="display:contents;">
            <h3 class="RBT"><i class="fa-solid fa-hotel"></i> ${bookingarray['con_prefix'] ? bookingarray['con_prefix'] : ''} ${bookingarray['name'] ? bookingarray['name'] : ''}</h3>
            <img class="close" onclick="deletemodaldiv()" src="{{ asset('admin/icons/custom/close2.svg') }}">
        </div>
    <p><i class="fa-solid fa-phone"></i> ${bookingarray['mobile_no'] ? bookingarray['mobile_no'] : ''}</p>
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
                                        <p>Bill No.: ${bookingarray['billno'] == '0' ? '' : bookingarray['billno']}</p>
                                        <p>Travel: ${bookingarray['travelname'] ? bookingarray['travelname'] : ''}</p>
                                        <p>Pick Up/Drop <i class="fa-solid fa-truck-pickup"></i>: ${bookingarray['pickupdrop'] ? bookingarray['pickupdrop'] : ''}</p>
                                        <p>Complimentry: ${bookingarray['complimentry'] == 'Y' ? 'Yes' : 'No'}</p>
                                    </div>
                                    <p class="ml-2">Remarks: ${bookingarray['remarks'] ? bookingarray['remarks'] : ''}</p>
                                </div>
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
</div>
        `;
        }

        $('#changeprofilemodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("changeprofileframe");
            let profilechangespan = document.getElementById('profilechangespan');
            let profilechangecode = document.getElementById('profilechangecode');
            profilechangespan.textContent = globalname;
            profilechangecode.textContent = folioNo;
            iframe.src = "{{ url('/changeprofile') }}" + "?guestcode=" + globalguestcode;
        });

        $('#ammendstaymodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("ammenstayiframe");
            let profilechangespan = document.getElementById('ammendstayspan');
            let guestcode1 = document.getElementById('guestcode1');
            profilechangespan.textContent = globalname;
            guestcode1.textContent = folioNo;
            iframe.src = "{{ url('/ammendstay') }}" + "?guestcode=" + globalguestcode;
        });

        $('#guestledgermodal').on('show.bs.modal', function(event) {
            var iframe = document.getElementById("guestledgeriframe");
            let guestledgerspan = document.getElementById('guestledgerspan');
            let guestcode1 = document.getElementById('guestcode2');
            guestledgerspan.textContent = globalname;
            guestcode1.textContent = folioNo;
            iframe.src = "{{ url('/guestledger') }}" + "?guestcode=" + globalguestcode;
        });

        // opening clickmodal where inside a modal only a button of openwalkinform will be shown
        function openclickedmodal(bookingarray) {
            let docid = bookingarray['BookingDocid'];
            let folioNo = bookingarray['folioNo'];
            globalname = bookingarray['con_prefix'] + ' ' + bookingarray['GuestName'];
            const div1 = document.createElement('div');
            div1.classList.add('modal-packed');
            const modal = document.createElement('div');

            modal.innerHTML = `
    <div class="modal-content content-packed">
        <img class="close" onclick="deletemodaldiv2()" src="{{ asset('admin/icons/custom/close.svg') }}" alt="Close">
        <h3 class="RBT"><i class="fa-solid fa-hotel"></i> ${globalname ? globalname : ''}</h3>
        <p><i class="fa-solid fa-phone"></i> ${bookingarray['mobile_no'] ? bookingarray['mobile_no'] : ''}</p>
        <div class="button-group mb-2">
            <button onclick="window.location.href='{{ url('prefilledwalkin?docid=') }}${docid}'" class="btn btn-eight btn-sm btn-outline-primary">Open Walkin Form</button>
        </div>
    </div>
`;


            document.body.appendChild(div1);
            div1.appendChild(modal);
        }
    </script>
@endsection
