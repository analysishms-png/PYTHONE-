@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="chargemasterupdateform" id="chargemasterupdateform"
                                action="{{ route('chargemasterstoreupdate') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Charge Name</label>
                                        <input type="text" name="name" value="{{ $data->taxname }}" id="name"
                                            class="form-control" required>
                                        <div id="namelist"></div>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                        <input type="hidden" name="id" value="{{ $data->id }}">
                                        <input type="hidden" name="rev_code" value="{{ $data->rev_code }}">

                                        <label class="col-form-label" for="nature">Nature Of Charge</label>
                                        <select id="nature" name="nature" class="form-control">
                                            @if (empty($data->nature))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $data->nature }}">{{ $data->nature }}</option>
                                            @endif
                                            <option value="Room Charge">Room Charge</option>
                                            <option value="Meal Charge">Meal Charge</option>
                                            <option value="Laundry Charge">Laundry Charge</option>
                                            <option value="Telephone Charge">Telephone Charge</option>
                                            <option value="Internet Charge">Internet Charge</option>
                                            <option value="Vehicle Charge">Vehicle Charge</option>
                                        </select>
                                        @error('nature')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="hsn_code">HSN Code</label>
                                        <input type="text" name="hsn_code" value="{{ $data->hsn_code }}" id="hsn_code"
                                            class="form-control">
                                        @error('hsn_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="ac_code">Account Name</label>
                                        <select id="ac_code" name="ac_code" class="form-control" required>
                                            @if (empty($data->ac_code))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $data->ac_code }}">{{ $data->subname }}</option>
                                            @endif
                                            @foreach ($ledgerdata as $list)
                                                <option value="{{ $list->sub_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('ac_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="tax_stru">Tax Structure</label>
                                        <select id="tax_stru" name="tax_stru" class="form-control" required>
                                            <option value="">Select</option>

                                            @php
                                                $uniqueNames = [];
                                            @endphp

                                            @foreach ($taxstrudata as $list)
                                                @if (!in_array($list->name, $uniqueNames))
                                                    <option value="{{ $list->str_code }}"
                                                        {{ !empty($data->tax_stru) && $data->tax_stru == $list->str_code ? 'selected' : '' }}>
                                                        {{ $list->name }}
                                                    </option>
                                                    @php
                                                        $uniqueNames[] = $list->name;
                                                    @endphp
                                                @endif
                                            @endforeach
                                        </select>


                                        @error('tax_stru')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="seq_no">Seq No</label>
                                        <input type="text" value="{{ $data->seq_no }}" name="seq_no" id="seq_no" class="form-control">
                                        @error('seq_no')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">

                                        <label for="tax_inc" class="col-form-label">Tax Inclusive</label>
                                        <select id="tax_inc" name="tax_inc" class="form-control">
                                            @if (empty($data->tax_inc))
                                                <option value="Y">Yes</option>
                                            @else
                                                <option value="{{ $data->tax_inc }}">
                                                    {{ $data->tax_inc == 'Y' ? 'Yes' : 'No' }}</option>
                                            @endif
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                        @error('tax_inc')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label for="ac_posting" class="col-form-label">Posting Type</label>
                                        <select id="ac_posting" name="ac_posting" class="form-control">
                                            @if (empty($data->ac_posting))
                                                <option value="Y">Yes</option>
                                            @else
                                                <option value="{{ $data->ac_posting }}">{{ $data->ac_posting }}</option>
                                            @endif
                                            <option value="Detailed">Detailed</option>
                                            <option value="Summarize">Summarize</option>
                                        </select>
                                        @error('ac_posting')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label for="sales_rate" class="col-form-label">Sale Rate</label>
                                        <input name="sales_rate" value="{{ $data->sales_rate }}" class="form-control"
                                            class="decimal-input form-visible" step="0.01" min="0.00" max="9999.99"
                                            placeholder="0.00" oninput="checkNumMax(this, 7);handleDecimalInput(event);"
                                            type="text">
                                        @error('sales_rate')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label for="type" class="col-form-label">Type</label>
                                        <select id="type" name="type" class="form-control">
                                            @if (empty($data->type))
                                                <option value="CR">CR</option>
                                            @else
                                                <option value="{{ $data->type }}">{{ $data->type }}</option>
                                            @endif
                                            <option value="CR">CR</option>
                                            <option value="DR">DR</option>
                                        </select>
                                        @error('type')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="active">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y" name="active"
                                                id="activeyes" {{ $data->active == 'Y' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N" name="active"
                                                id="activeno" {{ $data->active == 'N' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
                                    </div>

                                    {{-- <div class="col-md-6">
                                        <label for="openingbalance" class="col-form-label">Opening Balance</label>
                                        <input type="text" class="form-control" name="openingbalance" id="openingbalance">
                                        <span id="balancebadge" class="font-weight-bold h4 text-center mt-1 balancebadge"></span>
                                    </div> --}}

                                    {{-- <div class="col-md-6">

                                    </div>

                                    <div class="col-md-6">
                                        @include('property.include.subledger')
                                    </div> --}}

                                    <div class="col-7 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary"><i class="fa-solid fa-wrench"></i>
                                            Update </button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    </div>
@endsection
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    $(document).ready(function() {
        $('#myloader').removeClass('none');
        setTimeout(() => {
            $('#myloader').addClass('none');
        }, 500);
    });
    // Business Source Name

    document.addEventListener('DOMContentLoaded', function() {
        var name = document.getElementById('name');
        var namelist = document.getElementById('namelist');
        var currentLiIndex = -1;
        name.addEventListener('keydown', function(event) {
            if (event.key === 'ArrowDown') {
                event.preventDefault();
                var liElements = namelist.querySelectorAll('li');
                currentLiIndex = (currentLiIndex + 1) % liElements.length;
                if (liElements.length > 0) {
                    name.value = liElements[currentLiIndex].textContent;
                }
            }
        });
        name.addEventListener('keyup', function() {
            var cid = this.value;
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/getchargeames', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    namelist.innerHTML = xhr.responseText;
                    namelist.style.display = 'block';
                }
            };
            xhr.send('cid=' + cid + '&_token=' + '{{ csrf_token() }}');

        });
        $(document).on('click', function(event) {
            if (!$(event.target).closest('li').length) {
                namelist.style.display = 'none';
            }
        });
        $(document).on('click', '#namelist li', function() {
            $('#name').val($(this).text());
            namelist.style.display = 'none';
        });
    });
</script>
