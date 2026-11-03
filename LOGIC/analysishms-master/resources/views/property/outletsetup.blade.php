@extends('property.layouts.main')
@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.2.1/css/dataTables.dataTables.css">
    <div class="content-body">

        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('outletmasterstore') }}" name="outletsetupform" id="outletsetupform" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <!-- Heading 1: Outlet Details -->
                                    <div class="col-md-6 boxbg">
                                        <div class="astrogeeksagar">
                                            <div style="display: flex; position: relative; align-items: center;">
                                                <h4>Outlet Details</h4>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="name">Outlet Name</label>
                                                <input autocomplete="off" type="text" class="form-control" id="name" name="name" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="outletNature">Outlet Nature</label>
                                                <select class="form-control" id="outletNature" name="outletNature" required>
                                                    <option value="">Select</option>
                                                    <option value="Outlet">Outlet</option>
                                                    <option value="Room Service">Room Service</option>
                                                    <option value="Production">Production</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="short_name">Short Name</label>
                                                <input type="text" autocomplete="off"
                                                    class="form-control" id="short_name" name="short_name"
                                                    required>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="mobileNo">Mobile No</label>
                                                <input type="number" class="form-control" id="mobileNo" name="mobileNo"
                                                    required>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="kot">KOT</label>
                                                <select class="form-control" id="kot" name="kot" required>
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="splitBill">Split Bill</label>
                                                <select class="form-control" id="splitBill" name="splitBill">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="orderBooking">Order Booking</label>
                                                <select class="form-control" id="orderBooking" name="orderBooking">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="barCodeApp">Bar Code App</label>
                                                <select class="form-control" id="barCodeApp" name="barCodeApp">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="labelPrinting">Label Printing</label>
                                                <select class="form-control" id="labelPrinting" name="labelPrinting">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>

                                            <div class="col-md-6">
                                                <label for="divcode">Div Code</label>
                                                <input type="text" class="form-control" name="divcode" id="divcode">
                                            </div>

                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="email">Email</label>
                                                <input type="text" class="form-control" name="email" id="email">
                                            </div>

                                            <div class="col-md-6">
                                                <label for="floor">Floor</label>
                                                <select class="form-control" id="floor" name="floor">
                                                    <option value="">Select</option>
                                                    @foreach ($floors as $item)
                                                        <option value="{{ $item->code }}">{{ $item->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="timing">Timing</label>
                                                <input type="text" class="form-control" name="timing" id="timing">
                                            </div>

                                        </div>

                                        <div class="otdiff">
                                            <span class="text-danger">Only Fill When Outlet Is Different From Hotel.</span>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="companyname">Company Name</label>
                                                    <input type="text" class="form-control" name="companyname" id="companyname">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="companygstin">GSTIN</label>
                                                    <input type="text" class="form-control" name="companygstin" id="companygstin">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-12">
                                                    <label for="compaddress">Address</label>
                                                    <textarea class="form-control" name="compaddress" id="compaddress" rows="3"></textarea>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="companylogo">Company Logo</label>
                                                    <input type="file" class="form-control" name="companylogo" id="companylogo" accept=".jpg,.png,.jpeg">
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <!-- Heading 2: KOT Printing Information -->
                                    <div class="col-md-6 boxbg">
                                        <div class="astrogeeksagar">
                                            <div style="display: flex; position: relative; align-items: center;">
                                                <h4>KOT Printing Information</h4>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="orderBookingTokenPrint">Cen.KOT or Order Booking Token
                                                    Print</label>
                                                <select class="form-control" id="orderBookingTokenPrint"
                                                    name="orderBookingTokenPrint">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="printingType">Printing Type</label>
                                                <select class="form-control" id="printingType" name="printingType">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="printingPathTypeTxt">Printing Path Type</label>
                                                <input type="text" class="form-control" id="printingPathTypeTxt"
                                                    name="printingPathTypeTxt">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="NOfKOT">No of KOT</label>
                                                <input type="number" class="form-control" id="NOfKOT" name="NOfKOT"
                                                    oninput="replaceValue(this, 9)">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="currentTokenNosale">Current Token No</label>
                                                <input type="number" maxlength="10" class="form-control"
                                                    id="currentTokenNosale" name="currentTokenNosale">
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <!-- Heading 3: Sale Bill Setup -->
                                    <div class="col-md-6 boxbg">
                                        <div class="astrogeeksagar">
                                            <div style="display: flex; position: relative; align-items: center;">
                                                <h4>Sale Bill Setup</h4>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="partyName">Party Name</label>
                                                <select class="form-control" id="partyName" name="partyName">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="memberInfo">Member Info</label>
                                                <select class="form-control" id="memberInfo" name="memberInfo">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="customerInfo">Customer Info</label>
                                                <select class="form-control" id="customerInfo" name="customerInfo">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="freeItemApp">Free Item App</label>
                                                <select class="form-control" id="freeItemApp" name="freeItemApp">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="cover">Cover</label>
                                                <select class="form-control" id="cover" name="cover">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="autoSettlement">Auto Settlement</label>
                                                <select class="form-control" id="autoSettlement" name="autoSettlement">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="printOnSave">Print on Save</label>
                                                <select class="form-control" id="printOnSave" name="printOnSave">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="autoResetToken">Auto Reset Token</label>
                                                <select class="form-control" id="autoResetToken" name="autoResetToken">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="mobileNoyn">Mobile No</label>
                                                <select class="form-control" id="mobileNoyn" name="mobileNoyn">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="currentTokenNo">Current Token No</label>
                                                <input type="number" class="form-control" name="currentTokenNo"
                                                    id="currentTokenNo">
                                            </div>
                                        </div>

                                    </div>

                                    <!-- Heading 4: Sale Bill Printing Information -->
                                    <div class="col-md-6 boxbg">
                                        <div class="astrogeeksagar">
                                            <div style="display: flex; position: relative; align-items: center;">
                                                <h4>Sale Bill Printing Information</h4>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="compTitle">Comp Title</label>
                                                <select class="form-control" id="compTitle" name="compTitle">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="outletTitle">Outlet Title</label>
                                                <select class="form-control" id="outletTitle" name="outletTitle">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="NOfBills">No. of Bills</label>
                                                <input type="number" oninput="replaceValue(this, 9)" class="form-control"
                                                    id="NOfBills" name="NOfBills">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="discountPercentPrint">Discount% Print</label>
                                                <select class="form-control" id="discountPercentPrint"
                                                    name="discountPercentPrint">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="printTokenBefore">Print Token Before</label>
                                                <select class="form-control" id="printTokenBefore" name="printTokenBefore">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="printTokenAfter">Print Token After</label>
                                                <select class="form-control" id="printTokenAfter" name="printTokenAfter">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="printTokenNo">Print Token No</label>
                                                <select class="form-control" id="printTokenNo" name="printTokenNo">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="groupDiscount">Group Discount</label>
                                                <select class="form-control" id="groupDiscount" name="groupDiscount">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="paymentqr">UPI ID</label>
                                                <input type="text" class="form-control" id="paymentqr" name="paymentqr">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="header1">Header 1</label>
                                                <input type="text" class="form-control" id="header1" name="header1">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="header2">Header 2</label>
                                                <input type="text" class="form-control" id="header2" name="header2">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="header3">Header 3</label>
                                                <input type="text" class="form-control" id="header3" name="header3">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="header4">Header 4</label>
                                                <input type="text" class="form-control" id="header4" name="header4">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="slogan1">Slogan 1</label>
                                                <input type="text" class="form-control" id="slogan1" name="slogan1">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="slogan2">Slogan 2</label>
                                                <input type="text" class="form-control" id="slogan2" name="slogan2">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="tokenHeader">Token Header</label>
                                                <input type="text" class="form-control" id="tokenHeader" name="tokenHeader">
                                            </div>

                                            <div class="col-md-6">
                                                <label for="fssaicode">FSSAI Code</label>
                                                <input type="text" class="form-control" id="fssaicode" name="fssaicode">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <!-- Heading 5: Order Booking Printing Information -->
                                    <div class="col-md-6 boxbg">
                                        <div class="astrogeeksagar">
                                            <div style="display: flex; position: relative; align-items: center;">
                                                <h4>Order Booking Printing Information</h4>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="firstCopyRemark">1st Copy Remark</label>
                                            <input type="text" class="form-control" name="firstCopyRemark"
                                                id="firstCopyRemark">
                                        </div>
                                        <div class="mb-3">
                                            <label for="secondCopyRemark">2nd Copy Remark</label>
                                            <input type="text" class="form-control" name="secondCopyRemark"
                                                id="secondCopyRemark">
                                        </div>
                                    </div>

                                    <!-- Heading 6: Scheme Details -->
                                    <div class="col-md-6 boxbg">
                                        <div class="astrogeeksagar">
                                            <div style="display: flex; position: relative; align-items: center;">
                                                <h4>Scheme Details</h4>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="schemename">Name</label>
                                            <input type="text" class="form-control" name="schemename" id="schemename">
                                        </div>
                                        <div class="mb-3">
                                            <label for="discscheme">Discount %</label>
                                            <input type="text" class="form-control" name="discscheme" id="discscheme">
                                        </div>
                                    </div>

                                    <!-- Heading 7: Size Details -->
                                    <div class="col-md-6 boxbg">
                                        <div class="astrogeeksagar">
                                            <div style="display: flex; position: relative; align-items: center;">
                                                <h4>Outlet Display Size</h4>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="height">Height & Width</label>
                                                <input type="number" value="3" class="form-control" name="height"
                                                    id="height" oninput="this.value = this.value.slice(0, 2)">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="font_size">Font Size</label>
                                                <input type="number" value="16"
                                                    oninput="this.value = this.value.slice(0, 2)" class="form-control"
                                                    name="font_size" id="font_size">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="col">Column</label>
                                                <input type="number" value="2" oninput="this.value = this.value.slice(0, 2)"
                                                    class="form-control" name="col" id="col">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="borderspace">Border-Spacing</label>
                                                <input type="number" value="2" oninput="this.value = this.value.slice(0, 2)"
                                                    class="form-control" name="borderspace" id="borderspace">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>

                        <div class="table-responsive">
                            <table id="depart"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Short Name</th>
                                        <th>Nature</th>
                                        <th>Action</th>
                                        <th class="none"></th>
                                        <th class="none"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td id="tdname_{{ $sn }}">{{ $row->name }}</td>
                                            <td>{{ $row->short_name }}</td>
                                            <td>{{ $row->nature }}</td>
                                            <td class="ins">
                                                <button data-toggle="modal" data-target="#updateModal"
                                                    data-dcode="{{ $row->dcode }}"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>
                                                {{-- <a href="{{ route('deleteoutlet', ['sn' => $row->id, 'dcode' => $row->dcode, 'short_name' => $row->short_name]) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a> --}}
                                                <a data-dcode="{{ $row->dcode }}" class="btn btn-sm btn-info qrcodebtn" href="javascript:void()"><i class="fa-solid fa-qrcode"></i> QR Code</a>
                                            </td>
                                            <td class="none">{{ $row->id }}</td>
                                            <td class="none">{{ $row->dcode }}</td>
                                        </tr>
                                        @php $sn++; @endphp
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Outlet <span class="text-dpink"
                            id="upouttext"></span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" action="{{ route('outletsetupupdate') }}" method="POST" name="outletsetupupdate" id="outletsetupupdate" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="upoutletname" id="upoutletname">
                        <div class="row">
                            <!-- Heading 1: Outlet Details -->
                            <div class="col-md-6 boxbg">
                                <div class="astrogeeksagar">
                                    <div style="display: flex; position: relative; align-items: center;">
                                        <h4>Outlet Details</h4>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="umobileNo">Mobile No</label>
                                        <input type="number" class="form-control" id="umobileNo" name="umobileNo" required>
                                    </div>
                                    <input type="hidden" name="udcode" id="udcode">
                                    <input type="hidden" id="rest_type" name="rest_type">
                                    <div class="col-md-6">
                                        <label for="splitBill">Split Bill</label>
                                        <select class="form-control" id="usplitBill" name="usplitBill">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uorderBooking">Order Booking</label>
                                        <select class="form-control" id="uorderBooking" name="uorderBooking">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ubarCodeApp">Bar Code App</label>
                                        <select class="form-control" id="ubarCodeApp" name="ubarCodeApp">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="ulabelPrinting">Label Printing</label>
                                        <select class="form-control" id="ulabelPrinting" name="ulabelPrinting">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uoutletNature">Outlet Nature</label>
                                        <select class="form-control" id="uoutletNature" name="uoutletNature">
                                            <option value="">Select</option>
                                            <option value="Room Service">Room Service</option>
                                            <option value="Outlet">Outlet</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="updivcode">Div Code</label>
                                        <input type="text" class="form-control" name="updivcode" id="updivcode">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="upemail">Email</label>
                                        <input type="text" class="form-control" name="upemail" id="upemail">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="upfloor">Floor</label>
                                        <select class="form-control" id="upfloor" name="upfloor">
                                            <option value="">Select</option>
                                            @foreach ($floors as $item)
                                                <option value="{{ $item->code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uptiming">Timing</label>
                                        <input type="text" class="form-control" name="uptiming" id="uptiming">
                                    </div>

                                </div>

                                <div class="otdiff">
                                    <span class="text-danger">Only Fill When Outlet Is Different From Hotel.</span>
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <label for="upcompanyname">Company Name</label>
                                            <input type="text" class="form-control" name="upcompanyname" id="upcompanyname">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="upcompanygstin">GSTIN</label>
                                            <input type="text" class="form-control" name="upcompanygstin" id="upcompanygstin">
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-md-12">
                                            <label for="upcompaddress">Address</label>
                                            <textarea class="form-control" name="upcompaddress" id="upcompaddress" rows="3"></textarea>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <label for="upcompanylogo">Company Logo</label>
                                            <input type="hidden" class="form-control" name="oldcompanylogo" id="oldcompanylogo">
                                            <input type="file" class="form-control" name="upcompanylogo" id="upcompanylogo" accept=".jpg,.png,.jpeg">
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- Heading 2: KOT Printing Information -->
                            <div class="col-md-6 boxbg">
                                <div class="astrogeeksagar">
                                    <div style="display: flex; position: relative; align-items: center;">
                                        <h4>KOT Printing Information</h4>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="orderBookingTokenPrint">Cen.KOT or Order Booking Token
                                            Print</label>
                                        <select class="form-control" id="uorderBookingTokenPrint"
                                            name="uorderBookingTokenPrint">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uprintingType">Printing Type</label>
                                        <select class="form-control" id="uprintingType" name="uprintingType">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uprintingPathTypeTxt">Printing Path Type</label>
                                        <input type="text" class="form-control" id="uprintingPathTypeTxt"
                                            name="uprintingPathTypeTxt">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uNOfKOT">No of KOT</label>
                                        <input type="number" class="form-control" id="uNOfKOT" name="uNOfKOT"
                                            oninput="replaceValue(this, 9)">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="ucurrentTokenNo">Current Token No</label>
                                        <input type="number" maxlength="10" class="form-control" id="ucurrentTokenNo"
                                            name="ucurrentTokenNo">
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <!-- Heading 3: Sale Bill Setup -->
                            <div class="col-md-6 boxbg">
                                <div class="astrogeeksagar">
                                    <div style="display: flex; position: relative; align-items: center;">
                                        <h4>Sale Bill Setup</h4>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="upartyName">Party Name</label>
                                        <select class="form-control" id="upartyName" name="upartyName">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="umemberInfo">Member Info</label>
                                        <select class="form-control" id="umemberInfo" name="umemberInfo">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="ucustomerInfo">Customer Info</label>
                                        <select class="form-control" id="ucustomerInfo" name="ucustomerInfo">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ufreeItemApp">Free Item App</label>
                                        <select class="form-control" id="ufreeItemApp" name="ufreeItemApp">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="ucover">Cover</label>
                                        <select class="form-control" id="ucover" name="ucover">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uautoSettlement">Auto Settlement</label>
                                        <select class="form-control" id="uautoSettlement" name="uautoSettlement">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uprintOnSave">Print on Save</label>
                                        <select class="form-control" id="uprintOnSave" name="uprintOnSave">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uautoResetToken">Auto Reset Token</label>
                                        <select class="form-control" id="uautoResetToken" name="uautoResetToken">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="umobileNoyn">Mobile No</label>
                                        <select class="form-control" id="umobileNoyn" name="umobileNoyn">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ucurrentTokenNosale">Current Token No</label>
                                        <input type="number" class="form-control" name="ucurrentTokenNosale"
                                            id="ucurrentTokenNosale">
                                    </div>
                                </div>

                            </div>

                            <!-- Heading 4: Sale Bill Printing Information -->
                            <div class="col-md-6 boxbg">
                                <div class="astrogeeksagar">
                                    <div style="display: flex; position: relative; align-items: center;">
                                        <h4>Sale Bill Printing Information</h4>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="ucompTitle">Comp Title</label>
                                        <select class="form-control" id="ucompTitle" name="ucompTitle">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uoutletTitle">Outlet Title</label>
                                        <select class="form-control" id="uoutletTitle" name="uoutletTitle">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uNOfBills">No. of Bills</label>
                                        <input type="number" oninput="replaceValue(this, 9)" class="form-control"
                                            id="uNOfBills" name="uNOfBills">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="udiscountPercentPrint">Discount% Print</label>
                                        <select class="form-control" id="udiscountPercentPrint"
                                            name="udiscountPercentPrint">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uprintTokenBefore">Print Token Before</label>
                                        <select class="form-control" id="uprintTokenBefore" name="uprintTokenBefore">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uprintTokenAfter">Print Token After</label>
                                        <select class="form-control" id="uprintTokenAfter" name="uprintTokenAfter">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uprintTokenNo">Print Token No</label>
                                        <select class="form-control" id="uprintTokenNo" name="uprintTokenNo">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ugroupDiscount">Group Discount</label>
                                        <select class="form-control" id="ugroupDiscount" name="ugroupDiscount">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uppaymentqr">UPI ID</label>
                                        <input type="text" class="form-control" id="uppaymentqr" name="uppaymentqr">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uheader1">Header 1</label>
                                        <input type="text" class="form-control" id="uheader1" name="uheader1">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uheader2">Header 2</label>
                                        <input type="text" class="form-control" id="uheader2" name="uheader2">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uheader3">Header 3</label>
                                        <input type="text" class="form-control" id="uheader3" name="uheader3">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uheader4">Header 4</label>
                                        <input type="text" class="form-control" id="uheader4" name="uheader4">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uslogan1">Slogan 1</label>
                                        <input type="text" class="form-control" id="uslogan1" name="uslogan1">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uslogan2">Slogan 2</label>
                                        <input type="text" class="form-control" id="uslogan2" name="uslogan2">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="utokenHeader">Token Header</label>
                                        <input type="text" class="form-control" id="utokenHeader" name="utokenHeader">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="ufssaicode">FSSAI Code</label>
                                        <input type="text" class="form-control" id="ufssaicode" name="ufssaicode">
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <!-- Heading 5: Order Booking Printing Information -->
                            <div class="col-md-6 boxbg">
                                <div class="astrogeeksagar">
                                    <div style="display: flex; position: relative; align-items: center;">
                                        <h4 style="font-size: medium;">Order Booking Printing Information</h4>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="ufirstCopyRemark">1st Copy Remark</label>
                                    <input type="text" class="form-control" name="ufirstCopyRemark" id="ufirstCopyRemark">
                                </div>
                                <div class="mb-3">
                                    <label for="usecondCopyRemark">2nd Copy Remark</label>
                                    <input type="text" class="form-control" name="usecondCopyRemark" id="usecondCopyRemark">
                                </div>
                            </div>

                            <!-- Heading 6: Scheme Details -->
                            <div class="col-md-6 boxbg">
                                <div class="astrogeeksagar">
                                    <div style="display: flex; position: relative; align-items: center;">
                                        <h4>Scheme Details</h4>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="uschemename">Name</label>
                                    <input type="text" class="form-control" name="uschemename" id="uschemename">
                                </div>
                                <div class="mb-3">
                                    <label for="udiscscheme">Discount %</label>
                                    <input type="text" class="form-control" name="udiscscheme" id="udiscscheme">
                                </div>
                            </div>

                            <!-- Heading 7: Size Details -->
                            <div class="col-md-6 boxbg">
                                <div class="astrogeeksagar">
                                    <div style="display: flex; position: relative; align-items: center;">
                                        <h4>Outlet Display Size</h4>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="uheight">Height & Width</label>
                                        <input type="number" class="form-control" name="uheight" id="uheight"
                                            oninput="this.value = this.value.slice(0, 2)">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ufont_size">Font Size</label>
                                        <input type="number" oninput="this.value = this.value.slice(0, 2)"
                                            class="form-control" name="ufont_size" id="ufont_size">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="ucol">Column</label>
                                        <input type="number" oninput="this.value = this.value.slice(0, 2)"
                                            class="form-control" name="ucol" id="ucol">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uborderspace">Border-Spacing</label>
                                        <input type="number" oninput="this.value = this.value.slice(0, 2)"
                                            class="form-control" name="uborderspace" id="uborderspace">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center mt-2 mb-2">
                            <button id="updateBtn" type="submit" class="btn btn-primary">Update <i
                                    class="fa-solid fa-file-export"></i></button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <script>
        // NC Type Name
        // document.addEventListener('DOMContentLoaded', function() {
        // var name = document.getElementById('name');
        // var namelist = document.getElementById('namelist');
        // var currentLiIndex = -1;
        // name.addEventListener('keydown', function(event) {
        //     if (event.key === 'ArrowDown') {
        //         event.preventDefault();
        //         var liElements = namelist.querySelectorAll('li');
        //         currentLiIndex = (currentLiIndex + 1) % liElements.length;
        //         if (liElements.length > 0) {
        //             name.value = liElements[currentLiIndex].textContent;
        //         }
        //     }
        // });
        // name.addEventListener('keyup', function() {
        //     var cid = this.value;
        //     var xhr = new XMLHttpRequest();
        //     xhr.open('POST', '/gettablenames', true);
        //     xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        //     xhr.onreadystatechange = function() {
        //         if (xhr.readyState === 4 && xhr.status === 200) {
        //             namelist.innerHTML = xhr.responseText;
        //             namelist.style.display = 'block';
        //         }
        //     };
        //     xhr.send('cid=' + cid + '&_token=' + '{{ csrf_token() }}');

        // });
        // $(document).on('click', function(event) {
        //     if (!$(event.target).closest('li').length) {
        //         namelist.style.display = 'None';
        //     }
        // });
        // $(document).on('click', '#namelist li', function() {
        //     $('#name').val($(this).text());
        //     namelist.style.display = 'None';
        // });
        // });

        $(document).ready(function() {
            // handleFormSubmission('#outletsetupform', '#submitBtn', 'outletmasterstore');
            // handleFormSubmission('#outletsetupupdate', '#updateBtn', 'outletsetupupdate');


            $(".editBtn").click(function() {
                var cid = $(this).data('dcode');
                if (!cid) {
                    pushNotify('error', 'Outlet Setup', 'Unable to read the outlet code. Please try again.', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    return;
                }
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '{{ url('getupdatedata') }}', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState !== 4) {
                        return;
                    }
                    if (xhr.status !== 200) {
                        var message = 'Unable to load outlet details. Please try again.';
                        try {
                            message = JSON.parse(xhr.responseText).message || message;
                        } catch (e) {}
                        pushNotify('error', 'Outlet Setup', message, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        return;
                    }
                    const data = JSON.parse(xhr.responseText);
                    document.getElementById('udcode').value = cid;
                    document.getElementById('upouttext').textContent = data.name;
                    document.getElementById('upoutletname').value = data.name;
                    document.getElementById('umobileNo').value = data.mobile_no;
                    document.getElementById('usplitBill').value = data.split_bill;
                    document.getElementById('ulabelPrinting').value = data.label_printing;
                    document.getElementById('uorderBooking').value = data.order_booking;
                    document.getElementById('uoutletNature').value = data.nature;
                    document.getElementById('upcompanyname').value = data.companyname;
                    document.getElementById('upcompaddress').value = data.companyaddress;
                    document.getElementById('upcompanygstin').value = data.gstin;
                    document.getElementById('oldcompanylogo').value = data.logo;
                    document.getElementById('uppaymentqr').value = data.paymentqr || '';
                    document.getElementById('ubarCodeApp').value = data.barcode_app;
                    document.getElementById('uorderBookingTokenPrint').value = data.token_print;
                    document.getElementById('uprintingType').value = data.print_type;
                    document.getElementById('uprintingPathTypeTxt').value = data.ckot_print_path;
                    document.getElementById('uNOfKOT').value = data.no_of_kot;
                    document.getElementById('ucurrentTokenNo').value = data.cur_token_no_kot;
                    document.getElementById('upartyName').value = data.party_name;
                    document.getElementById('umemberInfo').value = data.member_info;
                    document.getElementById('ucustomerInfo').value = data.cust_info;
                    document.getElementById('ufreeItemApp').value = data.free_item_app;
                    document.getElementById('ucover').value = data.cover_mandatory;
                    document.getElementById('uautoSettlement').value = data.auto_settlement;
                    document.getElementById('uprintOnSave').value = data.print_on_save;
                    document.getElementById('uautoResetToken').value = data.auto_reset_token;
                    document.getElementById('umobileNoyn').value = data.mobile_no_mandatory;
                    document.getElementById('ucurrentTokenNosale').value = data.cur_token_no;
                    document.getElementById('ucompTitle').value = data.company_title;
                    document.getElementById('uoutletTitle').value = data.outlet_title;
                    document.getElementById('uNOfBills').value = data.no_of_bill;
                    document.getElementById('udiscountPercentPrint').value = data.dis_print;
                    document.getElementById('uprintTokenBefore').value = data.token_print_before;
                    document.getElementById('uprintTokenAfter').value = data.token_print_after;
                    document.getElementById('uprintTokenNo').value = data.print_token_no;
                    document.getElementById('ugroupDiscount').value = data.grp_disc_app;
                    document.getElementById('upemail').value = data.email;
                    document.getElementById('uheader1').value = data.header1;
                    document.getElementById('uheader2').value = data.header2;
                    document.getElementById('uheader3').value = data.header3;
                    document.getElementById('uheader4').value = data.header4;
                    document.getElementById('uslogan1').value = data.slogan1;
                    document.getElementById('uslogan2').value = data.slogan2;
                    document.getElementById('utokenHeader').value = data.token_header;
                    document.getElementById('ufssaicode').value = data.fssaicode;
                    document.getElementById('rest_type').value = data.rest_type;
                    document.getElementById('uheight').value = data.height;
                    document.getElementById('ufont_size').value = data.fontsize;
                    document.getElementById('ucol').value = data.col;
                    document.getElementById('uborderspace').value = data.uborderspace;
                    document.getElementById('updivcode').value = data.divcode;
                    document.getElementById('upfloor').value = data.floor;
                    document.getElementById('uptiming').value = data.timing;
                };
                xhr.send('cid=' + encodeURIComponent(cid) + '&_token=' + '{{ csrf_token() }}');
            });

        });
        $(document).ready(function() {
            let timer;

            $(document).on('input', '#name', function() {
                let name = $(this).val();
                clearTimeout(timer);
                timer = setTimeout(() => {
                    fetch('/fetchalldepart', {
                            method: 'GET',
                            headers: {
                                'Content-Type': 'application/json'
                            }
                        })
                        .then(response => response.json())
                        .then(data => {
                            let departdata = data;
                            let check = departdata.some(x => x.name.toLowerCase() == name.toLowerCase());
                            if (check == true) {
                                pushNotify('info', 'Depart Master', 'Duplicate Name..', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                $('#name').val('');
                            }
                        })
                        .catch(error => {
                            console.error(error);
                        });
                }, 1000);
            });

            $(document).on('input', '#short_name', function() {
                let name = $(this).val();
                clearTimeout(timer);
                timer = setTimeout(() => {
                    fetch('/fetchalldepart', {
                            method: 'GET',
                            headers: {
                                'Content-Type': 'application/json'
                            }
                        })
                        .then(response => response.json())
                        .then(data => {
                            let departdata = data;
                            let check = departdata.some(x => x.short_name.toLowerCase() == name.toLowerCase());
                            if (check == true) {
                                pushNotify('info', 'Depart Master', 'Duplicate Short Name..', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                $('#short_name').val('');
                            }
                        })
                        .catch(error => {
                            console.error(error);
                        });
                }, 1000);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            $(document).on('click', '.qrcodebtn', function() {
                let dcode = $(this).data('dcode');
                let outletname = $(this).closest('tr').children('td').eq('1').text();

                $.ajax({
                    method: "POST",
                    url: "{{ url('outletqrgenerater') }}",
                    data: {
                        dcode: dcode
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

                        } else {
                            console.error("Error: " + response.message);
                            alert("Failed to generate QR Code");
                        }
                    },
                    error: function(xhr) {
                        console.error("Error generating QR", xhr);
                        alert("Error generating QR Code. Please try again.");
                    }
                });
            });
        });
    </script>
@endsection
