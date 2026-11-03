@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Edit Gate Pass Out</h4>
                            <a href="{{ route('gatepass.index') }}" class="btn btn-secondary">
                                <i class="fa fa-arrow-left"></i> Back to List
                            </a>
                        </div>
                        <div class="card-body">
                            <form class="form" name="gatepassform" id="gatepassform" action="{{ route('gatepass.update', $gatePass->sn) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <!-- Gate Pass No -->
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="gatepassno">Gate Pass No</label>
                                        <input type="text" name="gatepassno" id="gatepassno" class="form-control" value="{{ $gatePass->gatepassno }}" readonly>
                                    </div>

                                    <!-- Gate Pass Date -->
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="date">Gate Pass Date</label>
                                        <input type="text" name="date" id="date" class="form-control" value="{{ $gatePass->date ? \Carbon\Carbon::parse($gatePass->date)->format('d-m-Y') : '' }}" readonly>
                                    </div>

                                    <!-- Gate Pass Time -->
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="time">Gate Pass Out Time</label>
                                        <input type="text" name="time" id="time" class="form-control" value="{{ $gatePass->time ? \Carbon\Carbon::parse($gatePass->time)->format('H:i:s') : '' }}" readonly>
                                    </div>

                                    <!-- Type -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="type">Type <span class="text-danger">*</span></label>
                                        <select id="type" name="type" class="form-control" required>
                                            <option value="">Select Type</option>
                                            <option value="Visitor" {{ $gatePass->type == 'Visitor' ? 'selected' : '' }}>Visitor</option>
                                            <option value="Vendor" {{ $gatePass->type == 'Vendor' ? 'selected' : '' }}>Vendor</option>
                                            <option value="Staff" {{ $gatePass->type == 'Staff' ? 'selected' : '' }}>Staff</option>
                                            <option value="Contract" {{ $gatePass->type == 'Contract' ? 'selected' : '' }}>Contractor</option>
                                            <option value="Courier" {{ $gatePass->type == 'Courier' ? 'selected' : '' }}>Courier</option>
                                            <option value="Material" {{ $gatePass->type == 'Material' ? 'selected' : '' }}>Material</option>
                                            <option value="Outward" {{ $gatePass->type == 'Outward' ? 'selected' : '' }}>Outward</option>
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
                                            <input class="form-check-input" type="radio" name="visitor_type" id="visitor_type_visitor" value="visitor" {{ $gatePass->visitiorname ? 'checked' : '' }}>
                                            <label class="form-check-label" for="visitor_type_visitor">
                                                Visitor (Manual Entry)
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="visitor_type" id="visitor_type_party" value="party" {{ $gatePass->partycode ? 'checked' : '' }}>
                                            <label class="form-check-label" for="visitor_type_party">
                                                Party (Select from List)
                                            </label>
                                        </div>
                                    </div>

                                    <!-- Visitor Name Input -->
                                    <div class="col-md-6" id="visitor_name_div" style="display: {{ $gatePass->visitiorname ? 'block' : 'none' }};">
                                        <label class="col-form-label" for="visitiorname">Visitor Name</label>
                                        <input type="text" name="visitiorname" id="visitiorname" class="form-control" value="{{ $gatePass->visitiorname }}" maxlength="35">
                                        @error('visitiorname')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Party Code Select -->
                                    <div class="col-md-6" id="party_code_div" style="display: {{ $gatePass->partycode ? 'block' : 'none' }};">
                                        <label class="col-form-label" for="partycode">Party Name</label>
                                        <select id="partycode" name="partycode" class="form-control">
                                            <option value="">Select Party</option>
                                            @foreach($parties as $party)
                                                <option value="{{ $party->partycode }}" {{ $gatePass->partycode == $party->partycode ? 'selected' : '' }}>
                                                    {{ $party->partyname }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('partycode')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Mobile No -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mobileno">Mobile No</label>
                                        <input type="text" name="mobileno" id="mobileno" class="form-control" value="{{ $gatePass->mobileno }}" maxlength="15">
                                        @error('mobileno')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Vehicle No -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="vehicleno">Vehicle No</label>
                                        <input type="text" name="vehicleno" id="vehicleno" class="form-control" value="{{ $gatePass->vehicleno }}" maxlength="10">
                                        @error('vehicleno')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Material Yes/No -->
                                    <div class="col-md-12">
                                        <label class="col-form-label">Material</label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="materinouyn" id="material_no" value="N" {{ $gatePass->materinouyn == 'N' || !$gatePass->materinouyn ? 'checked' : '' }}>
                                            <label class="form-check-label" for="material_no">
                                                No
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="materinouyn" id="material_yes" value="Y" {{ $gatePass->materinouyn == 'Y' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="material_yes">
                                                Yes
                                            </label>
                                        </div>
                                    </div>

                                    <!-- Remark -->
                                    <div class="col-md-12">
                                        <label class="col-form-label" for="remark">Remark</label>
                                        <textarea name="remark" id="remark" class="form-control" rows="3" maxlength="35">{{ $gatePass->remark }}</textarea>
                                        @error('remark')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <!-- Exit Status -->
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="exitstatus">Exit Status</label>
                                        <select id="exitstatus" name="exitstatus" class="form-control">
                                            <option value="PENDING" {{ $gatePass->exitstatus == 'PENDING' ? 'selected' : '' }}>PENDING</option>
                                            <option value="EXITED" {{ $gatePass->exitstatus == 'EXITED' ? 'selected' : '' }}>EXITED</option>
                                        </select>
                                    </div>

                                    <!-- Submit Button -->
                                    <div class="col-md-12 mt-3">
                                        <button type="submit" class="btn btn-primary">
                                            <i class="fa fa-save"></i> Update Gate Pass
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
        });
    </script>
@endsection
