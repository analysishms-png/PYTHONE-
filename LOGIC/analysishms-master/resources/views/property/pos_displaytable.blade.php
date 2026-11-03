@extends('property.layouts.main')
@section('main-container')
    <style>
        .occupied {
            background-color:
                {{ $depdata->occupied }};
        }

        .vacant {
            background-color:
                {{ $depdata->vacant }};
        }

        .billed {
            background-color:
                {{ $depdata->billed }};
        }

        .booked {
            background-color:
                {{ $depdata->booked }};
        }

        .maintenance {
            background-color: #ff5964;
        }
    </style>

    @php
        function isDarkColor($hexColor)
        {
            $r = hexdec(substr($hexColor, 1, 2));
            $g = hexdec(substr($hexColor, 3, 2));
            $b = hexdec(substr($hexColor, 5, 2));
            $brightness = ($r * 299 + $g * 587 + $b * 114) / 1000;
            $threshold = 128;
            return $brightness < $threshold;
        }
    @endphp
    <div class="content-body pos_display">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card pos_display">
                        <div class="card-body box animate__animated animate__bounceIn">

                            </h5>
                            <p id="updatemsg" class="p-2 updatemsg bg-light">Pos Updated</p>
                            <div class="container-fluid">
                                <div class="row g-3 align-items-start">
                                    <!-- Status + Settlement Buttons -->
                                    <div class="col-12 col-md-12">
                                        <div class="row g-2 text-center justify-content-center" id="statusBoxContainer">
                                            <div class="col-6 col-sm-4 col-lg-3 g-2">
                                                <button class="box animate__animated animate__bounceInLeft w-100"
                                                    data-status="occupied"
                                                    style="background: {{ $depdata->occupied }}; color: {{ isDarkColor($depdata->occupied) ? 'white' : 'black' }};"
                                                    onclick="openColorPicker('occupied')">
                                                    Occupied
                                                </button>
                                            </div>

                                            <div class="col-6 col-sm-4 col-lg-3 g-2">
                                                <button class="box animate__animated animate__bounceInDown w-100"
                                                    data-status="vacant"
                                                    style="background: {{ $depdata->vacant }}; color: {{ isDarkColor($depdata->vacant) ? 'white' : 'black' }};"
                                                    onclick="openColorPicker('vacant')">
                                                    Vacant
                                                </button>
                                            </div>

                                            <div class="col-6 col-sm-4 col-lg-3 g-2">
                                                <button class="box animate__animated animate__bounceInRight w-100"
                                                    data-status="billed"
                                                    style="background: {{ $depdata->billed }}; color: {{ isDarkColor($depdata->billed) ? 'white' : 'black' }};"
                                                    onclick="openColorPicker('billed')">
                                                    Billed
                                                </button>
                                            </div>

                                            <div class="col-6 col-sm-4 col-lg-3 g-2">
                                                <button class="box animate__animated animate__bounceInLeft w-100"
                                                    data-status="booked"
                                                    style="background: {{ $depdata->booked }}; color: {{ isDarkColor($depdata->booked) ? 'white' : 'black' }};"
                                                    onclick="openColorPicker('booked')">
                                                    Booked
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Details Section -->

                                </div>
                            </div>

                            <style>
                                .box {
                                    border: none;
                                    border-radius: 10px;
                                    padding: 10px 18px;
                                    font-weight: 600;
                                    font-size: 15px;
                                    cursor: pointer;
                                    text-align: center;
                                    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.15);
                                    transition: transform 0.2s ease, box-shadow 0.2s ease;
                                    margin-bottom: 10px;
                                }

                                .box:hover {
                                    transform: translateY(-3px);
                                    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.25);
                                }
                            </style>



                            <form name="posdispform" id="posdispform" action="{{ route('posdisplaysubmit') }}" method="POST"
                                enctype="multipart/form-data">
                                <input type="hidden" value="{{ $depdata->dcode }}" name="dcode" id="dcode">
                                <input type="hidden" value="{{ $depdata->nature }}" name="nature" id="nature">
                                <input type="hidden" value="{{ $label }}" name="label" id="label">
                                <input type="color" id="occupiedColor" name="occupied" value="{{ $depdata->occupied }}"
                                    style="display: none;">
                                <input type="color" id="vacantColor" name="vacant" value="{{ $depdata->vacant }}"
                                    style="display: none;">
                                <input type="color" id="billedColor" name="billed" value="{{ $depdata->billed }}"
                                    style="display: none;">
                                <input type="color" id="bookedColor" name="booked" value="{{ $depdata->booked }}"
                                    style="display: none;">

                                <div class="room-grid">
                                    @foreach ($roomocc as $item)
                                        <?php $roomNo = $item['roomno'] ?? $item['rcode']; ?>
                                        <div class="card-container">
                                            <div class="card-flip">
                                                <div id="details" class="col-12">
                                                    <div
                                                        class="head2 d-flex flex-column flex-sm-row flex-wrap gap-2 bubble-text stylish-border p-3 text-center text-md-start">
                                                        <p id="waitername_{{ $roomNo }}" class="mb-0 flex-fill"></p>
                                                        <p id="roomnot_{{ $roomNo }}" class="mb-0 flex-fill"></p>
                                                        <p id="sessionmast_{{ $roomNo }}" class="mb-0 flex-fill"></p>
                                                        <p id="kottime_{{ $roomNo }}" class="mb-0 flex-fill"></p>
                                                    </div>
                                                </div>
                                                <span class="none" id="roomnokot_{{ $roomNo }}"></span>
                                                <span class="none" id="vnofix_{{ $roomNo }}"></span>
                                                <div class="menucover_{{ $roomNo }} none">
                                                    <div class="menudiv">
                                                        <div class="btn-group-vertical">
                                                            <button id="kotbutton_{{ $roomNo }}"
                                                                onclick="openkot('{{ $roomNo }}')" type="button"
                                                                class="btn btn-outline-primary"><img
                                                                    style="height: 25px;mix-blend-mode: darken;"
                                                                    src="{{ asset('admin/icons/custom/plus.gif') }}" alt="">
                                                                KOT</button>
                                                            <button id="salebillbutton_{{ $roomNo }}"
                                                                onclick="opensalebill('{{ $roomNo }}')" type="button"
                                                                class="btn btn-outline-primary"><img
                                                                    style="height: 25px;mix-blend-mode: darken;"
                                                                    src="{{ asset('admin/icons/custom/plus.gif') }}" alt="">
                                                                Sale Bill</button>
                                                            <button id="viewbutton_{{ $roomNo }}"
                                                                onclick="openviewitem('{{ $roomNo }}')" type="button"
                                                                class="btn btn-outline-primary"><img
                                                                    style="height: 25px;mix-blend-mode: darken;"
                                                                    src="{{ asset('admin/icons/custom/eye.gif') }}" alt=""> View
                                                                Item</button>
                                                            <button id="closediv_{{ $roomNo }}" type="button"
                                                                class="btn btn-outline-primary"
                                                                onclick="closeMenuCoverUpdateClosed('{{ $roomNo }}')"><img
                                                                    style="height: 25px;mix-blend-mode: darken;"
                                                                    src="{{ asset('admin/icons/custom/cancel.gif') }}" alt="">
                                                                Canel</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <input type="hidden" value="{{ $item['status'] }}" id="divStatus_{{ $roomNo }}">
                                                <div class="front">
                                                    <div class="box animate__animated animate__pulse room-boxdisp {{ $item['status'] }}"
                                                        data-value="{{ $item['docid'] ?? '' }}" data-id="{{ $roomNo }}">
                                                        <div class="room-number"
                                                            style="color: {{ isDarkColor($depdata->occupied) ? 'white' : 'black' }};">
                                                            {{ $item['roomno'] ?? $item['rcode'] }}
                                                        </div>
                                                        <div class="room-statusdisp text-dark text-uppercase">
                                                            {{ $item['waitername'] == null ? $item['status'] : $item['waitername'] }}
                                                        </div>
                                                        <input type="hidden" value="{{ $item['roomno'] ?? $item['rcode'] }}"
                                                            name="roomcode" id="roomcode">
                                                    </div>
                                                </div>
                                                <div class="back">
                                                    <div class="box animate__animated animate__pulse room-boxdisp {{ $item['status'] }}"
                                                        data-value="{{ $item['docid'] ?? '' }}"
                                                        data-id="{{ $item['roomno'] ?? $item['rcode'] }}">
                                                        <div class="room-number"
                                                            style="color: {{ isDarkColor($depdata->occupied) ? 'white' : 'black' }};">
                                                            {{ $item['roomno'] ?? $item['rcode'] }}
                                                        </div>
                                                        <div class="room-statusdisp text-dark text-uppercase">
                                                            {{ $item['waitername'] == null ? $item['status'] : $item['waitername'] }}
                                                        </div>
                                                        <input type="hidden" value="{{ $item['roomno'] ?? $item['rcode'] }}"
                                                            name="roomcode" id="roomcode">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function closeMenuCoverUpdateClosed(id) {
            console.log('Closing menu cover for:', id);

            const $menuCover = $('.menucover_' + id);

            if ($menuCover.length === 0) {
                console.warn('No menu cover found for ID:', id);
                return;
            }

            $menuCover.hide().removeClass('block box animate__animated animate__bounceInDown');
            $('#waitername_' + id).html('');
            $('#roomnot_' + id).html('');
            $('#kottime_' + id).html('');
            $('#salebillbutton_' + id).prop('disabled', true);
        }
        $(document).ready(function() {
            let flippedCards = [];

            setInterval(function() {
                let cards = $('.card-container');
                let numberOfCardsToFlip = Math.floor(Math.random() * 1) + 1;
                let indices = [];

                while (indices.length < numberOfCardsToFlip) {
                    let randomIndex = Math.floor(Math.random() * cards.length);
                    if (!indices.includes(randomIndex)) {
                        indices.push(randomIndex);
                    }
                }

                indices.forEach(index => {
                    let card = $(cards[index]);
                    card.addClass('flip');
                    flippedCards.push(card);

                    for (let i = 0; i < 10; i++) {
                        let star = $('<div class="star"></div>').appendTo(card);
                        let randomX = Math.random() * 200 - 100;
                        let randomY = Math.random() * 200 - 100;

                        star.css({
                            transform: `translate(${randomX}px, ${randomY}px)`
                        });

                        setTimeout(() => {
                            star.remove();
                        }, 100);
                    }

                    setTimeout(() => {
                        card.removeClass('flip');
                        flippedCards = flippedCards.filter(c => c !== card);
                    }, 2000);
                });
            }, 25000);
        });

        function openkot(id) {
            let currentbooked = localStorage.getItem('currentbooked');
            let expiredbooked = localStorage.getItem('expiredbooked');
            let dcode = $('#dcode').val();
            let roomno = $('#roomnokot_' + id).text();

            if (!currentbooked) {
                window.location.href = `kotentry?dcode=${dcode}&roomno=${roomno}`;
                return;
            }

            let booking = JSON.parse(currentbooked);
            let isExpired = expiredbooked === 'true';

            if (isExpired) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Booking Expired',
                    text: `This booking for ${booking.guestname} has expired. Do you still want to open KOT?`,
                    showCancelButton: true,
                    confirmButtonText: 'Yes, Open KOT',
                    cancelButtonText: 'No',
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = `kotentry?dcode=${dcode}&roomno=${roomno}`;
                    }
                });

                return;
            }

            const now = new Date();
            const [hours, minutes, seconds] = booking.fromtime.split(':').map(Number);

            const fromTime = new Date();
            fromTime.setHours(hours, minutes, seconds || 0, 0);

            if (now < fromTime) {
                Swal.fire({
                    icon: 'info',
                    title: 'Booking Time',
                    text: `This table is booked from ${booking.fromtime}. Do you still want to open KOT?`,
                    showCancelButton: true,
                    confirmButtonText: 'Yes, Open KOT',
                    cancelButtonText: 'No',
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = `kotentry?dcode=${dcode}&roomno=${roomno}`;
                    }
                });

                return;
            }

            window.location.href = `kotentry?dcode=${dcode}&roomno=${roomno}`;
        }

        function opensalebill(id) {
            let dcode = $('#dcode').val();
            let roomno = $('#roomnokot_' + id).text();
            window.location.href = `salebillentry?dcode=${dcode}&roomno=${roomno}`;
        }

        function openchangetable(id) {
            let dcode = $('#dcode').val();
            let roomno = $('#roomnokot_' + id).text();
            window.location.href = `pos_tablechangedynamic?dcode=${dcode}&roomno=${roomno}`;
        }

        function opentablebooking(id) {
            let dcode = $('#dcode').val();
            let roomno = $('#roomnokot_' + id).text();
            window.location.href = `tablebooking?dcode=${dcode}&roomno=${roomno}`;
        }

        function openviewitem(id) {
            let dcode = $('#dcode').val();
            let roomno = $('#roomnokot_' + id).text();
            window.location.href = `billlockup?dcode=${dcode}&tableno=${roomno}`;
        }

        function opensettlement(id) {
            let dcode = $('#dcode').val();
            let roomno = $('#roomnokot_' + id).text();
            let vno = $('#vnofix_' + id).text();
            window.location.href = `settlemententry?dcode=${dcode}&tableno=${roomno}&vno=${vno}`;
        }

        $(document).ready(function() {
            let kotdata;
            let sessionmast;
            let firstkot;
            let sale1;
            let dcode = $('#dcode').val();
            const nature = $('#nature').val();
            if (nature === 'Outlet') {
                const settlebutton = `
                                <div class="col-6 col-sm-4 col-lg-3">
                                    <button id="settlementbuttn"
                                        class="box animate__animated animate__bounceInRight w-100"
                                        style="background:#f39c12; color:white;"
                                        onclick="window.location.href='settlemententry?dcode=${dcode}'">
                                        <i class="fa-solid fa-hammer"></i> Settlement
                                    </button>
                                </div>`;
                $('#statusBoxContainer').append(settlebutton);
            }

            var occupiedColor = $('#occupiedColor').val();
            var vacantColor = $('#vacantColor').val();
            var billedColor = $('#billedColor').val();
            let tbody = $('#posdisp tbody tr');

            let roomnos = [];
            $(tbody).each(function() {
                let rooms = $(this).find('td').data('id');
                roomnos.push(rooms);
            });

            let colorfillxhr = new XMLHttpRequest();
            colorfillxhr.open('GET', `/colorfilldisp/${encodeURIComponent(dcode)}`, true);
            colorfillxhr.onreadystatechange = function() {
                if (colorfillxhr.status === 200 && colorfillxhr.readyState === 4) {
                    let results = JSON.parse(colorfillxhr.responseText);
                    kotdata = results.kot;
                    sessionmast = results.sessionmast;
                    firstkot = results.firstkot;
                    sale1 = results.sale1;
                }
            }
            colorfillxhr.send();

            let counter = 1;
            let lastOpenedRoom = null;
            $('.room-boxdisp').on('click', function() {
                $('#kotbutton').prop('disabled', false);
                let chkbilledcls = $(this).hasClass('billed');
                if (chkbilledcls == true) {
                    let fbtn = $('.menudiv').find('button#settlementbutton');
                    if (fbtn.length) {
                        fbtn.remove();
                    }
                    setTimeout(() => {
                        $('#kotbutton').prop('disabled', true);
                        const settlementbutton = `<button id="settlementbutton" onclick="opensettlement('${roomno}')" type="button" class="btn btn-outline-primary"><img style="height: 25px;mix-blend-mode: darken;" src="{{ asset('admin/icons/custom/corruption.gif') }}" alt=""> Settlement</button>`;
                        $('#bookingbutton').after(settlementbutton);
                    }, 500);
                } else {
                    let fbtn = $('.menudiv').find('button#settlementbutton');
                    if (fbtn.length) {
                        fbtn.remove();
                    }
                }

                let roomno = $(this).data('id');
                const nature = $('#nature').val();

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    }
                });

                $.ajax({
                    url: "{{ route('checktablebooking') }}",
                    method: 'POST',
                    data: {
                        roomno: roomno,
                        restcode: $('#dcode').val()
                    },
                    success: function(response) {
                        if (response.success) {
                            $(`#kotbutton_${roomno}`).text('Checkin');
                            localStorage.setItem('currentbooked', JSON.stringify(response.chk));
                            localStorage.setItem('expiredbooked', JSON.stringify(response.expired));
                            $(`#bookingbutton_${roomno}`).text('Table Booked');
                        } else {
                            $(`#kotbutton_${roomno}`).text('KOT');
                            localStorage.setItem('currentbooked', '');
                            localStorage.setItem('expiredbooked', JSON.stringify(false));
                            $(`#bookingbutton_${roomno}`).text('Table Booking');
                        }
                    },
                    error: function(error) {
                        console.log(error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Display Table',
                            text: error.responseJSON.message
                        });
                    }
                });

                // 1️⃣ If clicked room is different from last opened, close the previous one
                if (lastOpenedRoom && lastOpenedRoom !== roomno) {
                    console.log('Closing previous room:', lastOpenedRoom);
                    closeMenuCoverUpdateClosed(lastOpenedRoom); // Close the previous room
                }

                if (nature.toLowerCase() == 'outlet') {
                    $('#roomnot').html(`<b>Table: </b>${roomno}`);
                    // console.log('counter Update : ', counter);

                    // check if buttons already exist for this room number
                    const changeBtnExists = $(`#changebutton_${roomno}`).length > 0;
                    const bookingBtnExists = $(`#bookingbutton_${roomno}`).length > 0;

                    // only append if they don't already exist
                    if (!changeBtnExists) {
                        const changebtn = `<button id="changebutton_${roomno}" onclick="openchangetable('${roomno}')" type="button" class="btn btn-outline-primary"><img style="height: 25px;mix-blend-mode: darken;" src="{{ asset('admin/icons/custom/change.gif') }}" alt=""> Change</button>`;
                        $('#salebillbutton_' + roomno).after(changebtn);
                    }

                    if (!bookingBtnExists) {
                        const bookingbutton = `<button id="bookingbutton_${roomno}" onclick="opentablebooking('${roomno}')" type="button" class="btn btn-outline-primary"><img style="height: 25px;mix-blend-mode: darken;" src="{{ asset('admin/icons/custom/table.gif') }}" alt=""> Table Booking</button>`;
                        $('#viewbutton_' + roomno).after(bookingbutton);
                    }

                } else if (nature.toLowerCase() == 'room service') {
                    $('#roomnot').html(`<b>Room: </b>${roomno}`);
                }
                counter++;
                let m = kotdata.filter(x => x.roomno == roomno);
                let fx = sale1.find(x => x.roomno == roomno && x.status == 'Pending') ?? '';
                $('#vnofix_' + roomno).text(fx.vno);
                $('#roomnokot_' + roomno).text(`${roomno}`);
                let curtime = curtimesec();
                sessionmast.forEach(data => {
                    if (curtime > data.from_time && curtime < data.to_time) {
                        $('#sessionmast').html(`<b>Session: </b>${data.name}`);
                    }
                });
                let label = $('#label').val();
                let status = $('#divStatus_' + roomno).val();

                if (status == 'vacant' || status == 'occupied' || status == 'booked') {
                    // let roomstr = roomno;
                    // let newroom = String(roomstr).match(/\d+/)[0];

                    if (roomno && String(roomno).trim() !== '') {
                        function clean(str) {
                            return String(str)
                                .replace(/\u200e/g, '') // remove invisible LRM
                                .replace(/\s+/g, '') // remove spaces
                                .trim();
                        }
                        // console.log(kotdata)
                        let f = kotdata.find(z => clean(z.roomno) === clean(roomno));

                        $('#waitername_' + roomno).html(f ? `<b>Waiter:</b> ${f.waitername ?? ''}` : '');

                        $('#roomnot_' + roomno).html(`<b>${label}: </b>${roomno}`);
                        $('#waitername_' + roomno).closest('div').addClass('br');
                        let c = firstkot.find(x => x.roomno == roomno);
                        $('#kottime_' + roomno).html(`<b>Time: </b>${c ? c.vtime ?? '' : ''}`);
                        $('#salebillbutton_' + roomno).prop('disabled', false);
                        $('#changebutton_' + roomno).prop('disabled', false);
                        $('#viewbutton_' + roomno).prop('disabled', false);
                        $('#bookingbutton_' + roomno).prop('disabled', false);
                    } else {
                        $('#waitername_' + roomno).html('');
                        $('#kottime_' + roomno).html('');
                        $('#salebillbutton_' + roomno).prop('disabled', true);
                        $('#changebutton_' + roomno).prop('disabled', true);
                        $('#viewbutton_' + roomno).prop('disabled', true);
                        $('#bookingbutton_' + roomno).prop('disabled', true);
                    }


                    $('.menucover_' + roomno).removeClass('none');
                    $('.menucover_' + roomno).css('display', 'block');
                    $('.menucover_' + roomno).addClass('block, box animate__animated animate__bounceInDown');
                }

                // 4️⃣ Save this room as last opened
                lastOpenedRoom = roomno;

            });

            let docid = $('#docid').val();


            //$(document).on('click', '#closediv', closeMenuCover);

            $(document).on('keydown', function(event) {
                if (event.key === "Escape" || event.keyCode === 27) {
                    closeMenuCover();
                }
            });

            function closeMenuCover(id) {
                $('.menucover_' + id).addClass('none');
                $('.menucover_' + id).removeClass('block box animate__animated animate__bounceInDown');
                $('#waitername_' + id).html('');
                $('#roomnot_' + id).html('');
                $('#kottime_' + id).html('');
                $('#salebillbutton_' + id).prop('disabled', true);
            }




            function openkot(roomno) {
                window.location.href = `koteentry?dcode=${dcode}&roomno=${roomno}`;
            }

            function submitForm() {
                $.ajax({
                    type: "POST",
                    url: $("#posdispform").attr("action"),
                    data: $("#posdispform").serialize() + "&_token={{ csrf_token() }}",
                    success: function(response) {
                        if (response == 'success') {
                            // pushNotify('success', 'Display Table', 'Pos Updated', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                        }
                    },
                    error: function(error) {
                        console.error(error);
                    }
                });
            }

            let c = 0;
            $(document).on('input', '#occupiedColor, #vacantColor', function() {
                let occolor = $('#occupiedColor').val();
                let occdivs = $('.room-grid').find('div.occupied');
                occdivs.css('background-color', occolor);
                let chkdark = isDarkColor(occolor);
                if (chkdark === true) {
                    occdivs.find('div.room-number').css('color', 'white');
                } else {
                    occdivs.find('div.room-number').css('color', 'black');
                }
                let vccolor = $('#vacantColor').val();
                let vcdivs = $('.room-grid').find('div.vacant');
                vcdivs.css('background-color', vccolor);
                let chkdark2 = isDarkColor(vccolor);
                if (chkdark2 === true) {
                    vcdivs.find('div.room-number').css('color', 'white');
                } else {
                    vcdivs.find('div.room-number').css('color', 'black');
                }
                c++;
                if (c === 1) {
                    pushNotify('success', 'Display Table', 'Press Enter To Save', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                }
            });

            $(document).on('change', '#occupiedColor', function() {
                let occolor = $(this).val();
                let occdivs = $('.room-grid').find('div.occupied');
                occdivs.css('background-color', occolor);
                let chkdark = isDarkColor(occolor);
                if (chkdark === true) {
                    occdivs.find('div.room-number').css('color', 'white');
                } else {
                    occdivs.find('div.room-number').css('color', 'black');
                }
                setTimeout(() => {
                    submitForm();
                }, 2000);
            });

            $(document).on('input', '#vacantColor', function() {
                let vccolor = $(this).val();
                let vcdivs = $('.room-grid').find('div.vacant');
                vcdivs.css('background-color', vccolor);
                let chkdark = isDarkColor(vccolor);
                if (chkdark === true) {
                    vcdivs.find('div.room-number').css('color', 'white');
                } else {
                    vcdivs.find('div.room-number').css('color', 'black');
                }
                setTimeout(() => {
                    submitForm();
                }, 2000);
            });

            $(document).on('input ', '#billedColor ', function() {
                let blcolor = $(this).val();
                let bcdivs = $('.room-grid').find('div.billed');
                bcdivs.css('background-color', blcolor);
                let chkdark = isDarkColor(blcolor);
                if (chkdark === true) {
                    bcdivs.find('div.room-number').css('color', 'white');
                } else {
                    bcdivs.find('div.room-number').css('color', 'black');
                }
                setTimeout(() => {
                    submitForm();
                }, 2000);
            });

            $(document).on('input', '#bookedColor', function() {
                let bookcolor = $(this).val();
                let bkdivs = $('.room-grid').find('div.booked');
                bkdivs.css('background-color', bookcolor);
                let chkdark = isDarkColor(bookcolor);
                if (chkdark === true) {
                    bkdivs.find('div.room-number').css('color', 'white');
                } else {
                    bkdivs.find('div.room-number').css('color', 'black');
                }
                setTimeout(() => {
                    submitForm();
                }, 2000);
            });
        });
    </script>

    <script src="{{ asset('admin/js/posdisp.js') }}"></script>
@endsection
