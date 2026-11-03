// Function to create popup
function createPopup(year, monthNumber, date, day, roomno, nextdaydate, nextmonth, nextyear) {
    let popup = document.createElement('div');
    popup.classList.add('popup');
    popup.draggable = true;

    popup.addEventListener('dragend', function (event) {
        popup.style.left = event.clientX + 'px';
        popup.style.top = event.clientY + 'px';
    });

    let closeButton = document.createElement('span');
    closeButton.innerHTML = '&times;';
    closeButton.classList.add('popup-close');
    closeButton.addEventListener('click', function () {
        document.body.removeChild(popup);
        activePopup = null;
    });

    let div1 = document.createElement('div');
    div1.classList.add('d-flex', 'justify-content-around');
    let arrivalp = document.createElement('b');
    let departurep = document.createElement('b');
    let div2 = document.createElement('div');
    div2.classList.add('d-flex', 'justify-content-around');
    div2.style.margin = '0 0 -15px 0';
    let departurepvalue = document.createElement('p');
    let arrivalpvalue = document.createElement('p');

    arrivalp.textContent = 'Arrival';
    arrivalpvalue.textContent = date + '-' + monthNumber + '-' + year;
    departurep.textContent = 'Departure';
    departurepvalue.textContent = nextdaydate + '-' + nextmonth + '-' + nextyear;

    div1.appendChild(arrivalp);
    div1.appendChild(departurep);
    div2.appendChild(arrivalpvalue);
    div2.appendChild(departurepvalue);

    let div = document.createElement('div');
    div.style.display = 'grid';

    let button = document.createElement('button');
    let button2 = document.createElement('button');

    button.textContent = 'Walk In / Reservation';
    button.classList.add('btn', 'btn-link', 'btnroom');

    button2.textContent = 'Maintenance Block';
    button2.classList.add('btn', 'btn-link', 'btnroom');

    div.appendChild(button);
    div.appendChild(button2);

    popup.appendChild(closeButton);
    popup.appendChild(div1);
    popup.appendChild(div2);
    popup.appendChild(div);

    return popup;
}

// Safely bind element event listeners after DOM is loaded
document.addEventListener("DOMContentLoaded", function () {
    if (!RoomStatusConfig.enableLegacyRoomCategoryToggle) {
        return;
    }

    const info = document.getElementById('infoicon');
    const bookingmodal = document.getElementById('bookingmodal');
    let timeoutId;

    if (info && bookingmodal) {
        info.addEventListener('mouseover', function () {
            clearTimeout(timeoutId);
            bookingmodal.style.opacity = '1';
            bookingmodal.style.display = 'block';
        });

        info.addEventListener('mouseout', function () {
            timeoutId = setTimeout(() => {
                bookingmodal.style.display = 'none';
                bookingmodal.style.opacity = '0';
            }, 3000);
        });
    }

    var checkAllRoomCat = document.getElementById("checkallroomcat");
    var roomCatCheckboxes = document.querySelectorAll(".roomcatcheckbox");

    if (checkAllRoomCat) {
        checkAllRoomCat.addEventListener("click", function () {
            roomCatCheckboxes.forEach(function (checkbox) {
                checkbox.checked = checkAllRoomCat.checked;
                triggerCheckboxChange(checkbox);
            });
        });
    }

    roomCatCheckboxes.forEach(function (checkbox) {
        checkbox.addEventListener("change", function () {
            triggerCheckboxChange(checkbox);
        });
    });

    let clickedcount = 0;
    let roomcategorybtn = document.getElementById('roomcategorybtn');
    if (roomcategorybtn) {
        roomcategorybtn.addEventListener('click', function () {
            clickedcount++;
            let listroomcat = document.getElementById('listroomcat');
            if (listroomcat) {
                if (clickedcount % 2 == 0) {
                    listroomcat.style.display = 'none';
                } else {
                    listroomcat.style.display = 'block';
                }
            }
        });
    }
});

function triggerCheckboxChange(checkbox) {
    let isChecked = checkbox.checked;
    let elementsWithSameDataValue = document.querySelectorAll(`[data-value="${checkbox.value}"]`);

    elementsWithSameDataValue.forEach(function (element) {
        if (isChecked) {
            element.style.display = 'table-row';
        } else {
            element.style.display = 'none';
        }
    });
}

/* ==========================================================================
   Shared room status / reservation / check-in helpers.

   Used by Lookup Rooms (openlookuproom) and Room Status (roomstatus).
   Every page supplies its own values through window.RoomStatusConfig.
   ========================================================================== */

var RoomStatusConfig = Object.assign({
    searchInputId: 'roomsearch',
    pageSource: 'openlookuproom',
    unblockRoomUrl: 'savehousecleaning',
    reservationSingleUrl: '',
    closeIconUrl: '',
    travelLogoBaseUrl: '',
    crownIconUrl: '',
    truncateTravelName: false,
    showReservationStatus: false,
    enableLegacyRoomCategoryToggle: true
}, window.RoomStatusConfig || {});

var activePopup = null;
var roomStatusSearchAnimationFrame = null;
var roomStatusSearchDebounceTimer = null;
var roomStatusMatchedSegments = [];
var roomStatusActiveMatchIndex = -1;

function getRoomStatusSearchInput() {
    return document.getElementById(RoomStatusConfig.searchInputId);
}

function exportdateformat(formatteddate) {
    datearray = formatteddate;
}

function openReservationActionMenu(booking, segment, bookingdata) {
    document.querySelectorAll('.reservation-action-menu').forEach(function (menu) {
        menu.remove();
    });

    if (!segment || !booking) {
        return;
    }

    const menu = document.createElement('div');
    menu.className = 'reservation-action-menu';

    const encodeDocId = function (value) {
        return btoa(unescape(encodeURIComponent(value)));
    };

    const docId = encodeDocId(booking.BookingDocid);
    const sno = encodeDocId(String(booking.Sno));
    const bookNo = encodeURIComponent(booking.BookNo);
    const year = new Date(booking.ArrDate).getFullYear();

    menu.innerHTML = `
        <a href="updatereservation?DocId=${docId}&sno=${sno}&page_source=${RoomStatusConfig.pageSource}">
<i class="fa-solid fa-pen-to-square"></i>
<span>Edit</span>
        </a>

        <a href="#" class="cancel-reservation-btn" data-docid="${docId}" data-sno="${sno}" data-page-source="${RoomStatusConfig.pageSource}">
<i class="fa-solid fa-ban"></i>
<span>Cancel</span>
        </a>

        <a href="resletter?bookno=${bookNo}&sno=${booking.Sno}&year=${year}"
           target="_blank">
<i class="fa-solid fa-envelope"></i>
<span>Res Letter</span>
        </a>

        <a href="rescard?bookno=${bookNo}&sno=${booking.Sno}&year=${year}"
           target="_blank">
<i class="fa-regular fa-address-card"></i>
<span>Reg Card</span>
        </a>

        <a href="advancedeposit?DocId=${docId}&Sno=${sno}&page_source=${RoomStatusConfig.pageSource}">
<i class="fa-solid fa-money-bill-transfer"></i>
<span>Deposit</span>
        </a>

        <a href="preforma?DocId=${docId}&Sno=${sno}" target="_blank">
<i class="fa-solid fa-file-invoice"></i>
<span>Preforma</span>
        </a>

        <button type="button" class="reservation-more-button">
<i class="fa-solid fa-ellipsis"></i>
<span>More</span>
<i class="fa-solid fa-chevron-right ms-auto"></i>
        </button>
    `;

    document.body.appendChild(menu);

    const rect = segment.getBoundingClientRect();
    const modal = document.querySelector('.modal-custom');
    const gap = 4;

    const menuWidth = menu.offsetWidth;
    const menuHeight = menu.offsetHeight;

    let left = rect.right + gap;
    let top = rect.top;

    if (modal) {
        const modalRect = modal.getBoundingClientRect();

        const rightPositionOverlapsModal =
            left < modalRect.right &&
            left + menuWidth > modalRect.left &&
            top < modalRect.bottom &&
            top + menuHeight > modalRect.top;

        if (rightPositionOverlapsModal) {
            left = rect.left - menuWidth - gap;
        }
    }

    menu.style.top = `${window.scrollY + top}px`;
    menu.style.left = `${window.scrollX + left}px`;

    menu.querySelector('.reservation-more-button').addEventListener('click', function (event) {
        event.stopPropagation();
        openReservationMoreMenu(booking, menu, bookingdata);
    });

    menu.querySelector('.cancel-reservation-btn').addEventListener('click', async function (event) {
        event.preventDefault();
        event.stopPropagation();

        const docId = this.dataset.docid;
        const sno = this.dataset.sno;
        const pageSource = this.dataset.pageSource;

        const result = await Swal.fire({
            title: 'Cancel Reservation?',
            text: 'Are you sure you want to cancel this reservation?',
            icon: 'warning',
            input: 'textarea',
            inputPlaceholder: 'Enter cancellation reason (required)',
            inputAttributes: {
                required: true,
                'aria-required': 'true'
            },
            showCancelButton: true,
            confirmButtonText: 'Yes, Cancel',
            cancelButtonText: 'No, Keep',
            inputValidator: (value) => {
                if (!value || !value.trim()) {
                    return 'Cancellation reason is required.';
                }
            }
        });

        if (!result.isConfirmed) {
            $('.reservation-action-menu, .reservation-more-menu').remove();
            return;
        }

        const reason = result.value.trim();

        try {
            const response = await sendAjaxPost('/cancelreservation', {
                DocId: docId,
                sno: sno,
                page_source: pageSource,
                reason: reason
            }, {
                loadingTitle: 'Cancelling Reservation...',
                loadingText: 'Please wait...',
                showSuccessAlert: false
            });

            if (response && response.success) {
                await Swal.fire({
                    icon: 'success',
                    title: 'Cancelled',
                    text: response.message || 'Reservation cancelled successfully.',
                    timer: 1500,
                    showConfirmButton: false
                });
                window.location.reload();
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Cancel Failed',
                    text: response?.message || 'Unable to cancel reservation.'
                });
            }
        } catch (error) {
            console.error('Cancel reservation error:', error);
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Unable to process cancellation.'
            });
        }

        $('.reservation-action-menu, .reservation-more-menu').remove();
    });
}

