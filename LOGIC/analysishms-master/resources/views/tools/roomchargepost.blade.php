@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('roomchargepostsubmit') }}" method="post">
                                @csrf
                                <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="docid" id="docid">
                                <input type="hidden" name="sno1" id="sno1" value="1">
                                <input type="hidden" name="formType" value="Room Charge Post">
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

                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="room_charge_date">Room Charge Date</label>
                                                    <input type="date" class="form-control" id="room_charge_date"
                                                        name="room_charge_date" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="amount">Amount</label>
                                                    <input type="number" class="form-control" id="amount" name="amount"
                                                        required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Post Room Charge</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $(document).on('keyup', '#foliono', function () {
                var foliono = $(this).val();
                var propertyid = $('#propertyid').val();

                if (foliono && propertyid) {

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
                }
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
                        $("#roomno").append('<option data-docid="' + value.docid + '" value="' + value.roomno + '">' + value.roomno + '</option>');
                    });
                    $('#select_room').show();
                },
                complete: function () {
                    // Hide loader after success or error both
                    $('#loader').hide();
                }
            });
        }

        $(document).on('change', '#roomno', function () {
            var docid = $('#roomno option:selected').data('docid');
            $('#docid').val(docid);
        });
    </script>
@endsection