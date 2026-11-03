@extends('property.layouts.main')
@section('main-container')

<style>
/* Datepicker positioning inside input-group (global theme CSS ke sath conflict na ho) */
#lf-founddate-wrap .datepicker,
#lf-claim-handoverdt-wrap .datepicker,
#lf-edit-founddate-wrap .datepicker {
    position: absolute !important;
    top: 100% !important;
    left: 0 !important;
    right: auto !important;
    margin-top: 2px;
    z-index: 9999 !important;
}
/* Global theme CSS (.datepicker td/th padding: 5px 10px) calendar me blank space de raha hai — is page par override */
#lf-founddate-wrap .datepicker table td,
#lf-founddate-wrap .datepicker table th,
#lf-claim-handoverdt-wrap .datepicker table td,
#lf-claim-handoverdt-wrap .datepicker table th,
#lf-edit-founddate-wrap .datepicker table td,
#lf-edit-founddate-wrap .datepicker table th {
    padding: 0 !important;
    width: 30px !important;
    height: 30px !important;
    line-height: 30px !important;
}
#lf-founddate-wrap .datepicker,
#lf-claim-handoverdt-wrap .datepicker,
#lf-edit-founddate-wrap .datepicker {
    padding: 4px !important;
}
#lf-founddate-wrap .datepicker table tr td span,
#lf-claim-handoverdt-wrap .datepicker table tr td span,
#lf-edit-founddate-wrap .datepicker table tr td span {
    width: 60px !important;
    height: 40px !important;
    line-height: 40px !important;
    margin: 1px !important;
}
</style>