function openReservationMoreMenu(booking, parentMenu, bookingdata) {
    document.querySelectorAll('.reservation-more-menu').forEach(function (menu) {
        menu.remove();
    });
    const moreMenu = document.createElement('div');
    moreMenu.className = 'reservation-more-menu';

    moreMenu.innerHTML = `
                <button type="button" class="reservation-remark-button">
                    <i class="fa-solid fa-comment-dots"></i>
                    <span>Remark</span>
                </button>

                <button type="button" class="dep-update-button">
                    <i class="fa-regular fa-calendar"></i>
                    <span>Arr/Dep Update</span>
                </button>

                <button type="button" class="rate-update-button">
                    <i class="fa-solid fa-tag"></i>
                    <span>Rate Update</span>
                </button>

                ${window.fomparameter?.roominclusive === 'Y' ? `
                    <button type="button" class="room-inclusive-button">
                        <i class="fa-solid fa-bed"></i>
                        <span>Room Inclusive</span>
                    </button>
                ` : ''}
            `;

    document.body.appendChild(moreMenu);

    const moreButton = parentMenu.querySelector('.reservation-more-button');
    const rect = moreButton.getBoundingClientRect();

    moreMenu.style.top = `${window.scrollY + rect.top}px`;
    moreMenu.style.left = `${window.scrollX + rect.right + 4}px`;
    moreMenu.querySelector('.reservation-remark-button').addEventListener('click', function (event) {
        event.stopPropagation();
        let htmlcontent = createRemarkHtml(booking.remarks);

        openRoomActionPanel(
            'Remark',
            htmlcontent
        );

        $('.reservation-action-menu, .reservation-more-menu').remove();
    });

    $(document).on('click', '.dep-update-button', function (event) {
        event.stopPropagation();
        let htmlcontent = openDepartureUpdateModal(booking, bookingdata);

        openRoomActionPanel(
            'Arr/Dep Update',
            htmlcontent
        );

        $('.reservation-action-menu, .reservation-more-menu').remove();
    });

    $(document).on('click', '.rate-update-button', function (event) {
        event.stopPropagation();
        let htmlcontent = openRateUpdateModal(booking, bookingdata);

        openRoomActionPanel(
            'Rate Update',
            htmlcontent
        );

        $('.reservation-action-menu, .reservation-more-menu').remove();
    });

    $(document).on('click', '.room-inclusive-button', function (event) {
        event.stopPropagation();
        let htmlcontent = openroominclusiveModal(booking, bookingdata);
        openRoomActionPanel(
            'Room Inclusive',
            htmlcontent
        );

        $('.reservation-action-menu, .reservation-more-menu').remove();
    });

}

function escapeHtml(value) {
    return $('<div>').text(value ?? '').html();
}

function formatRemarkDate(value) {
    if (!value) {
        return '';
    }

    const date = new Date(value);

    if (Number.isNaN(date.getTime())) {
        return '';
    }

    return date.toLocaleString('en-GB', {
        day: '2-digit',
        month: '2-digit',
        year: 'numeric',
        hour: '2-digit',
        minute: '2-digit',
        hour12: true
    });
}

