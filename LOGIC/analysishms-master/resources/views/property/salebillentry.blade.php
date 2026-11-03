@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <style>
        .kotentry input.amount {
            height: auto;
            width: 7em;
            min-width: auto;
            min-height: auto !important;
        }

        input.sevenem {
            height: auto;
            width: 7em;
            min-width: auto;
            min-height: auto !important;
        }

        tfoot.salebilltfoot td {
            padding: 2px;
        }

        #discBtn {
            min-width: 70px;
            font-weight: 500;
        }

        #discountInfo {
            display: block;
            margin-top: 2px;
            font-weight: 600;
            text-decoration: underline;
        }

        #discountInfo:hover {
            color: #0056b3 !important;
        }

        .dropdown-menu {
            min-width: 160px;
        }

        .dropdown-item {
            padding: 8px 16px;
            font-size: 14px;
            transition: background-color 0.2s;
        }

        .dropdown-item:hover {
            background-color: #f0f0f0;
            cursor: pointer;
        }

        #groupDiscountModal .modal-content,
        #itemDiscountModal .modal-content {
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        }

        #groupDiscountModal .modal-header,
        #itemDiscountModal .modal-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border-radius: 8px 8px 0 0;
        }

        #groupDiscountModal .modal-header .close,
        #itemDiscountModal .modal-header .close {
            color: white;
            opacity: 0.9;
        }

        #groupCheckboxList,
        #itemCheckboxList {
            background-color: #f9f9f9;
        }

        .form-check {
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.2s;
        }

        .form-check:hover {
            background-color: #e9ecef;
        }

        .form-check-input {
            width: 18px;
            height: 18px;
            margin-top: 2px;
            cursor: pointer;
        }

        .form-check-label {
            cursor: pointer;
            font-weight: 500;
            color: #333;
            margin-left: 8px;
        }

        #groupDiscountInput,
        #itemDiscountInput {
            border: 2px solid #ddd;
            border-radius: 6px;
            padding: 10px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        #groupDiscountInput:focus,
        #itemDiscountInput:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
        }

        @media (max-width: 768px) {
            #discBtn {
                font-size: 12px;
                padding: 4px 8px;
                min-width: 60px;
            }

            .dropdown-menu {
                min-width: 140px;
            }

            .dropdown-item {
                padding: 6px 12px;
                font-size: 13px;
            }

            #groupDiscountModal .modal-dialog,
            #itemDiscountModal .modal-dialog {
                margin: 10px;
            }

            #groupCheckboxList,
            #itemCheckboxList {
                max-height: 200px !important;
            }
        }

        @media (max-width: 576px) {
            .col-md-1.text-center {
                padding: 2px;
            }

            #discBtn {
                font-size: 11px;
                padding: 3px 6px;
            }

            .btn.mt-1.btn-sm {
                font-size: 11px;
                padding: 4px 8px;
            }
        }

        #itemsdata tbody tr {
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        #itemsdata tbody tr.selected-for-free {
            background-color: #fff3cd !important;
            border-left: 4px solid #ffc107;
        }

        #itemsdata tbody tr.free-item {
            background-color: #d4edda !important;
            border-left: 4px solid #28a745;
        }

        #freeBtn:not(:disabled) {
            cursor: pointer;
            animation: pulse 1.5s infinite;
        }

        @keyframes pulse {

            0%,
            100% {
                opacity: 1;
            }

            50% {
                opacity: 0.7;
            }
        }

        .discount-badge {
            display: inline-block;
            margin-left: 8px;
            padding: 2px 6px;
            font-size: 11px;
            font-weight: 600;
            border-radius: 3px;
            background-color: #ff6b6b;
            color: white;
            vertical-align: middle;
            animation: fadeIn 0.3s ease-in;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.8);
            }

            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .discount-badge.item-discount {
            background-color: #ff6b6b;
        }

        .discount-badge.group-discount {
            background-color: #4ecdc4;
        }
    </style>
    <div id="salebillpage" class="content-body kotentry">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <img src="{{ asset('admin/images/baloon2.png') }}" class="balloon" id="balloon1">
                    <img src="{{ asset('admin/images/baloon1.png') }}" class="balloon" id="balloon2">
                    <img src="{{ asset('admin/images/blue.png') }}" class="balloon" id="balloon3">
                    <img src="{{ asset('admin/images/rangeen.png') }}" class="balloon" id="balloon3">
                    <img src="{{ asset('admin/images/baloon3.png') }}" class="balloon" id="balloon3">
                    <div class="birthday-message mt-4">
                        <span id="birthdaytext"></span>
                        <span id="dobtext"></span>
                        <div class="sparkles"></div>
                        <span id="clsbtnoc" class="float-lg-right"><i class="fa-regular fa-rectangle-xmark"></i></span>
                    </div>
                    <div class="p-3">
                        <form class="form" action=" {{ route('salebillsubmit') }} " name="salebillform" id="salebillform"
                            method="POST">
                            @csrf
                            <input type="hidden" name="addeddocid" id="addeddocid">
                            <input type="hidden" name="rewardpointused" id="rewardpointused">
                            <input type="hidden" name="rewardvalueused" id="rewardvalueused">
                            <div class="modal fade" id="customerModal">
                                <div class="modal-dialog">
                                    <div style="transform: translate(-58%, 10px);" class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="modal-title">Customer Information</h3>
                                            <button type="button" class="close modalclosebtn"
                                                data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group row">
                                                <label for="phoneno" class="col-sm-4 col-form-label">Phone No</label>
                                                <div id="phonediv" class="col-sm-8">
                                                    <input type="text" autocomplete="off" aria-autocomplete="none"
                                                        class="form-control" name="phoneno" id="phoneno"
                                                        placeholder="Enter phone number">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="customername" class="col-sm-4 col-form-label">Customer
                                                    Name</label>
                                                <div class="col-sm-8">
                                                    <input type="text" autocomplete="off" aria-autocomplete="none"
                                                        class="form-control" name="customername" id="customername"
                                                        placeholder="Enter customer name">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="address" class="col-sm-4 col-form-label">Address</label>
                                                <div class="col-sm-8">
                                                    <input type="text" autocomplete="off" aria-autocomplete="none"
                                                        class="form-control" name="address" id="address"
                                                        placeholder="Enter address">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="customercity" class="col-sm-4 col-form-label">City</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" name="customercity" id="customercity">
                                                        <option value="">Select</option>
                                                        @foreach ($citydata as $item)
                                                            <option value="{{ $item->city_code }}">{{ $item->cityname }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="like" class="col-sm-4 col-form-label">Like</label>
                                                <div class="col-sm-8">
                                                    <input type="text" autocomplete="off" aria-autocomplete="none"
                                                        class="form-control" name="like" id="like" placeholder="Enter like">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="dislike" class="col-sm-4 col-form-label">Dislike</label>
                                                <div class="col-sm-8">
                                                    <input type="text" autocomplete="off" aria-autocomplete="none"
                                                        class="form-control" name="dislike" id="dislike"
                                                        placeholder="Enter dislike">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="birthdate" class="col-sm-4 col-form-label">Birth Date</label>
                                                <div class="col-sm-8">
                                                    <input type="date" class="form-control" name="birthdate" id="birthdate">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="anniversary" class="col-sm-4 col-form-label">Anniversary</label>
                                                <div class="col-sm-8">
                                                    <input type="date" class="form-control" name="anniversary"
                                                        id="anniversary">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" id="customerdetailsave"
                                                class="btn btn-success">Save</button>
                                            <button type="button" class="btn btn-secondary modalclosebtn"
                                                data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="rewardModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <div class="modal-header">
                                            <h5 class="modal-title">Reward Redemption</h5>
                                            <button type="button" class="close" data-dismiss="modal">
                                                <span>&times;</span>
                                            </button>
                                        </div>

                                        <div class="modal-body">

                                            <div class="row mb-2">
                                                <div class="col-6">
                                                    Available Points
                                                </div>
                                                <div class="col-6 text-right">
                                                    <strong id="availablepoint">0</strong>
                                                </div>
                                            </div>

                                            <div class="row mb-2">
                                                <div class="col-6">
                                                    Available Value
                                                </div>
                                                <div class="col-6 text-right">
                                                    ₹ <strong id="availablevalue">0.00</strong>
                                                </div>
                                            </div>

                                            <input type="hidden" id="maxavailablepoint" value="0">
                                            <input type="hidden" id="maxavailablevalue" value="0">
                                            <input type="hidden" id="rewardpointvalue" value="0">

                                            <hr>

                                            <div class="form-group">
                                                <label>Redeem Amount</label>
                                                <input type="number"
                                                    class="form-control"
                                                    id="redeemamount"
                                                    min="0"
                                                    step="0.01"
                                                    value="">
                                            </div>

                                            <div class="form-group">
                                                <label>Points Used</label>
                                                <input type="text"
                                                    readonly
                                                    class="form-control"
                                                    id="redeempoint"
                                                    value="0.00">
                                            </div>

                                            <div class="form-group">
                                                <label>Balance After Redeem</label>
                                                <input type="text"
                                                    readonly
                                                    class="form-control"
                                                    id="balanceafter"
                                                    value="0.00">
                                            </div>

                                            <div id="redeemerror" class="text-danger small"></div>

                                        </div>

                                        <div class="modal-footer">
                                            <button type="button"
                                                id="applyRewardBtn"
                                                class="btn btn-success">
                                                Apply
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <input type="hidden" class="form-control" name="fixrestcode" id="fixrestcode"
                                value="{{ $depart->dcode }}">
                            <input type="hidden" class="form-control" name="departname" id="departname"
                                value="{{ $depart->name }}">
                            <input type="hidden" name="departnature" id="departnature" value="{{ $depart->nature }}"> <input
                                type="hidden" class="form-control" name="fixrestcode2" id="fixrestcode2">
                            <input type="hidden" class="form-control" name="departname2" id="departname2">
                            <input type="hidden" name="departnature2" id="departnature2">
                            <input type="hidden" id="vnoup2" name="vnoup">
                            <input type="hidden" id="vtype2" name="vtype2">
                            <input type="hidden" id="kotno2" name="kotno">
                            <input type="hidden" id="vdatesale2" name="vdatesale1">
                            <input type="hidden" id="ncurdate3" name="ncurdate2">
                            <input type="hidden" id="curtime2" name="curtime">
                            <input type="hidden" id="waitersname2" name="waitersname">
                            <input type="hidden" id="sale1docid2" name="sale1docid">
                            <input type="hidden" id="company2" name="company">
                            <input type="hidden" id="outletSecoundcode2" name="outletSecoundcode2"> <input type="hidden"
                                class="form-control" name="oldvnopendingkot" id="oldvnopendingkot" value="">
                            <input type="hidden" class="form-control" name="olddocidpendingkot" id="olddocidpendingkot"
                                value="">
                            <input type="hidden" value="" name="billprinty" id="billprinty">
                            <input type="hidden" class="form-control" name="roundoff" id="roundoff" value="">
                            <input type="hidden" class="form-control" name="waiter" id="waiter" value="">
                            <input type="hidden" class="form-control" name="kotdocid" id="kotdocid" value="">
                            <input type="hidden" name="kotdocidfix" id="kotdocidfix" value="">
                            <input type="hidden" class="form-control" name="stockdocid" id="stockdocid" value="">
                            <input type="hidden" class="form-control" name="vnostock" id="vnostock" value="">
                            <input type="hidden" class="form-control" name="previousroomno" id="previousroomno" value="">
                            <input type="hidden" class="form-control" name="totalitemsum" id="totalitemsum" value="">
                            <input type="hidden" class="form-control" name="guestname" id="guestname" value="">
                            <input type="hidden" class="form-control" name="guestadd" id="guestadd" value="">
                            <input type="hidden" class="form-control" name="guestmobile" id="guestmobile" value="">
                            <input type="hidden" class="form-control" name="guestcity" id="guestcity" value="">
                            <input type="hidden" class="form-control" name="compstatename" id="compstatename" value="">
                            <input type="hidden" class="form-control" name="compstatecode" id="compstatecode" value="">
                            <input type="hidden" class="form-control" name="companygst" id="companygst" value="">
                            <input type="hidden" class="form-control" name="compcityname" id="compcityname" value="">
                            <input type="hidden" name="sale1docid" id="sale1docid">
                            <input type="hidden" name="vnoup" id="vnoup" value="">
                            <input type="hidden" name="kotno" id="kotno" value="">
                            <input type="hidden" value="N" name="oldroomyn" id="oldroomyn">
                            <input type="hidden" name="waitersname" id="waitersname" value="">
                            <input type="hidden" name="vdatesale1" id="vdatesale1" value="">
                            <input type="hidden" class="form-control" name="vtype" id="vtype"
                                value="{{ 'B' . $depart->short_name }}">
                            <input type="hidden" class="form-control" name="restcode" id="restcode"
                                value="{{ $depart->dcode }}">
                            <input type="hidden" id="myNetTotalAmount" value="" />
                            <input type="hidden" name="depositdate" id="depositdate">
                            <input type="hidden" value="{{ $roomnoone }}" name="posroomno" id="posroomno">
                            <input type="hidden" value="{{ $label }}" name="label" id="label">
                            <input type="hidden" value="{{ $printsetup->description }}" name="printdescription"
                                id="printdescription">
                            <input type="hidden" name="totalitems" id="totalitems"> <input type="hidden"
                                name="discount_type" id="discount_type" value="">
                            <input type="hidden" name="discount_percentage" id="discount_percentage" value="">
                            <input type="hidden" name="discount_groups" id="discount_groups" value="">
                            <div style="background: aquamarine;" class="row mb-1">
                                <input type="hidden" value="{{ $envpos->kotoutletselection }}" name="kotoutletselection"
                                    id="kotoutletselection">
                                <div class="col-md-12">
                                    <div class="row ptags">
                                        <div class="col-md-1">
                                            <p style="cursor: pointer;" id="outletchangebtn" class="m-1">{{ $depart->name }}
                                            </p>
                                            <ul id="listoutlets" style="display:none;">
                                                @foreach ($outletdata as $item)
                                                    <li class="outletcls" data-value="{{ $item->dcode }}">
                                                        {{ $item->name }}
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                        <div class="modal fade" id="salebillmodal" tabindex="-1" role="dialog"
                                            aria-labelledby="salebillmodalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="salebillmodalLabel">Settlement <span
                                                                class="ADA" id="jghj"></span></h5>
                                                        <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                            id="changeprofilemodalLabel">Deposit No.:
                                                            <span class="BANX" id="vnomodal"></span> &nbsp;&nbsp;&nbsp;
                                                            Deposit Date:
                                                            <span class="BANX" id="depdate"></span>
                                                        </h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <iframe id="salebillsettleiframe" src="" frameborder="0"
                                                            style="width: 100%; height: 37em;"></iframe>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1 d-flex">
                                            <p class="m-1" id="ncurdate2"></p>
                                            <p class="m-1" id="curtime"></p>
                                            <p style="text-indent: 8px;" class="m-1 text-dpink" id="krsno"> </p>
                                        </div>
                                        <div class="col-md-2">
                                            <label for="" class="none">Old Bill No.</label>
                                            <select class="form-control select2-multiple" name="oldroomno" id="oldroomno">
                                                <option value="">Old Bill No.</option>
                                                @foreach ($oldroomno as $item)
                                                    <option data-vprefix="{{ $item->vprefix }}" value="{{ $item->vno }}">Bill
                                                        No: {{ $item->vno }} {{ $label }}: {{ $item->roomno }} Waiter:
                                                        {{ $item->waitername }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-1 text-center">
                                            <button disabled class="btn mt-1 btn-sm btn-success" name="submitBtn"
                                                id="submitBtn" type="submit">Submit</button>
                                        </div>
                                        @if (checkisadmin('freeitemsale') == true)
                                            <div class="col-md-1 text-center">
                                                <button class="btn btn-sm btn-warning" name="freeBtn" id="freeBtn" type="button"
                                                    disabled>Free</button>
                                                <button class="btn btn-sm btn-info" name="unfreeBtn" id="unfreeBtn" type="button"
                                                    disabled style="display:none;">Unfree</button>
                                            </div>
                                        @endif
                                        <div id="einvoicebtndiv" class="col-md-1 text-center">

                                        </div>
                                        <div id="einvoicecancelbtndiv" class="col-md-1 text-center">

                                        </div>
                                        <div id="viewinvoicebtndiv" class="col-md-1 text-center">

                                        </div>
                                        @if ($envpos->reportingonsalebill == 'N' && $curusername != $adminuname->u_name)
                                        @else
                                            <div class="col-md-1 text-center">
                                                <button disabled class="btn mt-1 btn-sm btn-success" name="billprint"
                                                    id="billprint" type="button">Bill Print</button>
                                            </div>
                                        @endif
                                        <div class="col-md-1 text-center">
                                            <button disabled data-toggle="modal" data-target="#settlementModal"
                                                class="btn mt-1 btn-sm btn-success" name="settlement" id="settlement"
                                                type="button">Settlement</button>
                                        </div>
                                        <div class="col-md-1 text-center">
                                            <button disabled type="button" id="customerbutton" name="customerbutton"
                                                class="btn mt-1 btn-sm btn-primary" data-toggle="modal"
                                                data-target="#customerModal">
                                                Customer
                                            </button>
                                        </div>
                                        <div class="col-md-1 text-center">
                                            <button disabled class="btn mt-1 btn-sm btn-danger" name="delete" id="delete"
                                                type="button">Delete</button>
                                        </div>
                                        @if (checkisadmin('discappsale') == true)
                                            <div class="col-md-1 text-center">
                                                <div class="dropdown">
                                                    <button disabled class="btn mt-1 btn-sm btn-info dropdown-toggle"
                                                        type="button" id="discBtn" data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        Disc
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="discBtn">
                                                        <a class="dropdown-item" href="#" id="billDiscountOption">Bill
                                                            Discount</a>
                                                        <a class="dropdown-item" href="#" id="itemDiscountOption">Item
                                                            Discount</a>
                                                        <a class="dropdown-item" href="#" id="groupDiscountOption">Group
                                                            Discount</a>
                                                    </div>
                                                </div>
                                                <small id="discountInfo"
                                                    style="display:none; font-size:10px; color:#17a2b8;"></small>
                                            </div>
                                        @endif
                                        <div id="recalculatediv" class="col-md-1 d-none text-center">
                                            <button id="recalculate" type="button" class="btn btn-sm btn-info">
                                                <i class="fa-solid fa-divide"></i> Re Calculate
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="groupDiscountModal" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Select Groups for Discount</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label>Discount Percentage (%)</label>
                                                <input type="number" class="form-control" id="groupDiscountInput" min="0"
                                                    max="100" step="0.01" placeholder="Enter discount %">
                                            </div>
                                            <div class="form-group">
                                                <label>Select Groups:</label>
                                                <div id="groupCheckboxList"
                                                    style="max-height: 300px; overflow-y: auto; border: 1px solid #ddd; padding: 10px; border-radius: 5px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Cancel</button>
                                            <button type="button" class="btn btn-primary" id="applyGroupDiscount">Apply
                                                Discount</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="itemDiscountModal" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Select Items for Discount</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label>Discount Percentage (%)</label>
                                                <input type="number" class="form-control" id="itemDiscountInput" min="0"
                                                    max="100" step="0.01" placeholder="Enter discount %">
                                            </div>
                                            <div class="form-group">
                                                <label>Select Items:</label>
                                                <div id="itemCheckboxList"
                                                    style="max-height: 300px; overflow-y: auto; border: 1px solid #ddd; padding: 10px; border-radius: 5px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Cancel</button>
                                            <button type="button" class="btn btn-primary" id="applyItemDiscount">Apply
                                                Discount</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="">
                                                <div class="form-group">
                                                    <select name="roomno" id="roomno" class="form-control">
                                                        <option value="">{{ $label }}</option>
                                                        @foreach ($roomno as $item)
                                                            <option value="{{ $item->roomno }}" {{ $roomnoone == $item->roomno ? 'selected' : '' }}>{{ $item->roomno }} {{ !empty($item->name) ? ' - ' . $item->name : '' }}</option>
                                                        @endforeach
                                                    </select>
                                                    <span style="text-transform: capitalize;" id="guestdt"
                                                        class="position-absolute text-nowrap"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="">
                                                <div class="form-group">
                                                    <select name="pax" id="pax" class="form-control" required>
                                                        <option value="">Pax</option>
                                                        <option value="1" selected>1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="custom">Custom</option>
                                                    </select>
                                                    <input type="text" class="form-control" id="custompaxinput"
                                                        name="custompaxinput" style="display: none;"
                                                        placeholder="Enter Number">
                                                </div>
                                            </div>
                                        </div>
                                        <div id="compdiv" class="col-md-3">
                                            <div class="">
                                                <div class="form-group">
                                                    <select class="form-control" name="company" id="company">
                                                        <option value="">Company</option>
                                                        @foreach ($company as $item)
                                                            <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                        @endforeach
                                                    </select>
                                                    <span class="position-absolute ADA" id="compgst"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input type="text" placeholder="&#128269; Enter Name" name="searchname"
                                                id="searchname" class="form-control mb-2">
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" placeholder="&#128269; Enter Bar Code" name="searchbar"
                                                id="searchbar" class="form-control mb-2">
                                        </div>
                                        <div class="col-md-3 px-lg-0">
                                            <div class="tablecontainermenunames">
                                                <table id="menunames" class="table table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th style="border-top: 1px solid #0000000f;">Group</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td data-value="favourite" class="menugrpitem" id="favourite">
                                                                Favourite
                                                            </td>
                                                        </tr>
                                                        @foreach ($menudata as $item)
                                                            <tr>
                                                                <td data-value="{{ $item->code }}" class="menugrpitem">
                                                                    {{ $item->name }}
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="divitemnames">
                                                <table id="itemnames" class="table table-hover">
                                                    <thead>
                                                        <tr style="border: 1px solid #0000000f;">
                                                            <th>Item Name</th>
                                                            <th colspan="3">Total Added Items: <span class="text-info"
                                                                    id="addeditems">0</span></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 px-lg-0">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <span class="text BCN font-weight-bold" id="roomnumbers"></span>
                                            <span class="text font-weight-bold ARK" id="settleddt"></span>
                                            <span class="text font-weight-bold BRK" id="settledroomno"></span>
                                        </div>
                                        <div class="mb-4 d-flex"> <button onclick="Simongoback()"
                                                style="width: -webkit-fill-available;" type="button"
                                                class="btn none ml-1 rhead btn-sm btn-info" name="goback" id="goback">Go
                                                Back</button>
                                        </div>
                                        <div class="col">
                                            <div class="table-container">
                                                <div class="cancel-animation" id="cancelAnimation"></div>
                                                <table id="itemsdata" class="table table-hover">
                                                    <thead>
                                                        <tr style="border-top: 1px solid #0000000f;">
                                                            <th>Item</th>
                                                            <th>Description</th>
                                                            <th>Kot No.</th>
                                                            <th>Qty</th>
                                                            <th>Rate</th>
                                                            <th>Amount</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>
                                                    <tfoot class="bg-gallery salebilltfoot">
                                                        <tr>
                                                            <td colspan="6">
                                                                <div class="row">
                                                                    <div id="{{ $outletname[0]->dcode }}" class="col-md-6">
                                                                        <p class="h4 text-danger ">
                                                                            {{ $outletname[0]->name }}
                                                                        </p>
                                                                        @foreach ($sundrytype1 as $index => $item)
                                                                            @if ($index === 0)
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="{{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        {{ $item->disp_name }}
                                                                                    </div>
                                                                                    <div id="{{ $item->vtype }}totalamount"></div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->disp_name) == 'discount')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        <input value="0.00" type="text"
                                                                                            class="form-control discountfix"
                                                                                            value="{{ $item->svalue }}"
                                                                                            name="{{ $item->vtype }}discountfix"
                                                                                            id="{{ $item->vtype }}discountfix" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input value="0.00" type="text"
                                                                                            class="form-control discountsundry"
                                                                                            name="{{ $item->vtype }}discountsundry"
                                                                                            id="{{ $item->vtype }}discountsundry" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->disp_name) == 'service charge')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        <input type="text"
                                                                                            class="form-control servicechargefix"
                                                                                            value="{{ $item->svalue }}"
                                                                                            name="{{ $item->vtype }}servicechargefix"
                                                                                            id="{{ $item->vtype }}servicechargefix"
                                                                                            {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control servicechargeamount"
                                                                                            name="{{ $item->vtype }}servicechargeamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}servicechargeamount"
                                                                                            {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->nature) == 'cgst')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem cgstamount"
                                                                                            name="{{ $item->vtype }}cgstamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}cgstamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->nature) == 'sgst')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem sgstamount"
                                                                                            name="{{ $item->vtype }}sgstamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}sgstamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->nature) == 'igst')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem igstamount"
                                                                                            name="{{ $item->vtype }}igstamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}igstamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->nature) == 'redemption')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem redemptionamount"
                                                                                            name="{{ $item->vtype }}redemptionamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}redemptionamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->nature) == 'sale tax')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem vatamount"
                                                                                            name="{{ $item->vtype }}vatamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}vatamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->nature) == 'deduction')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem deductions"
                                                                                            name="{{ $item->vtype }}deductionamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}deductionamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->nature) == 'addition')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem additions"
                                                                                            name="{{ $item->vtype }}additionamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}additionamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->disp_name) == 'round off')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem roundoffamount"
                                                                                            name="{{ $item->vtype }}roundoffamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}roundoffamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                            @if (strtolower($item->disp_name) == 'net amount')
                                                                                <div class="d-flex justify-content-between mb-2">
                                                                                    <div
                                                                                        class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                        <span
                                                                                            class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                    </div>
                                                                                    <div>
                                                                                        <input type="text"
                                                                                            class="form-control sevenem netamount"
                                                                                            name="{{ $item->vtype }}netamount"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}netamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        <input type="hidden"
                                                                                            class="form-control sevenem totalamount"
                                                                                            name="{{ $item->vtype }}totalamountoutlet"
                                                                                            value="0.00"
                                                                                            id="{{ $item->vtype }}totalamountoutlet">
                                                                                        <input type="hidden"
                                                                                            value="{{ count($sundrytype1) }}"
                                                                                            name="{{ $item->vtype }}sundrycount"
                                                                                            id="{{ $item->vtype }}sundrycount">
                                                                                        <input type="hidden"
                                                                                            name="{{ $item->vtype }}totaltaxable"
                                                                                            id="{{ $item->vtype }}totaltaxable"
                                                                                            value="0.00">
                                                                                        <input type="hidden"
                                                                                            name="{{ $item->vtype }}totalnontaxable"
                                                                                            id="{{ $item->vtype }}totalnontaxable"
                                                                                            value="0.00">
                                                                                    </div>
                                                                                </div>
                                                                            @endif
                                                                        @endforeach
                                                                    </div>
                                                                    @if (count($sundrytype2) > 1)
                                                                        <div id="{{ $outletname[1]->dcode }}" class="col-md-6">
                                                                            <p class="h4 text-danger ">
                                                                                {{ count($outletname) > 1 ? $outletname[1]->name : '' }}
                                                                            </p>
                                                                            @foreach ($sundrytype2 as $index => $item)
                                                                                @if ($index === 0)
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="{{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            {{ $item->disp_name }}
                                                                                        </div>
                                                                                        <div id="{{ $item->vtype }}totalamount"></div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->disp_name) == 'discount')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                            <input value="0.00" type="text"
                                                                                                class="form-control discountfix"
                                                                                                value="{{ $item->svalue }}"
                                                                                                name="{{ $item->vtype }}discountfix"
                                                                                                id="{{ $item->vtype }}discountfix" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input value="0.00" type="text"
                                                                                                class="form-control discountsundry"
                                                                                                name="{{ $item->vtype }}discountsundry"
                                                                                                id="{{ $item->vtype }}discountsundry" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->disp_name) == 'service charge')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                            <input type="text"
                                                                                                class="form-control servicechargefix"
                                                                                                value="{{ $item->svalue }}"
                                                                                                name="{{ $item->vtype }}servicechargefix"
                                                                                                id="{{ $item->vtype }}servicechargefix"
                                                                                                {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control servicechargeamount"
                                                                                                name="{{ $item->vtype }}servicechargeamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}servicechargeamount"
                                                                                                {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->nature) == 'cgst')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem cgstamount"
                                                                                                name="{{ $item->vtype }}cgstamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}cgstamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->nature) == 'sgst')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem sgstamount"
                                                                                                name="{{ $item->vtype }}sgstamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}sgstamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->nature) == 'igst')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem igstamount"
                                                                                                name="{{ $item->vtype }}igstamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}igstamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->nature) == 'redemption')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem redemptionamount"
                                                                                                name="{{ $item->vtype }}redemptionamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}redemptionamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->nature) == 'sale tax')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem vatamount"
                                                                                                name="{{ $item->vtype }}vatamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}vatamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->nature) == 'deduction')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem deductions"
                                                                                                name="{{ $item->vtype }}deductionamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}deductionamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->nature) == 'addition')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem additions"
                                                                                                name="{{ $item->vtype }}additionamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}additionamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->disp_name) == 'round off')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem roundoffamount"
                                                                                                name="{{ $item->vtype }}roundoffamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}roundoffamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                                @if (strtolower($item->disp_name) == 'net amount')
                                                                                    <div class="d-flex justify-content-between mb-2">
                                                                                        <div
                                                                                            class="d-flex {{ $item->bold == 'Y' ? 'font-weight-bold' : '' }}">
                                                                                            <span
                                                                                                class="mt-2 mr-1">{{ $item->disp_name }}</span>
                                                                                        </div>
                                                                                        <div>
                                                                                            <input type="text"
                                                                                                class="form-control sevenem netamount"
                                                                                                name="{{ $item->vtype }}netamount"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}netamount" {{ $item->automanual == 'A' ? 'readonly' : '' }}>
                                                                                            <input type="hidden"
                                                                                                class="form-control sevenem totalamount"
                                                                                                name="{{ $item->vtype }}totalamountoutlet"
                                                                                                value="0.00"
                                                                                                id="{{ $item->vtype }}totalamountoutlet">
                                                                                            <input type="hidden"
                                                                                                value="{{ count($sundrytype2) }}"
                                                                                                name="{{ $item->vtype }}sundrycount"
                                                                                                id="{{ $item->vtype }}sundrycount">
                                                                                            <input type="hidden"
                                                                                                name="{{ $item->vtype }}totaltaxable"
                                                                                                id="{{ $item->vtype }}totaltaxable"
                                                                                                value="0.00">
                                                                                            <input type="hidden"
                                                                                                name="{{ $item->vtype }}totalnontaxable"
                                                                                                id="{{ $item->vtype }}totalnontaxable"
                                                                                                value="0.00">
                                                                                        </div>
                                                                                    </div>
                                                                                @endif
                                                                            @endforeach
                                                                        </div>
                                                                    @endif
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            @if (count($sundrytype2) > 1)
                                                                <td colspan="5">Total Amount: </td>
                                                                <td id="totalamttext" class="text-right h5"></td>
                                                            @endif
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                        <div id="guesttable" style="display: none;">
                                            <h5 class="d-flex justify-content-center align-items-center">
                                                <span class="flex-grow-1 text-center">Guest History</span>
                                                <span id="closeguestdiv" class="ml-auto text-danger">
                                                    <i class="fa-regular fa-rectangle-xmark"></i>
                                                </span>
                                            </h5>
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Visit DateTime</th>
                                                        <th>Item Name</th>
                                                        <th>Qty</th>
                                                        <th>Rate</th>
                                                        <th>Amount</th>
                                                    </tr>
                                                </thead>
                                                <tbody> </tbody>
                                            </table>
                                            <div id="resizeHandle" class="resizeHandle"></div>
                                        </div>
                                        <div id="guestdetailsoverlay">
                                            <span id="guestDetails"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button id="rewardFab" type="button" class="pending-fab" style="display:none;position:fixed;right:22px;top:48%;z-index:1080;" title="Open Reward">
        <i class="fa fa-gift"></i>
    </button>
    <script>
        const mobileno = '{{ $depart->mobile_no_mandatory }}';

        function Simongoback() {
            window.location.href = `displaytable?dcode=${$('#fixrestcode').val()}`;
        }
        let currentDiscount = {
            type: '',
            percent: 0,
            groups: [],
            items: []
        };

        function updateDiscountInfo() {
            const info = $('#discountInfo');
            if (currentDiscount.type) {
                let text = `${currentDiscount.type}: ${currentDiscount.percent}%`;
                if (currentDiscount.groups && currentDiscount.groups.length) text += ` (${currentDiscount.groups.length} groups)`;
                if (currentDiscount.items && currentDiscount.items.length) text += ` (${currentDiscount.items.length} items)`;
                info.text(text).show().css('cursor', 'pointer');
                $('#billDiscountOption').prop('disabled', currentDiscount.type !== 'Bill');
                $('#itemDiscountOption').prop('disabled', currentDiscount.type !== 'Item');
                $('#groupDiscountOption').prop('disabled', currentDiscount.type !== 'Group');
                const code1 = $('#fixrestcode').val();
                $(`#${code1}discountfix`).val('0.00').prop('disabled', true);
                const code2 = $('#fixrestcode2').val();
                $(`#${code2}discountfix`).val('0.00').prop('disabled', true);
            } else {
                info.hide();
                $('#billDiscountOption').prop('disabled', false);
                $('#itemDiscountOption').prop('disabled', false);
                $('#groupDiscountOption').prop('disabled', false);
            }
        }
        $(document).ready(function() {
            if ($('#departnature').val() == 'Room Service') {
                $('#customerbutton').css('display', 'none');
            }
            updateDiscountInfo();

            const rewardFabKey = 'salebillRewardFabVisible';
            let rewardAutoOpened = false;

            function setRewardFabVisible(show, persist = true) {
                const $rewardFab = $('#rewardFab');
                if (show) {
                    $rewardFab.fadeIn(200);
                } else {
                    $rewardFab.fadeOut(200);
                }
                if (persist) {
                    try {
                        localStorage.setItem(rewardFabKey, show ? 'true' : 'false');
                    } catch (e) {
                        console.warn('Unable to access localStorage for rewardFab state', e);
                    }
                }
            }

            function initializeRewardFab() {
                try {
                    localStorage.setItem(rewardFabKey, 'false');
                } catch (e) {
                    console.warn('Unable to access localStorage for rewardFab state', e);
                }
                setRewardFabVisible(false, false);
            }

            initializeRewardFab();

            $(document).on('click', '#rewardFab', function() {
                $('#rewardModal').modal('show');
            });

            $('#rewardModal').on('hide.bs.modal', function() {
                if (rewardAutoOpened) {
                    setRewardFabVisible(true, true);
                }
            });

            let selectedItemRow = null;

            function updateFreeButtonState() {
                let hasItems = $('#itemsdata tbody tr').length > 0;
                $('#freeBtn').prop('disabled', !hasItems);
                if (!hasItems) {
                    selectedItemRow = null;
                    $('#itemsdata tbody tr').removeClass('selected-for-free');
                }
            }

            function updateFreeUnfreeButtonState() {
                if (!selectedItemRow) {
                    $('#freeBtn, #unfreeBtn').prop('disabled', true);
                    $('#unfreeBtn').hide();
                    $('#freeBtn').show();
                    return;
                }

                let rowIndex = selectedItemRow.index() + 1;
                let rateInput = $(`#rate${rowIndex}`);
                let currentRate = parseFloat(rateInput.val());
                let isItemFree = currentRate === 0;

                if (isItemFree) {
                    $('#freeBtn').prop('disabled', true).hide();
                    $('#unfreeBtn').prop('disabled', false).show();
                } else {
                    $('#freeBtn').prop('disabled', false).show();
                    $('#unfreeBtn').prop('disabled', true).hide();
                }
            }

            $(document).on('click', '#itemsdata tbody tr', function(e) {
                if ($(e.target).closest('.increment, .decrement, .removeItem').length) {
                    return;
                }
                if ($(this).hasClass('selected-for-free')) {
                    $(this).removeClass('selected-for-free');
                    selectedItemRow = null;
                } else {
                    $('#itemsdata tbody tr').removeClass('selected-for-free');
                    $(this).addClass('selected-for-free');
                    selectedItemRow = $(this);
                }
                updateFreeUnfreeButtonState();
            });

            $('#freeBtn').on('click', function() {
                if (!selectedItemRow) {
                    pushNotify('warning', 'Free Item', 'Please select an item first by clicking on it', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                let rowIndex = selectedItemRow.index() + 1;
                let rateInput = $(`#rate${rowIndex}`);
                let currentRate = parseFloat(rateInput.val());
                if (currentRate === 0) {
                    pushNotify('info', 'Free Item', 'This item is already marked as free', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                Swal.fire({
                    title: 'Mark Item as Free?',
                    text: 'This will set the item rate and amount to 0',
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, make it free',
                    cancelButtonText: 'Cancel',
                    confirmButtonColor: '#28a745',
                    cancelButtonColor: '#6c757d'
                }).then((result) => {
                    if (result.isConfirmed) {
                        rateInput.data('original-rate', currentRate);
                        rateInput.val(0);
                        $(`#amount${rowIndex}, #fixamount${rowIndex}`).val('0.00');
                        selectedItemRow.removeClass('selected-for-free').addClass('free-item');
                        setTimeout(() => {
                            calculatetaxes();
                        }, 300);
                        updateFreeUnfreeButtonState();
                        pushNotify('success', 'Free Item', 'Item marked as free', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            $('#unfreeBtn').on('click', function() {
                if (!selectedItemRow) {
                    pushNotify('warning', 'Unfree Item', 'Please select an item first by clicking on it', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                let rowIndex = selectedItemRow.index() + 1;
                let rateInput = $(`#rate${rowIndex}`);
                let currentRate = parseFloat(rateInput.val());
                let originalRate = rateInput.data('original-rate');

                if (currentRate !== 0) {
                    pushNotify('info', 'Unfree Item', 'This item is not marked as free', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                Swal.fire({
                    title: 'Restore Item Rate?',
                    text: `This will restore the item rate to ${originalRate}`,
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, restore rate',
                    cancelButtonText: 'Cancel',
                    confirmButtonColor: '#17a2b8',
                    cancelButtonColor: '#6c757d'
                }).then((result) => {
                    if (result.isConfirmed) {
                        rateInput.val(originalRate);
                        let qty = parseFloat($(`#quantity${rowIndex}`).val()) || 1;
                        let amount = (originalRate * qty).toFixed(2);
                        $(`#amount${rowIndex}, #fixamount${rowIndex}`).val(amount);
                        selectedItemRow.removeClass('free-item selected-for-free');
                        setTimeout(() => {
                            calculatetaxes();
                        }, 300);
                        updateFreeUnfreeButtonState();
                        pushNotify('success', 'Unfree Item', 'Item rate restored', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            $(document).on('click', '.increment', function(e) {
                e.stopPropagation();
                var counter = $(this).siblings('.qtyitem');
                var value = parseInt(counter.val()) || 0;
                counter.val(value + 1);
                var trindex = $(this).closest('tr').index() + 1;
                updateRowAmount(trindex);
                setTimeout(() => {
                    calculatetaxes();
                }, 100);
            });

            $(document).on('click', '.decrement', function(e) {
                e.stopPropagation();
                var counter = $(this).siblings('.qtyitem');
                var value = parseInt(counter.val()) || 0;
                if (value > 1) {
                    counter.val(value - 1);
                    var trindex = $(this).closest('tr').index() + 1;
                    updateRowAmount(trindex);
                    setTimeout(() => {
                        calculatetaxes();
                    }, 100);
                }
            });

            setInterval(updateFreeButtonState, 500);
            setInterval(updateFreeUnfreeButtonState, 500);
            $(document).on('click', '#submitBtn', function(e) {
                e.preventDefault();

                if (mobileno === 'Y') {
                    let phoneno = $('#phoneno').val();
                    let customername = $('#customername').val();
                    if (phoneno === '') {
                        $('#customerModal').modal('show');
                        $('#phoneno').focus();
                        pushNotify('error', 'Salebill Entry', 'Please Enter Customer Mobile No.!');
                        return false;
                    }
                    if (customername === '') {
                        $('#customerModal').modal('show');
                        $('#customername').focus();
                        pushNotify('error', 'Salebill Entry', 'Please Enter Customer Name!');
                        return false;
                    }
                }
                if ($(this).prop('disabled')) {
                    return false;
                }
                $(this).prop('disabled', true);
                let originalText = $(this).text();
                $(this).text('Processing...');
                $('#billprint').prop('disabled', true);
                let tbody = $('#itemsdata tbody');
                let rowcount = tbody.find('tr').length;
                let roomno = $('#roomno').val();
                if (roomno === '' || roomno === null) {
                    $(this).prop('disabled', false).text(originalText);
                    $('#billprint').prop('disabled', false);
                    pushNotify('error', 'Salebill Entry', 'Please Select Room No.!');
                    return false;
                }
                if (rowcount === 0) {
                    $(this).prop('disabled', false).text(originalText);
                    $('#billprint').prop('disabled', false);
                    pushNotify('error', 'Salebill Entry', 'Please Add Some Item First!');
                    return false;
                }
                $(this).closest('form')[0].submit();
            });
            let posroomno = $('#posroomno').val();
            if (posroomno != '') {
                $('#goback').removeClass('none');
            } else {
                $('#goback').addClass('none');
            }
            setTimeout(() => {
                if (posroomno != '') {
                    $('#roomno').trigger('change');
                }
            }, 1000);
            $('#salebillmodal').on('show.bs.modal', function(event) {
                var iframe = document.getElementById("salebillsettleiframe");
                let vno = $('#oldroomno').val();
                let sale1docid = $('#sale1docid').val();
                let vdatesale1 = $('#vdatesale1').val();
                $('#vnomodal').text(vno);
                let rest_code = $('#fixrestcode').val();
                console.log(rest_code);
                let depositdate = $('#depositdate').val();
                $('#depdate').text(dmy(depositdate == '' ? vdatesale1 : depositdate));
                iframe.src = "{{ url('/salebillsettle') }}" + "?vno=" + vno + "&sale1docid=" + sale1docid + "&rest_code=" + rest_code;
                console.log(iframe.src);
            });
            $('#pax').on('change', function() {
                var selectedOption = $(this).val();
                var inputField = $('#custompaxinput');
                if (selectedOption === "custom") {
                    inputField.show().focus();
                } else {
                    inputField.hide();
                }
            });
            $('#custompaxinput').on('keypress blur', function(event) {
                if (event.which === 13 || event.type === 'blur') {
                    var inputVal = $(this).val();
                    var selectBox = $('#pax');
                    var existingOption = selectBox.find('option[value="' + inputVal + '"]');
                    if (existingOption.length > 0) {
                        existingOption.remove();
                    }
                    selectBox.append('<option value="' + inputVal + '" selected>' + inputVal + '</option>');
                    var customOption = selectBox.find('option[value="custom"]');
                    if (customOption.is(':selected')) {
                        customOption.remove();
                        selectBox.append('<option value="custom" selected>custom</option>');
                    }
                    $(this).hide();
                }
            });
            $('#roomno').on('change', function() {
                let roomno = $(this).val();
                let guestdtxhr = new XMLHttpRequest();
                guestdtxhr.open('POST', '/guestdtfetchkot', true);
                guestdtxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                guestdtxhr.onreadystatechange = function() {
                    if (guestdtxhr.readyState === 4 && guestdtxhr.status === 200) {
                        let results = JSON.parse(guestdtxhr.responseText);
                        $('#guestdt').text(results.concat);
                        $('#pax').val(results.pax);
                        let guestdetails = results.guestdetails;
                        if (guestdetails != '' && guestdetails != null) {
                            $('#guestname').val(guestdetails.name);
                            $('#company').val(guestdetails.company);
                            $('#compgst').text(guestdetails.gstin);
                            $('#guestadd').val(`${guestdetails.add1} ${guestdetails.add2}`);
                            $('#guestmobile').val(guestdetails.guestmobile);
                            $('#guestcity').val(guestdetails.guestcityname);
                            $('#guestcompany').val(guestdetails.companyname);
                            $('#compstatename').val(guestdetails.compstatename);
                            $('#compstatecode').val(guestdetails.compstatecode);
                            $('#companygst').val(guestdetails.gstin);
                            $('#compcityname').val(guestdetails.compcityname);
                        }
                        $('#compdiv').removeClass('none');
                    } else {
                        $('#compgst').text('');
                        $('#compdiv').addClass('none');
                        $('#company').val('');
                        $('#pax').val('');
                    }
                }
                guestdtxhr.send(`roomno=${roomno}&_token={{ csrf_token() }}`);
            });
            $("#outletchangebtn").click(function() {
                let kotoutletselection = $('#kotoutletselection').val();
                if (kotoutletselection == 'Y') {
                    $("#listoutlets").toggle();
                }
            });
            $('.outletcls').click(function() {
                $("#listoutlets").toggle();
                let dcode = $(this).data('value');
                $('#restcode').val(dcode);
                let departnamexhr = new XMLHttpRequest();
                departnamexhr.open('POST', '/departnamefetch', true);
                departnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                departnamexhr.onreadystatechange = function() {
                    if (departnamexhr.readyState === 4 && departnamexhr.status === 200) {
                        let results = JSON.parse(departnamexhr.responseText);
                        let buttonid = $('#outletchangebtn');
                        buttonid.text(results.name);
                        let shortname = 'B' + results.short_name;
                        $('#vtype').val(shortname);
                        krsno(shortname);
                    }
                }
                departnamexhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
                $('#menunames tbody').find('tr:not(:first)').remove();
                $('#itemnames tbody').empty();
                let menunamexhr = new XMLHttpRequest();
                menunamexhr.open('POST', '/fetchmenunames', true);
                menunamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                menunamexhr.onreadystatechange = function() {
                    if (menunamexhr.readyState === 4 && menunamexhr.status === 200) {
                        let results = JSON.parse(menunamexhr.responseText);
                        $('#favourite').trigger('click');
                        let menunametbody = $('#menunames tbody');
                        results.forEach(function(item, index) {
                            let row = $('<tr>');
                            row.append(`<td class="menugrpitem" data-value="${item.code}">${item.name}</td>`);
                            menunametbody.append(row);
                            $('.menugrpitem').click(function() {
                                let grpid = $(this).data('value');
                                let dcode = $('#restcode').val();
                                $('#searchname').val('');
                                $('#searchbar').val('');
                                fetchItemNames(`grpid=${grpid}&dcode=${dcode}&_token={{ csrf_token() }}`);
                            });
                        });
                    }
                }
                menunamexhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
            });

            function scrollToBottom() {
                var container = $('.table-container');
                container.animate({
                    scrollTop: container.prop("scrollHeight")
                }, 'slow');
            }
            $('#vtype').on('input', function() {
                let value = $(this).val();
                krsno(value);
            });

            function krsno(vtype) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "{{ route('getmaxvtype') }}");
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var data = JSON.parse(xhr.responseText);
                        $("#krsno").text(data);
                    }
                };
                xhr.send(`vtype=${vtype}&_token={{ csrf_token() }}`);
            }
            $('#menunames td').click(function() {
                if ($(this).hasClass('bgmenutd')) {
                    $(this).removeClass('bgmenutd').find('.fas.fa-arrow-right').remove();
                } else {
                    $('#menunames td').removeClass('bgmenutd').find('.fas.fa-arrow-right').remove();
                    $(this).addClass('bgmenutd').append('<i class="fas fa-arrow-right ml-2"></i>');
                }
            });
            let addedItemCodes = [];
            let itemnamexhr = null;
            let itemSearchDebounceTimer = null;
            let latestItemSearchRequestId = 0;
            const itemImageCache = new Map();
            const itemPlaceholderImage = "{{ asset('admin/icons/custom/60x60.svg') }}";
            const itemFallbackImage = "{{ url('assets/img/100_90.svg') }}";

            function getItemImageCacheKey(item) {
                return `${item.RestCode || ''}__${item.Code || ''}`;
            }

            function readItemImageCache(cacheKey) {
                if (itemImageCache.has(cacheKey)) {
                    return itemImageCache.get(cacheKey);
                }

                let savedEntry = sessionStorage.getItem(`item_image_${cacheKey}`);
                if (!savedEntry) {
                    return null;
                }

                try {
                    let parsedEntry = JSON.parse(savedEntry);
                    itemImageCache.set(cacheKey, parsedEntry);
                    return parsedEntry;
                } catch (error) {
                    sessionStorage.removeItem(`item_image_${cacheKey}`);
                    return null;
                }
            }

            function writeItemImageCache(cacheKey, cacheValue) {
                itemImageCache.set(cacheKey, cacheValue);
                sessionStorage.setItem(`item_image_${cacheKey}`, JSON.stringify(cacheValue));
            }

            function getItemImageSource(item) {
                if (!item.iempic) {
                    return '';
                }

                return `{{ asset('storage/property/itempicture') }}/${item.iempic}`;
            }

            function preloadItemImage(item, cellSelector) {
                let imageSrc = getItemImageSource(item);
                if (!imageSrc) {
                    return;
                }

                let cacheKey = getItemImageCacheKey(item);
                let cachedEntry = readItemImageCache(cacheKey);

                if (cachedEntry && (cachedEntry.status === 'loading' || cachedEntry.status === 'loaded')) {
                    return;
                }

                writeItemImageCache(cacheKey, {
                    status: 'loading',
                    src: imageSrc
                });

                let preloadImage = new Image();
                preloadImage.onload = function() {
                    writeItemImageCache(cacheKey, {
                        status: 'loaded',
                        src: imageSrc
                    });
                    $(cellSelector).find('.item-card-image').attr('src', imageSrc);
                };
                preloadImage.onerror = function() {
                    writeItemImageCache(cacheKey, {
                        status: 'error',
                        src: itemFallbackImage
                    });
                    $(cellSelector).find('.item-card-image').attr('src', itemFallbackImage);
                };
                preloadImage.src = imageSrc;
            }

            function getItemImageMarkup(item, cellSelector) {
                let imageSrc = getItemImageSource(item);
                if (!imageSrc) {
                    return `<img src="${itemPlaceholderImage}" alt="${item.Name}" class="item-card-image" style="width: 100%; height: 100%; object-fit: contain;">`;
                }

                let cacheKey = getItemImageCacheKey(item);
                let cachedEntry = readItemImageCache(cacheKey);
                let renderSrc = itemPlaceholderImage;

                if (cachedEntry && cachedEntry.status === 'loaded') {
                    renderSrc = cachedEntry.src;
                } else if (cachedEntry && cachedEntry.status === 'error') {
                    renderSrc = cachedEntry.src;
                } else {
                    preloadItemImage(item, cellSelector);
                }

                return `<img src="${renderSrc}" alt="${item.Name}" class="item-card-image" style="width: 100%; height: 100%; object-fit: contain;">`;
            }

            function renderItemNames(results) {
                let tbody = $('#itemnames tbody');
                tbody.empty();
                let row;

                results.forEach(function(item, index) {
                    if (index % 4 === 0) {
                        row = $('<tr>');
                    }

                    let itemname = item.Name;
                    let itemcde = item.Code;
                    let bordercolor = (item.dishtype == 1) ? 'green' : (item.dishtype == 2) ? 'red' : (item.dishtype == 3) ? 'yellow' : 'green';
                    let cellId = `sale-item-cell-${item.RestCode || 'rest'}-${itemcde}-${index}`;
                    let cellSelector = `#${cellId}`;
                    let itemdir = getItemImageMarkup(item, cellSelector);

                    row.append(`<td id="${cellId}" style="position: relative; border-left: 3px solid ${bordercolor};" data-id="${item.rateofitem}" data-itemrestcode="${item.RestCode}" class="tditemname" data-value="${itemcde}">
                                                                                                        ${itemdir}
                                                                                                        <span class="itemnamespan">${itemname}</span>
                                                                                                    </td>`);
                    if ((index + 1) % 4 === 0 || index === results.length - 1) {
                        if ((index + 1) % 4 !== 0) {
                            let emptyTdCount = 4 - ((index + 1) % 4);
                            for (let i = 0; i < emptyTdCount; i++) {
                                row.append('<td></td>');
                            }
                        }
                        tbody.append(row);
                        $('#roomno').prop('disabled', false);
                        $('#oldroomno').prop('disabled', false);
                    }
                });
            }

            function fetchItemNames(data) {
                latestItemSearchRequestId++;
                let requestId = latestItemSearchRequestId;

                itemnamexhr = new XMLHttpRequest();
                itemnamexhr.open('POST', '/fetchitemnames', true);
                itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                itemnamexhr.onreadystatechange = function() {
                    if (itemnamexhr.readyState !== 4) {
                        return;
                    }

                    if (itemnamexhr.status === 200 && requestId === latestItemSearchRequestId) {
                        let results = JSON.parse(itemnamexhr.responseText);
                        renderItemNames(results);
                    }
                }
                itemnamexhr.send(data);
            }

            function debounceFetchItemNames(data, delay = 350) {
                clearTimeout(itemSearchDebounceTimer);
                itemSearchDebounceTimer = setTimeout(function() {
                    fetchItemNames(data);
                }, delay);
            }
            $('.menugrpitem').click(function() {
                let grpid = $(this).data('value');
                let dcode = $('#restcode').val();
                $('#searchname').val('');
                $('#searchbar').val('');
                fetchItemNames(`grpid=${grpid}&dcode=${dcode}&_token={{ csrf_token() }}`);
            });
            $('#searchname').on('input', function() {
                let nameinput = $(this).val().trim();
                let dcode = $('#restcode').val();
                $('#searchbar').val('');

                if (!nameinput) {
                    clearTimeout(itemSearchDebounceTimer);
                    return;
                }

                debounceFetchItemNames(`name=${encodeURIComponent(nameinput)}&dcode=${encodeURIComponent(dcode)}&_token={{ csrf_token() }}`);
            });
            $('#searchbar').on('input', function() {
                let barcodeinput = $(this).val().trim();
                let dcode = $('#restcode').val();
                $('#searchname').val('');

                if (!barcodeinput) {
                    clearTimeout(itemSearchDebounceTimer);
                    return;
                }

                debounceFetchItemNames(`barcodeinput=${encodeURIComponent(barcodeinput)}&dcode=${encodeURIComponent(dcode)}&_token={{ csrf_token() }}`);
            });
            let temptotaladditems = $('#addeditems').text();
            let totaladditems = (temptotaladditems == 0) ? 0 : temptotaladditems;

            $('tbody').on('click', '.tditemname', function() {
                if (localStorage.getItem('allowitemadd') === 'false') {
                    pushNotify('warning', 'Sale Bill Entry', 'Adding items is disabled for this bill as it is linked to an e-invoice', 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                    return;
                }
                let itemcode = $(this).data('value');
                let itemrestcode = $(this).data('itemrestcode');
                let existingItem = $('#itemsdata tbody tr').filter(function() {
                    return $(this).find('input[name^="itemcode"]').val() === itemcode;
                });
                scrollToBottom();
                if (existingItem.length) {
                    let quantityInput = existingItem.find('.qtyitem').first();
                    let quantity = parseInt(quantityInput.val()) || 0;
                    quantityInput.val(quantity + 1);
                    let trindex = existingItem.index() + 1;
                    updateRowAmount(trindex);
                    setTimeout(() => {
                        calculatetaxes();
                    }, 500);
                } else {
                    let itemsdataAppend = $('#itemsdata tbody');
                    itemnamexhr = new XMLHttpRequest();
                    itemnamexhr.open('POST', '/fetchitemdetails', true);
                    itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    itemnamexhr.onreadystatechange = function() {
                        if (itemnamexhr.readyState === 4 && itemnamexhr.status === 200) {
                            let results = JSON.parse(itemnamexhr.responseText);
                            let itemsData = results.itemdetails;
                            let tbodyLength = $('#itemsdata tbody tr').length;
                            let index = tbodyLength > 0 ? tbodyLength + 1 : 1;
                            totaladditems++;
                            $('#addeditems').text(totaladditems);
                            $('#totalitems').val(totaladditems);
                            $('#addeditems').css('font-size', 'large');
                            $('#discBtn').prop('disabled', false);
                            setTimeout(() => {
                                $('#addeditems').css('font-size', 'small');
                            }, 1000);
                            let printnum = totaladditems.toString();
                            let fixedrate = parseFloat(itemsData.Rate);

                            if (itemsData.RateIncTax === 'Y') {
                                const taxrate = parseFloat(itemsData.tax_rate);
                                fixedrate = fixedrate / (1 + taxrate / 100);
                            }
                            pushNotify('success', 'Sale Bill Entry', printnum + ' Item Added', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                            let rateedit = 'readonly';

                            if ("{{ Auth::user()->useroradmin }}" == 'user' && "{{ userdata() ? userdata()->posrateedit : 'N' }}" == 'Y') {
                                rateedit = '';
                            } else if (itemsData.kot_yn == 'Y') {
                                rateedit = (itemsData.RateEdit == 'N') ? 'readonly' : '';
                            } else {
                                rateedit = (itemsData.RateEdit == 'Y') ? '' : 'readonly';
                            }
                            let data = `<tr>
                                            <td style="white-space: nowrap;">
                                                    <span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span>
                                                    <input name="itemcode${index}" id="itemcode${index}" value="${itemsData.Code}" type="hidden">
                                                    <input name="discapp${index}" id="discapp${index}" value="${itemsData.DiscApp}" type="hidden">
                                                    <input class="itemnumber" name="itemnumber${index}" id="itemnumber${index}" value="${index}" type="hidden">
                                                    <input name="itemname${index}" class="itemnameclass" id="itemname${index}" value="${itemsData.Name}" type="hidden">
                                                    <input name="itemrestcode${index}" id="itemrestcode${index}" value="${itemsData.RestCode}" type="hidden">
                                                    ${itemsData.Name}</td>
                                                    <td><input readonly name="description${index}" placeholder="Enter" id="description${index}" class="form-control description inone" type="text"></td>
                                            <td class="text-center"></td>
                                            <td>
                                                    <div class="panelinc">
                                                        <button type="button" class="decrement btn">-</button>
                                                        <input name="quantity${index}" id="quantity${index}" class="form-control qtyitem" type="text" value="1">
                                                        <button type="button" class="increment btn">+</button>
                                                    </div>
                                            </td>
                                            <td><input class="rateclass form-control sevenem" ${rateedit} oninput="checkNumMax(this, 7); handleDecimalInput(event);" name="rate${index}" id="rate${index}" value="${itemsData.Rate}" type="text">
                                                <input type="hidden" value="${fixedrate.toFixed(2)}" name="taxedrate${index}" id="taxedrate${index}" readonly>
                                            </td>
                                            <td><input type="text" name="amount${index}" id="amount${index}" value="${itemsData.Rate}" class="form-control amount" readonly>
                                                <input type="hidden" name="fixamount${index}" id="fixamount${index}" value="${fixedrate.toFixed(2)}" class="form-control fixamount" readonly>
                                                <input type="hidden" value="${itemsData.RateIncTax}" class="RateIncTax" id="RateIncTax${index}" name="RateIncTax${index}" readonly></td>
                                            <td class="none"><input type="text" name="taxrate_sum${index}" id="taxrate_sum${index}" value="${itemsData.tax_rate}" class="form-control taxrate_sum" readonly>
                                                <input name="tax_rate${index}" id="tax_rate${index}" value="${itemsData.tax_rate}" type="hidden">
                                            </td>
                                            <td class="none"><input type="text" name="tax_code${index}" id="tax_code${index}" value="${itemsData.tax_code}" class="form-control tax_code" readonly></td>
                                        </tr>`;
                            itemsdataAppend.append(data);
                            addedItemCodes.push(itemcode);
                            setTimeout(() => {
                                calculatetaxes();
                            }, 500);
                        }
                    }
                    itemnamexhr.send(`itemcode=${itemcode}&itemrestcode=${itemrestcode}&_token={{ csrf_token() }}`);
                }
            });
            $(document).on('click', '.description', function() {
                var inputElement = $(this);
                let currow = inputElement.closest('tr');
                let itemnameelement = currow.find('.itemnameclass');
                let itemname = itemnameelement.val();
                let newitemname = itemname.replace(/%20/g, ' ');
                let title = `Enter Description For ${newitemname}`;
                var currentValue = inputElement.val();
                Swal.fire({
                    title: title,
                    input: 'text',
                    inputValue: currentValue,
                    inputPlaceholder: 'Enter your value here',
                    showCancelButton: true,
                    showDenyButton: true,
                    confirmButtonText: 'OK',
                    denyButtonText: 'Clear',
                    cancelButtonText: 'Cancel',
                    inputValidator: (value) => {
                        return null;
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        var newValue = result.value;
                        inputElement.val(newValue);
                        inputElement.prop('readonly', true);
                    } else if (result.isDenied) {
                        inputElement.val('');
                        inputElement.prop('readonly', true);
                    }
                });
            });

            function calcper(amount, percentage) {
                return ((amount * percentage) / 100).toFixed(2);
            }

            function calcitemper(amount, disc) {
                return ((amount - (amount * disc) / 100).toFixed(2));
            }
            let firstSelection = true;
            let previousRoomNo = null;
            let selectedRooms = [];
            let totalamount;
            $('#roomno').on('change', function() {
                $('#oldroomno').prop('disabled', true);
                let label = $('#label').val();
                let currentRoomNo = $(this).val();
                if (currentRoomNo === previousRoomNo) {
                    return;
                }
                if (selectedRooms.includes(currentRoomNo)) {
                    alert(`You have already selected this ${label}.`);
                    $(this).val(previousRoomNo);
                    return;
                }
                if (firstSelection) {
                    firstSelection = false;
                } else {
                    var confirmation = confirm(`Do you want to select ${label}: ${currentRoomNo} ?`);
                    if (!confirmation) {
                        $(this).val(previousRoomNo);
                        return;
                    }
                }
                selectedRooms.push(currentRoomNo);
                previousRoomNo = currentRoomNo;
                let dcode = $('#restcode').val();
                $('#roomnumbers').text(label + '. ' + selectedRooms.join(', '));
                $('#orderno').text('Modify Order');
                scrollToBottom();
                let itemnamexhr = new XMLHttpRequest();
                itemnamexhr.open('POST', '/fetchitemroomchange', true);
                itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                itemnamexhr.onreadystatechange = function() {
                    if (itemnamexhr.readyState === 4 && itemnamexhr.status === 200) {
                        let results = JSON.parse(itemnamexhr.responseText);
                        console.log(results);
                        let items = results.items;
                        let sundrytype = results.sundrytype;
                        let tbodyempty = $('#itemsdata tbody').empty();
                        let tbodyData = '';
                        let currentrowcount = $('#itemsdata tbody tr').length;
                        let ajaxRequestsCompleted = 0;
                        $('#vnoup').val(results.items.vno ?? '');
                        $('#kotno').val(results.items.vno ?? '');
                        $('#vdatesale1').val(results.items.vdate ?? '');
                        $('#waitersname').val(results.waitername ?? '');
                        let totalitems = results.items.length;
                        totaladditems = totalitems;
                        $('#addeditems').text(totalitems);
                        $('#totalitems').val(totalitems);
                        $('#addeditems').css('font-size', 'large');
                        let printnum = totalitems.toString();
                        pushNotify('success', 'Sale Bill Entry', printnum + ' Item Added', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        setTimeout(() => {
                            $('#addeditems').css('font-size', 'small');
                        }, 1000);
                        let uniquedocid = new Set();
                        let outletTaxSums = {
                            [results.outlet1code]: 0,
                            [results.outlet2code]: 0
                        };
                        items.forEach((item, index) => {
                            const restcode = item.restcode ?? '';
                            const taxamt = parseFloat(item.taxamt) || 0;
                            if (restcode === results.outlet1code) {
                                outletTaxSums[results.outlet1code] += taxamt;
                            } else if (restcode === results.outlet2code) {
                                outletTaxSums[results.outlet2code] += taxamt;
                            }
                            let restcode1 = $('#fixrestcode').val();
                            if (restcode1 == results.outlet1code) {
                                $('#fixrestcode2').val(results.outlet2code);
                            } else {
                                $('#fixrestcode2').val(results.outlet1code);
                            }
                            $('#waiter').val(item.waiter);
                            $('#kotdocidfix').val(item.docid);
                            uniquedocid.add(item.docid);
                            let rowIndex = currentrowcount + index + 1;
                            let taxcode = item.TaxStru;
                            let discapp = item.DiscApp;
                            let tax_rate = parseFloat(item.tax_rate);
                            let taxincyn = item.RateIncTax;
                            let itemrate = parseFloat(item.rate);
                            let qty = parseFloat(item.qty);
                            let taxedrate = item.taxedrate.toFixed(2);
                            let rateedit = 'readonly';

                            if ("{{ Auth::user()->useroradmin }}" == 'user' && "{{ userdata() ? userdata()->posrateedit : 'N' }}" == 'Y') {
                                rateedit = '';
                            } else if (item.kot_yn == 'Y') {
                                rateedit = (item.RateEdit == 'N') ? 'readonly' : '';
                            } else {
                                rateedit = (item.RateEdit == 'Y') ? '' : 'readonly';
                            }
                            tbodyData += `<tr data-itemname="${item.Name}" data-itemcode="${item.item}" data-discapp="${item.DiscApp}" data-groupname="${item.groupname}" data-groupcode="${item.groupcode}">
                                                <td style="white-space: nowrap;">
                                                    <input name="itemcode${rowIndex}" id="itemcode${rowIndex}" value="${item.item}" type="hidden">
                                                    <input name="itemname${rowIndex}" class="itemnameclass" id="itemname${rowIndex}" value="${item.Name}" type="hidden">
                                                    <input name="discapp${rowIndex}" id="discapp${rowIndex}" value="${item.DiscApp}" type="hidden">
                                                    <input name="SChrgApp${rowIndex}" id="SChrgApp${rowIndex}" value="${item.SChrgApp}" type="hidden">
                                                    <input name="kotsno${rowIndex}" id="kotsno${rowIndex}" value="${item.sno}" type="hidden">
                                                    <input name="kotsdocid${rowIndex}" id="kotsdocid${rowIndex}" value="${item.docid}" type="hidden">
                                                    <input name="outletfirst${rowIndex}" id="outletfirst${rowIndex}" value="${results.outlet1code}" type="hidden">
                                                    <input name="outletsecond${rowIndex}" id="outletsecond${rowIndex}" value="${results.outlet2code}" type="hidden">
                                                    <input name="mergedwith${rowIndex}" id="mergedwith${rowIndex}" value="${item.mergedwith}" type="hidden">
                                                    <input name="itemrestcode${rowIndex}" id="itemrestcode${rowIndex}" value="${item.restcode}" type="hidden">
                                                    <input class="itemnumber" name="itemnumber${rowIndex}" id="itemnumber${rowIndex}" value="${rowIndex}" type="hidden">
                                                    ${item.Name}
                                                </td>
                                                <td><input readonly name="description${rowIndex}" value="${item.description}" placeholder="Enter" id="description${rowIndex}" class="form-control description inone" type="text"></td>
                                                <td class="text-center">${item.vno}</td>
                                                <td>
                                                    <div class="panelinc">
                                                        <button type="button" style="${item.kot_yn == 'Y' ? 'display: none;' : ''}" class="decrement btn">-</button>
                                                        <input name="quantity${rowIndex}" id="quantity${rowIndex}" class="form-control qtyitem" type="text" value="${item.qty}" ${item.kot_yn == 'Y' ? 'readonly' : ''}>
                                                        <button type="button" style="${item.kot_yn == 'Y' ? 'display: none;' : ''}" class="increment btn">+</button>
                                                    </div>
                                                </td>
                                                <td>
                                                    <input oninput="checkNumMax(this, 7); handleDecimalInput(event);" ${rateedit} class="rateclass form-control sevenem" name="rate${rowIndex}" id="rate${rowIndex}" value="${item.rate}" type="text">
                                                    <input type="hidden" value="${taxedrate != 0 ? taxedrate : item.rate}" name="taxedrate${rowIndex}" id="taxedrate${rowIndex}" readonly>
                                                </td>
                                                <td>
                                                    <input type="text" name="amount${rowIndex}" id="amount${rowIndex}" value="${item.amount}" class="form-control amount" readonly>
                                                    <input type="hidden" name="discedamount${rowIndex}" id="discedamount${rowIndex}" value="${item.amount}" class="form-control discedamount" readonly>
                                                    <input name="itemdiscepercent${rowIndex}" id="itemdiscepercent${rowIndex}" value="0.00" type="hidden">
                                                    <input type="hidden" name="fixamount${rowIndex}" id="fixamount${rowIndex}" value="${item.fixamount != 0 ? item.fixamount.toFixed(2) : item.amount}" class="form-control fixamount" readonly>
                                                    <input type="hidden" value="${item.RateIncTax}" class="RateIncTax" id="RateIncTax${rowIndex}" name="RateIncTax${rowIndex}" readonly>
                                                </td>
                                                <td class="none"><input type="text" name="taxrate_sum${rowIndex}" id="taxrate_sum${rowIndex}" value="${item.taxrate_sum}" class="form-control taxrate_sum" readonly>
                                                <input name="tax_rate${rowIndex}" id="tax_rate${rowIndex}" value="${item.tax_rate}" type="hidden"></td>
                                                <td class="none"><input type="text" name="tax_code${rowIndex}" id="tax_code${rowIndex}" value="${item.tax_code}" class="form-control tax_code" readonly></td>
                                            </tr>`;
                            ajaxRequestsCompleted++;
                            if (ajaxRequestsCompleted === items.length) {
                                $('#itemsdata tbody').append(tbodyData);
                            }
                        });
                        $('#kotdocid').val([...uniquedocid].toString());
                        setTimeout(() => {
                            let outlet1Code = results.outlet1code;
                            let outlet2Code = results.outlet2code;
                            let outlet1El = $(`div[id="${outlet1Code}"]`);
                            let outlet2El = $(`div[id="${outlet2Code}"]`);
                            if (outlet1El.length && outlet2El.length) {
                                let parentRow = outlet1El.closest('.row');
                                if (parentRow.length) {
                                    outlet1El.detach();
                                    outlet2El.detach();
                                    parentRow.append(outlet1El);
                                    parentRow.append(outlet2El);
                                }
                            }
                        }, 100);
                    }
                }
                itemnamexhr.send(`roomno=${currentRoomNo}&dcode=${dcode}&_token={{ csrf_token() }}`);
                setTimeout(() => {
                    calculatetaxes();
                    $('#submitBtn').prop('disabled', false);
                    $('#customerbutton').prop('disabled', false);
                    $('#billprint').prop('disabled', false);
                    $('#discBtn').prop('disabled', false);
                }, 1000);
            });

            $(document).on('click', '#recalculate', function() {
                $('#itemsdata tbody tr').each(function() {
                    const trindex = $(this).find('.itemnumber').val();
                    updateRowAmount(trindex);
                });
                calculatetaxes();
                pushNotify('success', 'Sale Bill Entry', 'Bill Recalculated ✔️', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
            });

            let inputTimer;
            $('#oldroomno').on('input', function() {
                let itemsdata = $('#itemsdata tbody');
                itemsdata.empty();
                clearTimeout(inputTimer);
                inputTimer = setTimeout(() => {
                    let dcode = $('#restcode').val();
                    let dcode2 = $('#restcode2').val();
                    let billno = $(this).val();
                    if (billno == '') {
                        $('#invalidbill').text('');
                    }
                    let vprefix = $(this).find('option:selected').data('vprefix');
                    scrollToBottom();
                    $('#orderno').text('');
                    let itemnamexhr = new XMLHttpRequest();
                    itemnamexhr.open('POST', '/fetchitemoldroomno', true);
                    itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    itemnamexhr.onreadystatechange = function() {
                        if (itemnamexhr.readyState === 4 && itemnamexhr.status === 200) {
                            let results = JSON.parse(itemnamexhr.responseText);
                            if (results === 'false') {
                                $('#submitBtn').text('Submit');
                                $('#salebillform').prop('action', '{{ route('salebillsubmit') }}');
                                $('#invalidbill').text(`Invalid Bill No. ${billno}`);
                                pushNotify('error', 'Sale Bill Entry', `Invalid Bill No. ${billno}`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                $('#roomnumbers').text('');
                                $('#itemsdata tbody').empty();
                                $('#itemsdata tfoot').empty();
                                $('#compgst').text('');
                                $('#compdiv').addClass('none');
                                $('#company').val('');
                                $('#roomno').val('');
                                $('#pax').val('');
                                $('#oldroomyn').val('N');
                                $('#recalculatediv').fadeOut(300, function() {
                                    $(this).addClass('d-none');
                                });

                            } else {
                                let paychargerows = results.paychargerows;
                                console.log(`paychargerows: ${paychargerows}`);
                                let allowdelete = false;
                                if (paychargerows == 0) {
                                    allowdelete = true;
                                } else {
                                    allowdelete = false;
                                }
                                $('#oldroomyn').val('Y');
                                let totalitems = results.items.length;
                                let chkoutrowcount = results.chkoutrowcount;
                                if (chkoutrowcount > 0) {
                                    let paychargerowsd = results.paychargerowsd;
                                    let toutrow = results.toutrow;
                                    let paynames = [];
                                    let payamounts = [];
                                    if (Array.isArray(paychargerowsd)) {
                                        paynames = paychargerowsd.map(row => row.paytype);
                                        payamounts = paychargerowsd.map(row => row.amtcr);
                                    }
                                    let paydetails = paynames.map((name, index) => `${name}: ${payamounts[index]}`).join(', ');
                                    $('#settleddt').text(`${paydetails},`);
                                    if (toutrow) {
                                        $('#settledroomno').text(`Room No: ${toutrow.roomno}`);
                                    }
                                    $('#settlement').prop('disabled', true);
                                    $('#settlement').removeAttr('data-target');
                                    $('#submitBtn').prop('disabled', true);
                                    $('#billprint').prop('disabled', false);
                                    $('#discBtn').prop('disabled', false);
                                } else {
                                    $('#settlement').prop('disabled', false);
                                    $('#settlement').attr('data-target', '#salebillmodal');
                                    $('#submitBtn').prop('disabled', false);
                                    $('#billprint').prop('disabled', false);
                                    $('#discBtn').prop('disabled', false);
                                }
                                $('#customerbutton').prop('disabled', false);
                                totaladditems = totalitems;
                                let concat = results.concat;
                                if (concat != '') {
                                    $('#guestdt').text(concat);
                                }
                                if (results.chkguestprof) {
                                    $('#addeddocid').val(results.chkguestprof.docid);
                                }
                                if (results.guestdt != null && results.guestdt != '') {
                                    $('#addeddocid').val(results.guestdt.docid);
                                }
                                $('#addeditems').text(totalitems);
                                $('#totalitems').val(totalitems);
                                $('#addeditems').css('font-size', 'large');
                                let printnum = totalitems.toString();
                                $('#recalculatediv').removeClass('d-none').hide().fadeIn(300);
                                pushNotify('success', 'Sale Bill Entry', printnum + ' Item Added', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                setTimeout(() => {
                                    $('#addeditems').css('font-size', 'small');
                                }, 1000);
                                if (results.dep == 'Outlet') {
                                    let guestprof = results.chkguestprof;
                                    if (guestprof != null) {
                                        $('#phoneno').val(guestprof.mobile_no);
                                        $('#customername').val(guestprof.name ?? '');
                                        $('#address').val(guestprof.add1 ?? '');
                                        $('#customercity').val(guestprof.city ?? '');
                                        $('#like').val(guestprof.likes ?? '');
                                        $('#dislike').val(guestprof.dislikes ?? '');
                                        $('#birthdate').val(guestprof.dob ?? '');
                                        $('#anniversary').val(guestprof.anniversary ?? '');
                                    } else {
                                        $('#customername').val('');
                                        $('#address').val('');
                                        $('#customercity').val('');
                                        $('#like').val('');
                                        $('#dislike').val('');
                                        $('#birthdate').val('');
                                        $('#anniversary').val('');
                                    }
                                } else {
                                    $('#customername').val('');
                                    $('#address').val('');
                                    $('#customercity').val('');
                                    $('#like').val('');
                                    $('#dislike').val('');
                                    $('#birthdate').val('');
                                    $('#anniversary').val('');
                                }
                                $('#vnoup').val(results.sale1.vno ?? '');
                                $('#kotno').val(results.sale1.kotno ?? '');
                                $('#vdatesale1').val(results.sale1.vdate ?? '');
                                $('#ncurdate2').text(dmy(results.sale1.vdate));
                                $('#curtime').text(results.sale1.vtime);
                                $('#waitersname').val(results.waitername ?? '');
                                $('#sale1docid').val(results.sale1.docid);
                                $('#company').val(results.sale1.party);
                                $('#compgst').text('');
                                $('#compgst').text(results.subgroup?.gstin ?? '');
                                if (results.subgroup?.gstin && "{{ invoiceparameter()->activeyn == 'Y' }}") {
                                    let button = `<button class="btn mt-1 btn-sm btn-success" name="einvoicebtn"
                                                id="einvoicebtn" type="button">eInvoice</button>`;
                                    $('#einvoicebtndiv').html(button);
                                } else {
                                    $('#einvoicebtndiv').html('');
                                }

                                // Handle e-invoice data
                                let einvoicedata = results.einvoice;
                                localStorage.setItem('allowitemadd', true);
                                if (einvoicedata) {
                                    localStorage.setItem('einvoicedata', JSON.stringify(einvoicedata));
                                    let button = `<button class="btn btn-sm mt-1 btn-info" name="viewinvoicebtn" id="viewinvoicebtn" type="button" data-toggle="modal" data-target="#viewinvoicemodal">View Invoice</button>`;
                                    $('#viewinvoicebtndiv').html(button);
                                    let eentrydate = einvoicedata.created_at;
                                    let currentdate = new Date();
                                    let eentrydatedate = new Date(eentrydate);
                                    let timeDiff = Math.abs(currentdate - eentrydatedate);
                                    let hoursDiff = timeDiff / (1000 * 60 * 60);
                                    if (hoursDiff < 24) {
                                        let invcancelbtn = `<button id="einvoicebtncancel" type="button" class="btn btn-sm btn-danger">eInvoice Cancel <i
                                                    class="fa-solid fa-money-bill"></i></button>`;
                                        $('#einvoicecancelbtndiv').append(invcancelbtn);
                                    } else {
                                        $('#einvoicebtncancel').remove();
                                    }
                                    setTimeout(() => {
                                        overlayLock($('.rateclass, .itemrate, .qtyitem, .itemdiscount, .items, .discountfix, .discountsundry, #company'), "Can't Change This");
                                        $('.remove-icon').remove();
                                        $('#discBtn').prop('disabled', true);
                                        $('.removeItem').remove();
                                    }, 1000);
                                    // $('#delete').prop('disabled', true);
                                    // allowdelete = false;
                                    $('#searchname').prop('disabled', true);
                                    $('#searchbar').prop('disabled', true);
                                    localStorage.setItem('allowitemadd', false);
                                } else {
                                    $('#einvoicebtncancel').remove();
                                    // allowdelete = true;
                                    // $('#delete').prop('disabled', false);
                                    $('#viewinvoicebtndiv').html('');
                                    localStorage.removeItem('einvoicedata');
                                    $('#searchname').prop('disabled', false);
                                    $('#searchbar').prop('disabled', false);
                                    $('#discBtn').prop('disabled', false);
                                    localStorage.setItem('allowitemadd', true);
                                    overlayUnlock($('.rateclass, .itemrate, .qtyitem, .itemdescription, .itemdiscount, .items, .discountfix, .discountsundry, #company'));
                                }

                                if (results.deleteallow == true) {
                                    $('#delete').prop('disabled', false);
                                } else {
                                    $('#delete').prop('disabled', true);
                                }

                                let paychargepayrows = results.paychargepayrow;
                                if (paychargepayrows != null) {
                                    if (Object.keys(paychargepayrows).length > 0) {
                                        $('#depositdate').val(paychargepayrows.vdate);
                                    }
                                }
                                let sale1Amt = results.sale1.netamt;
                                let sale2Amt = 0;
                                if (results.sale2) {
                                    $('#vnoup2').val(results.sale2.vno ?? '');
                                    $('#vtype2').val(results.sale2.vtype ?? '');
                                    $('#kotno2').val(results.sale2.kotno ?? '');
                                    $('#vdatesale2').val(results.sale2.vdate ?? '');
                                    $('#ncurdate3').text(dmy(results.sale2.vdate));
                                    $('#curtime2').text(results.sale2.vtime);
                                    $('#waitersname2').val(results.waitername ?? '');
                                    $('#sale1docid2').val(results.sale2.docid);
                                    $('#company2').val(results.sale2.party);
                                    $('#fixrestcode2').val(results.depart2.dcode);
                                    $('#departname2').val(results.depart2.name);
                                    $('#departnature2').val(results.depart2.nature);
                                    $('#outletSecoundcode2').val(results.outlet1code);
                                    sale2Amt = results.sale2.netamt;
                                }
                                let totalAmoutNet = parseFloat(sale1Amt) + parseFloat(sale2Amt);
                                $('#myNetTotalAmount').val(totalAmoutNet.toFixed(2));
                                let optroomno = `<option value="${results.roomno}" selected>${results.roomno}</option>`;
                                let guestdetails = results.guestdt;
                                if (results.sale1.delflag == 'Y') {
                                    $('#submitBtn').prop('disabled', true);
                                    $('#settlement').prop('disabled', true);
                                    $('#delete').prop('disabled', true);
                                    let animationRunning = false;
                                    const animationButton = document.getElementById('animationButton');
                                    const cancelAnimation = document.getElementById('cancelAnimation');

                                    function createCancelText() {
                                        const cancelText = document.createElement('div');
                                        cancelText.className = 'cancel-text';
                                        cancelText.textContent = 'Cancelled';
                                        return cancelText;
                                    }

                                    function animateCancelText() {
                                        const containerWidth = cancelAnimation.offsetWidth;
                                        const containerHeight = cancelAnimation.offsetHeight;
                                        cancelAnimation.innerHTML = '';
                                        for (let i = 0; i < 10; i++) {
                                            const text = createCancelText();
                                            text.style.left = `${Math.random() * containerWidth}px`;
                                            text.style.top = `${Math.random() * containerHeight}px`;
                                            text.dataset.speedX = Math.random() * 0.2 - 0.1;
                                            text.dataset.speedY = Math.random() * 0.2 - 0.1;
                                            cancelAnimation.appendChild(text);
                                        }

                                        function animate() {
                                            if (!animationRunning) return;
                                            const texts = cancelAnimation.getElementsByClassName('cancel-text');
                                            for (let text of texts) {
                                                let left = parseFloat(text.style.left);
                                                let top = parseFloat(text.style.top);
                                                let speedX = parseFloat(text.dataset.speedX);
                                                let speedY = parseFloat(text.dataset.speedY);
                                                left += speedX;
                                                top += speedY;
                                                if (left < 0 || left > containerWidth - text.offsetWidth) {
                                                    speedX *= -1;
                                                    text.dataset.speedX = speedX;
                                                }
                                                if (top < 0 || top > containerHeight - text.offsetHeight) {
                                                    speedY *= -1;
                                                    text.dataset.speedY = speedY;
                                                }
                                                text.style.left = `${left}px`;
                                                text.style.top = `${top}px`;
                                                text.style.transform = `rotate(${-45 + Math.sin(Date.now() / 5000) * 5}deg) scale(${0.95 + Math.sin(Date.now() / 3000) * 0.05})`;
                                            }
                                            requestAnimationFrame(animate);
                                        }
                                        animate();
                                    }
                                    if (animationRunning) {
                                        animationRunning = false;
                                        cancelAnimation.style.display = 'none';
                                    } else {
                                        animationRunning = true;
                                        cancelAnimation.style.display = 'block';
                                        animateCancelText();
                                    }
                                } else {
                                    animationRunning = false;
                                    cancelAnimation.style.display = 'none';
                                }
                                $('#roomno').html(optroomno);
                                $('#compdiv').removeClass('none');
                                $('#invalidbill').text('');
                                $('#submitBtn').text('Update');
                                $('#salebillform').prop('action', '{{ route('salebillupdate') }}');
                                let items = results.items;
                                let label = $('#label').val();
                                $('#roomnumbers').text(label + '. ' + items[0].roomno);
                                $('#orderno').text('Previous Order');
                                $('#roomno').prop('disabled', true);
                                $('#itemsdata tbody').empty();
                                $('#itemsdata tfoot').empty();
                                let sundrytype = results.sundrytype;
                                let suntransdata = results.suntransdata;
                                let outlet2code = results.outlet2code;
                                let tbodyData = '';
                                let tfootData = '';
                                let currentrowcount = $('#itemsdata tbody tr').length;
                                let currentrowcounttfoot = $('#itemsdata tfoot tr').length;
                                let ajaxRequestsCompleted = 0;
                                let groupedByRestcode = {};
                                let totalnetamount = 0.00;
                                suntransdata.forEach((sunitem) => {
                                    if (!groupedByRestcode[sunitem.restcode]) {
                                        groupedByRestcode[sunitem.restcode] = [];
                                    }
                                    groupedByRestcode[sunitem.restcode].push(sunitem);
                                });
                                let tfootHTML = `<tfoot class="bg-gallery salebilltfoot">
                                                <tr><td colspan="6"><div class="row">`;
                                for (const [restcode, items] of Object.entries(groupedByRestcode)) {
                                    tfootHTML += `<div id="${restcode}" class="col-md-6">
                                                    <p class="h4 text-danger">${items[0].restname ?? 'Name Not Found'} (<span>${items[0].vno}</span>)</p>`;
                                    items.forEach((item, index) => {
                                        const disp = item.dispname ? item.dispname.trim().toLowerCase() : '';
                                        const nature = item.nature ? item.nature.trim().toLowerCase() : '';
                                        const bold = item.bold === 'Y' ? 'font-weight-bold' : '';
                                        if (index === 0) {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="${bold}">${item.dispname}</div>
                                                            <div id="${item.restcode}totalamount">${item.amount}</div>
                                                        </div>`;
                                        }
                                        if (nature === 'discount') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                                <input type="text" class="form-control discountfix" value="${item.baseamount}" name="${item.restcode}discountfix" id="${item.restcode}discountfix" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control discountsundry" value="${item.amount}" name="${item.restcode}discountsundry" id="${item.restcode}discountsundry" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'service charge') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                                <input type="text" class="form-control servicechargefix" value="${item.svalue}" name="${item.restcode}servicechargefix" id="${item.restcode}servicechargefix" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control servicechargeamount" value="${item.amount}" name="${item.restcode}servicechargeamount" id="${item.restcode}servicechargeamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'cgst') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem cgstamount" value="${item.amount}" name="${item.restcode}cgstamount" id="${item.restcode}cgstamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'sgst') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem sgstamount" value="${item.amount}" name="${item.restcode}sgstamount" id="${item.restcode}sgstamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'igst') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem igstamount" value="${item.amount}" name="${item.restcode}igstamount" id="${item.restcode}igstamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                         </div>`;
                                        }
                                        if (nature === 'sale tax') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem vatamount" value="${item.amount}" name="${item.restcode}vatamount" id="${item.restcode}vatamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'deduction') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem deductions" value="${item.amount}" name="${item.restcode}deductionamount" id="${item.restcode}deductionamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'addition') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem additions" value="${item.amount}" name="${item.restcode}additionamount" id="${item.restcode}additionamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'redemption') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem redemptions" value="${item.amount}" name="${item.restcode}redemptionamount" id="${item.restcode}redemptionamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'round off') {
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem roundoffamount" value="${item.amount}" name="${item.restcode}roundoffamount" id="${item.restcode}roundoffamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                            </div>
                                                        </div>`;
                                        }
                                        if (nature === 'net amount') {
                                            totalnetamount += parseFloat(item.amount);
                                            tfootHTML += `<div class="d-flex justify-content-between mb-2">
                                                            <div class="d-flex ${bold}">
                                                                <span class="mt-2 mr-1">${item.dispname}</span>
                                                            </div>
                                                            <div>
                                                                <input type="text" class="form-control sevenem netamount" value="${item.amount}" name="${item.restcode}netamount" id="${item.restcode}netamount" ${item.automanual == 'A' ? 'readonly' : ''}>
                                                                <input type="hidden" class="form-control totalamount" name="${item.restcode}totalamountoutlet" id="${item.restcode}totalamountoutlet" value="${results.sale1.total}">
                                                                <input type="hidden" name="${item.restcode}sundrycount" id="${item.restcode}sundrycount" value="${items.length}">
                                                                <input type="hidden" name="${item.restcode}totaltaxable" id="${item.restcode}totaltaxable" value="${results.sale1.taxable}">
                                                                <input type="hidden" name="${item.restcode}totalnontaxable" id="${item.restcode}totalnontaxable" value="${results.sale1.nontaxable}">
                                                            </div>
                                                        </div>`;
                                        }
                                    });
                                    tfootHTML += `</div>`;
                                }
                                if (outlet2code != null) {
                                    tfootHTML += `</div></td></tr>
                                                <tr><td colspan="5">Total Amount:</td><td id="totalamttext" class="text-right h5">${totalnetamount.toFixed(2)}</td></tr>
                                                </tfoot>`;
                                }
                                $('#itemsdata tfoot').remove();
                                $('#itemsdata').append(tfootHTML);
                                const foundItem = items.find(item => item.kotdocid);

                                if (foundItem) {
                                    $('#kotdocid').val(foundItem.kotdocid);
                                    $('#kotdocidfix').val(foundItem.kotdocid);
                                }

                                items.forEach((item, index) => {
                                    $('#waiter').val(item.waiter);
                                    $('#stockdocid').val(item.docid);
                                    $('#vnostock').val(item.vno);
                                    $('#previousroomno').val(item.roomno);
                                    $('#pax').val(item.guaratt);
                                    let rowIndex = currentrowcount + index + 1;
                                    let taxcode = item.TaxStru;
                                    let discapp = item.discapp;
                                    let tax_rate = item.taxper;

                                    let rateedit = 'readonly';

                                    if ("{{ Auth::user()->useroradmin }}" == 'user' && "{{ userdata() ? userdata()->posrateedit : 'N' }}" == 'Y') {
                                        rateedit = '';
                                    } else if (item.kot_yn == 'Y') {
                                        rateedit = (item.RateEdit == 'N') ? 'readonly' : '';
                                    } else {
                                        rateedit = (item.RateEdit == 'Y') ? '' : 'readonly';
                                    }
                                    let mainrate = item.actualrate * item.qtyiss;
                                    const loggedInUser = "{{ auth()->user()->useroradmin }}";
                                    let removeButtonHTML = '';
                                    if (loggedInUser == 'admin') {
                                        removeButtonHTML = `<span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span> `;
                                    }
                                    tbodyData += `<tr data-itemname="${item.Name}" data-itemcode="${item.item}" data-discapp="${item.discapp}" data-groupname="${item.groupname}" data-groupcode="${item.groupcode}">
                                        <td>
                                        ${removeButtonHTML}
                                        <input name="itemcode${rowIndex}" id="itemcode${rowIndex}" value="${item.item}" type="hidden">
                                        <input name="itemname${rowIndex}" class="itemnameclass" id="itemname${rowIndex}" value="${item.Name}" type="hidden">
                                        <input name="discapp${rowIndex}" id="discapp${rowIndex}" value="${item.discapp}" type="hidden">
                                        <input name="SChrgApp${rowIndex}" id="SChrgApp${rowIndex}" value="${item.SChrgApp}" type="hidden">
                                        <input name="kotsno${rowIndex}" id="kotsno${rowIndex}" value="${item.kotsno > 0 ? item.kotsno : item.stocksno}" type="hidden">
                                        <input name="kotsdocid${rowIndex}" id="kotsdocid${rowIndex}" value="${item.kotdocid ?? foundItem?.kotdocid ?? ''}" type="hidden">
                                        <input name="outletfirst${rowIndex}" id="outletfirst${rowIndex}" value="${results.outlet1code}" type="hidden">
                                        <input name="outletsecond${rowIndex}" id="outletsecond${rowIndex}" value="${results.outlet2code}" type="hidden">
                                        <input name="itemrestcode${rowIndex}" id="itemrestcode${rowIndex}" value="${item.restcode}" type="hidden">
                                        <input name="itemnumber${rowIndex}" class="itemnumber" id="itemnumber${rowIndex}" value="${rowIndex}" type="hidden">
                                        ${item.Name}
                                        </td>
                                        <td><input readonly name="description${rowIndex}" value="${item.description}" placeholder="Enter" id="description${rowIndex}" class="form-control description inone" type="text"></td>
                                        <td class="text-center">${item.kotvno ?? ''}</td>
                                        <td>
                                            <div class="panelinc">
                                                <button type="button" style="${item.kot_yn == 'Y' ? 'display: none;' : ''}" class="decrement btn">-</button>
                                                <input name="quantity${rowIndex}" id="quantity${rowIndex}" class="form-control qtyitem" type="text" value="${item.qtyiss}" ${item.kot_yn == 'Y' ? 'readonly' : ''}>
                                                <button type="button" style="${item.kot_yn == 'Y' ? 'display: none;' : ''}" class="increment btn">+</button>
                                            </div>
                                        </td>
                                        <td>
                                            <input oninput="checkNumMax(this, 7); handleDecimalInput(event);" ${rateedit} class="rateclass form-control sevenem" name="rate${rowIndex}" id="rate${rowIndex}" value="${item.actualrate}" type="text">
                                            <input type="hidden" value="${item.rate}" name="taxedrate${rowIndex}" id="taxedrate${rowIndex}" readonly>
                                        </td>
                                            <td>
                                                <input type="text" name="amount${rowIndex}" id="amount${rowIndex}" value="${mainrate.toFixed(2)}" class="form-control amount" readonly>
                                                <input name="mergedwith${rowIndex}" id="mergedwith${rowIndex}" value="${item.mergedwith}" type="hidden">
                                                <input type="hidden" name="discedamount${rowIndex}" id="discedamount${rowIndex}" value="${item.amount}" class="form-control discedamount" readonly>
                                                <input name="itemdiscepercent${rowIndex}" id="itemdiscepercent${rowIndex}" value="0.00" type="hidden">
                                                <input type="hidden" name="fixamount${rowIndex}" id="fixamount${rowIndex}" value="${item.amount}" class="form-control fixamount" readonly>
                                                <input type="hidden" value="${item.RateIncTax}" class="RateIncTax" id="RateIncTax${rowIndex}" name="RateIncTax${rowIndex}" readonly>
                                            </td>
                                                <td class="none"><input type="text" name="taxrate_sum${rowIndex}" id="taxrate_sum${rowIndex}" value="${item.taxper}" class="form-control taxrate_sum" readonly>
                                                    <input name="tax_rate${rowIndex}" id="tax_rate${rowIndex}" value="${item.tax_rate ?? item.taxper}" type="hidden"></td>
                                                <td class="none"><input type="text" name="tax_code${rowIndex}" id="tax_code${rowIndex}" value="${item.tax_code}" class="form-control tax_code" readonly></td>
                                        </tr>`;
                                    ajaxRequestsCompleted++;
                                    if (ajaxRequestsCompleted === items.length) {
                                        $('#itemsdata tbody').append(tbodyData);
                                    }
                                });
                            }
                        }
                    }
                    itemnamexhr.send(`billno=${billno}&vprefix=${vprefix}&dcode=${dcode}&_token={{ csrf_token() }}`);
                    setTimeout(() => {
                        calculatetaxes();
                    }, 1500);
                }, 1000);
            });
            $(document).on('change', '#company', function() {
                let sub_code = $(this).val();
                let compxhr = new XMLHttpRequest();
                compxhr.open('POST', '/fetchcompdetail', true);
                compxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                compxhr.onreadystatechange = function() {
                    if (compxhr.readyState === 4 && compxhr.status === 200) {
                        let results = JSON.parse(compxhr.responseText);
                        $('#compgst').text(results == null ? '' : results);
                    }
                }
                compxhr.send(`sub_code=${sub_code}&_token={{ csrf_token() }}`);
            });
            $(document).on('input', '.discountfix', function() {
                let discvalue = parseFloat($(this).val());
                let discountmaxxhr = new XMLHttpRequest();
                discountmaxxhr.open('GET', '/discountmaxxhr', true);
                discountmaxxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                discountmaxxhr.onreadystatechange = function() {
                    if (discountmaxxhr.status === 200 && discountmaxxhr.readyState === 4) {
                        let response = JSON.parse(discountmaxxhr.responseText);
                        if (typeof response.message !== 'undefined') {} else {
                            let maxvalue = parseFloat(response[0].posdiscountallowupto);
                            if (discvalue > maxvalue) {
                                $('#discountfix').val('0.00');
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error',
                                    text: `You Have Been Allow To Give Maximum ${response[0].posdiscountallowupto} % Discount Only.`,
                                })
                                $('.discountfix').val('0.00');
                                calculatetaxes('percent');
                            }
                        }
                    }
                }
                discountmaxxhr.send();
                setTimeout(() => {
                    let value = $(this).val();
                    if (value === '' || value === 0) {
                        $('#discountfix').val('0.00');
                        $('[id^="#taxvalues"]').val('0.00');
                    } else {
                        calculatetaxes('percent');
                    }
                }, 500);
            });
            let disctime;
            $(document).on('input', '.discountsundry', function() {
                let value = parseFloat($(this).val());
                if (value < 0 || isNaN(value)) {
                    $(this).val('0.00');
                }
                clearTimeout(disctime);
                disctime = setTimeout(() => {
                    let discountamount = parseFloat($(this).val());
                    // Calculate total discountable amount across all outlets
                    let totalDiscountable = 0;
                    for (let i = 1; i <= $('#itemsdata tbody tr').length; i++) {
                        let itemrate = parseFloat($(`#fixamount${i}`).val()) || 0;
                        let discapp = $(`#discapp${i}`).val()?.trim() ?? 'N';
                        if (discapp === 'Y') {
                            totalDiscountable += itemrate;
                        }
                    }
                    // Calculate discount percentage from amount
                    if (totalDiscountable > 0) {
                        let discountPercentage = (discountamount / totalDiscountable) * 100;
                        // Update all discountfix fields
                        $('.discountfix').each(function() {
                            $(this).val(discountPercentage.toFixed(2));
                        });
                    }
                    setTimeout(() => {
                        calculatetaxes('amount');
                    }, 100);
                }, 2000);
            });
            $(document).on('input', '.servicechargefix', function() {
                setTimeout(() => {
                    let value = $(this).val();
                    if (value == '') {
                        $('#servicechargefix').val('0.00');
                    } else {
                        calculatetaxes();
                    }
                }, 500);
            });
            $(document).on('input', '.additions', function() {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                calculatetaxes();
            });
            $(document).on('input', '.deductions', function() {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                calculatetaxes();
            });
            $(document).keypress(function(event) {
                if (event.which === 13) {
                    event.preventDefault();
                    console.log("Enter key pressed!");
                }
            });
            let fixtotlamt;
            var outlet1;
            var outlet2;
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            function calculatetaxes(source = 'percent') {
                let tbodyLength = $('#itemsdata tbody tr').length;
                let outletData = {};
                for (let i = 1; i <= tbodyLength; i++) {
                    let itemrate = parseFloat($(`#fixamount${i}`).val()) || 0;
                    let taxeditemrate = itemrate;
                    let restcode = $(`#itemrestcode${i}`).val()?.trim() ?? '';
                    let trate = parseFloat($(`#tax_rate${i}`).val()) || 0;
                    let taxcode = $(`#tax_code${i}`).val()?.trim() ?? '';
                    let discapp = $(`#discapp${i}`).val()?.trim() ?? 'N';
                    let serviceApplicable = $(`#SChrgApp${i}`).val()?.trim() === 'Y';
                    if (!restcode) continue;
                    if (!outletData[restcode]) {
                        // store outlet code in local storage for later use in bill printing
                        localStorage.setItem('outletCode', restcode);
                        outletData[restcode] = {
                            total: 0,
                            discountableTotal: 0,
                            taxable: 0,
                            nontaxable: 0,
                            vat: 0,
                            cgst: 0,
                            sgst: 0,
                            igst: 0,
                            serviceableAmt: 0,
                            discountfix: parseFloat($(`#${restcode}discountfix`).val()) || 0,
                            servicefix: parseFloat($(`#${restcode}servicechargefix`).val()) || 0,
                            discountsundry: parseFloat($(`#${restcode}discountsundry`).val()) || 0,
                            redemptionamount: parseFloat($(`#${restcode}redemptionamount`).val()) || 0,
                            serviceamt: 0,
                            net: 0,
                            roundoff: 0,
                            fixnetamount: 0,
                            taxRates: []
                        };
                    }
                    if (discapp == 'Y') {
                        outletData[restcode].discountableTotal += itemrate;
                        taxeditemrate -= (itemrate * outletData[restcode].discountfix / 100);
                        taxeditemrate = parseFloat(taxeditemrate.toFixed(2));
                        $(`#discedamount${i}`).val(taxeditemrate);
                    } else {
                        $(`#discedamount${i}`).val(itemrate);
                    }
                    outletData[restcode].total += itemrate;
                    if (trate > 0) {
                        outletData[restcode].taxable += itemrate;
                    } else {
                        outletData[restcode].nontaxable += itemrate;
                    }
                    if (discapp === 'Y' && serviceApplicable) {
                        outletData[restcode].serviceableAmt += taxeditemrate;
                    } else if (serviceApplicable) {
                        outletData[restcode].serviceableAmt += taxeditemrate;
                    }
                    outletData[restcode].taxRates.push({
                        rate: trate,
                        code: taxcode,
                        amount: taxeditemrate
                    });
                }
                for (const outlet in outletData) {
                    const data = outletData[outlet];
                    let serviceamt = 0;
                    if (data.serviceableAmt > 0 && data.servicefix > 0) {
                        serviceamt = (data.serviceableAmt * data.servicefix) / 100;
                        data.serviceamt = serviceamt;
                        console.log(`Service charge: ${data.serviceableAmt} * ${data.servicefix}% = ${serviceamt}`);
                    } else {
                        serviceamt = 0;
                        data.serviceamt = 0;
                        console.log('No service charge applicable');
                    }
                    if (source === 'percent') {
                        data.discountsundry = (data.discountableTotal * data.discountfix) / 100;
                    } else if (source === 'amount') {
                        if (data.discountableTotal > 0) {
                            data.discountfix = (data.discountsundry / data.discountableTotal) * 100;
                            $(`#${outlet}discountfix`).val(parseFloat(data.discountfix).toFixed(2));
                        }
                    }
                    let taxableBase = data.taxable - ((data.discountableTotal * data.discountfix) / 100) + serviceamt;
                    data.vat = 0;
                    data.cgst = 0;
                    data.sgst = 0;
                    data.igst = 0;

                    let groupedTaxRates = {};
                    data.taxRates.forEach((item, idx) => {
                        if (!groupedTaxRates[item.code]) {
                            groupedTaxRates[item.code] = {
                                rate: item.rate,
                                amount: 0
                            };
                        }
                        groupedTaxRates[item.code].amount += parseFloat(item.amount);
                    });

                    for (const code in groupedTaxRates) {
                        const taxInfo = groupedTaxRates[code];
                        if (taxInfo.rate > 0) {
                            let taxable = taxInfo.amount + serviceamt;
                            let taxvalue = parseFloat(calcper(taxable, taxInfo.rate)) || 0;
                            console.log(`  Code ${code}: taxable=${taxInfo.amount} + ${serviceamt} = ${taxable}, rate=${taxInfo.rate}%, tax=${taxvalue}`);
                            if (code.endsWith('VAAT')) {
                                data.vat += taxvalue;
                            } else if (code.includes('IGSS') || code.startsWith('IGST')) {
                                data.igst += taxvalue;
                                console.log(`  IGST applied: ${taxvalue}`);
                            } else {
                                let [cgstCode, sgstCode] = code.split(',').map(v => v.trim());
                                if (cgstCode?.startsWith('CGSS')) {
                                    data.cgst += taxvalue / 2;
                                }
                                if (sgstCode?.startsWith('SGSS')) {
                                    data.sgst += taxvalue / 2;
                                }
                            }
                        }
                    }
                    let additionamount = parseFloat($(`#${outlet}additionamount`).val()) || 0;
                    let deductionamount = parseFloat($(`#${outlet}deductionamount`).val()) || 0;
                    let redemptionamount = parseFloat($(`#${outlet}redemptionamount`).val()) || 0;
                    let afterDiscount = data.total - data.discountsundry;
                    let fixnetamount = afterDiscount +
                        parseFloat(data.cgst.toFixed(2)) +
                        parseFloat(data.sgst.toFixed(2)) +
                        parseFloat(data.igst.toFixed(2)) +
                        parseFloat(data.vat.toFixed(2)) +
                        parseFloat(data.serviceamt.toFixed(2)) +
                        additionamount -
                        deductionamount -
                        redemptionamount;
                    data.fixnetamount = parseFloat(fixnetamount.toFixed(2));
                }
                let amounts = [];
                for (const outlet in outletData) {
                    let fixnetamount = outletData[outlet].fixnetamount;
                    if (isNaN(fixnetamount) || fixnetamount === null || fixnetamount === undefined) {
                        fixnetamount = 0;
                    }
                    amounts.push({
                        outlet: outlet,
                        amount: parseFloat(fixnetamount).toFixed(2)
                    });
                }
                if (amounts.length === 0) {
                    console.error("No valid amounts to process");
                    $(`#${localStorage.getItem('outletCode')}discountfix`).trigger('input');
                    return;
                }
                let totalnetamt = 0.00;

                amounts.forEach(item => {
                    const result = calculateRoundOff(item.amount, roundoffMode);

                    let data = outletData[item.outlet];
                    if (!data) return;

                    data.roundoff = parseFloat(result.roundoff) || 0;
                    data.net = parseFloat(result.billamt) || 0;

                    totalnetamt += data.net;

                    $(`#${item.outlet}vatamount`).val(parseFloat(data.vat).toFixed(2));
                    $(`#${item.outlet}cgstamount`).val(parseFloat(data.cgst).toFixed(2));
                    $(`#${item.outlet}sgstamount`).val(parseFloat(data.sgst).toFixed(2));
                    $(`#${item.outlet}igstamount`).val(parseFloat(data.igst).toFixed(2));
                    $(`#${item.outlet}servicechargeamount`).val(parseFloat(data.serviceamt).toFixed(2));
                    $(`#${item.outlet}discountsundry`).val(parseFloat(data.discountsundry).toFixed(2));
                    $(`#${item.outlet}totalamount`).text(parseFloat(data.total).toFixed(2));
                    $(`#${item.outlet}totalamountoutlet`).val(parseFloat(data.total).toFixed(2));
                    $(`#${item.outlet}netamount`).val(parseFloat(data.net).toFixed(2));
                    $(`#${item.outlet}roundoffamount`).val(parseFloat(data.roundoff).toFixed(2));
                    $(`#${item.outlet}totaltaxable`).val(parseFloat(data.taxable).toFixed(2));
                    $(`#${item.outlet}totalnontaxable`).val(parseFloat(data.nontaxable).toFixed(2));
                });

                $('#totalitemsum').val(parseFloat(totalnetamt).toFixed(2));
                $('#totalamttext').text(`Rs. ${parseFloat(totalnetamt).toFixed(2)}`);
            }

            const roundoffMode = "{{ posparameter()->roundofftype }}";

            function calculateRoundOff(amount, mode = 'Standard') {
                amount = parseFloat(amount) || 0;

                const paise = amount - Math.floor(amount);

                let rounded;

                if (mode === 'Standard') {
                    rounded = paise < 0.50 ? Math.floor(amount) : Math.ceil(amount);
                } else if (mode === 'Upper') {
                    rounded = Math.ceil(amount);
                } else {
                    rounded = Math.round(amount);
                }

                return {
                    billamt: rounded,
                    roundoff: parseFloat((rounded - amount).toFixed(2))
                };
            }

            function updateRowAmount(trindex) {
                const qty = parseFloat($(`#quantity${trindex}`).val()) || 0;
                const rate = parseFloat($(`#rate${trindex}`).val()) || 0;
                const rateinctax = $(`#RateIncTax${trindex}`).val();
                const taxRate = parseFloat($(`#tax_rate${trindex}`).val()) || 0;
                const grossAmount = qty * rate;

                let taxedrate = rate;

                let taxableAmount = grossAmount;

                if (rateinctax === 'Y') {
                    taxableAmount = (grossAmount * 100) / (100 + taxRate);
                    taxedrate = (rate * 100) / (100 + taxRate);
                }

                $(`#taxedrate${trindex}`).val(taxedrate.toFixed(2));
                $(`#amount${trindex}`).val(grossAmount.toFixed(2));
                $(`#fixamount${trindex}`).val(taxableAmount.toFixed(2));
            }

            $('#itemsdata tbody').on('click', '.removeItem', function() {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
                if (selectedItemRow && selectedItemRow.is(row)) {
                    selectedItemRow = null;
                }
                row.remove();
                totaladditems--;
                $('#addeditems').text(totaladditems);
                $('#totalitems').val(totaladditems);
                pushNotify('success', 'Sale Bill Entry', totaladditems + ' Item Left', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                $('#addeditems').css('font-size', 'large');
                if (totaladditems === 0) {
                    $('#discBtn').prop('disabled', true);
                    currentDiscount = {
                        type: '',
                        percent: 0,
                        groups: [],
                        items: []
                    };
                    updateDiscountInfo();
                }
                setTimeout(() => {
                    $('#addeditems').css('font-size', 'small');
                }, 1000);
                $('#itemsdata tbody tr').each(function(index) {
                    let adjustedIndex = index + 1;
                    $(this).find('select, input').each(function() {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                    $(this).find('.itemnumber').val(adjustedIndex);
                    setTimeout(() => {
                        calculatetaxes();
                    }, 500);
                });
                updateFreeButtonState();
            });
            $('#delete').on('click', function() {
                let docid = $("#sale1docid").val();
                if (docid == '' || typeof docid == 'undefined') {
                    pushNotify('error', 'Sale Bill Entry', 'Unknown Vno', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                Swal.fire({
                    icon: 'info',
                    title: 'Are you sure?',
                    text: 'Enter the reason for deleting:',
                    input: 'text',
                    inputPlaceholder: 'Reason',
                    showCancelButton: true,
                    confirmButtonText: 'Delete',
                    cancelButtonText: 'Cancel',
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        var reason = result.value;
                        if (reason) {
                            let updatedelflagxhr = new XMLHttpRequest();
                            updatedelflagxhr.open('post', 'updatedelflagxhr', true);
                            updatedelflagxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                            updatedelflagxhr.onreadystatechange = function() {
                                if (updatedelflagxhr.status === 200 && updatedelflagxhr.readyState === 4) {
                                    let results = JSON.parse(updatedelflagxhr.responseText);
                                    pushNotify('success', 'Sale Bill Entry', results, 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                                    setTimeout(() => {
                                        location.reload();
                                    }, 2000);
                                }
                            }
                            updatedelflagxhr.send(`docid=${docid}&reason=${reason}&_token={{ csrf_token() }}`);
                        }
                    }
                });
            });
            $(document).on('click', '.increment', function() {
                let counter = $(this).siblings('.qtyitem');
                let value = parseFloat(counter.val()) || 0;
                let valueincr = value + 1;
                // counter.val(valueincr);
                let trindex = $(this).closest('tr').index() + 1;
                updateRowAmount(trindex);
                setTimeout(() => {
                    calculatetaxes();
                }, 500);
            });
            $(document).on('click', '.decrement', function() {
                let counter = $(this).siblings('.qtyitem');
                let value = parseFloat(counter.val()) || 0;
                if (value > 1) {
                    let valuedcr = value - 1;
                    counter.val(valuedcr);
                    let trindex = $(this).closest('tr').index() + 1;
                    updateRowAmount(trindex);
                    setTimeout(() => {
                        calculatetaxes();
                    }, 500);
                }
            });
            $(document).on('input', '.qtyitem', function() {
                let trindex = $(this).closest('tr').index() + 1;
                updateRowAmount(trindex);
                setTimeout(() => {
                    calculatetaxes();
                }, 500);
            });
            $(document).on('input', '.rateclass', function() {
                const $row = $(this).closest('tr');
                const trindex = $row.index() + 1;
                updateRowAmount(trindex);
                requestAnimationFrame(() => {
                    calculatetaxes();
                });
            });
            setTimeout(function() {
                $('#favourite').trigger('click');
                $('#vtype').trigger('input')
            }, 100);
            $('.modalclosebtn').click(function() {
                $('#phoneno').val('');
                $('#customername').val('');
                $('#address').val('');
                $('#city').val('');
                $('#like').val('');
                $('#dislike').val('');
                $('#birthdate').val('');
                $('#anniversary').val('');
            });

            $(document).on('click', '#customerdetailsave', function() {

                let mobileno = $('#phoneno').val().trim();
                let customername = $('#customername').val().trim();

                if (mobileno.length < 10) {
                    $('#errorphone').remove();
                    let errspan = `<span id="errorphone" class="position-absolute text-danger">Phone Length Should Be Equal To 10</span>`;
                    $('#phonediv').append(errspan);
                    return;
                }

                if (!/^[6-9]\d{9}$/.test(mobileno)) {
                    $('#errorphone').remove();
                    let errspan = `<span id="errorphone" class="position-absolute text-danger">Enter a valid 10 digit mobile number</span>`;
                    $('#phonediv').append(errspan);
                    return;
                }

                if (/(\d)\1{4,}/.test(mobileno)) {
                    $('#errorphone').remove();
                    let errspan = `<span id="errorphone" class="position-absolute text-danger">Invalid mobile number</span>`;
                    $('#phonediv').append(errspan);
                    return;
                }

                if (/^(\d\d)\1{4,}$/.test(mobileno)) {
                    $('#errorphone').remove();
                    let errspan = `<span id="errorphone" class="position-absolute text-danger">Invalid mobile number</span>`;
                    $('#phonediv').append(errspan);
                    return;
                }

                if (customername === '') {
                    $('#customerModal').modal('show');
                    $('#customername').focus();
                    pushNotify('error', 'Salebill Entry', 'Please Enter Customer Name!');
                    return false;
                }

                $('#errorphone').remove();

                $.ajax({
                    url: "{{ route('checkcustomerreward') }}",
                    type: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        mobileno: mobileno,
                        restcode: $('#restcode').val()
                    },
                    success: function(response) {

                        $('#customerModal').modal('hide');

                        if (!response.success) {
                            return;
                        }

                        let pointValue = 0;

                        if (parseFloat(response.availablepoint) > 0) {
                            pointValue = parseFloat(response.availablevalue) / parseFloat(response.availablepoint);
                        }

                        $('#availablepoint').text(response.availablepoint);
                        $('#availablevalue').text(parseFloat(response.availablevalue).toFixed(2));

                        $('#maxavailablepoint').val(response.availablepoint);
                        $('#maxavailablevalue').val(response.availablevalue);
                        $('#rewardpointvalue').val(pointValue);

                        $('#redeemamount').val('');
                        $('#redeempoint').val('0.00');
                        $('#balanceafter').val(parseFloat(response.availablevalue).toFixed(2));
                        $('#redeemerror').html('');

                        if (
                            parseFloat(response.availablepoint) <= 0 ||
                            parseFloat(response.availablevalue) <= 0
                        ) {

                            $('#redeemamount').prop('disabled', true);
                            $('#applyRewardBtn').prop('disabled', true);

                        } else {

                            $('#redeemamount').prop('disabled', false);
                            $('#applyRewardBtn').prop('disabled', false);

                        }

                        rewardAutoOpened = true;
                        setRewardFabVisible(true, true);
                        $('#rewardModal').modal('show');
                    },
                    error: function(xhr) {
                        console.log(xhr.responseText);
                    }
                });

            });

            $(document).on('input', '#redeemamount', function() {

                let redeemAmount = parseFloat($(this).val()) || 0;

                let availableValue = parseFloat($('#maxavailablevalue').val()) || 0;

                let availablePoint = parseFloat($('#maxavailablepoint').val()) || 0;

                $('#redeemerror').html('');

                if (redeemAmount > availableValue) {

                    $('#redeemerror').html('Cannot redeem more than available balance');

                    $('#redeempoint').val('0.00');
                    $('#balanceafter').val(availableValue.toFixed(2));

                    $('#applyRewardBtn').prop('disabled', true);

                    return;
                }

                let pointValue = 0;

                if (availablePoint > 0) {
                    pointValue = availableValue / availablePoint;
                }

                let pointsUsed = 0;

                if (pointValue > 0) {
                    pointsUsed = redeemAmount / pointValue;
                }

                let balanceAfter = availableValue - redeemAmount;

                $('#redeempoint').val(pointsUsed.toFixed(2));
                $('#balanceafter').val(balanceAfter.toFixed(2));

                $('#applyRewardBtn').prop('disabled', false);

            });

            $(document).on('click', '#applyRewardBtn', function() {

                let redeemAmount = parseFloat($('#redeemamount').val()) || 0;
                let redeemPoint = parseFloat($('#redeempoint').val()) || 0;

                if (redeemAmount <= 0) {
                    return;
                }

                let restcode = $('#restcode').val();

                $('#' + restcode + 'redemptionamount').val(redeemAmount.toFixed(2));

                $('#rewardvalueused').val(redeemAmount.toFixed(2));
                $('#rewardpointused').val(redeemPoint.toFixed(2));

                $('#rewardModal').modal('hide');

                $('#recalculate').trigger('click');

            });

            let timerphone;
            $(document).on('input', '#phoneno', function() {
                clearTimeout(timerphone);
                var phoneno = $(this);
                if (phoneno.val().length == 10) {
                    $('#errorphone').remove();
                    let phonefindxhr = new XMLHttpRequest();
                    phonefindxhr.open('post', '/phonefindxhr', true);
                    phonefindxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    phonefindxhr.onreadystatechange = function() {
                        if (phonefindxhr.readyState === 4) {
                            if (phonefindxhr.status === 200) {
                                let result = JSON.parse(phonefindxhr.responseText);
                                if (result != 'Not Found') {
                                    let data = result.data;
                                    if (data.length > 0) {
                                        let customername;
                                        let address;
                                        let city;
                                        let like;
                                        let dislike;
                                        let birthdate;
                                        let anniversary;
                                        var row;
                                        let previousVisitTime = '';
                                        data.forEach((tdata, index) => {
                                            let rowClass = '';
                                            customername = tdata.customername;
                                            address = tdata.add1;
                                            city = tdata.city;
                                            likes = tdata.likes;
                                            dislike = tdata.dislikes;
                                            birthdate = tdata.dob;
                                            anniversary = tdata.anniversary;
                                            if (tdata.visittime !== previousVisitTime) {
                                                rowClass = (index % 3 === 0) ? 'table-success' :
                                                    (index % 3 === 1) ? 'table-info' : 'table-danger';
                                                previousVisitTime = tdata.visittime;
                                            }
                                            row += `<tr class="${rowClass}">
                                                                                                                                <td>${tdata.visittime ?? ''}</td>
                                                                                                                                <td>${tdata.itemname ?? ''}</td>
                                                                                                                                <td>${tdata.qtyiss ?? ''}</td>
                                                                                                                                <td>${tdata.rate ?? ''}</td>
                                                                                                                                <td>${tdata.amount ?? ''}</td>
                                                                                                                            </tr>`;
                                        });
                                        if (birthdate != null) {
                                            let chkbirthday = GetBirthday(birthdate, customername, 'Birthday');
                                            if (typeof chkbirthday != 'undefined') {
                                                $('#birthdaytext').text(chkbirthday);
                                                $('.birthday-message').fadeIn();
                                                startBalloons();
                                                for (let i = 0; i < 50; i++) {
                                                    let sparkle = $('<div class="sparkle"></div>');
                                                    sparkle.css({
                                                        top: Math.random() * 100 + '%',
                                                        left: Math.random() * 100 + '%',
                                                        animationDelay: Math.random() * 1.5 + 's'
                                                    });
                                                    $('.sparkles').append(sparkle);
                                                }
                                                $(document).one('click', '#clsbtnoc', function() {
                                                    $('.birthday-message').fadeOut(function() {
                                                        $('#hideBtn').fadeOut();
                                                        $('.sparkles').empty();
                                                        stopBalloons();
                                                        if (anniversary != null) {
                                                            let chkaniversary = GetBirthday(anniversary, customername, 'Aniversary');
                                                            if (chkaniversary != '') {
                                                                $('#birthdaytext').text(chkaniversary);
                                                                $('.birthday-message').fadeIn();
                                                                startBalloons();
                                                                for (let i = 0; i < 50; i++) {
                                                                    let sparkle = $('<div class="sparkle"></div>');
                                                                    sparkle.css({
                                                                        top: Math.random() * 100 + '%',
                                                                        left: Math.random() * 100 + '%',
                                                                        animationDelay: Math.random() * 1.5 + 's'
                                                                    });
                                                                    $('.sparkles').append(sparkle);
                                                                }
                                                                $(document).one('click', '#clsbtnoc', function() {
                                                                    $('.birthday-message').fadeOut();
                                                                    $('#hideBtn').fadeOut();
                                                                    $('.sparkles').empty();
                                                                    stopBalloons();
                                                                });
                                                            }
                                                        }
                                                    });
                                                });
                                            }
                                        } else if (anniversary != null) {
                                            console.log('anniversarytrue');
                                            let chkaniversary = GetBirthday(anniversary, customername, 'Aniversary');
                                            if (chkaniversary != '') {
                                                $('#birthdaytext').text(chkaniversary);
                                                $('.birthday-message').fadeIn();
                                                startBalloons();
                                                for (let i = 0; i < 50; i++) {
                                                    let sparkle = $('<div class="sparkle"></div>');
                                                    sparkle.css({
                                                        top: Math.random() * 100 + '%',
                                                        left: Math.random() * 100 + '%',
                                                        animationDelay: Math.random() * 1.5 + 's'
                                                    });
                                                    $('.sparkles').append(sparkle);
                                                }
                                                $(document).one('click', '#clsbtnoc', function() {
                                                    $('.birthday-message').fadeOut();
                                                    $('#hideBtn').fadeOut();
                                                    $('.sparkles').empty();
                                                    stopBalloons();
                                                });
                                            }
                                        }
                                        $('#customername').val(customername);
                                        $('#address').val(address);
                                        $('#customercity').val(city);
                                        $('#like').val(likes);
                                        $('#dislike').val(dislike);
                                        $('#birthdate').val(ymd(birthdate));
                                        $('#anniversary').val(anniversary != null ? ymd(anniversary) : '');
                                        pushNotify('success', 'Sale Bill Entry', `Previous Details Found For Phone ${phoneno.val()}`, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                                        $('#guesttable table tbody').append(row);
                                        $('#guesttable').css('display', 'block');
                                        $('#guesttable').addClass('animation box animate__bounceIn');
                                    }
                                } else {
                                    $('#customername').val('');
                                    $('#address').val('');
                                    $('#customercity').val('');
                                    $('#like').val('');
                                    $('#dislike').val('');
                                    $('#birthdate').val('');
                                    $('#anniversary').val('');
                                }
                            }
                        }
                    }
                    timerphone = setTimeout(() => {
                        phonefindxhr.send(`phoneno=${phoneno.val()}&_token={{ csrf_token() }}`);
                    }, 500);
                } else {
                    $('#customername').val('');
                    $('#address').val('');
                    $('#customercity').val('');
                    $('#like').val('');
                    $('#dislike').val('');
                    $('#birthdate').val('');
                    $('#anniversary').val('');
                }
            });
            $(document).on('click', '#closeguestdiv', function() {
                $('#guesttable table tbody').empty();
                $('#guesttable').css('display', 'none');
                $('#guesttable').removeClass('animation box animate__bounceIn');
            });
            $(document).on('click', '#discountInfo', function() {
                $(`#${currentDiscount.type.toLowerCase()}DiscountOption`).click();
            });

            function resetAllDiscounts() {
                let restcode = $('#fixrestcode').val();
                let restcode2 = $('#fixrestcode2').val();
                if (restcode && restcode !== '' && $(`#${restcode}discountfix`).length) {
                    $(`#${restcode}discountfix`).val('0.00');
                }
                if (restcode2 && restcode2 !== '' && restcode2 !== 'undefined' && $(`#${restcode2}discountfix`).length) {
                    $(`#${restcode2}discountfix`).val('0.00');
                }
                $('#itemsdata tbody tr').each(function(i) {
                    const idx = i + 1;
                    const originalRate = parseFloat($(`#originalrate${idx}`).val());
                    if (originalRate && !isNaN(originalRate)) {
                        const qty = parseFloat($(`#quantity${idx}`).val()) || 0;
                        const rateinctax = $(`#RateIncTax${idx}`).val();
                        const taxRate = parseFloat($(`#tax_rate${idx}`).val()) || 0;
                        $(`#rate${idx}`).val(originalRate.toFixed(2));
                        let amt = originalRate * qty;
                        if (rateinctax === 'Y') {
                            amt = (amt * 100) / (100 + taxRate);
                        }
                        $(`#amount${idx}, #fixamount${idx}`).val(amt.toFixed(2));
                    }
                    let row = $(this);
                    let itemNameCell = row.find('td:first');
                    itemNameCell.find('.discount-badge').remove();
                });
                calculatetaxes();
            }

            function showDiscountDialog(type, callback) {
                if (currentDiscount.type && currentDiscount.type !== type) {
                    Swal.fire({
                        title: 'Discount Already Applied',
                        text: `${currentDiscount.type} discount (${currentDiscount.percent}%) is already applied. Remove it and apply ${type} discount?`,
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonText: 'Yes, replace it',
                        cancelButtonText: 'Cancel',
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#6c757d'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            resetAllDiscounts();
                            currentDiscount = {
                                type: '',
                                percent: 0,
                                groups: [],
                                items: []
                            };
                            updateDiscountInfo();
                            showDiscountInputDialog(type, callback);
                        }
                    });
                } else {
                    showDiscountInputDialog(type, callback);
                }
            }

            function showDiscountInputDialog(type, callback) {
                Swal.fire({
                    title: `${type} Discount`,
                    input: 'number',
                    inputValue: currentDiscount.type === type ? currentDiscount.percent : '',
                    inputLabel: `Enter discount percentage (%) ${type === 'Item' ? 'for applicable items' : ''}`,
                    inputPlaceholder: 'e.g., 10',
                    inputAttributes: {
                        min: 0,
                        max: 100,
                        step: 0.01
                    },
                    showCancelButton: true,
                    confirmButtonText: 'Apply',
                    inputValidator: (v) => (!v || parseFloat(v) < 0 || parseFloat(v) > 100) ? 'Enter 0-100!' : null
                }).then((result) => {
                    if (result.isConfirmed) {
                        callback(parseFloat(result.value));
                        pushNotify('success', 'Discount Applied', `${type} discount of ${result.value}% applied!`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    }
                });
            }
            $(document).on('click', '#billDiscountOption', (e) => {
                e.preventDefault();
                showDiscountDialog('Bill', applyBillDiscount);
            });
            $(document).on('click', '#itemDiscountOption', (e) => {
                e.preventDefault();
                if (currentDiscount.type && currentDiscount.type !== 'Item') {
                    Swal.fire({
                        title: 'Discount Already Applied',
                        text: `${currentDiscount.type} discount (${currentDiscount.percent}%) is already applied. Remove it and apply Item discount?`,
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonText: 'Yes, replace it',
                        cancelButtonText: 'Cancel',
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#6c757d'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            resetAllDiscounts();
                            currentDiscount = {
                                type: '',
                                percent: 0,
                                groups: [],
                                items: []
                            };
                            updateDiscountInfo();
                            populateItemCheckboxes();
                            $('#itemDiscountInput').val('');
                            $('#itemDiscountModal').modal('show');
                        }
                    });
                } else {
                    populateItemCheckboxes();
                    $('#itemDiscountInput').val(currentDiscount.type === 'Item' ? currentDiscount.percent : '');
                    $('#itemDiscountModal').modal('show');
                }
            });
            $(document).on('click', '#groupDiscountOption', function(e) {
                e.preventDefault();
                if (currentDiscount.type && currentDiscount.type !== 'Group') {
                    Swal.fire({
                        title: 'Discount Already Applied',
                        text: `${currentDiscount.type} discount (${currentDiscount.percent}%) is already applied. Remove it and apply Group discount?`,
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonText: 'Yes, replace it',
                        cancelButtonText: 'Cancel',
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#6c757d'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            resetAllDiscounts();
                            currentDiscount = {
                                type: '',
                                percent: 0,
                                groups: [],
                                items: []
                            };
                            updateDiscountInfo();
                            populateGroupCheckboxes();
                            $('#groupDiscountInput').val('');
                            $('#groupDiscountModal').modal('show');
                        }
                    });
                } else {
                    populateGroupCheckboxes();
                    $('#groupDiscountInput').val(currentDiscount.type === 'Group' ? currentDiscount.percent : '');
                    $('#groupDiscountModal').modal('show');
                }
            });

            function populateItemCheckboxes() {
                let html = '';
                let itemCount = 0;
                $('#itemsdata tbody tr').each(function(index) {
                    const discApp = $(this).data('discapp');
                    if (discApp === 'Y') {
                        const itemname = $(this).data('itemname');
                        const itemcode = $(this).data('itemcode');
                        const rowIndex = index + 1;
                        html += `
                                <div class="form-check">
                                    <input class="form-check-input item-checkbox" type="checkbox" value="${rowIndex}" id="itemCheckbox${rowIndex}" data-itemcode="${itemcode}">
                                    <label class="form-check-label" for="itemCheckbox${rowIndex}">${itemname}</label>
                                </div>`;
                        itemCount++;
                    }
                });
                if (itemCount === 0) {
                    html = '<p class="text-muted text-center">No discount applicable items found</p>';
                }
                $('#itemCheckboxList').html(html);
            }

            function populateGroupCheckboxes() {
                const groups = new Map();
                $('#itemsdata tbody tr').each(function() {
                    const discApp = $(this).data('discapp');
                    if (discApp === 'Y') {
                        const name = $(this).data('groupname');
                        const code = $(this).data('groupcode');
                        if (code && name && !groups.has(code)) {
                            groups.set(code, name);
                        }
                    }
                });
                let html = '';
                if (groups.size === 0) {
                    html = '<p class="text-muted text-center">No discount applicable groups found</p>';
                } else {
                    groups.forEach((name, code) => {
                        html += `
                                                                <div class="form-check">
                                                                    <input class="form-check-input group-checkbox" type="checkbox" value="${code}" id="groupCheckbox${code}">
                                                                    <label class="form-check-label" for="groupCheckbox${code}">${name}</label>
                                                                </div>
                                                            `;
                    });
                }
                $('#groupCheckboxList').html(html);
            }
            $(document).on('click', '#applyItemDiscount', function() {
                let percent = parseFloat($('#itemDiscountInput').val());
                if (!percent || percent < 0 || percent > 100) {
                    pushNotify('error', 'Invalid Input', 'Enter 0-100!', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                let selectedItems = [];
                $('.item-checkbox:checked').each(function() {
                    selectedItems.push(parseInt($(this).val()));
                });
                if (!selectedItems.length) {
                    pushNotify('error', 'No Selection', 'Select at least one item!', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                applyItemDiscount(percent, selectedItems);
                $('#itemDiscountModal').modal('hide');
                pushNotify('success', 'Discount Applied', `Item discount ${percent}% applied to ${selectedItems.length} item(s)!`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
            });
            $(document).on('click', '#applyGroupDiscount', function() {
                let percent = parseFloat($('#groupDiscountInput').val());
                if (!percent || percent < 0 || percent > 100) {
                    pushNotify('error', 'Invalid Input', 'Enter 0-100!', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                let groups = [];
                $('.group-checkbox:checked').each(function() {
                    groups.push($(this).val());
                });
                if (!groups.length) {
                    pushNotify('error', 'No Selection', 'Select at least one group!', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                applyGroupDiscount(percent, groups);
                $('#groupDiscountModal').modal('hide');
                pushNotify('success', 'Discount Applied', `Group discount ${percent}% applied to ${groups.length} group(s)!`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
            });

            function applyBillDiscount(percent) {
                let restcode = $('#fixrestcode').val();
                let restcode2 = $('#fixrestcode2').val();
                currentDiscount = {
                    type: 'Bill',
                    percent,
                    groups: [],
                    items: []
                };
                $('#discount_type').val('Bill');
                $('#discount_percentage').val(percent);
                $('#discount_groups').val('');
                if (restcode && restcode !== '' && $(`#${restcode}discountfix`).length) {
                    $(`#${restcode}discountfix`).val(percent.toFixed(2));
                }
                if (restcode2 && restcode2 !== '' && restcode2 !== 'undefined' && $(`#${restcode2}discountfix`).length) {
                    $(`#${restcode2}discountfix`).val(percent.toFixed(2));
                }
                updateDiscountInfo();
                setTimeout(() => calculatetaxes(), 300);
            }

            function applyItemDiscount(percent, selectedItems) {
                let updated = 0;
                let restcode = $('#fixrestcode').val();
                let restcode2 = $('#fixrestcode2').val();
                if (restcode && restcode !== '' && $(`#${restcode}discountfix`).length) {
                    $(`#${restcode}discountfix`).val('0.00');
                }
                if (restcode2 && restcode2 !== '' && restcode2 !== 'undefined' && $(`#${restcode2}discountfix`).length) {
                    $(`#${restcode2}discountfix`).val('0.00');
                }
                $('#itemsdata tbody tr').each(function(i) {
                    const idx = i + 1;
                    let row = $(this);
                    let itemNameCell = row.find('td:first');
                    itemNameCell.find('.discount-badge.group-discount').remove();
                });
                currentDiscount = {
                    type: 'Item',
                    percent,
                    groups: [],
                    items: selectedItems
                };
                $('#discount_type').val('Item');
                $('#discount_percentage').val(percent);
                $('#discount_groups').val('');
                selectedItems.forEach(function(idx) {
                    const discApp = $(`#discapp${idx}`).val();
                    if (discApp !== 'Y') return;
                    let rate = parseFloat($(`#rate${idx}`).val()) || 0;
                    let originalRate = parseFloat($(`#originalrate${idx}`).val());
                    if (!originalRate || isNaN(originalRate)) {
                        $(`#originalrate${idx}`).val(rate);
                        originalRate = rate;
                    }
                    let qty = parseFloat($(`#quantity${idx}`).val()) || 0;
                    let rateinctax = $(`#RateIncTax${idx}`).val();
                    let taxRate = parseFloat($(`#tax_rate${idx}`).val()) || 0;
                    let discRate = originalRate * (1 - percent / 100);
                    $(`#rate${idx}`).val(discRate.toFixed(2));
                    let amt = discRate * qty;
                    if (rateinctax === 'Y') {
                        amt = (amt * 100) / (100 + taxRate);
                    }
                    $(`#amount${idx}, #fixamount${idx}`).val(amt.toFixed(2));
                    let row = $(`#itemsdata tbody tr:eq(${idx - 1})`);
                    let itemNameCell = row.find('td:first');
                    itemNameCell.find('.discount-badge').remove();
                    let itemName = $(`#itemname${idx}`).val();
                    let newAmount = amt.toFixed(2);
                    $(`#discedamount${idx}`).val(newAmount);
                    $(`#itemdiscepercent${idx}`).val(percent);
                    itemNameCell.html(`
                                        <span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span>
                                        <input name="itemcode${idx}" id="itemcode${idx}" value="${$(`#itemcode${idx}`).val()}" type="hidden">
                                        <input name="discapp${idx}" id="discapp${idx}" value="${discApp}" type="hidden">
                                        <input class="itemnumber" name="itemnumber${idx}" id="itemnumber${idx}" value="${idx}" type="hidden">
                                        <input name="itemname${idx}" class="itemnameclass" id="itemname${idx}" value="${itemName}" type="hidden">
                                        <input name="itemrestcode${idx}" id="itemrestcode${idx}" value="${$(`#itemrestcode${idx}`).val()}" type="hidden">
                                        ${itemName}
                                        <span class="discount-badge item-discount">${percent}% OFF</span>
                                    `);
                    updated++;
                });
                if (!updated) {
                    pushNotify('info', 'No Items', `No applicable items found!`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                }
                updateDiscountInfo();
                setTimeout(() => calculatetaxes(), 300);
            }

            function applyGroupDiscount(percent, groups) {
                let updated = 0;
                let restcode = $('#fixrestcode').val();
                let restcode2 = $('#fixrestcode2').val();
                if (restcode && restcode !== '' && $(`#${restcode}discountfix`).length) {
                    $(`#${restcode}discountfix`).val('0.00');
                }
                if (restcode2 && restcode2 !== '' && restcode2 !== 'undefined' && $(`#${restcode2}discountfix`).length) {
                    $(`#${restcode2}discountfix`).val('0.00');
                }
                $('#itemsdata tbody tr').each(function(i) {
                    const idx = i + 1;
                    let row = $(this);
                    let itemNameCell = row.find('td:first');
                    itemNameCell.find('.discount-badge.item-discount').remove();
                });
                currentDiscount = {
                    type: 'Group',
                    percent,
                    groups: groups,
                    items: []
                };
                $('#discount_type').val('Group');
                $('#discount_percentage').val(percent);
                $('#discount_groups').val(groups.join(','));
                $('#itemsdata tbody tr').each(function(i) {
                    const idx = i + 1;
                    const discApp = $(`#discapp${idx}`).val();
                    const itemGroupCode = $(this).data('groupcode');
                    if (!itemGroupCode || !groups.includes(itemGroupCode.toString())) return;
                    let rate = parseFloat($(`#rate${idx}`).val()) || 0;
                    let originalRate = parseFloat($(`#originalrate${idx}`).val());
                    if (!originalRate || isNaN(originalRate)) {
                        $(`#originalrate${idx}`).val(rate);
                        originalRate = rate;
                    }
                    let qty = parseFloat($(`#quantity${idx}`).val()) || 0;
                    let rateinctax = $(`#RateIncTax${idx}`).val();
                    let taxRate = parseFloat($(`#tax_rate${idx}`).val()) || 0;
                    let discRate = originalRate * (1 - percent / 100);
                    $(`#rate${idx}`).val(discRate.toFixed(2));
                    let amt = discRate * qty;
                    if (rateinctax === 'Y') {
                        amt = (amt * 100) / (100 + taxRate);
                    }
                    $(`#amount${idx}, #fixamount${idx}`).val(amt.toFixed(2));
                    let row = $(`#itemsdata tbody tr:eq(${i})`);
                    let itemNameCell = row.find('td:first');
                    itemNameCell.find('.discount-badge').remove();
                    let itemName = $(`#itemname${idx}`).val();
                    itemNameCell.html(`
                                        <span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span>
                                        <input name="itemcode${idx}" id="itemcode${idx}" value="${$(`#itemcode${idx}`).val()}" type="hidden">
                                        <input name="discapp${idx}" id="discapp${idx}" value="${discApp}" type="hidden">
                                        <input class="itemnumber" name="itemnumber${idx}" id="itemnumber${idx}" value="${idx}" type="hidden">
                                        <input name="itemname${idx}" class="itemnameclass" id="itemname${idx}" value="${itemName}" type="hidden">
                                        <input name="itemrestcode${idx}" id="itemrestcode${idx}" value="${$(`#itemrestcode${idx}`).val()}" type="hidden">
                                        ${itemName}
                                        <span class="discount-badge group-discount">${percent}% OFF</span>
                                    `);
                    updated++;
                });
                if (!updated) {
                    pushNotify('info', 'No Items', `No applicable items found in selected groups!`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                }
                updateDiscountInfo();
                setTimeout(() => calculatetaxes(), 300);
            }
        });
        $(document).on('change', '#birthdate', function() {
            setTimeout(() => {
                let chkbirthday = GetBirthday(dmy($(this).val()), $('#customername').val() ?? '', 'Birthday');
                if (typeof chkbirthday != 'undefined') {
                    $('#birthdaytext').text(chkbirthday);
                    $('.birthday-message').fadeIn();
                    startBalloons();
                    for (let i = 0; i < 50; i++) {
                        let sparkle = $('<div class="sparkle"></div>');
                        sparkle.css({
                            top: Math.random() * 100 + '%',
                            left: Math.random() * 100 + '%',
                            animationDelay: Math.random() * 1.5 + 's'
                        });
                        $('.sparkles').append(sparkle);
                    }
                }
            }, 2000);
        });
        $(document).on('change', '#anniversary', function() {
            let chkbirthday = GetBirthday(dmy($(this).val()), $('#customername').val() ?? '', 'Anniversary');
            if (typeof chkbirthday != 'undefined') {
                $('#birthdaytext').text(chkbirthday);
                $('.birthday-message').fadeIn();
                startBalloons();
                for (let i = 0; i < 50; i++) {
                    let sparkle = $('<div class="sparkle"></div>');
                    sparkle.css({
                        top: Math.random() * 100 + '%',
                        left: Math.random() * 100 + '%',
                        animationDelay: Math.random() * 1.5 + 's'
                    });
                    $('.sparkles').append(sparkle);
                }
            }
        });
        makeDraggable('guesttable');
        makeResizable('guesttable', 'resizeHandle');
        let isResizing = false;

        function makeDraggable(elementId) {
            const element = document.getElementById(elementId);
            let offsetX = 0,
                offsetY = 0,
                initialX = 0,
                initialY = 0;
            element.addEventListener('mousedown', startDrag);

            function startDrag(e) {
                if (isResizing) return;
                e.preventDefault();
                initialX = e.clientX;
                initialY = e.clientY;
                document.addEventListener('mousemove', dragElement);
                document.addEventListener('mouseup', stopDrag);
            }

            function dragElement(e) {
                e.preventDefault();
                offsetX = initialX - e.clientX;
                offsetY = initialY - e.clientY;
                initialX = e.clientX;
                initialY = e.clientY;
                element.style.top = (element.offsetTop - offsetY) + "px";
                element.style.left = (element.offsetLeft - offsetX) + "px";
            }

            function stopDrag() {
                document.removeEventListener('mousemove', dragElement);
                document.removeEventListener('mouseup', stopDrag);
            }
        }

        function makeResizable(elementId, handleId) {
            const element = document.getElementById(elementId);
            const handle = document.getElementById(handleId);
            let startX = 0,
                startY = 0,
                startWidth = 0,
                startHeight = 0;
            handle.addEventListener('mousedown', startResize);

            function startResize(e) {
                e.preventDefault();
                isResizing = true;
                startX = e.clientX;
                startY = e.clientY;
                startWidth = parseInt(document.defaultView.getComputedStyle(element).width, 10);
                startHeight = parseInt(document.defaultView.getComputedStyle(element).height, 10);
                document.addEventListener('mousemove', doResize);
                document.addEventListener('mouseup', stopResize);
            }

            function doResize(e) {
                e.preventDefault();
                element.style.width = startWidth + e.clientX - startX + 'px';
                element.style.height = startHeight + e.clientY - startY + 'px';
            }

            function stopResize() {
                isResizing = false;
                document.removeEventListener('mousemove', doResize);
                document.removeEventListener('mouseup', stopResize);
            }
        }

        function GetBirthday(birthdate, birthdayboy, occation) {
            let today = new Date();
            let curMonth = today.getMonth() + 1;
            let curDate = today.getDate();
            let fmtdob = new Date(ymd(birthdate));
            let birthdayMonth = fmtdob.getMonth() + 1;
            let birthdayDate = fmtdob.getDate();
            let guestBirthdayThisYear = new Date(today.getFullYear(), birthdayMonth - 1, birthdayDate);
            if (guestBirthdayThisYear < today) {
                guestBirthdayThisYear.setFullYear(today.getFullYear() + 1);
            }
            let timeDifference = guestBirthdayThisYear - today;
            let daysUntilBirthday = Math.ceil(timeDifference / (1000 * 60 * 60 * 24));
            if (daysUntilBirthday === 365) {
                return `Happy ${occation}, ${birthdayboy} Today is your ${occation}!`;
            } else if (daysUntilBirthday <= 30) {
                return `Happy ${occation}, ${birthdayboy} Your ${occation} is on ${guestBirthdayThisYear.toDateString()}.`;
            }
        }
        let animationInterval;

        function startBalloons() {
            $('.balloon').each(function() {
                $(this).css({
                    display: 'block',
                    bottom: '-100px',
                    left: Math.random() * 100 + '%'
                });
                animateBalloon(this);
            });
        }

        function animateBalloon(balloon) {
            $(balloon).animate({
                bottom: '100%'
            }, {
                duration: 10000,
                easing: 'linear',
                complete: function() {
                    $(this).css({
                        bottom: '-100px',
                        left: Math.random() * 100 + '%'
                    });
                    animateBalloon(this);
                }
            });
        }

        function stopBalloons() {
            $('.balloon').stop(true, true).css('display', 'none');
        }
        let element2 = document.getElementById('ncurdate2');
        fetchncur(element2);

        function updateTime() {
            let options = {
                timeZone: 'Asia/Kolkata',
                hour12: false,
                hour: '2-digit',
                minute: '2-digit',
                second: '2-digit'
            };
            let currentTime = new Date().toLocaleString('en-US', options);
            let curTimeElement = document.getElementById('curtime');
            curTimeElement.textContent = currentTime;
        }
        $('input[name^="discountfix"]').on('click', function() {
            $(this).val('0');
            $(this).trigger('input');
        });
        $('input[name^="discountfix"]').on('input', function() {
            $(this).val($(this).val().replace(/[^0-9.]/g, ''));
            var val = parseFloat($(this).val());
            if (isNaN(val) || val > 99.99) {
                $(this).val('');
            }
        });
        updateTime();
        $('#billprint').click(function() {


            if (mobileno === 'Y') {
                let phoneno = $('#phoneno').val();
                if (phoneno === '') {
                    $('#customerModal').modal('show');
                    $('#phoneno').focus();
                    pushNotify('error', 'Salebill Entry', 'Please Enter Customer Mobile No.!');
                    return false;
                }
            }
            if ($(this).prop('disabled')) {
                return false;
            }
            $(this).prop('disabled', true);
            let originalText = $(this).text();
            $(this).text('Processing...');
            let oldroomyn = $('#oldroomyn').val();
            $('#billprinty').val('Y');
            if (oldroomyn == 'N') {
                $('#submitBtn').click();
            } else {
                let tbody = $('#itemsdata tbody');
                let rowcount = tbody.find('tr').length;
                let roomno = $('#roomno').val();
                if (roomno === '' || roomno === null) {
                    $(this).prop('disabled', false).text(originalText);
                    pushNotify('error', 'Salebill Entry', 'Please Select Room No.!');
                    return;
                }
                if (rowcount === 0) {
                    $(this).prop('disabled', false).text(originalText);
                    pushNotify('error', 'Salebill Entry', 'Please Add Some Item First!');
                    return;
                }
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    }
                });
                let vnoup = $('#vnoup').val();
                let vdatesale1 = $('#vdatesale1').val();
                let sale1docid = $('#sale1docid').val();
                let vtype = $('#vtype').val();
                let departname = $('#departname').val();
                let vnoup2 = $('#vnoup2').val();
                let vdatesale2 = $('#vdatesale2').val();
                let sale1docid2 = $('#sale1docid2').val();
                let vtype2 = $('#vtype2').val();
                let departname2 = $('#departname2').val();
                let totalamount = $('#myNetTotalAmount').val();
                totalamount = parseFloat(totalamount).toFixed(2);
                let totalamountStatus = '';
                if (vnoup2) {
                    totalamountStatus = 'Restaurant & Bar';
                }
                $(this).prop('disabled', false).text('Bill Print');
                let filetoopen;
                if ($('#printdescription').val() == 'Bill Windows Plain Paper 1') {
                    filetoopen = 'salebillprint';
                    let kotno = $('#kotno').val();
                    let kotnohead = '';
                    if (kotno) {
                        kotnohead = `<strong>KOT No: <span id="kotno">${kotno}</span></strong>`;
                    }
                    let waitersname = $('#waitersname').val();
                    if (waitersname) {
                        waitersname = '<strong>Waiter: </strong>' + waitersname;
                    } else {
                        waitersname = '';
                    }

                    let outletcode = $('#fixrestcode').val();
                    let departnature = $('#departnature').val();
                    let addeddocid = $('#addeddocid').val() ?? '';
                    let openfile = window.open(filetoopen, '_blank');
                    openfile.onload = function() {
                        $('#roomno', openfile.document).text(roomno);
                        $('#vdate', openfile.document).text(vdatesale1);
                        $('#billno', openfile.document).text(vnoup);
                        $('#vtype', openfile.document).text(vtype);
                        $('#departname', openfile.document).text(departname);
                        $('#kotno', openfile.document).html(kotnohead);
                        $('#waiter', openfile.document).html(waitersname);
                        $('#outletcode', openfile.document).text(outletcode);
                        $('#departnature', openfile.document).text(departnature);
                        $('#addeddocid', openfile.document).text(addeddocid);
                        $('#sale1docid', openfile.document).text(sale1docid);
                    }
                } else if ($('#printdescription').val() == 'Bill Windows Plain Paper 2') {
                    filetoopen = 'salebillprinttype2';
                    let kotno = $('#kotno').val();
                    let kotnohead = '';
                    if (kotno) {
                        kotnohead = `<strong>KOT No: <span id="kotno">${kotno}</span></strong>`;
                    }
                    let waitersname = $('#waitersname').val();
                    if (waitersname) {
                        waitersname = '<strong>Waiter: </strong>' + waitersname;
                    } else {
                        waitersname = '';
                    }

                    let outletcode = $('#fixrestcode').val();
                    let departnature = $('#departnature').val();
                    let addeddocid = $('#addeddocid').val() ?? '';
                    let openfile = window.open(filetoopen, '_blank');
                    openfile.onload = function() {
                        $('#roomno', openfile.document).text(roomno);
                        $('#vdate', openfile.document).text(vdatesale1);
                        $('#billno', openfile.document).text(vnoup);
                        $('#vtype', openfile.document).text(vtype);
                        $('#departname', openfile.document).text(departname);
                        $('#kotno', openfile.document).html(kotnohead);
                        $('#waiter', openfile.document).html(waitersname);
                        $('#outletcode', openfile.document).text(outletcode);
                        $('#departnature', openfile.document).text(departnature);
                        $('#addeddocid', openfile.document).text(addeddocid);
                        $('#sale1docid', openfile.document).text(sale1docid);
                    }
                } else if ($('#printdescription').val() == '3 Inch Running Paper Windows Print 1') {
                    let filetoopen = 'salebillprint2';
                    let kotno = $('#kotno').val();
                    if (kotno) {
                        kotno = '<strong>KOT No: </strong>' + kotno;
                    } else {
                        kotno = '';
                    }
                    let waitersname = $('#waitersname').val();
                    if (waitersname) {
                        waitersname = '<strong>Waiter: </strong>' + waitersname;
                    } else {
                        waitersname = '';
                    }
                    let outletcode = $('#fixrestcode').val();
                    let departnature = $('#departnature').val();
                    let addeddocid = $('#addeddocid').val() ?? '';
                    let sale1docid = $('#sale1docid').val() ?? '';
                    let kotno2 = $('#kotno2').val();
                    let waitersname2 = $('#waitersname2').val();
                    let outletcode2 = $('#fixrestcode2').val();
                    let departnature2 = $('#departnature2').val();
                    let addeddocid2 = $('#addeddocid2').val() ?? '';
                    let openfile1 = window.open(filetoopen, '_blank');
                    openfile1.onload = function() {
                        $('#roomno', openfile1.document).text(roomno);
                        $('#vdate', openfile1.document).text(vdatesale1);
                        $('#billno', openfile1.document).text(vnoup);
                        $('#vtype', openfile1.document).text(vtype);
                        $('#departname', openfile1.document).text(departname);
                        $('#kotno', openfile1.document).html(kotno);
                        $('#waiter', openfile1.document).html(waitersname);
                        $('#outletcode', openfile1.document).text(outletcode);
                        $('#departnature', openfile1.document).text(departnature);
                        $('#addeddocid', openfile1.document).text(addeddocid);
                        $('#totalamount', openfile1.document).text(totalamount);
                        $('#totalamountStatus', openfile1.document).text(totalamountStatus);
                        $('#sale1docid', openfile1.document).text(sale1docid);
                    };
                    if (departname2 && departname2.trim() !== '') {
                        let openfile2 = window.open(filetoopen, '_blank');
                        if (openfile2) {
                            openfile2.onload = function() {
                                $('#roomno', openfile2.document).text(roomno);
                                $('#vdate', openfile2.document).text(vdatesale2);
                                $('#billno', openfile2.document).text(vnoup2);
                                $('#vtype', openfile2.document).text(vtype2);
                                $('#departname', openfile2.document).text(departname2);
                                $('#kotno', openfile2.document).html(kotno2);
                                $('#waiter', openfile2.document).html(waitersname2);
                                $('#outletcode', openfile2.document).text(outletcode2);
                                $('#departnature', openfile2.document).text(departnature2);
                                $('#addeddocid', openfile2.document).text(addeddocid2);
                                $('#totalamount', openfile2.document).text(totalamount);
                                $('#totalamountStatus', openfile2.document).text(totalamountStatus);
                                $('#sale1docid', openfile2.document).text(sale1docid2)
                            };
                        }
                    }
                } else if ($('#printdescription').val() == '3 Inch Running Paper Windows Print 2') {
                    let filetoopen = 'salebillprint2type2';
                    let kotno = $('#kotno').val();
                    if (kotno) {
                        kotno = '<strong>KOT No: </strong>' + kotno;
                    } else {
                        kotno = '';
                    }
                    let waitersname = $('#waitersname').val();
                    if (waitersname) {
                        waitersname = '<strong>Waiter: </strong>' + waitersname;
                    } else {
                        waitersname = '';
                    }
                    let outletcode = $('#fixrestcode').val();
                    let departnature = $('#departnature').val();
                    let addeddocid = $('#addeddocid').val() ?? '';
                    let kotno2 = $('#kotno2').val();
                    let waitersname2 = $('#waitersname2').val();
                    let outletcode2 = $('#fixrestcode2').val();
                    let departnature2 = $('#departnature2').val();
                    let addeddocid2 = $('#addeddocid2').val() ?? '';
                    let openfile1 = window.open(filetoopen, '_blank');
                    openfile1.onload = function() {
                        $('#roomno', openfile1.document).text(roomno);
                        $('#vdate', openfile1.document).text(vdatesale1);
                        $('#billno', openfile1.document).text(vnoup);
                        $('#vtype', openfile1.document).text(vtype);
                        $('#departname', openfile1.document).text(departname);
                        $('#kotno', openfile1.document).html(kotno);
                        $('#waiter', openfile1.document).html(waitersname);
                        $('#outletcode', openfile1.document).text(outletcode);
                        $('#departnature', openfile1.document).text(departnature);
                        $('#addeddocid', openfile1.document).text(addeddocid);
                        $('#sale1docid', openfile1.document).text(sale1docid);
                        $('#totalamount', openfile1.document).text(totalamount);
                        $('#totalamountStatus', openfile1.document).text(totalamountStatus);
                    };
                    if (departname2 && departname2.trim() !== '') {
                        let openfile2 = window.open(filetoopen, '_blank');
                        if (openfile2) {
                            openfile2.onload = function() {
                                $('#roomno', openfile2.document).text(roomno);
                                $('#vdate', openfile2.document).text(vdatesale2);
                                $('#billno', openfile2.document).text(vnoup2);
                                $('#vtype', openfile2.document).text(vtype2);
                                $('#departname', openfile2.document).text(departname2);
                                $('#kotno', openfile2.document).html(kotno2);
                                $('#waiter', openfile2.document).html(waitersname2);
                                $('#outletcode', openfile2.document).text(outletcode2);
                                $('#departnature', openfile2.document).text(departnature2);
                                $('#addeddocid', openfile2.document).text(addeddocid2);
                                $('#totalamount', openfile2.document).text(totalamount);
                                $('#totalamountStatus', openfile2.document).text(totalamountStatus);
                            };
                        }
                    }
                } else if ($('#printdescription').val() == '3 Inch Running Paper DOS Print') {
                    $.ajax({
                        url: 'salebillprintthermal',
                        data: {
                            docid: sale1docid
                        },
                        method: "POST",
                        success: function(response) {
                            setTimeout(() => {}, 500);
                        },
                        error: function(error) {
                            $('#billprint').prop('disabled', false).text('Bill Print');
                            console.log(error);
                        }
                    })
                }
            }
        });

        $(document).on('click', '#einvoicebtn', function() {
            let $button = $(this);
            $button.text('Generating...').prop('disabled', true);
            let sale1docid = $('#sale1docid').val();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            $.ajax({
                url: '/generate-einvoice-sale',
                type: 'POST',
                data: {
                    sale1docid: sale1docid,
                },
                success: function(response) {
                    $button.text('Generate E-Invoice').prop('disabled', false);
                    if (response.success) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'E-Invoice generated successfully',
                        });
                        setTimeout(() => {
                            window.location.reload();
                        }, 2000);
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: response.message || 'Error generating E-Invoice',
                        });
                    }
                },
                error: function(xhr, status, error) {
                    $button.text('Generate E-Invoice').prop('disabled', false);
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Error generating E-Invoice',
                    });
                }
            });
        });

        $(document).on('click', '#viewinvoicebtn', function() {
            let einvoicedata = localStorage.getItem('einvoicedata');
            if (einvoicedata) {
                let data = JSON.parse(einvoicedata);
                let irncode = data.irn || '';
                let ackno = data.ackno || '';
                let ackdate = data.ackdt || '';
                let qrimagedata = data.qrcodeimage || '';

                $('#viewirncode').text(`IRN: ${irncode}`);
                $('#viewacknno').text(`Ack No: ${ackno}`);
                $('#viewackdate').text(`Ack Date: ${ackdate}`);

                if (qrimagedata) {
                    let qrimage = `<img src="data:image/png;base64,${qrimagedata}" alt="QR Code E Invoice" style="height: 160px; width: 160px;">`;
                    $('#viewqrcode').html(qrimage);
                } else {
                    $('#viewqrcode').html('');
                }
            }
        });

        $(document).on('click', '#einvoicebtncancel', function() {
            let $button = $(this);
            $button.text('Cancelling...').prop('disabled', true);
            let docid = $('#sale1docid').val();
            let billno = $('#oldroomno').val();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            $.ajax({
                url: '/cancel-einvoice',
                type: 'POST',
                data: {
                    type: 'POS',
                    docid: docid,
                    sno1: 1,
                    billno: billno
                },
                success: function(response) {
                    $button.text('Cancel E-Invoice').prop('disabled', false);
                    if (response.success) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'E-Invoice cancelled successfully',
                        });
                        setTimeout(() => {
                            window.location.reload();
                        }, 2000);
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: response.message || 'Error cancelling E-Invoice',
                        });
                    }
                },
                error: function(xhr, status, error) {
                    $button.text('Cancel E-Invoice').prop('disabled', false);
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Error cancelling E-Invoice',
                    });
                }
            });

        });
    </script>

    <div class="modal fade" id="viewinvoicemodal" tabindex="-1" role="dialog" aria-labelledby="viewinvoicemodallabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header bg-info">
                    <h5 class="modal-title text-white" id="viewinvoicemodallabel">E-Invoice Details</h5>
                    <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body text-center">
                    <div id="viewqrcode" style="margin-bottom: 15px;"></div>
                    <div id="viewirncode" style="margin-bottom: 10px; font-weight: 600;"></div>
                    <div id="viewacknno" style="margin-bottom: 10px;"></div>
                    <div id="viewackdate" style="margin-bottom: 10px;"></div>
                </div>
            </div>
        </div>
    </div>
@endsection
