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
    <style>
        #changeroomform .compact-form {
            height: 259px;
            width: 681px;
            font-size: 0.85rem;
            overflow-y: auto;
            padding: 8px;
            border: 1px solid #dee2e6;
            border-radius: 4px;
            background-color: #fff;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1050;
        }

        #changeroomform .compact-form h5 {
            font-size: 1rem;
            margin: 0;
            padding: 2px 0;
        }

        #changeroomform .compact-form .col-form-label-sm {
            font-size: 0.7rem;
            padding: 0;
            margin-bottom: 1px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        #changeroomform .compact-form .form-control-sm {
            height: calc(1.5em + 0.25rem + 2px);
            padding: 0.15rem 0.3rem;
            font-size: 0.75rem;
        }

        #changeroomform .compact-form .table-sm th,
        #changeroomform .compact-form .table-sm td {
            padding: 0.15rem;
            font-size: 0.75rem;
        }

        #changeroomform .table-container {
            max-height: 80px;
            overflow-y: auto;
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

<div class="modal-body">
    {{-- action="{{ url('changeroomstore') }}" --}}
    <form class="form" action="{{ url('changeroomstore') }}" name="changeroomform" id="changeroomform" method="POST"
        onsubmit="return validateDiscountFields()">
        @csrf
        <input type="hidden" value="{{ $data->rodocid }}" name="docid" id="docid" class="form-control">
        <input type="hidden" value="{{ $data->sno }}" name="sno" id="sno" class="form-control">
        <input type="hidden" value="{{ $data->roomoccsno1 }}" name="sno1" id="sno1" class="form-control">
        <input type="hidden" value="{{ $data->chkindate }}" name="checkindate" id="checkindate">
        <input type="hidden" value="{{ $data->depdate }}" name="checkoutdate" id="checkoutdate">
        <div class="text-center">
            <h5 class="text-danger">Old Room Details</h5>
        </div>
        <table class="table walkin-table table-hover">
            <thead>
                <th>Check-In</th>
                <th></th>
                <th>Departure</th>
                <th></th>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input readonly type="date" name="checkindate" class="form-control low alibaba"
                            placeholder="2023-10-26" value="{{ $data->chkindate }}" id="checkindate"
                            onchange="validateDates()" required>
                    </td>
                    <td>
                        <div class="input-group">
                            <input readonly type="time" value="{{ $data->chkintime }}" id="checkintime"
                                name="checkintime" class="form-control low" required>
                        </div>
                    </td>
                    <td>
                        <input readonly type="date" value="{{ $data->depdate }}" name="checkoutdate"
                            class="form-control low alibaba" placeholder="2023-10-26" id="checkoutdate"
                            onchange="validateDates()" required>
                        <span class="text-danger absolute-element" id="date-error"></span>
                    </td>
                    <td>
                        <div class="input-group">
                            <input readonly type="time" value="{{ $data->deptime }}" id="checkouttime"
                                name="checkouttime" class="form-control low" required>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <table class="table-hover walkin-multi" id="gridtaxstructure">
            <thead>
                <th>Room Type</th>
                <th>Plan</th>
                <th>Room</th>
                <th>Adult</th>
                <th>Child</th>
                <th>Rate Rs.</th>
                <th>Tax Inc.</th>
            </thead>
            <tbody>
                <tr class="data-row">
                    <td>
                        <select disabled id="cat_code" name="cat_code" class="form-control  sl" required>
                            @if (empty($data->roomcat))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                            @endif
                            @foreach ($roomcat as $list)
                                <option value="{{ $list->cat_code }}"
                                    {{ $data->roomcat == $list->cat_code ? 'selected' : '' }}>{{ $list->name }}
                                </option>
                            @endforeach
                        </select>
                    </td>
                    <td><select disabled id="planmaster{{ $data->roomoccsno1 }}" name="planmaster{{ $data->roomoccsno1 }}"
                            class="form-control sl">
                            @if (empty($data->plancode))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                                <option value="{{ $data->plancode }}" selected>{{ $data->planname }}</option>
                            @endif
                        </select>
                    </td>
                    <td><select disabled id="roommast" name="roommast" class="form-control sl" required>
                            @if (empty($data->roomno))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                                <option value="{{ $data->roomno }}" selected>{{ $data->roomno }}</option>
                            @endif
                        </select></td>
                    <td><select disabled id="adult" name="adult" class="form-control sl" required>
                            @if (empty($data->adult))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                            @endif
                            <option value="1" {{ $data->adult == '1' ? 'selected' : '' }}>1</option>
                            <option value="2" {{ $data->adult == '2' ? 'selected' : '' }}>2</option>
                            <option value="3" {{ $data->adult == '3' ? 'selected' : '' }}>3</option>
                            <option value="4" {{ $data->adult == '4' ? 'selected' : '' }}>4</option>
                            <option value="5" {{ $data->adult == '5' ? 'selected' : '' }}>5</option>
                        </select></td>
                    <td><select disabled id="child" name="child" class="form-control sl" required>
                            @if (empty($data->child))
                                <option value="0" selected>0</option>
                            @else
                                <option value="0" {{ $data->child == '0' ? 'selected' : '' }}>0</option>
                                <option value="1" {{ $data->child == '1' ? 'selected' : '' }}>1</option>
                                <option value="2" {{ $data->child == '2' ? 'selected' : '' }}>2</option>
                            @endif
                        </select></td>
                    <td><input readonly type="text" name="rate" id="rate"
                            class="form-control ratechk sp" value="{{ $data->originalamount }}" required></td>
                    <td><select disabled class="form-control taxchk sl" name="tax_inc" id="tax_inc" required>
                            @if (empty($data->rrtaxinc))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                            @endif
                            <option value="Y" {{ $data->rrtaxinc == 'Y' ? 'selected' : '' }}>Yes</option>
                            <option value="N" {{ $data->rrtaxinc == 'N' ? 'selected' : '' }}>No</option>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="text-center">
            <h5 class="text-kimberly">New Room Details</h5>
        </div>

        <table class="table-hover walkin-multi" id="gridtaxstructure">
            <thead>
                <th>Room Type</th>
                <th>Plan</th>
                <th>Room</th>
                <th>Adult</th>
                <th>Child</th>
                <th>Rate Rs.</th>
                <th>Tax Inc.</th>
            </thead>
            <tbody>
                <tr class="data-row">
                    <td>
                        <select id="cat_code{{ $data->roomoccsno1 }}" name="cat_code{{ $data->roomoccsno1 }}"
                            class="form-control sl cat_code" required>
                            @if (empty($data->roomcat))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                            @endif
                            @foreach ($roomcat as $list)
                                <option value="{{ $list->cat_code }}"
                                    {{ $data->roomcat == $list->cat_code ? 'selected' : '' }}>{{ $list->name }}
                                </option>
                            @endforeach
                        </select>
                        <input type="hidden" value="{{ $data->planedit }}" class="form-control" name="planedit{{ $data->roomoccsno1 }}" id="planedit{{ $data->roomoccsno1 }}" readonly>
                    </td>
                    <td><select id="planmaster{{ $data->roomoccsno1 }}" name="planmaster{{ $data->roomoccsno1 }}"
                            class="form-control sl planmaster planmastclass">
                            <option value="" {{ empty($data->plancode) ? 'selected' : '' }}>Select</option>
                            @foreach ($plans as $item)
                                <option value="{{ $item->pcode }}" {{ $data->plancode == $item->pcode ? 'selected' : '' }}>
                                    {{ $item->name }}
                                </option>
                            @endforeach
                        </select>
                        @if ($data->planedit == 'Y')
                            <span data-sn="{{ $data->roomoccsno1 }}" class="text-center planviewbtn ARK font-weight-bold">View Plan</span>
                        @endif
                    </td>
                    <td><select id="roommast{{ $data->roomoccsno1 }}" name="roommast{{ $data->roomoccsno1 }}"
                            class="form-control sl roommast" required>
                            @if (empty($data->roomno))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                                <option value="{{ $data->roomno }}" selected>{{ $data->roomno }}</option>
                            {{-- @endif --}}
                            @foreach ($availrooms as $list)
                                <option value="{{ $list->rcode }}">{{ $list->rcode }}
                                </option>
                            @endforeach
                            @endif
                        </select></td>
                    <td><select id="adult{{ $data->roomoccsno1 }}" name="adult{{ $data->roomoccsno1 }}"
                            class="form-control sl" required>
                            @if (empty($data->adult))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                            @endif
                            <option value="1" {{ $data->adult == '1' ? 'selected' : '' }}>1</option>
                            <option value="2" {{ $data->adult == '2' ? 'selected' : '' }}>2</option>
                            <option value="3" {{ $data->adult == '3' ? 'selected' : '' }}>3</option>
                            <option value="4" {{ $data->adult == '4' ? 'selected' : '' }}>4</option>
                            <option value="5" {{ $data->adult == '5' ? 'selected' : '' }}>5</option>
                        </select></td>
                    <td><select id="child{{ $data->roomoccsno1 }}" name="child{{ $data->roomoccsno1 }}"
                            class="form-control sl" required>
                            @if (empty($data->child))
                                <option value="0" selected>0</option>
                            @else
                                <option value="0" {{ $data->child == '0' ? 'selected' : '' }}>0</option>
                                <option value="1" {{ $data->child == '1' ? 'selected' : '' }}>1</option>
                                <option value="2" {{ $data->child == '2' ? 'selected' : '' }}>2</option>
                            @endif
                        </select></td>
                    <td><input type="text" name="rate{{ $data->roomoccsno1 }}" id="rate{{ $data->roomoccsno1 }}"
                            class="form-control ratechk sp" value="{{ $data->originalamount }}" required></td>
                    <td><select class="form-control taxchk sl" name="tax_inc{{ $data->roomoccsno1 }}"
                            id="tax_inc{{ $data->roomoccsno1 }}" required>
                            @if (empty($data->rrtaxinc))
                                <option value="" selected>Select</option>
                            @else
                                <option value="">Select</option>
                            @endif
                            <option value="Y" {{ $data->rrtaxinc == 'Y' ? 'selected' : '' }}>Yes</option>
                            <option value="N" {{ $data->rrtaxinc == 'N' ? 'selected' : '' }}>No</option>
                    </td>
                    <td>
                        @if ($data->planedit == 'Y')
                            <div class="d-flex justify-content-center align-items-center">
                                <div style="display: none;" id="table-planmast{{ $data->roomoccsno1 }}" class="table-responsive table-planmast compact-form position-fixed">
                                    <h5 class="text-center mb-1">Plan Details</h5>
                                    <div class="row g-1 mb-1">
                                        <div class="col-2">
                                            <label class="col-form-label-sm" for="planname{{ $data->roomoccsno1 }}">Plan</label>
                                            <input type="text" value="{{ $data->planname }}" class="form-control form-control-sm" name="planname{{ $data->roomoccsno1 }}" id="planname{{ $data->roomoccsno1 }}" readonly>
                                        </div>
                                        <div class="col-2">
                                            <label class="col-form-label-sm" for="plankaamount{{ $data->roomoccsno1 }}">Plan Amount</label>
                                            <input autocomplete="off" type="text" value="{{ $data->bnetplanamt }}" class="form-control form-control-sm planrow" name="plankaamount{{ $data->roomoccsno1 }}" id="plankaamount{{ $data->roomoccsno1 }}">
                                        </div>
                                        <div class="col-3">
                                            <label class="col-form-label-sm" for="taxincplanroomrate{{ $data->roomoccsno1 }}">Inc. In Room</label>
                                            <input type="text" value="{{ $data->btaxinc }}" class="form-control form-control-sm" name="taxincplanroomrate{{ $data->roomoccsno1 }}" id="taxincplanroomrate{{ $data->roomoccsno1 }}" readonly>
                                        </div>
                                        <div class="col-2">
                                            <label class="col-form-label-sm" for="roomrate{{ $data->roomoccsno1 }}">Room Rate</label>
                                            <input type="text" value="{{ $data->broom_rate_before_tax }}" class="form-control form-control-sm" name="roomrate{{ $data->roomoccsno1 }}" id="roomrate{{ $data->roomoccsno1 }}" readonly>
                                        </div>
                                        <div class="col-3">
                                            <label class="col-form-label-sm" for="netroomrate{{ $data->roomoccsno1 }}">Net Room Rate</label>
                                            <input type="text" value="{{ $data->bnetplanamt - $data->bamount }}" class="form-control form-control-sm" name="netroomrate{{ $data->roomoccsno1 }}" id="netroomrate{{ $data->roomoccsno1 }}" readonly>
                                            <input type="hidden" value="{{ $data->btotal_rate }}" name="plansumrate{{ $data->roomoccsno1 }}" id="plansumrate{{ $data->roomoccsno1 }}">
                                            <input type="hidden" value="{{ $data->btaxstru }}" name="taxstruplan{{ $data->roomoccsno1 }}" id="taxstruplan{{ $data->roomoccsno1 }}">
                                            <input type="hidden" value="{{ $data->room_perplan }}" name="planpercent{{ $data->roomoccsno1 }}" id="planpercent{{ $data->roomoccsno1 }}">
                                            <input type="hidden" value="{{ $data->pcode }}" name="plancodeplan{{ $data->roomoccsno1 }}" id="plancodeplan{{ $data->roomoccsno1 }}" readonly>
                                        </div>
                                    </div>

                                    <div class="table-container px-1">
                                        <table id="planmasttable{{ $data->roomoccsno1 }}" class="table table-sm table-bordered mb-1">
                                            <thead>
                                                <tr class="small">
                                                    <th>Sn</th>
                                                    <th>Fixed Charge</th>
                                                    <th>Amount</th>
                                                    <th>Percentage</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>{{ $data->roomoccsno1 }}</td>
                                                    <td>{{ $data->chargename }}</td>
                                                    <td><input autocomplete="off" type="text" value="{{ $data->bamount }}" class="form-control form-control-sm rowdamount" name="rowdamount{{ $data->roomoccsno1 }}" id="rowdamount{{ $data->roomoccsno1 }}"></td>
                                                    <td>
                                                        <input type="text" value="{{ $data->bplanper }}" class="form-control form-control-sm" name="rowdplan_per{{ $data->roomoccsno1 }}" id="rowdplan_per{{ $data->roomoccsno1 }}" readonly>
                                                        <input type="hidden" value="{{ $data->bfixrate }}" name="rowdplanfixrate{{ $data->roomoccsno1 }}" id="rowdplanfixrate{{ $data->roomoccsno1 }}" readonly>
                                                        <input type="hidden" value="{{ $data->brev_code }}" name="rowsrev_code{{ $data->roomoccsno1 }}" id="rowsrev_code{{ $data->roomoccsno1 }}" readonly>
                                                        <input type="hidden" value="{{ $data->btaxstru }}" name="rowstax_stru{{ $data->roomoccsno1 }}" id="rowstax_stru{{ $data->roomoccsno1 }}" readonly>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="row g-1 mb-1">
                                        <div class="col-3 offset-9">
                                            <input type="text" value="{{ $data->bnetplanamt }}" class="form-control form-control-sm" name="totalnetamtplan{{ $data->roomoccsno1 }}" id="totalnetamtplan{{ $data->roomoccsno1 }}" readonly>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button id="okbtnplan{{ $data->roomoccsno1 }}" name="okbtnplan{{ $data->roomoccsno1 }}" type="button" class="btn okbtncls btn-success btn-sm py-0 px-2"><i class="fa-regular fa-circle-check"></i> OK</button>
                                        <button id="closebtnplan{{ $data->roomoccsno1 }}" name="closebtnplan{{ $data->roomoccsno1 }}" type="button" class="btn closebtncls btn-danger btn-sm py-0 px-2"><i class="fa-regular fa-circle-xmark"></i> Cancel</button>
                                    </div>

                                    <div id="resizeHandle{{ $data->roomoccsno1 }}" class="resizeHandle"></div>
                                </div>
                            </div>
                        @endif

                    </td>
                </tr>
            </tbody>
        </table>

        <table class="table-hover walkin-multi" id="gridtaxstructure">
            <thead>
                <th>Reason</th>
                <th>Room Disc %</th>
                <th>Rs Disc %</th>
            </thead>
            <tbody>
                <tr class="data-row">
                    <td><input type="text" placeholder="Enter Reason" class="form-control" name="reason" id="reason" required>
                        <div id="namelist"></div>
                    </td>
                    <td>
                        <input value="{{ $data->rodisc }}" type="number" step="0.01" min="0"
                            max="100" placeholder="0.00" name="rodisc" id="rodisc"
                            class="form-control percent_value" oninput="validatePercentage(this)" onblur="validatePercentage(this)">
                    </td>
                        <td><input value="{{ $data->rsdisc }}" type="number" step="0.01" min="0"
                            max="100" placeholder="0.00" name="rsdisc" id="rsdisc"
                            class="form-control percent_value" oninput="validatePercentage(this)" onblur="validatePercentage(this)"></td>
                </tr>
            </tbody>
        </table>
        <div class="text-center mt-4">
            <button id="submitBtn" type="submit" class="btn ti-slice btn-primary"> Change Room</button>
        </div>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        // Swal.fire({
        //     title: "Under Maintenance",
        //     html: `
        // <img src="admin/images/under-construction.gif" style="width:78vh; margin-bottom: 20px;" />`,
        //     width: 600,
        //     padding: "2em",
        //     color: "#716add",
        //     background: "#fff",
        //     confirmButtonText: "OK",
        //     showConfirmButton: true,
        //     backdrop: `rgba(0,0,123,0.4)`
        // });

        $(document).on('click', '.planviewbtn', function() {
            let index = $(this).data('sn');
            console.log(index);
            $(`#table-planmast${index}`).toggle();
        });

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
                    let parenttag = $(this).parents('tr.data-row');
                    let plancode = $(this).val();
                    let rowindex = $(this).closest('tr').index() + 1;
                    let taxparent = $(`#tax_inc${rowindex}`).parent();
                    $(`#tax_inc${rowindex}`).remove();
                    let newtx = `<select class="form-control taxchk sl" name="tax_inc${rowindex}" id="tax_inc${rowindex}" required>
                                    <option value="">Select</option>
                                    <option value="Y" selected>Yes</option>
                                    <option value="N">No</option>
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
                                'X-CSRF-TOKEN': "{{ csrf_token() }}"
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
                                let wholedata = `<div class="hidedisp d-flex justify-content-center align-items-center">
                                                        <div id="table-planmast${rowindex}" class="table-responsive table-planmast compact-form position-fixed">
                                                        <h3 class="text-center">Plan Details</h3>
                                                        <div class="row g-1 mb-1">
                                                            <div class="col-2">
                                                                <label id="plannamelabel" class="col-form-label" for="planname">Plan</label>
                                                                <input type="text" value="${plan_mast.name}" class="form-control form-control-sm" name="planname${rowindex}" id="planname${rowindex}" readonly>
                                                            </div>
                                                            <div class="col-2">
                                                                <label id="plankaamountlabel" class="col-form-label" for="plankaamount">Plan Amount</label>
                                                                <input autocomplete="off" type="text" value=${plan_mast.total} class="form-control form-control-sm planrow" name="plankaamount${rowindex}" id="plankaamount${rowindex}">
                                                            </div>
                                                            <div class="col-3">
                                                              <label id="taxincplanroomratelabel" class="col-form-label" for="taxincplanroomrate">Inc. In Room Rate</label>
                                                                <select class="form-control taxincplanroomrate" name="taxincplanroomrate${rowindex}" id="taxincplanroomrate${rowindex}">
                                                                    <option value="Y" ${plan_mast.rrinc_tax == 'Y' ? 'selected' : ''}>Yes</option>
                                                                    <option value="N" ${plan_mast.rrinc_tax == 'N' ? 'selected' : ''}>No</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-2">
                                                                <label id="roomratelabel" class="col-form-label" for="roomrate">Room Rate</label>
                                                                <input type="text" value="${plan_mast.room_rate_before_tax.toFixed(2)}" class="form-control" name="roomrate${rowindex}" id="roomrate${rowindex}" readonly>
                                                            </div>
                                                            <div class="col-3">
                                                                <label id="netroomratelabel" class="col-form-label" for="netroomrate">Net Room Rate</label>
                                                                <input type="text" value="${plan_mast.room_rate}" class="form-control" name="netroomrate${rowindex}" id="netroomrate${rowindex}" readonly>
                                                                <input type="hidden" value="${plan_mast.total_rate ?? 0}" class="form-control" name="plansumrate${rowindex}" id="plansumrate${rowindex}">
                                                                <input type="hidden" value="${plan_mast.room_tax_stru}" class="form-control" name="taxstruplan${rowindex}" id="taxstruplan${rowindex}">
                                                                <input type="hidden" value="${plan_mast.room_per}" class="form-control" name="planpercent${rowindex}" id="planpercent${rowindex}">
                                                                <input type="hidden" value="${plan_mast.pcode}" class="form-control" name="plancodeplan${rowindex}" id="plancodeplan${rowindex}" readonly>
                                                            </div>
                                                        </div>
                                                        <div class="table-container px-1">
                                                            <table id="planmasttable${rowindex}" class="table">
                                                                <thead>
                                                                    <tr class="small">
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
                                                        <div class="row g-1 mb-1">
                                                            <div class="col-3 offset-9">
                                                                <input type="text" class="form-control" name="totalnetamtplan${rowindex}" id="totalnetamtplan${rowindex}" readonly>
                                                            </div>
                                                        </div>
                                                        <div class="text-center">
                                                            <div id="okbtnlabel${rowindex}" class="text-center">
                                                                <button id="okbtnplan${rowindex}" name="okbtnplan${rowindex}" type="button" class="btn okbtncls btn-success btn-sm"><i class="fa-regular fa-circle-check"></i> OK</button>
                                                                <button id="closebtnplan${rowindex}" name="closebtnplan${rowindex}" type="button" class="btn closebtncls btn-danger btn-sm"><i class="fa-regular fa-circle-xmark"></i> Cancel</button>
                                                            </div>
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
    });

    document.addEventListener('DOMContentLoaded', function() {
        var name = document.getElementById('reason');
        var namelist = document.getElementById('namelist');
        var currentLiIndex = -1;
        name.addEventListener('keydown', function(event) {
            if (event.key === 'ArrowDown') {
                event.preventDefault();
                var liElements = namelist.querySelectorAll('li');
                currentLiIndex = (currentLiIndex + 1) % liElements.length;
                if (liElements.length > 0) {
                    name.value = liElements[currentLiIndex].textContent;
                }
            }
        });
        name.addEventListener('keyup', function() {
            var cid = this.value;
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/getreasons', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    namelist.innerHTML = xhr.responseText;
                    namelist.style.display = 'block';
                }
            };
            xhr.send('cid=' + cid + '&_token=' + '{{ csrf_token() }}');

        });
        $(document).on('click', function(event) {
            if (!$(event.target).closest('li').length) {
                namelist.style.display = 'none';
            }
        });
        $(document).on('click', '#namelist li', function() {
            $('#reason').val($(this).text());
            namelist.style.display = 'none';
        });
    });

    // $(document).ready(function() {
    //     handleFormSubmission('#changeroomform', '#submitBtn', 'changeroomstore');
    // });



    function validateDiscountFields() {
        var roomDiscount = document.getElementById('rodisc');
        var rupeeDiscount = document.getElementById('rsdisc');

        validatePercentage(roomDiscount);
        validatePercentage(rupeeDiscount);

        return (roomDiscount.value === '' || Number(roomDiscount.value) <= 100) &&
            (rupeeDiscount.value === '' || Number(rupeeDiscount.value) <= 100);
    }

    function validatePercentagers2(input) {
        validatePercentage(input);
    }

    function validatePercentage2(input) {
        validatePercentage(input);
    }

    $(document).ready(function() {
        $(".cat_code").on('change', function() {
            var cid = this.value;
            $('#roommast1').val('');
            $('#planmaster1').val('');
            let checkindate = $('#checkindate').val();
            let checkoutdate = $('#checkoutdate').val();

            var xhrRooms = new XMLHttpRequest();
            xhrRooms.open('POST', '/getrooms', true);
            xhrRooms.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhrRooms.onreadystatechange = function() {
                if (xhrRooms.readyState === 4 && xhrRooms.status === 200) {
                    var result = xhrRooms.responseText;
                    $('.roommast').html(result);
                }
            };

            xhrRooms.send(
                `cid=${cid}&checkindate=${checkindate}&checkoutdate=${checkoutdate}&_token={{ csrf_token() }}`
            );
            var xhrPlans = new XMLHttpRequest();
            xhrPlans.open('POST', '/getplans', true);
            xhrPlans.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhrPlans.onreadystatechange = function() {
                if (xhrPlans.readyState === 4 && xhrPlans.status === 200) {
                    var result = xhrPlans.responseText;
                    $('.planmaster').html(result);
                }
            };
            xhrPlans.send(`cid=${cid}&_token={{ csrf_token() }}`);
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