function openbookngreservemodal(bookingarray, clickedSegment = null, event = null) {
    let existingModal = document.querySelector('.modal-packed');
    localStorage.setItem('inclusiveResponse', '');
    let rglobalguestcode = bookingarray['guestcode'];
    let rfolioNo = bookingarray['BookNo'];
    rglobaldocid = bookingarray['BookingDocid'];
    rglobalsno1 = bookingarray['Sno'];
    let rglobalroomno = bookingarray['RoomNo'];
    let rglobalarrdate = bookingarray['ArrDate'];
    globalncurdate = $('#fixncur').val();

    const clickedCell = clickedSegment?.closest('td.roomstatuscell');
    const clickedRangeStart = clickedCell?.getAttribute('data-range-start') || '';
    const clickedroomno = clickedCell?.getAttribute('data-value') || '';

    sendAjaxPost(
        RoomStatusConfig.reservationSingleUrl, {
        BookingDocid: rglobaldocid,
        Sno: rglobalsno1,
        clickedRangeStart: clickedRangeStart,
        clickedroomno: clickedroomno
    }, {
        loadingTitle: 'Loading Reservation...',
        loadingText: 'Please wait...',
        showSuccessAlert: false
    }
    ).then(response => {
        if (response && response.success) {
            const reservationData = response.data;
            const rooms = response.data.rooms || [];
            const advances = response.data.advance || [];
            const inclusiveResponse = response.data.roominclusive || [];

            localStorage.setItem('inclusiveResponse', JSON.stringify(inclusiveResponse));

            let dispbtn = '';
            let oldchk = 'green';

            if (rglobalarrdate < globalncurdate) {
                oldchk = 'red';
            }
            if ((rglobalarrdate <= globalncurdate) && response.data.todaydep === false) {
                dispbtn = `<button class="checkinbtnrocc" data-docid="${rglobaldocid}" data-sno="${rglobalsno1}" type="button" style="padding: 5px 8px; background-color: ${oldchk}; color: white; border: none; border-radius: 8px; font-size: 16px; font-weight: bold; display: flex; align-items: center; justify-content: center; cursor: pointer;">
                    <i class="fa fa-check-circle" style="margin-right: 8px;"></i> Check In
                </button>`;
            }

            let prefix = reservationData.con_prefix ?? bookingarray['con_prefix'] ?? '';
            let rglobalname = prefix + ' ' + (reservationData.GuestName ?? bookingarray['GuestName']);

            let adthead = '';
            let adtr = '';
            let totalamt = 0.00;

            const targetAdvances = advances.length > 0 ? advances : (bookingarray['advance'] || []);
            if (targetAdvances.length > 0) {
                adthead = `<tr>
        <th>Paytype</th>
        <th>On Date</th>
        <th>Amount</th>
    </tr>`;

                targetAdvances.forEach((data) => {
                    let amt = parseFloat(data.amtcr) || 0;
                    totalamt += amt;

                    adtr += `<tr class="hover-row">
            <td>${data.paytype ?? data.comments ?? 'Advance'}</td>
            <td>${data.vdate ? dmy(data.vdate) : ''} ${data.vtime ?? ''}</td>
            <td class="text-end">Rs. ${amt.toFixed(2)}</td>
        </tr>`;
                });
            }

            let exthead = '';
            let extr = '';
            let totalextamt = 0.00;

            if (inclusiveResponse.length > 0) {
                exthead = `<tr>
                            <th>Name</th>
                            <th>Post</th>
                            <th>Amount</th>
                        </tr>`;

                inclusiveResponse.forEach((item) => {

                    const amount = parseFloat(item.amount) || 0;
                    const cgstRate = parseFloat(item.cgst_rate) || 0;
                    const sgstRate = parseFloat(item.sgst_rate) || 0;

                    let baseQty = 1;

                    if (item.chargepost === 'Daily') {
                        baseQty = parseFloat(item.total_nights) || 1;
                    } else if (item.chargepost === 'Once') {
                        baseQty = parseFloat(item.total_roomdet) || 1;
                    } else if (item.chargepost === 'Group') {
                        baseQty = 1;
                    }

                    const incTax =
                        String(item.IncTax ?? '').trim().toUpperCase() === 'Y';

                    let displayRate = amount;
                    let displayAmount = amount * baseQty;

                    if (incTax) {
                        displayRate =
                            amount / (1 + (cgstRate + sgstRate) / 100);

                        displayAmount = displayRate * baseQty;
                    }

                    totalextamt += displayAmount;

                    extr += `<tr class="hover-row">
                            <td>${item.revmastname ?? item.name ?? ''}</td>
                            <td>${item.chargepost ?? ''}</td>
                            <td class="text-end">Rs. ${displayAmount.toFixed(2)}</td>
                        </tr>`;
                });
            }

            let roomGroups = {};
            rooms.forEach((room) => {
                let groupKey = (room.RoomCat || '') + '|' + (room.Tarrif || '') + '|' + (room.IncTax || 'Y');
                if (!roomGroups[groupKey]) {
                    roomGroups[groupKey] = {
                        roomcatname: room.roomcatname || 'Room Charges',
                        Tarrif: parseFloat(room.Tarrif) || 0,
                        IncTax: room.IncTax || 'Y',
                        cgst_rate: parseFloat(room.cgst_rate) || 2.5,
                        sgst_rate: parseFloat(room.sgst_rate) || 2.5,
                        totalNights: 0,
                        totalRows: 0
                    };
                }
                roomGroups[groupKey].totalNights += parseInt(room.NoDays) || 1;
                roomGroups[groupKey].totalRows += 1;
            });

            let roomChargesHead = '';
            let roomChargesRows = '';
            let totalroomcharge = 0.0;
            let totalcgst = 0.0;
            let totalsgst = 0.0;

            if (Object.keys(roomGroups).length > 0) {
                roomChargesHead = `<tr>
                            <th>Particular</th>
                            <th class="text-center">Rooms</th>
                            <th class="text-end">Rate</th>
                            <th class="text-end">Total</th>
                        </tr>`;

                Object.keys(roomGroups).forEach((key) => {
                    let item = roomGroups[key];
                    let taxinc = item.IncTax === 'Y';
                    let tarrifamt = taxinc ? (item.Tarrif / (1 + (item.cgst_rate + item.sgst_rate) / 100)) : item.Tarrif;
                    let total = tarrifamt * item.totalNights;
                    let cgst = (total * item.cgst_rate) / 100;
                    let sgst = (total * item.sgst_rate) / 100;

                    totalroomcharge += total;
                    totalcgst += cgst;
                    totalsgst += sgst;

                    roomChargesRows += `<tr class="hover-row">
                    <td>Room Charges (${item.roomcatname})</td>
                    <td class="text-center">${item.totalRows}</td>
                    <td class="text-end">${tarrifamt.toFixed(2)}</td>
                    <td class="text-end">Rs. ${total.toFixed(2)}</td>
                    </tr>`;
                });
            }

            let totalExtraCgst = 0.0;
            let totalExtraSgst = 0.0;
            let totalextras = 0.0;

            if (inclusiveResponse.length > 0) {
                inclusiveResponse.forEach((item) => {
                    let extraTaxinc = item.IncTax === 'Y';
                    let cgstRate = parseFloat(item.cgst_rate) || 2.5;
                    let sgstRate = parseFloat(item.sgst_rate) || 2.5;
                    let baseQty = 1;

                    if (item.chargepost === 'Daily') {
                        baseQty = item.total_nights || 1;
                    } else if (item.chargepost === 'Once') {
                        baseQty = item.total_roomdet || 1;
                    } else if (item.chargepost === 'Group') {
                        baseQty = 1;
                    }

                    let inclusiveAmount = parseFloat(item.amount) * baseQty;
                    let extraRate = parseFloat(item.amount);
                    let extraCgst = 0;
                    let extraSgst = 0;

                    if (extraTaxinc) {
                        extraRate = parseFloat(item.amount) / (1 + (cgstRate + sgstRate) / 100);
                        inclusiveAmount = extraRate * baseQty;
                        extraCgst = (inclusiveAmount * cgstRate) / 100;
                        extraSgst = (inclusiveAmount * sgstRate) / 100;
                    } else {
                        extraCgst = (inclusiveAmount * cgstRate) / 100;
                        extraSgst = (inclusiveAmount * sgstRate) / 100;
                    }

                    totalExtraCgst += extraCgst;
                    totalExtraSgst += extraSgst;
                    totalextras += inclusiveAmount;
                });
            }

            let totalcgsttotal = totalcgst + totalExtraCgst;
            let totalsgsttotal = totalsgst + totalExtraSgst;
            let totalCharges = totalroomcharge + totalextras;
            let grandTotal = totalCharges + totalcgsttotal + totalsgsttotal;
            let balanceDue = grandTotal - totalamt;

            let div1 = existingModal;

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

            const remarks = Array.isArray(bookingarray.remarks)
                ? bookingarray.remarks
                : [];

            const remarksHtml = remarks.length
                ? `
        <div style="margin: 4px 0 8px 0; width: 100%;">
            <div style="font-weight: 600; margin-bottom: 2px;">
                Remarks:
            </div>

            ${remarks.map(function (remark) {

                    const isDeleted = parseInt(remark.status) === 0;
                    const remarkColor = isDeleted ? '#dc3545' : '#000';

                    return `
                    <div style="
                        margin-left: 8px;
                        line-height: 20px;
                        color: ${remarkColor};
                    ">
                        <strong>${escapeHtml(remark.type || '')}:</strong>
                        ${escapeHtml(remark.description || '')}
                    </div>
                `;

                }).join('')}
        </div>
    `
                : '';

            modal.innerHTML = `
                    <div style="min-height:-webkit-fill-available;" class="modal-content content-packed">
                        <div style="display:contents;">
                            <h3 class="RBT">
                                <i class="fa-solid fa-hotel"></i> ${rglobalname}
                            </h3>

                            <img class="close"
                                        onclick="deletemodaldiv()"
                                        src="${RoomStatusConfig.closeIconUrl}">
                        </div>

                    ${(reservationData.mobile_no || bookingarray['mobile_no']) ? `
                            <p>
                                <i class="fa-solid fa-phone"></i>
                                ${reservationData.mobile_no ?? bookingarray['mobile_no']}
                            </p>
                        ` : ''}

                    <div class="button-group mb-2">
                        ${dispbtn}
                    </div>

                    <div class="row bodydatadetailstatus">
                        <div class="col-md-6">
                            <p>Folio No.: ${bookingarray['BookNo']}</p>

                            <p>
                                Check-in Date:
                                ${new Date(bookingarray['ArrDate']).toLocaleDateString('en-GB').replace(/\//g, '-')}
                            </p>

                            <p>Room Type: ${bookingarray['roomcatname']}</p>

                            <p>Rate Plan: ${bookingarray['planname'] ?? ''}</p>

                            <p>Plan Amount: ${bookingarray['plannetamt'] ?? ''}</p>

                            <p>
                                Company:
                                ${bookingarray['companyname'] ?? ''}
                            </p>

                            <p>Bill To: ${bookingarray['bill_to'] ?? ''}</p>
                            ${RoomStatusConfig.showReservationStatus ? `<p>Status: ${reservationData.ResStatus ?? bookingarray['ResStatus'] ?? ''}</p>` : ''}

                        </div>

                        <div class="col-md-6">
                            <p>
                                Adults <i class="fa-solid fa-user"></i>: ${bookingarray['Adults']}
                                Children <i class="fa-solid fa-child"></i>: ${bookingarray['Childs'] ?? ''}
                            </p>

                            <p>
                                Exp. Departure Date:
                                ${reservationData.DepDate ? new Date(reservationData.DepDate).toLocaleDateString('en-GB').replace(/\//g, '-') : new Date(bookingarray['DepDate']).toLocaleDateString('en-GB').replace(/\//g, '-')}
                            </p>

                            <p>Room Number: ${bookingarray['RoomNo']}</p>

                            <p>Room Rate: ${bookingarray['Tarrif']}</p>

                            <p>Travel: ${bookingarray['travelname'] ?? ''}</p>

                            <p>Booked By: ${bookingarray['BookedBy'] ?? ''}</p>

                            <p>Pick Up/Drop: ${bookingarray['pickupdrop'] ?? ''}</p>

                        </div>
                    </div>
                    ${remarksHtml}

                    <div>

                        ${roomChargesHead ? `
                            <div style="font-size:14px; padding:4px 6px; font-weight: bold;">
                                Room Charges
                            </div>
                        ` : ''}

                        <table class="table amountshowtablestatus table-hover mb-2">
                            <thead>${roomChargesHead}</thead>
                            <tbody>${roomChargesRows}</tbody>
                        </table>

                        ${exthead ? `
                                                                            <div style="font-size:14px; padding:4px 6px;">
                                                                                Room Inclusive
                                                                            </div>
                                                                        ` : ''}

                        <table class="table amountshowtablestatus table-hover mb-2">
                            <thead>${exthead}</thead>
                            <tbody>${extr}</tbody>
                        </table>

                        ${adthead ? `
                                                                            <div style="font-size:14px; padding:4px 6px;">
                                                                                Advances
                                                                            </div>
                                                                        ` : ''}

                        <table class="table amountshowtablestatus table-hover mb-0">
                            <thead>${adthead}</thead>
                            <tbody>${adtr}</tbody>
                        </table>

                        <div style="background: #f8f9fa; padding: 6px 8px; border: 1px solid #dee2e6; border-radius: 4px; margin-top: 8px; font-size: 12px;">
                            <div class="d-flex justify-content-between" style="margin: 2px 0;">
                                <span>Total Charges:</span>
                                <strong>Rs. ${totalCharges.toFixed(2)}</strong>
                            </div>
                            <div class="d-flex justify-content-between" style="margin: 2px 0;">
                                <span>Total CGST:</span>
                                <strong>Rs. ${totalcgsttotal.toFixed(2)}</strong>
                            </div>
                            <div class="d-flex justify-content-between" style="margin: 2px 0;">
                                <span>Total SGST:</span>
                                <strong>Rs. ${totalsgsttotal.toFixed(2)}</strong>
                            </div>
                            <div class="d-flex justify-content-between" style="margin: 2px 0; border-top: 1px dashed #ccc; padding-top: 2px;">
                                <span>Grand Total:</span>
                                <strong>Rs. ${grandTotal.toFixed(2)}</strong>
                            </div>
                            <div class="d-flex justify-content-between" style="margin: 2px 0;">
                                <span>Advance:</span>
                                <strong>Rs. ${totalamt.toFixed(2)}</strong>
                            </div>
                            <div class="d-flex justify-content-between text-danger" style="margin: 2px 0; border-top: 1px solid #ccc; padding-top: 2px;">
                                <span>Balance Due:</span>
                                <strong>Rs. ${balanceDue.toFixed(2)}</strong>
                            </div>
                            <div class="text-danger" style="margin: 2px 0; border-top: 1px solid #ccc; padding-top: 2px;">
                                <span>In Words:</span>
                                <strong>${amountToWordsJS(balanceDue)}</strong>
                            </div>
                        </div>

                    </div>

                    <div class="modal-footer p-0"></div>

                </div>
            `;
        }
    });
}

