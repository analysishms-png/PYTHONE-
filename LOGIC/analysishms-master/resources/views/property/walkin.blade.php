{{--
#𝒲𝒜𝑅𝒩𝐼𝒩𝒢⚠️ 𝒟𝒪𝒩'𝒯 𝒰𝒮𝐸 𝒞𝒪𝒟𝐸 𝐹𝒪𝑅𝑀𝒜𝒯𝒯𝐸𝑅 𝒪𝑅 𝒮𝐻𝐼𝐹𝒯+𝒜𝐿𝒯+𝒫 𝒪𝒩 𝒯𝐻𝐼𝒮 𝒫𝒜𝒢𝐸
𝒞𝒪𝒟𝐸 𝒪𝑅 𝒯𝐻𝐸 𝒫𝑅𝒪𝒟𝒰𝒞𝒯𝐼𝒪𝒩 𝒲𝐼𝐿𝐿 𝐵𝐸 𝐵𝑅𝒪𝒦𝐸𝒩
--}}

@extends('property.layouts.main')
@section('main-container')
    <link href="admin/plugins/clockpicker/dist/jquery-clockpicker.min.css" rel="stylesheet">

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body walkin">
                            {{-- action="{{ route('walkinsubmit') }}" --}}
                            <form class="walkin-form" id="walkinform" name="walkinform" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" value="walkin" name="pagename" id="pagename">
                                <input type="hidden" value="N" name="guestfetch" id="guestfetch">
                                <input type="hidden" name="guestfetchdocid" id="guestfetchdocid">
                                <input type="hidden" value="" name="planratesum" id="planratesum">
                                <input type="hidden" value="1" name="firstgrpsno" id="firstgrpsno">
                                <input type="hidden" name="page_source" value="{{ request()->query('page_source', '') }}" id="page_source">
                                <input type="hidden" value="{{ $enviro_formdata->rrinctaxdefault }}" name="rrinctaxdefault"
                                    id="rrinctaxdefault">
                                <input type="hidden" name="totalrooms" value="1" id="totalrooms">
                                <div class="row">
                                    <table class="table walkin-table table-responsive">
                                        <thead>
                                            <th>Check-In</th>
                                            <th></th>
                                            <th style="text-align: center !important;font-size: x-small;">Nights</th>
                                            <th>Checkout</th>
                                            <th></th>
                                            <th>Room</th>
                                            <th>Pick Up/Drop <i class="fa-solid fa-truck-pickup"></i></th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input type="date" name="checkindate" class="form-control low alibaba"
                                                        placeholder="2023-10-26" value="<?php echo date('Y-m-d'); ?>"
                                                        id="checkindate" onchange="validateDates()" required>
                                                </td>

                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="time" id="checkintime" name="checkintime"
                                                            class="form-control low" required>
                                                    </div>
                                                </td>
                                                <td>
                                                    <input type="number" onchange="DisplayCheckout()"
                                                        oninput="ValidateNum(this, '1', '100', '3')" name="stay_days"
                                                        id="stay_days" class="form-control stays" value="1" required>
                                                </td>
                                                <td>
                                                    <input type="date" value="{{ $checkoutdate }}" name="checkoutdate"
                                                        class="form-control low alibaba" placeholder="2023-10-26"
                                                        id="checkoutdate" onchange="validateDates()" required>
                                                    <span class="text-danger absolute-element" id="date-error"></span>
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="time" id="checkouttime" name="checkouttime"
                                                            class="form-control low" required>
                                                    </div>
                                                </td>
                                                <td><input id="rooms" style="text-align: end;" type="number"
                                                        oninput="ValidateNum(this, '1', '100', '3')" name="rooms"
                                                        class="form-control low fiveem" placeholder="1">
                                                </td>
                                                <td><input placeholder="Pickup/Drop" class="form-control" type="text"
                                                        name="pickupdrop" id="pickupdrop"></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <table class="table walkin-table table-responsive">
                                        <thead>
                                            <tr>
                                                <th>Company
                                                    @if ($canAddCompany)
                                                        <button type="button" class="btn btn-sm btn-success ml-1 py-0 px-1"
                                                            style="font-size:11px; line-height:1.4;"
                                                            data-toggle="modal" data-target="#quickAddCompanyModal"
                                                            title="Add New Company">
                                                            <i class="fa fa-plus"></i>
                                                        </button>
                                                    @endif
                                                </th>
                                                <th>Booking Source</th>
                                                <th>Business Source</th>
                                                <th style="display: none;" id="trvelth">Travel Agent
                                                    @if ($canAddTravelAgent)
                                                        <button type="button" class="btn btn-sm btn-success ml-1 py-0 px-1"
                                                            style="font-size:11px; line-height:1.4;"
                                                            data-toggle="modal" data-target="#quickAddTravelAgentModal"
                                                            title="Add New Travel Agent">
                                                            <i class="fa fa-plus"></i>
                                                        </button>
                                                    @endif
                                                </th>
                                                <th>Bill To</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <select id="company" name="company" class="form-control low">
                                                        <option value="">Select</option>
                                                        @foreach ($company as $list)
                                                            <option value="{{ $list->sub_code }}" data-gst="{{ $list->gstin }}">
                                                                {{ $list->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    <div class="position-absolute p-0">
                                                        <p id="gstCodep" class="text-purple"
                                                            style="font-size: small;display: none;">GST
                                                            No.: <span id="gstCode"></span></p>
                                                    </div>
                                                </td>
                                                <td>
                                                    <select id="booking_source" name="booking_source" class="form-control low" onchange="toggleTravelAgent(this.value);"
                                                        {{-- class="form-control low" onchange="toggleTravelAgent(this.value); var th=document.getElementById('trvelth'); var td=document.getElementById('trveltd'); if(this.value==='Travel Agent'){if(th)th.style.display='table-cell';if(td)td.style.display='table-cell';}else{if(th)th.style.display='none';if(td)td.style.display='none';}" --}}
                                                        required>
                                                        <option value="">Select</option>
                                                        @foreach (bookingsourceall() as $item)
                                                            <option value="{{ $item->name }}">{{ $item->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td>
                                                    <select id="bsource" name="bsource" class="form-control low" required>
                                                        <option value="">Select</option>
                                                        @foreach ($bsource as $list)
                                                            <option value="{{ $list->bcode }}">{{ $list->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td style="display:none;" id="trveltd">
                                                    <select id="travel_agent" name="travel_agent" class="form-control travellists low">
                                                        <option value="">Select</option>
                                                        @foreach ($travel_agent as $list)
                                                            <option data-comp_type="{{ $list->comp_type }}" value="{{ $list->sub_code }}" data-gst="{{ $list->gstin }}">
                                                                {{ $list->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    <div class="position-absolute p-0">
                                                        <p id="gstCodet" class="text-purple"
                                                            style="font-size: small;display: none;">GST
                                                            No.: <span id="gstCodet"></span></p>
                                                    </div>
                                                </td>
                                                <td>
                                                    <select id="bill_to" name="bill_to" class="form-control">
                                                        <option value="">Select</option>
                                                        <option value="Company">Company</option>
                                                        <option value="Guest">Guest</option>
                                                        <option value="Group Owner">Group Owner</option>
                                                        <option value="Room and Tax To Company">Room and Tax To Company, Extras To Guest</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <div class="col-md-12 mb-2">
                                        <label for="remarkmain" class="form-label">Remarks</label>
                                        <textarea
                                            class="form-control"
                                            name="remarkmain"
                                            id="remarkmain"
                                            rows="3"
                                            placeholder="Remarks"></textarea>
                                    </div>

                                    @if (fomparameter()->roominclusive == 'Y')
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#roomInclusionModal">
                                                    <i class="fa fa-plus"></i> Room Inclusion
                                                </button>
                                            </div>
                                        </div>

                                        <!-- Room Inclusion Modal -->
                                        <div class="modal fade" id="roomInclusionModal" tabindex="-1" role="dialog" aria-labelledby="roomInclusionModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="roomInclusionModalLabel">Room Inclusion</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
                                                                        <td><input type="text" class="form-control" value="{{ $item->name }}" name="{{ $item->rev_code }}main" id="{{ $item->rev_code }}main" readonly></td>
                                                                        <td><input type="text" class="form-control" name="{{ $item->rev_code }}amount" id="{{ $item->rev_code }}amount" placeholder="Enter Amt."></td>
                                                                        <td><select class="form-control" name="{{ $item->rev_code }}chargepost" id="{{ $item->rev_code }}chargepost">
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
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endif

                                    <div style="clear: both; width: 100%; display: block; margin-top: 20px; margin-bottom: 15px;">
                                        <div class="form-group form-check">
                                            <input type="checkbox" class="form-check-input" name="complimentry"
                                                id="complimentry">
                                            <label class="form-check-label" for="complimentry">Complimentry Room</label>
                                        </div>
                                    </div>

                                    <div class="multirow">
                                        <table class="table-hover walkin-multi table-responsive" id="gridtaxstructure">
                                            <thead>
                                                <th>Room Type</th>
                                                <th>Room</th>
                                                <th>Adult</th>
                                                <th>Child</th>
                                                <th>Plans</th>
                                                <th>Rate Rs.</th>
                                                <th>Tax Inc.</th>
                                                <th>Leader</th>
                                                <th id="thlast">Action</th>
                                            </thead>
                                            <tbody>
                                                <tr class="data-row">
                                                    <td>
                                                        <select id="cat_code1" name="cat_code1"
                                                            class="form-control sl catselect cat_code_class" required>
                                                            <option value="">Select</option>
                                                            @foreach ($roomcat as $list)
                                                                <option value="{{ $list->cat_code }}">{{ $list->name }}</option>
                                                            @endforeach
                                                        </select>
                                                        <input type="hidden" class="form-control" name="planedit1"
                                                            id="planedit1" readonly>
                                                    </td>
                                                    <td><select id="roommast1" name="roommast1"
                                                            class="form-control sl roomselect" required>
                                                            <option value="">Select</option>
                                                        </select></td>
                                                    <td><select id="adult1" name="adult1" class="form-control sl" required>
                                                            <option value="">Select</option>
                                                            <option value="1">1</option>
                                                            <option selected value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                        </select></td>
                                                    <td><select id="child1" name="child1" class="form-control sl" required>
                                                            <option value="0">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                        </select></td>
                                                    <td><select id="planmaster1" name="planmaster1"
                                                            class="form-control planmastclass sl" {{ isPlanRequired(channelparameter()->checkyn, fomparameter()->plancalc) ? 'required' : '' }}>
                                                            <option value="">Select</option>
                                                        </select></td>
                                                    <td><input type="text" name="rate1" id="rate1"
                                                            oninput="checkNumMax(this, 10); handleDecimalInput(event);"
                                                            class="form-control ratechk sp" required></td>
                                                    <td><select class="form-control taxchk sl" name="tax_inc1"
                                                            id="tax_inc1">
                                                            <option value="">Select</option>
                                                            <option value="Y" {{ $enviro_formdata->rrinctaxdefault == 'Y' ? 'selected' : '' }}>Yes</option>
                                                            <option value="N" {{ $enviro_formdata->rrinctaxdefault == 'N' ? 'selected' : '' }}>No</option>
                                                    </td>
                                                    <td>
                                                        <input type="checkbox" class="leadercl" name="leader1" id="leader1">
                                                    </td>
                                                    <td>
                                                        <img src="admin/icons/flaticon/copy.gif" alt="copy icon"
                                                            class="copy-icon">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="button-container custom-range">
                                        <button type="button" name="add_room" id="add_room"
                                            class="btn radiusbtn mb-1 btn-outline-success">Add Room <i
                                                class="fa-solid fa-building"></i></button>
                                    </div>
                                </div>

                                {{-- <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group mt-4 form-check">
                                            <input type="checkbox" onchange="HandleGuestList('guestlist')"
                                                class="form-check-input" name="guestlist" id="guestlist">
                                            <label class="form-check-label" for="guestlist">Guest List</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">


                                    </div>
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
                                                <input type="text" name="name" placeholder="Full Name" maxlength="100"
                                                    id="name" class="form-control" required>
                                                <i class="fa-regular fa-credit-card wcard" data-toggle="modal"
                                                    data-target="#formswipecard" style="margin-left: 5px;"></i>
                                                <i id="guestinfobutton" data-toggle="modal" data-target="#formguestdt"
                                                    class="fas fa-user-plus userplus"></i>
                                                {{-- <i class="fas fa-id-card" id="aadharscanbtn"></i> --}}
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
                                                            <div class="row">
                                                                <div class="col">
                                                                    <label for="findname"
                                                                        class="col-form-label">Name</label>
                                                                    <input
                                                                        oninput="this.value = this.value.replace(/[^A-Za-z\s]|^(.{50}).*$/g, '$1')"
                                                                        type="text" class="form-control" name="findname"
                                                                        id="findname">
                                                                </div>
                                                                <div class="col">
                                                                    <label for="findnum"
                                                                        class="col-form-label">Mobile</label>
                                                                    <input
                                                                        oninput="this.value = this.value.replace(/[^0-9]|^(.{11}).*$/g, '$1')"
                                                                        type="text" class="form-control" name="findnum"
                                                                        id="findnum">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div style="padding: .5rem;" class="modal-footer">
                                                            <button type="button" class="btn btn-sm btn-secondary"
                                                                data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            @include('property.frontoffice.operations.include.guestaddform')

                                        </div>
                                        <div class="col-md-3">
                                            <label class="col-form-label" for="mobile">Mobile</label>
                                            <input type="tel" name="mobile" placeholder="Mobile" minlength="10"
                                                maxlength="10" id="mobile" class="form-control" {{ $enviro_formdata->grcmandatory == 'Y' ? 'required' : '' }}>
                                            <div style="display: none;" id="error-phone" class="error-phone text-danger">
                                                Invalid Number</div>
                                        </div>
                                        <div class="col-md-3">
                                            <label class="col-form-label" for="email">Email</label>
                                            <input type="email" name="email" placeholder="Email" maxlength="100" id="email"
                                                class="form-control">
                                        </div>
                                    </div>

                                    <table class="table mt-2 walkin-table">
                                        <thead>
                                            <tr>
                                                <th><label for="city">City:
                                                        @if ($canAddCity)
                                                            <button type="button" class="btn btn-sm btn-success ml-1 py-0 px-1"
                                                                style="font-size:11px; line-height:1.4;"
                                                                data-toggle="modal" data-target="#quickAddCityModal"
                                                                title="Add New City">
                                                                <i class="fa fa-plus"></i>
                                                            </button>
                                                        @endif
                                                    </label></th>
                                                <th><label for="state">State:</label></th>
                                                <th><label for="country">Country:</label></th>
                                                <th><label for="nationality">Nationality:</label></th>
                                                <th><label for="zipcode">Zip Code:</label></th>
                                                <th><label for="address1">Address 1:</label></th>
                                                <th><label for="address2">Address 2:</label></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <select class="form-control" name="cityname" id="cityname" required>
                                                        <option value="">Select City</option>
                                                        @foreach ($citydata as $list)
                                                            <option value="{{ $list->city_code }}">
                                                                {{ $list->cityname }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control" name="state" id="state">
                                                        <option value="">Select State</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control" name="country" id="country">
                                                        <option value="">Select Country</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control" name="nationality" id="nationality">
                                                        <option value="">Select Nationality</option>
                                                    </select>
                                                </td>

                                                <td><input type="text" class="form-control fiveem" name="zipcode"
                                                        id="zipcode">
                                                </td>
                                                <td>
                                                    <input type="text" placeholder="Enter Address 1" class="form-control"
                                                        name="address1" id="address1">
                                                </td>
                                                <td>
                                                    <input type="text" placeholder="Enter Address 2" class="form-control"
                                                        name="address2" id="address2">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>

                                <div class="astrogeeksagar">
                                    <h4 style="width: 160px;">Other Information</h4>
                                </div>

                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" name="whatsappcheckout" id="whatsappcheckout">
                                    <label class="form-check-label" for="whatsappcheckout">Send WhatsApp at
                                        Checkout.</label>
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" name="nochargepost" id="nochargepost">
                                    <label class="form-check-label" for="nochargepost">No Charge Post</label>
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" name="suppressrate" id="suppressrate">
                                    <label class="form-check-label" for="suppressrate">Suppress Rate on
                                        Registration
                                        Card.</label>
                                </div>

                                <div class="col-7 mt-4 mb-4 ml-auto">
                                    <button type="button" class="btn btn-danger" onclick="location.reload()">Cancel <i
                                            class="fa-solid fa-xmark"></i></button>
                                    <button type="submit" name="walkinsubmit" id="walkinsubmit"
                                        class="btn btn-primary">Check In <i class="fa-solid fa-file-export"></i></button>
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
        let isResizing = false;

        function makeDraggable(elementId) {
            const element = document.getElementById(elementId);
            let offsetX = 0,
                offsetY = 0,
                initialX = 0,
                initialY = 0;

            element.addEventListener('mousedown', startDrag);

            function startDrag(e) {
                if (isResizing) return;
                e.preventDefault();
                initialX = e.clientX;
                initialY = e.clientY;
                document.addEventListener('mousemove', dragElement);
                document.addEventListener('mouseup', stopDrag);
            }

            function dragElement(e) {
                e.preventDefault();
                offsetX = initialX - e.clientX;
                offsetY = initialY - e.clientY;
                initialX = e.clientX;
                initialY = e.clientY;
                element.style.top = (element.offsetTop - offsetY) + "px";
                element.style.left = (element.offsetLeft - offsetX) + "px";
            }

            function stopDrag() {
                document.removeEventListener('mousemove', dragElement);
                document.removeEventListener('mouseup', stopDrag);
            }
        }

        // Function to enable resizing
        function makeResizable(elementId, handleId) {
            const element = document.getElementById(elementId);
            const handle = document.getElementById(handleId);
            let startX = 0,
                startY = 0,
                startWidth = 0,
                startHeight = 0;

            handle.addEventListener('mousedown', startResize);

            function startResize(e) {
                e.preventDefault();
                isResizing = true; // Set the flag to true
                startX = e.clientX;
                startY = e.clientY;
                startWidth = parseInt(document.defaultView.getComputedStyle(element).width, 10);
                startHeight = parseInt(document.defaultView.getComputedStyle(element).height, 10);
                document.addEventListener('mousemove', doResize);
                document.addEventListener('mouseup', stopResize);
            }

            function doResize(e) {
                e.preventDefault();
                element.style.width = startWidth + e.clientX - startX + 'px';
                element.style.height = startHeight + e.clientY - startY + 'px';
            }

            function stopResize() {
                isResizing = false; // Reset the flag
                document.removeEventListener('mousemove', doResize);
                document.removeEventListener('mouseup', stopResize);
            }
        }

        // Function to get all currently selected rooms (global scope)
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

        // Function to filter out already selected rooms (global scope)
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

            const staydays = Math.max(
                1,
                Math.round((new Date(checkoutdate) - new Date(checkindate)) / 86400000)
            );

            return {
                checkoutdate,
                staydays
            };
        }

        // Debounce function to prevent rapid API calls
        function debounce(func, wait) {
            let timeout;
            return function executedFunction(...args) {
                const later = () => {
                    clearTimeout(timeout);
                    func(...args);
                };
                clearTimeout(timeout);
                timeout = setTimeout(later, wait);
            };
        }

        // Function to copy plan table structure
        function copyPlanTable(sourceRowIndex, targetRowIndex) {
            var sourcePlanTable = $(`#table-planmast${sourceRowIndex}`);
            if (sourcePlanTable.length > 0) {
                // Remove existing plan table for target row if it exists
                $(`#table-planmast${targetRowIndex}`).closest('.hidedisp').remove();

                // Clone the source plan table structure
                var clonedPlanDiv = sourcePlanTable.closest('.hidedisp').clone();

                // Update all IDs, names, and for attributes to match target row
                clonedPlanDiv.find('*').each(function() {
                    var element = $(this);

                    // Update id attribute
                    if (element.attr('id')) {
                        var newId = element.attr('id').replace(new RegExp(sourceRowIndex + '$'), targetRowIndex);
                        element.attr('id', newId);
                    }

                    // Update name attribute
                    if (element.attr('name')) {
                        var newName = element.attr('name').replace(new RegExp(sourceRowIndex + '$'), targetRowIndex);
                        element.attr('name', newName);
                    }

                    // Update for attribute
                    if (element.attr('for')) {
                        var newFor = element.attr('for').replace(new RegExp(sourceRowIndex + '$'), targetRowIndex);
                        element.attr('for', newFor);
                    }
                });

                // Find the target row and insert the cloned plan table after it
                var targetRow = $('#gridtaxstructure tbody tr').eq(targetRowIndex - 1);
                targetRow.after(clonedPlanDiv);
            }
        }

        function refreshAllRoomDropdowns(excludeIndex) {
            $('[id^="roommast"]').each(function() {
                let currentId = $(this).attr('id');
                let currentIndex = currentId.match(/\d+$/)[0];

                if ((excludeIndex == -1 || currentIndex != excludeIndex) && $(`#cat_code${currentIndex}`).val()) {
                    let checkindate = $('#checkindate').val();
                    let checkoutdate = $('#checkoutdate').val();
                    let cid = $(`#cat_code${currentIndex}`).val();

                    let currentSelection = $(this).val();

                    $.post('/getroomswalkin', {
                        cid,
                        checkindate,
                        checkoutdate,
                        _token: '{{ csrf_token() }}'
                    }, function(result) {
                        let tempDiv = $('<div>').html(result);
                        let roomOptions = [];
                        tempDiv.find('option').each(function() {
                            if ($(this).val() !== '') {
                                roomOptions.push({
                                    rcode: $(this).val(),
                                    room_cat: $(this).data('catid') || cid
                                });
                            }
                        });

                        let availableRooms = filterAvailableRooms(roomOptions, currentIndex);

                        let rdata = '<option value="">Select</option>';
                        availableRooms.forEach((tdata) => {
                            rdata += `<option data-catid="${tdata.room_cat}" value="${tdata.rcode}">${tdata.rcode}</option>`;
                        });

                        $(`#roommast${currentIndex}`).html(rdata);

                        if (currentSelection && availableRooms.some(room => room.rcode === currentSelection)) {
                            $(`#roommast${currentIndex}`).val(currentSelection);
                        }
                    });
                }
            });
        }

        $(document).ready(function() {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);

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

                    let sum = 0.00;
                    $('.rowdamount').each(function() {
                        sum += parseFloat($(this).val()) || 0;
                    });

                    let roomratenet = sum + newnetroomrate;
                    $(`#totalnetamtplan${number}`).val(roomratenet.toFixed(2));
                }, 500);
            });

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            localStorage.setItem('comprateyn', 'N');
            let compdiscdata = [];
            $(document).on('change', '#company', function() {
                let compcode = $(this).val();

                Swal.fire({
                    title: 'Walkin',
                    text: 'Apply Rates As Per Company',
                    icon: 'info',
                    showCancelButton: true,
                    cancelButtonText: 'No',
                    confirmButtonText: 'Yes'
                }).then((success) => {
                    if (success.isConfirmed) {
                        $.ajax({
                            url: "{{ url('walkincompdetail') }}",
                            method: "POST",
                            data: {
                                compcode: compcode
                            },
                            success: function(response) {
                                localStorage.setItem('comprateyn', 'Y');
                                let compdata = response.compdata;
                                compdiscdata = response.compdiscdata;
                                $('#name').val(compdata.conperson ?? '');
                                $('#mobile').val(compdata.mobile ?? '');
                                $('#email').val(compdata.email ?? '');
                                $('#cityname').val(compdata.citycode ?? '').change();
                                $('#address1').val(compdata.address ?? '');
                                $('#booking_source').val('Direct');
                            },
                            error: function(errorres) {

                            }
                        });
                    }
                });
            });

            function triggerRateCalculation(index) {
                if ($('#complimentry').is(':checked')) {
                    return;
                }
                const cid = $(`#roommast${index}`).val();
                const adult = +($(`#adult${index}`).val() || 0);
                const child = +($(`#child${index}`).val() || 0);
                const room_category = $(`#cat_code${index}`).val();
                const sumchildadult = adult + child;
                if (localStorage.getItem('comprateyn') == 'N' || localStorage.getItem('comprateyn') == '') {

                    if (!$(`#planedit${index}`).val() || $(`#planedit${index}`).val() === 'N') {
                        $.post('/getrate3', {
                            data: JSON.stringify([room_category, cid, sumchildadult]),
                            _token: '{{ csrf_token() }}'
                        }, function(result) {
                            let cleanResult = result.toString().trim();
                            if (cleanResult && !isNaN(parseFloat(cleanResult))) {
                                $(`#rate${index}`).val(parseFloat(cleanResult).toFixed(2));
                            } else {
                                console.warn('Invalid rate response:', result);
                                $(`#rate${index}`).val('0.00');
                            }
                        }).fail(function(xhr, status, error) {
                            console.error('Rate calculation failed:', error);
                            $(`#rate${index}`).val('0.00');
                        });
                    }

                }
            }

            const debouncedTriggerRateCalculation = debounce(triggerRateCalculation, 300);

            $(document).on('change', '.roomselect', function() {
                const index = this.id.match(/\d+$/)[0];
                const roomNo = this.value;
                const catid = $(this).find(':selected').data('catid');

                if (!$(`#cat_code${index}`).val()) {
                    $(`#roommast${index}`).data('preselect', roomNo);
                    $(`#cat_code${index}`).val(catid).trigger('change');
                } else {
                    $(`#roommast${index}`).val(roomNo);
                    triggerRateCalculation(index);
                }

                // Refresh all other room dropdowns to exclude the newly selected room
                if (!$(`#roommast${index}`).data('initializing')) {
                    refreshAllRoomDropdowns(index);
                }
            });

            $(document).on('change', '.cat_code_class', function() {
                const index = this.id.match(/\d+$/)[0];
                const cid = this.value;
                const checkindate = $('#checkindate').val();
                const checkoutdate = $('#checkoutdate').val();
                let adultcount = $(`#adult${index}`).val();

                $(`#roommast${index}`).empty().append('<option value="">Loading…</option>');
                $(`#planmaster${index}`).empty().append('<option value="">Loading…</option>');

                if (localStorage.getItem('comprateyn') == 'Y' && !$('#complimentry').is(':checked')) {
                    let matchedRow = compdiscdata.find(cdata => cdata.roomcatcode == cid && cdata.adult == adultcount);

                    if (matchedRow) {
                        if (matchedRow.plan != '') {
                            $(`#rate${index}`).val(matchedRow.planamount);
                        } else {
                            $(`#rate${index}`).val(matchedRow.fixrate);
                        }
                    } else {
                        $(`#rate${index}`).val('0.00');
                    }
                }

                $.post('/getroomswalkin', {
                    cid,
                    checkindate,
                    checkoutdate,
                    _token: '{{ csrf_token() }}'
                }, function(result) {
                    let tempDiv = $('<div>').html(result);
                    let roomOptions = [];
                    tempDiv.find('option').each(function() {
                        if ($(this).val() !== '') {
                            roomOptions.push({
                                rcode: $(this).val(),
                                room_cat: $(this).data('catid') || cid
                            });
                        }
                    });

                    let availableRooms = filterAvailableRooms(roomOptions, index);

                    let rdata = '<option value="">Select</option>';
                    availableRooms.forEach((tdata) => {
                        rdata += `<option data-catid="${tdata.room_cat}" value="${tdata.rcode}">${tdata.rcode}</option>`;
                    });

                    $(`#roommast${index}`).html(rdata);

                    const want = $(`#roommast${index}`).data('preselect');
                    if (want) {
                        if (availableRooms.some(room => room.rcode === want)) {
                            $(`#roommast${index}`).val(want);
                            $(`#roommast${index}`).removeData('preselect');
                            triggerRateCalculation(index);
                        } else {
                            $(`#roommast${index}`).removeData('preselect');
                        }
                    }
                });

                $.post('/getplans', {
                    cid,
                    _token: '{{ csrf_token() }}'
                }, function(result) {
                    $(`#planmaster${index}`).html(result);

                    // Handle preselected plan value
                    const preselectedPlan = $(`#planmaster${index}`).data('preselect');
                    if (preselectedPlan) {
                        $(`#planmaster${index}`).val(preselectedPlan);
                        $(`#planmaster${index}`).removeData('preselect');

                        // Trigger plan change to generate plan table if needed
                        setTimeout(function() {
                            $(`#planmaster${index}`).trigger('change');
                        }, 100);
                    }

                    // Handle plan table copying
                    const copyPlanData = $(`#planmaster${index}`).data('copyPlanTable');
                    if (copyPlanData) {
                        $(`#planmaster${index}`).removeData('copyPlanTable');

                        setTimeout(function() {
                            copyPlanTable(copyPlanData.sourceIndex, copyPlanData.targetIndex);
                        }, 200);
                    }
                });
            });

            $(document).on('change', '[id^="child"], [id^="adult"], [id^="roommast"]', function() {
                const index = this.id.match(/\d+$/)[0];
                debouncedTriggerRateCalculation(index);
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
                    let sum = 0.00;
                    $('.rowdamount').each(function() {
                        sum += parseFloat($(this).val()) || 0;
                    });

                    let roomratenet = sum + newnetroomrate;
                    $(`#totalnetamtplan${number}`).val(roomratenet.toFixed(2));
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
                let newtx = `<select class="form-control taxchk sl" name="tax_inc${num}" id="tax_inc${num}">
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
                        let taxparent = $(`#tax_inc${rowindex}`).parent();
                        let taxinc = $(this).find(':selected').data('taxinc');
                        console.log(taxinc)
                        $(`#tax_inc${rowindex}`).remove();
                        let newtx = `<select class="form-control taxchk sl" name="tax_inc${rowindex}" id="tax_inc${rowindex}">
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
                                    let wholedata = `<div class="hidedisp">
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
                                })
                                .catch(error => {
                                    console.log(error);
                                })
                        }
                    });

                }
            }
            outenviroxhr.send();
            $('#walkinform').on('submit', function(event) {
                event.preventDefault();
                let enviroxhr = new XMLHttpRequest();
                enviroxhr.open('GET', '/enviroform', true);
                enviroxhr.onreadystatechange = function() {
                    if (enviroxhr.readyState === 4 && enviroxhr.status === 200) {
                        let envirodata = JSON.parse(enviroxhr.responseText);
                        let grcmandatory = envirodata.grcmandatory;
                        let idType = $('#idType').val();
                        let idNumber = $('#idNumber').val();

                        if (grcmandatory == 'Y' && idType == '' && idNumber == '') {
                            $('#guestinfobutton').click();
                            pushNotify('error', 'Walkin Form', 'Please Fill Identity Details', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            setTimeout(() => {
                                $('#idType').focus();
                                $('#idType').css({
                                    'border-color': 'red',
                                    'border-width': '2px'
                                });
                                $('#idNumber').css('border-color', '');
                            }, 1000);
                        } else if (grcmandatory == 'Y' && idType == '') {
                            $('#guestinfobutton').click();
                            pushNotify('error', 'Walkin Form', 'Please Select ID Type', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            setTimeout(() => {
                                $('#idType').focus();
                                $('#idType, #idNumber').css({
                                    'border-color': 'red',
                                    'border-width': '2px'
                                });
                            }, 1000);
                        } else if (grcmandatory == 'Y' && idNumber == '') {
                            $('#guestinfobutton').click();
                            pushNotify('error', 'Walkin Form', 'Please Enter ID Number', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            setTimeout(() => {
                                $('#idNumber').focus();
                                $('#idNumber').css({
                                    'border-color': 'red',
                                    'border-width': '2px'
                                });
                                $('#idType').css('border-color', '');
                            }, 1000);
                        } else if ("{{ fomparameter()->allowbelow18 == 0 }}") {
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
                            formsubmit('#walkinform', '#walkinsubmit', 'Walkin', "{{ fomparameter()->pageopenwalkin }}", 'walkinsubmit');
                        } else if (grcmandatory == 'Y' && idType != '' && idNumber != '') {
                            formsubmit('#walkinform', '#walkinsubmit', 'Walkin', "{{ fomparameter()->pageopenwalkin }}", 'walkinsubmit');
                        } else if (grcmandatory == 'N') {
                            formsubmit('#walkinform', '#walkinsubmit', 'Walkin', "{{ fomparameter()->pageopenwalkin }}", 'walkinsubmit');
                        }
                    }
                };
                enviroxhr.send();
            });

            const guestHistoryAutocomplete = {
                url: '/guesthistoryautocomplete',
                method: 'POST',
                minLength: 2,
                debounce: 600,
                searchParam: 'sendfor',
                displayField: 'mobile_no',
                valueField: 'docid',
                limit: 10,

                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') || ''
                },

                renderItem: function(item) {
                    return $('<div>')
                        .addClass('guest-autocomplete-item')
                        .text([
                            item.name || '-',
                            item.mobile_no || '-',
                            item.roomcatname || '-',
                            item.roomno ? 'Room ' + item.roomno : '-',
                            item.chkindate ? dmy(item.chkindate) : '-',
                            item.planname || '-'
                        ].join(' — '));
                }
            };

            initAjaxAutocomplete({
                ...guestHistoryAutocomplete,
                selector: '#findnum',

                onSelect: function(item) {
                    $('#findnum').val(item.mobile_no || '');
                    $('#findname').val(item.name || '');
                    fetchGuestByDocid(item.docid);
                }
            });

            initAjaxAutocomplete({
                ...guestHistoryAutocomplete,
                selector: '#findname',
                displayField: 'name',

                onSelect: function(item) {
                    $('#findname').val(item.name || '');
                    $('#findnum').val(item.mobile_no || '');
                    fetchGuestByDocid(item.docid);
                }
            });

            function fetchGuestByDocid(docid) {
                if (!docid) {
                    return;
                }

                $.ajax({
                    url: '/guesthistory',
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') || ''
                    },
                    data: {
                        docid: docid
                    },
                    success: function(results) {
                        if (!Array.isArray(results) || !results.length) {
                            pushNotify(
                                'error',
                                'Guest History',
                                'No guest history found.',
                                'fade', 300, '', '', true, true, true,
                                3000, 20, 20, 'outline', 'right top'
                            );
                            return;
                        }

                        historydata = results;

                        const selectedDocid = String(docid);
                        const m = results.find(
                            item => String(item.docid) === selectedDocid
                        );

                        if (!m) {
                            return;
                        }

                        $('#guestfetch').val('Y');
                        $('#guestfetchdocid').val(docid);

                        fillGuestDetails(m, results);
                    },
                    error: function(xhr) {
                        console.error('Guest history fetch failed:', xhr.responseText);

                        pushNotify(
                            'error',
                            'Guest History',
                            'Unable to fetch guest details.',
                            'fade', 300, '', '', true, true, true,
                            3000, 20, 20, 'outline', 'right top'
                        );
                    }
                });
            }

            window.isPlanRequired = @json(isPlanRequired(channelparameter()->checkyn, fomparameter()->plancalc));

        });

        function fillGuestDetails(m, results) {
            const docid = m.docid;
            const tbodyfill = $('#gridtaxstructure tbody');

            tbodyfill.empty();

            let rdata = '';

            results.forEach((rows, index) => {
                const sno = rows.sno1 || (index + 1);
                const roomcat = rows.roomcat ?? '';
                const roomno = rows.roomno ?? '';
                const adult = rows.adult ?? 2;
                const children = rows.children ?? 0;
                const plancode = rows.plancode ?? '';
                const rackrate = rows.rackrate ?? '';
                const rrtaxinc = rows.rrtaxinc ?? '';

                rdata += `<tr class="data-row">`;

                rdata += `<td>
            <select id="cat_code${sno}" name="cat_code${sno}" class="form-control sl catselect cat_code_class" required>
                <option value="">Select</option>
                @foreach ($roomcat as $list)
                    <option value="{{ $list->cat_code }}" ${String(roomcat) === String(@json($list->cat_code)) ? 'selected' : ''}>{{ $list->name }}</option>
                @endforeach
            </select>
            <input type="hidden" class="form-control" name="planedit${sno}" id="planedit${sno}" readonly>
        </td>`;

                rdata += `<td>
            <select id="roommast${sno}" name="roommast${sno}" class="form-control sl roomselect room_mast" required>
                <option value="">Select</option>
                ${roomno !== '' ? `<option value="${roomno}" selected>${roomno}</option>` : ''}
            </select>
        </td>`;

                rdata += `<td>
            <select id="adult${sno}" name="adult${sno}" class="form-control sl" required>
                <option value="">Select</option>
                ${[1, 2, 3, 4, 5].map(value =>
                    `<option value="${value}" ${Number(adult) === value ? 'selected' : ''}>${value}</option>`
                ).join('')}
            </select>
        </td>`;

                rdata += `<td>
            <select id="child${sno}" name="child${sno}" class="form-control sl" required>
                ${[0, 1, 2, 3, 4, 5].map(value =>
                    `<option value="${value}" ${Number(children) === value ? 'selected' : ''}>${value}</option>`
                ).join('')}
            </select>
        </td>`;

                rdata += `<td>
            <select ${window.isPlanRequired ? 'required' : ''} id="planmaster${sno}" name="planmaster${sno}" class="form-control planmastclass sl">
                <option value="">Select</option>
                ${(rows.plans || []).map(plan =>
                    `<option value="${plan.code}" ${String(plan.code) === String(plancode) ? 'selected' : ''}>${plan.name}</option>`
                ).join('')}
            </select>
        </td>`;

                rdata += `<td>
            <input type="text" name="rate${sno}" id="rate${sno}"
                oninput="checkNumMax(this, 10); handleDecimalInput(event);"
                class="form-control ratechk sp" value="${rackrate}" required>
        </td>`;

                rdata += `<td>
            <select class="form-control taxchk sl" name="tax_inc${sno}" id="tax_inc${sno}">
                <option value="">Select</option>
                <option value="Y" ${rrtaxinc === 'Y' ? 'selected' : ''}>Yes</option>
                <option value="N" ${rrtaxinc === 'N' ? 'selected' : ''}>No</option>
            </select>
        </td>`;

                rdata += `<td>
            <input type="checkbox" class="leadercl" name="leader${sno}" id="leader${sno}">
        </td>`;

                rdata += `<td>
            ${index > 0 ? '<img src="admin/icons/flaticon/remove.gif" alt="remove icon" class="remove-icon">' : ''}
            <img src="admin/icons/flaticon/copy.gif" alt="copy icon" class="copy-icon">
        </td>`;

                rdata += `</tr>`;
            });

            tbodyfill.html(rdata);

            $('#formswipecard').modal('hide');

            $('#rooms').val(m.roomcount);
            $('#company').val(m.company);
            $('#booking_source').val(m.booking_source);
            $('#bsource').val(m.busssource);
            $('#greetings').val(m.con_prefix);
            $('#greetingsguest').val(m.con_prefix);
            $('#name').val(m.name);
            $('#guestname').val(m.name);
            $('#mobile').val(m.mobile_no);
            $('#guestmobile').val(m.mobile_no);
            $('#email').val(m.email_id);
            $('#guestemail').val(m.email_id);
            $('#genderguest').val(m.gender);
            $('#cityname').val(m.city);
            $('#cityguest').val(m.city);

            const state = `<option value="${m.state_code ?? ''}">${m.state_name ?? ''}</option>`;
            $('#state, #stateguest').html(state);

            const country = `<option value="${m.country_code ?? ''}">${m.country_name ?? ''}</option>`;
            $('#country, #countryguest').html(country);

            const nationality = `<option value="${m.nationality ?? ''}">${m.nationality ?? ''}</option>`;
            $('#nationality, #nationalityother').html(nationality);

            $('#zipcode, #zipguest').val(m.zip_code);
            $('#arrfrom').val(m.arrfrom);
            $('#destination').val(m.destination);
            $('#idType').val(m.id_proof);
            $('#idNumber').val(m.idproof_no);

            const isPassport = m.id_proof === 'Passport';
            $('#issuefielda, #issuefieldb, #issuefieldc').toggle(isPassport);

            const issuingcountry = `<option value="${m.issuingcountrycode ?? ''}">${m.issuingcountryname ?? ''}</option>`;
            $('#issuingcity').val(m.issuingcitycode);
            $('#issuingcountry').html(issuingcountry);
            $('#expiryDate').val(m.expirydate);

            $('#billingfield').toggle(m.paymentMethod === 'Bill To Company');
            $('#paymentMethod').val(m.paymentMethod);
            $('#billingAccount').val(m.billingAccount);
            $('#birthDate').val(m.dob);
            $('#purpofvisit').val(m.purvisit);
            $('#vipStatus').val(m.vipStatus);
            $('#weddingAnniversary').val(m.anniversary);
            $('#marital_status').val(m.marital_status);
            $('#rodisc').val(m.guestrodisc);
            $('#rsdisc').val(m.guestrsdisc);

            $('#vehiclediv').toggle(m.travelmode === 'By Car');
            $('#travelmode').val(m.travelmode);
            $('#vehiclenum').val(m.vehiclenum);

            if (m.pic_path) {
                $('#profileimagepreview').attr('src', `{{ asset('storage/walkin/profileimage') }}/${m.pic_path}`);
                $('#existing_profileimage').val(m.pic_path);
            }

            if (m.idpic_path) {
                $('#identityimagepreview').attr('src', `{{ asset('storage/walkin/identityimage') }}/${m.idpic_path}`);
                $('#existing_identityimage').val(m.idpic_path);
            }

            $('#guestfetch').val('Y');
            $('#guestfetchdocid').val(docid);

            $('.cat_code_class').trigger('change');
        }

        // Delegate event handling to a static parent element
        $(document).on('change', '[id^="cityname"]', function() {
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
            $(document).on('change', `#child1, #adult1, #planmaster1`, function() {
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
                        if (result && !isNaN(parseFloat(result))) {
                            rate.val(parseFloat(result).toFixed(2));
                        } else {
                            console.warn('Invalid rate response for rate1:', result);
                            rate.val('0.00');
                        }
                    }
                };
                xhr.send(`data=${JSON.stringify(data)}&_token={{ csrf_token() }}`);
            });



            $(document).on('change', '.leadercl', function() {
                let curcheck = $(this);
                if (curcheck.is(':checked')) {
                    $('.leadercl').prop('checked', false);
                    $(this).prop('checked', true);
                } else {
                    console.log('not checked');
                }
                let currow = curcheck.closest('tr').siblings().length + 1;
                if (currow == 1) {
                    $('.leadercl').prop('checked', false);
                }
            });

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            window.selectedrooms = @json($selectedrooms);
            let selectedrooms = window.selectedrooms;

            if (selectedrooms && selectedrooms.length > 0) {
                if (selectedrooms.length > 1) {
                    $('#leader1').prop('checked', true);
                }
                for (let i = 1; i < selectedrooms.length; i++) {
                    setTimeout(function() {
                        $("#add_room").trigger("click");
                    }, 100);
                }
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

            let checkin = $('#checkindate').val();
            let checkout = $('#checkoutdate').val();

            fetchEmptyRooms(checkin, checkout, 1);

            $(document).on('change', '#checkindate', function() {
                // Refresh all room dropdowns when check-in date changes
                $('[id^="roommast"]').each(function() {
                    let currentId = $(this).attr('id');
                    let currentIndex = currentId.match(/\d+$/)[0];
                    if ($(`#cat_code${currentIndex}`).val()) {
                        fetchEmptyRooms($(this).val(), $('#checkoutdate').val(), currentIndex);
                    }
                });
            });

            $(document).on('change', '#checkoutdate', function() {
                // Refresh all room dropdowns when check-out date changes
                $('[id^="roommast"]').each(function() {
                    let currentId = $(this).attr('id');
                    let currentIndex = currentId.match(/\d+$/)[0];
                    if ($(`#cat_code${currentIndex}`).val()) {
                        fetchEmptyRooms($('#checkindate').val(), $(this).val(), currentIndex);
                    }
                });
            });

            $("#add_room").click(function(event) {
                event.preventDefault();
                const table = document.getElementById("gridtaxstructure");
                const newRow = table.insertRow(table.rows.length);
                newRow.classList.add('data-row');

                let rrinctaxdefault = $('#rrinctaxdefault').val();

                var cell1 = newRow.insertCell(0);
                var cell2 = newRow.insertCell(1);
                var cell3 = newRow.insertCell(2);
                var cell4 = newRow.insertCell(3);
                var cell5 = newRow.insertCell(4);
                var cell6 = newRow.insertCell(5);
                var cell7 = newRow.insertCell(6);
                var cell8 = newRow.insertCell(7);
                var cell9 = newRow.insertCell(8);

                const rowNumber = table.rows.length - 1;

                document.getElementById('rooms').value = rowNumber;

                let totalrooms = parseInt($('#totalrooms').val());

                $('#totalrooms').val(totalrooms + 1);

                fetchEmptyRooms($('#checkindate').val(), $('#checkoutdate').val(), rowNumber);

                cell1.innerHTML = `
                                    <select id="cat_code${rowNumber}" name="cat_code${rowNumber}" class="form-control sl cat_code_class catselect" required>
                                        <option value="">Select</option>
                                        @foreach ($roomcat as $list)
                                            <option value="{{ $list->cat_code }}">{{ $list->name }}</option>
                                        @endforeach
                                    </select><input type="hidden" class="form-control" name="planedit${rowNumber}" id="planedit${rowNumber}" readonly>`;

                cell2.innerHTML = `
                                    <select id="roommast${rowNumber}" name="roommast${rowNumber}" class="form-control room_mast sl roomselect" required>
                                        <option value="">Select</option>
                                    </select>`;

                cell3.innerHTML = `
                                    <select id="adult${rowNumber}" name="adult${rowNumber}" class="form-control sl" required>
                                        <option value="">Select</option>
                                        <option value="1">1</option>
                                        <option selected value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>`;

                cell4.innerHTML = `<select id="child${rowNumber}" name="child${rowNumber}" class="form-control sl" required>
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                    </select>
                                    `;

                cell5.innerHTML = `<select id="planmaster${rowNumber}" name="planmaster${rowNumber}" class="form-control planmastclass sl">
                                        <option value="">Select</option>
                                    </select>
                                    `;

                cell6.innerHTML = `
                                    <input type="text" name="rate${rowNumber}" id="rate${rowNumber}"
                                    oninput="checkNumMax(this, 10); handleDecimalInput(event);"
                                    class="form-control ratechk sp" required>`;
                cell7.innerHTML = `<select class="form-control taxchk sl" name="tax_inc${rowNumber}" id="tax_inc${rowNumber}">
                                    <option value="">Select</option>
                                    <option value="Y" ${rrinctaxdefault == 'Y' ? 'selected' : ''}>Yes</option>
                                    <option value="N" ${rrinctaxdefault == 'N' ? 'selected' : ''}>No</option>
                                    </select>`;
                cell8.innerHTML = `<td><input type="checkbox" class="leadercl" name="leader${rowNumber}" id="leader${rowNumber}">
                                    </td>`;
                cell9.innerHTML = `<img src="admin/icons/flaticon/remove.gif" alt="remove icon" class="remove-icon">
                                        <img src="admin/icons/flaticon/copy.gif" alt="copy icon" class="copy-icon">`;

                if ($('#complimentry').is(':checked')) {
                    $(`#rate${rowNumber}`).val('0.00').prop('readonly', true);
                    $(`#tax_inc${rowNumber}`).val('N');
                    overlayLock(`#tax_inc${rowNumber}`);
                }

                $(document).on('change', `#child${rowNumber}, #adult${rowNumber}, #planmaster${rowNumber}`, function() {
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
                            var result = xhr.responseText.trim(); // Clean the response
                            var rate = $(`#rate${rowNumber}`);
                            if (result && !isNaN(parseFloat(result))) {
                                rate.val(parseFloat(result).toFixed(2));
                            }
                        }
                    };
                    xhr.send(`data=${JSON.stringify(data)}&_token={{ csrf_token() }}`);
                });

                // Remove the dynamic event binding for room changes to prevent multiple bindings
                // This will be handled by the global event handler below

            });

            var xhr = new XMLHttpRequest();
            var csrfToken = '{{ csrf_token() }}';

            xhr.open('GET', '{{ route('checkeditarrival') }}', true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.setRequestHeader('X-CSRF-TOKEN', csrfToken);

            xhr.onreadystatechange = function() {
                if (xhr.readyState !== 4 || xhr.status !== 200) {
                    return;
                }

                var result = JSON.parse(xhr.responseText);

                var checkinDateInput = document.getElementById('checkindate');
                var checkoutDateInput = document.getElementById('checkoutdate');
                var checkinTimeInput = document.getElementById('checkintime');
                var checkoutTimeInput = document.getElementById('checkouttime');

                checkinDateInput.value = result.ncur;

                var now = new Date();
                checkinTimeInput.value =
                    String(now.getHours()).padStart(2, '0') + ':' +
                    String(now.getMinutes()).padStart(2, '0');

                checkoutTimeInput.value = result.checkout;

                var checkinDate = new Date(result.ncur + 'T00:00:00');
                checkinDate.setDate(checkinDate.getDate() + 1);

                var defaultCheckoutDate =
                    checkinDate.getFullYear() + '-' +
                    String(checkinDate.getMonth() + 1).padStart(2, '0') + '-' +
                    String(checkinDate.getDate()).padStart(2, '0');

                checkoutDateInput.value = defaultCheckoutDate;

                if (result.arrdatetimeedit === 'N') {
                    checkinDateInput.readOnly = true;
                    checkinTimeInput.readOnly = true;
                } else {
                    checkinDateInput.readOnly = false;
                    checkinTimeInput.readOnly = false;
                }

                if (result.roomrateeditable === 'N') {
                    document.querySelectorAll('.ratechk').forEach(function(element) {
                        element.readOnly = true;
                    });
                }

                if (result.roominctaxeditable === 'N') {
                    document.querySelectorAll('.taxchk').forEach(function(element) {
                        element.readOnly = true;
                        element.disabled = true;
                    });
                }

                const selectedRoomDateRange = getSelectedRoomDateRange();

                if (selectedRoomDateRange) {
                    checkoutDateInput.value = selectedRoomDateRange.checkoutdate;
                    document.getElementById('stay_days').value =
                        selectedRoomDateRange.staydays;
                }

                fetchEmptyRooms(
                    checkinDateInput.value,
                    checkoutDateInput.value,
                    0
                );
            };

            xhr.send();
        });

        $(document).on('click', '.copy-icon', function() {
            var row = $(this).closest('tr');
            var nextRow = row.next('tr');

            if (nextRow.length > 0) {
                let copiedCategoryValue = null;
                let copiedRoomValue = null;
                let copiedPlanValue = null;
                let shouldCopyPlanTable = false;

                // Get source and target row indices
                var sourceRowIndex = row.index() + 1;
                var targetRowIndex = nextRow.index() + 1;

                // Check if source has plan table before copying
                var sourcePlanTable = $(`#table-planmast${sourceRowIndex}`);
                if (sourcePlanTable.length > 0) {
                    shouldCopyPlanTable = true;
                }

                row.find('td').each(function(index) {
                    var cell = $(this);
                    var nextCell = nextRow.find('td').eq(index);

                    var input = cell.find('input[type="number"], input[type="text"], input[type="hidden"]');
                    var nextInput = nextCell.find('input[type="number"], input[type="text"], input[type="hidden"]');
                    if (input.length > 0 && nextInput.length > 0) {
                        nextInput.val(input.val());
                    }

                    var checkbox = cell.find('input[type="checkbox"]');
                    var nextCheckbox = nextCell.find('input[type="checkbox"]');
                    if (checkbox.length > 0 && nextCheckbox.length > 0) {
                        nextCheckbox.prop('checked', checkbox.prop('checked'));
                    }

                    var select = cell.find('select');
                    var nextSelect = nextCell.find('select');
                    if (select.length > 0 && nextSelect.length > 0) {
                        var selectedValue = select.val();

                        if (select.hasClass('cat_code_class')) {
                            copiedCategoryValue = selectedValue;
                            nextSelect.val(selectedValue);
                        } else if (select.hasClass('roomselect') || select.hasClass('room_mast')) {
                            copiedRoomValue = selectedValue;
                        } else if (select.hasClass('planmastclass')) {
                            copiedPlanValue = selectedValue;
                            // Don't set plan value yet, wait for category change to complete
                        } else {
                            nextSelect.val(selectedValue);
                        }
                    }
                });

                if (copiedCategoryValue) {
                    var nextCategorySelect = nextRow.find('.cat_code_class');
                    var nextRoomSelect = nextRow.find('.roomselect, .room_mast');
                    var nextPlanSelect = nextRow.find('.planmastclass');

                    if (nextCategorySelect.length > 0) {
                        nextRoomSelect.empty().append('<option value="">Loading…</option>');

                        if (copiedRoomValue) {
                            nextRoomSelect.data('preselect', copiedRoomValue);
                        }

                        if (copiedPlanValue) {
                            nextPlanSelect.data('preselect', copiedPlanValue);
                        }

                        if (shouldCopyPlanTable) {
                            nextPlanSelect.data('copyPlanTable', {
                                sourceIndex: sourceRowIndex,
                                targetIndex: targetRowIndex
                            });
                        }

                        nextCategorySelect.trigger('change');
                    }
                } else if (shouldCopyPlanTable) {
                    // If no category change but plan table exists, copy it directly
                    copyPlanTable(sourceRowIndex, targetRowIndex);
                }
            }
        });

        $(document).on('click', '.remove-icon', function() {
            var row = $(this).closest('tr');
            var rowIndex = row.index();
            var removedRowNumber = rowIndex + 1;

            var removedRoom = row.find('[id^="roommast"]').val();

            // Remove associated plan table if it exists
            $(`#table-planmast${removedRowNumber}`).closest('.hidedisp').remove();

            document.getElementById('rooms').value = parseInt(document.getElementById('rooms').value) - 1;
            var clonedDiv = document.getElementById('cloneit' + (rowIndex));
            if (clonedDiv) {
                clonedDiv.remove();
            }

            let totalrooms = parseInt($('#totalrooms').val());
            $('#totalrooms').val(totalrooms - 1);

            row.remove();

            totalClonedCount--;
            let rowCount = $('#gridtaxstructure tbody tr').length;
            if (rowCount == 1) {
                $('.leadercl').prop('checked', false);
            }
            $('#gridtaxstructure tr').each(function(index) {
                // console.log('index', index);
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

                    // Also update plan table IDs and names if they exist
                    var planTable = $(`#table-planmast${oldIndex + 1}`);
                    if (planTable.length > 0) {
                        planTable.closest('.hidedisp').find('*').each(function() {
                            var element = $(this);

                            // Update id attribute
                            if (element.attr('id')) {
                                var newId = element.attr('id').replace(new RegExp((oldIndex + 1) + '$'), newIndex);
                                element.attr('id', newId);
                            }

                            // Update name attribute
                            if (element.attr('name')) {
                                var newName = element.attr('name').replace(new RegExp((oldIndex + 1) + '$'), newIndex);
                                element.attr('name', newName);
                            }

                            // Update for attribute
                            if (element.attr('for')) {
                                var newFor = element.attr('for').replace(new RegExp((oldIndex + 1) + '$'), newIndex);
                                element.attr('for', newFor);
                            }
                        });
                    }
                }
            });

            // Refresh all room dropdowns to make the removed room available again
            if (removedRoom) {
                refreshAllRoomDropdowns(-1); // -1 to refresh all dropdowns
            }
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
        function updateGSTCode(selector, gstCodepId, gstCodeSpanId) {
            $(selector).on('change', function() {
                var selectedOption = $(this).find('option:selected');
                var gstCodep = $(gstCodepId);
                var gstCodeSpan = $(gstCodeSpanId);

                if (selectedOption.data('gst') !== '') {
                    gstCodep.show();
                    gstCodeSpan.text(selectedOption.data('gst'));
                } else {
                    gstCodep.hide();
                    gstCodeSpan.text('');
                }
            });
        }

        updateGSTCode('#company', '#gstCodep', '#gstCode');
        updateGSTCode('#travel_agent', '#gstCodet', '#gstCodet');

        $(document).ready(function() {
            var canvas = document.getElementById('signatureCanvas');
            var ctx = canvas.getContext('2d');
            var isDrawing = false;
            var points = [];
            var paths = [];
            var colorPicker = document.getElementById('colorPicker');
            var imagePreview = document.getElementById('imagePreview');

            ctx.lineWidth = 2;
            ctx.lineCap = 'round';
            ctx.lineJoin = 'round';
            ctx.strokeStyle = '#000';

            function redrawAllPaths() {
                ctx.clearRect(0, 0, canvas.width, canvas.height);
                paths.forEach(function(path) {
                    ctx.strokeStyle = path.color;
                    ctx.beginPath();
                    ctx.moveTo(path.points[0].x, path.points[0].y);

                    for (var i = 1; i < path.points.length - 2; i++) {
                        var xc = (path.points[i].x + path.points[i + 1].x) / 2;
                        var yc = (path.points[i].y + path.points[i + 1].y) / 2;
                        ctx.quadraticCurveTo(path.points[i].x, path.points[i].y, xc, yc);
                    }

                    if (path.points.length >= 2) {
                        ctx.quadraticCurveTo(
                            path.points[path.points.length - 2].x,
                            path.points[path.points.length - 2].y,
                            path.points[path.points.length - 1].x,
                            path.points[path.points.length - 1].y
                        );
                    }

                    ctx.stroke();
                });
            }

            function getCoordinates(e) {
                var rect = canvas.getBoundingClientRect();
                var x = e.clientX - rect.left;
                var y = e.clientY - rect.top;
                var pressure = e.pressure || 0.5;
                return {
                    x: x,
                    y: y,
                    pressure: pressure
                };
            }

            function startDrawing(e) {
                e.preventDefault();
                isDrawing = true;
                points = [];

                var coord = getCoordinates(e);
                points.push(coord);
            }

            function draw(e) {
                if (!isDrawing) return;
                e.preventDefault();

                var coord = getCoordinates(e);
                points.push(coord);

                redrawAllPaths();

                ctx.strokeStyle = colorPicker.value;
                ctx.beginPath();
                ctx.moveTo(points[0].x, points[0].y);

                for (var i = 1; i < points.length - 2; i++) {
                    var xc = (points[i].x + points[i + 1].x) / 2;
                    var yc = (points[i].y + points[i + 1].y) / 2;
                    ctx.quadraticCurveTo(points[i].x, points[i].y, xc, yc);
                }

                if (points.length >= 2) {
                    ctx.quadraticCurveTo(
                        points[points.length - 2].x,
                        points[points.length - 2].y,
                        points[points.length - 1].x,
                        points[points.length - 1].y
                    );
                }

                ctx.stroke();
            }

            function stopDrawing(e) {
                if (!isDrawing) return;
                isDrawing = false;

                if (points.length > 0) {
                    paths.push({
                        color: colorPicker.value,
                        points: points
                    });
                }
                points = [];
            }

            canvas.addEventListener('mousedown', startDrawing);
            canvas.addEventListener('mousemove', draw);
            canvas.addEventListener('mouseup', stopDrawing);
            canvas.addEventListener('mouseout', stopDrawing);

            canvas.addEventListener('touchstart', function(e) {
                e.preventDefault();
                startDrawing(e.touches[0]);
            }, {
                passive: false
            });

            canvas.addEventListener('touchmove', function(e) {
                e.preventDefault();
                draw(e.touches[0]);
            }, {
                passive: false
            });

            canvas.addEventListener('touchend', stopDrawing);

            canvas.addEventListener('pointerdown', function(e) {
                if (e.pointerType === 'pen') {
                    ctx.lineWidth = e.pressure * 3;
                }
            });

            $('#openModalBtn').click(function() {
                $('#myModal').modal('show');
                $('#imagePreview').hide();
                ctx.clearRect(0, 0, canvas.width, canvas.height);
                paths = [];
            });

            $('.btn-close').click(function() {
                $('#myModal').modal('hide');
            });

            $('#clearCanvasBtn').click(function() {
                ctx.clearRect(0, 0, canvas.width, canvas.height);
                paths = [];
                points = [];
                $('#signimage').val('');
            });

            $('#previewBtn').click(function() {
                var dataUrl = canvas.toDataURL('image/png');
                imagePreview.src = dataUrl;
                $('#imagePreview').show();
                $('#myModal').modal('hide');
            });

            $('#downloadBtn').click(function() {
                var dataUrl = canvas.toDataURL('image/png');
                imagePreview.src = dataUrl;
                $('#imagePreview').show();
                $('#myModal').modal('hide');
                var minX = Math.min(...paths.flatMap(path => path.points.map(point => point.x)));
                var minY = Math.min(...paths.flatMap(path => path.points.map(point => point.y)));
                var maxX = Math.max(...paths.flatMap(path => path.points.map(point => point.x)));
                var maxY = Math.max(...paths.flatMap(path => path.points.map(point => point.y)));

                var width = maxX - minX;
                var height = maxY - minY;
                var newCanvas = document.createElement('canvas');
                newCanvas.width = width;
                newCanvas.height = height;
                var newCtx = newCanvas.getContext('2d');

                var scaleX = width / (maxX - minX);
                var scaleY = height / (maxY - minY);

                newCtx.lineWidth = ctx.lineWidth * Math.max(scaleX, scaleY);

                newCtx.setTransform(scaleX, 0, 0, scaleY, -minX * scaleX, -minY * scaleY);

                paths.forEach(function(path) {
                    newCtx.strokeStyle = path.color;
                    newCtx.beginPath();
                    newCtx.moveTo(path.points[0].x, path.points[0].y);

                    for (var i = 1; i < path.points.length - 2; i++) {
                        var xc = (path.points[i].x + path.points[i + 1].x) / 2;
                        var yc = (path.points[i].y + path.points[i + 1].y) / 2;
                        newCtx.quadraticCurveTo(path.points[i].x, path.points[i].y, xc, yc);
                    }

                    if (path.points.length >= 2) {
                        newCtx.quadraticCurveTo(
                            path.points[path.points.length - 2].x,
                            path.points[path.points.length - 2].y,
                            path.points[path.points.length - 1].x,
                            path.points[path.points.length - 1].y
                        );
                    }

                    newCtx.stroke();
                });

                var dataUrl = newCanvas.toDataURL('image/png');
                $('#signimage').val(dataUrl);
                $('#myModal').modal('hide');

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
        });


        $(document).ready(function() {
            $('#stay_days').on('input', function() {
                const checkinDate = new Date($('#checkindate').val());
                const stayDays = +$('#stay_days').val();
                const checkoutDateInput = $('#checkoutdate');

                if (!isNaN(stayDays)) {
                    checkinDate.setDate(checkinDate.getDate() + stayDays);
                    checkoutDateInput.val(checkinDate.toISOString().split('T')[0]);
                }
            });
        });

        // function validateDates() {
        //     const checkinDateInput = document.getElementById('checkindate');
        //     const checkoutDateInput = document.getElementById('checkoutdate');
        //     const dayDifferenceInput = document.getElementById('stay_days');
        //     const dateError = document.getElementById('date-error');

        //     const checkinDate = new Date(checkinDateInput.value);

        //     const checkoutDate = new Date(checkinDate);
        //     checkoutDate.setDate(checkinDate.getDate() + 1);

        //     checkoutDateInput.value = formatDate(checkoutDate);

        //     const timeDifference = Math.abs(checkoutDate - checkinDate);
        //     const dayDifference = Math.floor(timeDifference / (1000 * 60 * 60 * 24));
        //     dayDifferenceInput.value = dayDifference;

        //     if (checkoutDate > checkinDate) {
        //         dateError.textContent = "";
        //     }
        // }

        function validateDates() {
            const checkinDateInput = document.getElementById('checkindate');
            const checkoutDateInput = document.getElementById('checkoutdate');
            const stayDaysInput = document.getElementById('stay_days');
            const dateError = document.getElementById('date-error');

            const checkinDate = new Date(checkinDateInput.value + 'T00:00:00');
            const checkoutDate = new Date(checkoutDateInput.value + 'T00:00:00');

            if (isNaN(checkinDate.getTime()) || isNaN(checkoutDate.getTime())) {
                return;
            }

            const stayDays = Math.round(
                (checkoutDate - checkinDate) / 86400000
            );

            if (stayDays < 1) {
                checkoutDate.setDate(checkinDate.getDate() + 1);

                checkoutDateInput.value =
                    checkoutDate.getFullYear() + '-' +
                    String(checkoutDate.getMonth() + 1).padStart(2, '0') + '-' +
                    String(checkoutDate.getDate()).padStart(2, '0');

                stayDaysInput.value = 1;

                if (dateError) {
                    dateError.textContent = '';
                }

                return;
            }

            stayDaysInput.value = stayDays;

            if (dateError) {
                dateError.textContent = '';
            }
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/tesseract.js@4/dist/tesseract.min.js"></script>
    <script>
        // -----------------------
        // File input handler
        // -----------------------
        const fileInput = document.getElementById('fileInput');
        const preview = document.getElementById('preview');
        const procPreview = document.getElementById('procPreview');
        const nameInput = document.getElementById('nameInput');
        const genderInput = document.getElementById('genderInput');
        const aadharInput = document.getElementById('aadharInput');
        const dobInput = document.getElementById('dobInput');
        const progressDiv = document.getElementById('progress');

        // Removed file input functionality
        // document.getElementById('fileInput').remove();

        // -----------------------
        // Aadhaar OCR parsing
        // -----------------------
        function parseAadhaarFrontOCR(ocrText) {
            if (!ocrText) return {
                name: null,
                dob: null,
                gender: null,
                aadhar: null
            };

            // Normalize text
            let text = ocrText.replace(/[^\x00-\x7F]/g, " ") // remove non-ASCII
                .replace(/\s{2,}/g, " ") // multiple spaces → single space
                .replace(/\n\s*\n/g, "\n"); // multiple newlines → single newline

            let lines = text.split(/\r?\n/).map(l => l.trim());

            // Remove UIDAI headers / obvious noisy lines
            lines = lines.filter(l => !/uidai|unique identification|Government of India|भारतीय/i.test(l));

            const joinedText = lines.join(" ");

            // --------- Aadhaar Number ---------
            let aadharMatch = joinedText.match(/\b\d{4}\s?\d{4}\s?\d{4}\b/);
            let aadhar = aadharMatch ? aadharMatch[0].replace(/\s/g, "") : null;

            // --------- DOB ---------
            let dobMatch = joinedText.match(/\b(\d{2}[\/\-]\d{2}[\/\-]\d{4}|\d{4}[\/\-]\d{2}[\/\-]\d{2})\b/);
            let dob = dobMatch ? dobMatch[0] : null;

            // --------- Gender ---------
            let gender = null;
            if (/male/i.test(joinedText)) gender = "Male";
            else if (/female/i.test(joinedText)) gender = "Female";
            else if (/transgender/i.test(joinedText)) gender = "Transgender";

            // --------- Name Extraction (Strict, robust) ---------
            let name = null;

            for (let line of lines) {
                // Clean line: remove non-letter chars, trim spaces
                let cleaned = line.replace(/[^A-Za-z\s]/g, ' ').replace(/\s{2,}/g, ' ').trim();
                if (cleaned.length < 3) continue;
                if (/\b(DOB|Date|Gender|MALE|FEMALE|proof|authentication|Aadhaar)\b/i.test(cleaned)) continue;

                // Look for proper name: two or more words starting with capital, min 3 letters each
                let match = cleaned.match(/\b([A-Z][a-z]{2,}(?:\s[A-Z][a-z]{2,})+)\b/);
                if (match) {
                    name = match[0].trim();
                    break;
                }

                // Fallback: first capitalized word ≥3 letters
                let fallback = cleaned.match(/\b[A-Z][a-z]{2,}\b/);
                if (fallback) {
                    name = cleaned.substring(cleaned.indexOf(fallback[0])).trim();
                    break;
                }
            }

            return {
                name,
                dob,
                gender,
                aadhar
            };
        }

        // -----------------------
        // Webcam interface
        // -----------------------
        const openCameraButton = document.getElementById('openCameraButton');
        const webcam = document.getElementById('webcam');
        const captureCanvas = document.getElementById('captureCanvas');
        const captureButton = document.getElementById('captureButton');
        const progressBarContainer = document.getElementById('progressBarContainer');
        const progressBar = document.getElementById('progressBar');

        // Access the webcam
        async function startWebcam() {
            try {
                const isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
                const videoConstraints = isMobile ? {
                        facingMode: {
                            exact: "environment"
                        }
                    } // Use back camera for mobile/tablet
                    :
                    true; // Use any available camera for laptops/desktops

                const stream = await navigator.mediaDevices.getUserMedia({
                    video: videoConstraints
                });
                webcam.srcObject = stream;
            } catch (err) {
                console.error('Error accessing webcam:', err);
            }
        }

        // Open camera and extract data
        async function openCameraAndExtractData() {
            try {
                // Try to open the back camera first
                const stream = await navigator.mediaDevices.getUserMedia({
                    video: {
                        facingMode: {
                            exact: "environment"
                        }
                    }
                });
                processCameraStream(stream);
            } catch (err) {
                if (err.name === "OverconstrainedError" || err.name === "NotFoundError") {
                    console.warn("Back camera not available. Falling back to any available camera.");
                    // Fallback to any available camera
                    const stream = await navigator.mediaDevices.getUserMedia({
                        video: true
                    });
                    processCameraStream(stream);
                } else {
                    console.error("Error accessing camera or processing image:", err);
                }
            }
        }

        function processCameraStream(stream) {
            webcam.srcObject = stream;
            webcam.style.display = 'block';
            captureButton.style.display = 'block';

            captureButton.onclick = async () => {
                const canvas = captureCanvas;
                canvas.width = webcam.videoWidth;
                canvas.height = webcam.videoHeight;
                const ctx = canvas.getContext('2d');
                ctx.drawImage(webcam, 0, 0, canvas.width, canvas.height);

                // Show progress bar
                progressBarContainer.style.display = 'block';
                progressBar.style.width = '0%';
                progressBar.textContent = '0%';

                // Process the captured image
                try {
                    const {
                        data
                    } = await Tesseract.recognize(canvas, 'eng+hin', {
                        logger: m => {
                            if (m.status === 'recognizing text') {
                                const progress = Math.round(m.progress * 100);
                                progressBar.style.width = `${progress}%`;
                                progressBar.textContent = `${progress}%`;
                            }
                        }
                    });
                    const result = parseAadhaarFrontOCR(data.text);
                    console.log(result)

                    // Fill the input fields with extracted data
                    nameInput.value = result.name || '';
                    genderInput.value = result.gender || '';
                    aadharInput.value = result.aadhar || '';
                    dobInput.value = result.dob || '';
                } catch (err) {
                    console.error("Error processing image:", err);
                } finally {
                    // Stop the camera after processing
                    stream.getTracks().forEach(track => track.stop());
                    webcam.style.display = 'none';
                    captureButton.style.display = 'none';
                    progressBarContainer.style.display = 'none';
                }
            };
        }

        // openCameraButton.addEventListener('click', openCameraAndExtractData);

        // Start the webcam on page load
        // startWebcam();
    </script>

    {{-- ===================== Quick Add Company Modal ===================== --}}
    @if ($canAddCompany)
        <div class="modal fade" id="quickAddCompanyModal" tabindex="-1" role="dialog"
            aria-labelledby="quickAddCompanyModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="quickAddCompanyModalLabel">
                            <i class="fa fa-building mr-1"></i> Add New Company
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="quickCompanyAlert" class="alert" style="display:none;"></div>
                        <div class="form-group">
                            <label for="qc_name">Company Name <span class="text-danger">*</span></label>
                            <input type="text" id="qc_name" class="form-control" placeholder="Enter company name" maxlength="100">
                        </div>
                        <div class="form-group">
                            <label for="qc_gstin">GST No.</label>
                            <input type="text" id="qc_gstin" class="form-control" placeholder="Enter GST number" maxlength="15">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-success" id="quickCompanySubmitBtn">
                            <i class="fa fa-save mr-1"></i> Submit
                        </button>
                    </div>
                </div>
            </div>
        </div>
        {{-- ===================== End Quick Add Company Modal ===================== --}}
    @endif

    {{-- ===================== Quick Add Travel Agent Modal ===================== --}}
    @if ($canAddTravelAgent)
        <div class="modal fade" id="quickAddTravelAgentModal" tabindex="-1" role="dialog"
            aria-labelledby="quickAddTravelAgentModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="quickAddTravelAgentModalLabel">
                            <i class="fa fa-plane mr-1"></i> Add New Travel Agent
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="quickTravelAgentAlert" class="alert" style="display:none;"></div>
                        <div class="form-group">
                            <label for="qta_name">Agent Name <span class="text-danger">*</span></label>
                            <input type="text" id="qta_name" class="form-control" placeholder="Enter agent name" maxlength="100">
                        </div>
                        <div class="form-group">
                            <label for="qta_gstin">GST No.</label>
                            <input type="text" id="qta_gstin" class="form-control" placeholder="Enter GST number" maxlength="15">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-success" id="quickTravelAgentSubmitBtn">
                            <i class="fa fa-save mr-1"></i> Submit
                        </button>
                    </div>
                </div>
            </div>
        </div>
        {{-- ===================== End Quick Add Travel Agent Modal ===================== --}}
    @endif

    {{-- ===================== Quick Add City Modal ===================== --}}
    @if ($canAddCity)
        <div class="modal fade" id="quickAddCityModal" tabindex="-1" role="dialog"
            aria-labelledby="quickAddCityModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="quickAddCityModalLabel">
                            <i class="fa fa-map-marker mr-1"></i> Add New City
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="quickCityAlert" class="alert" style="display:none;"></div>
                        <div class="form-group">
                            <label for="qc_cityname">City Name <span class="text-danger">*</span></label>
                            <input type="text" id="qc_cityname" class="form-control" placeholder="Enter city name" maxlength="100">
                        </div>
                        <div class="form-group">
                            <label for="qc_country">Country <span class="text-danger">*</span></label>
                            <select id="qc_country" class="form-control">
                                <option value="">Select Country</option>
                                @foreach ($countrydata as $c)
                                    <option value="{{ $c->country_code }}">{{ $c->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="qc_state">State <span class="text-danger">*</span></label>
                            <select id="qc_state" class="form-control">
                                <option value="">Select State</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="qc_zipcode">Zip Code</label>
                            <input type="text" id="qc_zipcode" class="form-control" placeholder="Enter zip code" maxlength="20">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-success" id="quickCitySubmitBtn">
                            <i class="fa fa-save mr-1"></i> Submit
                        </button>
                    </div>
                </div>
            </div>
        </div>
        {{-- ===================== End Quick Add City Modal ===================== --}}
    @endif

    <script>
        // ===== Company Modal =====
        @if ($canAddCompany)
            $('#quickAddCompanyModal').on('hidden.bs.modal', function() {
                $('#qc_name').val('');
                $('#qc_gstin').val('');
                $('#quickCompanyAlert').hide().removeClass('alert-success alert-danger').text('');
                $('#quickCompanySubmitBtn').prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
            });

            $('#quickCompanySubmitBtn').on('click', function() {
                var name = $.trim($('#qc_name').val());
                var gstin = $.trim($('#qc_gstin').val());

                if (!name) {
                    showQuickCompanyAlert('danger', 'Company name is required.');
                    return;
                }

                if (gstin !== '' && gstin.length < 15) {
                    showQuickCompanyAlert('danger', 'GSTIN length should be equal to 15!');
                    return;
                }
                var gstRegex = /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/;
                if (gstin !== '' && !gstRegex.test(gstin.toUpperCase())) {
                    showQuickCompanyAlert('danger', 'Invalid GSTIN format! e.g. 22AAAAA0000A1Z5');
                    return;
                }

                var btn = $(this);
                btn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-1"></i> Saving...');

                $.ajax({
                    url: '{{ route('reservation.quickAddCompany') }}',
                    type: 'POST',
                    data: {
                        name: name,
                        gstin: gstin,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(res) {
                        if (res.success) {
                            showQuickCompanyAlert('success', res.message);
                            var sel = $('#company');
                            sel.empty().append('<option value="">Select</option>');
                            $.each(res.companies, function(i, c) {
                                sel.append($('<option>', {
                                    value: c.sub_code,
                                    text: c.name
                                }).attr('data-gst', c.gstin || ''));
                            });
                            sel.val(res.sub_code).trigger('change');
                            setTimeout(function() {
                                $('#quickAddCompanyModal').modal('hide');
                            }, 1000);
                        } else {
                            showQuickCompanyAlert('danger', res.message);
                            btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                        }
                    },
                    error: function(xhr) {
                        var msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Something went wrong.';
                        showQuickCompanyAlert('danger', msg);
                        btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                    }
                });
            });

            function showQuickCompanyAlert(type, message) {
                $('#quickCompanyAlert').removeClass('alert-success alert-danger').addClass('alert-' + type).text(message).show();
            }
        @endif

        // ===== Travel Agent Modal =====
        @if ($canAddTravelAgent)
            $('#quickAddTravelAgentModal').on('hidden.bs.modal', function() {
                $('#qta_name').val('');
                $('#qta_gstin').val('');
                $('#quickTravelAgentAlert').hide().removeClass('alert-success alert-danger').text('');
                $('#quickTravelAgentSubmitBtn').prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
            });

            $('#quickTravelAgentSubmitBtn').on('click', function() {
                var name = $.trim($('#qta_name').val());
                var gstin = $.trim($('#qta_gstin').val());

                if (!name) {
                    showQuickTravelAgentAlert('danger', 'Agent name is required.');
                    return;
                }

                if (gstin !== '' && gstin.length < 15) {
                    showQuickTravelAgentAlert('danger', 'GSTIN length should be equal to 15!');
                    return;
                }
                var gstRegex = /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/;
                if (gstin !== '' && !gstRegex.test(gstin.toUpperCase())) {
                    showQuickTravelAgentAlert('danger', 'Invalid GSTIN format! e.g. 22AAAAA0000A1Z5');
                    return;
                }

                var btn = $(this);
                btn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-1"></i> Saving...');

                $.ajax({
                    url: '{{ route('reservation.quickAddTravelAgent') }}',
                    type: 'POST',
                    data: {
                        name: name,
                        gstin: gstin,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(res) {
                        if (res.success) {
                            showQuickTravelAgentAlert('success', res.message);
                            var sel = $('#travel_agent');
                            sel.empty().append('<option value="">Select</option>');
                            $.each(res.agents, function(i, a) {
                                sel.append($('<option>', {
                                    value: a.sub_code,
                                    text: a.name
                                }));
                            });
                            sel.val(res.sub_code).trigger('change');
                            setTimeout(function() {
                                $('#quickAddTravelAgentModal').modal('hide');
                            }, 1000);
                        } else {
                            showQuickTravelAgentAlert('danger', res.message);
                            btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                        }
                    },
                    error: function(xhr) {
                        var msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Something went wrong.';
                        showQuickTravelAgentAlert('danger', msg);
                        btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                    }
                });
            });

            function showQuickTravelAgentAlert(type, message) {
                $('#quickTravelAgentAlert').removeClass('alert-success alert-danger').addClass('alert-' + type).text(message).show();
            }
        @endif

        // ===== City Modal =====
        @if ($canAddCity)
            $('#quickAddCityModal').on('hidden.bs.modal', function() {
                $('#qc_cityname').val('');
                $('#qc_country').val('');
                $('#qc_state').html('<option value="">Select State</option>');
                $('#qc_zipcode').val('');
                $('#quickCityAlert').hide().removeClass('alert-success alert-danger').text('');
                $('#quickCitySubmitBtn').prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
            });

            $('#qc_country').on('change', function() {
                var cid = $(this).val();
                $('#qc_state').html('<option value="">Select State</option>');
                if (!cid) return;
                $.ajax({
                    url: '/getState2',
                    type: 'POST',
                    data: {
                        cid: cid,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(html) {
                        $('#qc_state').html(html);
                    }
                });
            });

            $('#quickCitySubmitBtn').on('click', function() {
                var cityname = $.trim($('#qc_cityname').val());
                var country = $('#qc_country').val();
                var state = $('#qc_state').val();
                var zipcode = $.trim($('#qc_zipcode').val());

                if (!cityname) {
                    showQuickCityAlert('danger', 'City name is required.');
                    return;
                }
                if (!country) {
                    showQuickCityAlert('danger', 'Country is required.');
                    return;
                }
                if (!state) {
                    showQuickCityAlert('danger', 'State is required.');
                    return;
                }

                var btn = $(this);
                btn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-1"></i> Saving...');

                $.ajax({
                    url: '{{ route('reservation.quickAddCity') }}',
                    type: 'POST',
                    data: {
                        cityname: cityname,
                        country: country,
                        state: state,
                        zipcode: zipcode,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(res) {
                        if (res.success) {
                            showQuickCityAlert('success', res.message);
                            var sel = $('#cityname');
                            sel.empty().append('<option value="">Select City</option>');
                            $.each(res.cities, function(i, c) {
                                sel.append($('<option>', {
                                    value: c.city_code,
                                    text: c.cityname
                                }));
                            });
                            sel.val(res.city_code).trigger('change');
                            setTimeout(function() {
                                $('#quickAddCityModal').modal('hide');
                            }, 1000);
                        } else {
                            showQuickCityAlert('danger', res.message);
                            btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                        }
                    },
                    error: function(xhr) {
                        var msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Something went wrong.';
                        showQuickCityAlert('danger', msg);
                        btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                    }
                });
            });

            function showQuickCityAlert(type, message) {
                $('#quickCityAlert').removeClass('alert-success alert-danger').addClass('alert-' + type).text(message).show();
            }
        @endif
    </script>
@endsection
