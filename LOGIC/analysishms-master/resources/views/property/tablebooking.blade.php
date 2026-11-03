@extends('property.layouts.main')
@section('main-container')
    <style>
        .table td,
        .table th {
            padding: 5px;
        }

        #booking-card {
            border-top: 3px solid #17a2b8;
        }

        .outlet-header {
            background: #17a2b8;
            color: #fff;
            padding: 6px 14px;
            border-radius: 4px;
            font-weight: 600;
            letter-spacing: .5px;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">

            {{-- Page Title --}}
            <div class="row mb-2">
                <div class="col-12 d-flex align-items-center justify-content-between flex-wrap">
                    <h5 class="mb-0">
                        <i class="fa fa-calendar-check-o text-info mr-1"></i> Table Booking
                    </h5>
                    <span class="outlet-header">{{ strtoupper($depart->name) }}</span>
                    <button onclick="Simongoback()" type="button"
                        class="btn rhead btn-sm btn-info" name="goback"
                        id="mobileGoBack">Go Back</button>
                </div>
            </div>

            <div class="row">

                {{-- NEW BOOKING FORM --}}
                <div class="col-lg-5 col-md-12 mb-3">
                    <div class="card shadow-sm" id="booking-card">
                        <div class="card-body p-3">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h6 class="mb-0 font-weight-bold text-info">New Table Booking</h6>
                                <small class="text-muted">
                                    Booking No. &nbsp;
                                    <span class="font-weight-bold text-dark" id="displayvno">{{ $nextvno }}</span>
                                </small>
                            </div>

                            <form id="tablebookingform" autocomplete="off">
                                @csrf
                                <input type="hidden" id="dcode" value="{{ $depart->dcode }}">

                                <div class="row">
                                    <div class="col-md-6 mb-2">
                                        <label class="font-weight-bold small">Guest Name <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control form-control-sm" id="guestname" placeholder="Mr. / Ms." maxlength="35">
                                    </div>
                                    <div class="col-md-6 mb-2">
                                        <label class="font-weight-bold small">Mobile No. <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control form-control-sm" id="mobileno" placeholder="10 digit" maxlength="10">
                                    </div>
                                    <div class="col-md-4 mb-2">
                                        <label class="font-weight-bold small">Pax <span class="text-danger">*</span></label>
                                        <input type="number" class="form-control form-control-sm" id="pax" min="1" value="1">
                                    </div>
                                    <div class="col-md-8 mb-2">
                                        <label class="font-weight-bold small">Table <span class="text-danger">*</span></label>
                                        <select class="form-control form-control-sm" id="tableno">
                                            <option value="">-- Select Table --</option>

                                            @forelse($tables as $tbl)
                                                <option value="{{ $tbl->rcode }}" {{ $roomno == $tbl->rcode ? 'selected' : '' }}>
                                                    {{ $tbl->rcode !== $tbl->name && $tbl->name ? $tbl->rcode . ' - ' . $tbl->name : $tbl->rcode }}
                                                </option>
                                            @empty
                                                <option value="" disabled>No tables configured</option>
                                            @endforelse
                                        </select>
                                    </div>
                                    <div class="col-md-4 mb-2">
                                        <label class="font-weight-bold small">Booking Date <span class="text-danger">*</span></label>
                                        <input type="date" class="form-control form-control-sm" id="bookindate" value="{{ ncurdate() }}">
                                    </div>
                                    <div class="col-md-4 mb-2">
                                        <label class="font-weight-bold small">From Time <span class="text-danger">*</span></label>
                                        <input type="time" class="form-control form-control-sm" id="fromtime" value="{{ now()->format('H:i') }}">
                                    </div>

                                    <div class="col-md-4 mb-2">
                                        <label class="font-weight-bold small">To Time <span class="text-danger">*</span></label>
                                        <input type="time" class="form-control form-control-sm" id="totime" value="{{ now()->addHour()->format('H:i') }}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <label class="font-weight-bold small">Remark</label>
                                        <input type="text" class="form-control form-control-sm" id="remark" placeholder="Optional note..." maxlength="50">
                                    </div>
                                </div>

                                <div class="d-flex justify-content-end">
                                    <button type="button" class="btn btn-secondary btn-sm mr-2" id="clearbtn">
                                        <i class="fa fa-refresh"></i> Clear
                                    </button>
                                    <button type="button" class="btn btn-info btn-sm" id="submitbtn">
                                        <i class="fa fa-save"></i> Save Booking
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                {{-- BOOKING LIST --}}
                <div class="col-lg-7 col-md-12 mb-3">
                    <div class="card shadow-sm">
                        <div class="card-body p-3">
                            <h6 class="font-weight-bold text-info mb-3">
                                <i class="fa fa-list"></i> Booking List
                            </h6>
                            <div class="row mb-2 align-items-end">
                                <div class="col-md-4 mb-1">
                                    <label class="font-weight-bold small">From Date</label>
                                    <input type="date" class="form-control form-control-sm" id="listfromdate" value="{{ ncurdate() }}">
                                </div>
                                <div class="col-md-4 mb-1">
                                    <label class="font-weight-bold small">To Date</label>
                                    <input type="date" class="form-control form-control-sm" id="listtodate" value="{{ ncurdate() }}">
                                </div>
                                <div class="col-md-4 mb-1">
                                    <button class="btn btn-info btn-sm btn-block" id="loadlistbtn">
                                        <i class="fa fa-search"></i> Search
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-sm small">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Bk.No</th>
                                            <th>Bk.Date</th>
                                            <th>Guest</th>
                                            <th>Mobile</th>
                                            <th>Table</th>
                                            <th>Pax</th>
                                            <th>From</th>
                                            <th>To</th>
                                            <th>Remark</th>
                                            <th>Advance</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="bookingListBody">
                                        <tr>
                                            <td colspan="11" class="text-center text-muted">Click Search to load bookings</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    {{-- EDIT MODAL --}}
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-info text-white">
                    <h5 class="modal-title font-weight-bold">
                        <i class="fa fa-pencil"></i> Edit Table Booking — <span id="editModalBkNo"></span>
                    </h5>
                    <button type="button" class="close text-white" data-dismiss="modal"><span>&times;</span></button>
                </div>
                <div class="modal-body">
                    <form id="editbookingform" autocomplete="off">
                        @csrf
                        <input type="hidden" id="edit_sn">
                        <input type="hidden" id="edit_dcode" value="{{ $depart->dcode }}">
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label class="font-weight-bold small">Guest Name <span class="text-danger">*</span></label>
                                <input type="text" class="form-control form-control-sm" id="edit_guestname" maxlength="35">
                            </div>
                            <div class="col-md-6 mb-2">
                                <label class="font-weight-bold small">Mobile No. <span class="text-danger">*</span></label>
                                <input type="text" class="form-control form-control-sm" id="edit_mobileno" maxlength="10">
                            </div>
                            <div class="col-md-4 mb-2">
                                <label class="font-weight-bold small">Pax <span class="text-danger">*</span></label>
                                <input type="number" class="form-control form-control-sm" id="edit_pax" min="1">
                            </div>
                            <div class="col-md-8 mb-2">
                                <label class="font-weight-bold small">Table <span class="text-danger">*</span></label>
                                <select class="form-control form-control-sm" id="edit_tableno">
                                    <option value="">-- Select Table --</option>
                                    @forelse($tables as $tbl)
                                        <option value="{{ $tbl->rcode }}">
                                            {{ $tbl->rcode !== $tbl->name && $tbl->name ? $tbl->rcode . ' - ' . $tbl->name : $tbl->rcode }}
                                        </option>
                                    @empty
                                        <option value="" disabled>No tables configured</option>
                                    @endforelse
                                </select>
                            </div>
                            <div class="col-md-4 mb-2">
                                <label class="font-weight-bold small">Booking Date <span class="text-danger">*</span></label>
                                <input type="date" class="form-control form-control-sm" id="edit_bookindate">
                            </div>
                            <div class="col-md-4 mb-2">
                                <label class="font-weight-bold small">From Time <span class="text-danger">*</span></label>
                                <input type="time" class="form-control form-control-sm" id="edit_fromtime">
                            </div>
                            <div class="col-md-4 mb-2">
                                <label class="font-weight-bold small">To Time <span class="text-danger">*</span></label>
                                <input type="time" class="form-control form-control-sm" id="edit_totime">
                            </div>
                            <div class="col-12 mb-2">
                                <label class="font-weight-bold small">Remark</label>
                                <input type="text" class="form-control form-control-sm" id="edit_remark" maxlength="50">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">
                        <i class="fa fa-times"></i> Close
                    </button>
                    <button type="button" class="btn btn-warning btn-sm" id="updatebtn">
                        <i class="fa fa-save"></i> Update Booking
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function Simongoback() {
            window.location.href = `displaytable?dcode=${$('#dcode').val()}`;
        }
        $(document).ready(function() {

            const roomno = @json($roomno ?? '');

            if (roomno !== null && roomno !== '' && roomno !== undefined) {
                overlayLock($('#tableno'), 'Table Already Selected');
            }

            var dcode = $('#dcode').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            // ── Refresh booking no ────────────────────────────────────────────
            function refreshVno() {
                $.ajax({
                    url: '{{ url('gettablebookingvno') }}',
                    type: 'POST',
                    data: {
                        dcode: dcode
                    },
                    success: function(res) {
                        if (res.vno) $('#displayvno').text(res.vno);
                    }
                });
            }

            // ── Save New Booking ──────────────────────────────────────────────
            $('#submitbtn').on('click', function() {
                var guestname = $.trim($('#guestname').val());
                var mobileno = $.trim($('#mobileno').val());
                var pax = $.trim($('#pax').val());
                var tableno = $('#tableno').val();
                var bookindate = $('#bookindate').val();
                var fromtime = $('#fromtime').val();
                var totime = $('#totime').val();
                var remark = $.trim($('#remark').val());

                if (!guestname) {
                    pushNotify('warning', 'Table Booking', 'Guest Name is required', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    $('#guestname').focus();
                    return;
                }
                if (!mobileno || mobileno.length !== 10 || isNaN(mobileno)) {
                    pushNotify('warning', 'Table Booking', 'Valid 10-digit Mobile No. required', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    $('#mobileno').focus();
                    return;
                }
                if (!pax || parseInt(pax) < 1) {
                    pushNotify('warning', 'Table Booking', 'Pax must be at least 1', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    $('#pax').focus();
                    return;
                }
                if (!tableno) {
                    pushNotify('warning', 'Table Booking', 'Please select a Table', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (!bookindate) {
                    pushNotify('warning', 'Table Booking', 'Booking Date is required', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (!fromtime || !totime) {
                    pushNotify('warning', 'Table Booking', 'From & To Time required', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (fromtime >= totime) {
                    pushNotify('warning', 'Table Booking', 'To Time must be after From Time', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }

                $('#submitbtn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Saving...');
                $.ajax({
                    url: '{{ url('tablebookingsubmit') }}',
                    type: 'POST',
                    data: {
                        dcode,
                        guestname,
                        mobileno,
                        pax,
                        tableno,
                        bookindate,
                        fromtime,
                        totime,
                        remark
                    },
                    success: function(res) {
                        $('#submitbtn').prop('disabled', false).html('<i class="fa fa-save"></i> Save Booking');
                        if (res.success) {
                            pushNotify('success', 'Table Booking', res.message, 'fade', 300, '', '', true, true, true, 4000, 20, 20, 'outline', 'right top');
                            clearForm();
                            refreshVno();
                            loadBookingList();
                        } else {
                            pushNotify('error', 'Table Booking', res.message || 'Save failed!', 'fade', 300, '', '', true, true, true, 4000, 20, 20, 'outline', 'right top');
                        }
                    },
                    error: function(xhr) {
                        $('#submitbtn').prop('disabled', false).html('<i class="fa fa-save"></i> Save Booking');
                        pushNotify('error', 'Table Booking', xhr.responseJSON?.message || 'Server error!', 'fade', 300, '', '', true, true, true, 4000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            // ── Clear Form ────────────────────────────────────────────────────
            function clearForm() {
                $('#guestname').val('');
                $('#mobileno').val('');
                $('#pax').val('1');
                $('#tableno').val('');
                $('#bookindate').val('{{ ncurdate() }}');
                $('#fromtime').val('');
                $('#totime').val('');
                $('#remark').val('');
                $('#guestname').focus();
            }
            $('#clearbtn').on('click', function() {
                clearForm();
            });

            // ── Load Booking List ─────────────────────────────────────────────
            function loadBookingList() {
                var fromdate = $('#listfromdate').val();
                var todate = $('#listtodate').val();
                if (!fromdate || !todate) return;

                $('#loadlistbtn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i>');
                $.ajax({
                    url: '{{ url('gettablebookinglist') }}',
                    type: 'POST',
                    data: {
                        dcode: dcode,
                        fromdate: fromdate,
                        todate: todate
                    },
                    success: function(res) {
                        $('#loadlistbtn').prop('disabled', false).html('<i class="fa fa-search"></i> Search');
                        if (!res.success || res.data.length === 0) {
                            $('#bookingListBody').html('<tr><td colspan="11" class="text-center text-muted">No bookings found</td></tr>');
                            return;
                        }
                        var html = '';
                        $.each(res.data, function(i, row) {
                            var isCancelled = row.cancelyn === 'Y';

                            var advAmt = parseFloat(row.advance_amt || 0);
                            var advAmtHtml = advAmt > 0 ?
                                advAmt.toFixed(2) :
                                '<span class="text-muted">-</span>';

                            var tableNo = row.tabaleno || '-';
                            var remarkVal = row.remark || '';

                            var editBtn = isCancelled ? '' :
                                '<button class="btn btn-primary btn-sm editbtn mr-1" data-sn="' + row.id + '">' +
                                '<i class="fa fa-pencil"></i></button>';

                            var cancelBtn = isCancelled ?
                                '<span class="badge badge-danger">Cancelled</span>' :
                                '<button class="btn btn-danger btn-sm cancelbtn mr-1" data-sn="' + row.id + '">' +
                                '<i class="fa fa-times"></i></button>';

                            var advBtn = isCancelled ? '' :
                                '<a href="{{ url('tablebookingadvance') }}?sn=' + row.id + '&dcode=' + dcode +
                                '" class="btn btn-warning btn-sm">' +
                                '<i class="fa fa-money"></i></a>';

                            html += '<tr class="' + (isCancelled ? 'table-danger' : '') + '">' +
                                '<td class="font-weight-bold">' + row.vno + '</td>' +
                                '<td>' + fmtDate(row.bookindate) + '</td>' +
                                '<td>' + row.guestname + '</td>' +
                                '<td>' + row.mobileno + '</td>' +
                                '<td class="text-center font-weight-bold">' + tableNo + '</td>' +
                                '<td class="text-center">' + row.pax + '</td>' +
                                '<td>' + row.fromtime + '</td>' +
                                '<td>' + row.totime + '</td>' +
                                '<td>' + remarkVal + '</td>' +
                                '<td class="text-center">' + advAmtHtml + '</td>' +
                                '<td class="text-center text-nowrap">' + editBtn + cancelBtn + advBtn + '</td>' +
                                '</tr>';
                        });
                        $('#bookingListBody').html(html);
                    },
                    error: function() {
                        $('#loadlistbtn').prop('disabled', false).html('<i class="fa fa-search"></i> Search');
                        pushNotify('error', 'Booking List', 'Failed to load bookings', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    }
                });
            }
            $('#loadlistbtn').on('click', function() {
                loadBookingList();
            });
            loadBookingList();

            // ── Edit — open modal ─────────────────────────────────────────────
            $(document).on('click', '.editbtn', function() {
                var sn = $(this).data('sn');
                console.log(`sn${sn}`);
                $.ajax({
                    url: '{{ url('gettablebookingrow') }}',
                    type: 'POST',
                    data: {
                        sn: sn
                    },
                    success: function(res) {
                        if (!res.success) {
                            pushNotify('error', 'Edit', 'Booking not found!', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            return;
                        }
                        var d = res.data;
                        $('#edit_sn').val(d.id);
                        $('#editModalBkNo').text('No. ' + d.vno);
                        $('#edit_guestname').val(d.guestname);
                        $('#edit_mobileno').val(d.mobileno);
                        $('#edit_pax').val(d.pax);
                        $('#edit_tableno').val(d.tabaleno);
                        $('#edit_bookindate').val(d.bookindate);
                        $('#edit_fromtime').val(d.fromtime);
                        $('#edit_totime').val(d.totime);
                        $('#edit_remark').val(d.remark || '');
                        $('#editModal').modal('show');
                    },
                    error: function() {
                        pushNotify('error', 'Edit', 'Failed to load booking!', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            // ── Update Booking ────────────────────────────────────────────────
            $('#updatebtn').on('click', function() {
                var guestname = $.trim($('#edit_guestname').val());
                var mobileno = $.trim($('#edit_mobileno').val());
                var pax = $.trim($('#edit_pax').val());
                var tableno = $('#edit_tableno').val();
                var bookindate = $('#edit_bookindate').val();
                var fromtime = $('#edit_fromtime').val();
                var totime = $('#edit_totime').val();
                var remark = $.trim($('#edit_remark').val());

                if (!guestname) {
                    pushNotify('warning', 'Edit', 'Guest Name is required', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (!mobileno || mobileno.length !== 10 || isNaN(mobileno)) {
                    pushNotify('warning', 'Edit', 'Valid 10-digit Mobile No. required', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (!pax || parseInt(pax) < 1) {
                    pushNotify('warning', 'Edit', 'Pax must be at least 1', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (!tableno) {
                    pushNotify('warning', 'Edit', 'Please select a Table', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (!fromtime || !totime) {
                    pushNotify('warning', 'Edit', 'From & To Time required', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                if (fromtime >= totime) {
                    pushNotify('warning', 'Edit', 'To Time must be after From Time', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }

                $('#updatebtn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Updating...');
                $.ajax({
                    url: '{{ url('tablebookingupdate') }}',
                    type: 'POST',
                    data: {
                        sn: $('#edit_sn').val(),
                        dcode: $('#edit_dcode').val(),
                        guestname,
                        mobileno,
                        pax,
                        tableno,
                        bookindate,
                        fromtime,
                        totime,
                        remark
                    },
                    success: function(res) {
                        $('#updatebtn').prop('disabled', false).html('<i class="fa fa-save"></i> Update Booking');
                        if (res.success) {
                            pushNotify('success', 'Table Booking', res.message, 'fade', 300, '', '', true, true, true, 4000, 20, 20, 'outline', 'right top');
                            $('#editModal').modal('hide');
                            loadBookingList();
                        } else {
                            pushNotify('error', 'Table Booking', res.message || 'Update failed!', 'fade', 300, '', '', true, true, true, 4000, 20, 20, 'outline', 'right top');
                        }
                    },
                    error: function(xhr) {
                        $('#updatebtn').prop('disabled', false).html('<i class="fa fa-save"></i> Update Booking');
                        pushNotify('error', 'Table Booking', xhr.responseJSON?.message || 'Server error!', 'fade', 300, '', '', true, true, true, 4000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            // ── Cancel Booking ────────────────────────────────────────────────
            $(document).on('click', '.cancelbtn', function() {
                var sn = $(this).data('sn');
                var btn = $(this);
                Swal.fire({
                    title: 'Cancel Booking?',
                    text: 'This booking will be marked as cancelled.',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#dc3545',
                    cancelButtonColor: '#6c757d',
                    confirmButtonText: 'Yes, Cancel',
                    cancelButtonText: 'No'
                }).then(function(result) {
                    if (!result.isConfirmed) return;
                    btn.prop('disabled', true);
                    $.ajax({
                        url: '{{ url('tablebookingcancel') }}',
                        type: 'POST',
                        data: {
                            sn: sn
                        },
                        success: function(res) {
                            if (res.success) {
                                pushNotify('success', 'Table Booking', res.message, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                loadBookingList();
                            } else {
                                btn.prop('disabled', false);
                                pushNotify('error', 'Table Booking', res.message, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            }
                        },
                        error: function() {
                            btn.prop('disabled', false);
                            pushNotify('error', 'Table Booking', 'Cancellation failed!', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        }
                    });
                });
            });

            // ── Date format DD-Mon-YYYY ───────────────────────────────────────
            function fmtDate(str) {
                if (!str) return '';
                var d = new Date(str);
                var mon = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                return ('0' + d.getDate()).slice(-2) + '-' + mon[d.getMonth()] + '-' + d.getFullYear();
            }

        });
    </script>
@endsection