async function fetchBookedRoomsres(fromdate, todate) {
    try {
        const response = await fetch(`/reservedroomget?fromdate=${encodeURIComponent(fromdate)}&todate=${encodeURIComponent(todate)}`);

        if (response.ok) {
            const data = await response.json();
            const bookingdata = data.bookedroomdata;

            if (bookingdata.length > 0) {
                bookingdata.forEach(function (booking) {
                    const name = booking.GuestName || '';
                    const roomno = booking.RoomNo;
                    const [firstName] = name.split(' ');
                    appendRoomStatusRange(
                        roomno,
                        booking.ArrDate,
                        booking.DepDate || booking.depdate || booking.depdate_minus_one,
                        {
                            text: buildRoomStatusLabel(booking.con_prefix, firstName),
                            statusClass: 'fromtd2',
                            travellogo: booking.travellogo || 'N',
                            travelname: booking.travelname || '',
                            searchName: booking.GuestName || '',

                            roomChange: true,
                            roomChangeDocid: booking.BookingDocid,
                            roomChangeSno: booking.Sno,
                            roomChangeCurrentRoom: booking.RoomNo,
                            roomChangeCurrentRoomCat: booking.RoomCat,

                            segmentKey: [
                                'reserved',
                                booking.BookingDocid,
                                booking.Sno,
                                booking.RoomNo,
                                booking.ArrDate,
                                booking.depdate_minus_one
                            ].join('|'),

                            onClick: function (segment, event) {
                                openbookngreservemodal(booking, segment, event);
                                openReservationActionMenu(booking, segment, bookingdata);

                                localStorage.setItem('roomStatusDocid', booking.BookingDocid);
                                localStorage.setItem('roomStatusSno', booking.Sno);
                            }
                        },
                        'reservation'
                    );
                });
            } else {
                pushNotify('info', 'Room Status', 'No Reserved Rooms Data Found', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
            }
        } else {
            console.error('Failed to fetch booked rooms. Status:', response.status);
        }
    } catch (error) {
        console.error('An error occurred during the fetch:', error);
    }
}

function fetchAvailabilityFromServer(dates) {
    fetch('/get-availability', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        body: JSON.stringify({
            dates: dates
        })
    })
        .then(res => res.json())
        .then(data => {

            if ($('#availabilityRow').length === 0) {
                createAvailabilityRow();
            }

            $('.avail-cell').each(function () {
                let date = $(this).data('date');

                if (data[date] !== undefined) {
                    let totalAvail = data[date].total_available;
                    let totalRooms = Object.values(data[date].categories)
                        .reduce((sum, c) => sum + c.total, 0);

                    $(this).text(totalAvail);

                    // reset
                    $(this).removeClass('avail-low avail-medium avail-high');

                    let percent = (totalAvail / totalRooms) * 100;

                    if (percent < 30) {
                        $(this).addClass('avail-low');
                    } else if (percent < 70) {
                        $(this).addClass('avail-medium');
                    } else {
                        $(this).addClass('avail-high');
                    }
                }
            });


            $('.cat-avail-cell').each(function () {
                let date = $(this).data('date');
                let cat = $(this).data('cat');

                if (
                    data[date] &&
                    data[date].categories &&
                    data[date].categories[cat]
                ) {
                    let c = data[date].categories[cat];

                    $(this).text(`${c.available}/${c.total}`);

                    // reset
                    $(this).removeClass('avail-low avail-medium avail-high');

                    let percent = (c.available / c.total) * 100;

                    if (percent < 30) {
                        $(this).addClass('avail-low');
                    } else if (percent < 70) {
                        $(this).addClass('avail-medium');
                    } else {
                        $(this).addClass('avail-high');
                    }
                }
            });

            if ($('#occupancyRow').length === 0) {
                createOccupancyRow();
            }

            $('.occ-cell').each(function () {
                const date = $(this).data('date');

                if (data[date]) {
                    let occ = parseFloat(data[date].occupancy);

                    $(this).text(occ + ' %');

                    // reset classes
                    $(this).removeClass('occ-low occ-medium occ-high');

                    if (occ < 50) {
                        $(this).addClass('occ-low');
                    } else if (occ < 80) {
                        $(this).addClass('occ-medium');
                    } else {
                        $(this).addClass('occ-high');
                    }
                }
            });

        });
}

function createAvailabilityRow() {
    let row = document.createElement('tr');
    row.id = 'availabilityRow';

    let firstCell = document.createElement('td');
    firstCell.textContent = 'TOTAL AVL';
    firstCell.style.fontWeight = 'bold';
    firstCell.style.background = '#1f4e79';
    firstCell.style.color = '#fff';
    row.appendChild(firstCell);

    $('.dateheadertd').each(function () {

        let td = document.createElement('td');

        td.className = 'avail-cell cursor-pointer';
        td.dataset.date = $(this).data('date');

        td.style.background = '#1f4e79';
        td.style.color = '#fff';
        td.style.textAlign = 'center';

        row.appendChild(td);

    });

    $('#dateTable tbody tr.dateheader').nextAll('tr').first().before(row);
}

function createOccupancyRow() {
    let row = document.createElement('tr');
    row.id = 'occupancyRow';

    let firstCell = document.createElement('td');
    firstCell.textContent = 'Occupancy';
    firstCell.style.fontWeight = 'bold';
    firstCell.style.background = '#1f4e79';
    firstCell.style.color = '#fff';
    row.appendChild(firstCell);

    $('.dateheadertd').each(function () {
        let td = document.createElement('td');
        td.classList.add('occ-cell');
        td.setAttribute('data-date', $(this).data('date'));

        td.style.background = '#1f4e79';
        td.style.color = '#fff';
        td.style.textAlign = 'center';

        row.appendChild(td);
    });

    $('#dateTable').find('tr:last').after(row);
}

async function fetchCheckoutRooms() {
    try {
        const startDate = document.getElementById('fromdate').value;
        const dateHeader = document.querySelector('tr.dateheader');
        const lastDateCell = dateHeader?.lastElementChild;
        const lastDateStr = lastDateCell?.getAttribute('data-date');

        const url = new URL('/checkoutroomget', window.location.origin);
        if (startDate) url.searchParams.append('fromdate', startDate);
        if (lastDateStr) url.searchParams.append('todate', lastDateStr);

        const response = await fetch(url.toString());
        if (response.ok) {
            const data = await response.json();
            const bookingdata = data.checkoutroomdata;
            const amountdetails = data.amountdetails;
            const isCheckout = data.isCheckout || false;
            if (bookingdata.length > 0) {
                bookingdata.forEach(function (booking) {
                    const name = booking.name || '';
                    const roomno = booking.roomno;
                    const [firstName] = name.split(' ');
                    appendRoomStatusRange(roomno, booking.chkindate, booking.chkoutdate, {
                        text: buildRoomStatusLabel(booking.con_prefix, firstName),
                        statusClass: 'checkouttd',
                        travellogo: booking.travellogo || 'N',
                        travelname: booking.travelname || '',
                        searchName: booking.GuestName || booking.name || '',
                        segmentKey: [
                            'checkout',
                            booking.docid,
                            booking.sno1,
                            booking.roomno,
                            booking.chkindate,
                            booking.chkoutdate
                        ].join('|'),
                        onClick: function () {
                            OpenBookingInfoModal(booking, amountdetails, isCheckout);
                        }
                    }, 'checkout');
                });
            }
        }
    } catch (error) {
        console.error('Error fetching checkout rooms:', error);
    }
}

$(document).on('click', '#updateCheckoutGuestName', async function () {
    const button = $(this);
    const docid = button.data('docid');
    const sno1 = button.data('sno1');
    const guestname = decodeURIComponent(button.attr('data-guestname') || '');

    const result = await Swal.fire({
        title: 'Update Guest Name',
        input: 'text',
        inputLabel: 'Guest Name',
        inputValue: guestname,
        inputPlaceholder: 'Enter guest name',
        showCancelButton: true,
        confirmButtonText: 'Update Name',
        cancelButtonText: 'Cancel',
        inputAttributes: {
            maxlength: 255,
            autocapitalize: 'words',
            autocomplete: 'off'
        },
        inputValidator: function (value) {
            if (!value || !value.trim()) {
                return 'Guest name is required.';
            }
        }
    });

    if (!result.isConfirmed) {
        return;
    }

    const newname = result.value.trim();

    if (newname === guestname.trim()) {
        return;
    }

    try {
        const response = await sendAjaxPost(
            '/updatenameaftercheckout',
            {
                newname: newname,
                docid: docid,
                sno1: sno1
            },
            {
                loadingTitle: 'Updating Guest Name...',
                loadingText: 'Please wait...',
                showSuccessAlert: false
            }
        );

        if (response && response.success) {
            await Swal.fire({
                icon: 'success',
                title: 'Name Updated',
                text: response.message || 'Guest name updated successfully.',
                timer: 1500,
                showConfirmButton: false
            });

            window.location.reload();
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Update Failed',
                text: response?.message || 'Unable to update guest name.'
            });
        }
    } catch (error) {
        console.error('Guest name update error:', error);

        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Unable to update guest name. Please try again.'
        });
    }
});

function buildRoomStatusLabel(prefix, firstName) {
    // return [prefix ?? '', firstName ?? ''].join(' ').replace(/\s+/g, ' ').trim();
    return firstName;
}

function normalizeRoomStatusDate(dateValue) {
    if (!dateValue) {
        return '';
    }

    if (dateValue instanceof Date) {
        const year = dateValue.getFullYear();
        const month = String(dateValue.getMonth() + 1).padStart(2, '0');
        const day = String(dateValue.getDate()).padStart(2, '0');
        return `${year}-${month}-${day}`;
    }

    const normalizedValue = String(dateValue).trim().substring(0, 10);
    const parsedDate = new Date(normalizedValue);
    if (Number.isNaN(parsedDate.getTime())) {
        return normalizedValue;
    }

    return normalizeRoomStatusDate(parsedDate);
}

function popupblockout(roomblockout) {
    roomblockout.forEach(function (rdata) {
        const roomno = rdata.roomcode;
        const fromdate = new Date(rdata.fromdate);
        const todate = new Date(rdata.todate);
        const block = rdata.block;
        const reasons = rdata.reasons;
        const alltd = $('td[data-value="' + roomno + '"]');

        alltd.each(function () {
            const td = $(this);
            const headers = new Date(td.attr('headers'));

            if (headers >= fromdate && headers <= todate) {
                td.attr('ofwhat', 'blocked');
                if (rdata.block == 'Out of Order') {
                    td.addClass('oorder').text(block);
                    td.append('<div class="opopshow">' + reasons + '</div>');
                }
                if (rdata.block == 'Maintainence') {
                    td.addClass('maintainence').text(block);
                    td.append('<div class="opopshow">' + reasons + '</div>');
                }
                if (rdata.block == 'Management') {
                    td.addClass('management').text(block);
                    td.append('<div class="opopshow">' + reasons + '</div>');
                }
                if (rdata.block == 'Marriage') {
                    td.addClass('marriage').text(block);
                    td.append('<div class="opopshow">' + reasons + '</div>');
                }
            }
        });
    });
}

