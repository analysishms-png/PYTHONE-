@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <link href="{{ asset('admin/plugins/clockpicker/dist/jquery-clockpicker.min.css') }}" rel="stylesheet">
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form id="bookinginquiryform" method="POST" action="{{ route('bookinginquiry.update') }}">
                                @csrf
                                <input type="hidden" value="{{ $inquiry->inqno }}" name="inqno" id="inqno">
                                {{-- Function Type --}}
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label class="form-label">Function Type</label>
                                        <select class="form-control select2-multiple" name="functype" required>
                                            <option value="">Select</option>
                                            @foreach (functiontypes() as $col)
                                                <option value="{{ $col->code }}" {{ $inquiry->functype == $col->code ? 'selected' : '' }}>
                                                    {{ $col->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label">Party Name</label>
                                        <input type="text" name="partyname" value="{{ $inquiry->partyname }}" class="form-control" required>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label">Address</label>
                                        <input type="text" name="add1" value="{{ $inquiry->add1 }}" class="form-control" required>
                                    </div>
                                </div>

                                {{-- Address 2, City, Mobile --}}
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label class="form-label">Address 2</label>
                                        <input type="text" name="add2" value="{{ $inquiry->add2 }}" class="form-control">
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label">City</label>
                                        <select class="form-control select2-multiple" name="citycode" required>
                                            <option value="">Select</option>
                                            @foreach (allcities() as $col)
                                                <option value="{{ $col->city_code }}" {{ $inquiry->citycode == $col->city_code ? 'selected' : '' }}>
                                                    {{ $col->cityname }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label">Mobile No</label>
                                        <input type="text" name="mobileno" value="{{ $inquiry->mobileno }}" class="form-control" required>
                                    </div>
                                </div>

                                {{-- Mobile 2, Contact, Handled By --}}
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label class="form-label">Mobile No 2</label>
                                        <input type="text" name="mobileno1" value="{{ $inquiry->mobileno1 }}" class="form-control">
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label">Contact Person</label>
                                        <input type="text" name="conperson" value="{{ $inquiry->conperson }}" class="form-control" required>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label">Handled By</label>
                                        <input type="text" name="handledby" value="{{ $inquiry->handledby }}" class="form-control">
                                    </div>
                                </div>

                                {{-- Pax, Guaranteed Pax, Status --}}
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label class="form-label">Expected Pax</label>
                                        <input type="number" name="pax" value="{{ $inquiry->pax }}" class="form-control" required>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label">Guaranteed Pax</label>
                                        <input type="number" name="gurrpax" value="{{ $inquiry->gurrpax }}" class="form-control" required>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label">Status</label>
                                        <select name="status" class="form-control" required>
                                            <option value="Active" {{ $inquiry->status == 'Active' ? 'selected' : '' }}>Active</option>
                                            <option value="Inactive" {{ $inquiry->status == 'Inactive' ? 'selected' : '' }}>Inactive</option>
                                        </select>
                                    </div>
                                </div>

                                {{-- Catering Type & Remark --}}
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label class="form-label">Catering Type</label>
                                        <select name="cattype" class="form-control" required>
                                            <option value="Indoor" {{ $inquiry->cattype == 'Indoor' ? 'selected' : '' }}>Indoor</option>
                                            <option value="Outdoor" {{ $inquiry->cattype == 'Outdoor' ? 'selected' : '' }}>Outdoor</option>
                                        </select>
                                    </div>
                                    <div class="col-md-8">
                                        <label class="form-label">Remark</label>
                                        <input type="text" name="remark" value="{{ $inquiry->remark }}" class="form-control">
                                    </div>
                                </div>

                                {{-- Venues --}}
                                <hr>
                                <h5>Venues</h5>
                                <div class="table-responsive mb-3">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Select</th>
                                                <th>Venue Name</th>
                                                <th>From Date</th>
                                                <th>From Time</th>
                                                <th>To Date</th>
                                                <th>To Time</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach (venuemast() as $venue)
                                                @php
                                                    $selectedVenue = $venues->firstWhere('venuecode', $venue->code);
                                                @endphp
                                                <tr>
                                                    <td>
                                                        <input type="checkbox" name="venues[{{ $venue->code }}][select]" {{ $selectedVenue ? 'checked' : '' }}>
                                                    </td>
                                                    <td>{{ $venue->name }}</td>
                                                    <td><input type="date" name="venues[{{ $venue->code }}][fromdate]" value="{{ $selectedVenue->fromdate ?? '' }}" class="form-control"></td>
                                                    <td><input type="text" name="venues[{{ $venue->code }}][fromtime]" value="{{ $selectedVenue->fromtime ?? '' }}" class="form-control timeinput"></td>
                                                     <td><div class="input-group clockpicker" data-placement="bottom" data-align="right"
                                                            data-autoclose="true">
                                                            <input placeholder="17:01" type="text" name="venues[{{ $venue->code }}][fromtime]" class="form-control" value="{{ $selectedVenue->fromtime ?? '' }}">
                                                            <span class="input-group-append"><span class="input-group-text"><i
                                                                        class="fa fa-clock-o"></i></span></span>
                                                        </div>
                                                    </td>
                                                    <td><input type="date" name="venues[{{ $venue->code }}][todate]" value="{{ $selectedVenue->todate ?? '' }}" class="form-control"></td>
                                                    <td>
                                                        <div class="input-group clockpicker" data-placement="bottom" data-align="right"
                                                            data-autoclose="true">
                                                            <input placeholder="17:01" type="text" name="venues[{{ $venue->code }}][totime]" class="form-control" value="{{ $selectedVenue->totime ?? '' }}">
                                                            <span class="input-group-append"><span class="input-group-text"><i
                                                                        class="fa fa-clock-o"></i></span></span>
                                                        </div>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>

                                <button type="submit" class="btn btn-primary">Save</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $(document).on('input', '#gurrpax, #pax', function() {
                let gurrpax = parseFloat($('#gurrpax').val()) || 0;
                let pax = parseFloat($('#pax').val()) || 0;
                if (gurrpax > pax) {
                    $('#gurrpax').val(pax);
                }
            });
        });
    </script>
@endsection
