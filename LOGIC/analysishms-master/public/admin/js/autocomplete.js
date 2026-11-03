(function ($, window, document) {
    'use strict';

    const instances = new WeakMap();

    function initAjaxAutocomplete(config) {
        const settings = $.extend({
            selector: null,
            url: null,
            method: 'GET',
            minLength: 2,
            debounce: 300,
            limit: 10,
            searchParam: 'search',
            headers: {},
            data: {},
            displayField: 'label',
            valueField: 'id',
            renderItem: null,
            onSelect: null,
            onSearch: null,
            onError: null,
            emptyMessage: 'No matching records found',
            loadingMessage: 'Searching...',
            extraParams: null
        }, config);

        if (!settings.selector || !settings.url) {
            throw new Error('Autocomplete requires selector and url.');
        }

        $(settings.selector).each(function () {
            const input = this;
            const $input = $(input);

            if (instances.has(input)) {
                instances.get(input).destroy();
            }

            const $wrapper = $('<div class="ajax-autocomplete-wrapper"></div>');
            const $dropdown = $('<div class="ajax-autocomplete-dropdown" role="listbox"></div>');

            $input.wrap($wrapper);
            $input.after($dropdown);

            let timer = null;
            let request = null;
            let items = [];
            let activeIndex = -1;
            let requestId = 0;
            let selectedValue = null;

            const $container = $input.parent();

            function closeDropdown() {
                $dropdown.hide().empty();
                activeIndex = -1;
                items = [];
                $input.attr('aria-expanded', 'false');
            }

            function cancelRequest() {
                clearTimeout(timer);
                timer = null;

                if (request && request.readyState !== 4) {
                    request.abort();
                }

                request = null;
            }

            function updateActiveItem() {
                const $options = $dropdown.find('.ajax-autocomplete-option');

                $options.removeClass('active').attr('aria-selected', 'false');

                if (activeIndex < 0 || activeIndex >= items.length) {
                    return;
                }

                const $active = $options.eq(activeIndex);

                $active.addClass('active').attr('aria-selected', 'true');

                if ($active.length) {
                    const optionTop = $active.position().top;
                    const optionBottom = optionTop + $active.outerHeight();

                    if (optionTop < 0) {
                        $dropdown.scrollTop($dropdown.scrollTop() + optionTop);
                    } else if (optionBottom > $dropdown.innerHeight()) {
                        $dropdown.scrollTop(
                            $dropdown.scrollTop() +
                            optionBottom -
                            $dropdown.innerHeight()
                        );
                    }
                }
            }

            function selectItem(item) {
                selectedValue = item;

                const displayValue = item[settings.displayField];

                $input.val(
                    displayValue == null ? '' : String(displayValue)
                );

                closeDropdown();

                if (typeof settings.onSelect === 'function') {
                    settings.onSelect.call(input, item, $input);
                }
            }

            function renderDropdown(results) {
                items = results.slice(0, settings.limit);
                activeIndex = -1;
                $dropdown.empty();

                if (!items.length) {
                    $dropdown.append(
                        $('<div class="ajax-autocomplete-message"></div>')
                            .text(settings.emptyMessage)
                    );

                    $dropdown.show();
                    return;
                }

                items.forEach(function (item, index) {
                    let $option;

                    if (typeof settings.renderItem === 'function') {
                        const rendered = settings.renderItem(item, index);

                        $option = $('<div></div>')
                            .addClass('ajax-autocomplete-option')
                            .attr({
                                role: 'option',
                                'aria-selected': 'false'
                            })
                            .append(rendered);
                    } else {
                        $option = $('<div></div>')
                            .addClass('ajax-autocomplete-option')
                            .attr({
                                role: 'option',
                                'aria-selected': 'false'
                            })
                            .text(
                                item[settings.displayField] == null
                                    ? ''
                                    : String(item[settings.displayField])
                            );
                    }

                    $option.on('mousedown.ajaxAutocomplete', function (event) {
                        event.preventDefault();
                        selectItem(item);
                    });

                    $dropdown.append($option);
                });

                $dropdown.show();
            }

            function search(query) {
                cancelRequest();

                const currentRequestId = ++requestId;

                if (query.length < settings.minLength) {
                    closeDropdown();
                    return;
                }

                $dropdown.empty()
                    .append(
                        $('<div class="ajax-autocomplete-message"></div>')
                            .text(settings.loadingMessage)
                    )
                    .show();

                const payload = $.extend(
                    {},
                    typeof settings.data === 'function'
                        ? settings.data.call(input)
                        : settings.data
                );

                payload[settings.searchParam] = query;

                if (typeof settings.extraParams === 'function') {
                    $.extend(payload, settings.extraParams.call(input));
                }

                if (typeof settings.onSearch === 'function') {
                    settings.onSearch.call(input, query);
                }

                request = $.ajax({
                    url: settings.url,
                    method: settings.method,
                    data: payload,
                    dataType: 'json',
                    headers: settings.headers
                })
                    .done(function (response) {
                        if (currentRequestId !== requestId) {
                            return;
                        }

                        let results = Array.isArray(response)
                            ? response
                            : Array.isArray(response.data)
                                ? response.data
                                : Array.isArray(response.results)
                                    ? response.results
                                    : [];

                        renderDropdown(results);
                    })
                    .fail(function (xhr, status, error) {
                        if (status === 'abort' || currentRequestId !== requestId) {
                            return;
                        }

                        closeDropdown();

                        if (typeof settings.onError === 'function') {
                            settings.onError.call(input, xhr, status, error);
                        }
                    });
            }

            function scheduleSearch() {
                const query = $input.val().trim();

                selectedValue = null;

                clearTimeout(timer);
                timer = null;

                requestId++;

                if (request && request.readyState !== 4) {
                    request.abort();
                }

                request = null;

                if (query.length < settings.minLength) {
                    closeDropdown();
                    return;
                }

                closeDropdown();

                timer = setTimeout(function () {
                    timer = null;

                    if ($input.val().trim() !== query) {
                        return;
                    }

                    search(query);
                }, settings.debounce);
            }

            function handleKeydown(event) {
                if (event.key === 'ArrowDown') {
                    if (!$dropdown.is(':visible')) {
                        scheduleSearch();
                        return;
                    }

                    if (items.length) {
                        event.preventDefault();
                        activeIndex = Math.min(activeIndex + 1, items.length - 1);
                        updateActiveItem();
                    }

                    return;
                }

                if (event.key === 'ArrowUp') {
                    if (items.length) {
                        event.preventDefault();
                        activeIndex = Math.max(activeIndex - 1, 0);
                        updateActiveItem();
                    }

                    return;
                }

                if (event.key === 'Enter' && $dropdown.is(':visible')) {
                    if (activeIndex >= 0 && items[activeIndex]) {
                        event.preventDefault();
                        selectItem(items[activeIndex]);
                    }

                    return;
                }

                if (event.key === 'Escape') {
                    cancelRequest();
                    closeDropdown();
                }
            }

            $input.attr({
                autocomplete: 'off',
                'aria-autocomplete': 'list',
                'aria-expanded': 'false'
            });

            $input.on('input.ajaxAutocomplete', scheduleSearch);
            $input.on('keydown.ajaxAutocomplete', handleKeydown);

            $input.on('blur.ajaxAutocomplete', function () {
                setTimeout(function () {
                    if (!$container.find(':focus').length) {
                        closeDropdown();
                    }
                }, 150);
            });

            const instance = {
                search: function (query) {
                    $input.val(query);
                    search(String(query).trim());
                },
                close: closeDropdown,
                destroy: function () {
                    cancelRequest();
                    closeDropdown();

                    $input.off('.ajaxAutocomplete');
                    $dropdown.remove();
                    $input.unwrap('.ajax-autocomplete-wrapper');

                    $input.removeAttr(
                        'aria-autocomplete aria-expanded autocomplete'
                    );

                    instances.delete(input);
                },
                getSelected: function () {
                    return selectedValue;
                }
            };

            instances.set(input, instance);
        });

        return {
            destroy: function () {
                $(settings.selector).each(function () {
                    const instance = instances.get(this);

                    if (instance) {
                        instance.destroy();
                    }
                });
            }
        };
    }

    window.initAjaxAutocomplete = initAjaxAutocomplete;

})(jQuery, window, document);