function appendRoomStatusRange(roomno, startDate, endDate, options, ofwhat) {
    const normalizedStartDate = normalizeRoomStatusDate(startDate);
    const normalizedEndDate = normalizeRoomStatusDate(endDate);

    if (
        !roomno ||
        !normalizedStartDate ||
        !normalizedEndDate ||
        normalizedStartDate > normalizedEndDate
    ) {
        return;
    }

    const visibleDates = Array.from(document.querySelectorAll('.dateheadertd'))
        .map(function (headerCell) {
            return headerCell.dataset.date;
        })
        .filter(Boolean);

    if (!visibleDates.length) {
        return;
    }

    const visibleStartDate =
        normalizedStartDate < visibleDates[0]
            ? visibleDates[0]
            : normalizedStartDate;

    const visibleEndDate =
        normalizedEndDate > visibleDates[visibleDates.length - 1]
            ? visibleDates[visibleDates.length - 1]
            : normalizedEndDate;

    if (visibleStartDate > visibleEndDate) {
        return;
    }

    const startIndex = visibleDates.indexOf(visibleStartDate);
    const endIndex = visibleDates.indexOf(visibleEndDate);

    if (
        startIndex === -1 ||
        endIndex === -1 ||
        endIndex < startIndex
    ) {
        return;
    }

    /*
     * IMPORTANT:
     * Never remove room-status TDs.
     * Never change colspan.
     *
     * Every date must keep its own physical TD so that
     * the room row always stays aligned with the date header.
     */

    for (let i = startIndex; i <= endIndex; i++) {
        const currentDate = visibleDates[i];

        const cell = document.querySelector(
            `td[data-value="${roomno}"][headers="${currentDate}"]`
        );

        if (!cell) continue;

        cell.setAttribute('ofwhat', ofwhat);

        const segmentOptions = Object.assign({}, options);

        const halfProperty = {
            checkout: 'checkoutHalf',
            reservation: 'reservationHalf',
            checkin: 'checkinHalf'
        }[ofwhat];

        if (halfProperty) {
            let half = 'full';

            if (normalizedStartDate !== normalizedEndDate) {
                if (currentDate === normalizedStartDate) {
                    half = 'right';
                } else if (currentDate === normalizedEndDate) {
                    half = 'left';
                }
            }

            segmentOptions[halfProperty] = half;
        }
        if (currentDate === normalizedEndDate && segmentOptions.text) {
            segmentOptions.text = segmentOptions.text.substring(0, 5);
        }


        /*
         * Give every rendered date a unique segment key.
         * This allows overlapping bookings to coexist in the same cell.
         */
        if (options.segmentKey) {
            segmentOptions.segmentKey =
                options.segmentKey + '|' + currentDate;
        }

        appendRoomStatusSegment(cell, segmentOptions);

        cell.dataset.rangeStart = normalizedStartDate;
        cell.dataset.rangeEnd = normalizedEndDate;
    }
}

function getRoomStatusSegmentStyles(statusClass, crown = false) {
    const styleMap = {
        fromtd: {
            backgroundColor: '#FAD5CD'
        },
        betweentd: {
            backgroundColor: '#FAD5CD'
        },
        totd: {
            backgroundColor: '#FAD5CD'
        },
        delaytd: {
            backgroundColor: '#f4d35e'
        },
        complimentry: {
            backgroundColor: '#f61067',
            color: '#fff'
        },
        billedtd: {
            backgroundColor: '#e9cdfa'
        },
        fromtd2: {
            backgroundColor: '#cdfad5'
        },
        betweentd2: {
            backgroundColor: '#cdfad5'
        },
        totd2: {
            backgroundColor: '#cdfad5'
        },
        checkouttd: {
            backgroundColor: '#ADD8E6'
        }
    };

    const styles = Object.assign({
        backgroundColor: '#fff',
        color: '#000'
    }, styleMap[statusClass] || {});

    if (crown) {
        styles.fontWeight = '700';
    }

    return styles;
}

function normalizeGuestSearchTerm(value) {
    return String(value || '').trim().toLowerCase();
}

function clearRoomStatusSearchMatch() {
    document.querySelectorAll('#dateTable .roomstatus-segment.roomstatus-search-match').forEach(function (segment) {
        segment.classList.remove('roomstatus-search-match');
    });
}

function getRoomStatusMatchingSegments(searchValue) {
    const normalizedSearchValue = normalizeGuestSearchTerm(searchValue);

    if (!normalizedSearchValue) {
        return [];
    }

    return Array.from(document.querySelectorAll('#dateTable .roomstatus-segment')).filter(function (segment) {
        const searchableText = [
            segment.dataset.searchName || '',
            segment.textContent || '',
            segment.title || ''
        ].join(' ').toLowerCase();

        return searchableText.includes(normalizedSearchValue);
    });
}

function activateRoomStatusMatch(matchIndex) {
    clearRoomStatusSearchMatch();

    if (!roomStatusMatchedSegments.length) {
        roomStatusActiveMatchIndex = -1;
        return;
    }

    const normalizedIndex = ((matchIndex % roomStatusMatchedSegments.length) + roomStatusMatchedSegments.length) % roomStatusMatchedSegments.length;
    const matchingSegment = roomStatusMatchedSegments[normalizedIndex];

    if (!matchingSegment || !document.body.contains(matchingSegment)) {
        roomStatusMatchedSegments = [];
        roomStatusActiveMatchIndex = -1;
        return;
    }

    roomStatusActiveMatchIndex = normalizedIndex;
    matchingSegment.classList.add('roomstatus-search-match');
    matchingSegment.focus({
        preventScroll: true
    });
    matchingSegment.scrollIntoView({
        behavior: 'smooth',
        block: 'center',
        inline: 'center'
    });
}

function focusRoomStatusSegmentByGuestName(searchValue, preferredIndex = 0) {
    roomStatusMatchedSegments = getRoomStatusMatchingSegments(searchValue);

    if (!roomStatusMatchedSegments.length) {
        clearRoomStatusSearchMatch();
        roomStatusActiveMatchIndex = -1;
        return;
    }

    activateRoomStatusMatch(preferredIndex);
}

function debounceRoomStatusSearch(searchValue) {
    if (roomStatusSearchDebounceTimer) {
        clearTimeout(roomStatusSearchDebounceTimer);
    }

    roomStatusSearchDebounceTimer = setTimeout(function () {
        roomStatusSearchDebounceTimer = null;
        focusRoomStatusSegmentByGuestName(searchValue);
    }, 450);
}

function moveRoomStatusSearchMatch(step) {
    const currentSearchValue = getRoomStatusSearchInput().value;

    if (!normalizeGuestSearchTerm(currentSearchValue)) {
        return false;
    }

    const latestMatches = getRoomStatusMatchingSegments(currentSearchValue);
    if (!latestMatches.length) {
        roomStatusMatchedSegments = [];
        roomStatusActiveMatchIndex = -1;
        clearRoomStatusSearchMatch();
        return false;
    }

    roomStatusMatchedSegments = latestMatches;

    let nextIndex = roomStatusActiveMatchIndex;
    if (nextIndex === -1) {
        nextIndex = step > 0 ? 0 : roomStatusMatchedSegments.length - 1;
    } else {
        nextIndex += step;
    }

    activateRoomStatusMatch(nextIndex);
    return true;
}

function shouldHandleRoomStatusTabNavigation() {
    const activeElement = document.activeElement;
    return activeElement &&
        (activeElement.id === RoomStatusConfig.searchInputId || activeElement.classList.contains('roomstatus-segment')) &&
        normalizeGuestSearchTerm(getRoomStatusSearchInput().value);
}

function handleRoomStatusSearchTab(event) {
    if (event.key !== 'Tab' || !shouldHandleRoomStatusTabNavigation()) {
        return;
    }

    if (!moveRoomStatusSearchMatch(event.shiftKey ? -1 : 1)) {
        return;
    }

    event.preventDefault();
}

function scheduleRoomStatusSearchSync() {
    if (roomStatusSearchAnimationFrame) {
        cancelAnimationFrame(roomStatusSearchAnimationFrame);
    }

    roomStatusSearchAnimationFrame = requestAnimationFrame(function () {
        roomStatusSearchAnimationFrame = null;
        const searchValue = getRoomStatusSearchInput().value;
        if (!normalizeGuestSearchTerm(searchValue)) {
            clearRoomStatusSearchMatch();
            roomStatusMatchedSegments = [];
            roomStatusActiveMatchIndex = -1;
            return;
        }

        const existingActiveSegment = roomStatusMatchedSegments[roomStatusActiveMatchIndex];
        const latestMatches = getRoomStatusMatchingSegments(searchValue);
        roomStatusMatchedSegments = latestMatches;

        if (!latestMatches.length) {
            clearRoomStatusSearchMatch();
            roomStatusActiveMatchIndex = -1;
            return;
        }

        const existingIndex = existingActiveSegment ? latestMatches.indexOf(existingActiveSegment) : -1;
        activateRoomStatusMatch(existingIndex >= 0 ? existingIndex : 0);
    });
}

