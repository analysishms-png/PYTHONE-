<div style="overflow: auto;" class="modal fade" id="formguestdt">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Guest</h5>
                <button onclick="DeleteData()" type="button" class="close"
                    data-dismiss="modal"><span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row mt-2">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="profileimagepreview"></label>
                            <label for="profileimagepreview">
                                <img class="preview prevprofile"
                                    id="profileimagepreview"
                                    src="{{ asset('admin/images/preview.gif') }}"
                                    alt="your image"
                                    onclick="openFileInput('profileimage');" />
                                <div style="text-align: center;">
                                    {{-- <button
                                                                                    onclick="startWebcam('profileimagepreview', 'openWebcamBtn', 'webcamContainer', 'closeBtn', 'videoElement', 'captureBtn', 'capturedImageCanvas')"
                                                                                    type="button"
                                                                                    class="mt-2 openWebcamBtn p-1"
                                                                                    id="openWebcamBtn">Open
                                                                                    Webcam <i
                                                                                        class="fa-solid fa-camera"></i></button>
                                                                                --}}
                                </div>
                            </label>
                            <input type="hidden" name="existing_profileimage"
                                id="existing_profileimage">
                            <input type="file" name="profileimage"
                                class="profileimage" id="profileimage"
                                onchange="readURL(this, 'profileimagepreview');" />
                        </div>
                    </div>
                    <canvas id="capturedImageCanvas"
                        style="display: none;"></canvas>

                    {{-- <div id="webcamContainer" class="video-container">
                                                                    <video autoplay="true" id="videoElement"
                                                                        class="embed-responsive embed-responsive-4by3"></video>
                                                                    <button type="button" id="closeBtn" class="btn"><i
                                                                            class="fa-solid fa-xmark"></i></button>
                                                                    <button type="button" id="captureBtn" class="btn">
                                                                        <img class="img-fluid captureimg"
                                                                            src="admin/icons/flaticon/camera.svg"
                                                                            alt="camera"></button>
                                                                </div> --}}

                    <div class="col-md-9">
                        <div class="row">
                            <div class="">
                                <div class="form-group">
                                    <label for="reservationtype">Guest
                                        Name</label>
                                    <div class="d-flex">
                                        <select style="width: auto;"
                                            class="form-control"
                                            name="greetingsguest"
                                            id="greetingsguest">
                                            <option value="Mr.">Mr.</option>
                                            <option value="Ms.">Ms.</option>
                                            <option value="Ma'am">Ma'am</option>
                                            <option value="Dr.">Dr.</option>
                                            <option value="Prof.">Prof.</option>
                                            <option value="Mrs.">Mrs.</option>
                                            <option value="Miss">Miss</option>
                                            <option value="Sir">Sir</option>
                                            <option value="Madam">Madam</option>
                                        </select>
                                        <input style="width: auto;" type="text"
                                            name="guestname"
                                            placeholder="Full Name"
                                            maxlength="25" id="guestname"
                                            class="form-control">
                                    </div>
                                </div>
                            </div>


                            <div class="">
                                <div class="form-group">
                                    <label for="guestmobile">Mobile</label>
                                    <input type="tel" class="form-control"
                                        id="guestmobile" name="guestmobile"
                                        placeholder="Mobile">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="gender">Gender</label>
                                <select name="genderguest" id="genderguest"
                                    class="form-control">
                                    <option value="">Select</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control"
                                        id="guestemail" name="guestemail"
                                        placeholder="Email">
                                    <small class="form-text text-muted">Use
                                        comma
                                        to
                                        add multiple Email IDs</small>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="arrfrom">Arrival From</label>
                                    <select name="arrfrom" id="arrfrom"
                                        class="form-control">
                                        <option value="">Select</option>
                                        @foreach ($citydata as $list)
                                            <option value="{{ $list->city_code }}">
                                                {{ $list->cityname }}
                                            </option>
                                        @endforeach
                                    </select>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="destination">Destination</label>
                                    <select name="destination" id="destination"
                                        class="form-control">
                                        <option value="">Select</option>
                                        @foreach ($citydata as $list)
                                            <option value="{{ $list->city_code }}">
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
                        <select class="form-control" name="cityguest"
                            id="cityguest">
                            <option value="">Select City</option>
                            @foreach ($citydata as $list)
                                <option value="{{ $list->city_code }}">
                                    {{ $list->cityname }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="stateguest">State</label>
                            <select class="form-control" name="stateguest"
                                id="stateguest">
                                <option value="">Select State
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="countryguest">Country</label>
                            <select class="form-control" name="countryguest"
                                id="countryguest">
                                <option value="">Select Country
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="zipguest">Zip</label>
                            <input type="text" class="form-control"
                                id="zipguest" name="zipguest"
                                placeholder="Zip Code">
                        </div>
                    </div>

                </div>

                <div class="row">
                    <input type="hidden" name="signimage" id="signimage">
                    <div class="col-md-6">
                        <h1 class="signature-heading">
                            <i class="fas fa-pen-signature"></i> Guest Signature
                        </h1>
                        <div class="text-center mt-5 mb-3">
                            <button type="button" id="openModalBtn"
                                class="btn btn-primary">Sign Your Name</button>
                        </div>

                        <div id="myModal" class="modal fade signaturemodal"
                            tabindex="-1" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Guest Signature
                                        </h5>
                                        <button type="button" class="btn-close"
                                            data-bs-dismiss="modal"
                                            aria-label="Close"><i
                                                class="fa-solid fa-xmark"></i></button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Use Pen Tablet For a better
                                            signature: <a target="_blank"
                                                class="text-info font-weight-bold"
                                                href="https://www.amazon.in/HUION-H420-Pressure-Battery-Free-4-17x2-6/dp/B00DM24HNE">HUION
                                                USB PEN TABLET</a></p>
                                        <input type="color" id="colorPicker"
                                            value="#000000">
                                        <canvas id="signatureCanvas" width="400"
                                            height="200"></canvas>
                                        <div class="signature-tips">
                                            Tip: Take your time and sign slowly
                                            for a smooth signature</br>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <button type="button"
                                                    id="clearCanvasBtn"
                                                    class="btn btn-secondary mt-3">Clear</button>
                                            </div>
                                            <div class="col-4">
                                                <button type="button"
                                                    id="downloadBtn"
                                                    class="btn btn-success mt-3">Save</button>
                                            </div>
                                            {{-- <div class="col-4">
                                                                                            <button type="button"
                                                                                                id="previewBtn"
                                                                                                class="btn btn-primary mt-3">Preview</button>
                                                                                        </div> --}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img id="imagePreview" alt="Signature Preview" />
                    </div>
                </div>

                <div id="accordion-one" class="accordion">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="mb-0" data-toggle="collapse"
                                data-target="#collapseOne" aria-expanded="true"
                                aria-controls="collapseOne"><i class="fa"
                                    aria-hidden="true"></i>
                                Other Details
                            </h5>
                        </div>

                        <div id="collapseOne" class="collapse show"
                            data-parent="#accordion-one">

                            <div class="row mt-2">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="identityInfo">Identity
                                            Information</label>
                                        <label for="identityimagepreview">
                                            <img class="preview"
                                                id="identityimagepreview"
                                                src="{{ asset('admin/images/preview.gif') }}"
                                                alt="your image"
                                                onclick="openFileInput2('identityimage');" />
                                        </label>
                                        <div style="text-align: center;">
                                            {{-- <button
                                                                                            onclick="startWebcam('identityimagepreview', 'openWebcamBtn2', 'webcamContainer2', 'closeBtn2', 'videoElement2', 'captureBtn2', 'capturedImageCanvas2')"
                                                                                            type="button"
                                                                                            class="mt-2 openWebcamBtn p-1"
                                                                                            id="openWebcamBtn2">Open
                                                                                            Webcam <i
                                                                                                class="fa-solid fa-camera"></i></button>
                                                                                        --}}
                                        </div>
                                        <input type="hidden"
                                            name="existing_identityimage"
                                            id="existing_identityimage">
                                        <input type="file" name="identityimage"
                                            id="identityimage"
                                            class="identityimage"
                                            onchange="readURL2(this, 'identityimagepreview');" />
                                    </div>
                                </div>

                                <canvas id="capturedImageCanvas2"
                                    style="display: none;"></canvas>

                                {{-- <div id="webcamContainer2"
                                                                                class="video-container">
                                                                                <video autoplay="true" id="videoElement2"
                                                                                    class="embed-responsive embed-responsive-4by3"></video>
                                                                                <button type="button" id="closeBtn2"
                                                                                    class="btn"><i
                                                                                        class="fa-solid fa-xmark"></i></button>
                                                                                <button type="button" id="captureBtn2"
                                                                                    class="btn">
                                                                                    <img class="img-fluid captureimg"
                                                                                        src="admin/icons/flaticon/camera.svg"
                                                                                        alt="camera">
                                                                                </button>
                                                                            </div> --}}

                                <div class="col-md-9">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="idType">ID
                                                    Type</label>
                                                <select
                                                    onchange="validateAadhar('idType', 'idNumber', 'idNumberError');DisplayIssueFields('idType','issuefielda', 'issuefieldb', 'issuefieldc')"
                                                    name="idType" id="idType"
                                                    class="form-control idTypeSelect">
                                                    <option value="">Select
                                                    </option>
                                                    <option value="Aadhar Card">
                                                        Aadhar Card</option>
                                                    <option
                                                        value="Driving Licence">
                                                        Driving Licence</option>
                                                    <option value="Passport">
                                                        Passport</option>
                                                    <option
                                                        value="National Identity Card">
                                                        National Identity Card
                                                    </option>
                                                    <option value="Voter Id">
                                                        Voter Id
                                                    </option>
                                                    <option value="Green Card">
                                                        Green Card
                                                    </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="idNumber">ID
                                                    Number</label>
                                                <input type="text"
                                                    oninput="this.value = this.value.toUpperCase()"
                                                    class="form-control idNumberInput"
                                                    id="idNumber"
                                                    name="idNumber"
                                                    placeholder="ID Number">
                                                <span class="idNumberError"
                                                    id="idNumberError"
                                                    style="display:none;color: red; position: fixed;">Aadhar
                                                    number must be 12 digits and
                                                    contain only numbers</span>
                                            </div>
                                        </div>

                                        <div style="display: none;"
                                            id="issuefielda" class="col-md-4">
                                            <div class="form-group">
                                                <label for="issuingCity">Issuing
                                                    City</label>
                                                <select id="issuingcity"
                                                    name="issuingcity"
                                                    class="form-control">
                                                    <option value="">Select City
                                                    </option>
                                                    @foreach ($citydata as $list)
                                                        <option
                                                            value="{{ $list->city_code }}">
                                                            {{ $list->cityname }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div style="display: none;"
                                            id="issuefieldb" class="col-md-4">
                                            <div class="form-group">
                                                <label
                                                    for="issuingcountry">Issuing
                                                    Country</label>
                                                <select id="issuingcountry"
                                                    class="form-control"
                                                    name="issuingcountry">
                                                    <option value="">Select
                                                        Country</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div style="display: none;"
                                            id="issuefieldc" class="col-md-4">
                                            <div class="form-group">
                                                <label for="expiryDate">Expiry
                                                    Date</label>
                                                <input onchange="PastDtNA(this)"
                                                    type="date"
                                                    class="form-control"
                                                    name="expiryDate"
                                                    id="expiryDate">
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
                                        <select
                                            onchange="DisplayBillingField('paymentMethod', 'billingfield')"
                                            class="paymentmethodselect form-control"
                                            name="paymentMethod"
                                            id="paymentMethod"
                                            class="form-control">
                                            <option value="">Select</option>
                                            <option value="Cash">Cash</option>
                                            <option value="Bill To Company">Bill
                                                To Company</option>
                                            <option value="UPI">UPI</option>
                                            <option value="Debit Card">Debit
                                                Card</option>
                                            <option value="Credit Card">Credit
                                                Card</option>
                                        </select>
                                    </div>
                                </div>
                                <div id="billingfield" style="display: none;"
                                    class="col-md-3">
                                    <div class="form-group">
                                        <label for="billingAccount">Direct
                                            Billing</label>
                                        <select name="billingAccount"
                                            id="billingAccount"
                                            class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($company as $item)
                                                <option
                                                    value="{{ $item->sub_code }}">
                                                    {{ $item->name }}
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="birthDate">Birth
                                            Date</label>
                                        <input name="birthDate"
                                            onchange="FutureDtNA(this)"
                                            type="date" class="form-control"
                                            id="birthDate">
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="purpofvisit">Purpose Of
                                            Visit</label>
                                        <select class="form-control"
                                            id="purpofvisit" name="purpofvisit">
                                            <option value="">Select</option>
                                            <option value="Official">Official
                                            </option>
                                            <option value="Personal">Personal
                                            </option>
                                            <option value="Business">Business
                                            </option>
                                            <option value="Tourist">Tourist
                                            </option>
                                            <option value="Other">Other</option>
                                        </select>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label
                                            for="nationalityother">Nationality</label>
                                        <select class="form-control"
                                            id="nationalityother"
                                            name="nationalityother">
                                            <option value="">Select</option>
                                            @foreach ($nationalitydata as $item)
                                                <option
                                                    value="{{ $item->nationality }}">
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
                                        <select name="vipStatus" id="vipStatus"
                                            class="form-control">
                                            <option value="">Select Status
                                            </option>
                                            @foreach ($gueststatus as $list)
                                                <option value="{{ $list->gcode }}">
                                                    {{ $list->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="weddingAnniversary">Wedding
                                            Anniversary</label>
                                        <input name="weddingAnniversary"
                                            onchange="FutureDtNA(this)"
                                            type="date" class="form-control"
                                            id="weddingAnniversary">
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="marital_status">Marital
                                            Status</label>
                                        <select name="marital_status"
                                            id="marital_status"
                                            class="form-control">
                                            <option value="">Select</option>
                                            <option value="Single">Single
                                            </option>
                                            <option value="Married">Married
                                            </option>
                                            <option value="Divorced">Divorced
                                            </option>
                                            <option value="Widowed">Widowed
                                            </option>
                                            <option value="Separated">Separated
                                            </option>
                                            <option value="Other">Other</option>
                                        </select>
                                    </div>
                                </div>

                            </div>

                            <div class="row">

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-form-label"
                                            for="rodisc">Room Discount %</label>
                                        <input type="text" step="0.01"
                                            min="0.00" max="99.99"
                                            placeholder="0.00" name="rodisc"
                                            id="rodisc"
                                            class="form-control percent_value"
                                            oninput="validatePercentage('rodisc')">
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-form-label"
                                            for="rsdisc">Rs Disc %</label>
                                        <input type="text" step="0.01"
                                            min="0.00" max="99.99"
                                            placeholder="0.00" name="rsdisc"
                                            id="rsdisc"
                                            class="form-control percent_value"
                                            oninput="validatePercentagers('rsdisc')">
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-form-label"
                                            for="travelmode">Travel Mode</label>
                                        <select
                                            onchange="DisplayVehicleNum('travelmode', 'vehiclediv')"
                                            name="travelmode"
                                            class="form-control"
                                            id="travelmode">
                                            <option value="">Select</option>
                                            <option value="By Road">By Road
                                            </option>
                                            <option value="By Air">By Air
                                            </option>
                                            <option value="By Car">By Car
                                            </option>
                                            <option value="By Bus">By Bus
                                            </option>
                                            <option value="By Train">By Train
                                            </option>
                                            <option value="By Ship">By Ship
                                            </option>
                                        </select>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div id="vehiclediv" style="display: none;"
                                    class="col-md-4">
                                    <div class="form-group">
                                        <label for="vehiclenum"
                                            class="col-form-label">Vehicle
                                            Number</label>
                                        <input type="text"
                                            oninput="this.value = this.value.toUpperCase()"
                                            name="vehiclenum" id="vehiclenum"
                                            class="form-control"
                                            placeholder="Enter Vehicle Number">

                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button onclick="DeleteData()" type="button"
                    class="btn btn-secondary"
                    data-dismiss="modal">Close</button>
                <button type="button" data-dismiss="modal"
                    class="btn btn-primary">Save
                    changes</button>
            </div>
        </div>
    </div>
</div>
