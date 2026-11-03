{{--
#𝒲𝒜𝑅𝒩𝐼𝒩𝒢⚠️ 𝒟𝒪𝒩'𝒯 𝒰𝒮𝐸 𝒞𝒪𝒟𝐸 𝐹𝒪𝑅𝑀𝒜𝒯𝒯𝐸𝑅 𝒪𝑅 𝒮𝐻𝐼𝐹𝒯+𝒜𝐿𝒯+𝒫 𝒪𝒩 𝒯𝐻𝐼𝒮 𝒫𝒜𝒢𝐸
𝒞𝒪𝒟𝐸 𝒪𝑅 𝒯𝐻𝐸 𝒫𝑅𝒪𝒟𝒰𝒞𝒯𝐼𝒪𝒩 𝒲𝐼𝐿𝐿 𝐵𝐸 𝐵𝑅𝒪𝒦𝐸𝒩
--}}
@extends('property.layouts.main')
@section('main-container')
    <style>
        label {
            font-weight: bold;
            color: black;
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ids = ['rooms', 'ref_booking_id', 'remarkmain', 'pickupdrop', 'booked_by', 'name',
                'guestname', 'guestmobile', 'guestemail', 'zipguest', 'idNumber', 'birthDate', 'weddingAnniversary',
                'rodisc', 'rsdisc', 'mobile', 'email', 'zipcode', 'address1', 'address2', 'arrivaldate1', 'arrivaltime1',
                'stay_days1', 'checkoutdate1', 'checkouttime1', 'roomcount1'
            ]; // sab IDs ek array me
            const observer = new MutationObserver(muts =>
                muts.forEach(m => m.target.removeAttribute('readonly'))
            );

            ids.forEach(id => {
                const el = document.getElementById(id);
                if (el) {
                    el.removeAttribute('readonly');
                    observer.observe(el, {
                        attributes: true,
                        attributeFilter: ['readonly']
                    });
                }
            });

            // Disable Shift+D keyboard shortcut to prevent accidental row deletion
            document.addEventListener('keydown', function(e) {
                if (e.shiftKey && (e.key === 'D' || e.key === 'd')) {
                    e.preventDefault();
                    e.stopPropagation();
                    console.log('Shift+D is disabled on this page');
                }
            });
        });
    </script>
    <link href="admin/plugins/clockpicker/dist/jquery-clockpicker.min.css" rel="stylesheet">
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body walkin">
                            {{-- action="{{ route('reservationsubmit') }}" --}}
                            <form class="walkin-form" id="reservationform" name="reservationform" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" value="{{ $totalroom }}" name="totalroom" id="totalroom">
                                <input type="hidden" name="totalrooms" value="1" id="totalrooms">
                                <input type="hidden" name="page_source" value="{{ request()->query('page_source', '') }}" id="page_source">
                                <div class="row">
                                    {{-- <table class="table walkin-table table-responsive">
                                        <thead>
                                            <th>Total Room</th>
                                            <th>Ref. Booking Id</th>
                                            <th>Remarks</th>
                                            <th>Pick Up/Drop <i class="fa-solid fa-truck-pickup"></i></th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><input max="{{ $totalroom }}" value="1" id="rooms"
                                                        style="text-align: center;" type="number" name="rooms"
                                                        class="form-control low fiveem" placeholder="1">
                                                </td>
                                                <td><input type="text" name="ref_booking_id" class="form-control low"
                                                        placeholder="Ref. Booking Id" id="ref_booking_id"></td>
                                                <td><input placeholder="Remarks" class="form-control" name="remarkmain"
                                                        id="remarkmain" type="text"></td>
                                                <td><input placeholder="Pickup/Drop" class="form-control" type="text"
                                                        name="pickupdrop" id="pickupdrop"></td>
                                            </tr>
                                        </tbody>
                                    </table> --}}
                                    <div class="row">
                                        <!-- Total Room -->
                                        <div class="col-md-3 form-group">
                                            <label for="rooms" class="form-label">Total Room</label>
                                            {{-- <input max="{{ $totalroom }}" value="1" id="rooms" type="number"
                                                name="rooms" class="form-control text-center" placeholder="1" readonly> --}}
                                            <input id="rooms" type="text" value="1" name="rooms"
                                                class="form-control text-center" max="{{ $totalroom }}" readonly style="background-color: rgb(220, 210, 210);">
                                        </div>


                                        <script>
                                            const rooms = document.getElementById('rooms');

                                            // block keyboard edits
                                            rooms.addEventListener('keydown', e => e.preventDefault());

                                            // block mouse scroll change
                                            rooms.addEventListener('wheel', e => e.preventDefault());

                                            // block paste
                                            rooms.addEventListener('paste', e => e.preventDefault());
                                        </script>


                                        <!-- Ref Booking ID -->
                                        <div class="col-md-3 form-group">
                                            <label for="ref_booking_id" class="form-label">Ref. Booking Id</label>
                                            <input type="text" name="ref_booking_id" class="form-control"
                                                placeholder="Ref. Booking Id" id="ref_booking_id">
                                        </div>

                                        <!-- Pickup/Drop -->
                                        <div class="col-md-3 form-group">
                                            <label for="pickupdrop" class="form-label">
                                                Pick Up / Drop <i class="fa-solid fa-truck-pickup"></i>
                                            </label>
                                            <input type="text" placeholder="Pickup/Drop" class="form-control"
                                                name="pickupdrop" id="pickupdrop">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <!-- Company -->
                                        <div class="col-md-2 form-group position-relative">
                                            <label for="company" class="form-label">Company
                                                @if ($canAddCompany)
                                                    <button type="button" class="btn btn-sm btn-success ml-1 py-0 px-1"
                                                        style="font-size:11px; line-height:1.4;"
                                                        data-toggle="modal" data-target="#quickAddCompanyModal"
                                                        title="Add New Company">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                @endif
                                            </label>
                                            <select id="company" name="company" class="form-control">
                                                <option value="">Select</option>
                                                @foreach ($company as $list)
                                                    <option value="{{ $list->sub_code }}" data-gst="{{ $list->gstin }}">
                                                        {{ $list->name }}
                                                    </option>
                                                @endforeach
                                            </select>

                                            <p id="gstCodep" class="text-purple mt-1"
                                                style="font-size: 12px; display:none;">
                                                GST No.: <span id="gstCode"></span>
                                            </p>
                                        </div>

                                        <!-- Booking Source -->
                                        <div class="col-md-2 form-group">
                                            <label for="booking_source" class="form-label">Booking Source</label>
                                            <select id="booking_source" name="booking_source" class="form-control"
                                                onchange="toggleTravelAgentres(this.value)" required>
                                                @foreach (bookingsourceall() as $item)
                                                    <option value="{{ $item->name }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <!-- Business Source -->
                                        <div class="col-md-2 form-group">
                                            <label for="bsource" class="form-label">Business Source</label>
                                            <select id="bsource" name="bsource" class="form-control" required>
                                                <option value="">Select</option>
                                                @foreach ($bsource as $list)
                                                    <option value="{{ $list->bcode }}">{{ $list->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <!-- Travel Agent -->
                                        <div class="col-md-2 form-group" id="trveltd" style="display:none;">
                                            <label for="travel_agent" class="form-label">Travel Agent
                                                @if ($canAddTravelAgent)
                                                    <button type="button" class="btn btn-sm btn-success ml-1 py-0 px-1"
                                                        style="font-size:11px; line-height:1.4;"
                                                        data-toggle="modal" data-target="#quickAddTravelAgentModal"
                                                        title="Add New Travel Agent">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                @endif
                                            </label>
                                            <select id="travel_agent" name="travel_agent" class="form-control">
                                                <option value="">Select</option>
                                                @foreach ($travel_agent as $list)
                                                    <option data-comp_type="{{ $list->comp_type }}" value="{{ $list->sub_code }}">{{ $list->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <!-- Booked By -->
                                        <div class="col-md-2 form-group">
                                            <label for="booked_by" class="form-label">Booked By</label>
                                            <input type="text" name="booked_by" id="booked_by" class="form-control"
                                                placeholder="Booked By">
                                        </div>

                                        <!-- Reservation Status -->
                                        <div class="col-md-2 form-group">
                                            <label for="reservation_status" class="form-label">Reservation Status</label>
                                            <select id="reservation_status" name="reservation_status" class="form-control"
                                                required>
                                                <option value="">Select</option>
                                                <option value="Confirm" selected>Confirm</option>
                                                <option value="Tentative">Tentative</option>
                                                <option value="Waiting">Waiting</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2 form-group">
                                            <label for="bill_to" class="form-label">Bill To</label>
                                            <select id="bill_to" name="bill_to" class="form-control">
                                                <option value="">Select</option>
                                                <option value="Company">Company</option>
                                                <option value="Guest">Guest</option>
                                                <option value="Group Owner">Group Owner</option>
                                                <option value="Room and Tax To Company">Room and Tax To Company, Extras To
                                                    Guest</option>
                                            </select>
                                        </div>
                                        <div class="col-md-12">
                                            <label for="remarkmain" class="form-label">Remarks</label>
                                            <textarea
                                                class="form-control"
                                                name="remarkmain"
                                                id="remarkmain"
                                                rows="3"
                                                placeholder="Remarks"></textarea>
                                        </div>
                                    </div>

                                    @if (fomparameter()->roominclusive == 'Y')
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="button" class="btn btn-primary" data-toggle="modal"
                                                    data-target="#roomInclusionModal">
                                                    <i class="fa fa-plus"></i> Room Inclusion
                                                </button>
                                            </div>
                                        </div>

                                        <!-- Room Inclusion Modal -->
                                        <div class="modal fade" id="roomInclusionModal" tabindex="-1" role="dialog"
                                            aria-labelledby="roomInclusionModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="roomInclusionModalLabel">Room Inclusion</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        @php
                                                            $revcount = count(revmastroominclusive());
                                                        @endphp

                                                        <table class="table table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th>Name</th>
                                                                    <th>Amount</th>
                                                                    <th>Charge Post</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                @foreach (revmastroominclusive() as $item)
                                                                    <tr>
                                                                        <td><input type="text" class="form-control"
                                                                                value="{{ $item->name }}"
                                                                                name="{{ $item->rev_code }}main"
                                                                                id="{{ $item->rev_code }}main" readonly></td>
                                                                        <td><input type="text" class="form-control"
                                                                                name="{{ $item->rev_code }}amount"
                                                                                id="{{ $item->rev_code }}amount"
                                                                                placeholder="Enter Amt."></td>
                                                                        <td><select class="form-control"
                                                                                name="{{ $item->rev_code }}chargepost"
                                                                                id="{{ $item->rev_code }}chargepost">
                                                                                <option value="">Select</option>
                                                                                <option value="Daily">Daily</option>
                                                                                <option value="Once">Once</option>
                                                                                <option value="Group">Group</option>
                                                                            </select></td>
                                                                    </tr>
                                                                @endforeach
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary"
                                                            data-dismiss="modal">Save</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endif

                                    <style>
                                        #gridtaxstructure {
                                            display: block;
                                            overflow-x: auto;
                                            overflow-y: hidden;
                                            white-space: nowrap;
                                            /* columns wrap nahi honge */
                                            -webkit-overflow-scrolling: touch;
                                            /* mobile smooth scroll */
                                        }
                                    </style>
                                    {{-- <input type="hidden" class="form-check-input" name="complimentry" id="complimentry"> --}}
                                    <div class="button-container custom-range" style="padding:38px;">
                                        <input type="checkbox" class="form-check-input" name="complimentry"
                                            id="complimentry">
                                        <label class="form-check-label" for="complimentry">Complimentry Room</label>
                                    </div>
                                    <table class="table-hover reservation-multi table-responsive" id="gridtaxstructure">
                                        <thead>
                                            <th>Arr. Date</th>
                                            <th>Time</th>
                                            <th>Nights</th>
                                            <th>Dep. Date</th>
                                            <th>Time</th>
                                            <th>Room Type</th>
                                            <th>No Of Rooms</th>
                                            <th>Plans</th>
                                            <th>Room</th>
                                            <th>Adult</th>
                                            <th>Child</th>
                                            <th>Rate Rs.</th>
                                            <th>Tax Inc.</th>
                                            <th id="thlast">Action</th>
                                        </thead>
                                        <tbody>
                                            <tr class="data-row">
                                                <td>
                                                    <input type="date" onchange="validateDates2()"
                                                        onfocus="this.showPicker()" name="arrivaldate1"
                                                        class="form-control arrivaldate low alibaba" value="{{ $ncurdate }}"
                                                        id="arrivaldate1" required>
                                                </td>
                                                <td>
                                                    <input style="width: 5.9em;" onfocus="this.showPicker()"
                                                        value="{{ $enviro_formdata->checkout }}" type="time"
                                                        id="arrivaltime1" name="arrivaltime1"
                                                        class="form-control arrivaltime low" required>
                                                </td>
                                                <td>
                                                    <input style=" width: 4rem;" type="number"
                                                        oninput="ValidateNum(this, '1', '100', '3')" name="stay_days1"
                                                        id="stay_days1" class="form-control staydays stays" value="1"
                                                        required>
                                                </td>
                                                <td>
                                                    <input onchange="validateDates2()" onfocus="this.showPicker()"
                                                        type="date" value="{{ $checkoutdate }}" name="checkoutdate1"
                                                        class="form-control low alibaba checkoutdateclass" id="checkoutdate1" required>
                                                    <span class="text-danger alert-light checkoutdate absolute-element"
                                                        id="date-error1"></span>
                                                </td>

                                                <td>
                                                    <input style="width: 5.9em;" onfocus="this.showPicker()" type="time"
                                                        value="{{ $enviro_formdata->checkout }}" id="checkouttime1"
                                                        name="checkouttime1" class="form-control low" required>
                                                </td>
                                                <td>
                                                    <select id="cat_code1" name="cat_code1"
                                                        class="form-control sl cat_code_class" required>
                                                        <option value="">Select</option>
                                                        @foreach ($roomcat as $list)
                                                            <option data-maxroom="{{ $list->norooms }}"
                                                                value="{{ $list->cat_code }}">{{ $list->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    <input type="hidden" class="form-control" name="planedit1"
                                                        id="planedit1" readonly>
                                                </td>
                                                <td>
                                                    <input type="text" autocomplete="off" aria-autocomplete="none"
                                                        class="form-control foureem roomcount" value="1" name="roomcount1"
                                                        id="roomcount1">
                                                </td>
                                                <td><select id="planmaster1" name="planmaster1"
                                                        class="form-control planmastclass sl"
                                                        {{ isPlanRequired(channelparameter()->checkyn, fomparameter()->plancalc) ? 'required' : '' }}>
                                                        <option value="">Select</option>
                                                    </select></td>
                                                <td><select id="roommast1" name="roommast1"
                                                        class="form-control roommastr sl">
                                                        <option value="">Select</option>
                                                    </select></td>
                                                <td><select style="width: 3.5em;" id="adult1" name="adult1"
                                                        class="form-control sl adultclass" required>
                                                        <option value="">Select</option>
                                                        <option value="1">1</option>
                                                        <option selected value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                    </select></td>
                                                <td><select style="width: 3.5em;" id="child1" name="child1"
                                                        class="form-control sl childclass" required>
                                                        <option value="0">0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                    </select></td>
                                                <td><input style="width:8em;" placeholder="Enter Rate" type="text"
                                                        name="rate1" id="rate1"
                                                        oninput="checkNumMax(this, 10); handleDecimalInput(event);"
                                                        class="form-control ratechk sp" required></td>
                                                <td><select style="width: 4em;" class="form-control taxchk sl"
                                                        name="tax_inc1" id="tax_inc1" required>
                                                        <option value="">Select</option>
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                </td>
                                                <td>
                                                    <img src="admin/icons/flaticon/copy.gif" alt="copy icon"
                                                        class="copy-icon">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="button-container custom-range">
                                        <button type="button" name="add_room" id="add_room"
                                            class="btn radiusbtn mb-1 btn-outline-success">Add Room <i
                                                class="fa-solid fa-building"></i></button>
                                    </div>
                                </div>

                                {{-- <div class="form-group mt-4 form-check">
                                    <input type="checkbox" onchange="HandleGuestList('guestlist')" class="form-check-input"
                                        name="guestlist" id="guestlist">
                                    <label class="form-check-label" for="guestlist">Guest List</label>
                                </div> --}}

                                <div id="cloneit">

                                    <div class="astrogeeksagar">
                                        <div style="display: flex; position: relative; align-items: center;">
                                            <h4>Guest Information</h4>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-2">
                                            <label class="col-form-label" for="reservationtype">Guest Name</label>
                                            <select class="form-control" name="greetings" id="greetings">
                                                <option value="Mr.">Mr.</option>
                                                <option value="Ms.">Ms.</option>
                                                <option value="Mam">Mam</option>
                                                <option value="Dr.">Dr.</option>
                                                <option value="Prof.">Prof.</option>
                                                <option value="Mrs.">Mrs.</option>
                                                <option value="Miss">Miss</option>
                                                <option value="Sir">Sir</option>
                                                <option value="Madam">Madam</option>
                                            </select>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="col-form-label" for="reservationtype">&nbsp;
                                                &NonBreakingSpace;</label>
                                            <div style="display: flex; align-items: center;">
                                                <input type="text" name="name" placeholder="Full Name" maxlength="25"
                                                    id="name" class="form-control" required>
                                                <i class="fa-regular fa-credit-card wcard" data-toggle="modal"
                                                    data-target="#formswipecard" style="margin-left: 5px;"></i>
                                                <i id="guestinfobutton" data-toggle="modal" data-target="#formguestdt"
                                                    class="fas fa-user-plus userplus"></i>
                                            </div>

                                            <div class="modal fade" id="formswipecard">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Guest History</h5>
                                                            <button type="button" class="close"
                                                                data-dismiss="modal"><span>&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div>
                                                                <p class="text-center alert-link h5">Please Swipe Your Card
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div style="padding: .5rem;" class="modal-footer">
                                                            <button type="button" class="btn btn-sm btn-secondary"
                                                                data-dismiss="modal">Close</button>
                                                            <button type="button" data-dismiss="modal"
                                                                class="btn btn-sm btn-primary">Save
                                                                changes</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            @include('property.frontoffice.operations.include.guestaddform')

                                        </div>
                                        <div class="col-md-3">
                                            <label class="col-form-label form-label" for="mobile">Mobile</label>
                                            <input type="tel" name="mobile" placeholder="Mobile" minlength="10"
                                                maxlength="10" id="mobile" class="form-control" {{ $enviro_formdata->grcmandatory == 'Y' ? 'required' : '' }}>
                                            <div style="display: none;" id="error-phone" class="error-phone text-danger">
                                                Invalid Number</div>
                                        </div>
                                        <div class="col-md-3">
                                            <label class="col-form-label form-label" for="email">Email</label>
                                            <input type="email" name="email" placeholder="Email" maxlength="100" id="email"
                                                class="form-control">
                                        </div>

                                        <!-- City -->
                                        <div class="col-md">
                                            <label for="cityname" class="form-label">City:
                                                @if ($canAddCity)
                                                    <button type="button" class="btn btn-sm btn-success ml-1 py-0 px-1"
                                                        style="font-size:11px; line-height:1.4;"
                                                        data-toggle="modal" data-target="#quickAddCityModal"
                                                        title="Add New City">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                @endif
                                            </label>
                                            <select class="form-control" name="cityname" id="cityname" required>
                                                <option value="">Select City</option>
                                                @foreach ($citydata as $list)
                                                    <option value="{{ $list->city_code }}">{{ $list->cityname }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <!-- State -->
                                        <div class="col-md">
                                            <label for="state" class="form-label">State:</label>
                                            <select class="form-control" name="state" id="state">
                                                <option value="">Select State</option>
                                            </select>
                                        </div>

                                        <!-- Country -->
                                        <div class="col-md">
                                            <label for="country" class="form-label">Country:</label>
                                            <select class="form-control" name="country" id="country">
                                                <option value="">Select Country</option>
                                            </select>
                                        </div>

                                        <!-- Nationality -->
                                        <div class="col-md">
                                            <label for="nationality" class="form-label">Nationality:</label>
                                            <select class="form-control" name="nationality" id="nationality">
                                                <option value="">Select Nationality</option>
                                            </select>
                                        </div>

                                        <!-- Zip Code -->
                                        <div class="col-md">
                                            <label for="zipcode" class="form-label">Zip Code:</label>
                                            <input type="text" class="form-control" name="zipcode" id="zipcode">
                                        </div>

                                        <!-- Address 1 -->
                                        <div class="col-md">
                                            <label for="address1" class="form-label">Address 1:</label>
                                            <input type="text" placeholder="Enter Address 1" class="form-control"
                                                name="address1" id="address1">
                                        </div>

                                        <!-- Address 2 -->
                                        <div class="col-md">
                                            <label for="address2" class="form-label">Address 2:</label>
                                            <input type="text" placeholder="Enter Address 2" class="form-control"
                                                name="address2" id="address2">
                                        </div>
                                    </div>
                                </div>

                                <div class="astrogeeksagar">
                                    <h4 style="width: 160px;">Other Information</h4>
                                </div>

                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" name="emailcheckout" id="emailcheckout">
                                    <label class="form-check-label" for="emailcheckout">Send Email at
                                        Checkout.</label>
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" name="suppressrate" id="suppressrate">
                                    <label class="form-check-label" for="suppressrate">Suppress Rate on
                                        Registration
                                        Card.</label>
                                </div>

                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" name="advdeposit" id="advdeposit">
                                    <label class="form-check-label" for="advdeposit"><i
                                            class="fa-solid fa-money-bill-transfer"></i>
                                        Advance Deposit?</label>
                                </div>
                                <div class="col-md-12 text-center">
                                    <button type="button" class="btn btn-danger" onclick="location.reload()">Cancel
                                        <i class="fa-solid fa-xmark"></i></button>
                                    <button type="submit" name="reservesubmit" id="reservesubmit"
                                        class="btn btn-primary">Reserve <i class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <script>
        $(document).ready(function() {

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            $('#reservationform').on('submit', function(event) {
                event.preventDefault();
                if ("{{ fomparameter()->allowbelow18 == 0 }}") {
                    let dob = $('#birthDate').val();
                    let ncurdate = "{{ ncurdate() }}";
                    if (!dob) {
                        $('#guestinfobutton').click();
                        pushNotify('error', 'Walkin Form', 'Please Select DOB', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        setTimeout(() => {
                            $('#birthDate').focus();
                            $('#birthDate').css({
                                'border-color': 'red',
                                'border-width': '2px'
                            });
                        }, 1000);
                        return;
                    }

                    if (getAgeInYears(dob, ncurdate) < 18) {
                        $('#guestinfobutton').click();
                        setTimeout(() => {
                            $('#birthDate').focus();
                            $('#birthDate').css({
                                'border-color': 'red',
                                'border-width': '2px'
                            });
                        }, 1000);
                        pushNotify('error', 'Walkin Form', 'Guest age must be 18 years or above', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        return;
                    }
                }
                formsubmitres('#reservationform', '#reservesubmit', 'Reservation', 'reservationlist', 'reservationsubmit');
            });

            function formsubmitres(formid, buttonid, formname, redirect, route) {
                $(buttonid).html('<i class="fas fa-spinner fa-spin"></i> Submitting').prop('disabled', true);

                $.ajax({
                    url: route,
                    type: "POST",
                    data: $(formid).serialize(),
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        if (response.status == 'success') {
                            Swal.fire({
                                title: "Success",
                                text: response.message,
                                icon: "success"
                            });
                            $(buttonid).html('<i class="fas fa-check-circle"></i> Submitted').prop('disabled', true);

                            setTimeout(() => {
                                window.location.href = response.redirecturl;
                            }, 1000);
                        } else if (response.status == 'error') {
                            Swal.fire({
                                title: "Validation",
                                text: response.message,
                                icon: "error"
                            });
                            $(buttonid).html('<i class="fa-regular fa-circle-xmark"></i> Not Submitted').prop('disabled', false);
                        } else {
                            pushNotify('success', formname, response.message, 'fade', 300, '', '', true, true, true, 500000, 20, 20, 'outline', 'right top');
                            $(buttonid).html('<i class="fas fa-check-circle"></i> Submit').prop('disabled', false);
                        }
                    },
                    error: function(xhr) {
                        let errorMessage = 'An error occurred while submitting.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        }
                        pushNotify('error', formname, errorMessage, 'fade', 300, '', '', true, true, true, 500000, 20, 20, 'outline', 'right top');
                        $(buttonid).html('<i class="fas fa-check-circle"></i> Submit').prop('disabled', false);
                        pushNotify('error', formname, errorMessage, 'fade', 300, '', '', true, true, true, 50000, 20, 20, 'outline', 'right top');
                    },
                    // complete: function () {
                    //     $(buttonid).html('<i class="fas fa-check-circle"></i> Submitted').prop('disabled', true);
                    // }
                });
            }

            let timer;
            $(document).on('input', '.planrow', function() {
                clearTimeout(timer);
                let element = $(this);

                timer = setTimeout(() => {
                    let currownum = element.attr('id');
                    const regex = /\d+/;
                    const match = currownum.match(regex);
                    const number = parseInt(match[0], 10);

                    let planamount = element.val();
                    let plansumrate = $(`#plansumrate${number}`).val();
                    let sumpercent = $(`#rowdplan_per${number}`).val();

                    let newchargevalue = (planamount * sumpercent) / 100;
                    let newnetroomrate = planamount - newchargevalue;
                    let beforetax = 1 + (plansumrate / 100);
                    let newroomrate = newnetroomrate / beforetax;

                    $(`#netroomrate${number}`).val(newnetroomrate.toFixed(2));
                    $(`#rowdamount${number}`).val(newchargevalue.toFixed(2));
                    $(`#roomrate${number}`).val(newroomrate.toFixed(2));

                    $(`#netroomrate${number}`).attr('value', newnetroomrate.toFixed(2));
                    $(`#rowdamount${number}`).attr('value', newchargevalue.toFixed(2));
                    $(`#roomrate${number}`).attr('value', newroomrate.toFixed(2));

                    let sum = 0.00;
                    $('.rowdamount').each(function() {
                        sum += parseFloat($(this).val()) || 0;
                    });

                    let roomratenet = sum + newnetroomrate;
                    $(`#totalnetamtplan${number}`).val(roomratenet.toFixed(2));
                    $(`#totalnetamtplan${number}`).attr('value', roomratenet.toFixed(2));
                    $(`#plankaamount${number}`).val(planamount).trigger('change');
                    $(`#plankaamount${number}`).attr('value', planamount);
                }, 500);
            });

            $(document).on('input', '.rowdamount', function() {
                clearTimeout(timer);
                let element = $(this);

                timer = setTimeout(() => {
                    let currownum = element.attr('id');
                    const regex = /\d+/;
                    const match = currownum.match(regex);
                    const number = parseInt(match[0], 10);

                    let rowdamount = element.val();
                    let planamount = $(`#plankaamount${number}`).val();
                    let plansumrate = $(`#plansumrate${number}`).val();

                    let newsumpercentval = (rowdamount / planamount) * 100;
                    let newnetroomrate = planamount - rowdamount;
                    let beforetax = 1 + (plansumrate / 100);
                    let newroomrate = newnetroomrate / beforetax;

                    $(`#netroomrate${number}`).val(newnetroomrate.toFixed(2));
                    $(`#rowdplan_per${number}`).val(newsumpercentval.toFixed(2));
                    $(`#roomrate${number}`).val(newroomrate.toFixed(2));

                    $(`#netroomrate${number}`).attr('value', newnetroomrate.toFixed(2));
                    $(`#rowdplan_per${number}`).attr('value', newsumpercentval.toFixed(2));
                    $(`#roomrate${number}`).attr('value', newroomrate.toFixed(2));
                    let sum = 0.00;
                    $('.rowdamount').each(function() {
                        sum += parseFloat($(this).val()) || 0;
                    });

                    let roomratenet = sum + newnetroomrate;
                    $(`#totalnetamtplan${number}`).val(roomratenet.toFixed(2));
                    $(`#totalnetamtplan${number}`).attr('value', roomratenet.toFixed(2));
                }, 500);
            });

            $(document).on('keypress', '.rowdamount, .planrow', function(e) {
                if (e.which == 13) {
                    e.preventDefault();
                    let element = $(this);
                    let num = extractnum(element.attr('id'));
                    $(`#okbtnplan${num}`).trigger('click');
                }
            });

            $(document).on('focus', '.taxincplanroomrate', function() {
                $(this).data('curval', $(this).val());
            });

            $(document).on('change', '.taxincplanroomrate', function() {
                if ($(this).val() != $(this).data('curval')) {
                    $(this).val($(this).data('curval'));
                }
            });

            $(document).on('focus', '.taxchk', function() {
                $(this).data('curval', $(this).val());
            });

            $(document).on('change', '.taxchk', function() {
                let index = $(this).closest('tr').index() + 1;
                if ($(`#planedit${index}`).val() == 'Y') {
                    if ($(this).val() != $(this).data('curval')) {
                        $(this).val($(this).data('curval'));
                    }
                }
            });

            $(document).on('click', '.okbtncls', function() {
                let element = $(this);
                let num = extractnum(element.attr('id'));
                let netroomrate = $(`#netroomrate${num}`).val();
                let taxincplanroomrate = $(`#taxincplanroomrate${num}`).val() == 'Y' ? 'Y' : 'N';
                $(`#rate${num}`).val(netroomrate);
                $(`#rate${num}`).prop('readonly', true);
                $(`#tax_inc${num}`).val(taxincplanroomrate);
                let taxparent = $(`#tax_inc${num}`).parent();
                $(`#planedit${num}`).val('Y');
                element.parents('div.table-planmast').css('display', 'none');
                element.parents('div.hidedisp').removeClass('hidedisp');
            });

            $(document).on('click', '.closebtncls', function() {
                let element = $(this);
                let num = extractnum(element.attr('id'));
                let taxparent = $(`#tax_inc${num}`).parent();
                $(`#tax_inc${num}`).remove();
                let newtx = `<select class="form-control taxchk sl" name="tax_inc${num}" id="tax_inc${num}" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                            </select>`;
                taxparent.append(newtx);
                $(`#rate${num}`).prop('readonly', false);
                $(`#planedit${num}`).val('N');
                element.parents('div.table-planmast').css('display', 'none');
                element.parents('div.hidedisp').removeClass('hidedisp');
            });

            var csrftoken = '{{ csrf_token() }}';
            let outenviroxhr = new XMLHttpRequest();
            outenviroxhr.open('GET', '/enviroform', true);
            outenviroxhr.onreadystatechange = function() {
                if (outenviroxhr.readyState === 4 && outenviroxhr.status === 200) {
                    let envirodataout = JSON.parse(outenviroxhr.responseText);
                    let plancalc = envirodataout.plancalc;
                    $(document).on('change', '.planmastclass', function() {
                        if ($('#complimentry').is(':checked')) {
                            return;
                        }
                        let parenttag = $(this).parents('tr.data-row');
                        let plancode = $(this).val();
                        let rowindex = $(this).closest('tr').index() + 1;
                        let taxinc = $(this).find('option:selected').data('taxinc');
                        let taxparent = $(`#tax_inc${rowindex}`).parent();
                        $(`#tax_inc${rowindex}`).remove();
                        let newtx = `<select class="form-control taxchk sl" name="tax_inc${rowindex}" id="tax_inc${rowindex}" required>
                                            <option value="">Select</option>
                                            <option value="Y" ${taxinc == 'Y' ? 'selected' : ''}>Yes</option>
                                            <option value="N" ${taxinc == 'N' ? 'selected' : ''}>No</option>
                                    </select>`;
                        taxparent.append(newtx);
                        $(`#rate${rowindex}`).prop('readonly', false);
                        $(`#planedit${rowindex}`).val('N');
                        if (plancalc == 'Y' && plancode != '') {
                            const plandata = {
                                'plancode': plancode
                            };
                            const options = {
                                method: 'POST',
                                headers: {
                                    'Content-Type': 'application/json',
                                    'X-CSRF-TOKEN': csrfToken
                                },
                                body: JSON.stringify(plandata)
                            };

                            fetch('/fetchplancacl', options)
                                .then(response => response.json())
                                .then(data => {
                                    let planrows = data.plan1;
                                    let plan_mast = data.plan_mast;
                                    let total_rate = plan_mast.total_rate;
                                    let existingPlanDetails = parenttag.find('.table-planmast');
                                    if (existingPlanDetails.length > 0) {
                                        existingPlanDetails.remove();
                                    }
                                    let wholedata = `<div id=plandiv${rowindex} class="hidedisp">
                                                                <div id="table-planmast${rowindex}" class="table-responsive table-planmast">
                                                                <h3 class="text-center adc">Plan Details</h3>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <label id="plannamelabel" class="col-form-label" for="planname">Plan</label>
                                                                        <input type="text" value="${plan_mast.name}" class="form-control" name="planname${rowindex}" id="planname${rowindex}" readonly>
                                                                    </div>
                                                                    <div class="col-md-2">
                                                                        <label id="plankaamountlabel" class="col-form-label" for="plankaamount">Plan Amount</label>
                                                                        <input autocomplete="off" type="text" value=${plan_mast.total} class="form-control planrow" name="plankaamount${rowindex}" id="plankaamount${rowindex}">
                                                                    </div>
                                                                    <div class="col-md-2">
                                                                        <label id="taxincplanroomratelabel" class="col-form-label" for="taxincplanroomrate">Inc. In Room Rate</label>
                                                                        <select class="form-control taxincplanroomrate" name="taxincplanroomrate${rowindex}" id="taxincplanroomrate${rowindex}">
                                                                            <option value="Y" ${plan_mast.rrinc_tax == 'Y' ? 'selected' : ''}>Yes</option>
                                                                            <option value="N" ${plan_mast.rrinc_tax == 'N' ? 'selected' : ''}>No</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-2">
                                                                        <label id="roomratelabel" class="col-form-label" for="roomrate">Room Rate</label>
                                                                        <input type="text" value="${plan_mast.room_rate_before_tax.toFixed(2)}" class="form-control" name="roomrate${rowindex}" id="roomrate${rowindex}" readonly>
                                                                    </div>
                                                                    <div class="col-md-2">
                                                                        <label id="netroomratelabel" class="col-form-label" for="netroomrate">Net Room Rate</label>
                                                                        <input type="text" value="${plan_mast.room_rate}" class="form-control" name="netroomrate${rowindex}" id="netroomrate${rowindex}" readonly>
                                                                        <input type="hidden" value="${plan_mast.total_rate ?? 0}" class="form-control" name="plansumrate${rowindex}" id="plansumrate${rowindex}">
                                                                        <input type="hidden" value="${plan_mast.room_tax_stru}" class="form-control" name="taxstruplan${rowindex}" id="taxstruplan${rowindex}">
                                                                        <input type="hidden" value="${plan_mast.room_per}" class="form-control" name="planpercent${rowindex}" id="planpercent${rowindex}">
                                                                        <input type="hidden" value="${plan_mast.pcode}" class="form-control" name="plancodeplan${rowindex}" id="plancodeplan${rowindex}" readonly>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-3 d-flex justify-content-around">
                                                                    <table id="planmasttable${rowindex}" class="table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th>Sn</th>
                                                                                <th>Fixed Charge</th>
                                                                                <th>Amount</th>
                                                                                <th>Percentage</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="offset-10">
                                                                        <input type="text" class="form-control" name="totalnetamtplan${rowindex}" id="totalnetamtplan${rowindex}" readonly>
                                                                    </div>
                                                                </div>
                                                                <div id="okbtnlabel${rowindex}" class="text-center" okbtnlabel>
                                                                    <button id="okbtnplan${rowindex}" name="okbtnplan${rowindex}" type="button" class="btn okbtncls btn-success btn-sm"><i class="fa-regular fa-circle-check"></i> OK</button>
                                                                    <button id="closebtnplan${rowindex}" name="closebtnplan${rowindex}" type="button" class="btn closebtncls btn-danger btn-sm"><i class="fa-regular fa-circle-xmark"></i> Cancel</button>
                                                                </div>
                                                                <div id="resizeHandle${rowindex}" class="resizeHandle"></div>
                                                                </div>
                                                            </div>`;


                                    parenttag.append(wholedata);

                                    let tbody = $(`#planmasttable${rowindex} tbody`);
                                    let rowdata = '';
                                    let sn = 0;
                                    let roomratenet = parseFloat(plan_mast.room_rate);

                                    planrows.forEach((row, index) => {
                                        sn++;
                                        roomratenet += parseFloat(row.net_amount);
                                        rowdata += `<tr>
                                                                            <td>${sn}</td>
                                                                            <td>${row.chargename}</td>
                                                                            <td><input autocomplete="off" type="text" value="${row.net_amount}" class="form-control rowdamount" name="rowdamount${rowindex}" id="rowdamount${rowindex}"></td>
                                                                            <td><input type="text" value="${row.plan_per}" class="form-control" name="rowdplan_per${rowindex}" id="rowdplan_per${rowindex}" readonly>
                                                                            <input type="hidden" value="${row.fix_rate}" class="form-control" name="rowdplanfixrate${rowindex}" id="rowdplanfixrate${rowindex}" readonly>
                                                                            <input type="hidden" value="${row.rev_code}" class="form-control" name="rowsrev_code${rowindex}" id="rowsrev_code${rowindex}" readonly>
                                                                            <input type="hidden" value="${row.tax_stru}" class="form-control" name="rowstax_stru${rowindex}" id="rowstax_stru${rowindex}" readonly></td>
                                                                        </tr>`;
                                    });
                                    $(`#totalnetamtplan${rowindex}`).val(roomratenet.toFixed(2));

                                    tbody.append(rowdata);
                                    // makeDraggable(`table-planmast${rowindex}`);
                                    // makeResizable(`table-planmast${rowindex}`, `resizeHandle${rowindex}`);
                                })
                                .catch(error => {
                                    console.log(error);
                                })
                        }
                    });

                }
            }
            outenviroxhr.send();
        });
        // Delegate event handling to a static parent element
        $(document).on('change', '[id^="cityname"]', function() {
            // function changeCity(cityId){
            var citycode = $(this).val();
            var cityId = $(this).attr('id');
            var stateId = cityId.replace('cityname', 'state');
            var countryId = cityId.replace('cityname', 'country');
            var nationalityId = cityId.replace('cityname', 'nationality');
            var zipcodeId = cityId.replace('cityname', 'zipcode');

            $.ajax({
                type: 'POST',
                url: '/sendcitycode',
                data: {
                    citycode: citycode,
                    _token: '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(result) {
                    $('#' + stateId).empty();
                    $('#' + countryId).empty();
                    $('#' + nationalityId).empty();

                    $.each(result.states, function(index, state) {
                        $('<option>').val(state.state_code).text(state.name).appendTo('#' + stateId);
                    });

                    $.each(result.countries, function(index, country) {
                        $('<option>').val(country.country_code).text(country.country_name).appendTo('#' + countryId);
                        $('<option>').val(country.nationality).text(country.nationality).appendTo('#' + nationalityId);
                    });

                    $('#' + zipcodeId).val(result.zipcode);
                }
            });
            // }
        });

        // Delegate event handling to a static parent element
        $(document).on('change', '[id^="cityguest"]', function() {
            var citycode = $(this).val();
            var cityId = $(this).attr('id');
            var stateId = cityId.replace('cityguest', 'stateguest');
            var countryId = cityId.replace('cityguest', 'countryguest');
            var nationalityId = cityId.replace('cityguest', 'nationalityother');
            var zipcodeId = cityId.replace('cityguest', 'zipguest');
            var arrivalId = cityId.replace('cityguest', 'arrfrom');
            var destinationId = cityId.replace('cityguest', 'destination');

            $.ajax({
                type: 'POST',
                url: '/sendcitycode',
                data: {
                    citycode: citycode,
                    _token: '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(result) {
                    $('#' + stateId).empty();
                    $('#' + countryId).empty();
                    $('#' + nationalityId).empty();

                    $.each(result.states, function(index, state) {
                        $('<option>').val(state.state_code).text(state.name).appendTo('#' + stateId);
                        $('#' + arrivalId).val(citycode);
                        $('#' + destinationId).val(citycode);
                    });

                    $.each(result.countries, function(index, country) {
                        $('<option>').val(country.country_code).text(country.country_name).appendTo('#' + countryId);
                        $('<option>').val(country.nationality).text(country.nationality).appendTo('#' + nationalityId);
                    });

                    $('#' + zipcodeId).val(result.zipcode);
                }
            });
        });

        // Delegate event handling to a static parent element
        $(document).on('change', '[id^="issuingcity"]', function() {
            var citycode = $(this).val();
            var issuingcityId = $(this).attr('id');
            var issuingcountryId = issuingcityId.replace('issuingcity', 'issuingcountry');

            $.ajax({
                type: 'POST',
                url: '/sendcitycode',
                data: {
                    citycode: citycode,
                    _token: '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(result) {
                    $('#' + issuingcountryId).empty();

                    $.each(result.countries, function(index, country) {
                        $('<option>').val(country.country_code).text(country.country_name).appendTo('#' + issuingcountryId);
                    });
                }
            });
        });
    </script>

    <script>
        $(document).ready(function() {

            // Event listener for hardcoded select element
            $(document).on('change', `#planmaster1`, function() {
                if ($('#complimentry').is(':checked')) {
                    return;
                }
                var cid = $(`#child1`).val();
                var adult = $(`#adult1`).val();
                var room_cat = $(`#cat_code1`).val();
                var planmaster = $(`#planmaster1`).val();
                const data = [room_cat, planmaster, adult, cid];
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '/getrate2', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = xhr.responseText.trim();
                        var rate = $(`#rate1`);
                        rate.val(result);
                    }
                };
                xhr.send(`data=${JSON.stringify(data)}&_token={{ csrf_token() }}`);
            });

            window.selectedrooms = @json($selectedrooms ?? []);
            let selectedrooms = window.selectedrooms;

            function getSelectedRooms() {
                let selectedRooms = [];
                $('[id^="roommast"]').each(function() {
                    let roomValue = $(this).val();
                    if (roomValue && roomValue !== '') {
                        selectedRooms.push(roomValue);
                    }
                });
                return selectedRooms;
            }

            function filterAvailableRooms(rooms, currentIndex) {
                let selectedRooms = getSelectedRooms();
                let currentlySelected = $(`#roommast${currentIndex}`).val();

                if (currentlySelected) {
                    selectedRooms = selectedRooms.filter(room => room !== currentlySelected);
                }

                return rooms.filter(room => !selectedRooms.includes(room.rcode));
            }

            function getSelectedRoomDateRange() {
                if (!selectedrooms || selectedrooms.length === 0) {
                    return null;
                }

                const checkindate = selectedrooms.reduce((min, room) =>
                    room.fromdate < min ? room.fromdate : min,
                    selectedrooms[0].fromdate
                );

                const checkoutdate = selectedrooms.reduce((max, room) =>
                    room.todate > max ? room.todate : max,
                    selectedrooms[0].todate
                );

                const staydays = Math.max(1, Math.round((new Date(checkoutdate) - new Date(checkindate)) / 86400000));

                return {
                    checkindate: checkindate,
                    checkoutdate: checkoutdate,
                    staydays: staydays
                };
            }

            function fetchEmptyRooms(checkindate, checkoutdate, index) {
                $.ajax({
                    url: "{{ url('fetchallemptyrooms') }}",
                    method: "POST",
                    data: {
                        checkindate: checkindate,
                        checkoutdate: checkoutdate
                    },
                    success: function(response) {
                        let roomlist = response.data;

                        let availableRooms = filterAvailableRooms(roomlist, index);

                        let rdata = '<option value="">Select</option>';

                        availableRooms.forEach((tdata) => {
                            rdata += `<option data-catid="${tdata.room_cat}" value="${tdata.rcode}">${tdata.rcode}</option>`;
                        });

                        $(`#roommast${index}`).html(rdata);

                        if (selectedrooms[index - 1]) {
                            $(`#roommast${index}`)
                                .val(selectedrooms[index - 1].roomno)
                                .data('initializing', true)
                                .trigger('change');
                        }
                    },
                    error: function(error) {
                        console.error("Error fetching rooms:", error);
                    }
                });
            }

            // Keeps the pre-selected room in place while the room options of a row are still loading
            // (/getrooms and fetchallemptyrooms both rebuild the option list of the same select).
            function selectRoomWhenOptionsLoaded(roomSelect, roomNo) {
                const target = String(roomNo);

                const selectRoom = function() {
                    const $option = roomSelect.find(`option[value="${target}"]`);

                    if ($option.length === 0) {
                        return false;
                    }

                    if (roomSelect.val() !== target) {
                        roomSelect.val(target).data('initializing', true).trigger('change');
                    }

                    return true;
                };

                if (roomSelect[0] && typeof MutationObserver !== 'undefined') {
                    const observer = new MutationObserver(function() {
                        if (selectRoom()) {
                            observer.disconnect();
                        }
                    });

                    observer.observe(roomSelect[0], {
                        childList: true
                    });

                    setTimeout(function() {
                        observer.disconnect();
                    }, 3000);
                }

                selectRoom();
            }

            function applySelectedRoomToRow(room, rowNumber, dateRange) {
                $(`#arrivaldate${rowNumber}`).val(dateRange.checkindate);
                $(`#checkoutdate${rowNumber}`).val(dateRange.checkoutdate);
                $(`#stay_days${rowNumber}`).val(dateRange.staydays);

                const $catSelect = $(`#cat_code${rowNumber}`);

                if (room.roomcategory && $catSelect.find(`option[value="${room.roomcategory}"]`).length) {
                    $catSelect.val(room.roomcategory).trigger('change');
                }

                fetchEmptyRooms(dateRange.checkindate, dateRange.checkoutdate, rowNumber);

                selectRoomWhenOptionsLoaded($(`#roommast${rowNumber}`), room.roomno);
            }

            $("#cat_code1").on('change', function() {
                var cid = this.value;
                document.getElementById('roommast1').value = '';
                document.getElementById('planmaster1').value = '';
                let checkindate = $('#arrivaldate1').val();
                let checkoutdate = $('#checkoutdate1').val();
                var xhrRooms = new XMLHttpRequest();
                xhrRooms.open('POST', '/getrooms', true);
                xhrRooms.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhrRooms.onreadystatechange = function() {
                    if (xhrRooms.readyState === 4 && xhrRooms.status === 200) {
                        var result = xhrRooms.responseText;
                        var roomSelect = document.getElementById('roommast1');
                        roomSelect.innerHTML = result;
                    }
                };
                xhrRooms.send(`cid=${cid}&checkindate=${checkindate}&checkoutdate=${checkoutdate}&_token={{ csrf_token() }}`);
                var xhrPlans = new XMLHttpRequest();
                xhrPlans.open('POST', '/getplans', true);
                xhrPlans.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhrPlans.onreadystatechange = function() {
                    if (xhrPlans.readyState === 4 && xhrPlans.status === 200) {
                        var result = xhrPlans.responseText;
                        var planSelect = document.getElementById(`planmaster1`);
                        planSelect.innerHTML = result;
                    }
                };
                xhrPlans.send(`cid=${cid}&_token={{ csrf_token() }}`);
            });

            let previouslySelectedRooms = {};

            $(document).on('change', '.cat_code_class', function() {
                var cid = this.value;
                var rowNumber = this.id.replace('cat_code', '');

                $(`#roommast${rowNumber}`).val('');
                $(`#planmaster${rowNumber}`).val('');

                let checkindate = $(`#arrivaldate${rowNumber}`).val();
                let checkoutdate = $(`#checkoutdate${rowNumber}`).val();

                var $select = $(this);

                var xhrRooms = new XMLHttpRequest();
                xhrRooms.open('POST', '/getrooms', true);
                xhrRooms.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhrRooms.onreadystatechange = function() {
                    if (xhrRooms.readyState === 4 && xhrRooms.status === 200) {
                        var result = xhrRooms.responseText;
                        var tempDiv = $('<div>').html(result);
                        var totalrooms = tempDiv.find('option').length - 1;
                        $select.find('option:selected').attr('data-maxroom', totalrooms);

                        tempDiv.find('option').each(function() {
                            var roomNo = $(this).val();
                            var catCode = $(this).data('catcode');

                            if (previouslySelectedRooms[catCode] && previouslySelectedRooms[catCode].some(item => item.roomNo === roomNo)) {
                                $(this).remove();
                            }
                        });

                        var roomSelect = $(`#roommast${rowNumber}`);
                        roomSelect.html(tempDiv.html());
                    }
                };

                xhrRooms.send(`cid=${cid}&checkindate=${checkindate}&checkoutdate=${checkoutdate}&_token={{ csrf_token() }}`);

                var xhrPlans = new XMLHttpRequest();
                xhrPlans.open('POST', '/getplans', true);
                xhrPlans.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhrPlans.onreadystatechange = function() {
                    if (xhrPlans.readyState === 4 && xhrPlans.status === 200) {
                        var result = xhrPlans.responseText;
                        var planSelect = $(`#planmaster${rowNumber}`);
                        planSelect.html(result);
                    }
                };
                xhrPlans.send(`cid=${cid}&_token={{ csrf_token() }}`);
            });

            $(document).on('change', '[id^=roommast]', function() {
                var roomNo = $(this).val();
                var catCode = $(this).find('option:selected').data('catcode');
                var rowNumber = this.id.replace('roommast', '');

                if (!previouslySelectedRooms[catCode]) {
                    previouslySelectedRooms[catCode] = [];
                }

                previouslySelectedRooms[catCode] = previouslySelectedRooms[catCode].filter(item =>
                    item.rowNumber !== rowNumber);

                if (roomNo) {
                    previouslySelectedRooms[catCode].push({
                        roomNo: roomNo,
                        rowNumber: rowNumber
                    });
                }
            });

            $(document).on('input', '#rooms', function() {
                let totalroom = parseInt($('#totalroom').val(), 10) || 0;
                let currentValue = parseInt($(this).val(), 10) || 0;


                if (currentValue > totalroom) {
                    $(this).val('1');
                    pushNotify('info', 'Reservation', 'Value is greater than total rooms', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                let rooms = currentValue;
                let tableBody = $('#gridtaxstructure tbody');
                tableBody.find('tr:gt(0)').remove();

                for (let i = 1; i < rooms; i++) {
                    $('#add_room').trigger('click');
                }
            });

            $(document).on('input', '.roomcount', function() {
                let currow = $(this);
                let index = currow.closest('tr').index() + 1;
                let maxallow = $(`#cat_code${index}`).find('option:selected').data('maxroom');
                if (currow.val() > 1) {
                    $(`#roommast${index}`).val('');
                }

                $.post('/getmaxroomallow', {
                    catcode: $(`#cat_code${index}`).val(),
                    checkindate: $(`#arrivaldate${index}`).val(),
                    checkoutdate: $(`#checkoutdate${index}`).val()
                }, function(response) {
                    maxallow = response.maxallow;
                }).fail(function(error) {
                    console.error('Error:', error);
                });

                if (currow.val() > maxallow) {
                    currow.val('1');
                    pushNotify('info', 'Reservation', 'Value is greater than total rooms of category', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                }
            });

            const isPlanRequired = @json(isPlanRequired(channelparameter()->checkyn, fomparameter()->plancalc));

            $("#add_room").click(function(event) {
                event.preventDefault();
                const table = document.getElementById("gridtaxstructure");
                const newRow = table.insertRow(table.rows.length);
                newRow.classList.add('data-row');

                var cell1 = newRow.insertCell(0);
                var cell2 = newRow.insertCell(1);
                var cell3 = newRow.insertCell(2);
                var cell4 = newRow.insertCell(3);
                var cell5 = newRow.insertCell(4);
                var cell6 = newRow.insertCell(5);
                var cell7 = newRow.insertCell(6);
                var cell8 = newRow.insertCell(7);
                var cell9 = newRow.insertCell(8);
                var cell10 = newRow.insertCell(9);
                var cell11 = newRow.insertCell(10);
                var cell12 = newRow.insertCell(11);
                var cell13 = newRow.insertCell(12);
                var cell14 = newRow.insertCell(13);
                var cell15 = newRow.insertCell(14);
                const rowNumber = table.rows.length - 1;
                cell15.setAttribute("id", "remaktd" + rowNumber);

                document.getElementById('rooms').value = rowNumber;

                let totalrooms = parseInt($('#totalrooms').val());

                $('#totalrooms').val(totalrooms + 1);

                cell1.innerHTML = `<input onfocus="this.showPicker()" type="date" name="arrivaldate${rowNumber}"
                    class="form-control arrival-date low alibaba"
                    value="{{ $ncurdate }}" id="arrivaldate${rowNumber}" required>`;

                cell2.innerHTML = `<input style="width: 5.9em;" onfocus="this.showPicker()" value="{{ $enviro_formdata->checkout }}" type="time" id="arrivaltime${rowNumber}"
                    name="arrivaltime${rowNumber}" class="form-control arrivaltime low" required>`;

                cell3.innerHTML = `<input onchange="DisplayCheckout2()" style="width: 4rem;" type="number"
                    oninput="ValidateNum(this, '1', '100', '3')" name="stay_days${rowNumber}"
                    id="stay_days${rowNumber}" class="form-control stays" value="1" required>`;

                cell4.innerHTML = `<input onfocus="this.showPicker()" type="date" value="{{ $checkoutdate }}" name="checkoutdate${rowNumber}"
                    class="form-control low alibaba checkoutdateclass" placeholder="2023-10-26"
                    id="checkoutdate${rowNumber}" required>
                <span class="text-danger alert-light absolute-element" id="date-error${rowNumber}"></span>`;

                cell5.innerHTML = `<input style="width: 5.9em;" onfocus="this.showPicker()" type="time" value="{{ $enviro_formdata->checkout }}" id="checkouttime${rowNumber}" name="checkouttime${rowNumber}"
                    class="form-control low" required>`;

                cell6.innerHTML = `
                <select id="cat_code${rowNumber}" name="cat_code${rowNumber}" class="form-control sl cat_code_class" required>
                    <option value="">Select</option>
                    @foreach ($roomcat as $list)
                        <option data-maxroom="{{ $list->norooms }}" value="{{ $list->cat_code }}">{{ $list->name }}</option>
                    @endforeach
                </select>
                <input type="hidden" class="form-control" name="planedit${rowNumber}" id="planedit${rowNumber}" readonly>`;

                cell7.innerHTML = `<input type="text" class="form-control foureem roomcount" value="1" name="roomcount${rowNumber}" id="roomcount${rowNumber}">`;

                cell8.innerHTML = `
                    <select id="planmaster${rowNumber}" name="planmaster${rowNumber}"
                        class="form-control planmastclass sl"
                        ${isPlanRequired ? 'required' : ''}>
                        <option value="">Select</option>
                    </select>`;

                cell9.innerHTML = `
                <select id="roommast${rowNumber}" name="roommast${rowNumber}" class="form-control roommastr sl">
                    <option value="">Select</option>
                </select>`;

                cell10.innerHTML = `
                <select style="width: 3.5em;" id="adult${rowNumber}" name="adult${rowNumber}" class="form-control sl adultclass" required>
                    <option value="">Select</option>
                    <option value="1">1</option>
                    <option selected value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>`;

                cell11.innerHTML = `
                <select style="width: 3.5em;" id="child${rowNumber}" name="child${rowNumber}" class="form-control sl childclass" required>
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>`;

                cell12.innerHTML = `
                <input placeholder="Enter Rate" style="width:8em;" type="text" name="rate${rowNumber}" id="rate${rowNumber}"
                    oninput="checkNumMax(this, 10); handleDecimalInput(event);"
                    class="form-control ratechk sp" required>`;
                cell13.innerHTML = `<select style="width:4em;" class="form-control taxchk sl" name="tax_inc${rowNumber}" id="tax_inc${rowNumber}" required>
                    <option value="">Select</option>
                    <option value="Y">Yes</option>
                    <option value="N">No</option>`;
                cell14.innerHTML = `<img src="admin/icons/flaticon/remove.gif" alt="remove icon" class="remove-icon">
                    <img src="admin/icons/flaticon/copy.gif" alt="copy icon" class="copy-icon">`;

                cell15.innerHTML = ``;

                if ($('#complimentry').is(':checked')) {
                    $(`#rate${rowNumber}`).val('0.00').prop('readonly', true);
                    $(`#tax_inc${rowNumber}`).val('N');
                    overlayLock(`#tax_inc${rowNumber}`);
                } else {

                    $(document).on('change', `#planmaster${rowNumber}`, function() {
                        var cid = $(`#child${rowNumber}`).val();
                        var adult = $(`#adult${rowNumber}`).val();
                        var room_cat = $(`#cat_code${rowNumber}`).val();
                        var planmaster = $(`#planmaster${rowNumber}`).val();
                        const data = [room_cat, planmaster, adult, cid];
                        var xhr = new XMLHttpRequest();
                        xhr.open('POST', '/getrate2', true);
                        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhr.onreadystatechange = function() {
                            if (xhr.readyState === 4 && xhr.status === 200) {
                                var result = xhr.responseText.trim();
                                var rate = $(`#rate${rowNumber}`);
                                rate.val(result);
                            }
                        };
                        xhr.send(`data=${JSON.stringify(data)}&_token={{ csrf_token() }}`);
                    });
                }

                $(`#stay_days${rowNumber}`).on('input', function() {
                    const checkinDate = new Date($(`#arrivaldate${rowNumber}`).val());
                    const stayDays = +$(`#stay_days${rowNumber}`).val();
                    const checkoutDateInput = $(`#checkoutdate${rowNumber}`);

                    if (!isNaN(stayDays)) {
                        checkinDate.setDate(checkinDate.getDate() + stayDays);
                        checkoutDateInput.val(checkinDate.toISOString().split('T')[0]);
                    }
                });

                var xhr = new XMLHttpRequest();
                var csrfToken = '{{ csrf_token() }}';
                xhr.open('GET', '{{ route('checkeditarrival') }}', true);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.setRequestHeader('X-CSRF-TOKEN', csrfToken);
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var response = xhr.responseText;
                        var result = JSON.parse(response);

                        if (result.roomrateeditable === 'N') {
                            var elements = document.getElementsByClassName('ratechk');
                            for (var i = 0; i < elements.length; i++) {
                                elements[i].readOnly = true;
                            }
                        }

                        if (result.roominctaxeditable === 'N') {
                            var elements = document.getElementsByClassName('taxchk');
                            for (var i = 0; i < elements.length; i++) {
                                elements[i].readOnly = true;
                            }
                        }

                        if (result.roominctaxeditable === 'N') {
                            var elements = document.getElementsByClassName('taxchk');
                            for (var i = 0; i < elements.length; i++) {
                                elements[i].disabled = true;
                            }
                        }

                        // Don't touch it Or you will be in trouble😭

                        if (result.rrinctaxdefault === 'Y') {
                            var elements = document.getElementsByClassName('taxchk');
                            for (var i = 0; i < elements.length; i++) {
                                elements[i].value = 'Y';
                            }
                        } else if (result.rrinctaxdefault === 'N') {
                            var elements = document.getElementsByClassName('taxchk');
                            for (var i = 0; i < elements.length; i++) {
                                elements[i].value = 'N';
                            }
                        } else {
                            var elements = document.getElementsByClassName('taxchk');
                            for (var i = 0; i < elements.length; i++) {
                                elements[i].value = '';
                            }
                        }

                    }
                };
                xhr.send();

                let selectedRoomDateRange = getSelectedRoomDateRange();

                if (selectedRoomDateRange) {
                    $(`#arrivaldate${rowNumber}`).val(selectedRoomDateRange.checkindate);
                    $(`#checkoutdate${rowNumber}`).val(selectedRoomDateRange.checkoutdate);
                    $(`#stay_days${rowNumber}`).val(selectedRoomDateRange.staydays);
                }

                fetchEmptyRooms(
                    $(`#arrivaldate${rowNumber}`).val(),
                    $(`#checkoutdate${rowNumber}`).val(),
                    rowNumber
                );

            });

            // Refresh the room options of a row whenever its own dates change
            $(document).on('change', '[id^="arrivaldate"], .checkoutdateclass', function() {
                const rowId = $(this).attr('id');
                const rowNumber = rowId.replace('arrivaldate', '').replace('checkoutdate', '');

                if (!$(`#cat_code${rowNumber}`).val()) {
                    return;
                }

                fetchEmptyRooms(
                    $(`#arrivaldate${rowNumber}`).val(),
                    $(`#checkoutdate${rowNumber}`).val(),
                    rowNumber
                );
            });

            // Pre-fill the reservation rows from the room status selection
            if (selectedrooms && selectedrooms.length > 0) {
                const dateRange = getSelectedRoomDateRange();

                const table = document.getElementById('gridtaxstructure');
                const existingRows = table ? table.rows.length - 1 : 1;
                const rowsToAdd = selectedrooms.length - existingRows;

                for (let i = 0; i < rowsToAdd; i++) {
                    $('#add_room').trigger('click');
                }

                $(`#arrivaldate1`).val(dateRange.checkindate);
                $(`#checkoutdate1`).val(dateRange.checkoutdate);
                $(`#stay_days1`).val(dateRange.staydays);

                if (rowsToAdd <= 0) {
                    fetchEmptyRooms(dateRange.checkindate, dateRange.checkoutdate, 1);
                }

                selectedrooms.forEach(function(room, index) {
                    applySelectedRoomToRow(room, index + 1, dateRange);
                });
            }
        });

        // Global delegated event handler for all arrival date changes (initial and dynamic rows)
        $(document).on('change', '[id^="arrivaldate"]', function() {
            const rowId = $(this).attr('id');
            const rowNumber = rowId.replace('arrivaldate', '');

            const checkinDateInput = $(`#arrivaldate${rowNumber}`);
            const checkoutDateInput = $(`#checkoutdate${rowNumber}`);
            const dayDifferenceInput = $(`#stay_days${rowNumber}`);
            const dateError = $(`#date-error${rowNumber}`);

            const checkinDate = new Date(checkinDateInput.val());

            let checkoutDate = new Date(checkinDate);
            checkoutDate.setDate(checkinDate.getDate() + 1);

            checkoutDateInput.val(formatDate(checkoutDate));
            dayDifferenceInput.val(1);

            dateError.text("");
        });

        function handleComplimentary(checkbox) {
            if ($(checkbox).is(':checked')) {
                $('.ratechk').val('0.00').prop('readonly', true);
                $('.taxchk').val('N');
                overlayLock('.taxchk');
            } else {
                $('.ratechk').val('').prop('readonly', false);
                $('.taxchk').val('Y');
                overlayUnlock('.taxchk');
            }
        }

        $(document).on('change', '#complimentry', function() {
            handleComplimentary(this);
        });

        $(document).on('change', `.childclass, .adultclass, .roommastr`, function() {
            if ($('#complimentry').is(':checked')) {
                return;
            }
            let rowNumber = $(this).closest('tr').index() + 1;
            let roomcount = $(`#roomcount${rowNumber}`).val();
            if (roomcount > 1) {
                $(`#roommast${rowNumber}`).val('');
            }
            var cid = $(`#roommast${rowNumber}`).val();
            var adult = $(`#adult${rowNumber}`).val();
            var room_category = $(`#cat_code${rowNumber}`).val();
            var child = $(`#child${rowNumber}`).val();
            var sumchildadult = parseInt(adult) + parseInt(child);
            const data = [room_category, cid, sumchildadult];
            if ($(`#planedit${rowNumber}`).val() == '' || $(`#planedit${rowNumber}`).val() == 'N') {
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '/getrate3', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = xhr.responseText.trim();
                        var rate = $(`#rate${rowNumber}`).val(result);
                    }
                };
                xhr.send(`data=${JSON.stringify(data)}&_token={{ csrf_token() }}`);
            }
        });

        $(document).on('click', '.copy-icon', function() {
            var row = $(this).closest('tr');
            var iindex = row.index() + 1;
            var nextRow = row.next('tr');

            if (nextRow.length > 0) {

                let plandiv = $(document).find(`div#plandiv${iindex}`);
                if (plandiv.length > 0) {
                    let newIndex = iindex + 1;

                    let clonedPlandiv = $('<div>').attr('id', `plandiv${newIndex}`).html(plandiv.html());

                    clonedPlandiv.find('table').attr('id', `planmasttable${newIndex}`);

                    clonedPlandiv.find('input, select, textarea').each(function() {
                        let $this = $(this);

                        let currentName = $this.attr('name');
                        let currentId = $this.attr('id');

                        if (currentName) {
                            let newName = currentName.replace(/\d+$/, newIndex);
                            $this.attr('name', newName);
                        }

                        if (currentId) {
                            let newId = currentId.replace(/\d+$/, newIndex);
                            $this.attr('id', newId);
                        }

                        if ($this.is('input[type="text"], input[type="number"], textarea, select')) {
                            $this.val($this.attr('value'));
                        }

                        if ($this.is('input[type="checkbox"], input[type="radio"]')) {
                            $this.prop('checked', $this.prop('checked'));
                        }
                    });

                    clonedPlandiv.find('div[id^="okbtnlabel"]').attr('id', `okbtnlabel${newIndex}`);
                    clonedPlandiv.find('button[id^="okbtnplan"]').attr('id', `okbtnplan${newIndex}`).attr('name', `okbtnplan${newIndex}`);
                    clonedPlandiv.find('button[id^="closebtnplan"]').attr('id', `closebtnplan${newIndex}`).attr('name', `closebtnplan${newIndex}`);
                    clonedPlandiv.find('div[id^="resizeHandle"]').attr('id', `resizeHandle${newIndex}`);

                    nextRow.find('td').last().append(clonedPlandiv);
                }

                row.find('td').each(function(index) {
                    if (index < 15) {
                        var cell = $(this);
                        var nextCell = nextRow.find('td').eq(index);

                        var input = cell.find('input');
                        var nextInput = nextCell.find('input');
                        if (input.length > 0 && nextInput.length > 0) {
                            nextInput.val(input.val());
                        }

                        var select = cell.find('select');
                        var nextSelect = nextCell.find('select');

                        if (select.length > 0 && nextSelect.length > 0) {

                            nextSelect.html(select.html());

                            var selectedValue = select.val();

                            if (selectedValue !== null && selectedValue !== '') {
                                nextSelect.val(selectedValue).trigger('change');
                            }
                        }
                    }
                });
            }
        });

        $(document).on('click', '.remove-icon', function() {
            var row = $(this).closest('tr');
            var rowIndex = row.index();
            document.getElementById('rooms').value = parseInt(document.getElementById('rooms').value) - 1;
            var clonedDiv = document.getElementById('cloneit' + (rowIndex));
            if (clonedDiv) {
                clonedDiv.remove();
            }

            row.remove();

            totalClonedCount--;
            let totalrooms = parseInt($('#totalrooms').val());
            $('#totalrooms').val(totalrooms - 1);
            $('#gridtaxstructure tr').each(function(index) {
                console.log('index', index);
                if (index >= rowIndex) {
                    var oldIndex = index + 1;
                    var newIndex = index;

                    var clonedDiv = document.getElementById('cloneit' + oldIndex);
                    if (clonedDiv) {
                        clonedDiv.id = 'cloneit' + newIndex;
                    }

                    $(this).find('select, input').each(function() {
                        var regex = new RegExp(oldIndex + "$");
                        this.id = this.id.replace(regex, newIndex);
                        this.name = this.name.replace(regex, newIndex);
                    });
                }
            });
        });

        let totalClonedCount = 1;

        function HandleGuestList(guestlist) {
            const guestlistCheckbox = document.getElementById(guestlist);
            var table = document.getElementById('gridtaxstructure');
            var rows = table.getElementsByTagName('tr');
            var rowCount = parseInt(rows.length - 1);

            var cloneit = document.getElementById('cloneit');

            if (guestlistCheckbox.checked && rowCount > 1) {
                var diff = rowCount - totalClonedCount;

                if (diff > 0) {
                    let lastClonedDiv = cloneit;
                    for (let i = totalClonedCount; i < rowCount; i++) {
                        var clonedDiv = cloneit.cloneNode(true);
                        clonedDiv.id = 'cloneit' + i;

                        clonedDiv.querySelectorAll('[id]').forEach((element) => {
                            element.id = element.id + i;
                        });
                        clonedDiv.querySelectorAll('[name]').forEach((element) => {
                            element.name = element.name + i;
                        });
                        clonedDiv.querySelectorAll('[data-target]').forEach((element) => {
                            var currentDataTarget = element.getAttribute('data-target');
                            element.setAttribute('data-target', currentDataTarget + i);
                        });
                        lastClonedDiv.insertAdjacentElement('afterend', clonedDiv);
                        const modalInsideClone = clonedDiv.querySelector('#formguestdt' + i);
                        totalClonedCount++;
                        lastClonedDiv = clonedDiv;
                    }
                }

            } else {
                // console.log('Checkbox is not checked or row count is not greater than 0.');
            }
        }

        function fetchData(url, targetElement) {
            var xhr = new XMLHttpRequest();
            xhr.open('GET', url, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4) {
                    if (xhr.status === 200) {
                        var response = JSON.parse(xhr.responseText);
                        targetElement.value = response.data;
                    } else {
                        console.error('Request failed with status: ' + xhr.status);
                    }
                }
            };
            xhr.send();
        }
    </script>

    <script>
        var xhr = new XMLHttpRequest();
        var csrfToken = '{{ csrf_token() }}';
        xhr.open('GET', '{{ route('checkeditarrival') }}', true);
        xhr.setRequestHeader('Content-Type', 'application/json');
        xhr.setRequestHeader('X-CSRF-TOKEN', csrfToken);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var response = xhr.responseText;
                var result = JSON.parse(response);

                if (result.arrdatetimeedit === 'N') {
                    document.getElementsByClassName('arrival-date').readOnly = true;
                    document.getElementsByClassName('arrivaltime').readOnly = true;
                } else {
                    document.getElementsByClassName('arrival-date').readOnly = false;
                    document.getElementsByClassName('arrivaltime').readOnly = false;
                }

                if (result.roomrateeditable === 'N') {
                    var elements = document.getElementsByClassName('ratechk');
                    for (var i = 0; i < elements.length; i++) {
                        elements[i].readOnly = true;
                    }
                }
                if (result.roominctaxeditable === 'N') {
                    var elements = document.getElementsByClassName('taxchk');
                    for (var i = 0; i < elements.length; i++) {
                        elements[i].disabled = true;
                    }
                }

                if (result.rrinctaxdefault === 'Y') {
                    var elements = document.getElementsByClassName('taxchk');
                    for (var i = 0; i < elements.length; i++) {
                        elements[i].value = 'Y';
                    }
                } else if (result.rrinctaxdefault === 'N') {
                    var elements = document.getElementsByClassName('taxchk');
                    for (var i = 0; i < elements.length; i++) {
                        elements[i].value = 'N';
                    }
                } else {
                    var elements = document.getElementsByClassName('taxchk');
                    for (var i = 0; i < elements.length; i++) {
                        elements[i].value = '';
                    }
                }

            }
        };
        xhr.send();

        document.getElementById('company').addEventListener('change', function() {
            var companySelect = this;
            var selectedOption = companySelect.options[companySelect.selectedIndex];
            var gstcodep = document.getElementById('gstCodep');
            var gstCodeSpan = document.getElementById('gstCode');
            if (selectedOption.getAttribute('data-gst') !== '') {
                gstcodep.style.display = 'block';
                gstCodeSpan.textContent = selectedOption.getAttribute('data-gst');
            } else {
                gstcodep.style.display = 'none';
                gstCodeSpan.textContent = '';
            }
        });

        $(document).ready(function() {
            $('#arrivaldate1').on('change', function() {
                const checkinDateInput = $('#arrivaldate1');
                const checkoutDateInput = $('#checkoutdate1');
                const dayDifferenceInput = $('#stay_days1');

                const checkinDate = new Date(checkinDateInput.val());

                let checkoutDate = new Date(checkinDate);
                checkoutDate.setDate(checkinDate.getDate() + 1);

                checkoutDateInput.val(formatDate(checkoutDate));
                dayDifferenceInput.val(1);
            });

            $(document).on('input', '.staydays', function() {
                const rowId = $(this).attr('id');
                const rowNumber = rowId.replace('stay_days', '');

                const checkinDate = new Date($(`#arrivaldate${rowNumber}`).val());
                const stayDays = +$(`#stay_days${rowNumber}`).val();
                const checkoutDateInput = $(`#checkoutdate${rowNumber}`);

                if (!isNaN(stayDays)) {
                    checkinDate.setDate(checkinDate.getDate() + stayDays);
                    checkoutDateInput.val(checkinDate.toISOString().split('T')[0]);
                }
            });
        });

        function validateDates2() {
            const checkinDateInput = document.getElementsByName('arrivaldate1')[0];
            const checkoutDateInput = document.getElementsByName('checkoutdate1')[0];
            const dayDifferenceInput = document.getElementsByName('stay_days1')[0];

            const checkinDate = new Date(checkinDateInput.value);

            let checkoutDate = new Date(checkinDate);
            checkoutDate.setDate(checkinDate.getDate() + 1);

            checkoutDateInput.value = formatDate(checkoutDate);
            dayDifferenceInput.value = 1;
        }

        function DisplayCheckout2() {
            const checkinDateInput = document.getElementsByName('arrivaldate1')[0];
            const checkoutDateInput = document.getElementsByName('checkoutdate1')[0];
            const dayDifferenceInput = document.getElementsByName('stay_days1')[0];

            const checkinDate = new Date(checkinDateInput.value);
            const stayDays = parseInt(dayDifferenceInput.value) || 1;
            checkinDate.setDate(checkinDate.getDate() + stayDays);
            checkoutDateInput.value = formatDate(checkinDate);
        }

        $(document).on('change', `.checkoutdateclass`, function() {
            const rowId = $(this).attr('id');
            const rowNumber = rowId.replace('checkoutdate', '');

            const checkinDateInput = $(`#arrivaldate${rowNumber}`);
            const checkoutDateInput = $(`#checkoutdate${rowNumber}`);
            const dayDifferenceInput = $(`#stay_days${rowNumber}`);
            const dateError = $(`#date-error${rowNumber}`);

            const checkinDate = new Date(checkinDateInput.val());
            const checkoutDate = new Date(checkoutDateInput.val());

            if (checkinDate && checkoutDate) {
                if (checkoutDate > checkinDate) {
                    const timeDifference = Math.abs(checkoutDate - checkinDate);
                    const dayDifference = Math.floor(timeDifference / (1000 * 60 * 60 * 24));
                    dayDifferenceInput.val(dayDifference);
                    dateError.text("");
                } else {
                    // paste same value in arriaval date
                    checkinDateInput.val(checkoutDateInput.val());
                    // dateError.text("Checkout date must be after arrival date");
                    dayDifferenceInput.val(1);
                }
            }
        });
    </script>

    @include('property.frontoffice.include.reservationct')
@endsection