<div class="content-body">
<div class="container-fluid px-4 py-3">

    {{-- BANNER --}}
    <div class="d-flex align-items-center justify-content-between bg-primary text-white rounded p-3 mb-3 shadow-sm"
         style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f) !important;">
        <div>
            <h3 class="mb-0 fw-bold text-white">
                <i class="fa-solid fa-magnifying-glass me-2"></i>Lost &amp; Found
            </h3>
            
        </div>
       
    </div>

    {{-- NEW ENTRY FORM --}}
    <form id="lfForm" novalidate>
        @csrf
        <input type="hidden" id="lf-csrf" value="{{ csrf_token() }}">
        <input type="hidden" id="lf-tagno" value="{{ $tagNo }}">
        <input type="hidden" id="lf-photos-json" value="[]">

        <div class="card shadow-sm border-0 mb-3">
            <div class="card-body">
                <div class="row">

                    {{-- LEFT COLUMN --}}
                    <div class="col-lg-8">

                        {{-- FOUND BY / LOCATION / TIME --}}
                        <div class="card shadow-sm border-0 mb-3">
                            <div class="card-header bg-primary text-white fw-bold small text-uppercase py-2">
                                <i class="fa-solid fa-user-check me-1"></i> Found By / Location / Time
                            </div>
                            <div class="card-body">
                                <div class="row g-2">
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Found Date <span class="text-danger">*</span></label>
                                        <div class="input-group input-group-sm position-relative" id="lf-founddate-wrap">
                                            <input type="text" id="lf-founddate" class="form-control"
                                                   placeholder="DD-MM-YYYY" readonly style="background:#fff;cursor:pointer;">
                                            <span class="input-group-text" onclick="$('#lf-founddate').datepicker('show')" style="cursor:pointer;">
                                                <i class="fa-regular fa-calendar"></i>
                                            </span>
                                        </div>
                                        <div class="invalid-feedback" id="err-founddate">Required.</div>
                                    </div>
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Found Time</label>
                                        <input type="text" id="lf-foundtime" class="form-control form-control-sm"
                                               placeholder="HH:MM" maxlength="5"
                                               oninput="this.value=this.value.replace(/[^0-9:]/g,'')">
                                    </div>
                                    <div class="col-6 col-md-4" id="lf-roomno-col">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Room No</label>
                                        <input type="text" id="lf-roomno" class="form-control form-control-sm"
                                               placeholder="e.g. 305" maxlength="20"
                                               value="{{ $preRoomno ?? '' }}"
                                               data-prefill="{{ $preRoomno ?? '' }}">
                                    </div>
                                    <div class="col-6 col-md-6">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Area / Location <span class="text-danger">*</span></label>
                                        <select id="lf-foundlocation" class="form-control form-control-sm custom-select" onchange="lfToggleLocationFields()">
                                            <option value="">-- Select Location --</option>
                                            <optgroup label="Room / Floor">
                                                <option value="Room Guest">Room Guest</option>
                                            </optgroup>
                                            <optgroup label="Public Area">
                                                <option value="Lobby">Lobby</option>
                                                <option value="Reception">Reception</option>
                                                <option value="Front Desk">Front Desk</option>
                                                <option value="Waiting Lounge">Waiting Lounge</option>
                                                <option value="Main Entrance">Main Entrance</option>
                                                <option value="Exit Gate">Exit Gate</option>
                                                <option value="Lift">Lift</option>
                                                <option value="Staircase">Staircase</option>
                                                <option value="Corridors">Corridors</option>
                                                <option value="Parking">Parking</option>
                                                <option value="Garden">Garden</option>
                                                <option value="Swimming Pool">Swimming Pool</option>
                                                <option value="Gym">Gym</option>
                                                <option value="Spa">Spa</option>
                                                <option value="Salon">Salon</option>
                                                <option value="Kid Play Area">Kid Play Area</option>
                                                <option value="Business Ctr">Business Centre</option>
                                                <option value="Washroom">Washroom (Public)</option>
                                            </optgroup>
                                            <optgroup label="Event / Meeting">
                                                <option value="Banquet Hall">Banquet Hall</option>
                                                <option value="Conference">Conference Hall</option>
                                            </optgroup>
                                        </select>
                                        <div class="invalid-feedback" id="err-foundlocation">Required.</div>
                                    </div>
                                    <div class="col-6 col-md-6">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Found By <span class="text-danger">*</span></label>
                                        <select id="lf-foundby" class="form-control form-control-sm custom-select">
                                            <option value="">-- Select Employee --</option>
                                            @foreach($employees as $emp)
                                                <option value="{{ $emp->id }}">{{ $emp->name }}</option>
                                            @endforeach
                                        </select>
                                        <input type="text" id="lf-foundby-text" class="form-control form-control-sm"
                                               placeholder="Enter name / person" maxlength="50" style="display:none;">
                                        <div class="invalid-feedback" id="err-foundby">Required.</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {{-- ITEM INFORMATION --}}
                        <div class="card shadow-sm border-0 mb-3">
                            <div class="card-header bg-success text-white fw-bold small text-uppercase py-2">
                                <i class="fa-solid fa-box-open me-1"></i> Item Information
                            </div>
                            <div class="card-body">
                                <div class="row g-2">
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Category <span class="text-danger">*</span></label>
                                        <select id="lf-itemcategory" class="form-control form-control-sm custom-select">
                                            <option value="">-- Select --</option>
                                            <option value="Electronics">Electronics</option>
                                            <option value="Personal Items">Personal Items</option>
                                            <option value="Cloth">Cloth</option>
                                            <option value="Bags & Luggage">Bags &amp; Luggage</option>
                                            <option value="Jewellery & Valuables">Jewellery &amp; Valuables</option>
                                            <option value="Documents">Documents</option>
                                            <option value="Cash & Financial Items">Cash &amp; Financial Items</option>
                                            <option value="Health & Personal Care">Health &amp; Personal Care</option>
                                            <option value="Kids Items">Kids Items</option>
                                            <option value="Miscellaneous">Miscellaneous</option>
                                        </select>
                                        <div class="invalid-feedback" id="err-itemcategory">Required.</div>
                                    </div>
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Item Name <span class="text-danger">*</span></label>
                                        <input type="text" id="lf-itemname" class="form-control form-control-sm"
                                                maxlength="25">
                                        <div class="invalid-feedback" id="err-itemname">Required.</div>
                                    </div>
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Brand / Model</label>
                                        <input type="text" id="lf-brandname" class="form-control form-control-sm"
                                                maxlength="25">
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Color</label>
                                        <input type="text" id="lf-color" class="form-control form-control-sm"
                                                maxlength="15">
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Qty</label>
                                        <input type="number" id="lf-quantity" class="form-control form-control-sm" value="1" min="0.01" step="0.01">
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Perishable</label>
                                        <select id="lf-uom" class="form-control form-control-sm custom-select">
                                            <option value="">Select</option>
                                            <option value="No" selected>No</option>
                                            <option value="Yes">Yes</option>
                                        </select>
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Condition <span class="text-danger">*</span></label>
                                        <select id="lf-itemcondition" class="form-control form-control-sm custom-select">
                                            <option value="">-- Select --</option>
                                            <option value="Excellent">Excellent</option>
                                            <option value="Good">Good</option>
                                            <option value="Fair">Fair</option>
                                            <option value="Damaged">Damaged</option>
                                        </select>
                                        <div class="invalid-feedback" id="err-itemcondition">Required.</div>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Description</label>
                                        <textarea id="lf-description" class="form-control form-control-sm" rows="2"
                                                  placeholder="Brief description..." maxlength="80" style="resize:none;"></textarea>
                                    </div>
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Est. Value (Rs)</label>
                                        <input type="number" id="lf-estimatedvalue" class="form-control form-control-sm"
                                               placeholder="0.00" min="0" step="0.01">
                                    </div>
                                    <div class="col-6 col-md-4">
                                        <label class="form-label fw-semibold small text-uppercase mb-1">Storage Location</label>
                                        <input type="text" id="lf-storagelocation" class="form-control form-control-sm"
                                                maxlength="15">
                                    </div>
                                </div>
                            </div>
                        </div>

                        {{-- NOTES --}}
                        <div class="card shadow-sm border-0 mb-3">
                            <div class="card-header bg-secondary text-white fw-bold small text-uppercase py-2">
                                <i class="fa-solid fa-note-sticky me-1"></i> Notes / Remarks
                            </div>
                            <div class="card-body">
                                <textarea id="lf-remarks" class="form-control form-control-sm" rows="2"
                                          placeholder="Additional remarks..." maxlength="80" style="resize:none;"></textarea>
                            </div>
                        </div>

                    </div>

                    {{-- RIGHT COLUMN --}}
                    <div class="col-lg-4">
                        {{-- TAG INFO --}}
                        <div class="card shadow-sm border-0 mb-3">
                            <div class="card-header bg-warning text-white fw-bold small text-uppercase py-2">
                                <i class="fa-solid fa-tag me-1"></i> Tag Information
                            </div>
                            <div class="card-body">
                                <div class="bg-light border rounded text-center p-3 mb-3">
                                    <small class="text-muted d-block text-uppercase">Auto Tag No.</small>
                                    <div class="h4 fw-bold text-primary mb-0">{{ $tagNo }}</div>
                                </div>
                                <div class="row g-2">
                                    <div class="col-6">
                                        <small class="fw-semibold d-block small text-uppercase text-secondary">Status</small>
                                        <span class="badge badge-success">Open</span>
                                    </div>
                                    <div class="col-6">
                                        <small class="fw-semibold d-block small text-uppercase text-secondary">Date</small>
                                        <div class="fw-bold">{{ \Carbon\Carbon::parse($asOnDate)->format('d-M-Y') }}</div>
                                    </div>
                                    <div class="col-6">
                                        <small class="fw-semibold d-block small text-uppercase text-secondary">Time</small>
                                        <div class="fw-bold" id="lf-clock">{{ $currentTime }}</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {{-- ACTION BUTTONS --}}
                        <div class="d-flex flex-wrap mb-3">
                            <div class="mr-2 mb-1">
                            <button type="button" class="btn btn-success fw-bold" onclick="lfSubmit()">
                                <i class="fa-solid fa-floppy-disk mr-2"></i>SAVE
                            </button>
                            </div>
                            <div class="mb-1">
                            <button type="button" class="btn btn-outline-secondary" onclick="lfClear()">
                                <i class="fa-solid fa-rotate-left mr-1"></i>Clear
                            </button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>

    {{-- ALL RECORDS TABLE --}}
    <div class="card shadow-sm border-0 mb-3">
        <div class="card-header d-flex justify-content-between align-items-center py-2"
             style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);">
            <span class="fw-bold text-white small text-uppercase">
                <i class="fa-solid fa-list me-1"></i>All Lost &amp; Found Entries
            </span>
            <div class="d-flex align-items-center" style="gap:6px;">
                <div class="input-group input-group-sm" style="width:240px;">
                    <input type="text" id="lf-search" class="form-control form-control-sm"
                           placeholder="Search tag, item, name, room..."
                           oninput="lfSearchTable(this.value)"
                           style="border-radius:4px 0 0 4px;">
                    <span class="input-group-text bg-white" style="cursor:pointer;border-radius:0 4px 4px 0;">
                        <i class="fa-solid fa-magnifying-glass text-secondary"></i>
                    </span>
                </div>
                <span class="badge bg-light text-dark">{{ $items->total() }} Records</span>
            </div>
        </div>
        <div class="card-body p-2">
            <div class="table-responsive">
                <table id="lf-entries-table" class="table table-hover table-sm table-bordered align-middle mb-0" style="font-size:12px;">
                    <thead class="thead-dark">
                        <tr>
                            <th>Tag No.</th>
                            <th>Found Date</th>
                            <th>Room</th>
                            <th>Category</th>
                            <th>Item Name</th>
                            <th>Brand</th>
                            <th>Color</th>
                            <th>Condition</th>
                            <th>Location</th>
                            <th>Est. Value</th>
                            <th>Claimed By</th>
                            <th>Handover To</th>
                            <th>Handover Date</th>
                            <th>Status</th>
                            <th style="width:110px;">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($items as $item)
                        @php
                            $itemTagNo = 'LF-' . str_pad($item->vno, 2, '0', STR_PAD_LEFT);
                            $badgeClass = match($item->status) {
                                'Found'      => 'badge-success',
                                'Claimed'    => 'badge-warning text-dark',
                                'Stored'     => 'badge-info text-dark',
                                'HandedOver' => 'badge-primary',
                                'Courier'    => 'badge-secondary',
                                'Disposed'   => 'badge-danger',
                                default      => 'badge-light text-dark',
                            };
                        @endphp
                        <tr>
                            <td class="fw-bold text-primary">{{ $itemTagNo }}</td>
                            <td>{{ $item->founddate ? \Carbon\Carbon::parse($item->founddate)->format('d-M-Y') : '' }}</td>
                            <td>{{ $item->roomno ?: '' }}</td>
                            <td>{{ $item->itemcategory ?: '' }}</td>
                            <td>{{ $item->itemname ?: '' }}</td>
                            <td>{{ $item->brandname ?: '' }}</td>
                            <td>{{ $item->color ?: '' }}</td>
                            <td>{{ $item->itemcondition ?: '' }}</td>
                            <td>{{ $item->foundlocation ?: '' }}</td>
                            <td>{{ $item->estimatedvalue ? 'Rs' . number_format($item->estimatedvalue, 2) : '' }}</td>
                            <td>{{ $item->claimby ?: '' }}</td>
                            <td>{{ $item->handoverto ?: '' }}</td>
                            <td>@if($item->handoverdate && $item->handoverdate !== '0000-00-00 00:00:00'){{ \Carbon\Carbon::parse($item->handoverdate)->format('d-M-Y H:i') }}@endif</td>
                            <td>
                                @if($item->status === 'Claimed' || $item->status === 'HandedOver')
                                    <span class="fw-bold" style="font-size:12px;">Claimed</span>
                                @else
                                    <span class="fw-bold" style="font-size:12px;">{{ $item->status }}</span>
                                @endif
                            </td>
                            <td>
                                <div class="d-flex" style="gap:3px;">
                                    @if($item->status === 'Claimed' || $item->status === 'HandedOver')
                                        {{-- Already claimed — no edit, no claim button --}}
                                        <button type="button" class="btn btn-secondary btn-sm px-2 py-0"
                                                style="font-size:11px; opacity:0.6; cursor:not-allowed;" disabled title="Already Claimed">
                                            <i class="fa-solid fa-hand-holding-heart me-1"></i>Claimed
                                        </button>
                                    @else
                                        {{-- Not yet claimed — Edit entry button + Claim button --}}
                                        <button type="button" class="btn btn-warning btn-sm px-2 py-0"
                                                style="font-size:11px;"
                                                onclick="lfEditEntry({{ $item->id }})" title="Edit Entry">
                                            <i class="fa-solid fa-pen-to-square me-1"></i>Edit
                                        </button>
                                        <button type="button" class="btn btn-success btn-sm"
                                                onclick="lfClaimRecord({{ $item->id }}, '{{ $item->status }}')" title="Claim">
                                            <i class="fa-solid fa-hand-holding-heart me-1"></i>Claim
                                        </button>
                                    @endif
                                    <a href="{{ route('lostfoundprint', $item->id) }}" target="_blank"
                                       class="btn btn-info btn-sm text-white" title="Print">
                                        <i class="fa-solid fa-print"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="15" class="text-center text-muted py-4">
                                <i class="fa-solid fa-inbox fa-2x d-block mb-2 opacity-50"></i>
                                No lost &amp; found entries yet.
                            </td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
            @if($items->hasPages())
            <div class="mt-3 px-2">
                {{ $items->links() }}
            </div>
            @endif
        </div>
    </div>

