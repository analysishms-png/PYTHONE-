@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('requisitionstockupsubmit') }}" name="requistionstockissue" id="requistionstockissue" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" value="{{ count($data) }}" name="totalitem" id="totalitem">
                                <input type="hidden" value="{{ $data->sum('amount') }}" name="netamount" id="netamount">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="transferno" class="col-form-label">Issue No</label>
                                            <input type="number" value="{{ $data[0]->vno }}" class="form-control" name="transferno" id="transferno" required readonly>
                                            @error('transferno')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="vdate" class="col-form-label">Date</label>
                                            <input type="date" value="{{ $data[0]->vdate }}" class="form-control" name="vdate" id="vdate" required readonly>
                                            @error('vdate')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="department" class="col-form-label">Department</label>
                                            <select class="form-control" name="department" id="department" required disabled>
                                                <option value="">Select</option>
                                                @foreach ($godown as $item)
                                                    <option value="{{ $item->scode }}" {{ $rqi->departcode == $item->scode ? 'selected' : '' }}>{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                            @error('department')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="godown" class="col-form-label">From Godown</label>
                                            <select class="form-control" name="godown" id="godown" required disabled>
                                                <option value="">Select</option>
                                                @foreach ($godown as $item)
                                                    <option value="{{ $item->scode }}" {{ $rqr->departcode == $item->scode ? 'selected' : '' }}>{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                            @error('godown')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="issueremarks" class="col-form-label">Issue Remarks</label>
                                            <input type="text" value="{{ $data[0]->remarks }}" class="form-control" name="issueremarks" id="issueremarks">
                                            @error('issueremarks')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>

                                </div>
                                <div class="itemshow">
                                    <table id="itemtable" class="table table-itemshow table-hover">
                                        <thead class="thead-muted">
                                            <tr>
                                                <th>Sn</th>
                                                <th>Item Name</th>
                                                <th>Unit</th>
                                                <th>Stock</th>
                                                <th>Req. Qty</th>
                                                <th>Iss. Qty</th>
                                                <th>Rate</th>
                                                <th>Amount</th>
                                                <th><i class="fa-solid fa-square-caret-down"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($data as $item)
                                                <tr>
                                                    <td class="text-center font-weight-bold">{{ $item->sno }}</td>
                                                    <td><select class='form-control select2-multiple items' name='item{{ $item->sno }}' id='item{{ $item->sno }}' required>
                                                            <option value='{{ $item->item }}' selected>{{ $item->ItemName }}</option>
                                                        </select>
                                                        <input type="hidden" value="{{ $item->contradocid }}" name="docid{{ $item->sno }}" id="docid{{ $item->sno }}">
                                                        <input type="hidden" value="{{ $item->contrasno }}" name="indentsno{{ $item->sno }}" id="indentsno{{ $item->sno }}">
                                                    </td>
                                                    <td><select class='form-control readonly units' name='unit{{ $item->sno }}' id='unit{{ $item->sno }}' required>
                                                            <option value='{{ $item->unit }}' selected>{{ $item->unitname }}</option>
                                                        </select>
                                                    </td>
                                                    <td><input type='text' value="{{ $item->balqty }}" class='form-control stocksval' name='stockvali{{ $item->sno }}' id='stockvali{{ $item->sno }}' placeholder='Stock Value' readonly></td>
                                                    <td>
                                                        <input value='{{ $item->qtyreq }}' type='text' class='form-control reqqtys' name='reqqty{{ $item->sno }}' id='reqqty{{ $item->sno }}' placeholder='Item. Qty.' readonly>
                                                    </td>
                                                    <td>
                                                        <input value='{{ $item->qtyiss }}' type='text' class='form-control qtyisss' name='qtyiss{{ $item->sno }}' id='qtyiss{{ $item->sno }}' placeholder='Item. Qty.'>
                                                    </td>
                                                    <td><input value='{{ $item->rate }}' type='text' class='form-control rates' name='itemrate{{ $item->sno }}' id='itemrate{{ $item->sno }}' placeholder='Enter Rate'></td>
                                                    <td>
                                                        <input value='{{ $item->amount }}' type='text' class='form-control amounts' name='amount{{ $item->sno }}' id='amount{{ $item->sno }}' placeholder='Amount'>
                                                    </td>
                                                    <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Update <i class="fa-solid fa-file-export"></i></button>
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
                                            <input type="text" value="{{ $data->sum('amount') }}" class="form-control" name="totalamount" id="totalamount" readonly>
                                        </div>
                                    </div>
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

            $(document).on('change', '#department', function() {
                let tbody = $('#itemtable tbody');
                let department = $(this).val();

                if (department != '') {
                    const postcode = {
                        department: department
                    };

                    const pdata = {
                        method: "POST",
                        headers: {
                            'Content-type': 'application/json',
                            'X-CSRF-TOKEN': "{{ csrf_token() }}"
                        },
                        body: JSON.stringify(postcode)
                    };

                    fetch('indentitems', pdata)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            if (data.items.length > 0) {
                                let indent = data.indent;
                                $('#remarks').val(indent.remarks);
                                let items = data.items;
                                let godown = data.godown;
                                let units = data.units;
                                taxstrudata = data.taxstrudata;
                                ledgerdata = data.ledgerdata;
                                let rowCount = tbody.find('tr').length;
                                envinventory = data.envinventory;
                                $('#totalitem').val(items.length);
                                let tr = '';
                                items.forEach((item, newIndex) => {
                                    newIndex = newIndex + 1;
                                    tr += `<tr>
                                <td class="text-center font-weight-bold">${newIndex}</td>
                                <td><select class='form-control select2-multiple items' name='item${newIndex}' id='item${newIndex}' required>
                                    <option value='${item.Code}' selected>${item.Name}</option>
                                </select>
                                <input type="hidden" value="${item.docid}" name="docid${newIndex}" id="docid${newIndex}">
                                <input type="hidden" value="${item.indentsno}" name="indentsno${newIndex}" id="indentsno${newIndex}">
                                </td>
                                <td><select class='form-control readonly units' name='unit${newIndex}' id='unit${newIndex}' required>
                                    <option value='${item.itemunit}' selected>${item.unitname}</option>
                                </select>
                                </td>
                                <td><input type='text' value="${item.balqty}" class='form-control stocksval' name='stockvali${newIndex}' id='stockvali${newIndex}' placeholder='Stock Value' readonly></td>
                                <td>
                                    <input value='${item.qty}' type='text' class='form-control reqqtys' name='reqqty${newIndex}' id='reqqty${newIndex}' placeholder='Item. Qty.' readonly>
                                </td>
                                 <td>
                                    <input value='${item.qty}' type='text' class='form-control qtyisss' name='qtyiss${newIndex}' id='qtyiss${newIndex}' placeholder='Item. Qty.'>
                                </td>
                                <td><input value='${item.rate}' type='text' class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}' placeholder='Enter Rate'></td>
                                <td>
                                    <input value='${item.amount}' type='text' class='form-control amounts' name='amount${newIndex}' id='amount${newIndex}' placeholder='Amount'>
                                </td>
                                <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                                </tr>`;
                                });
                                $('#itemtable tbody').append(tr);
                                $(`#item${newIndex}`).select2();
                                calculateamt();
                            } else {
                                pushNotify('error', 'MR Entry', 'Items Not Found', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                            }
                        })
                        .catch(error => {
                            $('#itemtable tbody').empty();
                            $('#totalamount, #netamount, #totalitem').val('');
                            console.error('There was a problem with the fetch operation:', error);
                        });

                }
            });

            $(document).on('click', '.removerow', function() {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
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
                });
                calculateamt();
            });

            $(document).on('change', '.qtyisss', function() {
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
                let itemratep = 0.00;
                if (envinventory.itemratemrbasedon == 'Purchase Rate') {
                    itemratep = purchrate;
                } else if (envinventory.itemratemrbasedon == 'Last Purchase Rate') {
                    itemratep = lpurrate;
                } else {
                    itemratep = lpurrate;
                }

                $(`#itemrate${index}`).val(itemratep);

                const datap = {
                    'icode': value,
                };
                const options = {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    },
                    body: JSON.stringify(datap)
                };
                fetch('itemstockval', options)
                    .then(response => response.json())
                    .then(data => {
                        $('#stockvalshow').text(`IN STOCK ${itemname} : ${data.qty}`);
                        $(`#stockvali${index}`).val(data.qty);
                    })
                    .catch(error => {
                        console.error('Error:', error);
                    })
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

            function wtqty(accqty, index, rate) {
                let amount = parseFloat(accqty) * parseFloat(rate) || 0.00;
                $(`#amount${index}`).val(amount.toFixed(2));
            }

            $(document).on('input', '.rates', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                wtqty($(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
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
                    let idata = $(`#stockvali${index}`).val();

                    if (parseFloat($(this).val()) > parseFloat(idata)) {
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
                            wtqty($(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                            calculateamt();
                        });
                    } else {
                        wtqty($(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
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

            $(document).on('change', '#godown, #department', function() {

                let trcount = $('#itemtable tbody tr').length;

                if (trcount > 0) {
                    $('#itemtable tbody').empty();
                }

                let godown = $('#godown').val();
                let department = $('#department').val();

                if (godown && department && godown === department) {
                    Swal.fire({
                        title: 'Validation Error',
                        text: 'Department and From Godown Cannot Be Same!',
                        icon: 'error',
                        confirmButtonText: 'Okay'
                    });

                    $(this).val('');
                }
            });

            $('#requistionstockissue').on('submit', function(e) {
                let totalamount = parseFloat($('#totalamount').val()) || 0.00;

                $('#department').prop('disabled', false);
                $('#godown').prop('disabled', false);

                if (totalamount < 1) {
                    Swal.fire({
                        title: 'Validation Error',
                        text: 'Atleast Select 1 Item to Submit!',
                        icon: 'error',
                        confirmButtonText: 'Okay'
                    })
                    e.preventDefault();
                    return;
                } else {
                    e.submit();
                }
            });
        });
    </script>
@endsection
