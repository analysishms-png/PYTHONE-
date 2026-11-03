@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">

                <div class="card">
                    <div class="card-body">
                        <form id="checklistform">
                            @csrf
                            <div id="checklistRows">
                                <div class="row align-items-end checklist-row mb-2">
                                    <div class="col-md-2 col-3">
                                        <label class="col-form-label" for="sno1">Sn</label>
                                        <input type="number" name="sno1" id="sno1"
                                            class="form-control row-sno" min="1" readonly
                                            value="{{ $nextSno }}">
                                    </div>
                                    <div class="col-md-4 col-9">
                                        <label class="col-form-label" for="checklistname1">
                                            Name <span class="text-danger">*</span>
                                        </label>
                                        <select name="checklistname1" id="checklistname1"
                                            class="form-control row-name">
                                            <option value="">Select</option>
                                            @foreach ($predefined as $pvalue)
                                                <option value="{{ $pvalue }}">{{ $pvalue }}</option>
                                            @endforeach
                                            <option value="__other__">Other (Add New)</option>
                                        </select>
                                        <input type="text"
                                            class="form-control mt-2 d-none othername-input"
                                            maxlength="25" placeholder="Type new name & press Enter"
                                            oninput="this.value = this.value.toUpperCase()">
                                    </div>
                                    <div class="col-md-4 col-9">
                                        <label class="col-form-label" for="department1">Department</label>
                                        <select name="department1" id="department1"
                                            class="form-control row-department">
                                            <option value="">Select Department</option>
                                            @foreach ($departments as $dept)
                                                <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-1 col-2 d-none remove-col" style="padding-top:32px;">
                                        <button type="button" class="btn btn-danger btn-sm remove-row-btn"
                                            title="Remove Row">
                                            <i class="fa-solid fa-minus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row mt-3">
                                <div class="col-lg-8">
                                    <button type="button" id="addMoreBtn" class="btn btn-success mr-2">
                                        Add More <i class="fa-solid fa-plus"></i>
                                    </button>
                                    <button type="submit" id="submitBtn" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="table-responsive">
                        <table id="checklistTable"
                            class="table table-hover table-download-with-search table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sn.</th>
                                    <th>Name</th>
                                    <th>Department</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $row)
                                    <tr id="row-{{ $row->id }}">
                                        <td>{{ $row->sno }}</td>
                                        <td>{{ $row->name }}</td>
                                        <td>
                                            @php
                                                $deptName = $departments->firstWhere('dcode', $row->dcode);
                                            @endphp
                                            {{ $deptName ? $deptName->name : '-' }}
                                        </td>
                                        <td class="ins">
                                            <button class="btn btn-success btn-sm editBtn"
                                                data-sn="{{ $row->id }}"
                                                data-sno="{{ $row->sno }}"
                                                data-name="{{ $row->name }}"
                                                data-dcode="{{ $row->dcode }}"
                                                data-toggle="modal" data-target="#editModal">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </button>
                                            <button class="btn btn-danger btn-sm deleteBtn"
                                                data-sn="{{ $row->id }}"
                                                data-name="{{ $row->name }}">
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
                <h5 class="modal-title">Edit Checklist Item</h5>
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editform">
                    @csrf
                    <input type="hidden" id="edit_sn" name="sn">
                    <div class="form-group mb-3">
                        <label class="col-form-label">Sn <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" id="edit_sno" name="sno"
                            min="1" required>
                    </div>
                    <div class="form-group mb-3">
                        <label class="col-form-label">Name <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="edit_name" name="name"
                            maxlength="25" required
                            oninput="this.value = this.value.toUpperCase()">
                    </div>
                    <div class="form-group mb-3">
                        <label class="col-form-label">Department</label>
                        <select class="form-control" id="edit_department" name="department">
                            <option value="">Select Department</option>
                            @foreach ($departments as $dept)
                                <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="text-center">
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

    // ── DataTable ───────────────────────────────────────────────────────────────
    new DataTable('#checklistTable', {
        ordering: true,
        order: [],
        pageLength: 25,
    });

    // ── ADD MORE ROWS ───────────────────────────────────────────────────────────
    var rowIndex         = 1;
    var nextSnoBase      = {{ $nextSno }};
    var baseNameHtml     = $('#checklistname1').html();
    var baseDeptHtml     = $('#department1').html();

    function renumberRows() {
        $('#checklistRows .checklist-row').each(function (i) {
            $(this).find('.row-sno').val(nextSnoBase + i);
        });
    }

    $('#addMoreBtn').on('click', function () {
        rowIndex++;
        var $row = $('#checklistRows .checklist-row:first').clone();

        $row.find('.row-sno')
            .attr({ name: 'sno' + rowIndex, id: 'sno' + rowIndex })
            .val(nextSnoBase + rowIndex - 1);

        $row.find('.row-name')
            .attr({ name: 'checklistname' + rowIndex, id: 'checklistname' + rowIndex })
            .html(baseNameHtml)
            .val('');

        $row.find('.row-department')
            .attr({ name: 'department' + rowIndex, id: 'department' + rowIndex })
            .html(baseDeptHtml)
            .val('');

        $row.find('.othername-input').val('').addClass('d-none');
        $row.find('label').removeAttr('for');

        // Show remove button on new row
        $row.find('.remove-col').removeClass('d-none');

        $('#checklistRows').append($row);
        renumberRows();

        updateRemoveButtons();
    });

    // ── REMOVE ROW ──────────────────────────────────────────────────────────────
    $(document).on('click', '.remove-row-btn', function () {
        $(this).closest('.checklist-row').remove();
        renumberRows();
        updateRemoveButtons();
    });

    function updateRemoveButtons() {
        var $rows = $('#checklistRows .checklist-row');
        if ($rows.length > 1) {
            $rows.find('.remove-col').removeClass('d-none');
        } else {
            $rows.find('.remove-col').addClass('d-none');
        }
    }

    // ── OTHER → NEW NAME INPUT ──────────────────────────────────────────────────
    $(document).on('change', '.row-name', function () {
        var $row = $(this).closest('.checklist-row');
        if ($(this).val() === '__other__') {
            $row.find('.othername-input').removeClass('d-none').trigger('focus');
        } else {
            $row.find('.othername-input').addClass('d-none');
        }
    });

    $(document).on('keydown', '.othername-input', function (e) {
        if (e.key === 'Enter') {
            e.preventDefault();
            $(this).trigger('change');
        }
    });

    $(document).on('change', '.othername-input', function () {
        var val  = $(this).val().trim().toUpperCase();
        var $sel = $(this).siblings('.row-name');

        if (val !== '') {
            var $existing = $sel.find('option').filter(function () {
                return this.value === val;
            });
            if (!$existing.length) {
                $('<option>').val(val).text(val)
                    .insertBefore($sel.find('option[value="__other__"]'));
            }
            $sel.val(val);
        } else {
            $sel.val('');
        }
        $(this).addClass('d-none');
    });

    // ── SUBMIT ──────────────────────────────────────────────────────────────────
    $('#checklistform').on('submit', function (e) {
        e.preventDefault();

        var pendingOther = false;
        $('.row-name').each(function () {
            if ($(this).val() === '__other__') {
                pendingOther = true;
            }
        });

        if (pendingOther) {
            Swal.fire({ icon: 'warning', title: 'Incomplete', text: 'Please complete the new name entry(s) first.' });
            return;
        }

        var hasAny = $('.row-name').filter(function () {
            return $(this).val() !== '';
        }).length > 0;

        if (!hasAny) {
            Swal.fire({ icon: 'warning', title: 'Required', text: 'Please select or enter at least one name.' });
            return;
        }

        $('#submitBtn').prop('disabled', true);

        $.ajax({
            url:  '{{ route("checkliststore") }}',
            type: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                $('#submitBtn').prop('disabled', false);
                if (res.success) {
                    Swal.fire({
                        icon: 'success', title: 'Success', text: res.message,
                        timer: 1500, showConfirmButton: false
                    }).then(() => location.reload());
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#submitBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error', text: xhr.responseJSON?.message ?? 'Something went wrong' });
            }
        });
    });

    // ── EDIT MODAL POPULATE ─────────────────────────────────────────────────────
    $(document).on('click', '.editBtn', function () {
        $('#edit_sn').val($(this).data('sn'));
        $('#edit_sno').val($(this).data('sno'));
        $('#edit_name').val($(this).data('name'));
        $('#edit_department').val($(this).data('dcode') || '');
    });

    // ── UPDATE ──────────────────────────────────────────────────────────────────
    $('#editform').on('submit', function (e) {
        e.preventDefault();
        $('#updateBtn').prop('disabled', true);

        $.ajax({
            url:  '{{ route("checklistupdate") }}',
            type: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                $('#updateBtn').prop('disabled', false);
                if (res.success) {
                    $('#editModal').modal('hide');
                    Swal.fire({
                        icon: 'success', title: 'Success', text: res.message,
                        timer: 1500, showConfirmButton: false
                    }).then(() => location.reload());
                } else {
                    Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                }
            },
            error: function (xhr) {
                $('#updateBtn').prop('disabled', false);
                Swal.fire({ icon: 'error', title: 'Error', text: xhr.responseJSON?.message ?? 'Something went wrong' });
            }
        });
    });

    // ── DELETE ──────────────────────────────────────────────────────────────────
    $(document).on('click', '.deleteBtn', function () {
        const sn   = $(this).data('sn');
        const name = $(this).data('name');

        Swal.fire({
            title: 'Delete "' + name + '"?',
            text:  'This record will be permanently deleted.',
            icon:  'warning',
            showCancelButton:   true,
            confirmButtonColor: '#d33',
            cancelButtonColor:  '#6c757d',
            confirmButtonText:  'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url:  '{{ route("checklistdelete") }}',
                    type: 'POST',
                    data: { _token: '{{ csrf_token() }}', sn: sn },
                    success: function (res) {
                        if (res.success) {
                            Swal.fire({
                                icon: 'success', title: 'Deleted!', text: res.message,
                                timer: 1500, showConfirmButton: false
                            }).then(() => location.reload());
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: res.message });
                        }
                    },
                    error: function () {
                        Swal.fire({ icon: 'error', title: 'Error', text: 'Something went wrong' });
                    }
                });
            }
        });
    });

    setTimeout(() => {
        $('.nav-control').trigger('click');
    }, 500);

});
</script>

@endsection
