$(document).ready(function () {
    // $(document).on('input', '#findname, #name, #customername, #departname', function () {
    //     let inputval = $(this).val().replace(/[^A-Za-z&\/:,\s]|^(.{100}).*$/g, '$1');
    //     $(this).val(inputval);
    //     $(this).val(title($(this).val()));
    // });

    $(document).on('input', '#address', function () {
        let inputval = $(this).val().replace(/[^A-Za-z0-9\s\/]|^(.{100}).*$/g, '$1');
        $(this).val(inputval);
        $(this).val(title($(this).val()));
    });

    $('.capitalize-first').on('input', function () {
        var value = $(this).val();

        if (value.length > 0) {
            $(this).val(value.charAt(0).toUpperCase() + value.slice(1));
        }
    });

    $(document).on('input', '.amountrow', function () {
        let val = $(this).val();
        val = val.replace(/[^0-9.]/g, '');
        $(this).val(val);
    });

    $(document).on('input', '#short_name', function () {
        var value = $(this).val().toUpperCase().slice(0, 5);
        $(this).val(value);
    });

    $(document).on('input', '#findnum, #phoneno', function () {
        let inputval = $(this).val().replace(/[^0-9]|^(.{11}).*$/g, '$1');
        $(this).val(inputval);
    });

    $(document).on('input', '#exp_pax, #gurr_pax, #rate_pax, #advance', function () {
        let inputval = $(this).val().replace(/[^0-9.]|(?<=\..*)\./g, '');
        $(this).val(inputval);
    });

    $('#gstin').on('input', function () {
        let gstin = $(this).val().toUpperCase();
        const pattern = /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/;

        $(this).val(gstin);

        if ($(this).next('.gstin-result').length === 0) {
            $(this).after('<div class="gstin-result"></div>');
        }

        let message = '';

        if (gstin === '') {
            message = '';
        }
        else if (pattern.test(gstin)) {
            message = '<p class="valid">✔ Valid GSTIN</p>';
        }
        else {
            message = '<p class="invalid">✖ Invalid GSTIN</p>';
        }

        $('#gstin').next('.gstin-result').html(message);
    });

    // $(document).on('input', '#gstin', function () {
    //     let inputval = $(this).val().toUpperCase().replace(/[^A-Z0-9]|^(.{15}).*$/g, '$1');
    //     $(this).val(inputval);
    // });

    $(document).on('input', '#kotremark', function () {
        let inputval = $(this).val().replace(/[^A-Za-z-0-9\s]|^(.{50}).*$/g, '$1');
        $(this).val(inputval);
        $(this).val(title($(this).val()));
    });

    $('#pancard').on('input', function () {
        let pan = $(this).val().toUpperCase();
        if (pan != '') {
            const pattern = /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/;

            $(this).val(pan);

            let message = '';
            if (pattern.test(pan)) {
                message = '<p class="valid">✔ Valid PAN Card</p>';
            } else {
                message = '<p class="invalid">✖ Invalid PAN Card</p>';
            }

            if ($(this).next('.pan-result').length === 0) {
                $(this).after('<div class="pan-result"></div>');
            }

            $(this).next('.pan-result').html(message);
        } else {
            $(this).next('.pan-result').html('');
        }
    });


    $(document).on('input', '#printerpath', function () {
        var value = $(this).val();
        // Updated pattern for Windows-style paths with backslashes
        var pattern = /^\\\\[a-zA-Z0-9]+\\[a-zA-Z0-9]+$/;
        if (!pattern.test(value)) {
            $(this).addClass('is-invalid');
            $('#submitBtn').prop('disabled', true);
        } else {
            $(this).removeClass('is-invalid');
            $('#submitBtn').prop('disabled', false);
        }
    });

    $(document).on('input', '#convratio, #minstock, #maxstock, #recordstock', function () {
        let value = $(this).val();
        let validValue = value.match(/^1$|^(0(\.\d{1,3})?)$/);
        if (!validValue) {
            $(this).val(value.replace(/[^0-9.]/g, '').substring(0, 5));
        }
    });

    function formatCurrency(amount) {
        return new Intl.NumberFormat('en-IN', {
            style: 'currency',
            currency: 'INR',
            minimumFractionDigits: 0,
            maximumFractionDigits: 0
        }).format(amount);
    }


});


function bindDateToDay(dateInputId, dayInputId) {
    $('#' + dateInputId).on('change', function () {
        const dateVal = $(this).val();
        if (dateVal) {
            const day = new Date(dateVal).toLocaleDateString('en-US', { weekday: 'long' });
            $('#' + dayInputId).val(day);
        } else {
            $('#' + dayInputId).val('');
        }
    });
}

$('.select2-multiple').each(function () {
    const placeholderText = `Select ${$(this).parent().find('label').text()}`;
    $(this).select2({
        placeholder: placeholderText,
        allowClear: true,
        width: '100%'
    });
});

let timeInputTimer;

