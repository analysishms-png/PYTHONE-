@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    @include('cdns.datatable')
    <style>
        .table td,
        .table th {
            padding: 5px;
        }

        .table-responsive {
            display: block;
            width: 100%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
        }

        #venueTable {
            min-width: 800px;
            white-space: nowrap;
        }
    </style>
    <link href="admin/plugins/clockpicker/dist/jquery-clockpicker.min.css" rel="stylesheet">
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <h6 class="mb-3 text-center">Function Prospected No. <span
                                    class="font-weight-bold ADA">{{ maxvno('IBOOK', ncurdate()) }}</span></h6>
                            <form id="banquetbookingform" name="banquetbookingform"
                                action="{{ url('banquetbookingsubmit') }}" method="POST">
                                @csrf
                                <input type="hidden" name="totalrows" value="1" id="totalrows">
                                <input type="hidden" value="N" name="partyinqyn" id="partyinqyn">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="booking_date">Booking Date</label>
                                                <input type="date" value="{{ ncurdate() }}" class="form-control"
                                                    id="booking_date" name="booking_date"
                                                    {{ banquetparameter()->booking_edit == 0 ? 'readonly' : '' }}>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="day">Day</label>
                                                <input type="text" value="{{ getDayNameFromDate(ncurdate()) }}"
                                                    class="form-control" id="day" name="day" readonly>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" name="loadinqno"
                                                        id="loadinqno">
                                                    <label class="form-check-label font-weight-bold" for="loadinqno">
                                                        Load Enquiry
                                                    </label>
                                                </div>
                                                <label for="party">Party</label>
                                                <div id="partyinput">
                                                    <input type="text" class="form-control" id="party" name="party"
                                                        required>
                                                </div>
                                                <div style="display: none;" id="partyselect">
                                                    <select name="partysel" id="partysel"
                                                        class="form-control select2-multiple">
                                                        <option value="">Select</option>
                                                        @foreach ($bookinginquiry as $item)
                                                            <option value="{{ $item->inqno }}">{{ $item->partyname }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="address">Address</label>
                                                <input type="text" class="form-control" id="address" name="address">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="city_name">City Name</label>
                                                <select class="form-control select2-multiple" name="city_name"
                                                    id="city_name" required>
                                                    <option value="">Select</option>
                                                    @foreach (allcities() as $col)
                                                        <option value="{{ $col->city_code }}">{{ $col->cityname }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="mobile_no">Mobile No.</label>
                                                <input type="text" class="form-control" id="mobile_no" name="mobile_no">
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="mobile_no2">Mobile No 2.</label>
                                                <input type="text" class="form-control" id="mobile_no2"
                                                    name="mobile_no2">
                                            </div>

                                            <div class="col-md-6 mb-1">
                                                <label for="pan_no">PAN No.</label>
                                                <input type="text" class="form-control" id="pan_no" name="pan_no"
                                                    {{ banquetparameter()->panrequiredyn == 'Y' ? 'required' : '' }}>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="company_name">Company Name</label>
                                                <select class="form-control select2-multiple" name="company_name"
                                                    id="company_name">
                                                    <option value="">Select</option>
                                                    @foreach (companiessubgroup() as $col)
                                                        <option value="{{ $col->sub_code }}">{{ $col->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>

                                            <div class="col-md-6 mb-1">
                                                <label for="booking_agent">Booking Agent</label>
                                                <select class="form-control select2-multiple" name="booking_agent"
                                                    id="booking_agent">
                                                    <option value="">Select</option>
                                                    @foreach (travelagents() as $col)
                                                        <option value="{{ $col->sub_code }}">{{ $col->name }}</option>
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
                                                        <option value="{{ $col->code }}">{{ $col->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="exp_pax">Expected Pax</label>
                                                <input type="text" class="form-control" id="exp_pax" name="exp_pax"
                                                    required>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="gurr_pax">Guaranteed Pax</label>
                                                <input type="text" class="form-control" id="gurr_pax"
                                                    name="gurr_pax" required>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="rate_pax">Rate/Pax</label>
                                                <input type="text" class="form-control" id="rate_pax"
                                                    name="rate_pax"
                                                    {{ banquetparameter()->bookingraterequired == 'Y' ? 'required' : '' }}>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="remark">Remark</label>
                                                <input type="text" class="form-control" id="remark"
                                                    name="remark">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <h5 class="text-danger">Party Instructions</h5>
                                        <div class="row align-items-center">
                                            <label for="special_instruction1" class="col-md-4 col-form-label">Special
                                                Instruction 1</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="special_instruction1"
                                                    id="special_instruction1">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="special_instruction2" class="col-md-4 col-form-label">Special
                                                Instruction 2</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="special_instruction2"
                                                    id="special_instruction2">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="special_instruction3" class="col-md-4 col-form-label">Special
                                                Instruction 3</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="special_instruction3"
                                                    id="special_instruction3">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="special_instruction4" class="col-md-4 col-form-label">Special
                                                Instruction 4</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="special_instruction4"
                                                    id="special_instruction4">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="special_instruction5" class="col-md-4 col-form-label">Special
                                                Instruction 5</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="special_instruction5"
                                                    id="special_instruction5">
                                            </div>
                                        </div>
                                        <hr>
                                        <h5 class="mt-2 text-danger">Instructions for Department</h5>
                                        <div class="row align-items-center">
                                            <label for="department_instruction1"
                                                class="col-md-4 text-green col-form-label">House Keeping</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="department_instruction1"
                                                    id="department_instruction1">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="department_instruction2"
                                                class="col-md-4 text-green col-form-label">Front Office</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="department_instruction2"
                                                    id="department_instruction2">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="department_instruction3"
                                                class="col-md-4 text-green col-form-label">Engineering</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="department_instruction3"
                                                    id="department_instruction3">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="department_instruction4"
                                                class="col-md-4 text-green col-form-label">Security</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="department_instruction4"
                                                    id="department_instruction4">
                                            </div>
                                        </div>

                                        <div class="row align-items-center">
                                            <label for="department_instruction5"
                                                class="col-md-4 text-green col-form-label">Chef</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" name="department_instruction5"
                                                    id="department_instruction5">
                                            </div>
                                        </div>

                                        <div class="row align-items-center mt-2">
                                            <label for="boardtoread" class="col-md-4 badge-success col-form-label">Board
                                                To
                                                Read</label>
                                            <div class="col-md-8">
                                                <textarea style="width: inherit;" rows="4" name="boardtoread" id="boardtoread"></textarea>
                                            </div>
                                        </div>

                                    </div>
                                    <div style="width: 100%; overflow-x: auto;">
                                        <h5 class="mt-4">Venue Selection</h5>
                                        <div class="table-responsive"
                                            style="overflow-x: auto; -webkit-overflow-scrolling: touch;">
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
                                                    <tr>
                                                        <td>
                                                            <select class="form-control select2-multiple"
                                                                name="venue_name1" id="venue_name1" required>
                                                                <option value="">Select</option>
                                                                @foreach (venuemast() as $col)
                                                                    <option value="{{ $col->code }}"
                                                                        {{ isset($venuecode) && $venuecode == $col->code ? 'selected' : '' }}>
                                                                        {{ $col->name }}
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                        </td>
                                                        <td><input type="date" class="form-control"
                                                                value="{{ $fromdate }}" name="from_date1"
                                                                id="from_date1" required></td>
                                                        {{-- <td><input type="text" class="form-control timeinput"
                                                                value="{{ $clicktime }}" name="from_time1" id="from_time1"
                                                                required></td> --}}
                                                        <td>
                                                            <div class="input-group clockpicker" data-placement="bottom"
                                                                data-align="right" data-autoclose="true">
                                                                <input placeholder="{{ $clicktime }}" type="text"
                                                                    id="from_time1" name="from_time1"
                                                                    class="form-control" value="{{ $clicktime }}"
                                                                    required>
                                                                <span class="input-group-append"><span
                                                                        class="input-group-text"><i
                                                                            class="fa fa-clock-o"></i></span></span>
                                                            </div>
                                                        </td>
                                                        <td><input type="date" class="form-control"
                                                                value="{{ $fromdate }}" name="to_date1"
                                                                id="to_date1" required></td>
                                                        {{-- <td><input type="text" class="form-control timeinput"
                                                                value="{{ isset($clicktime) ? '23:59:59' : '' }}"
                                                                name="to_time1" id="to_time1" required></td> --}}
                                                        <td>
                                                            <div class="input-group clockpicker" data-placement="bottom"
                                                                data-align="right" data-autoclose="true">
                                                                <input
                                                                    placeholder="{{ isset($clicktime) ? '23:59:59' : '' }}"
                                                                    type="text" id="to_time1" name="to_time1"
                                                                    class="form-control"
                                                                    value="{{ isset($clicktime) ? '23:59:59' : '' }}"
                                                                    required>
                                                                <span class="input-group-append"><span
                                                                        class="input-group-text"><i
                                                                            class="fa fa-clock-o"></i></span></span>
                                                            </div>
                                                        </td>
                                                        <td><button type="button"
                                                                class="btn btn-danger remove-row">X</button>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <button type="button" class="btn btn-primary" id="addVenueRow">Add More</button>
                                    </div>
                                </div>

                                <div class="text-center mt-3">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>

                            <div class="table-responsive mt-3">
                                <table id="banquetbookingtable"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>From Dt.</th>
                                            <th>To Dt.</th>
                                            <th>FP No.</th>
                                            <th>Bill No.</th>
                                            <th>Party</th>
                                            <th>Mobile</th>
                                            <th>City</th>
                                            <th>Advance</th>
                                            <th>Venue</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>

                                    @php
                                        $colorClasses = [
                                            'table-primary',
                                            'table-success',
                                            'table-warning',
                                            'table-danger',
                                            'table-info',
                                            'table-secondary',
                                            'table-light',
                                            'table-dark',
                                        ];
                                        $docidColorMap = [];
                                        $colorIndex = 0;
                                    @endphp

                                    <tbody>
                                        @foreach (hallbookvenue() as $item)
                                            <?php
                                            $bill_no = DB::table('hallsale1')->where('bookdocid', $item->docid)->value('vno');
                                            $bill = $bill_no ? $bill_no : 'N/A';
                                            ?>
                                            @php
                                                if (!isset($docidColorMap[$item->docid])) {
                                                    $docidColorMap[$item->docid] =
                                                        $colorClasses[$colorIndex % count($colorClasses)];
                                                    $colorIndex++;
                                                }
                                                $rowClass = '';

                                            @endphp

                                            <tr class="{{ $rowClass }}">
                                                <td>{{ date('d-m-Y', strtotime($item->fromdate)) }}
                                                    {{ date('H:i', strtotime($item->dromtime)) }}
                                                </td>
                                                <td>{{ date('d-m-Y', strtotime($item->todate)) }}
                                                    {{ date('H:i', strtotime($item->totime)) }}
                                                </td>
                                                <td>{{ $item->vno }}</td>
                                                <th>{{ $bill }}</th>
                                                <td>{{ $item->partyname }}</td>
                                                <th>{{ $item->mobileno }}
                                                    {{ !empty($item->mobileno1) ? ',' . $item->mobileno1 : '' }}
                                                </th>
                                                <td>{{ $item->cityname }}</td>
                                                <td>{{ $item->advancesum }}</td>
                                                <td>{{ $item->venuename }}</td>
                                                <td class="ins">
                                                    <a href="updatebanquet/{{ $item->docid }}">
                                                        <button class="btn btn-success btn-sm"><i
                                                                class="far fa-edit"></i>Edit</button>
                                                    </a>
                                                    <a href="advanceabanquet/{{ $item->docid }}" target="_blank">
                                                        <button class="btn btn-warning btn-sm"><i
                                                                class="far fa-edit"></i>Advance</button>
                                                    </a>
                                                    <a target="_blank" href="printfp/{{ $item->docid }}">
                                                        <button class="btn btn-info btn-sm"><i
                                                                class="far fa-print"></i>Print</button>
                                                    </a>
                                                    <a href="{{ url('deletebanquet/' . $item->docid) }}">
                                                        <button class="btn btn-danger btn-sm">
                                                            <i class="fas fa-trash"></i> Delete
                                                        </button>
                                                    </a>
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
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {

            // जिन input ko readonly रहने देना है उनके IDs
            const keepReadonly = ["booking_date", "day"];

            document.querySelectorAll("input, textarea, select").forEach(function(el) {

                // current element ka id
                let id = el.id;

                // agar ye readonly rehna chahiye, skip
                if (keepReadonly.includes(id)) {
                    return;
                }

                // baki sab se readonly hata do
                el.removeAttribute("readonly");
                el.readOnly = false;
            });
        });
    </script>


    <script>
        $(document).ready(function() {
            // Initialize clockpicker on page load
            $('.clockpicker').clockpicker({
                autoclose: true
            });

            let table = new DataTable('#banquetbookingtable', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    'excel', 'pdf', 'print'
                ]
            });
            let rowCount = 1;

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

                // Initialize clockpicker for the newly added row
                $('#venueTbody tr:last .clockpicker').clockpicker({
                    autoclose: true
                });

                $('#totalrows').val(rowCount);
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

            $(document).on('change', '#loadinqno', function() {
                if ($(this).is(':checked')) {
                    $('#partyinput').hide();
                    $('#party').val('');
                    $('#partyselect').show();
                    $('#partyinqyn').val('Y');
                    $('#party').prop('required', false);
                    $('#partysel').prop('required', true);
                } else {
                    $('#partyinput').show();
                    $('#partyselect').hide();
                    $('#partysel').val('').change();
                    $('#partysel').prop('required', false);
                    $('#party').prop('required', true);
                    $('#partyinqyn').val('N');
                }
            });

            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": "{{ csrf_token() }}"
                }
            });

            $(document).on('change', '#partysel', function() {
                let inqno = $(this).val();
                $.ajax({
                    url: '{{ url('banqenquieryfetch') }}',
                    method: 'POST',
                    data: {
                        inqno: inqno
                    },
                    success: function(response) {
                        $('#loadinqno').prop('disabled', true);
                        let inquiry = response.inquiry;
                        let bookdetail = response.bookdetail;

                        $('#address').val(inquiry.add1);
                        $('#city_name').val(inquiry.citycode).change();
                        $('#mobile_no').val(inquiry.mobileno);
                        $('#mobile_no2').val(inquiry.mobileno1);
                        $('#function_type').val(inquiry.functype);
                        $('#exp_pax').val(inquiry.pax);
                        $('#gurr_pax').val(inquiry.gurrpax);
                        $('#rate_pax').val(inquiry.ratepax);
                        $('#remark').val(inquiry.remark);

                        if (bookdetail.length > 0) {
                            let tr = '';
                            $('#venueTbody').html('');
                            $('#totalrows').val(bookdetail.length);
                            bookdetail.forEach((tdata, index) => {
                                let sno = index + 1;
                                tr += `<tr>
                                                                    <td>
                                                                        <select class="form-control select2-multiple" name="venue_name${sno}" id="venue_name${sno}" required>
                                                                            <option value="">Select</option>
                                                                            @foreach (venuemast() as $col)
                                                                                <option value="{{ $col->code }}" ${tdata.venuecode == '{{ $col->code }}' ? 'selected' : ''}>
                                                                                    {{ $col->name }}
                                                                                </option>
                                                                            @endforeach
                                                                        </select>
                                                                    </td>
                                                                    <td><input type="date" class="form-control" value="${tdata.fromdate}" name="from_date${sno}" id="from_date${sno}" required></td>
                                                        <td><div class="input-group clockpicker" data-placement="bottom" data-align="right" data-autoclose="true"><input type="text" id="from_time${sno}" name="from_time${sno}" class="form-control" value="${tdata.fromtime || ''}" placeholder="HH:MM"><span class="input-group-append"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></span></div></td>
                                                        <td><input type="date" class="form-control" value="${tdata.todate}" name="to_date${sno}" id="to_date${sno}" required></td>
                                                        <td><div class="input-group clockpicker" data-placement="bottom" data-align="right" data-autoclose="true"><input type="text" id="to_time${sno}" name="to_time${sno}" class="form-control" value="${tdata.totime || ''}" placeholder="HH:MM"><span class="input-group-append"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></span></div></td>
                                                        <td><button type="button" class="btn btn-danger remove-row">X</button></td>
                                                    </tr>`;
                            });

                            $('#venueTbody').append(tr);

                            // Initialize clockpicker for all newly added rows
                            $('#venueTbody .clockpicker').clockpicker({
                                autoclose: true
                            });
                        }

                    },
                    error: function(errores) {

                    }
                });
            });

            $('#banquetbookingform').on('submit', function(e) {
                e.preventDefault();

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
                        venue_name: $(`#venue_name${i}`).val(),
                        from_date: $(`#from_date${i}`).val(),
                        from_time: $(`#from_time${i}`).val(),
                        to_date: $(`#to_date${i}`).val(),
                        to_time: $(`#to_time${i}`).val()
                    });
                }

                $.ajax({
                    method: "POST",
                    url: "{{ url('checkvenuduplicate') }}",
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

        });
    </script>
@endsection
