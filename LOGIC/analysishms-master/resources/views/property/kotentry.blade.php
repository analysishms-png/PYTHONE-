@extends('property.layouts.main')
@section('main-container')
    <div class="content-body kotentry">
        <div class="container-fluid mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="p-3">
                            {{-- <button type="button" id="mobileGroupToggle"
                                class="btn btn-sm btn-outline-primary w-100 mb-2">
                                Menu Groups
                            </button> --}}
                            <form class="form" name="kotentryform" id="kotentryform" method="POST">
                                {{-- action="{{ route('kotstore') }}" --}}
                                @csrf
                                <input type="hidden" value="{{ $pendings['pvno'] ?? '' }}" name="pvno" id="pvno">
                                <input type="hidden" value="{{ $pendings['pdocid'] ?? '' }}" name="pdocid" id="pdocid">
                                <input type="hidden" value="{{ $pendings['proomno'] ?? '' }}" name="proomno"
                                    id="proomno">
                                <input type="hidden" class="form-control" name="fixrestcode" id="fixrestcode"
                                    value="{{ $depart->dcode }}">
                                <input type="hidden" value="{{ $envpos->nckot }}" name="nckotper" id="nckotper">
                                <input type="hidden" class="form-control" name="oldvnopendingkot" id="oldvnopendingkot"
                                    value="">
                                <input type="hidden" class="form-control" name="olddocidpendingkot" id="olddocidpendingkot"
                                    value="">
                                <input type="hidden" class="form-control" name="vtype" id="vtype" value="">
                                <input type="hidden" class="form-control" name="restcode" id="restcode"
                                    value="{{ $depart->dcode }}">
                                <input type="hidden" class="form-control" name="shortname" id="shortname"
                                    value="{{ $depart->short_name }}">
                                <input type="hidden" name="nckotreason" id="nckotreason">
                                <input type="hidden" name="ncoldyn" id="ncoldyn">
                                <input type="hidden" name="pendingyn" id="pendingyn">
                                <input type="hidden" name="oldpendingdocid" id="oldpendingdocid">
                                <input type="hidden" name="editingreasons" id="editingreasons">
                                <input type="hidden" value="{{ $roomone }}" name="posroomno" id="posroomno">
                                <input type="hidden" value="{{ $envpos->kotoutletselection }}" name="kotoutletselection"
                                    id="kotoutletselection">
                                <input type="hidden" value="{{ $envpos->printeditkot }}" name="printeditkot"
                                    id="printeditkot">
                                <input type="hidden" name="totalitems" id="totalitems">
                                <div style="background: aquamarine;" class="row mb-1">
                                    <div class="col-md-12">
                                        <div class="row ptags">
                                            <div class="col-md-2">
                                                <p style="cursor: pointer;" id="outletchangebtn" class="m-1">
                                                    {{ $depart->name }}
                                                </p>
                                                <ul id="listoutlets" style="display:none;">
                                                    @foreach ($outletdata as $item)
                                                        <li class="outletcls" data-value="{{ $item->dcode }}">
                                                            {{ $item->name }}
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                            <div class="col-md-2 d-flex">
                                                <p class="m-1" id="sessionmast"></p>
                                                <p class="m-1" id="kottype">Standard KOT </p>
                                            </div>
                                            <div class="col-md-2 d-flex">
                                                <p class="m-1" id="ncurdate2"></p>
                                                <p class="m-1" id="curtime"></p>
                                                <p style="text-indent: 8px;" class="m-1 text-dpink" id="krsno"> </p>
                                            </div>
                                            <div class="col-md-2">
                                                <p id="orderno" class="m-1 alert-link blinking-text text-danger"><i
                                                        class="fa-solid fa-utensils"></i>
                                                    <span id="ordertype"></span>
                                                </p>
                                            </div>
                                            {{-- <div class="col-md-3 text-center">
                                                <button class="btn btn-sm btn-success" name="submitBtn" id="submitBtn"
                                                    type="submit">Submit</button>
                                            </div> --}}
                                            <div class="col-md-3 text-center d-none d-md-block">
                                                <button class="btn btn-sm btn-success" name="submitBtn" id="submitBtn"
                                                    type="submit">Submit</button>
                                                @if (checkisadmin('freeitemkot') == true)
                                                    <button class="btn btn-sm btn-warning ml-2" name="freeBtn"
                                                        id="freeBtn" type="button" disabled>Free</button>
                                                    <button class="btn btn-sm btn-info ml-2" name="unfreeBtn"
                                                        id="unfreeBtn" type="button" disabled
                                                        style="display:none;">Unfree</button>
                                                @endif
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
                                                        <select name="roomno" id="roomno" class="form-control"
                                                            required>
                                                            <option value="">{{ $label }}</option>
                                                            @foreach ($roomno as $item)
                                                                @if (!empty($item->roomno))
                                                                    <option value="{{ $item->roomno }}"
                                                                        {{ $roomone == $item->roomno ? 'selected' : '' }}>
                                                                        {{ $item->roomno }}
                                                                        {{ !empty($item->name) ? ' - ' . $item->name : '' }}
                                                                    </option>
                                                                @endif
                                                                {{-- <option value="{{ $item->roomno }}" {{ $roomone==$item->
                                                                    roomno ? 'selected' : '' }}>{{ $item->roomno }}</option>
                                                                --}}
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
                                                        <select name="pax" id="pax" class="form-control"
                                                            required>
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
                                            <div class="col-md-3">
                                                <div class="">
                                                    <div class="form-group">
                                                        <select name="waiter" id="waiter" class="form-control"
                                                            required>
                                                            <option value="">Waiter</option>
                                                            @foreach ($servermast as $item)
                                                                <option value="{{ $item->scode }}">{{ $item->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2 mt-2">
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" name="nctypecheckbox" id="showNcSelect"> NC
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="text" placeholder="&#128269; Enter Name"
                                                    name="searchname" id="searchname" class="form-control mb-2"
                                                    readonly="false">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" placeholder="&#128269; Enter Bar Code"
                                                    name="searchbar" id="searchbar" class="form-control mb-2"
                                                    inputmode="numeric" pattern="[0-9]*" readonly="false">
                                            </div>
                                            {{-- <div class="col-md-3 px-lg-0">
                                                <div class="tablecontainermenunames">
                                                    <table id="menunames" class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th style="border-top: 1px solid #0000000f;">Group</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td data-value="favourite" class="menugrpitem"
                                                                    id="favourite">Favourite
                                                                </td>
                                                            </tr>
                                                            @foreach ($menudata as $item)
                                                            <tr>
                                                                <td data-value="{{ $item->code }}" class="menugrpitem">{{
                                                                    $item->name }}</td>
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div> --}}
                                            <div class="col-md-3 px-lg-0">
                                                <div class="tablecontainermenunames">
                                                    <table id="menunames" class="table table-hover">
                                                        <!-- Desktop menu (keeps existing behavior on md+ screens) -->
                                                        <table id="menunames" class="table table-hover d-none d-md-table">
                                                            <thead>
                                                                <tr>
                                                                    <th style="border-top: 1px solid #0000000f;">Group</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td data-value="favourite" class="menugrpitem"
                                                                        id="favourite">Favourite
                                                                    </td>
                                                                </tr>
                                                                @foreach ($menudata as $item)
                                                                    <tr>
                                                                        <td data-value="{{ $item->code }}"
                                                                            class="menugrpitem">
                                                                            {{ $item->name }}
                                                                        </td>
                                                                    </tr>
                                                                @endforeach
                                                            </tbody>
                                                        </table>
                                                        <!-- Mobile toggle button (visible on small screens) -->
                                                        <div class="d-md-none">
                                                            <button type="button" id="mobileGroupToggle"
                                                                class="btn btn-sm btn-outline-primary w-100 mb-2">
                                                                Menu Groups
                                                            </button>
                                                            <!-- sliding panel for mobile groups -->
                                                            <div id="mobileGroupPanel" class="mobile-group-panel"
                                                                style="display:none;">
                                                                <div
                                                                    class="mobile-group-header d-flex justify-content-between align-items-center p-2 border-bottom">
                                                                    <strong>Groups</strong>
                                                                    <button id="mobileGroupClose"
                                                                        class="btn btn-sm btn-danger">Close</button>
                                                                </div>
                                                                <div class="mobile-group-body p-2">
                                                                    <ul id="mobileGroupList" class="list-unstyled mb-0">
                                                                        <li class="menugrpitem list-group-item"
                                                                            data-value="favourite">Favourite</li>
                                                                        @foreach ($menudata as $item)
                                                                            <li class="menugrpitem list-group-item"
                                                                                data-value="{{ $item->code }}">
                                                                                {{ $item->name }}
                                                                            </li>
                                                                        @endforeach
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="divitemnames">
                                                    <table id="itemnames" class="table table-hover">
                                                        <thead>
                                                            <tr style="border: 1px solid #0000000f;">
                                                                <th>Item Name</th>
                                                                <th colspan="3">Total Added Items: <span
                                                                        class="text-info" id="addeditems">0</span></th>
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
                                            <div style="display: none;" id="ncdiv" class="col-md-3">
                                                <div class="form-group">
                                                    <select name="nctype" id="nctype" class="form-control" disabled>
                                                        <option value="">NC Type</option>
                                                        @foreach ($nctype as $item)
                                                            <option value="{{ $item->ncode }}">{{ $item->nctype }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            {{-- <div class="col-md-3">
                                                <div class="">
                                                    <div class="form-group">
                                                        <input type="text"
                                                            oninput="this.value = this.value.replace(/[^A-Za-z-0-9\s]|^(.{50}).*$/g, '$1')"
                                                            name="kotremark" id="kotremark" class="form-control"
                                                            placeholder="Kot Remark">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="">
                                                <div class="d-flex">
                                                    <button style="width: -webkit-fill-available;" type="button"
                                                        class="btn rhead btn-sm btn-primary" name="pendingkot"
                                                        id="pendingkot">Pending
                                                        Kot</button>
                                                    <button style="width: -webkit-fill-available;" type="button"
                                                        class="btn ml-1 rhead btn-sm btn-primary" name="ncpreviouskot"
                                                        id="ncpreviouskot">Pending Nc
                                                        Kot</button>
                                                    {{-- <button disabled style="width: -webkit-fill-available;"
                                                        type="button" class="btn ml-1 rhead btn-sm btn-warning"
                                                        name="Complete Order" id="Complete Order">Complete order</button>

                                                    <button onclick="window.location.reload()"
                                                        style="width: -webkit-fill-available;" type="button"
                                                        class="btn ml-1 rhead btn-sm btn-danger" name="refresh"
                                                        id="refresh">Refresh</button>
                                                    <button onclick="Simongoback()" style="width: -webkit-fill-available;"
                                                        type="button" class="btn none ml-1 rhead btn-sm btn-info"
                                                        name="goback" id="goback">Go Back</button>
                                                </div>
                                            </div> --}}
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <!-- Mobile/Tablet top buttons container -->
                                                    <div class="mobile-top-buttons d-md-none">
                                                        <button type="button" class="btn rhead btn-sm btn-primary"
                                                            name="pendingkot" id="mobilePendingKot">Pending Kot</button>
                                                        <button type="button" class="btn rhead btn-sm btn-primary"
                                                            name="ncpreviouskot" id="mobileNcPreviousKot">Pending Nc
                                                            Kot</button>
                                                        <button onclick="window.location.reload()" type="button"
                                                            class="btn rhead btn-sm btn-danger" name="refresh"
                                                            id="refresh">Refresh</button>
                                                        <button onclick="Simongoback()" type="button"
                                                            class="btn rhead btn-sm btn-info none" name="goback"
                                                            id="mobileGoBack">Go Back</button>
                                                    </div>

                                                    <!-- Desktop buttons - hide on mobile/tablet -->
                                                    <div class="d-none d-md-flex">
                                                        <button style="width: -webkit-fill-available;" type="button"
                                                            class="btn rhead btn-sm btn-primary" name="pendingkot"
                                                            id="desktopPendingKot">Pending Kot</button>
                                                        <button style="width: -webkit-fill-available;" type="button"
                                                            class="btn ml-1 rhead btn-sm btn-primary" name="ncpreviouskot"
                                                            id="desktopNcPreviousKot">Pending Nc Kot</button>
                                                        <button onclick="window.location.reload()"
                                                            style="width: -webkit-fill-available;" type="button"
                                                            class="btn ml-1 rhead btn-sm btn-danger" name="refresh"
                                                            id="refresh">Refresh</button>
                                                        <button onclick="Simongoback()"
                                                            style="width: -webkit-fill-available;" type="button"
                                                            class="btn none ml-1 rhead btn-sm btn-info" name="goback"
                                                            id="desktopGoBack">Go Back</button>
                                                    </div>
                                                </div>

                                                <!-- Kot Remark input - responsive positioning -->
                                                <div class="col-md-3 kotremark-container">
                                                    <div class="form-group">
                                                        <input type="text"
                                                            oninput="this.value = this.value.replace(/[^A-Za-z-0-9\s]|^(.{50}).*$/g, '$1')"
                                                            name="kotremark" id="kotremark" class="form-control"
                                                            placeholder="Kot Remark">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="table-container">
                                                    <table id="itemsdata" class="table table-hover">
                                                        <thead>
                                                            <tr style="border-top: 1px solid #0000000f;">
                                                                <th>Item</th>
                                                                <th>Description</th>
                                                                <th>Qty</th>
                                                                <th>Rate</th>
                                                                <th>Void</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                        <tfoot style="display: none;" id="tfoot"
                                                            class="bg-secondary">
                                                            <tr>
                                                                <td></td>
                                                                <td></td>
                                                                <td>Total:</td>
                                                                <td><span id="totalAmount"></span></td>
                                                                <td></td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                                <!-- Mobile/Tablet submit button container -->
                                                <div class="button-container d-md-none">
                                                    <button class="btn btn-success mobile-submit" name="submitBtn"
                                                        id="submitBtn" type="submit">Submit</button>
                                                    <button class="btn btn-warning mobile-submit mt-2"
                                                        name="freeBtnMobile" id="freeBtnMobile" type="button"
                                                        disabled>Free</button>
                                                    <button class="btn btn-info mobile-submit mt-2" name="unfreeBtnMobile"
                                                        id="unfreeBtnMobile" type="button" disabled
                                                        style="display:none;">Unfree</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div style="display: none;" class="table-listncitem">
                <table draggable="true" id="pendingkottbl" class="table animated-border">
                    <thead>
                        <tr style="border-top: 1px solid #0000000f;">
                            <th>Kotno</th>
                            <th>Item</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Waiter</th>
                            <th>Table</th>
                            <th>Void Yn</th>
                            <th>Qty. <span class="closetblspan"><button type="button" id="closeatablebtn"
                                        class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <div style="display: none;" class="table-tablepreviousnc">
                <table draggable="true" id="tablepreviousnc" class="table animated-border">
                    <thead>
                        <tr style="border-top: 1px solid #0000000f;">
                            <th>Kotno</th>
                            <th>Item</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Waiter</th>
                            <th>Table</th>
                            <th>Void</th>
                            <th>Qty. <span class="closetblspan"><button type="button" id="closeatablebtnnc"
                                        class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>

            <button title="Display Pending Item For Selected Table" style="display:none;" data-bs-toggle="modal"
                data-bs-target="#prevtabledisplay" id="pendingFab" class="pending-fab">
                <i class="fas fa-hourglass-half"></i>
            </button>

            <div class="modal fade" id="prevtabledisplay" tabindex="-1" aria-labelledby="pendingdetailitemtableLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content">

                        <div class="modal-header py-2">
                            <h6 class="modal-title">KOT Details</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <div class="modal-body p-2">
                            <div class="table-responsive">
                                <table class="table table-sm table-bordered mb-0">
                                    <thead class="table-light">
                                        <tr>
                                            <th>KOT No</th>
                                            <th>Item</th>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th>Waiter</th>
                                            <th>Table</th>
                                            <th>Void</th>
                                            <th>Qty</th>
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
    </div>

    {{-- ===== Quick Add Item Modal (search box me 9999 likhne par khulta hai) ===== --}}
    <div class="modal fade" id="quickItemModal" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" style="background:#f5dfc5;">
                <div class="modal-header py-2">
                    <h6 class="modal-title">Add New Item</h6>
                    <button type="button" class="close" id="quickItemX">&times;</button>
                </div>
                <div class="modal-body">
                    <form id="quickItemForm" autocomplete="off">
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Restaurant</label>
                            <div class="col-8"><input type="text" class="form-control form-control-sm"
                                    id="qi_restname" readonly></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Code</label>
                            <div class="col-8"><input type="text" class="form-control form-control-sm"
                                    value="Auto" readonly></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Name</label>
                            <div class="col-8"><input type="text" class="form-control form-control-sm"
                                    id="qi_name" name="name" maxlength="100" required></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Unit</label>
                            <div class="col-8"><select class="form-control form-control-sm" id="qi_unit"
                                    name="unit" required></select></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Item Group</label>
                            <div class="col-8"><select class="form-control form-control-sm" id="qi_group"
                                    name="itemgroup" required></select></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Item Category</label>
                            <div class="col-8"><select class="form-control form-control-sm" id="qi_cat"
                                    name="itemcatcode" required></select></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Veg / Non-Veg</label>
                            <div class="col-8">
                                <select class="form-control form-control-sm" name="dishtype">
                                    <option value="">-</option>
                                    <option value="1">Veg</option>
                                    <option value="2">Non-Veg</option>
                                    <option value="3">Egg</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Disc Applicable</label>
                            <div class="col-8"><select class="form-control form-control-sm" name="discapp">
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Service Charge</label>
                            <div class="col-8"><select class="form-control form-control-sm" name="schrgapp">
                                    <option value="N">No</option>
                                    <option value="Y">Yes</option>
                                </select></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Rate Inc. Tax</label>
                            <div class="col-8"><select class="form-control form-control-sm" name="rateinctax">
                                    <option value="N">No</option>
                                    <option value="Y">Yes</option>
                                </select></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Sale Rate</label>
                            <div class="col-8"><input type="number" step="0.01" min="0"
                                    class="form-control form-control-sm" id="qi_rate" name="salerate" required></div>
                        </div>
                        <div class="form-group row mb-1">
                            <label class="col-4 font-weight-bold text-primary">Kitchen</label>
                            <div class="col-8"><select class="form-control form-control-sm" id="qi_kitchen"
                                    name="kitchen"></select></div>
                        </div>
                        <div class="text-center mt-3">
                            <button type="submit" class="btn btn-warning mr-2" id="qi_save"
                                accesskey="s"><u>S</u>ave</button>
                            <button type="button" class="btn btn-warning" id="qi_exit"
                                accesskey="x">E<u>x</u>it</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <style>
        /* Mobile sliding panel */
        /* Responsive layouts */
        @media (max-width: 991px) {

            /* Tablet and mobile */
            .kotentry .button-container {
                position: sticky;
                bottom: 0;
                background: white;
                padding: 10px;
                box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
                z-index: 100;
            }

            .kotentry .mobile-submit {
                width: 100%;
                margin-top: 10px;
            }

            .kotentry .mobile-top-buttons {
                display: flex;
                flex-wrap: wrap;
                gap: 5px;
                margin-bottom: 10px;
            }

            .kotentry .mobile-input-container {
                order: -1;
                margin-bottom: 15px;
            }

            .kotentry .table-container {
                margin-bottom: 60px;
                /* Space for fixed submit button */
            }

            .kotentry .kotremark-container {
                margin-bottom: 10px;
            }
        }

        @media (min-width: 768px) {
            .kotentry .kotremark-container {
                flex: 1 0 32%;
                max-width: 34%;
                margin-left: auto;
            }
        }

        @media (max-width: 767px) {

            /* Mobile only */
            .kotentry .mobile-top-buttons button {
                flex: 1 1 calc(50% - 5px);
                min-width: 120px;
            }

            .kotentry .kotremark-container {
                width: 100%;
            }
        }

        .mobile-group-panel {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 80%;
            max-width: 360px;
            background: #fff;
            z-index: 1050;
            box-shadow: 2px 0 8px rgba(0, 0, 0, 0.2);
            transform: translateX(-110%);
            transition: transform 250ms ease-in-out;
            overflow-y: auto;
        }

        .mobile-group-panel.open {
            transform: translateX(0);
        }

        /* ensure desktop table hidden on small */
        @media (max-width: 767.98px) {
            #menunames {
                display: none !important;
            }

            .table-listncitem {
                width: 367px;
                left: 7% !important;
            }

            .table-tablepreviousnc {
                width: 367px;
                left: 7% !important;
            }
        }

        /* Menu Group Item Styling */
        .menugrpitem.list-group-item {
            cursor: pointer;
            padding: 12px 15px;
            border-left: 4px solid transparent;
            transition: all 0.2s ease;
            background: #f8f9fa;
            margin-bottom: 2px;
            border-radius: 4px;
        }

        .menugrpitem.list-group-item:hover {
            background: #e9ecef;
            border-left-color: #6c757d;
            transform: translateX(2px);
        }

        .menugrpitem.list-group-item.active {
            background: #6c757d;
            color: white;
            border-left-color: #6c757d;
            border-color: #6c757d;
        }

        /* Mobile panel specific styles */
        #mobileGroupPanel .menugrpitem.list-group-item {
            border-radius: 0;
            border: none;
            border-bottom: 1px solid #dee2e6;
            margin-bottom: 0;
        }

        #mobileGroupPanel .menugrpitem.list-group-item:last-child {
            border-bottom: none;
        }

        /* -------- Responsive Design -------- */

        /* ✅ Mobile view */
        @media (max-width: 600px) {
            #pendingkottbl {
                width: 90%;
                height: 100px;
                transition: transform 0.5s ease;
            }

            #pendingkottbl:hover {
                transform: translateX(40px);
                /* smaller slide on mobile */
            }
        }

        /* ✅ Tablet view */
        @media (min-width: 601px) and (max-width: 1024px) {
            #pendingkottbl {
                width: 70%;
                height: 110px;
            }

            #pendingkottbl:hover {
                transform: translateX(80px);
            }
        }

        /* Free Item Functionality Styles */
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

        #freeBtn:not(:disabled),
        #freeBtnMobile:not(:disabled) {
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
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ids = ['searchname', 'searchbar', 'kotremark']; // sab IDs ek array me
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

        $(document).ready(function() {
            // Handle mobile layout adjustments
            function adjustMobileLayout() {
                if (window.innerWidth <= 991) {
                    // Ensure table container has enough bottom margin for submit button
                    let buttonHeight = $('.button-container').outerHeight();
                    $('.table-container').css('margin-bottom', (buttonHeight + 20) + 'px');
                } else {
                    $('.table-container').css('margin-bottom', '');
                }
            }

            // Run on load and resize
            adjustMobileLayout();
            $(window).on('resize', adjustMobileLayout);
        });
        // Mobile group panel behavior
        $(function() {
            const $toggle = $('#mobileGroupToggle');
            const $panel = $('#mobileGroupPanel');
            const $close = $('#mobileGroupClose');

            // Open panel
            $toggle.on('click', function() {
                $panel.show().addClass('open');
            });
            $toggle.on('click', function(e) {
                // Prevent default form submission and stop propagation
                e.preventDefault();
                e.stopPropagation();
                $panel.show().addClass('open');
            });
            // Close panel
            $close.on('click', function(a) {
                a.preventDefault();
                a.stopPropagation();
                $panel.removeClass('open');
                setTimeout(() => $panel.hide(), 250);
            });

            // When a group is clicked in mobile panel, fetch items and hide panel
            $(document).on('click', '#mobileGroupList .menugrpitem', function() {
                const grpid = $(this).data('value');
                const dcode = $('#restcode').val();
                $('#searchname').val('');
                $('#searchbar').val('');
                fetchItemNames(`grpid=${grpid}&dcode=${dcode}&_token={{ csrf_token() }}`);
                // hide panel after selection
                $panel.removeClass('open');
                setTimeout(() => $panel.hide(), 250);
            });

            // Also keep desktop click binding (existing code expects .menugrpitem)
            // If needed, ensure newly added mobile list uses same class 'menugrpitem' so existing handlers work.
        });

        // ...existing code...
    </script>
    <script>
        function Simongoback() {
            window.location.href = `displaytable?dcode=${$('#fixrestcode').val()}`;
        }

        function reloadcurrentkot() {
            window.location.href = `kotentry?dcode=${$('#fixrestcode').val()}`;
        }

        $(document).ready(function() {
            var publicwaitercode;
            var itemHappyHourData = {};
            let posroomno = $('#posroomno').val();
            if (posroomno != '') {
                $('#goback').removeClass('none');
                setTimeout(() => {
                    $('#roomno').trigger('change');
                }, 1000);
            } else {
                $('#goback').addClass('none');
            }

            let selectedItemRow = null;

            function updateFreeButtonState() {
                let hasItems = $('#itemsdata tbody tr').length > 0;
                $('#freeBtn, #freeBtnMobile').prop('disabled', !hasItems);

                if (!hasItems) {
                    selectedItemRow = null;
                    $('#itemsdata tbody tr').removeClass('selected-for-free');
                }
            }

            function updateFreeUnfreeButtonState() {
                if (!selectedItemRow) {
                    $('#freeBtn, #freeBtnMobile, #unfreeBtn, #unfreeBtnMobile').prop('disabled', true);
                    $('#unfreeBtn, #unfreeBtnMobile').hide();
                    $('#freeBtn, #freeBtnMobile').show();
                    return;
                }

                let rateInput = selectedItemRow.find('.rateclass');
                let currentRate = parseFloat(rateInput.val());
                let isItemFree = currentRate === 0;

                if (isItemFree) {
                    $('#freeBtn, #freeBtnMobile').prop('disabled', true).hide();
                    $('#unfreeBtn, #unfreeBtnMobile').prop('disabled', false).show();
                } else {
                    $('#freeBtn, #freeBtnMobile').prop('disabled', false).show();
                    $('#unfreeBtn, #unfreeBtnMobile').prop('disabled', true).hide();
                }
            }

            $(document).on('click', '#itemsdata tbody tr', function() {
                if ($('#pendingyn').val() != '' || $('#ncoldyn').val() != '') {
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

            $('#freeBtn, #freeBtnMobile').on('click', function() {
                if (!selectedItemRow) {
                    pushNotify('warning', 'Free Item', 'Please select an item first by clicking on it',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                let rateInput = selectedItemRow.find('.rateclass');
                let currentRate = parseFloat(rateInput.val());

                if (currentRate === 0) {
                    pushNotify('info', 'Free Item', 'This item is already marked as free', 'fade', 300, '',
                        '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                Swal.fire({
                    title: 'Mark Item as Free?',
                    text: 'This will set the item rate to 0',
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
                        selectedItemRow.find('.rate-display').text('0');

                        selectedItemRow.removeClass('selected-for-free').addClass('free-item');

                        updateTotal();
                        updateFreeUnfreeButtonState();

                        pushNotify('success', 'Free Item', 'Item marked as free', 'fade', 300, '',
                            '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            $('#unfreeBtn, #unfreeBtnMobile').on('click', function() {
                if (!selectedItemRow) {
                    pushNotify('warning', 'Unfree Item', 'Please select an item first by clicking on it',
                        'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                let rateInput = selectedItemRow.find('.rateclass');
                let currentRate = parseFloat(rateInput.val());
                let originalRate = rateInput.data('original-rate');

                if (currentRate !== 0) {
                    pushNotify('info', 'Unfree Item', 'This item is not marked as free', 'fade', 300, '',
                        '', true, true, true, 2000, 20, 20, 'outline', 'right top');
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
                        selectedItemRow.find('.rate-display').text(originalRate);

                        selectedItemRow.removeClass('free-item selected-for-free');

                        updateTotal();
                        updateFreeUnfreeButtonState();

                        pushNotify('success', 'Unfree Item', 'Item rate restored', 'fade', 300, '',
                            '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            setInterval(updateFreeButtonState, 500);
            setInterval(updateFreeUnfreeButtonState, 500);

            $('#kotentryform').on('submit', function(e) {
                e.preventDefault();

                $('#submitBtn').prop('disabled', true).text('Processing...');

                let tbody = $('#itemsdata tbody tr');
                let reurl = `kotentry?dcode=${$('#fixrestcode').val()}`;
                if (posroomno != '') {
                    reurl = `displaytable?dcode=${$('#fixrestcode').val()}`;
                }

                if (tbody.index() < 0) {
                    $('#submitBtn').prop('disabled', false).text('Submit');
                    pushNotify('error', 'Kot Entry', 'Please Add 1 Item Atleaset', 'fade', 300, '', '',
                        true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                let nctypecheckbox = $('#showNcSelect');
                let ncoldyn = $('#ncoldyn');
                let pendingyn = $('#pendingyn');
                if (nctypecheckbox.is(':checked') && ncoldyn.val() == '') {
                    Swal.fire({
                        title: 'NC KOT',
                        input: 'text',
                        inputPlaceholder: 'Enter Reason',
                        text: 'Please specify Reason for NC KOT',
                        showCancelButton: true,
                        confirmButtonText: 'Submit',
                        showLoaderOnConfirm: true,
                        icon: 'info',
                        inputValidator: (value) => {
                            if (!value) {
                                return 'Reason is required';
                            }
                        }
                    }).then((result) => {
                        if (result.isConfirmed === true && result.isDismissed === false) {
                            let value = result.value;
                            $('#nckotreason').val(value);
                            var formData = $(this).serialize();
                            $.ajax({
                                type: 'POST',
                                url: '/kotstore',
                                data: formData,
                                success: function(response) {
                                    if (response.status === 'success') {
                                        let fetcheddocid = response.docid;
                                        pushNotify('success', 'Success', response
                                            .message, 'fade', 300, '', '', true,
                                            true, true, 5000, 20, 20, 'outline',
                                            'right top');
                                        Swal.fire({
                                            icon: 'success',
                                            title: 'KOT Entry',
                                            text: 'Do you want to print NC KOT',
                                            showCancelButton: true,
                                            confirmButtonText: 'Yes',
                                            cancelButtonText: 'No'
                                        }).then((result) => {
                                            if (result.isConfirmed === true) {
                                                let csrftoken =
                                                    '{{ csrf_token() }}';
                                                const printdata = {
                                                    'docid': fetcheddocid,
                                                    'printedit': 'N'
                                                };
                                                const options = {
                                                    method: 'POST',
                                                    headers: {
                                                        'Content-Type': 'application/json',
                                                        'X-CSRF-TOKEN': csrftoken
                                                    },
                                                    body: JSON.stringify(
                                                        printdata)
                                                };
                                                fetch('/sendprintdata', options)
                                                    .then(response => response
                                                        .json())
                                                    .then(data => {
                                                        pushNotify(
                                                            'success',
                                                            'NC KOT Entry',
                                                            data
                                                            .message,
                                                            'fade', 300,
                                                            '', '',
                                                            true, true,
                                                            true, 5000,
                                                            20, 20,
                                                            'outline',
                                                            'right top');
                                                        setTimeout(() => {
                                                            window
                                                                .location
                                                                .href =
                                                                reurl;
                                                        }, 500);
                                                    })
                                                    .catch(error => {
                                                        console.error(
                                                            'Error:',
                                                            error);
                                                        pushNotify('error',
                                                            'Error',
                                                            error
                                                            .message,
                                                            'fade', 300,
                                                            '', '',
                                                            true, true,
                                                            true, 5000,
                                                            20, 20,
                                                            'outline',
                                                            'right top');
                                                    });
                                            } else {
                                                setTimeout(() => {
                                                    window.location
                                                        .href = reurl;
                                                }, 500);
                                            }
                                        })
                                    } else if (response.status === 'error') {
                                        $('#submitBtn').prop('disabled', false).text(
                                            'Submit');
                                        pushNotify('error', 'Error', response.message,
                                            'fade', 300, '', '', true, true, true,
                                            5000, 20, 20, 'outline', 'right top');
                                    } else {
                                        $('#submitBtn').prop('disabled', false).text(
                                            'Submit');
                                        pushNotify('error', 'Error', response.message,
                                            'fade', 300, '', '', true, true, true,
                                            5000, 20, 20, 'outline', 'right top');
                                    }
                                },
                                error: function(xhr, status, error) {
                                    $('#submitBtn').prop('disabled', false).text(
                                        'Submit');
                                    console.log(error);
                                }
                            });
                        } else if (result.isDismissed && result.isConfirmed === false) {
                            $('#submitBtn').prop('disabled', false).text('Submit');
                            Swal.fire({
                                icon: 'error',
                                title: 'NC KOT',
                                text: 'You cancelled the submission!',
                                timer: 2000
                            });
                        }
                    });
                } else if (nctypecheckbox.is(':checked') && ncoldyn.val() == 'Y') {
                    Swal.fire({
                        title: 'Editing Reason',
                        icon: 'info',
                        input: 'text',
                        confirmButtontext: 'Submit',
                        showCancelButton: true,
                        text: 'Please specify reason for editing NC KOT!',
                        inputValidator: (value) => {
                            if (!value) {
                                return 'Reason is required';
                            }
                        }
                    }).then((result) => {
                        if (result.isConfirmed === true && result.isDismissed === false) {
                            let value = result.value;
                            $('#editingreasons').val(value);
                            var formData = $(this).serialize();
                            $.ajax({
                                type: 'POST',
                                url: '/kotstore',
                                data: formData,
                                success: function(response) {
                                    if (response.status === 'success') {
                                        let fetcheddocid = response.docid;
                                        pushNotify('success', 'Success', response
                                            .message, 'fade', 300, '', '', true,
                                            true, true, 5000, 20, 20, 'outline',
                                            'right top');
                                        Swal.fire({
                                            icon: 'success',
                                            title: 'KOT Entry',
                                            text: 'Do you want to print Old NC KOT',
                                            showCancelButton: true,
                                            confirmButtonText: 'Yes',
                                            cancelButtonText: 'No'
                                        }).then((result) => {
                                            if (result.isConfirmed === true) {
                                                let csrftoken =
                                                    '{{ csrf_token() }}';
                                                const printdata = {
                                                    'docid': fetcheddocid,
                                                    'printedit': 'N'
                                                };
                                                const options = {
                                                    method: 'POST',
                                                    headers: {
                                                        'Content-Type': 'application/json',
                                                        'X-CSRF-TOKEN': csrftoken
                                                    },
                                                    body: JSON.stringify(
                                                        printdata)
                                                };
                                                fetch('/sendprintdata', options)
                                                    .then(response => response
                                                        .json())
                                                    .then(data => {
                                                        pushNotify(
                                                            'success',
                                                            'Old NC KOT Entry',
                                                            data
                                                            .message,
                                                            'fade', 300,
                                                            '', '',
                                                            true, true,
                                                            true, 5000,
                                                            20, 20,
                                                            'outline',
                                                            'right top');
                                                        setTimeout(() => {
                                                            window
                                                                .location
                                                                .href =
                                                                reurl;
                                                        }, 500);
                                                    })
                                                    .catch(error => {
                                                        console.error(
                                                            'Error:',
                                                            error);
                                                        pushNotify('error',
                                                            'Error',
                                                            error
                                                            .message,
                                                            'fade', 300,
                                                            '', '',
                                                            true, true,
                                                            true, 5000,
                                                            20, 20,
                                                            'outline',
                                                            'right top');
                                                    });
                                            } else {
                                                setTimeout(() => {
                                                    window.location
                                                        .href = reurl;
                                                }, 500);
                                            }
                                        })
                                    } else if (response.status === 'error') {
                                        $('#submitBtn').prop('disabled', false).text(
                                            'Submit');
                                        pushNotify('error', 'Error', response.message,
                                            'fade', 300, '', '', true, true, true,
                                            5000, 20, 20, 'outline', 'right top');
                                    } else {
                                        $('#submitBtn').prop('disabled', false).text(
                                            'Submit');
                                        pushNotify('error', 'Error', response.message,
                                            'fade', 300, '', '', true, true, true,
                                            5000, 20, 20, 'outline', 'right top');
                                    }
                                },
                                error: function(xhr, status, error) {
                                    $('#submitBtn').prop('disabled', false).text(
                                        'Submit');
                                    console.log(error);
                                }
                            });
                        } else if (result.isDismissed && result.isConfirmed === false) {
                            $('#submitBtn').prop('disabled', false).text('Submit');
                            Swal.fire({
                                icon: 'error',
                                title: 'Editing Reason',
                                text: 'You cancelled the submission!',
                                timer: 2000
                            });
                        }
                    });
                } else if (!nctypecheckbox.is(':checked') && pendingyn.val() == 'Y' && ncoldyn.val() ==
                    '') {
                    Swal.fire({
                        title: 'Pending KOT',
                        text: 'Please specify reason for editing!',
                        input: 'text',
                        icon: 'info',
                        showCancelButton: true,
                        confirmButtonText: 'Submit',
                        inputValidator: (value) => {
                            if (!value) {
                                return 'Reason is required';
                            }
                        }
                    }).then((result) => {
                        if (result.isConfirmed === true && result.isDismissed === false) {
                            let value = result.value;
                            $('#editingreasons').val(value);
                            let formElement = document.querySelector('#kotentryform');
                            let formdata = new FormData(formElement);
                            formdata.append('_token', '{{ csrf_token() }}');

                            $.ajax({
                                url: "{{ route('kotstore') }}",
                                method: "POST",
                                data: formdata,
                                processData: false,
                                contentType: false,
                                success: function(response) {
                                    if (response.status == 'success') {
                                        let fetcheddocid = $('#oldpendingdocid').val();
                                        let printeditkot = $('#printeditkot').val();
                                        Swal.fire({
                                            icon: 'success',
                                            title: 'KOT Entry',
                                            text: 'KOT Submitted Successfully!',
                                        }).then((sr) => {
                                            if (result.isConfirmed) {
                                                if (printeditkot !=
                                                    'No Print') {
                                                    Swal.fire({
                                                        icon: 'success',
                                                        title: 'KOT Entry',
                                                        text: 'Do you want to print KOT',
                                                        showCancelButton: true,
                                                        confirmButtonText: 'Yes',
                                                        cancelButtonText: 'No'
                                                    }).then((result) => {
                                                        if (result
                                                            .isConfirmed ===
                                                            true) {
                                                            let csrftoken =
                                                                '{{ csrf_token() }}';
                                                            const
                                                                printdata = {
                                                                    'docid': fetcheddocid,
                                                                    'printedit': 'Y'
                                                                };
                                                            const
                                                                options = {
                                                                    method: 'POST',
                                                                    headers: {
                                                                        'Content-Type': 'application/json',
                                                                        'X-CSRF-TOKEN': csrftoken
                                                                    },
                                                                    body: JSON
                                                                        .stringify(
                                                                            printdata
                                                                            )
                                                                };
                                                            fetch('/sendprintdata',
                                                                    options
                                                                    )
                                                                .then(
                                                                    response =>
                                                                    response
                                                                    .json()
                                                                    )
                                                                .then(
                                                                    data => {
                                                                        setTimeout
                                                                            (() => {
                                                                                    window
                                                                                        .location
                                                                                        .href =
                                                                                        reurl;
                                                                                },
                                                                                500
                                                                                );
                                                                    })
                                                                .catch(
                                                                    error => {
                                                                        console
                                                                            .error(
                                                                                'Error:',
                                                                                error
                                                                                );
                                                                        pushNotify
                                                                            ('error',
                                                                                'Error',
                                                                                error
                                                                                .message,
                                                                                'fade',
                                                                                300,
                                                                                '',
                                                                                '',
                                                                                true,
                                                                                true,
                                                                                true,
                                                                                5000,
                                                                                20,
                                                                                20,
                                                                                'outline',
                                                                                'right top'
                                                                                );
                                                                    });
                                                        } else {
                                                            setTimeout(
                                                                () => {
                                                                    window
                                                                        .location
                                                                        .href =
                                                                        reurl;
                                                                },
                                                                500);
                                                        }
                                                    })
                                                }
                                            }
                                        })
                                    }
                                },
                                error: function(error) {
                                    // Re-enable button on AJAX error
                                    $('#submitBtn').prop('disabled', false).text(
                                        'Submit');
                                    Swal.fire({
                                        icon: 'error',
                                        title: 'KOT',
                                        text: error.responseJSON.message
                                    })
                                }
                            });
                        } else if (result.isDismissed && result.isConfirmed === false) {
                            // Re-enable button if user cancels
                            $('#submitBtn').prop('disabled', false).text('Submit');
                            Swal.fire({
                                icon: 'error',
                                title: 'Editing Reason',
                                text: 'You cancelled the submission!',
                                timer: 2000
                            });
                        }
                    });
                } else {
                    var formData = $(this).serialize();
                    $.ajax({
                        type: 'POST',
                        url: '/kotstore',
                        data: formData,
                        success: function(response) {
                            if (response.status === 'success') {
                                let fetcheddocid = response.docid;
                                pushNotify('success', 'Success', response.message, 'fade', 300,
                                    '', '', true, true, true, 5000, 20, 20, 'outline',
                                    'right top');
                                Swal.fire({
                                    icon: 'success',
                                    title: 'KOT Entry',
                                    text: 'Do you want to print KOT',
                                    showCancelButton: true,
                                    confirmButtonText: 'Yes',
                                    cancelButtonText: 'No'
                                }).then((result) => {
                                    if (result.isConfirmed === true) {
                                        let csrftoken = '{{ csrf_token() }}';
                                        const printdata = {
                                            'docid': fetcheddocid,
                                            'printedit': 'N'
                                        };
                                        const options = {
                                            method: 'POST',
                                            headers: {
                                                'Content-Type': 'application/json',
                                                'X-CSRF-TOKEN': csrftoken
                                            },
                                            body: JSON.stringify(printdata)
                                        };
                                        fetch('/sendprintdata', options)
                                            .then(response => response.json())
                                            .then(data => {
                                                pushNotify('success', 'KOT Entry',
                                                    data.message, 'fade', 300,
                                                    '', '', true, true, true,
                                                    5000, 20, 20, 'outline',
                                                    'right top');
                                                setTimeout(() => {
                                                    window.location.href =
                                                        reurl;
                                                }, 200);
                                            })
                                            .catch(error => {
                                                console.error('Error:', error);
                                                pushNotify('error', 'Error', error
                                                    .message, 'fade', 300, '',
                                                    '', true, true, true, 5000,
                                                    20, 20, 'outline',
                                                    'right top');
                                            });
                                    } else {
                                        setTimeout(() => {
                                            window.location.href = reurl;
                                        }, 200);
                                    }
                                })
                            } else if (response.status === 'error') {
                                // Re-enable button on error response
                                $('#submitBtn').prop('disabled', false).text('Submit');
                                pushNotify('error', 'Error', response.message, 'fade', 300, '',
                                    '', true, true, true, 5000, 20, 20, 'outline',
                                    'right top');
                            } else {
                                // Re-enable button on error response
                                $('#submitBtn').prop('disabled', false).text('Submit');
                                pushNotify('error', 'Error', response.message, 'fade', 300, '',
                                    '', true, true, true, 5000, 20, 20, 'outline',
                                    'right top');
                            }
                        },
                        error: function(xhr, status, error) {
                            // Re-enable button on AJAX error
                            $('#submitBtn').prop('disabled', false).text('Submit');
                            console.log(error);
                        }
                    });
                }
            });
            let offsetX, offsetY, isDragging = false;
            $('.table-listncitem, .table-tablepreviousnc').on('mousedown', function(e) {
                isDragging = true;
                offsetX = e.clientX - $(this).offset().left;
                offsetY = e.clientY - $(this).offset().top;
            });

            $(document).on('mousemove', function(e) {
                if (isDragging) {
                    $('.table-listncitem, .table-tablepreviousnc').css({
                        left: e.clientX - offsetX,
                        top: e.clientY - offsetY
                    });
                }
            });

            $(document).on('mouseup', function() {
                isDragging = false;
            });

            // Mobile button click handlers
            $('#mobilePendingKot').click(function() {
                // Smooth scroll to top
                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');
                pendingkot();
            });

            $('#mobileNcPreviousKot').click(function() {
                // Smooth scroll to top
                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');
                ncpreviouskot();
            });

            // Desktop button click handlers
            $('#desktopPendingKot').click(function() {
                pendingkot();
            });

            $('#desktopNcPreviousKot').click(function() {
                ncpreviouskot();
            });

            let clickCount = 0;

            function pendingkot(tableno) {
                let tablepreviousnc = $('.table-tablepreviousnc');
                tablepreviousnc.css('display', 'none');
                let previousnckottbl = $('#tablepreviousnc tbody');
                previousnckottbl.empty();
                clickCount++;
                let tablelistitem = $('.table-listncitem');
                let pendingkottbl = $('#pendingkottbl tbody');

                $('#closeatablebtn').click(function() {
                    tablelistitem.css('display', 'none');
                    pendingkottbl.empty();
                });

                if (clickCount % 2 === 1) {
                    let dcode = $('#restcode').val();
                    let pendingkotxhr = new XMLHttpRequest();
                    pendingkotxhr.open('POST', '/fetchpendingkot', true);
                    pendingkotxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    pendingkotxhr.onreadystatechange = function() {
                        if (pendingkotxhr.readyState === 4) {
                            if (pendingkotxhr.status === 200) {
                                let results = JSON.parse(pendingkotxhr.responseText);
                                let data;
                                pendingkottbl.empty();
                                results.forEach(function(item, index) {
                                    let vdate = new Date(item.vdate);
                                    let formatteddate = vdate.getDate() + '-' + (vdate.getMonth() + 1) +
                                        '-' + vdate.getFullYear();
                                    data = `<tr data-roomno="${item.roomno}" data-vno="${item.vno}">
                                            <td docid="${item.docid}" data-id="${item.roomno}" data-value="${item.vno}" class="kotno" id="kotno${index}">${item.vno}</td>
                                            <td class="kotitemname" id="kotitemname${index}">${item.itemnaam}</td>
                                            <td class="kotvdate" id="kotvdate${index}">${formatteddate}</td>
                                            <td class="kotvtime" id="kotvtime${index}">${item.vtime}</td>
                                            <td class="kotwaiter" id="kotwaiter${index}">${item.waiterbhai ?? ''}</td>
                                            <td class="kottable" id="kottable${index}">${item.roomno}</td>
                                            <td class="voidyn" id="voidyn${index}">${item.voidyn == 'N' ? 'No' : 'Yes'}</td>
                                            <td class="kotqty" id="kotqty${index}">${item.qty}</td>
                                            </tr>`;
                                    pendingkottbl.append(data);
                                });
                                tablelistitem.css('display', 'block');
                            } else {
                                console.error('Error fetching Pending Kot data:', pendingkotxhr.statusText);
                            }
                        }
                    };
                    pendingkotxhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
                } else {
                    tablelistitem.css('display', 'none');
                    pendingkottbl.empty();
                }
            }

            let clickCount1 = 0;

            function ncpreviouskot() {
                let tablelistitem = $('.table-listncitem');
                tablelistitem.css('display', 'none');
                let pendingkottbl = $('#pendingkottbl tbody');
                pendingkottbl.empty();
                clickCount1++;
                let tablepreviousnc = $('.table-tablepreviousnc');
                let previousnckottbl = $('#tablepreviousnc tbody');

                $('#closeatablebtnnc').click(function() {
                    tablepreviousnc.css('display', 'none');
                    previousnckottbl.empty();
                });

                if (clickCount1 % 2 === 1) {
                    let dcode = $('#restcode').val();
                    let previousnckotxhr = new XMLHttpRequest();
                    previousnckotxhr.open('POST', '/fetchncpreviouskot', true);
                    previousnckotxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    previousnckotxhr.onreadystatechange = function() {
                        if (previousnckotxhr.readyState === 4) {
                            if (previousnckotxhr.status === 200) {
                                let results = JSON.parse(previousnckotxhr.responseText);
                                let row, data;
                                previousnckottbl.empty();
                                results.forEach(function(item, index) {
                                    row = $('<tr>');
                                    let vdate = new Date(item.vdate);
                                    let formatteddate = vdate.getDate() + '-' + (vdate.getMonth() + 1) +
                                        '-' + vdate.getFullYear();
                                    data = `
                                                                    <td data-docid="${item.docid}" data-id="${item.roomno}" data-value="${item.vno}" class="kotnonc" id="kotnonc${index}">${item.vno}</td>
                                                                    <td class="kotitemname" id="kotitemname${index}">${item.itemnaam}</td>
                                                                    <td class="kotvdate" id="kotvdate${index}">${formatteddate}</td>
                                                                    <td class="kotvtime" id="kotvtime${index}">${item.vtime}</td>
                                                                    <td class="kotwaiter" id="kotwaiter${index}">${item.waiterbhai ?? ''}</td>
                                                                    <td class="kottable" id="kottable${index}">${item.roomno}</td>
                                                                    <td class="voidyn" id="voidyn${index}">${item.voidyn == 'N' ? 'No' : 'Yes'}</td>
                                                                    <td class="kotqty" id="kotqty${index}">${item.qty}</td>
                                                                `;
                                    row.append(data);
                                    previousnckottbl.append(row);
                                });
                                tablepreviousnc.css('display', 'block');
                            } else {
                                console.error('Error fetching Pending Nc Kot data:', previousnckotxhr
                                    .statusText);
                            }
                        }
                    };
                    previousnckotxhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
                } else {
                    tablepreviousnc.css('display', 'none');
                    previousnckottbl.empty();
                }
            }

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
                $('#pendingFab').fadeOut(500);
                let roomno = $(this).val();
                let restcode = $('#fixrestcode').val();
                let guestdtxhr = new XMLHttpRequest();
                guestdtxhr.open('POST', '/guestdtfetchkot', true);
                guestdtxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                guestdtxhr.onreadystatechange = function() {
                    if (guestdtxhr.readyState === 4 && guestdtxhr.status === 200) {
                        let results = JSON.parse(guestdtxhr.responseText);
                        $('#guestdt').text(results.concat);
                        $('#pax').val(results.pax);
                        let guestdetails = results.guestdetails;
                        // if(guestdetails.compliment)
                    }
                }
                guestdtxhr.send(`roomno=${roomno}&_token={{ csrf_token() }}`);

                let oldwaitername = new XMLHttpRequest();
                oldwaitername.open('POST', '/oldwaitername', true);
                oldwaitername.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                oldwaitername.onreadystatechange = function() {
                    if (oldwaitername.readyState === 4 && oldwaitername.status === 200) {
                        let results = JSON.parse(oldwaitername.responseText);
                        $('#ordertype').text(results.ordertype);
                        $('#waiter').val(results.waiter.waiter);
                        if (typeof results.waiter.waiter == 'undefined') {
                            $('#waiter').val(publicwaitercode);
                        }
                    }
                }
                oldwaitername.send(`roomno=${roomno}&restcode=${restcode}&_token={{ csrf_token() }}`);

                if (roomno != '') {

                    $.ajax({
                        url: "{{ url('pendingitemsfortable') }}",
                        method: "POST",
                        data: {
                            roomno: roomno,
                            restcode: restcode,
                            _token: '{{ csrf_token() }}'
                        },
                        success: function(response) {
                            if (response.success === true) {
                                let rows = '';

                                response.items.forEach(item => {
                                    rows += `
                                            <tr>
                                                <td>${item.vno}</td>
                                                <td>${item.itemnaam}</td>
                                                <td>${dmy(item.vdate)}</td>
                                                <td>${item.vtime}</td>
                                                <td>${item.waiterbhai}</td>
                                                <td>${item.roomno}</td>
                                                <td>${item.voidyn == 'N' ? 'No' : 'Yes'}</td>
                                                <td>${item.qty}</td>
                                            </tr>
                                        `;
                                });
                                const modal = new bootstrap.Modal(document.getElementById(
                                    'prevtabledisplay'));
                                modal.show();
                                $('#prevtabledisplay').find('.modal-title').text(
                                    `Pending Items for Table ${roomno}`);
                                $('#prevtabledisplay').find('table tbody').empty().html(rows);
                            }
                        },
                        error: function(xhr, status, error) {
                            console.error('Error fetching pending items for table:', error);
                        }
                    })
                }
            });

            $(document).on('click', '#pendingFab', function() {
                const modal = new bootstrap.Modal(document.getElementById('prevtabledisplay'));
                modal.show();
            });

            $(document).on('shown.bs.modal', '#prevtabledisplay', function() {
                $('#pendingFab').fadeOut(500);
            });

            $(document).on('hide.bs.modal', '#prevtabledisplay', function() {
                $('#pendingFab').fadeIn(500);
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

                // Creating XMLHttpRequest for department name fetch
                let departnamexhr = new XMLHttpRequest();
                departnamexhr.open('POST', '/departnamefetch', true);
                departnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                departnamexhr.onreadystatechange = function() {
                    if (departnamexhr.readyState === 4 && departnamexhr.status === 200) {
                        let results = JSON.parse(departnamexhr.responseText);
                        let buttonid = $('#outletchangebtn');
                        buttonid.text(results);
                    }
                }
                departnamexhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);

                // Clearing previous data
                $('#menunames tbody').find('tr:not(:first)').remove();
                $('#itemnames tbody').empty();

                // Creating XMLHttpRequest for menu names fetch
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
                            row.append(
                                `<td class="menugrpitem" data-value="${item.code}">${item.name}</td>`
                                );
                            menunametbody.append(row);
                            $('.menugrpitem').click(function() {
                                let grpid = $(this).data('value');
                                let dcode = $('#restcode').val();
                                $('#searchname').val('');
                                $('#searchbar').val('');
                                fetchItemNames(
                                    `grpid=${grpid}&dcode=${dcode}&_token={{ csrf_token() }}`
                                    );
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

            var shortname = $('#shortname').val();
            var intervalId = setInterval(krsno(shortname), 1000);


            $('#showNcSelect').change(function() {
                if ($(this).is(':checked')) {
                    $('#nctype').prop('disabled', false).attr('required', true);
                    $('#ncdiv').css('display', 'block');
                    $('#kottype').text('NC KOT');
                    clearInterval(intervalId);
                    nrsno(shortname);
                    intervalId = setInterval(nrsno(shortname), 1000);
                    $('#ordertype').text('');

                    let nckotper = parseFloat($('#nckotper').val()) || 0.00;

                    $('.rateclass').each(function() {
                        let currentrate = parseFloat($(this).val()) || 0.00;

                        if (!$(this).data('original-rate')) {
                            $(this).data('original-rate', currentrate);
                        }

                        let newrate = (currentrate * nckotper) / 100;
                        newrate = Math.ceil(newrate);
                        $(this).val(newrate);
                        $(this).siblings('span.rate-display').text(newrate);
                    });
                    updateTotal();
                } else {
                    $('#nctype').prop('disabled', true).attr('required', false);
                    $('#ncdiv').css('display', 'none').val('');
                    $('#kottype').text('Standard KOT');
                    clearInterval(intervalId);
                    krsno(shortname);
                    intervalId = setInterval(krsno(shortname), 1000);
                    $('#ordertype').text('New Order');

                    $('.rateclass').each(function() {
                        let originalRate = $(this).data('original-rate') || 0.00;
                        $(this).val(originalRate);
                        $(this).siblings('span.rate-display').text(originalRate);
                    });
                    updateTotal();
                }
            });

            function krsno(shortname) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", '/getmaxkrsno', true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var data = JSON.parse(xhr.responseText);
                        $("#krsno").text(data);
                    }
                };
                xhr.send(`shortname=${shortname}&_token={{ csrf_token() }}`);
            }

            function nrsno(shortname) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", '/getmaxnrsno', true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var data = JSON.parse(xhr.responseText);
                        $("#krsno").text(data);
                    }
                };
                xhr.send(`shortname=${shortname}&_token={{ csrf_token() }}`);
            }

            // Handle menu item clicks and active state
            $(document).on('click', '.menugrpitem', function() {

                // Remove active class from all items
                $('.menugrpitem').removeClass('active');

                // Add active class to clicked item
                $(this).addClass('active');

                // Your existing click handler code
                const grpid = $(this).data('value');
                const dcode = $('#restcode').val();
                $('#searchname').val('');
                $('#searchbar').val('');
                fetchItemNames(`grpid=${grpid}&dcode=${dcode}&_token={{ csrf_token() }}`);
            });


            $('#menunames td').click(function() {
                if ($(this).hasClass('bgmenutd')) {
                    $(this).removeClass('bgmenutd').find('.fas.fa-arrow-right').remove();
                } else {
                    $('#menunames td').removeClass('bgmenutd').find('.fas.fa-arrow-right').remove();
                    $(this).addClass('bgmenutd').append('<i class="fas fa-arrow-right ml-2"></i>');
                }
            });
            let addedItemCodes = [];

            function updateTotal() {
                var total = 0;
                $('#itemsdata tbody tr').each(function() {
                    var rate = parseFloat($(this).find('td:eq(3)').text());
                    var quantity = parseFloat($(this).find('.qtyitem').val());
                    if (quantity < 0) {
                        quantity = 1;
                        $(this).find('.qtyitem').val(quantity);
                    }
                    total += rate * quantity;
                });
                $('#totalAmount').text(total.toFixed(2));
            }

            function handleHappyHourLogic(itemcode, happyhourData) {
                if (!happyhourData) {
                    console.log('No happy hour data for item:', itemcode);
                    return;
                }

                console.log('Happy Hour Data:', happyhourData);
                itemHappyHourData[itemcode] = happyhourData;

                let allItemRows = $('#itemsdata tbody tr').filter(function() {
                    return $(this).find('input[name^="itemcode"]').val() == itemcode;
                });

                if (!allItemRows.length) {
                    console.log('No item rows found for item:', itemcode);
                    return;
                }

                let totalCurrentQty = 0;
                allItemRows.each(function() {
                    let qty = parseInt($(this).find('.qtyitem').val()) || 0;
                    totalCurrentQty += qty;
                });

                let requiredQty = parseInt(happyhourData.qty) || 0;
                let freeItemCode = happyhourData.freeitem;
                let freeQtyPerSet = parseInt(happyhourData.freeqty) || 0;

                console.log(
                    `Item: ${itemcode}, Total Current Qty: ${totalCurrentQty}, Required Qty: ${requiredQty}, Free Item: ${freeItemCode}, Free Qty Per Set: ${freeQtyPerSet}`
                    );

                let setsEarned = Math.floor(totalCurrentQty / requiredQty);
                let totalFreeQtyRequired = setsEarned * freeQtyPerSet;

                console.log(`Sets Earned: ${setsEarned}, Total Free Qty Required: ${totalFreeQtyRequired}`);

                let existingFreeItemRow = $('#itemsdata tbody tr').filter(function() {
                    return $(this).find('input[name^="itemcode"]').val() == freeItemCode;
                });

                if (totalFreeQtyRequired > 0) {
                    if (existingFreeItemRow.length) {
                        console.log('Updating existing free item quantity');
                        existingFreeItemRow.find('.qtyitem').val(totalFreeQtyRequired);
                    } else {
                        console.log('Adding new free item');
                        let freeItemName = happyhourData.freeitemname;
                        totaladditems++;

                        let freeItemRow = `
                                            <tr>
                                                <td style="white-space: nowrap;">
                                                    <span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span>
                                                    <input name="itemcode${totaladditems}" id="itemcode${totaladditems}" value="${freeItemCode}" type="hidden">
                                                    <input name="itemname${totaladditems}" class="itemnameclass" id="itemname${totaladditems}" value="${freeItemName}" type="hidden">
                                                    <span class="tditemname" data-value="${freeItemCode}">${freeItemName}</span>
                                                </td>
                                                <td><input readonly name="description${totaladditems}" placeholder="Enter" id="description${totaladditems}" class="form-control description inone" type="text"></td>
                                                <td>
                                                    <div class="panelinc">
                                                        <button type="button" class="decrement btn">-</button>
                                                        <input name="quantity${totaladditems}" id="quantity${totaladditems}" class="form-control qtyitem" type="text" value="${totalFreeQtyRequired}">
                                                        <button type="button" class="increment btn">+</button>
                                                    </div>
                                                </td>
                                                <td><input original-rate="0.00" class="rateclass" name="rate${totaladditems}" id="rate${totaladditems}" value="0.00" type="hidden"><span class="rate-display">0.00</span></td>
                                                <td>
                                                    <input type="text" name="voidyn${totaladditems}" id="voidyn${totaladditems}" value="No" class="form-control voidyn" readonly>
                                                </td>
                                            </tr>
                                            `;
                        $('#itemsdata tbody').append(freeItemRow);
                        $('#totalitems').val(totaladditems);
                        $('#addeditems').text(totaladditems).css('font-size', 'large');
                        setTimeout(() => {
                            $('#addeditems').css('font-size', 'small');
                        }, 1000);
                    }
                } else {
                    console.log('No free items required, removing if exists');
                    if (existingFreeItemRow.length) {
                        existingFreeItemRow.remove();
                        totaladditems--;
                        $('#totalitems').val(totaladditems);
                        $('#addeditems').text(totaladditems);
                    }
                }
                updateTotal();
            }

            $(document).on('input', '.qtyitem', function() {
                updateTotal();
            });

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
                    let bordercolor = (item.dishtype == 1) ? 'green' : (item.dishtype == 2) ? 'red' : (item
                        .dishtype == 3) ? 'yellow' : 'green';
                    let cellId = `item-cell-${item.RestCode || 'rest'}-${itemcde}-${index}`;
                    let cellSelector = `#${cellId}`;
                    let itemdir = getItemImageMarkup(item, cellSelector);

                    row.append(`<td id="${cellId}" style="position: relative; border-left: 3px solid ${bordercolor};" data-itemrestcode="${item.RestCode}" data-id="${item.rateofitem}" class="tditemname" data-value="${itemcde}">
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
                };
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

            // ===== Search by name (9999 = Quick Add Item popup) =====
            $('#searchname').on('input', function() {
                let nameinput = $(this).val().trim();
                let dcode = $('#restcode').val();
                $('#searchbar').val('');

                if (nameinput === '9999') {
                    clearTimeout(itemSearchDebounceTimer);
                    openQuickItem();
                    return;
                }

                if (!nameinput) {
                    clearTimeout(itemSearchDebounceTimer);
                    return;
                }

                debounceFetchItemNames(
                    `name=${encodeURIComponent(nameinput)}&dcode=${encodeURIComponent(dcode)}&_token={{ csrf_token() }}`
                    );
            });

            // ===== Search by barcode (9999 = Quick Add Item popup) =====
            $('#searchbar').on('input', function() {
                let barcodeinput = $(this).val().trim();
                let dcode = $('#restcode').val();
                $('#searchname').val('');

                if (barcodeinput === '9999') {
                    clearTimeout(itemSearchDebounceTimer);
                    openQuickItem();
                    return;
                }

                if (!barcodeinput) {
                    clearTimeout(itemSearchDebounceTimer);
                    return;
                }

                debounceFetchItemNames(
                    `barcodeinput=${encodeURIComponent(barcodeinput)}&dcode=${encodeURIComponent(dcode)}&_token={{ csrf_token() }}`
                    );
            });

            // ===== Quick Add Item (9999) =====
            let quickItemModal = null;

            function fillSelect($sel, rows, placeholder) {
                $sel.empty().append(`<option value="">${placeholder}</option>`);
                rows.forEach(r => $sel.append($('<option>').val(r.code).text(r.name)));
            }

            function openQuickItem() {
                $('#searchname, #searchbar').val('');
                $('#quickItemForm')[0].reset();
                $('#qi_restname').val($('#outletchangebtn').text().trim());

                $.post('/quickitem/masters', {
                    restcode: $('#restcode').val(),
                    _token: '{{ csrf_token() }}'
                }).done(function(res) {
                    fillSelect($('#qi_unit'), res.units, 'Select Unit');
                    fillSelect($('#qi_group'), res.groups, 'Select Group');
                    fillSelect($('#qi_cat'), res.categories, 'Select Category');
                    fillSelect($('#qi_kitchen'), res.kitchens, 'Select Kitchen');

                    if (!quickItemModal) {
                        quickItemModal = new bootstrap.Modal(document.getElementById('quickItemModal'));
                    }
                    quickItemModal.show();
                }).fail(function() {
                    pushNotify('error', 'Item', 'Unable to load masters', 'fade', 300, '', '', true, true,
                        true, 3000, 20, 20, 'outline', 'right top');
                });
            }

            $('#quickItemModal').on('shown.bs.modal', function() {
                $('#qi_name').trigger('focus');
            });

            $('#qi_exit, #quickItemX').on('click', function() {
                if (quickItemModal) quickItemModal.hide();
            });

            $('#quickItemForm').on('submit', function(e) {
                e.preventDefault();
                $('#qi_save').prop('disabled', true);

                $.post('/quickitem/store',
                    $(this).serialize() + '&restcode=' + encodeURIComponent($('#restcode').val()) +
                    '&_token={{ csrf_token() }}'
                ).done(function(res) {
                    quickItemModal.hide();
                    pushNotify('success', 'Item', res.message, 'fade', 300, '', '', true, true,
                        true, 2000, 20, 20, 'outline', 'right top');
                    $('#searchname').val(res.name);
                    fetchItemNames(
                        `name=${encodeURIComponent(res.name)}&dcode=${encodeURIComponent($('#restcode').val())}&_token={{ csrf_token() }}`
                        );
                }).fail(function(xhr) {
                    let msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON
                        .message : 'Unable to save item';
                    pushNotify('error', 'Item', msg, 'fade', 300, '', '', true, true, true, 4000,
                        20, 20, 'outline', 'right top');
                }).always(function() {
                    $('#qi_save').prop('disabled', false);
                });
            });

            // Fetch Item details by clicking itemname list grid
            let totaladditems = parseInt($('#addeditems').text()) || 0;

            $('tbody').on('click', '.tditemname', function() {

                if ($('#pendingyn').val() != '' || $('#ncoldyn').val() != '') {
                    return;
                }

                let itemcode = $(this).data('value');
                let itemrate = $(this).data('id');
                let itemname = $(this).text().trim();
                let nckotper = $('#nckotper').val() || 0.00;
                let itemrestcode = $(this).data('itemrestcode');

                let newitemrate = 0.00;
                if (nckotper > 0 && $('#showNcSelect').is(':checked')) {
                    newitemrate = (itemrate * nckotper) / 100;
                } else {
                    newitemrate = itemrate;
                }

                let existingItem = $('#itemsdata tbody tr').filter(function() {
                    return $(this).find('input[name^="itemcode"]').val() === itemcode;
                });

                if (existingItem.length) {
                    let quantityInput = existingItem.find('.qtyitem');
                    let quantity = parseInt(quantityInput.val());
                    quantityInput.val(quantity + 1);

                    $.ajax({
                        url: '/fetchitemdetails',
                        method: 'POST',
                        data: {
                            itemcode: itemcode,
                            itemrestcode: $(this).data('itemrestcode'),
                            _token: '{{ csrf_token() }}'
                        },
                        success: function(results) {
                            if (results.happyhour) {
                                handleHappyHourLogic(itemcode, results.happyhour);
                            }
                        }
                    });

                    updateTotal();
                } else {
                    let itemsdata = $('#itemsdata tbody');
                    let tbodyLength = itemsdata.find('tr').length;
                    let index = tbodyLength > 0 ? tbodyLength + 1 : 1;

                    totaladditems++;
                    $('#totalitems').val(totaladditems);
                    $('#addeditems').text(totaladditems).css('font-size', 'large');
                    setTimeout(() => {
                        $('#addeditems').css('font-size', 'small');
                    }, 1000);

                    let newRow = `
                            <tr>
                                <td style="white-space: nowrap;">
                                    <span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span>
                                    <input name="itemcode${index}" id="itemcode${index}" value="${itemcode}" type="hidden">
                                    <input name="itemrestcode${index}" id="itemrestcode${index}" value="${itemrestcode}" type="hidden">
                                    <input name="itemname${index}" class="itemnameclass" id="itemname${index}" value="${itemname}" type="hidden">
                                    <span class="tditemnames" data-value="${itemcode}">${itemname}</span>
                                </td>
                                <td><input readonly name="description${index}" placeholder="Enter" id="description${index}" class="form-control description inone" type="text"></td>
                                <td>
                                    <div class="panelinc">
                                        <button type="button" class="decrement btn">-</button>
                                        <input name="quantity${index}" id="quantity${index}" class="form-control qtyitem" type="text" value="1">
                                        <button type="button" class="increment btn">+</button>
                                    </div>
                                </td>
                                <td><input original-rate="${Math.ceil(newitemrate)}" class="rateclass" name="rate${index}" id="rate${index}" value="${Math.ceil(newitemrate)}" type="hidden"><span class="rate-display">${Math.ceil(newitemrate)}</span></td>
                                <td>
                                    <input type="text" name="voidyn${index}" id="voidyn${index}" value="No" class="form-control voidyn" readonly>
                                </td>
                            </tr>
                            `;

                    itemsdata.append(newRow);

                    if (itemsdata.find('tr').length > 0) {
                        $('#tfoot').css('display', 'table-footer-group');
                    }

                    itemrestcode = $(this).data('itemrestcode');
                    // Fetch additional details asynchronously
                    $.ajax({
                        url: '/fetchitemdetails',
                        method: 'POST',
                        data: {
                            itemcode: itemcode,
                            itemrestcode: itemrestcode,
                            _token: '{{ csrf_token() }}'
                        },
                        success: function(results) {
                            let newRow = itemsdata.find('tr:last');
                            let happyhour = results.happyhour;

                            if (happyhour != null) {
                                handleHappyHourLogic(itemcode, happyhour);
                            }

                            updateTotal();
                        }
                    });

                    pushNotify('success', 'Kot Entry', totaladditems + ' Item Added', 'fade', 300, '', '',
                        true, true, true, 500, 20, 20, 'outline', 'right top');
                }

                scrollToBottom();
            });

            // Dynamic function to fetch and populate KOT items
            function loadPendingKotItems(vno, docid, roomno) {
                $('#oldpendingdocid').val(docid);
                $('#roomno').val(roomno);
                $('#roomno').trigger('change');
                $('#orderno').text('Modify Order');
                $('#krsno').text(vno);
                $('#itemsdata tbody').empty();
                let tablelistitem = $('.table-listncitem');
                tablelistitem.css('display', 'none');
                scrollToBottom();
                $('#tfoot').css('display', 'table-footer-group');
                $('#ncpreviouskot').prop('disabled', true);
                $('#showNcSelect').prop('disabled', true);
                $('#pendingyn').val('Y');

                let itemnamexhr = new XMLHttpRequest();
                itemnamexhr.open('POST', '/fetchitemdetailsbbyvno', true);
                itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                itemnamexhr.onreadystatechange = function() {
                    if (itemnamexhr.readyState === 4 && itemnamexhr.status === 200) {
                        let results = JSON.parse(itemnamexhr.responseText);
                        let totalitems = results.length;
                        totaladditems = totalitems;
                        $('#addeditems').text(totalitems);
                        $('#totalitems').val(totalitems);
                        $('#addeditems').css('font-size', 'large');
                        let printnum = totalitems.toString();
                        pushNotify('success', 'KOT Entry', printnum + ' Item Added', 'fade', 300, '', '', true,
                            true, true, 3000, 20, 20, 'outline', 'right top');
                        setTimeout(() => {
                            $('#addeditems').css('font-size', 'small');
                        }, 1000);

                        results.forEach((item, index) => {
                            let tbodyLength = $('#itemsdata tbody tr').length;
                            let rowIndex = index + 1;
                            $('#pax').val(item.pax);
                            $('#waiter').val(item.waiter);
                            $('#kotremark').val(item.remarks);
                            $('#oldvnopendingkot').val(item.vno);
                            $('#olddocidpendingkot').val(item.docid);
                            $('#vtype').val(item.vtype);
                            let data = `<tr>
                                    <td style="white-space: nowrap;">
                                        <input name="itemcode${rowIndex}" id="itemcode${rowIndex}" value="${item.item}" type="hidden">
                                        <input name="itemrestcode${rowIndex}" id="itemrestcode${rowIndex}" value="${item.restcode}" type="hidden">
                                        <input name="itemname${rowIndex}" class="itemnameclass" id="itemname${rowIndex}" value="${item.Name}" type="hidden">
                                        <input name="kotdocidrow${rowIndex}" class="" id="kotdocidrow${rowIndex}" value="${item.docid}" type="hidden">
                                        ${item.Name}
                                    </td>
                                    <td><input readonly name="description${rowIndex}" value="${item.description}" placeholder="Enter" id="description${rowIndex}" class="form-control description inone" type="text"></td>
                                    <td>
                                        <div class="panelinc">
                                            <button type="button" class="decrement btn">-</button>
                                            <input name="quantity${rowIndex}" id="quantity${rowIndex}" class="form-control qtyitem" type="text" value="${item.qty}">
                                            <button type="button" class="increment btn">+</button>
                                        </div>
                                    </td>
                                    <td><input class="rateclass" name="rate${rowIndex}" id="rate${rowIndex}" value="${Math.round(item.rate)}" type="hidden">${Math.round(item.rate)}</td>
                                    <td>
                                        <input type="text" name="voidyn${rowIndex}" id="voidyn${rowIndex}" value="${item.voidyn == 'Y' ? 'Yes' : 'No'}" class="form-control voidyn" readonly>
                                    </td>
                                </tr>`;

                            $('#itemsdata tbody').append(data);
                        });
                        let sum = 0;
                        $('.rateclass').each(function() {
                            let ratevalue = parseFloat($(this).val());
                            sum += ratevalue;
                        });
                        $('#totalAmount').text(sum.toFixed(2));
                    }
                };
                itemnamexhr.send(`vno=${vno}&docid=${docid}&_token={{ csrf_token() }}`);
            }

            $('tbody').on('click', '.kotno', function() {
                let vno = $(this).data('value');
                let roomno = $(this).data('id');
                let docid = $(this).attr('docid');
                loadPendingKotItems(vno, docid, roomno);
            });

            if ($('#pvno').val() != '') {
                $('#mobileGoBack, #desktopGoBack').removeClass('none');
                $('#desktopPendingKot').trigger('click');
                setTimeout(function() {
                    $('#pendingkottbl tbody tr').each(function() {
                        if ($(this).data('roomno') != $('#proomno').val()) {
                            $(this).css('display', 'none');
                        }
                    });
                }, 1500);
            }

            $('tbody').on('click', '.kotnonc', function() {
                let tbody = $('#itemsdata tbody');
                tbody.empty();
                let vno = $(this).data('value');
                let docid = $(this).data('docid');
                $('#orderno').text('Modify Order');
                $('#krsno').text(vno);
                let tablelistitem = $('.table-tablepreviousnc');
                tablelistitem.css('display', 'none');
                scrollToBottom();
                $('#tfoot').css('display', 'table-footer-group');
                $('#pendingkot').prop('disabled', true);

                $('#showNcSelect').click(function() {
                    $(this).prop('checked', !$(this).prop('checked'));
                });
                let dcode = $('#restcode').val();
                let itemnamexhr = new XMLHttpRequest();
                itemnamexhr.open('POST', '/fetchitempreviousnc', true);
                itemnamexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                itemnamexhr.onreadystatechange = function() {
                    if (itemnamexhr.readyState === 4 && itemnamexhr.status === 200) {
                        let results = JSON.parse(itemnamexhr.responseText);
                        $('#ncoldyn').val('Y');
                        $('#showNcSelect').prop('checked', true);
                        $('#nctype').prop('disabled', false);
                        $('#nctype').attr('required', true);
                        $('#ncdiv').css('display', 'block');
                        let totalitems = results.length;
                        totaladditems = totalitems;
                        $('#addeditems').text(totalitems);
                        $('#totalitems').val(totalitems);
                        $('#addeditems').css('font-size', 'large');
                        results.forEach((item, index) => {
                            let tbodyLength = $('#itemsdata tbody tr').length;
                            let rowIndex = index + 1;
                            publicwaitercode = item.waiter;
                            $('#roomno').val(item.roomno);
                            $('#roomno').trigger('change');
                            $('#pax').val(item.pax);
                            $('#waiter').val(item.waiter);
                            $('#kotremark').val(item.remarks);
                            $('#oldvnopendingkot').val(item.vno);
                            $('#olddocidpendingkot').val(item.docid);
                            $('#nctype').val(item.nctype);
                            $('#vtype').val(item.vtype);
                            let data = `<tr>
                                <td style="white-space: nowrap;">
                                    <input name="itemcode${rowIndex}" id="itemcode${rowIndex}" value="${encodeURIComponent(item.item)}" type="hidden">
                                    <input name="itemrestcode${rowIndex}" id="itemrestcode${rowIndex}" value="${item.restcode}" type="hidden">
                                    <input name="itemname${rowIndex}" id="itemname${rowIndex}" value="${encodeURIComponent(item.Name)}" type="hidden">
                                    <input name="kotdocidrow${rowIndex}" class="" id="kotdocidrow${rowIndex}" value="${item.docid}" type="hidden">
                                    ${item.Name}
                                </td>
                                <td><input readonly name="description${rowIndex}" value="${encodeURIComponent(item.description)}" placeholder="Enter" id="description${rowIndex}" class="form-control description inone" type="text"></td>
                                <td>
                                    <div class="panelinc">
                                        <button type="button" class="decrement btn">-</button>
                                        <input name="quantity${rowIndex}" id="quantity${rowIndex}" class="form-control qtyitem" type="text" value="${item.qty}">
                                        <button type="button" class="increment btn">+</button>
                                    </div>
                                </td>
                                <td><input class="rateclass" name="rate${rowIndex}" id="rate${rowIndex}" value="${Math.round(item.rate)}" type="hidden">${Math.round(item.rate)}</td>
                                <td>
                                    <input type="text" name="voidyn${rowIndex}" id="voidyn${rowIndex}" value="${item.voidyn == 'Y' ? 'Yes' : 'No'}" class="form-control voidyn" readonly>
                                </td>
                            </tr>`;

                            $('#itemsdata tbody').append(data);
                        });
                        setTimeout(() => {
                            $('#addeditems').css('font-size', 'small');
                        }, 1000);
                        let sum = 0;
                        $('.rateclass').each(function() {
                            let ratevalue = parseFloat($(this).val());
                            sum += ratevalue;
                        });
                        $('#totalAmount').text(sum.toFixed(2));
                    }
                };
                itemnamexhr.send(`vno=${vno}&docid=${docid}&dcode=${dcode}&_token={{ csrf_token() }}`);
            });


            // Previous NC Kot List Table Fetch End

            $('#itemsdata tbody').on('click', '.removeItem', function() {
                let removedRow = $(this).closest('tr');
                let removedItemCode = removedRow.find('input[name^="itemcode"]').val();

                // Clear selection if the removed item was selected
                if (selectedItemRow && selectedItemRow.is(removedRow)) {
                    selectedItemRow = null;
                }

                removedRow.remove();
                updateTotal();
                totaladditems--;
                $('#addeditems').text(totaladditems);
                $('#totalitems').val(totaladditems);
                pushNotify('success', 'Kot Entry', totaladditems + ' Item Left', 'fade', 300, '', '', true,
                    true, true, 500, 20, 20, 'outline', 'right top');
                $('#addeditems').css('font-size', 'large');
                setTimeout(() => {
                    $('#addeditems').css('font-size', 'small');
                }, 1000);

                // Recalculate happy hour logic for the removed item if it has happy hour data
                if (itemHappyHourData[removedItemCode]) {
                    handleHappyHourLogic(removedItemCode, itemHappyHourData[removedItemCode]);
                }

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
                        calculateDiscount();
                    }, 500);
                });

                // Update free button state
                updateFreeButtonState();
            });

            const inputs = document.querySelectorAll('.voidyn');

            $(document).on('click', '.voidyn', function() {
                var input = $(this);
                if (input.val() === 'No') {
                    input.val('Yes');
                } else {
                    input.val('No');
                }
            });

            // Increment and Decrement functionality
            $(document).on('click', '.increment', function() {
                var counter = $(this).siblings('.qtyitem');
                var value = parseInt(counter.val());
                counter.val(value + 1);

                let currentRow = $(this).closest('tr');
                let itemcode = currentRow.find('input[name^="itemcode"]').val();

                if (itemHappyHourData[itemcode]) {
                    handleHappyHourLogic(itemcode, itemHappyHourData[itemcode]);
                }

                updateTotal();
            });

            $(document).on('click', '.decrement', function() {
                var counter = $(this).siblings('.qtyitem');
                var value = parseInt(counter.val());
                if (value > 1) {
                    counter.val(value - 1);

                    let currentRow = $(this).closest('tr');
                    let itemcode = currentRow.find('input[name^="itemcode"]').val();

                    if (itemHappyHourData[itemcode]) {
                        handleHappyHourLogic(itemcode, itemHappyHourData[itemcode]);
                    }

                    updateTotal();
                }
            });

            // Description input
            $(document).on('click', '.description', function() {
                var inputElement = $(this);
                let currow = inputElement.closest('tr');
                let itemnameelement = currow.find('.itemnameclass');
                let itemname = itemnameelement.val();
                let newitemname = itemname.replace(/%20/g, ' ');
                let title = `Enter Description For ${newitemname}`;
                var currentValue = inputElement.val();
                // console.log(currentValue);

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


            setTimeout(function() {
                $('#favourite').trigger('click');
            }, 100);
        });
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

            var xhrsession = new XMLHttpRequest();
            xhrsession.open("POST", "{{ route('getsessionmast') }}");
            xhrsession.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhrsession.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
            xhrsession.onreadystatechange = function() {
                if (xhrsession.readyState === 4 && xhrsession.status === 200) {
                    var data = JSON.parse(xhrsession.responseText);
                    $("#sessionmast").text(data);
                }
            };
            xhrsession.send(`curtime=${currentTime}&_token={{ csrf_token() }}`);

        }

        updateTime();
        setInterval(() => {
            updateTime();
        }, 60000);
    </script>
@endsection
