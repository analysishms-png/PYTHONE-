@extends('property.layouts.main')
@section('main-container')

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">

                {{-- ── FORM CARD ── --}}
                <div class="card mb-3">
                    <div class="card-header">
                        <h4 class="card-title mb-0">Catalog Master</h4>
                    </div>
                    <div class="card-body">

                        {{-- Top Fields --}}
                        <div class="row mb-2">
                            <div class="col-md-3">
                                <div class="row align-items-center mb-2">
                                    <label class="col-5 col-form-label fw-semibold">Catalog Name</label>
                                    <div class="col-7">
                                        <input type="text" id="catalogname" class="form-control form-control-sm"
                                               maxlength="25" autocomplete="off">
                                    </div>
                                </div>
                                <div class="row align-items-center mb-2">
                                    <label class="col-5 col-form-label fw-semibold">Item Group</label>
                                    <div class="col-7">
                                        <select id="itemgroup" class="form-control form-control-sm">
                                            <option value="">-- Select --</option>
                                            @foreach ($itemgroups as $grp)
                                                <option value="{{ $grp->code }}"
                                                        data-restcode="{{ $grp->restcode }}"
                                                        data-name="{{ $grp->name }}">
                                                    {{ $grp->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                {{-- Left Table: Group Name + M.Limit --}}
                                <div class="table-responsive mt-2">
                                    <table class="table table-sm table-bordered mb-0" style="font-size:13px;">
                                        <thead class="bg-secondary text-white">
                                            <tr>
                                                <th width="20">#</th>
                                                <th>Group Name</th>
                                                <th width="80">M.Limit</th>
                                                <th width="30"></th>
                                            </tr>
                                        </thead>
                                        <tbody id="leftTableBody">
                                            <tr><td colspan="4" class="text-muted text-center">Select Item Group</td></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            {{-- Right Table: Item Group + Item Name --}}
                            <div class="col-md-6 offset-md-1">
                                <div class="table-responsive">
                                    <table class="table table-sm table-bordered mb-0" style="font-size:13px;">
                                        <thead class="bg-secondary text-white">
                                            <tr>
                                                <th width="30">#</th>
                                                <th>Item Group</th>
                                                <th>Item Name</th>
                                            </tr>
                                        </thead>
                                        <tbody id="rightTableBody">
                                            <tr><td colspan="3" class="text-muted text-center">Select Item Group to see items</td></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        {{-- Save Button --}}
                        <div class="text-start mt-2">
                            <button type="button" id="saveBtn2" class="btn btn-success btn-sm px-4" style="display:none;">
                                <i class="fa-solid fa-floppy-disk"></i> Save to Catalog
                            </button>
                            <button type="button" id="clearEditBtn" class="btn btn-outline-secondary btn-sm ms-2" style="display:none;">
                                <i class="fa-solid fa-xmark"></i> Clear / New
                            </button>
                        </div>

                    </div>
                </div>

                {{-- ── SAVED CATALOG TABLE ── --}}
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">Catalog Master</h5>
                    </div>
                    <div class="table-responsive">
                        <table id="catalogTable" class="table table-hover table-striped mb-0">
                            <thead class="bg-secondary text-white">
                                <tr>
                                    <th width="40">Sn.</th>
                                    <th>Catalog Name</th>
                                    <th>Total Items</th>
                                    <th>M.Limit</th>
                                    <th>Saved By</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody id="catalogTableBody">
                                @forelse ($catalogrows as $catalog)
                                    @php $catId = 'cat-' . $loop->iteration; @endphp

                                    {{-- Catalog summary row --}}
                                    <tr class="table-light fw-semibold catalog-header-row"
                                        style="cursor:pointer;"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#{{ $catId }}">
                                        <td>{{ $loop->iteration }}</td>
                                        <td>
                                            <i class="fa-solid fa-chevron-down me-1 text-secondary" style="font-size:11px;"></i>
                                            {{ $catalog->name }}
                                        </td>
                                        <td>{{ $catalog->items->count() }} items</td>
                                        <td>{{ $catalog->mlimit ?? 0 }}</td>
                                        <td>{{ $catalog->u_name }}</td>
                                        <td>{{ \Carbon\Carbon::parse($catalog->created_at)->format('d-m-Y') }}</td>
                                        <td>
                                            <button class="btn btn-secondary btn-sm printCatalogBtn me-1"
                                                    data-name="{{ $catalog->name }}"
                                                    data-restcode="{{ $catalog->restcode }}">
                                                <i class="fa-solid fa-print"></i> Print
                                            </button>
                                            <button class="btn btn-success btn-sm editCatalogBtn me-1"
                                                    data-name="{{ $catalog->name }}"
                                                    data-restcode="{{ $catalog->restcode }}"
                                                    data-mlimit="{{ $catalog->mlimit ?? 0 }}"
                                                    data-groupcode="{{ $catalog->items->first()->groupcode ?? '' }}"
                                                    data-items="{{ json_encode($catalog->items->map(fn($r) => [
                                                        'itemgroupname' => $r->itemgroupname ?? '-',
                                                        'itemname'      => $r->itemname ?? $r->itemcode,
                                                        'itemcode'      => $r->itemcode,
                                                        'mlimit'        => $r->mlimit ?? 0,
                                                    ])) }}">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </button>
                                            <button class="btn btn-danger btn-sm deleteCatalogBtn"
                                                    data-name="{{ $catalog->name }}"
                                                    data-restcode="{{ $catalog->restcode }}">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>

                                    {{-- Expandable items rows --}}
                                    <tr class="collapse" id="{{ $catId }}">
                                        <td colspan="7" class="p-0">
                                            <table class="table table-sm table-bordered mb-0" style="font-size:12px;">
                                                <thead class="bg-light">
                                                    <tr>
                                                        <th width="40">#</th>
                                                        <th>Item Group</th>
                                                        <th>Item Name</th>
                                                        <th>Item Code</th>
                                                        <th>M.Limit</th>
                                                        <th width="80">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @foreach ($catalog->items as $row)
                                                        <tr id="row-{{ $row->id }}">
                                                            <td>{{ $loop->iteration }}</td>
                                                            <td>{{ $row->itemgroupname ?? '-' }}</td>
                                                            <td>{{ $row->itemname ?? $row->itemcode }}</td>
                                                            <td>{{ $row->itemcode }}</td>
                                                            <td>{{ $row->mlimit ?? 0 }}</td>
                                                            <td>
                                                                <button class="btn btn-danger btn-xs btn-sm py-0 px-1 deleteRowBtn"
                                                                        data-sn="{{ $row->id }}"
                                                                        style="font-size:11px;">
                                                                    <i class="fa-solid fa-trash"></i>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="8" class="text-center text-muted py-3">No catalog entries saved yet.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {

    var CSRF = '{{ csrf_token() }}';
    var selectedItems = [];

    // ── Item Group change → load items ───────────────────────────────────
    $('#itemgroup').on('change', function () {
        var grpcode  = $(this).val();
        var restcode = $(this).find(':selected').data('restcode') || '';
        var grpname  = $(this).find(':selected').data('name') || '';
        if (!grpcode) return;

        $.ajax({
            url: '{{ route("catalogmaster.getitems") }}',
            method: 'POST',
            data: { _token: CSRF, grpcode: grpcode, restcode: restcode },
            success: function (items) {
                if (!items.length) {
                    pushNotify('error', 'Catalog Master', 'No items found for selected group.', 'fade', 3000, '', '', '');
                    return;
                }
                var added = 0;
                $.each(items, function (i, item) {
                    var exists = selectedItems.some(function (s) {
                        return String(s.itemcode) === String(item.Code)
                            && String(s.restcode).toLowerCase() === String(item.RestCode).toLowerCase();
                    });
                    if (!exists) {
                        selectedItems.push({ itemcode: item.Code, itemname: item.Name, itemcatcode: item.ItemCatCode, restcode: item.RestCode, grpname: grpname, mlimit: 0 });
                        added++;
                    }
                });
                if (!added) pushNotify('info', 'Catalog Master', 'Items of this group are already added.', 'fade', 3000, '', '', '');
                renderLeftTable(); renderRightTable();
                if (selectedItems.length) $('#saveBtn2').show();
            },
            error: function () { pushNotify('error', 'Catalog Master', 'Failed to load items.', 'fade', 3000, '', '', ''); }
        });
    });

    function renderLeftTable() {
        var groups = {}, order = [];
        $.each(selectedItems, function (i, item) {
            var key = item.grpname + '|' + item.restcode;
            if (!groups[key]) { groups[key] = { grpname: item.grpname, restcode: item.restcode, mlimit: item.mlimit || 0 }; order.push(key); }
            if ((item.mlimit || 0) > groups[key].mlimit) groups[key].mlimit = item.mlimit;
        });
        var html = '';
        $.each(order, function (seq, key) {
            var g = groups[key];
            html += '<tr><td>' + (seq+1) + '</td><td>' + escHtml(g.grpname) + '</td>'
                  + '<td><input type="number" class="form-control form-control-sm mlimit-input p-0 text-center" data-grp="' + escHtml(key) + '" min="0" value="' + (g.mlimit||0) + '" style="width:65px;"></td>'
                  + '<td><button class="btn btn-danger btn-xs btn-sm p-0 px-1 removeGroupBtn" data-grp="' + escHtml(key) + '"><i class="fa-solid fa-xmark"></i></button></td></tr>';
        });
        $('#leftTableBody').html(html);
    }

    function renderRightTable() {
        var html = '';
        $.each(selectedItems, function (i, item) {
            html += '<tr><td>' + (i+1) + '</td><td>' + escHtml(item.grpname) + '</td><td>' + escHtml(item.itemname) + '</td></tr>';
        });
        $('#rightTableBody').html(html);
    }

    $(document).on('change input', '.mlimit-input', function () {
        var grp = $(this).data('grp'), val = parseInt($(this).val()) || 0;
        $.each(selectedItems, function (i, item) { if ((item.grpname+'|'+item.restcode) === grp) item.mlimit = val; });
    });

    $(document).on('click', '.removeGroupBtn', function () {
        var grp = $(this).data('grp');
        selectedItems = selectedItems.filter(function (item) { return (item.grpname+'|'+item.restcode) !== grp; });
        renderLeftTable(); renderRightTable();
        if (!selectedItems.length) $('#saveBtn2').hide();
    });

    // ── Save to Catalog ──────────────────────────────────────────────────
    $('#saveBtn2').on('click', function () {
        var catalogname = $.trim($('#catalogname').val());
        if (!catalogname) { pushNotify('error', 'Catalog Master', 'Please enter Catalog Name.', 'fade', 3000, '', '', ''); $('#catalogname').focus(); return; }
        if (!selectedItems.length) { pushNotify('error', 'Catalog Master', 'No items to save.', 'fade', 3000, '', '', ''); return; }
        $('.mlimit-input').each(function () {
            var grp = $(this).data('grp'), val = parseInt($(this).val()) || 0;
            $.each(selectedItems, function (i, item) { if ((item.grpname+'|'+item.restcode) === grp) item.mlimit = val; });
        });
        var restcode = selectedItems[0].restcode;
        $('#saveBtn2').prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Saving...');
        $.ajax({
            url: '{{ route("catalogmaster.save") }}', method: 'POST', contentType: 'application/json',
            data: JSON.stringify({ _token: CSRF, catalogname: catalogname, restcode: restcode, items: selectedItems }),
            success: function (res) {
                if (res.success) { pushNotify('success', 'Catalog Master', res.message, 'fade', 3000, '', '', ''); location.reload(); }
                else { pushNotify('error', 'Catalog Master', res.message, 'fade', 3000, '', '', ''); $('#saveBtn2').prop('disabled', false).html('<i class="fa-solid fa-floppy-disk"></i> Save to Catalog'); }
            },
            error: function (xhr) {
                var msg = xhr.responseJSON && xhr.responseJSON.message ? xhr.responseJSON.message : 'Save failed.';
                pushNotify('error', 'Catalog Master', msg, 'fade', 3000, '', '', '');
                $('#saveBtn2').prop('disabled', false).html('<i class="fa-solid fa-floppy-disk"></i> Save to Catalog');
            }
        });
    });

    // ── Edit catalog button → upar wala form fill karo ─────────────────
    $(document).on('click', '.editCatalogBtn', function (e) {
        e.stopPropagation();
        var btn      = $(this);
        var catname  = btn.data('name');
        var restcode = btn.data('restcode');
        var items    = btn.data('items') || [];

        // Catalog Name fill karo — readonly taaki galti se change na ho
        $('#catalogname').val(catname).prop('readonly', true).css({'background':'#f0f0f0','color':'#555'});
        $('#itemgroup').val('');

        // selectedItems mein existing items load karo
        selectedItems = [];
        $.each(items, function (i, item) {
            selectedItems.push({
                itemcode:    item.itemcode,
                itemname:    item.itemname,
                itemcatcode: item.itemcode,
                restcode:    restcode,
                grpname:     (item.itemgroupname && item.itemgroupname !== '-') ? item.itemgroupname : '',
                mlimit:      item.mlimit || 0
            });
        });

        renderLeftTable();
        renderRightTable();
        $('#saveBtn2').show().html('<i class="fa-solid fa-floppy-disk"></i> Update Catalog');
        $('#clearEditBtn').show();

        // Scroll to top
        $('html, body').animate({ scrollTop: 0 }, 300);
    });

    // ── Clear / New — edit mode se bahar niklo ────────────────────────────
    $('#clearEditBtn').on('click', function () {
        selectedItems = [];
        $('#catalogname').val('').prop('readonly', false).css({'background':'','color':''});
        $('#itemgroup').val('');
        renderLeftTable();
        renderRightTable();
        $('#saveBtn2').hide();
        $('#clearEditBtn').hide();
    });

    // ── Delete single item row ────────────────────────────────────────────
    $(document).on('click', '.deleteRowBtn', function () {
        var sn = $(this).data('sn');
        if (!confirm('Delete this item from catalog?')) return;
        $.ajax({
            url: '{{ route("catalogmaster.delete") }}',
            method: 'POST',
            data: { _token: CSRF, sn: sn },
            success: function (res) {
                if (res.success) {
                    pushNotify('success', 'Catalog Master', res.message, 'fade', 3000, '', '', '');
                    $('#row-' + sn).remove();
                } else {
                    pushNotify('error', 'Catalog Master', res.message, 'fade', 3000, '', '', '');
                }
            }
        });
    });

    // ── Print catalog — contributionreport jaisa format ─────────────────
    $(document).on('click', '.printCatalogBtn', function (e) {
        e.stopPropagation();
        var name     = $(this).data('name');
        var restcode = $(this).data('restcode');
        var url = '{{ route("catalogmaster.print") }}'
                + '?name='      + encodeURIComponent(name)
                + '&restcode='  + encodeURIComponent(restcode);
        window.open(url, '_blank');
    });

    // ── Delete entire catalog ─────────────────────────────────────────────
    $(document).on('click', '.deleteCatalogBtn', function () {
        var catname  = $(this).data('name');
        var restcode = $(this).data('restcode');
        if (!confirm('Delete catalog "' + catname + '" and all its items?')) return;
        $.ajax({
            url: '{{ route("catalogmaster.deleteall") }}',
            method: 'POST',
            data: { _token: CSRF, catalogname: catname, restcode: restcode },
            success: function (res) {
                if (res.success) {
                    pushNotify('success', 'Catalog Master', res.message, 'fade', 3000, '', '', '');
                    location.reload();
                } else {
                    pushNotify('error', 'Catalog Master', res.message, 'fade', 3000, '', '', '');
                }
            }
        });
    });

    function escHtml(str) {
        if (str === null || str === undefined) return '';
        return String(str).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/"/g,'&quot;');
    }
});
</script>

@endsection
