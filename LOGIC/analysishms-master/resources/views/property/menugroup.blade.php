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
                            <form class="form" name="menugroupform" id="menugroupform" action="{{url('menugroupstore')}}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="restcode">Outlet Name</label>
                                        <select id="restcode" name="restcode" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($departdata as $list)
                                                <option value="{{ $list->dcode }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
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
                        <div class="table-responsive">
                            <table id="itemgrp"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Rest Code</th>
                                        <th>Active YN</th>
                                        <th>Action</th>
                                        <th class="none">code</th>
                                        <th class="none">sn</th>
                                        <th class="none">dcode</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->departname }}</td>
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
                                            <td class="none">{{ $row->restcode }}</td>
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
                    <form class="form" method="POST" name="menugroupformupdate" action="{{url('menugroupstoreupdate')}}" id="menugroupformupdate">
                        @csrf
                        <input type="hidden" name="upcode" id="upcode">
                        <input type="hidden" name="upsn" id="upsn">
                        <div class="row">
                            <div class="col-md-6">
                                <label class="col-form-label" for="uprestcode">Outlet Name</label>
                                <select id="uprestcode" name="uprestcode" class="form-control" required>
                                    <option value="">Select</option>
                                    @foreach ($departdata as $list)
                                        <option value="{{ $list->dcode }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>
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

    <link rel="stylesheet" href="https://cdn.datatables.net/2.2.2/css/dataTables.dataTables.css">
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.js"></script>
    <script>
        $(document).ready(function() {
            new DataTable('#itemgrp', {
                "pageLength": 15
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            //handleFormSubmission('#menugroupform', '#submitBtn', 'menugroupstore');
            //handleFormSubmission('#menugroupformupdate', '#updateBtn', 'menugroupstoreupdate');

            $(document).on('click', '.editBtn', function() {
                var name = $(this).closest("tr").find("td:eq(1)").text();
                var activeyn = $(this).closest("tr").find("td:eq(3)").text();
                var sn = $(this).closest("tr").find("td:eq(5)").text();
                var code = $(this).closest("tr").find("td:eq(6)").text();
                var dcode = $(this).closest("tr").find("td:eq(7)").text();
                $("#uprestcode").val(dcode);
                $("#upname").val(name);
                $("#upactiveyn").val(activeyn);
                $("#upcode").val(code);
                $("#upsn").val(sn);
            });
        });
    </script>
     
     <!-- #/ container -->
    <script src="https://cdn.datatables.net/2.2.1/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/dataTables.buttons.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.html5.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.print.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script>
        $(document).ready(function() {
            if ($.fn.DataTable.isDataTable('#itemgrp')) {
                $('#itemgrp').DataTable().destroy();
            }
            new DataTable('#itemgrp', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    { extend: 'excelHtml5', text: 'Excel' },
                    { extend: 'pdfHtml5',   text: 'PDF'   },
                    { extend: 'print',      text: 'Print' }
                ]
            });
            $('.dt-buttons .dt-button').each(function() {
                if ($(this).text().trim().toLowerCase().includes('csv')) {
                    $(this).hide();
                }
            });
        });
    </script>
@endsection