</div>
</div>

{{-- EDIT ENTRY MODAL --}}
<div class="modal fade" id="lfEditModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header py-2 px-3"
                 style="background:linear-gradient(135deg,#92400e,#d97706);color:#fff;">
                <h6 class="modal-title fw-bold mb-0" style="color:#fff !important;">
                    <i class="fa-solid fa-pen-to-square me-2"></i>Edit Lost &amp; Found Entry
                </h6>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body p-3">
                <input type="hidden" id="lf-edit-id" value="">

                {{-- Found By / Location / Time --}}
                <div class="card shadow-sm border-0 mb-3">
                    <div class="card-header bg-primary text-white fw-bold small text-uppercase py-2">
                        <i class="fa-solid fa-user-check me-1"></i> Found By / Location / Time
                    </div>
                    <div class="card-body">
                        <div class="row g-2">
                            <div class="col-6 col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Found Date <span class="text-danger">*</span></label>
                                <div class="input-group input-group-sm position-relative" id="lf-edit-founddate-wrap">
                                    <input type="text" id="lf-edit-founddate" class="form-control"
                                           placeholder="DD-MM-YYYY" readonly style="background:#fff;cursor:pointer;">
                                    <span class="input-group-text" onclick="$('#lf-edit-founddate').datepicker('show')" style="cursor:pointer;">
                                        <i class="fa-regular fa-calendar"></i>
                                    </span>
                                </div>
                                <div class="invalid-feedback" id="err-edit-founddate">Required.</div>
                            </div>
                            <div class="col-6 col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Found Time</label>
                                <input type="text" id="lf-edit-foundtime" class="form-control form-control-sm"
                                       placeholder="HH:MM" maxlength="5"
                                       oninput="this.value=this.value.replace(/[^0-9:]/g,'')">
                            </div>
                            <div class="col-6 col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Room No</label>
                                <input type="text" id="lf-edit-roomno" class="form-control form-control-sm"
                                       placeholder="e.g. 305" maxlength="20">
                            </div>
                            <div class="col-6 col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Found By</label>
                                <input type="text" id="lf-edit-foundby" class="form-control form-control-sm"
                                       placeholder="Name / Employee" maxlength="50">
                            </div>
                            <div class="col-12 col-md-6">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Area / Location <span class="text-danger">*</span></label>
                                <select id="lf-edit-foundlocation" class="form-control form-control-sm custom-select">
                                    <option value="">-- Select Location --</option>
                                    <optgroup label="Room / Floor">
                                        <option value="Room Guest">Room Guest</option>
                                    </optgroup>
                                    <optgroup label="Public Area">
                                        <option value="Lobby">Lobby</option>
                                        <option value="Reception">Reception</option>
                                        <option value="Front Desk">Front Desk</option>
                                        <option value="Waiting Lounge">Waiting Lounge</option>
                                        <option value="Main Entrance">Main Entrance</option>
                                        <option value="Exit Gate">Exit Gate</option>
                                        <option value="Lift">Lift</option>
                                        <option value="Staircase">Staircase</option>
                                        <option value="Corridors">Corridors</option>
                                        <option value="Parking">Parking</option>
                                        <option value="Garden">Garden</option>
                                        <option value="Swimming Pool">Swimming Pool</option>
                                        <option value="Gym">Gym</option>
                                        <option value="Spa">Spa</option>
                                        <option value="Salon">Salon</option>
                                        <option value="Kid Play Area">Kid Play Area</option>
                                        <option value="Business Ctr">Business Centre</option>
                                        <option value="Washroom">Washroom (Public)</option>
                                    </optgroup>
                                    <optgroup label="Event / Meeting">
                                        <option value="Banquet Hall">Banquet Hall</option>
                                        <option value="Conference">Conference Hall</option>
                                    </optgroup>
                                </select>
                                <div class="invalid-feedback" id="err-edit-foundlocation">Required.</div>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Item Information --}}
                <div class="card shadow-sm border-0 mb-3">
                    <div class="card-header bg-success text-white fw-bold small text-uppercase py-2">
                        <i class="fa-solid fa-box-open me-1"></i> Item Information
                    </div>
                    <div class="card-body">
                        <div class="row g-2">
                            <div class="col-6 col-md-4">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Category <span class="text-danger">*</span></label>
                                <select id="lf-edit-itemcategory" class="form-control form-control-sm custom-select">
                                    <option value="">-- Select --</option>
                                    <option value="Electronics">Electronics</option>
                                    <option value="Personal Items">Personal Items</option>
                                    <option value="Cloth">Cloth</option>
                                    <option value="Bags & Luggage">Bags &amp; Luggage</option>
                                    <option value="Jewellery & Valuables">Jewellery &amp; Valuables</option>
                                    <option value="Documents">Documents</option>
                                    <option value="Cash & Financial Items">Cash &amp; Financial Items</option>
                                    <option value="Health & Personal Care">Health &amp; Personal Care</option>
                                    <option value="Kids Items">Kids Items</option>
                                    <option value="Miscellaneous">Miscellaneous</option>
                                </select>
                                <div class="invalid-feedback" id="err-edit-itemcategory">Required.</div>
                            </div>
                            <div class="col-6 col-md-4">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Item Name <span class="text-danger">*</span></label>
                                <input type="text" id="lf-edit-itemname" class="form-control form-control-sm" maxlength="25">
                                <div class="invalid-feedback" id="err-edit-itemname">Required.</div>
                            </div>
                            <div class="col-6 col-md-4">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Brand / Model</label>
                                <input type="text" id="lf-edit-brandname" class="form-control form-control-sm" maxlength="25">
                            </div>
                            <div class="col-6 col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Color</label>
                                <input type="text" id="lf-edit-color" class="form-control form-control-sm" maxlength="15">
                            </div>
                            <div class="col-6 col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Qty</label>
                                <input type="number" id="lf-edit-quantity" class="form-control form-control-sm" value="1" min="0.01" step="0.01">
                            </div>
                            <div class="col-6 col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Perishable</label>
                                <select id="lf-edit-perishable" class="form-control form-control-sm custom-select">
                                    <option value="No">No</option>
                                    <option value="Yes">Yes</option>
                                </select>
                            </div>
                            <div class="col-6 col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Condition <span class="text-danger">*</span></label>
                                <select id="lf-edit-itemcondition" class="form-control form-control-sm custom-select">
                                    <option value="">-- Select --</option>
                                    <option value="Excellent">Excellent</option>
                                    <option value="Good">Good</option>
                                    <option value="Fair">Fair</option>
                                    <option value="Damaged">Damaged</option>
                                </select>
                                <div class="invalid-feedback" id="err-edit-itemcondition">Required.</div>
                            </div>
                            <div class="col-12">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Description</label>
                                <textarea id="lf-edit-description" class="form-control form-control-sm" rows="2"
                                          placeholder="Brief description..." maxlength="80" style="resize:none;"></textarea>
                            </div>
                            <div class="col-6 col-md-4">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Est. Value (Rs)</label>
                                <input type="number" id="lf-edit-estimatedvalue" class="form-control form-control-sm"
                                       placeholder="0.00" min="0" step="0.01">
                            </div>
                            <div class="col-6 col-md-4">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Storage Location</label>
                                <input type="text" id="lf-edit-storagelocation" class="form-control form-control-sm" maxlength="15">
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Remarks --}}
                <div class="card shadow-sm border-0">
                    <div class="card-header bg-secondary text-white fw-bold small text-uppercase py-2">
                        <i class="fa-solid fa-note-sticky me-1"></i> Notes / Remarks
                    </div>
                    <div class="card-body">
                        <textarea id="lf-edit-remarks" class="form-control form-control-sm" rows="2"
                                  placeholder="Additional remarks..." maxlength="80" style="resize:none;"></textarea>
                    </div>
                </div>
            </div>
            <div class="modal-footer py-2 px-3">
                <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">
                    <i class="fa-solid fa-xmark me-1"></i>Cancel
                </button>
                <button type="button" class="btn btn-warning btn-sm fw-bold" id="lf-edit-save-btn" onclick="lfSaveEditEntry()">
                    <i class="fa-solid fa-floppy-disk me-1"></i>Update Entry
                </button>
            </div>
        </div>
    </div>
