@extends('property.layouts.main')
@section('main-container')
    <style>
        #adv-card   { border-top: 3px solid #fd7e14; }
        .outlet-hdr { background:#fd7e14; color:#fff; padding:5px 14px; border-radius:4px; font-weight:600; }
    </style>

    <div class="content-body">
        <div class="container-fluid">

            {{-- Page Title --}}
            <div class="row mb-3">
                <div class="col-12 d-flex align-items-center justify-content-between flex-wrap">
                    <h5 class="mb-0">
                        <i class="fa fa-money text-warning mr-1"></i> Table Booking — Advance Deposit
                    </h5>
                    <span class="outlet-hdr">{{ strtoupper($depart->name) }}</span>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                    <div class="card shadow-sm" id="adv-card">
                        <div class="card-body p-4">

                            <form id="advanceform" autocomplete="off">
                                @csrf
                                <input type="hidden" id="sn"    value="{{ $booking->sn }}">
                                <input type="hidden" id="dcode" value="{{ $depart->dcode }}">

                                {{-- Row 1: Type | Rect. No | Date | Time --}}
                                <div class="row mb-2">
                                    <div class="col-md-3 col-6 mb-2">
                                        <label class="font-weight-bold small">Type</label>
                                        <select class="form-control form-control-sm" id="advtype">
                                            <option value="Advance" selected>Advance</option>
                                            <option value="Refund">Refund</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2 col-6 mb-2">
                                        <label class="font-weight-bold small">Rect. No.</label>
                                        <input type="text" class="form-control form-control-sm text-center font-weight-bold"
                                               id="rectnodisplay" value="{{ $nextvno }}" readonly>
                                    </div>
                                    <div class="col-md-3 col-6 mb-2">
                                        <label class="font-weight-bold small">Date</label>
                                        <input type="date" class="form-control form-control-sm"
                                               id="advdate" value="{{ ncurdate() }}" readonly>
                                    </div>
                                    <div class="col-md-4 col-6 mb-2">
                                        <label class="font-weight-bold small">Time</label>
                                        <input type="text" class="form-control form-control-sm"
                                               id="livetime" readonly>
                                    </div>
                                </div>

                                <hr class="my-2">

                                {{-- Row 2: Booking Date | Booking For Date --}}
                                <div class="row mb-2">
                                    <div class="col-md-6 mb-2">
                                        <label class="font-weight-bold small">Booking Date</label>
                                        <input type="date" class="form-control form-control-sm"
                                               id="bookingdate" value="{{ $booking->vdate }}" readonly>
                                    </div>
                                    <div class="col-md-6 mb-2">
                                        <label class="font-weight-bold small">Booking For Date <span class="text-muted font-weight-normal">(Arrival Date)</span></label>
                                        <input type="date" class="form-control form-control-sm"
                                               id="bookingfordate" value="{{ $booking->bookindate }}" readonly>
                                    </div>
                                </div>

                                {{-- Row 3: Guest | Mobile --}}
                                <div class="row mb-2">
                                    <div class="col-md-6 mb-2">
                                        <label class="font-weight-bold small">Guest Name</label>
                                        <input type="text" class="form-control form-control-sm"
                                               value="{{ $booking->guestname }}" readonly>
                                    </div>
                                    <div class="col-md-6 mb-2">
                                        <label class="font-weight-bold small">Mobile No.</label>
                                        <input type="text" class="form-control form-control-sm"
                                               value="{{ $booking->mobileno }}" readonly>
                                    </div>
                                </div>

                                {{-- Row 4: Table | Pax | Time Slot --}}
                                <div class="row mb-2">
                                    <div class="col-md-4 mb-2">
                                        <label class="font-weight-bold small">Table</label>
                                        <input type="text" class="form-control form-control-sm"
                                               value="{{ $booking->vprefix }}" readonly>
                                    </div>
                                    <div class="col-md-4 mb-2">
                                        <label class="font-weight-bold small">Pax</label>
                                        <input type="text" class="form-control form-control-sm"
                                               value="{{ $booking->pax }}" readonly>
                                    </div>
                                    <div class="col-md-4 mb-2">
                                        <label class="font-weight-bold small">Time Slot</label>
                                        <input type="text" class="form-control form-control-sm"
                                               value="{{ $booking->fromtime }} - {{ $booking->totime }}" readonly>
                                    </div>
                                </div>

                                <hr class="my-2">

                                {{-- Row 5: Pay Type | Tax Structure --}}
                                <div class="row mb-2">
                                    <div class="col-md-6 mb-2">
                                        <label class="font-weight-bold small">Pay Type <span class="text-danger">*</span></label>
                                        <select class="form-control form-control-sm" id="paytype">
                                            <option value="">-- Select --</option>
                                            @foreach($paytypes as $pt)
                                                <option value="{{ $pt->rev_code }}">{{ $pt->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-6 mb-2">
                                        <label class="font-weight-bold small">Tax Structure</label>
                                        <select class="form-control form-control-sm" id="taxstru">
                                            <option value="">-- Select --</option>
                                            @foreach($taxstrudata as $ts)
                                                <option value="{{ $ts->str_code }}">{{ $ts->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                {{-- Row 6: Narration | Amount --}}
                                <div class="row mb-2">
                                    <div class="col-md-8 mb-2">
                                        <label class="font-weight-bold small">Narration <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control form-control-sm" id="narration"
                                               maxlength="100" value="">
                                    </div>
                                    <div class="col-md-4 mb-2">
                                        <label class="font-weight-bold small">Amount <span class="text-danger">*</span></label>
                                        <input type="number" class="form-control form-control-sm" id="amount"
                                               min="1" step="0.01" placeholder="Enter Amt.">
                                    </div>
                                </div>

                                {{-- Print Receipt checkbox --}}
                                <div class="form-check mb-3">
                                    <input type="checkbox" class="form-check-input" id="printreceipt" checked>
                                    <label class="form-check-label font-weight-bold small" for="printreceipt">
                                        <i class="fa fa-print"></i> Print Receipt
                                    </label>
                                </div>

                                {{-- Buttons --}}
                                <div class="d-flex justify-content-end">
                                    <button type="button" class="btn btn-secondary btn-sm mr-2"
                                            onclick="window.location.href='{{ url('tablebooking') }}?dcode={{ $depart->dcode }}'">
                                        <i class="fa fa-times"></i> Close
                                    </button>
                                    <button type="button" class="btn btn-warning btn-sm" id="submitadvbtn">
                                        <i class="fa fa-save"></i> Submit
                                    </button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script>
    $(document).ready(function () {

        $.ajaxSetup({ headers: { 'X-CSRF-TOKEN': '{{ csrf_token() }}' } });

        // ── Live Clock ────────────────────────────────────────────────────
        function updateClock() {
            var now = new Date();
            var h = ('0' + now.getHours()).slice(-2);
            var m = ('0' + now.getMinutes()).slice(-2);
            var s = ('0' + now.getSeconds()).slice(-2);
            $('#livetime').val(h + ':' + m + ':' + s);
        }
        updateClock();
        setInterval(updateClock, 1000);

        // ── Narration auto-build ──────────────────────────────────────────
        function buildNarration() {
            var advtype   = $('#advtype').val();
            var rectno    = $('#rectnodisplay').val();
            var nature    = $('#paytype option:selected').text();
            var vdate     = '{{ ncurdate() }}';
            var dateParts = vdate.split('-');
            var dmy       = dateParts[2] + '-' + dateParts[1] + '-' + dateParts[0];
            var bkno      = '{{ $booking->vno }}';
            $('#narration').val(advtype + ' Agst. Bk. No. ' + bkno + ' Rect. No. ' + rectno + ' Dt. ' + dmy + ', ' + nature);
        }

        buildNarration();
        $('#advtype').on('change', buildNarration);
        $('#paytype').on('change', buildNarration);

        // ── Submit ────────────────────────────────────────────────────────
        $('#submitadvbtn').on('click', function () {

            var advtype   = $('#advtype').val();
            var paytype   = $('#paytype').val();
            var taxstru   = $('#taxstru').val();
            var amount    = $.trim($('#amount').val());
            var narration = $.trim($('#narration').val());

            if (!paytype) {
                pushNotify('warning','Advance','Please select Pay Type','fade',300,'','',true,true,true,3000,20,20,'outline','right top');
                $('#paytype').focus(); return;
            }
            if (!amount || parseFloat(amount) <= 0) {
                pushNotify('warning','Advance','Please enter valid Amount','fade',300,'','',true,true,true,3000,20,20,'outline','right top');
                $('#amount').focus(); return;
            }
            if (!narration) {
                pushNotify('warning','Advance','Narration is required','fade',300,'','',true,true,true,3000,20,20,'outline','right top');
                $('#narration').focus(); return;
            }

            $('#submitadvbtn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Saving...');

            $.ajax({
                url : '{{ url("tablebookingadvancesubmit") }}',
                type: 'POST',
                data: {
                    sn        : $('#sn').val(),
                    dcode     : $('#dcode').val(),
                    advtype   : advtype,
                    paytype   : paytype,
                    tax_stru  : taxstru,
                    amount    : amount,
                    narration : narration,
                },
                success: function (res) {
                    $('#submitadvbtn').prop('disabled', false).html('<i class="fa fa-save"></i> Submit');
                    if (res.success) {
                        pushNotify('success','Advance', res.message,'fade',300,'','',true,true,true,3000,20,20,'outline','right top');

                        if ($('#printreceipt').prop('checked')) {
                            var params = new URLSearchParams({
                                amount  : res.amount,
                                rectno  : res.vno,
                                name    : res.guestname,
                                tableno : res.tableno,
                                date    : new Date(res.vdate).toLocaleDateString('en-IN', {day:'2-digit',month:'2-digit',year:'numeric'}),
                                nature  : res.paymode,
                                compname: res.compname,
                                address : res.address,
                                email   : res.email,
                                phone   : res.phone,
                                logo    : res.logo,
                                user    : res.uname,
                            });
                            window.open('{{ url("tablebookingreceipt") }}?' + params.toString(), '_blank');
                        }

                        setTimeout(function () {
                            window.location.href = '{{ url("tablebooking") }}?dcode=' + $('#dcode').val();
                        }, 1500);
                    } else {
                        pushNotify('error','Advance', res.message || 'Save failed!','fade',300,'','',true,true,true,4000,20,20,'outline','right top');
                    }
                },
                error: function (xhr) {
                    $('#submitadvbtn').prop('disabled', false).html('<i class="fa fa-save"></i> Submit');
                    var msg = xhr.responseJSON && xhr.responseJSON.message ? xhr.responseJSON.message : 'Server error!';
                    pushNotify('error','Advance', msg,'fade',300,'','',true,true,true,4000,20,20,'outline','right top');
                }
            });
        });

    });
    </script>
@endsection
