@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="unitmasterform" action="{{ url('unitmaststore') }}" id="unitmasterform"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Unit Master Name</label>
                                        <input type="text" name="name" id="name" class="form-control" required>
                                        <div id="namelist"></div>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeYN">Active Or Not</label>
                                        <select class="form-control" name="activeYN" id="activeYN">
                                            <option value="Y" selected>Active</option>
                                            <option value="N">Inactive</option>
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
                            <table id="unitmast"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Defined</th>
                                        <th>Active</th>
                                        <th>Action</th>
                                        <th class="none">code</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td id="tdname_{{ $sn }}">{{ $row->name }}</td>
                                            <td>{{ $row->sysYN == 'Y' ? 'System' : 'User' }}</td>
                                            <td>{{ $row->activeYN == 'Y' ? 'Yes' : 'No' }}</td>
                                            <td class="ins">
                                                <button data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>


                                                <a href="{{ url('deleteunitmast/' . $row->id . '/' . $row->ucode) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="none">{{ $row->ucode }}</td>
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
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Unit Master</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" action="{{ url('unitmaststoreupdate') }}" name="unitmastupdateform"
                        id="unitmastupdateform">
                        @csrf
                        <div class="form-group">
                            <label for="updateInput">Update Name:</label>
                            <input type="text" class="form-control" id="updatename" name="updatename" required>
                            <input type="hidden" class="form-control" id="updatecode" name="updatecode" required>
                        </div>

                        <div class="form-group">
                            <label class="col-form-label" for="upactiveYN">Active Or Not</label>
                            <select class="form-control" name="upactiveYN" id="upactiveYN">
                                <option value="Y">Active</option>
                                <option value="N">Inactive</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button id="updateBtn" type="submit" class="btn btn-primary">Update <i
                                    class="fa-solid fa-file-export"></i></button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>


    <script>
        // Unit Master Name
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
                xhr.open('POST', '/getunitnames', true);
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
        $(document).ready(function() {
            // handleFormSubmission('#unitmasterform', '#submitBtn', 'unitmaststore');
            // handleFormSubmission('#unitmastupdateform', '#updateBtn', 'unitmaststoreupdate');

            $(".editBtn").click(function() {
                var name = $(this).closest("tr").find("td:eq(1)").text();
                var activeYN = $(this).closest("tr").find("td:eq(3)").text();
                var code = $(this).closest("tr").find("td:eq(5)").text();
                populateFormWithData(name, activeYN, code);
            });
        });
    </script>
@endsection
