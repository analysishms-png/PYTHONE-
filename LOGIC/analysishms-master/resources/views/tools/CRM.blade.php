@extends('tools.layouts.main')

@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

    <div class="content-body">
        <div class="container-fluid">

            <a href="{{ route('markDashboard') }}" class="btn btn-secondary mb-3">
                ← Back to Dashboard
            </a>

            @if (session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('success') }}
                    <button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
                </div>
            @endif
            @if ($errors->any())
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ $errors->first() }}
                    <button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
                </div>
            @endif

            <div class="card shadow-sm mb-3">
                <div class="card-header d-flex justify-content-between align-items-center" style="cursor:pointer;"
                    id="addEntryToggle">
                    <span class="font-weight-bold text-primary">
                        <i class="fas fa-plus-circle mr-1"></i> Add New CRM Entry
                    </span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div id="addEntryForm" style="display:none;">
                    <div class="card-body">
                        <form action="{{ route('CRM.store') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Name <span class="text-danger">*</span></label>
                                    <input type="text" name="name" class="form-control" value="{{ old('name') }}"
                                        required placeholder="Full name">
                                </div>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Email</label>
                                    <input type="email" name="email" class="form-control" value="{{ old('email') }}"
                                        placeholder="email@example.com">
                                </div>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Mobile No.</label>
                                    <input type="text" name="phone_number" class="form-control"
                                        value="{{ old('phone_number') }}" placeholder="10-digit number" required>
                                </div>
                                <label class="font-weight-bold">Hotel Name <span class="text-danger">*</span></label>
                                <input type="text" name="hotel_name" class="form-control" value="{{ old('hotel_name') }}"
                                    placeholder="Hotel / Property name" required>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">City <span class="text-danger">*</span></label>
                                    <input type="text" name="CityName" class="form-control" value="{{ old('CityName') }}"
                                        placeholder="City" required>
                                </div>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Ref. Person <span class="text-danger">*</span></label>
                                    <input type="text" name="RefPerson" class="form-control"
                                        value="{{ old('RefPerson') }}" placeholder="Reference person" required>
                                </div>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Product <span class="text-danger">*</span></label>
                                    <input type="text" name="ProductName" class="form-control"
                                        value="{{ old('ProductName') }}" placeholder="Product name" required>
                                </div>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Module</label>
                                    <input type="text" name="ModuleName" class="form-control"
                                        value="{{ old('ModuleName') }}" placeholder="Module name">
                                </div>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Order Value (₹)</label>
                                    <input type="number" name="OrderValue" class="form-control"
                                        value="{{ old('OrderValue') }}" placeholder="0.00" step="0.01" min="0">
                                </div>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Assigned Person</label>
                                    <select name="AssPerson" id="add_assperson" class="form-control" required>
                                        <option value="">— Select —</option>
                                        @foreach ($assignedPersons as $person)
                                            <option value="{{ $person->name }}"
                                                {{ old('AssPerson') == $person->name ? 'selected' : '' }}>
                                                {{ $person->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-12 col-sm-6 col-md-2 mb-3">
                                    <label class="font-weight-bold">Demo Done?</label>
                                    <select name="DemoYN" class="form-control">
                                        <option value="">— Select —</option>
                                        <option value="Y" {{ old('DemoYN') == 'Y' ? 'selected' : '' }}>Yes</option>
                                        <option value="N" {{ old('DemoYN') == 'N' ? 'selected' : '' }}>No</option>
                                    </select>
                                </div>
                                <div class="col-12 col-sm-6 col-md-2 mb-3">
                                    <label class="font-weight-bold">Quotation Sent?</label>
                                    <select name="QuotationYN" class="form-control">
                                        <option value="">— Select —</option>
                                        <option value="Y" {{ old('QuotationYN') == 'Y' ? 'selected' : '' }}>Yes
                                        </option>
                                        <option value="N" {{ old('QuotationYN') == 'N' ? 'selected' : '' }}>No
                                        </option>
                                    </select>
                                </div>
                                <div class="col-12 col-sm-6 col-md-2 mb-3">
                                    <label class="font-weight-bold">Status</label>
                                    <select name="Status" class="form-control">
                                        <option value="">— Select —</option>
                                        <option value="New Lead" {{ old('Status') == 'New Lead' ? 'selected' : '' }}>New
                                            Lead</option>
                                        <option value="In Progress"
                                            {{ old('Status') == 'In Progress' ? 'selected' : '' }}>In Progress</option>
                                        <option value="Demo Scheduled"
                                            {{ old('Status') == 'Demo Scheduled' ? 'selected' : '' }}>Demo Scheduled
                                        </option>
                                        <option value="Negotiation"
                                            {{ old('Status') == 'Negotiation' ? 'selected' : '' }}>Negotiation</option>
                                        <option value="Closed Won" {{ old('Status') == 'Closed Won' ? 'selected' : '' }}>
                                            Closed Won</option>
                                        <option value="Closed Lost"
                                            {{ old('Status') == 'Closed Lost' ? 'selected' : '' }}>Closed Lost</option>
                                    </select>
                                </div>
                                <div class="col-12 col-sm-6 col-md-3 mb-3">
                                    <label class="font-weight-bold">Next Follow Date</label>
                                    <input type="date" name="nextfollowdate" class="form-control"
                                        value="{{ old('nextfollowdate') }}" required>
                                </div>
                                <div class="col-12 col-sm-6 col-md-9 mb-3">
                                    <label class="font-weight-bold">Remark</label>
                                    <input type="text" name="remark" class="form-control"
                                        value="{{ old('remark') }}" placeholder="Remark">
                                </div>
                            </div>

                            <div class="mt-2">
                                <button type="submit" class="btn btn-primary mr-2">
                                    <i class="fas fa-save mr-1"></i> Save Entry
                                </button>
                                <button type="reset" class="btn btn-outline-secondary">
                                    <i class="fas fa-undo mr-1"></i> Reset
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="card shadow-sm p-3">
                <div class="table-responsive">
                    <table id="crmTable" class="table table-bordered table-hover text-center">
                        <thead class="table-light" style="font-weight: bold;">
                            <tr>
                                <th style="width: 4%;">No.</th>
                                <th style="text-align: left;">Name</th>
                                <th>Order No</th>
                                <th style="text-align: left;">Email</th>
                                <th>Mobile No.</th>
                                <th>Hotel</th>
                                <th>City</th>
                                <th>Ass. Person</th>
                                <th>Product</th>
                                <th>Module</th>
                                <th>Ref. Person</th>
                                <th>Demo</th>
                                <th>Quotation</th>
                                <th>Order Value</th>
                                <th>Status</th>
                                <th>Next Follow</th>
                                <th>Remark</th>
                                <th>Created At</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            @forelse ($crmData as $row)
                                <tr>
                                    <td class="font-weight-bold">{{ $loop->iteration }}</td>
                                    <td class="text-left font-weight-bold">{{ $row->name }}</td>
                                    <td class="text-primary">{{ $row->orderno ?? '—' }}</td>
                                    <td>{{ $row->email ?? '—' }}</td>
                                    <td>{{ $row->phone_number ?? '—' }}</td>
                                    <td>{{ $row->hotel_name ?? '—' }}</td>
                                    <td>{{ $row->CityName ?? '—' }}</td>
                                    <td>{{ $row->AssPerson ?? '—' }}</td>
                                    <td>{{ $row->ProductName ?? '—' }}</td>
                                    <td>{{ $row->ModuleName ?? '—' }}</td>
                                    <td>{{ $row->RefPerson ?? '—' }}</td>

                                    <td>
                                        @if ($row->DemoYN == 'Y')
                                            <span class="badge badge-success">Yes</span>
                                        @elseif($row->DemoYN == 'N')
                                            <span class="badge badge-danger">No</span>
                                        @else
                                            <span class="text-muted">—</span>
                                        @endif
                                    </td>

                                    <td>
                                        @if ($row->QuotationYN == 'Y')
                                            <span class="badge badge-success">Yes</span>
                                        @elseif($row->QuotationYN == 'N')
                                            <span class="badge badge-danger">No</span>
                                        @else
                                            <span class="text-muted">—</span>
                                        @endif
                                    </td>

                                    <td class="text-success font-weight-bold">
                                        {{ $row->OrderValue ? '₹ ' . number_format($row->OrderValue, 2) : '—' }}
                                    </td>

                                    <td>
                                        @if ($row->Status)
                                            <span class="badge badge-info" style="font-size: 0.85rem;">
                                                {{ $row->Status }}
                                            </span>
                                        @else
                                            <span class="text-muted">—</span>
                                        @endif
                                    </td>

                                    <td>{{ $row->nextfollowdate ?? '-' }}</td>
                                    <td>{{ $row->remark ?? '-' }}</td>

                                    <td>
                                        {{ $row->created_at ? \Carbon\Carbon::parse($row->created_at)->format('d M Y') : '—' }}
                                    </td>

                                    <td>
                                        @php
                                            $loggedUser = auth()->user()->name;
                                            $isSupervisor = auth()->user()->superwiser == 1;

                                            $hasAccess = $isSupervisor || $row->AssPerson == $loggedUser;
                                        @endphp

                                        <div class="d-flex align-items-center justify-content-center">
                                            <button class="btn btn-warning edit-btn mr-2"
                                                style="font-size:0.95rem; padding: 6px 14px; white-space: nowrap; {{ $hasAccess ? '' : 'opacity:0.5;cursor:not-allowed;' }}"
                                                {{ $hasAccess ? '' : 'disabled' }}
                                                title="{{ $hasAccess ? 'Edit' : 'Only assigned user can edit' }}"
                                                data-id="{{ $row->id }}" data-orderno="{{ $row->orderno }}"
                                                data-name="{{ $row->name }}" data-email="{{ $row->email }}"
                                                data-phone="{{ $row->phone_number }}"
                                                data-hotel="{{ $row->hotel_name }}" data-city="{{ $row->CityName }}"
                                                data-assperson="{{ $row->AssPerson }}"
                                                data-product="{{ $row->ProductName }}"
                                                data-module="{{ $row->ModuleName }}"
                                                data-refperson="{{ $row->RefPerson }}" data-demo="{{ $row->DemoYN }}"
                                                data-quotation="{{ $row->QuotationYN }}"
                                                data-ordervalue="{{ $row->OrderValue }}"
                                                data-status="{{ $row->Status }}"
                                                data-nextfollowdate="{{ $row->nextfollowdate }}"
                                                data-remark="{{ $row->remark }}">
                                                <i class="fas fa-edit"></i> Edit
                                            </button>

                                            <a href="{{ route('CRM.quotation', $row->orderno) }}" target="_blank"
                                                class="btn btn-info"
                                                style="font-size:0.95rem; padding: 6px 14px; white-space: nowrap;"
                                                title="Make Quotation">
                                                <i class="fas fa-file-invoice"></i> Make Quotation
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="19" class="text-muted py-4">
                                        <i class="fas fa-inbox"></i> No records found
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>

    {{-- EDIT MODAL --}}
    <div class="modal fade" id="editModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title font-weight-bold text-primary">
                        <i class="fas fa-edit mr-1"></i> Edit CRM Entry
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('CRM.update') }}" method="POST">
                    @csrf
                    <input type="hidden" name="id" id="edit_id">
                    <input type="hidden" name="orderno" id="edit_orderno_hidden">

                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Name <span class="text-danger">*</span></label>
                                <input type="text" name="name" id="edit_name" class="form-control" required>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Email</label>
                                <input type="email" name="email" id="edit_email" class="form-control">
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Mobile No.</label>
                                <input type="text" name="phone_number" id="edit_phone" class="form-control" required>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 mb-3">
                                <label class="font-weight-bold">Hotel Name <span class="text-danger">*</span></label>
                                <input type="text" name="hotel_name" id="edit_hotel" class="form-control" required>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">City <span class="text-danger">*</span></label>
                                <input type="text" name="CityName" id="edit_city" class="form-control" required>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Ref. Person <span class="text-danger">*</span></label>
                                <input type="text" name="RefPerson" id="edit_refperson" class="form-control"
                                    required>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Product <span class="text-danger">*</span></label>
                                <input type="text" name="ProductName" id="edit_product" class="form-control"
                                    required>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Module</label>
                                <input type="text" name="ModuleName" id="edit_module" class="form-control">
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Order Value (₹)</label>
                                <input type="number" name="OrderValue" id="edit_ordervalue" class="form-control"
                                    step="0.01" min="0">
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Assigned Person</label>
                                <select name="AssPerson" id="edit_assperson" class="form-control" required>
                                    <option value="">— Select —</option>
                                    @foreach ($assignedPersons as $person)
                                        <option value="{{ $person->name }}">{{ $person->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-12 col-sm-6 col-md-2 mb-3">
                                <label class="font-weight-bold">Demo Done?</label>
                                <select name="DemoYN" id="edit_demo" class="form-control">
                                    <option value="">— Select —</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-12 col-sm-6 col-md-2 mb-3">
                                <label class="font-weight-bold">Quotation Sent?</label>
                                <select name="QuotationYN" id="edit_quotation" class="form-control">
                                    <option value="">— Select —</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-12 col-sm-6 col-md-2 mb-3">
                                <label class="font-weight-bold">Status</label>
                                <select name="Status" id="edit_status" class="form-control">
                                    <option value="">— Select —</option>
                                    <option value="New Lead">New Lead</option>
                                    <option value="In Progress">In Progress</option>
                                    <option value="Demo Scheduled">Demo Scheduled</option>
                                    <option value="Negotiation">Negotiation</option>
                                    <option value="Closed Won">Closed Won</option>
                                    <option value="Closed Lost">Closed Lost</option>
                                </select>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 mb-3">
                                <label class="font-weight-bold">Next Follow Date</label>
                                <input type="date" name="nextfollowdate" id="edit_nextfollowdate"
                                    class="form-control" required>
                            </div>
                            <div class="col-12 col-sm-6 col-md-9 mb-3">
                                <label class="font-weight-bold">Remark</label>
                                <input type="text" name="remark" id="edit_remark" class="form-control"
                                    placeholder="Remark">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-save mr-1"></i> Update Entry
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {

            $('#addEntryToggle').on('click', function() {
                let form = $('#addEntryForm');
                if (form.is(':visible')) {
                    form.slideUp(200);
                    $(this).find('.fa-chevron-down').removeClass('rotate');
                } else {
                    form.slideDown(200);
                    $(this).find('.fa-chevron-down').addClass('rotate');
                }
            });
            setInterval(function() {
                $('input[type="text"], input[type="number"], input[type="email"], textarea').prop(
                    'readonly', false);
            }, 1000);

            @if ($errors->any())
                $('#addEntryForm').show();
                $('#addEntryToggle .fa-chevron-down').css('transform', 'rotate(180deg)');
            @endif

            $(document).on('click', '.edit-btn', function() {
                var btn = $(this);
                $('#edit_id').val(btn.data('id'));
                $('#edit_orderno_hidden').val(btn.data('orderno'));
                $('#edit_name').val(btn.data('name'));
                $('#edit_email').val(btn.data('email'));
                $('#edit_phone').val(btn.data('phone'));
                $('#edit_hotel').val(btn.data('hotel'));
                $('#edit_city').val(btn.data('city'));
                $('#edit_assperson').val(btn.data('assperson'));
                $('#edit_product').val(btn.data('product'));
                $('#edit_module').val(btn.data('module'));
                $('#edit_refperson').val(btn.data('refperson'));
                $('#edit_ordervalue').val(btn.data('ordervalue'));
                $('#edit_demo').val(btn.data('demo'));
                $('#edit_quotation').val(btn.data('quotation'));
                $('#edit_status').val(btn.data('status'));
                $('#edit_nextfollowdate').val(btn.data('nextfollowdate'));
                $('#edit_remark').val(btn.data('remark'));
                $('#editModal').modal('show');
            });

            let table = $('#crmTable').DataTable({
                "order": [
                    [2, "asc"]
                ],
                "pageLength": 10,
            });

            table.on('order.dt search.dt', function() {
                table.column(0, {
                        search: 'applied',
                        order: 'applied'
                    })
                    .nodes()
                    .each(function(cell, i) {
                        cell.innerHTML = i + 1;
                    });
            }).draw();
        });
        $('form').on('submit', function(e) {

            let phone = $(this).find('[name="phone_number"]').val();
            let assPerson = $(this).find('[name="AssPerson"]').val();
            let followDate = $(this).find('[name="nextfollowdate"]').val();
            let hotel = $(this).find('[name="hotel_name"]').val();
            let city = $(this).find('[name="CityName"]').val();
            let product = $(this).find('[name="ProductName"]').val();
            let refPerson = $(this).find('[name="RefPerson"]').val();

            if (!phone || !assPerson || !followDate || !hotel || !city || !product || !refPerson) {
                e.preventDefault();
                alert('❌ All required fields must be filled');
                return false;
            }

            if (phone.length != 10 || isNaN(phone)) {
                e.preventDefault();
                alert('❌ Enter valid 10 digit phone number');
                return false;
            }

        });
    </script>
@endsection
