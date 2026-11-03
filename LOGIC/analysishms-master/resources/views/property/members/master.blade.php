@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <style>
        #memberexttable tbody tr th {
            padding: 1px;
        }

        #memberexttable tbody tr td {
            padding: 1px;
        }
    </style>
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="mb-3">
                                <form method="post" action="{{ route('member.store') }}" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" value="1" name="totalrow" id="totalrow">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="member_id">Member ID</label>
                                                <input type="text" class="form-control" name="member_id" id="member_id">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="application_no">Application No</label>
                                                <input type="text" class="form-control" name="application_no" id="application_no">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="application_date">Application Date</label>
                                                <input type="date" class="form-control" name="application_date" id="application_date">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="membership_date">Membership Date</label>
                                                <input type="date" value="{{ ncurdate() }}" class="form-control" name="membership_date" id="membership_date">
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="col-form-label" for="reservationtype">Contact Person</label>
                                                <select class="form-control select2-multiple" name="greetings" id="greetings">
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
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="fullname">Full Name</label>
                                                <input type="text" class="form-control" name="fullname" id="fullname" required>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="fathername">Father Name</label>
                                                <input type="text" class="form-control" name="fathername" id="fathername">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="mothername">Mother Name</label>
                                                <input type="text" class="form-control" name="mothername" id="mothername">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="accountname">A/C Name</label>
                                                <input type="text" class="form-control" name="accountname" id="accountname">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="undergroup">Under Group</label>
                                                <select class="form-control  select2-multiple" name="undergroup" id="undergroup">
                                                    <option value="">Select</option>
                                                    @foreach ($groupdata as $item)
                                                        <option value="{{ $item->group_code }}">{{ $item->group_name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="membercategory">Category</label>
                                                <select class="form-control  select2-multiple" name="membercategory" id="membercategory">
                                                    <option value="">Select</option>
                                                    @foreach (membercategories() as $item)
                                                        <option value="{{ $item->code }}">{{ $item->title }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="allowcredit">Allow Credit</label>
                                                <select class="form-control  select2-multiple" name="allowcredit" id="allowcredit">
                                                    <option value="">Select</option>
                                                    <option value="yes">Yes</option>
                                                    <option value="no">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="creditlimit">Creditlimit</label>
                                                <input type="number" class="form-control" name="creditlimit" id="creditlimit" readonly>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="activeyn">Active</label>
                                                <select class="form-control  select2-multiple" name="activeyn" id="activeyn">
                                                    <option value="">Select</option>
                                                    <option value="yes">Yes</option>
                                                    <option value="no">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="gender">Gender</label>
                                                <select class="form-control  select2-multiple" name="gender" id="gender">
                                                    <option value="">Select</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">female</option>
                                                    <option value="other">Other</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="dob">Date Of Birth</label>
                                                <input type="date" class="form-control" name="dob" id="dob">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="nationality">Nationality</label>
                                                <select class="form-control select2-multiple" name="nationality" id="nationality">
                                                    <option value="">Select</option>
                                                    @foreach (allcountries() as $item)
                                                        <option value="{{ $item->nationality }}">{{ $item->nationality }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="bloodgroup">Blood Group</label>
                                                <select class="form-control select2-multiple" name="bloodgroup" id="bloodgroup">
                                                    <option value="">Select Blood Group</option>
                                                    <option value="A+">A+</option>
                                                    <option value="A-">A-</option>
                                                    <option value="B+">B+</option>
                                                    <option value="B-">B-</option>
                                                    <option value="AB+">AB+</option>
                                                    <option value="AB-">AB-</option>
                                                    <option value="O+">O+</option>
                                                    <option value="O-">O-</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="relegion">Religion</label>
                                                <select class="form-control select2-multiple" name="relegion" id="relegion">
                                                    <option value="">Select Religion</option>
                                                    <option value="hindu">Hindu</option>
                                                    <option value="muslim">Muslim</option>
                                                    <option value="christian">Christian</option>
                                                    <option value="sikh">Sikh</option>
                                                    <option value="jain">Jain</option>
                                                    <option value="buddhist">Buddhist</option>
                                                    <option value="judaism">Judaism</option>
                                                    <option value="bahai">Bahá'í Faith</option>
                                                    <option value="confucianism">Confucianism</option>
                                                    <option value="taoism">Taoism</option>
                                                    <option value="shinto">Shinto</option>
                                                    <option value="zoroastrianism">Zoroastrianism</option>
                                                    <option value="animism">Animism</option>
                                                    <option value="atheism">Atheism</option>
                                                    <option value="agnosticism">Agnosticism</option>
                                                    <option value="other">Other</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="pancard">Pancard</label>
                                                <input type="text" class="form-control" name="pancard" id="pancard">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="idtype">IDType</label>
                                                <select name="idtype" id="idtype" class="form-control select2-multiple">
                                                    <option value="">Select</option>
                                                    <option value="Aadhar Card">Aadhar Card</option>
                                                    <option value="Driving Licence">Driving Licence</option>
                                                    <option value="Passport">Passport</option>
                                                    <option value="National Identity Card">National Identity Card</option>
                                                    <option value="Voter Id">Voter Id</option>
                                                    <option value="Green Card">Green Card</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="idnumber">IDNumber</label>
                                                <input type="text" class="form-control" id="idnumber" name="idnumber" placeholder="ID Number">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="gstin">GSTIN</label>
                                                <input type="text" class="form-control" name="gstin" id="gstin">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="blacklisted">Black Listed</label>
                                                <select class="form-control select2-multiple" name="blacklisted" id="blacklisted">
                                                    <option value="">Select</option>
                                                    <option value="yes">Yes</option>
                                                    <option value="no">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3 text-center">
                                            <label for="imageupload">Member Photo</label><br>
                                            <img id="upload-img" src="https://placehold.co/150x150?text=Click+To+Upload" alt="Click to Upload" style="cursor:pointer; border:1px solid #ddd; padding:5px; border-radius:5px;">
                                            <input type="file" name="member_photo" id="file-input" accept="image/*" style="display: none;">
                                        </div>

                                        <div class="row">
                                            <input type="hidden" name="signimage" id="signimage">
                                            <div class="col-md-6">
                                                <h5 class="signature-heading">
                                                    <i class="fas fa-pen-signature"></i> Member Signature
                                                </h5>
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
                                                                <h6 class="modal-title">Member Signature
                                                                </h6>
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
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <img src="https://placehold.co/150x150?text=Analysis" id="imagePreview" alt="Signature Preview" />
                                            </div>
                                        </div>

                                    </div>

                                    <div class="mt-4">
                                        <div class="mb-3">
                                            <button type="button" id="btnFamily" class="btn btn-primary">Family Member</button>
                                            <button type="button" id="btnAddress" class="btn btn-secondary">Address</button>
                                        </div>

                                        <div id="familySection" class="border p-3 mb-3" style="display:none;">
                                            <table id="memberexttable" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>SN</th>
                                                        <th>Relation</th>
                                                        <th>Prefix</th>
                                                        <th>Name</th>
                                                        <th>Gender</th>
                                                        <th>DOB</th>
                                                        <th>Anniversary</th>
                                                        <th>Mobile No.</th>
                                                        <th>Email</th>
                                                        <th>Lvl</th>
                                                        <th>Card Issue</th>
                                                        <th>Card Valid</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>
                                                            <select class="form-control select2-multiple" name="relation1" id="relation1">
                                                                <option value="">Select</option>
                                                                <option value="Spouse">Spouse</option>
                                                                <option value="Husband">Husband</option>
                                                                <option value="Son">Son</option>
                                                                <option value="Daughter">Daughter</option>
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <select class="form-control select2-multiple" name="greeting1" id="greeting1">
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
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control" name="extname1" id="extname1">
                                                        </td>
                                                        <td>
                                                            <select class="form-control select2-multiple" name="extgender1" id="extgender1">
                                                                <option value="">Select</option>
                                                                <option value="male">Male</option>
                                                                <option value="female">female</option>
                                                                <option value="other">Other</option>
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <input type="date" class="form-control" name="extdob1" id="extdob1">
                                                        </td>
                                                        <td>
                                                            <input type="date" class="form-control" name="extdanniversary1" id="extdanniversary1">
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control" name="extmob1" id="extmob1">
                                                        </td>
                                                        <td>
                                                            <input type="email" class="form-control" name="extmail1" id="extmail1">
                                                        </td>
                                                        <td>
                                                            <select class="form-control select2-multiple" name="extlevel1" id="extlevel1">
                                                                <option value="">Select</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                <option value="7">7</option>
                                                                <option value="8">8</option>
                                                                <option value="9">9</option>
                                                                <option value="10">10</option>
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <input type="date" class="form-control" name="extcardissue1" id="extcardissue1">
                                                        </td>
                                                        <td>
                                                            <input type="date" class="form-control" name="extcardvalid1" id="extcardvalid1">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div id="addressSection" class="border p-3" style="display:none;">
                                            <button type="button" class="btn btn-sm btn-info btn-residental">Residental Address</button>
                                            <button type="button" class="btn btn-sm btn-info btn-workplace">WorkPlace Address</button>

                                            <div class="residentalsection" style="display:none;">
                                                <div class="row">

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="residentaladdress">Residental Address</label>
                                                            <textarea class="form-control" name="residentaladdress" id="residentaladdress" rows="2" placeholder="Enter Full Address"></textarea>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="residentalcity">City</label>
                                                            <select class="form-control select2-multiple" name="residentalcity" id="residentalcity">
                                                                <option value="">Select</option>
                                                                @foreach (allcities() as $item)
                                                                    <option data-pin_code="{{ $item->zipcode }}" data-country_code="{{ $item->country }}" data-state_code="{{ $item->state }}" value="{{ $item->city_code }}">{{ $item->cityname }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="residentalstate">State</label>
                                                            <select class="form-control select2-multiple" name="residentalstate" id="residentalstate">
                                                                <option value="">Select</option>
                                                                @foreach (allstates() as $item)
                                                                    <option value="{{ $item->state_code }}">{{ $item->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="residentalcountry">Country</label>
                                                            <select class="form-control select2-multiple" name="residentalcountry" id="residentalcountry">
                                                                <option value="">Select</option>
                                                                @foreach (allcountries() as $item)
                                                                    <option value="{{ $item->country_code }}">{{ $item->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="residentalpincode">Pin Code</label>
                                                            <input type="text" class="form-control" name="residentalpincode" id="residentalpincode" readonly>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <input checked type="radio" value="residental" class="form-check-input" name="correspondanceaddress" id="correspondanceaddress1">
                                                            <label for="correspondanceaddress1">Correspondance Address</label>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="workplacesection" style="display:none;">
                                                <div class="row">

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="workplaceaddress">WorkPlace Address</label>
                                                            <textarea class="form-control" name="workplaceaddress" id="workplaceaddress" rows="2" placeholder="Enter Full Address"></textarea>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="workplacecity">City</label>
                                                            <select class="form-control select2-multiple" name="workplacecity" id="workplacecity">
                                                                <option value="">Select</option>
                                                                @foreach (allcities() as $item)
                                                                    <option data-pin_code="{{ $item->zipcode }}" data-country_code="{{ $item->country }}" data-state_code="{{ $item->state }}" value="{{ $item->city_code }}">{{ $item->cityname }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="workplacestate">State</label>
                                                            <select class="form-control select2-multiple" name="workplacestate" id="workplacestate">
                                                                <option value="">Select</option>
                                                                @foreach (allstates() as $item)
                                                                    <option value="{{ $item->state_code }}">{{ $item->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="workplacecountry">Country</label>
                                                            <select class="form-control select2-multiple" name="workplacecountry" id="workplacecountry">
                                                                <option value="">Select</option>
                                                                @foreach (allcountries() as $item)
                                                                    <option value="{{ $item->country_code }}">{{ $item->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="workplacepincode">Pin Code</label>
                                                            <input type="text" class="form-control" name="workplacepincode" id="workplacepincode" readonly>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <input type="radio" value="workplace" class="form-check-input" name="correspondanceaddress" id="correspondanceaddress2">
                                                            <label for="correspondanceaddress2">Correspondance Address</label>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-center mt-4">
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </div>
                                </form>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Member ID</th>
                                            <th>App. No.</th>
                                            <th>App. Date</th>
                                            <th>Mem. Date</th>
                                            <th>Total Mem.</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @foreach (membermast() as $item)
                                            <tr>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->member_id }}</td>
                                                <td>{{ $item->appno }}</td>
                                                <td>{{ date('d-m-Y', strtotime($item->appdate)) }}</td>
                                                <td>{{ date('d-m-Y', strtotime($item->membership_date)) }}</td>
                                                <td>{{ $item->totalmember }}</td>
                                                <td class="ins">
                                                    <a
                                                        href="master/update/{{ $item->sub_code }}">
                                                        <button class="btn btn-success btn-sm"><i
                                                                class="fa-regular fa-pen-to-square"></i>Edit
                                                        </button>
                                                    </a>
                                                    <a
                                                        href="master/delete/{{ $item->sub_code }}">
                                                        <button class="btn btn-danger btn-sm"><i
                                                                class="fa-solid fa-trash"></i> Delete
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
        $(document).ready(function() {
            $(document).on('change', '#allowcredit', function() {
                $('#creditlimit').val($('#allowcredit').val() == 'yes' ? '' : '').prop('readonly', $('#allowcredit').val() == 'yes' ? false : true);
            });

            const $img = $('#upload-img');
            const $fileInput = $('#file-input');

            $img.on('click', function() {
                $fileInput.click();
            });

            $fileInput.on('change', function(event) {
                const file = event.target.files[0];
                if (file && file.type.startsWith('image/')) {
                    const reader = new FileReader();
                    reader.onload = function(e) {
                        $img.attr('src', e.target.result);
                    };
                    reader.readAsDataURL(file);
                }
            });

            setTimeout(() => {
                $('#btnFamily').trigger('click');
            }, 500);

            $('#btnFamily').click(function() {
                $('#familySection').show();
                $('#addressSection').hide();
            });

            $('#btnAddress').click(function() {
                $('#addressSection').show();
                $('#familySection').hide();
                $('.btn-residental').trigger('click');
            });

            $(document).on('click', '.btn-residental', function() {
                $('.residentalsection').show();
                $('.workplacesection').hide();
            });

            $(document).on('click', '.btn-workplace', function() {
                $('.workplacesection').show();
                $('.residentalsection').hide();
            });

            $(document).on('change', '#residentalcity', function() {
                const state_code = $(this).find('option:selected').data('state_code');
                const country_code = $(this).find('option:selected').data('country_code');
                const pin_code = $(this).find('option:selected').data('pin_code');
                $('#residentalstate').val(state_code).change();
                $('#residentalcountry').val(country_code).change();
                $('#residentalpincode').val(pin_code);
                $('#residentalpincode').prop('readonly', pin_code == '' ? false : true);
            });

            $(document).on('change', '#workplacecity', function() {
                const state_code = $(this).find('option:selected').data('state_code');
                const country_code = $(this).find('option:selected').data('country_code');
                const pin_code = $(this).find('option:selected').data('pin_code');
                $('#workplacestate').val(state_code).change();
                $('#workplacecountry').val(country_code).change();
                $('#workplacepincode').val(pin_code);
                $('#workplacepincode').prop('readonly', pin_code == '' ? false : true);
            });

            $(document).on('keypress', 'input[type="email"]', function(e) {
                if (e.which == 13) {
                    e.preventDefault();
                    addRawRow();
                }
            });

            function addRawRow() {
                var $tbody = $('#memberexttable tbody');
                var lastIndex = parseInt($tbody.find('tr:last td:first').text());
                var newIndex = lastIndex + 1;
                $('#totalrow').val(newIndex);

                var rowHtml = `
                        <tr>
                            <td>${newIndex}</td>
                            <td>
                                <select class="form-control select2-multiple" name="relation${newIndex}" id="relation${newIndex}">
                                    <option value="">Select</option>
                                    <option value="Spouse">Spouse</option>
                                    <option value="Husband">Husband</option>
                                    <option value="Son">Son</option>
                                    <option value="Daughter">Daughter</option>
                                </select>
                            </td>
                            <td>
                                <select class="form-control select2-multiple" name="greeting${newIndex}" id="greeting${newIndex}">
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
                            </td>
                            <td><input type="text" class="form-control" name="extname${newIndex}" id="extname${newIndex}"></td>
                            <td>
                                <select class="form-control select2-multiple" name="extgender${newIndex}" id="extgender${newIndex}">
                                    <option value="">Select</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </td>
                            <td><input type="date" class="form-control" name="extdob${newIndex}" id="extdob${newIndex}"></td>
                            <td><input type="date" class="form-control" name="extdanniversary${newIndex}" id="extdanniversary${newIndex}"></td>
                            <td><input type="text" class="form-control" name="extmob${newIndex}" id="extmob${newIndex}"></td>
                            <td><input type="email" class="form-control" name="extmail${newIndex}" id="extmail${newIndex}"></td>
                            <td>
                                <select class="form-control select2-multiple" name="extlevel${newIndex}" id="extlevel${newIndex}">
                                    <option value="">Select</option>
                                    <option value="">Select</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </td>
                            <td><input type="date" class="form-control" name="extcardissue${newIndex}" id="extcardissue${newIndex}"></td>
                            <td><input type="date" class="form-control" name="extcardvalid${newIndex}" id="extcardvalid${newIndex}"></td>
                        </tr>
                        `;

                $tbody.append(rowHtml);

                $tbody.find(`input#extmail${newIndex}`).focus();
            }
        });

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
@endsection
