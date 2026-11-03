@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow-sm">
                        <div class="card-header bg-light">
                            <h4 class="card-title"><i class="fas fa-bookmark text-primary"></i> Booking Fetch & Push</h4>
                        </div>
                        <div class="card-body">
                            <input type="hidden" value="{{ $channelenv->apikey }}" name="apikey" id="apikey">
                            <input type="hidden" value="{{ $channelenv->authorization }}" name="authorization" id="authorization">
                            <input type="hidden" value="{{ $channelenv->providercode }}" name="providercode" id="providercode">

                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-text bg-light"><i class="fas fa-hashtag"></i></span>
                                        <input type="text" class="form-control" name="bookingid" id="bookingid" placeholder="Enter Booking ID">
                                        <button type="button" class="btn btn-info btn-fetch" id="fetchbutton" name="fetchbutton">
                                            <i class="fas fa-search me-1"></i> Fetch
                                        </button>
                                    </div>
                                </div>
                                <div class="col-md-6 text-end">
                                    <button type="button" class="btn btn-success btn-push" id="pushdatabtn" name="pushdatabtn">
                                        <i class="fas fa-upload me-1"></i> Push Data
                                    </button>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="pushdata" class="form-label">
                                            <i class="fas fa-file-code text-warning"></i> Fetched Data
                                            <span class="badge text-danger font-tiny bg-gallery"><i class="fas fa-exclamation-triangle"></i> Don't Change Anything in data</span>
                                        </label>
                                        <div class="position-relative">
                                            <textarea class="form-control code-area" name="pushdata" id="pushdata" rows="25" style="overflow:auto;max-height:initial;font-family:monospace;">Reponse of your booking id will be shown here if found!</textarea>
                                            <div class="position-absolute top-0 end-0 m-2">
                                                <button class="btn btn-sm btn-outline-secondary copy-btn" title="Copy to clipboard">
                                                    <i class="fas fa-copy"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Add Font Awesome CSS if not already included
            if (!$('link[href*="fontawesome"]').length) {
                $('head').append('<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">');
            }

            // Button animation styles
            $('<style>\
                        .btn-fetch, .btn-push {\
                            transition: all 0.3s ease;\
                        }\
                        .btn-fetch:active, .btn-push:active {\
                            transform: scale(0.95);\
                            box-shadow: 0 0 10px rgba(0,0,0,0.2);\
                        }\
                        .code-area {\
                            background-color: #f8f9fa;\
                            border: 1px solid #dee2e6;\
                            border-radius: 0.25rem;\
                            padding: 15px;\
                            font-size: 14px;\
                        }\
                        .btn-loading {\
                            position: relative;\
                            pointer-events: none;\
                        }\
                        .btn-loading:after {\
                            content: "";\
                            display: inline-block;\
                            width: 1rem;\
                            height: 1rem;\
                            border-radius: 50%;\
                            border: 2px solid #fff;\
                            border-top-color: transparent;\
                            animation: spinner 0.6s linear infinite;\
                            margin-left: 0.5rem;\
                        }\
                        @keyframes spinner {\
                            to { transform: rotate(360deg); }\
                        }\
                    </style>').appendTo('head');

            let apikey = $('#apikey').val().trim();
            let authorization = $('#authorization').val().trim();
            let providercode = $('#providercode').val().trim();

            if (!apikey) {
                pushNotify('error', 'Booking Fetch', 'API Key Not Defined', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            // Copy to clipboard functionality
            $(document).on('click', '.copy-btn', function() {
                const textarea = document.getElementById('pushdata');
                textarea.select();
                document.execCommand('copy');

                const originalIcon = $(this).html();
                $(this).html('<i class="fas fa-check text-success"></i>');

                setTimeout(() => {
                    $(this).html(originalIcon);
                }, 2000);
            });

            $(document).on('click', '#fetchbutton', function() {
                const $btn = $(this);
                $btn.addClass('btn-loading').prop('disabled', true);
                $btn.html('<i class="fas fa-spinner fa-spin"></i> Fetching');

                showLoader();
                $('#pushdata').val('Reponse of your booking id will be shown here if found!');
                let bookingid = $('#bookingid').val().trim();

                if (bookingid) {
                    let url = `https://www.eglobe-solutions.com/webapichannelmanager/bookings_v2/${apikey}/${bookingid}`;

                    $.ajax({
                        url: url,
                        method: 'GET',
                        headers: {
                            'Authorization': authorization,
                            'ProviderCode': providercode
                        },
                        success: function(response) {
                            pushNotify('success', 'Booking Fetch', 'Booking Data Found', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                            let result = JSON.stringify(response.Result);
                            setTimeout(hideLoader, 1000);
                            try {
                                const jsonObj = JSON.parse(result);
                                const prettyjson = JSON.stringify(jsonObj, null, 2);
                                $('#pushdata').val(prettyjson);
                            } catch (e) {
                                console.error("Invalid JSON", e);
                            }
                            setTimeout(function() {
                                $btn.removeClass('btn-loading').prop('disabled', false);
                                $btn.html('<i class="fas fa-search me-1"></i> Fetch');
                            }, 1000);
                        },
                        error: function(xhr) {
                            if (xhr.status === 400) {
                                Swal.fire({
                                    title: 'Error',
                                    icon: 'error',
                                    text: xhr.responseJSON.Message ?? 'Unknown Error',
                                    confirmButtonText: 'OK'
                                });
                            }
                            setTimeout(hideLoader, 1000);
                            console.error('Fetch failed:', xhr.responseText);

                            setTimeout(function() {
                                $btn.removeClass('btn-loading').prop('disabled', false);
                                $btn.html('<i class="fas fa-search me-1"></i> Fetch');
                            }, 1000);
                        }
                    });
                } else {
                    setTimeout(function() {
                        $btn.removeClass('btn-loading').prop('disabled', false);
                        $btn.html('<i class="fas fa-search me-1"></i> Fetch');
                    }, 1000);
                    setTimeout(hideLoader, 1000);
                    pushNotify('error', 'Booking Fetch', 'Booking ID is required', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                }
            });

            $(document).on('click', '#pushdatabtn', function() {
                const $btn = $(this);
                $btn.addClass('btn-loading').prop('disabled', true);
                $btn.html('<i class="fas fa-spinner fa-spin"></i> Pushing');

                let pushdata = $('#pushdata').val();

                try {
                    const jsonData = JSON.parse(pushdata);

                    $.ajax({
                        url: `/eglobetohms/${apikey}/booking`,
                        method: 'POST',
                        contentType: 'application/json',
                        dataType: 'json',
                        headers: {
                            'Authorization': `${authorization}`
                        },
                        data: JSON.stringify(jsonData),
                        success: function(response) {
                            setTimeout(function() {
                                $btn.removeClass('btn-loading').prop('disabled', false);
                                $btn.html('<i class="fas fa-upload me-1"></i> Push Data');
                            }, 1000);

                            Swal.fire({
                                title: 'Success',
                                icon: 'success',
                                text: response.message ?? 'Booking Pushed Successfully',
                                confirmButtonText: 'OK'
                            }).then((r => {
                                if (r.isConfirmed) {
                                    window.location.reload();
                                }
                            }));
                        },
                        error: function(xhr) {
                            setTimeout(function() {
                                $btn.removeClass('btn-loading').prop('disabled', false);
                                $btn.html('<i class="fas fa-upload me-1"></i> Push Data');
                            }, 1000);

                            Swal.fire({
                                title: 'Error',
                                icon: 'error',
                                text: xhr.responseJSON.message ?? 'Unknown Error',
                                confirmButtonText: 'OK'
                            });
                        }
                    });
                } catch (e) {
                    setTimeout(function() {
                        $btn.removeClass('btn-loading').prop('disabled', false);
                        $btn.html('<i class="fas fa-upload me-1"></i> Push Data');
                    }, 1000);

                    console.error("Invalid JSON in textarea", e);
                    pushNotify('error', 'Booking Push', e.responseJSON?.Message ?? 'Invalid JSON Format', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                }
            });

            $('#bookingid').on('keypress', function(e) {
                if (e.which === 13) {
                    $('#fetchbutton').click();
                }
            });
        });
    </script>
@endsection
