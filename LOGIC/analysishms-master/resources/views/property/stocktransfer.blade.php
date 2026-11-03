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
                            <form class="form" action="{{ route('stocktransfersubmit') }}" name="stocktransferform"
                                id="stocktransferform" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="totalitem" id="totalitem">
                                <input type="hidden" name="taxableamt" id="taxableamt">
                                <input type="hidden" name="partygstin" id="partygstin">
                                <input type="hidden" name="gindocid" id="gindocid">
                                <input type="hidden" name="mritemyn" id="mritemyn">
                                <input type="hidden" name="netamount" id="netamount">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="transferno" class="col-form-label">Transfer. No</label>
                                            <input type="number" value="{{ $vno }}" class="form-control"
                                                name="transferno" id="transferno" required readonly>
                                            @error('transferno')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="vdate" class="col-form-label">Date</label>
                                            <input type="date" value="{{ date('Y-m-d') }}" class="form-control"
                                                name="vdate" id="vdate" required
                                                @if(($enviroinv->allow_future_date_pr ?? 'Y') == 'N') max="{{ date('Y-m-d') }}" @endif>
                                            @error('vdate')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="fromlocation" class="col-form-label">From Location</label>
                                            <select class="form-control" name="fromlocation" id="fromlocation" required>
                                                <option value="">Select</option>
                                                @foreach ($godown as $item)
                                                    <option value="{{ $item->scode }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                            @error('fromlocation')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="tolocation" class="col-form-label">To Location</label>
                                            <select class="form-control" name="tolocation" id="tolocation" required>
                                                <option value="">Select</option>
                                                @foreach ($godown as $item)
                                                    <option value="{{ $item->scode }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                            @error('tolocation')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="remarks" class="col-form-label">Remarks</label>
                                            <input type="text" class="form-control" name="remarks" id="remarks">
                                            @error('remarks')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
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
                                                <th>S.R.</th>
                                                <th>Item Name</th>
                                                <th>Unit</th>
                                                <th>Qty</th>
                                                <th>Rate</th>
                                                <th>Amount</th>
                                                <th><i class="fa-solid fa-square-caret-down"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>

                            <div class="mt-4">
                                <div>
                                    <span class="text-danger font-weight-bold" id="stockvalshow"></span>
                                </div>

                                <div class="row">
                                    <div class="offset-10">
                                        <div class="text-right">
                                            <label for="totalamount">Total Amount</label>
                                            <input type="text" class="form-control" name="totalamount"
                                                id="totalamount" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="table-responsive mt-3">
                                    <table id="stockitem"
                                        class="table table-hover table-download-with-search table-hover table-striped">
                                        <thead class="bg-secondary">
                                            <tr>
                                                <th>Vno</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php $sn = 1; @endphp
                                            @php
                                                $today = date('Y-m-d');
                                                $blockDays = $enviroinv->blockdays;
                                                $laterdays = date('Y-m-d', strtotime("-{$blockDays} days"));
                                            @endphp
                                            @foreach ($data as $row)
                                                <tr>
                                                    <td>{{ $row->vno }}</td>
                                                    <td>{{ $row->stockfrom }}</td>
                                                    <td>{{ $row->stockto }}</td>
                                                    <td>{{ date('d-m-Y', strtotime($row->vdate)) }}</td>
                                                    <td class="ins">
                                                        @if ($row->delflag == 'N')
                                                            @if ($superwiser == '1')
                                                                <a href="updatestocktransfer/{{ $row->vno }}">
                                                                    <button class="btn btn-success editBtn update-btn btn-sm">
                                                                        <i class="fa-regular fa-pen-to-square"></i> Edit
                                                                    </button>
                                                                </a>
                                                            @elseif($row->vdate > $laterdays && $superwiser != '0')
                                                                <a href="updatestocktransfer/{{ $row->vno }}">
                                                                    <button class="btn btn-success editBtn update-btn btn-sm">
                                                                        <i class="fa-regular fa-pen-to-square"></i> Edit
                                                                    </button>
                                                                </a>
                                                            @endif
                                                            <!-- PRINT BUTTON -->
                                                            <a href="printstocktransfer/{{ $row->vno }}" target="_blank">
                                                                <button class="btn btn-info btn-sm">
                                                                    <i class="fa fa-print"></i> Print
                                                                </button>
                                                            </a>
                                                            <a href="deletestocktransfer/{{ $row->vno }}"><button
                                                                    class="btn btn-danger btn-sm delete-btn">
                                                                    <i class="fa-solid fa-trash"></i> Delete
                                                                </button></a>
                                                        @else
                                                            <b class="text-danger">This record has been deleted.</b>
                                                            <a href="printstocktransfer/{{ $row->vno }}" target="_blank">
                                                                <button class="btn btn-info btn-sm">
                                                                    <i class="fa fa-print"></i> Print
                                                                </button>
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
        </div>
    </div>


    <script>
        $(document).ready(function() {
            var totalqty;

            let taxstrudata;
            let ledgerdata;
            let envinventory;

            function getFromLocation() {
                return $('#fromlocation option:selected').val();
            }

            $(document).on('click', '#additem', function() {
                let fromlocation = getFromLocation();
                if (!fromlocation || fromlocation === '') {
                    Swal.fire({
                        title: 'Warning',
                        text: 'Please select From Location first!',
                        icon: 'warning',
                        confirmButtonText: 'Okay'
                    });
                    return;
                }

                let tbody = $('#itemtable tbody');
                fetch('purchaseitems')
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Network response was not ok');
                        }
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
                            envinventory = data.envinventory;
                            $('#totalitem').val(newIndex);
                            let tr = `<tr>
                        <td>${newIndex}</td>
                        <td><select class='form-control select2-multiple items' name='item${newIndex}' id='item${newIndex}' required>
                            <option value=''>Select Item</option>
                            ${items.map(item => `<option data-expiry='${item.expiry_applicable}' data-lpurrate='${item.LPurRate}' data-accode=${item.AcCode} data-strcode='${item.str_code}' data-taxrate='${item.taxrate}' data-taxcode='${item.taxcodes}' data-convratio='${item.ConvRatio}' data-unit='${item.Unit}' data-issueunit='${item.IssueUnit}' data-purchrate='${item.PurchRate}' value='${item.Code}'>${item.Name}</option>`).join('')}
                        </select>
                        <input type='hidden' name='unithidden${newIndex}' id='unithidden${newIndex}'>
                        <input type='hidden' name='wtunithidden${newIndex}' id='wtunithidden${newIndex}'>
                        <input type='hidden' name='convratio${newIndex}' id='convratio${newIndex}'>
                        <input type='hidden' class='form-control specification' name='specification${newIndex}' id='specification${newIndex}' placeholder='Enter Specification'>
                        <input type='hidden' class='form-control chalqtys' name='chalqty${newIndex}' id='chalqty${newIndex}' placeholder='Chal. Qty.'>
                        <input type='hidden' class='form-control recdqtys' name='recdqty${newIndex}' id='recdqty${newIndex}' placeholder='Recd. Qty.' readonly>
                        <input type='hidden' class='form-control rejqtys' name='rejqty${newIndex}' id='rejqty${newIndex}' placeholder='Rej. Qty.'>
                        <input type='hidden' class='form-control accqtys' name='accqty${newIndex}' id='accqty${newIndex}' placeholder='Acc. Qty.' readonly>
                        <input type='hidden' class='form-control taxrates' name='taxrate${newIndex}' id='taxrate${newIndex}' placeholder='Tax Rate' readonly>
                        <input type='hidden' class='form-control taxeamts' name='taxamt${newIndex}' id='taxamt${newIndex}' placeholder='Tax Rate' readonly>
                        <input type='hidden' class='form-control taxcodes' name='taxcode${newIndex}' id='taxcode${newIndex}' placeholder='Tax Code' readonly>
                        <input type='hidden' name='batch_no${newIndex}' id='batch_no${newIndex}'>
                        <input type='hidden' name='expiry_date${newIndex}' id='expiry_date${newIndex}'>
                        <input type='hidden' name='mfg_date${newIndex}' id='mfg_date${newIndex}'>
                        </td>
                        <td><select class='form-control readonly units' name='unit${newIndex}' id='unit${newIndex}' required>
                            <option value=''>Select Unit</option>
                        ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                        <td class='none'><select class='form-control wtunits' name='wtunit${newIndex}' id='wtunit${newIndex}'>
                            <option value=''>Select Wt. Unit</option>
                        ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                        <td><input value='0' type='text' class='form-control qtyisss' name='qtyiss${newIndex}' id='qtyiss${newIndex}' placeholder='Item. Qty.'></td>
                        <td class='none'><input type='hidden' class='form-control wtqtys' name='wtqty${newIndex}' id='wtqty${newIndex}' placeholder='Wt. Qty.'></td>
                        <td><input type='text' class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}' placeholder='Enter Rate'></td>
                        <td>
                            <input type='text' class='form-control amounts' name='amount${newIndex}' id='amount${newIndex}' placeholder='Amount'>
                            <input type='hidden' class='form-control discamts' name='discamt${newIndex}' id='discamt${newIndex}' placeholder='Amount'>
                        </td>
                        <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                        </tr>`;
                            $('#itemtable tbody').append(tr);
                            $(`#item${newIndex}`).select2();
                            calculateamt();
                        } else {
                            pushNotify('error', 'MR Entry', 'Items Not Found', 'fade', 300, '', '',
                                true, true, true, 2000, 20, 20, 'outline', 'right top');
                        }
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch operation:', error);
                    });
            });

            $(document).on('click', '.removerow', function() {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
                row.remove();

                $('#itemtable tbody tr').each(function(index) {
                    let adjustedIndex = index + 1;
                    $('#totalitem').val(adjustedIndex);
                    $(this).find('td:first').text(adjustedIndex);
                    $(this).find('select, input').each(function() {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                });
                calculateamt();
            });

            // SINGLE merged .items change handler
            $(document).on('change', '.items', function() {
                let fromlocation = getFromLocation();
                if (!fromlocation || fromlocation === '') {
                    Swal.fire({
                        title: 'Warning',
                        text: 'Please select From Location first!',
                        icon: 'warning',
                        confirmButtonText: 'Okay'
                    });
                    $(this).val(null).trigger('change');
                    return;
                }

                let index = $(this).closest('tr').index() + 1;
                let value = $(this).val();
                let itemname = $(this).find('option:selected').text();
                let unit = $(this).find('option:selected').data('unit');
                let issueunit = $(this).find('option:selected').data('issueunit');
                let purchrate = $(this).find('option:selected').data('purchrate');
                let convratio = $(this).find('option:selected').data('convratio');
                let taxcode = $(this).find('option:selected').data('taxcode');
                let taxrate = $(this).find('option:selected').data('taxrate');
                let strcode = $(this).find('option:selected').data('strcode');
                let accode = $(this).find('option:selected').data('accode');
                let lpurrate = $(this).find('option:selected').data('lpurrate');
                let expiryApplicable = parseInt($(this).find('option:selected').data('expiry')) || 0;
                let itemratep = 0.00;
                if (envinventory.itemratemrbasedon == 'Purchase Rate') {
                    itemratep = purchrate;
                } else if (envinventory.itemratemrbasedon == 'Last Purchase Rate') {
                    itemratep = lpurrate;
                } else {
                    itemratep = lpurrate;
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

                // batch_no / expiry_date reset when item changes
                $(`#batch_no${index}`).val('');
                $(`#expiry_date${index}`).val('');
                $(`#mfg_date${index}`).val('');

                const datap = {
                    'icode': value,
                    'departcode': getFromLocation().trim()
                };
                const options = {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    body: JSON.stringify(datap)
                };
                fetch('itemstockval', options)
                    .then(response => response.json())
                    .then(data => {
                        $('#stockvalshow').text(`IN STOCK ${itemname} : ${data.qty}`);
                        let ir =
                            `<input type='hidden' class='form-control stockval' name='stockval${index}' id='stockval${index}' value='${data.qty}'>`;
                        $(this).closest('tr').append(ir);

                        // Agar expiry applicable item hai to batch selection popup kholo
                        if (expiryApplicable === 1) {
                            fetch('getitemstockbatches', {
                                method: 'POST',
                                headers: {
                                    'Content-Type': 'application/json',
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                },
                                body: JSON.stringify({
                                    icode: value,
                                    godowncode: getFromLocation().trim()
                                })
                            })
                            .then(r => r.json())
                            .then(bdata => {
                                let batches = bdata.batches || [];
                                if (batches.length === 0) {
                                    Swal.fire({
                                        title: 'No Batches Available',
                                        html: `Item <b>${itemname}</b> ke liye <b>${$('#fromlocation option:selected').text()}</b> mein koi batch available nahi hai.`,
                                        icon: 'warning',
                                        confirmButtonText: 'OK'
                                    });
                                    return;
                                }

                                let batchRows = batches.map((b, idx) =>
                                    `<tr id="batch-row-${idx}"
                                        data-batch='${b.batch_no}'
                                        data-expiry='${b.expiry_date ?? ""}'
                                        data-mfg='${b.mfg_date ?? ""}'
                                        data-avail='${parseFloat(b.available_qty).toFixed(2)}'
                                        style="cursor:pointer;">
                                        <td class="border">${idx + 1}</td>
                                        <td class="border">${itemname}</td>
                                        <td class="border font-weight-bold">${b.batch_no}</td>
                                        <td class="border">${b.expiry_date ? b.expiry_date : '<span class="text-muted">N/A</span>'}</td>
                                        <td class="border font-weight-bold text-success">${parseFloat(b.available_qty).toFixed(2)}</td>
                                    </tr>`
                                ).join('');

                                Swal.fire({
                                    title: 'Select Batch',
                                    width: '700px',
                                    html: `
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover table-sm mb-0">
                                                <thead class="bg-secondary text-white">
                                                    <tr>
                                                        <th>Sr.</th>
                                                        <th>Item Name</th>
                                                        <th>Batch No.</th>
                                                        <th>Expiry Date</th>
                                                        <th>Current Stock</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="batch-tbody">
                                                    ${batchRows}
                                                </tbody>
                                            </table>
                                        </div>
                                        <p id="swal-batch-hint" class="mt-2 text-danger small">
                                            * Row pe click karke batch select karo
                                        </p>
                                        <input type="hidden" id="swal-selected-batch" value="">
                                        <input type="hidden" id="swal-selected-expiry" value="">
                                        <input type="hidden" id="swal-selected-mfg" value="">
                                        <input type="hidden" id="swal-selected-avail" value="">`,
                                    icon: 'info',
                                    confirmButtonText: 'Confirm',
                                    confirmButtonColor: '#3085d6',
                                    allowOutsideClick: false,
                                    allowEscapeKey: false,
                                    didOpen: () => {
                                        document.querySelectorAll('#batch-tbody tr').forEach(function(row) {
                                            row.addEventListener('click', function() {
                                                // Sab rows ka highlight hata do
                                                document.querySelectorAll('#batch-tbody tr').forEach(r => {
                                                    r.style.background = '';
                                                    r.style.color = '';
                                                });
                                                // Is row ko highlight karo
                                                this.style.background = '#007bff';
                                                this.style.color = '#fff';
                                                // Hidden inputs mein value set karo
                                                document.getElementById('swal-selected-batch').value  = this.dataset.batch;
                                                document.getElementById('swal-selected-expiry').value = this.dataset.expiry;
                                                document.getElementById('swal-selected-mfg').value    = this.dataset.mfg;
                                                document.getElementById('swal-selected-avail').value  = this.dataset.avail;
                                                document.getElementById('swal-batch-hint').innerHTML  =
                                                    `<span style="color:#1a7a1a;font-weight:600;">&#10003; Selected: Batch <b>${this.dataset.batch}</b> | Avail: <b>${this.dataset.avail}</b></span>`;
                                            });
                                        });
                                    },
                                    preConfirm: () => {
                                        let selectedBatch = document.getElementById('swal-selected-batch').value;
                                        if (!selectedBatch) {
                                            Swal.showValidationMessage('Please select a batch row first.');
                                            return false;
                                        }
                                        return {
                                            batch_no:      selectedBatch,
                                            expiry_date:   document.getElementById('swal-selected-expiry').value,
                                            mfg_date:      document.getElementById('swal-selected-mfg').value,
                                            available_qty: parseFloat(document.getElementById('swal-selected-avail').value) || 0
                                        };
                                    }
                                }).then(result => {
                                    if (result.isConfirmed) {
                                        $(`#batch_no${index}`).val(result.value.batch_no);
                                        $(`#expiry_date${index}`).val(result.value.expiry_date);
                                        $(`#mfg_date${index}`).val(result.value.mfg_date);
                                        $(`#stockval${index}`).val(result.value.available_qty);
                                        $('#stockvalshow').text(`Batch: ${result.value.batch_no} | Available: ${result.value.available_qty}`);
                                    }
                                });
                            })
                            .catch(err => console.error('Batch fetch error:', err));
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                    });
            });

            function sameval(firstinput, secondinput) {
                $(document).on('change', firstinput, function() {
                    let index = $(this).closest('tr').index() + 1;
                    let curval = $(`#${secondinput}${index}`).val();
                    if ($(this).val() != curval) {
                        $(this).val(curval);
                    }
                });
            }

            sameval('.units', 'unithidden');
            sameval('.wtunits', 'wtunithidden');

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
                wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(), index, $(
                    `#itemrate${index}`).val());
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

            let itimer;
            $(document).on('input', '.qtyisss', function() {
                let index = $(this).closest('tr').index() + 1;
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                    return;
                }
                clearTimeout(itimer);
                itimer = setTimeout(() => {
                    let idata    = parseFloat($(`#stockval${index}`).val()) || 0;
                    let enteredQty = parseFloat($(this).val()) || 0;
                    let batchNo  = $(`#batch_no${index}`).val();

                    // Expiry applicable item — batch selected — hard block
                    if (batchNo && batchNo !== '') {
                        if (enteredQty > idata) {
                            Swal.fire({
                                title: 'Insufficient Stock',
                                html: `Selected batch <b>${batchNo}</b> mein sirf <b>${idata}</b> qty available hai.<br>Aap <b>${enteredQty}</b> issue nahi kar sakte.`,
                                icon: 'error',
                                confirmButtonText: 'OK',
                                confirmButtonColor: '#e74c3c'
                            });
                            $(this).val(idata);
                            wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(),
                                index, $(`#itemrate${index}`).val());
                            calculateamt();
                        } else {
                            wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(),
                                index, $(`#itemrate${index}`).val());
                            calculateamt();
                        }
                        return;
                    }

                    // Normal item — existing soft warning
                    if (enteredQty > idata) {
                        Swal.fire({
                            title: 'Info',
                            text: `Do you want to proceed with negative stock? (Current Stock: ${idata})`,
                            icon: 'info',
                            confirmButtonText: 'Yes',
                            showCancelButton: true,
                            cancelButtonText: 'No'
                        }).then((result) => {
                            if (!result.isConfirmed) {
                                $(this).val(idata);
                            }
                            wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(),
                                index, $(`#itemrate${index}`).val());
                            calculateamt();
                        });
                    } else {
                        wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(), index, $(
                            `#itemrate${index}`).val());
                        calculateamt();
                    }
                }, 500);
            });

            const sumofamounts = (selector) => {
                let total = 0;
                $(selector).each(function() {
                    total += parseFloat($(this).val()) || 0.00;
                });
                return total;
            }

            $(document).on('input', '.deductionamount', function() {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                calculateamt();
            });

            function calcper(amount, percentage) {
                return ((amount * percentage) / 100).toFixed(2);
            }

            function calculateamt() {
                setTimeout(() => {
                    let totalamounts = sumofamounts('.amounts') || 0.00;
                    $('#totalamount').val(totalamounts.toFixed(2));
                    $('#netamount').val(totalamounts.toFixed(2));
                    $('#stockvalshow').text('');
                }, 200);
            }

            $(document).on('change', '#tolocation', function() {
                let tolocation = $('#tolocation option:selected').val();
                let fromlocation = getFromLocation();

                if (!tolocation || !fromlocation) {
                    return;
                }

                if (tolocation === fromlocation) {
                    Swal.fire({
                        title: 'Validation Error',
                        text: 'From and To Location Cannot Be Same!',
                        icon: 'error',
                        confirmButtonText: 'Okay'
                    });
                    $('#tolocation').val('');
                    return;
                }
            });

            $('#stocktransferform').on('submit', function(e) {
                let totalamount = parseFloat($('#totalamount').val()) || 0.00;

                if (totalamount < 1) {
                    Swal.fire({
                        title: 'Validation Error',
                        text: 'Atleast Select 1 Item to Submit!',
                        icon: 'error',
                        confirmButtonText: 'Okay'
                    });
                    e.preventDefault();
                    return;
                } else {
                    e.submit();
                }
            });

            // DataTable Initialization for Stock Transfer Table
            if (typeof DataTable !== 'undefined') {
                new DataTable('#stockitem', {
                    dom: 'Bfrtip',
                    ordering: true,
                    order: [],
                    buttons: ['excel', 'pdf', 'print']
                });
            } else if ($.fn.DataTable) {
                $('#stockitem').DataTable({
                    dom: 'Bfrtip',
                    ordering: true,
                    order: [],
                    buttons: ['excel', 'pdf', 'print']
                });
            }

        });
    </script>
@endsection
