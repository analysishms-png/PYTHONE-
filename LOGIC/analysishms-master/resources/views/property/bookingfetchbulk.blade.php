@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <!-- Individual Booking Card -->
                    <div class="card shadow-sm mb-4">
                        <div class="card-header bg-light d-flex justify-content-between align-items-center">
                            <h4 class="card-title"><i class="fas fa-bookmark text-primary"></i> Single Booking Fetch & Push</h4>
                            <button class="btn btn-sm btn-outline-primary" id="toggleSingleBooking">
                                <i class="fas fa-chevron-down"></i>
                            </button>
                        </div>
                        <div class="card-body" id="singleBookingCard">
                            <input type="hidden" value="{{ $channelenv->apikey }}" name="apikey" id="apikey">
                            <input type="hidden" value="{{ $channelenv->authorization }}" name="authorization" id="authorization">
                            <input type="hidden" value="{{ $channelenv->providercode }}" name="providercode" id="providercode">

                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-text bg-light"><i class="fas fa-hashtag"></i></span>
                                        <input value="4723056706" type="text" class="form-control" name="bookingid" id="bookingid" placeholder="Enter Booking ID">
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
                                            <span class="badge bg-danger"><i class="fas fa-exclamation-triangle"></i> Don't Change Anything in data</span>
                                        </label>
                                        <div class="position-relative">
                                            <textarea class="form-control code-area" name="pushdata" id="pushdata" rows="20" style="overflow:auto;max-height:initial;font-family:monospace;">Response of your booking id will be shown here if found!</textarea>
                                            <div class="position-absolute top-0 end-0 m-2">
                                                <button class="btn btn-sm btn-outline-secondary copy-btn" data-target="pushdata" title="Copy to clipboard">
                                                    <i class="fas fa-copy"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Bulk Booking Card -->
                    <div class="card shadow-sm">
                        <div class="card-header bg-light">
                            <h4 class="card-title"><i class="fas fa-layer-group text-success"></i> Bulk Booking Fetch & Push</h4>
                        </div>
                        <div class="card-body">
                            <div class="row mb-4">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="bulkBookingIds" class="form-label">
                                            <i class="fas fa-list-ol text-info"></i> Multiple Booking IDs
                                            <small class="text-muted">(Comma separated)</small>
                                        </label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-light"><i class="fas fa-hashtag"></i></span>
                                            <input type="text" class="form-control" name="bulkBookingIds" id="bulkBookingIds"
                                                placeholder="e.g., 4723056706, 4723056707, 4723056708">
                                            <button type="button" class="btn btn-info btn-fetch" id="bulkFetchButton">
                                                <i class="fas fa-search me-1"></i> Fetch All
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <div class="d-flex align-items-center">
                                        <span class="me-3"><i class="fas fa-info-circle text-primary"></i> Status:</span>
                                        <div id="fetchStatus" class="badge bg-secondary">Ready</div>
                                    </div>
                                </div>
                                <div class="col-md-6 text-end">
                                    <button type="button" class="btn btn-success btn-push" id="bulkPushButton" disabled>
                                        <i class="fas fa-upload me-1"></i> Push All Bookings
                                    </button>
                                </div>
                            </div>

                            <div class="progress mb-4" style="height: 20px;">
                                <div id="fetchProgress" class="progress-bar progress-bar-striped progress-bar-animated"
                                    role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">0%</div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover" id="bulkBookingsTable">
                                            <thead class="table-light">
                                                <tr>
                                                    <th width="5%">#</th>
                                                    <th width="15%">Booking ID</th>
                                                    <th width="15%">Status</th>
                                                    <th width="45%">Data Preview</th>
                                                    <th width="20%">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody id="bulkBookingsBody">
                                                <tr id="noBookingsRow">
                                                    <td colspan="5" class="text-center">No bookings fetched yet</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <!-- Hidden textarea for storing all bookings data -->
                            <div class="d-none">
                                <textarea id="allBookingsData"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Booking Data Modal -->
    <div class="modal fade" id="bookingDataModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Booking Data <span id="modalBookingId"></span></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="position-relative">
                        <textarea class="form-control code-area" id="modalBookingData" rows="20" style="font-family:monospace;"></textarea>
                        <div class="position-absolute top-0 end-0 m-2">
                            <button class="btn btn-sm btn-outline-secondary copy-btn" data-target="modalBookingData" title="Copy to clipboard">
                                <i class="fas fa-copy"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
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

            // Button animation and style enhancements
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
                    .booking-preview {\
                        max-height: 100px;\
                        overflow: hidden;\
                        position: relative;\
                    }\
                    .booking-preview::after {\
                        content: "";\
                        position: absolute;\
                        bottom: 0;\
                        left: 0;\
                        height: 40px;\
                        width: 100%;\
                        background: linear-gradient(transparent, #fff);\
                    }\
                    .status-pending {\
                        background-color: #ffc107;\
                        color: #212529;\
                    }\
                    .status-success {\
                        background-color: #198754;\
                        color: #fff;\
                    }\
                    .status-error {\
                        background-color: #dc3545;\
                        color: #fff;\
                    }\
                    .table-hover tbody tr:hover {\
                        background-color: rgba(0,123,255,0.05);\
                    }\
                </style>').appendTo('head');

            let apikey = $('#apikey').val().trim();
            let authorization = $('#authorization').val().trim();
            let providercode = $('#providercode').val().trim();

            // For storing bulk bookings data
            let bookingsData = {};
            let totalBookings = 0;
            let fetchedBookings = 0;
            let successfulBookings = 0;
            let failedBookings = 0;

            if (!apikey) {
                pushNotify('error', 'Booking Fetch', 'API Key Not Defined', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            // Toggle single booking card
            $('#toggleSingleBooking').on('click', function() {
                $('#singleBookingCard').slideToggle();
                $(this).find('i').toggleClass('fa-chevron-down fa-chevron-up');
            });

            // Copy to clipboard functionality
            $(document).on('click', '.copy-btn', function() {
                const targetId = $(this).data('target');
                const textarea = document.getElementById(targetId);
                textarea.select();
                document.execCommand('copy');

                const originalIcon = $(this).html();
                $(this).html('<i class="fas fa-check text-success"></i>');

                setTimeout(() => {
                    $(this).html(originalIcon);
                }, 2000);
            });

            // Single booking fetch
            $(document).on('click', '#fetchbutton', function() {
                const $btn = $(this);
                $btn.addClass('btn-loading').prop('disabled', true);
                $btn.html('<i class="fas fa-spinner fa-spin"></i> Fetching');

                showLoader();
                $('#pushdata').val('Response of your booking id will be shown here if found!');
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

            // Single booking push
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
                                text: xhr.responseJSON?.message ?? 'Unknown Error',
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

            // Bulk fetch bookings
            $('#bulkFetchButton').on('click', function() {
                const $btn = $(this);
                const bookingIdsInput = $('#bulkBookingIds').val().trim();

                if (!bookingIdsInput) {
                    pushNotify('error', 'Bulk Fetch', 'Please enter booking IDs separated by commas', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                // Reset variables
                bookingsData = {};
                totalBookings = 0;
                fetchedBookings = 0;
                successfulBookings = 0;
                failedBookings = 0;

                // Parse booking IDs, remove spaces, and filter empty values
                const bookingIds = bookingIdsInput.split(',')
                    .map(id => id.trim())
                    .filter(id => id !== '');

                totalBookings = bookingIds.length;

                if (totalBookings === 0) {
                    pushNotify('error', 'Bulk Fetch', 'No valid booking IDs provided', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                // Set up interface for fetching
                $btn.addClass('btn-loading').prop('disabled', true);
                $btn.html('<i class="fas fa-spinner fa-spin"></i> Fetching');
                $('#fetchStatus').removeClass('bg-secondary bg-success bg-danger').addClass('bg-warning').text('Fetching...');
                $('#fetchProgress').css('width', '0%').attr('aria-valuenow', 0).text('0%');
                $('#bulkBookingsBody').html('');
                $('#bulkPushButton').prop('disabled', true);

                // Add rows for each booking ID with pending status
                bookingIds.forEach((id, index) => {
                    const rowHtml = `
                        <tr id="booking-row-${id}" data-id="${id}">
                            <td>${index + 1}</td>
                            <td>${id}</td>
                            <td><span class="badge status-pending">Pending</span></td>
                            <td>
                                <div class="booking-preview" id="preview-${id}">Fetching...</div>
                            </td>
                            <td>
                                <button class="btn btn-sm btn-outline-primary view-data" data-id="${id}" disabled>
                                    <i class="fas fa-eye"></i> View
                                </button>
                                <button class="btn btn-sm btn-outline-danger ms-1 remove-booking" data-id="${id}">
                                    <i class="fas fa-times"></i> Remove
                                </button>
                            </td>
                        </tr>
                    `;
                    $('#bulkBookingsBody').append(rowHtml);
                });

                // Fetch each booking one by one
                fetchNextBooking(bookingIds, 0, $btn);
            });

            // Function to fetch bookings one by one
            function fetchNextBooking(bookingIds, index, $btn) {
                if (index >= bookingIds.length) {
                    // All fetches are done
                    completeBulkFetch($btn);
                    return;
                }

                const bookingId = bookingIds[index];
                const url = `https://www.eglobe-solutions.com/webapichannelmanager/bookings_v2/${apikey}/${bookingId}`;

                $.ajax({
                    url: url,
                    method: 'GET',
                    headers: {
                        'Authorization': authorization,
                        'ProviderCode': providercode
                    },
                    success: function(response) {
                        try {
                            let result = JSON.stringify(response.Result);
                            const jsonObj = JSON.parse(result);
                            const prettyjson = JSON.stringify(jsonObj, null, 2);

                            // Store the data
                            bookingsData[bookingId] = {
                                data: jsonObj,
                                status: 'success'
                            };

                            // Update the UI
                            $(`#booking-row-${bookingId} td:eq(2) span`).removeClass('status-pending').addClass('status-success').text('Success');
                            $(`#preview-${bookingId}`).html(`<pre style="margin: 0; font-size: 12px;">${prettyjson.substring(0, 200)}...</pre>`);
                            $(`#booking-row-${bookingId} .view-data`).prop('disabled', false);

                            successfulBookings++;
                        } catch (e) {
                            console.error(`Invalid JSON for booking ${bookingId}`, e);
                            bookingsData[bookingId] = {
                                error: 'Invalid JSON response',
                                status: 'error'
                            };

                            $(`#booking-row-${bookingId} td:eq(2) span`).removeClass('status-pending').addClass('status-error').text('Error');
                            $(`#preview-${bookingId}`).text('Error: Invalid JSON response');

                            failedBookings++;
                        }
                    },
                    error: function(xhr) {
                        const errorMsg = xhr.responseJSON?.Message || 'Unknown Error';

                        bookingsData[bookingId] = {
                            error: errorMsg,
                            status: 'error'
                        };

                        $(`#booking-row-${bookingId} td:eq(2) span`).removeClass('status-pending').addClass('status-error').text('Error');
                        $(`#preview-${bookingId}`).text(`Error: ${errorMsg}`);

                        failedBookings++;
                    },
                    complete: function() {
                        fetchedBookings++;

                        // Update progress
                        const progress = Math.round((fetchedBookings / totalBookings) * 100);
                        $('#fetchProgress').css('width', `${progress}%`).attr('aria-valuenow', progress).text(`${progress}%`);

                        // Process next booking
                        fetchNextBooking(bookingIds, index + 1, $btn);
                    }
                });
            }

            // Function called when all fetches are complete
            function completeBulkFetch($btn) {
                $btn.removeClass('btn-loading').prop('disabled', false);
                $btn.html('<i class="fas fa-search me-1"></i> Fetch All');

                // Update status
                if (failedBookings === 0 && successfulBookings > 0) {
                    $('#fetchStatus').removeClass('bg-warning').addClass('bg-success').text('All Successfully Fetched');
                    $('#bulkPushButton').prop('disabled', false);
                } else if (successfulBookings > 0) {
                    $('#fetchStatus').removeClass('bg-warning').addClass('bg-warning').text(`Fetched ${successfulBookings}/${totalBookings} (${failedBookings} failed)`);
                    $('#bulkPushButton').prop('disabled', false);
                } else {
                    $('#fetchStatus').removeClass('bg-warning').addClass('bg-danger').text('All Fetches Failed');
                    $('#bulkPushButton').prop('disabled', true);
                }

                // Store all bookings data in the hidden textarea
                $('#allBookingsData').val(JSON.stringify(bookingsData));

                pushNotify('info', 'Bulk Fetch Complete', `Fetched ${successfulBookings}/${totalBookings} bookings`, 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
            }

            // View booking data in modal
            $(document).on('click', '.view-data', function() {
                const bookingId = $(this).data('id');
                const bookingData = bookingsData[bookingId];

                if (bookingData && bookingData.status === 'success') {
                    $('#modalBookingId').text(bookingId);
                    $('#modalBookingData').val(JSON.stringify(bookingData.data, null, 2));
                    $('#bookingDataModal').modal('show');
                }
            });

            // Remove booking from list
            $(document).on('click', '.remove-booking', function() {
                const bookingId = $(this).data('id');

                // Remove from data object
                if (bookingsData[bookingId]) {
                    if (bookingsData[bookingId].status === 'success') {
                        successfulBookings--;
                    } else if (bookingsData[bookingId].status === 'error') {
                        failedBookings--;
                    }

                    delete bookingsData[bookingId];
                    totalBookings--;
                    fetchedBookings--;
                }

                // Remove table row
                $(`#booking-row-${bookingId}`).remove();

                // Update progress and status
                if (totalBookings > 0) {
                    const progress = Math.round((fetchedBookings / totalBookings) * 100);
                    $('#fetchProgress').css('width', `${progress}%`).attr('aria-valuenow', progress).text(`${progress}%`);

                    if (failedBookings === 0 && successfulBookings > 0) {
                        $('#fetchStatus').removeClass('bg-warning bg-danger').addClass('bg-success').text('All Successfully Fetched');
                        $('#bulkPushButton').prop('disabled', false);
                    } else if (successfulBookings > 0) {
                        $('#fetchStatus').removeClass('bg-success bg-danger').addClass('bg-warning').text(`Fetched ${successfulBookings}/${totalBookings} (${failedBookings} failed)`);
                        $('#bulkPushButton').prop('disabled', false);
                    } else {
                        $('#fetchStatus').removeClass('bg-success bg-warning').addClass('bg-danger').text('All Fetches Failed');
                        $('#bulkPushButton').prop('disabled', true);
                    }
                } else {
                    // No bookings left
                    $('#fetchProgress').css('width', '0%').attr('aria-valuenow', 0).text('0%');
                    $('#fetchStatus').removeClass('bg-success bg-warning').addClass('bg-secondary').text('Ready');
                    $('#bulkPushButton').prop('disabled', true);
                    $('#bulkBookingsBody').html('<tr id="noBookingsRow"><td colspan="5" class="text-center">No bookings fetched yet</td></tr>');
                }

                // Update hidden data
                $('#allBookingsData').val(JSON.stringify(bookingsData));
            });

            // Bulk push all bookings
            $('#bulkPushButton').on('click', function() {
                const $btn = $(this);

                // Check if we have any successful bookings
                const successfulBookingIds = Object.keys(bookingsData).filter(id =>
                    bookingsData[id].status === 'success'
                );

                if (successfulBookingIds.length === 0) {
                    pushNotify('error', 'Bulk Push', 'No valid bookings to push', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }

                Swal.fire({
                    title: 'Confirm Bulk Push',
                    text: `Are you sure you want to push ${successfulBookingIds.length} bookings?`,
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, Push All',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $btn.addClass('btn-loading').prop('disabled', true);
                        $btn.html('<i class="fas fa-spinner fa-spin"></i> Pushing');

                        // Reset counts for push operation
                        let totalToPush = successfulBookingIds.length;
                        let pushedCount = 0;
                        let successCount = 0;
                        let failCount = 0;

                        // Update progress bar
                        $('#fetchProgress').css('width', '0%').attr('aria-valuenow', 0).text('0%');
                        $('#fetchStatus').removeClass('bg-secondary bg-success bg-danger').addClass('bg-warning').text('Pushing...');

                        // Push each booking one by one
                        pushNextBooking(successfulBookingIds, 0);

                        function pushNextBooking(ids, index) {
                            if (index >= ids.length) {
                                // All pushes are done
                                completeBulkPush();
                                return;
                            }

                            const bookingId = ids[index];
                            const bookingData = bookingsData[bookingId].data;

                            // Update row status
                            $(`#booking-row-${bookingId} td:eq(2) span`).removeClass('status-success').addClass('status-pending').text('Pushing...');

                            $.ajax({
                                url: `/eglobetohms/${apikey}/booking`,
                                method: 'POST',
                                contentType: 'application/json',
                                dataType: 'json',
                                headers: {
                                    'Authorization': `${authorization}`
                                },
                                data: JSON.stringify(bookingData),
                                success: function(response) {
                                    // Update status in data object and UI
                                    bookingsData[bookingId].pushStatus = 'success';
                                    bookingsData[bookingId].pushMessage = response.message || 'Success';

                                    $(`#booking-row-${bookingId} td:eq(2) span`).removeClass('status-pending').addClass('status-success').text('Pushed');
                                    successCount++;
                                },
                                error: function(xhr) {
                                    const errorMsg = xhr.responseJSON?.message || 'Unknown Error';

                                    // Update status in data object and UI
                                    bookingsData[bookingId].pushStatus = 'error';
                                    bookingsData[bookingId].pushMessage = errorMsg;

                                    $(`#booking-row-${bookingId} td:eq(2) span`).removeClass('status-pending').addClass('status-error').text('Push Failed');
                                    failCount++;
                                },
                                complete: function() {
                                    pushedCount++;

                                    // Update progress
                                    const progress = Math.round((pushedCount / totalToPush) * 100);
                                    $('#fetchProgress').css('width', `${progress}%`).attr('aria-valuenow', progress).text(`${progress}%`);

                                    // Process next booking
                                    setTimeout(() => {
                                        pushNextBooking(ids, index + 1);
                                    }, 500); // Add a small delay between pushes to avoid overwhelming the server
                                }
                            });
                        }

                        function completeBulkPush() {
                            // Update button state
                            $btn.removeClass('btn-loading').prop('disabled', false);
                            $btn.html('<i class="fas fa-upload me-1"></i> Push All Bookings');

                            // Update status badge
                            if (failCount === 0 && successCount > 0) {
                                $('#fetchStatus').removeClass('bg-warning').addClass('bg-success').text(`All ${successCount} Bookings Pushed Successfully`);
                            } else if (successCount > 0) {
                                $('#fetchStatus').removeClass('bg-warning').addClass('bg-warning').text(`Pushed ${successCount}/${totalToPush} (${failCount} failed)`);
                            } else {
                                $('#fetchStatus').removeClass('bg-warning').addClass('bg-danger').text('All Pushes Failed');
                            }

                            // Show result notification
                            Swal.fire({
                                title: 'Bulk Push Complete',
                                html: `
            <div class="text-start">
                <p><strong>Total:</strong> ${totalToPush} bookings</p>
                <p><strong>Successful:</strong> ${successCount} bookings</p>
                <p><strong>Failed:</strong> ${failCount} bookings</p>
            </div>
        `,
                                icon: successCount > 0 ? (failCount === 0 ? 'success' : 'warning') : 'error',
                                confirmButtonText: 'OK'
                            });

                            // Update hidden data with push results
                            $('#allBookingsData').val(JSON.stringify(bookingsData));
                        }
                    }
                });
            });

            // Add Enter key press for search
            $('#bookingid').on('keypress', function(e) {
             if (e.which === 13) {
                    $('#fetchbutton').click();
                }
            });

            $('#bulkBookingIds').on('keypress', function(e) {
                if (e.which === 13) {
                    $('#bulkFetchButton').click();
                }
            });
        });
    </script>
@endsection
