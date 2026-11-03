@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Guest Lookup</h4>
                    </div>
                    <div class="card-body">

                        <div class="row mb-3">
                            <div class="col-md-2">
                                <div class="form-check mt-4">
                                    <input class="form-check-input" type="checkbox" id="filterBday">
                                    <label class="form-check-label" for="filterBday">Birthday</label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check mt-4">
                                    <input class="form-check-input" type="checkbox" id="filterAnniversary">
                                    <label class="form-check-label" for="filterAnniversary">Anniversary</label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <label class="col-form-label">From Date</label>
                                <input type="date" id="fromDate" class="form-control">
                            </div>
                            <div class="col-md-2">
                                <label class="col-form-label">To Date</label>
                                <input type="date" id="toDate" class="form-control">
                            </div>
                            <div class="col-md-2 d-flex align-items-end">
                                <button type="button" id="applyFilter" class="btn btn-primary mr-2">
                                    Apply
                                </button>
                                <button type="button" id="resetFilter" class="btn btn-secondary">
                                    Reset
                                </button>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table id="guestTable" class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>SN</th>
                                        <th>Guest Name</th>
                                        <th>Last Checkin</th>
                                        <th>Last Visit</th>
                                        <th>Address 1</th>
                                        <th>Address 2</th>
                                        <th>City</th>
                                        <th>State</th>
                                        <th>Nation</th>
                                        <th>Birthday</th>
                                        <th>Anniversary</th>
                                        <th>Mobile</th>
                                        <th>Email</th>
                                        <th>Department</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .editable-cell {
        cursor: text;
        padding: 4px 6px;
        border: 1px solid transparent;
        border-radius: 3px;
        min-width: 80px;
        min-height: 24px;
        display: inline-block;
        outline: none;
    }
    .editable-cell[data-field="dob"]:empty::before,
    .editable-cell[data-field="anniversary"]:empty::before {
        content: 'YYYY-MM-DD';
        color: #aaa;
        font-size: 11px;
        font-style: italic;
    }
    .editable-cell[data-field="mobile_no"]:empty::before,
    .editable-cell[data-field="email_id"]:empty::before {
        content: 'Click to add';
        color: #aaa;
        font-size: 11px;
        font-style: italic;
    }
    .editable-cell:empty {
        border: 1px dashed #ccc;
        background-color: #fafafa;
    }
    .editable-cell:hover {
        border-color: #007bff;
        background-color: #e9f5ff;
    }
    .editable-cell:focus {
        border-color: #007bff;
        background-color: #fff;
        box-shadow: 0 0 3px rgba(0,123,255,0.3);
    }
    .editable-cell:focus::before {
        content: none;
    }
</style>

