@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="taxform" id="taxform" action="{{ route('taxstore') }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="taxname">Tax Name</label>
                                        <input type="text" name="taxname" id="taxname" class="form-control" required>
                                        <div id="taxlist"></div>
                                        <span id="taxname_error" class="text-danger"></span>
                                        @error('taxname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="sundryname">Sundry Name</label>
                                        <select name="sundryname" id="sundryname" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($sundrymast as $item)
                                                <option value="{{ $item->sundry_code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('sundryname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="ledgeraccount">Ledger Accounts</label>
                                        <select name="ledgeraccount" id="ledgeraccount" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($ledgerdata as $item)
                                                <option value="{{ $item->sub_code }}"> {{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('ledgeraccount')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="payableaccount">Payable Accounts</label>
                                        <select name="payableaccount" id="payableaccount" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($ledgerdata as $item)
                                                <option value="{{ $item->sub_code }}"> {{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('payableaccount')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="unregaccount">Unregistered Accounts</label>
                                        <select name="unregaccount" id="unregaccount" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($ledgerdata as $item)
                                                <option value="{{ $item->sub_code }}"> {{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('unregaccount')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeyn">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y" name="activeyn"
                                                id="activeyes" checked>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N" name="activeyn"
                                                id="activeno">
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
                                    </div>

                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-8 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="d-flex gap-2 px-3 pb-2">
                            <button type="button" id="excelBtn" class="btn btn-success btn-sm">Excel</button>
                            <button type="button" id="printBtn" class="btn btn-info btn-sm text-white">Print</button>
                            <span id="printUrl" style="display:none;">{{ route('printtaxmaster') }}</span>
                            <span id="exportUrl" style="display:none;">{{ route('taxmaster.export') }}</span>
                        </div>
                        <div class="table-responsive">
                            <table id="taxmaster"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Account Name</th>
                                        <th>Sundry</th>
                                        <th>Defined</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($taxdata as $data)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $data->taxname }}</td>
                                            <td>{{ $data->subname ?: $data->ac_code }}</td>
                                            <td>{{ $data->sundryname ?: $data->sundry }}</td>
                                            <td>{{ $data->SysYN == 'Y' ? 'System' : 'User' }}</td>
                                            <td class="ins">
                                                <a
                                                    href="updatetax?id={{ base64_encode($data->id) }}">
                                                    <button class="btn btn-success btn-sm"><i
                                                            class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                </a>
                                                <a
                                                    href="deletetax?rev_code={{ base64_encode($data->rev_code) }}&id={{ base64_encode($data->id) }}&ac_code={{ base64_encode($data->ac_code) }}">
                                                    <button class="btn btn-danger btn-sm"><i
                                                            class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
                                        </tr>
                                        @php $sn++; @endphp
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <script>
        $(document).ready(function() {
            new DataTable('#taxmaster', {
                ordering: true,
                order: [],
                pageLength: 25,
            });

            $('#excelBtn').on('click', function () {
                window.location.href = $('#exportUrl').text().trim();
            });

            $('#printBtn').on('click', function () {
                window.open($('#printUrl').text().trim(), '_blank');
            });
        });
    </script>
@endsection
