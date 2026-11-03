@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('venuemasterstore') }}" class="form" name="venuemasterform" id="venuemasterform" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Name</label>
                                        <input type="text" name="name" id="name" class="form-control" required>
                                        <div id="namelist"></div>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="shortname">Short Name</label>
                                        <input type="text" name="shortname" id="shortname" class="form-control" required>
                                        @error('shortname')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="dimension">Area</label>
                                        <input type="text" name="dimension" id="dimension" class="form-control">
                                        @error('dimension')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeYN">Active Or Not</label>
                                        <select class="form-control" name="activeYN" id="activeYN">
                                            <option value="Y" selected>Active</option>
                                            <option value="N">Inactive</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="picpath">Area Image</label>
                                        <input type="file" name="picpath" id="picpath" class="form-control"
                                            accept="image/*">
                                        @error('picpath')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="d-flex gap-2 px-1 pb-2 pt-1">
                            <button type="button" onclick="window.location.href='{{ route('venuemaster.export') }}'" class="btn btn-success btn-sm">Excel</button>
                            <button type="button" onclick="window.open('{{ route('printvenuemaster') }}','_blank')" class="btn btn-info btn-sm text-white">Print</button>
                        </div>

                        <div class="table-responsive">
                            <table id="venuemast" class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Short Name</th>
                                        <th>Dimension</th>
                                        <th>ActiveYN</th>
                                        <th>Image</th>
                                        <th>Action</th>
                                        <th class="none">code</th>
                                        <th class="none">picpath</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->shortname }}</td>
                                            <td>{{ $row->dimension }}</td>
                                            <td>{{ $row->activeYN == 'Y' ? 'Yes' : 'No' }}</td>
                                            <td><img onerror="this.src='https://placehold.co/70x70?text=A'" src="storage/property/venuepicture/{{ $row->picpath }}" alt="" width="50" ></td>
                                            <td>
                                                <button data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i> Edit
                                                </button>
                                                 <a href="{{ url('deletevenuemaster/' . $row->id . '/' . $row->code) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="none">{{ $row->code }}</td>
                                            <td class="none">{{ $row->picpath }}</td>
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

    {{-- Update Modal --}}
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form action="{{ route('venuemasterupdateform') }}" class="form" method="POST" name="venuemasterupdateform" id="venuemasterupdateform"
                    enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="picpathold" id="picpathold">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateModalLabel">Edit Venue Master</h5>
                        <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close"><span>&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" id="updatecode" name="updatecode">
                        <div class="form-group">
                            <label for="updatename">Name</label>
                            <input type="text" class="form-control" id="updatename" name="updatename" required>
                        </div>
                        <div class="form-group">
                            <label for="updateshortname">Short Name</label>
                            <input type="text" class="form-control" id="updateshortname" name="updateshortname" required>
                        </div>
                        <div class="form-group">
                            <label for="updatedimension">Area</label>
                            <input type="text" class="form-control" id="updatedimension" name="updatedimension"
                                >
                        </div>
                        <div class="form-group">
                            <label for="uppicpath">Area Image</label>
                            <input type="file" class="form-control" id="uppicpath" name="uppicpath"
                                accept="image/*">
                        </div>
                        <div class="form-group">
                            <label for="upactiveYN">Active Or Not</label>
                            <select class="form-control" name="upactiveYN" id="upactiveYN">
                                <option value="Y">Active</option>
                                <option value="N">Inactive</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button id="updateBtn" type="submit" class="btn btn-primary">Update <i
                                    class="fa-solid fa-file-export"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);
        });

        $(document).ready(function() {
            // handleFormSubmission('#venuemasterform', '#submitBtn', 'venuemasterstore');
           // handleFormSubmission('#venuemasterupdateform', '#updateBtn', 'venuemasterupdateform');


            $(".editBtn").click(function() {
                var name = $(this).closest("tr").find("td:eq(1)").text();
                var shortname = $(this).closest("tr").find("td:eq(2)").text();
                var dimension = $(this).closest("tr").find("td:eq(3)").text();
                var activeYN = $(this).closest("tr").find("td:eq(4)").text().trim() === "Yes" ? "Y" : "N";
                var code = $(this).closest("tr").find("td:eq(7)").text();
                var picpath = $(this).closest("tr").find("td:eq(8)").text();
                $('#updatecode').val(code);
                $('#updatename').val(name);
                $('#updateshortname').val(shortname);
                $('#updatedimension').val(dimension);
                $('#upactiveYN').val(activeYN);
                $('#picpathold').val(picpath);
            });
        });
    </script>
@endsection