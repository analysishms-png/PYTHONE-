<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <style>
        .form-control {
            max-height: 34px !important;
            min-height: 19px !important;
        }

        .crdisps {
            display: none;
        }
    </style>
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
<div class="container-fluid">
    <div class="modal-body">
        <form class="form" action="{{ route('advchargeformstore') }}" name="advchargeform" id="advchargeform"
            method="POST">
            @csrf
            <input type="hidden" value="{{ $companydata->comp_name }}" id="compname" name="compname">
            <input type="hidden" value="{{ $companydata->address1 }}" id="address" name="address">
            <input type="hidden" value="{{ $companydata->mobile }}" id="compmob" name="compmob">
            <input type="hidden" value="{{ $companydata->email }}" id="email" name="email">
            <input type="hidden" value="{{ $companydata->logo }}" id="logo" name="logo">
            <input type="hidden" value="{{ Auth::user()->u_name }}" id="user" name="user">
            <input type="hidden" value="{{ $roomoccdata->roomno }}" id="rooomoccroomno" name="rooomoccroomno">
            <input type="hidden" value="{{ $roomoccdata->con_prefix . ' ' . $roomoccdata->name }}" id="name" name="name">
            <input type="hidden" value="{{ $data->docid }}" name="docid" id="docid" class="form-control">
            <input type="hidden" value="{{ $data->sno }}" name="sno" id="sno" class="form-control">
            <input type="hidden" value="{{ $data->sno1 }}" name="sno1" id="sno1" class="form-control">
            <input type="hidden" value="" name="nature" id="nature" class="form-control">
            <input type="hidden" name="rectno" id="rectno">
            <div class="row">
                <div class="">
                    <label class="col-form-label" for="ncurdate">Vr Date</label>
                    <input type="date" value="{{ $ncurdate }}" name="ncurdate" id="ncurdate" readonly
                        class="form-control">
                </div>
                <div class="">
                    <label class="col-form-label" for="curtime">Time</label>
                    <input type="time" value="{{ date('H:i') }}" name="curtime" id="curtime" readonly
                        class="form-control">
                </div>
                <div class="">
                    <label class="col-form-label" for="charge">Charge/Payment</label>
                    <select class="form-control" name="charge" id="charge" required>
                        <option value="">Select</option>
                        @foreach ($revdata as $item)
                            @php
                                $optionText = strtolower($item->name);
                                $hideOption = false;
                                $optionsToHide = ['round off', 'bill on hold'];
                                foreach ($optionsToHide as $option) {
                                    if (strpos($optionText, strtolower($option)) !== false) {
                                        $hideOption = true;
                                        break;
                                    }
                                }
                            @endphp
                            @if (!$hideOption)
                                <option data-id="{{ $item->name }}" value="{{ $item->rev_code }}">{{ $item->name }}</option>
                            @endif
                        @endforeach
                    </select>


                </div>
                <div id="dispcomp" class="none">
                    <label class="col-form-label" for="company">Company</label>
                    <select class="form-control" name="company" id="company">
                        <option value="">Select</option>
                        @foreach ($company as $item)
                            <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div id="roomnodisp" class="none">
                    <label class="col-form-label" for="roomno">Room No</label>
                    <select class="form-control" name="roomno" id="roomno">
                        <option value="">Select</option>
                        @foreach ($restroooms as $item)
                            <option value="{{ $item->roomno }}">{{ $item->roomno }}</option>
                        @endforeach
                    </select>
                </div>
                <div id="checknodisp" class="none">
                    <label class="col-form-label" for="checkno">Check No</label>
                    <input type="text" oninput="allmx(this, 6)" value="" placeholder="Enter Check No." name="checkno"
                        id="checkno" class="form-control">
                </div>
                <div class="">
                    <label class="col-form-label" for="amount">Amount</label>
                    <input type="text" value="" placeholder="Enter Amt." name="amount" id="amount"
                        class="form-control" required>
                </div>
                <div class="">
                    <label class="col-form-label" for="narration">Narration</label>
                    <input type="text" value="" placeholder="Enter Narration" name="narration" id="narration"
                        class="form-control">
                </div>
                <div class="crdisps">
                    <label class="col-form-label" for="crnumber">Credit Card Number</label>
                    <input type="number" oninput="allmx(this, 16)" value="" placeholder="Enter Credit Card"
                        name="crnumber" id="crnumber" class="form-control">
                </div>
                <div class="crdisps">
                    <label class="col-form-label" for="holdername">Holder Name</label>
                    <input type="text"  value="" placeholder="Enter Name" name="holdername"
                        id="holdername" class="form-control">
                </div>
                <div class="crdisps">
                    <label class="col-form-label" for="expdatecr">Exp. Date</label>
                    <input type="date" oninput="PastDtNA(this)" value="" name="expdatecr" id="expdatecr"
                        class="form-control">
                </div>
                <div class="crdisps">
                    <label class="col-form-label" for="batchno">Batch No.</label>
                    <input type="number" oninput="allmx(this, 10)" value="" placeholder="Enter Batch  No."
                        name="batchno" id="batchno" class="form-control">
                </div>
                <div id="upidisp" class="none">
                    <label class="col-form-label" for="referencenoupi">UPI Reference No.</label>
                    <input type="text" oninput="allmx(this, 25)" value="" placeholder="Enter Reference No."
                        name="referencenoupi" id="referencenoupi" class="form-control">
                </div>
            </div>

            <div class="form-group form-check mt-4">
                <input type="checkbox" checked class="form-check-input" name="printreceipt" id="printreceipt">
                <label class="form-check-label" for="printreceipt"><i class="fa-solid fa-money-bill-transfer"></i> Print
                    Receipt</label>
            </div>

            <div class="text-center mt-4">
                <button id="submitBtn" onclick="wantprint()" type="submit" class="btn ti-save btn-primary">
                    Submit</button>
            </div>
        </form>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('#amount').on('input', function() {
            let amt = $(this).val();
            if (amt < 0) {
                $('#narration').val('Cash Paid');
                krsno('REV');
            } else {
                krsno('REC');
                let chargedataid = $('#charge').find('option:selected').data('id');
                if (chargedataid != 'Cash') {
                    $('#narration').val(chargedataid);
                }
            }
        });
    });

    function krsno(vtype) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "{{ route('getmaxadresno') }}");
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var data = JSON.parse(xhr.responseText);
                $("#rectno").val(data);
            }
        };
        xhr.send(`vtype=${vtype}&_token={{ csrf_token() }}`);

    }

    krsno('REC');

    var amount;

    function wantprint() {
        let checkbox = $('#printreceipt');
        let charge = $('#charge').val();
        amount = $('#amount').val();

        if (checkbox.prop('checked') && charge != '' && amount != '') {
            let ncurdate = $('#ncurdate').val();
            let curdate = new Date(ncurdate).toLocaleDateString('en-IN', {
                day: '2-digit',
                month: '2-digit',
                year: 'numeric'
            });

            let params = new URLSearchParams({
                rectno: $('#rectno').val(),
                compname: $('#compname').val(),
                address: $('#address').val(),
                name: $('#name').val(),
                phone: $('#compmob').val(),
                email: $('#email').val(),
                roomno: $('#rooomoccroomno').val(),
                amount: amount,
                date: curdate,
                nature: $('#nature').val(),
                user: $('#user').val(),
                logo: $('#logo').val()
            });

            window.open(`{{ route('advancereceipt') }}?${params.toString()}`, '_blank');
        }
    }



    $(document).ready(function() {
        // handleFormSubmission('#advchargeform', '#submitBtn', 'advchargeformstore');
        $('#charge').on('change', function() {
            var fieldtype;
            code = $(this).val();
            docid = $('#docid').val();
            let sno1 = $('#sno1').val();
            let selectedChargeText = ($('#charge option:selected').text() || '').toLowerCase();

            function resetConditionalFields() {
                $('.crdisps').hide();
                $('#upidisp').addClass('none');
                $('#checknodisp').addClass('none');
                $('#dispcomp').addClass('none');
                $('#roomnodisp').addClass('none');

                $('#crnumber').val('').prop('required', false);
                $('#holdername').val('').prop('required', false);
                $('#expdatecr').val('').prop('required', false);
                $('#batchno').val('').prop('required', false);
                $('#referencenoupi').val('').prop('required', false);
                $('#checkno').val('').prop('required', false);
                $('#company').val('').prop('required', false);
                $('#roomno').val('').prop('required', false);
            }

            function showCreditCardFields() {
                $('.crdisps').show();
            }

            function showUpiFields() {
                $('#upidisp').removeClass('none');
            }

            function showChequeFields() {
                $('#checknodisp').removeClass('none');
            }

            function showCompanyFields() {
                $('#dispcomp').removeClass('none');
            }

            function processResponse() {
                if (fieldtype == 'P') {
                    let xhrcharge2 = new XMLHttpRequest();
                    xhrcharge2.open('POST', '/fetchadvamtpay', true);
                    xhrcharge2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xhrcharge2.onreadystatechange = function() {
                        if (xhrcharge2.readyState === 4 && xhrcharge2.status === 200) {
                            let result = JSON.parse(xhrcharge2.responseText);

                            if (result.sum != null) {
                                $('#amount').val(result.sum);
                            } else {
                                $('#amount').val('');
                            }
                        }

                    };
                    xhrcharge2.send(`rev_code=${code}&docid=${docid}&sno1=${sno1}&_token={{ csrf_token() }}`);
                } else if (fieldtype == 'C') {
                    let xhrcharge = new XMLHttpRequest();
                    xhrcharge.open('POST', '/fetchadvamt', true);
                    xhrcharge.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xhrcharge.onreadystatechange = function() {
                        if (xhrcharge.readyState === 4 && xhrcharge.status === 200) {
                            let result = JSON.parse(xhrcharge.responseText);

                            if (result.amount != null) {
                                $('#amount').val(result.amount);
                            } else {
                                $('#amount').val('');
                            }
                            if (result.narration != null) {
                                $('#narration').val(result.narration);
                            }
                        }

                    };
                    xhrcharge.send(`rev_code=${code}&_token={{ csrf_token() }}`);
                }
            }

            let xhrnature = new XMLHttpRequest();
            xhrnature.open('POST', '/fetchrevnature', true);
            xhrnature.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhrnature.onreadystatechange = function() {
                if (xhrnature.readyState === 4 && xhrnature.status === 200) {
                    let result = JSON.parse(xhrnature.responseText);
                    fieldtype = result.fieldtype;
                    $('#nature').val(result.nature);
                    let nature = (result.nature || '').toLowerCase();
                    let chargeName = (result.name || selectedChargeText || '').toLowerCase();

                    resetConditionalFields();

                    if (nature == 'cash') {
                        $('#narration').val('Cash Received');
                    } else if (nature == 'credit card') {
                        showCreditCardFields();
                        $('#narration').val(result.nature);
                    } else if (nature == 'upi') {
                        showUpiFields();
                        $('#narration').val(result.nature);
                    } else if (nature == 'cheque') {
                        showChequeFields();
                        $('#narration').val(result.nature);
                    } else {
                        $('#narration').val('');
                    }

                    if (chargeName.includes('bill to company')) {
                        showCompanyFields();
                        $('#narration').val(result.name || 'Bill To Company');
                    }

                    processResponse();
                }

            };
            xhrnature.send(`rev_code=${code}&_token={{ csrf_token() }}`);


        });
    });
</script>
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