</div>

{{-- CLAIM MODAL --}}
<div class="modal fade" id="lfClaimModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header py-2 px-3"
                 style="background:linear-gradient(135deg,#1e3a5f,#2d6a9f);color:#fff;">
                <h6 class="modal-title fw-bold mb-0" style="color:#fff !important;">
                    <i class="fa-solid fa-hand-holding-heart me-2"></i>Claim Record
                </h6>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body p-3">
                <input type="hidden" id="lf-claim-id" value="">
                <input type="hidden" id="lf-claim-curstatus" value="">
                <input type="hidden" id="lf-claim-mode" value="new"> {{-- new | edit --}}

                {{-- Guest / Claim Info --}}
                <div class="card shadow-sm border-0 mb-3">
                    <div class="card-header text-white fw-bold small text-uppercase py-2"
                         style="background:linear-gradient(90deg,#9f1239,#e11d48);">
                        <i class="fa-solid fa-user me-1"></i>Guest / Claim Info (If Known)
                    </div>
                    <div class="card-body">
                        <div class="row g-2">
                            <div class="col-md-6">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Guest Name <span class="text-danger">*</span></label>
                                <input type="text" id="lf-claim-guestname" class="form-control form-control-sm"
                                       placeholder="Guest Name" maxlength="50">
                                <div class="invalid-feedback" id="err-claim-guestname">Guest Name is required.</div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Mobile No. <span class="text-danger">*</span></label>
                                <input type="tel" id="lf-claim-mobileno" class="form-control form-control-sm"
                                       placeholder="Mobile No." maxlength="15">
                                <div class="invalid-feedback" id="err-claim-mobileno">Mobile No. is required.</div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Email</label>
                                <input type="email" id="lf-claim-email" class="form-control form-control-sm"
                                       placeholder="Email" maxlength="60">
                                <div class="invalid-feedback" id="err-claim-email">Enter a valid email address.</div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Remarks</label>
                                <textarea id="lf-claim-claim-remarks" class="form-control form-control-sm"
                                          rows="1" placeholder="Claim remarks..."
                                          maxlength="100" style="resize:none;"></textarea>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Handover / Disposition --}}
                <div class="card shadow-sm border-0">
                    <div class="card-header bg-secondary text-white fw-bold small text-uppercase py-2">
                        <i class="fa-solid fa-hand-holding-box me-1"></i>Handover / Disposition
                    </div>
                    <div class="card-body">
                        <div class="row g-2">
                            <div class="col-md-4">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Handover To <span class="text-danger">*</span></label>
                                <select id="lf-claim-handoverto" class="form-control form-control-sm custom-select">
                                    <option value="">Select</option>
                                    <option value="Guest">Guest</option>
                                    <option value="Security">Security</option>
                                    <option value="Management">Management</option>
                                    <option value="Police">Police</option>
                                    <option value="Courier">Courier</option>
                                    <option value="Disposed">Disposed</option>
                                </select>
                                <div class="invalid-feedback" id="err-claim-handoverto">Handover To is required.</div>
                            </div>
                            <div class="col-md-5">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Handover Date <span class="text-danger">*</span></label>
                                <div class="input-group input-group-sm position-relative" id="lf-claim-handoverdt-wrap">
                                    <input type="text" id="lf-claim-handoverdt" class="form-control"
                                           placeholder="DD-MM-YYYY" style="background:#fff;cursor:pointer;" readonly>
                                    <span class="input-group-text" onclick="$('#lf-claim-handoverdt').datepicker('show')" style="cursor:pointer;">
                                        <i class="fa-regular fa-calendar"></i>
                                    </span>
                                </div>
                                <div class="invalid-feedback" id="err-claim-handoverdt">Handover Date is required.</div>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Handover Time <span class="text-danger">*</span></label>
                                <input type="text" id="lf-claim-handovertime" class="form-control form-control-sm"
                                       placeholder="HH:MM" maxlength="5"
                                       oninput="this.value=this.value.replace(/[^0-9:]/g,'')">
                                <div class="invalid-feedback" id="err-claim-handovertime">Handover Time is required.</div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label fw-semibold small text-uppercase mb-1">Received By <span class="text-danger">*</span></label>
                                <input type="text" id="lf-claim-receivedby" class="form-control form-control-sm"
                                       placeholder="Enter Name" maxlength="50">
                                <div class="invalid-feedback" id="err-claim-receivedby">Received By is required.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer py-2 px-3">
                <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">
                    <i class="fa-solid fa-xmark me-1"></i>Cancel
                </button>
                <button type="button" class="btn btn-success btn-sm fw-bold" onclick="lfSaveClaim()">
                    <i class="fa-solid fa-floppy-disk me-1"></i>Save Claim
                </button>
            </div>
        </div>
    </div>
</div>

