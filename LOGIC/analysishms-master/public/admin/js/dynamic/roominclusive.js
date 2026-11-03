let inclusiveResponse = localStorage.getItem('inclusiveResponse');
let revmastroominclusive = window.revmastroominclusive;

(function injectRoomInclusiveCSS() {
    if (document.getElementById('room-inclusive-styles')) {
        return;
    }

    const style = document.createElement('style');
    style.id = 'room-inclusive-styles';

    style.textContent = `
        .room-action-panel-body {
        padding: 0px;
        }
        .room-inclusive-wrapper {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            color: #344054;
            font-family: Arial, sans-serif;
            font-size: 12px;
        }

        .room-inclusive-wrapper *,
        .room-inclusive-wrapper *::before,
        .room-inclusive-wrapper *::after {
            box-sizing: border-box;
        }

        .room-inclusive-heading {
            padding-bottom: 10px;
            margin-bottom: 12px;
            border-bottom: 1px solid #e8edf3;
        }

        .room-inclusive-title {
            margin-bottom: 4px;
            color: #243b53;
            font-size: 14px;
            font-weight: 600;
        }

        .room-inclusive-subtitle {
            color: #7b8794;
            font-size: 11px;
            line-height: 1.5;
        }

        .room-inclusive-list {
            display: flex;
            flex-direction: column;
            gap: 9px;
        }

        .room-inclusive-card {
            min-width: 0;
            padding: 9px;
            border: 1px solid #e1e7ef;
            border-radius: 6px;
            background: #fff;
            transition: border-color 0.15s ease;
        }

        .room-inclusive-card:hover {
            border-color: #b9c9e2;
        }

        .room-inclusive-card-heading {
            display: flex;
            align-items: flex-start;
            gap: 7px;
            margin-bottom: 8px;
        }

        .room-inclusive-index {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
            min-width: 19px;
            height: 19px;
            border-radius: 4px;
            background: #eef2ff;
            color: #5965a8;
            font-size: 10px;
            font-weight: 600;
        }

        .room-inclusive-card-name {
            color: #46566b;
            font-size: 11px;
            font-weight: 600;
            line-height: 19px;
            overflow-wrap: anywhere;
        }

        .room-inclusive-fields {
            display: grid;
            grid-template-columns:
                minmax(0, 1.2fr)
                minmax(65px, 0.65fr)
                minmax(80px, 0.85fr);
            gap: 8px;
            align-items: end;
        }

        .room-inclusive-field {
            min-width: 0;
        }

        .room-inclusive-field label {
            display: block;
            margin-bottom: 4px;
            color: #7b8794;
            font-size: 10px;
            font-weight: 500;
        }

        .room-inclusive-input {
            display: block;
            width: 100%;
            min-width: 0;
            height: 30px;
            padding: 4px 6px;
            border: 1px solid #d8e0e9;
            border-radius: 4px;
            background: #fff;
            color: #344054;
            font-family: Arial, sans-serif;
            font-size: 11px;
            line-height: 1.4;
            box-shadow: none;
        }

        .room-inclusive-input:focus {
            border-color: #818cf8;
            outline: none;
            box-shadow: 0 0 0 2px rgba(99, 102, 241, 0.10);
        }

        .room-inclusive-input[readonly] {
            background: #f5f7fa;
            color: #566273;
            cursor: default;
        }

        .room-inclusive-input::placeholder {
            color: #a0a8b4;
            font-size: 10px;
        }

        .room-inclusive-footer {
            display: flex;
            justify-content: flex-start;
            margin-top: 12px;
            padding-top: 10px;
            border-top: 1px solid #edf0f4;
        }

        .room-inclusive-save {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            background: #7167ee;
            color: #fff;
            font-size: 11px;
            font-weight: 500;
            cursor: pointer;
        }

        .room-inclusive-save:hover {
            background: #5c52d5;
            color: #fff;
        }

        .room-inclusive-empty {
            padding: 12px;
            border: 1px solid #e1e7ef;
            border-radius: 5px;
            background: #f8fafc;
            color: #718096;
            font-size: 11px;
        }

        @media (max-width: 350px) {
            .room-inclusive-fields {
                grid-template-columns: 1fr 1fr;
            }

            .room-inclusive-name-field {
                grid-column: 1 / -1;
            }
        }
    `;

    document.head.appendChild(style);
})();

