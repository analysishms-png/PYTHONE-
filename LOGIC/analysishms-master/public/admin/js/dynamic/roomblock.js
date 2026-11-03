let roomBlockSelectedCells = [];

function createRoomBlockHtml(selectedCells) {

    const dates = selectedCells
        .map(item => item.date)
        .sort();

    const fromDate = dates[0] || '';
    const toDate = dates[dates.length - 1] || '';

    const roomNos = [...new Set(
        selectedCells.map(item => item.roomno)
    )];

    roomBlockSelectedCells = selectedCells;

    return `
        <div class="room-block-form">

            <div class="form-group mb-3">
                <label for="roomStatusBlock">Block</label>
                <select class="form-control" id="roomStatusBlock">
                    <option value="">Select</option>
                    <option value="Out of Order">Out of Order</option>
                    <option value="Maintainence">Maintainence</option>
                    <option value="Management">Management</option>
                    <option value="Marriage">Marriage</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="roomStatusReason">Reason</label>
                <input
                    type="text"
                    class="form-control"
                    id="roomStatusReason"
                    placeholder="Enter Reason"
                >
            </div>

            <div class="form-group mb-3">
                <label for="roomStatusFromDate">From Date</label>
                <input
                    type="date"
                    class="form-control"
                    id="roomStatusFromDate"
                    value="${fromDate}"
                >
            </div>

            <div class="form-group mb-3">
                <label for="roomStatusToDate">To Date</label>
                <input
                    type="date"
                    class="form-control"
                    id="roomStatusToDate"
                    value="${toDate}"
                >
            </div>

            <div id="roomBlockGuestDetails" style="display:none;">

                <div class="form-group mb-3">
                    <label for="roomStatusGuestName">Guest Name</label>
                    <input
                        type="text"
                        class="form-control"
                        id="roomStatusGuestName"
                        placeholder="Enter Guest Name"
                    >
                </div>

                <div class="form-group mb-3">
                    <label for="roomStatusMobileNo">Mobile No</label>
                    <input
                        type="text"
                        class="form-control"
                        id="roomStatusMobileNo"
                        placeholder="Enter Mobile No."
                    >
                </div>

            </div>

            <div class="form-group mb-3">
                <label>Selected Rooms</label>

                <div class="form-control"
                     style="height:auto; min-height:38px; background:#f8f9fa;">
                    ${roomNos.join(', ')}
                </div>
            </div>

            <div class="form-group mb-3">
                <button
                    type="button"
                    class="btn btn-primary w-100"
                    id="roomStatusBlockSubmit">
                    Submit
                </button>
            </div>

        </div>
    `;
}

$(document).on('change', '#roomStatusBlock', function () {
    const showGuestDetails =
        $(this).val() === 'Management' ||
        $(this).val() === 'Marriage';

    $('#roomBlockGuestDetails').toggle(showGuestDetails);
});

$(document).on('click', '#roomStatusBlockSubmit', async function () {

    const selectedCells = roomBlockSelectedCells;

    const block = $('#roomStatusBlock').val();
    const reason = $('#roomStatusReason').val();
    const fromdate = $('#roomStatusFromDate').val();
    const todate = $('#roomStatusToDate').val();
    const guestname = $('#roomStatusGuestName').val();
    const mobileno = $('#roomStatusMobileNo').val();

    if (!block) {
        Swal.fire({
            icon: 'warning',
            title: 'Required',
            text: 'Please select block type.'
        });
        return;
    }

    if (!reason.trim()) {
        Swal.fire({
            icon: 'warning',
            title: 'Required',
            text: 'Please enter reason.'
        });
        return;
    }

    if (!fromdate || !todate) {
        Swal.fire({
            icon: 'warning',
            title: 'Required',
            text: 'Please select From Date and To Date.'
        });
        return;
    }

    if (fromdate > todate) {
        Swal.fire({
            icon: 'warning',
            title: 'Invalid Date',
            text: 'From Date cannot be greater than To Date.'
        });
        return;
    }

    if (!selectedCells.length) {
        Swal.fire({
            icon: 'warning',
            title: 'No Rooms Selected',
            text: 'Please select at least one room.'
        });
        return;
    }

    const roomnos = [
        ...new Set(
            selectedCells.map(item => item.roomno)
        )
    ];

    if (
        (block === 'Management' || block === 'Marriage') &&
        !guestname.trim()
    ) {
        Swal.fire({
            icon: 'warning',
            title: 'Required',
            text: 'Please enter Guest Name.'
        });
        return;
    }

    const $button = $(this);

    $button.prop('disabled', true).text('Saving...');

    try {

        const response = await sendAjaxPost('/savehousecleaning', {
            roomnos: roomnos,
            roomstat: 'O',
            block: block,
            reasons: reason,
            fromdate: fromdate,
            todate: todate,
            guestname: guestname,
            mobileno: mobileno
        }, {
            showSuccessAlert: false
        });

        if (response?.status === 'success' || response?.data?.status === 'success') {

            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: response.message,
                timer: 1500,
                showConfirmButton: false
            });

            closeRoomActionPanel();

            setTimeout(function () {
                window.location.reload();
            }, 1500);

        } else {

            Swal.fire({
                icon: 'error',
                title: 'Failed',
                text: response?.message || 'Unable to block rooms.'
            });

            $button.prop('disabled', false).text('Submit');
        }

    } catch (error) {

        console.error('Room block error:', error);

        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Unable to save room block.'
        });

        $button.prop('disabled', false).text('Submit');
    }
});