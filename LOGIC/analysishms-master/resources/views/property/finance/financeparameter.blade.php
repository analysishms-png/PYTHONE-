@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="tabs">
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-1" name="tabby-tabs" checked>
                                    <label class="tabby" for="tab-1">Finance Parameter</label>
                                    <div class="tabby-content">
                                        <form class="form" name="financeparam" id="financeparam"
                                            action="{{ route('financeparametersubmit') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="openingstock">Opening Stock</label>
                                                        <input type="text" oninput="this.value=this.value.replace(/[^0-9.]/g,'');" class="form-control" id="openingstock" name="openingstock" value="{{ financeparameter()->openingstock ?? '' }}" required placeholder="Enter Value">
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="closingstock">Closing Stock</label>
                                                        <input type="text" oninput="this.value=this.value.replace(/[^0-9.]/g,'');" class="form-control" id="closingstock" name="closingstock" value="{{ financeparameter()->closingstock ?? '' }}" required placeholder="Enter Value">
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="negtivecashbalance">Negative Cash Balance</label>
                                                        <select name="negtivecashbalance" id="negtivecashbalance" class="form-control">
                                                            <option value="">Select</option>
                                                            <option value="warn" {{ (financeparameter() && financeparameter()->negtivecashbalance == 'warn') ? 'selected' : '' }}>Warn</option>
                                                            <option value="allow" {{ (financeparameter() && financeparameter()->negtivecashbalance == 'allow') ? 'selected' : '' }}>Allow</option>
                                                            <option value="block" {{ (financeparameter() && financeparameter()->negtivecashbalance == 'block') ? 'selected' : '' }}>Block</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-7 mt-4 ml-auto">
                                                    <button type="submit" class="btn btn-primary">Submit <i
                                                            class="fa-solid fa-file-export"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-2" name="tabby-tabs">
                                    <label class="tabby" for="tab-2">Voucher Environment</label>
                                    <div class="tabby-content">
                                        <form action="{{ route('voucherentryupdate') }}" method="POST">
                                            @csrf
                                            <input type="hidden" name="totalrows" id="totalrows" value="0">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Update</button>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="vouchertype">Voucher Type</label>
                                                                <select class="form-control select2-multiple" id="vouchertype" name="vouchertype" required>
                                                                    <option value="">Select Voucher Type</option>
                                                                    @foreach (vourchertypeall() as $item)
                                                                        <option value="{{ $item->v_type }}">{{ $item->v_type }} - {{ $item->description }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="description">Description</label>
                                                                <input type="text" class="form-control" id="description" name="description">
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="short_name">Short Name</label>
                                                                <input type="text" class="form-control" id="short_name" name="short_name" readonly>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="category">Category</label>
                                                                <input type="text" class="form-control" id="category" name="category" readonly>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="nature">Nature</label>
                                                                <input type="text" class="form-control" id="nature" name="nature" readonly>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="number_method">Number Method</label>
                                                                <select name="number_method" id="number_method" class="form-control">
                                                                    <option value="">Select</option>
                                                                    <option value="Automatic">Automatic</option>
                                                                    <option value="Manual">Manual</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="separate_narr">Seperate Narration</label>
                                                                <select name="separate_narr" id="separate_narr" class="form-control">
                                                                    <option value="">Select</option>
                                                                    <option value="Y">Yes</option>
                                                                    <option value="N">No</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="narration">Narration</label>
                                                                <input type="text" class="form-control" id="narration" name="narration">
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="common_narr">Common Narration</label>
                                                                <select name="common_narr" id="common_narr" class="form-control">
                                                                    <option value="">Select</option>
                                                                    <option value="Y">Yes</option>
                                                                    <option value="N">No</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="chqno">Cheque Number</label>
                                                                <select name="chqno" id="chqno" class="form-control">
                                                                    <option value="">Select</option>
                                                                    <option value="Y">Yes</option>
                                                                    <option value="N">No</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="chqdt">Cheque Date</label>
                                                                <select name="chqdt" id="chqdt" class="form-control">
                                                                    <option value="">Select</option>
                                                                    <option value="Y">Yes</option>
                                                                    <option value="N">No</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="clgdt">College Date</label>
                                                                <select name="clgdt" id="clgdt" class="form-control">
                                                                    <option value="">Select</option>
                                                                    <option value="Y">Yes</option>
                                                                    <option value="N">No</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="defaultcrac">Default Credit Account</label>
                                                                <select name="defaultcrac" id="defaultcrac" class="form-control">
                                                                    <option value="">Select</option>
                                                                    @foreach (subgroupall() as $item)
                                                                        <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="defaultdrac">Default Debit Account</label>
                                                                <select name="defaultdrac" id="defaultdrac" class="form-control">
                                                                    <option value="">Select</option>
                                                                    @foreach (subgroupall() as $item)
                                                                        <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="firstdrcr">First DR/CR</label>
                                                                <select name="firstdrcr" id="firstdrcr" class="form-control">
                                                                    <option value="">Select</option>
                                                                    <option value="DR">DR</option>
                                                                    <option value="CR">CR</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <h5 class="text-center">Voucher Prefix</h5>
                                                    <table class="table table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>From Date</th>
                                                                <th>To Date</th>
                                                                <th>Prefix</th>
                                                                <th>Start SRL No.</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="voucherprefixbody">
                                                            <tr>
                                                                <td colspan="4" class="text-center">No Data Available</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </form>
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
            $(document).on('change', '#vouchertype', function() {
                var vouchertype = $(this).val();

                $.ajax({
                    url: "{{ route('getvoucherentrydata') }}",
                    type: "POST",
                    data: {
                        _token: '{{ csrf_token() }}',
                        vouchertype: vouchertype
                    },
                    success: function(response) {
                        let vouchertype = response.vouchertype;
                        let voucherprefix = response.voucherprefix;
                        $('#description').val(vouchertype.description);
                        $('#short_name').val(vouchertype.short_name);
                        $('#category').val(vouchertype.category);
                        $('#nature').val(vouchertype.nature);
                        $('#number_method').val(vouchertype.number_method);
                        $('#separate_narr').val(vouchertype.separate_narr);
                        $('#narration').val(vouchertype.narration);
                        $('#common_narr').val(vouchertype.common_narr);
                        $('#chqno').val(vouchertype.chqno);
                        $('#chqdt').val(vouchertype.chqdt);
                        $('#clgdt').val(vouchertype.clgdt);
                        $('#defaultdrac').val(vouchertype.defaultdrac);
                        $('#defaultcrac').val(vouchertype.defaultcrac);
                        $('#firstdrcr').val(vouchertype.firstdrcr);

                        $('#voucherprefixbody').empty();
                        if (voucherprefix.length > 0) {
                            $('#totalrows').val(voucherprefix.length);
                            let index = 0;
                            voucherprefix.forEach(function(prefix) {
                                index++;
                                let row = `<tr>
                                    <td>
                                    <input type="hidden" name="prefix_${index}" class="form-control" value="${prefix.prefix}">
                                    ${dmy(prefix.date_from)}
                                    </td>
                                    <td>${dmy(prefix.date_to)}</td>
                                    <td>${prefix.prefix}</td>
                                    <td><input type="text" name="start_srl_no_${index}" class="form-control fiveem" value="${prefix.start_srl_no}"></td>
                                </tr>`;
                                $('#voucherprefixbody').append(row);
                            });
                        } else {
                            let row = `<tr>
                                <td colspan="4" class="text-center">No Data Available</td>
                            </tr>`;
                            $('#voucherprefixbody').append(row);
                        }

                    },
                    error: function(xhr) {
                        // Handle errors here
                        console.error(xhr.responseText);
                    }
                });
            });
        });
    </script>
@endsection