<script>
$(document).ready(function () {
    var allData = [];
    var table = new DataTable('#guestTable', {
        ordering: true,
        order: [],
        pageLength: 25,
        columns: [
            { data: 'sn_index', orderable: false },
            { data: 'GuestName' },
            { data: 'LastCheckin' },
            { data: 'LastVisit' },
            { data: 'Address1' },
            { data: 'Address2' },
            { data: 'City' },
            { data: 'State' },
            { data: 'Nation' },
            { data: 'BirthDay' },
            { data: 'Anniversary' },
            { data: 'mobile_no' },
            { data: 'email_id' },
            { data: 'Department' }
        ],
        columnDefs: [
            {
                // Address1 + Address2 combine
                targets: 4,
                render: function (data, type, row) {
                    if (type === 'display') {
                        var addr = (row.Address1 || '');
                        if (row.Address2) addr += (addr ? ', ' : '') + row.Address2;
                        return addr || '';
                    }
                    return data || '';
                }
            },
            {
                // Birthday — target 9 (ek shift)
                targets: 9,
                render: function (data, type, row) {
                    if (type === 'display') {
                        return '<span class="editable-cell" data-docid="' + row.docid + '" data-field="dob" contenteditable="true" title="Format: YYYY-MM-DD e.g. 1990-05-15">' + (data || '') + '</span>';
                    }
                    return data || '';
                }
            },
            {
                // Anniversary — target 10
                targets: 10,
                render: function (data, type, row) {
                    if (type === 'display') {
                        return '<span class="editable-cell" data-docid="' + row.docid + '" data-field="anniversary" contenteditable="true" title="Format: YYYY-MM-DD e.g. 2010-11-20">' + (data || '') + '</span>';
                    }
                    return data || '';
                }
            },
            {
                // Mobile — target 11
                targets: 11,
                render: function (data, type, row) {
                    if (type === 'display') {
                        return '<span class="editable-cell" data-docid="' + row.docid + '" data-field="mobile_no" contenteditable="true">' + (data || '') + '</span>';
                    }
                    return data || '';
                }
            },
            {
                // Email — target 12
                targets: 12,
                render: function (data, type, row) {
                    if (type === 'display') {
                        return '<span class="editable-cell" data-docid="' + row.docid + '" data-field="email_id" contenteditable="true">' + (data || '') + '</span>';
                    }
                    return data || '';
                }
            }
        ]
    });

    function loadData(fromDate, toDate) {
        return $.ajax({
            url: '{{ route("fetchguestlookup") }}',
            type: 'POST',
            data: {
                _token: '{{ csrf_token() }}',
                fromDate: fromDate || '',
                toDate: toDate || ''
            },
            success: function (res) {
                // Normalize all date fields to YYYY-MM-DD string
                function toYMD(val) {
                    if (!val || val === '0000-00-00') return null;
                    if (typeof val === 'string' && /^\d{4}-\d{2}-\d{2}$/.test(val)) return val;
                    if (typeof val === 'string' && val.length > 10) return val.substring(0, 10);
                    if (val instanceof Date) {
                        var y = val.getFullYear();
                        var m = String(val.getMonth() + 1).padStart(2, '0');
                        var d = String(val.getDate()).padStart(2, '0');
                        return y + '-' + m + '-' + d;
                    }
                    return null;
                }
                allData = res.map(function (item, index) {
                    item.sn_index    = index + 1;
                    item.BirthDay    = toYMD(item.BirthDay);
                    item.Anniversary = toYMD(item.Anniversary);
                    item.LastCheckin = toYMD(item['Last Checkin'] || item.LastCheckin);
                    item.LastVisit   = toYMD(item.LasVisit || item.LastVisit);
                    return item;
                });
                table.clear().rows.add(allData).draw();
            },
            error: function () {
                Swal.fire({ icon: 'error', title: 'Error', text: 'Failed to load guest data!' });
            }
        });
    }

    loadData();

    $(document).on('blur', '.editable-cell', function () {
        var cell   = $(this);
        var docid  = cell.data('docid');
        var field  = cell.data('field');
        var newVal = cell.text().trim();
        var oldVal = cell.data('original') !== undefined ? cell.data('original') : '';

        // Kuch change nahi hua toh AJAX mat bhejo
        if (newVal === oldVal) return;

        // Empty bhi save karo (null karne ke liye)
        $.ajax({
            url: '{{ route("updateguestfield") }}',
            type: 'POST',
            data: {
                _token: '{{ csrf_token() }}',
                docid:  docid,
                field:  field,
                value:  newVal
            },
            success: function (res) {
                if (res.success) {
                    cell.data('original', newVal);
                    // allData mein bhi update karo taaki filter bhi fresh rahe
                    var idx = allData.findIndex(function(r){ return r.docid == docid; });
                    if (idx !== -1) { allData[idx][field] = newVal; }
                    Swal.fire({ icon: 'success', title: 'Updated!', text: res.message, timer: 1500, showConfirmButton: false });
                } else {
                    cell.text(oldVal);
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                cell.text(oldVal);
                var msg = 'Update failed!';
                if (xhr.responseJSON && xhr.responseJSON.message) msg = xhr.responseJSON.message;
                if (xhr.status === 422 && xhr.responseJSON && xhr.responseJSON.errors) {
                    var errs = xhr.responseJSON.errors;
                    msg = Object.values(errs).flat().join(' ');
                }
                Swal.fire({ icon: 'error', title: 'Error ('+xhr.status+')', text: msg });
            }
        });
    });

    $(document).on('focus', '.editable-cell', function () {
        $(this).data('original', $(this).text().trim());
    });

    $(document).on('keydown', '.editable-cell', function (e) {
        if (e.key === 'Enter') {
            e.preventDefault();
            $(this).blur();
        }
    });

    $('#applyFilter').on('click', function () {
        var fromDate = $('#fromDate').val();
        var toDate   = $('#toDate').val();
        var bday     = $('#filterBday').is(':checked');
        var anniv    = $('#filterAnniversary').is(':checked');

        function toYMD(val) {
            if (!val || val === '0000-00-00') return null;
            if (typeof val === 'string' && /^\d{4}-\d{2}-\d{2}$/.test(val)) return val;
            if (typeof val === 'string' && val.length > 10) return val.substring(0, 10);
            if (val instanceof Date) {
                var y = val.getFullYear();
                var m = String(val.getMonth() + 1).padStart(2, '0');
                var d = String(val.getDate()).padStart(2, '0');
                return y + '-' + m + '-' + d;
            }
            return null;
        }

        function inRange(rawVal, from, to) {
            var dateStr = toYMD(rawVal);
            if (!dateStr) return false;
            if (from && to) return dateStr >= from && dateStr <= to;
            return true;
        }

        function applyAnniv(data) {
            var list = data;
            if (anniv) {
                list = list.filter(function (item) { return inRange(item.Anniversary, fromDate, toDate); });
            }
            list = list.map(function (item, i) { item.sn_index = i + 1; return item; });
            table.clear().rows.add(list).draw();
        }

        // Agar koi checkbox check nahi aur koi date nahi => sab dikhao
        if (!bday && !anniv && !fromDate && !toDate) {
            loadData().done(function (res) {
                allData = res.map(function (item, index) {
                    item.sn_index    = index + 1;
                    item.BirthDay    = toYMD(item.BirthDay);
                    item.Anniversary = toYMD(item.Anniversary);
                    item.LastCheckin = toYMD(item['Last Checkin'] || item.LastCheckin);
                    item.LastVisit   = toYMD(item.LasVisit || item.LastVisit);
                    return item;
                });
                table.clear().rows.add(allData).draw();
            });
            return;
        }

        // Birthday filter server-side (dates as per new query), anniversary client-side
        var sendFrom = bday ? fromDate : '';
        var sendTo   = bday ? toDate : '';
        loadData(sendFrom, sendTo).done(function (res) {
            allData = res.map(function (item, index) {
                item.sn_index    = index + 1;
                item.BirthDay    = toYMD(item.BirthDay);
                item.Anniversary = toYMD(item.Anniversary);
                item.LastCheckin = toYMD(item['Last Checkin'] || item.LastCheckin);
                item.LastVisit   = toYMD(item.LasVisit || item.LastVisit);
                return item;
            });
            applyAnniv(allData);
        });
    });

    $('#resetFilter').on('click', function () {
        $('#filterBday').prop('checked', false);
        $('#filterAnniversary').prop('checked', false);
        $('#fromDate').val('');
        $('#toDate').val('');
        loadData().done(function (res) {
            allData = res.map(function (item, index) {
                item.sn_index    = index + 1;
                item.BirthDay    = toYMD(item.BirthDay);
                item.Anniversary = toYMD(item.Anniversary);
                return item;
            });
            table.clear().rows.add(allData).draw();
        });
    });
});
</script>
@endsection