{{-- CAMERA MODAL (Desktop webcam) --}}
<div class="modal fade" id="lfCameraModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header py-2 px-3"
                 style="background:linear-gradient(135deg,#5b21b6,#7c3aed);color:#fff;">
                <h6 class="modal-title fw-bold mb-0">
                    <i class="fa-solid fa-camera me-2"></i>Capture Photo
                </h6>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body p-2 text-center">
                <video id="lf-camera-video" autoplay playsinline
                       style="width:100%;max-height:320px;background:#000;border-radius:8px;"></video>
            </div>
            <div class="modal-footer py-2 px-3 justify-content-center">
                <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">
                    <i class="fa-solid fa-xmark me-1"></i>Cancel
                </button>
                <button type="button" class="btn btn-success btn-sm fw-bold" onclick="lfCapturePhoto()">
                    <i class="fa-solid fa-camera me-1"></i>Capture
                </button>
            </div>
        </div>
    </div>
</div>

{{-- SweetAlert2 --}}
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
// Clock
(function tick() {
    var n = new Date();
    var h = String(n.getHours()).padStart(2,'0');
    var m = String(n.getMinutes()).padStart(2,'0');
    var el = document.getElementById('lf-clock');
    if (el) el.textContent = h + ':' + m;
    setTimeout(tick, 30000);
})();

// Datepicker
$(function () {
    var today = '{{ \Carbon\Carbon::parse($asOnDate)->format("d-m-Y") }}';
    $('#lf-founddate').datepicker({
        format: 'dd-mm-yyyy', autoclose: true, todayHighlight: true, endDate: '0d',
        orientation: 'bottom auto',
        container: '#lf-founddate-wrap'
    }).datepicker('setDate', today);
    // Claim modal handover datepicker
    $('#lf-claim-handoverdt').datepicker({
        format: 'dd-mm-yyyy', autoclose: true, todayHighlight: true,
        orientation: 'bottom auto',
        container: '#lf-claim-handoverdt-wrap'
    });
    // Edit entry modal found date datepicker
    $('#lf-edit-founddate').datepicker({
        format: 'dd-mm-yyyy', autoclose: true, todayHighlight: true, endDate: '0d',
        orientation: 'bottom auto',
        container: '#lf-edit-founddate-wrap'
    });

    // Auto-fill current time in Found Time
    var now = new Date();
    var hh = String(now.getHours()).padStart(2, '0');
    var mm = String(now.getMinutes()).padStart(2, '0');
    document.getElementById('lf-foundtime').value = hh + ':' + mm;

    // startcleaning se roomno prefill ke saath aaye toh location auto-select
    if (document.getElementById('lf-roomno').value) {
        document.getElementById('lf-foundlocation').value = 'Room Guest';
    }
    lfToggleLocationFields();
});

// Location ke hisaab se Room No + Found By fields toggle
function lfToggleLocationFields() {
    var loc = document.getElementById('lf-foundlocation').value;
    var isRoom = (loc === 'Room Guest');
    // Room No column — sirf Room Guest par dikhe
    document.getElementById('lf-roomno-col').style.display = isRoom ? '' : 'none';
    // Found By — Room Guest = HK dropdown, warna text input
    document.getElementById('lf-foundby').style.display = isRoom ? '' : 'none';
    document.getElementById('lf-foundby-text').style.display = isRoom ? 'none' : '';
    // Mode switch par stale validation error clear
    document.getElementById('lf-foundby').classList.remove('is-invalid');
    document.getElementById('lf-foundby-text').classList.remove('is-invalid');
    document.getElementById('err-foundby').style.display = 'none';
}

// Photo handling
var lfPhotoFiles = [];
function lfAddPhotos(input) {
    Array.from(input.files).forEach(function(file) {
        if (file.size > 5 * 1024 * 1024) { lfToast('File too large: ' + file.name, 'danger'); return; }
        var reader = new FileReader();
        reader.onload = function(e) {
            lfPhotoFiles.push({ name: file.name, data: e.target.result });
            lfRenderPhotos();
        };
        reader.readAsDataURL(file);
    });
    input.value = '';
}
function lfRenderPhotos() {
    var grid = document.getElementById('lf-photo-grid');
    grid.innerHTML = '';
    lfPhotoFiles.forEach(function(p, i) {
        var div = document.createElement('div');
        div.className = 'd-inline-block border border-secondary rounded overflow-hidden position-relative mr-2 mb-2';
        div.style.width = '85px';
        div.style.height = '85px';
        div.innerHTML = '<img src="' + p.data + '" alt="photo" class="w-100 h-100" style="object-fit:cover;">' +
            '<button type="button" class="btn btn-danger btn-sm position-absolute d-flex align-items-center justify-content-center" style="top:2px;right:2px;padding:0;width:20px;height:20px;font-size:10px;border-radius:50%;" onclick="lfRemovePhoto(' + i + ')" title="Remove">&times;</button>';
        grid.appendChild(div);
    });
    document.getElementById('lf-photos-json').value = JSON.stringify(lfPhotoFiles.map(function(p){return p.data;}));
}
function lfRemovePhoto(i) { lfPhotoFiles.splice(i, 1); lfRenderPhotos(); }

// Camera handling
var lfIsMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) || (navigator.maxTouchPoints > 0 && /Mobi/i.test(navigator.userAgent));

function lfOpenCamera() {
    if (lfIsMobile) {
        // Mobile: native camera app khulega
        document.getElementById('lf-camera-input').click();
    } else {
        // Laptop/Desktop: webcam via getUserMedia
        lfStartWebcam();
    }
}

var lfCameraStream = null;
function lfStartWebcam() {
    if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
        lfToast('Camera not supported in this browser.', 'danger');
        return;
    }
    navigator.mediaDevices.getUserMedia({ video: { facingMode: 'environment' }, audio: false })
        .then(function(stream) {
            lfCameraStream = stream;
            var video = document.getElementById('lf-camera-video');
            video.srcObject = stream;
            video.play().catch(function(){});
            $('#lfCameraModal').modal('show');
        })
        .catch(function(err) {
            lfToast('Camera access denied: ' + err.name, 'danger');
        });
}

function lfCapturePhoto() {
    var video = document.getElementById('lf-camera-video');
    var canvas = document.createElement('canvas');
    canvas.width  = video.videoWidth  || 1280;
    canvas.height = video.videoHeight || 720;
    canvas.getContext('2d').drawImage(video, 0, 0, canvas.width, canvas.height);
    var dataUrl = canvas.toDataURL('image/jpeg', 0.85);
    lfPhotoFiles.push({ name: 'camera-' + Date.now() + '.jpg', data: dataUrl });
    lfRenderPhotos();
    lfStopWebcam();
    $('#lfCameraModal').modal('hide');
}

function lfStopWebcam() {
    if (lfCameraStream) {
        lfCameraStream.getTracks().forEach(function(t) { t.stop(); });
        lfCameraStream = null;
    }
    var video = document.getElementById('lf-camera-video');
    if (video) video.srcObject = null;
}

// Webcam stream band karo jab modal close (X / Cancel) hote hi
$('#lfCameraModal').on('hidden.bs.modal', function() {
    lfStopWebcam();
});

// Claim modal close hone par title wapas default karo
$('#lfClaimModal').on('hidden.bs.modal', function() {
    document.querySelector('#lfClaimModal .modal-title').innerHTML =
        '<i class="fa-solid fa-hand-holding-heart me-2"></i>Claim Record';
    document.getElementById('lf-claim-mode').value = 'new';
});

