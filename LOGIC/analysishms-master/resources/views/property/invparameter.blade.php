@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="enviroentrysubmit" name="enviroinventoryform"
                                id="enviroinventoryform" method="POST">
                                @csrf
                                <input type="hidden" name="blockdays" id="blockdays" value="{{ $data->blockdays }}">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="cashpurchaseac">Cash Purchase A/C</label>
                                        <select class="form-control" name="cashpurchaseac" id="cashpurchaseac" required>
                                            <option value="">Select</option>
                                            @foreach ($cash as $item)
                                                <option value="{{ $item->sub_code }}" {{ $data->cashpurchaseac == $item->sub_code ? 'selected' : '' }}>{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="purchasegodown">Purchase Godown</label>
                                        <select class="form-control" name="purchasegodown" id="purchasegodown" required>
                                            <option value="">Select</option>
                                            @foreach ($godown as $item)
                                                <option value="{{ $item->scode }}" {{ $data->purchasegodown == $item->scode ? 'selected' : '' }}>{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="modifyaccountfield">Modify Account</label>
                                        <select id="modifyaccountfield" name="modifyaccountfield" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Y" {{ $data->modifyaccountfield == 'Y' ? 'selected' : '' }}>Yes
                                            </option>
                                            <option value="N" {{ $data->modifyaccountfield == 'N' ? 'selected' : '' }}>No
                                            </option>
                                        </select>
                                        @if ($data->modifyaccountfield == 'N')
                                            <span class="text ARK font-weight-bold">For Days: <span id="fordays">
                                                    {{ $data->blockdays }}</span></span>
                                        @endif
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="itemratemrbasedon">Item Rate In M.R. & Stock
                                            Transfer Based On</label>
                                        <select id="itemratemrbasedon" name="itemratemrbasedon" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Purchase Rate" {{ $data->itemratemrbasedon == 'Purchase Rate' ? 'selected' : '' }}>Purchase Rate</option>
                                            <option value="Last Purchase Rate" {{ $data->itemratemrbasedon == 'Last Purchase Rate' ? 'selected' : '' }}>Last Purchase Rate</option>
                                            <option value="Party Wise Last Purchase Rate" {{ $data->itemratemrbasedon == 'Party Wise Last Purchase Rate' ? 'selected' : '' }}>Party Wise Last Purchase Rate</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="itemratepbillbasedon">Item Rate In P. Bill Based
                                            On</label>
                                        <select id="itemratepbillbasedon" name="itemratepbillbasedon" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Purchase Rate" {{ $data->itemratepbillbasedon == 'Purchase Rate' ? 'selected' : '' }}>Purchase Rate</option>
                                            <option value="Last Purchase Rate" {{ $data->itemratepbillbasedon == 'Last Purchase Rate' ? 'selected' : '' }}>Last Purchase Rate</option>
                                            <option value="Party Wise Last Purchase Rate" {{ $data->itemratepbillbasedon == 'Party Wise Last Purchase Rate' ? 'selected' : '' }}>Party Wise Last Purchase Rate</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="cashpurcheffect" class="col-form-label">Cash Purchase Effect On
                                            Focc</label>
                                        <select name="cashpurcheffect" id="cashpurcheffect" class="form-control">
                                            <option value="{{ $enviro_general->cashpurcheffect }}">
                                                {{ $enviro_general->cashpurcheffect == 'Y' ? 'Yes' : 'No' }}
                                            </option>
                                            <option value="Y" {{ $data->cashpurcheffect == 'Y' ? 'selected' : '' }}>Yes
                                            </option>
                                            <option value="N" {{ $data->cashpurcheffect == 'N' ? 'selected' : '' }}>No
                                            </option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="storeissuerequistion" class="col-form-label">Store Issue on Requisition
                                            Base on Verified </label>
                                        <select name="storeissuerequistion" id="storeissuerequistion" class="form-control">
                                            <option value="{{ $enviro_general->storeissuerequistion }}">
                                                {{ $enviro_general->storeissuerequistion == 'Y' ? 'Yes' : 'No' }}
                                            </option>
                                            <option value="Y" {{ $data->storeissuerequistion == 'Y' ? 'selected' : '' }}>Yes
                                            </option>
                                            <option value="N" {{ $data->storeissuerequistion == 'N' ? 'selected' : '' }}>No
                                            </option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="futuredateentry" class="col-form-label">Future Date Entry Allow</label>
                                        <select name="futuredateentry" id="futuredateentry" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Y" {{ ($data->allow_future_date_pr ?? '') == 'Y' ? 'selected' : '' }}>Yes</option>
                                            <option value="N" {{ ($data->allow_future_date_pr ?? '') == 'N' ? 'selected' : '' }}>No</option>
                                        </select>
                                    </div>
                                             <div class="col-md-4">
                                        <label for="autofill_kitchen_closing" class="col-form-label">Autofill Item (Kitchen Closing)</label>
                                        <select name="autofill_kitchen_closing" id="autofill_kitchen_closing" class="form-control">
                                            <option value="1" {{ ($data->autofill_kitchen_closing ?? 0) == 1 ? 'selected' : '' }}>Yes</option>
                                            <option value="0" {{ ($data->autofill_kitchen_closing ?? 0) == 0 ? 'selected' : '' }}>No</option>
                                        </select>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="roundofftype">Round Of Type</label>
                                        <select id="roundofftype" name="roundofftype" class="form-control">
                                            @if (empty($data->roundofftype))
                                                <option value="Standard">Standard</option>
                                            @endif
                                            <option value="Upper" {{ $data->roundofftype == 'Upper' ? 'selected' : '' }}>Upper</option>
                                            <option value="Standard" {{ $data->roundofftype == 'Standard' ? 'selected' : '' }}>Standard</option>
                                        </select>

                                        @error('roundofftype')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        {{-- <div class="table-responsive">
                            <table id="revmast"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Cash A/C</th>
                                        <th>Godown</th>
                                        <th>Item Rate MR</th>
                                        <th>Item Rate P. Bill</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                    <tr>
                                        <td>{{ $row->subname }}</td>
                                        <td>{{ $row->godownname }}</td>
                                        <td>{{ $row->itemratemrbasedon }}</td>
                                        <td>{{ $row->itemratepbillbasedon }}</td>
                                        <td class="ins">
                                            <a href="updatecityform?id={{ base64_encode($row->id) }}">
                                                <button class="btn btn-success btn-sm"><i
                                                        class="fa-regular fa-pen-to-square"></i>Edit</button></a>
                                            <a href="deleteinv?id={{ base64_encode($row->id) }}">
                                                <button class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i>
                                                    Delete
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                    @php $sn++; @endphp
                                    @endforeach
                                </tbody>
                            </table>
                        </div> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            const date = new Date();
            const day = date.getDate();
            const month = date.toLocaleString('default', {
                month: 'short'
            }).toLowerCase();
            const year = date.getFullYear();
            $(document).on('change', '#modifyaccountfield', function () {
                if ($(this).val() != '' && $(this).val() == 'N') {
                    let value = $(this).val();
                    showswal();
                    $('#fordays').parent('span').fadeIn('2000');
                } else {
                    $('#blockdays').val('0');
                    $('#fordays').text('0');
                    $('#fordays').parent('span').fadeOut('2000');
                };
            });

            function showswal() {
                Swal.fire({
                    title: 'Inventory Parameter',
                    text: 'Lock Upto Days?',
                    icon: 'question',
                    footer: `${day} ${month} ${year}`,
                    draggable: true,
                    confirmButtonText: 'Submit',
                    input: 'text',
                    inputValidator: (value) => {
                        if (!value || isNaN(value)) {
                            return 'Value is required and should be number';
                        }

                        if (parseInt(value) > 31) {
                            return 'Value should less than 31 days';
                        }
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        $('#blockdays').val(result.value);
                        $('#fordays').text(result.value);
                    } else {
                        showswal();
                    }
                });
            }
        });
    </script>
@endsection