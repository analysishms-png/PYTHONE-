@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form name="groupaccountentry" id="groupaccountentry" method="post">
                                @csrf
                                <input type="hidden" name="undergroupname" id="undergroupname">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="groupname">Group Name</label>
                                            <input type="text" class="form-control" id="groupname" name="groupname" placeholder="Enter Group Name">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="undergroup">Main Group</label>
                                            <select class="form-control" id="undergroup" name="undergroup">
                                                <option value="">Select Main Group</option>
                                                <option value="10">CAPITAL ACCOUNT</option>
                                                <option value="60">CURRENT ASSETS</option>
                                                <option value="200">CLOSING STOCK</option>
                                                <option value="30">CURRENT LIABILITIES</option>
                                                <option value="260">DIRECT EXPENSE</option>
                                                <option value="250">DIRECT INCOMES</option>
                                                <option value="280">INDIRECT EXPENSES</option>
                                                <option value="270">INDIRECT INCOME</option>
                                                <option value="50">INVESTMENTS</option>
                                                <option value="20">LOAN (LIABILITY)</option>
                                                <option value="80">MISC. EXPENSES (ASSET)</option>
                                                <option value="999">PROFIT & LOSS A/C</option>
                                                <option value="240">PURCHASE ACCOUNTS</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="undergroupyn">Under Group</label>
                                            <select class="form-control" id="undergroupyn" name="undergroupyn">
                                                <option value="">Select Under Group</option>
                                                <option value="Y">Yes</option>
                                                <option value="N">No</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="nature">Nature</label>
                                            <select class="form-control" id="nature" name="nature">
                                                <option value="">Select Nature</option>
                                                <option value="Bank">Bank</option>
                                                <option value="TDS">TDS</option>
                                                <option value="Others">Others</option>
                                                <option value="Cash">Cash</option>
                                                <option value="Purchase">Purchase</option>
                                                <option value="Sale">Sale</option>
                                                <option value="Supplier">Supplier</option>
                                                <option value="Customer">Customer</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>

                            <div class="table-responsive">
                                <table id="acgrouptable" class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <th>Group Name</th>
                                        <th>Nature</th>
                                        <th>Main Group</th>
                                        <th>Under Group</th>
                                        <th>Action</th>
                                    </thead>
                                    <tbody>
                                        @foreach (acgroupall() as $item)
                                            <tr>
                                                <td>{{ $item->group_name }}</td>
                                                <td>{{ $item->nature }}</td>
                                                <td>{{ $item->maingroupname }}</td>
                                                <td>{{ $item->undergroup == 'Y' ? 'Yes' : 'No' }}</td>
                                                <td class="ins"> <a
                                                        href="updategroupentry/{{ $item->group_code }}">
                                                        <button class="btn btn-success btn-sm"><i
                                                                class="fa-regular fa-pen-to-square"></i>Edit</button></a>
                                                    <a href="deletegroupentry/{{ $item->group_code }}">
                                                        <button class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i>
                                                            Delete
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
            let table = new DataTable('#acgrouptable', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    'excel', 'pdf', 'print'
                ]
            });
            $(document).on('change', '#undergroup', function() {
                let name = $(this).find('option:selected').text();
                $('#undergroupname').val(name);
            });

            $('#groupaccountentry').on('submit', function(e) {
                e.preventDefault();
                let formData = new FormData(this);

                $.ajax({
                    type: 'POST',
                    url: '{{ url('savegroupaccountentry') }}',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: response.message
                        }).then((success) => {
                            if (success.isConfirmed) {
                                window.location.reload();
                            }
                        });
                    },
                    error: function(error) {
                        console.log(error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON.message
                        });
                    }
                });
            });
        });
    </script>
@endsection
