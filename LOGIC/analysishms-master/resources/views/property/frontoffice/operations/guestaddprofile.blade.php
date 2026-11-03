<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <style>
        .form-control {
            max-height: 34px !important;
            min-height: 19px !important;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Pignose Calender -->
    <link href="{{ asset('admin/plugins/pg-calendar/css/pignose.calendar.min.css') }}" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/chartist/css/chartist.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom Stylesheet -->
    <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">
    <link
        href="{{ asset('admin/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css') }}"
        rel="stylesheet">
    <!-- Color picker plugins css -->
    <link href="{{ asset('admin/plugins/jquery-asColorPicker-master/css/asColorPicker.css') }}" rel="stylesheet">
    <!-- Daterange picker plugins css -->
    <link href="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.css') }}" rel="stylesheet">

</head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@if (isset($message))
    <script>
        Swal.fire({
            icon: '{{ $type }}',
            title: '{{ $type == 'success' ? 'Success' : 'Error' }}',
            text: '{{ $message }}',
            timer: 5000,
            showConfirmButton: true
        });
    </script>
@endif

@if (session('success'))
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '{{ session('success') }}',
        });
        setTimeout(function() {
            Swal.close();
        }, 5000);
    </script>
@endif
@if (session('error'))
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '{{ session('error') }}',
        });
        setTimeout(function() {
            Swal.close();
        }, 5000);
    </script>
@endif

