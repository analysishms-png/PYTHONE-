function createRemarkHtml(remarks) {
    remarks = Array.isArray(remarks) ? remarks : [];

    let remarkRows = '';

    if (remarks.length > 0) {
        remarks.forEach(function (remark) {
            const isDeleted = parseInt(remark.status) === 0;

            let createdAt = '';

            if (remark.created_at) {
                createdAt = new Date(remark.created_at).toLocaleString('en-IN', {
                    day: '2-digit',
                    month: '2-digit',
                    year: 'numeric',
                    hour: '2-digit',
                    minute: '2-digit'
                });
            }

            remarkRows += `
                <div class="remark-card ${isDeleted ? 'remark-card-deleted' : ''}"
                     id="remark-${remark.id}">

                    <div class="d-flex justify-content-between align-items-center">
                        <div class="remark-card-type">
                            ${remark.type || ''}
                        </div>

                        ${!isDeleted ? `
                            <button type="button"
                                    class="remark-edit-button"
                                    data-id="${remark.id}"
                                    data-sno="${remark.sno || ''}"
                                    data-type="${String(remark.type || '').replace(/"/g, '&quot;')}"
                                    data-description="${String(remark.description || '').replace(/"/g, '&quot;')}"
                                    title="Edit Remark">
                                <i class="fa-solid fa-pen"></i>
                            </button>
                        ` : ''}
                    </div>

                    <div class="remark-card-description">
                        ${remark.description || ''}
                    </div>

                    <div class="d-flex justify-content-between align-items-center mt-2">

                        <span class="remark-card-user">
                            ${remark.u_name || ''}
                        </span>

                        <span class="remark-card-date">
                            ${createdAt}
                        </span>

                    </div>

                </div>
            `;
        });
    } else {
        remarkRows = `
            <div class="text-center text-muted py-4">
                <i class="fa-regular fa-comment-dots fa-2x mb-2"></i>

                <div class="font-weight-medium">
                    No remarks found
                </div>

                <small>
                    Add the first remark for this reservation.
                </small>
            </div>
        `;
    }

    return `
        <div class="remark-panel">

            <div class="d-flex align-items-center justify-content-between mb-2">

                <div>
                    <div class="remark-list-title">
                        Remarks
                    </div>

                    <div class="remark-list-subtitle">
                        Reservation remarks and notes
                    </div>
                </div>

                <button type="button"
                        class="btn btn-primary btn-sm remark-add-button">
                    <i class="fa-solid fa-plus mr-1"></i>
                    Add Remark
                </button>

            </div>

            <div class="remark-list">
                ${remarkRows}
            </div>

            <div class="remark-form-section" style="display:none;">

                <div class="d-flex align-items-start justify-content-between mb-3">

                    <div>
                        <div class="remark-form-title">
                            Add Remark
                        </div>

                        <div class="remark-form-subtitle">
                            Add a new remark to this reservation
                        </div>
                    </div>

                    <button type="button"
                            class="btn btn-light btn-sm remark-form-back">
                        <i class="fa-solid fa-arrow-left mr-1"></i>
                        Back
                    </button>

                </div>

                <div class="form-group mb-3">

                    <label for="roomRemarkType" class="small font-weight-bold">
                        <span class="text-danger">*</span>
                        Type
                    </label>

                    <select class="form-control form-control-sm"
                            id="roomRemarkType">

                        <option value="">- Select -</option>
                        <option value="Check In">Check In</option>
                        <option value="Check Out">Check Out</option>
                        <option value="Guest Folio">Guest Folio</option>
                        <option value="House Keeping">House Keeping</option>
                        <option value="Important Info">Important Info</option>
                        <option value="Internal Note">Internal Note</option>
                        <option value="Room Change">Room Change</option>
                        <option value="Package">Package</option>
                        <option value="Payment Note">Payment Note</option>
                        <option value="POS Notes">POS Notes</option>
                        <option value="Promotion">Promotion</option>
                        <option value="Reservation">Reservation</option>
                        <option value="Special Instruction for Guest">
                            Special Instruction for Guest
                        </option>

                    </select>

                </div>

                <div class="form-group mb-3">

                    <label for="roomRemarkDescription"
                           class="small font-weight-bold">
                        Description
                    </label>

                    <textarea
                        class="form-control form-control-sm"
                        id="roomRemarkDescription"
                        rows="5"
                        placeholder="Enter remark description..."
                    ></textarea>

                </div>

                <div class="text-right">

                    <button type="button"
                            class="btn btn-light btn-sm remark-form-back mr-1">
                        Cancel
                    </button>

                    <button type="button"
                            class="btn btn-primary btn-sm"
                            id="saveRoomRemark">
                        <i class="fa-solid fa-check mr-1"></i>
                        Save Remark
                    </button>

                </div>

            </div>

        </div>
    `;
}

