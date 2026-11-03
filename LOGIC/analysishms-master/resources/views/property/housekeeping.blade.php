@extends('property.layouts.main')
@section('main-container')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <div class="content-body">
        <div class="modal fade" id="housekeepmodal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <h3 class="modal-title">House Keeping Status Change <span id="forroom"></span></h3>
                        <button type="button" class="close modalclosebtn" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">

                        <div class="p-4">
                            <input type="hidden" name="roomnohide" id="roomnohide">
                            <input type="hidden" name="roomstat" id="roomstat">
                            <input type="hidden" name="roomstatorg" id="roomstatorg">
                            <div id="housekeeperdiv" class="form-group row">
                                <label for="housekeeper">House Keeper</label>
                                <select class="form-control" name="housekeeper" id="housekeeper">
                                    <option value="">Select</option>
                                    @foreach ($housekeeper as $item)
                                        <option value="{{ $item->scode }}">{{ $item->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div id="remarksdiv" class="form-group row">
                                <label for="remarks" class="form-label">Remarks</label>
                                <textarea class="form-control" name="remarks" id="remarks" placeholder="Enter Remarks" rows="3"></textarea>
                            </div>

                            <div id="oblock" style="display: none;">
                                <div id="blockddiv">
                                    <div class="form-group row">
                                        <label for="block">Block</label>
                                        <select class="form-control" name="block" id="block">
                                            <option value="">Select</option>
                                            <option value="Out of Order">Out of Order</option>
                                            <option value="Maintainence">Maintainence</option>
                                            <option value="Management">Management</option>
                                            <option value="Marriage">Marriage</option>
                                        </select>
                                    </div>
                                </div>

                                <div id="blockbaseshow" style="display: none;">
                                    <div class="form-group row">
                                        <label for="reasons">Reason</label>
                                        <input type="text" class="form-control" placeholder="Enter Reason" name="reasons"
                                            id="reasons">
                                    </div>

                                    <div class="form-group row">
                                        <label for="fromdate">From Date</label>
                                        <input type="date" class="form-control" name="fromdate" id="fromdate">
                                    </div>

                                    <div class="form-group row">
                                        <label for="todate">To Date</label>
                                        <input type="date" class="form-control" name="todate" id="todate">
                                    </div>
                                </div>

                                <div id="blockbaseshow2" style="display: none;">

                                    <div class="form-group row">
                                        <label for="guestname">Guest Name</label>
                                        <input type="text" placeholder="Enter Guest Name" class="form-control"
                                            name="guestname" id="guestname">
                                    </div>

                                    <div class="form-group row">
                                        <label for="mobileno">Mobile No</label>
                                        <input type="text" placeholder="Enter Mobile No." class="form-control"
                                            name="mobileno" id="mobileno">
                                    </div>

                                </div>

                                <div id="blockbaseshow3" style="display: none;">

                                    <div class="form-group row">
                                        <label for="clearremark">Clear Remark</label>
                                        <input type="text" placeholder="Enter Mobile No." class="form-control"
                                            name="clearremark" id="clearremark">
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>

                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" id="housekeepersave" class="btn btn-success">Save</button>
                        <button type="button" class="btn btn-secondary modalclosebtn"
                            data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body housekeeping">
                        <div>
                            {{-- <p class="headingp"><span class="green">Press</span><span> (C)-Clean </span>
                                <span class="dirtyp">(D)- Dirty</span> <span class="oorder">(O)- Block</span>
                                <span class="white">(R) Remove Block</span>
                            </p> --}}
                            <p class="headingp">
                                <span class="badge bg-success">&nbsp;&nbsp;</span> Occupied Clean &nbsp;
                                <span class="badge bg-danger">&nbsp;&nbsp;</span> Occupied Dirty &nbsp;
                                <span class="badge bg-warning">&nbsp;&nbsp;</span> Vacant Dirty &nbsp;
                                <span class="badge bg-dark">&nbsp;&nbsp;</span> Out of Order &nbsp;
                                <span class="badge bg-secondary">&nbsp;&nbsp;</span> Maintainence &nbsp;
                                <span class="badge bg-primary">&nbsp;&nbsp;</span> Management &nbsp;
                                <span class="badge bg-info">&nbsp;&nbsp;</span> Marriage
                                <span style="margin: 0 0 0 4em;" class="white">Occupied Rooms:
                                    {{ $totaloccupied }}</span>
                            </p>
                        </div>

                        <div class="container-fluid">
                            <div class="row">
                                @php
                                    $roomChunks = $rooms->chunk(10);
                                @endphp

                                @foreach ($roomChunks as $roomChunk)
                                    <div class="col-md-6 col-lg-4 mb-4">
                                        <table class="housekeepingtb table table-bordered">
                                            <thead class="table-primary">
                                                <tr>
                                                    <th>Room No</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($roomChunk as $item)
                                                    @if ($item->block == 'Out of Order')
                                                        @php
                                                            $item->status = 'Out of Order';
                                                            $item->ficon = 'fa-shield';
                                                            $item->cellclass = 'table-dark';
                                                        @endphp
                                                    @elseif($item->block == 'Maintainence')
                                                        @php
                                                            $item->status = 'Maintainence';
                                                            $item->ficon = 'fa-hammer';
                                                            $item->cellclass = 'table-secondary';
                                                        @endphp
                                                    @elseif($item->block == 'Management')
                                                        @php
                                                            $item->status = 'Management';
                                                            $item->ficon = 'fa-bars-progress';
                                                            $item->cellclass = 'table-primary';
                                                        @endphp
                                                    @elseif($item->block == 'Marriage')
                                                        @php
                                                            $item->status = 'Marriage';
                                                            $item->ficon = 'fa-life-ring';
                                                            $item->cellclass = 'table-info';
                                                        @endphp
                                                    @elseif($item->roomnoroomocc != null && $item->room_stat == 'D')
                                                        @php
                                                            $item->status = 'Occupied Dirty';
                                                            $item->ficon = 'fa-door-closed text-danger';
                                                            $item->cellclass = 'table-danger';
                                                        @endphp
                                                    @elseif($item->roomnoroomocc != null)
                                                        @php
                                                            $item->status = 'Occupied Clean';
                                                            $item->ficon = 'fa-door-closed text-success';
                                                            $item->cellclass = 'table-success';
                                                        @endphp
                                                    @elseif($item->room_stat == 'D')
                                                        @php
                                                            $item->status = 'Vacant Dirty';
                                                            $item->ficon = 'fa-door-open text-warning';
                                                            $item->cellclass = 'table-warning';
                                                        @endphp
                                                    @else
                                                        @php
                                                            $item->status = 'Vacant Clean';
                                                            $item->ficon = 'fa-door-open text-secondary';
                                                            $item->cellclass = '';
                                                        @endphp
                                                    @endif

                                                    <tr data-roomno="{{ $item->roomno }}"
                                                        data-roomstat="{{ $item->room_stat }}"
                                                        data-restcode="{{ $item->rest_code }}">
                                                        <td>{{ $item->roomno }}</td>
                                                        <td class="{{ $item->cellclass }}">
                                                            {{ $item->status }} {!! '<i class="fas ' . $item->ficon . '"></i>' !!}
                                                        </td>
                                                        <td>
                                                            <div style="display: flex; gap: 5px; align-items: center;">
                                                                <input type="text"
                                                                    oninput="this.value = this.value.toUpperCase()"
                                                                    class="form-control fiveem statvalue"
                                                                    value="{{ $item->room_stat }}">
                                                                <a data-roomno="{{ $item->roomno }}"
                                                                    data-restcode="{{ $item->rest_code ?? 'ROOM' }}"
                                                                    class="btn btn-sm btn-info roomqrcodebtn"
                                                                    href="javascript:void()"
                                                                    title="Generate HK QR Code"><i
                                                                        class="fa-solid fa-qrcode"></i></a>
                                                                <a data-roomno="{{ $item->roomno }}"
                                                                    class="btn btn-sm btn-warning guestportalqrbtn"
                                                                    href="javascript:void()"
                                                                    title="Generate Guest Portal QR Code"><i
                                                                        class="fa-solid fa-mobile-screen-button"></i></a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $(".statvalue").click(function() {
                this.select();
            });

            $(document).on('input', '.statvalue', function() {
                this.select();
                let curval = $(this);
                let roomno = curval.closest('tr').data('roomno');
                let roomstatorg = curval.closest('tr').data('roomstat');
                $('#roomstatorg').val(roomstatorg);

                if (curval.val() == 'C' && !['C', 'R', 'O'].includes(roomstatorg)) {
                    $('#roomnohide').val(roomno);
                    $('#forroom').text(roomno);
                    $('#roomstat').val('C');
                    $('#housekeepmodal').modal('show');
                }

                if (curval.val() == 'D' && !['D', 'R', 'O'].includes(roomstatorg)) {
                    $('#roomnohide').val(roomno);
                    $('#forroom').text(roomno);
                    $('#roomstat').val('D');
                    $('#housekeepmodal').find('#remarksdiv').show();
                    $('#housekeepmodal').find('#housekeeperdiv').hide();
                    $('#housekeepmodal').modal('show');
                }

                if (curval.val() == 'O' && roomstatorg != 'O') {
                    $('#roomnohide').val(roomno);
                    $('#forroom').text(roomno);
                    $('#roomstat').val('O');
                    $('#housekeepmodal').find('#housekeeperdiv').hide();
                    $('#housekeepmodal').find('#remarksdiv').hide();
                    $('#housekeepmodal').find('#oblock').show();
                    $('#housekeepmodal').modal('show');
                }

                if (curval.val() == 'R' && roomstatorg == 'O') {
                    $('#roomnohide').val(roomno);
                    $('#forroom').text(roomno);
                    $('#roomstat').val('R');
                    $('#housekeepmodal').find('#housekeeperdiv').hide();
                    $('#housekeepmodal').find('#remarksdiv').hide();
                    $('#housekeepmodal').find('#oblock').show();
                    $('#housekeepmodal').find('#blockddiv').hide();
                    $('#housekeepmodal').find('#blockbaseshow3').show();
                    $('#housekeepmodal').modal('show');
                }

            });

            $(document).on('change', '#block', function() {
                $('#clearremark, #reasons, #fromdate, #todate, #housekeeper, #remarks, #guestname, #mobileno')
                    .val('');
                $('#housekeepmodal').find('#blockbaseshow').hide();
                $('#housekeepmodal').find('#blockbaseshow2').hide();
                let block = $(this);
                if ((block.val() == 'Out of Order' || block.val() == 'Maintainence') && $('#roomstat')
                    .val() == 'O') {
                    $('#housekeepmodal').find('#blockbaseshow').show();
                } else if ((block.val() == 'Management' || block.val() == 'Marriage') && $('#roomstat')
                    .val() == 'O') {
                    $('#housekeepmodal').find('#blockbaseshow').show();
                    $('#housekeepmodal').find('#blockbaseshow2').show();
                }
            });

            $('.modalclosebtn').on('click', function() {
                $('#housekeepmodal').modal('hide');
            });

            $('#housekeepmodal').on('hidden.bs.modal', function() {
                let roomnohide = $('#roomnohide').val();
                let roomstatorg = $('#roomstatorg').val();
                let thetr = $('.housekeepingtb').find('tr').filter(function() {
                    return $(this).attr('data-roomno') == roomnohide;
                });
                thetr.find('input.statvalue').val(roomstatorg);
                $('#housekeepmodal').find('#blockbaseshow').hide();
                $('#housekeepmodal').find('#blockbaseshow2').hide();
                showLoader();
                window.location.reload();
            });

            $('#housekeepersave').on('click', function() {
                let roomno = $('#roomnohide').val();
                let housekeeper = $('#housekeeper').val();
                let remarks = $('#remarks').val() ?? '';
                let roomstat = $('#roomstat').val();
                let block = $('#block').val();
                let reasons = $('#reasons').val();
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let guestname = $('#guestname').val();
                let mobileno = $('#mobileno').val();
                let clearremark = $('#clearremark').val();

                if (roomstat == 'C') {
                    if (housekeeper.trim() == '') {
                        pushNotify('info', 'House Keeping', 'Please Select House Keeper', 'fade', 300, '',
                            '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                        return;
                    }
                    if (remarks.trim() == '') {
                        pushNotify('info', 'House Keeping', 'Please Enter Remarks', 'fade', 300, '', '',
                            true, true, true, 5000, 20, 20, 'outline', 'right top');
                        return;
                    }
                } else if (roomstat == 'D') {
                    if (remarks.trim() == '') {
                        pushNotify('info', 'House Keeping', 'Please Enter Remarks', 'fade', 300, '', '',
                            true, true, true, 5000, 20, 20, 'outline', 'right top');
                        return;
                    }
                } else if (roomstat == 'O') {
                    if (block.trim() == '') {
                        pushNotify('info', 'House Keeping', 'Please Select Block', 'fade', 300, '', '',
                            true, true, true, 5000, 20, 20, 'outline', 'right top');
                        return;
                    }
                    if (['Out of Order', 'Maintenance'].includes(block.trim())) {
                        if (reasons.trim() == '') {
                            pushNotify('info', 'House Keeping', 'Please Enter Reason', 'fade', 300, '', '',
                                true, true, true, 5000, 20, 20, 'outline', 'right top');
                            return;
                        }
                        if (fromdate.trim() == '') {
                            pushNotify('info', 'House Keeping', 'Please Select From Date', 'fade', 300, '',
                                '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            return;
                        }
                        if (todate.trim() == '') {
                            pushNotify('info', 'House Keeping', 'Please Select To Date', 'fade', 300, '',
                                '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            return;
                        }
                    } else if (['Management', 'Marriage'].includes(block.trim())) {
                        if (reasons.trim() == '') {
                            pushNotify('info', 'House Keeping', 'Please Enter Reason', 'fade', 300, '', '',
                                true, true, true, 5000, 20, 20, 'outline', 'right top');
                            return;
                        }
                        if (fromdate.trim() == '') {
                            pushNotify('info', 'House Keeping', 'Please Select From Date', 'fade', 300, '',
                                '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            return;
                        }
                        if (todate.trim() == '') {
                            pushNotify('info', 'House Keeping', 'Please Select To Date', 'fade', 300, '',
                                '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            return;
                        }
                        if (guestname.trim() == '') {
                            pushNotify('info', 'House Keeping', 'Please Enter Guest Name', 'fade', 300, '',
                                '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            return;
                        }
                        if (mobileno.trim() == '') {
                            pushNotify('info', 'House Keeping', 'Please Enter Guest Mobile', 'fade', 300,
                                '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            return;
                        }
                    }
                } else if (roomstat == 'R') {
                    // if (block.trim() == '') {
                    //     pushNotify('info', 'House Keeping', 'Please Select Block', 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                    //     return;
                    // }
                    if (clearremark.trim() == '') {
                        pushNotify('info', 'House Keeping', 'Please Enter Clear Remark', 'fade', 300, '',
                            '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                        return;
                    }
                }

                const postdata = {
                    'roomno': roomno,
                    'housekeeper': housekeeper,
                    'remarks': remarks,
                    'roomstat': roomstat,
                    'block': block,
                    'reasons': reasons,
                    'fromdate': fromdate,
                    'todate': todate,
                    'guestname': guestname,
                    'mobileno': mobileno,
                    'clearremark': clearremark
                };

                const options = {
                    method: "POST",
                    headers: {
                        'content-type': 'application/json',
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    },
                    body: JSON.stringify(postdata)
                };
                fetch('savehousecleaning', options)
                    .then(response => {
                        if (!response.ok) {
                            return response.text().then(text => {
                                let message = "An error occurred";
                                try {
                                    let json = JSON.parse(text);
                                    message = json.message || response.statusText;
                                } catch (e) {
                                    if (response.status === 404) {
                                        message = "Route not found. Please check the URL.";
                                    } else if (response.status === 500) {
                                        message =
                                            "Internal Server Error. Please try again later.";
                                    }
                                }
                                throw {
                                    status: response.status,
                                    message
                                };
                            });
                        }
                        return response.json();
                    })
                    .then(data => {
                        if (data.status === 'success') {
                            pushNotify('success', 'House Keeping', data.message, 'fade', 300, '', '',
                                true, true, true, 5000, 20, 20, 'outline', 'right top');
                            $('#housekeepmodal').modal('hide');
                            let thetr = $('.housekeepingtb').find('tr').filter(function() {
                                return $(this).attr('data-roomno') == roomno;
                            });
                            thetr.attr('data-roomstat', roomstat);
                        }
                    })
                    .catch(error => {
                        let errorMessage = error.message || "An unexpected error occurred";
                        pushNotify('error', 'House Keeping', errorMessage, 'fade', 300, '', '', true,
                            true, true, 20000, 20, 20, 'outline', 'right top');
                        console.error(error);
                    });
            });



            // HK QR Code Generation (Housekeeping Screen)
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            $(document).on('click', '.roomqrcodebtn', function() {
                let roomno = $(this).data('roomno');

                $.ajax({
                    method: "POST",
                    url: "{{ url('hkqrgenerator') }}",
                    data: {
                        rcode: roomno
                    },
                    dataType: 'json',
                    success: function(response) {
                        if (response.success) {
                            let link = document.createElement('a');
                            link.href = response.file_data;
                            link.download = response.filename;
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);

                            pushNotify('success', 'HK QR Code',
                                'HK QR Code downloaded for Room ' + roomno, 'fade', 300, '',
                                '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        } else {
                            console.error("Error: " + response.message);
                            pushNotify('error', 'HK QR Code', 'Failed: ' + response.message,
                                'fade', 300, '', '', true, true, true, 5000, 20, 20,
                                'outline', 'right top');
                        }
                    },
                    error: function(xhr) {
                        console.error("Error generating HK QR", xhr);
                        pushNotify('error', 'HK QR Code',
                            'Error generating QR. Please try again.', 'fade', 300, '', '',
                            true, true, true, 5000, 20, 20, 'outline', 'right top');
                    }
                });
            });
            $(document).on('click', '.guestportalqrbtn', function() {
                let roomno = $(this).data('roomno');

                $.ajax({
                    method: "POST",
                    url: "{{ url('guestportalqrgenerator') }}",
                    data: {
                        rcode: roomno
                    },
                    dataType: 'json',
                    success: function(response) {
                        if (response.success) {
                            let link = document.createElement('a');
                            link.href = response.file_data;
                            link.download = response.filename;
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);

                            pushNotify('success', 'Guest Portal QR',
                                'Guest Portal QR downloaded for Room ' + roomno, 'fade',
                                300, '', '', true, true, true, 3000, 20, 20, 'outline',
                                'right top');
                        } else {
                            pushNotify('error', 'Guest Portal QR', 'Failed: ' + response
                                .message, 'fade', 300, '', '', true, true, true, 5000, 20,
                                20, 'outline', 'right top');
                        }
                    },
                    error: function(xhr) {
                        pushNotify('error', 'Guest Portal QR',
                            'Error generating QR. Please try again.', 'fade', 300, '', '',
                            true, true, true, 5000, 20, 20, 'outline', 'right top');
                    }
                });
            });


        });
    </script>
@endsection
