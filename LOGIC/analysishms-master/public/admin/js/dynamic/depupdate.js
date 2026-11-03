let departureUpdateSelectedBooking = null;
let departureUpdateMatchedBookings = [];

const departureUpdateUrl = '/departureupdate';
const currentDate = document.querySelector('meta[name="ncurdate"]').getAttribute('content');

function formatDepartureDate(date) {
    if (!date) {
        return '';
    }

    const parts = date.split('-');

    if (parts.length !== 3) {
        return date;
    }

    return `${parts[2]}-${parts[1]}-${parts[0]}`;
}

function getMaxDepartureDate(bookings) {
    const dates = bookings
        .map(item => item.DepDate)
        .filter(Boolean);

    return dates.length ? dates.sort().pop() : '';
}

function getMinArrivalDate(bookings) {
    const dates = bookings
        .map(item => item.ArrDate)
        .filter(Boolean);

    return dates.length ? dates.sort()[0] : '';
}

function openDepartureUpdateModal(booking, bookingdata) {
    departureUpdateSelectedBooking = booking;

    departureUpdateMatchedBookings = bookingdata.filter(
        item => item.BookingDocid == booking.BookingDocid
    );

    if (!departureUpdateMatchedBookings.length) {
        Swal.fire({
            icon: 'warning',
            title: 'No Booking Found',
            text: 'No matching booking records found.'
        });

        return;
    }

    renderDepartureUpdateModal();
}

function renderDepartureUpdateModal() {
    const booking = departureUpdateSelectedBooking;
    const matchedBookings = departureUpdateMatchedBookings;

    const selectedArrDate = booking.ArrDate || '';
    const selectedDepDate = booking.DepDate || '';
    const maxDepDate = getMaxDepartureDate(matchedBookings);
    const minArrDate = getMinArrivalDate(matchedBookings);

    let html = `
        <div class="departure-update-wrapper">

            <div class="departure-update-header">
                <div>
                    <div class="departure-update-title">
                        Arr/Dep Update
                    </div>

                    <div class="departure-update-booking">
                        Booking #${escapeHtml(booking.BookNo || '')}
                    </div>
                </div>

                <button
                    type="button"
                    class="departure-update-close"
                    id="departureUpdateClose">
                    <i class="fa fa-times"></i>
                </button>
            </div>

            <div class="departure-update-body">

                <div class="departure-section-title">
                    Selected Booking
                </div>

                ${renderDepartureBooking(
        booking,
        selectedArrDate,
        selectedDepDate,
        minArrDate,
        true
    )}
    `;

    const otherBookings = matchedBookings.filter(
        item => item.Sno != booking.Sno
    );

    if (otherBookings.length) {
        html += `
            <div class="departure-section-title mt-3">
                Other Rooms
            </div>
        `;

        $.each(otherBookings, function (index, item) {
            html += renderDepartureBooking(
                item,
                item.ArrDate || '',
                item.DepDate || '',
                minArrDate,
                false
            );
        });
    }

    html += `
                <div class="departure-group-box mt-3">

                    <div class="form-check">
                        <input
                            class="form-check-input"
                            type="checkbox"
                            id="departureGroupUpdate">

                        <label
                            class="form-check-label"
                            for="departureGroupUpdate">
                            Group Update
                        </label>
                    </div>

                    <div class="mt-2">
                        <label for="departureFinalArrivalDate">
                            Final Arrival Date
                        </label>

                        <input
                            type="date"
                            class="form-control form-control-sm"
                            id="departureFinalArrivalDate"
                            value="${selectedArrDate}"
                            min="${currentDate}">
                    </div>

                    <div class="mt-2">
                        <label for="departureFinalDate">
                            Final Departure Date
                        </label>

                        <input
                            type="date"
                            class="form-control form-control-sm"
                            id="departureFinalDate"
                            value="${maxDepDate}"
                            min="${selectedArrDate}">
                    </div>

                    <small>
                        Departure date cannot be earlier than arrival date.
                    </small>

                    <button
                        type="button"
                        class="btn btn-primary btn-sm w-100 mt-2"
                        id="departureFinalUpdate">
                        Final Update
                    </button>

                </div>

            </div>
        </div>
    `;

    $('#roomActionPanel').html(html);

    bindDepartureUpdateEvents();
}

function renderDepartureBooking(
    booking,
    arrDate,
    depDate,
    minArrDate,
    selected
) {
    return `
        <div class="departure-booking-card ${selected ? 'selected' : ''}">

            <div class="departure-booking-info">
                <span class="departure-booking-main">
                    ${selected
                        ? escapeHtml(
                            `${booking.con_prefix || ''} ${booking.GuestName || '-'} | Room ${booking.RoomNo || '-'}`
                        )
                        : `Room ${escapeHtml(booking.RoomNo || '-')}`
                    }
                </span>
            </div>

            <div class="departure-date-box">

                <label>Arrival</label>

                <input
                    type="date"
                    class="form-control form-control-sm departure-single-arrival"
                    data-sno="${escapeHtml(booking.Sno)}"
                    value="${escapeHtml(arrDate)}"
                    min="${escapeHtml(currentDate)}">
            </div>

            <div class="departure-date-box">

                <label>Departure</label>

                <input
                    type="date"
                    class="form-control form-control-sm departure-single-date"
                    data-sno="${escapeHtml(booking.Sno)}"
                    value="${escapeHtml(depDate)}"
                    min="${escapeHtml(arrDate)}">
            </div>

            <button
                type="button"
                class="btn btn-sm ${selected ? 'btn-primary' : 'btn-outline-primary'} departure-single-update"
                data-sno="${escapeHtml(booking.Sno)}">
                Update
            </button>

        </div>
    `;
}

