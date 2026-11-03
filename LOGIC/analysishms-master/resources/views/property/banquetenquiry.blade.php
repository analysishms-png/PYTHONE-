@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
<link href="admin/plugins/clockpicker/dist/jquery-clockpicker.min.css" rel="stylesheet">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form id="bookinginquiryform" method="POST" action="{{ route('bookinginquiry.store') }}">
                                @csrf
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label for="functype" class="form-label">Function Type</label>
                                        <select class="form-control select2-multiple" name="functype" id="functype" required>
                                            <option value="">Select</option>
                                            @foreach (functiontypes() as $col)
                                                <option value="{{ $col->code }}">{{ $col->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="partyname" class="form-label">Party Name</label>
                                        <input type="text" name="partyname" id="partyname" class="form-control" required>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="add1" class="form-label">Address</label>
                                        <input type="text" name="add1" id="add1" class="form-control" required>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label for="add2" class="form-label">Address 2</label>
                                        <input type="text" name="add2" id="add2" class="form-control">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="citycode" class="form-label">City</label>
                                        <select class="form-control select2-multiple" name="citycode" id="citycode" required>
                                            <option value="">Select</option>
                                            @foreach (allcities() as $col)
                                                <option value="{{ $col->city_code }}">{{ $col->cityname }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="mobileno" class="form-label">Mobile No</label>
                                        <input type="text" name="mobileno" id="mobileno" class="form-control" required>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label for="mobileno1" class="form-label">Mobile No 2</label>
                                        <input type="text" name="mobileno1" id="mobileno1" class="form-control">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="conperson" class="form-label">Contact Person</label>
                                        <input type="text" name="conperson" id="conperson" class="form-control" required>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="handledby" class="form-label">Handled By</label>
                                        <input type="text" name="handledby" id="handledby" class="form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label for="pax" class="form-label">Expected Pax</label>
                                        <input type="number" name="pax" id="pax" class="form-control" required>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="gurrpax" class="form-label">Guaranteed Pax</label>
                                        <input type="number" name="gurrpax" id="gurrpax" class="form-control" required>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="status" class="form-label">Status</label>
                                        <select name="status" id="status" class="form-control" required>
                                            <option value="Active">Active</option>
                                            <option value="Inactive">Inactive</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <label for="cattype" class="form-label">Catering Type</label>
                                        <select name="cattype" id="cattype" class="form-control" required>
                                            <option value="Indoor">Indoor</option>
                                            <option value="Outdoor">Outdoor</option>
                                        </select>
                                    </div>
                                    <div class="col-md-8">
                                        <label for="remark" class="form-label">Remark</label>
                                        <input type="text" name="remark" id="remark" class="form-control">
                                    </div>
                                </div>

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
                                                <tr>
                                                    <td><input type="checkbox" name="venues[{{ $venue->code }}][select]" id="venue_{{ $venue->code }}"></td>
                                                    <td>{{ $venue->name }}</td>
                                                    <td><input type="date" name="venues[{{ $venue->code }}][fromdate]" class="form-control"></td>
                                                    <td><div class="input-group clockpicker" data-placement="bottom" data-align="right"
                                                            data-autoclose="true">
                                                            <input placeholder="17:01" type="text" name="venues[{{ $venue->code }}][fromtime]" class="form-control">
                                                            <span class="input-group-append"><span class="input-group-text"><i
                                                                        class="fa fa-clock-o"></i></span></span>
                                                        </div>
                                                    </td>
                                                    <td><input type="date" name="venues[{{ $venue->code }}][todate]" class="form-control"></td>
                                                    <td>
                                                        <div class="input-group clockpicker" data-placement="bottom" data-align="right"
                                                            data-autoclose="true">
                                                            <input placeholder="17:01" type="text" name="venues[{{ $venue->code }}][totime]" class="form-control">
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

                            <div class="table-responsive mt-3">
                                <table class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>From Dt.</th>
                                            <th>To Dt.</th>
                                            <th>Inq No.</th>
                                            <th>Party</th>
                                            <th>Mobile</th>
                                            <th>City</th>
                                            <th>Venue</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>

                                    @php
                                        $colorClasses = ['table-primary', 'table-success', 'table-warning', 'table-danger', 'table-info', 'table-secondary', 'table-light', 'table-dark'];
                                        $docidColorMap = [];
                                        $colorIndex = 0;
                                    @endphp

                                    <tbody>
                                        @foreach ($bookings as $item)
                                            @php
                                                if (!isset($docidColorMap[$item->docid])) {
                                                    $docidColorMap[$item->docid] = $colorClasses[$colorIndex % count($colorClasses)];
                                                    $colorIndex++;
                                                }
                                                $rowClass = $docidColorMap[$item->docid];
                                            @endphp

                                            <tr class="{{ $rowClass }}">
                                                <td>{{ date('d-m-Y', strtotime($item->fromdate)) }} {{ date('H:i', strtotime($item->fromtime)) }}</td>
                                                <td>{{ date('d-m-Y', strtotime($item->todate)) }} {{ date('H:i', strtotime($item->totime)) }}</td>
                                                <td>{{ $item->inqno }}</td>
                                                <td>{{ $item->partyname }}</td>
                                                <th>{{ $item->mobileno }} {{ !empty($item->mobileno1) ? ',' . $item->mobileno1 : '' }}</th>
                                                <td>{{ $item->cityname }}</td>
                                                <td>{{ $item->venuename }}</td>
                                                <td class="ins">
                                                    <a href="updatebanquetenquiry/{{ $item->inqno }}">
                                                        <button class="btn btn-success btn-sm"><i class="far fa-edit"></i>Edit</button>
                                                    </a>
                                                    <a href="{{ url('deletebanquetenquiry/' . $item->inqno) }}">
                                                        <button class="btn btn-danger btn-sm">
                                                            <i class="fas fa-trash"></i> Delete
                                                        </button>
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
