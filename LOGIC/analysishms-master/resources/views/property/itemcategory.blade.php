@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="itemcategoryform" action="{{ url('itemcategorystore') }}"
                                id="itemcategoryform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="name">Category Name</label>
                                        <input type="text" name="name" id="name" class="form-control" required>
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
                                            {{-- <option value="Tobacco">Tobacco</option>
                                            <option value="Food">Food</option>
                                            <option value="Beverage">Beverage</option>
                                            <option value="Liquor">Liquor</option>
                                            <option value="Confectionary">Confectionary</option>
                                            <option value="Miscellaneous">Miscellaneous</option> --}}
                                            <option value="Semi Finish">Semi Finish</option>
                                            <option value="Consumables">Consumables</option>
                                            <option value="Raw Material">Raw Material</option>
                                            <option value="Store Item">Store Item</option>
                                            <option value="Liquor">Liquor</option>
                                            <option value="Other">Other</option>
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

                                    <div class="col-md-4">
                                        <label for="cattyper" class="col-form-label">Catrgory Type</label>
                                        <select id="cattyper" name="cattyper" class="form-control" required>
                                            <option value="Registered" selected>Registered</option>
                                            <option value="Unregistered">Unregistered</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="d-flex gap-2 px-1 pb-2 pt-1">
                            <button type="button" onclick="window.location.href='{{ route('itemcategory.export') }}'" class="btn btn-success btn-sm">Excel <i class="fa fa-file-excel-o"></i></button>
                            <button type="button" onclick="window.open('{{ route('printitemcategory') }}','_blank')" class="btn btn-info btn-sm text-white">Print <i class="fa-solid fa-print"></i></button>
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

                                                <a href="{{ url('deleteitemcategory/' . $row->id . '/' . $row->Code) }}">
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
                    <h5 class="modal-title" id="updateModalLabel">Edit Item Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" action="{{ url('itemcategoryupdatestr') }}" name="itemcategoryupform"
                        id="itemcategoryupform">
                        @csrf
                        <input type="hidden" name="upcode" id="upcode">
                        <input type="hidden" name="upsn" id="upsn">
                        <div class="row">

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
                                    {{-- <option value="Tobacco">Tobacco</option>
                                    <option value="Food">Food</option>
                                    <option value="Beverage">Beverage</option>
                                    <option value="Liquor">Liquor</option>
                                    <option value="Confectionary">Confectionary</option>
                                    <option value="Miscellaneous">Miscellaneous</option> --}}
                                    <option value="Semi Finish">Semi Finish</option>
                                    <option value="Consumables">Consumables</option>
                                    <option value="Raw Material">Raw Material</option>
                                    <option value="Store Item">Store Item</option>
                                    <option value="Liquor">Liquor</option>
                                    <option value="Other">Other</option>
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

                            <div class="col-md-4">
                                <label for="upcattyper" class="col-form-label">Catrgory Type</label>
                                <select id="upcattyper" name="upcattyper" class="form-control" required>
                                    <option value="Registered">Registered</option>
                                    <option value="Unregistered">Unregistered</option>
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


    <script>
        $(document).ready(function() {
            // handleFormSubmission('#itemcategoryform', '#submitBtn', 'itemcategorystore');
            // handleFormSubmission('#itemcategoryupform', '#updateBtn', 'itemcategoryupdatestr');

            $(".editBtn").click(function() {
                var code = $(this).closest("tr").find("td:eq(7)").text();
                var restcode = $(this).closest("tr").find("td:eq(8)").text();
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "{{ route('menucatupdata') }}");
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var data = JSON.parse(xhr.responseText);
                        if (data.Flag == 'Category') {
                            $("#uptype").html(
                                ' <option value="Semi Finish">Semi Finish</option><option value="Consumables">Consumables</option><option value="Raw Material">Raw Material</option><option value="Store Item">Store Item</option><option value="Liquor">Liquor</option><option value="Other">Other</option>'
                            );
                        } else {
                            $("#uptype").html(
                                '<option value="">Select</option><option value="Cr">Cr</option><option value="Dr">Dr</option>'
                            );
                        }
                        $("#uprestcode").val(data.RestCode);
                        $("#upname").val(data.Name);
                        $("#upitemname").val(data.Code);
                        $("#upflag").val(data.Flag);
                        $("#uptype").val(data.CatType);
                        $("#upcattyper").val(data.cattyper);
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