function appendRoomStatusSegment(td, options) {
    if (!td) {
        return;
    }

    const removableCellClasses = ['fromtd', 'totd', 'betweentd', 'delaytd', 'complimentry', 'billedtd', 'fromtd2', 'totd2', 'betweentd2', 'crown'];
    td.classList.remove(...removableCellClasses);
    td.classList.add('roomstatus-stack-cell');

    let stack = td.querySelector('.roomstatus-stack');
    if (!stack) {
        td.innerHTML = '';
        stack = document.createElement('div');
        stack.className = 'roomstatus-stack';
        td.appendChild(stack);
    }

    if (options.segmentKey) {
        const duplicateSegment = Array.from(stack.children).find(function (existingSegment) {
            return existingSegment.dataset.segmentKey === options.segmentKey;
        });

        if (duplicateSegment) {
            return;
        }
    }

    const segment = document.createElement('button');
    segment.type = 'button';
    segment.className = 'roomstatus-segment';
    const statusHalf = {
        checkout: 'checkoutHalf',
        reservation: 'reservationHalf',
        checkin: 'checkinHalf'
    }[td.getAttribute('ofwhat')];

    if (statusHalf) {
        const half = options[statusHalf] || 'full';

        segment.style.width = half === 'full' ? '100%' : '50%';
        segment.style.left = half === 'right' ? '50%' : '0';
    }

    segment.title = options.searchName || options.text || '';

    if (options.roomChange) {
        segment.draggable = true;

        segment.addEventListener('dragstart', function (event) {
            event.stopPropagation();

            segment.classList.add('roomstatus-dragging');

            event.dataTransfer.effectAllowed = 'move';

            const roomChangeData = JSON.stringify({
                docid: options.roomChangeDocid,
                sno: options.roomChangeSno,
                currentRoom: options.roomChangeCurrentRoom,
                currentRoomCat: options.roomChangeCurrentRoomCat,
                sourceRoom: td.dataset.value,
                sourceDate: td.headers
            });

            event.dataTransfer.setData(
                ROOM_CHANGE_DRAG_TYPE,
                roomChangeData
            );

            event.dataTransfer.setData(
                'text/plain',
                roomChangeData
            );
        });

        segment.addEventListener('dragend', function () {
            segment.classList.remove('roomstatus-dragging');
        });
    }

    if (options.travellogo && options.travellogo !== 'N') {
        const logoUrl = RoomStatusConfig.travelLogoBaseUrl + '/' + encodeURIComponent(options.travellogo);

        const logoImg = document.createElement('img');
        logoImg.src = logoUrl;
        logoImg.alt = options.travelname || 'Travel Logo';
        logoImg.title = options.travelname || '';
        logoImg.className = 'roomstatus-segment-logo';

        segment.appendChild(logoImg);

        if (options.travelname && options.travelname.trim() !== '') {
            const travelName = document.createElement('span');
            travelName.className = 'roomstatus-segment-travelname';
            travelName.textContent = RoomStatusConfig.truncateTravelName ?
                (options.travelname.length > 9 ? options.travelname.substring(0, 9) + '...' : options.travelname) :
                options.travelname;

            segment.appendChild(travelName);
        }
    }

    if (options.crown) {
        segment.classList.add('roomstatus-segment-crown');

        const crownIcon = document.createElement('img');
        crownIcon.src = RoomStatusConfig.crownIconUrl;
        crownIcon.alt = 'Leader Room';
        crownIcon.className = 'roomstatus-segment-crown-icon';
        segment.appendChild(crownIcon);
    }

    const segmentText = document.createElement('span');
    segmentText.textContent = options.text || '';
    segment.appendChild(segmentText);

    const segmentStyles = getRoomStatusSegmentStyles(options.statusClass, options.crown);
    Object.keys(segmentStyles).forEach(function (styleKey) {
        segment.style[styleKey] = segmentStyles[styleKey];
    });

    if (options.segmentKey) {
        segment.dataset.segmentKey = options.segmentKey;
    }

    if (options.searchName) {
        segment.dataset.searchName = normalizeGuestSearchTerm(options.searchName);
    }

    if (typeof options.onClick === 'function') {
        segment.addEventListener('click', function (event) {
            event.stopPropagation();
            options.onClick(segment, event);
        });
    }

    stack.appendChild(segment);

    const segmentCount = stack.querySelectorAll('.roomstatus-segment').length;

    let overlapBadge = stack.querySelector('.roomstatus-overlap-badge');
    let ofwhat = td.getAttribute('ofwhat');
    let daterangeend = td.getAttribute('data-range-end') || '';
    let headers = td.getAttribute('headers') || '';
    if (segmentCount > 1 && ofwhat != 'checkout' && ofwhat != 'checkin' && ofwhat != 'reservation' && daterangeend != headers) {
        td.classList.add('roomstatus-overlap');

        stack.querySelectorAll('.roomstatus-segment').forEach(function (segment) {

            if (!segment.dataset.originalBackground) {
                segment.dataset.originalBackground =
                    segment.style.backgroundColor || '';
            }

            segment.style.removeProperty('background-color');
        });

        if (!overlapBadge) {
            overlapBadge = document.createElement('span');
            overlapBadge.className = 'roomstatus-overlap-badge';
            overlapBadge.title = 'Overlapping records';
            stack.appendChild(overlapBadge);
        }

        overlapBadge.textContent = '⚠ ' + segmentCount;
        overlapBadge.title = segmentCount + ' overlapping records';

    } else {
        td.classList.remove('roomstatus-overlap');

        stack.querySelectorAll('.roomstatus-segment').forEach(function (segment) {

            if (segment.dataset.originalBackground) {
                segment.style.backgroundColor =
                    segment.dataset.originalBackground;

                delete segment.dataset.originalBackground;
            }
        });

        if (overlapBadge) {
            overlapBadge.remove();
        }
    }
    scheduleRoomStatusSearchSync();
}

document.addEventListener('dragover', function (event) {
    const cell = event.target.closest('#dateTable td.roomstatuscell');

    if (!cell) {
        return;
    }
    const ofwhat = cell.getAttribute('ofwhat');

    event.preventDefault();

    event.dataTransfer.dropEffect = 'move';

    document.querySelectorAll('.roomstatus-drop-target').forEach(function (item) {
        if (item !== cell) {
            item.classList.remove('roomstatus-drop-target');
        }
    });

    cell.classList.add('roomstatus-drop-target');
});

document.addEventListener('dragleave', function (event) {
    const cell = event.target.closest('#dateTable td.roomstatuscell');

    if (!cell) {
        return;
    }

    const ofwhat = cell.getAttribute('ofwhat');

    if (!cell.contains(event.relatedTarget)) {
        cell.classList.remove('roomstatus-drop-target');
    }
});

document.addEventListener('drop', async function (event) {
    const cell = event.target.closest('#dateTable td.roomstatuscell');

    if (!cell) {
        return;
    }

    const ofwhat = cell.getAttribute('ofwhat');
    // console.log(ofwhat);

    event.preventDefault();

    cell.classList.remove('roomstatus-drop-target');

    const rawData = event.dataTransfer.getData('text/plain');

    if (!rawData) {
        return;
    }

    let roomChangeData;

    try {
        roomChangeData = JSON.parse(rawData);
    } catch (error) {
        console.error('Invalid room change data:', error);
        return;
    }

    const targetRoom = cell.dataset.value;
    const targetDate = cell.headers;

    const currentDate = document.querySelector('meta[name="ncurdate"]').getAttribute('content');

    let daterangeend = cell.getAttribute('data-range-end') || '';
    let headers = cell.getAttribute('headers') || '';

    console.log({
        ofwhat,
        headers: cell.getAttribute('headers'),
        daterangeend: cell.getAttribute('data-range-end'),
        same: cell.getAttribute('headers') === cell.getAttribute('data-range-end'),
        cell
    });
    if ((ofwhat === 'checkin' || ofwhat === 'checkout' || ofwhat == 'reservation' || ofwhat == 'blocked') && daterangeend !== headers) {
        Swal.fire({
            icon: 'warning',
            title: 'Cannot Change Room',
            text: `Room cannot be changed on ${ofwhat.toUpperCase()}`
        });
        return;
    }

    if (targetDate < currentDate) {
        Swal.fire({
            icon: 'warning',
            title: 'Cannot Change Room',
            text: 'Room cannot be changed for a previous date.'
        });

        return;
    }

    if (
        String(targetRoom) === String(roomChangeData.sourceRoom) &&
        String(targetDate) === String(roomChangeData.sourceDate)
    ) {
        Swal.fire({
            icon: 'warning',
            title: 'Cannot Change Room',
            text: 'You cannot drop the booking on the same cell.'
        });

        return;
    }


    if (
        !roomChangeData.docid ||
        !roomChangeData.sno ||
        !roomChangeData.currentRoom ||
        !roomChangeData.sourceRoom ||
        !roomChangeData.sourceDate
    ) {
        Swal.fire({
            icon: 'warning',
            title: 'Cannot Change Room',
            text: 'Missing Required Data.'
        });
        return;
    }

    const result = await Swal.fire({
        title: 'Change Room?',
        text: `Change room from ${roomChangeData.currentRoom} to ${targetRoom} on ${dmy(targetDate)}?`,
        icon: 'warning',
        input: 'text',
        inputPlaceholder: 'Enter reason',
        showCancelButton: true,
        confirmButtonText: 'Change Room',
        cancelButtonText: 'Cancel',
        inputValidator: (value) => {
            if (!value || !value.trim()) {
                return 'Please enter a reason.';
            }
        }
    });

    if (!result.isConfirmed) {
        return;
    }

    const reason = result.value.trim();

    const roomChangePayload = {
        docid: roomChangeData.docid,
        sno: roomChangeData.sno,
        currentRoom: roomChangeData.currentRoom,
        currentRoomCat: roomChangeData.currentRoomCat,
        targetRoom: targetRoom,
        targetDate: targetDate,
        reason: reason
    };

    try {
        const response = await sendAjaxPost('/roomchangedrag', roomChangePayload, {
            showSuccessAlert: false
        });

        if (response && response.success) {
            Swal.fire({
                icon: 'success',
                title: 'Room Changed',
                text: response.message || 'Room changed successfully.',
                timer: 1500,
                showConfirmButton: false
            });
            window.location.reload();
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Room Change Failed',
                text: response?.message || 'Unable to change the room.'
            });
        }

    } catch (error) {
        console.error('Room change error:', error);

        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Unable to process the room change.'
        });
    }
});

