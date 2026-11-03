let rateUpdateSelectedBooking = null;
let rateUpdateMatchedBookings = [];

const rateUpdateUrl = '/rateupdate';
const rateUpdateCurrentDate = document.querySelector('meta[name="ncurdate"]').getAttribute('content');

function openRateUpdateModal(booking, bookingdata) {
    rateUpdateSelectedBooking = booking;

    rateUpdateMatchedBookings = bookingdata.filter(
        item => item.BookingDocid == booking.BookingDocid
    );

    if (!rateUpdateMatchedBookings.length) {
        Swal.fire({
            icon: 'warning',
            title: 'No Booking Found',
            text: 'No matching booking records found.'
        });

        return;
    }

    renderRateUpdateModal();
}


$(document)
    .off('click.rateReverse', '#rateReverseUpdate')
    .on('click.rateReverse', '#rateReverseUpdate', async function () {
        const $button = $(this);
        const total = parseFloat($('#rateReverseTotal').val());
        const docid = $('#rateUpdateDocId').val();

        if (!Number.isFinite(total) || total <= 0) {
            showRateError('Please enter a valid total amount.');
            return;
        }

        $button
            .prop('disabled', true)
            .html('<i class="fa fa-spinner fa-spin"></i> Calculating...');

        try {
            // For reverse mode, we don't need inc_tax from UI - backend uses each room's existing IncTax
            const response = await sendAjaxPost(
                rateUpdateUrl,
                {
                    docid: docid,
                    tarrif: total,
                    inc_tax: 'N', // placeholder, backend ignores for reverse mode
                    mode: 'reverse'
                },
                {
                    showSuccessAlert: false
                }
            );

            if (response && response.success) {
                Swal.fire({
                    icon: 'success',
                    title: 'Reverse Update Complete',
                    text: response.data?.message ||
                        'Total amount distributed across rooms.',
                    timer: 1800,
                    showConfirmButton: false
                });

                setTimeout(function () {
                    closeRoomActionPanel();
                    window.location.reload();
                }, 1800);

                return;
            }

            $button
                .prop('disabled', false)
                .text('Calculate & Update Per-Room Rates');
        } catch (error) {
            console.error('Reverse rate update error:', error);

            $button
                .prop('disabled', false)
                .text('Calculate & Update Per-Room Rates');

            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Unable to update reverse rates.'
            });
        }
    });

