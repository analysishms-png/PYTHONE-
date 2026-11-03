@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="itementryform" action="{{url('itementrystore')}}" id="itementryform" method="POST">
                                @csrf
                                <div class="row">
                                    <input type="hidden" name="itempic" id="itempic" value="">
                                    <input type="hidden" name="grouptype" id="grouptype" value="">
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
                                        <label class="col-form-label" for="itemgrp">Item Group</label>
                                        <select id="itemgrp" name="itemgrp" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($itemgrp as $item)
                                                <option value="{{ $item->code }}" data-type="{{ $item->type }}">{{ $item->name }}</option>
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
                                        <label class="col-form-label" for="hsncode">HSN Code</label>
                                        <input readonly type="text" name="hsncode" oninput="allmx(this,50)" id="hsncode"
                                            class="form-control" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="barcode">Bar Code</label>
                                        <input type="text" name="barcode" oninput="allmx(this,50)" id="barcode"
                                            class="form-control" required readonly>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label" for="unit">Purchase Unit <span class="text ARK font-weight-bold" id="grptype"></span></label>
                                        <select id="unit" name="unit" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($unit as $list)
                                                <option value="{{ $list->ucode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-3">
                                        <label class="col-form-label" for="wtunit">Weight Unit</label>
                                        <select id="wtunit" name="wtunit" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($unit as $list)
                                                <option value="{{ $list->ucode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-3">
                                        <label class="col-form-label" for="convratio">Conversion Ration</label>
                                        <input type="text" value="1.000" class="form-control" name="convratio" id="convratio">
                                    </div>

                                    <div class="col-md-3">
                                        <label class="col-form-label" for="salerate">Purchase Rate</label>
                                        <input type="text" name="salerate"
                                            oninput="checkNumMax(this, 7); handleDecimalInput(event);" id="salerate"
                                            class="form-control" required>
                                    </div>

                                    <div class="col-md-3">
                                        <label for="minstock" class="col-form-label">Min Stock</label>
                                        <input value="1.000" type="text" class="form-control" name="minstock" id="minstock">
                                    </div>
 
                                    <div class="col-md-3">
                                        <label for="maxstock" class="col-form-label">Max Stock</label>
                                        <input value="1.000" type="text" class="form-control" name="maxstock" id="maxstock">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="reorderstock" class="col-form-label">Reorder Stock</label>
                                        <input value="1.000" type="text" class="form-control" name="recordstock" id="recordstock">
                                    </div>

                                    <div class="col-md-3">
                                        <label class="col-form-label" for="activeyn">Active YN</label>
                                        <select id="activeyn" name="activeyn" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y" selected>Yes</option>
                                            <option value="N">No</option>
                                        </select>
                                    </div>

                                    <div class="col-md-3">
                                        <label class="col-form-label" for="expiry_applicable">Expiry Applicable</label>
                                        <select id="expiry_applicable" name="expiry_applicable" class="form-control">
                                            <option value="0">No</option>
                                            <option value="1">Yes</option>
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
                            <button type="button" onclick="window.location.href='{{ route('itementery.export') }}'" class="btn btn-success btn-sm">Excel <i class="fa fa-file-excel-o"></i></button>
                            <button type="button" onclick="window.open('{{ route('printitementery') }}','_blank')" class="btn btn-info btn-sm text-white">Print <i class="fa-solid fa-print"></i></button>
                        </div>
                        <div class="table-responsive">
                            <table id="menuitem"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Unit</th>
                                        <th>Group</th>
                                        <th>Category</th>
                                        <th>Restaurant</th>
                                        <th>Rate</th>
                                        <th>Active</th>
                                        <th>Expiry</th>
                                        <th>Action</th>
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
                                            <td>{{ $row->Restaurant }}</td>
                                            <td>{{ $row->PurchRate }}</td>
                                            <td>{{ $row->ActiveYN == 'N' ? 'No' : 'Yes' }}</td>
                                            <td>{{ $row->expiry_applicable == 0 ? 'No' : 'Yes' }}</td>
                                            <td class="ins">
                                                <button id="revedit" data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>

                                               <a href="{{ url('deletemenuentry/' . $row->id . '/' . $row->Code) }}">
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
                    <h5 class="modal-title" id="updateModalLabel">Edit Item Entry</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" action="{{url('itementrystoreupdate')}}" name="itementryformupdate" id="itementryformupdate">
                        @csrf
                        <input type="hidden" name="upcode" id="upcode">
                        <div class="row">
                            <input type="hidden" name="upitempic" id="upitempic" value="">
                            <input type="hidden" name="upgrouptype" id="upgrouptype" value="">
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemgrp">Item Group</label>
                                <select id="upitemgrp" name="upitemgrp" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($itemgrp as $item)
                                        <option value="{{ $item->code }}" data-type="{{ $item->type }}">{{ $item->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upitemname">Name</label>
                                <input type="text" class="form-control" name="upitemname" id="upitemname" readonly>
                            </div>

                            <div class="col-md-3">
                                <label class="col-form-label" for="uphsncode">HSN Code</label>
                                <input readonly type="text" name="uphsncode" oninput="allmx(this,50)" id="uphsncode"
                                    class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upbarcode">Bar Code</label>
                                <input type="text" name="upbarcode" oninput="allmx(this,50)" id="upbarcode"
                                    class="form-control" required readonly>
                            </div>
                            <div class="col-md-3">
                                <label class="col-form-label" for="upunit">Purchase Unit <span class="text ARK font-weight-bold" id="upgrptype"></span></label>
                                <select id="upunit" name="upunit" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($unit as $list)
                                        <option value="{{ $list->ucode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="col-form-label" for="upwtunit">Weight Unit</label>
                                <select id="upwtunit" name="upwtunit" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($unit as $list)
                                        <option value="{{ $list->ucode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="col-form-label" for="upconvratio">Conversion Ration</label>
                                <input type="text" value="1.000" class="form-control" name="upconvratio" id="upconvratio">
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
                                <label class="col-form-label" for="upsalerate">Purchase Rate</label>
                                <input type="text" name="upsalerate"
                                    oninput="checkNumMax(this, 7); handleDecimalInput(event);" id="upsalerate"
                                    class="form-control" required>
                            </div>

                            <div class="col-md-3">
                                <label for="upminstock" class="col-form-label">Min Stock</label>
                                <input value="1.000" type="text" class="form-control" name="upminstock" id="upminstock">
                            </div>

                            <div class="col-md-3">
                                <label for="upmaxstock" class="col-form-label">Max Stock</label>
                                <input value="1.000" type="text" class="form-control" name="upmaxstock" id="upmaxstock">
                            </div>

                            <div class="col-md-3">
                                <label for="uprecordstock" class="col-form-label">Reorder Stock</label>
                                <input value="1.000" type="text" class="form-control" name="uprecordstock" id="uprecordstock">
                            </div>


                            <div class="col-md-3">
                                <label class="col-form-label" for="upactiveyn">Active YN</label>
                                <select id="upactiveyn" name="upactiveyn" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="col-form-label" for="upexpiry_applicable">Expiry Applicable</label>
                                <select id="upexpiry_applicable" name="upexpiry_applicable" class="form-control">
                                    <option value="0">No</option>
                                    <option value="1">Yes</option>
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

            $(document).on('change', '#itemgrp', function() {
                if ($(this).val() != '') {
                    let type = $(this).find('option:selected').data('type');
                    $('#grptype').text(type);
                    $('#grouptype').val(type);
                }
            });

            $(document).on('change', '#upitemgrp', function() {
                console.log('sagar');
                if ($(this).val() != '') {
                    let type = $(this).find('option:selected').data('type');
                    console.log(type);
                    $('#upgrptype').text(type);
                    $('#upgrouptype').val(type);
                }
            });

           // handleFormSubmission('#itementryform', '#submitBtn', 'itementrystore');
           // handleFormSubmission('#itementryformupdate', '#updateBtn', 'itementrystoreupdate');
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
            $(".editBtn").click(function() {
                let iname = $(this).closest("tr").find("td:eq(1)").text();
                $('#upitemname').val(iname);
                var code = $(this).closest("tr").find("td:eq(10)").text();
                var restcode = $(this).closest("tr").find("td:eq(11)").text();
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "{{ route('itementryupdatedata') }}");
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = JSON.parse(xhr.responseText);
                        let data = result.itemdata;
                        let itemgrps = result.itemgrps;
                        $('#upitemgrp').val(data.ItemGroup);
                        let itemcats = result.itemcats;
                        $('#upitemcatmast').val(data.ItemCatCode);
                        $("#upitemgrp").val(data.ItemGroup);
                        //$("#upitemname").val(data.itemcode);
                        $("#upitemcode").val(data.DispCode);
                        $("#uphsncode").val(data.HSNCode);
                        $("#upbarcode").val(data.BarCode);
                        $("#upunit").val(data.Unit);
                        $("#upitemcatmast").val(data.ItemCatCode);
                        $("#uprateedit").val(data.RateEdit);
                        $("#updiscappl").val(data.DiscApp);
                        $("#updishtype").val(data.dishtype);
                        $("#upfavourite").val(data.favourite);
                        $("#upservicecharge").val(data.SChrgApp);
                        $("#upsalerate").val(data.PurchRate);
                        $("#upconvratio").val(data.ConvRatio);
                        $("#upminstock").val(data.MinStock);
                        $("#upmaxstock").val(data.MaxStock);
                        $("#uprecordstock").val(data.ReStock);
                        $("#uprateinctax").val(data.RateIncTax);
                        $("#upwtunit").val(data.IssueUnit);
                        $("#upkitchen").val(data.Kitchen);
                        $("#uptype").val(data.NType);
                        $("#upactiveyn").val(data.ActiveYN);
                        $("#upcode").val(data.Code);
                        $("#upsn").val(data.sn);
                        $("#upexpiry_applicable").val(data.expiry_applicable);
                        $('#upitemgrp').trigger('change');
                    }
                };
                xhr.send(`code=${code}&restcode=${restcode}`);
            });

            $(document).on('change', '#unit', function () {
                $('#wtunit').val($(this).val());
            });
            $(document).on('change', '#upunit', function () {
                $('#upwtunit').val($(this).val());
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
    </script>

    {{-- Search / sort for the item list table (client-side DataTable).
         Export stays on the route-based Excel & Print buttons above. --}}
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#menuitem').DataTable({
                pageLength: 25,
                lengthMenu: [10, 25, 50, 100],
                searching: true,
                ordering: true,
                order: [[1, 'asc']], // default: sort by Name (A->Z)
                columnDefs: [
                    { orderable: false, targets: [9] } // Action column not sortable
                ]
            });
        });
    </script>
@endsection
