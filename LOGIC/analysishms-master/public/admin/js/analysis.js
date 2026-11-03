/* global jQuery */
(function ($) {
    'use strict';

    function triggerAddItemClick() {
        var $btn = $('#additem');
        if (!$btn.length) return false;
        if ($btn.prop('disabled')) return false;
        if (!$btn.is(':visible')) return false;

        $btn.trigger('click');
        return true;
    }

    $(function () {
        // Enter on ledger dropdown => Add Item
        $(document).on('keydown', '.ledgers', function (e) {
            if (e.key === 'Enter') {
                if (triggerAddItemClick()) {
                    e.preventDefault();
                }
            }
        });

        // Shift + A anywhere on Purchase Bill screen => Add Item
        $(document).on('keydown', function (e) {
            if (!e.shiftKey || e.ctrlKey || e.altKey || e.metaKey) return;
            if (e.key !== 'A' && e.key !== 'a') return;

            // avoid breaking typing
            if ($('input, textarea, select').is(':focus')) return;
            if (document.activeElement && document.activeElement.isContentEditable) return;

            if (triggerAddItemClick()) {
                e.preventDefault();
            }
        });
    });
})(jQuery);