function renderRateUpdateModal() {
    const booking = rateUpdateSelectedBooking;
    const matchedBookings = rateUpdateMatchedBookings;

    const selectedTarrif = booking.Tarrif || '';
    const selectedIncTax = booking.IncTax || 'N';
    const selectedRoomTaxStru = booking.RoomTaxStru || '';

    let html = `
        <div class="rate-update-wrapper">

            <div class="rate-update-header">
                <div>
                    <div class="rate-update-title">
                        Rate Update
                    </div>

                    <div class="rate-update-booking">
                        Booking #${escapeHtml(booking.BookNo || '')}
                    </div>
                </div>

                <button
                    type="button"
                    class="rate-update-close"
                    id="rateUpdateClose">
                    <i class="fa fa-times"></i>
                </button>
            </div>

            <div class="rate-update-body">

                <div class="rate-section-title">
                    Selected Booking
                </div>

                ${renderRateBooking(
        booking,
        selectedTarrif,
        selectedIncTax,
        selectedRoomTaxStru,
        true
    )}

        <input type="hidden" id="rateUpdateDocId" value="${escapeHtml(booking.BookingDocid || '')}">
    `;

    const otherBookings = matchedBookings.filter(
        item => item.Sno != booking.Sno
    );

    if (otherBookings.length) {
        html += `
            <div class="rate-section-title mt-3">
                Other Rooms
            </div>
        `;

        $.each(otherBookings, function (index, item) {
            html += renderRateBooking(
                item,
                item.Tarrif || '',
                item.IncTax || 'N',
                item.RoomTaxStru || '',
                false
            );
        });
    }

    html += `
                <div class="rate-group-box mt-3">

                    <div class="form-check">
                        <input
                            class="form-check-input"
                            type="checkbox"
                            id="rateGroupUpdate">

                        <label
                            class="form-check-label"
                            for="rateGroupUpdate">
                            Bulk Rate Update
                        </label>
                    </div>

                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label for="rateFinalTarrif">
                                Tarrif Amount
                            </label>
                            <input
                                type="number"
                                step="0.01"
                                min="0"
                                class="form-control form-control-sm"
                                id="rateFinalTarrif"
                                placeholder="Enter tarrif">
                        </div>
                        <div class="col-md-6">
                            <label for="rateFinalIncTax">
                                Tax Inclusive
                            </label>
                            <select class="form-control form-control-sm" id="rateFinalIncTax">
                                <option value="Y">Yes</option>
                                <option value="N">No</option>
                            </select>
                        </div>
                    </div>

                    <small>
                        Tarrif will be applied to all rooms in this booking. Tax structure is taken from each room's existing booking data.
                    </small>

                    <button
                        type="button"
                        class="btn btn-primary btn-sm w-100 mt-2"
                        id="rateFinalUpdate">
                        Bulk Update Rates
                    </button>

                </div>

                <div class="border-top mt-3 pt-3">
                    <div class="mb-2">
                        <label for="rateReverseTotal">
                            Bulk Reverse Total Amount
                        </label>
                        <input
                            type="number"
                            step="0.01"
                            min="0.01"
                            class="form-control form-control-sm"
                            id="rateReverseTotal"
                            placeholder="Enter total amount for all rooms">
                    </div>

                    <small>
                        Enter the combined amount. It will be divided equally among all active rooms in this booking. Each room retains its existing tax-inclusive/exclusive setting.
                    </small>

                    <button
                        type="button"
                        class="btn btn-outline-primary btn-sm w-100 mt-2"
                        id="rateReverseUpdate">
                        Calculate &amp; Update Per-Room Rates
                    </button>
                </div>

            </div>
        </div>
    `;

    $('#roomActionPanel').html(html);

    bindRateUpdateEvents();
}

function renderRateBooking(
    booking,
    tarrif,
    incTax,
    taxStru,
    selected
) {
    return `
        <div class="rate-booking-card ${selected ? 'selected' : ''}">

            <div class="rate-booking-info">
                <span class="rate-booking-main">
                    ${selected
            ? escapeHtml(
                `${booking.con_prefix || ''} ${booking.GuestName || '-'} | Room ${booking.RoomNo || '-'}`)
            : `Room ${escapeHtml(booking.RoomNo || '-')}`
        }
                </span>
            </div>

            <div class="rate-field-box">
                <label>Tarrif</label>
                <input
                    type="number"
                    step="0.01"
                    min="0"
                    class="form-control form-control-sm rate-single-tarrif"
                    data-sno="${escapeHtml(booking.Sno)}"
                    value="${escapeHtml(tarrif)}"
                    placeholder="0.00">
            </div>

            <div class="rate-field-box">
                <label>Tax Inc.</label>
                <select class="form-control form-control-sm rate-single-inctax" data-sno="${escapeHtml(booking.Sno)}">
                    <option value="Y" ${incTax === 'Y' ? 'selected' : ''}>Yes</option>
                    <option value="N" ${incTax === 'N' ? 'selected' : ''}>No</option>
                </select>
            </div>

            <input type="hidden" class="rate-single-taxstru" data-sno="${escapeHtml(booking.Sno)}" value="${escapeHtml(taxStru)}">

            <button
                type="button"
                class="btn btn-sm ${selected ? 'btn-primary' : 'btn-outline-primary'} rate-single-update"
                data-sno="${escapeHtml(booking.Sno)}">
                Update
            </button>

        </div>
    `;
}

