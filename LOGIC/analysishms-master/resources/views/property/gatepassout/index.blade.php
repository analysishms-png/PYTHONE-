@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <!-- Form Section -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Gate Pass Out - Exit</h4>
                        </div>
                        <div class="card-body">
                            <div id="alertMessage"></div>
                            
                            <form id="gatePassForm">
                                @csrf
                                <input type="hidden" id="gatepass_id" name="gatepass_id">
                                <input type="hidden" id="form_method" value="store">
                                
                                <div class="row">
                                    <!-- Gate Pass No -->
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="gatepassno">Gate Pass No</label>
                                        <input type="text" id="gatepassno" class="form-control" value="{{ $nextGatePassNo }}" readonly>
                                    </div>

                                    <!-- Gate Pass Date -->
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="date">Date</label>
                                        <input type="text" id="date" class="form-control" value="{{ date('d-m-Y') }}" name="date" readonly>
                                    </div>

                                    <!-- Gate Pass Time -->
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="time">Time</label>
                                        <input type="text" id="time" class="form-control" value="{{ date('H:i:s') }}" readonly>
                                    </div>

                                    <!-- Type -->
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="type">Type <span class="text-danger">*</span></label>
                                        <select id="type" name="type" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Visitor">Visitor</option>
                                            <option value="Vendor">Vendor</option>
                                            <option value="Staff">Staff</option>
                                            <option value="Contract">Contractor</option>
                                            <option value="Courier">Courier</option>
                                            <option value="Material">Material</option>
                                            <option value="Outward">Outward</option>
                                        </select>
                                    </div>

                                    <!-- Visitor/Party Type -->
                                    <div class="col-md-3">
                                        <label class="col-form-label">Entry Type</label>
                                        <div>
                                            <input type="radio" name="visitor_type" id="visitor_type_visitor" value="visitor" checked> Visitor
                                            <input type="radio" name="visitor_type" id="visitor_type_party" value="party" class="ml-3"> Party
                                        </div>
                                    </div>

                                    <!-- Visitor Name -->
                                    <div class="col-md-3" id="visitor_name_div">
                                        <label class="col-form-label" for="visitiorname">Visitor Name</label>
                                        <input type="text" name="visitiorname" id="visitiorname" class="form-control" maxlength="35">
                                    </div>

                                    <!-- Party Code -->
                                    <div class="col-md-3" id="party_code_div" style="display: none;">
                                        <label class="col-form-label" for="partycode">Party</label>
                                        <select id="partycode" name="partycode" class="form-control">
                                            <option value="">Select</option>
                                            @foreach($parties as $party)
                                                <option value="{{ $party->sub_code }}">{{ $party->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <!-- Mobile No -->
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="mobileno">Mobile No</label>
                                        <input type="text" name="mobileno" id="mobileno" class="form-control" maxlength="15">
                                    </div>

                                    <!-- Vehicle No -->
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="vehicleno">Vehicle No</label>
                                        <input type="text" name="vehicleno" id="vehicleno" class="form-control" maxlength="10">
                                    </div>

                                    <!-- Material -->
                                    <div class="col-md-3">
                                        <label class="col-form-label">Material</label>
                                        <div>
                                            <input type="radio" name="materinouyn" id="material_no" value="N" checked> No
                                            <input type="radio" name="materinouyn" id="material_yes" value="Y" class="ml-3"> Yes
                                        </div>
                                    </div>

                                    <!-- Material Details (Hidden by default) -->
                                    <div class="col-md-3" id="item_name_div" style="display: none;">
                                        <label class="col-form-label" for="item_name">Item Name</label>
                                        <select id="item_name" name="item_name" class="form-control">
                                            <option value="">Select</option>
                                            @foreach($itemNames as $item)
                                                <option value="{{ $item->Code }}">{{ $item->Name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-2" id="qty_div" style="display: none;">
                                        <label class="col-form-label" for="qty">Qty</label>
                                        <input type="number" name="qty" id="qty" class="form-control" step="0.01">
                                    </div>

                                    <div class="col-md-2" id="unit_div" style="display: none;">
                                        <label class="col-form-label" for="unit">Unit</label>
                                        <input type="text" name="unit" id="unit" class="form-control" maxlength="20">
                                    </div>

                                    <!-- Department -->
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="department">Department</label>
                                        <select id="department" name="department" class="form-control">
                                            <option value="">Select Department</option>
                                            @foreach($departments as $dept)
                                                <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <!-- Exit Status (for edit) -->
                                    <div class="col-md-3" id="exitstatus_div" style="display: none;">
                                        <label class="col-form-label" for="exitstatus">Exit Status</label>
                                        <select id="exitstatus" name="exitstatus" class="form-control">
                                            <option value="PENDING">PENDING</option>
                                            <option value="EXITED">EXITED</option>
                                        </select>
                                    </div>

                                    <!-- Remark -->
                                    <div class="col-md-12">
                                        <label class="col-form-label" for="remark">Remark</label>
                                        <textarea name="remark" id="remark" class="form-control" rows="2" maxlength="35"></textarea>
                                    </div>

                                    <!-- Buttons -->
                                    <div class="col-md-12 mt-3">
                                        <button type="submit" class="btn btn-primary" id="submitBtn">
                                            <i class="fa fa-save"></i> Save
                                        </button>
                                        <button type="button" class="btn btn-secondary" id="resetBtn" onclick="resetForm()">
                                            <i class="fa fa-refresh"></i> Reset
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Table Section -->
            <div class="row mt-3">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Gate Pass Records</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped verticle-middle" id="gatePassTable">
                                    <thead>
                                        <tr>
                                            <th>Pass No</th>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th>Type</th>
                                            <th>Visitor/Party</th>
                                            <th>Mobile</th>
                                            <th>Vehicle</th>
                                            <th>Material</th>
                                            <th>Item Name</th>
                                            <th>Qty</th>
                                            <th>Department</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody id="gatePassTableBody">
                                        <!-- AJAX will load table rows here -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Load gate passes on page load
            loadGatePasses();
            
            // Toggle Visitor/Party
            $('input[name="visitor_type"]').change(function() {
                if ($(this).val() === 'visitor') {
                    $('#visitor_name_div').show();
                    $('#party_code_div').hide();
                } else {
                    $('#visitor_name_div').hide();
                    $('#party_code_div').show();
                }
            });

            // Toggle Material Details
            $('input[name="materinouyn"]').change(function() {
                if ($(this).val() === 'Y') {
                    $('#item_name_div').show();
                    $('#qty_div').show();
                    $('#unit_div').show();
                } else {
                    $('#item_name_div').hide();
                    $('#qty_div').hide();
                    $('#unit_div').hide();
                }
            });

            // Form Submit
            $('#gatePassForm').submit(function(e) {
                e.preventDefault();
                
                let formData = {
                    type: $('#type').val(),
                    visitiorname: $('#visitiorname').val(),
                    partycode: $('#partycode').val(),
                    mobileno: $('#mobileno').val(),
                    vehicleno: $('#vehicleno').val(),
                    materinouyn: $('input[name="materinouyn"]:checked').val(),
                    item_name: $('#item_name').val(),
                    qty: $('#qty').val(),
                    date: $('#date').val(),
                    unit: $('#unit').val(),
                    department: $('#department').val(),
                    remark: $('#remark').val(),
                    exitstatus: $('#exitstatus').val(),
                    _token: $('input[name="_token"]').val()
                };

                let url = '{{ route("gatepassout.store") }}';
                let method = 'POST';
                let gatepassId = $('#gatepass_id').val();

                if (gatepassId) {
                    url = '/gatepass/' + gatepassId;
                    formData._method = 'PUT';
                }

                $.ajax({
                    url: url,
                    type: method,
                    data: formData,
                    success: function(response) {
                        showAlert('success', response.message);
                        resetForm();
                        loadGatePasses();
                    },
                    error: function(xhr) {
                        let errors = xhr.responseJSON.errors;
                        let errorMsg = '';
                        if (errors) {
                            $.each(errors, function(key, value) {
                                errorMsg += value[0] + '<br>';
                            });
                        } else {
                            errorMsg = xhr.responseJSON.message || 'An error occurred';
                        }
                        showAlert('danger', errorMsg);
                    }
                });
            });
        });

        function resetForm() {
            $('#gatePassForm')[0].reset();
            $('#gatepass_id').val('');
            $('#form_method').val('store');
            $('#submitBtn').html('<i class="fa fa-save"></i> Save');
            $('#exitstatus_div').hide();
            $('#visitor_name_div').show();
            $('#party_code_div').hide();
            $('#visitor_type_visitor').prop('checked', true);
            $('#item_name_div').hide();
            $('#qty_div').hide();
            $('#unit_div').hide();
        }

        function editGatePass(id) {
            $.ajax({
                url: '/gatepass/' + id + '/edit',
                type: 'GET',
                success: function(response) {
                    $('#gatepass_id').val(response.sn);
                    $('#form_method').val('update');
                    $('#gatepassno').val(response.gatepassno);
                    $('#type').val(response.type);
                    $('#visitiorname').val(response.visitiorname);
                    $('#partycode').val(response.partycode);
                    $('#mobileno').val(response.mobileno);
                    $('#vehicleno').val(response.vehicleno);
                    $('input[name="materinouyn"][value="' + (response.materinouyn || 'N') + '"]').prop('checked', true);
                    $('#item_name').val(response.item_name);
                    $('#qty').val(response.qty);
                    $('#unit').val(response.unit);
                    $('#department').val(response.department);
                    $('#remark').val(response.remark);
                    $('#exitstatus').val(response.exitstatus);
                    
                    // Show/hide material details based on materinouyn
                    if (response.materinouyn === 'Y') {
                        $('#item_name_div').show();
                        $('#qty_div').show();
                        $('#unit_div').show();
                    } else {
                        $('#item_name_div').hide();
                        $('#qty_div').hide();
                        $('#unit_div').hide();
                    }
                    $('#exitstatus_div').show();
                    $('#submitBtn').html('<i class="fa fa-save"></i> Update');
                    
                    if (response.visitiorname) {
                        $('#visitor_type_visitor').prop('checked', true);
                        $('#visitor_name_div').show();
                        $('#party_code_div').hide();
                    } else {
                        $('#visitor_type_party').prop('checked', true);
                        $('#visitor_name_div').hide();
                        $('#party_code_div').show();
                    }
                    
                    $('html, body').animate({ scrollTop: 0 }, 'slow');
                },
                error: function(xhr) {
                    showAlert('danger', 'Error loading gate pass data');
                }
            });
        }

        function deleteGatePass(id) {
            if (!confirm('Are you sure you want to delete this gate pass?')) {
                return;
            }

            $.ajax({
                url: '/gatepass/' + id,
                type: 'DELETE',
                data: {
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    showAlert('success', response.message);
                    $('#row_' + id).fadeOut(300, function() {
                        $(this).remove();
                    });
                },
                error: function(xhr) {
                    showAlert('danger', 'Error deleting gate pass');
                }
            });
        }

        function loadGatePasses() {
            $.ajax({
                url: '{{ route("gatepassout.index") }}',
                type: 'GET',
                data: { ajax: 1 },
                success: function(response) {
                    $('#gatePassTableBody').html(response.html);
                }
            });
        }

        function showAlert(type, message) {
            let alertHtml = `
                <div class="alert alert-${type} alert-dismissible fade show">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    ${message}
                </div>
            `;
            $('#alertMessage').html(alertHtml);
            setTimeout(function() {
                $('#alertMessage').fadeOut(function() {
                    $(this).html('').show();
                });
            }, 5000);
        }
    </script>
@endsection
