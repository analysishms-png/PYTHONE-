@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')

<style>
    /* Inline edit — sirf ye 3 cheezein Bootstrap se possible nahi */
    .iv-editable:hover { cursor: pointer; background-color: #fffde7; }
    .iv-editable input.iv-input,
    .iv-editable select.iv-input { width: 100%; min-width: 70px; }
    .iv-saving { background-color: #d4edda !important; }
</style>

<div class="content-body">
    <div class="container-fluid">

        {{-- ── PAGE TITLE ─────────────────────────────────────────────── --}}
        <div class="row mb-2">
            <div class="col-12">
                <h5 class="font-weight-bold text-primary mb-0">
                    <i class="fa-solid fa-table-list mr-1"></i> Item Viewer
                </h5>
                <hr class="mt-1 mb-2">
            </div>
        </div>

        {{-- ── FILTER CARD ─────────────────────────────────────────────── --}}
        <div class="card border-left-primary shadow-sm mb-3">
            <div class="card-body py-2">
                <div class="row align-items-end">
                    <div class="col-md-3 col-6">
                        <label class="col-form-label font-weight-bold">Restaurant</label>
                        <select id="iv-restcode" class="form-control form-control-sm">
                            <option value="">-- All Restaurants --</option>
                            @foreach($restaurantdata as $r)
                                <option value="{{ $r->dcode }}">{{ $r->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 col-6">
                        <label class="col-form-label font-weight-bold">Group</label>
                        <select id="iv-groupcode" class="form-control form-control-sm">
                            <option value="">-- All Groups --</option>
                            @foreach($itemgroups as $g)
                                <option value="{{ $g->code }}" data-rest="{{ $g->restcode }}">{{ $g->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-2 col-6 mt-2 mt-md-0">
                        <button id="iv-load-btn" class="btn btn-primary btn-sm btn-block">
                            <i class="fa fa-search mr-1"></i> Load Data
                        </button>
                    </div>
                    <div class="col-md-2 col-6 mt-2 mt-md-0">
                        <button id="iv-clear-btn" class="btn btn-secondary btn-sm btn-block">
                            <i class="fa fa-refresh mr-1"></i> Clear
                        </button>
                    </div>
                    <div class="col-md-2 col-12 mt-2 mt-md-0 text-right">
                        <span id="iv-row-count" class="badge badge-info" style="display:none;">0 records</span>
                    </div>
                </div>
            </div>
        </div>

        {{-- ── TABLE CARD ──────────────────────────────────────────────── --}}
        <div class="card shadow-sm">
            <div class="card-body p-0">

                {{-- Loading --}}
                <div id="iv-loader" class="text-center p-4" style="display:none;">
                    <div class="spinner-border text-primary" role="status">
                        <span class="sr-only">Loading...</span>
                    </div>
                    <p class="mt-2 text-muted">Fetching data...</p>
                </div>

                {{-- Empty --}}
                <div id="iv-empty" class="text-center p-5 text-muted" style="display:none;">
                    <i class="fa fa-inbox fa-2x mb-2"></i>
                    <p>No records found for the selected filter.</p>
                </div>

                {{-- Initial hint --}}
                <div id="iv-hint" class="text-center p-4 text-muted">
                    <i class="fa fa-filter fa-2x mb-2 text-primary"></i>
                    <p>Select Restaurant and/or Group, then click <strong>Load Data</strong>.</p>
                </div>

                {{-- DataTable wrapper --}}
                <div id="iv-table-wrapper" class="table-responsive" style="display:none;">
                    <table id="itemviewertable"
                           class="table table-hover table-striped table-bordered mb-0">
                        <thead class="thead-secondary bg-secondary text-white">
                            <tr>
                                <th>Sn.</th>
                                <th>Restaurant</th>
                                <th>Name <small class="badge badge-primary">✎</small></th>
                                <th>DisCod <small class="badge badge-primary">✎</small></th>
                                <th>Unit <small class="badge badge-primary">✎</small></th>
                                <th>Rate <small class="badge badge-primary">✎</small></th>
                                <th>Group <small class="badge badge-primary">✎</small></th>
                                <th>Category <small class="badge badge-primary">✎</small></th>
                                <th>Rate Edit <small class="badge badge-primary">✎</small></th>
                                <th>Rate Inc.Tax <small class="badge badge-primary">✎</small></th>
                                <th>Disc App <small class="badge badge-primary">✎</small></th>
                                <th>Service Charge <small class="badge badge-primary">✎</small></th>
                                <th>Type <small class="badge badge-primary">✎</small></th>
                                <th>Kitchen <small class="badge badge-primary">✎</small></th>
                                <th>Dis.Type <small class="badge badge-primary">✎</small></th>
                                <th>Favourite <small class="badge badge-primary">✎</small></th>
                                <th>Active <small class="badge badge-primary">✎</small></th>
                            </tr>
                        </thead>
                        <tbody id="iv-tbody">
                            {{-- Rows injected via JS --}}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div><!-- /container-fluid -->
</div><!-- /content-body -->

<script>
$(document).ready(function () {

    // ── CSRF token for all AJAX ──────────────────────────────────────────────
    const CSRF = '{{ csrf_token() }}';

    // ── Dropdown option maps (for inline select rendering) ───────────────────
    const YN_OPTIONS   = { 'Y': 'Yes', 'N': 'No' };
    const TYPE_OPTIONS = {
        'Manufactured Item': 'Manufactured Item',
        'Trade Item':        'Trade Item',
        'Proprietory Item':  'Proprietory Item',
        'Liquor':            'Liquor',
        'Other':             'Other',
    };
    const DISH_OPTIONS = { '1': 'Veg', '2': 'Nonveg', '3': 'Egg' };
    const FAV_OPTIONS  = { '1': 'Yes', '0': 'No' };

    // Unit options — ucode → name (from PHP)
    const UNIT_OPTIONS = {!! json_encode($units->pluck('name','ucode')) !!};

    // Kitchen options — dcode → name (from PHP)
    const KITCHEN_OPTIONS = {!! json_encode($kitchens->pluck('name','dcode')) !!};

    // Item Group full list — code → { name, restcode } (for per-row RestCode filtering)
    const GROUP_ALL = {!! json_encode(
        $itemgroups->mapWithKeys(fn($g) => [$g->code => ['name' => $g->name, 'restcode' => $g->restcode]])
    ) !!};
    // Flat map code → name (fallback / full list)
    const GROUP_OPTIONS = {!! json_encode($itemgroups->pluck('name','code')) !!};

    // Item Category full list — Code → { name, restcode } (for per-row RestCode filtering)
    const CATEGORY_ALL = {!! json_encode(
        $itemcategories->mapWithKeys(fn($c) => [$c->Code => ['name' => $c->Name, 'restcode' => $c->RestCode]])
    ) !!};
    // Flat map Code → Name (fallback / full list)
    const CATEGORY_OPTIONS = {!! json_encode($itemcategories->pluck('Name','Code')) !!};

    // Helper: get Group options filtered by restcode
    function getGroupOptions(restcode) {
        const opts = {};
        $.each(GROUP_ALL, function (code, obj) {
            if (!restcode || obj.restcode === restcode) {
                opts[code] = obj.name;
            }
        });
        return opts;
    }

    // Helper: get Category options filtered by restcode
    function getCategoryOptions(restcode) {
        const opts = {};
        $.each(CATEGORY_ALL, function (code, obj) {
            if (!restcode || obj.restcode === restcode) {
                opts[code] = obj.name;
            }
        });
        return opts;
    }

    // ── DataTable instance ───────────────────────────────────────────────────
    let ivTable = null;

    // ── Cascade: Restaurant → Group filter ─────────────────────────────────
    $('#iv-restcode').on('change', function () {
        const restcode = $(this).val();

        // Reset group dropdown
        $('#iv-groupcode').html('<option value="">-- All Groups --</option>');

        if (!restcode) return;

        $.ajax({
            url: '{{ route("itemviewer.fetchgroups") }}',
            method: 'POST',
            data: { _token: CSRF, restcode: restcode },
            success: function (res) {
                if (res.status === 'success') {
                    $.each(res.groups, function (i, g) {
                        $('#iv-groupcode').append(
                            '<option value="' + g.code + '">' + g.name + '</option>'
                        );
                    });
                }
            }
        });
    });

    // ── CLEAR button ─────────────────────────────────────────────────────────
    $('#iv-clear-btn').on('click', function () {
        $('#iv-restcode').val('');
        $('#iv-groupcode').html('<option value="">-- All Groups --</option>');
        hideTable();
        $('#iv-hint').show();
    });

    // ── LOAD DATA button ─────────────────────────────────────────────────────
    $('#iv-load-btn').on('click', function () {
        loadData();
    });

    function loadData() {
        const restcode  = $('#iv-restcode').val();
        const groupcode = $('#iv-groupcode').val();

        $('#iv-hint').hide();
        $('#iv-empty').hide();
        hideTable();
        $('#iv-loader').show();

        $.ajax({
            url: '{{ route("itemviewer.fetchdata") }}',
            method: 'POST',
            data: { _token: CSRF, restcode: restcode, groupcode: groupcode },
            success: function (res) {
                $('#iv-loader').hide();
                if (res.status === 'success' && res.data.length > 0) {
                    buildTable(res.data);
                } else {
                    $('#iv-empty').show();
                    $('#iv-row-count').hide();
                }
            },
            error: function () {
                $('#iv-loader').hide();
                pushNotify('error', 'Failed to load data. Please try again.');
            }
        });
    }

    // ── BUILD TABLE ──────────────────────────────────────────────────────────
    function buildTable(rows) {
        // Destroy existing DataTable instance before re-rendering
        if (ivTable !== null) {
            ivTable.destroy();
            ivTable = null;
        }

        const tbody = $('#iv-tbody');
        tbody.empty();

        $.each(rows, function (idx, row) {
            const sn = idx + 1;

            // Build kitchen display name
            const kitchenDisplay = row.Kitchenname || row.Kitchen || '';

            // Build row HTML – editable cells get class iv-editable
            const tr = `
            <tr data-code="${escHtml(row.Code)}" data-restcode="${escHtml(row.RestCode)}">
                <td class="text-center" style="width:40px;">${sn}</td>
                <td>${escHtml(row.Restaurant || '')}</td>
                <td class="iv-editable"
                    data-field="Name"
                    data-type="text"
                    data-value="${escHtml(row.itemname || '')}">
                    ${escHtml(row.itemname || '')}
                </td>
                <td class="iv-editable text-center"
                    data-field="DispCode"
                    data-type="number"
                    data-value="${escHtml(row.DispCode || '')}">
                    ${escHtml(row.DispCode || '')}
                </td>

                <td class="iv-editable"
                    data-field="Unit"
                    data-type="select"
                    data-options-ref="UNIT_OPTIONS"
                    data-value="${escHtml(row.Unit || '')}">
                    ${escHtml(row.unitname || row.Unit || '')}
                </td>

                <td class="iv-editable text-right"
                    data-field="Rate"
                    data-type="number"
                    data-value="${escHtml(row.Rate || '0')}">
                    ${escHtml(row.Rate || '0')}
                </td>

                <td class="iv-editable"
                    data-field="ItemGroup"
                    data-type="select"
                    data-options-ref="GROUP_OPTIONS"
                    data-value="${escHtml(row.ItemGroup || '')}">
                    ${escHtml(row.itemgrpname || row.ItemGroup || '')}
                </td>

                <td class="iv-editable"
                    data-field="ItemCatCode"
                    data-type="select"
                    data-options-ref="CATEGORY_OPTIONS"
                    data-value="${escHtml(row.ItemCatCode || '')}">
                    ${escHtml(row.itemcatname || row.ItemCatCode || '')}
                </td>

                <td class="iv-editable text-center"
                    data-field="RateEdit"
                    data-type="select"
                    data-options='${JSON.stringify(YN_OPTIONS)}'
                    data-value="${escHtml(row.RateEdit || 'N')}">
                    ${row.RateEdit === 'Y' ? 'Yes' : 'No'}
                </td>

                <td class="iv-editable text-center"
                    data-field="RateIncTax"
                    data-type="select"
                    data-options='${JSON.stringify(YN_OPTIONS)}'
                    data-value="${escHtml(row.RateIncTax || 'N')}">
                    ${row.RateIncTax === 'Y' ? 'Yes' : 'No'}
                </td>

                <td class="iv-editable text-center"
                    data-field="DiscApp"
                    data-type="select"
                    data-options='${JSON.stringify(YN_OPTIONS)}'
                    data-value="${escHtml(row.DiscApp || 'N')}">
                    ${row.DiscApp === 'Y' ? 'Yes' : 'No'}
                </td>

                <td class="iv-editable text-center"
                    data-field="SChrgApp"
                    data-type="select"
                    data-options='${JSON.stringify(YN_OPTIONS)}'
                    data-value="${escHtml(row.SChrgApp || 'N')}">
                    ${row.SChrgApp === 'Y' ? 'Yes' : 'No'}
                </td>

                <td class="iv-editable text-center"
                    data-field="NType"
                    data-type="select"
                    data-options='${JSON.stringify(TYPE_OPTIONS)}'
                    data-value="${escHtml(row.NType || 'Other')}">
                    ${escHtml(row.NType || 'Other')}
                </td>

                <td class="iv-editable"
                    data-field="Kitchen"
                    data-type="select"
                    data-options-ref="KITCHEN_OPTIONS"
                    data-value="${escHtml(row.Kitchen || '')}">
                    ${escHtml(kitchenDisplay)}
                </td>

                <td class="iv-editable text-center"
                    data-field="dishtype"
                    data-type="select"
                    data-options='${JSON.stringify(DISH_OPTIONS)}'
                    data-value="${escHtml(String(row.dishtype || '1'))}">
                    ${DISH_OPTIONS[String(row.dishtype)] || 'Veg'}
                </td>

                <td class="iv-editable text-center"
                    data-field="favourite"
                    data-type="select"
                    data-options='${JSON.stringify(FAV_OPTIONS)}'
                    data-value="${escHtml(String(row.favourite || '0'))}">
                    ${FAV_OPTIONS[String(row.favourite)] || 'No'}
                </td>

                <td class="iv-editable text-center"
                    data-field="ActiveYN"
                    data-type="select"
                    data-options='${JSON.stringify(YN_OPTIONS)}'
                    data-value="${escHtml(row.ActiveYN || 'Y')}">
                    ${row.ActiveYN === 'Y' ? 'Yes' : 'No'}
                </td>
            </tr>`;

            tbody.append(tr);
        });

        // Init DataTable AFTER rows are in DOM
        ivTable = new DataTable('#itemviewertable', {
            dom: 'frtip',
            ordering: true,
            order: [],
            pageLength: 25,
            lengthMenu: [10, 25, 50, 100, 200],
            language: {
                search:         'Search:',
                lengthMenu:     'Show _MENU_ rows',
                info:           'Showing _START_ to _END_ of _TOTAL_ records',
                infoEmpty:      'No records available',
                zeroRecords:    'No matching records found',
            }
        });

        $('#iv-table-wrapper').show();
        const total = rows.length;
        $('#iv-row-count').text(total + ' record' + (total !== 1 ? 's' : '')).show();
    }

    function hideTable() {
        if (ivTable !== null) {
            ivTable.destroy();
            ivTable = null;
        }
        $('#iv-tbody').empty();
        $('#iv-table-wrapper').hide();
        $('#iv-row-count').hide();
    }

    // ── INLINE EDIT – Click to activate ─────────────────────────────────────
    $(document).on('click', '.iv-editable', function (e) {
        // If an input is already open inside THIS cell, do nothing
        if ($(this).find('.iv-input').length) return;

        const $cell    = $(this);
        const field    = $cell.data('field');
        const type     = $cell.data('type');
        const curVal   = $cell.data('value');
        const origText = $cell.html();   // snapshot for rollback

        // Resolve options — either from data-options attribute OR from named JS map
        let resolvedOptions = null;
        if (type === 'select') {
            const optRef   = $cell.attr('data-options-ref');
            const $tr      = $cell.closest('tr');
            const rowRest  = $tr.data('restcode') || '';   // item's own RestCode

            if (optRef === 'UNIT_OPTIONS') {
                resolvedOptions = UNIT_OPTIONS;
            } else if (optRef === 'KITCHEN_OPTIONS') {
                resolvedOptions = KITCHEN_OPTIONS;
            } else if (optRef === 'GROUP_OPTIONS') {
                // Show only groups belonging to the same restaurant
                resolvedOptions = getGroupOptions(rowRest);
            } else if (optRef === 'CATEGORY_OPTIONS') {
                // Show only categories belonging to the same restaurant
                resolvedOptions = getCategoryOptions(rowRest);
            } else {
                resolvedOptions = $cell.data('options'); // JSON parsed by jQuery
            }
        }

        let $input;

        if (type === 'select') {
            $input = $('<select class="iv-input"></select>');
            $.each(resolvedOptions, function (k, v) {
                const sel = (String(k) === String(curVal)) ? ' selected' : '';
                $input.append('<option value="' + k + '"' + sel + '>' + v + '</option>');
            });
        } else if (type === 'number') {
            $input = $('<input type="number" step="0.01" min="0" class="iv-input">')
                .val(curVal);
        } else {
            $input = $('<input type="text" class="iv-input">').val(curVal);
        }

        $cell.html($input);
        $input.focus();
        if (type !== 'select') $input.select();

        // ── SAVE on Enter / blur (select also saves on change) ───────────────
        function saveCell() {
            const newVal  = $input.val();
            const $tr     = $cell.closest('tr');
            const code    = $tr.data('code');
            const rescode = $tr.data('restcode');

            // No change → just restore
            if (String(newVal) === String(curVal)) {
                restoreCell($cell, origText, curVal);
                return;
            }

            // Visual saving state
            $cell.addClass('iv-saving');

            $.ajax({
                url: '{{ route("itemviewer.updatecell") }}',
                method: 'POST',
                data: {
                    _token:   CSRF,
                    code:     code,
                    restcode: rescode,
                    field:    field,
                    value:    newVal,
                },
                success: function (res) {
                    $cell.removeClass('iv-saving');
                    if (res.status === 'success') {
                        // Update data-value + display text
                        $cell.data('value', newVal);
                        const displayText = resolveDisplay(type, $cell, newVal);
                        $cell.html(displayText);
                        // Brief green flash
                        $cell.css('background-color', '#c8e6c9');
                        setTimeout(function () { $cell.css('background-color', ''); }, 1000);
                        pushNotify('success', res.message || 'Saved!');
                    } else {
                        restoreCell($cell, origText, curVal);
                        pushNotify('error', res.message || 'Update failed.');
                    }
                },
                error: function (xhr) {
                    $cell.removeClass('iv-saving');
                    restoreCell($cell, origText, curVal);
                    const msg = xhr.responseJSON && xhr.responseJSON.message
                        ? xhr.responseJSON.message
                        : 'Server error. Please try again.';
                    pushNotify('error', msg);
                }
            });
        }

        // Enter key → save; Escape → cancel
        $input.on('keydown', function (e) {
            if (e.key === 'Enter') {
                e.preventDefault();
                saveCell();
            } else if (e.key === 'Escape') {
                restoreCell($cell, origText, curVal);
            }
        });

        // Select → save immediately on change
        if (type === 'select') {
            $input.on('change', function () { saveCell(); });
        }

        // Blur (click outside) → save
        $input.on('blur', function () {
            // Small delay so keydown fires first
            setTimeout(function () {
                if ($cell.find('.iv-input').length) {
                    saveCell();
                }
            }, 150);
        });
    });

    // ── HELPERS ──────────────────────────────────────────────────────────────
    function restoreCell($cell, origText, origVal) {
        $cell.data('value', origVal);
        $cell.html(origText);
    }

    function resolveDisplay(type, $cell, value) {
        if (type === 'select') {
            const optRef  = $cell.attr('data-options-ref');
            const $tr     = $cell.closest('tr');
            const rowRest = $tr.data('restcode') || '';
            let options;
            if (optRef === 'UNIT_OPTIONS') {
                options = UNIT_OPTIONS;
            } else if (optRef === 'KITCHEN_OPTIONS') {
                options = KITCHEN_OPTIONS;
            } else if (optRef === 'GROUP_OPTIONS') {
                options = getGroupOptions(rowRest);
            } else if (optRef === 'CATEGORY_OPTIONS') {
                options = getCategoryOptions(rowRest);
            } else {
                options = $cell.data('options');
            }
            if (options && options[value] !== undefined) {
                return escHtml(options[value]);
            }
        }
        return escHtml(value);
    }

    function escHtml(str) {
        if (str === null || str === undefined) return '';
        return String(str)
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;');
    }

});
</script>

@endsection