function deletemodaldiv() {
    const modal = document.querySelector('.modal-custom');
    const modalpacked = document.querySelector('.modal-packed');
    modal.remove();
    modalpacked.remove();
}

function deletemodaldiv2() {
    const modalpacked = document.querySelector('.modal-packed');
    modalpacked.remove();
}

/* ------------------------------ shared event handlers ------------------------------ */

document.addEventListener('keydown', handleRoomStatusSearchTab);

$(document).on('click', function (event) {
    // Click inside room-status cell:
    // let the cell's own click handler manage selection.
    if ($(event.target).closest('#dateTable td.roomstatuscell').length) {
        return;
    }

    // Click inside an opened menu:
    // keep the menu and selection as they are.
    if (
        $(event.target).closest(
            '.reservation-action-menu, .reservation-more-menu, .reservation-more-button'
        ).length
    ) {
        return;
    }

    // Click anywhere else on the page:
    // close menu AND remove pink selection.
    $('.reservation-action-menu, .reservation-more-menu').remove();

    clearRoomStatusSelection();
});

$(document).keydown(function (event) {
    if (event.keyCode === 27) {
        deletemodaldiv();
    }
});

$(document).ready(function () {
    const searchInput = getRoomStatusSearchInput();

    if (searchInput) {
        searchInput.addEventListener('input', function (event) {
            debounceRoomStatusSearch(event.target.value);
        });

        searchInput.addEventListener('search', function (event) {
            focusRoomStatusSegmentByGuestName(event.target.value);
        });
    }
});


async function updatedefaultdays(value) {
    value = parseInt(value, 10);

    if (value < 5 || value > 30) {
        return;
    }

    const response = await sendAjaxPost('/updatedefaultdays', {
        default_days_roomstatus: value
    }, {
        showSuccessAlert: false
    });

    if (response && response.success) {
        window.location.reload();
    }
}

function openRoomActionPanel(title, html) {
    const $panel = $('#roomActionPanel');

    if (!$panel.length) {
        return;
    }

    const $modal = $('.modal-custom:visible').last();

    if ($modal.length) {
        const rect = $modal[0].getBoundingClientRect();
        const panelWidth = rect.width;

        $modal.css({
            transform: `translateX(-${panelWidth}px)`
        });

        const shiftedRect = $modal[0].getBoundingClientRect();

        $panel.css({
            top: shiftedRect.top + 'px',
            left: (shiftedRect.right + 4) + 'px',
            width: panelWidth + 'px',
            height: shiftedRect.height + 'px'
        });
    } else {
        $panel.css({
            top: '0',
            right: '0',
            left: 'auto',
            width: '400px',
            height: '100vh'
        });
    }

    $panel.find('.room-action-panel-title').text(title || '');
    $panel.find('.room-action-panel-body').html(html || '');

    $panel.css('display', 'flex');
}

function closeRoomActionPanel() {
    const $panel = $('#roomActionPanel');

    $panel.css('display', 'none');
    $panel.find('.room-action-panel-body').html('');

    const $modal = $('.modal-custom:visible').last();

    if ($modal.length) {
        $modal.css('transform', '');
    }
}

$(document).on('click', '#roomActionPanel .room-action-panel-close', function (event) {
    event.preventDefault();
    event.stopPropagation();

    closeRoomActionPanel();
});

// ============================================================================
// ROOM STATUS INTERACTION CONTROLLER
// ============================================================================

const ROOM_CHANGE_DRAG_TYPE = 'application/x-analysis-hms-room-change';

let roomStatusSelection = {
    selecting: false,
    startCell: null,
    currentCell: null,
    moved: false
};

let roomStatusSuppressNextClick = false;

function getRoomStatusCellData(cell) {
    const $cell = $(cell);
    const ofwhat = $cell.attr('ofwhat') || '';
    const daterangeend = $cell.attr('data-range-end') || '';
    const headers = $cell.attr('headers') || '';

    if (
        ofwhat !== '' &&
        ofwhat !== 'blocked' &&
        daterangeend != headers
    ) {
        return null;
    }

    return {
        roomcategory: $cell.closest('tr').data('value'),
        roomno: $cell.data('value'),
        date: $cell.attr('headers')
    };
}

function getRoomStatusCellPosition(cell) {
    const $cell = $(cell);
    const $row = $cell.closest('tr');

    return {
        row: $row.index(),
        column: $row.children('td.roomstatuscell').index(cell)
    };
}

function clearRoomStatusSelection() {
    $('#dateTable td.roomstatuscell.roomstatus-selected')
        .removeClass('roomstatus-selected');
}

function selectRoomStatusRange(startCell, endCell) {
    if (!startCell || !endCell) {
        return;
    }

    clearRoomStatusSelection();

    const start = getRoomStatusCellPosition(startCell);
    const end = getRoomStatusCellPosition(endCell);

    if (start.column < 0 || end.column < 0) {
        return;
    }

    const minRow = Math.min(start.row, end.row);
    const maxRow = Math.max(start.row, end.row);
    const minColumn = Math.min(start.column, end.column);
    const maxColumn = Math.max(start.column, end.column);

    $('#dateTable tr').each(function () {
        const $row = $(this);
        const rowIndex = $row.index();

        if (rowIndex < minRow || rowIndex > maxRow) {
            return;
        }

        $row.children('td.roomstatuscell').each(function (columnIndex) {
            if (
                columnIndex >= minColumn &&
                columnIndex <= maxColumn
            ) {
                $(this).addClass('roomstatus-selected');
            }
        });
    });
}

function getSelectedRoomStatusCells() {
    const selectedCells = [];

    $('#dateTable td.roomstatuscell.roomstatus-selected').each(function () {
        const cellData = getRoomStatusCellData(this);

        if (cellData !== null) {
            selectedCells.push(cellData);
        }
    });

    return selectedCells;
}

function getRoomStatusCellFromPoint(clientX, clientY) {
    const element = document.elementFromPoint(clientX, clientY);

    if (!element) {
        return null;
    }

    const cell = element.closest('#dateTable td.roomstatuscell');

    return cell || null;
}


// ============================================================================
// EMPTY CELL ACTION MENU
// ============================================================================

function openRoomStatusActionMenu(cell) {
    $('.reservation-action-menu').remove();

    if (!cell) {
        return;
    }

    const menu = document.createElement('div');
    menu.className = 'reservation-action-menu';

    const selectedCells = getSelectedRoomStatusCells();

    const selected = encodeURIComponent(
        JSON.stringify(selectedCells)
    );

    const currentDate = $('meta[name="ncurdate"]').attr('content');

    let ofwhat = cell.getAttribute('ofwhat');

    const showWalkin = selectedCells[0]?.date === currentDate && ofwhat !== 'blocked';
    const showReservation = ofwhat !== 'blocked';

    let blockorunblock = ofwhat === 'blocked' ? 'Unblock' : 'Block';
    const pagesource = window.location.pathname.split('/').filter(Boolean).pop();
    menu.innerHTML = `
    ${showWalkin ? `
        <a href="walkincheckin?selected=${selected}&page_source=${pagesource}">
            <i class="fa-solid fa-right-to-bracket"></i>
            <span>Walkin</span>
        </a>
    ` : ''}

    ${showReservation ? `
        <a href="reservation?selected=${selected}&page_source=${pagesource}">
            <i class="fa-solid fa-calendar-check"></i>
            <span>Reservation</span>
        </a>
    ` : ''}

    <button type="button" data-ofwhat="${ofwhat}" class="room-status-block-button">
        <i class="fa-solid fa-shield-halved"></i>
        <span>${blockorunblock}</span>
    </button>
`;

    document.body.appendChild(menu);

    $(menu).find('.room-status-block-button').on('click', async function (event) {
        event.preventDefault();
        event.stopPropagation();

        $('.reservation-action-menu').remove();

        if (!selectedCells.length) {
            return;
        }

        const ofwhat = $(this).attr('data-ofwhat');

        if (ofwhat === 'blocked') {

            const result = await Swal.fire({
                title: 'Unblock Room',
                text: 'Please enter a remark for unblocking the selected room(s):',
                input: 'text',
                inputPlaceholder: 'Enter your remark here...',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Unblock',
                inputValidator: function (value) {
                    if (!value || !value.trim()) {
                        return 'Please enter a remark.';
                    }
                }
            });

            if (!result.isConfirmed) {
                return;
            }

            const remark = result.value.trim();

            const ajaxResult = await sendAjaxPost(
                RoomStatusConfig.unblockRoomUrl,
                {
                    selectedCells: selectedCells,
                    remark: remark
                },
                {
                    successTitle: 'Room Unblocked',
                    successText: 'Selected room(s) have been unblocked successfully.'
                }
            );

            if (ajaxResult && ajaxResult.success) {

                window.location.reload();
            }

            return;
        }

        const htmlcontent = createRoomBlockHtml(selectedCells);

        openRoomActionPanel(
            'Maintenance Block',
            htmlcontent
        );

        $('.reservation-action-menu').remove();
    });

    const rect = cell.getBoundingClientRect();
    const gap = 4;

    const menuWidth = menu.offsetWidth;
    const menuHeight = menu.offsetHeight;

    let left = rect.right + gap;
    let top = rect.top;

    if (left + menuWidth > window.innerWidth) {
        left = rect.left - menuWidth - gap;
    }

    if (top + menuHeight > window.innerHeight) {
        top = window.innerHeight - menuHeight - gap;
    }

    menu.style.top = `${window.scrollY + top}px`;
    menu.style.left = `${window.scrollX + left}px`;
}


// ============================================================================
// POINTER DOWN
// ============================================================================