// Validation (new entry only)
function lfValidate() {
    var ok = true;
    var fbIsText = document.getElementById('lf-foundby-text').style.display !== 'none';
    var required = [
        { id: 'lf-founddate',     err: 'err-founddate'     },
        { id: 'lf-foundlocation', err: 'err-foundlocation' },
        { id: fbIsText ? 'lf-foundby-text' : 'lf-foundby', err: 'err-foundby' },
        { id: 'lf-itemcategory',  err: 'err-itemcategory'  },
        { id: 'lf-itemname',      err: 'err-itemname'      },
        { id: 'lf-itemcondition', err: 'err-itemcondition' },
    ];
    required.forEach(function(f) {
        var el = document.getElementById(f.id);
        var errEl = document.getElementById(f.err);
        if (!el || !el.value.trim()) {
            if (el) el.classList.add('is-invalid');
            if (errEl) errEl.style.display = 'block';
            ok = false;
        } else {
            el.classList.remove('is-invalid');
            if (errEl) errEl.style.display = 'none';
        }
    });
    return ok;
}

// Submit (new entry only)
function lfSubmit() {
    if (!lfValidate()) { lfToast('Please fill all required fields.', 'danger'); return; }
    var btn = document.querySelector('button[onclick="lfSubmit()"]');
    btn.disabled = true;
    btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin me-2"></i>Saving...';
    $.ajax({
        url:  '{{ route("storelostfound") }}',
        type: 'POST',
        data: {
            _token:          document.getElementById('lf-csrf').value,
            tagno:           document.getElementById('lf-tagno').value,
            founddate:       document.getElementById('lf-founddate').value,
            foundtime:       document.getElementById('lf-foundtime').value,
            roomno:          document.getElementById('lf-roomno').value,
            foundlocation:   document.getElementById('lf-foundlocation').value,
            foundby:         (function(){
                                var fbText = document.getElementById('lf-foundby-text');
                                return (fbText.style.display !== 'none') ? fbText.value : document.getElementById('lf-foundby').value;
                             })(),
            itemcategory:    document.getElementById('lf-itemcategory').value,
            itemname:        document.getElementById('lf-itemname').value,
            brandname:       document.getElementById('lf-brandname').value,
            color:           document.getElementById('lf-color').value,
            quantity:        document.getElementById('lf-quantity').value,
            Perishable:      document.getElementById('lf-uom').value,
            itemcondition:   document.getElementById('lf-itemcondition').value,
            description:     document.getElementById('lf-description').value,
            estimatedvalue:  document.getElementById('lf-estimatedvalue').value,
            storagelocation: document.getElementById('lf-storagelocation').value,
            remarks:         document.getElementById('lf-remarks').value,
            photos:          document.getElementById('lf-photos-json').value,
        },
        success: function(res) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-floppy-disk mr-2"></i>SAVE';
            if (res.success) {
                Swal.fire({
                    icon: 'success', title: 'Saved!',
                    text: 'Lost & Found entry saved. Tag No: ' + res.tagno,
                    confirmButtonColor: '#1e3a5f',
                    timer: 2000, timerProgressBar: true, showConfirmButton: false
                }).then(function() { location.reload(); });
            } else {
                Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Unable to save entry.', confirmButtonColor: '#dc3545' });
            }
        },
        error: function(xhr) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-floppy-disk mr-2"></i>SAVE';
            Swal.fire({ icon: 'error', title: 'Server Error', text: (xhr.responseJSON?.message || 'Something went wrong.'), confirmButtonColor: '#dc3545' });
        }
    });
}

// Clear
function lfClear(newTag) {
    document.getElementById('lfForm').reset();
    if (newTag) document.getElementById('lf-tagno').value = newTag;
    var roomInput = document.getElementById('lf-roomno');
    if (roomInput && roomInput.dataset.prefill) {
        roomInput.value = roomInput.dataset.prefill;
    }
    lfPhotoFiles = [];
    document.getElementById('lf-photo-grid').innerHTML = '';
    document.getElementById('lf-photos-json').value = '[]';
    $('#lf-founddate').datepicker('setDate', '{{ \Carbon\Carbon::parse($asOnDate)->format("d-m-Y") }}');
    document.querySelectorAll('.is-invalid').forEach(function(el){ el.classList.remove('is-invalid'); });
    var now = new Date();
    var hh = String(now.getHours()).padStart(2,'0');
    var mm = String(now.getMinutes()).padStart(2,'0');
    document.getElementById('lf-foundtime').value = hh + ':' + mm;
    document.getElementById('lf-uom').value = 'No';
    if (roomInput && roomInput.dataset.prefill) {
        document.getElementById('lf-foundlocation').value = 'Room Guest';
    }
    lfToggleLocationFields();
}


function lfPrint()       { window.print(); }

// Table search — client-side row filter
function lfSearchTable(query) {
    var q = query.trim().toLowerCase();
    var rows = document.querySelectorAll('#lf-entries-table tbody tr');
    rows.forEach(function(row) {
        if (!q) { row.style.display = ''; return; }
        row.style.display = row.textContent.toLowerCase().indexOf(q) !== -1 ? '' : 'none';
    });
}

// Claim Record
function lfClaimRecord(id, status) {
    // Modal me koi data fetch/prefill nahi — user naya claim data insert karega
    document.getElementById('lf-claim-id').value = id;
    document.getElementById('lf-claim-curstatus').value = status || 'Found';
    document.getElementById('lf-claim-mode').value = 'new';
    document.querySelector('#lfClaimModal .modal-title').innerHTML =
        '<i class="fa-solid fa-hand-holding-heart me-2"></i>Claim Record';
    document.getElementById('lf-claim-guestname').value = '';
    document.getElementById('lf-claim-mobileno').value = '';
    document.getElementById('lf-claim-email').value = '';
    document.getElementById('lf-claim-claim-remarks').value = '';
    document.getElementById('lf-claim-handoverto').value = '';
    document.getElementById('lf-claim-receivedby').value = '';

    // Current date prefill (DD-MM-YYYY)
    var now = new Date();
    var dd   = String(now.getDate()).padStart(2, '0');
    var mm   = String(now.getMonth() + 1).padStart(2, '0');
    var yyyy = now.getFullYear();
    $('#lf-claim-handoverdt').datepicker('setDate', dd + '-' + mm + '-' + yyyy);

    // Current time prefill (HH:MM 24hr) — editable
    var hh24 = String(now.getHours()).padStart(2, '0');
    var min  = String(now.getMinutes()).padStart(2, '0');
    document.getElementById('lf-claim-handovertime').value = hh24 + ':' + min;

    // Clear any previous validation errors
    ['lf-claim-guestname','lf-claim-mobileno','lf-claim-email','lf-claim-handoverto',
     'lf-claim-handoverdt','lf-claim-handovertime','lf-claim-receivedby'].forEach(function(fid) {
        var el = document.getElementById(fid);
        if (el) el.classList.remove('is-invalid');
    });
    ['err-claim-guestname','err-claim-mobileno','err-claim-email','err-claim-handoverto',
     'err-claim-handoverdt','err-claim-handovertime','err-claim-receivedby'].forEach(function(fid) {
        var el = document.getElementById(fid);
        if (el) el.style.display = 'none';
    });
    $('#lfClaimModal').modal('show');
}