function showRateError(message) {
    Swal.fire({
        icon: 'warning',
        title: 'Invalid Input',
        text: message
    });
}

function calculateTaxAmount(tarrif, incTax, taxRate) {
    let amountBeforeTax = 0;
    let taxAmount = 0;
    let amountAfterTax = 0;

    if (incTax === 'Y') {
        // Tax Inclusive: tarrif includes tax
        // tarrif = amountBeforeTax + taxAmount
        // taxAmount = amountBeforeTax * taxRate / 100
        // tarrif = amountBeforeTax * (1 + taxRate/100)
        amountBeforeTax = (tarrif * 100) / (100 + taxRate);
        taxAmount = tarrif - amountBeforeTax;
        amountAfterTax = tarrif;
    } else {
        // Tax Exclusive: tarrif is base amount
        amountBeforeTax = tarrif;
        taxAmount = (tarrif * taxRate) / 100;
        amountAfterTax = tarrif + taxAmount;
    }

    return {
        amountBeforeTax: parseFloat(amountBeforeTax.toFixed(2)),
        taxAmount: parseFloat(taxAmount.toFixed(2)),
        amountAfterTax: parseFloat(amountAfterTax.toFixed(2)),
        taxRate: taxRate
    };
}

function bindRateUpdateEvents() {
    $(document)
        .off('click.rateClose', '#rateUpdateClose')
        .on('click.rateClose', '#rateUpdateClose', function () {
            closeRoomActionPanel();
        });

    // Single rate update
    $(document)
        .off('click.rateSingle', '.rate-single-update')
        .on('click.rateSingle', '.rate-single-update', async function () {
            const $button = $(this);
            const sno = $button.data('sno');

            const booking = rateUpdateMatchedBookings.find(
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

            const $card = $button.closest('.rate-booking-card');

            const tarrif = parseFloat($card.find('.rate-single-tarrif').val()) || 0;
            const incTax = $card.find('.rate-single-inctax').val();

            if (tarrif <= 0) {
                showRateError('Please enter a valid tarrif amount.');
                return;
            }

            $button
                .prop('disabled', true)
                .html('<i class="fa fa-spinner fa-spin"></i>');

            try {
                const response = await sendAjaxPost(
                    rateUpdateUrl,
                    {
                        docid: booking.BookingDocid,
                        sno: booking.Sno,
                        tarrif: tarrif,
                        inc_tax: incTax
                    },
                    {
                        showSuccessAlert: false
                    }
                );

                if (response && response.success) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Updated',
                        text: response.data?.message || 'Rate updated successfully.',
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
                console.error('Rate update error:', error);
                $button.prop('disabled', false).text('Update');
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Unable to update the rate.'
                });
            }
        });

    // Bulk rate update
    $(document)
        .off('click.rateGroup', '#rateFinalUpdate')
        .on('click.rateGroup', '#rateFinalUpdate', async function () {
            const $button = $(this);

            if (!$('#rateGroupUpdate').is(':checked')) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Bulk Update',
                    text: 'Please select Bulk Rate Update before using Bulk Update Rates.'
                });
                return;
            }

            const tarrif = parseFloat($('#rateFinalTarrif').val()) || 0;
            const incTax = $('#rateFinalIncTax').val();

            if (tarrif <= 0) {
                showRateError('Please enter a valid tarrif amount.');
                return;
            }

            const docid = $('#rateUpdateDocId').val();

            $button
                .prop('disabled', true)
                .html('<i class="fa fa-spinner fa-spin"></i> Updating...');

            try {
                const response = await sendAjaxPost(
                    rateUpdateUrl,
                    {
                        docid: docid,
                        tarrif: tarrif,
                        inc_tax: incTax,
                        mode: 'bulk'
                    },
                    {
                        showSuccessAlert: false
                    }
                );

                if (response && response.success) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Updated',
                        text: response.data?.message || 'Bulk rates updated successfully.',
                        timer: 1200,
                        showConfirmButton: false
                    });

                    setTimeout(function () {
                        closeRoomActionPanel();
                        window.location.reload();
                    }, 1200);

                    return;
                }

                $button.prop('disabled', false).text('Bulk Update Rates');
            } catch (error) {
                console.error('Bulk rate update error:', error);
                $button.prop('disabled', false).text('Bulk Update Rates');
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Unable to update bulk rates.'
                });
            }
        });
}

