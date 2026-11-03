@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="companymasterupdate" id="companymasterupdate"
                                action="{{ route('comp_mastupdate') }}" method="POST">
                                @csrf
                                <input type="hidden" name="sub_code" value="{{ $comp_mastdata->sub_code }}">
                                <input type="hidden" name="sn" value="{{ $comp_mastdata->id }}">
                                <input type="hidden" value="{{ count($compdiscount) == 0 ? 1 : count($compdiscount) }}" name="pcount" id="pcount">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Account Name</label>
                                        <input type="text" name="name" id="name" value="{{ $comp_mastdata->name }}"
                                            class="form-control" required>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="group_code">Under Group</label>
                                        <select id="group_code" name="group_code" class="form-control" required>
                                            @if (empty($comp_mastdata->group_code))
                                                <option value="">Select</option>
                                            @endif
                                            @foreach ($subgroupdata as $list)
                                                <option value="{{ $list->group_code }}" {{ $comp_mastdata->group_code = $list->group_code ? 'selected' : '' }}>
                                                    {{ $list->group_name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        <span id="group_code_error" class="text-danger"></span>
                                        @error('group_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="comp_type" class="col-form-label">Company Type</label>
                                        <select id="comp_type" name="comp_type" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Corporate" {{ old('comp_type', $comp_mastdata->comp_type ?? '') == 'Corporate' ? 'selected' : '' }}>Corporate</option>
                                            <option value="Travel Agency" {{ old('comp_type', $comp_mastdata->comp_type ?? '') == 'Travel Agency' ? 'selected' : '' }}>Travel Agency</option>
                                            <option value="Travel Agency (OTA)" {{ old('comp_type', $comp_mastdata->comp_type ?? '') == 'Travel Agency (OTA)' ? 'selected' : '' }}>Travel Agency (OTA)</option>
                                            <option value="Mess" {{ old('comp_type', $comp_mastdata->comp_type ?? '') == 'Mess' ? 'selected' : '' }}>Mess</option>
                                        </select>

                                        @error('comp_type')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="allow_credit" class="col-form-label">Allow Credit</label>
                                        <select id="allow_credit" name="allow_credit" class="form-control">
                                            @if (empty($comp_mastdata->allow_credit))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $comp_mastdata->allow_credit }}">
                                                    {{ $comp_mastdata->allow_credit }}
                                                </option>
                                            @endif
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                        @error('allow_credit')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="logo" class="col-form-label">Logo</label>
                                        <select id="logo" name="logo" class="form-control">
                                            @if (empty($comp_mastdata->logo))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $comp_mastdata->logo }}">
                                                    {{ $comp_mastdata->logo }}
                                                </option>
                                            @endif
                                            @foreach ($travel_agents as $agent)
                                                <option value="{{ $agent->img }}">{{ $agent->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('logo')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mapcode">Map Code</label>
                                        <input type="text" value="{{ $comp_mastdata->mapcode }}" name="mapcode" id="mapcode"
                                            class="form-control">
                                        @error('mapcode')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="conperson">Contact Person</label>
                                        <input type="text" name="conperson" value="{{ $comp_mastdata->conperson }}"
                                            id="conperson" class="form-control">
                                        @error('conperson')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="discounttype" class="col-form-label">Discount Type</label>
                                        <select id="discounttype" name="discounttype" class="form-control">
                                            @if (empty($comp_mastdata->discounttype))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $comp_mastdata->discounttype }}">
                                                    {{ $comp_mastdata->discounttype }}
                                                </option>
                                            @endif
                                            <option value="">Select</option>
                                            <option value="Fix Rate">Fix Rate</option>
                                            <option value="Discountr %">Discountr %</option>
                                        </select>
                                        @error('discounttype')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="tradename" class="col-form-label">Trade Name</label>
                                        <input type="text" class="form-control" name="tradename" id="tradename" value="{{ $comp_mastdata->tradename }}">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="legalname" class="col-form-label">Legal Name</label>
                                        <input type="text" class="form-control" name="legalname" id="legalname" value="{{ $comp_mastdata->legalname }}">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="pincode" class="col-form-label">Pin Code</label>
                                        <input type="text" class="form-control" name="pincode" id="pincode" value="{{ $comp_mastdata->pin }}">
                                    </div>

                                    <div class="col-md-12">
                                        <label class="col-form-label" for="address">Address</label><span
                                            class="text-danger">*</span>
                                        <textarea class="form-control" name="address" id="addressc" rows="3">{{ $comp_mastdata->address }}</textarea>

                                        <span id="address_error" class="text-danger"></span>
                                        @error('comparison')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="citycode">City</label>
                                        <select name="citycode" id="citycode" class="form-control">
                                            @if (empty($comp_mastdata->citycode))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $comp_mastdata->citycode }}">
                                                    {{ $cityname }}
                                                </option>
                                            @endif
                                            @foreach ($citydata as $list)
                                                <option value="{{ $list->city_code }}">{{ $list->cityname }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mobile">Mobile</label>
                                        <input type="text" value="{{ $comp_mastdata->mobile }}" oninput="checkNum(this)"
                                            name="mobile" id="mobile" maxlength="10" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="email">Email <span
                                                class="text-danger">*</span></label>
                                        <input type="email" value="{{ $comp_mastdata->email }}" name="email" id="email"
                                            class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="panno">Pan No.</label>
                                        <input type="text" name="panno" value="{{ $comp_mastdata->panno }}" id="panno"
                                            maxlength="14" class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="gstin">GSTIN</label>
                                        <input type="text" name="gstin" value="{{ $comp_mastdata->gstin }}" id="gstin"
                                            class="form-control">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeyn">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y" name="activeyn"
                                                id="activeyes" {{ $comp_mastdata->activeyn == 'Y' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N" name="activeyn"
                                                id="activeno" {{ $comp_mastdata->activeyn == 'N' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="openingbalance" class="col-form-label">Opening Balance</label>
                                        <input type="text" class="form-control" value="{{ $balance }}" name="openingbalance" id="openingbalance" readonly>
                                        <span id="balancebadge"
                                            class="font-weight-bold h4 text-center mt-1 balancebadge">{{ $drorcr }}</span>

                                    </div>

                                    <div class="col-md-6">

                                    </div>

                                    <div class="col-md-12">
                                        @include('property.include.subledger')
                                    </div>

                                </div>

                                <div class="container mt-3">
                                    <table class="table table-bordered" id="roomTable">
                                        <thead class="table-light">
                                            <tr>
                                                <th>Room Category</th>
                                                <th>Adult</th>
                                                <th>Rate</th>
                                                <th>Plan</th>
                                                <th>Plan Amount</th>
                                                <th>Tax Inc</th>
                                                <th>Action {{ count($compdiscount) }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @if (count($compdiscount) > 0)
                                                @foreach ($compdiscount as $item)
                                                    <tr>
                                                        <td>
                                                            <select name="roomcat{{ $item->sno }}" id="roomcat{{ $item->sno }}" class="form-control roomcat">
                                                                <option value="">Select</option>
                                                                @foreach ($roomcat as $cat)
                                                                    <option value="{{ $cat->cat_code }}" {{ $item->roomcatcode == $cat->cat_code ? 'selected' : '' }}>{{ $cat->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <select name="adult{{ $item->sno }}" id="adult{{ $item->sno }}" class="form-control">
                                                                @for ($i = 1; $i <= 5; $i++)
                                                                    <option value="{{ $i }}" {{ $item->adult == $i ? 'selected' : '' }}>{{ $i }}</option>
                                                                @endfor
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <input type="number" value="{{ $item->fixrate }}" name="rate{{ $item->sno }}" id="rate{{ $item->sno }}"
                                                                class="form-control rate" step="0.01">
                                                        </td>
                                                        <td>
                                                            <select name="plan{{ $item->sno }}" id="plan{{ $item->sno }}" class="form-control plan">
                                                                <option value="">Select Plan</option>
                                                                @foreach (planbasedcategory($item->roomcatcode) as $plan)
                                                                    <option value="{{ $plan->pcode }}" {{ $item->plan == $plan->pcode ? 'selected' : '' }}>{{ $plan->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <input type="number" value="{{ $item->planamount }}" name="planamt{{ $item->sno }}" id="planamt{{ $item->sno }}"
                                                                class="form-control planamt" step="0.01">
                                                        </td>
                                                        <td>
                                                            <select name="taxinc{{ $item->sno }}" id="taxinc{{ $item->sno }}" class="form-control">
                                                                <option value="Y" {{ $item->taxinc == 'Y' ? 'selected' : '' }}>Yes</option>
                                                                <option value="N" {{ $item->taxinc == 'N' ? 'selected' : '' }}>No</option>
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <button type="button"
                                                                class="btn btn-danger btn-sm removerow">X</button>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            @else
                                                <tr>
                                                    <td>
                                                        <select name="roomcat1" id="roomcat1" class="form-control roomcat">
                                                            <option value="">Select</option>
                                                            @foreach ($roomcat as $cat)
                                                                <option value="{{ $cat->cat_code }}">{{ $cat->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <select name="adult1" id="adult1" class="form-control">
                                                            @for ($i = 1; $i <= 5; $i++)
                                                                <option value="{{ $i }}">{{ $i }}</option>
                                                            @endfor
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="number" name="rate1" id="rate1"
                                                            class="form-control rate" step="0.01">
                                                    </td>
                                                    <td>
                                                        <select name="plan1" id="plan1" class="form-control plan">
                                                            <option value="">Select Plan</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="number" name="planamt1" id="planamt1"
                                                            class="form-control planamt" step="0.01">
                                                    </td>
                                                    <td>
                                                        <select name="taxinc1" id="taxinc1" class="form-control">
                                                            <option value="Y">Yes</option>
                                                            <option value="N">No</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <button type="button"
                                                            class="btn btn-danger btn-sm removerow">X</button>
                                                    </td>
                                                </tr>
                                            @endif

                                        </tbody>
                                    </table>
                                    <button type="button" id="addRow" class="btn btn-primary">Add Row</button>
                                </div>


                                <div class="form-group row">
                                    <div class="col-lg-8 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary"><i class="fa-solid fa-wrench"></i>
                                            Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);
        });
    </script>

    <script>
        $(document).ready(function() {
            $('#companymasterupdate').on('submit', function(e) {
                let gstin = $('#gstin').val();
                if (gstin !== '' && gstin.length < 15) {
                    e.preventDefault();
                    pushNotify('error', 'Company Master', 'GSTIN length should be equal to 15!', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                }
            });
        });

        $(document).ready(function() {

            // Add Row
            $("#addRow").click(function() {
                let index = $('#roomTable tbody tr').length + 1;
                $('#pcount').val(index);
                let newtr = `<tr>
                                <td>
                                    <select name="roomcat${index}" id="roomcat${index}" class="form-control roomcat">
                                        <option value="">Select</option>
                                                @foreach ($roomcat as $cat)
                                                    <option value="{{ $cat->cat_code }}">{{ $cat->name }}</option>
                                                @endforeach
                                     </select>
                                </td>
                                <td>
                                    <select name="adult${index}" id="adult${index}" class="form-control">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="rate${index}" id="rate${index}"
                                        class="form-control rate" step="0.01">
                                </td>
                                <td>
                                    <select name="plan${index}" id="plan${index}" class="form-control plan">
                                        <option value="">Select Plan</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="planamt${index}" id="planamt${index}"
                                        class="form-control planamt" step="0.01">
                                </td>
                                <td>
                                    <select name="taxinc1" id="taxinc1" class="form-control">
                                        <option value="Y">Yes</option>
                                        <option value="N">No</option>
                                    </select>
                                </td>
                                <td>
                                    <button type="button"
                                        class="btn btn-danger btn-sm removerow">X</button>
                                </td>
                        </tr>`;

                $('#roomTable tbody').append(newtr);
            });

            // Remove Row
            $('#roomTable tbody').on('click', '.removerow', function() {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
                row.remove();

                $('#roomTable tbody tr').each(function(index) {
                    let adjustedIndex = index + 1;
                    $(this).find('select, input').each(function() {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                });
            });

            // Fetch Plans on Room Category change
            $(document).on("change", ".roomcat", function() {
                let row = $(this).closest("tr");
                let roomcat = $(this).val();
                let planSelect = row.find(".plan");

                if (roomcat) {
                    $.ajax({
                        url: "{{ route('planfetchbycat') }}",
                        type: "POST",
                        data: {
                            roomcat: roomcat,
                            _token: "{{ csrf_token() }}"
                        },
                        success: function(data) {
                            planSelect.empty().append('<option value="">Select Plan</option>');
                            $.each(data, function(i, plan) {
                                planSelect.append('<option value="' + plan.pcode + '">' + plan.name + '</option>');
                            });
                        }
                    });
                } else {
                    planSelect.empty().append('<option value="">Select Plan</option>');
                }
            });

            // Validation: if Rate is filled → disable Plan & Plan Amount
            $(document).on("input", ".rate", function() {
                let row = $(this).closest("tr");
                let rate = $(this).val();

                if (rate && rate > 0) {
                    row.find(".plan").prop("disabled", true).val("");
                    row.find(".planamt").prop("disabled", true).val("");
                } else {
                    row.find(".plan").prop("disabled", false);
                    row.find(".planamt").prop("disabled", false);
                }
            });

        });
    </script>
@endsection