function escapeRoomInclusiveHtml(value) {
    return String(value ?? '').replace(/[&<>"']/g, function (char) {
        const entities = {
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#039;'
        };

        return entities[char];
    });
}

function getSavedRoomInclusions() {
    try {
        const storedData = localStorage.getItem('inclusiveResponse');

        if (!storedData || storedData.trim() === '') {
            return [];
        }

        const parsedData = Array.isArray(inclusiveResponse)
            ? inclusiveResponse
            : JSON.parse(storedData);

        return Array.isArray(parsedData) ? parsedData : [];
    } catch (error) {
        console.error('Unable to read room inclusions:', error);
        return [];
    }
}

function openroominclusiveModal(booking, bookingdata) {
    const savedInclusions = getSavedRoomInclusions();

    const inclusions = Array.isArray(revmastroominclusive)
        ? revmastroominclusive
        : [];

    if (inclusions.length === 0) {
        return `
            <div class="room-inclusive-wrapper">
                <div class="room-inclusive-heading">
                    <div class="room-inclusive-title">Room Inclusive</div>
                    <div class="room-inclusive-subtitle">
                        Enter the amount and select the charge posting frequency.
                    </div>
                </div>

                <div class="room-inclusive-empty">
                    No room inclusions available.
                </div>
            </div>
        `;
    }

    let html = `
        <div class="room-inclusive-wrapper">

            <div class="room-inclusive-heading">
                <div class="room-inclusive-title">
                    Room Inclusive
                </div>

                <div class="room-inclusive-subtitle">
                    Enter the amount and select the charge posting frequency.
                </div>
            </div>

            <div class="room-inclusive-list">
    `;

    inclusions.forEach(function (item, index) {
        const code = String(item.rev_code ?? '');
        const name = String(item.name ?? item.rev_name ?? '');

        const savedItem = savedInclusions.find(function (saved) {
            return String(saved.rev_code ?? '') === code;
        });

        const amount = savedItem?.amount ?? '';
        const chargepost = savedItem?.chargepost ?? '';
        const rsno = savedItem?.sno ?? '';

        const validChargePosts = ['Daily', 'Once', 'Group'];
        const selectedChargePost = validChargePosts.includes(chargepost)
            ? chargepost
            : '';

        html += `
            <div class="room-inclusive-card"
                 data-rev-code="${escapeRoomInclusiveHtml(code)}">

                <div class="room-inclusive-card-heading">
                    <span class="room-inclusive-index">
                        ${index + 1}
                    </span>

                    <span class="room-inclusive-card-name">
                        ${escapeRoomInclusiveHtml(name)}
                    </span>
                </div>

                <div class="room-inclusive-fields">

                    <div class="room-inclusive-field room-inclusive-name-field">
                        <label>Name</label>
                        <input
                            type="hidden"
                            class="form-control room-inclusive-code-input room-inclusive-code-input"
                            value="${escapeRoomInclusiveHtml(code)}"
                            readonly
                        >
                        <input
                            type="text"
                            class="form-control room-inclusive-input room-inclusive-name-input"
                            value="${escapeRoomInclusiveHtml(name)}"
                            readonly
                        >
                    </div>

                    <div class="room-inclusive-field">
                        <label>Amount</label>

                        <input
                            type="number"
                            class="form-control room-inclusive-input room-inclusive-amount"
                            value="${escapeRoomInclusiveHtml(amount)}"
                            min="0"
                            step="0.01"
                            placeholder="Amount"
                        >
                    </div>

                    <div class="room-inclusive-field">
                        <label>Charge Post</label>

                        <select
                            class="form-control room-inclusive-input room-inclusive-chargepost">

                            <option value=""
                                ${selectedChargePost === '' ? 'selected' : ''}>
                                Select
                            </option>

                            <option value="Daily"
                                ${selectedChargePost === 'Daily' ? 'selected' : ''}>
                                Daily
                            </option>

                            <option value="Once"
                                ${selectedChargePost === 'Once' ? 'selected' : ''}>
                                Once
                            </option>

                            <option value="Group"
                                ${selectedChargePost === 'Group' ? 'selected' : ''}>
                                Group
                            </option>

                        </select>
                    </div>

                </div>
            </div>
        `;
    });

    html += `
            </div>

            <div class="room-inclusive-footer">
                <button
                    type="button"
                    class="btn room-inclusive-save"
                    id="saveRoomInclusive">

                    <i class="fa fa-check"></i>
                    Save

                </button>
            </div>

        </div>
    `;

    return html;
}

