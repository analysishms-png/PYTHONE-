@extends('property.layouts.main')
@section('main-container')
    <link href="{{ asset('admin/plugins/clockpicker/dist/jquery-clockpicker.min.css') }}" rel="stylesheet">

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="tabs">
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-1" name="tabby-tabs" checked>
                                    <label class="tabby" for="tab-1">Front Office</label>
                                    <div class="tabby-content">
                                        <form method="POST" action="{{ route('fomwpparamsubmit') }}">
                                            @csrf
                                            <div class="row">
                                                <!-- Left: All Textareas -->
                                                <div class="col-md-8">
                                                    <!-- Button Group -->
                                                    <div class="mb-3">
                                                        <div class="btn-group" role="group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-checkin active">Checkin</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-chkout">Checkout</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-admin">Admin</button>
                                                        </div>
                                                    </div>

                                                    <!-- Checkin Textarea -->
                                                    <div class="checkin-area">
                                                        <div class="mb-3">
                                                            <label for="fomtextarea" class="form-label">Checkin Message</label>
                                                            <textarea class="form-control" name="fomtextarea" id="fomtextarea" rows="4" placeholder="Enter Checkin Message"></textarea>
                                                        </div>
                                                    </div>

                                                    <!-- Checkout Textarea -->
                                                    <div class="chkout-area d-none">
                                                        <div class="mb-3">
                                                            <label for="fomtextareachkout" class="form-label">Checkout Message</label>
                                                            <textarea class="form-control" name="fomtextareachkout" id="fomtextareachkout" rows="4" placeholder="Enter Checkout Message"></textarea>
                                                        </div>
                                                    </div>

                                                    <!-- Admin Area -->
                                                    <div class="admin-area d-none">
                                                        <div class="mb-3">
                                                            <label for="fomtextareaadminchkin" class="form-label">Admin Checkin Message</label>
                                                            <textarea class="form-control" name="fomtextareaadminchkin" id="fomtextareaadminchkin" rows="4" placeholder="Enter Admin Checkin Message"></textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="fomtextareaadminchkout" class="form-label">Admin Checkout Message</label>
                                                            <textarea class="form-control" name="fomtextareaadminchkout" id="fomtextareaadminchkout" rows="4" placeholder="Enter Admin Checkout Message"></textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Right: Message Labels -->
                                                <div class="col-md-4" id="msglabelfom">
                                                    <p class="text-center fw-bold">Message Label</p>
                                                    <hr>
                                                    <ul id="fomcheckin" class="list-group">
                                                        @foreach (['Hotel Name', 'Address', 'Check In Date', 'Guest First Name', 'Guest Full Name', 'Room Discount', 'Room Number', 'Room Tarrif'] as $label)
                                                            <li class="list-group-item fomitemcheckin">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                    <ul id="fomcheckout" class="list-group d-none">
                                                        @foreach (['Hotel Name', 'Address', 'Debit Amount', 'Credit Amount', 'Bill Amount', 'Bill Number', 'Check Out Date', 'Guest First Name', 'Guest Full Name', 'Payment Mode', 'Room Discount', 'Room Number', 'Room Tarrif'] as $label)
                                                            <li class="list-group-item fomitemcheckin">{{ $label }}</li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="text-center mt-3">
                                                <button type="submit" class="btn btn-success">
                                                    <i class="fa-solid fa-upload"></i> Submit
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <!-- Other Tabs -->
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-2" name="tabby-tabs">
                                    <label class="tabby" for="tab-2">Reservation</label>
                                    <div class="tabby-content"></div>
                                </div>

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-3" name="tabby-tabs">
                                    <label class="tabby" for="tab-3">Point Of Sale</label>
                                    <div class="tabby-content"></div>
                                </div>
                            </div> <!-- tabs -->
                        </div> <!-- card-body -->
                    </div> <!-- card -->
                </div>
            </div>
        </div>
    </div>

    <!-- JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $(function() {
            $('.btn-checkin').on('click', function() {
                $(this).addClass('active');
                $('.btn-chkout, .btn-admin').removeClass('active');
                $('.checkin-area').removeClass('d-none');
                $('.chkout-area, .admin-area').addClass('d-none');
                $('#fomcheckin').removeClass('d-none');
                $('#fomcheckout').addClass('d-none');
            });

            $('.btn-chkout').on('click', function() {
                $(this).addClass('active');
                $('.btn-checkin, .btn-admin').removeClass('active');
                $('.chkout-area').removeClass('d-none');
                $('.checkin-area, .admin-area').addClass('d-none');
                $('#fomcheckin').addClass('d-none');
                $('#fomcheckout').removeClass('d-none');
            });

            $('.btn-admin').on('click', function() {
                $(this).addClass('active');
                $('.btn-checkin, .btn-chkout').removeClass('active');
                $('.admin-area').removeClass('d-none');
                $('.checkin-area, .chkout-area').addClass('d-none');
            });

            $('.fomitemcheckin').on('click', function() {
                const msgvar = $(this).text().trim();

                if (!$('.checkin-area').hasClass('d-none')) {
                    const currentmsg = $('#fomtextarea').val();
                    $('#fomtextarea').val(`${currentmsg} <${msgvar}> `);
                }
                // else if (!$('.chkout-area').hasClass('d-none')) {
                //     const currentmsg = $('#fomtextareachkout').val();
                //     $('#fomtextareachkout').val(`${currentmsg} <${msgvar}> `);
                // } else if (!$('.admin-area').hasClass('d-none')) {
                //     const chkInMsg = $('#fomtextareaadminchkin').val();
                //     const chkOutMsg = $('#fomtextareaadminchkout').val();
                //     $('#fomtextareaadminchkin').val(`${chkInMsg} <${msgvar}> `);
                //     $('#fomtextareaadminchkout').val(`${chkOutMsg} <${msgvar}> `);
                // }
            });
        });
    </script>
@endsection
