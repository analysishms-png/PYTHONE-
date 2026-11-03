@extends('property.layouts.main')
@section('main-container')
 
 
<div class="content-body">

    <!-- row -->

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <form class="form" name="nctypemasterform" id="nctypemasterform" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="col-form-label" for="name">NC Type Name</label>
                                    <input type="text" name="nctype" id="nctype" class="form-control" required>
                                    <div id="namelist"></div>
                                    <span id="name_error" class="text-danger"></span>
                                    @error('nctype')
                                    <span class="text-danger"> {{ $message }} </span>
                                    @enderror
                                </div>
                                <div class="col-md-6">
                                    <label class="col-form-label" for="ncper">Percentage</label>
                                    <input style="width: 100%;" name="ncper" class="form-control" step="1" min="1"
                                        max="100" oninput="checkNumMax(this, 3);" type="text">
                                </div>

                            </div>

                            <div class="col-7 mt-4 ml-auto">
                                <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                        class="fa-solid fa-file-export"></i></button>
                            </div>
                        </form>
                    </div>
                    <div class="d-flex gap-2 px-1 pb-2 pt-1">
                        <button type="button" onclick="window.location.href='{{ route('nctypemaster.export') }}'" class="btn btn-success btn-sm">Excel</button>
                        <button type="button" onclick="window.open('{{ route('printnctypemaster') }}','_blank')" class="btn btn-info btn-sm text-white">Print</button>
                    </div>

                    <div class="table-responsive">
                        <table id="nctype_mast"
                            class="table table-hover table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sn.</th>
                                    <th>Name</th>
                                    <th>Percentage</th>
                                    <th>Action</th>
                                    <th class="none">code</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $sn = 1; @endphp
                                @foreach ($data as $row)
                                <tr>
                                    <td>{{ $sn }}</td>
                                    <td id="tdname_{{ $sn }}">{{ $row->nctype }}</td>
                                    <td>{{ $row->ncper }}</td>
                                    <td class="ins">
                                        <button data-toggle="modal" data-target="#updateModal"
                                            class="btn btn-success editBtn update-btn btn-sm">
                                            <i class="fa-regular fa-pen-to-square"></i>Edit
                                        </button>

                                        <button class="btn btn-danger btn-sm delete-btn"
                                            onclick="handleDeleteRequest('deletenctypemast', this, '{{ base64_encode($row->id) }}', '{{ base64_encode($row->ncode) }}')">
                                            <i class="fa-solid fa-trash"></i> Delete
                                        </button>
                                    </td>
                                    <td class="none">{{ $row->ncode }}</td>
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
                <h5 class="modal-title" id="updateModalLabel">Edit NC Type Master</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form" method="POST" name="nctypemastupdateform" id="nctypemastupdateform">
                    @csrf
                    <div class="form-group">
                        <label for="updateInput">NC Type:</label>
                        <input type="text" class="form-control" id="updatename" name="updatename" required>
                        <input type="hidden" class="form-control" id="updatecode" name="updatecode" required>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label" for="ncper">Percentage</label>
                        <input style="width: 100%;" name="ncper" class="form-control" step="1" min="1" max="100"
                            oninput="removeLeadingZeros(this);checkNumMax(this, 3);" type="text">
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
    // NC Type Name
    document.addEventListener('DOMContentLoaded', function() {
        var name = document.getElementById('nctype');
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
            xhr.open('POST', '/getnctypenames', true);
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
            $('#nctype').val($(this).text());
            namelist.style.display = 'none';
        });
    });
    
    $(document).ready(function () {
        handleFormSubmission('#nctypemasterform', '#submitBtn', 'nctypemasterstore');
        handleFormSubmission('#nctypemastupdateform', '#updateBtn', 'nctypemaststoreupdate');
    
    
    $(".editBtn").click(function () {
            var name = $(this).closest("tr").find("td:eq(1)").text();
            var percentage = $(this).closest("tr").find("td:eq(2)").text();
            var code = $(this).closest("tr").find("td:eq(4)").text();
            populateFormWithData2(name, percentage, code);
        });
    });
</script>

    <!-- #/ container -->
    
    
    
    
    
    
    
    <script>
        $(document).ready(function() {
            if (!$.fn.DataTable.isDataTable('#nctype_mast')) {
                new DataTable('#nctype_mast', {
                    dom: 'frtip',
                    ordering: true,
                    order: [],
                    pageLength: 25,
                });
            }
        });
    </script>


@endsection
