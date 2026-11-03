@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ url('purchasebillsubmit') }}" name="purchaseentryform"
                                id="purchaseentryform" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="totalitem" id="totalitem">
                                <input type="hidden" name="taxableamt" id="taxableamt">
                                <input type="hidden" name="partygstin" id="partygstin">
                                <input type="hidden" name="gindocid" id="gindocid">
                                <input type="hidden" name="mritemyn" id="mritemyn">
                                <input type="hidden" name="exmrdocid" id="exmrdocid">
                                <div class="container-fluid">
                                    <div class="row">
                                        <!-- Left side small form section -->
                                        <div class="col-md-6">
                                            <div class="row">
                                                <!-- First Column -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="mrno" class="col-form-label">VR.No</label>
                                                        <input type="number" class="form-control" name="mrno" id="mrno"
                                                            required readonly>
                                                        @error('mrno')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="vdate" class="col-form-label">Date</label>
                                                        <input type="date" value="{{ date('Y-m-d') }}" class="form-control"
                                                            name="vdate" id="vdate" required
                                                            @if(($enviroinv->allow_future_date_pr ?? 'Y') == 'N') max="{{ date('Y-m-d') }}" @endif>
                                                        @error('vdate')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>

                                                    <div id="partydiv" class="form-group">
                                                        <label for="partycode" class="col-form-label">Party</label>
                                                        <select class="form-control" id="partycode" name="partycode">
                                                            <option value="">Select Party</option>
                                                            @foreach ($party as $item)
                                                                <option data-gstin="{{ $item->gstin }}"
                                                                    value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                            @endforeach
                                                        </select>
                                                        <label for="partycodet" class="col-form-label mt-2">Party
                                                            Name</label>
                                                        <input type="text" class="form-control"
                                                            placeholder="Enter Party Name" name="partycode" id="partycodet">
                                                        <span class="text-purple nowrap" id="gstinnumber"></span>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="billno" class="col-form-label">Bill No.</label>
                                                        <input type="text" class="form-control" placeholder="Enter Bill No."
                                                            name="billno" id="billno" required>
                                                    </div>
                                                </div>

                                                <!-- Second Column -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="vtype" class="col-form-label">Type</label>
                                                        <select class="form-control" name="vtype" id="vtype" required>
                                                            <option value="">Select</option>
                                                            <option value="PBPC">Purchase Bill(Cash)</option>
                                                            <option value="PBPB">Purchase Bill(Credit)</option>
                                                            <option value="PRPC">Purchase Return(Cash)</option>
                                                            <option value="PRPB">Purchase Return(Credit)</option>
                                                        </select>
                                                        @error('vtype')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="billdate" class="col-form-label">Bill Date</label>
                                                        <input type="date" value="{{ date('Y-m-d') }}" class="form-control"
                                                            name="billdate" id="billdate" required>
                                                    </div>

                                                    <div id="exmrnodiv" class="form-group">
                                                        <label for="exmrno" class="col-form-label">Mr. No.</label>
                                                        <select class="form-control" name="exmrno" id="exmrno">
                                                            <option value="">Select</option>
                                                        </select>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="billimage" class="col-form-label">Bill Image</label>
                                                        <input type="file" class="form-control" name="billimage"
                                                            id="billimage">
                                                        <span id="previewbtn" style="display: none;">Preview</span>
                                                    </div>
                                                </div>

                                                <!-- Hidden Field -->
                                                <input type="hidden" class="form-control" name="gstin" id="gstin"
                                                    placeholder="Enter GSTIN.">

                                                <!-- Modal for Image Preview -->
                                                <div class="modal fade" id="imageModal" tabindex="-1" role="dialog"
                                                    aria-labelledby="imageModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="imageModalLabel">Image Preview
                                                                </h5>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <img id="imagePreview" src="" alt="Image Preview"
                                                                    class="img-fluid">
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div> <!-- inner row ends -->
                                        </div> <!-- left side col-md-6 ends -->

                                        <!-- Right side empty -->
                                        <div class="col-md-6">
                                            <!-- Empty space (you can add dashboard, table etc. later) -->
                                        </div>
                                    </div>
                                </div>


                                <div class="row mb-2">
                                    <div class="col-md-3">
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input invtype" type="radio" value="saleinvoice"
                                                name="invtype" id="saleinvoice">
                                            <label class="form-check-label" for="saleinvoice">Sale Invoice</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input invtype" type="radio" value="taxinvoice"
                                                name="invtype" id="taxinvoice">
                                            <label class="form-check-label" for="taxinvoice">Tax Invoice</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input invtype" type="radio" value="otherinvoice"
                                                name="invtype" id="otherinvoice">
                                            <label class="form-check-label" for="otherinvoice">Other</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="itemshow">
                                    <div class="addbtn text-end  mb-2">
                                        <button id="additem" type="button" class="btn btn-outline-primary">Add Item <i
                                                class="fa-solid fa-square-plus"></i></button>

                                    </div>
                                    <table id="itemtable" class="table table-itemshow table-hover">
                                        <thead class="thead-muted">
                                            <tr>
                                                <th>SR.</th>
                                                <th>Item</th>
                                                <th>Unit</th>
                                                <th>Qty</th>
                                                <th>Rate</th>
                                                <th>Amount</th>
                                                <th>Godown</th>
                                                <th>Tax Structure</th>
                                                <th>A/C Name</th>
                                                <th id="th-batch" style="display:none;">Batch No.</th>
                                                <th id="th-mfg" style="display:none;">Mfg. Date</th>
                                                <th id="th-expiry" style="display:none;">Expiry Date</th>
                                                <th><i class="fa-solid fa-square-caret-down"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>

                                @php
                                    $totalItems = count($sundrytype);
                                @endphp

                                <div class="billing-container">
                                    @foreach ($sundrytype as $index => $item)
                                        @php
                                            $isFirst = $index === 0;
                                            $isLast = $index === $totalItems - 1;

                                            if ($isFirst) {
                                                $inputName = 'totalamount';
                                                $inputId = 'totalamount';
                                            } elseif ($isLast) {
                                                $inputName = 'netamount';
                                                $inputId = 'netamount';
                                            } else {
                                                $inputName = strtolower(str_replace(' ', '', $item->nature)) . 'amount';
                                                $inputId = $inputName;
                                            }

                                            $isReadonly = $item->automanual == 'A' ? 'readonly' : '';
                                            $isBold = $item->bold == 'Y' ? 'bold-text' : '';

                                            $revCodeAttr = $item->field_type == 'T' ? 'data-revcode="' . $item->revcode . '"' : '';
                                        @endphp

                                        <div class="billing-row">
                                            <div
                                                class="{{ in_array(strtolower($item->nature), ['discount', 'service charge']) ? 'd-flex align-items-center' : '' }}">
                                                <span class="billing-label {{ $isBold }}">{{ $item->disp_name }}</span>

                                                @if (in_array(strtolower($item->nature), ['discount', 'service charge']))
                                                    <input type="text" class="billing-input"
                                                        id="{{ strtolower(str_replace(' ', '', $item->nature)) }}fix"
                                                        name="{{ strtolower(str_replace(' ', '', $item->nature)) }}fix"
                                                        value="{{ $item->svalue }}" {{ $isReadonly }}>
                                                @endif
                                            </div>

                                            <input type="text" class="billing-input sevenem" id="{{ $inputId }}"
                                                name="{{ $inputName }}" value="0.00" {{ $isReadonly }} {!! $revCodeAttr !!}>
                                        </div>
                                    @endforeach
                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table id="purchasebilltable"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Type</th>
                                        <th>Party</th>
                                        <th>Vno</th>
                                        <th>Date</th>
                                        <th>Total Amount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $today = date('Y-m-d');
                                        $blockDays = $enviroinv->blockdays;
                                        $laterdays = date('Y-m-d', strtotime("-{$blockDays} days"));
                                    @endphp
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>
                                                @if ($row->vtype == 'PBPC')
                                                    Purchase Bill(Cash)
                                                @elseif($row->vtype == 'PBPB')
                                                    Purchase Bill(Credit)
                                                @elseif($row->vtype == 'PRPC')
                                                    Purchase Return(Cash)
                                                @elseif($row->vtype == 'PRPB')
                                                    Purchase Return(Credit)
                                                @endif
                                            </td>
                                            <td>{{ $row->subname }}</td>
                                            <td>{{ $row->vno }}</td>
                                            <td>{{ date('d-m-Y', strtotime($row->vdate)) }}</td>
                                            @php
                                                $totalAmt = DB::table('purch2')->where('docid', $row->docid)->sum('amount');
                                            @endphp

                                            <td class="text-right">₹ {{ number_format($row->netamt ?? 0, 2) }}</td>
                                            <td class="ins">
                                                @if ($row->delflag == 'N')
                                                    @if ($superwiser == '1')
                                                        <a href="updatepurchasebill?docid={{ $row->docid }}"> <button
                                                                class="btn btn-success editBtn update-btn btn-sm">
                                                                <i class="fa-regular fa-pen-to-square"></i>Edit
                                                            </button></a>
                                                    @elseif($row->vdate > $laterdays && $superwiser != '0')
                                                        <a href="updatepurchasebill?docid={{ $row->docid }}"> <button
                                                                class="btn btn-success editBtn update-btn btn-sm">
                                                                <i class="fa-regular fa-pen-to-square"></i>Edit
                                                            </button></a>
                                                    @endif
                                                    <a href="{{ url('printpurchbill/' . $row->docid) }}" target="_blank">
                                                        <button class="btn btn-primary btn-sm"><i class="fas fa-print"></i>
                                                            Print</button>
                                                    </a>
                                                    <a href="deletepurchbill?docid={{ $row->docid }}"><button
                                                            class="btn btn-danger btn-sm delete-btn">
                                                            <i class="fa-solid fa-trash"></i> Delete
                                                        </button></a>
                                                @else
                                                    <b class="text-danger">This record has been deleted.</b>
                                                    <a href="{{ url('printpurchbill/' . $row->docid) }}" target="_blank">
                                                        <button class="btn btn-primary btn-sm"><i class="fas fa-print"></i>
                                                            Print</button>
                                                    </a>
                                                @endif
                                            </td>
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


    <script>
        $(document).ready(function() {
            let table = new DataTable('#purchasebilltable', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    'excel', 'pdf', 'print'
                ]
            });
            $('.billing-container').fadeOut(1500);
            var totalqty;
            $('#partycodet').fadeOut();
            $('label[for="partycodet"]').hide();
            $(document).on('change', '#vtype', function() {
                let vtype = $(this).val();
                if (vtype == '') {
                    $('label[for="partycodet"]').hide();
                    $('#partycodet').fadeOut('500');
                    $('#partycode').val('');
                    setTimeout(() => {
                        $('#partycode').fadeIn('500');
                    }, 500);
                    return;
                }

                $('#exmrno').empty('');

                if (vtype == 'PBPC') {
                    $('#partycode').fadeOut('500');
                    $('#partycode').val('');
                    $('#gstinnumber').text('');
                    $('#partygstin').val('');
                    $('#partycodet').val('');
                    setTimeout(() => {
                        $('#partycodet').fadeIn('500');
                    }, 500);
                } else if (vtype == 'PBPB') {
                    $('label[for="partycodet"]').hide();
                    $('#partycodet').fadeOut('500');
                    $('#partycode').val('');
                    setTimeout(() => {
                        $('#partycode').fadeIn('500');
                    }, 500);
                }

                const postdata = {
                    'vtype': vtype,
                    'vdate': $('#vdate').val()
                };
                const options = {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}",
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify(postdata)
                };
                fetch('purchasebillno', options)
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Network response was not ok');
                        }
                        return response.json();
                    })
                    .then(data => {
                        $('#mrno').val(data.mrno);
                        if (vtype == 'PBPC') {
                            let opt = `<option value=''>Select</option>`;
                            data.cashmrentry.forEach((row, index) => {
                                opt += `<option data-docid='${row.docid}' value='${row.vno}'>${row.vno}</option>`
                            });
                            $('#exmrno').append(opt);
                        } else {
                            let opt = `<option value=''>Select</option>`;
                            $('#exmrno').append(opt);
                        }
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch operation:', error);
                    });
            });

            let billnotimer;

            $(document).on('input', '#billno', function() {
                clearTimeout(billnotimer);
                billnotimer = setTimeout(() => {
                    let billno = $('#billno').val().trim();

                    if (billno == '') {
                        return;
                    }
                    let vtype = $('#vtype').val();
                    let partycode = $('#partycode').val() || $('#partycodet').val();
                    let vdate = $('#vdate').val();

                    if (vtype == '' || partycode == '' || vdate == '') {
                        $('#billno').val('');
                        pushNotify('error', 'Validation Error', 'Please select Type, Party and Date first', 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                        return;
                    }

                    $.ajax({
                        url: "{{ url('checkbillno') }}",
                        method: "POST",
                        data: {
                            _token: "{{ csrf_token() }}",
                            billno: billno,
                            vtype: vtype,
                            partycode: partycode,
                            vdate: vdate
                        },
                        success: function(response) {
                            if (response.success) {
                                if (response.exists) {
                                    $('#billno').val('');
                                    pushNotify('error', 'Duplicate Bill No.', 'The bill number already exists for the selected type, party, and date. Please enter a unique bill number.', 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                                }
                            } else {
                                pushNotify('error', 'Error', response.message, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            }
                        },
                        error: function(xhr, status, error) {
                            console.error('Error checking bill number:', error);
                            pushNotify('error', 'Server Error', 'Unable to verify bill number right now.', 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                        }
                    });

                }, 500);

            });

            let docid;
            $(document).on('change', '#partycode', function() {
                $('#gstin, #exmrno').html('');
                $('#gstin, #exmrno').prop('readonly', false);
                $('#gstinnumber').text('');
                $('#partygstin').val('');
                if ($(this).val() != '') {
                    let gstin = $(this).find('option:selected').data('gstin');
                    docid = $(this).find('option:selected').data('docid');
                    $('#partycodet').val($(this).val());
                    if (gstin != '') {
                        $('#gstin').val(gstin);
                        $('#gstinnumber').text(`GSTIN: ${gstin}`);
                        $('#gstin').prop('readonly', true);
                        $('#partygstin').val(gstin);
                    } else {
                        $('#gstin').val('');
                        $('#gstinnumber').text('');
                        $('#gstin').prop('readonly', false);
                        $('#partygstin').val('');
                        $('.invtype').each(function() {
                            $(this).prop('checked', false);
                        });
                    }

                    let partycode = $(this).val();
                    const postdata = {
                        'partycode': partycode
                    };
                    const options = {
                        method: 'POST',
                        headers: {
                            'X-CSRF-TOKEN': "{{ csrf_token() }}",
                            'content-type': 'application/json'
                        },
                        body: JSON.stringify(postdata)
                    };
                    fetch('partydata', options)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            if (data.gin) {
                                let opt = `<option value=''>Select</option>`;
                                data.gin.forEach((row, index) => {
                                    opt += `<option data-docid='${row.docid}' value='${row.vno}'>${row.vno}</option>`
                                });
                                $('#exmrno').append(opt);
                            } else {
                                $('#exmrno').val('');
                            }
                        })
                        .catch(error => {
                            console.error('There was a problem with the fetch operation:', error);
                        });
                }
            });



            let taxstrudata;
            let ledgerdata;
            let envinventory;
            $(document).on('change', '#exmrno', function() {
                if ($(this).val() != '') {
                    let docidfin = $(this).find('option:selected').data('docid');
                    $('#exmrdocid').val(docidfin);
                    const postdata = {
                        'docid': docidfin,
                        'partycode': $('#partycode').val()
                    };

                    const options = {
                        method: 'POST',
                        headers: {
                            'X-CSRF-TOKEN': "{{ csrf_token() }}",
                            'content-type': 'application/json'
                        },
                        body: JSON.stringify(postdata)
                    };

                    fetch('mritems', options)
                        .then(response => response.json())
                        .then(data => {
                            if (data.items.length > 0) {
                                $('.billing-container').fadeIn();
                                $('#gindocid').val(docid);
                                $('#mritemyn').val('Y');
                                let stockitems = data.stockitems;
                                let items = data.items;
                                let godown = data.godown;
                                taxstrudata = data.taxstrudata;
                                ledgerdata = data.ledgerdata;
                                let units = data.units;
                                $('#totalitem').val(stockitems.length);
                                let tr = '';
                                let totalqty = 0;
                                let ratesum = 0.00;
                                let amountsum = 0.00;

                                let gin = data.gin;

                                if (gin.vtype == 'MRCH') {
                                    $('#partycode').fadeOut('500');
                                    $('#partycode').val('');
                                    $('#gstinnumber').text('');
                                    $('#partygstin').val('');
                                    $('#partycodet').val(gin.partyname);
                                    setTimeout(() => {
                                        $('#partycodet').fadeIn('500');
                                    }, 500);
                                }

                                stockitems.forEach((sitem, index) => {
                                    let newIndex = index + 1;
                                    totalqty += parseFloat(sitem.qtyrec);
                                    ratesum += parseFloat(sitem.rate);
                                    amountsum += parseFloat(sitem.amount);
                                    tr += `<tr>
                                                            <td class='sr-col text-center'>${newIndex}</td>
                                                            <td><select class='form-control select2-multiple items' name='item${newIndex}' id='item${newIndex}' required>
                                                                <option value=''>Select Item</option>
                                                                ${items.map(item => `<option data-accode=${item.AcCode} ${item.Code == sitem.item ? 'selected' : ''} data-expiry='${item.expiry_applicable}' data-convratio='${item.ConvRatio}' data-unit='${item.Unit}' data-issueunit='${item.IssueUnit}' data-purchrate='${item.PurchRate}' value='${item.Code}'>${item.Name}</option>`).join('')}
                                                            </select>
                                                            <input type='hidden' name='unithidden${newIndex}' id='unithidden${newIndex}'>
                                                            <input type='hidden' name='wtunithidden${newIndex}' id='wtunithidden${newIndex}'>
                                                            <input value='${sitem.sno}' type='hidden' name='issno${newIndex}' id='issno${newIndex}'>
                                                            <input value='${sitem.convratio}' type='hidden' name='convratio${newIndex}' id='convratio${newIndex}'>
                                                            <input value='${sitem.chalqty}' type='hidden' class='form-control chalqtys' name='chalqty${newIndex}' id='chalqty${newIndex}' placeholder='Chal. Qty.'>
                                                            <input value='${sitem.recdqty}' type='hidden' class='form-control recdqtys' name='recdqty${newIndex}' id='recdqty${newIndex}' placeholder='Recd. Qty.' readonly>
                                                            <input value='${sitem.rejqty}' type='hidden' class='form-control rejqtys' name='rejqty${newIndex}' id='rejqty${newIndex}' placeholder='Rej. Qty.'>
                                                            <input value='${sitem.accqty}' type='hidden' class='form-control accqtys' name='accqty${newIndex}' id='accqty${newIndex}' placeholder='Acc. Qty.' readonly>
                                                            <input value='${sitem.taxrate}' type='hidden' class='form-control taxrates' name='taxrate${newIndex}' id='taxrate${newIndex}' placeholder='Tax Rate' readonly>
                                                            <input type='hidden' class='form-control taxeamts' name='taxamt${newIndex}' id='taxamt${newIndex}' placeholder='Tax Rate' readonly>
                                                            <input value='${sitem.taxcodes}' type='hidden' class='form-control taxcodes' name='taxcode${newIndex}' id='taxcode${newIndex}' placeholder='Tax Code' readonly>
                                                            <input value='${sitem.qtyrec}' type='hidden' class='form-control fixqtys' name='fixqty${newIndex}' id='fixqty${newIndex}' placeholder='Mr. Qty.'>
                                                            <input value='${sitem.specification}' type='hidden' class='form-control specification' name='specification${newIndex}' id='specification${newIndex}' placeholder='Enter Specification'>
                                                            <select class='form-control none wtunits' name='wtunit${newIndex}' id='wtunit${newIndex}'>
                                                                <option value=''>Select Wt. Unit</option>
                                                            ${units.map(row => `<option ${row.ucode == sitem.issueunit ? 'selected' : ''} value='${row.ucode}'>${row.name}</option>`).join('')}</select>
                                                            </td>
                                                            <td><select class='form-control readonly units' name='unit${newIndex}' id='unit${newIndex}' required>
                                                                <option value=''>Select Unit</option>
                                                            ${units.map(row => `<option ${row.ucode == sitem.unit ? 'selected' : ''} value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                                                            <td><input value='${sitem.qtyrec}' type='text' class='form-control qtyisss' name='qtyiss${newIndex}' id='qtyiss${newIndex}' placeholder='Item. Qty.'></td>
                                                            <td class='none'><input value='${sitem.recdunit}' type='hidden' class='form-control wtqtys' name='wtqty${newIndex}' id='wtqty${newIndex}' placeholder='Wt. Qty.'></td>
                                                            <td><input value='${sitem.rate}' type='text' class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}' placeholder='Enter Rate'></td>
                                                            <td>
                                                                <input value='${sitem.amount}' type='text' class='form-control amounts' name='amount${newIndex}' id='amount${newIndex}' placeholder='Amount'>
                                                                <input value='${sitem.amount}' type='hidden' class='form-control discamts' name='discamt${newIndex}' id='discamt${newIndex}' placeholder='Amount'>
                                                            </td>
                                                            <td><select class='form-control godowns' name='godown${newIndex}' id='godown${newIndex}' required>
                                                                <option value=''>Select Godown</option>
                                                            ${godown.map(row => `<option ${row.scode == sitem.godowncode ? 'selected' : ''} value='${row.scode}'>${row.name}</option>`).join('')}</select></td>
                                                            <td><select class='form-control taxstructures' name='taxstructure${newIndex}' id='taxstructure${newIndex}' required>
                                                                <option value=''>Select Tax Structure</option>
                                                            ${taxstrudata.map(row => `<option data-taxcode='${row.taxcodes}' data-rate='${row.taxrate ?? '0'}' ${row.str_code == sitem.str_code ? 'selected' : ''} value='${row.str_code}'>${row.name}</option>`).join('')}</select></td>
                                                             <td><select class='form-control ledgers' name='ledger${newIndex}' id='ledger${newIndex}' required>
                                                                 <option value=''>Select Account</option>
                                                             ${ledgerdata.map(row => `<option value='${row.sub_code}' ${row.sub_code == sitem.AcCode ? 'selected' : ''}>${row.name}</option>`).join('')}</select></td>
                                                             <td><input type='text' class='form-control batch_nos' name='batch_no${newIndex}' id='batch_no${newIndex}' placeholder='Batch No.' style='${sitem.expiry_applicable == 1 ? "" : "display:none;"}' value='${sitem.batch_no ?? ''}'></td>
                                                             <td><input type='date' class='form-control mfg_dates' name='mfg_date${newIndex}' id='mfg_date${newIndex}' style='${sitem.expiry_applicable == 1 ? "" : "display:none;"}' value='${sitem.mfg_date ?? ''}'></td>
                                                             <td><input type='date' class='form-control expiry_dates' name='expiry_date${newIndex}' id='expiry_date${newIndex}' style='${sitem.expiry_applicable == 1 ? "" : "display:none;"}' value='${sitem.expiry_date ?? ''}'></td>
                                                             <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                                                         </tr>`;
                                });
                                let discountfix = $('#discountfix').val();
                                calculateamt();
                                $('.addbtn').fadeOut('1500');
                                $('#itemtable tbody').append(tr);
                                checkExpiryColumns();
                                $(`#item${newIndex}`).select2();
                            } else {
                                pushNotify('error', 'MR Entry', 'Items Not Found', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                                $('.addbtn').fadeIn('1500');
                            }
                        })
                        .catch(error => {
                            console.error('There was a problem with the fetch operation:', error);
                        });
                }
            });

            $(document).on('click', '#additem', function() {
                let tbody = $('#itemtable tbody');

                fetch('purchaseitems')
                    .then(response => {
                        if (!response.ok) throw new Error('Network response was not ok');
                        return response.json();
                    })
                    .then(data => {
                        if (data.items.length > 0) {

                            $('#mritemyn').val('N');

                            let items = data.items;
                            let godown = data.godown;
                            let units = data.units;

                            taxstrudata = data.taxstrudata;
                            ledgerdata = data.ledgerdata;

                            let rowCount = tbody.find('tr').length;
                            let newIndex = rowCount + 1;

                            $('#totalitem').val(newIndex);
                            envinventory = data.envinventory;

                            let tr = `<tr>
                    <td class='sr-col text-center'>${newIndex}</td>

                    <td>
                        <select class='form-control select2-multiple items' name='item${newIndex}' id='item${newIndex}' required>
                            <option value=''>Select Item</option>
                            ${items.map(item => `
                                        <option 
                                            value='${item.Code}'
                                            data-accode='${item.AcCode}'
                                            data-strcode='${item.str_code}'
                                            data-taxrate='${item.taxrate}'
                                            data-taxcode='${item.taxcodes}'
                                            data-convratio='${item.ConvRatio}'
                                            data-unit='${item.Unit}'
                                            data-issueunit='${item.IssueUnit}'
                                            data-purchrate='${item.PurchRate}'
                                            data-expiry='${item.expiry_applicable}'
                                        >${item.Name}</option>
                                    `).join('')}
                        </select>

                        <input type='hidden' name='unithidden${newIndex}' id='unithidden${newIndex}'>
                        <input type='hidden' name='wtunithidden${newIndex}' id='wtunithidden${newIndex}'>
                        <input type='hidden' name='convratio${newIndex}' id='convratio${newIndex}'>
                        <input type='hidden' name='taxrate${newIndex}' id='taxrate${newIndex}'>
                        <input type='hidden' name='taxcode${newIndex}' id='taxcode${newIndex}'>
                    </td>

                    <td>
                        <select class='form-control units' name='unit${newIndex}' id='unit${newIndex}' required>
                            <option value=''>Select Unit</option>
                            ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}
                        </select>
                    </td>

                    <td>
                        <input type='text' class='form-control qtyisss' name='qtyiss${newIndex}' id='qtyiss${newIndex}' value='0'>
                    </td>

                    <td>
                        <input type='text' class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}'>
                    </td>

                    <td>
                        <input type='text' class='form-control amounts' name='amount${newIndex}' id='amount${newIndex}'>
                        <input value='0' type='hidden' class='form-control discamts' name='discamt${newIndex}' id='discamt${newIndex}' placeholder='Amount'>
                    </td>

                    <td>
                        <select class='form-control godowns' name='godown${newIndex}' id='godown${newIndex}' required>
                            <option value=''>Select Godown</option>
                            ${godown.map(row => `<option value='${row.scode}'>${row.name}</option>`).join('')}
                        </select>
                    </td>

                    <td>
                        <select class='form-control taxstructures' name='taxstructure${newIndex}' id='taxstructure${newIndex}' required>
                            <option value=''>Select Tax Structure</option>
                            ${taxstrudata.map(row => `<option data-taxcode='${row.taxcodes}' data-rate='${row.taxrate ?? '0'}' value='${row.str_code}'>${row.name}</option>`).join('')}
                        </select>
                    </td>

                    <td>
                        <select class='form-control ledgers' name='ledger${newIndex}' id='ledger${newIndex}' required>
                            <option value=''>Select Account</option>
                            ${ledgerdata.map(row => `<option value='${row.sub_code}'>${row.name}</option>`).join('')}
                        </select>
                    </td>

                    <td>
                        <input type='text' class='form-control batch_nos' name='batch_no${newIndex}' id='batch_no${newIndex}' placeholder='Batch No.' style='display:none;'>
                    </td>

                    <td>
                        <input type='date' class='form-control mfg_dates' name='mfg_date${newIndex}' id='mfg_date${newIndex}' style='display:none;'>
                    </td>

                    <td>
                        <input type='date' class='form-control expiry_dates' name='expiry_date${newIndex}' id='expiry_date${newIndex}' style='display:none;'>
                    </td>

                    <td>
                        <span class='removerow'><i class="fa-solid fa-eraser"></i></span>
                    </td>
                </tr>`;

                            $('#itemtable tbody').append(tr);

                            let el = $(`#item${newIndex}`);
                            el.select2({
                                width: '100%'
                            });

                            calculateamt();

                        } else {
                            pushNotify('error', 'MR Entry', 'Items Not Found', 'fade', 300);
                        }
                    })
                    .catch(error => console.error(error));
            });

            function makeSelectLockable(selectorClass) {
                $(document).on("click", selectorClass, function(e) {
                    setTimeout(() => {
                        $(this).prop("disabled", true);
                    }, 0);
                });
                $(document).on("click", function(e) {
                    if (!$(e.target).closest(selectorClass).length) {
                        $(selectorClass).prop("disabled", false);
                    }
                });
            }
            makeSelectLockable(".units");

            $(document).on('click', '.removerow', function() {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
                row.remove();

                $('#itemtable tbody tr').each(function(index) {
                    let adjustedIndex = index + 1;
                    $('#totalitem').val(adjustedIndex);
                    $(this).find('td.sr-col').text(index + 1);
                    $(this).find('select, input').each(function() {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        if (!originalName || !originalId) {
                            return;
                        }
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                });
                if ($('#itemtable tbody tr').length === 0) {
                    $('#totalitem').val(0);
                }
                calculateamt();
                checkExpiryColumns();
            });

            $(document).on('change', '.items', async function() {
                $('.billing-container').fadeIn();
                let index = $(this).closest('tr').index() + 1;
                let value = $(this).val();

                if (!value || value === '') {
                    checkExpiryColumns();
                    return;
                }

                let unit = $(this).find('option:selected').data('unit');
                let issueunit = $(this).find('option:selected').data('issueunit');
                let purchrate = $(this).find('option:selected').data('purchrate');
                let convratio = $(this).find('option:selected').data('convratio');
                let taxcode = $(this).find('option:selected').data('taxcode');
                let taxrate = $(this).find('option:selected').data('taxrate');
                let strcode = $(this).find('option:selected').data('strcode');
                let accode = $(this).find('option:selected').data('accode');
                let lpurrate = $(this).find('option:selected').data('lpurrate');
                let expiryApplicable = $(this).find('option:selected').data('expiry');

                if (parseInt(expiryApplicable) === 1) {
                    $(`#batch_no${index}`).show().attr('required', true);
                    $(`#mfg_date${index}`).show();
                    $(`#expiry_date${index}`).show().attr('required', true);
                    Swal.fire({
                        title: 'Expiry Applicable Item',
                        html: `
                            <p style="text-align:left;margin-bottom:12px;">
                                Item <b>${$(this).find('option:selected').text()}</b> requires batch and expiry details.
                            </p>
                            <div style="text-align:left;margin-bottom:8px;">
                                <label style="font-weight:600;font-size:13px;">Batch No. <span style="color:#e74c3c;">*</span></label>
                                <input type="text" id="swal-batch" class="swal2-input" placeholder="Enter Batch No." style="margin:4px 0 0 0;width:100%;">
                            </div>
                            <div style="text-align:left;margin-bottom:8px;">
                                <label style="font-weight:600;font-size:13px;">Mfg. Date</label>
                                <input type="date" id="swal-mfg" class="swal2-input" style="margin:4px 0 0 0;width:100%;">
                            </div>
                            <div style="text-align:left;margin-bottom:4px;">
                                <label style="font-weight:600;font-size:13px;">Expiry Date</label>
                                <input type="date" id="swal-expiry" class="swal2-input" style="margin:4px 0 0 0;width:100%;">
                            </div>`,
                        icon: 'info',
                        confirmButtonText: 'Save & Continue',
                        confirmButtonColor: '#3085d6',
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                        preConfirm: () => {
                            const batch  = document.getElementById('swal-batch').value.trim();
                            const expiry = document.getElementById('swal-expiry').value.trim();
                            if (!batch) {
                                Swal.showValidationMessage('Batch No. is required.');
                                return false;
                            }
                            return {
                                batch:  batch,
                                mfg:    document.getElementById('swal-mfg').value.trim(),
                                expiry: expiry
                            };
                        }
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $(`#batch_no${index}`).val(result.value.batch);
                            $(`#mfg_date${index}`).val(result.value.mfg);
                            $(`#expiry_date${index}`).val(result.value.expiry);
                        }
                    });
                } else {
                    $(`#batch_no${index}`).hide().removeAttr('required').val('');
                    $(`#mfg_date${index}`).hide().val('');
                    $(`#expiry_date${index}`).hide().removeAttr('required').val('');
                }
                checkExpiryColumns();

                let itemratep = 0.00;

                if (envinventory.itemratemrbasedon === 'Purchase Rate') {
                    itemratep = purchrate;
                } else if (envinventory.itemratemrbasedon === 'Last Purchase Rate') {
                    itemratep = purchrate;
                } else if (envinventory.itemratemrbasedon === 'Party Wise Last Purchase Rate') {
                    let postdatap = {
                        itemcode: value,
                        partycode: $('#partycode').val()
                    };

                    const postdata = {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': "{{ csrf_token() }}",
                        },
                        body: JSON.stringify(postdatap)
                    };

                    try {
                        let response = await fetch('partywiserate', postdata);
                        let data = await response.json();

                        if (data.status === 'error') {
                            itemratep = purchrate;
                        } else {
                            itemratep = data.stock.rate;
                        }
                    } catch (error) {
                        console.log(error);
                    }
                }

                $(`#unit${index}`).val(unit);
                $(`#unithidden${index}`).val(unit);
                $(`#wtunit${index}`).val(issueunit);
                $(`#wtunithidden${index}`).val(issueunit);
                $(`#itemrate${index}`).val(itemratep);
                $(`#convratio${index}`).val(convratio);
                $(`#taxcode${index}`).val(taxcode);
                $(`#taxrate${index}`).val(taxrate);
                $(`#taxstructure${index}`).val(strcode);
                $(`#ledger${index}`).val(accode);
            });

            function wtqty(convratio, accqty, index, rate) {
                let wtqty = parseFloat(convratio) * parseFloat(accqty) || 0.00;
                let amount = parseFloat(accqty) * parseFloat(rate) || 0.00;
                $(`#wtqty${index}`).val(wtqty.toFixed(2));
                $(`#amount${index}`).val(amount.toFixed(2));
                $(`#discamt${index}`).val(amount.toFixed(2));
            }

            $(document).on('input', '.rates', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                calculateamt();
            });

            $(document).on('input', '.amounts', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                let amt = $(this).val() / $(`#qtyiss${index}`).val();
                $(`#itemrate${index}`).val(amt.toFixed(2));
                calculateamt();
            });

            $(document).on('input', '.qtyisss', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                calculateamt();
            });

            $(document).on('change', '.taxstructures', function() {
                let index = $(this).closest('tr').index() + 1;
                let rate = $(this).find('option:selected').data('rate');
                let taxcode = $(this).find('option:selected').data('taxcode');
                $(`#taxrate${index}`).val(rate).change();
                $(`#taxcode${index}`).val(taxcode).change();
                calculateamt();
            });

            $('#billimage').change(function() {
                var fileInput = $('#billimage')[0].files[0];
                if (fileInput) {
                    $('#previewbtn').show();
                } else {
                    $('#previewbtn').hide();
                }
            });

            $('#previewbtn').click(function() {
                var fileInput = $('#billimage')[0].files[0];
                if (fileInput) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        $('#imagePreview').attr('src', e.target.result);
                        $('#imageModal').modal('show');
                    }
                    reader.readAsDataURL(fileInput);
                } else {
                    alert('Please select an image first!');
                }
            });

            const sumofamounts = (selector) => {
                let total = 0;
                $(selector).each(function() {
                    total += parseFloat($(this).val()) || 0.00;
                });
                return total;
            }

            $(document).on('change', '.invtype', function() {
                let invtype = $(this).val();
                $('.billnospan').remove();
                let gstin = $('#gstin').val();
                if (gstin == '') {
                    if ($(this).val() == 'saleinvoice' || $(this).val() == 'taxinvoice') {
                        $(this).prop('checked', false);
                        pushNotify('info', 'Purchase Bill', 'GSTIN Not Found', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                    }
                }

                const pdata = {
                    'invtype': invtype,
                };

                const options = {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    },
                    body: JSON.stringify(pdata),
                };
                fetch('/getpurchvno', options)
                    .then(response => response.json())
                    .then(data => {
                        if (data.error) {
                            pushNotify('error', 'Purchase Bill', data.error, 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                        } else {
                            let span = `<span class="billnospan text-danger font-weight-bold">${data}</span>`;
                            $(this).after(span);
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        pushNotify('error', 'Purchase Bill', 'Failed to get Purchase Voucher Number', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                    });
            });

            function handleValue(selector, valueOnClick = '', valueOnBlur = '0.00') {
                $(document).on('click', selector, function() {
                    let value = parseFloat($(this).val()) || 0;
                    if (value <= 0) {
                        $(this).val(valueOnClick);
                    }
                });

                $(document).on('blur', selector, function() {
                    let value = parseFloat($(this).val()) || 0;
                    if (value <= 0) {
                        $(this).val(valueOnBlur);
                    }
                });
            }

            handleValue('#discountfix', '', '0.00');
            handleValue('#additionamount', '', '0.00');
            handleValue('#deductionamount', '', '0.00');
            handleValue('#discountamount', '', '0.00');

            $(document).on('input', '#discountfix', function() {
                if ($(this).val() < 0 || isNaN($(this).val()) || $(this).val() > 90) {
                    $(this).val('0.00');
                }

                calculateamt();
            });

            let disctime;
            $(document).on('input', '#discountamount', function() {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                clearTimeout(disctime);
                disctime = setTimeout(() => {
                    let discountamount = parseFloat($(this).val());
                    let amount = sumofamounts('.discamts') || 0.00;
                    let discountPercentage = (discountamount / amount) * 100;
                    $('#discountfix').val(discountPercentage.toFixed(2));
                    setTimeout(() => {
                        calculateamt();
                    }, 1000);
                }, 2000);
            });

            $(document).on('input', '#additionamount', function() {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                calculateamt();
            });

            $(document).on('input', '.qtyisss', function() {
                let index = $(this).closest('tr').index() + 1;
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                setTimeout(() => {
                    if (parseFloat($(this).val()) > parseFloat($(`#fixqty${index}`).val())) {
                        $(this).val('0.00');
                    }
                    wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                    calculateamt();
                }, 100);
            });

            $(document).on('input', '#deductionamount', function() {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                calculateamt();
            });

            function calcper(amount, percentage) {
                return ((amount * percentage) / 100).toFixed(2);
            }

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            // Expiry columns (header + cells) show/hide based on whether ANY row has expiry item selected
            function checkExpiryColumns() {
                let hasExpiry = false;
                $('#itemtable tbody tr').each(function() {
                    let exp = parseInt($(this).find('.items option:selected').data('expiry')) || 0;
                    if (exp === 1) { hasExpiry = true; return false; } // break
                });
                if (hasExpiry) {
                    $('#th-batch, #th-mfg, #th-expiry').show();
                } else {
                    $('#th-batch, #th-mfg, #th-expiry').hide();
                }
            }

            function calculateamt() {
                setTimeout(() => {
                    index = 1;
                    let tbodyLength = $('#itemtable tbody tr').length;
                    let totalamount = 0;
                    let taxableamt = 0;
                    let fixtaxableamt;
                    $('#taxableamt').val('0.00');
                    let discountinput = parseFloat($('#discountfix').val()) || 0.00;
                    let totalTaxAmount = 0;

                    $('input[data-revcode]').val('0.00');

                    for (let i = 1; i <= tbodyLength; i++) {
                        let itemrate = parseFloat($('#amount' + i).val()) ?? 0.00;
                        if (isNaN(itemrate)) continue;

                        let taxeditemrate = parseFloat($('#amount' + i).val());
                        let newitemrate = (itemrate - (itemrate * discountinput) / 100);
                        taxeditemrate = newitemrate.toFixed(2);
                        $(`#discamt${i}`).val(taxeditemrate);
                        itemrate = Math.floor(itemrate * 100) / 100;
                        totalamount += parseFloat(itemrate);

                        let taxcodes = $('#taxcode' + i).val() ?? '';
                        let taxrates = $('#taxrate' + i).val() ?? '';

                        let taxcodesArray = taxcodes.split(',');
                        let taxratesArray = taxrates.split(',');
                        let totalTaxcodes = taxcodesArray.length;

                        let taxMapping = {};

                        for (let j = 0; j < totalTaxcodes; j++) {
                            let taxCode = taxcodesArray[j]?.trim();
                            let taxRate = parseFloat(taxratesArray[j]?.trim() ?? 0);

                            if (taxCode && !isNaN(taxRate)) {
                                taxMapping[taxCode] = taxRate;
                            }
                        }
                        let rowTaxAmount = 0;
                        for (let taxCode in taxMapping) {
                            let rate = taxMapping[taxCode];
                            let taxAmount = (taxeditemrate * rate) / 100;
                            rowTaxAmount += taxAmount;
                            totalTaxAmount += taxAmount;
                            let input = $('input[data-revcode="' + taxCode + '"]');
                            if (input.length) {
                                let existingTax = parseFloat(input.val()) || 0;
                                input.val((existingTax + taxAmount).toFixed(2));
                            }
                        }
                        $(`#taxamt${i}`).val(rowTaxAmount.toFixed(2));
                        if (rowTaxAmount > 0) {
                            taxableamt += parseFloat(taxeditemrate);
                        }
                        index++;
                    }

                    fixtaxableamt = taxableamt.toFixed(2);
                    $('#taxableamt').val(fixtaxableamt);
                    let totalamounts = sumofamounts('.amounts') || 0.00;
                    let discountper = parseFloat($('#discountfix').val()) || 0.00;
                    let additionamount = parseFloat($('#additionamount').val()) || 0.00;
                    let deductionamount = parseFloat($('#deductionamount').val()) || 0.00;
                    $('#totalamount').val(totalamounts.toFixed(2));
                    let discamount = (totalamounts * discountper) / 100 || 0.00;
                    $('#discountamount').val(discamount.toFixed(2));
                    let discountamount = parseFloat($("#discountamount").val() || 0.00);
                    let totalAmount = parseFloat($('#totalamount').val()) || 0;
                    let deductamt = deductionamount + discountamount;
                    let finalAmount = (totalAmount + totalTaxAmount + additionamount) - deductamt;
                    finalAmount = Number(finalAmount.toFixed(2));

                    let roundofftype = "{{ inventoryparameter()->roundofftype ?? 'Standard' }}";
                    let paise = finalAmount - Math.floor(finalAmount);
                    let integervalue;
                    if (roundofftype === 'Standard') {
                        integervalue = (paise < 0.50) ? Math.floor(finalAmount) : Math.ceil(finalAmount);
                    } else if (roundofftype === 'Upper') {
                        integervalue = Math.ceil(finalAmount);
                    } else {
                        integervalue = Math.round(finalAmount);
                    }
                    let decimalvalue = Number((integervalue - finalAmount).toFixed(2));
                    $('#roundoffamount').val(decimalvalue.toFixed(2));
                    $('#netamount').val(Number(integervalue).toFixed(2));

                }, 200);
            }

            $('#purchaseentryform').on('submit', function(e) {
                e.preventDefault();

                let netamount = parseFloat($('#netamount').val()) || 0;

                if (netamount < 1) {
                    Swal.fire({
                        title: 'Validation Error',
                        text: 'Atleast Select 1 Item to Submit!',
                        icon: 'error',
                        confirmButtonText: 'Okay'
                    });
                    return;
                }

                // Expiry applicable items ka batch/expiry check
                let expiryError = [];
                $('#itemtable tbody tr').each(function(index) {
                    let rowNo = index + 1;
                    let selectedOption = $(this).find('.items option:selected');
                    let expiryApplicable = parseInt(selectedOption.data('expiry')) || 0;

                    if (expiryApplicable === 1) {
                        let batchNo    = $.trim($(`#batch_no${rowNo}`).val());
                        let expiryDate = $.trim($(`#expiry_date${rowNo}`).val());

                        if (batchNo === '' || expiryDate === '') {
                            let itemName = selectedOption.text();
                            expiryError.push(`<b>Row ${rowNo} — ${itemName}:</b> Batch No. and Expiry Date are required.`);
                        }
                    }
                });

                if (expiryError.length > 0) {
                    Swal.fire({
                        title: '⚠️ Expiry Details Missing!',
                        html: '<div style="text-align:left;font-size:14px;">' + expiryError.join('<br>') + '</div><br><span style="color:#e74c3c;font-weight:600;">Please fill in Batch No. and Expiry Date for the above items before submitting.</span>',
                        icon: 'warning',
                        confirmButtonText: 'OK, I will fill the details',
                        confirmButtonColor: '#e74c3c',
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                    });
                    return;
                }

                let form = this;
                let submitBtn = $(form).find('button[type="submit"]');

                submitBtn.prop('disabled', true);

                $.ajax({
                    url: $(form).attr('action'),
                    type: $(form).attr('method'),
                    data: new FormData(form),
                    processData: false,
                    contentType: false,
                    cache: false,

                    success: function(response) {
                        if (response.success === true) {
                            Swal.fire({
                                title: 'Success',
                                text: response.message || 'Form submitted successfully!',
                                icon: 'success'
                            }).then(() => location.reload());
                        } else {
                            submitBtn.prop('disabled', false);

                            Swal.fire({
                                title: 'Error',
                                text: response.message || 'Something went wrong!',
                                icon: 'error'
                            });
                        }
                    },

                    error: function() {
                        submitBtn.prop('disabled', false);

                        Swal.fire({
                            title: 'Error',
                            text: 'Server error occurred!',
                            icon: 'error'
                        });
                    }
                });
            });
        });
    </script>
@endsection
