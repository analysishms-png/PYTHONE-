@extends('property.layouts.main')
@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.2.1/css/dataTables.dataTables.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.2/css/buttons.dataTables.css">
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="chargemasterstoreform" id="chargemasterstoreform"
                                action="{{ route('chargemasterstore') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Charge Name</label>
                                        <input type="text" name="name" id="name" class="form-control" required>
                                        <div id="namelist"></div>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">

                                        <label class="col-form-label" for="nature">Nature Of Charge</label>
                                        <select id="nature" name="nature" class="form-control">
                                            <option value="">Select</option>
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

                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="hsn_code">HSN Code</label>
                                        <input type="text" name="hsn_code" id="hsn_code" class="form-control">
                                        @error('hsn_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="ac_code">Account Name</label>
                                        <select id="ac_code" name="ac_code" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($ledgerdata as $list)
                                                <option value="{{ $list->sub_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('ac_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-">
                                        <label class="col-form-label" for="tax_stru">Tax Structure</label>
                                        <select id="tax_stru" name="tax_stru" class="form-control" required>
                                            <option value="">Select</option>
                                            <?php
                                            $uniqueOptions = [];
                                            ?>
                                            @foreach ($taxstrudata as $list)
                                                <?php
                                                if (!in_array($list->str_code, $uniqueOptions)) {
                                                    $uniqueOptions[] = $list->str_code;
                                                ?>
                                                <option value="{{ $list->str_code }}">{{ $list->name }}</option>
                                                <?php
                                                }
                                                ?>
                                            @endforeach
                                        </select>
                                        @error('tax_stru')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>


                                    <div class="col-md-6">
                                        <label class="col-form-label" for="seq_no">Seq No</label>
                                        <input type="text" name="seq_no" id="seq_no" class="form-control">
                                        @error('seq_no')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="tax_inc" class="col-form-label">Tax Inclusive</label>
                                        <select id="tax_inc" name="tax_inc" class="form-control">
                                            <option value="Y">Yes</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                        @error('tax_inc')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="ac_posting" class="col-form-label">Posting Type</label>
                                        <select id="ac_posting" name="ac_posting" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Detailed">Detailed</option>
                                            <option value="Summarize">Summarize</option>
                                        </select>
                                        @error('ac_posting')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="sales_rate" class="col-form-label">Sale Rate</label>
                                        <input name="sales_rate" class="form-control" class="decimal-input form-visible"
                                            step="0.01" min="0.00" max="9999.99" placeholder="0.00"
                                            oninput="checkNumMax(this, 7);handleDecimalInput(event);" type="text">
                                        @error('sales_rate')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label for="type" class="col-form-label">Type</label>
                                        <select id="type" name="type" class="form-control">
                                            <option value="CR">CR</option>
                                            <option value="CR">CR</option>
                                            <option value="DR">DR</option>
                                        </select>
                                        @error('type')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="active">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y" name="active"
                                                id="activeyes" checked>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>

                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N" name="active"
                                                id="activeno">
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
                                    </div>

                                    {{-- <div class="col-md-6">
                                        <label for="openingbalance" class="col-form-label">Opening Balance</label>
                                        <input type="text" class="form-control" name="openingbalance" id="openingbalance">
                                        <span id="balancebadge" class="font-weight-bold h4 text-center mt-1 balancebadge"></span>
                                    </div>

                                    <div class="col-md-6">
                                        @include('property.include.subledger')
                                    </div> --}}

                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="d-flex gap-2 px-1 pb-2 pt-1">
                            <button type="button"
                                onclick="window.location.href='{{ route('chargemaster.export') }}'"
                                class="btn btn-success btn-sm">Excel</button>
                            <button type="button"
                                onclick="window.open('{{ route('printchargemaster') }}','_blank')"
                                class="btn btn-info btn-sm text-white">Print</button>
                        </div>

                        <div class="table-responsive">
                            <table id="chargemaster"
                                class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Account Name</th>
                                        <th>Tax Structure Name</th>
                                        <th>Seq No</th>
                                        <th>Defined</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->subname }}</td>
                                            <td>{{ $row->taxstruname }}</td>
                                            <td>{{ $row->seq_no }}</td>
                                            <td>{{ $row->SysYN == 'Y' ? 'System' : 'User' }}</td>
                                            <td class="ins">
                                                <a
                                                    href="updatechargemaster?id={{ base64_encode($row->id) }}&ac_code={{ base64_encode($row->ac_code) }}&rev_code={{ base64_encode($row->rev_code) }}&name={{ base64_encode($row->name) }}">
                                                    <button
                                                        class="btn
                                                    btn-success btn-sm"><i
                                                            class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                </a>
                                                <a
                                                    href="deletechargemaster?id={{ base64_encode($row->id) }}&ac_code={{ base64_encode($row->ac_code) }}&rev_code={{ base64_encode($row->rev_code) }}&name={{ base64_encode($row->name) }}">
                                                    <button class="btn btn-danger btn-sm"><i
                                                            class="fa-solid fa-trash"></i>
                                                        Delete
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
    </div>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdn.datatables.net/2.2.1/js/dataTables.js"></script>
    {{-- <script src="https://cdn.datatables.net/buttons/3.2.2/js/dataTables.buttons.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.html5.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.print.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script>
        $(document).ready(function() {
    // Destroy if already initialized
    if ($.fn.DataTable.isDataTable('#chargemaster')) {
        $('#chargemaster').DataTable().destroy();
    }

    new DataTable('#chargemaster', {
        dom: 'Bfrtip',
        ordering: true,
        order: [],
        buttons: [
            { extend: 'excelHtml5', text: 'Excel' },
            { extend: 'pdfHtml5',   text: 'PDF'   },
            { extend: 'print',      text: 'Print' }
        ]
    }); --}}
    </script>

@endsection
<script>
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
