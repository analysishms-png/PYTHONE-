@extends('property.layouts.main')
@section('main-container')
    <style>
        #newprofiletable tbody tr td {
            padding: 3px;
        }

        #newprofiletable tbody tr {
            transition: background-color 0.3s ease;
        }
    </style>
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="newprofiletable" class="table">
                                    <thead>
                                        <tr>
                                            <th>Folio No.</th>
                                            <th>Room No.</th>
                                            <th>Guest Name</th>
                                            <th>New Name</th>
                                            <th>Mobile</th>
                                            <th>Email</th>
                                            <th>Add 1</th>
                                            <th>City</th>
                                            <th>Photo</th>
                                            <th>Id Type</th>
                                            <th>ID Number</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach (readyroomoccdataprofile() as $item)
                                            <tr data-sno1="{{ $item->SN }}" data-sno="{{ $item->sno }}" data-docid="{{ $item->docid }}" data-folio="{{ $item->FolioNo }}" data-room="{{ $item->RoomNo }}">
                                                <td>{{ $item->FolioNo }}</td>
                                                <td>{{ $item->RoomNo }}</td>
                                                <td>{{ $item->GuestName }}</td>
                                                <td><input type="text" value="{{ $item->GuestName }}" class="form-control" name="newname{{ $item->SN }}" id="newname{{ $item->SN }}" placeholder="Enter New Name"></td>
                                                <td><input type="text" value="{{ $item->mobile_no }}" class="form-control" name="newmobile{{ $item->SN }}" id="newmobile{{ $item->SN }}" placeholder="Enter New Mobile"></td>
                                                <td><input type="text" value="{{ $item->email_id }}" class="form-control" name="newemail{{ $item->SN }}" id="newemail{{ $item->SN }}" placeholder="Enter New Email"></td>
                                                <td><input type="text" value="{{ $item->add1 }}" class="form-control" name="newadd1{{ $item->SN }}" id="newadd1{{ $item->SN }}" placeholder="Enter New Address"></td>
                                                <td>
                                                    <select class="form-control" name="cityname{{ $item->SN }}" id="cityname{{ $item->SN }}" required>
                                                        <option value="">Select City</option>
                                                        @foreach (allcities() as $list)
                                                            <option value="{{ $list->city_code }}" {{ $item->city == $list->city_code ? 'selected' : '' }}>
                                                                {{ $list->cityname }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td><input class="form-control" type="file" name="photo{{ $item->SN }}" id="photo{{ $item->SN }}">
                                                    @if (!empty($item->pic_path))
                                                        <p class="ADA cursor-pointer font-weight-bold mt-2 viewphotobutton" data-dir="{{ config('app.url') }}/storage/walkin/profileimage/{{ $item->pic_path }}" id="viewPhoto{{ $item->SN }}">View Photo</p>
                                                    @endif
                                                </td>
                                                <td>
                                                    <select name="idtype{{ $item->SN }}" id="idtype{{ $item->SN }}" class="form-control">
                                                        <option value="">Select</option>
                                                        <option value="Aadhar Card" {{ $item->id_proof == 'Aadhar Card' ? 'selected' : '' }}>Aadhar Card</option>
                                                        <option value="Driving Licence" {{ $item->id_proof == 'Driving Licence' ? 'selected' : '' }}>Driving Licence</option>
                                                        <option value="Passport" {{ $item->id_proof == 'Passport' ? 'selected' : '' }}>Passport</option>
                                                        <option value="National Identity Card" {{ $item->id_proof == 'National Identity Card' ? 'selected' : '' }}>National Identity Card</option>
                                                        <option value="Voter Id" {{ $item->id_proof == 'Voter Id' ? 'selected' : '' }}>Voter Id</option>
                                                        <option value="Green Card" {{ $item->id_proof == 'Green Card' ? 'selected' : '' }}>Green Card</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" value="{{ $item->idproof_no }}" class="form-control" name="idnumber{{ $item->SN }}" id="idnumber{{ $item->SN }}" placeholder="Enter ID Number">
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-sm btn-success updatenewprofile">Submit</button>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Photo Modal -->
    <div class="modal fade" id="photoModal" tabindex="-1" role="dialog" aria-labelledby="photoModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="photoModalLabel">Guest Photo</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="text-center">
                        <img id="modalPhotoImage" src="" alt="Guest Photo" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        const colorPalette = [
            'rgba(255, 193, 7, 0.2)',
            'rgba(76, 175, 80, 0.2)',
            'rgba(33, 150, 243, 0.2)',
            'rgba(233, 30, 99, 0.2)',
            'rgba(156, 39, 176, 0.2)',
            'rgba(255, 87, 34, 0.2)',
            'rgba(0, 188, 212, 0.2)',
            'rgba(244, 67, 54, 0.2)',
            'rgba(63, 81, 181, 0.2)',
            'rgba(139, 195, 74, 0.2)',
            'rgba(255, 152, 0, 0.2)',
            'rgba(103, 58, 183, 0.2)'
        ];

        document.addEventListener('DOMContentLoaded', function() {
            const table = document.getElementById('newprofiletable');
            if (!table) return;

            const rows = table.querySelectorAll('tbody tr');
            const folioColorMap = {};
            let colorIndex = 0;
            let previousFolio = null;

            rows.forEach((row, index) => {
                const folio = row.getAttribute('data-folio');

                if (!folioColorMap[folio]) {
                    folioColorMap[folio] = colorPalette[colorIndex % colorPalette.length];
                    colorIndex++;
                }

                row.style.backgroundColor = folioColorMap[folio];

                if (previousFolio !== null && previousFolio !== folio) {
                    row.style.borderTop = '3px solid #999';
                    row.style.marginTop = '5px';
                    row.style.paddingTop = '8px';
                }

                previousFolio = folio;
            });
        });

        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            $(document).on('click', '.viewphotobutton', function() {
                const photoUrl = $(this).data('dir');
                if (photoUrl) {
                    $('#modalPhotoImage').attr('src', photoUrl);
                    $('#photoModal').modal('show');
                }
            });

            $(document).on('click', '.updatenewprofile', function() {
                const row = $(this).closest('tr');
                const sno1 = row.data('sno1');
                const sno = row.data('sno');
                const docid = row.data('docid');
                const folio = row.data('folio');
                const room = row.data('room');
                const newname = row.find(`#newname${sno1}`).val().trim();
                const newmobile = row.find(`#newmobile${sno1}`).val().trim();
                const newemail = row.find(`#newemail${sno1}`).val().trim();
                const newadd1 = row.find(`#newadd1${sno1}`).val().trim();
                const cityname = row.find(`#cityname${sno1}`).val();
                const idtype = row.find(`#idtype${sno1}`).val();
                const idnumber = row.find(`#idnumber${sno1}`).val().trim();
                const photoinput = row.find(`#photo${sno1}`)[0];
                const photoFile = photoinput ? photoinput.files[0] : null;

                if (!newname || newname == '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'Validation Error',
                        text: 'Please fill in Guest Name'
                    });
                    return;
                }

                if(idtype && idtype !== '' && (!idnumber || idnumber === '')) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Validation Error',
                        text: 'Please fill in ID Number for the selected ID Type'
                    });
                    return;
                }

                const formData = new FormData();
                formData.append('sno1', sno1);
                formData.append('sno', sno);
                formData.append('docid', docid);
                formData.append('folio', folio);
                formData.append('room', room);
                formData.append('newname', newname);
                formData.append('newmobile', newmobile);
                formData.append('newemail', newemail);
                formData.append('newadd1', newadd1);
                formData.append('citycode', cityname);
                formData.append('idtype', idtype);
                formData.append('idnumber', idnumber);

                if (photoFile) {
                    formData.append('photo', photoFile);
                }

                $.ajax({
                    url: "{{ route('updatenewprofile') }}",
                    method: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Profile Updated',
                                text: response.message
                            }).then((success) => {
                                if (success.isConfirmed) {
                                    window.location.reload();
                                }
                            });
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Update Failed',
                                text: response.message || 'An error occurred while updating the profile'
                            });
                        }
                    },
                    error: function(xhr) {
                        console.log('Error Response:', xhr.responseText);
                        let errorMsg = 'An error occurred while updating the profile';
                        try {
                            const response = JSON.parse(xhr.responseText);
                            errorMsg = response.message || errorMsg;
                        } catch (e) {
                            errorMsg = xhr.statusText || errorMsg;
                        }
                        Swal.fire({
                            icon: 'error',
                            title: 'Update Failed',
                            text: errorMsg
                        });
                    }
                });
            });
        });
    </script>
@endsection
