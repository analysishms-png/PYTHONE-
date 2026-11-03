@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('requisitionslipverifysub') }}" name="requistionslipform" id="requistionslipform" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" value="{{ count($datarows) }}" name="totalitem" id="totalitem">
                                <input type="hidden" value="{{ $datarows->sum('amount') }}" name="netamount" id="netamount">
                                <input type="hidden" value="{{ $data->docid }}" name="docid" id="docid">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="transferno" class="col-form-label">Requistion No</label>
                                            <input type="number" value="{{ $data->vno }}" class="form-control" name="transferno" id="transferno" required readonly>
                                            @error('transferno')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="vdate" class="col-form-label">Date</label>
                                            <input type="date" value="{{ $data->vdate }}" class="form-control" name="vdate" id="vdate" required readonly>
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
                                                    <option value="{{ $item->scode }}" {{ $data->department == $item->scode ? 'selected' : '' }}>{{ $item->name }}</option>
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
                                                    <option value="{{ $item->scode }}" {{ $data->godown == $item->scode ? 'selected' : '' }}>{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                            @error('godown')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="remarks" class="col-form-label">Remarks</label>
                                            <input type="text" class="form-control" value="{{ $data->remarks }}" name="remarks" id="remarks" readonly>
                                            @error('remarks')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="veryfiremark" class="col-form-label">Verify Remarks</label>
                                            <input type="text" class="form-control" value="{{ $data->veryfiremark }}" name="veryfiremark" id="veryfiremark" required>
                                            @error('veryfiremark')
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
                                                <th>Qty</th>
                                                <th>Rate</th>
                                                <th>Amount</th>
                                                <th><i class="fa-solid fa-square-caret-down"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($datarows as $item)
                                                <tr>
                                                    <td class="text-center font-weight-bold">{{ $item->sno }}</td>
                                                    <td>
                                                        <select class="form-control items" name="item{{ $item->sno }}" id="item{{ $item->sno }}" required>
                                                            <option value="">Select Item</option>
                                                            @foreach ($items as $itemr)
                                                                <option
                                                                    {{ $itemr->Code == $item->item ? 'selected' : '' }}
                                                                    data-accode="{{ $itemr->AcCode }}"
                                                                    data-strcode="{{ $itemr->str_code }}"
                                                                    data-taxrate="{{ $itemr->taxrate }}"
                                                                    data-taxcode="{{ $itemr->taxcodes }}"
                                                                    data-convratio="{{ $itemr->ConvRatio }}"
                                                                    data-unit="{{ $itemr->Unit }}"
                                                                    data-issueunit="{{ $itemr->IssueUnit }}"
                                                                    data-purchrate="{{ $itemr->PurchRate }}"
                                                                    value="{{ $itemr->Code }}">
                                                                    {{ $itemr->Name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                        <input type="hidden" name="unithidden{{ $item->sno }}" id="unithidden{{ $item->sno }}">
                                                        <input type="hidden" name="wtunithidden{{ $item->sno }}" id="wtunithidden{{ $item->sno }}">
                                                        <input type="hidden" name="convratio{{ $item->sno }}" id="convratio{{ $item->sno }}">
                                                        <input type="hidden" class="form-control specification" name="specification{{ $item->sno }}" id="specification{{ $item->sno }}" placeholder="Enter Specification">
                                                        <input type="hidden" value="{{ $item->qty }}" class="form-control vqtys" name="vqty{{ $item->sno }}" id="vqty{{ $item->sno }}" placeholder="Veri. Qty.">
                                                        <input type="hidden" class="form-control recdqtys" name="recdqty{{ $item->sno }}" id="recdqty{{ $item->sno }}" placeholder="Recd. Qty." readonly>
                                                        <input type="hidden" class="form-control rejqtys" name="rejqty{{ $item->sno }}" id="rejqty{{ $item->sno }}" placeholder="Rej. Qty.">
                                                        <input type="hidden" class="form-control accqtys" name="accqty{{ $item->sno }}" id="accqty{{ $item->sno }}" placeholder="Acc. Qty." readonly>
                                                        <input type="hidden" class="form-control taxrates" name="taxrate{{ $item->sno }}" id="taxrate{{ $item->sno }}" placeholder="Tax Rate" readonly>
                                                        <input type="hidden" class="form-control taxeamts" name="taxamt{{ $item->sno }}" id="taxamt{{ $item->sno }}" placeholder="Tax Rate" readonly>
                                                        <input type="hidden" class="form-control taxcodes" name="taxcode{{ $item->sno }}" id="taxcode{{ $item->sno }}" placeholder="Tax Code" readonly>
                                                    </td>
                                                    <td>
                                                        <select class="form-control readonly units" name="unit{{ $item->sno }}" id="unit{{ $item->sno }}" required>
                                                            <option value="">Select Unit</option>
                                                            @foreach ($units as $row)
                                                                <option value="{{ $row->ucode }}" {{ $row->ucode == $item->unit ? 'selected' : '' }}>{{ $row->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </td>
                                                    <td class="none">
                                                        <select class="form-control wtunits" name="wtunit{{ $item->sno }}" id="wtunit{{ $item->sno }}">
                                                            <option value="">Select Wt. Unit</option>
                                                            @foreach ($units as $row)
                                                                <option value="{{ $row->ucode }}" {{ $row->ucode == $item->issueunit ? 'selected' : '' }}>{{ $row->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </td>
                                                    <td><input type='text' class='form-control stocksval' value="{{ $item->balqty }}" name='stockvali{{ $item->sno }}' id='stockvali{{ $item->sno }}' placeholder='Stock Value' readonly></td>
                                                    <td>
                                                        <input value="{{ $item->qty }}" type="text" class="form-control qtyisss" name="qtyiss{{ $item->sno }}" id="qtyiss{{ $item->sno }}" placeholder="Item. Qty.">
                                                    </td>
                                                    <td class="none">
                                                        <input type="hidden" class="form-control wtqtys" name="wtqty{{ $item->sno }}" id="wtqty{{ $item->sno }}" placeholder="Wt. Qty.">
                                                    </td>
                                                    <td>
                                                        <input type="text" value="{{ $item->rate }}" class="form-control rates" name="itemrate{{ $item->sno }}" id="itemrate{{ $item->sno }}" placeholder="Enter Rate">
                                                    </td>
                                                    <td>
                                                        <input type="text" value="{{ $item->amount }}" class="form-control amounts" name="amount{{ $item->sno }}" id="amount{{ $item->sno }}" placeholder="Amount">
                                                        <input type="hidden" class="form-control discamts" name="discamt{{ $item->sno }}" id="discamt{{ $item->sno }}" placeholder="Amount">
                                                    </td>
                                                    <td>
                                                        <span class="removerow"><i class="fa-solid fa-eraser"></i></span>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i class="fa-solid fa-file-export"></i></button>
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
                                            <input type="text" class="form-control" value="{{ $datarows->sum('amount') }}" name="totalamount" id="totalamount" readonly>
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

            $(document).on('click', '#additem', function() {
                let tbody = $('#itemtable tbody');
                fetch('{{ config('app.url') }}/purchaseitems')
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
                                <td class="text-center font-weight-bold">${newIndex}</td>
                                <td><select class='form-control items' name='item${newIndex}' id='item${newIndex}' required>
                                    <option value=''>Select Item</option>
                                    ${items.map(item => `<option data-lpurrate='${item.LPurRate}' data-accode=${item.AcCode} data-strcode='${item.str_code}' data-taxrate='${item.taxrate}' data-taxcode='${item.taxcodes}' data-convratio='${item.ConvRatio}' data-unit='${item.Unit}' data-issueunit='${item.IssueUnit}' data-purchrate='${item.PurchRate}' value='${item.Code}'>${item.Name}</option>`).join('')}
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
                                </td>
                                <td><select class='form-control readonly units' name='unit${newIndex}' id='unit${newIndex}' required>
                                    <option value=''>Select Unit</option>
                                ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                                <td><input type='text' class='form-control stocksval' name='stockvali${newIndex}' id='stockvali${newIndex}' placeholder='Stock Value' readonly></td>
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
                            calculateamt();
                        } else {
                            pushNotify('error', 'MR Entry', 'Items Not Found', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
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

            $(document).on('change', '.items', function() {
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
                        // $('#stockvalshow').text(`IN STOCK ${itemname} : ${data.qty}`);
                        // let ir = `<input type='hidden' class='form-control stockval' name='stockval${index}' id='stockval${index}' value='${data.qty}'>`;
                        $(`#stockvali${index}`).val(data.qty);
                        $(this).closest('tr').append(ir);
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

            let itimer;
            $(document).on('input', '.qtyisss', function() {
                let index = $(this).closest('tr').index() + 1;
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                    return;
                }
                clearTimeout(itimer);
                itimer = setTimeout(() => {
                    // let idata = $(`#stockval${index}`).val();

                    // if (parseFloat($(this).val()) > parseFloat(idata)) {
                    //     Swal.fire({
                    //         title: 'Info',
                    //         text: `Do you want to proceed with negative stock? (Current Stock: ${idata})`,
                    //         icon: 'info',
                    //         confirmButtonText: 'Yes',
                    //         showCancelButton: true,
                    //         cancelButtonText: 'No'
                    //     }).then((result) => {
                    //         if (!result.isConfirmed) {
                    //             $(this).val(idata);
                    //         }
                    //         wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                    //         calculateamt();
                    //     });
                    // } else {
                    wtqty($(`#convratio${index}`).val(), $(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                    calculateamt();
                    // }
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

            $('#requistionslipform').on('submit', function(e) {
                let totalamount = parseFloat($('#totalamount').val()) || 0.00;

                $('#department').prop('disabled', false);
                $('#godown').prop('disabled', false);

                if (totalamount < 1) {
                    Swal.fire({
                        title: 'Validation Error',
                        text: 'Atleast Select 1 Item to Submit!',
                        icon: 'error',
                        confirmButtonText: 'Okay'
                    });
                    e.preventDefault();
                }
            });

        });
    </script>
@endsection
