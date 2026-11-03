@extends('property.layouts.main')
@section('main-container')
@include('cdns.datatable')

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">

                {{-- Insert Form --}}
                <div class="card">
                    <div class="card-body">
                        <form id="cleaningtypeform">
                            @csrf
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="col-form-label" for="name">Name <span class="text-danger">*</span></label>
                                    <input type="text" name="name" id="name" class="form-control"
                                        placeholder="e.g. DEEP CLEANING" required
                                        oninput="this.value = this.value.toUpperCase()">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="esttime">Estimated Time (HH:MM)</label>
                                    <input type="text" name="esttime" id="esttime" class="form-control"
                                        placeholder="00:20" maxlength="5"
                                        pattern="^([01]\d|2[0-3]):[0-5]\d$"
                                        title="24-hour format HH:MM (e.g. 14:30)"
                                        autocomplete="off"
                                        oninput="this.value=this.value.replace(/[^0-9:]/g,'')">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="dcode">Department</label>
                                    <select name="dcode" id="dcode" class="form-control">
                                        <option value="">Select Department</option>
                                        @foreach ($departments as $dept)
                                            <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mt-3">
                                <div class="col-lg-8">
                                    <button type="submit" id="submitBtn" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="table-responsive">
                        <table id="cleaningtypeTable"
                            class="table table-hover table-download-with-search table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sno.</th>
                                    <th>Name</th>
                                    <th>Est. Time</th>
                                    <th>Department</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $i => $row)
                                    <tr id="row-{{ $row->id }}">
                                        <td>{{ $i + 1 }}</td>
                                        <td>{{ $row->name }}</td>
                                        <td>{{ $row->esttime ? \Illuminate\Support\Str::substr($row->esttime, 0, 5) : '—' }}</td>
                                        <td>
                                            @php
                                                $deptName = isset($row->dcode) ? $departments->firstWhere('dcode', $row->dcode) : null;
                                            @endphp
                                            {{ $deptName ? $deptName->name : '-' }}
                                        </td>
                                        <td class="ins">
                                            <button class="btn btn-success btn-sm editBtn"
                                                data-sn="{{ $row->id }}"
                                                data-name="{{ $row->name }}"
                                                data-esttime="{{ $row->esttime ? \Illuminate\Support\Str::substr($row->esttime, 0, 5) : '' }}"
                                                data-dcode="{{ $row->dcode ?? '' }}"
                                                data-toggle="modal" data-target="#editModal">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </button>
                                            <button class="btn btn-danger btn-sm deleteBtn"
                                                data-sn="{{ $row->id }}">
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
                <h5 class="modal-title">Edit Cleaning Type</h5>
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editform">
                    @csrf
                    <input type="hidden" id="edit_sn" name="sn">
                    <div class="form-group">
                        <label class="col-form-label">Name <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="edit_name" name="name" required
                            oninput="this.value = this.value.toUpperCase()">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Estimated Time (HH:MM)</label>
                        <input type="text" class="form-control" id="edit_esttime" name="esttime"
                            placeholder="00:20" maxlength="5"
                            pattern="^([01]\d|2[0-3]):[0-5]\d$"
                            title="24-hour format HH:MM (e.g. 14:30)"
                            autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Department</label>
                        <select class="form-control" id="edit_dcode" name="dcode">
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

    new DataTable('#cleaningtypeTable', {
        ordering: true,
        order: [],
        pageLength: 25,
    });

    // ── INSERT ──────────────────────────────────────────────────────────────────
    $('#cleaningtypeform').on('submit', function (e) {
        e.preventDefault();
        $('#submitBtn').prop('disabled', true);

        $.ajax({
            url: '{{ route("submitcleaningtype") }}',
            type: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                $('#submitBtn').prop('disabled', false);
                if (res.success) {
                    Swal.fire({ icon: 'success', title: 'Success', text: res.message, timer: 1500, showConfirmButton: false })
                        .then(() => location.reload());
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
        $('#edit_name').val($(this).data('name'));
        var et = String($(this).data('esttime') || '');
        if (et.length > 5) et = et.substring(0, 5);
        $('#edit_esttime').val(et);
        $('#edit_dcode').val($(this).data('dcode') || '');
    });

    // ── TIME INPUT MASK (24hr HH:MM) ────────────────────────────────────────────
    function applyTimeMask(selector) {
        $(document).on('input', selector, function (e) {
            var value = this.value.replace(/[^0-9:]/g, '');
            if (value.length > 5) {
                value = value.substring(0, 5);
            }
            if (value.length === 3 && value.charAt(2) !== ':') {
                value = value.substring(0, 2) + ':' + value.substring(2);
            }
            this.value = value;
        });
        $(document).on('blur', selector, function () {
            var raw = this.value.trim();
            if (raw === '') return;
            var m = raw.match(/^(\d{1,2}):(\d{2})$/);
            if (m) {
                var hh = parseInt(m[1], 10);
                var mm = parseInt(m[2], 10);
                if (hh > 23 || mm > 59) {
                    this.value = '';
                    Swal.fire({ icon: 'warning', title: 'Invalid Time', text: 'Valid range: 00:00 to 23:59', timer: 1500, showConfirmButton: false });
                } else {
                    this.value = String(hh).padStart(2, '0') + ':' + String(mm).padStart(2, '0');
                }
            } else {
                this.value = '';
                Swal.fire({ icon: 'warning', title: 'Invalid Format', text: '24hr format use karo: HH:MM (e.g. 14:30)', timer: 1800, showConfirmButton: false });
            }
        });
    }
    applyTimeMask('#esttime');
    applyTimeMask('#edit_esttime');

    // ── UPDATE ──────────────────────────────────────────────────────────────────
    $('#editform').on('submit', function (e) {
        e.preventDefault();
        $('#updateBtn').prop('disabled', true);

        $.ajax({
            url: '{{ route("updatecleaningtype") }}',
            type: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                $('#updateBtn').prop('disabled', false);
                if (res.success) {
                    $('#editModal').modal('hide');
                    Swal.fire({ icon: 'success', title: 'Success', text: res.message, timer: 1500, showConfirmButton: false })
                        .then(() => location.reload());
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
        const sn = $(this).data('sn');
        Swal.fire({
            title: 'Are you sure?',
            text: 'This record will be permanently deleted.',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#6c757d',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '{{ route("deletecleaningtype") }}',
                    type: 'POST',
                    data: { _token: '{{ csrf_token() }}', sn: sn },
                    success: function (res) {
                        if (res.success) {
                            Swal.fire({ icon: 'success', title: 'Deleted!', text: res.message, timer: 1500, showConfirmButton: false })
                                .then(() => location.reload());
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

});
</script>

@endsection