function showDepartureDateError(message) {
    Swal.fire({
        icon: 'warning',
        title: 'Invalid Date',
        text: message
    });
}

function validateDepartureDates(arrDate, depDate, arrivalInput, departureInput) {
    if (!arrDate || !depDate) {
        return false;
    }

    if (depDate < arrDate) {
        showDepartureDateError(
            'Departure date cannot be earlier than arrival date.'
        );

        if (departureInput) {
            $(departureInput).val(arrDate);
        }

        return false;
    }

    return true;
}

function bindDepartureUpdateEvents() {
    $(document)
        .off('click.departureClose', '#departureUpdateClose')
        .on('click.departureClose', '#departureUpdateClose', function () {
            closeRoomActionPanel();
        });

    $(document)
        .off('change.departureArrival', '.departure-single-arrival')
        .on('change.departureArrival', '.departure-single-arrival', function () {
            const $arrivalInput = $(this);
            const sno = $arrivalInput.data('sno');
            const arrDate = $arrivalInput.val();

            const $card = $arrivalInput.closest('.departure-booking-card');
            const $departureInput = $card.find('.departure-single-date');

            const depDate = $departureInput.val();

            if (!arrDate) {
                return;
            }

            $departureInput.attr('min', arrDate);

            if (depDate && depDate < arrDate) {
                $departureInput.val(arrDate);
            }
        });

    $(document)
        .off('change.departureDate', '.departure-single-date')
        .on('change.departureDate', '.departure-single-date', function () {
            const $departureInput = $(this);
            const $card = $departureInput.closest('.departure-booking-card');

            const arrDate = $card.find('.departure-single-arrival').val();
            const depDate = $departureInput.val();

            validateDepartureDates(
                arrDate,
                depDate,
                $card.find('.departure-single-arrival'),
                $departureInput
            );
        });

    $(document)
        .off('change.departureGroupArrival', '#departureFinalArrivalDate')
        .on('change.departureGroupArrival', '#departureFinalArrivalDate', function () {
            const arrDate = $(this).val();
            const $departureInput = $('#departureFinalDate');
            const depDate = $departureInput.val();

            if (!arrDate) {
                return;
            }

            $departureInput.attr('min', arrDate);

            if (depDate && depDate < arrDate) {
                $departureInput.val(arrDate);
            }
        });

    $(document)
        .off('change.departureFinalDate', '#departureFinalDate')
        .on('change.departureFinalDate', '#departureFinalDate', function () {
            validateDepartureDates(
                $('#departureFinalArrivalDate').val(),
                $(this).val(),
                $('#departureFinalArrivalDate'),
                this
            );
        });

    $(document)
        .off('click.departureSingle', '.departure-single-update')
        .on('click.departureSingle', '.departure-single-update', async function () {
            const $button = $(this);
            const sno = $button.data('sno');

            const booking = departureUpdateMatchedBookings.find(
                item => item.Sno == sno
            );

            if (!booking) {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Booking record not found.'
                });

                return;
            }

            const $card = $button.closest('.departure-booking-card');

            const arrdate = $card.find('.departure-single-arrival').val();
            const depdate = $card.find('.departure-single-date').val();

            if (!arrdate || !depdate) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Required',
                    text: 'Please select both arrival and departure dates.'
                });

                return;
            }

            if (depdate < arrdate) {
                showDepartureDateError(
                    'Departure date cannot be earlier than arrival date.'
                );

                $card.find('.departure-single-date').val(arrdate);

                return;
            }

            $button
                .prop('disabled', true)
                .html('<i class="fa fa-spinner fa-spin"></i>');

            try {
                const response = await sendAjaxPost(
                    departureUpdateUrl,
                    {
                        docid: booking.BookingDocid,
                        sno: booking.Sno,
                        arrdate: arrdate,
                        depdate: depdate
                    },
                    {
                        showSuccessAlert: false
                    }
                );

                if (response && response.success) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Updated',
                        text: response.data?.message ||
                            'Arrival and departure dates updated successfully.',
                        timer: 1200,
                        showConfirmButton: false
                    });

                    setTimeout(function () {
                        closeRoomActionPanel();
                        window.location.reload();
                    }, 1200);

                    return;
                }

                $button.prop('disabled', false).text('Update');
            } catch (error) {
                console.error('Departure update error:', error);

                $button.prop('disabled', false).text('Update');

                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Unable to update the booking dates.'
                });
            }
        });

    $(document)
        .off('click.departureGroup', '#departureFinalUpdate')
        .on('click.departureGroup', '#departureFinalUpdate', async function () {
            const $button = $(this);

            if (!$('#departureGroupUpdate').is(':checked')) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Group Update',
                    text: 'Please select Group Update before using Final Update.'
                });

                return;
            }

            const arrdate = $('#departureFinalArrivalDate').val();
            const depdate = $('#departureFinalDate').val();

            if (!arrdate || !depdate) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Required',
                    text: 'Please select both final arrival and departure dates.'
                });

                return;
            }

            if (depdate < arrdate) {
                showDepartureDateError(
                    'Final departure date cannot be earlier than final arrival date.'
                );

                $('#departureFinalDate').val(arrdate);

                return;
            }

            const docid = departureUpdateSelectedBooking.BookingDocid;

            $button
                .prop('disabled', true)
                .html('<i class="fa fa-spinner fa-spin"></i> Updating...');

            try {
                const response = await sendAjaxPost(
                    departureUpdateUrl,
                    {
                        docid: docid,
                        arrdate: arrdate,
                        depdate: depdate
                    },
                    {
                        showSuccessAlert: false
                    }
                );

                if (response && response.success) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Updated',
                        text: response.data?.message ||
                            'Group arrival and departure dates updated successfully.',
                        timer: 1200,
                        showConfirmButton: false
                    });

                    setTimeout(function () {
                        closeRoomActionPanel();
                        window.location.reload();
                    }, 1200);

                    return;
                }

                $button.prop('disabled', false).text('Final Update');
            } catch (error) {
                console.error('Group departure update error:', error);

                $button.prop('disabled', false).text('Final Update');

                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Unable to update the group booking dates.'
                });
            }
        });
}

