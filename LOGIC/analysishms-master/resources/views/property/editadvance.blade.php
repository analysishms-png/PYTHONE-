@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mb-3">Edit Advance — Rect No: {{ $editRecord->vno }}</h5>
                            <form id="editadvanceform" action="{{ route('advance.edit.submit') }}" name="editadvanceform"
                                method="post">
                                @csrf
                                <input type="hidden" value="{{ $editRecord->docid }}" name="edit_docid" id="edit_docid">
                                <input type="hidden" value="{{ $editRecord->contradocid }}" name="contradocid"
                                    id="contradocid">
                                <input type="hidden" value="{{ $hallbook->vno }}" name="vno" id="vno">
                                <input type="hidden" value="{{ $companydata->comp_name }}" name="compname" id="compname">
                                <input type="hidden" value="{{ $companydata->address1 }}" name="address" id="address">
                                <input type="hidden" value="{{ $companydata->mobile }}" name="compmob" id="compmob">
                                <input type="hidden" value="{{ $companydata->email }}" name="email" id="email">
                                <input type="hidden" value="{{ $companydata->logo }}" name="logo" id="logo">
                                <input type="hidden" value="{{ $companydata->u_name }}" name="u_name" id="u_name">
                                <input type="hidden" value="{{ $hallbook->partyname }}" name="name" id="name">
                                <input type="hidden" value="" name="nature" id="nature">
                                <input type="hidden" value="{{ $editRecord->vtype }}" name="prevtype" id="prevtype">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="form-group">
                                                <label class="col-form-label" for="advancetype">Type</label>
                                                <select name="advancetype" id="advancetype" class="form-control">
                                                    <option value="Advance"
                                                        {{ $editRecord->vtype == 'AD' ? 'selected' : '' }}>Advance</option>
                                                    <option value="Refund"
                                                        {{ $editRecord->vtype == 'AR' ? 'selected' : '' }}>Refund</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-form-label" for="rectno">Rect. No.</label>
                                                <input type="hidden" name="rectno" id="rectno"
                                                    value="{{ $editRecord->vno }}" class="form-control fiveem" readonly>
                                                <p class="text-center font-x-small" id="rectnoid">{{ $editRecord->vno }}
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-form-label" for="curdate">Date</label>
                                                <input type="date" value="{{ $editRecord->vdate }}" name="curdate"
                                                    id="curdate" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="col-form-label">‎ ‎</label>
                                                <div class="d-flex ml-2 mt-1">
                                                    <p>{{ $hallbook->vprefix }}</p>
                                                    <p class="ml-2" id="curtime"></p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="col-form-label" for="partyname">Party Name</label>
                                                <input type="text" value="{{ $hallbook->partyname }}"
                                                    class="form-control" name="partyname" id="partyname" readonly
                                                    required>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-form-label" for="paytype">Pay Type</label>
                                                <select class="form-control" name="paytype" id="paytype">
                                                    <option value="">Select</option>
                                                    @php $uniquerecords = []; @endphp
                                                    @foreach ($revdata as $item)
                                                        @if (!in_array($item->rev_code, $uniquerecords))
                                                            <option data-id="{{ $item->nature }}"
                                                                value="{{ $item->rev_code }}"
                                                                {{ $editRecord->paycode == $item->rev_code ? 'selected' : '' }}>
                                                                {{ $item->name }}
                                                            </option>
                                                            @php $uniquerecords[] = $item->rev_code; @endphp
                                                        @endif
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-form-label" for="tax_stru">Tax Structure</label>
                                                <select id="tax_stru" name="tax_stru" class="form-control">
                                                    <option value="">Select</option>
                                                    @foreach ($taxstrudata as $list)
                                                        <option value="{{ $list->str_code }}"
                                                            {{ $editRecord->taxstru == $list->str_code ? 'selected' : '' }}>
                                                            {{ $list->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <label class="col-form-label" for="narration">Narration</label>
                                                <input type="text" class="form-control" name="narration"
                                                    id="narration" value="{{ $editRecord->comments }}">
                                            </div>
                                            <div class="col-md-6">
                                                <label class="col-form-label" for="amount">Amount</label>
                                                <input type="text" oninput="allmx(this, 6)"
                                                    value="{{ $editRecord->vtype == 'AD' ? $editRecord->amtcr : $editRecord->amtdr }}"
                                                    placeholder="Enter Amt." name="amount" id="amount"
                                                    class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group form-check mt-4">
                                    <input type="checkbox" checked class="form-check-input" name="printreceipt"
                                        id="printreceipt">
                                    <label class="form-check-label" for="printreceipt">
                                        <i class="fa-solid fa-money-bill-transfer"></i> Print Receipt
                                    </label>
                                </div>

                                <div class="text-center mt-4">
                                    <button type="submit" class="btn btn-primary">
                                        Update <i class="fa-solid fa-file-export"></i>
                                    </button>
                                    <a href="{{ url('advancelist') }}" class="btn btn-secondary ml-2">Cancel</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- <script> --}}
    {{-- // $(document).ready(function() {
        //     $('#editadvanceform').on('submit', function(e) {
        //         if ($('#printreceipt').is(':checked')) {
        //             e.preventDefault();
        //             wantprint();
        //             setTimeout(() => {
        //                 this.submit();
        //             }, 1000);
        //         }
        //     });

        //     $('#advancetype').on('change', function() {
        //         let advtype = $(this).val();
        //         let vtype = advtype == 'Refund' ? 'AR' : 'AD';
        //         $('#prevtype').val(vtype);
        //     });

        //     $('#paytype').on('change', function() {
        //         let advtype = $('#advancetype').val();
        //         let vno = $('#vno').val();
        //         let nature = $(this).find('option:selected').data('id');
        //         let rectno = $('#rectno').val();
        //         let vdatetmp = $('#curdate').val();
        //         let vdate = vdatetmp.split("-").reverse().join("-");
        //         let narration =
        //             `${advtype} Agst. Booking. No. ${vno} Rect. No. ${rectno} Dt. ${vdate}, ${nature}`;
        //         $('#narration').val(narration);
        //     });

        //     setInterval(() => {
        //         let options = {
        //             timeZone: 'Asia/Kolkata',
        //             hour12: false,
        //             hour: '2-digit',
        //             minute: '2-digit',
        //             second: '2-digit'
        //         };
        //         $('#curtime').text(new Date().toLocaleString('en-US', options));
        //     }, 1000);
        // });

        // var amount; --}}
    <script>
        $(document).ready(function() {

            function updateNarration() {
                let advtype = $('#advancetype').val();
                let vno = $('#vno').val();
                let nature = $('#paytype').find('option:selected').data('id') || '';
                let rectno = $('#rectno').val(); // edit me ye fixed hai
                let vdatetmp = $('#curdate').val();

                if (!vdatetmp) return;

                let vdate = vdatetmp.split("-").reverse().join("-");

                let narration = advtype + ' Agst. Booking. No. ' + vno +
                    ' Rect. No. ' + rectno +
                    ' Dt. ' + vdate + ', ' + nature;

                $('#narration').val(narration);
            }

            // 🔁 Paytype change
            $('#paytype').on('change', function() {
                updateNarration();
            });

            // 🔁 Advance/Refund change
            $('#advancetype').on('change', function() {
                let advtype = $(this).val();
                let vtype = (advtype === 'Refund') ? 'AR' : 'AD';
                $('#prevtype').val(vtype);

                updateNarration();
            });

            // 🔁 Date change
            $('#curdate').on('change', function() {
                updateNarration();
            });

            // 🔁 Page load pe narration auto set
            setTimeout(function() {
                updateNarration();
            }, 300);

            // 🕒 Time
            setInterval(function() {
                let options = {
                    timeZone: 'Asia/Kolkata',
                    hour12: false,
                    hour: '2-digit',
                    minute: '2-digit',
                    second: '2-digit'
                };
                $('#curtime').text(new Date().toLocaleString('en-US', options));
            }, 1000);

        });
    </script>
    {{-- 
    // function wantprint() {
    // let checkbox = $('#printreceipt');
    // let prevtype = $('#prevtype').val();
    // let paytype = $('#paytype').val();
    // amount = $('#amount').val();

    // var a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ',
    // 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '
    // ];
    // var b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

    // function inWords(num) {
    // if ((num = num.toString()).length > 9) return 'overflow';
    // n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
    // if (!n) return;
    // var str = '';
    // str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
    // str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
    // str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
    // str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
    // str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) +
    // 'only ' : '';
    // return str;
    // }

    // let fixval = Math.abs(amount);
    // let textamount = inWords(fixval);

    // if (checkbox.prop('checked') && paytype != '' && amount != '') {
    // let paymentmode = $('#paytype').find('option:selected').data('id');
    // let bookno = $('#vno').val();
    // let compname = $('#compname').val();
    // let address = $('#address').val();
    // let name = $('#name').val();
    // let mob = $('#compmob').val();
    // let email = $('#email').val();
    // let u_name = $('#u_name').val();
    // let rectnop = $('#rectno').val();
    // let logo = 'storage/admin/property_logo/' + $('#logo').val();
    // let filetoprint = "{{ url('banquetadvancereceipt') }}";
    // let ncurdate = $('#curdate').val();
    // let curdate = new Date(ncurdate).toLocaleDateString('en-IN', {
    // day: '2-digit',
    // month: '2-digit',
    // year: 'numeric'
    // });
    // let newWindow = window.open(filetoprint, '_blank');
    // let recref = prevtype == 'AR' ? 'Refund' : 'Received';
    // let asadvref = prevtype == 'AR' ? 'As Refund' : 'As Advance';
    // let heading = prevtype == 'AR' ? 'Refund' : 'Advance';

    // newWindow.onload = function() {
    // $('#bookingno', newWindow.document).text(bookno);
    // $('#bookingno2', newWindow.document).text(bookno);
    // $('.recpno', newWindow.document).text(rectnop);
    // $('#compname', newWindow.document).text(compname);
    // $('#address', newWindow.document).text(address);
    // $('#recref', newWindow.document).text(recref);
    // $('.headingname', newWindow.document).text(heading);
    // $('#asadvref', newWindow.document).text(asadvref);
    // $('#name', newWindow.document).text(name);
    // $('#phone', newWindow.document).text(mob);
    // $('#email', newWindow.document).text(email);
    // $('#amount', newWindow.document).text(Math.abs(amount));
    // $('#textamount', newWindow.document).text(textamount);
    // $('#curdate', newWindow.document).text(curdate);
    // $('#nature', newWindow.document).text(paymentmode);
    // $('#u_name', newWindow.document).text(u_name);
    // $('#complogo', newWindow.document).attr('src', logo);
    // $('#compname2', newWindow.document).text(compname);
    // $('#address2', newWindow.document).text(address);
    // $('#recref2', newWindow.document).text(recref);
    // $('#asadvref2', newWindow.document).text(asadvref);
    // $('#name2', newWindow.document).text(name);
    // $('#phone2', newWindow.document).text(mob);
    // $('#email2', newWindow.document).text(email);
    // $('#amount2', newWindow.document).text(Math.abs(amount));
    // $('#textamount2', newWindow.document).text(textamount);
    // $('#curdate2', newWindow.document).text(curdate);
    // $('#nature2', newWindow.document).text(paymentmode);
    // $('#u_name2', newWindow.document).text(u_name);
    // $('#complogo2', newWindow.document).attr('src', logo);
    // setTimeout(function() {
    // newWindow.print();
    // newWindow.close();
    // }, 500);
    // };
    // } --}}
    {{-- // }
    </script> --}}
@endsection
