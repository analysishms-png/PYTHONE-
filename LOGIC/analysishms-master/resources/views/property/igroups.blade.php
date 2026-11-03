@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{url('itemgroupsstore')}}" name="itemgroupsform" id="itemgroupsform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Item Group</label>
                                        <input type="text" name="name" id="name" class="form-control" required>
                                    </div>

                                    <div class="col-md-6">
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
                        <div class="d-flex gap-2 px-1 pb-2 pt-1">
                            <button type="button" onclick="window.location.href='{{ route('itemgroups.export') }}'" class="btn btn-success btn-sm">Excel</button>
                            <button type="button" onclick="window.open('{{ route('printitemgroups') }}','_blank')" class="btn btn-info btn-sm text-white">Print</button>
                        </div>

                        <div class="table-responsive">
                            <table id="itemgrp"
                                class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Active YN</th>
                                        <th>Action</th>
                                        <th class="none">code</th>
                                        <th class="none">sn</th>
                                        <th class="none">type</th>
                                        <th class="none">cattype</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->activeyn }}</td>
                                            <td class="ins">
                                                <button id="revedit" data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>

                                               <a href="{{ url('deletemenugroup/' . $row->id . '/' . $row->code) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="none">{{ $row->id }}</td>
                                            <td class="none">{{ $row->code }}</td>
                                            <td class="none">{{ $row->type }}</td>
                                            <td class="none">{{ $row->cattype }}</td>
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
                    <h5 class="modal-title" id="updateModalLabel">Edit Item Group</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" action="{{url('itemgroupsstoreupdate')}}" method="POST" name="itemgroupsformupdate" id="itemgroupsformupdate">
                        @csrf
                        <input type="hidden" name="upcode" id="upcode">
                        <input type="hidden" name="upsn" id="upsn">
                        <div class="row">
                            <div class="col-md-6">
                                <label class="col-form-label" for="upname">Item Group</label>
                                <input type="text" name="upname" id="upname" class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <label class="col-form-label" for="upactiveyn">Active YN</label>
                                <select id="upactiveyn" name="upactiveyn" class="form-control">
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


    <script>
        $(document).ready(function() {
           // handleFormSubmission('#itemgroupsform', '#submitBtn', 'itemgroupsstore');
           // handleFormSubmission('#itemgroupsformupdate', '#updateBtn', 'itemgroupsstoreupdate');

            $(".editBtn").click(function() {
                var name = $(this).closest("tr").find("td:eq(1)").text();
                var activeyn = $(this).closest("tr").find("td:eq(2)").text();
                var sn = $(this).closest("tr").find("td:eq(4)").text();
                var code = $(this).closest("tr").find("td:eq(5)").text();
<<<<<<< HEAD
                var type = $(this).closest("tr").find("td:eq(6)").text();
                var cattype = $(this).closest("tr").find("td:eq(7)").text();
=======
>>>>>>> abc7e910640fae7089f4e28f96ad736b61fc52f5
                $("#upname").val(name);
                $("#upactiveyn").val(activeyn);
                $("#upcode").val(code);
                $("#uptype").val(type);
                $("#upcategorytype").val(cattype);
                $("#upsn").val(sn);
            });
        });
    </script>
@endsection
