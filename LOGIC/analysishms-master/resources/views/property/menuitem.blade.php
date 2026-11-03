@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="menuitemform" action="javascript.void();" id="menuitemform"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <input type="hidden" name="itempic" id="itempic" value="">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="restcode">Restaurant Name</label>
                                        <select id="restcode" name="restcode" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($restaurentdata as $list)
                                                <option value="{{ $list->dcode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="itemgrp">Item Group
                                            @if($canAddItemGroup)
                                                <button type="button" class="btn btn-sm btn-success ml-1 py-0 px-1"
                                                    style="font-size:11px; line-height:1.4;"
                                                    data-toggle="modal" data-target="#quickAddItemGroupModal"
                                                    title="Add New Item Group">
                                                    <i class="fa fa-plus"></i>
                                                </button>
                                            @endif
                                        </label>
                                        <select id="itemgrp" name="itemgrp" class="form-control" required>
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="itemname">Name
                                            @if($canAddItemName)
                                                <button type="button" class="btn btn-sm btn-success ml-1 py-0 px-1"
                                                    style="font-size:11px; line-height:1.4;"
                                                    data-toggle="modal" data-target="#quickAddItemNameModal"
                                                    title="Add New Item Name">
                                                    <i class="fa fa-plus"></i>
                                                </button>
                                            @endif
                                        </label>
                                        <select id="itemname" name="itemname" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($itemnames as $list)
                                                <option value="{{ $list->icode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="itemcode">Code</label>
                                        <input type="number" name="itemcode"
                                            oninput="allmx(this,10),checkNumMax(this, 10);" id="itemcode"
                                            class="form-control" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="hsncode">HSN Code</label>
                                        <input readonly type="text" name="hsncode" oninput="allmx(this,50)"
                                            id="hsncode" class="form-control" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="barcode">Bar Code</label>
                                        <input type="text" name="barcode" oninput="allmx(this,50)" id="barcode"
                                            class="form-control" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="unit">Unit
                                            <div class="btn-group btn-group-sm ml-1" role="group" style="display: inline-flex;">
                                                @if($canAddUnit)
                                                    <button type="button" class="btn btn-success py-0 px-1"
                                                        style="font-size:11px; line-height:1.4;"
                                                        data-toggle="modal" data-target="#quickAddUnitModal"
                                                        title="Quick Add Unit (Modal)">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                @endif
                                            </div>
                                        </label>
                                        <select id="unit" name="unit" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($unit as $list)
                                                <option value="{{ $list->ucode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="itemcatmast">Item Category</label>
                                        <select id="itemcatmast" name="itemcatmast" class="form-control" required>
                                            <option value="">Select</option>
                                            {{-- @foreach ($itemcatmast as $list)
                                            <option value="{{ $list->Code }}">{{ $list->Name }}</option>
                                            @endforeach --}}
                                        </select>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="rateedit">Rate Edit</label>
                                        <select id="rateedit" name="rateedit" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N" selected>No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="discappl">Disc Applicable</label>
                                        <select id="discappl" name="discappl" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y" selected>Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="servicecharge">Service Charge</label>
                                        <select id="servicecharge" name="servicecharge" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N" selected>No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="salerate">Sale Rate</label>
                                        <input type="text" name="salerate"
                                            oninput="checkNumMax(this, 7); handleDecimalInput(event);" id="salerate"
                                            class="form-control" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="rateinctax">Rate Inc. Tax</label>
                                        <select id="rateinctax" name="rateinctax" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N" selected>No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="applicabldate">Applicable Date</label>
                                        <input type="date" name="applicabldate" id="applicabldate"
                                            class="form-control" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="kitchen">Kitchen</label>
                                        <select id="kitchen" name="kitchen" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($kitchen as $list)
                                                <option value="{{ $list->dcode }}"
                                                    @if (substr($list->dcode, 0, 2) == 'MK') selected @endif>{{ $list->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="type">Type</label>
                                        <select id="type" name="type" class="form-control" required
                                            onchange="showWtqty(this.value);">
                                            <option value="">Select</option>
                                            <option value="Manufactured Item">Manufactured Item</option>
                                            <option value="Trade Item">Trade Item</option>
                                            <option value="Proprietory Item">Proprietory Item</option>
                                            <option value="Liquor">Liquor</option>
                                            <option value="Other" selected>Other</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="activeyn">Active YN</label>
                                        <select id="activeyn" name="activeyn" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y" selected>Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="dishtype">Dish Type</label>
                                        <select id="dishtype" name="dishtype" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="1" selected>Veg</option>
                                            <option value="2">Nonveg</option>
                                            <option value="3">Egg</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="favourite">Favourite</label>
                                        <select id="favourite" name="favourite" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="1">Yes</option>
                                            <option value="0" selected>No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3" style="display: none;">
                                        <label class="col-form-label" for="wtqty">Wt. Qty</label>
                                        <input type="text" name="wtqty"
                                            oninput="checkNumMax(this, 7); handleDecimalInput(event);" id="wtqty"
                                            class="form-control" value="0.000">
                                    </div>
                                    <div class="col-md-3" style="display: none;" id="purchitem">
                                        <label class="col-form-label" for="purchitem">Purchase Item</label>
                                        <select id="purchitem" name="purchitem" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($purchItem as $item)
                                                <option value="{{ $item->Code }}">{{ $item->Name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="d-flex align-items-center gap-2 px-3 pt-3 pb-1">
                            <button type="button" id="menuitemExcelBtn" class="btn btn-success btn-sm">Excel</button>
                            <button type="button" id="menuitemPrintBtn"
                                class="btn btn-info btn-sm text-white">Print</button>
                        </div>
                        <div class="table-responsive">
                            <table id="menuitem"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Unit</th>
                                        <th>Group</th>
                                        <th>Category</th>
                                        <th>Disp</th>
                                        <th>Restaurant</th>
                                        <th>Rate</th>
                                        <th>Disc</th>
                                        <th>Redit</th>
                                        <th>Active</th>
                                        <th>Kitchen</th>
                                        <th>Type</th>
                                        <th>Action</th>
                                        <th class="none">code</th>
                                        <th class="none">restcode</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($itemmast as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->itemname }}</td>
                                            <td>{{ $row->unitname }}</td>
                                            <td>{{ $row->itemgrpname }}</td>
                                            <td>{{ $row->itemcatname }}</td>
                                            <td>{{ $row->DispCode }}</td>
                                            <td>{{ $row->Restaurant }}</td>
                                            <td>{{ $row->Rate }}</td>
                                            <td>{{ $row->DiscApp == 'N' ? 'No' : 'Yes' }}</td>
                                            <td>{{ $row->RateEdit == 'N' ? 'No' : 'Yes' }}</td>
                                            <td>{{ $row->ActiveYN == 'N' ? 'No' : 'Yes' }}</td>
                                            <td>{{ $row->Kitchen }}</td>
                                            <td>{{ $row->NType }}</td>
                                            <td class="ins">
                                                <button id="revedit" data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>

                                                <a href="{{ url('deletemenuitem/' . $row->id . '/' . $row->Code) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="none">{{ $row->Code }}</td>
                                            <td class="none">{{ $row->RestCode }}</td>
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
    <!-- #/ container -->
    <div class="modal fade bd-example-modal-lg" id="updateModal" tabindex="-1" role="dialog"
        aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Menu Item</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" action="{{ url('menuitemstoreupdate') }}"
                        name="menuitemformupdate" id="menuitemformupdate">
                        @csrf
                        <input type="hidden" name="upcode" id="upcode">
                        <div class="row">
                            <input type="hidden" name="upitempic" id="upitempic" value="">
                            <input type="hidden" name="uprestcode" id="uprestcode" value="">
                            <div class="col-md-3">
                                <label class="col-form-label" for="uprestcodedisp">Restaurant Name</label>
                                <select id="uprestcodedisp" name="uprestcodedisp" class="form-control" disabled>
                                    <option value="">Select</option>
                                    @foreach ($restaurentdata as $list)
                                        <option value="{{ $list->dcode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                                {{-- <input type="text" class="form-control" name="uprestcodedisp" id="uprestcodedisp"
                                    readonly> --}}
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemgrp">Item Group</label>
                                <select id="upitemgrp" name="upitemgrp" class="form-control" required>
                                    {{-- <option value="">Select</option>
                                    @foreach ($itemgrp as $list)
                                    <option value="{{ $list->code }}">{{ $list->name }}</option>
                                    @endforeach --}}
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemname">Name</label>
                                <input type="text" class="form-control" name="upitemname" id="upitemname" readonly>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemcode">Code</label>
                                <input readonly type="text" name="upitemcode" oninput="allmx(this,50)"
                                    id="upitemcode" class="form-control" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label class="col-form-label" for="uphsncode">HSN Code</label>
                                <input readonly type="text" name="uphsncode" oninput="allmx(this,50)" id="uphsncode"
                                    class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upbarcode">Bar Code</label>
                                <input type="text" name="upbarcode" oninput="allmx(this,50)" id="upbarcode"
                                    class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upunit">Unit</label>
                                <select id="upunit" name="upunit" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($unit as $list)
                                        <option value="{{ $list->ucode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemcatmast">Item Category</label>
                                <select id="upitemcatmast" name="upitemcatmast" class="form-control" required>
                                    {{-- <option value="">Select</option> --}}
                                    {{-- @foreach ($itemcatmast as $list)
                                    <option value="{{ $list->Code }}">{{ $list->Name }}</option>
                                    @endforeach --}}
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label class="col-form-label" for="uprateedit">Rate Edit</label>
                                <select id="uprateedit" name="uprateedit" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="updiscappl">Disc Applicable</label>
                                <select id="updiscappl" name="updiscappl" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upservicecharge">Service Charge</label>
                                <select id="upservicecharge" name="upservicecharge" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upsalerate">Sale Rate</label>
                                <input type="text" name="upsalerate"
                                    oninput="checkNumMax(this, 7); handleDecimalInput(event);" id="upsalerate"
                                    class="form-control" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label class="col-form-label" for="uprateinctax">Rate Inc. Tax</label>
                                <select id="uprateinctax" name="uprateinctax" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upapplicabldate">Applicable Date</label>
                                <input type="date" name="upapplicabldate" id="upapplicabldate" class="form-control"
                                    required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upkitchen">Kitchen</label>
                                <select id="upkitchen" name="upkitchen" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($kitchen as $list)
                                        <option value="{{ $list->dcode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="uptype">Type</label>
                                <select id="uptype" name="uptype" class="form-control" required
                                    onchange="showWtqty(this.value, 'up');">
                                    <option value="">Select</option>
                                    <option value="Manufactured Item">Manufactured Item</option>
                                    <option value="Trade Item">Trade Item</option>
                                    <option value="Proprietory Item">Proprietory Item</option>
                                    <option value="Liquor">Liquor</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label class="col-form-label" for="upactiveyn">Active YN</label>
                                <select id="upactiveyn" name="upactiveyn" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="updishtype">Dish Type</label>
                                <select id="updishtype" name="updishtype" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="1">Veg</option>
                                    <option value="2">Nonveg</option>
                                    <option value="3">Egg</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upfavourite">Favourite</label>
                                <select id="upfavourite" name="upfavourite" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                            <div class="col-md-3" style="display: none;">
                                <label class="col-form-label" for="wtqtyu">Wt. Qty</label>
                                <input type="text" name="wtqtyu"
                                    oninput="checkNumMax(this, 7); handleDecimalInput(event);" id="wtqtyu"
                                    class="form-control" value="0.000">
                            </div>
                            <div class="col-md-3" style="display: none;" id="purchitemyudiv">
                                <label class="col-form-label" for="purchitem">Purchase Item</label>
                                <select id="purchitemyu" name="purchitemyu" class="form-control">
                                    <option value="">Select</option>
                                    @foreach ($purchItem as $item)
                                        <option value="{{ $item->Code }}">{{ $item->Name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="text-center">
                            <button id="updateBtn" type="submit" class="btn mt-3 btn-primary">Update <i
                                    class="fa-solid fa-file-export"></i></button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <!--**********************************
                            Deepak Create Ajex Request Form For Item Submit
                        ***********************************-->
    {{--
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> --}}
    {{--
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> --}}

    <script>
        function showWtqty(value, a = 'a') {
            if (value === 'Liquor' || value === 'Manufactured Item') {
                if (a === 'a') {
                    document.getElementById('wtqty').parentElement.style.display = 'block';
                    document.getElementById('purchitem').style.display = 'block';
                } else {
                    document.getElementById('wtqtyu').parentElement.style.display = 'block';
                    document.getElementById('purchitemyudiv').style.display = 'block';
                }
            } else {
                if (a === 'a') {
                    document.getElementById('wtqty').parentElement.style.display = 'none';
                    document.getElementById('wtqty').value = '0.000';
                    document.getElementById('purchitem').style.display = 'block';
                } else {
                    document.getElementById('wtqtyu').parentElement.style.display = 'none';
                    document.getElementById('wtqtyu').value = '0.000';
                    document.getElementById('purchitemyudiv').style.display = 'block';
                }
            }
        }

        $(document).ready(function() {

            let table = new DataTable('#menuitem', {
                dom: 'frtip',
                ordering: true,
                order: [],
                buttons: [
                    {
                        extend: 'excel',
                        title: 'Menu Item Data',
                        exportOptions: {
                            columns: ':visible'
                        }
                    }
                ]
            });

            // Print - open in new tab via route
            document.getElementById('menuitemPrintBtn').addEventListener('click', function() {
                window.open('{{ route('printmenuitem') }}', '_blank');
            });

            // Excel Export
            document.getElementById('menuitemExcelBtn').addEventListener('click', function() {
                table.button('.buttons-excel').trigger();
            });


            $('#menuitemform').on('submit', function(e) {
                e.preventDefault();

                let form = $(this);
                let formData = new FormData(this);
                let suburl = "{{ url('menuitemstore') }}";

                // Reset errors
                $('.text-danger').remove();
                $('input, select').removeClass('is-invalid');

                $.ajax({
                    url: suburl,
                    method: "POST",
                    data: formData,
                    processData: false,
                    contentType: false,

                    beforeSend: function() {
                        $('#submitBtn').prop('disabled', true).html('Submitting...');
                    },

                    success: function(response) {
                        $('#submitBtn').prop('disabled', false).html(
                            'Submit <i class="fa-solid fa-file-export"></i>');

                        if (response.status === 'success') {
                            pushNotify('success', response.message);

                            // Current value lo
                            let newCode = response.itemcode;

                            // New code set karo
                            $("#itemcode").val(newCode);
                            // Reset form after success
                            // form[0].reset();
                            $('#itemname').val('');
                            $('#salerate').val('');


                        } else {
                            pushNotify('error', response.message);
                        }
                    },

                    error: function(xhr) {
                        $('#submitBtn').prop('disabled', false).html(
                            'Submit <i class="fa-solid fa-file-export"></i>');

                        if (xhr.status === 422) {
                            // Laravel validation error
                            let errors = xhr.responseJSON.errors;
                            $.each(errors, function(key, value) {
                                let input = $('[name="' + key + '"]');
                                input.addClass('is-invalid');
                                input.after('<span class="text-danger">' + value[0] +
                                    '</span>');
                                pushNotify('error', value[0]);
                            });
                        } else if (xhr.status === 409) {
                            pushNotify('error', response.message);
                        } else if (xhr.status === 500) {
                            pushNotify('error',
                                'Internal server error. Please try again later.');
                        } else {
                            pushNotify('error',
                                'Something went wrong. Please try again later.');
                        }
                    }
                });
            });

        });
    </script>

    {{--
    <link rel="stylesheet" href="https://cdn.datatables.net/2.2.2/css/dataTables.dataTables.css">
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.js"></script>
    <script>
        $(document).ready(function () {
            new DataTable('#menuitem', {
                "pageLength": 15
            });
        });
    </script> --}}
    <script>
        $(document).ready(function() {
            $(document).on('change', '#restcode', function() {
                let restcode = $(this).val();
                if (restcode != '') {
                    let restxhr = new XMLHttpRequest();
                    restxhr.open('POST', '/restxhr', true);
                    restxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    restxhr.onreadystatechange = function() {
                        if (restxhr.status === 200 && restxhr.readyState === 4) {
                            let result = JSON.parse(restxhr.responseText);
                            let itemgrps = result.itemgrps;
                            let itemcats = result.itemcats;
                            $('#itemgrp').html('');
                            $('#itemcatmast').html('');
                            let opt = `<option value=''>Select</option>`;
                            itemgrps.forEach((data, index) => {
                                opt += `<option value='${data.code}'>${data.name}</option>`;
                            });
                            $('#itemgrp').append(opt);

                            let optitemcat = `<option value=''>Select</option>`;
                            itemcats.forEach((datas, index) => {
                                optitemcat +=
                                    `<option value='${datas.Code}'>${datas.Name}</option>`;
                            });
                            $('#itemcatmast').append(optitemcat);
                        }
                    }
                    restxhr.send(`restcode=${restcode}&_token={{ csrf_token() }}`);
                }
            })

            //handleFormSubmission('#menuitemform', '#submitBtn', 'menuitemstore');
            //handleFormSubmission('#menuitemformupdate', '#updateBtn', 'menuitemstoreupdate');
            $(document).ready(function() {
                document.getElementById("itemname").addEventListener("change", function() {
                    var icode = this.value;
                    if (icode == "") {
                        $('#itemcode').val("");
                        $('#hsncode').val("");
                        $('#barcode').val("");
                    }
                    var xhr = new XMLHttpRequest();
                    xhr.open("POST", "{{ route('getitemdata') }}");
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                    xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                    xhr.onreadystatechange = function() {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            var data = JSON.parse(xhr.responseText);
                            $("#hsncode").val(data.hsncode);
                            $("#barcode").val(data.barcode);
                            $("#itempic").val(data.itempic);
                        }
                    };
                    xhr.send("icode=" + icode);
                });
            });
            $(document).on('click', '.editBtn', function() {
                let iname = $(this).closest("tr").find("td:eq(1)").text();
                $('#upitemname').val(iname);
                var code = $(this).closest("tr").find("td:eq(14)").text();
                var restcode = $(this).closest("tr").find("td:eq(15)").text();
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "{{ route('itemmastupdata') }}");
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = JSON.parse(xhr.responseText);
                        let data = result.itemdata;
                        let itemgrps = result.itemgrps;
                        $('#upitemgrp').html('');
                        let opt = `<option value=''>Select</option>`;
                        itemgrps.forEach((data, index) => {
                            opt += `<option value='${data.code}'>${data.name}</option>`;
                        });
                        $('#upitemgrp').append(opt);
                        let itemcats = result.itemcats;
                        $('#upitemcatmast').html('');
                        let optitemcat = `<option value=''>Select</option>`;
                        itemcats.forEach((data, index) => {
                            optitemcat += `<option value='${data.Code}'>${data.Name}</option>`;
                        });
                        $('#upitemcatmast').append(optitemcat);
                        $("#uprestcodedisp").val(data.RestCode);
                        $("#uprestcode").val(data.RestCode);
                        $("#upitemgrp").val(data.ItemGroup);
                        //$("#upitemname").val(data.itemcode);
                        $("#upitemcode").val(data.DispCode);
                        $("#uphsncode").val(data.HSNCode);
                        $("#upbarcode").val(data.BarCode);
                        $("#upunit").val(data.Unit);
                        $("#upitemcatmast").val(data.ItemCatCode);
                        $("#uprateedit").val(data.RateEdit);
                        $("#updiscappl").val(data.DiscApp);
                        $("#updishtype").val(data.dishtype);
                        $("#upfavourite").val(data.favourite);
                        $("#upservicecharge").val(data.SChrgApp);
                        $("#upsalerate").val(data.Rate);
                        $("#uprateinctax").val(data.RateIncTax);
                        $("#upapplicabldate").val(data.AppDate);
                        $("#upkitchen").val(data.Kitchen);
                        $("#uptype").val(data.NType);
                        //chanhe uptype to show or hide wtqty
                        showWtqty(data.NType, 'up');
                        $("#wtqtyu").val(data.wtqty);
                        $("#purchitemyu").val(data.Pitemcode);
                        $("#upactiveyn").val(data.ActiveYN);
                        $("#upcode").val(data.Code);
                        $("#upsn").val(data.sn);
                    }
                };
                xhr.send(`code=${code}&restcode=${restcode}`);
            });

            $('#uprestcodedisp').on('focus click', function() {
                $(this).prop('disabled', true);
            });

            $('#uprestcodedisp').on('blur', function() {
                $(this).prop('disabled', false);
            });
        });


        $(document).ready(function() {
            // setInterval(function () {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "{{ route('getmaxitemcode') }}");
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var data = JSON.parse(xhr.responseText);
                    $("#itemcode").val(data);
                }
            };
            xhr.send();
            // }, 1000);
        });

        //Fetch Current Financial Year
        $(document).ready(function() {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "{{ route('getcurfinyear') }}");
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var data = JSON.parse(xhr.responseText);
                    $("#applicabldate").val(data);
                }
            };
            xhr.send();
        });
    </script>

    {{-- ===================== Quick Add Item Group Modal ===================== --}}
    @if($canAddItemGroup)
    <div class="modal fade" id="quickAddItemGroupModal" tabindex="-1" role="dialog"
        aria-labelledby="quickAddItemGroupModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quickAddItemGroupModalLabel">
                        <i class="fa fa-plus-circle mr-1"></i> Add New Item Group
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="quickItemGroupAlert" class="alert" style="display:none;"></div>
                    <div class="form-group">
                        <label for="qig_restcode">Outlet Name</label>
                        <select id="qig_restcode" class="form-control">
                            <option value="">Select</option>
                            @foreach ($restaurentdata as $dept)
                                <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="qig_name">Item Group</label>
                        <input type="text" id="qig_name" class="form-control" placeholder="Enter group name" maxlength="100">
                    </div>
                    <div class="form-group">
                        <label for="qig_activeyn">Active YN</label>
                        <select id="qig_activeyn" class="form-control">
                            <option value="">Select</option>
                            <option value="Y" selected>Yes</option>
                            <option value="N">No</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-success" id="quickItemGroupSubmitBtn">
                        <i class="fa fa-save mr-1"></i> Submit
                    </button>
                </div>
            </div>
        </div>
    </div>
    {{-- ===================== End Quick Add Item Group Modal ===================== --}}
    @endif

    {{-- ===================== Quick Add Item Name Modal ===================== --}}
    @if($canAddItemName)
    <div class="modal fade" id="quickAddItemNameModal" tabindex="-1" role="dialog"
        aria-labelledby="quickAddItemNameModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quickAddItemNameModalLabel">
                        <i class="fa fa-plus-circle mr-1"></i> Add New Item Name
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="quickItemNameAlert" class="alert" style="display:none;"></div>
                    <div class="form-group">
                        <label for="qin_name">Item Name <span class="text-danger">*</span></label>
                        <input type="text" id="qin_name" class="form-control" placeholder="Enter item name" maxlength="200">
                    </div>
                    <div class="form-group">
                        <label for="qin_barcode">Bar Code</label>
                        <input type="number" id="qin_barcode" class="form-control" oninput="checkNumMax(this, 10)" placeholder="Enter barcode"
                               value="{{ empty($maxicode) ? 1 : (int)substr((string)$maxicode, 0, -$idlength) + 1 }}">
                    </div>
                    <div class="form-group">
                        <label for="qin_hsncode">HSN Code</label>
                        <input type="text" id="qin_hsncode" class="form-control" placeholder="Enter HSN code" maxlength="50">
                    </div>
                    <div class="form-group">
                        <label for="qin_itempicture">Item Picture</label>
                        <input type="file" id="qin_itempicture" class="form-control-file" accept="image/*">
                        <small class="text-muted">Optional. JPG, PNG, GIF allowed.</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-success" id="quickItemNameSubmitBtn">
                        <i class="fa fa-save mr-1"></i> Submit
                    </button>
                </div>
            </div>
        </div>
    </div>
    {{-- ===================== End Quick Add Item Name Modal ===================== --}}
    @endif

    {{-- ===================== Quick Add Unit Modal ===================== --}}
    @if($canAddUnit)
    <div class="modal fade" id="quickAddUnitModal" tabindex="-1" role="dialog"
        aria-labelledby="quickAddUnitModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quickAddUnitModalLabel">
                        <i class="fa fa-plus-circle mr-1"></i> Add New Unit
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="quickUnitAlert" class="alert" style="display:none;"></div>
                    <div class="form-group">
                        <label for="qu_name">Unit Name <span class="text-danger">*</span></label>
                        <input type="text" id="qu_name" class="form-control" placeholder="Enter unit name" maxlength="100">
                    </div>
                    <div class="form-group">
                        <label for="qu_activeyn">Active YN <span class="text-danger">*</span></label>
                        <select id="qu_activeyn" class="form-control">
                            <option value="Y" selected>Active</option>
                            <option value="N">Inactive</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-success" id="quickUnitSubmitBtn">
                        <i class="fa fa-save mr-1"></i> Submit
                    </button>
                </div>
            </div>
        </div>
    </div>
    {{-- ===================== End Quick Add Unit Modal ===================== --}}
    @endif

    <script>
        // ===== Common Quick Add Modal handler (shared by Item Group / Item Name / Unit) =====
        function showQuickAddAlert(alertId, type, message) {
            $(alertId).removeClass('alert-success alert-danger').addClass('alert-' + type).text(message).show();
        }

        function bindQuickAddModal(config) {
            var modal = $(config.modalId);

            modal.on('hidden.bs.modal', function () {
                config.reset();
                $(config.alertId).hide().removeClass('alert-success alert-danger').text('');
                $(config.submitBtnId).prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
            });

            $(config.submitBtnId).on('click', function () {
                var data     = config.collect();
                var error    = config.validate();
                var btn      = $(this);
                var formData = (typeof FormData !== 'undefined' && data instanceof FormData);

                if (error) {
                    showQuickAddAlert(config.alertId, 'danger', error);
                    return;
                }

                btn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-1"></i> Saving...');

                $.ajax({
                    url: config.url,
                    type: 'POST',
                    data: data,
                    processData: !formData,
                    contentType: formData ? false : undefined,
                    success: function (res) {
                        if (res.success) {
                            config.onSuccess(res);
                            $(config.modalId).modal('hide');
                            Swal.fire({
                                icon: 'success',
                                title: 'Success!',
                                text: res.message,
                                timer: 1500,
                                showConfirmButton: false
                            });
                        } else {
                            showQuickAddAlert(config.alertId, 'danger', res.message);
                            btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                        }
                    },
                    error: function (xhr) {
                        var msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Something went wrong.';
                        showQuickAddAlert(config.alertId, 'danger', msg);
                        btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                    }
                });
            });
        }

        // ===== Quick Add Item Group =====
        @if($canAddItemGroup)
        bindQuickAddModal({
            modalId: '#quickAddItemGroupModal',
            submitBtnId: '#quickItemGroupSubmitBtn',
            alertId: '#quickItemGroupAlert',
            url: '{{ route("menuitem.quickAddItemGroup") }}',
            collect: function () {
                return {
                    name:     $.trim($('#qig_name').val()),
                    activeyn: $('#qig_activeyn').val(),
                    restcode: $('#qig_restcode').val(),
                    _token:   '{{ csrf_token() }}'
                };
            },
            validate: function () {
                // Clear previous highlights
                $('#qig_restcode, #qig_name, #qig_activeyn').removeClass('is-invalid');

                if (!$('#qig_restcode').val()) {
                    $('#qig_restcode').addClass('is-invalid');
                    return 'Please select an Outlet Name.';
                }
                if (!$.trim($('#qig_name').val())) {
                    $('#qig_name').addClass('is-invalid');
                    return 'Item Group name is required.';
                }
                if (!$('#qig_activeyn').val()) {
                    $('#qig_activeyn').addClass('is-invalid');
                    return 'Active YN is required.';
                }
                return null;
            },
            reset: function () {
                $('#qig_restcode').val('').removeClass('is-invalid');
                $('#qig_name').val('').removeClass('is-invalid');
                $('#qig_activeyn').val('Y').removeClass('is-invalid');
            },
            onSuccess: function (res) {
                // Sync main form restcode to the outlet selected in modal
                $('#restcode').val($('#qig_restcode').val()).trigger('change');
                // Refresh itemgrp dropdown and auto-select new entry
                var sel = $('#itemgrp');
                sel.empty().append('<option value="">Select</option>');
                $.each(res.itemgrps, function (i, g) {
                    sel.append($('<option>', { value: g.code, text: g.name }));
                });
                sel.val(res.new_code);
            }
        });
        @endif

        // ===== Quick Add Item Name =====
        @if($canAddItemName)
        bindQuickAddModal({
            modalId: '#quickAddItemNameModal',
            submitBtnId: '#quickItemNameSubmitBtn',
            alertId: '#quickItemNameAlert',
            url: '{{ route("menuitem.quickAddItemName") }}',
            collect: function () {
                var data = new FormData();
                data.append('name',    $.trim($('#qin_name').val()));
                data.append('barcode', $.trim($('#qin_barcode').val()));
                data.append('hsncode', $.trim($('#qin_hsncode').val()));
                data.append('_token',  '{{ csrf_token() }}');
                var picFile = $('#qin_itempicture')[0].files[0];
                if (picFile) {
                    data.append('itempicture', picFile);
                }
                return data;
            },
            validate: function () {
                if (!$.trim($('#qin_name').val())) return 'Item name is required.';
                if (!$.trim($('#qin_barcode').val())) return 'Item Code / Bar Code is required.';
                return null;
            },
            reset: function () {
                $('#qin_name').val('');
                $('#qin_barcode').val('');
                $('#qin_hsncode').val('');
                $('#qin_itempicture').val('');
            },
            onSuccess: function (res) {
                // next barcode auto-set after successful add
                if (res.next_barcode) {
                    $('#qin_barcode').val(res.next_barcode);
                }
                var sel = $('#itemname');
                sel.empty().append('<option value="">Select</option>');
                $.each(res.itemnames, function (i, item) {
                    sel.append($('<option>', { value: item.icode, text: item.name }));
                });
                sel.val(res.new_icode).trigger('change');
            }
        });
        @endif

        // ===== Quick Add Unit =====
        @if($canAddUnit)
        bindQuickAddModal({
            modalId: '#quickAddUnitModal',
            submitBtnId: '#quickUnitSubmitBtn',
            alertId: '#quickUnitAlert',
            url: '{{ route("menuitem.quickAddUnit") }}',
            collect: function () {
                return {
                    name:     $.trim($('#qu_name').val()),
                    activeYN: $('#qu_activeyn').val(),
                    _token:   '{{ csrf_token() }}'
                };
            },
            validate: function () {
                if (!$.trim($('#qu_name').val())) return 'Unit name is required.';
                return null;
            },
            reset: function () {
                $('#qu_name').val('');
                $('#qu_activeyn').val('Y');
            },
            onSuccess: function (res) {
                var sel = $('#unit');
                sel.empty().append('<option value="">Select</option>');
                $.each(res.units, function (i, u) {
                    sel.append($('<option>', { value: u.ucode, text: u.name }));
                });
                sel.val(res.new_ucode);
            }
        });
        @endif
    </script>
@endsection