(function () {
    if ($('#departure-update-styles').length) {
        return;
    }

    $('head').append(`
        <style id="departure-update-styles">
            .departure-update-wrapper {
                font-size: 13px;
                background: #fff;
            }

            .departure-update-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 12px;
                border-bottom: 1px solid #dee2e6;
            }

            .departure-update-title {
                font-size: 16px;
                font-weight: 600;
                color: #52657a;
            }

            .departure-update-booking {
                font-size: 11px;
                color: #8995a1;
            }

            .departure-update-close {
                border: 0;
                background: transparent;
                font-size: 18px;
            }

            .departure-update-body {
                padding: 10px;
                overflow-y: auto;
                height: calc(100vh - 70px);
            }

            .departure-section-title {
                font-size: 11px;
                font-weight: 600;
                color: #748394;
                text-transform: uppercase;
                margin-bottom: 6px;
            }

            .departure-booking-card {
                display: flex;
                flex-wrap: wrap;
                align-items: center;
                gap: 7px;
                padding: 12px 10px;
                margin-bottom: 10px;
                border: 1px solid #d5deea;
                border-radius: 9px;
                background: #ffffff;
                box-shadow: 0 2px 5px rgba(30, 55, 90, 0.06);
                transition: border-color 0.2s ease, box-shadow 0.2s ease;
            }

            .departure-booking-card.selected {
                background: #f3f7ff;
                border: 1px solid #8eabf8;
                border-left: 4px solid #6366f1;
                box-shadow: 0 3px 8px rgba(99, 102, 241, 0.10);
            }

            .departure-booking-card:not(.selected):hover {
                border-color: #8eabf8;
                box-shadow: 0 3px 8px rgba(30, 55, 90, 0.10);
            }

            .departure-booking-card + .departure-booking-card {
                margin-top: 10px;
            }

            .departure-booking-card.selected {
                background: #f8f9fa;
            }

            .departure-booking-info {
                flex: 0 0 100%;
                min-width: 0;
                overflow: visible;
                white-space: normal;
            }

            .departure-booking-main {
                font-size: 12px;
                font-weight: 500;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                max-width: 100%;
            }

            .departure-booking-meta {
                font-size: 10px;
                color: #7b8794;
                margin-top: 2px;
            }

            .departure-date-box {
                width: 125px;
                flex-shrink: 0;
            }

            .departure-date-box label {
                display: block;
                font-size: 9px;
                color: #8995a1;
                margin-bottom: 2px;
            }

            .departure-booking-card input[type="date"] {
                height: 30px;
                font-size: 11px;
                padding: 3px 5px;
            }

            .departure-booking-card .btn {
                font-size: 11px;
                padding: 5px 8px;
                flex-shrink: 0;
            }

            .departure-group-box {
                padding: 9px;
                border: 1px solid #dee2e6;
                border-radius: 5px;
                background: #f8f9fa;
            }

            .departure-group-box label {
                font-size: 11px;
                font-weight: 600;
                color: #687786;
            }

            .departure-group-box small {
                display: block;
                font-size: 9px;
                color: #8995a1;
                margin-top: 3px;
            }

            @media (max-width: 520px) {
                .departure-booking-card {
                    flex-wrap: wrap;
                    gap: 6px;
                }

                .departure-booking-info {
                    flex-basis: 100%;
                }

                .departure-date-box {
                    flex: 1;
                    min-width: 100px;
                }
            }
        </style>
    `);
})();
