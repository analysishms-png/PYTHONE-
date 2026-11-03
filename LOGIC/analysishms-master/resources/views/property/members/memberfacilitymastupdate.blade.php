@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="mb-3">
                                <form action="{{ route('member.facilitymast.updatestore', $data->code) }}" method="post">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="name">Name</label>
                                                <input type="text" value="{{ $data->name }}" class="form-control" name="name" id="name" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="shortname">Short Name</label>
                                                <input type="text" value="{{ $data->sname }}" class="form-control" name="shortname" id="shortname" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="facilitytype">Type</label>
                                                <select class="form-control" name="facilitytype" id="facilitytype" required>
                                                    <option value="">Select</option>
                                                    <option value="fixed" {{ $data->chargetype == 'fixed' ? 'selected' : '' }}>Fixed</option>
                                                    <option value="memberwise" {{ $data->chargetype == 'memberwise' ? 'selected' : '' }}>MemberWise</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="fixrate">Fix Rate</label>
                                                <input type="text" value="{{ $data->fixedrate }}" class="form-control" name="fixrate" id="fixrate" placeholder="0.00" {{ $data->fixedrate == '0.00' ? 'readonly' : '' }}>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="taxstructure">Tax Structure</label>
                                                <select class="form-control" name="taxstructure" id="taxstructure">
                                                    <option value="">Select</option>
                                                    @foreach ($taxstrudata as $item)
                                                        <option value="{{ $item->str_code }}" {{ $data->taxstru == $item->str_code ? 'selected' : ''}}>{{ $item->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="accountname">Account Name</label>
                                                <select class="form-control" name="accountname" id="accountname">
                                                    <option value="">Select</option>
                                                    @foreach ($subgroupdata as $item)
                                                        <option value="{{ $item->sub_code }}" {{ $data->accode == $item->sub_code ? 'selected' : ''}}>{{ $item->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="activeyn">Active YN</label>
                                                <select class="form-control" name="activeyn" id="activeyn">
                                                    <option value="yes" {{ $data->activeyn == 'y' ? 'selected' : '' }}>Yes</option>
                                                    <option value="no" {{ $data->activeyn == 'n' ? 'selected' : '' }}>No</option>
                                                </select>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="text-center">
                                        <button class="btn btn-sm btn-success" type="submit">Update</button>
                                    </div>

                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $(document).on('change', '#facilitytype', function() {
                if ($(this).val() == 'fixed') {
                    $('#fixrate').prop('readonly', false);
                } else {
                    $('#fixrate').val('').prop('readonly', true);
                }
            });
        });
    </script>
@endsection