// Inject styles
(function () {
    if ($('#rate-update-styles').length) {
        return;
    }

    $('head').append(`
        <style id="rate-update-styles">
            .rate-update-wrapper {
                font-size: 13px;
                background: #fff;
            }

            .rate-update-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 12px;
                border-bottom: 1px solid #dee2e6;
            }

            .rate-update-title {
                font-size: 16px;
                font-weight: 600;
                color: #52657a;
            }

            .rate-update-booking {
                font-size: 11px;
                color: #8995a1;
            }

            .rate-update-close {
                border: 0;
                background: transparent;
                font-size: 18px;
            }

            .rate-update-body {
                padding: 10px;
                overflow-y: auto;
                height: calc(100vh - 70px);
            }

            .rate-section-title {
                font-size: 11px;
                font-weight: 600;
                color: #748394;
                text-transform: uppercase;
                margin-bottom: 6px;
            }

            .rate-booking-card {
                display: flex;
                flex-wrap: wrap;
                align-items: flex-end;
                gap: 7px;
                padding: 12px 10px;
                margin-bottom: 10px;
                border: 1px solid #d5deea;
                border-radius: 9px;
                background: #ffffff;
                box-shadow: 0 2px 5px rgba(30, 55, 90, 0.06);
                transition: border-color 0.2s ease, box-shadow 0.2s ease;
                position: relative;
            }

            .rate-booking-card.selected {
                background: #f3f7ff;
                border: 1px solid #8eabf8;
                border-left: 4px solid #6366f1;
                box-shadow: 0 3px 8px rgba(99, 102, 241, 0.10);
            }

            .rate-booking-card:not(.selected):hover {
                border-color: #8eabf8;
                box-shadow: 0 3px 8px rgba(30, 55, 90, 0.10);
            }

            .rate-booking-info {
                flex: 0 0 100%;
                min-width: 0;
                margin-bottom: 8px;
            }

            .rate-booking-main {
                font-size: 12px;
                font-weight: 500;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                max-width: 100%;
            }

            .rate-field-box {
                flex: 1;
                min-width: 120px;
                max-width: 180px;
            }

            .rate-field-box label {
                display: block;
                font-size: 9px;
                color: #8995a1;
                margin-bottom: 2px;
            }

            .rate-booking-card input[type="number"],
            .rate-booking-card select {
                height: 30px;
                font-size: 11px;
                padding: 3px 5px;
            }

            .rate-booking-card .btn {
                font-size: 11px;
                padding: 5px 8px;
                flex-shrink: 0;
                height: 30px;
            }

            .rate-group-box {
                padding: 9px;
                border: 1px solid #dee2e6;
                border-radius: 5px;
                background: #f8f9fa;
            }

            .rate-group-box label {
                font-size: 11px;
                font-weight: 600;
                color: #687786;
            }

            .rate-group-box small {
                display: block;
                font-size: 9px;
                color: #8995a1;
                margin-top: 3px;
            }

            .rate-group-box .form-control-sm {
                height: 30px;
                font-size: 11px;
                padding: 3px 5px;
            }

            @media (max-width: 520px) {
                .rate-booking-card {
                    flex-wrap: wrap;
                    gap: 6px;
                }

                .rate-field-box {
                    flex: 1 1 calc(50% - 4px);
                    min-width: 100px;
                }

                .rate-booking-card .btn {
                    flex-basis: 100%;
                }
            }
        </style>
    `);
})();