$(document).on('click', '#saveRoomInclusive', async function (event) {
    event.preventDefault();

    const docid = localStorage.getItem('roomStatusDocid');
    const savedInclusions = getSavedRoomInclusions();
    const inclusions = [];
    let invalid = false;

    if (!docid) {
        Swal.fire('Error', 'Booking information is missing.', 'error');
        return;
    }

    $('.room-inclusive-card').each(function () {
        const card = $(this);
        const rev_code = String(card.find('.room-inclusive-code-input').val() || '').trim();
        const amountValue = String(card.find('.room-inclusive-amount').val() || '').trim();
        const chargepost = card.find('.room-inclusive-chargepost').val();

        const savedItem = savedInclusions.find(function (saved) {
            return String(saved.rev_code ?? '') === rev_code;
        });

        const rsno = savedItem?.sno ?? null;

        if (amountValue === '' || Number(amountValue) === 0) {

            inclusions.push({ sno: rsno, rev_code: rev_code, amount: 0, chargepost: chargepost || null });

            return;

        }

        const amount = Number(amountValue);

        if (
            !rev_code ||
            amountValue === '' ||
            !Number.isFinite(amount) ||
            amount < 0 ||
            !['Daily', 'Once', 'Group'].includes(chargepost)
        ) {
            invalid = true;
            return false;
        }

        inclusions.push({
            sno: rsno,
            rev_code: rev_code,
            amount: amount,
            chargepost: chargepost
        });
    });

    if (invalid) {
        Swal.fire({
            icon: 'warning',
            title: 'Invalid Room Inclusive',
            text: 'Enter a valid amount and charge posting frequency for each selected inclusion.'
        });
        return;
    }

    if (!inclusions.length) {
        Swal.fire({
            icon: 'warning',
            title: 'No Inclusions',
            text: 'Enter at least one room inclusion.'
        });
        return;
    }

    const button = $(this);
    button.prop('disabled', true);

    try {
        const response = await sendAjaxPost(
            '/updateroominclusive',
            {
                docid: docid,
                inclusions: inclusions
            },
            {
                loadingTitle: 'Saving Room Inclusive...',
                loadingText: 'Please wait...',
                showSuccessAlert: false
            }
        );

        if (response && response.success) {
            if (Array.isArray(response.data)) {
                localStorage.setItem(
                    'inclusiveResponse',
                    JSON.stringify(response.data)
                );
            }

            await Swal.fire({
                icon: 'success',
                title: 'Saved Successfully',
                text: response.message || 'Room inclusions updated successfully.',
                timer: 1500,
                showConfirmButton: false
            });

            window.location.reload();
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Save Failed',
                text: response?.message || 'Unable to save room inclusions.'
            });
        }
    } catch (error) {
        console.error('Room inclusive save error:', error);

        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Unable to save room inclusions.'
        });
    } finally {
        button.prop('disabled', false);
    }
});