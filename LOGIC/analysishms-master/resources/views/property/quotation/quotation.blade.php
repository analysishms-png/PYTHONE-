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
                            <form class="form" action="{{ url('quotationsubmit') }}" name="mrentryform" id="mrentryform" method="POST">
                                @csrf
                                <input type="hidden" name="totalitem" id="totalitem">
                                <input type="hidden" name="podate" id="podate" value="{{ date('Y-m-d') }}">
                                <div class="row">
                                    <div class="col-md-1">
                                        <div class="form-group">
                                            <label for="pono" class="col-form-label">QT.No</label>
                                            <input type="number" class="form-control" name="pono" id="pono"
                                                placeholder="Enter QT No." value="{{ $mrno }}" required readonly>
                                            @error('pono')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="type" class="col-form-label">Type</label>
                                            <input type="hidden" value="QT" class="form-control" name="vtype" id="vtype" placeholder="Enter Type" required readonly>
                                            <select class="form-control" id="vtype" disabled>
                                                <option value="QT" selected>Quotation</option>
                                            </select>
                                            @error('vtype')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="vdate" class="col-form-label">Date</label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control" name="vdate"
                                                id="vdate" required
                                                @if(($enviroinv->allow_future_date_pr ?? 'Y') == 'N') max="{{ date('Y-m-d') }}" @endif>
                                            @error('vdate')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div id="partydiv" class="form-group">
                                            <label for="partycode" class="col-form-label">Party</label>
                                            <select class="form-control" name="party" id="party" required>
                                                <option value="">Select</option>
                                                @foreach ($partydatamain as $row)
                                                    <option value="{{ $row->sub_code }}">{{ $row->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div id="partydiv" class="form-group">
                                            <label for="partycode" class="col-form-label">Valied Up </label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control" min="{{ $ncurdate }}" name="valiedup" required />
                                        </div>
                                    </div>
                                    {{-- <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="dispmode" class="col-form-label">Disp.Mode</label>
                                            <select class="form-control" name="dispmode" id="dispmode" required>
                                                <option value="">Select</option>
                                                <option value="Railway">Railway</option>
                                                <option value="VPP">VPP</option>
                                                <option value="Air Mail">Air Mail</option>
                                                <option value="Transport">Transport</option>
                                                <option value="Personally">Personally</option>
                                                <option value="Post Parcel">Post Parcel</option>
                                                <option value="Courier">Courier</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="fwdcharge" class="col-form-label">Fwd.Charge</label>
                                            <input type="number" step="0.01" min="0" class="form-control" name="fwdcharge"
                                                id="fwdcharge" placeholder="Fwd.Charge">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="packcharge" class="col-form-label">Pack.Charge</label>
                                            <input type="number" step="0.01" min="0" class="form-control" name="packcharge"
                                                id="packcharge" placeholder="Pack.Charge">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="discount" class="col-form-label">Discount</label>
                                            <input type="number" step="0.01" min="0" class="form-control" name="discount"
                                                id="discount" placeholder="Discount">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="gst" class="col-form-label">GST</label>
                                            <input type="number" step="0.01" min="0" class="form-control" name="gst"
                                                id="gst" placeholder="GST">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="surc" class="col-form-label">Sur.Charge</label>
                                            <input type="text" class="form-control" name="surc" id="surc"
                                                placeholder="Sur.Charge">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="despthru" class="col-form-label">Desp.Thru</label>
                                            <input type="text" class="form-control" name="despthru" id="despthru"
                                                placeholder="Desp.Thru">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="payterms" class="col-form-label">Pay.Terms</label>
                                            <input type="text" class="form-control" name="payterms" id="payterms"
                                                placeholder="Pay.Terms">
                                        </div>
                                    </div> --}}
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="remark" class="col-form-label">Remark</label>
                                            <input type="text" class="form-control" name="remark" id="remark"
                                                placeholder="Remark">
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
                                                <th>Item Name</th>
                                                <th>Specification</th>
                                                <th>In Stock</th>
                                                <th>Qty</th>
                                                <th>Unit</th>
                                                <th>Rate</th>
                                                {{-- <th>Goods Amt.</th> --}}
                                                <th>Total</th>
                                                <th><i class="fa-solid fa-square-caret-down"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="6" class="text-end">Total</td>
                                                <td class="text-end" id="totalAmt"></td>
                                                <td></td>
                                            </tr>
                                        </tfoot>
                                    </table>
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
                    <table id="menuitem"
                        class="table table-hover table-download-with-search table-hover table-striped">
                        <thead class="bg-secondary">
                            <tr>
                                <th>Vno</th>
                                <th>Type</th>
                                <th>Date</th>
                                <th>Party</th>
                                <th>QT No.</th>
                                <th>Item</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $today = date('Y-m-d');
                                $blockDays = $enviroinv->blockdays;
                                $laterdays = date('Y-m-d', strtotime("-{$blockDays} days"));
                            @endphp
                            @foreach ($data as $row)
                                <tr>
                                    <td>{{ $row->vno }}</td>
                                    <td>{{ $row->vtype }}</td>
                                    <td>{{ date('d-m-Y', strtotime($row->vdate)) }}</td>
                                    <td>{{ $row->subname }}</td>
                                    <td>{{ $row->quotno }}</td>
                                    <td>{{ $row->itemcount }}</td>
                                    <td class="ins">
                                        @if ($superwiser == '1')
                                            <a href="updatequotation/{{ $row->docid }}">
                                                <button id="revedit" data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>
                                            </a>
                                            <a href="deletequotation/{{ $row->docid }}">
                                                <button class="btn btn-danger btn-sm delete-btn">
                                                    <i class="fa-solid fa-trash"></i> Delete
                                                </button>
                                            </a>
                                        @endif
                                        <a href="{{ url('quotationprint/' . $row->docid) }}" target="_blank">
                                            <button class="btn btn-primary btn-sm"><i class="fas fa-print"></i>
                                                Print</button>
                                        </a>
                                    </td>
                                </tr>
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
            let envinventory;

            $(document).on('click', '#additem', function() {
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
                            let items = data.items;
                            let godown = data.godown;
                            let units = data.units;
                            let rowCount = tbody.find('tr').length;
                            let newIndex = rowCount + 1;
                            envinventory = data.envinventory;
                            $('#totalitem').val(newIndex);
                            let tr = `<tr>
                                                                <td><select class='form-control select2-multiple items' name='item${newIndex}' id='item${newIndex}' required>
                                                                    <option value=''>Select Item</option>
                                                                    ${items.map(item => `<option data-lpurrate='${item.LPurRate}' data-convratio='${item.ConvRatio}' data-unit='${item.Unit}' data-issueunit='${item.IssueUnit}' data-purchrate='${item.PurchRate}' value='${item.Code}'>${item.Name}</option>`).join('')}
                                                                </select>
                                                                <input type='hidden' name='convratio${newIndex}' id='convratio${newIndex}'>
                                                                <input type='hidden' name='amount${newIndex}' id='amount${newIndex}'>
                                                                <input type='hidden' class='form-control readonly units' name='unit${newIndex}' id='unit${newIndex}'>
                                                                <input type='hidden' class='form-control godowns' name='godown${newIndex}' id='godown${newIndex}' value='${envinventory.purchasegodown}'>
                                                                </td>
                                                                <td><input type='text' class='form-control specification' name='specification${newIndex}' id='specification${newIndex}' placeholder='Enter Specification'></td>
                                                                <td><input type='text' class='form-control instock' name='instock${newIndex}' id='instock${newIndex}' placeholder='In Stock' readonly></td>
                                                                <td><input type='text' class='form-control wtqtys' name='wtqty${newIndex}' id='wtqty${newIndex}' placeholder='Qty.'></td>
                                                                <td><select class='form-control wtunits' name='wtunit${newIndex}' id='wtunit${newIndex}'>
                                                                    <option value=''>Select Wt. Unit</option>
                                                                ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                                                                <td><input type='text' class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}' placeholder='Enter Rate'></td>
                                                               
                                                                <td><input type='text' class='form-control totals' name='total${newIndex}' id='total${newIndex}' placeholder='Total' readonly></td>
                                                                <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                                                                </tr>`;
                            $('#itemtable tbody').append(tr);
                            
                            $(`#item${newIndex}`).select2();


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
                
                // Destroy Select2 instances in the row before removing
                row.find('.select2-multiple').select2('destroy');
                row.remove();

                $('#itemtable tbody tr').each(function(index) {
                    let adjustedIndex = index + 1;
                    $('#totalitem').val(adjustedIndex);
                    $(this).find('td:first p').text(index + 1);
                    $(this).find('select, input').each(function() {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                    
                    // Reinitialize Select2 on elements that had their IDs changed
                    $(this).find('.select2-multiple').select2();
                });
                // Set Total Amount in Totamt field
                var totalAmount = 0
                $('.totals').each(function() {
                    totalAmount += parseFloat($(this).val()) || 0;
                });
                $('#totalAmt').text(totalAmount.toFixed(2));
                console.log(totalAmount.toFixed(2));
            });

            $(document).on('change', '.items', async function() {
                let index = $(this).closest('tr').index() + 1;
                let value = $(this).val();
                let unit = $(this).find('option:selected').data('unit');
                let issueunit = $(this).find('option:selected').data('issueunit');
                let purchrate = $(this).find('option:selected').data('purchrate');
                let convratio = $(this).find('option:selected').data('convratio');
                let lpurrate = $(this).find('option:selected').data('lpurrate');
                let stock = 0.00;
                let departcode = 'PURC' + {{ Auth::user()->propertyid }};
                let itemratep = 0.00;

                if (envinventory.itemratemrbasedon === 'Purchase Rate') {
                    itemratep = purchrate;
                } else if (envinventory.itemratemrbasedon === 'Last Purchase Rate') {
                    itemratep = purchrate;
                } else if (envinventory.itemratemrbasedon === 'Party Wise Last Purchase Rate') {
                    let postdatap = {
                        itemcode: value,
                        partycode: $('#partycode').val(),
                        'status': 'PO',
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

                getStockQty(index, value, departcode);
                $(`#unit${index}`).val(unit);
                $(`#wtunit${index}`).val(issueunit);
                $(`#itemrate${index}`).val(itemratep);
                $(`#convratio${index}`).val(convratio);

            });

            function getStockQty(index, itemcode, departcode) {
                return fetch('itemstockval', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': "{{ csrf_token() }}"
                        },
                        body: JSON.stringify({
                            'icode': itemcode,
                            'departcode': departcode
                        })
                    })
                    .then(response => response.json())
                    .then(data => {
                        stock = data.qty;
                        $(`#instock${index}`).val(stock);
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        return 0;
                    });
            }


            $(document).on('input', '.wtqtys', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                let wtqty = parseFloat($(this).val()) || 0;
                let rate = parseFloat($(`#itemrate${index}`).val()) || 0;

                // Calculate amount and total (qty * rate)
                let amount = wtqty * rate;

                $(`#amount${index}`).val(amount.toFixed(2));
                $(`#total${index}`).val(amount.toFixed(2));

                // Set Total Amount in Totamt field
                var totalAmount = 0
                $('.totals').each(function() {
                    totalAmount += parseFloat($(this).val()) || 0;
                });
                $('#totalAmt').text(totalAmount.toFixed(2));
                console.log(totalAmount.toFixed(2));
            });

            $(document).on('input', '.rates', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                let qty = parseFloat($(`#wtqty${index}`).val()) || 0;
            });

            $(document).on('input', '.rates', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                let wtqty = parseFloat($(`#wtqty${index}`).val()) || 0;
                let rate = parseFloat($(this).val()) || 0;

                // Calculate amount (qty * rate)
                let amount = wtqty * rate;

                $(`#amount${index}`).val(amount.toFixed(2));
                $(`#total${index}`).val(amount.toFixed(2));
                // Set Total Amount in Totamt field
                var totalAmount = 0
                $('.totals').each(function() {
                    totalAmount += parseFloat($(this).val()) || 0;
                });
                $('#totalAmt').text(totalAmount.toFixed(2));
                console.log(totalAmount.toFixed(2));
            });

            $(document).on('mousedown', '.units, .wtunits', function(e) {
                e.preventDefault();
            });

            $('#mrentryform').on('submit', function(e) {
                e.preventDefault();
                let itemtable = $('#itemtable tbody tr').length;

                if (itemtable < 1) {
                    Swal.fire({
                        title: 'Validation Error',
                        text: 'Atleast Select 1 Item to Submit!',
                        icon: 'error',
                        confirmButtonText: 'Okay'
                    });
                    return;
                } else {
                    this.submit();
                }
            });

            if (typeof DataTable !== 'undefined') {
                new DataTable('#menuitem', {
                    dom: 'Bfrtip',
                    ordering: true,
                    order: [],
                    buttons: ['excel', 'pdf', 'print']
                });
            } else if ($.fn.DataTable) {
                $('#menuitem').DataTable({
                    dom: 'Bfrtip',
                    ordering: true,
                    order: [],
                    buttons: ['excel', 'pdf', 'print']
                });
            }

        });
    </script>
@endsection