$(document).on(
    'pointerdown.roomStatus',
    '#dateTable td.roomstatuscell',
    function (event) {

        /*
         * Filled booking segment owns its own click/drag interaction.
         * Empty-cell selection must NOT interfere with it.
         */
        if ($(event.target).closest('.roomstatus-segment').length) {
            return;
        }

        document.body.classList.add('roomstatus-pointer-selecting');

        roomStatusSelection.selecting = true;
        roomStatusSelection.startCell = this;
        roomStatusSelection.currentCell = this;
        roomStatusSelection.moved = false;

        /*
         * Do NOT call preventDefault().
         *
         * A normal click must still generate a click event so that
         * openRoomStatusActionMenu() can run.
         */
    }
);


// ============================================================================
// POINTER MOVE
// ============================================================================

$(document).on(
    'pointermove.roomStatus',
    function (event) {

        if (!roomStatusSelection.selecting) {
            return;
        }

        const cell = getRoomStatusCellFromPoint(
            event.clientX,
            event.clientY
        );

        if (!cell) {
            return;
        }

        if (cell === roomStatusSelection.startCell) {
            return;
        }

        roomStatusSelection.moved = true;
        roomStatusSelection.currentCell = cell;

        /*
         * Once the pointer actually moves to another room/date,
         * this becomes range-selection mode.
         */
        event.preventDefault();

        selectRoomStatusRange(
            roomStatusSelection.startCell,
            roomStatusSelection.currentCell
        );
    }
);


// ============================================================================
// POINTER UP
// ============================================================================

$(document).on(
    'pointerup.roomStatus',
    function (event) {

        if (!roomStatusSelection.selecting) {
            return;
        }

        document.body.classList.remove('roomstatus-pointer-selecting');

        const wasMoved = roomStatusSelection.moved;

        const startCell = roomStatusSelection.startCell;
        const currentCell = roomStatusSelection.currentCell;

        roomStatusSelection.selecting = false;

        if (wasMoved && startCell && currentCell) {

            // Re-apply the range AFTER pointer movement has ended.
            // This keeps the selected cells pink.
            selectRoomStatusRange(
                startCell,
                currentCell
            );

            const selectedCells = getSelectedRoomStatusCells();

            roomStatusSuppressNextClick = true;

            const menuCell = currentCell;

            setTimeout(function () {

                // Make absolutely sure the range remains selected.
                selectRoomStatusRange(
                    startCell,
                    currentCell
                );

                openRoomStatusActionMenu(menuCell);

                roomStatusSuppressNextClick = false;

            }, 0);
        }

        roomStatusSelection.startCell = null;
        roomStatusSelection.currentCell = null;
        roomStatusSelection.moved = false;
    }
);


// ============================================================================
// EMPTY CELL CLICK
// ============================================================================

$(document).on(
    'click.roomStatus',
    '#dateTable td.roomstatuscell',
    function (event) {

        /*
         * If the click came from a filled booking segment,
         * do absolutely nothing here.
         *
         * appendRoomStatusSegment() already owns that click.
         */
        if ($(event.target).closest('.roomstatus-segment').length) {
            return;
        }

        /*
         * A range selection ends with a click event.
         * Do not open the single-cell menu in that case.
         */
        if (roomStatusSuppressNextClick) {
            roomStatusSuppressNextClick = false;
            return;
        }

        event.stopPropagation();

        clearRoomStatusSelection();

        $(this).addClass('roomstatus-selected');

        openRoomStatusActionMenu(this);
    }
);


// ============================================================================
// ROOM CHANGE DRAG START
// ============================================================================

document.addEventListener('dragstart', function (event) {

    const segment = event.target.closest(
        '#dateTable .roomstatus-segment'
    );

    if (!segment) {
        return;
    }

    /*
     * Only segments explicitly marked as room-change capable
     * can start a room-change drag.
     */
    if (!segment.draggable) {
        return;
    }

    /*
     * appendRoomStatusSegment() already sets the room-change data.
     * This handler only establishes a dedicated drag type.
     */
    if (!event.dataTransfer) {
        return;
    }

    const rawData = event.dataTransfer.getData('text/plain');

    if (!rawData) {
        return;
    }

    event.dataTransfer.setData(
        ROOM_CHANGE_DRAG_TYPE,
        rawData
    );

    event.dataTransfer.effectAllowed = 'move';
});


// ============================================================================
// ROOM CHANGE DRAG OVER
// ============================================================================

document.addEventListener('dragover', function (event) {

    const cell = event.target.closest(
        '#dateTable td.roomstatuscell'
    );

    if (!cell) {
        return;
    }

    /*
     * IMPORTANT:
     *
     * Do not turn every room cell into a drop target.
     *
     * Only our room-change drag is allowed here.
     */
    if (
        !event.dataTransfer ||
        !Array.from(event.dataTransfer.types || []).includes(
            ROOM_CHANGE_DRAG_TYPE
        )
    ) {
        return;
    }

    event.preventDefault();

    event.dataTransfer.dropEffect = 'move';

    document
        .querySelectorAll('.roomstatus-drop-target')
        .forEach(function (item) {
            if (item !== cell) {
                item.classList.remove('roomstatus-drop-target');
            }
        });

    cell.classList.add('roomstatus-drop-target');
});


// ============================================================================
// ROOM CHANGE DRAG LEAVE
// ============================================================================

document.addEventListener('dragleave', function (event) {

    const cell = event.target.closest(
        '#dateTable td.roomstatuscell'
    );

    if (!cell) {
        return;
    }

    if (!cell.contains(event.relatedTarget)) {
        cell.classList.remove('roomstatus-drop-target');
    }
});


// ============================================================================
// ROOM CHANGE DROP
// ============================================================================

document.addEventListener('drop', async function (event) {

    const cell = event.target.closest(
        '#dateTable td.roomstatuscell'
    );

    if (!cell) {
        return;
    }

    /*
     * THIS IS THE IMPORTANT FIX.
     *
     * A normal click, text drag, browser drag, etc. must never
     * enter the room-change code.
     */
    if (
        !event.dataTransfer ||
        !Array.from(event.dataTransfer.types || []).includes(
            ROOM_CHANGE_DRAG_TYPE
        )
    ) {
        return;
    }

    event.preventDefault();

    cell.classList.remove('roomstatus-drop-target');

    const rawData = event.dataTransfer.getData(
        ROOM_CHANGE_DRAG_TYPE
    );

    if (!rawData) {
        return;
    }

    let roomChangeData;

    try {
        roomChangeData = JSON.parse(rawData);
    } catch (error) {
        console.error(
            'Invalid room change data:',
            error,
            rawData
        );
        return;
    }

    const ofwhat = cell.getAttribute('ofwhat') || '';

    const targetRoom = cell.dataset.value;
    const targetDate = cell.headers;

    const currentDateElement = document.querySelector('meta[name="ncurdate"]');

    const currentDate = currentDateElement ? currentDateElement.getAttribute('content') : $('#fixncur').val();

    /*
     * Check-in / checkout rooms cannot be room changed.
     */
    const daterangeend = cell.getAttribute('data-range-end') || '';
    const headers = cell.getAttribute('headers') || '';
    if (
        (ofwhat === 'checkin' || ofwhat === 'checkout' || ofwhat == 'reservation' || ofwhat == 'blocked') &&
        daterangeend !== headers
    ) {
        Swal.fire({
            icon: 'warning',
            title: 'Cannot Change Room',
            text: `Room cannot be changed on ${ofwhat.toUpperCase()}`
        });

        return;
    }

    /*
     * Previous dates cannot be changed.
     */
    if (
        currentDate &&
        targetDate < currentDate
    ) {
        Swal.fire({
            icon: 'warning',
            title: 'Cannot Change Room',
            text: 'Room cannot be changed for a previous date.'
        });

        return;
    }

    /*
     * Same room/date.
     */
    if (
        String(targetRoom) === String(roomChangeData.sourceRoom) &&
        String(targetDate) === String(roomChangeData.sourceDate)
    ) {
        Swal.fire({
            icon: 'warning',
            title: 'Cannot Change Room',
            text: 'You cannot drop the booking on the same cell.'
        });

        return;
    }

    /*
     * Required room-change data.
     */
    if (
        !roomChangeData.docid ||
        !roomChangeData.sno ||
        !roomChangeData.currentRoom ||
        !roomChangeData.sourceRoom ||
        !roomChangeData.sourceDate
    ) {
        Swal.fire({
            icon: 'warning',
            title: 'Cannot Change Room',
            text: 'Missing Required Data.'
        });

        return;
    }

    const result = await Swal.fire({
        title: 'Change Room?',
        text:
            `Change room from ${roomChangeData.currentRoom} ` +
            `to ${targetRoom} on ${dmy(targetDate)}?`,
        icon: 'warning',
        input: 'text',
        inputPlaceholder: 'Enter reason',
        showCancelButton: true,
        confirmButtonText: 'Change Room',
        cancelButtonText: 'Cancel',
        inputValidator: function (value) {
            if (!value || !value.trim()) {
                return 'Please enter a reason.';
            }
        }
    });

    if (!result.isConfirmed) {
        return;
    }

    const reason = result.value.trim();

    const roomChangePayload = {
        docid: roomChangeData.docid,
        sno: roomChangeData.sno,
        currentRoom: roomChangeData.currentRoom,
        currentRoomCat: roomChangeData.currentRoomCat,
        targetRoom: targetRoom,
        targetDate: targetDate,
        reason: reason
    };

    try {

        const response = await sendAjaxPost(
            '/roomchangedrag',
            roomChangePayload,
            {
                showSuccessAlert: false
            }
        );

        if (response && response.success) {

            Swal.fire({
                icon: 'success',
                title: 'Room Changed',
                text:
                    response.message ||
                    'Room changed successfully.',
                timer: 1500,
                showConfirmButton: false
            });

            window.location.reload();

        } else {

            Swal.fire({
                icon: 'error',
                title: 'Room Change Failed',
                text:
                    response?.message ||
                    'Unable to change the room.'
            });
        }

    } catch (error) {

        console.error(
            'Room change error:',
            error
        );

        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Unable to process the room change.'
        });
    }
});