@extends('property.layouts.main')
@section('main-container')
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>
        #usernames {
            max-height: 33em;
            max-width: fit-content;
            overflow: auto;
            text-align: left;
            position: fixed;
            top: 15%;
            left: 12%;
            z-index: 50;
        }

        #usernames ul {
            background: #c8d5b9;
            list-style-type: none;
            padding: 0;
            margin: 0;
            transition: background-color 0.6 ease;
            cursor: auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            width: max-content;
        }

        #usernames ul li:first-child {
            cursor: move;
            background: #8fc0a9;
            color: white;
            display: flex;
            justify-content: space-between;
        }

        #usernames ul:hover {
            background-color: #faf3dd;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }

        #usernames::-webkit-scrollbar {
            width: 3px;
            height: 3px;
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-thumb:hover {
            background-color: #000000;
        }

        .cashierreport #usernames::-webkit-scrollbar-thumb {
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
            background-color: #84e900;
        }

        #usernames::-webkit-scrollbar-thumb:active {
            background: #2708da;
        }

        /* Checkout Register Ul End */
        .titlep {
            display: none;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }

        .circle-time-input {
            width: 200px;
            height: 80px;
            border-radius: 50%;
            text-align: center;
            font-size: 16px;
            border: 2px solid #0d6efd;
            background-color: #fff;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .circle-time-input:focus {
            outline: none;
            box-shadow: 0 0 10px rgba(13, 110, 253, 0.5);
            border-color: #0d6efd;
        }

        .circle-time-input::-webkit-calendar-picker-indicator {
            opacity: 0;
            /* 👈 icon ko hide kar diya */
            cursor: pointer;
            position: absolute;
            width: 100%;
            height: 100%;
        }

        .circle-time-input::-webkit-datetime-edit-fields-wrapper {
            padding: 0;
            text-align: center;
        }

        .form-check-input:hover {
            box-shadow: 0 0 4px #0d6efd;
        }

        /* Checkbox ko dark aur clearly visible banane ke liye */
        .form-check-input {
            width: 18px;
            height: 18px;
            cursor: pointer;
            accent-color: #0d6efd;
            /* ✅ Bootstrap primary blue — aap chaaho to color change kar sakte ho */
            border: 2px solid #0d6efd;
        }

        /* Jab select ho to aur bold effect aaye */
        .form-check-input:checked {
            background-color: #0d6efd;
            border-color: #0d6efd;
        }

        /* Labels ko bhi thoda bold aur readable banaya */
        .form-check-label {
            font-size: 14px;
            font-weight: 500;
            color: #000;
            margin-left: 4px;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row pt-3">
                                <div class="col-lg-6">
                                    <h3 class="card-title">Happy Hour ( Free Item )</h3>
                                </div>
                                <div class="col-lg-6">
                                </div>
                            </div>
                            <form class="form" method="POST" action="javascript:void(0)" autocomplete="off"
                                name="happyhoursubmitform" id="happyhoursubmitform" enctype="multipart/form-data">
                                @csrf

                                <!-- ✅ SECTION 1: Name & Outlet -->
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Name</label>
                                        <input type="text" name="name" id="name" class="form-control form-control-sm"
                                            placeholder="Happy Hour">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="outlet_id">Outlet</label>
                                        <select class="form-control form-control-sm" name="outlet_id" id="outlet_id" onchange="getSelectItems(this.value ,'a');">
                                            <option value="">Select Outlet</option>
                                            @foreach ($outletName as $outlet)
                                                <option value="{{ $outlet->dcode }}">{{ $outlet->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <!-- ✅ SECTION 2: Date & Time -->
                                <div class="row mb-3">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="start_date">Start Date</label>
                                        <input type="date" name="start_date" id="start_date"
                                            class="form-control form-control-sm" value="{{ ncurdate() }}">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="from_time">Start Time</label>
                                        <input type="time" name="from_time" id="from_time"
                                            class="form-control form-control-sm" value="{{ date('H:i') }}">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="end_date">End Date</label>
                                        <input type="date" name="end_date" id="end_date"
                                            class="form-control form-control-sm" value="{{ ncurdate() }}">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="to_time">End Time</label>
                                        <input type="time" name="to_time" id="to_time" class="form-control form-control-sm" value="{{ date('H:i', strtotime('+1 hour')) }}">
                                    </div>
                                </div>

                                <!-- ✅ SECTION 3: Items & Qty -->
                                <div class="row mb-3">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="item_name">Item Name</label>
                                        <select name="item_name" id="item_name" class="form-control form-control-sm">
                                            {{-- @foreach ($itemName as $item)
                                            <option value="{{ $item->Code }}">{{ $item->name }}</option>
                                            @endforeach --}}
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="qty">Qty</label>
                                        <input type="number" name="qty" id="qty" class="form-control form-control-sm">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="free_item_name">Free Item</label>
                                        <select name="free_item_name" id="free_item_name"
                                            class="form-control form-control-sm">
                                            {{-- @foreach ($itemName as $item)
                                            <option value="{{ $item->Code }}">{{ $item->name }}</option>
                                            @endforeach --}}
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="free_qty">Free Qty</label>
                                        <input type="number" name="free_qty" id="free_qty"
                                            class="form-control form-control-sm">
                                    </div>
                                </div>

                                <!-- ✅ SECTION 4: Days & Status -->
                                <div class="row mb-3">
                                    <div class="col-md-9">
                                        <label class="col-form-label d-block mb-1">Days</label>
                                        <div class="d-flex flex-wrap gap-3">
                                            <div class="form-check me-2">
                                                <input type="checkbox" id="alldays" class="form-check-input">
                                                <label for="alldays" class="form-check-label">All</label>
                                            </div>
                                            @foreach (['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'] as $day)
                                                <div class="form-check me-2">
                                                    <input type="checkbox" name="day[]" value="{{ $day }}"
                                                        class="form-check-input day-checkbox" id="{{ $day }}">
                                                    <label for="{{ $day }}"
                                                        class="form-check-label text-capitalize">{{ $day }}</label>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="status">Status</label>
                                        <select name="status" id="status" class="form-control form-control-sm">
                                            <option value="Y">Active</option>
                                            <option value="N">Inactive</option>
                                        </select>
                                    </div>
                                </div>

                                <!-- ✅ Submit Button -->
                                <div class="text-center">
                                    <button id="submitBtn" type="submit" class="btn btn-primary btn-sm px-4">Submit
                                        +</button>
                                </div>
                            </form>


                            <div class="table-responsive">
                                <table id="happyhour"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Name</th>
                                            <th>Start Date / Time</th>
                                            <th>End Date / Time</th>
                                            <th>Outlet</th>
                                            <th>Item</th>
                                            <th>Qty</th>
                                            <th>Free Item</th>
                                            <th>Free Qty</th>
                                            <th>Day's</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #/ container -->
        <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateModalLabel">Update Happy Hour</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form id="happyhourupdate" class="form-horizontal" method="POST" action="javascript:void(0)">
                            @csrf
                            <input type="hidden" name="sn" id="update_id">

                            <!-- ✅ SECTION 1: Name & Outlet -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="col-form-label" for="update_name">Name</label>
                                    <input type="text" name="name" id="update_name" class="form-control form-control-sm"
                                        placeholder="Happy Hour">
                                </div>
                                <div class="col-md-6">
                                    <label class="col-form-label" for="update_outlet_id">Outlet</label>
                                    <select class="form-control form-control-sm" name="outlet_id" id="update_outlet_id" onchange="getSelectItems(this.value , 'u');">
                                        <option value="">Select Outlet</option>
                                        @foreach ($outletName as $outlet)
                                            <option value="{{ $outlet->dcode }}">{{ $outlet->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <!-- ✅ SECTION 2: Date & Time -->
                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_start_date">Start Date</label>
                                    <input type="date" name="start_date" id="update_start_date"
                                        class="form-control form-control-sm" min="{{ date('Y-m-d') }}">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_from_time">Start Time</label>
                                    <input type="time" name="from_time" id="update_from_time"
                                        class="form-control form-control-sm">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_end_date">End Date</label>
                                    <input type="date" name="end_date" id="update_end_date"
                                        class="form-control form-control-sm">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_to_time">End Time</label>
                                    <input type="time" name="to_time" id="update_to_time"
                                        class="form-control form-control-sm">
                                </div>
                            </div>

                            <!-- ✅ SECTION 3: Item & Qty -->
                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_item_name">Item Name</label>
                                    <select name="item_name" id="update_item_name" class="form-control form-control-sm">
                                        @foreach ($itemName as $item)
                                            <option value="{{ $item->Code }}">{{ $item->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_qty">Qty</label>
                                    <input type="number" name="qty" id="update_qty" class="form-control form-control-sm">
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_free_item_name">Free Item</label>
                                    <select name="free_item_name" id="update_free_item_name"
                                        class="form-control form-control-sm">
                                        @foreach ($itemName as $item)
                                            <option value="{{ $item->Code }}">{{ $item->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_free_qty">Free Qty</label>
                                    <input type="number" name="free_qty" id="update_free_qty"
                                        class="form-control form-control-sm">
                                </div>
                            </div>

                            <!-- ✅ SECTION 4: Days & Status -->
                            <div class="row mb-3">
                                <div class="col-md-9">
                                    <label class="col-form-label d-block mb-1">Days</label>
                                    <div class="d-flex flex-wrap gap-3">
                                        <div class="form-check me-2">
                                            <input type="checkbox" id="update_alldays" class="form-check-input">
                                            <label for="update_alldays" class="form-check-label">All</label>
                                        </div>
                                        @foreach (['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'] as $day)
                                            <div class="form-check me-2">
                                                <input type="checkbox" name="day[]" value="{{ $day }}"
                                                    class="form-check-input day-checkbox" id="update_{{ $day }}">
                                                <label for="update_{{ $day }}"
                                                    class="form-check-label text-capitalize">{{ $day }}</label>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <label class="col-form-label" for="update_status">Status</label>
                                    <select name="status" id="update_status" class="form-control form-control-sm">
                                        <option value="Y">Active</option>
                                        <option value="N">Inactive</option>
                                    </select>
                                </div>
                            </div>

                            <!-- ✅ Submit Button -->
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary btn-sm px-4">Update</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>


        <script>
            const startDate = document.getElementById('start_date');
            const startTime = document.getElementById('from_time');
            const endDate = document.getElementById('end_date');
            const endTime = document.getElementById('to_time');
            const allCheckbox = document.getElementById('alldays');
            const dayCheckboxes = document.querySelectorAll('.day-checkbox');

            document.querySelectorAll('.circle-time-input').forEach(function(input) {
                input.addEventListener('focus', function() {
                    // ye trick picker ko turant khol deti hai
                    input.showPicker && input.showPicker();
                });
            });

            // ✅ All ko click karne par sab ko select/unselect karo
            allCheckbox.addEventListener('change', function() {
                dayCheckboxes.forEach(cb => cb.checked = this.checked);
            });

            // ✅ Agar sab manually select ho gaye to All ko bhi auto check karo
            dayCheckboxes.forEach(cb => {
                cb.addEventListener('change', function() {
                    const allSelected = Array.from(dayCheckboxes).every(c => c.checked);
                    allCheckbox.checked = allSelected;
                });
            });

            // ✅ Start Date select hone par End Date ka min set karein
            startDate.addEventListener('change', () => {
                endDate.min = startDate.value;
                if (endDate.value && endDate.value < startDate.value) {
                    endDate.value = startDate.value;
                }
            });

            // ✅ End Date select hone par agar same date ho to End Time ka min set karein
            endDate.addEventListener('change', () => {
                if (endDate.value === startDate.value) {
                    endTime.min = startTime.value;
                } else {
                    endTime.removeAttribute('min');
                }
            });

            // ✅ Start Time change hone par agar same date hai to end time ka min set karein
            startTime.addEventListener('change', () => {
                if (endDate.value === startDate.value) {
                    endTime.min = startTime.value;
                }
            });

            $(document).on('click', '.editBtn', function() {

                let outlet = $(this).data('outlet');
                let item = $(this).data('item');
                let freeItem = $(this).data('freeitem');

                // Set all modal field values
                $('#update_outlet_id').val(outlet);

                // 👇 Outlet set karte hi item list reload karo
                getSelectItems(outlet, 'u', function() {
                    setTimeout(function() {
                        $('#update_item_name').val(String(item)).trigger('change');
                        $('#update_free_item_name').val(String(freeItem)).trigger('change');
                    }, 100);
                });
                // Button ke attributes se value nikalna
                let id = $(this).data('update_id');
                let name = $(this).data('update_name');
                let status = $(this).data('status');
                let startdate = $(this).data('startdate');
                let enddate = $(this).data('enddate');
                let fromtime = $(this).data('fromtime');
                let totime = $(this).data('totime');
                //let outlet = $(this).data('outlet');
                // let item = $(this).data('item');
                let qty = $(this).data('qty');
                //let freeitem = $(this).data('freeitem');
                let freeqty = $(this).data('freeqty');

                // Form ke fields me set karna
                $('#update_id').val(id); // agar hidden field h
                $('#update_name').val(name);
                $('#update_status').val(status);
                $('#update_start_date').val(startdate);
                $('#update_end_date').val(enddate);
                $('#update_from_time').val(fromtime);
                $('#update_to_time').val(totime);
                // $('#update_outlet_id').val(outlet);
                // $('#update_item_name').val(item);
                $('#update_qty').val(qty);
                //$('#update_free_item_name').val(freeitem);
                $('#update_free_qty').val(freeqty);

                // ✅ Agar checkbox ya day[] bhi set karni hai
                $('input[name="day[]"]').prop('checked', false); // sab uncheck karo
                if ($(this).data('days')) {
                    let days = $(this).data('days').split(','); // Example: "monday,tuesday"
                    days.forEach(function(day) {
                        $('input[name="day[]"][value="' + day + '"]').prop('checked', true);
                    });
                }
            });



            $(document).ready(function() {
                var fpnoColors = {};
                var fpnoColorIndex = 0;
                var table = $('#happyhour').DataTable({
                    processing: true,
                    serverSide: true,
                    searching: true,
                    paging: true,
                    ordering: true,
                    ajax: {
                        url: '{{ route('happyhoursdata') }}',
                        type: 'GET',
                        error: function(xhr) {
                            let msg = 'Error loading data.';
                            if (xhr.responseJSON && xhr.responseJSON.message) {
                                msg = xhr.responseJSON.message;
                            }
                            pushNotify('error', msg);
                        }
                    },
                    columns: [{
                            data: 'sno',
                            name: 'sno'
                        }, // S.No
                        {
                            data: 'name',
                            name: 'name'
                        }, // Name
                        {
                            data: 'start_time',
                            name: 'start_time'
                        }, // Start Time
                        {
                            data: 'end_time',
                            name: 'end_time'
                        }, // End Time
                        {
                            data: 'outlet',
                            name: 'outlet'
                        }, // Outlet
                        {
                            data: 'item',
                            name: 'item'
                        }, // Item
                        {
                            data: 'qty',
                            name: 'qty'
                        }, // Qty
                        {
                            data: 'freeitem',
                            name: 'freeitem'
                        }, // Free Item
                        {
                            data: 'freeqty',
                            name: 'freeqty'
                        }, // Free Qty
                        {
                            data: 'days',
                            name: 'days'
                        }, // Days
                        {
                            data: 'status',
                            name: 'status'
                        }, // Status
                        {
                            data: 'action',
                            name: 'action'
                        }, // Action
                    ],
                    dom: 'Bfrtip',
                    buttons: [{
                            text: 'CSV <i class="fa fa-file-excel-o"></i>',
                            className: 'btn btn-success',
                            action: function(e, dt, button, config) {
                                // redirect to controller route that returns csv file
                                window.location.href = '/happyhourexport';
                            }
                        },
                        {
                            extend: 'print',
                            text: 'Print <i class="fa-solid fa-print"></i>',
                            title: 'Designation Master',
                            filename: 'Designation Master',
                            footer: true,
                            customize: function(win) {
                                $(win.document.body).find('th').removeClass('sorting sorting_asc sorting_desc');
                                $(win.document.body).find('table').css('margin-top', '100px');
                                $(win.document.body).prepend('<div class="titlep">' + $('.titlep').html() + '</div>');
                                var style = '<style>';
                                style += '.none { display: none !important; }';
                                style += '</style>';
                                $(win.document.head).append(style);
                            },
                            action: function(e, dt, button, config) {
                                exportAllData(e, dt, button, config, $.fn.dataTable.ext.buttons.print.action);
                            }
                        }
                    ]
                });

                function exportAllData(e, dt, button, config, exportAction) {
                    var oldStart = dt.settings()[0]._iDisplayStart;

                    dt.one('preXhr', function(e, s, data) {

                        data.start = 0;
                        data.length = 2147483647;

                        dt.one('preDraw', function(e, settings) {
                            exportAction(e, dt, button, config);
                            settings._iDisplayStart = oldStart;
                            data.start = oldStart;

                            dt.one('preDraw', function(e, settings) {
                                dt.settings()[0]._iDisplayStart = oldStart;
                                dt.draw(false);
                            });

                            return false;
                        });
                    });

                    // Trigger reload
                    dt.ajax.reload();
                }

                ///////////////  Submit Form //////////////

                $('#happyhoursubmitform').on('submit', function(e) {
                    e.preventDefault();

                    $('span.error-text').text('');

                    $.ajax({
                        url: "{{ route('addhappyhours') }}", // 
                        method: "POST",
                        data: new FormData(this),
                        processData: false,
                        contentType: false,
                        beforeSend: function() {
                            $('#submitBtn').prop('disabled', true).text('Submitting...');
                        },
                        success: function(response) {
                            $('#submitBtn').prop('disabled', false).text('Submit +');

                            if (response.status == 1) {
                                // Success
                                pushNotify('success', response.message);
                                $('#happyhoursubmitform')[0].reset();
                                $('#addModalLabel').modal('hide'); // Modal close
                                table.ajax.reload();
                                // location.reload();
                            } else {
                                pushNotify('error', response.error);
                            }
                        },
                        error: function(xhr) {
                            $('#submitBtn').prop('disabled', false).text('Submit +');

                            if (xhr.status === 422) {
                                // Laravel validation error
                                $.each(xhr.responseJSON.errors, function(key, value) {
                                    $('span.' + key + '_error').text(value[0]);
                                    pushNotify('error', value[0]);
                                });
                            } else {
                                pushNotify('error', response.error);
                            }
                        }
                    });
                });


                ///////////////  Update Form //////////////

                $('#happyhourupdate').on('submit', function(e) {
                    e.preventDefault();

                    $('span.error-text').text(''); // Clear previous errors

                    $.ajax({
                        url: "{{ route('edithappyhours') }}", // Laravel route for update
                        method: "POST",
                        data: new FormData(this),
                        processData: false,
                        contentType: false,
                        beforeSend: function() {
                            $('#happyhourupdate button[type="submit"]').prop('disabled', true).text('Updating...');
                        },
                        success: function(response) {
                            $('#happyhourupdate button[type="submit"]').prop('disabled', false).text('Update');

                            if (response.status == 1) {
                                // Success
                                pushNotify('success', response.msg);
                                $('#happyhourupdate')[0].reset();
                                $('#updateModal').modal('hide'); // Modal close
                                table.ajax.reload(); // Refresh DataTable
                            } else {
                                pushNotify('error', response.msg);
                            }
                        },
                        error: function(xhr) {
                            $('#happyhourupdate button[type="submit"]').prop('disabled', false).text('Update');

                            if (xhr.status === 422) {
                                // Laravel validation error
                                $.each(xhr.responseJSON.errors, function(key, value) {
                                    $('span.' + key + '_error').text(value[0]);
                                    pushNotify('error', value[0]);
                                });
                            } else {
                                pushNotify('error', 'Something went wrong! Please try again.');
                            }
                        }
                    });
                });


                //////////// Delete ////////////////

                $(document).on('click', '.deleteBtn', function() {
                    let id = $(this).data('id'); // Button me data-id attribute hona chahiye

                    if (confirm('Are you sure you want to delete this happy hour item?')) {
                        $.ajax({
                            url: "{{ route('deletehappyhours') }}/", // Laravel route
                            type: 'POST',
                            data: {
                                'sn': id,
                                'status': 'D', // Set status to 'D' for delete
                                _token: "{{ csrf_token() }}"
                            },
                            beforeSend: function() {
                                // Optional: disable button or show loader
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', true).text('Deleting...');
                            },
                            success: function(response) {
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');

                                if (response.status == 1) {
                                    pushNotify('success', response.msg);
                                    table.ajax.reload(); // Refresh DataTable
                                } else {
                                    pushNotify('error', response.msg);
                                }
                            },
                            error: function(xhr) {
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');
                                pushNotify('error', 'Something went wrong! Please try again.');
                            }
                        });
                    }
                });
            });


            function getSelectItems(outletId, fromStatus, callback = null) {

                $.ajax({
                    url: "{{ route('getoutlet') }}",
                    type: 'POST',
                    data: {
                        'outlet_id': outletId,
                        _token: "{{ csrf_token() }}"
                    },
                    success: function(response) {
                        if (response.status == 1) {
                            // Success
                            if (fromStatus == 'a') {
                                $('#item_name').html(response.items);
                                $('#free_item_name').html(response.items);
                            } else if (fromStatus == 'u') {

                                $('#update_item_name').html(response.items);
                                $('#update_free_item_name').html(response.items);
                            }
                            pushNotify('success', response.msg);
                            if (typeof callback === 'function') {
                                callback();
                            }
                        } else {
                            pushNotify('error', response.msg);
                        }
                    },
                    error: function(xhr) {
                        pushNotify('error', 'Something went wrong! Please try again.');
                    }
                });

            }
        </script>
    @endsection
