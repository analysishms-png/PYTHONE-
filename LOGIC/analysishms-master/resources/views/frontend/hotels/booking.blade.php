@extends('frontend.hotels.layouts.main')
@section('title', '{{ percompdata()->comp_name }}')
@section('meta')
    <meta name="description" content="{{ percompdata()->metadesc }}">
    <meta name="keywords" content="{{ percompdata()->metakey_word }}">
    <meta name="author" content="{{ config('app.name') }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('main-container')

    <div class="container py-4">
        <div class="card shadow-lg mx-auto" style="max-width: 900px;">

            <header class="card-header bg-white border-bottom">
                <div class="d-flex flex-column flex-sm-row justify-content-between align-items-sm-center">
                    <h1 class="h5 h-sm4 fw-bold text-dark d-flex align-items-center mb-1 mb-sm-0">
                        Review your Booking
                        <span class="ms-2 text-danger fs-5">💰</span>
                    </h1>
                    {{-- <p class="small text-muted mb-0">
                        Best in Quality: <span class="fw-semibold text-success">MMT ValueStays</span> is a great choice!
                    </p> --}}
                </div>
            </header>

            <section class="card-body">
                <div class="d-flex justify-content-between align-items-start">
                    <div class="flex-grow-1 pe-3">
                        <h2 class="h5 fw-bold text-dark">
                            {{ percompdata()->comp_name }}
                        </h2>

                        <div class="d-flex align-items-center mt-1">
                            <div class="text-warning fs-6 me-2">
                                ★★★<span class="text-secondary">★</span>
                            </div>
                            <span class="small text-muted">(98 Reviews)</span>
                        </div>

                        <p class="small text-muted mt-1">
                            {{ percompdata()->address1 }}{{ percompdata()->address2 ? ', ' . percompdata()->address2 : '' }}
                        </p>

                        {{-- <span class="badge bg-success mt-2">Couple Friendly</span> --}}
                    </div>

                    <div class="flex-shrink-0" style="width:80px; height:80px;">
                        <img src="{{ asset('storage/admin/property_logo/' . percompdata()->logo) }}"
                            onerror="this.onerror=null;this.src='https://placehold.co/80x80/007bff/white?text=Resort+Image'"
                            alt="Resort View" class="img-fluid rounded shadow-sm object-fit-cover w-100 h-100">
                    </div>
                </div>

                <div class="row text-sm mt-4 pt-3 border-top">
                    <div class="col-6 col-md-3 border-end pe-3">
                        <p class="text-uppercase text-muted mb-1 small">Check In</p>
                        <p class="fw-bold mb-0">
                            {{ date('D d M', strtotime($data['checkin'])) }} <span class="fw-normal">{{ date('Y', strtotime($data['checkin'])) }}</span>
                        </p>
                        <p class="small text-muted mb-0">10 AM</p>
                    </div>
                    <div class="col-6 col-md-3 border-end pe-3">
                        <p class="text-uppercase text-muted mb-1 small">Check Out</p>
                        <p class="fw-bold mb-0">
                            {{ date('D d M', strtotime($data['checkout'])) }} <span class="fw-normal">{{ date('Y', strtotime($data['checkout'])) }}</span>
                        </p>
                        <p class="small text-muted mb-0">11 AM</p>
                    </div>
                    <div class="col-12 col-md-6 d-flex justify-content-between align-items-center ps-md-3 mt-2 mt-md-0">
                        <p class="small fw-semibold mb-0">
                            {{ (strtotime($data['checkout']) - strtotime($data['checkin'])) / (60 * 60 * 24) }} Nights
                        </p>
                        <p class="small fw-semibold mb-0">
                            {{ $data['adults'] }} Adults
                        </p>
                        <p class="small fw-semibold mb-0">
                            {{ $data['rooms'] }} Room
                        </p>
                    </div>
                </div>

                <div class="mt-4 pt-3 border-top">
                    <h3 class="h6 fw-semibold text-dark mb-1">
                        {{ $data['categorydata']->name }}
                    </h3>

                    @if ($data['categorydata']->image_path)
                        @php
                            $images = explode(',', $data['categorydata']->image_path);
                        @endphp
                        <div class="d-flex flex-wrap gap-2 mt-2">
                            @foreach ($images as $image)
                                <div style="width: 100px; height: 100px; cursor: pointer;">
                                    <img data-bs-toggle="modal" data-bs-target="#imageModal{{ $loop->index }}"
                                        src="{{ asset('storage/property/roomcategory/' . trim($image)) }}"
                                        onerror="this.onerror=null;this.src='https://placehold.co/100x100/007bff/white?text=Room+Image'"
                                        alt="Room Image" class="img-fluid rounded shadow-sm object-fit-cover w-100 h-100">
                                </div>
                                <div class="modal fade" id="imageModal{{ $loop->index }}" tabindex="-1" aria-labelledby="imageModalLabel{{ $loop->index }}" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="imageModalLabel{{ $loop->index }}">Room Image</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <img src="{{ asset('storage/property/roomcategory/' . trim($image)) }}"
                                                    onerror="this.onerror=null;this.src='https://placehold.co/800x600/007bff/white?text=Room+Image'"
                                                    alt="Room Image" class="img-fluid w-100">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    @endif
                </div>
            </section>

            <section class="card-section p-4 bg-light">
                <h3 class="h6 fw-bold text-dark mb-2">Important Information</h3>
                <ul class="list-unstyled small text-dark ps-3">
                    <li>• Primary Guest should be at least 18 years of age.</li>
                    <li>• Govt. ID, Driving License, Passport and Aadhaar are accepted as ID proof(s)</li>
                </ul>
            </section>

            <section class="card-section p-4">
                <h3 class="h6 fw-bold text-dark mb-3">Guest Details</h3>
                <form id="guestregistrationform" class="row g-3" method="POST">
                    @csrf
                    <input type="hidden" value="{{ $data['categorydata']->cat_code }}" name="cat_code" required>
                    <input type="hidden" value="{{ $data['plandata']->pcode ?? '' }}" name="plan_code" required>
                    <input type="hidden" value="{{ $data['propertyid'] }}" name="propertyid" required>
                    <input type="hidden" value="{{ $data['checkin'] }}" name="checkin_date" required>
                    <input type="hidden" value="{{ $data['checkout'] }}" name="checkout_date" required>
                    <input type="hidden" value="{{ $data['rooms'] }}" name="total_rooms" required>
                    <input type="hidden" value="{{ $data['adults'] }}" name="total_adult" required>
                    <input type="hidden" value="{{ $data['children'] }}" name="total_child" required>

                    <div class="col-12 col-sm-2">
                        <label for="title" class="form-label small text-muted">TITLE</label>
                        <select id="title" name="title" class="form-select form-select-sm">
                            <option>Mr</option>
                            <option>Ms</option>
                            <option>Mrs</option>
                        </select>
                    </div>

                    <div class="col-12 col-sm-5">
                        <label for="firstname" class="form-label small text-muted">FULL NAME</label>
                        <input type="text" name="firstname" id="firstname" placeholder="First Name" class="form-control form-control-sm" required>
                    </div>

                    <div class="col-12 col-sm-5">
                        <label for="lastname" class="form-label small text-muted">&nbsp;</label>
                        <input type="text" name="lastname" id="lastname" placeholder="Last Name" class="form-control form-control-sm" required>
                    </div>

                    <div class="col-12 col-sm-6">
                        <label for="email" class="form-label small text-muted">EMAIL ADDRESS </label>
                        <input type="email" name="email" id="email" placeholder="Email ID" class="form-control form-control-sm" required>
                    </div>

                    <div class="col-12 col-sm-6">
                        <label for="mobile" class="form-label small text-muted">WHATSAPP NUMBER <span class="text-muted">(Booking voucher will be sent to this number)</span></label>
                        <div class="input-group input-group-sm">
                            <span class="input-group-text">+91</span>
                            <input type="tel" name="mobile" id="mobile" placeholder="Contact Number" class="form-control" required>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6">
                        <label for="address" class="form-label small text-muted">ADDRESS</label>
                        <textarea name="address" id="address" class="form-control" rows="3" required></textarea>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="terms-checkbox" checked>
                        <label class="form-check-label small text-dark" for="terms-checkbox">
                            By proceeding, I agree to MakeMyTrip's
                            <a href="#" class="text-primary text-decoration-none">User Agreement</a>,
                            <a href="#" class="text-primary text-decoration-none">Terms of Service</a> and
                            <a href="#" class="text-primary text-decoration-none">Cancellation & Property Booking Policies</a>.
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary w-100 text-white fw-bold py-2">
                        Book Now
                    </button>
                </form>
            </section>

        </div>
    </div>
    <script>
        $(document).ready(function() {
            $('#guestregistrationform').on('submit', function(e) {
                e.preventDefault();

                let form = $(this);

                $.ajax({
                    type: 'POST',
                    url: "{{ route('hotelbookingsubmit') }}",
                    data: form.serialize(),

                    success: function(response) {
                        let reservation = response.reservation;
                        let bookingId = response.booking_id;

                        Swal.fire({
                            title: 'Booking Confirmed!',
                            html: 'Your booking has been submitted successfully.<br><small>Your voucher will be downloaded automatically.</small>',
                            icon: 'success',
                            confirmButtonText: 'Download Voucher & Continue',
                            showCancelButton: true,
                            cancelButtonText: 'Skip Download'
                        }).then(res => {
                            if (res.isConfirmed) {
                                const downloadUrl = "{{ url('hotels/' . percompdata()->propertyid . '/hotelbooking/voucher') }}/" + bookingId;

                                window.open(downloadUrl, '_blank');

                                Swal.fire({
                                    title: 'Generating Voucher...',
                                    text: 'Please wait while we prepare your booking voucher.',
                                    allowOutsideClick: false,
                                    showConfirmButton: false,
                                    didOpen: () => {
                                        Swal.showLoading();
                                    }
                                });

                                setTimeout(() => {
                                    window.location.href = "{{ route('hotelbookingthankyou', ['propertyid' => percompdata()->propertyid]) }}";
                                }, 2000);

                            } else {
                                window.location.href = "{{ route('hotelbookingthankyou', ['propertyid' => percompdata()->propertyid]) }}";
                            }
                        });
                    },

                    error: function(xhr) {
                        console.log(xhr.responseText);

                        Swal.fire({
                            title: 'Error!',
                            text: 'There was an error submitting your booking. Please try again.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                    }
                });
            });
        });
    </script>
@endsection
