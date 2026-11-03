@extends('frontend.hotels.layouts.main')
@section('title')
    Booking Confirmed - {{ percompdata() ? percompdata()->comp_name : 'Hotel' }}
@endsection
@section('meta')
    <meta name="description" content="{{ percompdata() ? percompdata()->metadesc : '' }}">
    <meta name="keywords" content="{{ percompdata() ? percompdata()->metakey_word : '' }}">
    <meta name="author" content="{{ config('app.name') }}">
@endsection

@section('main-container')
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card shadow-lg border-0">
                    <div class="card-body text-center p-5">
                        <!-- Success Icon -->
                        <div class="mb-4">
                            <div class="bg-success rounded-circle d-inline-flex align-items-center justify-content-center"
                                style="width: 80px; height: 80px;">
                                <i class="fas fa-check text-white" style="font-size: 2rem;"></i>
                            </div>
                        </div>

                        <!-- Success Message -->
                        <h1 class="h2 text-success mb-3">Booking Confirmed!</h1>
                        <p class="lead text-muted mb-4">
                            Thank you for choosing {{ percompdata() ? percompdata()->comp_name : 'us' }}. Your booking has been successfully submitted.
                        </p>

                        @if (percompdata() && percompdata()->payment_qr_code)
                            <div class="payment-now">
                                <img src="{{ asset('/storage/property/qrcode/' . percompdata()->payment_qr_code) }}" alt="QR Code" class="img-fluid">
                                <p class="mt-2">Scan the QR code to make a payment.</p>
                            </div>
                        @endif

                        <!-- Booking Details Card -->
                        <div class="bg-light rounded p-4 mb-4">
                            <h3 class="h5 mb-3">What's Next?</h3>
                            <div class="row text-start">
                                {{-- <div class="col-md-6 mb-3">
                                    <div class="d-flex align-items-start">
                                        <i class="fas fa-envelope text-primary me-3 mt-1"></i>
                                        <div>
                                            <h6 class="mb-1">Confirmation Email</h6>
                                            <small class="text-muted">You'll receive a booking confirmation email shortly.</small>
                                        </div>
                                    </div>
                                </div> --}}
                                <div class="col-md-6 mb-3">
                                    <div class="d-flex align-items-start">
                                        <i class="fas fa-mobile-alt text-primary me-3 mt-1"></i>
                                        <div>
                                            <h6 class="mb-1">SMS Confirmation</h6>
                                            <small class="text-muted">Booking details will be sent to your mobile number.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="d-flex align-items-start">
                                        <i class="fas fa-id-card text-primary me-3 mt-1"></i>
                                        <div>
                                            <h6 class="mb-1">Check-in Requirements</h6>
                                            <small class="text-muted">Bring a valid government-issued ID for check-in.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="d-flex align-items-start">
                                        <i class="fas fa-phone text-primary me-3 mt-1"></i>
                                        <div>
                                            <h6 class="mb-1">24/7 Support</h6>
                                            <small class="text-muted">Contact us anytime for assistance.</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Contact Information -->
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <div class="border rounded p-3 h-100">
                                    <h6 class="text-primary mb-2">
                                        <i class="fas fa-map-marker-alt me-2"></i>Address
                                    </h6>
                                    <small class="text-muted">
                                        {{ percompdata() ? percompdata()->address1 : 'N/A' }}{{ percompdata() && percompdata()->address2 ? ', ' . percompdata()->address2 : '' }}
                                    </small>
                                </div>
                            </div>
                            <div class="col-md-6 mt-3 mt-md-0">
                                <div class="border rounded p-3 h-100">
                                    <h6 class="text-primary mb-2">
                                        <i class="fas fa-phone-alt me-2"></i>Contact
                                    </h6>
                                    <small class="text-muted">
                                        Phone: {{ percompdata() ? percompdata()->mobile ?? 'N/A' : 'N/A' }}<br>
                                        Email: {{ percompdata() ? percompdata()->email ?? 'N/A' : 'N/A' }}
                                    </small>
                                </div>
                            </div>
                        </div>

                        <!-- Action Buttons -->
                        <div class="row">
                            <div class="col-sm-6 mb-2">
                                <a href="{{ url('hotels/' . percompdata()->propertyid) }}" class="btn btn-outline-primary w-100">
                                    <i class="fas fa-home me-2"></i>Back to Home
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <a href="{{ url('hotels/' . percompdata()->propertyid . '/contact') }}" class="btn btn-primary w-100">
                                    <i class="fas fa-envelope me-2"></i>Contact Us
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        .fa-check {
            animation: checkmark 0.6s ease-in-out;
        }

        @keyframes checkmark {
            0% {
                transform: scale(0);
                opacity: 0;
            }

            50% {
                transform: scale(1.2);
                opacity: 1;
            }

            100% {
                transform: scale(1);
                opacity: 1;
            }
        }

        .card {
            transition: transform 0.3s ease;
        }

        .border {
            transition: border-color 0.3s ease;
        }

        .border:hover {
            border-color: #007bff !important;
        }
    </style>
@endsection
