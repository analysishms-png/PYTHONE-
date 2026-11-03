@extends('frontend.layouts.main')
@section('title', 'Front Office Management - Analysis HMS')
@section('meta')
    <meta name="description" content="Analysis HMS Front Office Management software streamlines reservations, check-ins, check-outs, billing, and guest services for hotels.">
    <meta name="keywords" content="Front Office Management, Hotel Reservation System, Guest Check-in, Billing Software, Analysis HMS">
    <meta name="author" content="Analysis Softwares Solutions">
@endsection

@section('main-container')
    <!-- Hero Section -->
    <section class="service-hero text-white text-center d-flex align-items-center justify-content-center position-relative"
        style="background-image: url('{{ asset('assets/img/frontoffice.jpg') }}');">

        <div class="overlay"></div>
        <div class="content position-relative" data-aos="fade-up">
            <h1 class="display-4 fw-bold">Front Office Management</h1>
            <p class="lead">Efficient Guest Handling & Smooth Hotel Operations</p>
        </div>
    </section>

    <!-- Info Section -->
    <section class="py-5 container">
        <div class="row align-items-center">
            <div class="col-md-6 mb-2 mt-2" data-aos="fade-right">
                <img src="{{ asset('assets/img/frontofficescreen.png') }}" alt="Front Office Dashboard" class="img-fluid rounded shadow">
            </div>
            <div class="col-md-6" data-aos="fade-left">
                <h2 class="fw-bold mb-3">Streamlined Guest Services</h2>
                <p>
                    The <strong>Analysis HMS Front Office Management module</strong> empowers your hotel
                    staff to deliver quick, reliable, and personalized services. From reservations to
                    check-outs, everything is automated and easy to manage.
                </p>
                <ul class="list-unstyled mt-3">
                    <li class="mb-2"><i class="fas fa-bed text-primary me-2"></i> Quick room reservations & allocations</li>
                    <li class="mb-2"><i class="fas fa-id-card text-success me-2"></i> Smooth guest check-in & check-out</li>
                    <li class="mb-2"><i class="fas fa-money-bill-wave text-warning me-2"></i> Automated billing & folio management</li>
                    <li class="mb-2"><i class="fas fa-concierge-bell text-danger me-2"></i> Guest requests & concierge tracking</li>
                    <li><i class="fas fa-chart-line text-info me-2"></i> Real-time occupancy & revenue reports</li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Why Choose Section -->
    <section class="py-5 bg-light">
        <div class="container text-center" data-aos="zoom-in">
            <h2 class="fw-bold mb-4">Why Choose Our Front Office Module?</h2>
            <p class="mb-5">
                Our Front Office Management system is designed to improve guest satisfaction while 
                maximizing hotel efficiency. Tailored for hotels, resorts, and hospitality businesses.
            </p>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-calendar-alt fa-2x text-primary mb-3"></i>
                        <h5 class="fw-bold">Reservation Management</h5>
                        <p>Handle individual & group bookings with real-time room availability updates.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-door-open fa-2x text-success mb-3"></i>
                        <h5 class="fw-bold">Check-in & Check-out</h5>
                        <p>Fast and seamless guest arrivals and departures with digital records.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-cash-register fa-2x text-danger mb-3"></i>
                        <h5 class="fw-bold">Billing & Payments</h5>
                        <p>Generate invoices instantly and support multiple payment methods.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-5 container">
        <div class="text-center mb-5" data-aos="fade-up">
            <h2 class="fw-bold">Front Office in Action</h2>
            <p>See how our software enhances your hotel’s front desk operations.</p>
        </div>
        <div class="row g-4">
            <div class="col-md-4 text-center" data-aos="zoom-in">
                <i class="bi bi-journal-check display-4 text-primary mb-3"></i>
                <h5 class="fw-bold mb-2">Quick Reservations</h5>
                <p>Book rooms instantly and avoid errors with automated reservation handling.</p>
            </div>
            <div class="col-md-4 text-center" data-aos="zoom-in" data-aos-delay="200">
                <i class="bi bi-people-fill display-4 text-success mb-3"></i>
                <h5 class="fw-bold mb-2">Guest Profile Management</h5>
                <p>Track guest history, preferences, and requests to offer personalized services.</p>
            </div>
            <div class="col-md-4 text-center" data-aos="zoom-in" data-aos-delay="400">
                <i class="bi bi-graph-up-arrow display-4 text-warning mb-3"></i>
                <h5 class="fw-bold mb-2">Operational Insights</h5>
                <p>Get instant insights on occupancy, revenue, and guest satisfaction trends.</p>
            </div>
        </div>
    </section>
@endsection
