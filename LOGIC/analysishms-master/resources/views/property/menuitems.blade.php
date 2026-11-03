@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="menuitemsform" id="menuitemsform" method="POST" action="{{url('menuitemsstore')}}">
                                @csrf
                                <div class="row">
                                    <input type="hidden" name="itempic" id="itempic" value="">
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="itemgrp">Item Group</label>
                                        <select id="itemgrp" name="itemgrp" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($itemgrp as $item)
                                                <option value="{{ $item->code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="itemname">Name</label>
                                        <select id="itemname" name="itemname" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($itemnames as $list)
                                                <option value="{{ $list->icode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="itemcode">Code</label>
                                        <input type="number" name="itemcode"
                                            oninput="allmx(this,10),checkNumMax(this, 10);" id="itemcode"
                                            class="form-control" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="hsncode">HSN Code</label>
                                        <input readonly type="text" name="hsncode" oninput="allmx(this,50)"
                                            id="hsncode" class="form-control" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="unit">Unit</label>
                                        <select id="unit" name="unit" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($unit as $list)
                                                <option value="{{ $list->ucode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="itemcatmast">Item Category</label>
                                        <select id="itemcatmast" name="itemcatmast" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($itemcatmast as $list)
                                                <option value="{{ $list->Code }}">{{ $list->Name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="rateedit">Rate Edit</label>
                                        <select id="rateedit" name="rateedit" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N" selected>No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="discappl">Disc Applicable</label>
                                        <select id="discappl" name="discappl" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y" selected>Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="salerate">Sale Rate</label>
                                        <input type="text" name="salerate"
                                            oninput="checkNumMax(this, 7); handleDecimalInput(event);" id="salerate"
                                            class="form-control" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="kitchen">Kitchen</label>
                                        <select id="kitchen" name="kitchen" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($kitchen as $list)
                                                <option value="{{ $list->dcode }}"
                                                    @if (substr($list->dcode, 0, 2) == 'MK') selected @endif>{{ $list->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="specification">Specification</label>
                                        <input type="text" name="specification" id="specification"
                                            class="form-control">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="activeyn">Active YN</label>
                                        <select id="activeyn" name="activeyn" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y" selected>Yes</option>
                                            <option value="N">No</option>
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
                            <table id="menuitems"
                                class="table table-hover table-striped table-bordered align-middle text-nowrap w-100">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th style="width: 40px;">Sn.</th>
                                        <th style="min-width: 150px;">Name</th>
                                        <th style="min-width: 80px;">Unit</th>
                                        <th style="min-width: 120px;">Group</th>
                                        <th style="min-width: 120px;">Category</th>
                                        <th style="min-width: 80px;">Disp</th>
                                        <th style="min-width: 150px;">Restaurant</th>
                                        <th style="min-width: 80px;">Rate</th>
                                        <th style="min-width: 60px;">Disc</th>
                                        <th style="min-width: 60px;">Redit</th>
                                        <th style="min-width: 60px;">Active</th>
                                        <th style="min-width: 120px;">Kitchen</th>
                                        <th style="min-width: 200px;">Specification</th>
                                        <th style="min-width: 160px;">Action</th>
                                        <th class="none">code</th>
                                        <th class="none">restcode</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($itemmast as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->itemname }}</td>
                                            <td>{{ $row->unitname }}</td>
                                            <td>{{ $row->itemgrpname }}</td>
                                            <td>{{ $row->itemcatname }}</td>
                                            <td>{{ $row->DispCode }}</td>
                                            <td>{{ $row->Restaurant }}</td>
                                            <td>{{ $row->Rate }}</td>
                                            <td>{{ $row->DiscApp == 'N' ? 'No' : 'Yes' }}</td>
                                            <td>{{ $row->RateEdit == 'N' ? 'No' : 'Yes' }}</td>
                                            <td>{{ $row->ActiveYN == 'N' ? 'No' : 'Yes' }}</td>
                                            <td>{{ $row->kitchenname }}</td>
                                            <td>{{ $row->Specification }}</td>
                                            <td class="ins">
                                                <button id="revedit" data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i> Edit
                                                </button>
                                               <a href="{{ url('deletemenuitems/' . $row->id . '/' . $row->Code) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
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
                    <h5 class="modal-title" id="updateModalLabel">Edit Menu Item</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" action="{{url('menuitemsstoreupdate')}}" name="menuitemsformupdate" id="menuitemsformupdate">
                        @csrf
                        <input type="hidden" name="upcode" id="upcode">
                        <input type="hidden" name="uprestcode" id="uprestcode">
                        <div class="row">
                            <input type="hidden" name="upitempic" id="upitempic" value="">

                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemgrp">Item Group</label>
                                <select id="upitemgrp" name="upitemgrp" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($itemgrp as $list)
                                        <option value="{{ $list->code }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemname">Name</label>
                                <input type="text" class="form-control" name="upitemname" id="upitemname" readonly>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemcode">Code</label>
                                <input readonly type="text" name="upitemcode" oninput="allmx(this,50)"
                                    id="upitemcode" class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="uphsncode">HSN Code</label>
                                <input readonly type="text" name="uphsncode" oninput="allmx(this,50)" id="uphsncode"
                                    class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upunit">Unit</label>
                                <select id="upunit" name="upunit" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($unit as $list)
                                        <option value="{{ $list->ucode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemcatmast">Item Category</label>
                                <select id="upitemcatmast" name="upitemcatmast" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($itemcatmast as $list)
                                        <option value="{{ $list->Code }}">{{ $list->Name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="uprateedit">Rate Edit</label>
                                <select id="uprateedit" name="uprateedit" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="updiscappl">Disc Applicable</label>
                                <select id="updiscappl" name="updiscappl" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upsalerate">Sale Rate</label>
                                <input type="text" name="upsalerate"
                                    oninput="checkNumMax(this, 7); handleDecimalInput(event);" id="upsalerate"
                                    class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upkitchen">Kitchen</label>
                                <select id="upkitchen" name="upkitchen" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($kitchen as $list)
                                        <option value="{{ $list->dcode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upspecification">Specification</label>
                                <input type="text" name="upspecification" id="upspecification" class="form-control">
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upactiveyn">Active YN</label>
                                <select id="upactiveyn" name="upactiveyn" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
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
        $(document).ready(function() {
            new DataTable('#menuitems', {
                "pageLength": 15
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            // $(document).ready(function() {
            //     let restcode = $(this);
            //     if (restcode != '') {
            //         let restxhr = new XMLHttpRequest();
            //         restxhr.open('POST', '/restxhr', true);
            //         restxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            //         restxhr.onreadystatechange = function() {
            //             if (restxhr.status === 200 && restxhr.readyState === 4) {
            //                 let result = JSON.parse(restxhr.responseText);
            //                 let itemgrps = result.itemgrps;
            //                 let itemcats = result.itemcats;
            //                 $('#itemgrp').html('');
            //                 $('#itemcatmast').html('');
            //                 let opt = `<option value=''>Select</option>`;
            //                 itemgrps.forEach((data, index) => {
            //                     opt += `<option value='${data.code}'>${data.name}</option>`;
            //                 });
            //                 $('#itemgrp').append(opt);

            //                 let optitemcat = `<option value=''>Select</option>`;
            //                 itemcats.forEach((datas, index) => {
            //                     optitemcat +=
            //                         `<option value='${datas.Code}'>${datas.Name}</option>`;
            //                 });
            //                 $('#itemcatmast').append(optitemcat);
            //             }
            //         }
            //         restxhr.send(`restcode=${restcode}&_token={{ csrf_token() }}`);
            //     }
            // })

            //handleFormSubmission('#menuitemsform', '#submitBtn', 'menuitemsstore');
            //handleFormSubmission('#menuitemsformupdate', '#updateBtn', 'menuitemsstoreupdate');
            $(document).ready(function() {
                document.getElementById("itemname").addEventListener("change", function() {
                    var icode = this.value;
                    if (icode == "") {
                        $('#itemcode').val("");
                        $('#hsncode').val("");
                        $('#barcode').val("");
                    }
                    var xhr = new XMLHttpRequest();
                    xhr.open("POST", "{{ route('getitemdata') }}");
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                    xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                    xhr.onreadystatechange = function() {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            var data = JSON.parse(xhr.responseText);
                            $("#hsncode").val(data.hsncode);
                            $("#barcode").val(data.barcode);
                            $("#itempic").val(data.itempic);
                        }
                    };
                    xhr.send("icode=" + icode);
                });
            });
            $(document).on('click', '.editBtn', function() {
                let iname = $(this).closest("tr").find("td:eq(1)").text();
                $('#upitemname').val(iname);
                var code = $(this).closest("tr").find("td:eq(14)").text();
                var restcode = $(this).closest("tr").find("td:eq(15)").text();
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "{{ route('itemmastupdatabnq') }}");
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = JSON.parse(xhr.responseText);
                        let data = result.itemdata;
                        let itemgrps = result.itemgrps;
                        $('#upitemgrp').html('');
                        let opt = `<option value=''>Select</option>`;
                        itemgrps.forEach((data, index) => {
                            opt += `<option value='${data.code}'>${data.name}</option>`;
                        });
                        $('#upitemgrp').append(opt);
                        let itemcats = result.itemcats;
                        $('#upitemcatmast').html('');
                        let optitemcat = `<option value=''>Select</option>`;
                        itemcats.forEach((data, index) => {
                            optitemcat += `<option value='${data.Code}'>${data.Name}</option>`;
                        });
                        $('#upitemcatmast').append(optitemcat);
                        $("#uprestcode").val(data.RestCode);
                        $("#upitemgrp").val(data.ItemGroup);
                        //$("#upitemname").val(data.itemcode);
                        $("#upitemcode").val(data.DispCode);
                        $("#uphsncode").val(data.HSNCode);
                        //$("#upbarcode").val(data.BarCode);
                        $("#upunit").val(data.Unit);
                        $("#upitemcatmast").val(data.ItemCatCode);
                        $("#uprateedit").val(data.RateEdit);
                        $("#updiscappl").val(data.DiscApp);
                        //$("#updishtype").val(data.dishtype);
                        //$("#upfavourite").val(data.favourite);
                        //$("#upservicecharge").val(data.SChrgApp);
                        $("#upsalerate").val(data.Rate);
                        //$("#uprateinctax").val(data.RateIncTax);
                        //$("#upapplicabldate").val(data.AppDate);
                        $("#upkitchen").val(data.Kitchen);
                        //$("#uptype").val(data.NType);
                        $("#upspecification").val(data.Specification);
                        $("#upactiveyn").val(data.ActiveYN);
                        $("#upcode").val(data.Code);
                        $("#upsn").val(data.sn);
                    }
                };
                xhr.send(`code=${code}&restcode=${restcode}`);
            });
        });


        $(document).ready(function() {
            // setInterval(function () {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "{{ route('getmaxitemcode') }}");
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var data = JSON.parse(xhr.responseText);
                    $("#itemcode").val(data);
                }
            };
            xhr.send();
            // }, 1000);
        });

        //Fetch Current Financial Year
        $(document).ready(function() {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "{{ route('getcurfinyear') }}");
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var data = JSON.parse(xhr.responseText);
                    $("#applicabldate").val(data);
                }
            };
            xhr.send();
        });
    </script>
@endsection