<div class="modal-body walkin">
    <form
        class="form"
        id="walkinupdateform"
        name="walkinupdateform"
        action="{{ route('newguestprofileadd') }}"
        method="POST"
        enctype="multipart/form-data">
        @csrf
        <div class="row mb-3">
            <div class="col-12 d-flex justify-content-between align-items-center">
                <button type="submit" class="btn btn-primary">Save Changes</button>
                <button type="button" id="addnewrow" class="btn btn-info btn-sm">
                    Add New <i class="fa-solid fa-plus"></i>
                </button>
            </div>
        </div>
        <input type="hidden" value="{{ $data->docid }}" name="docid" id="docid">
        <input type="hidden" value="0" name="newrowadd" id="newrowadd">
        <input type="hidden" name="activemprof" id="activemprof">
        <input type="hidden" value="{{ $sno1 }}" name="sno1" id="sno1">
        <div class="row mt-2">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="profileimagepreview"></label>
                    <label for="profileimagepreview">
                        <img style="height: 180px;width: 180px;" class="preview prevprofile" id="profileimagepreview"
                            @if (empty($data->pic_path)) src="admin/images/preview.gif" @else src="storage/walkin/profileimage/{{ $data->pic_path }}" @endif
                            alt="{{ $data->name }}" onclick="openFileInputpf('profileimage');" />
                        <div style="text-align: center;">
                        </div>
                    </label>
                    <input type="hidden" value="{{ $data->pic_path }}" name="profileimagehidden"
                        id="profileimagehidden">
                    <input type="file" name="profileimage" class="profileimage none" id="profileimage"
                        onchange="readURLp(this, 'profileimagepreview');" />
                </div>
            </div>
            <canvas id="capturedImageCanvas" style="display: none;"></canvas>

            <div class="col-md-9">
                <div class="row">
                    <div class="">
                        <div class="form-group">
                            <label for="reservationtype">Guest
                                Name</label>
                            <div class="d-flex">
                                <select style="width: auto;" class="form-control" name="greetingsguest"
                                    id="greetingsguest">
                                    @if (empty($data->con_prefix))
                                        <option value="" selected>Select</option>
                                    @else
                                        <option value="Mr." @if ($data->con_prefix == 'Mr.') selected @endif>Mr.</option>
                                        <option value="Ms." @if ($data->con_prefix == 'Ms.') selected @endif>Ms.</option>
                                        <option value="Mam" @if ($data->con_prefix == 'Mam') selected @endif>Mam</option>
                                        <option value="Dr." @if ($data->con_prefix == 'Dr.') selected @endif>Dr.</option>
                                        <option value="Prof." @if ($data->con_prefix == 'Prof.') selected @endif>Prof.
                                        </option>
                                        <option value="Mrs." @if ($data->con_prefix == 'Mrs.') selected @endif>Mrs.</option>
                                        <option value="Miss" @if ($data->con_prefix == 'Miss') selected @endif>Miss</option>
                                        <option value="Sir" @if ($data->con_prefix == 'Sir') selected @endif>Sir</option>
                                        <option value="Madam" @if ($data->con_prefix == 'Madam') selected @endif>Madam
                                        </option>
                                    @endif
                                </select>

                                <input
                                    autocomplete="off"
                                    style="width: auto;"
                                    type="text"
                                    name="guestname"
                                    placeholder="Full Name"
                                    maxlength="50"
                                    value="{{ $data->name }}"
                                    id="guestname"
                                    class="form-control">
                            </div>
                        </div>
                    </div>


                    <div class="">
                        <div class="form-group">
                            <label for="guestmobile">Mobile</label>
                            <input oninput="ValidateNum(this, '1', '9999999999', '10')" type="number"
                                class="form-control" id="guestmobile" value="{{ $data->mobile_no }}" name="guestmobile"
                                placeholder="Mobile">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="genderguest">Gender</label>
                        <select name="genderguest" id="genderguest" class="form-control">
                            @if (empty($data->gender))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                            @endif
                            <option value="Male" @if ($data->gender == 'Male') selected @endif>Male</option>
                            <option value="Female" @if ($data->gender == 'Female') selected @endif>Female</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="guestemail">Email</label>
                            <input value="{{ $data->email_id }}" type="email" class="form-control" id="guestemail"
                                name="guestemail" placeholder="Email">
                            <small class="form-text text-muted">Use
                                comma to
                                add multiple Email IDs</small>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="arrfrom">Arrival From</label>
                            <select name="arrfrom" id="arrfrom" class="form-control">
                                @if (empty($data->arrfrom))
                                    <option value="" selected>Select</option>
                                @else
                                    <option value="">Select</option>
                                @endif
                                @foreach ($citydata as $list)
                                    <option value="{{ $list->city_code }}" @if ($data->arrfrom == $list->city_code) selected @endif>
                                        {{ $list->cityname }}
                                    </option>
                                @endforeach
                            </select>

                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="destination">Destination</label>
                            <select name="destination" id="destination" class="form-control">
                                @if (empty($data->destination))
                                    <option value="" selected>Select</option>
                                @else
                                    <option value="">Select</option>
                                @endif
                                @foreach ($citydata as $list)
                                    <option value="{{ $list->city_code }}" @if ($data->destination == $list->city_code) selected @endif>
                                        {{ $list->cityname }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="row">

            <div class="col-md-3">
                <label for="cityguest">City</label>
                <select class="form-control"
                    onchange="UpdateCitydata('cityguest', 'stateguest', 'countryguest', 'zipguest', 'nationalityother')"
                    name="cityguest" id="cityguest" required>
                    @if (empty($data->citycode))
                        <option value="" selected>Select City</option>
                    @else
                        <option value="">Select City</option>
                    @endif
                    @foreach ($citydata as $list)
                        <option value="{{ $list->city_code }}" @if ($data->citycode == $list->city_code) selected @endif>
                            {{ $list->cityname }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label for="stateguest">State</label>
                    <select class="form-control" name="stateguest" id="stateguest">
                        @if (empty($data->state_code))
                            <option value="" selected>Select State</option>
                        @else
                            <option value="{{ $data->state_code }}" selected>{{ $data->state_name }}</option>
                        @endif
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label for="countryguest">Country</label>
                    <select class="form-control" name="countryguest" id="countryguest">
                        @if (empty($data->country_code))
                            <option value="" selected>Select Country</option>
                        @else
                            <option value="{{ $data->country_code }}" selected>{{ $data->country_name }}</option>
                        @endif
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label for="zipguest">Zip</label>
                    <input type="text" value="{{ $data->zip_code }}" class="form-control" id="zipguest" name="zipguest"
                        placeholder="Zip Code">
                </div>
            </div>
        </div>

        <div class="row">
            <input type="hidden" value="{{ $data->guestsign }}" name="oldsignimage" id="oldsignimage">
            <input type="hidden" value="{{ $data->guestsign }}" name="signimage" id="signimage">
            <div class="col-md-6">
                <h1 class="signature-heading">
                    <i class="fas fa-pen-signature"></i> Guest Signature
                </h1>
                <div class="text-center mt-5 mb-3">
                    <button type="button" id="openModalBtn" class="btn btn-primary">Update Sign</button>
                </div>
            </div>
            <div class="col-md-6">
                <img
                    style="display: {{ $data->guestsign == '' ? 'none' : 'block' }};"
                    id="imagePreview"
                    src="{{ $data->guestsign == '' ? '' : asset('storage/walkin/signature/' . $data->guestsign) }}"
                    alt="Signature Preview" />
            </div>
        </div>

        <div class="row mt-2">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="identityInfo">Identity
                        Information</label>
                    <label for="identityimagepreview">
                        <img style="height: 180px;width: 180px;" class="preview" id="identityimagepreview"
                            @if (empty($data->idpic_path)) src="admin/images/preview.gif" @else src="storage/walkin/identityimage/{{ $data->idpic_path }}" @endif
                            alt="your image" onclick="openidentity('identityimage');" />
                    </label>
                    <div style="text-align: center;">
                    </div>
                    <input type="hidden" value="{{ $data->idpic_path }}" name="identityimagehidden"
                        id="identityimagehidden">
                    <input type="file" name="identityimage" id="identityimage" class="identityimage none"
                        onchange="readURLp(this, 'identityimagepreview');" />
                </div>
            </div>

            <canvas id="capturedImageCanvas2" style="display: none;"></canvas>

            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="idType">ID
                                Type</label>
                            <select
                                onchange="validateAadhar2('idType', 'idNumber', 'idNumberError');DisplayIssueFields2('idType','issuefielda', 'issuefieldb', 'issuefieldc')"
                                name="idType" id="idType" class="form-control idTypeSelect">
                                @if (empty($data->id_proof))
                                    <option value="" selected>Select</option>
                                @else
                                    <option value="">Select</option>
                                @endif
                                <option value="Aadhar Card" @if ($data->id_proof == 'Aadhar Card') selected @endif>Aadhar Card</option>
                                <option value="Driving Licence" @if ($data->id_proof == 'Driving Licence') selected @endif>Driving Licence</option>
                                <option value="Passport" @if ($data->id_proof == 'Passport') selected @endif>Passport
                                </option>
                                <option value="National Identity Card" @if ($data->id_proof == 'National Identity Card') selected @endif>National Identity Card</option>
                                <option value="Voter Id" @if ($data->id_proof == 'Voter Id') selected @endif>Voter Id</option>
                                <option value="Green Card" @if ($data->id_proof == 'Green Card') selected @endif>Green Card</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="idNumber">ID Number</label>
                            <input type="text" oninput="this.value = this.value.toUpperCase()"
                                value="{{ $data->idproof_no }}" class="form-control idNumberInput" id="idNumber"
                                name="idNumber" placeholder="ID Number">
                            <span class="idNumberError" id="idNumberError"
                                style="display:none;color: red; position: fixed;">Aadhar
                                number must be 12 digits and
                                contain only numbers</span>
                        </div>
                    </div>

                    <div style="display:{{ $data->id_proof == 'Passport' ? 'block' : 'none' }};" id="issuefielda"
                        class="col-md-4">
                        <div class="form-group">
                            <label for="issuingcity">Issuing City</label>
                            <select id="issuingcity" name="issuingcity" class="form-control">
                                @if (empty($data->issuingcitycode))
                                    <option value="" selected>Select City</option>
                                @endif
                                @foreach ($citydata as $list)
                                    <option value="{{ $list->city_code }}" @if ($data->issuingcitycode == $list->city_code) selected @endif>
                                        {{ $list->cityname }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div style="display:{{ $data->id_proof == 'Passport' ? 'block' : 'none' }};" id="issuefieldb"
                        class="col-md-4">
                        <div class="form-group">
                            <label for="issuingcountry">Issuing Country</label>
                            <select id="issuingcountry" class="form-control" name="issuingcountry">
                                @if (empty($data->issuingcountrycode))
                                    <option value="" selected>Select Country</option>
                                @else
                                    <option value="{{ $data->issuingcountrycode }}" selected>{{ $data->issuingcountryname }}
                                    </option>
                                @endif
                            </select>
                        </div>
                    </div>

                    <div style="display:{{ $data->id_proof == 'Passport' ? 'block' : 'none' }};" id="issuefieldc"
                        class="col-md-4">
                        <div class="form-group">
                            <label for="expiryDate">Expiry
                                Date</label>
                            <input value="{{ $data->expiryDate }}" onchange="PastDtNA(this)" type="date"
                                class="form-control" name="expiryDate" id="expiryDate">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="paymentMethod">Payment
                        Method</label>
                    <select onchange="DisplayBillingField2('paymentMethod', 'billingfield')"
                        class="paymentmethodselect form-control" name="paymentMethod" id="paymentMethod"
                        class="form-control">
                        @if (empty($data->paymentMethod))
                            <option value="" selected>Select</option>
                        @else
                            <option value="">Select</option>
                        @endif
                        <option value="Cash" @if ($data->paymentMethod == 'Cash') selected @endif>Cash</option>
                        <option value="Bill To Company" @if ($data->paymentMethod == 'Bill To Company') selected @endif>Bill
                            To Company</option>
                        <option value="UPI" @if ($data->paymentMethod == 'UPI') selected @endif>UPI</option>
                        <option value="Debit Card" @if ($data->paymentMethod == 'Debit Card') selected @endif>Debit
                            Card</option>
                        <option value="Credit Card" @if ($data->paymentMethod == 'Credit Card') selected @endif>Credit
                            Card</option>
                    </select>
                </div>
            </div>
            <div id="billingfield" style="display:{{ $data->paymentMethod == ' Bill To Company' ? 'block' : 'none' }} ;"
                class="col-md-3">
                <div class="form-group">
                    <label for="billingAccount">Direct
                        Billing</label>
                    <select name="billingAccount" id="billingAccount" class="form-control">
                        @if (empty($data->billingAccount))
                            <option value="" selected>Select</option>
                        @else
                            <option value="">Select</option>
                        @endif
                        @foreach ($company as $item)
                            <option value="{{ $item->sub_code }}" @if ($data->billingAccount == $item->sub_code) selected @endif> {{ $item->name }}
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="birthDate">Birth
                        Date</label>
                    <input value="{{ $data->dob }}" name="birthDate" onchange="FutureDtNA(this)" type="date"
                        class="form-control" id="birthDate">
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="purpofvisit">Purpose Of
                        Visit</label>
                    <select class="form-control" id="purpofvisit" name="purpofvisit">
                        @if (empty($data->purvisit))
                            <option value="" selected>Select</option>
                        @else
                            <option value="">Select</option>
                        @endif
                        <option value="Official" @if ($data->purvisit == 'Official') selected @endif>Official
                        </option>
                        <option value="Personal" @if ($data->purvisit == 'Personal') selected @endif>Personal
                        </option>
                        <option value="Business" @if ($data->purvisit == 'Business') selected @endif>Business
                        </option>
                        <option value="Tourist" @if ($data->purvisit == 'Tourist') selected @endif>Tourist
                        </option>
                        <option value="Other" @if ($data->purvisit == 'Other') selected @endif>Other</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="nationalityother">Nationality</label>
                    <select class="form-control" id="nationalityother" name="nationalityother">
                        @if (empty($data->nationality))
                            <option value="" selected>Select</option>
                        @endif
                        @foreach ($nationalitydata as $item)
                            <option value="{{ $item->nationality }}" @if ($data->nationality == $item->nationality) selected @endif>
                                {{ $item->nationality }}
                            </option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label for="vipStatus">Guest
                        Status</label>
                    <select name="vipStatus" id="vipStatus" class="form-control">
                        @if (empty($data->guest_status))
                            <option value="" selected>Select Status</option>
                        @else
                            <option value="">Select Status</option>
                        @endif
                        @foreach ($gueststatus as $list)
                            <option value="{{ $list->gcode }}" @if ($data->guest_status == $list->gcode) selected @endif>
                                {{ $list->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="weddingAnniversary">Wedding
                        Anniversary</label>
                    <input value="{{ $data->anniversary }}" name="weddingAnniversary" onchange="FutureDtNA(this)"
                        type="date" class="form-control" id="weddingAnniversary">
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="marital_status">Marital
                        Status</label>
                    <select name="marital_status" id="marital_status" class="form-control">
                        @if (empty($data->marital_status))
                            <option value="" selected>Select</option>
                        @else
                            <option value="">Select</option>
                        @endif
                        <option value="Single" @if ($data->marital_status == 'Single') selected @endif>Single
                        </option>
                        <option value="Married" @if ($data->marital_status == 'Married') selected @endif>Married
                        </option>
                        <option value="Divorced" @if ($data->marital_status == 'Divorced') selected @endif>Divorced
                        </option>
                        <option value="Widowed" @if ($data->marital_status == 'Widowed') selected @endif>Widowed
                        </option>
                        <option value="Separated" @if ($data->marital_status == 'Separated') selected @endif>Separated</option>
                        <option value="Other" @if ($data->marital_status == 'Other') selected @endif>Other
                        </option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-form-label" for="rodisc">Disc Percentage on Room
                        Charge</label>
                    <input value="{{ $data->rodisc }}" type="text" step="0.01" min="0.00" max="99.99" placeholder="0.00"
                        name="rodisc" id="rodisc" class="form-control percent_value"
                        oninput="validatePercentage2('rodisc')">
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-form-label" for="rsdisc">Disc Percentage on Room
                        Charge</label>
                    <input value="{{ $data->rsdisc }}" type="text" step="0.01" min="0.00" max="99.99" placeholder="0.00"
                        name="rsdisc" id="rsdisc" class="form-control percent_value"
                        oninput="validatePercentagers2('rsdisc')">
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-form-label" for="travelmode">Travel Mode</label>
                    <select onchange="DisplayVehicleNum2('travelmode', 'vehiclediv')" name="travelmode"
                        class="form-control" id="travelmode">
                        @if (empty($data->travelmode))
                            <option value="" selected>Select</option>
                        @else
                            <option value="">Select</option>
                        @endif
                        <option value="By Road" @if ($data->travelmode == 'By Road') selected @endif>By Road
                        </option>
                        <option value="By Air" @if ($data->travelmode == 'By Air') selected @endif>By Air
                        </option>
                        <option value="By Car" @if ($data->travelmode == 'By Car') selected @endif>By Car
                        </option>
                        <option value="By Bus" @if ($data->travelmode == 'By Bus') selected @endif>By Bus
                        </option>
                        <option value="By Train" @if ($data->travelmode == 'By Train') selected @endif>By Train
                        </option>
                        <option value="By Ship" @if ($data->travelmode == 'By Ship') selected @endif>By Ship
                        </option>
                    </select>

                </div>
            </div>
        </div>

        <div class="row">
            <div id="vehiclediv" style="display: {{ $data->travelmode == 'By Car' ? 'block' : 'none' }};"
                class="col-md-4">
                <div class="form-group">
                    <label for="vehiclenum" class="col-form-label">Vehicle Number</label>
                    <input value="{{ $data->vehiclenum }}" type="text" oninput="this.value = this.value.toUpperCase()"
                        name="vehiclenum" id="vehiclenum" class="form-control" placeholder="Enter Vehicle Number">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8">
                <table id="guestmaindata" class="table table-hover">
                    <thead class="dark-overlay-2">
                        <th title="Click Radio Box To Make It Main Profile">Select</th>
                        <th>#</th>
                        <th>Guest Code</th>
                        <th>Name</th>
                        <th title="Click Radio Box To Make Change In This Profile">Change</th>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </form>

    <div id="myModal" class="modal fade signaturemodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Guest Signature</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa-solid fa-xmark"></i></button>
                </div>
                <div class="modal-body">
                    <p>Use Pen Tablet For a better signature: <a target="_blank" class="text-info font-weight-bold" href="https://www.amazon.in/HUION-H420-Pressure-Battery-Free-4-17x2-6/dp/B00DM24HNE">HUION USB PEN TABLET</a></p>
                    <input type="color" id="colorPicker" value="#000000">
                    <canvas id="signatureCanvas" width="400" height="200"></canvas>
                    <div class="signature-tips">
                        Tip: Take your time and sign slowly for a smooth signature</br>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <button type="button" id="clearCanvasBtn" class="btn btn-secondary mt-3">Clear</button>
                        </div>
                        <div class="col-4">
                            <button type="button" id="saveBtn" class="btn btn-success mt-3">Save</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
<!-- Notify CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/spin.js/2.3.2/spin.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<!-- Notify JS -->
<script src="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.min.js"></script>
<script src="{{ asset('admin/plugins/common/common.min.js') }}"></script>
<script src="{{ asset('admin/js/custom.min.js') }}"></script>
<script src="{{ asset('admin/js/settings.js') }}"></script>
<script src="{{ asset('admin/js/gleek.js') }}"></script>
<script src="{{ asset('admin/js/styleSwitcher.js') }}"></script>
<script src="{{ asset('admin/js/dashboard/dashboard-1.js') }}"></script>

<script src="{{ asset('admin/plugins/moment/moment.js') }}"></script>
<script src="{{ asset('admin/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js') }}"></script>
<!-- Clock Plugin JavaScript -->
<script src="{{ asset('admin/plugins/clockpicker/dist/jquery-clockpicker.min.js') }}"></script>
<!-- Date Picker Plugin JavaScript -->
<script src="{{ asset('admin/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>
<!-- Date range Plugin JavaScript -->
<script src="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>
<script src="{{ asset('admin/js/plugins-init/form-pickers-init.js') }}"></script>

<!-- Color Picker Plugin JavaScript -->
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/libs/jquery-asColor.js') }}"></script>
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/libs/jquery-asGradient.js') }}"></script>
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/dist/jquery-asColorPicker.min.js') }}"></script>
<script>
    $(document).ready(function() {
        let docid = $('#docid').val();
        setTimeout(() => {
            if (docid == '') {
                pushNotify('error', 'Guest Add Profile', 'Folio not found', 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                return;
            }

            $.ajax({
                url: "{{ url('loadtotalmprof') }}",
                method: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    docid: docid
                },
                success: function(response) {
                    if (response.success) {
                        let data = response.data;
                        $('#guestmaindata tbody').empty();

                        let firstmprof = data.length > 0 ? data[0].mprof : '';

                        $('#activemprof').val(firstmprof);

                        let rows = '';
                        data.forEach(function(item, index) {
                            rows += `
                            <tr data-sno1="${item.sno1}" data-mprof="${item.mprof}" data-guestcode="${item.guest_prof}">
                                <td title="Click Radio Box To Make It Main Profile">
                                    <input type="radio" name="selected_guest" value="${item.guest_prof}" ${item.guest_prof == item.mprof ? 'checked' : ''}>
                                </td>
                                <td>${index + 1}</td>
                                <td>${item.guest_prof}</td>
                                <td>${item.guestname}</td>
                                <td title="Click Radio Box To Make Change In This Profile">
                                    <input type="radio" name="selected_guest_pchange" value="${item.guest_prof}" ${item.guest_prof == item.mprof ? 'checked' : ''}>
                                </td>
                            </tr>
                        `;
                        });

                        $('#guestmaindata tbody').append(rows);
                        pushNotify('success', 'Guest Add Profile', `${response.message}`, 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    } else {
                        pushNotify('error', 'Guest Add Profile', `${response.message}`, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                        return;
                    }
                },
                error: function() {
                    stopTimer();
                    Swal.close();
                    Swal.fire('Error!', 'Something went wrong.', 'error');
                }
            })
        }, 1500);

        $(document).on('change', 'input[name="selected_guest_pchange"]', function() {
            let row = $(this).closest('tr');

            let mprof = row.data('mprof');
            let guestcode = row.data('guestcode');
            let sno1 = row.data('sno1');
            let docid = $('#docid').val();

            $('#guestcodep').remove();

            let inputgcode = `<input type='hidden' value='${guestcode}' name='guestcodep' id='guestcodep'>`
            $('#walkinupdateform').append(inputgcode);

            $('#walkinupdateform').prop('action', '{{ route('profilechangeguestonly') }}');

            reloadprofile();
        });

        function reloadprofile() {
            let docid = $('#docid').val();
            let guestcodep = $('#guestcodep').val();

            if (docid == '' || guestcodep == '') {
                Swal.fire({
                    icon: 'info',
                    title: 'Guest Change Profile',
                    text: 'Docid or Guest Code Not Found!'
                });
                return;
            }

            $.ajax({
                url: "{{ route('fetchguestparticulardata') }}",
                method: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    docid: docid,
                    guestcode: guestcodep,
                },
                success: function(response) {
                    if (response.success && response.gprof) {
                        resetform();

                        let gprof = response.gprof;

                        // Basic Information
                        $('#greetingsguest').val(gprof.con_prefix || '');
                        $('#guestname').val(gprof.name || '');
                        $('#guestmobile').val(gprof.mobile_no || '');
                        $('#genderguest').val(gprof.gender || '');
                        $('#guestemail').val(gprof.email_id || '');

                        // City, State, Country Information
                        $('#cityguest').val(gprof.city || '');
                        $('#cityguest').trigger('change');
                        $('#arrfrom').val(gprof.city || '');
                        $('#stateguest').val(gprof.state_code || '');
                        $('#countryguest').val(gprof.country_code || '');
                        $('#zipguest').val(gprof.zip_code || '');

                        // Personal Details
                        $('#birthDate').val(gprof.dob || '');
                        $('#weddingAnniversary').val(gprof.anniversary || '');
                        $('#marital_status').val(gprof.marital_status || '');
                        $('#nationalityother').val(gprof.nationality || '');

                        // ID Proof Information
                        $('#idType').val(gprof.id_proof || '');
                        $('#idNumber').val(gprof.idproof_no || '');

                        // Issuing Details for Passport
                        if (gprof.id_proof === 'Passport') {
                            $('#issuingcity').val(gprof.issuingcitycode || '');
                            $('#issuingcountry').val(gprof.issuingcountrycode || '');
                            $('#expiryDate').val(gprof.expiryDate || '');
                            $('#issuefielda').show();
                            $('#issuefieldb').show();
                            $('#issuefieldc').show();
                        } else {
                            $('#issuefielda').hide();
                            $('#issuefieldb').hide();
                            $('#issuefieldc').hide();
                        }

                        // Payment & Billing
                        $('#paymentMethod').val(gprof.paymentMethod || '');
                        if (gprof.paymentMethod === 'Bill To Company') {
                            $('#billingfield').show();
                            $('#billingAccount').val(gprof.billingAccount || '');
                        } else {
                            $('#billingfield').hide();
                        }

                        // Guest Status & VIP
                        $('#vipStatus').val(gprof.guest_status || '');

                        // Profile Images
                        if (gprof.pic_path && gprof.pic_path !== '') {
                            $('#profileimagepreview').attr('src', 'storage/walkin/profileimage/' + gprof.pic_path);
                            $('#profileimagehidden').val(gprof.pic_path);
                        } else {
                            $('#profileimagepreview').attr('src', 'admin/images/preview.gif');
                            $('#profileimagehidden').val('');
                        }

                        // Identity Images
                        if (gprof.idpic_path && gprof.idpic_path !== '') {
                            $('#identityimagepreview').attr('src', 'storage/walkin/identityimage/' + gprof.idpic_path);
                            $('#identityimagehidden').val(gprof.idpic_path);
                        } else {
                            $('#identityimagepreview').attr('src', 'admin/images/preview.gif');
                            $('#identityimagehidden').val('');
                        }

                        // Signature
                        if (gprof.guestsign && gprof.guestsign !== '') {
                            $('#imagePreview').attr('src', 'storage/walkin/signature/' + gprof.guestsign).show();
                            $('#oldsignimage').val(gprof.guestsign);
                            $('#signimage').val(gprof.guestsign);
                        } else {
                            $('#imagePreview').attr('src', '').hide();
                            $('#oldsignimage').val('');
                            $('#signimage').val('');
                        }

                        pushNotify('success', 'Guest Change Profile', 'Guest profile loaded successfully', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    } else {
                        Swal.fire({
                            title: 'Guest Change Profile',
                            icon: 'error',
                            text: response.message || 'Failed to load guest data'
                        });
                    }
                },
                error: function(xhr) {
                    console.log(xhr.responseText);
                    Swal.fire({
                        title: 'Guest Change Profile',
                        icon: 'error',
                        text: 'An error occurred while loading guest data'
                    });
                }
            });
        }

        $(document).on('change', 'input[name="selected_guest"]', function() {

            let row = $(this).closest('tr');

            let mprof = row.data('mprof');
            let guestcode = row.data('guestcode');
            let sno1 = row.data('sno1');
            let docid = $('#docid').val();

            $.ajax({
                url: '/updatemprof',
                type: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    mprof: mprof,
                    guestcode: guestcode,
                    docid: docid,
                    sno1: sno1
                },
                success: function(response) {
                    if (response.success) {
                        Swal.fire({
                            title: 'Guest Add Profile',
                            icon: 'success',
                            text: response.message
                        }).then(() => {
                            window.location.reload();
                        });
                    } else {
                        Swal.fire({
                            title: 'Guest Add Profile',
                            icon: 'error',
                            text: response.message
                        });
                    }
                },
                error: function(xhr) {
                    console.log(xhr.responseText);
                }
            });

        });

        $(document).on('submit', '#walkinupdateform', function(e) {

            e.preventDefault();

            if ($('#newrowadd').val() == '0' && $(this).attr('action') == "{{ route('newguestprofileadd') }}") {
                Swal.fire({
                    title: 'Guest Add Profile',
                    icon: 'info',
                    text: 'No Changes Showing'
                });

                return;
            }

            let formData = new FormData(this);

            $.ajax({
                url: $(this).attr('action'),
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,

                success: function(response) {
                    if (response.success) {
                        Swal.fire({
                            title: 'Guest Add Profile',
                            icon: 'success',
                            text: response.message
                        }).then(() => {
                            window.location.reload();
                        });
                    } else {
                        Swal.fire({
                            title: 'Guest Add Profile',
                            icon: 'error',
                            text: response.message
                        });
                    }
                },
                error: function(xhr) {
                    pushNotify('error', 'Guest Add Profile', 'Something went wrong', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    console.log(xhr.responseText);
                }
            });

        });

        function resetform() {
            $('#walkinupdateform')[0].reset();

            $('#walkinupdateform')
                .find('input, textarea, select')
                .not(':button, :submit, :reset, :hidden')
                .val('');

            $('#stateguest').html('<option value="">Select State</option>');
            $('#countryguest').html('<option value="">Select Country</option>');
            $('#nationalityother').prop('selectedIndex', 0);
            $('#issuingcountry').html('<option value="">Select Country</option>');

            $('#walkinupdateform')
                .find('input[type="radio"], input[type="checkbox"]')
                .prop('checked', false);

            $('#walkinupdateform')
                .find('select')
                .prop('selectedIndex', 0);

            $('#profileimagepreview').attr('src', 'admin/images/preview.gif');

            $('#identityimagepreview').attr('src', 'admin/images/preview.gif');

            $('#imagePreview').attr('src', '').hide();

            $('#profileimage').val('');
            $('#identityimage').val('');

            $('#profileimagehidden').val('');
            $('#identityimagehidden').val('');
            $('#signimage').val('');
            $('#oldsignimage').val('');

            $('#vehiclediv').hide();
            $('#billingfield').hide();
            $('#issuefielda').hide();
            $('#issuefieldb').hide();
            $('#issuefieldc').hide();
        }

        $(document).on('click', '#addnewrow', function() {
            resetform();
            $('#newrowadd').val('1');

        });

    });

    function UpdateCitydata(cityElement, stateElement, countryElement, zipElement, nationalityother) {
        var citycode = document.getElementById(cityElement).value;
        document.getElementById('arrfrom').value = citycode;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', '/sendcitycode', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var result = JSON.parse(xhr.responseText);

                var stateSelect = $('#' + stateElement);
                stateSelect.empty();

                var countrySelect = $('#' + countryElement);
                countrySelect.empty();

                var nationalitySelect = $('#' + nationalityother);
                nationalitySelect.empty();

                for (var i = 0; i < result.states.length; i++) {
                    var state = result.states[i];
                    stateSelect.append('<option value="' + state.state_code + '">' + state.name + '</option>');
                }

                for (var j = 0; j < result.countries.length; j++) {
                    var country = result.countries[j];
                    countrySelect.append('<option value="' + country.country_code + '">' + country.country_name + '</option>');
                    nationalitySelect.append('<option value="' + country.nationality + '">' + country
                        .nationality + '</option>');
                }

                $('#' + zipElement).val(result.zipcode);
            }
        };
        var data = 'citycode=' + citycode + '&_token={{ csrf_token() }}';
        xhr.send(data);
    }

    $('#issuingcity').on('change', function() {
        var citycode = $('#issuingcity').val();
        var xhr = new XMLHttpRequest();
        xhr.open('POST', '/sendcitycode', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var result = JSON.parse(xhr.responseText);
                var countrySelect = $('#issuingcountry');
                countrySelect.empty();
                for (var j = 0; j < result.countries.length; j++) {
                    var country = result.countries[j];
                    countrySelect.append('<option value="' + country.country_code + '">' + country
                        .country_name + '</option>');
                }
            }
        };
        var data = 'citycode=' + citycode + '&_token={{ csrf_token() }}';
        xhr.send(data);
    });

    function validateAadhar2(idType, idNumber, iderr) {
        var selectedIdType = document.getElementById(idType).value;
        var idNumberInput = document.getElementById(idNumber);
        var idNumberError = document.getElementById(iderr);

        if (selectedIdType == 'Aadhar Card' && idNumberInput.value.length < 12) {
            idNumberInput.value = '';
            idNumberInput.setAttribute('maxlength', '12');
            idNumberInput.setAttribute('minlength', '12');
            idNumberInput.required = true;
            idNumberError.style.display = 'block';
        } else {
            idNumberInput.removeAttribute('maxlength');
            idNumberInput.removeAttribute('minlength');
            idNumberInput.required = false;
            idNumberError.style.display = 'none';
        }

    }


    function DisplayIssueFields2(idType, issuefielda, issuefieldb, issuefieldc) {
        var selectedIdType = document.getElementById(idType).value;
        var issuefielda = document.getElementById(issuefielda);
        var issuefieldb = document.getElementById(issuefieldb);
        var issuefieldc = document.getElementById(issuefieldc);
        // console.log(selectedIdType);

        if (selectedIdType === 'Passport') {
            issuefielda.style.display = 'block';
            issuefieldb.style.display = 'block';
            issuefieldc.style.display = 'block';
        } else {
            issuefielda.style.display = 'none';
            issuefieldb.style.display = 'none';
            issuefieldc.style.display = 'none';
        }
    }


    function DisplayBillingField2(paymentMethod, billingfield) {
        var selectedPaymentMethod = document.getElementById(paymentMethod).value;
        var billingfield = document.getElementById(billingfield);

        var selectedPaymentMethod = document.getElementById(paymentMethodElements[0].id).value;
        var billingfield = document.getElementById(billingfieldElements[0].id);

        if (selectedPaymentMethod === 'Bill To Company') {
            billingfield.style.display = 'block';
        } else {
            billingfield.style.display = 'none';
        }

    }

    function validatePercentagers2(input) {
        var rodisc = document.getElementById(input).value;

        if (rodisc.value > 100) {
            rodisc.value = '';
        }

        if (isNaN(rodisc.value)) {
            rodisc.value = '';
        }

        if (rodisc.value < 0) {
            rodisc.value = '';
        }

    }

    function validatePercentage2(input) {
        var rodisc = document.getElementById(input).value;

        if (rodisc.value > 100) {
            rodisc.value = '';
        }
        if (isNaN(rodisc.value)) {
            rodisc.value = '';
        }
        if (rodisc.value < 0) {
            rodisc.value = '';
        }
    }

    function DisplayVehicleNum2(travelmode, vehicleNum) {
        var selectedTravelMode = document.getElementById(travelmode).value;
        var vehicleNum = document.getElementById(vehicleNum);

        if (selectedTravelMode == 'By Car') {
            vehicleNum.style.display = 'block';
        } else {
            vehicleNum.style.display = 'none';
        }
    }

    function openFileInputpf(inputId) {
        document.getElementById(inputId).click();
    }

    function openidentity(inputId) {
        document.getElementById(inputId).click();
    }

    function readURLp(input, previewId) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            var preview = document.getElementById(previewId);
            reader.onload = function(e) {
                preview.src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

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

        $('#openModalBtn').click(function(e) {
            localStorage.setItem('gname', $('#guestname').val());
            e.preventDefault();
            e.stopPropagation();

            $('#myModal').modal('show');
            $('#guestname').val(localStorage.getItem('gname'));
        });

        $('.btn-close').click(function() {
            $('#myModal').modal('hide');
            $('#guestname').val(localStorage.getItem('gname'));
        });

        $('#clearCanvasBtn').click(function() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            paths = [];
            points = [];
            $('#signimage').val('');
        });

        $(document).on('click', '#saveBtn', function(e) {
            e.preventDefault();
            e.stopPropagation();
            $('#guestname').val(localStorage.getItem('gname'));

            if (paths.length === 0) {
                pushNotify('error', 'Guest Signature', 'Please draw signature first', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                return;
            }

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

            paths.forEach(function(path) {

                newCtx.strokeStyle = path.color;
                newCtx.beginPath();

                newCtx.moveTo(
                    path.points[0].x - minX,
                    path.points[0].y - minY
                );

                for (var i = 1; i < path.points.length; i++) {

                    newCtx.lineTo(
                        path.points[i].x - minX,
                        path.points[i].y - minY
                    );
                }

                newCtx.stroke();
            });

            var finalImage = newCanvas.toDataURL('image/png');

            $('#signimage').val(finalImage);

            $('#imagePreview')
                .attr('src', finalImage)
                .show();

            $('#myModal').modal('hide');

        });
    });
</script>