$(document).on('click', '.remark-add-button', function (event) {
    event.preventDefault();
    event.stopPropagation();

    const $panel = $('#roomActionPanel');

    $panel.find('.remark-form-section').show();
    $panel.find('.remark-list-section').show();

    $panel.find('#roomRemarkType').val('');
    $panel.find('#roomRemarkDescription').val('');

    $panel.find('.remark-form-section').prependTo($panel.find('.remark-panel'));

    $panel.find('#roomRemarkType').focus();
});

$(document).on('click', '.remark-form-back', function (event) {
    event.preventDefault();
    event.stopPropagation();

    const $panel = $('#roomActionPanel');

    $panel.find('.remark-form-section').hide();

    $panel.find('#roomRemarkType').val('');
    $panel.find('#roomRemarkDescription').val('');
});

$(document).on('click', '.remark-edit-button', function (event) {
    event.preventDefault();
    event.stopPropagation();

    const $button = $(this);

    const remarkId = $button.attr('data-id');
    const sno = $button.attr('data-sno');
    const type = $button.attr('data-type') || '';
    const description = $button.attr('data-description') || '';

    $('#roomRemarkType').val(type);
    $('#roomRemarkDescription').val(description);

    $('#saveRoomRemark')
        .data('remark-id', remarkId)
        .data('remark-sno', sno)
        .data('remark-mode', 'update')
        .html('<i class="fa-solid fa-check mr-1"></i> Update Remark');

    $('#roomActionPanel')
        .find('.remark-form-section')
        .show();

    $('#roomActionPanel')
        .find('#roomRemarkType')
        .focus();
});

$(document).on('click', '#saveRoomRemark', async function (event) {
    event.preventDefault();
    event.stopPropagation();

    const $button = $(this);

    const type = $('#roomRemarkType').val();
    const description = $('#roomRemarkDescription').val().trim();

    const mode = $button.data('remark-mode') || 'insert';
    const docid = localStorage.getItem('roomStatusDocid');

    const sno = $button.data('remark-sno') || null;

    if (!docid) {
        console.error('Remark docid not found.');
        return;
    }

    if (!type) {
        $('#roomRemarkType').focus();
        return;
    }

    if (!description) {
        $('#roomRemarkDescription').focus();
        return;
    }

    const data = {
        docid: docid,
        type: type,
        description: description
    };

    /*
     * Edit = send existing sno.
     * Insert = do not send sno.
     */
    if (mode === 'update' && sno) {
        data.sno = sno;
    }

    $button
        .prop('disabled', true)
        .html(
            mode === 'update'
                ? '<i class="fa-solid fa-spinner fa-spin"></i> Updating...'
                : '<i class="fa-solid fa-spinner fa-spin"></i> Saving...'
        );

    try {
        const response = await sendAjaxPost(
            mode === 'update'
                ? '/remark/update'
                : '/remark/store',
            data,
            {
                showSuccessAlert: false
            }
        );

        if (response && response.success) {

            $button
                .prop('disabled', false)
                .html(
                    mode === 'update'
                        ? '<i class="fa-solid fa-check"></i> Update Remark'
                        : '<i class="fa-solid fa-check"></i> Save Remark'
                );

            console.log(
                mode === 'update'
                    ? 'Remark updated successfully.'
                    : 'Remark saved successfully.'
            );

            window.location.reload();

        } else {

            $button
                .prop('disabled', false)
                .html(
                    mode === 'update'
                        ? '<i class="fa-solid fa-check"></i> Update Remark'
                        : '<i class="fa-solid fa-check"></i> Save Remark'
                );
        }

    } catch (error) {

        console.error('Remark save/update error:', error);

        $button
            .prop('disabled', false)
            .html(
                mode === 'update'
                    ? '<i class="fa-solid fa-check"></i> Update Remark'
                    : '<i class="fa-solid fa-check"></i> Save Remark'
            );
    }
});