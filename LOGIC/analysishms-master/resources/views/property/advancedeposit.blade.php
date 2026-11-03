@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <script>
            document.addEventListener('DOMContentLoaded', () => {
                const ids = ['narration', 'amount']; // sab IDs ek array me
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
            });
        </script>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="advancedepform" action="{{ route('advancedeposubmit') }}" name="advancedepform"
                                action="" method="post">
                                @csrf
                                <input type="hidden" value="{{ request()->query('page_source') }}" name="page_source" id="page_source">
                                <input type="hidden" value="{{ $data->DocId }}" name="docid" id="docid">
                                <input type="hidden" value="{{ $data->BookNo }}" name="bookno" id="bookno">
                                <input type="hidden" value="{{ $data->GuestProf }}" name="guestprof" id="guestprof">
                                <input type="hidden" value="{{ $data->Sno }}" name="Sno" id="Sno">
                                <input type="hidden" value="" name="prevtype" id="prevtype">
                                <input type="hidden" value="{{ $companydata->comp_name }}" id="compname" name="compname">
                                <input type="hidden" value="{{ $companydata->address1 }}" id="address" name="address">
                                <input type="hidden" value="{{ $companydata->mobile }}" id="compmob" name="compmob">
                                <input type="hidden" value="{{ $companydata->email }}" id="email" name="email">
                                <input type="hidden" value="{{ $companydata->logo }}" id="logo" name="logo">
                                <input type="hidden" value="{{ $companydata->u_name }}" id="u_name" name="u_name">
                                <input type="hidden" value="{{ $data->RoomNo }}" id="rooomoccroomno" name="rooomoccroomno">
                                <input type="hidden" value="{{ $data->GuestName }}" id="name" name="name">
                                <input type="hidden" value="" name="nature" id="nature" class="form-control">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="form-group">
                                                <label class="col-form-label" for="advancetype">Type</label>
                                                <select name="advancetype" id="advancetype" class="form-control">
                                                    <option value="Advance" selected>Advance</option>
                                                    <option value="Refund">Refund</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-form-label" for="rectno">Rect. No.</label>
                                                <input type="hidden" name="rectno" id="rectno" class="form-control fiveem"
                                                    readonly>
                                                <p class="text-center font-x-small" id="rectnoid"></p>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-form-label" for="date">Date</label>
                                                <input type="date" value="{{ $ncurdate }}" name="curdate" id="curdate"
                                                    class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-form-label" for="">‎ ‎</label>
                                                <div class="d-flex ml-2 mt-1">
                                                    <p>{{ $data->Vprefix }}</p>
                                                    <p class="ml-2" id="curtime"></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="col-form-label" for="reservationdate">Reservation Date</label>
                                                <input type="date" value="{{ $data->vdate }}" class="form-control"
                                                    name="reservationdate" id="reservationdate" readonly>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-form-label" for="arrivaldate">Arrival Date</label>
                                                <input type="date" value="{{ $data->ArrDate }}" class="form-control"
                                                    name="arrivaldate" id="arrivaldate" readonly>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-form-label" for="departuredate">Departure Date</label>
                                                <input type="date" value="{{ $data->DepDate }}" class="form-control"
                                                    name="departuredate" id="departuredate" readonly>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="col-form-label" for="guestname">Guest Name</label>
                                                <select class="form-control" name="guestname" id="guestname" required>
                                                    <option value="">Select</option>
                                                    @foreach ($names as $item)
                                                        <option data-id="{{ $item->BookNo }}" value="{{ $item->GuestName }}" {{ $data->BookingDocid == $item->BookingDocid ? 'selected' : '' }}>{{ $item->GuestName . ' (' . $item->BookNo . ')' }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-form-label" for="paytype">Pay Type</label>
                                                <select class="form-control" name="paytype" id="paytype">
                                                    <option value="">Select</option>
                                                    @php
                                                        $uniquerecords = [];
                                                    @endphp
                                                    @foreach ($revdata as $item)
                                                        @if (!in_array($item->rev_code, $uniquerecords))
                                                            <option data-id="{{ $item->nature }}" value="{{ $item->rev_code }}">{{ $item->name }}</option>
                                                            @php
                                                                $uniquerecords[] = $item->rev_code;
                                                            @endphp
                                                        @endif
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-4"><label class="col-form-label" for="tax_stru">Tax
                                                    Structure</label>
                                                <select id="tax_stru" name="tax_stru" class="form-control">
                                                    <option value="">Select</option>
                                                    @foreach ($taxstrudata as $list)
                                                        <option value="{{ $list->str_code }}">{{ $list->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label class="col-form-label" for="narration">Narration</label>
                                                <input type="text" class="form-control" name="narration" id="narration">
                                            </div>
                                            <div class="col-md-6">
                                                <label class="col-form-label" for="amount">Amount</label>
                                                <input type="text" oninput="allmx(this, 6)" value=""
                                                    placeholder="Enter Amt." name="amount" id="amount" class="form-control"
                                                    required>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group form-check mt-4">
                                    <input type="checkbox" checked class="form-check-input" name="printreceipt" id="printreceipt">
                                    <label class="form-check-label" for="printreceipt"><i class="fa-solid fa-money-bill-transfer"></i> Print
                                        Receipt</label>
                                </div>

                                <div class="text-center mt-4">
                                    <button type="button" class="btn ti-back-left btn-danger" onclick="window.location.href = '{{ request()->query('page_source') ? url(request()->query('page_source')) : url('reservationlist') }}'">Back </button>
                                    <button onclick="wantprint()" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $(document).ready(function() {
            $('#paytype').on('change', function() {
                let advtype = $('#advancetype').val();
                let resno = $('#guestname').find('option:selected').data('id');
                let nature = $(this).find('option:selected').data('id');
                let rectno = $("#rectno").val();
                let vdatetmp = $('#curdate').val();
                let vdate = vdatetmp.split("-").reverse().join("-");
                let narration = `${advtype} Agst. Res. No. ${resno} Rect. No. ${rectno} Dt. ${vdate}, ${nature}`;
                $('#narration').val(narration);
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
                        $("#rectnoid").text(data);
                    }
                };
                xhr.send(`vtype=${vtype}&_token={{ csrf_token() }}`);

            }

            $('#advancetype').on('change', function() {
                let advtype = $(this).val();
                let vtype = 'ADRES';
                if (advtype == 'Refund') {
                    vtype = 'ARRES';
                    $('#prevtype').val(vtype);
                } else {
                    vtype = 'ADRES';
                    $('#prevtype').val(vtype);
                }
                krsno(vtype);
            })
            setTimeout(() => {
                $('#advancetype').trigger('change');
            }, 1000);
            setInterval(() => {
                let options = {
                    timeZone: 'Asia/Kolkata',
                    hour12: false,
                    hour: '2-digit',
                    minute: '2-digit',
                    second: '2-digit'
                };
                let currentTime = new Date().toLocaleString('en-US', options);
                $('#curtime').text(currentTime);
            }, 1000);
        });

        var amount;

        function wantprint() {
            let checkbox = $('#printreceipt');
            let paytype = $('#paytype').val();
            amount = $('#amount').val();

            var a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '];
            var b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

            function inWords(num) {
                if ((num = num.toString()).length > 9) return 'overflow';
                n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
                if (!n) return;
                var str = '';
                str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
                str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
                str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
                str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
                str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'only ' : '';
                return str;
            }

            let fixval = Math.abs(amount);
            let textamount = inWords(fixval);

            if (checkbox.prop('checked') && paytype != '' && amount != '') {
                let paymentmode = $('#paytype').find('option:selected').data('id');
                let compname = $('#compname').val();
                let address = $('#address').val();
                let name = $('#name').val();
                let mob = $('#compmob').val();
                let email = $('#email').val();
                let roomno = $('#rooomoccroomno').val();
                let nature = $('#nature').val();
                let u_name = $('#u_name').val();
                let rectnop = $('#rectno').val();
                let logo = 'storage/admin/property_logo/' + $('#logo').val();
                let filetoprint = 'advancereceipt';
                let ncurdate = $('#curdate').val();
                let curdate = new Date(ncurdate).toLocaleDateString('en-IN', {
                    day: '2-digit',
                    month: '2-digit',
                    year: 'numeric'
                });
                let newWindow = window.open(filetoprint, '_blank');
                let recref = 'Received';
                let asadvref = 'As Advance';
                if (amount < 0) {
                    recref = 'Refund'
                    asadvref = 'As Refund';
                }

                newWindow.onload = function() {
                    $('.recpno', newWindow.document).text(rectnop);
                    $('#compname', newWindow.document).text(compname);
                    $('#address', newWindow.document).text(address);
                    $('#recref', newWindow.document).text(recref);
                    $('#asadvref', newWindow.document).text(asadvref);
                    $('#name', newWindow.document).text(name);
                    $('#phone', newWindow.document).text(mob);
                    $('#email', newWindow.document).text(email);
                    $('#roomno', newWindow.document).text(roomno);
                    $('#amount', newWindow.document).text(Math.abs(amount));
                    $('#textamount', newWindow.document).text(textamount);
                    $('#curdate', newWindow.document).text(curdate);
                    $('#nature', newWindow.document).text(paymentmode);
                    $('#u_name', newWindow.document).text(u_name);
                    $('#complogo', newWindow.document).attr('src', logo);
                    $('#compname2', newWindow.document).text(compname);
                    $('#address2', newWindow.document).text(address);
                    $('#recref2', newWindow.document).text(recref);
                    $('#asadvref2', newWindow.document).text(asadvref);
                    $('#name2', newWindow.document).text(name);
                    $('#phone2', newWindow.document).text(mob);
                    $('#email2', newWindow.document).text(email);
                    $('#roomno2', newWindow.document).text(roomno);
                    $('#amount2', newWindow.document).text(Math.abs(amount));
                    $('#textamount2', newWindow.document).text(textamount);
                    $('#curdate2', newWindow.document).text(curdate);
                    $('#nature2', newWindow.document).text(paymentmode);
                    $('#u_name2', newWindow.document).text(u_name);
                    $('#complogo2', newWindow.document).attr('src', logo);

                    setTimeout(function() {
                        newWindow.print();
                        newWindow.close();
                    }, 500);
                };
            }
        }
    </script>
@endsection
