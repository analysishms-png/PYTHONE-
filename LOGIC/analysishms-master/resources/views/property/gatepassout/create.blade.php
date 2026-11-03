@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Gate Pass Out - Exit</h4>
                            <a href="{{ route('gatepass.index') }}" class="btn btn-secondary">
                                <i class="fa fa-arrow-left"></i> Back to List
                            </a>
                        </div>
                        <div class="card-body">
                            <form class="form" name="gatepassform" id="gatepassform" action="{{ route('gatepass.store') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <!-- Gate Pass No -->
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="gatepassno">Gate Pass No</label>
                                        <input type="text" name="gatepassno" id="gatepassno" class="form-control" value="{{ $nextGatePassNo }}" readonly>
                                    </div>

                                    <!-- Gate Pass Date -->
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="date">Gate Pass Date</label>
                                        <input type="text" name="date" id="date" class="form-control" value="{{ date('d-m-Y') }}" readonly>
                                    </div>

                                    <!-- Gate Pass Time -->
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="time">Gate Pass Out Time</label>
                                        <input type="text" name="time" id="time" class="form-control" value="{{ date('H:i:s') }}" readonly>
                                    </div>

                                    <!-- Type -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="type">Type <span class="text-danger">*</span></label>
                                        <select id="type" name="type" class="form-control" required>
                                            <option value="">Select Type</option>
                                            <option value="Visitor">Visitor</option>
                                            <option value="Vendor">Vendor</option>
                                            <option value="Staff">Staff</option>
                                            <option value="Contract">Contractor</option>
                                            <option value="Courier">Courier</option>
                                            <option value="Material">Material</option>
                                            <option value="Outward">Outward</option>
                                        </select>
                                        @error('type')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Voucher Type -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="vouchertype">Voucher Type</label>
                                        <input type="text" name="vouchertype" id="vouchertype" class="form-control" value="GARP" readonly>
                                    </div>

                                    <!-- Visitor/Party Name Selection -->
                                    <div class="col-md-12">
                                        <label class="col-form-label">Visitor / Party Name</label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="visitor_type" id="visitor_type_visitor" value="visitor" checked>
                                            <label class="form-check-label" for="visitor_type_visitor">
                                                Visitor (Manual Entry)
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="visitor_type" id="visitor_type_party" value="party">
                                            <label class="form-check-label" for="visitor_type_party">
                                                Party (Select from List)
                                            </label>
                                        </div>
                                    </div>

                                    <!-- Visitor Name Input -->
                                    <div class="col-md-6" id="visitor_name_div">
                                        <label class="col-form-label" for="visitiorname">Visitor Name</label>
                                        <input type="text" name="visitiorname" id="visitiorname" class="form-control" maxlength="35">
                                        @error('visitiorname')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Party Code Select -->
                                    <div class="col-md-6" id="party_code_div" style="display: none;">
                                        <label class="col-form-label" for="partycode">Party Name</label>
                                        <select id="partycode" name="partycode" class="form-control">
                                            <option value="">Select Party</option>
                                            @foreach($parties as $party)
                                                <option value="{{ $party->partycode }}">{{ $party->partyname }}</option>
                                            @endforeach
                                        </select>
                                        @error('partycode')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Mobile No -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mobileno">Mobile No</label>
                                        <input type="text" name="mobileno" id="mobileno" class="form-control" maxlength="15">
                                        @error('mobileno')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Vehicle No -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="vehicleno">Vehicle No</label>
                                        <input type="text" name="vehicleno" id="vehicleno" class="form-control" maxlength="10">
                                        @error('vehicleno')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Material Yes/No -->
                                    <div class="col-md-12">
                                        <label class="col-form-label">Material</label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="materinouyn" id="material_no" value="N" checked>
                                            <label class="form-check-label" for="material_no">
                                                No
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="materinouyn" id="material_yes" value="Y">
                                            <label class="form-check-label" for="material_yes">
                                                Yes
                                            </label>
                                        </div>
                                    </div>

                                    <!-- Material Details (Hidden by default) -->
                                    <div class="col-md-12" id="material_details" style="display: none;">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5>Material Details</h5>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label for="item_name">Item Name</label>
                                                        <input type="text" name="item_name" id="item_name" class="form-control">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label for="qty">Quantity</label>
                                                        <input type="number" name="qty" id="qty" class="form-control" step="0.01">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label for="unit">Unit</label>
                                                        <input type="text" name="unit" id="unit" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Department -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="department">Department</label>
                                        <select id="department" name="department" class="form-control">
                                            <option value="">Select Department</option>
                                            @foreach($departments as $dept)
                                                <option value="{{ $dept->deptcode }}">{{ $dept->deptname }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <!-- Remark -->
                                    <div class="col-md-12">
                                        <label class="col-form-label" for="remark">Remark</label>
                                        <textarea name="remark" id="remark" class="form-control" rows="3" maxlength="35"></textarea>
                                        @error('remark')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Submit Button -->
                                    <div class="col-md-12 mt-3">
                                        <button type="submit" class="btn btn-primary">
                                            <i class="fa fa-save"></i> Save Gate Pass
                                        </button>
                                        <a href="{{ route('gatepass.index') }}" class="btn btn-secondary">
                                            <i class="fa fa-times"></i> Cancel
                                        </a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Toggle between Visitor and Party selection
        document.addEventListener('DOMContentLoaded', function() {
            const visitorRadio = document.getElementById('visitor_type_visitor');
            const partyRadio = document.getElementById('visitor_type_party');
            const visitorDiv = document.getElementById('visitor_name_div');
            const partyDiv = document.getElementById('party_code_div');
            
            visitorRadio.addEventListener('change', function() {
                if (this.checked) {
                    visitorDiv.style.display = 'block';
                    partyDiv.style.display = 'none';
                    document.getElementById('visitiorname').required = true;
                    document.getElementById('partycode').required = false;
                }
            });
            
            partyRadio.addEventListener('change', function() {
                if (this.checked) {
                    visitorDiv.style.display = 'none';
                    partyDiv.style.display = 'block';
                    document.getElementById('visitiorname').required = false;
                    document.getElementById('partycode').required = true;
                }
            });

            // Toggle Material Details
            const materialYes = document.getElementById('material_yes');
            const materialNo = document.getElementById('material_no');
            const materialDetails = document.getElementById('material_details');
            
            materialYes.addEventListener('change', function() {
                if (this.checked) {
                    materialDetails.style.display = 'block';
                }
            });
            
            materialNo.addEventListener('change', function() {
                if (this.checked) {
                    materialDetails.style.display = 'none';
                }
            });
        });
    </script>
@endsection
