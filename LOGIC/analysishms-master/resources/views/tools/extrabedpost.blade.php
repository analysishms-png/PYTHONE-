@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')

    @if (session('success'))
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '{{ session('success') }}',
        });
        setTimeout(function() {
            Swal.close();
        }, 5000);
    </script>
@endif
@if (session('error'))
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '{{ session('error') }}',
        });
        setTimeout(function() {
            Swal.close();
        }, 5000);
    </script>
@endif
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            {{-- <form action="{{ route('roomchargepostsubmit') }}" method="post"> --}}
                                {{-- @csrf --}}
                                
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="propertyid">Select Company:</label>
                                            <select class="form-control select2-multiple" id="propertyid" required
                                                name="propertyid">
                                                <option value="">Select Company</option>
                                                @foreach ($companies as $item)
                                                    <option value="{{ $item->propertyid }}">{{ $item->comp_name }} -
                                                        {{ $item->propertyid }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="foliono">Folio No.</label>
                                            <input type="number" class="form-control" id="foliono" name="foliono" required>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group" id="select_room" style="display:none;">
                                            <label for="room_select">Select Room</label>
                                            <select class="form-control select2-multiple" name="roomno" id="roomno">
                                                <option value="">Room No.</option>
                                            </select>
                                            <span id="loader" style="display:none; float:left; font-weight:bold;">
                                                <i class="fa fa-spinner fa-spin"></i> Loading...
                                            </span>
                                        </div>
                                    </div>

                                    <div class="col-md-6" id="advancebtn" style="display: none">
                                        <button type="button" class="btn btn-warning" id="post" style="margin-top: 30px;" data-toggle="modal" data-target="#advchargemodal">
                                            Advance Charge / Paid Out
                                        </button>
                                    </div>
                                </div>
                            {{-- </form> --}}
                            <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="docid" id="docid">
                                <input type="hidden" name="sno1" id="sno1" value="1">
                                <input type="hidden" name="formType" value="Extra Bed Post">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="advchargemodal" tabindex="-1" aria-labelledby="advchargemodalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="advchargemodalLabel">Advance Change For: <span
                            class="ADA" id="advchargespan"></span></h5>
                    <h5 style="right: 3rem;" class="modal-title absolute-element"
                        id="advchargemodalLabel">Folio No.:
                        <span style="display: none;" id="docidd"></span>
                        <span class="BANX" id="guestcode4"></span>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="advchargeiframe" src="" frameborder="0"
                        style="width: 100%; height: 37em;"></iframe>
                </div>
            </div>
        </div>
    </div>
    <script>
        let globaldocid = '';
        let globalsno1 = '';
        let globalsno = '';
        let roomnoo = '';
        let globalname = '';
        
         $('#advchargemodal').on('show.bs.modal', function (event) {
                var iframe = document.getElementById("advchargeiframe");
                let profilechangespan = document.getElementById('advchargespan');
                let profilefolio = document.getElementById('guestcode4');
                let folioNo = $('#foliono').val();
                profilechangespan.textContent = globalname;
                profilefolio.textContent = folioNo;
                console.log('Party Name : '+globalname);
                console.log('Folio No. : '+folioNo);
                iframe.src = "advchargetool?docid=" + globaldocid + "&sno1=" + globalsno1 + "&sno=" + globalsno + "&propertyid=" + $('#propertyid').val();
            });
        $('#advchargemodal').on('hidden.bs.modal', function (event) {
                var iframe = document.getElementById("advchargeiframe");
                iframe.src = "";
            });
        $(document).ready(function () {
            let typingTimer;
            let typingDelay = 800; // Wait 800ms after user stops typing

            $(document).on('keyup', '#foliono', function () {
                clearTimeout(typingTimer);
                var foliono = $(this).val();
                var propertyid = $('#propertyid').val();

                if (foliono && propertyid) {
                    typingTimer = setTimeout(function() {
                        $.ajax({
                            url: "{{ url('tools/get_vprefix_roomcharge') }}",
                            type: "POST",
                            data: {
                                foliono: foliono,
                                propertyid: propertyid,
                                _token: '{{ csrf_token() }}'
                            },
                            dataType: 'json',
                            success: function (result) {
                                if (result.vprefix) {
                                    $('#vprefix').val(result.vprefix);
                                    // Call getRoom to fetch rooms for selected folio
                                    setTimeout(() => {
                                         getRoom();
                                    }, 2000);
                                   
                                } else {
                                    Swal.fire({
                                        icon: 'warning',
                                        title: 'Warning!',
                                        text: 'Folio not found or invalid',
                                        confirmButtonColor: '#3085d6'
                                    });
                                }
                            },
                            error: function () {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error!',
                                    text: 'Failed to fetch folio details',
                                    confirmButtonColor: '#d33'
                                });
                            },
                            complete: function () {
                                // Hide loader after success or error both
                                $('#loader').hide();
                            }
                        });
                    }, typingDelay);
                }
            });

            $(document).on('keydown', '#foliono', function () {
                clearTimeout(typingTimer);
            });

            // Form submit handler
            $('form').on('submit', function (e) {
                e.preventDefault();

                var formData = $(this).serialize();
                var submitBtn = $(this).find('button[type="submit"]');

                // Disable submit button
                submitBtn.prop('disabled', true).html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Processing...');

                $.ajax({
                    url: $(this).attr('action'),
                    type: 'POST',
                    data: formData,
                    dataType: 'json',
                    success: function (response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success!',
                                text: 'Room charge posted successfully!',
                                confirmButtonColor: '#3085d6',
                                confirmButtonText: 'OK'
                            });
                            // Reset form
                            $('form')[0].reset();
                            $('#foliono').html('<option value="">Folio No.</option>');
                            $('#roomno').html('<option value="">Room No.</option>');
                            $('#vprefix').val('');
                            $('#docid').val('');
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error!',
                                text: response.message || 'An error occurred',
                                confirmButtonColor: '#d33',
                                confirmButtonText: 'OK'
                            });
                        }
                    },
                    error: function (xhr) {
                        var errorMsg = 'An error occurred. Please try again.';

                        if (xhr.status === 422) {
                            // Validation errors
                            var errors = xhr.responseJSON.errors;
                            var errorList = '<ul style="text-align: left;">';
                            $.each(errors, function (key, value) {
                                errorList += '<li>' + value[0] + '</li>';
                            });
                            errorList += '</ul>';

                            Swal.fire({
                                icon: 'error',
                                title: 'Validation Errors',
                                html: errorList,
                                confirmButtonColor: '#d33',
                                confirmButtonText: 'OK'
                            });
                        } else {
                            if (xhr.responseJSON && xhr.responseJSON.message) {
                                errorMsg = xhr.responseJSON.message;
                            }

                            Swal.fire({
                                icon: 'error',
                                title: 'Error!',
                                text: errorMsg,
                                confirmButtonColor: '#d33',
                                confirmButtonText: 'OK'
                            });
                        }
                    },
                    complete: function () {
                        // Re-enable submit button
                        submitBtn.prop('disabled', false).html('Post Room Charge');
                    }
                });
            });
        });

        function getRoom() {
            var foliono = $('#foliono').val();
            var propertyid = $('#propertyid').val();
            var vprefix = $('#vprefix').val();
            $('#roomno').html('');
            // Show Loader
            $('#loader').show();
            $.ajax({
                url: "{{ url('tools/fetch_roomchargepost_folionos') }}",
                type: "POST",
                data: {
                    foliono: foliono,
                    propertyid: propertyid,
                    vprefix: vprefix,
                    _token: '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function (result) {
                    if(result.rooms.length == 0){
                        Swal.fire({
                            icon: 'warning',
                            title: 'No Rooms Found',
                            text: 'No rooms found for the selected folio.',
                            confirmButtonColor: '#3085d6'
                        });
                        $('#select_room').hide();
                        return;
                    }
                    $('#roomno').html('<option value="">Select Room No.</option>');
                    $.each(result.rooms, function (key, value) {
                        $("#roomno").append('<option data-name="' + value.name + '" data-docid="' + value.docid + '" data-sno="' + value.sno + '" data-sno1="' + value.sno1 + '" data-roomno="' + value.roomno + '" value="' + value.roomno + '">' + value.roomno + '</option>');
                    });
                   $('#select_room, #advancebtn').show();
                },
                error: function () {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Failed to fetch room details',
                        confirmButtonColor: '#d33'
                    });
                },
                complete: function () {
                    // Hide loader after success or error both
                    $('#loader').hide();
                }
            });
        }

        $(document).on('change', '#roomno', function () {
            console.log($('#roomno option:selected').data());
            var docid = $('#roomno option:selected').data('docid');
            var sno = $('#roomno option:selected').data('sno');
            var sno1 = $('#roomno option:selected').data('sno1');
            var roomno = $('#roomno option:selected').data('roomno');
            var name = $('#roomno option:selected').data('name');
            globaldocid = docid;
            globalsno1 = sno1;
            globalsno = sno;
            roomnoo = roomno;
            globalname = name;
        });
    </script>
@endsection