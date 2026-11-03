@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title font-weight-bold mb-3">Party Location</h4>
                            <form class="form" name="partylocform" id="partylocform" method="POST">
                                @csrf

                                <input type="hidden" id="locationsjson" value='{!! json_encode($locations) !!}'>

                                <div class="row">
                                    <div class="col-lg-4 col-md-6 col-12">
                                        <label class="col-form-label" for="tenantcode">Party Name <span class="text-danger">*</span></label>
                                        <select id="tenantcode" name="tenantcode" class="form-control" required>
                                            <option value="">-- Select Party --</option>
                                            @foreach ($parties as $p)
                                                <option value="{{ $p->sub_code }}">{{ $p->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-12">
                                        <label class="col-form-label" for="servicecode">Service <span class="text-danger">*</span></label>
                                        <select id="servicecode" name="servicecode" class="form-control" required>
                                            <option value="">-- Select Service --</option>
                                            @foreach ($services as $s)
                                                <option value="{{ $s->chargecode }}">{{ $s->chargename }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-between align-items-center mt-3" style="max-width: 540px;">
                                    <label class="mb-0 font-weight-bold">Locations (Shops)</label>
                                    <button type="button" id="addrowBtn" class="btn btn-sm btn-light border">
                                        <i class="fa fa-plus"></i> Add Row
                                    </button>
                                </div>
                                <div class="table-responsive mt-2" style="max-width: 540px;">
                                    <table class="table table-bordered mb-0" id="partylocRows">
                                        <thead class="thead-light text-muted" style="font-size:12px;">
                                            <tr>
                                                <th style="width:50px;">S.No.</th>
                                                <th style="width:330px;">Location (Shop)</th>
                                                <th style="width:60px;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>

                                <div class="mt-4">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </form>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="partylocTable" class="table table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Party Name</th>
                                            <th>Service</th>
                                            <th>Location</th>
                                            <th>Active</th>
                                            <th>Action</th>
                                            <th class="none">sn_hidden</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn1 = 1; @endphp
                                        @foreach ($data as $row)
                                            <tr>
                                                <td>{{ $row->sno }}</td>
                                                <td>{{ $row->partyname }}</td>
                                                <td>{{ $row->servicename }}</td>
                                                <td>{{ $row->shopname }} ({{ $row->floorname }})</td>
                                                <td>
                                                    @if($row->activeyn == 1)
                                                        <span class="badge badge-success">Active</span>
                                                    @else
                                                        <span class="badge badge-danger">Inactive</span>
                                                    @endif
                                                </td>
                                                <td class="ins">
                                                    <button type="button" class="btn btn-success editBtn btn-sm" data-sn="{{ $row->id }}" data-sno="{{ $row->sno }}" data-tenantcode="{{ $row->tenantcode }}" data-servicecode="{{ $row->servicecode }}" data-shopcode="{{ $row->shopcode }}" data-activeyn="{{ $row->activeyn }}">
                                                        <i class="fa-regular fa-pen-to-square"></i> Edit
                                                    </button>
                                                </td>
                                                <td class="none">{{ $row->id }}</td>
                                            </tr>
                                            @php $sn1++; @endphp
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Edit Modal --}}
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Party Location</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" name="partylocupdateform" id="partylocupdateform">
                        @csrf
                        <input type="hidden" id="updatesn" name="sn">

                        <div class="row">
                            <div class="col-md-6">
                                <label for="updatetenantcode">Party Name <span class="text-danger">*</span></label>
                                <select class="form-control" id="updatetenantcode" name="tenantcode" required>
                                    <option value="">-- Select Party --</option>
                                    @foreach ($parties as $p)
                                        <option value="{{ $p->sub_code }}">{{ $p->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="updateservicecode">Service <span class="text-danger">*</span></label>
                                <select class="form-control" id="updateservicecode" name="servicecode" required>
                                    <option value="">-- Select Service --</option>
                                    @foreach ($services as $s)
                                        <option value="{{ $s->chargecode }}">{{ $s->chargename }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="updateshopcode">Location (Shop) <span class="text-danger">*</span></label>
                                <select class="form-control" id="updateshopcode" name="shopcode" required>
                                    <option value="">-- Select Location --</option>
                                    @foreach ($locations as $l)
                                        <option value="{{ $l->shopcode }}">{{ $l->shopname }} ({{ $l->floorname }})</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="updatesno">S.No. <span class="text-danger">*</span></label>
                                <input type="number" min="1" class="form-control" id="updatesno" name="sno" required>
                            </div>
                            <div class="col-md-6">
                                <label for="updateactiveyn">Active Status</label>
                                <select id="updateactiveyn" name="activeyn" class="form-control">
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-center mt-3">
                            <button id="updateBtn" type="submit" class="btn btn-primary">
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
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);

            // ─── Dynamic Rows (sirf Location/Shop) ───
            var locations = $('#locationsjson').val() ? JSON.parse($('#locationsjson').val()) : [];

            function shopOptions() {
                var h = '<option value="">-- Select Location --</option>';
                locations.forEach(function (l) {
                    h += '<option value="' + l.shopcode + '">' + l.shopname + ' (' + l.floorname + ')</option>';
                });
                return h;
            }

            function renumber() {
                $('#partylocRows tbody tr').each(function (i) {
                    $(this).find('.rowno').text(i + 1);
                });
            }

            function addRow() {
                var tr = '<tr>' +
                    '<td class="rowno"></td>' +
                    '<td><select name="shopcode[]" class="form-control form-control-sm" required>' + shopOptions() + '</select></td>' +
                    '<td><button type="button" class="btn btn-danger btn-sm delrow" title="Remove"><i class="fa fa-times"></i></button></td>' +
                    '</tr>';
                $('#partylocRows tbody').append(tr);
                renumber();
            }

            $('#addrowBtn').on('click', function () {
                addRow();
            });

            $(document).on('click', '.delrow', function () {
                $(this).closest('tr').remove();
                renumber();
            });

            addRow();

            if (!$.fn.DataTable.isDataTable('#partylocTable')) {
                new DataTable('#partylocTable', {
                    ordering: true,
                    order: [],
                    pageLength: 25,
                    columnDefs: [{ targets: [6], visible: false }]
                });
            }

            $('#partylocform').submit(function (e) {
                e.preventDefault();
                var btn = $('#submitBtn');
                btn.prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Saving...');

                $.ajax({
                    url: '{{ url("submittenantlocation") }}',
                    method: 'POST',
                    data: $(this).serialize(),
                    success: function (response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: response.message,
                                timer: 2000,
                                showConfirmButton: false
                            }).then(() => {
                                window.location.reload();
                            });
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                            btn.prop('disabled', false).html('Submit <i class="fa-solid fa-file-export"></i>');
                        }
                    },
                    error: function (xhr) {
                        let msg = 'Something went wrong.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            msg = xhr.responseJSON.message;
                        } else if (xhr.responseJSON && xhr.responseJSON.errors) {
                            msg = Object.values(xhr.responseJSON.errors).flat().join(', ');
                        }
                        Swal.fire({ icon: 'error', title: 'Error', text: msg });
                        btn.prop('disabled', false).html('Submit <i class="fa-solid fa-file-export"></i>');
                    }
                });
            });

            $('.editBtn').click(function () {
                $('#updatesn').val($(this).data('sn'));
                $('#updatesno').val($(this).data('sno'));
                $('#updatetenantcode').val($(this).data('tenantcode'));
                $('#updateservicecode').val($(this).data('servicecode'));
                $('#updateshopcode').val($(this).data('shopcode'));
                $('#updateactiveyn').val($(this).data('activeyn') == 1 ? '1' : '0');
                $('#updateModal').modal('show');
            });

            $('#partylocupdateform').submit(function (e) {
                e.preventDefault();
                var btn = $('#updateBtn');
                btn.prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Updating...');

                $.ajax({
                    url: '{{ url("updatetenantlocation") }}',
                    method: 'POST',
                    data: $(this).serialize(),
                    success: function (response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: response.message,
                                timer: 2000,
                                showConfirmButton: false
                            }).then(() => {
                                window.location.reload();
                            });
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                            btn.prop('disabled', false).html('Update <i class="fa-solid fa-file-export"></i>');
                        }
                    },
                    error: function (xhr) {
                        let msg = 'Something went wrong.';
                        if (xhr.responseJSON && xhr.responseJSON.errors) {
                            msg = Object.values(xhr.responseJSON.errors).flat().join(', ');
                        }
                        Swal.fire({ icon: 'error', title: 'Error', text: msg });
                        btn.prop('disabled', false).html('Update <i class="fa-solid fa-file-export"></i>');
                    }
                });
            });

            });
    </script>
@endsection