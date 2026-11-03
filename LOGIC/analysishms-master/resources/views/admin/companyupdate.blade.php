@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-regular fa-pen-to-square"></i>
                            Company Update</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-validation">
                                <form class="form" name="companyregformupdate" id="companyregformupdate"
                                    action="{{ route('company.update') }}" method="POST" enctype="multipart/form-data"
                                    onsubmit="return validateFormUpdate();">
                                    @csrf
                                    <div class="text-sm-right">
                                        <a id="bankdetailbtn" class="btn btn-outline-info">Update Bank Details <i
                                                class="fa-solid fa-building-columns"></i></a>
                                    </div>

                                    <div class="modal fade" tabindex="-1" id="bankdetailsmodal" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content" id="modalContent">
                                                <div class="modal-header">
                                                    <h5>Bank Details</h5>
                                                    <button id="modalclosebtn" type="button" class="close"
                                                        data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label class="col-form-label" for="bankname">Bank Name
                                                            </label>
                                                            <input type="text"
                                                                oninput="this.value = this.value.replace(/[^a-zA-Z\s]/g, '')"
                                                                value="{{ $companydata->bankname }}" name="bankname"
                                                                id="bankname" class="form-control" placeholder="Bank Name">
                                                            <span id="bankname_error" class="text-danger"></span>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="ol-form-label" for="branchname">Branch
                                                                Name </label>
                                                            <input type="text"
                                                                oninput="this.value = this.value.replace(/[^a-zA-Z\s]/g, '')"
                                                                value="{{ $companydata->branchname }}" name="branchname"
                                                                id="branchname" class="form-control"
                                                                placeholder="Branch Name">
                                                            <span id="branchname_error" class="text-danger"></span>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="col-form-label" for="ifsccode">IFSC Code
                                                            </label>
                                                            <input type="text" value="{{ $companydata->ifsccode }}"
                                                                oninput="this.value = this.value.toUpperCase()"
                                                                name="ifsccode" id="ifsccode" class="form-control"
                                                                placeholder="IFSC Code">
                                                            <span id="ifsccode_error" class="text-danger"></span>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="col-form-label" for="acnum">Account
                                                                Number</label>
                                                            <input type="text" value="{{ $companydata->acnum }}"
                                                                oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');"
                                                                name="acnum" id="acnum" class="form-control"
                                                                placeholder="Account Number">
                                                            <span id="acnum_error" class="text-danger"></span>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="col-form-label" for="acname">Account
                                                                Name</label>
                                                            <input type="text" value="{{ $companydata->acname }}"
                                                                oninput="this.value = this.value.toUpperCase().replace(/[^A-Z\s]/g, '');"
                                                                name="acname" id="acname" class="form-control"
                                                                placeholder="Account Name">
                                                            <span id="acname_error" class="text-danger"></span>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div style="position: absolute;transform: translate(50%, 50%);"
                                                                class="mt-3">
                                                                <button type="button" id="bankdetailsave"
                                                                    class="btn btn-success">Save</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <input type="hidden" value="{{ $companydata->propertyid }}" name="property_id">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="company_name">Company Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="company_name" id="company_name" maxlength="100"
                                                class="form-control" value="{{ $companydata->comp_name }}"
                                                placeholder="Company Name">
                                            <span id="company_name_error" class="text-danger fadeindown"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="username">Username <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="username" id="username" maxlength="10"
                                                class="form-control" value="{{ $companydata->u_name }}"
                                                placeholder="User Name">
                                            <span id="username_error" class="text-danger"></span>
                                            @error('username')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="mobile">Mobile <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="mobile" id="mobile" class="form-control"
                                                value="{{ $companydata->mobile }}" placeholder="Mobile">
                                            <span id="mobile_error" class="text-danger"></span>
                                            @error('mobile')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="email">Email <span
                                                    class="text-danger">*</span></label>
                                            <input type="email" name="email" id="email" class="form-control"
                                                value="{{ $companydata->email }}" placeholder="Email">
                                            <span id="email_error" class="text-danger"></span>
                                            @error('email')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="pan_no">PAN Number </label>
                                            <input type="text" name="pan_no" id="pan_no" maxlength="10"
                                                class="form-control" value="{{ $companydata->pan_no }}"
                                                placeholder="PAN Number">
                                            <span id="pan_no_error" class="text-danger"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="start_date">Start Date <span
                                                    class="text-danger">*</span></label>
                                            <input type="date" name="start_date" value="{{ $companydata->start_dt }}"
                                                id="start_date" class="form-control">
                                            <span id="start_date_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="end_date">End Date <span
                                                    class="text-danger">*</span></label>
                                            <input type="date" name="end_date" value="{{ $companydata->end_dt }}"
                                                id="end_date" class="form-control">
                                            <span id="end_date_error" class="text-danger"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="sn_num">SN Number <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="sn_num" maxlength='10'
                                                value="{{ $companydata->sn_num }}" placeholder="ENTER SN" id="sn_num"
                                                class="form-control">
                                            <span id="sn_num_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="gstin">GSTIN</label>
                                            <input type="text" name="gstin" id="gstin" maxlength="15"
                                                class="form-control" value="{{ $companydata->gstin }}"
                                                placeholder="GSTIN">
                                            <span id="gstin_error" class="text-danger"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="division_code">Division
                                                Code</label>
                                            <input type="text" name="division_code" id="division_code" maxlength="5"
                                                class="form-control" value="{{ $companydata->division_code }}"
                                                placeholder="Division Code">
                                            <span id="division_code_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="legal_name">Legal Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="legal_name" id="legal_name" class="form-control"
                                                value="{{ $companydata->legal_name }}" placeholder="Legal Name">
                                            <span id="legal_name_error" class="text-danger"></span>
                                        </div>
                                        <div class="col">
                                            <label class="col-lg-4 col-form-label" for="trade_name">Trade Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="trade_name" id="trade_name" class="form-control"
                                                value="{{ $companydata->trade_name }}" placeholder="Trade Name">
                                            <span id="trade_name_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-form-label" for="address1">Address 1</label><span
                                                class="text-danger">*</span>
                                            <input type="text" class="form-control" name="address1"
                                                value="{{ $companydata->address1 }}" id="address1">
                                            <span id="address1_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-form-label" for="address2">Address 2</label>
                                            <input type="text" name="address2" id="address2"
                                                value="{{ $companydata->address2 }}" class="form-control">
                                            <span id="address2_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label class="col-form-label" for="country_select">Country</label><span
                                                class="text-danger">*</span>
                                            <select id="country_select" name="country_select" class="form-control">
                                                <option value="{{ $companydata->country }}">{{ $companydata->country }}
                                                </option>
                                                @foreach ($country as $list)
                                                    <option value="{{ $list->country_code }}">{{ $list->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            <span id="country_error" class="text-danger"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label class="col-form-label" for="state_select">State</label><span
                                                class="text-danger">*</span>
                                            <select id="state_select" name="state_select" class="form-control">
                                                <option value="{{ $companydata->state_code }}">{{ $companydata->state }}
                                                </option>
                                            </select>
                                            <span id="state_error" class="text-danger"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label class="col-form-label" for="city">City</label>
                                            <span class="text-danger">*</span>
                                            <input type="text" name="city" id="city"
                                                value="{{ $companydata->city }}" class="form-control">
                                            <span class="text-danger" id="city_error"></span>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="pin">PIN <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="pin" id="pin" maxlength="6"
                                                class="form-control" value="{{ $companydata->pin }}" placeholder="PIN">
                                            <span id="pin_error" class="text-danger"></span>
                                        </div>

                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="pin">Logo <span
                                                    class="text-danger">*</span></label>
                                            <input type="file" name="logo_property" accept=".jpg,.png,.jpeg,.webp"
                                                id="logo_property" value="{{ $companydata->logo }}"
                                                class="form-control">
                                            <span id="logo_property_error" class="text-danger"></span>
                                        </div>

                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="dealer_logo_property">Dealer
                                                Logo</label>
                                            <input type="file" name="dealer_logo_property"
                                                accept=".jpg,.png,.jpeg,.webp" id="dealer_logo_property"
                                                value="{{ $companydata->dealer_logo }}" class="form-control">
                                            <span id="dealer_logo_property_error" class="text-danger"></span>
                                        </div>

                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="cover_image">Background Image
                                                <span class="text-danger">*</span></label>
                                            <input type="file" name="cover_image" accept=".jpg,.png,.jpeg,.webp"
                                                id="cover_image" value="{{ $companydata->cover_image }}"
                                                class="form-control">
                                            <span id="cover_image_error" class="text-danger"></span>
                                        </div>

                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="payment_qr_code">Payment QR Code
                                                <span class="text-danger">*</span></label>
                                            <input type="file" name="payment_qr_code" accept=".jpg,.png,.jpeg,.webp"
                                                id="payment_qr_code" value="{{ $companydata->payment_qr_code }}"
                                                class="form-control">
                                            <span id="payment_qr_code_error" class="text-danger"></span>
                                        </div>

                                        <div class="col-md-4">
                                            <label class="col-lg-4 col-form-label" for="website">Website </label>
                                            <input type="text" name="website" id="website"
                                                value="{{ $companydata->website }}" class="form-control">
                                            <span id="website_error" class="text-danger"></span>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label class="col-form-label" for="maplink">Google Maps Link</label>
                                            <input type="text" name="maplink" id="maplink"
                                                value="{{ $companydata->maplink }}" class="form-control"
                                                placeholder="Paste Google Maps share link here">
                                            <small class="text-muted">Google Maps mein property location kholo → Share →
                                                Copy Link → yahan paste karo</small>
                                            <span id="maplink_error" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-8 mt-4 ml-auto">
                                            <button type="button" class="btn btn-primary"
                                                onclick="validateFormUpdate(event)">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div>
@endsection
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script>
    $(document).ready(function() {
        var bankarray = [$('#bankname'), $('#branchname'), $('#ifsccode'), $('#acnum'), $('#acname')];
        $('#bankdetailbtn').click(function() {
            $('#bankdetailsmodal').modal('show');
        });

        $('#bankdetailsmodal').click(function(e) {
            if (e.target.id == 'bankdetailsmodal') {
                $('#bankname').val('');
                $('#branchname').val('');
                $('#ifsccode').val('');
                $('#acnum').val('');
                $('#acname').val('');
                $('#bankname').prop('required', false);
                $('#branchname').prop('required', false);
                $('#ifsccode').prop('required', false);
                $('#acnum').prop('required', false);
                $('#acname').prop('required', false);
            }
        });

        $('#modalclosebtn').click(function() {
            $('#bankname').val('');
            $('#branchname').val('');
            $('#ifsccode').val('');
            $('#acnum').val('');
            $('#acname').val('');
            $('#bankname').prop('required', false);
            $('#branchname').prop('required', false);
            $('#ifsccode').prop('required', false);
            $('#acnum').prop('required', false);
            $('#acname').prop('required', false);
        });
        $('#bankdetailsave').click(function() {
            const anyfilled = bankarray.some((input => (input.val() != '' && input.val() != null)));
            const allfiled = bankarray.every((input => input.val() != ''));
            if (anyfilled === true && allfiled === false) {
                pushNotify('error', 'Company Register', 'All Bank Fileds Are Required', 'fade', 300, '',
                    '', true, true, true, 2000, 20, 20, 'outline', 'right top');
            } else if (anyfilled === true && allfiled === true) {
                $('#bankdetailsmodal').modal('hide');
            } else if (anyfilled === false && allfiled === false) {
                $('#bankdetailsmodal').modal('hide');
            }
        });

        bankarray.forEach((data => {
            data.on('input', function() {
                if (data.val() != '' || data.val() != null) {
                    $('#bankname').prop('required', true);
                    $('#branchname').prop('required', true);
                    $('#ifsccode').prop('required', true);
                    $('#acnum').prop('required', true);
                    $('#acname').prop('required', true);
                }
            });
        }));
        $('#bankname, #branchname').on('input', function() {
            $(this).val(title($(this).val()));
        });
    });
    document.addEventListener('DOMContentLoaded', function() {
        var countrySelect = document.getElementById('country_select');
        countrySelect.addEventListener('change', function() {
            var cid = this.value;
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/getState', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var result = xhr.responseText;
                    var stateSelect = document.getElementById('state_select');
                    stateSelect.innerHTML = result;
                }
            };
            xhr.send('cid=' + cid + '&_token={{ csrf_token() }}');
        });
    });

    document.addEventListener('DOMContentLoaded', function() {
        function checkInput(inputElement, endpoint, errorElementId) {
            inputElement.addEventListener('input', function() {
                var inputValue = this.value;
                var xhr = new XMLHttpRequest();
                xhr.open('POST', endpoint, true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = xhr.responseText;
                        var errorElement = document.getElementById(errorElementId);
                        errorElement.textContent = result;
                    }
                };
                xhr.send(inputElement.id + '=' + inputValue + '&_token={{ csrf_token() }}');
            });
        }

        var mobile = document.getElementById('mobile');
        checkInput(mobile, '/check_mobile', 'mobile_error');

        var email = document.getElementById('email');
        checkInput(email, '/check_email', 'email_error');

        var username = document.getElementById('username');
        checkInput(username, '/check_username', 'username_error');

        var sn_num = document.getElementById('sn_num');
        checkInput(sn_num, '/check_sn_num', 'sn_num_error');
    });
</script>
