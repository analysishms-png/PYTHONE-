@extends('property.layouts.main')

@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <div class="heading-container">
                                <h4 class="heading">Channel Enviro</h4>
                            </div>

                            <form method="POST" id="channelenviro" class="mt-2">
                                @csrf
                                <div class="row">
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        <input type="text" value="{{ $data->name }}" class="form-control" name="name" id="name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="username">username</label>
                                        <input type="text" value="{{ $data->username }}" class="form-control" name="username" id="username" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="url">URL</label>
                                        <input type="website" value="{{ $data->url }}" class="form-control" name="url" id="url" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="text" value="{{ $data->password }}" class="form-control" name="password" id="password" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="apikey">Api Key</label>
                                        <input type="text" value="{{ $data->apikey }}" class="form-control" name="apikey" id="apikey" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="authorization">Authorization Code</label>
                                        <input type="text" value="{{ $data->authorization }}" class="form-control" name="authorization" id="authorization">
                                    </div>
                                    <div class="form-group">
                                        <label for="providercode">Provider Code</label>
                                        <input type="text" value="{{ $data->providercode }}" class="form-control" name="providercode" id="providercode">
                                    </div>
                                    <div class="form-group">
                                        <label for="checkyn">Check</label>
                                        <select name="checkyn" id="checkyn" class="form-control">
                                            <option value="Y" {{ $data->checkyn == 'Y' ? 'selected' : '' }}>Yes</option>
                                            <option value="N" {{ $data->checkyn == 'N' ? 'selected' : '' }}>No</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Update Enviro</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {

            var csrftoken = "{{ csrf_token() }}";
            $('#channelenviro').on('submit', function(e) {
                e.preventDefault();
                var formData = $(this).serialize();
                $('#myloader').removeClass('none');

                $.ajax({
                    url: '/channelenvirosubmit',
                    type: 'POST',
                    data: formData,
                    success: function(response) {
                        $('#myloader').addClass('none');
                        pushNotify('success', 'Success', response.message, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                        $('#roomrateinventry')[0].reset();
                    },
                    error: function(xhr) {
                        $('#myloader').addClass('none');
                        var errorMessage = xhr.responseJSON.message || 'An error occurred while updating inventory.';
                        pushNotify('error', 'Error', errorMessage, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                    }
                });
            });

        });
    </script>
@endsection