// Edit Claim — existing claimed record ka data prefill karke modal kholo
function lfEditClaim(id) {
    $.ajax({
        url: '{{ route("lostfoundedit", ":id") }}'.replace(':id', id),
        type: 'GET',
        success: function(res) {
            if (!res.success) {
                Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Record not found.', confirmButtonColor: '#dc3545' });
                return;
            }
            var d = res.data;
            document.getElementById('lf-claim-id').value          = id;
            document.getElementById('lf-claim-curstatus').value   = d.status || 'Claimed';
            document.getElementById('lf-claim-mode').value        = 'edit';

            // Modal title — Edit mode indicate karo
            document.querySelector('#lfClaimModal .modal-title').innerHTML =
                '<i class="fa-solid fa-pen-to-square me-2"></i>Edit Claim Record';

            // Prefill guest/claim fields
            document.getElementById('lf-claim-guestname').value        = d.claimby       || '';
            document.getElementById('lf-claim-mobileno').value         = d.claimmoblieno || '';
            document.getElementById('lf-claim-email').value            = d.claimemail    || '';
            document.getElementById('lf-claim-claim-remarks').value    = d.claimremark   || '';
            document.getElementById('lf-claim-handoverto').value       = d.handoverto    || '';
            document.getElementById('lf-claim-receivedby').value       = d.receivedby    || '';

            // Handover date prefill — DB mein YYYY-MM-DD HH:MM:SS format hoga
            if (d.handoverdate && d.handoverdate !== '0000-00-00 00:00:00' && d.handoverdate !== '') {
                var dtParts = d.handoverdate.split(' ');          // ["2026-08-11", "13:36:00"]
                var dateParts = dtParts[0].split('-');            // ["2026","08","11"]
                if (dateParts.length === 3) {
                    $('#lf-claim-handoverdt').datepicker('setDate',
                        dateParts[2] + '-' + dateParts[1] + '-' + dateParts[0]);  // DD-MM-YYYY
                }
                var timePart = dtParts[1] ? dtParts[1].substring(0, 5) : '';     // "13:36"
                document.getElementById('lf-claim-handovertime').value = timePart;
            } else {
                // Fallback — current date/time
                var now2 = new Date();
                $('#lf-claim-handoverdt').datepicker('setDate',
                    String(now2.getDate()).padStart(2,'0') + '-' +
                    String(now2.getMonth()+1).padStart(2,'0') + '-' +
                    now2.getFullYear());
                document.getElementById('lf-claim-handovertime').value =
                    String(now2.getHours()).padStart(2,'0') + ':' + String(now2.getMinutes()).padStart(2,'0');
            }

            // Clear validation errors
            ['lf-claim-guestname','lf-claim-mobileno','lf-claim-email','lf-claim-handoverto',
             'lf-claim-handoverdt','lf-claim-handovertime','lf-claim-receivedby'].forEach(function(fid) {
                var el = document.getElementById(fid); if (el) el.classList.remove('is-invalid');
            });
            ['err-claim-guestname','err-claim-mobileno','err-claim-email','err-claim-handoverto',
             'err-claim-handoverdt','err-claim-handovertime','err-claim-receivedby'].forEach(function(fid) {
                var el = document.getElementById(fid); if (el) el.style.display = 'none';
            });
            $('#lfClaimModal').modal('show');
        },
        error: function() {
            Swal.fire({ icon: 'error', title: 'Server Error', text: 'Could not load record.', confirmButtonColor: '#dc3545' });
        }
    });
}

// Claim Modal Validation
function lfValidateClaim() {
    var ok = true;

    // Guest Name - compulsory
    var guestname = document.getElementById('lf-claim-guestname');
    var errGuestname = document.getElementById('err-claim-guestname');
    if (!guestname.value.trim()) {
        guestname.classList.add('is-invalid');
        errGuestname.style.display = 'block';
        ok = false;
    } else {
        guestname.classList.remove('is-invalid');
        errGuestname.style.display = 'none';
    }

    // Mobile No - compulsory
    var mobileno = document.getElementById('lf-claim-mobileno');
    var errMobileno = document.getElementById('err-claim-mobileno');
    if (!mobileno.value.trim()) {
        mobileno.classList.add('is-invalid');
        errMobileno.style.display = 'block';
        ok = false;
    } else {
        mobileno.classList.remove('is-invalid');
        errMobileno.style.display = 'none';
    }

    // Handover To - compulsory
    var handoverto = document.getElementById('lf-claim-handoverto');
    var errHandoverto = document.getElementById('err-claim-handoverto');
    if (!handoverto.value.trim()) {
        handoverto.classList.add('is-invalid');
        errHandoverto.style.display = 'block';
        ok = false;
    } else {
        handoverto.classList.remove('is-invalid');
        errHandoverto.style.display = 'none';
    }

    // Handover Date - compulsory
    var handoverdt = document.getElementById('lf-claim-handoverdt');
    var errHandoverdt = document.getElementById('err-claim-handoverdt');
    if (!handoverdt.value.trim()) {
        handoverdt.classList.add('is-invalid');
        errHandoverdt.style.display = 'block';
        ok = false;
    } else {
        handoverdt.classList.remove('is-invalid');
        errHandoverdt.style.display = 'none';
    }

    // Handover Time - compulsory
    var handovertime = document.getElementById('lf-claim-handovertime');
    var errHandovertime = document.getElementById('err-claim-handovertime');
    if (!handovertime.value.trim()) {
        handovertime.classList.add('is-invalid');
        errHandovertime.style.display = 'block';
        ok = false;
    } else {
        handovertime.classList.remove('is-invalid');
        errHandovertime.style.display = 'none';
    }

    // Received By - compulsory
    var receivedby = document.getElementById('lf-claim-receivedby');
    var errReceivedby = document.getElementById('err-claim-receivedby');
    if (!receivedby.value.trim()) {
        receivedby.classList.add('is-invalid');
        errReceivedby.style.display = 'block';
        ok = false;
    } else {
        receivedby.classList.remove('is-invalid');
        errReceivedby.style.display = 'none';
    }

    // Email - optional; agar bhara hai toh valid email hona chahiye
    var email = document.getElementById('lf-claim-email');
    var errEmail = document.getElementById('err-claim-email');
    var emailVal = email.value.trim();
    var emailRe = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (emailVal && !emailRe.test(emailVal)) {
        email.classList.add('is-invalid');
        errEmail.style.display = 'block';
        ok = false;
    } else {
        email.classList.remove('is-invalid');
        errEmail.style.display = 'none';
    }

    return ok;
}

// Save Claim
function lfSaveClaim() {
    if (!lfValidateClaim()) { lfToast('Please fill all required fields.', 'danger'); return; }
    var btn = document.querySelector('#lfClaimModal .btn-success');
    btn.disabled = true;
    btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin me-1"></i>Saving...';
    $.ajax({
        url:  '{{ route("updatelostfound") }}',
        type: 'POST',
        data: {
            _token:        '{{ csrf_token() }}',
            id:            document.getElementById('lf-claim-id').value,
            status:        (document.getElementById('lf-claim-mode').value === 'edit')
                               ? ''   // edit mode — status change mat karo, controller purana rakhega
                               : (['Found', 'Stored'].indexOf(document.getElementById('lf-claim-curstatus').value) !== -1 ? 'Claimed' : ''),
            guestname:     document.getElementById('lf-claim-guestname').value,
            mobileno:      document.getElementById('lf-claim-mobileno').value,
            email:         document.getElementById('lf-claim-email').value,
            claim_remarks: document.getElementById('lf-claim-claim-remarks').value,
            handoverto:    document.getElementById('lf-claim-handoverto').value,
            handoverdt:    (function(){
                               var d = document.getElementById('lf-claim-handoverdt').value.trim();
                               var t = document.getElementById('lf-claim-handovertime').value.trim();
                               if (!d) return '';
                               return t ? (d + ' ' + t) : d;
                           })(),
            receivedby:    document.getElementById('lf-claim-receivedby').value,
        },
        success: function(res) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-floppy-disk me-1"></i>Save Claim';
            if (res.success) {
                $('#lfClaimModal').modal('hide');
                Swal.fire({
                    icon: 'success',
                    title: 'Claim Saved!',
                    text: 'Lost & Found claim has been recorded successfully.',
                    confirmButtonColor: '#1e3a5f',
                    timer: 2000,
                    timerProgressBar: true,
                    showConfirmButton: false
                }).then(function() { location.reload(); });
            } else {
                Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Unable to save claim.', confirmButtonColor: '#dc3545' });
            }
        },
        error: function(xhr) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-floppy-disk me-1"></i>Save Claim';
            Swal.fire({ icon: 'error', title: 'Server Error', text: (xhr.responseJSON?.message || 'Something went wrong. Please try again.'), confirmButtonColor: '#dc3545' });
        }
    });
}

