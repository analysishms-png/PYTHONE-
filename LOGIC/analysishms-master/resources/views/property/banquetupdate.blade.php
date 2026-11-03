@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <style>
        .table td,
        .table th {
            padding: 5px;
        }
    </style>
    <link href="{{ asset('admin/plugins/clockpicker/dist/jquery-clockpicker.min.css') }}" rel="stylesheet">
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <h6 class="mb-3 text-center">Function Prospected No. <span
                                    class="font-weight-bold ADA">{{ maxvno('IBOOK', ncurdate()) }}</span></h6>
                            <form id="banquetbookingform" name="banquetbookingform"
                                action="{{ url('banquetbookingupdate') }}" method="POST">
                                @csrf
                                <input type="hidden" name="totalrows" value="{{ count($venues) }}" id="totalrows">
                                <input type="hidden" value="{{ $hallbook->docid }}" name="docid" id="docid">
                                <input type="hidden" value="{{ $hallbook->vno }}" name="bookno" id="bookno">
                                <input type="hidden" value="{{ companydata()->comp_name }}" id="compname" name="compname">
                                <input type="hidden" value="{{ companydata()->address1 }}" id="address" name="address">
                                <input type="hidden" value="{{ companydata()->mobile }}" id="compmob" name="compmob">
                                <input type="hidden" value="{{ companydata()->email }}" id="email" name="email">
                                <input type="hidden" value="{{ companydata()->logo }}" id="logo" name="logo">
                                <input type="hidden" value="{{ companydata()->u_name }}" id="u_name" name="u_name">
                                <input type="hidden" value="{{ $hallbook->partyname }}" id="name" name="name">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="booking_date">Booking Date</label>
                                                <input type="date" value="{{ $hallbook->vdate }}" class="form-control"
                                                    id="booking_date" name="booking_date" {{ banquetparameter()->booking_edit == 0 ? 'readonly' : '' }}>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="day">Day</label>
                                                <input type="text" value="{{ getDayNameFromDate(ncurdate()) }}"
                                                    class="form-control" id="day" name="day" readonly>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="party">Party</label>
                                                <input type="text" value="{{ $hallbook->partyname }}" class="form-control"
                                                    id="party" name="party" required>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="address">Address</label>
                                                <input type="text" value="{{ $hallbook->add1 }}" class="form-control"
                                                    id="address" name="address">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="city_name">City Name</label>
                                                <select class="form-control select2-multiple" name="city_name"
                                                    id="city_name" required>
                                                    <option value="">Select</option>
                                                    @foreach (allcities() as $col)
                                                        <option value="{{ $col->city_code }}" {{ $hallbook->city == $col->city_code ? 'selected' : '' }}>
                                                            {{ $col->cityname }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="mobile_no">Mobile No.</label>
                                                <input type="text" value="{{ $hallbook->mobileno }}" class="form-control"
                                                    id="mobile_no" name="mobile_no">
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="mobile_no2">Mobile No 2.</label>
                                                <input type="text" value="{{ $hallbook->mobileno1 }}" class="form-control"
                                                    id="mobile_no2" name="mobile_no2">
                                            </div>

                                            <div class="col-md-6 mb-1">
                                                <label for="pan_no">PAN No.</label>
                                                <input type="text" value="{{ $hallbook->panno }}" class="form-control"
                                                    id="pan_no" name="pan_no" {{ banquetparameter()->panrequiredyn == 'Y' ? 'required' : '' }}>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="company_name">Company Name</label>
                                                <select class="form-control select2-multiple" name="company_name"
                                                    id="company_name">
                                                    <option value="">Select</option>
                                                    @foreach (companiessubgroup() as $col)
                                                        <option value="{{ $col->sub_code }}" {{ $hallbook->companycode == $col->sub_code ? 'selected' : '' }}>
                                                            {{ $col->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>

                                            <div class="col-md-6 mb-1">
                                                <label for="booking_agent">Booking Agent</label>
                                                <select class="form-control select2-multiple" name="booking_agent"
                                                    id="booking_agent">
                                                    <option value="">Select</option>
                                                    @foreach (travelagents() as $col)
                                                        <option value="{{ $col->sub_code }}" {{ $hallbook->bookingagent == $col->sub_code ? 'selected' : '' }}>
                                                            {{ $col->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="function_type">Function Type</label>
                                                <select class="form-control select2-multiple" name="function_type"
                                                    id="function_type" required>
                                                    <option value="">Select</option>
                                                    @foreach (functiontypes() as $col)
                                                        <option value="{{ $col->code }}" {{ $hallbook->func_name == $col->code ? 'selected' : '' }}>{{ $col->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="exp_pax">Expected Pax</label>
                                                <input type="text" value="{{ $hallbook->expatt }}" class="form-control"
                                                    id="exp_pax" name="exp_pax" required>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="gurr_pax">Guaranteed Pax</label>
                                                <input type="text" value="{{ $hallbook->guaratt }}" class="form-control"
                                                    id="gurr_pax" name="gurr_pax" required>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="rate_pax">Rate/Pax</label>
                                                <input type="text" value="{{ $hallbook->coverrate }}" class="form-control"
                                                    id="rate_pax" name="rate_pax" {{ banquetparameter()->bookingraterequired == 'Y' ? 'required' : '' }}>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="remark">Remark</label>
                                                <input type="text" value="{{ $hallbook->remark }}" class="form-control"
                                                    id="remark" name="remark">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="advanceamt">Advance</label>
                                                <input type="text" value="{{ $paychargeh->sum('amtcr') }}"
                                                    class="form-control" id="advanceamt" name="advanceamt" readonly>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="col-md-6">
                                        <h5 class="text-danger">Party Instructions</h5>
                                        <div class="row align-items-center">
                                            <label for="special_instruction1" class="col-md-4 col-form-label">Special
                                                Instruction 1</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->menuspl1 }}" class="form-control"
                                                    name="special_instruction1" id="special_instruction1">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="special_instruction2" class="col-md-4 col-form-label">Special
                                                Instruction 2</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->menuspl2 }}" class="form-control"
                                                    name="special_instruction2" id="special_instruction2">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="special_instruction3" class="col-md-4 col-form-label">Special
                                                Instruction 3</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->menuspl3 }}" class="form-control"
                                                    name="special_instruction3" id="special_instruction3">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="special_instruction4" class="col-md-4 col-form-label">Special
                                                Instruction 4</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->menuspl4 }}" class="form-control"
                                                    name="special_instruction4" id="special_instruction4">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="special_instruction5" class="col-md-4 col-form-label">Special
                                                Instruction 5</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->menuspl5 }}" class="form-control"
                                                    name="special_instruction5" id="special_instruction5">
                                            </div>
                                        </div>
                                        <hr>
                                        <h5 class="mt-2 text-danger">Instructions for Department</h5>
                                        <div class="row align-items-center">
                                            <label for="department_instruction1"
                                                class="col-md-4 text-green col-form-label">House Keeping</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->housekeeping }}"
                                                    class="form-control" name="department_instruction1"
                                                    id="department_instruction1">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="department_instruction2"
                                                class="col-md-4 text-green col-form-label">Front Office</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->frontoff }}" class="form-control"
                                                    name="department_instruction2" id="department_instruction2">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="department_instruction3"
                                                class="col-md-4 text-green col-form-label">Engineering</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->engg }}" class="form-control"
                                                    name="department_instruction3" id="department_instruction3">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="department_instruction4"
                                                class="col-md-4 text-green col-form-label">Security</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->security }}" class="form-control"
                                                    name="department_instruction4" id="department_instruction4">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="department_instruction5"
                                                class="col-md-4 text-green col-form-label">Chef</label>
                                            <div class="col-md-8">
                                                <input type="text" value="{{ $hallbook->chef }}" class="form-control"
                                                    name="department_instruction5" id="department_instruction5">
                                            </div>
                                        </div>

                                        <div class="row align-items-center mt-2">
                                            <label for="boardtoread" class="col-md-4 badge-success col-form-label">Board To
                                                Read</label>
                                            <div class="col-md-8">
                                                <textarea style="width: inherit;" rows="4" name="boardtoread"
                                                    id="boardtoread">{{ $hallbook->board }}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <h5 class="mt-4">Venue Selection</h5>
                                        <table class="table table-bordered" id="venueTable">
                                            <thead>
                                                <tr>
                                                    <th>Venue Name</th>
                                                    <th>From Date</th>
                                                    <th>From Time</th>
                                                    <th>To Date</th>
                                                    <th>To Time</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="venueTbody">

                                                @foreach ($venues as $item)
                                                    <tr>
                                                        <td>
                                                            <select class="form-control select2-multiple"
                                                                name="venue_name{{ $item->sno }}"
                                                                id="venue_name{{ $item->sno }}" required>
                                                                <option value="">Select</option>
                                                                @foreach (venuemast() as $col)
                                                                    <option value="{{ $col->code }}" {{ $item->venucode == $col->code ? 'selected' : '' }}>{{ $col->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </td>
                                                        <td><input type="date" value="{{ $item->fromdate }}"
                                                                class="form-control" name="from_date{{ $item->sno }}"
                                                                id="from_date{{ $item->sno }}" required></td>
                                                        {{-- <td><input type="text" value="{{ $item->dromtime }}"
                                                                class="form-control timeinput" name="from_time{{ $item->sno }}"
                                                                id="from_time{{ $item->sno }}" required></td> --}}
                                                        <td>
                                                            <div class="input-group clockpicker" data-placement="bottom"
                                                                data-align="right" data-autoclose="true">
                                                                <input placeholder="{{ $item->dromtime }}" type="text"
                                                                    id="from_time{{ $item->sno }}"
                                                                    name="from_time{{ $item->sno }}" class="form-control"
                                                                    value="{{ $item->dromtime }}" required>
                                                                <span class="input-group-append"><span
                                                                        class="input-group-text"><i
                                                                            class="fa fa-clock-o"></i></span></span>
                                                            </div>
                                                        </td>
                                                        <td><input type="date" value="{{ $item->todate }}" class="form-control"
                                                                name="to_date{{ $item->sno }}" id="to_date{{ $item->sno }}"
                                                                required></td>
                                                        {{-- <td><input type="text" value="{{ $item->totime }}"
                                                                class="form-control timeinput" name="to_time{{ $item->sno }}"
                                                                id="to_time{{ $item->sno }}" required></td> --}}
                                                        <td>
                                                            <div class="input-group clockpicker" data-placement="bottom"
                                                                data-align="right" data-autoclose="true">
                                                                <input placeholder="{{ $item->totime }}" type="text"
                                                                    id="to_time{{ $item->sno }}" name="to_time{{ $item->sno }}"
                                                                    class="form-control" value="{{ $item->totime }}" required>
                                                                <span class="input-group-append"><span
                                                                        class="input-group-text"><i
                                                                            class="fa fa-clock-o"></i></span></span>
                                                            </div>
                                                        </td>
                                                        <td><button type="button" class="btn btn-danger remove-row">X</button>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                        <button type="button" class="btn btn-primary" id="addVenueRow">Add More</button>
                                    </div>
                                    <div class="col-md-6"></div>
                                    <div class="col-md-6 mb-3">
                                        <div class="">
                                            <p class="text-center font-weight-bold">Advance Details <i
                                                    class="fa-solid fa-money-bill"></i></p>
                                            <table class="table table-hover table-bordered table-payshow">
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th>Paytype</th>
                                                        <th>On Date</th>
                                                        <th>Amount</th>
                                                        <th>Type</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                @php
                                                    $total = 0.0;
                                                @endphp

                                                @foreach ($paychargeh as $item)
                                                    @php
                                                        if ($item->amtcr > 0) {
                                                            $total += $item->amtcr;
                                                        } else {
                                                            $total -= $item->amtdr;
                                                        }
                                                    @endphp

                                                    <tr data-vtype="{{ $item->vtype }}" data-vdate="{{ $item->vdate }}" data-docid="{{ $item->docid }}"
                                                        data-contradocid="{{ $item->contradocid }}"
                                                        data-vno="{{ $item->vno }}">

                                                        <td class="paytype">{{ $item->paytype }}</td>

                                                        <td>{{ date('d-M-Y', strtotime($item->vdate)) }}</td>

                                                        <td class="amount">
                                                            {{ $item->amtcr > 0 ? $item->amtcr : $item->amtdr }}
                                                        </td>

                                                        <td>
                                                            {{ $item->vtype == 'AR' ? 'Refund' : 'Advance' }}
                                                        </td>

                                                        <td>
                                                            <span class="btn btn-danger btn-sm advancedeletebanquet">Delete</span>
                                                            <span class="btn btn-dark btn-sm advanceprintbanquet">Print</span>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                                <tfoot>
                                                    <tr>
                                                        <td>Total</td>
                                                        <td></td>
                                                        <td>{{ str_replace(',', '', number_format($total, 2)) }}</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>

                                </div>

                                <div class="text-center mt-3">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {

            const keepReadonly = ["booking_date", "day"];

            document.querySelectorAll("input, textarea, select").forEach(function(el) {

                let id = el.id;

                if (keepReadonly.includes(id)) {
                    return;
                }

                el.removeAttribute("readonly");
                el.readOnly = false;
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $('.clockpicker').clockpicker({
                autoclose: true
            });
            let rowCount = "{{ count($venues) }}";

            $(document).on('click', '#addVenueRow', function() {
                rowCount++;

                let row = `
                                        <tr>
                                            <td>
                                                <select class="form-control select2-multiple" name="venue_name${rowCount}" id="venue_name${rowCount}" required>
                                                <option value="">Select</option>
                                                    @foreach (venuemast() as $col)
                                                        <option value="{{ $col->code }}">{{ $col->name }}</option>
                                                    @endforeach
                                                </select>
                                            </td>
                                            <td><input type="date" class="form-control" name="from_date${rowCount}" id="from_date${rowCount}"></td>
                                             <td><div class="input-group clockpicker" data-placement="bottom" data-align="right" data-autoclose="true"><input type="text" id="from_time${rowCount}" name="from_time${rowCount}" class="form-control" placeholder="HH:MM"><span class="input-group-append"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></span></div></td>
                                                <td><input type="date" class="form-control" name="to_date${rowCount}" id="to_date${rowCount}"></td>
                                                <td><div class="input-group clockpicker" data-placement="bottom" data-align="right" data-autoclose="true"><input type="text" id="to_time${rowCount}" name="to_time${rowCount}" class="form-control" placeholder="HH:MM"><span class="input-group-append"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></span></div></td>
                                            <td><button type="button" class="btn btn-danger remove-row">X</button></td>
                                        </tr>`;

                $('#venueTbody').append(row);
                $(`#venue_name${rowCount}`).select2();
                $('#totalrows').val(rowCount);
                // Initialize clockpicker for the newly added row
                $('#venueTbody tr:last .clockpicker').clockpicker({
                    autoclose: true
                });
            });

            $(document).on('click', '.remove-row', function() {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
                row.remove();

                $('#venueTbody tr').each(function(index) {
                    let adjustedIndex = index + 1;
                    $(this).find('select, input').each(function() {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                    $('#totalrows').val(adjustedIndex);
                });
            });
            bindDateToDay('booking_date', 'day');

            $(document).on('input', '#gurr_pax, #exp_pax', function() {
                let gurr_pax = parseFloat($('#gurr_pax').val()) || 0;
                let exp_pax = parseFloat($('#exp_pax').val()) || 0;

                if (gurr_pax > exp_pax) {
                    $('#gurr_pax').val(exp_pax);
                }
            });

            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": "{{ csrf_token() }}"
                }
            });

            $('#banquetbookingform').on('submit', function(e) {
                e.preventDefault();
                let docid = $('#docid').val();
                let tbodylength = $('#venueTable tbody tr').length;

                if (tbodylength < 1) {
                    Swal.fire({
                        title: 'Banquet Booking',
                        text: 'Please Add Venue',
                        icon: 'info'
                    });
                    return false;
                }

                let totalrows = $('#totalrows').val();
                let bookings = [];

                for (let i = 1; i <= totalrows; i++) {
                    bookings.push({
                        docid: docid,
                        venue_name: $(`#venue_name${i}`).val(),
                        from_date: $(`#from_date${i}`).val(),
                        from_time: $(`#from_time${i}`).val(),
                        to_date: $(`#to_date${i}`).val(),
                        to_time: $(`#to_time${i}`).val()
                    });
                }

                $.ajax({
                    method: "POST",
                    url: "{{ url('checkvenuduplicateup') }}",
                    data: {
                        bookings: bookings
                    },
                    success: function(response) {
                        if (response.error == '1') {
                            Swal.fire({
                                title: 'Banquet Booking',
                                text: response.message,
                                icon: 'info'
                            });
                        } else {
                            $('#banquetbookingform')[0].submit();
                        }
                    },
                    error: function(error) {
                        console.log(error);
                    }
                });
            });

            $(document).on('click', '.advancedeletebanquet', function() {
                let docid = $(this).closest('tr').data('docid');
                let vno = $(this).closest('tr').data('vno');

                const requesturl = `{{ url('deleteadvancebanquet/${docid}') }}`;

                const options = {
                    method: "POST",
                    headers: {
                        'content-type': 'application/json',
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    },
                };
                fetch(requesturl, options)
                    .then(response => {
                        if (!response.ok) {
                            return response.text().then(text => {
                                let message = "An error occurred";
                                try {
                                    let json = JSON.parse(text);
                                    message = json.message || response.statusText;
                                } catch (e) {
                                    if (response.status === 404) {
                                        message = "Route not found. Please check the URL.";
                                    } else if (response.status === 500) {
                                        message = "Internal Server Error. Please try again later.";
                                    }
                                }
                                throw {
                                    status: response.status,
                                    message
                                };
                            });
                        }
                        return response.json();
                    })
                    .then(data => {
                        if (data.status === 'success') {
                            pushNotify('success', 'Update Banquet', data.message, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            $(this).closest('tr').remove();
                        }
                    })
                    .catch(error => {
                        let errorMessage = error.message || "An unexpected error occurred";
                        pushNotify('error', 'Update Banquet', errorMessage, 'fade', 300, '', '', true, true, true, 20000, 20, 20, 'outline', 'right top');
                        console.error(error);
                    });

            });

            $(document).on('click', '.advanceprintbanquet', function() {
                let amount = $(this).closest('tr').find('td.amount').text();
                let vtype = $(this).closest('tr').data('vtype');
                let recref = 'Received';
                let asadvref = 'As Advance';
                let heading = 'Advance';
                if (vtype == 'AR') {
                    recref = 'Refund';
                    asadvref = 'As Refund';
                    heading = 'Refund';
                }

                let bookno = $('#bookno').val();

                var a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '];
                var b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

                function inWords(num) {
                    if ((num = num.toString()).length > 9) return 'overflow';
                    n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
                    if (!n) return;
                    var str = '';
                    str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
                    str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
                    str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
                    str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
                    str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'only ' : '';
                    return str;
                }

                let fixval = Math.abs(amount);
                let textamount = inWords(fixval);

                let paymentmode = $(this).closest('tr').find('td.paytype').text();
                let compname = $('#compname').val();
                let address = $('#address').val();
                let name = $('#name').val();
                let mob = $('#compmob').val();
                let email = $('#email').val();
                let nature = $('#nature').val();
                let u_name = $('#u_name').val();
                let rectnop = $(this).closest('tr').data('vno');
                let logo = 'storage/admin/property_logo/' + $('#logo').val();
                let filetoprint = "{{ url('banquetadvancereceipt') }}";
                let ncurdate = $(this).closest('tr').data('vdate');
                let curdate = new Date(ncurdate).toLocaleDateString('en-IN', {
                    day: '2-digit',
                    month: '2-digit',
                    year: 'numeric'
                });
                let newWindow = window.open(filetoprint, '_blank');


                newWindow.onload = function() {
                    $('#bookingno', newWindow.document).text(bookno);
                    $('#bookingno2', newWindow.document).text(bookno);
                    $('.recpno', newWindow.document).text(rectnop);
                    $('#compname', newWindow.document).text(compname);
                    $('#address', newWindow.document).text(address);
                    $('#recref', newWindow.document).text(recref);
                    $('.headingname', newWindow.document).text(heading);
                    $('#asadvref', newWindow.document).text(asadvref);
                    $('#name', newWindow.document).text(name);
                    $('#phone', newWindow.document).text(mob);
                    $('#email', newWindow.document).text(email);
                    $('#amount', newWindow.document).text(Math.abs(amount));
                    $('#textamount', newWindow.document).text(textamount);
                    $('#curdate', newWindow.document).text(curdate);
                    $('#nature', newWindow.document).text(paymentmode);
                    $('#u_name', newWindow.document).text(u_name);
                    $('#complogo', newWindow.document).attr('src', logo);
                    $('#compname2', newWindow.document).text(compname);
                    $('#address2', newWindow.document).text(address);
                    $('#recref2', newWindow.document).text(recref);
                    $('#asadvref2', newWindow.document).text(asadvref);
                    $('#name2', newWindow.document).text(name);
                    $('#phone2', newWindow.document).text(mob);
                    $('#email2', newWindow.document).text(email);
                    $('#amount2', newWindow.document).text(Math.abs(amount));
                    $('#textamount2', newWindow.document).text(textamount);
                    $('#curdate2', newWindow.document).text(curdate);
                    $('#nature2', newWindow.document).text(paymentmode);
                    $('#u_name2', newWindow.document).text(u_name);
                    $('#complogo2', newWindow.document).attr('src', logo);

                    setTimeout(function() {
                        newWindow.print();
                        newWindow.close();
                    }, 500);
                };
            });

        });
    </script>
@endsection