$(document).on('input', '.timeinput', function () {
    clearTimeout(timeInputTimer);
    let $this = $(this);

    let val = $this.val().replace(/[^0-9]/g, '');
    let hours = '', minutes = '', seconds = '';

    if (val.length >= 2) {
        hours = parseInt(val.substring(0, 2));
        if (hours > 24) hours = 24;
        hours = hours.toString().padStart(2, '0');
    } else {
        hours = val;
    }

    if (val.length >= 4) {
        minutes = parseInt(val.substring(2, 4));
        if (minutes > 59) minutes = 59;
        minutes = minutes.toString().padStart(2, '0');
    } else if (val.length > 2) {
        minutes = val.substring(2);
    }

    if (val.length >= 6) {
        seconds = parseInt(val.substring(4, 6));
        if (seconds > 59) seconds = 59;
        seconds = seconds.toString().padStart(2, '0');
    } else if (val.length > 4) {
        seconds = val.substring(4);
    }

    let timeFormatted = hours;
    if (minutes !== '') timeFormatted += ':' + minutes;
    if (seconds !== '') timeFormatted += ':' + seconds;

    $this.val(timeFormatted);

    // Set timeout to autofill 08:00:00 if user stops typing
    timeInputTimer = setTimeout(function () {
        let finalVal = $this.val().split(':');

        let h = finalVal[0] || '00';
        let m = finalVal[1] || '00';
        let s = finalVal[2] || '00';

        $this.val(h.padStart(2, '0') + ':' + m.padStart(2, '0') + ':' + s.padStart(2, '0'));
    }, 1000); // 1 second delay
});



function overlayLock(el, text) {
    const $el = $(el);
    if (!$el.length) return;

    // Handle each element individually (works for both IDs and classes)
    $el.each(function () {
        const $elem = $(this);

        if ($elem.parent('.ol-wrap').length === 0) {
            $elem.wrap('<div class="ol-wrap"></div>');
        }
        const $wrap = $elem.parent('.ol-wrap');

        $wrap.find('.ol-cover').remove();

        const $cover = $('<div class="ol-cover" aria-hidden="true"></div>');
        const $badge = $('<div class="ol-badge"></div>').text(text || 'Locked');
        $elem.prop('readonly', true);
        $cover.append($badge);

        $cover.on('mousedown touchstart pointerdown click keydown', function (e) {
            e.preventDefault();
            e.stopPropagation();
            return false;
        });

        $wrap.append($cover);

        $elem.attr({
            'aria-disabled': 'true',
            'tabindex': '-1'
        }).blur();
    });
}

function overlayUnlock(el) {
    const $el = $(el);
    if (!$el.length) return;

    // Handle each element individually (works for both IDs and classes)
    $el.each(function () {
        const $elem = $(this);
        const $wrap = $elem.parent('.ol-wrap');

        if ($wrap.length) {
            $wrap.find('.ol-cover').remove();
            $elem.removeAttr('aria-disabled').removeAttr('tabindex').prop('readonly', false);
        }
    });
}

function escapeHtml(value) {
    return String(value ?? '').replace(/[&<>"']/g, function (char) {
        return {
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#39;'
        }[char];
    });
}

function formatArrivalDate(dateString) {
    if (!dateString) {
        return '';
    }

    const dateParts = String(dateString).split('-');
    const date = dateParts.length === 3 ?
        new Date(Number(dateParts[0]), Number(dateParts[1]) - 1, Number(dateParts[2])) :
        new Date(dateString);

    if (Number.isNaN(date.getTime())) {
        return dateString;
    }

    return date.toLocaleDateString('en-GB', {
        day: '2-digit',
        month: 'short',
        year: 'numeric'
    });
}

function getAgeInYears(fromDate, toDate) {
    const start = new Date(fromDate);
    const end = new Date(toDate);

    let years = end.getFullYear() - start.getFullYear();

    const monthDiff = end.getMonth() - start.getMonth();

    if (monthDiff < 0 || (monthDiff === 0 && end.getDate() < start.getDate())) {
        years--;
    }

    return years;
}

function getCleaningTimeStatus(vtime, esttime) {
    const now = new Date();

    const [vh, vm, vs] = vtime.split(':').map(Number);
    const [eh, em, es] = esttime.split(':').map(Number);

    const startTime = new Date();
    startTime.setHours(vh, vm, vs, 0);

    const endTime = new Date(startTime.getTime() + ((eh * 3600 + em * 60 + es) * 1000));

    if (now >= endTime) {
        return {
            isOver: true,
            text: 'Cleaning time over'
        };
    }

    const diff = endTime - now;

    const hrs = Math.floor(diff / 3600000);
    const mins = Math.floor((diff % 3600000) / 60000);
    const secs = Math.floor((diff % 60000) / 1000);

    return {
        isOver: false,
        text: `${hrs.toString().padStart(2, '0')}:${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')} left`
    };
}