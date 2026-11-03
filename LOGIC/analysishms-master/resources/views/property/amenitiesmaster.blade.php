@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')

<style>
    .type-pill { display: none; }
    .type-pill + label {
        cursor: pointer;
        padding: 8px 28px;
        border: 2px solid #ced4da;
        border-radius: 6px;
        font-size: 15px;
        font-weight: 700;
        color: #212529;
        background: #fff;
        transition: all .15s;
        user-select: none;
        margin-right: 10px;
    }
    .type-pill + label:hover { border-color: #212529; background: #f8f9fa; }
    .type-pill[value="Linen"]:checked + label     { background: #007bff; border-color: #007bff; color: #fff; }
    .type-pill[value="Amenities"]:checked + label { background: #28a745; border-color: #28a745; color: #fff; }
    .type-pill[value="Chemical"]:checked + label  { background: #dc3545; border-color: #dc3545; color: #fff; }

    .item-badge {
        display: inline-flex;
        align-items: center;
        background: #e2e6ea;
        border: 1px solid #adb5bd;
        border-radius: 4px;
        padding: 5px 10px 5px 14px;
        font-size: 14px;
        font-weight: 600;
        color: #212529;
        margin: 4px 6px 4px 0;
    }
    .item-badge .rm-btn {
        background: none; border: none;
        padding: 0 0 0 8px; font-size: 18px;
        font-weight: 700; line-height: 1;
        color: #6c757d; cursor: pointer;
    }
    .item-badge .rm-btn:hover { color: #dc3545; }

    #itemSelectWrap { display: none; }

    .th-linen     { background: #007bff !important; color: #fff !important; }
    .th-amenities { background: #28a745 !important; color: #fff !important; }
    .th-chemical  { background: #dc3545 !important; color: #fff !important; }

    .srno-input {
        width: 70px; font-size: 13px; padding: 3px 6px;
        border: 1px solid #adb5bd; border-radius: 3px;
        margin-left: 8px; text-align: center;
    }
</style>

<div class="content-body">
    <div class="container-fluid">

        {{-- Entry Card --}}
        <div class="card">
            <div class="card-body">
                <form id="amenitiesForm" autocomplete="off">
                    @csrf
                    <input type="hidden" name="type" id="selectedType">

                    {{-- Type --}}
                    <div class="row align-items-center mb-3">
                        <div class="col-md-2">
                            <label class="col-form-label font-weight-bold">
                                Type <span class="text-danger">*</span>
                            </label>
                        </div>
                        <div class="col-md-10">
                            <input class="type-pill" type="checkbox" id="chkLinen" value="Linen">
                            <label for="chkLinen">Linen</label>
                            <input class="type-pill" type="checkbox" id="chkAmenities" value="Amenities">
                            <label for="chkAmenities">Amenities</label>
                            <input class="type-pill" type="checkbox" id="chkChemical" value="Chemical">
                            <label for="chkChemical">Chemical</label>
                        </div>
                    </div>

                    {{-- Item + Srno + Department --}}
                    <div id="itemSelectWrap">
                        <div class="row align-items-end mb-2">
                            <div class="col-md-1">
                                <label class="col-form-label font-weight-bold">Sno</label>
                            </div>
                            <div class="col-md-2">
                                <input type="number" id="srnoInput" class="form-control" placeholder="Sr. No." min="1">
                            </div>
                            <div class="col-md-1">
                                <label class="col-form-label font-weight-bold">Item <span class="text-danger">*</span></label>
                            </div>
                            <div class="col-md-3">
                                <select id="itemSelect" class="form-control">
                                    <option value="">Select</option>
                                    @foreach ($items as $it)
                                        <option value="{{ $it->code }}" data-name="{{ $it->name }}">{{ $it->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-auto">
                                <button type="button" id="addMoreBtn" class="btn btn-secondary">
                                    <i class="fa-solid fa-plus"></i> Add More
                                </button>
                            </div>
                        </div>

                        {{-- Department row --}}
                        <div class="row align-items-end mb-2">
                            <div class="col-md-2">
                                <label class="col-form-label font-weight-bold">Department</label>
                            </div>
                            <div class="col-md-3">
                                <select name="dcode" id="dcode" class="form-control">
                                    <option value="">Select Department</option>
                                    @foreach ($departments as $dept)
                                        <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        {{-- Added items badge row --}}
                        <div class="row mb-2" id="badgeRow" style="display:none;">
                            <div class="col-md-10 offset-md-2">
                                <div id="badgeWrap"></div>
                            </div>
                        </div>
                    </div>

                    {{-- Submit --}}
                    <div class="row" id="submitWrap" style="display:none;">
                        <div class="col-md-10 offset-md-2">
                            <button type="submit" id="submitBtn" class="btn btn-primary">
                                Submit <i class="fa-solid fa-file-export"></i>
                            </button>
                        </div>
                    </div>

                </form>
            </div>
        </div>

        {{-- Three Tables --}}
        <div class="row mt-3">

            {{-- Linen --}}
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-header th-linen d-flex align-items-center justify-content-between py-2">
                        <strong>Linen</strong>
                        <span class="badge badge-light text-dark">{{ $data->where('type','Linen')->count() }}</span>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-striped mb-0">
                            <thead class="bg-secondary text-white">
                                <tr>
                                    <th>Sno</th>
                                    <th>Item</th>
                                    <th>Department</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data->where('type', 'Linen') as $row)
                                    @php $deptName = $departments->firstWhere('dcode', $row->dcode ?? ''); @endphp
                                    <tr id="arow-{{ $row->id }}">
                                        <td>{{ $row->srno ?? '-' }}</td>
                                        <td>{{ $row->item_name }}</td>
                                        <td>{{ $deptName ? $deptName->name : '-' }}</td>
                                        <td>
                                            <button class="btn btn-success btn-sm editBtn"
                                                data-id="{{ $row->id }}"
                                                data-item="{{ $row->item }}"
                                                data-type="{{ $row->type }}"
                                                data-srno="{{ $row->srno ?? '' }}"
                                                data-dcode="{{ $row->dcode ?? '' }}"
                                                data-toggle="modal" data-target="#editModal">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </button>
                                            <button class="btn btn-danger btn-sm deleteBtn"
                                                data-id="{{ $row->id }}"
                                                data-item="{{ $row->item_name }}">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            {{-- Amenities --}}
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-header th-amenities d-flex align-items-center justify-content-between py-2">
                        <strong>Amenities</strong>
                        <span class="badge badge-light text-dark">{{ $data->where('type','Amenities')->count() }}</span>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-striped mb-0">
                            <thead class="bg-secondary text-white">
                                <tr>
                                    <th>Sno</th>
                                    <th>Item</th>
                                    <th>Department</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data->where('type', 'Amenities') as $row)
                                    @php $deptName = $departments->firstWhere('dcode', $row->dcode ?? ''); @endphp
                                    <tr id="arow-{{ $row->id }}">
                                        <td>{{ $row->srno ?? '-' }}</td>
                                        <td>{{ $row->item_name }}</td>
                                        <td>{{ $deptName ? $deptName->name : '-' }}</td>
                                        <td>
                                            <button class="btn btn-success btn-sm editBtn"
                                                data-id="{{ $row->id }}"
                                                data-item="{{ $row->item }}"
                                                data-type="{{ $row->type }}"
                                                data-srno="{{ $row->srno ?? '' }}"
                                                data-dcode="{{ $row->dcode ?? '' }}"
                                                data-toggle="modal" data-target="#editModal">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </button>
                                            <button class="btn btn-danger btn-sm deleteBtn"
                                                data-id="{{ $row->id }}"
                                                data-item="{{ $row->item_name }}">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            {{-- Chemical --}}
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-header th-chemical d-flex align-items-center justify-content-between py-2">
                        <strong>Chemical</strong>
                        <span class="badge badge-light text-dark">{{ $data->where('type','Chemical')->count() }}</span>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-striped mb-0">
                            <thead class="bg-secondary text-white">
                                <tr>
                                    <th>Sno</th>
                                    <th>Item</th>
                                    <th>Department</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data->where('type', 'Chemical') as $row)
                                    @php $deptName = $departments->firstWhere('dcode', $row->dcode ?? ''); @endphp
                                    <tr id="arow-{{ $row->id }}">
                                        <td>{{ $row->srno ?? '-' }}</td>
                                        <td>{{ $row->item_name }}</td>
                                        <td>{{ $deptName ? $deptName->name : '-' }}</td>
                                        <td>
                                            <button class="btn btn-success btn-sm editBtn"
                                                data-id="{{ $row->id }}"
                                                data-item="{{ $row->item }}"
                                                data-type="{{ $row->type }}"
                                                data-srno="{{ $row->srno ?? '' }}"
                                                data-dcode="{{ $row->dcode ?? '' }}"
                                                data-toggle="modal" data-target="#editModal">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </button>
                                            <button class="btn btn-danger btn-sm deleteBtn"
                                                data-id="{{ $row->id }}"
                                                data-item="{{ $row->item_name }}">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>

{{-- Edit Modal --}}
<div class="modal fade" id="editModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Amenities Item</h5>
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editForm">
                    @csrf
                    <input type="hidden" id="edit_id" name="id">
                    <input type="hidden" id="edit_type" name="type">
                    <div class="form-group">
                        <label class="col-form-label">Type</label>
                        <input type="text" class="form-control" id="edit_type_display" readonly>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Srno</label>
                        <input type="number" class="form-control" id="edit_srno" name="srno" placeholder="Sr. No." min="1">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Item <span class="text-danger">*</span></label>
                        <select name="item" id="edit_item" class="form-control" required>
                            <option value="">Select</option>
                            @foreach ($items as $it)
                                <option value="{{ $it->code }}">{{ $it->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Department</label>
                        <select name="dcode" id="edit_dcode" class="form-control">
                            <option value="">Select Department</option>
                            @foreach ($departments as $dept)
                                <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="text-center mt-3">
                        <button type="submit" id="updateBtn" class="btn btn-primary">
                            Update <i class="fa-solid fa-file-export"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {

    var pendingItems = [];

    // Type pill — only one active at a time
    $('.type-pill').on('change', function () {
        var isChecked = $(this).is(':checked');
        var val = $(this).val();

        $('.type-pill').not(this).prop('checked', false);

        if (isChecked) {
            $('#selectedType').val(val);
            $('#itemSelectWrap').slideDown(150);
            $('#itemSelect').val('');
            $('#srnoInput').val('');
        } else {
            $('#selectedType').val('');
            $('#itemSelectWrap').slideUp(150);
            $('#submitWrap').hide();
            $('#badgeRow').hide();
            pendingItems = [];
            renderBadges();
        }
    });

    // Add More
    $('#addMoreBtn').on('click', function () {
        var code = $('#itemSelect').val();
        var name = $('#itemSelect option:selected').data('name') || $('#itemSelect option:selected').text();
        var srno = $('#srnoInput').val().trim();

        if (!code) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Please select an item.' });
            return;
        }
        if (pendingItems.some(function (i) { return i.code === code; })) {
            Swal.fire({ icon: 'info', title: 'Already Added', text: '"' + name + '" is already in the list.' });
            return;
        }
        if (srno !== '' && pendingItems.some(function (i) { return i.srno === srno; })) {
            Swal.fire({ icon: 'warning', title: 'Duplicate Srno', text: 'Sr. No. ' + srno + ' is already used in the list.' });
            return;
        }

        pendingItems.push({ code: code, name: name, srno: srno });
        renderBadges();
        $('#itemSelect').val('');
        $('#srnoInput').val('');
        $('#submitWrap').show();
    });

    function renderBadges() {
        var wrap = $('#badgeWrap');
        wrap.empty();

        if (pendingItems.length === 0) {
            $('#badgeRow').hide();
            $('#submitWrap').hide();
            return;
        }

        $('#badgeRow').show();
        $.each(pendingItems, function (i, item) {
            var srnoText = item.srno !== '' ? ' <small class="text-muted">[Srno: ' + item.srno + ']</small>' : '';
            wrap.append(
                '<span class="item-badge">' +
                    item.name + srnoText +
                    ' <button type="button" class="rm-btn removePreviewBtn" data-itemcode="' + item.code + '" title="Remove" style="pointer-events:auto;">&times;</button>' +
                '</span>'
            );
        });
    }

    $(document).on('click', '.removePreviewBtn', function (e) {
        e.preventDefault();
        e.stopPropagation();
        var code = $(this).attr('data-itemcode');
        pendingItems = pendingItems.filter(function (i) { return i.code !== code; });
        renderBadges();
    });

    // Submit
    $('#amenitiesForm').on('submit', function (e) {
        e.preventDefault();

        var type = $('#selectedType').val();
        if (!type) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Please select a type.' });
            return;
        }
        if (pendingItems.length === 0) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Please add at least one item.' });
            return;
        }

        $('#submitBtn').prop('disabled', true);

        var postData = {
            _token: '{{ csrf_token() }}',
            type:   type,
            dcode: $('#dcode').val()
        };
        $.each(pendingItems, function (i, item) {
            postData['items[' + i + ']'] = item.code;
            postData['srnos[' + i + ']'] = item.srno;
        });

        $.ajax({
            url:  '{{ route("amenitiesstore") }}',
            type: 'POST',
            data: postData,
            success: function (res) {
                $('#submitBtn').prop('disabled', false);
                if (res.success) {
                    Swal.fire({ icon: 'success', title: 'Success', text: res.message,
                        timer: 1500, showConfirmButton: false
                    }).then(() => location.reload());
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#submitBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error', text: xhr.responseJSON?.message ?? 'Something went wrong.' });
            }
        });
    });

    // Edit modal populate
    $(document).on('click', '.editBtn', function () {
        var id = $(this).data('id') || $(this).data('sn');
        $('#edit_id').val(id);
        $('#edit_type').val($(this).data('type'));
        $('#edit_type_display').val($(this).data('type'));
        $('#edit_srno').val($(this).data('srno'));
        $('#edit_item').val($(this).data('item'));
        $('#edit_dcode').val($(this).data('dcode') || '');

        if (!$('#edit_item').val()) {
            var item = $(this).data('item');
            $('#edit_item option').each(function () {
                if ($(this).text().toUpperCase() === String(item).toUpperCase()) {
                    $('#edit_item').val($(this).val());
                    return false;
                }
            });
        }
    });

    // Update
    $('#editForm').on('submit', function (e) {
        e.preventDefault();

        if (!$('#edit_item').val()) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Please select an item.' });
            return;
        }

        $('#updateBtn').prop('disabled', true);

        $.ajax({
            url:  '{{ route("amenitiesupdate") }}',
            type: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                $('#updateBtn').prop('disabled', false);
                if (res.success) {
                    $('#editModal').modal('hide');
                    Swal.fire({ icon: 'success', title: 'Success', text: res.message,
                        timer: 1500, showConfirmButton: false
                    }).then(() => location.reload());
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#updateBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error', text: xhr.responseJSON?.message ?? 'Something went wrong.' });
            }
        });
    });

    // Delete
    $(document).on('click', '.deleteBtn', function () {
        var id   = $(this).data('id') || $(this).data('sn');
        var item = $(this).data('item');

        Swal.fire({
            title: 'Delete "' + item + '"?',
            text:  'This record will be permanently deleted.',
            icon:  'warning',
            showCancelButton:   true,
            confirmButtonColor: '#d33',
            cancelButtonColor:  '#6c757d',
            confirmButtonText:  'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url:  '{{ route("amenitiesdelete") }}',
                    type: 'POST',
                    data: { _token: '{{ csrf_token() }}', id: id },
                    success: function (res) {
                        if (res.success) {
                            Swal.fire({ icon: 'success', title: 'Deleted!', text: res.message,
                                timer: 1500, showConfirmButton: false
                            }).then(() => location.reload());
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                        }
                    },
                    error: function () {
                        Swal.fire({ icon: 'error', title: 'Error', text: 'Something went wrong.' });
                    }
                });
            }
        });
    });

    setTimeout(() => { $('.nav-control').trigger('click'); }, 500);

});
</script>

@endsection
