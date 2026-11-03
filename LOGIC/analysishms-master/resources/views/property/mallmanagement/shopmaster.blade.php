@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title font-weight-bold mb-3">Shop Master</h4>
                            <form class="form" name="shopmasterform" id="shopmasterform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="shopname">Shop Name</label>
                                        <input type="text" name="shopname" id="shopname" class="form-control" maxlength="150"
                                            placeholder="e.g. RELIANCE FRESH"
                                            oninput="this.value = this.value.toUpperCase()">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="floorid">Floor</label>
                                        <select id="floorid" name="floorid" class="form-control">
                                            <option value="">Select</option>
                                            @if (isset($floors))
                                                @foreach ($floors as $floor)
                                                    <option value="{{ $floor->code }}">{{ $floor->name }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="shoptype">Shop Type</label>
                                        <select id="shoptype" name="shoptype" class="form-control">
                                            <option value="">Select</option>
                                            @foreach($unittypes as $ut)
                                                <option value="{{ $ut->typename }}">{{ $ut->typename }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="businesscategory">Business Category</label>
                                        <input type="text" name="businesscategory" id="businesscategory" class="form-control"
                                            maxlength="100" placeholder="e.g. GROCERY"
                                            oninput="this.value = this.value.toUpperCase()">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="carpetarea">Carpet Area</label>
                                        <input type="number" step="0.01" min="0" name="carpetarea" id="carpetarea" class="form-control"
                                            placeholder="0.00">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="builtuparea">Built-up Area</label>
                                        <input type="number" step="0.01" min="0" name="builtuparea" id="builtuparea" class="form-control"
                                            placeholder="0.00">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="chargeablearea">Chargeable Area</label>
                                        <input type="number" step="0.01" min="0" name="chargeablearea" id="chargeablearea" class="form-control"
                                            placeholder="0.00">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="areaunit">Area Unit</label>
                                        <select id="areaunit" name="areaunit" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($unitdata as $ud)
                                                <option value="{{ $ud->name }}">{{ $ud->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="frontage">Frontage</label>
                                        <input type="number" step="0.01" min="0" name="frontage" id="frontage" class="form-control"
                                            placeholder="0.00">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="ceilingheight">Ceiling Height</label>
                                        <input type="number" step="0.01" min="0" name="ceilingheight" id="ceilingheight" class="form-control"
                                            placeholder="0.00">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="shopstatus">Shop Status</label>
                                        <select id="shopstatus" name="shopstatus" class="form-control">
                                            <option value="VACANT">VACANT</option>
                                            <option value="OCCUPIED">OCCUPIED</option>
                                            <option value="MAINTENANCE">MAINTENANCE</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="electricitymeterno">Electricity Meter No</label>
                                        <input type="text" name="electricitymeterno" id="electricitymeterno" class="form-control"
                                            maxlength="50" oninput="this.value = this.value.toUpperCase()">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="activeyn">Active Status</label>
                                        <select id="activeyn" name="activeyn" class="form-control">
                                            <option value="1">Active</option>
                                            <option value="0">Inactive</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="mt-4">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </form>
                        </div>

                        <div class="card-body">
                            <div style="display: flex; gap: 10px; margin-bottom: 15px;">
                                <button id="printBtn" class="btn btn-primary">
                                    <i class="fas fa-print"></i> Print Report
                                </button>
                                <button id="exportExcelBtn" class="btn btn-success">
                                    <i class="fas fa-file-excel"></i> Export to Excel
                                </button>
                            </div>
                            <div class="table-responsive">
                                <table id="shopmasterTable" class="table table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Shop Name</th>
                                            <th>Floor</th>
                                            <th>Shop Type</th>
                                            <th>Business Category</th>
                                            <th>Carpet Area</th>
                                            <th>Built-up Area</th>
                                            <th>Chargeable Area</th>
                                            <th>Area Unit</th>
                                            <th>Frontage</th>
                                            <th>Ceiling Height</th>
                                            <th>Shop Status</th>
                                            <th>Electricity Meter No</th>
                                            <th>Active</th>
                                            <th>Action</th>
                                            <th class="none">sn_hidden</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn1 = 1; @endphp
                                        @foreach ($data as $row)
                                            <tr>
                                                <td>{{ $sn1 }}</td>
                                                <td>{{ $row->shopname }}</td>
                                                <td>{{ $row->floorname ?? $row->floorid ?? '-' }}</td>
                                                <td>{{ $row->shoptype }}</td>
                                                <td>{{ $row->businesscategory }}</td>
                                                <td>{{ $row->carpetarea }}</td>
                                                <td>{{ $row->builtuparea }}</td>
                                                <td>{{ $row->chargeablearea }}</td>
                                                <td>{{ $row->areaunit }}</td>
                                                <td>{{ $row->frontage }}</td>
                                                <td>{{ $row->ceilingheight }}</td>
                                                <td>{{ $row->shopstatus }}</td>
                                                <td>{{ $row->electricitymeterno }}</td>
                                                <td>{{ $row->activeyn == 1 ? 'Active' : 'Inactive' }}</td>
                                                <td class="ins">
                                                    <button type="button" class="btn btn-success editBtn btn-sm" data-sn="{{ $row->id }}" data-floorid="{{ $row->floorid }}" data-shopcode="{{ $row->shopcode }}" data-shopname="{{ $row->shopname }}" data-shoptype="{{ $row->shoptype }}" data-businesscategory="{{ $row->businesscategory }}" data-carpetarea="{{ $row->carpetarea }}" data-builtuparea="{{ $row->builtuparea }}" data-chargeablearea="{{ $row->chargeablearea }}" data-areaunit="{{ $row->areaunit }}" data-frontage="{{ $row->frontage }}" data-ceilingheight="{{ $row->ceilingheight }}" data-shopstatus="{{ $row->shopstatus }}" data-electricitymeterno="{{ $row->electricitymeterno }}" data-activeyn="{{ $row->activeyn }}">
                                                        <i class="fa-regular fa-pen-to-square"></i> Edit
                                                    </button>
                                                    <button type="button" class="btn btn-danger deleteBtn btn-sm" data-sn="{{ $row->id }}" data-name="{{ $row->shopname }}">
                                                        <i class="fa-solid fa-trash"></i> Delete
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
                    <h5 class="modal-title" id="updateModalLabel">Edit Shop Master</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" name="shopmasterupdateform" id="shopmasterupdateform">
                        @csrf
                        <input type="hidden" id="updatesn" name="sn">

                        <div class="row">
                            <div class="col-md-4">
                                <label for="updateshopname">Shop Name</label>
                                <input type="text" class="form-control" id="updateshopname" name="shopname" maxlength="150"
                                    oninput="this.value = this.value.toUpperCase()">
                            </div>
                            <div class="col-md-4">
                                <label for="updatefloorid">Floor</label>
                                <select id="updatefloorid" name="floorid" class="form-control">
                                    <option value="">Select</option>
                                    @if (isset($floors))
                                        @foreach ($floors as $floor)
                                            <option value="{{ $floor->code }}">{{ $floor->name }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updateshoptype">Shop Type</label>
                                <select id="updateshoptype" name="shoptype" class="form-control">
                                    <option value="">Select</option>
                                    @foreach($unittypes as $ut)
                                        <option value="{{ $ut->typename }}">{{ $ut->typename }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updatebusinesscategory">Business Category</label>
                                <input type="text" class="form-control" id="updatebusinesscategory" name="businesscategory"
                                    maxlength="100" oninput="this.value = this.value.toUpperCase()">
                            </div>
                            <div class="col-md-4">
                                <label for="updatecarpetarea">Carpet Area</label>
                                <input type="number" step="0.01" min="0" class="form-control" id="updatecarpetarea" name="carpetarea">
                            </div>
                            <div class="col-md-4">
                                <label for="updatebuiltuparea">Built-up Area</label>
                                <input type="number" step="0.01" min="0" class="form-control" id="updatebuiltuparea" name="builtuparea">
                            </div>
                            <div class="col-md-4">
                                <label for="updatechargeablearea">Chargeable Area</label>
                                <input type="number" step="0.01" min="0" class="form-control" id="updatechargeablearea" name="chargeablearea">
                            </div>
                            <div class="col-md-4">
                                <label for="updateareaunit">Area Unit</label>
                                <select id="updateareaunit" name="areaunit" class="form-control">
                                    <option value="">Select</option>
                                    @foreach ($unitdata as $ud)
                                        <option value="{{ $ud->name }}">{{ $ud->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updatefrontage">Frontage</label>
                                <input type="number" step="0.01" min="0" class="form-control" id="updatefrontage" name="frontage">
                            </div>
                            <div class="col-md-4">
                                <label for="updateceilingheight">Ceiling Height</label>
                                <input type="number" step="0.01" min="0" class="form-control" id="updateceilingheight" name="ceilingheight">
                            </div>
                            <div class="col-md-4">
                                <label for="updateshopstatus">Shop Status</label>
                                <select id="updateshopstatus" name="shopstatus" class="form-control">
                                    <option value="VACANT">VACANT</option>
                                    <option value="OCCUPIED">OCCUPIED</option>
                                    <option value="MAINTENANCE">MAINTENANCE</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updateelectricitymeterno">Electricity Meter No</label>
                                <input type="text" class="form-control" id="updateelectricitymeterno" name="electricitymeterno"
                                    maxlength="50" oninput="this.value = this.value.toUpperCase()">
                            </div>
                            <div class="col-md-4">
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

            if (!$.fn.DataTable.isDataTable('#shopmasterTable')) {
                new DataTable('#shopmasterTable', {
                    ordering: true,
                    order: [],
                    pageLength: 25,
                    columnDefs: [{ targets: [15], visible: false }]
                });
            }

            $('#shopmasterform').submit(function (e) {
                e.preventDefault();
                var btn = $('#submitBtn');
                btn.prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Saving...');

                $.ajax({
                    url: '{{ url("submitshopmaster") }}',
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

            $(document).on('click', '.editBtn', function () {
                $('#updatesn').val($(this).data('sn'));
                var floorid = $(this).data('floorid');
                var $floorSelect = $('#updatefloorid');
                if (floorid && $floorSelect.find('option[value="' + String(floorid) + '"]').length) {
                    $floorSelect.val(String(floorid));
                } else {
                    $floorSelect.val('');
                }
                $('#updateshopname').val($(this).data('shopname'));
                $('#updateshoptype').val($(this).data('shoptype'));
                $('#updatebusinesscategory').val($(this).data('businesscategory'));
                $('#updatecarpetarea').val($(this).data('carpetarea'));
                $('#updatebuiltuparea').val($(this).data('builtuparea'));
                $('#updatechargeablearea').val($(this).data('chargeablearea'));
                $('#updateareaunit').val($(this).data('areaunit'));
                $('#updatefrontage').val($(this).data('frontage'));
                $('#updateceilingheight').val($(this).data('ceilingheight'));
                $('#updateshopstatus').val($(this).data('shopstatus'));
                $('#updateelectricitymeterno').val($(this).data('electricitymeterno'));
                $('#updateactiveyn').val($(this).data('activeyn') == 1 ? '1' : '0');
                $('#updateModal').modal('show');
            });

            $('#shopmasterupdateform').submit(function (e) {
                e.preventDefault();
                var btn = $('#updateBtn');
                btn.prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Updating...');

                $.ajax({
                    url: '{{ url("updateshopmaster") }}',
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

            $(document).on('click', '.deleteBtn', function () {
                var sn = $(this).data('sn');
                var name = $(this).data('name');

                Swal.fire({
                    title: 'Delete Shop?',
                    text: 'Are you sure you want to delete "' + name + '"?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: '{{ url("deleteshopmaster") }}/' + sn,
                            method: 'GET',
                            success: function (response) {
                                if (response.success) {
                                    Swal.fire({
                                        icon: 'success',
                                        title: 'Deleted',
                                        text: response.message,
                                        timer: 2000,
                                        showConfirmButton: false
                                    }).then(() => {
                                        window.location.reload();
                                    });
                                } else {
                                    Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                                }
                            },
                            error: function () {
                                Swal.fire({ icon: 'error', title: 'Error', text: 'Delete failed.' });
                            }
                        });
                    }
                });
            });
        });

        document.getElementById('exportExcelBtn').addEventListener('click', function() {
            window.location.href = '{{ route("exportshopmaster") }}';
        });

        document.getElementById('printBtn').addEventListener('click', function() {
            window.open('{{ route("printshopmaster") }}', '_blank');
        });
    </script>
@endsection
