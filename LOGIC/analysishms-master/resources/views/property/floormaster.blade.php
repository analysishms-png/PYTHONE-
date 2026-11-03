@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="floormasterform" action="{{ url('submitfloormaster') }}"
                                id="floormasterform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="name">Name <span class="text-danger">*</span></label>
                                        <input type="text" name="name" id="name" class="form-control" required
                                            placeholder="e.g. 1ST FLOOR"
                                            oninput="this.value = this.value.toUpperCase()">
                                        @error('name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="superviser">Superviser</label>
                                        <input type="text" name="superviser" id="superviser" class="form-control"
                                            oninput="this.value = this.value.toUpperCase()">
                                    </div>
                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </form>
                        </div>

                        <div class="table-responsive">
                            <table id="floormasterTable" class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sno.</th>
                                        <th>Name</th>
                                        <th>Superviser</th>
                                        <th>Action</th>
                                        <th class="none">sno_hidden</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->superviser }}</td>
                                            <td class="ins">
                                                <button data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i> Edit
                                                </button>
                                                <a href="{{ url('deletefloormaster/' . $row->sno) }}"
                                                    onclick="return confirm('Are you sure you want to delete this record?')">
                                                    <button class="btn btn-danger btn-sm">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="none">{{ $row->sno }}</td>
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

    {{-- Edit Modal --}}
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Floor Master</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" action="{{ url('updatefloormaster') }}"
                        name="floormasterupdateform" id="floormasterupdateform">
                        @csrf
                        <input type="hidden" id="updatesno" name="updatesno">

                        <div class="form-group">
                            <label for="updatename">Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="updatename" name="updatename" required
                                oninput="this.value = this.value.toUpperCase()">
                        </div>
                        <div class="form-group">
                            <label for="updatesuperviser">Superviser</label>
                            <input type="text" class="form-control" id="updatesuperviser" name="updatesuperviser"
                                oninput="this.value = this.value.toUpperCase()">
                        </div>

                        <div class="text-center">
                            <button id="updateBtn" type="submit" class="btn btn-primary">
                                Update <i class="fa-solid fa-file-export"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);

            if (!$.fn.DataTable.isDataTable('#floormasterTable')) {
                new DataTable('#floormasterTable', {
                    ordering: true,
                    order: [],
                    pageLength: 25,
                    // col indices: 0=Sno, 1=Name, 2=Superviser, 3=Action, 4=sno_hidden
                    columnDefs: [{ targets: [4], visible: false }]
                });
            }

            $(".editBtn").click(function () {
                var tr         = $(this).closest("tr");
                var name       = tr.find("td:eq(1)").text().trim();
                var superviser = tr.find("td:eq(2)").text().trim();
                var sno        = tr.find("td:eq(4)").text().trim();

                $('#updatename').val(name);
                $('#updatesuperviser').val(superviser);
                $('#updatesno').val(sno);
            });
        });
    </script>
@endsection