// Notification — SweetAlert2 Toast (top-end, auto-close)
var LfSwalToast = Swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    didOpen: function(toast) {
        toast.addEventListener('mouseenter', Swal.stopTimer);
        toast.addEventListener('mouseleave', Swal.resumeTimer);
    }
});

function lfToast(msg, type) {
    var iconMap = { success: 'success', danger: 'error', warning: 'warning', info: 'info' };
    LfSwalToast.fire({
        icon: iconMap[type] || 'info',
        title: msg
    });
}

// Keep inputs editable (kisi global CSS/theme se readonly na ho)
setInterval(function () {
    $('input[type="text"], input[type="number"], input[type="email"], textarea').prop('readonly', false);
}, 1000);

// ── Edit Entry (Found status) — Modal based ────────────────────────────────
function lfEditEntry(id) {
    $.ajax({
        url: '{{ route("lostfoundedit", ":id") }}'.replace(':id', id),
        type: 'GET',
        success: function(res) {
            if (!res.success) {
                Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Record not found.', confirmButtonColor: '#dc3545' });
                return;
            }
            var d = res.data;

            // Store id
            document.getElementById('lf-edit-id').value = id;

            // Found Date (DB: YYYY-MM-DD)
            if (d.founddate) {
                var fp = d.founddate.split('-');
                if (fp.length === 3) {
                    $('#lf-edit-founddate').datepicker('setDate', fp[2] + '-' + fp[1] + '-' + fp[0]);
                }
            } else {
                $('#lf-edit-founddate').datepicker('update', '');
            }

            // Found Time
            document.getElementById('lf-edit-foundtime').value      = d.foundtime ? d.foundtime.substring(0,5) : '';
            // Room No
            document.getElementById('lf-edit-roomno').value         = d.roomno          || '';
            // Found By — plain text field (DB stores name or sn as text)
            document.getElementById('lf-edit-foundby').value        = d.foundby         || '';
            // Location
            document.getElementById('lf-edit-foundlocation').value  = d.foundlocation   || '';
            // Item fields
            document.getElementById('lf-edit-itemcategory').value   = d.itemcategory    || '';
            document.getElementById('lf-edit-itemname').value       = d.itemname        || '';
            document.getElementById('lf-edit-brandname').value      = d.brandname       || '';
            document.getElementById('lf-edit-color').value          = d.color           || '';
            document.getElementById('lf-edit-quantity').value       = d.quantity        || 1;
            document.getElementById('lf-edit-perishable').value     = d.perishable      || 'No';
            document.getElementById('lf-edit-itemcondition').value  = d.itemcondition   || '';
            document.getElementById('lf-edit-description').value    = d.description     || '';
            document.getElementById('lf-edit-estimatedvalue').value = d.estimatedvalue  || '';
            document.getElementById('lf-edit-storagelocation').value= d.storagelocation || '';
            document.getElementById('lf-edit-remarks').value        = d.remarks         || '';

            // Clear any stale validation errors
            ['lf-edit-founddate','lf-edit-foundlocation','lf-edit-itemcategory',
             'lf-edit-itemname','lf-edit-itemcondition'].forEach(function(fid){
                var el = document.getElementById(fid);
                if (el) el.classList.remove('is-invalid');
            });
            ['err-edit-founddate','err-edit-foundlocation','err-edit-itemcategory',
             'err-edit-itemname','err-edit-itemcondition'].forEach(function(fid){
                var el = document.getElementById(fid);
                if (el) el.style.display = 'none';
            });

            $('#lfEditModal').modal('show');
        },
        error: function() {
            Swal.fire({ icon: 'error', title: 'Server Error', text: 'Could not load record.', confirmButtonColor: '#dc3545' });
        }
    });
}

// ── Save Edit Entry ─────────────────────────────────────────────────────────
function lfSaveEditEntry() {
    // Validate required fields in modal
    var ok = true;
    var required = [
        { id: 'lf-edit-founddate',     err: 'err-edit-founddate'     },
        { id: 'lf-edit-foundlocation', err: 'err-edit-foundlocation' },
        { id: 'lf-edit-itemcategory',  err: 'err-edit-itemcategory'  },
        { id: 'lf-edit-itemname',      err: 'err-edit-itemname'      },
        { id: 'lf-edit-itemcondition', err: 'err-edit-itemcondition' },
    ];
    required.forEach(function(f) {
        var el = document.getElementById(f.id);
        var errEl = document.getElementById(f.err);
        if (!el || !el.value.trim()) {
            if (el) el.classList.add('is-invalid');
            if (errEl) errEl.style.display = 'block';
            ok = false;
        } else {
            el.classList.remove('is-invalid');
            if (errEl) errEl.style.display = 'none';
        }
    });
    if (!ok) { lfToast('Please fill all required fields.', 'danger'); return; }

    var btn = document.getElementById('lf-edit-save-btn');
    btn.disabled = true;
    btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin me-1"></i>Updating...';

    $.ajax({
        url:  '{{ route("updatelostfoundentry") }}',
        type: 'POST',
        data: {
            _token:          '{{ csrf_token() }}',
            id:              document.getElementById('lf-edit-id').value,
            founddate:       document.getElementById('lf-edit-founddate').value,
            foundtime:       document.getElementById('lf-edit-foundtime').value,
            roomno:          document.getElementById('lf-edit-roomno').value,
            foundby:         document.getElementById('lf-edit-foundby').value,
            foundlocation:   document.getElementById('lf-edit-foundlocation').value,
            itemcategory:    document.getElementById('lf-edit-itemcategory').value,
            itemname:        document.getElementById('lf-edit-itemname').value,
            brandname:       document.getElementById('lf-edit-brandname').value,
            color:           document.getElementById('lf-edit-color').value,
            quantity:        document.getElementById('lf-edit-quantity').value,
            Perishable:      document.getElementById('lf-edit-perishable').value,
            itemcondition:   document.getElementById('lf-edit-itemcondition').value,
            description:     document.getElementById('lf-edit-description').value,
            estimatedvalue:  document.getElementById('lf-edit-estimatedvalue').value,
            storagelocation: document.getElementById('lf-edit-storagelocation').value,
            remarks:         document.getElementById('lf-edit-remarks').value,
        },
        success: function(res) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-floppy-disk me-1"></i>Update Entry';
            if (res.success) {
                $('#lfEditModal').modal('hide');
                Swal.fire({
                    icon: 'success',
                    title: 'Updated!',
                    text: 'Entry updated successfully.',
                    confirmButtonColor: '#1e3a5f',
                    timer: 2000,
                    timerProgressBar: true,
                    showConfirmButton: false
                }).then(function() { location.reload(); });
            } else {
                Swal.fire({ icon: 'error', title: 'Error', text: res.message || 'Unable to update.', confirmButtonColor: '#dc3545' });
            }
        },
        error: function(xhr) {
            btn.disabled = false;
            btn.innerHTML = '<i class="fa-solid fa-floppy-disk me-1"></i>Update Entry';
            Swal.fire({ icon: 'error', title: 'Server Error', text: (xhr.responseJSON?.message || 'Something went wrong.'), confirmButtonColor: '#dc3545' });
        }
    });
}

</script>

@endsection
