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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    <form class="form" name="walkinupdateform" action="{{ route('walkinguestupdate') }}" method="POST"
        enctype="multipart/form-data">
        @csrf
        <input type="hidden" value="{{ $data->docid }}" name="docid" id="docid">
        <input type="hidden" value="{{ $data->sno1 }}" name="sno1" id="sno1">
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
                                @php
                                    $prefixes = ['Mr.', 'Ms.', 'Mam', 'Dr.', 'Prof.', 'Mrs.', 'Miss', 'Sir', 'Madam'];
                                @endphp

                                <select style="width: auto;" class="form-control" name="greetingsguest" id="greetingsguest">
                                    <option value="">Select</option>

                                    @foreach ($prefixes as $prefix)
                                        <option value="{{ $prefix }}" @selected($data->con_prefix === $prefix)>
                                            {{ $prefix }}
                                        </option>
                                    @endforeach
                                </select>

                                <input style="width: auto;" type="text" name="guestname" placeholder="Full Name"
                                    maxlength="50" value="{{ $data->name }}" id="guestname" class="form-control">
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
                    name="cityguest" id="cityguest">
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
                                        <button type="button" id="downloadBtn" class="btn btn-success mt-3">Save</button>
                                    </div>
                                    {{-- <div class="col-4">
                                        <button type="button" id="previewBtn" class="btn btn-primary mt-3">Preview</button>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                    </div>
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

        <button style="float: inline-end;" type="submit" class="btn btn-primary">Save
            changes</button>
    </form>
</div>
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
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
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
    });
</script>
