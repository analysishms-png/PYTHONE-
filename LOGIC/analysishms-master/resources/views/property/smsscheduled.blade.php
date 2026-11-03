@extends('property.layouts.main')
@section('main-container')
    <link href="{{ asset('admin/plugins/clockpicker/dist/jquery-clockpicker.min.css') }}" rel="stylesheet">

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="tabs">
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-1" name="tabby-tabs" checked>
                                    <label class="tabby" for="tab-1">Front Office</label>
                                    <div class="tabby-content">
                                        <form id="fomwpenviro" name="fomwpenviro">
                                            @csrf
                                            <div class="row">
                                                <!-- Left: All Textareas -->
                                                <div class="col-md-8">
                                                    <!-- Button Group -->
                                                    <div class="mb-3">
                                                        <div class="btn-group" role="group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-checkin active">Checkin</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-chkout">Checkout</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-admin">Admin</button>
                                                        </div>
                                                    </div>

                                                    <!-- Checkin Textarea -->
                                                    <div class="checkin-area">
                                                        <input type="hidden" value="{{ $envdata->checkinmsgarray }}" name="checkinmsgarray" id="checkinmsgarray">
                                                        <input type="hidden" value="{{ $envdata->checkoutmsgarray }}" name="checkoutmsgarray" id="checkoutmsgarray">
                                                        <input type="hidden" value="{{ $envdata->checkinmsgadminarray }}" name="checkinmsgadminarray" id="checkinmsgadminarray">
                                                        <input type="hidden" value="{{ $envdata->checkoutmsgadminarray }}" name="checkoutmsgadminarray" id="checkoutmsgadminarray">
                                                        <div class="mb-3">
                                                            <label for="fomtextarea" class="form-label">Checkin Message</label>
                                                            <textarea class="form-control" name="fomtextarea" id="fomtextarea" rows="4" placeholder="Enter Checkin Message">{{ $envdata->checkinmsg }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="checkintemplate" class="form-label">Checkin Template ID</label>
                                                            <input type="text" value="{{ $envdata->checkintemplate }}" class="form-control" name="checkintemplate" id="checkintemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                    <!-- Checkout Textarea -->
                                                    <div class="chkout-area d-none">
                                                        <div class="mb-3">
                                                            <label for="fomtextareachkout" class="form-label">Checkout Message</label>
                                                            <textarea class="form-control" name="fomtextareachkout" id="fomtextareachkout" rows="4" placeholder="Enter Checkout Message">{{ $envdata->checkoutmsg }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="checkouttemplate" class="form-label">Checkout Template ID</label>
                                                            <input type="text" value="{{ $envdata->checkouttemplate }}" class="form-control" name="checkouttemplate" id="checkouttemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                    <!-- Admin Area -->
                                                    <div class="admin-area d-none">
                                                        <div class="mb-3">
                                                            <div class="form-check">
                                                                <input style="display: block;" class="form-check-input" type="radio" name="admin_message_select" id="radio_checkin" value="checkin" checked>
                                                                <label class="form-check-label" for="radio_checkin">
                                                                    Admin Checkin Message
                                                                </label>
                                                            </div>
                                                            <textarea class="form-control mt-2" name="fomtextareaadminchkin" id="fomtextareaadminchkin" rows="4" placeholder="Enter Admin Checkin Message">{{ $envdata->checkinmsgadmin }}</textarea>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="checkinmsgadmintemplate" class="form-label">Checkin Template ID (Admin)</label>
                                                            <input type="text" value="{{ $envdata->checkinmsgadmintemplate }}" class="form-control" name="checkinmsgadmintemplate" id="checkinmsgadmintemplate" placeholder="Enter Template ID">
                                                        </div>

                                                        <div class="mb-3">
                                                            <div class="form-check">
                                                                <input style="display: block;" class="form-check-input" type="radio" name="admin_message_select" id="radio_checkout" value="checkout">
                                                                <label class="form-check-label" for="radio_checkout">
                                                                    Admin Checkout Message
                                                                </label>
                                                            </div>
                                                            <textarea class="form-control mt-2" name="fomtextareaadminchkout" id="fomtextareaadminchkout" rows="4" placeholder="Enter Admin Checkout Message">{{ $envdata->checkoutmsgadmin }}</textarea>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="checkoutmsgadmintemplate" class="form-label">Checkout Template ID (Admin)</label>
                                                            <input type="text" value="{{ $envdata->checkoutmsgadmintemplate }}" class="form-control" name="checkoutmsgadmintemplate" id="checkoutmsgadmintemplate" placeholder="Enter Template ID">
                                                        </div>

                                                    </div>

                                                </div>

                                                <!-- Right: Message Labels -->
                                                <div class="col-md-4" id="msglabelfom">
                                                    <p class="text-center fw-bold">Message Label</p>
                                                    <hr>
                                                    <ul id="fomcheckin" class="list-group">
                                                        @foreach (['Company Mobile' => 'mobile,company', 'Company Email' => 'email,company', 'Check In Date' => 'chkindate,roomocc', 'Guest Name' => 'name,roomocc', 'Room Discount' => 'rodisc,roomocc', 'Room Number' => 'roomno,roomocc', 'Room Tarrif' => 'roomrate,roomocc'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item fomitemcheckin">
                                                                {{ $label }}
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="fomcheckout" class="list-group d-none">
                                                        @foreach (['Company Mobile' => 'mobile,company', 'Company Email' => 'email,company', 'Debit Amount' => 'amtdr,paycharge', 'Credit Amount' => 'amtcr,paycharge', 'Bill Amount' => 'billamount,paycharge', 'Bill Number' => 'billno,paycharge', 'Check Out Date' => 'chkoutdate,roomocc', 'Guest Name' => 'name,roomocc', 'Payment Mode' => 'paytype,paycharge', 'Room Discount' => 'rodisc,roomocc', 'Room Number' => 'roomno,roomocc', 'Room Tarrif' => 'plancode,roomocc'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item fomitemcheckout">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="admincheckin" class="list-group d-none">
                                                        @foreach (['Check In Date' => 'chkindate,roomocc', 'Guest Name' => 'name,roomocc', 'Room Discount' => 'rodisc,roomocc', 'Room Number' => 'roomno,roomocc', 'Room Tarrif' => 'roomrate,roomocc'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item fomadmincheckin">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="admincheckout" class="list-group d-none">
                                                        @foreach (['Debit Amount' => 'amtdr,paycharge', 'Credit Amount' => 'amtcr,paycharge', 'Bill Amount' => 'billamount,paycharge', 'Bill Number' => 'billno,paycharge', 'Check Out Date' => 'chkoutdate,roomocc', 'Guest Name' => 'name,roomocc', 'Payment Mode' => 'paytype,paycharge', 'Room Discount' => 'rodisc,roomocc', 'Room Number' => 'roomno,roomocc', 'Room Tarrif' => 'plancode,roomocc'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item fomadmincheckout">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="text-center mt-3">
                                                <button type="submit" class="btn btn-success">
                                                    <i class="fa-solid fa-upload"></i> Submit
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <!-- Other Tabs -->
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-2" name="tabby-tabs">
                                    <label class="tabby" for="tab-2">Reservation</label>
                                    <div class="tabby-content">
                                        <form id="reswpenviro" name="reswpenviro">
                                            @csrf
                                            <div class="row">
                                                <!-- Left: All Textareas -->
                                                <div class="col-md-8">
                                                    <!-- Button Group -->
                                                    <div class="mb-3">
                                                        <div class="btn-group" role="group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-reserve active">Reserv. Msg.</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-cancel">Cancel</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-adminres">Admin</button>
                                                        </div>
                                                    </div>

                                                    <!-- Checkin Textarea -->
                                                    <div class="checkin-areares">
                                                        <input type="hidden" value="{{ $envdata->reservationarray }}" name="reservationarray" id="reservationarray">
                                                        <input type="hidden" value="{{ $envdata->adminreservationarray }}" name="adminreservationarray" id="adminreservationarray">
                                                        <input type="hidden" value="{{ $envdata->reservationcancelarray }}" name="reservationcancelarray" id="reservationcancelarray">
                                                        <input type="hidden" value="{{ $envdata->adminreservationcancelarray }}" name="adminreservationcancelarray" id="adminreservationcancelarray">
                                                        <div class="mb-3">
                                                            <label for="reservationmessage" class="form-label">Reservation Message</label>
                                                            <textarea class="form-control" name="reservationmessage" id="reservationmessage" rows="4" placeholder="Enter Reservation Message">{{ $envdata->reservation }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="reservationtemplate" class="form-label">Reservation Template ID</label>
                                                            <input type="text" value="{{ $envdata->reservationtemplate }}" class="form-control" name="reservationtemplate" id="reservationtemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                    <!-- Checkout Textarea -->
                                                    <div class="chkout-areares d-none">
                                                        <div class="mb-3">
                                                            <label for="reservationcancel" class="form-label">Cancel Message</label>
                                                            <textarea class="form-control" name="reservationcancel" id="reservationcancel" rows="4" placeholder="Enter Cancel Message">{{ $envdata->reservationcancel }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="reservationcanceltemplate" class="form-label">Cancel Template ID</label>
                                                            <input type="text" value="{{ $envdata->reservationcanceltemplate }}" class="form-control" name="reservationcanceltemplate" id="reservationcanceltemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                    <!-- Admin Area -->
                                                    <div class="admin-areares d-none">
                                                        <div class="mb-3">
                                                            <div class="form-check">
                                                                <input style="display: block;" class="form-check-input" type="radio" name="admin_message_select" id="radio_checkinres" value="checkin" checked>
                                                                <label class="form-check-label" for="radio_checkinres">
                                                                    Admin Reservation Message
                                                                </label>
                                                            </div>
                                                            <textarea class="form-control mt-2" name="adminreservation" id="adminreservation" rows="4" placeholder="Enter Admin Checkin Message">{{ $envdata->adminreservation }}</textarea>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="adminreservationtemplate" class="form-label">Reservation Template ID (Admin)</label>
                                                            <input type="text" value="{{ $envdata->adminreservationtemplate }}" class="form-control" name="adminreservationtemplate" id="adminreservationtemplate" placeholder="Enter Template ID">
                                                        </div>

                                                        <div class="mb-3">
                                                            <div class="form-check">
                                                                <input style="display: block;" class="form-check-input" type="radio" name="admin_message_select" id="radio_cancelres" value="checkout">
                                                                <label class="form-check-label" for="radio_cancelres">
                                                                    Admin Cancel Message
                                                                </label>
                                                            </div>
                                                            <textarea class="form-control mt-2" name="adminreservationcancel" id="adminreservationcancel" rows="4" placeholder="Enter Admin Checkout Message">{{ $envdata->adminreservationcancel }}</textarea>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="adminreservationcanceltemplate" class="form-label">Reservation Cancel Template ID (Admin)</label>
                                                            <input type="text" value="{{ $envdata->adminreservationcanceltemplate }}" class="form-control" name="adminreservationcanceltemplate" id="adminreservationcanceltemplate" placeholder="Enter Template ID">
                                                        </div>

                                                    </div>

                                                </div>

                                                <!-- Right: Message Labels -->
                                                <div class="col-md-4" id="msglabelfom">
                                                    <p class="text-center fw-bold">Message Label</p>
                                                    <hr>
                                                    <ul id="rescheckin" class="list-group">
                                                        @foreach (['Company Mobile' => 'mobile,company', 'Company Email' => 'email,company', 'Arrival Date' => 'ArrDate,grpbookingdetails', 'Arrival Time' => 'ArrTime,grpbookingdetails', 'Depart Date' => 'DepDate,grpbookingdetails', 'Reservation No.' => 'BookNo,grpbookingdetails', 'Room Catrgory' => 'RoomCat,grpbookingdetails', 'Reserved Rooms' => 'BookNo,grpbookingdetails', 'Estimate Amount' => 'amtdrsum,paycharge', 'Guest Full Name' => 'GuestName,grpbookingdetails'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item resitemcheckin">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="rescancel" class="list-group d-none">
                                                        @foreach (['Company Mobile' => 'mobile,company', 'Company Email' => 'email,company', 'Arrival Date' => 'ArrDate,grpbookingdetails', 'Arrival Time' => 'ArrTime,grpbookingdetails', 'Depart Date' => 'DepDate,grpbookingdetails', 'Cancel Date' => 'CancelDate,grpbookingdetails', 'Reservation No.' => 'BookNo,grpbookingdetails', 'Room Catrgory' => 'RoomCat,grpbookingdetails', 'Reserved Rooms' => 'BookNo,grpbookingdetails', 'Estimate Amount' => 'amtdrsum,paycharge', 'Guest Full Name' => 'GuestName,grpbookingdetails'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item resitemcancel">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="adminrescheckin" class="list-group d-none">
                                                        @foreach (['Arrival Date' => 'ArrDate,grpbookingdetails', 'Arrival Time' => 'ArrTime,grpbookingdetails', 'Depart Date' => 'DepDate,grpbookingdetails', 'Reservation No.' => 'BookNo,grpbookingdetails', 'Room Catrgory' => 'RoomCat,grpbookingdetails', 'Reserved Rooms' => 'BookNo,grpbookingdetails', 'Estimate Amount' => 'amtdrsum,paycharge', 'Guest Full Name' => 'GuestName,grpbookingdetails'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item resadmincheckin">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="adminrescancel" class="list-group d-none">
                                                        @foreach (['Arrival Date' => 'ArrDate,grpbookingdetails', 'Arrival Time' => 'ArrTime,grpbookingdetails', 'Depart Date' => 'DepDate,grpbookingdetails', 'Cancel Date' => 'CancelDate,grpbookingdetails', 'Reservation No.' => 'BookNo,grpbookingdetails', 'Room Catrgory' => 'RoomCat,grpbookingdetails', 'Reserved Rooms' => 'BookNo,grpbookingdetails', 'Estimate Amount' => 'amtdrsum,paycharge', 'Guest Full Name' => 'GuestName,grpbookingdetails'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item resadmincancel">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="text-center mt-3">
                                                <button type="submit" class="btn btn-success">
                                                    <i class="fa-solid fa-upload"></i> Submit
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-3" name="tabby-tabs">
                                    <label class="tabby" for="tab-3">Point Of Sale</label>
                                    <div class="tabby-content">
                                        <form id="poswpenviro" name="poswpenviro">
                                            @csrf
                                            <div class="row">
                                                <!-- Left: All Textareas -->
                                                <div class="col-md-8">
                                                    <!-- Button Group -->
                                                    <div class="mb-3">
                                                        <div class="btn-group" role="group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-kotadmin active">KOT Message (Admin)</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-msgguest">Bill Message (Guest)</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-msgadmin">Bill Message (Admin)</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-msgassigndelivery">Assign Delivery Message</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-whatsapp-bill-pdf">WhatsApp Bill PDF</button>
                                                        </div>
                                                    </div>

                                                    <!-- Kot Message Admin Textarea -->
                                                    <div class="kotmsgadmin-area">
                                                        <input type="hidden" value="{{ $envdata->kotmsgadminarray }}" name="kotmsgadminarray" id="kotmsgadminarray">
                                                        <input type="hidden" value="{{ $envdata->billmsgguestarray }}" name="billmsgguestarray" id="billmsgguestarray">
                                                        <input type="hidden" value="{{ $envdata->billmsgadminarray }}" name="billmsgadminarray" id="billmsgadminarray">
                                                        <input type="hidden" value="{{ $envdata->assigndelmsgarray }}" name="assigndelmsgarray" id="assigndelmsgarray">
                                                        <div class="mb-3">
                                                            <label for="kotmsgadmin" class="form-label">KOT Message (Admin)</label>
                                                            <textarea class="form-control" name="kotmsgadmin" id="kotmsgadmin" rows="4" placeholder="Enter KOT Message">{{ $envdata->kotmsgadmin }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="kotmsgadmintemplate" class="form-label">KOT Message (Admin) Template ID</label>
                                                            <input type="text" value="{{ $envdata->kotmsgadmintemplate }}" class="form-control" name="kotmsgadmintemplate" id="kotmsgadmintemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                    <!-- Bill Messaege Guest Textarea -->
                                                    <div class="billmsgguest-area d-none">
                                                        <div class="mb-3">
                                                            <label for="billmsgguest" class="form-label">Bill Message (Guest)</label>
                                                            <textarea class="form-control" name="billmsgguest" id="billmsgguest" rows="4" placeholder="Enter Bill Message">{{ $envdata->billmsgguest }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="billmsgguesttemplate" class="form-label">Bill Message (Guest) Template ID</label>
                                                            <input type="text" value="{{ $envdata->billmsgguesttemplate }}" class="form-control" name="billmsgguesttemplate" id="billmsgguesttemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                    <!-- Bill Messaege Admin Textarea -->
                                                    <div class="billmsgadmin-area d-none">
                                                        <div class="mb-3">
                                                            <label for="billmsgadmin" class="form-label">Bill Message (Admin)</label>
                                                            <textarea class="form-control" name="billmsgadmin" id="billmsgadmin" rows="4" placeholder="Enter Bill Message">{{ $envdata->billmsgadmin }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="billmsgadmintemplate" class="form-label">Bill Message (Admin) Template ID</label>
                                                            <input type="text" value="{{ $envdata->billmsgadmintemplate }}" class="form-control" name="billmsgadmintemplate" id="billmsgadmintemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                    <!-- Assign Delivery Message Textarea -->
                                                    <div class="assigndelmsg-area d-none">
                                                        <div class="mb-3">
                                                            <label for="assigndelmsg" class="form-label">Assign Delivery Message</label>
                                                            <textarea class="form-control" name="assigndelmsg" id="assigndelmsg" rows="4" placeholder="Enter Bill Message">{{ $envdata->assigndelmsg }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="assigndelmsgtemplate" class="form-label">Assign Delivery Message Template ID</label>
                                                            <input type="text" value="{{ $envdata->assigndelmsgtemplate }}" class="form-control" name="assigndelmsgtemplate" id="assigndelmsgtemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                </div>

                                                <!-- Right: Message Labels -->
                                                <div class="col-md-4" id="msglabelfom">
                                                    <p class="text-center fw-bold">Message Label</p>
                                                    <hr>
                                                    <ul id="kotmsgadminlist" class="list-group">
                                                        @foreach (['Company Mobile' => 'mobile,company', 'Company Email' => 'email,company', 'Outlet Title' => 'name,depart', 'KOT Number' => 'vno,kot', 'KOT Datetime' => 'vdate,kot', 'Table Number' => 'roomno,kot', 'Remark' => 'reasons,kot', 'Item Detail' => 'itemjoinitemmast,kot', 'Item-Qty' => 'qty,kot', 'Item-QTY-Rate' => 'rate,kot', 'Item-QTY-Amt' => 'amount,kot', 'Steward' => 'waiterjoinserver_mast,kot', 'User' => 'u_name,kot', 'KOT Total' => 'amountsum,kot', 'KOT Status' => 'pending,pending', 'KOT Type' => 'nckot,kot'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item kotmsgadminitem">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="billmsgguestlist" class="list-group d-none">
                                                        @foreach (['Company Mobile' => 'mobile,company', 'Company Email' => 'email,company', 'Outlet Title' => 'name,depart', 'Bill Number' => 'vno,sale1', 'Bill Datetime' => 'vdate,sale1', 'Discount Amount' => 'discamt,sale1', 'Bill Amount' => 'netamt,sale1', 'Item Detail' => 'itemjoinitemmast,stock', 'Item-Qty' => 'qtyiss,stock', 'Item-QTY-Rate' => 'rate,stock', 'Item-QTY-Amt' => 'amount,stock', 'Mobile Number' => 'mobile_no,guestprof', 'Guest Full Name' => 'name,guestprof', 'Earned Points' => 'rewardpointrw,guestreward', 'Redeem Points' => 'redeempointrw,guestreward', 'Available Balance Points' => 'rewardpointrw,guestreward'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item billmsgguestitem">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="billmsgadminlist" class="list-group d-none">
                                                        @foreach (['Outlet Title' => 'name,depart', 'Bill Number' => 'vno,sale1', 'Bill Datetime' => 'vdate,sale1', 'Payment Mode' => 'paytype,paycharge', 'Discount Amount' => 'discamt,sale1', 'Bill Amount' => 'netamt,sale1', 'Item Detail' => 'itemjoinitemmast,stock', 'Item-Qty' => 'qtyiss,stock', 'Item-QTY-Rate' => 'rate,stock', 'Item-QTY-Amt' => 'amount,stock', 'Mobile Number' => 'mobile_no,guestprof', 'Guest Full Name' => 'name,guestprof'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item billmsgadminitem">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="assigndelmsglist" class="list-group d-none">
                                                        @foreach (['Company Mobile' => 'mobile,company', 'Company Email' => 'email,company', 'Outlet Title' => 'name,depart', 'Bill Number' => 'vno,sale1', 'Bill Datetime' => 'vdate,sale1', 'Discount Amount' => 'discamt,sale1', 'Bill Amount' => 'netamt,sale1', 'Mobile Number' => 'mobile_no,guestprof', 'Guest Full Name' => 'name,guestprof', 'Delivery Boy' => 'delboy,temp', 'Assign Datetime' => 'delboy,temp', 'Assign Remark' => 'delboy,temp'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item assigndelmsgitem">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="text-center mt-3">
                                                <button type="submit" class="btn btn-success">
                                                    <i class="fa-solid fa-upload"></i> Submit
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-4" name="tabby-tabs">
                                    <label class="tabby" for="tab-4">Wishes</label>
                                    <div class="tabby-content">
                                        <form id="wishwpenviro" name="wishwpenviro">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <div class="mb-3">
                                                        <div class="btn-group" role="group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-birthday active">Birthday</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-anniversary">Anniversary</button>
                                                        </div>
                                                    </div>

                                                    <div class="birthday-area">
                                                        <input type="hidden" value="{{ $envdata->birthdaywisharray }}" name="birthdaywisharray" id="birthdaywisharray">
                                                        <div class="mb-3">
                                                            <label for="birthdaywishmessage" class="form-label">Birthday Wish Message</label>
                                                            <textarea class="form-control" name="birthdaywishmessage" id="birthdaywishmessage" rows="4" placeholder="Enter Birthday Wish Message">{{ $envdata->birthdaywishmessage }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="birthdaywishtemplate" class="form-label">Birthday Template ID</label>
                                                            <input type="text" value="{{ $envdata->birthdaywishtemplate }}" class="form-control" name="birthdaywishtemplate" id="birthdaywishtemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>

                                                    <div class="anniversary-area d-none">
                                                        <input type="hidden" value="{{ $envdata->anniversarywisharray }}" name="anniversarywisharray" id="anniversarywisharray">
                                                        <div class="mb-3">
                                                            <label for="anniversarywishmessage" class="form-label">Anniversary Wish Message</label>
                                                            <textarea class="form-control" name="anniversarywishmessage" id="anniversarywishmessage" rows="4" placeholder="Enter Anniversary Wish Message">{{ $envdata->anniversarywishmessage }}</textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="anniversarywishtemplate" class="form-label">Anniversary Template ID</label>
                                                            <input type="text" value="{{ $envdata->anniversarywishtemplate }}" class="form-control" name="anniversarywishtemplate" id="anniversarywishtemplate" placeholder="Enter Template ID">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4" id="msglabelfom">
                                                    <p class="text-center fw-bold">Message Label</p>
                                                    <hr>
                                                    <ul id="birthdaywishlist" class="list-group">
                                                        @foreach (['Company Name' => 'comp_name,company', 'Guest Name' => 'name,guestprof', 'Occasion' => 'occasion,occasion'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item birthdaywishitem">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="anniversarywishlist" class="list-group d-none">
                                                        @foreach (['Company Name' => 'comp_name,company', 'Guest Name' => 'name,guestprof', 'Occasion' => 'occasion,occasion'] as $label => $value)
                                                            @php
                                                                [$colname, $table] = explode(',', $value);
                                                            @endphp
                                                            <li data-colname="{{ $colname }}" data-table="{{ $table }}" class="list-group-item anniversarywishitem">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="text-center mt-3">
                                                <button type="submit" class="btn btn-success">
                                                    <i class="fa-solid fa-upload"></i> Submit
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- tabs -->
                    </div> <!-- tabs -->
                </div> <!-- card-body -->
            </div> <!-- card -->
        </div>
    </div>

    <!-- JS -->
    <script>
        $(function() {
            $('.btn-checkin').on('click', function() {
                $(this).addClass('active');
                $('.btn-chkout, .btn-admin').removeClass('active');
                $('.checkin-area').removeClass('d-none');
                $('.chkout-area, .admin-area').addClass('d-none');
                $('#fomcheckin').removeClass('d-none');
                $('#fomcheckout, #admincheckin').addClass('d-none');
                $('#admincheckout').addClass('d-none');
            });

            $('.btn-chkout').on('click', function() {
                $(this).addClass('active');
                $('.btn-checkin, .btn-admin').removeClass('active');
                $('.chkout-area').removeClass('d-none');
                $('.checkin-area, .admin-area').addClass('d-none');
                $('#fomcheckin, #admincheckin').addClass('d-none');
                $('#admincheckout').addClass('d-none');
                $('#fomcheckout').removeClass('d-none');
            });

            $('.btn-admin').on('click', function() {
                $(this).addClass('active');
                $('.btn-checkin, .btn-chkout').removeClass('active');
                $('.admin-area').removeClass('d-none');
                $('#admincheckin').removeClass('d-none');
                $('#admincheckout').addClass('d-none');
                $('.checkin-area, .chkout-area, #fomcheckin, #fomcheckout').addClass('d-none');
            });

            $(document).on('change', '#radio_checkin', function() {
                if ($(this).is(':checked')) {
                    $('#admincheckin').removeClass('d-none');
                    $('#admincheckout').addClass('d-none');
                }
            });

            $(document).on('change', '#radio_checkout', function() {
                if ($(this).is(':checked')) {
                    $('#admincheckout').removeClass('d-none');
                    $('#admincheckin').addClass('d-none');
                }
            });

            $('.fomitemcheckin').on('click', function() {
                const msgvar = $(this).text().trim();

                if (!$('.checkin-area').hasClass('d-none')) {
                    const currentmsg = $('#fomtextarea').val();
                    let checkinmsgarray = $('#checkinmsgarray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(checkinmsgarray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#checkinmsgarray').val(JSON.stringify(arr));
                    $('#fomtextarea').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('.fomitemcheckout').on('click', function() {
                const msgvar = $(this).text().trim();

                if (!$('.chkout-area').hasClass('d-none')) {
                    const currentmsg = $('#fomtextareachkout').val();
                    let checkoutmsgarray = $('#checkoutmsgarray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(checkoutmsgarray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#checkoutmsgarray').val(JSON.stringify(arr));
                    $('#fomtextareachkout').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('.fomadmincheckin').on('click', function() {
                const msgvar = $(this).text().trim();

                let radio_checkin = $('#radio_checkin');

                if (radio_checkin.is(':checked')) {
                    if (!$('.admin-area').hasClass('d-none')) {
                        const currentmsg = $('#fomtextareaadminchkin').val();
                        let checkinmsgadminarray = $('#checkinmsgadminarray').val();
                        let colname = $(this).data('colname');
                        let table = $(this).data('table');

                        let arr = [];

                        try {
                            arr = JSON.parse(checkinmsgadminarray);
                        } catch (e) {
                            arr = [];
                        }

                        arr.push([colname, table]);

                        $('#checkinmsgadminarray').val(JSON.stringify(arr));
                        $('#fomtextareaadminchkin').val(`${currentmsg} <${msgvar}> `);
                    }
                }
            });

            $('.fomadmincheckout').on('click', function() {
                const msgvar = $(this).text().trim();
                let radio_checkout = $('#radio_checkout');

                if (radio_checkout.is(':checked')) {
                    if (!$('.admin-area').hasClass('d-none')) {
                        const currentmsg = $('#fomtextareaadminchkout').val();
                        let checkoutmsgadminarray = $('#checkoutmsgadminarray').val();
                        let colname = $(this).data('colname');
                        let table = $(this).data('table');

                        let arr = [];

                        try {
                            arr = JSON.parse(checkoutmsgadminarray);
                        } catch (e) {
                            arr = [];
                        }

                        arr.push([colname, table]);

                        $('#checkoutmsgadminarray').val(JSON.stringify(arr));
                        $('#fomtextareaadminchkout').val(`${currentmsg} <${msgvar}> `);
                    }
                }
            });

            $(document).on('submit', '#fomwpenviro', function(e) {
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X_CSRF-TOKEN': "{{ csrf_token() }}"
                    }
                });

                let formdata = $(this).serialize();
                $.ajax({
                    url: "{{ route('fomwpparamsubmit') }}",
                    method: "POST",
                    data: formdata,
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                title: 'FOM Whatsapp Enviro',
                                text: response.message,
                                icon: 'success'
                            }).then((s) => {
                                if (s.isConfirmed) {
                                    window.location.reload();
                                }
                            });
                        }
                    },
                    error: function(error) {
                        Swal.fire({
                            title: 'FOM Whatsapp Enviro',
                            text: error.responseJSON.message,
                            icon: 'error'
                        });
                    }
                });
            });

            // Reservation

            $('.btn-reserve').on('click', function() {
                $(this).addClass('active');
                $('.btn-cancel, .btn-adminres').removeClass('active');
                $('.checkin-areares').removeClass('d-none');
                $('.chkout-areares, .admin-areares').addClass('d-none');
                $('#rescheckin').removeClass('d-none');
                $('#rescancel, #adminrescheckin, #adminrescancel').addClass('d-none');
            });

            $('.btn-cancel').on('click', function() {
                $(this).addClass('active');
                $('.btn-reserve, .btn-admin').removeClass('active');
                $('.chkout-areares, #rescancel').removeClass('d-none');
                $('.checkin-areares, .admin-areares').addClass('d-none');
                $('#rescheckin, #adminrescheckin').addClass('d-none');
                $('#adminrescancel').addClass('d-none');
                $('#areares').removeClass('d-none');
            });

            $('.btn-adminres').on('click', function() {
                $(this).addClass('active');
                $('.btn-reserv, .btn-cancel').removeClass('active');
                $('.admin-areares').removeClass('d-none');
                $('#adminrescheckin').removeClass('d-none');
                $('.checkin-areares, .chkout-areares, #rescheckin, #rescancel, #adminrescancel').addClass('d-none');
            });

            $(document).on('change', '#radio_checkinres', function() {
                if ($(this).is(':checked')) {
                    $('#adminrescheckin').removeClass('d-none');
                    $('#adminrescancel').addClass('d-none');
                }
            });

            $(document).on('change', '#radio_cancelres', function() {
                if ($(this).is(':checked')) {
                    $('#adminrescancel').removeClass('d-none');
                    $('#adminrescheckin').addClass('d-none');
                }
            });

            $('.resitemcheckin').on('click', function() {
                const msgvar = $(this).text().trim();
                if (!$('.checkin-areares').hasClass('d-none')) {
                    const currentmsg = $('#reservationmessage').val();
                    let reservationarray = $('#reservationarray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(reservationarray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#reservationarray').val(JSON.stringify(arr));
                    $('#reservationmessage').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('.resitemcancel').on('click', function() {
                const msgvar = $(this).text().trim();

                if (!$('.chkout-areares').hasClass('d-none')) {
                    const currentmsg = $('#reservationcancel').val();
                    let reservationcancelarray = $('#reservationcancelarray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(reservationcancelarray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#reservationcancelarray').val(JSON.stringify(arr));
                    $('#reservationcancel').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('.resadmincheckin').on('click', function() {
                const msgvar = $(this).text().trim();

                let radio_checkinres = $('#radio_checkinres');

                if (radio_checkinres.is(':checked')) {
                    if (!$('.admin-areares').hasClass('d-none')) {
                        const currentmsg = $('#adminreservation').val();
                        let adminreservationarray = $('#adminreservationarray').val();
                        let colname = $(this).data('colname');
                        let table = $(this).data('table');

                        let arr = [];

                        try {
                            arr = JSON.parse(adminreservationarray);
                        } catch (e) {
                            arr = [];
                        }

                        arr.push([colname, table]);

                        $('#adminreservationarray').val(JSON.stringify(arr));
                        $('#adminreservation').val(`${currentmsg} <${msgvar}> `);
                    }
                }
            });

            $('.resadmincancel').on('click', function() {
                const msgvar = $(this).text().trim();
                let radio_cancelres = $('#radio_cancelres');

                if (radio_cancelres.is(':checked')) {
                    if (!$('.admin-areares').hasClass('d-none')) {
                        const currentmsg = $('#adminreservationcancel').val();
                        let adminreservationcancelarray = $('#adminreservationcancelarray').val();
                        let colname = $(this).data('colname');
                        let table = $(this).data('table');

                        let arr = [];

                        try {
                            arr = JSON.parse(adminreservationcancelarray);
                        } catch (e) {
                            arr = [];
                        }

                        arr.push([colname, table]);

                        $('#adminreservationcancelarray').val(JSON.stringify(arr));
                        $('#adminreservationcancel').val(`${currentmsg} <${msgvar}> `);
                    }
                }
            });

            $(document).on('submit', '#reswpenviro', function(e) {
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X_CSRF-TOKEN': "{{ csrf_token() }}"
                    }
                });

                let formdata = $(this).serialize();
                $.ajax({
                    url: "{{ route('reswpenvirosubmit') }}",
                    method: "POST",
                    data: formdata,
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                title: 'Reservation Whatsapp Enviro',
                                text: response.message,
                                icon: 'success'
                            }).then((s) => {
                                if (s.isConfirmed) {
                                    window.location.reload();
                                }
                            });
                        }
                    },
                    error: function(error) {
                        Swal.fire({
                            title: 'Reservation Whatsapp Enviro',
                            text: error.responseJSON.message,
                            icon: 'error'
                        });
                    }
                });
            });

            // Point Of Sale
            $('.btn-kotadmin').on('click', function() {
                $(this).addClass('active');
                $('.btn-msgguest, .btn-msgadmin, .btn-msgassigndelivery').removeClass('active');
                $('.kotmsgadmin-area').removeClass('d-none');
                $('.billmsgguest-area, .billmsgadmin-area, .assigndelmsg-area').addClass('d-none');
                $('#kotmsgadminlist').removeClass('d-none');
                $('#billmsgguestlist, #billmsgadminlist, #assigndelmsglist').addClass('d-none');
            });

            $('.btn-msgguest').on('click', function() {
                $(this).addClass('active');
                $('.btn-kotadmin, .btn-msgadmin, .btn-msgassigndelivery').removeClass('active');
                $('.billmsgguest-area').removeClass('d-none');
                $('.kotmsgadmin-area, .billmsgadmin-area, .assigndelmsg-area').addClass('d-none');
                $('#billmsgguestlist').removeClass('d-none');
                $('#kotmsgadminlist, #billmsgadminlist, #assigndelmsglist').addClass('d-none');
            });

            $('.btn-msgadmin').on('click', function() {
                $(this).addClass('active');
                $('.btn-kotadmin, .btn-msgguest, .btn-msgassigndelivery').removeClass('active');
                $('.billmsgadmin-area').removeClass('d-none');
                $('.kotmsgadmin-area, .billmsgguest-area, .assigndelmsg-area').addClass('d-none');
                $('#billmsgadminlist').removeClass('d-none');
                $('#kotmsgadminlist, #billmsgguestlist, #assigndelmsglist').addClass('d-none');
            });

            $('.btn-msgassigndelivery').on('click', function() {
                $(this).addClass('active');
                $('.btn-kotadmin, .btn-msgguest, .btn-msgadmin').removeClass('active');
                $('.assigndelmsg-area').removeClass('d-none');
                $('.kotmsgadmin-area, .billmsgguest-area, .billmsgadmin-area').addClass('d-none');
                $('#assigndelmsglist').removeClass('d-none');
                $('#kotmsgadminlist, #billmsgguestlist, #billmsgadminlist').addClass('d-none');
            });

            $('.kotmsgadminitem').on('click', function() {
                const msgvar = $(this).text().trim();
                if (!$('.kotmsgadmin-area').hasClass('d-none')) {
                    const currentmsg = $('#kotmsgadmin').val();
                    let kotmsgadminarray = $('#kotmsgadminarray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(kotmsgadminarray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#kotmsgadminarray').val(JSON.stringify(arr));
                    $('#kotmsgadmin').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('.billmsgguestitem').on('click', function() {
                const msgvar = $(this).text().trim();
                if (!$('.billmsgguest-area').hasClass('d-none')) {
                    const currentmsg = $('#billmsgguest').val();
                    let billmsgguestarray = $('#billmsgguestarray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(billmsgguestarray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#billmsgguestarray').val(JSON.stringify(arr));
                    $('#billmsgguest').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('.billmsgadminitem').on('click', function() {
                const msgvar = $(this).text().trim();
                if (!$('.billmsgadmin-area').hasClass('d-none')) {
                    const currentmsg = $('#billmsgadmin').val();
                    let billmsgadminarray = $('#billmsgadminarray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(billmsgadminarray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#billmsgadminarray').val(JSON.stringify(arr));
                    $('#billmsgadmin').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('.assigndelmsgitem').on('click', function() {
                const msgvar = $(this).text().trim();
                if (!$('.assigndelmsg-area').hasClass('d-none')) {
                    const currentmsg = $('#assigndelmsg').val();
                    let assigndelmsgarray = $('#assigndelmsgarray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(assigndelmsgarray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#assigndelmsgarray').val(JSON.stringify(arr));
                    $('#assigndelmsg').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $(document).on('submit', '#poswpenviro', function(e) {
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X_CSRF-TOKEN': "{{ csrf_token() }}"
                    }
                });

                let formdata = $(this).serialize();
                $.ajax({
                    url: "{{ route('poswpenvirosubmit') }}",
                    method: "POST",
                    data: formdata,
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                title: 'POS Whatsapp Enviro',
                                text: response.message,
                                icon: 'success'
                            }).then((s) => {
                                if (s.isConfirmed) {
                                    window.location.reload();
                                }
                            });
                        }
                    },
                    error: function(error) {
                        Swal.fire({
                            title: 'POS Whatsapp Enviro',
                            text: error.responseJSON.message,
                            icon: 'error'
                        });
                    }
                });
            });

            $('.btn-birthday').on('click', function() {
                $(this).addClass('active');
                $('.btn-anniversary').removeClass('active');
                $('.birthday-area').removeClass('d-none');
                $('.anniversary-area').addClass('d-none');
                $('#birthdaywishlist').removeClass('d-none');
                $('#anniversarywishlist').addClass('d-none');
            });

            $('.btn-anniversary').on('click', function() {
                $(this).addClass('active');
                $('.btn-birthday').removeClass('active');
                $('.anniversary-area').removeClass('d-none');
                $('.birthday-area').addClass('d-none');
                $('#anniversarywishlist').removeClass('d-none');
                $('#birthdaywishlist').addClass('d-none');
            });

            $('.birthdaywishitem').on('click', function() {
                const msgvar = $(this).text().trim();

                if (!$('.birthday-area').hasClass('d-none')) {
                    const currentmsg = $('#birthdaywishmessage').val();
                    let birthdaywisharray = $('#birthdaywisharray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(birthdaywisharray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#birthdaywisharray').val(JSON.stringify(arr));
                    $('#birthdaywishmessage').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('#birthdaywishmessage').on('input', function() {
                const msg = $(this).val();
                const matches = msg.match(/<([^>]+)>/g) || [];
                let arr = [];
                $.each(matches, function(i, match) {
                    const label = match.replace(/<|>/g, '').trim();
                    const item = $(`.birthdaywishitem`).filter(function() {
                        return $(this).text().trim() === label;
                    });
                    if (item.length) {
                        arr.push([item.data('colname'), item.data('table')]);
                    }
                });
                $('#birthdaywisharray').val(JSON.stringify(arr));
            });

            $('.anniversarywishitem').on('click', function() {
                const msgvar = $(this).text().trim();

                if (!$('.anniversary-area').hasClass('d-none')) {
                    const currentmsg = $('#anniversarywishmessage').val();
                    let anniversarywisharray = $('#anniversarywisharray').val();
                    let colname = $(this).data('colname');
                    let table = $(this).data('table');

                    let arr = [];

                    try {
                        arr = JSON.parse(anniversarywisharray);
                    } catch (e) {
                        arr = [];
                    }

                    arr.push([colname, table]);

                    $('#anniversarywisharray').val(JSON.stringify(arr));
                    $('#anniversarywishmessage').val(`${currentmsg} <${msgvar}> `);
                }
            });

            $('#anniversarywishmessage').on('input', function() {
                const msg = $(this).val();
                const matches = msg.match(/<([^>]+)>/g) || [];
                let arr = [];
                $.each(matches, function(i, match) {
                    const label = match.replace(/<|>/g, '').trim();
                    const item = $(`.anniversarywishitem`).filter(function() {
                        return $(this).text().trim() === label;
                    });
                    if (item.length) {
                        arr.push([item.data('colname'), item.data('table')]);
                    }
                });
                $('#anniversarywisharray').val(JSON.stringify(arr));
            });

            $(document).on('submit', '#wishwpenviro', function(e) {
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X_CSRF-TOKEN': "{{ csrf_token() }}"
                    }
                });

                let formdata = $(this).serialize();
                $.ajax({
                    url: "{{ route('wishwpparamsubmit') }}",
                    method: "POST",
                    data: formdata,
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                title: 'Wishes Whatsapp Enviro',
                                text: response.message,
                                icon: 'success'
                            }).then((s) => {
                                if (s.isConfirmed) {
                                    window.location.reload();
                                }
                            });
                        }
                    },
                    error: function(error) {
                        Swal.fire({
                            title: 'Wishes Whatsapp Enviro',
                            text: error.responseJSON.message,
                            icon: 'error'
                        });
                    }
                });
            });

        });
    </script>
@endsection
