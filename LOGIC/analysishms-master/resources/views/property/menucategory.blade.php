@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ url('menucategorystore') }}" name="menucategoryform" id="menucategoryform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="restcode">Outlet Name</label>
                                        <select id="restcode" name="restcode" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($restaurentdata as $list)
                                                <option value="{{ $list->dcode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="name">Category Name</label>
                                        <input type="text" name="name" id="name" 
                                            class="form-control" required>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="flag">Category/Charge</label>
                                        <select id="flag" name="flag" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Category" selected>Category</option>
                                            <option value="Charge">Charge</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="type">Type</label>
                                        <select id="type" name="type" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Tobacco">Tobacco</option>
                                            <option value="Food">Food</option>
                                            <option value="Beverage">Beverage</option>
                                            <option value="Liquor">Liquor</option>
                                            <option value="Confectionary">Confectionary</option>
                                            <option value="Miscellaneous">Miscellaneous</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="AcCode" class="col-form-label">Post In Account</label>
                                        <select id="AcCode" name="AcCode" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($subgroupdata as $list)
                                                <option value="{{ $list->sub_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="taxstru" class="col-form-label">Tax Structure</label>
                                        <select id="taxstru" name="taxstru" class="form-control" required>
                                            <option value="">Select</option>
                                            <?php
                                            $uniqueNames = [];
                                            foreach ($taxstrudata as $list) {
                                                if (!in_array($list->name, $uniqueNames)) {
                                                    echo '<option value="' . $list->str_code . '">' . $list->name . '</option>';
                                                    $uniqueNames[] = $list->name;
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table id="menucategory"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Depart</th>
                                        <th>Tax Stru</th>
                                        <th>Account Name</th>
                                        <th>Action</th>
                                        <th class="none">sn</th>
                                        <th class="none">code</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->Name }}</td>
                                            <td>{{ $row->departname }}</td>
                                            <td>{{ $row->taxstruname }}</td>
                                            <td>{{ $row->subgrpname }}</td>
                                            <td class="ins">
                                                <button id="revedit" data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>

                                               <a href="{{ url('deletemenucategory/' . $row->id . '/' . $row->Code) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="none">{{ $row->id }}</td>
                                            <td class="none">{{ $row->Code }}</td>
                                            <td class="none">{{ $row->RestCode }}</td>
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
    <div class="modal fade bd-example-modal-lg" id="updateModal" tabindex="-1" role="dialog"
        aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Menu Group</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" action="{{ url('menucategoryupdatestr') }}" name="menucategoryupdate" id="menucategoryupdate">
                        @csrf
                        <input type="hidden" name="upcode" id="upcode">
                        <input type="hidden" name="upsn" id="upsn">
                        <div class="row">
                            <div class="col-md-4">
                                <label class="col-form-label" for="uprestcode">Outlet Name</label>
                                <select id="uprestcode" name="uprestcode" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($restaurentdata as $list)
                                        <option value="{{ $list->dcode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label class="col-form-label" for="upname">Category Name</label>
                                <input type="text" name="upname" id="upname"  class="form-control"
                                    required>
                            </div>

                            <div class="col-md-4">
                                <label class="col-form-label" for="upflag">Category/Charge</label>
                                <select id="upflag" name="upflag" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Category" selected>Category</option>
                                    <option value="Charge">Charge</option>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label class="col-form-label" for="uptype">Type</label>
                                <select id="uptype" name="uptype" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Tobacco">Tobacco</option>
                                    <option value="Food">Food</option>
                                    <option value="Beverage">Beverage</option>
                                    <option value="Liquor">Liquor</option>
                                    <option value="Confectionary">Confectionary</option>
                                    <option value="Miscellaneous">Miscellaneous</option>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label for="upAcCode" class="col-form-label">Post In Account</label>
                                <select id="upAcCode" name="upAcCode" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($subgroupdata as $list)
                                        <option value="{{ $list->sub_code }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label for="uptaxstru" class="col-form-label">Tax Structure</label>
                                <select id="uptaxstru" name="uptaxstru" class="form-control" required>
                                    <option value="">Select</option>
                                    <?php
                                    $uniqueNames = [];
                                    foreach ($taxstrudata as $list) {
                                        if (!in_array($list->name, $uniqueNames)) {
                                            echo '<option value="' . $list->str_code . '">' . $list->name . '</option>';
                                            $uniqueNames[] = $list->name;
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="text-center">
                            <button id="updateBtn" type="submit" class="btn mt-3 btn-primary">Update <i
                                    class="fa-solid fa-file-export"></i></button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <link rel="stylesheet" href="https://cdn.datatables.net/2.2.2/css/dataTables.dataTables.css">
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.js"></script>
    <script>
        // $(document).ready(function() {
        //     new DataTable('#menucategory', {
        //         "pageLength": 15
        //     });
        // });
    </script>
    <script>
        $(document).ready(function() {
            // handleFormSubmission('#menucategoryform', '#submitBtn', 'menucategorystore');
           // handleFormSubmission('#menucategoryupdate', '#updateBtn', 'menucategoryupdatestr');

            $(document).on('click', '.editBtn', function() {
                var code = $(this).closest("tr").find("td:eq(7)").text();
                var restcode = $(this).closest("tr").find("td:eq(8)").text();
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "{{ route('menucatupdata') }}");
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var data = JSON.parse(xhr.responseText);
                        $("#uprestcode").val(data.RestCode);
                        $("#upname").val(data.Name);
                        $("#upitemname").val(data.itemcode);
                        $("#upflag").val(data.Flag);
                        $("#uptype").val(data.CatType);
                        $("#upAcCode").val(data.AcCode);
                        $("#uptaxstru").val(data.TaxStru);
                        $("#upcode").val(data.Code);
                        $("#upsn").val(data.sn);
                    }
                };
                xhr.send(`code=${code}&restcode=${restcode}`);
            });
        });
    </script>
@endsection
