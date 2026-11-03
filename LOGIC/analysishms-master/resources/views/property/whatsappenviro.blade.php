@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="form-section">
                                <form name="wpenviroform" id="wpenviroform">
                                    <div class="row">

                                        <div class="col-md-6">
                                            <label for="whatsappcenterusername" class="form-label">Whatsapp Center User Name</label>
                                            <input type="text" value="{{ $envdata->whatsappcenterusername }}" class="form-control" id="whatsappcenterusername" name="whatsappcenterusername" placeholder="enter username">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="whatsappcenterpassword" class="form-label">Whatsapp Center Password</label>
                                            <input type="text" value="{{ $envdata->whatsappcenterpassword }}" class="form-control" id="whatsappcenterpassword" name="whatsappcenterpassword" placeholder="enter password">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="whatsappdisplayname" class="form-label">Whatsapp Display Name</label>
                                            <input type="text" value="{{ $envdata->whatsappdisplayname }}" class="form-control" id="whatsappdisplayname" name="whatsappdisplayname" placeholder="enter display name">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="managementmob" class="form-label">Management Mob No.</label>
                                            <input type="text" value="{{ $envdata->managementmob }}" class="form-control" id="managementmob" name="managementmob" placeholder="sms_ph_pre">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="pphonenoprefix" class="form-label">Whatsapp Phone No. Prefix</label>
                                            <input type="text" value="{{ $envdata->pphonenoprefix }}" class="form-control" id="pphonenoprefix" name="pphonenoprefix" placeholder="sms_ph_pre">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="bearercode" class="form-label">Bearer Code</label>
                                            <input type="text" value="{{ $envdata->bearercode }}" class="form-control" id="bearercode" name="bearercode" placeholder="Enter Bearer Code">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="checkyn" class="form-label">Check YN</label>
                                            <select class="form-control" name="checkyn" id="checkyn">
                                                <option value="Y" {{ $envdata->checkyn == 'Y' ? 'selected' : '' }}>Yes</option>
                                                <option value="N" {{ $envdata->checkyn == 'N' ? 'selected' : '' }}>No</option>
                                            </select>
                                        </div>

                                        <div class="col-md-6">
                                            <label for="sendpdfcheckout" class="form-label">Pdf At Checkout YN FOM</label>
                                            <select class="form-control" name="sendpdfcheckout" id="sendpdfcheckout">
                                                <option value="1" {{ $envdata->sendpdfcheckout == 1 ? 'selected' : '' }}>Yes</option>
                                                <option value="0" {{ $envdata->sendpdfcheckout == 0 ? 'selected' : '' }}>No</option>
                                            </select>
                                        </div>

                                        <div class="col-md-6">
                                            <label for="sendpdfcheckoutpos" class="form-label">Pdf At Checkout YN POS</label>
                                            <select class="form-control" name="sendpdfcheckoutpos" id="sendpdfcheckoutpos">
                                                <option value="1" {{ $envdata->sendpdfcheckoutpos == 1 ? 'selected' : '' }}>Yes</option>
                                                <option value="0" {{ $envdata->sendpdfcheckoutpos == 0 ? 'selected' : '' }}>No</option>
                                            </select>
                                        </div>

                                    </div>

                                    <div class="mb-2">
                                        <label for="whatsappurl" class="form-label">Whatsapp URL</label>
                                        <input type="text" value="{{ $envdata->whatsappurl }}" class="form-control" id="whatsappurl" name="whatsappurl" value="https://server2.muzztech.in/vb/analas.php?" placeholder="enter sms api url">
                                    </div>

                                    <div class="btn-group">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                        <button type="reset" class="btn btn-danger">Cancel</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });
            $('#wpenviroform').on('submit', function(e) {
                e.preventDefault();

                let formdata = $(this).serialize();
                $.ajax({
                    url: "{{ route('wpenvirosubmit') }}",
                    method: 'POST',
                    data: formdata,
                    success: function(response) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Whatsapp Enviro',
                            text: response.message
                        }).then((success) => {
                            if (success.isConfirmed) {
                                window.location.reload();
                            }
                        });
                    },
                    error: function(error) {
                        console.log(error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Whatsapp Enviro',
                            text: error.responseJSON.message
                        });
                    }
                });
            });

        });
    </script>
@endsection
