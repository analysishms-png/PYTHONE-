@extends('frontend.layouts.main')
@section('title', 'Banquet Management - Analysis HMS')
@section('meta')
    <meta name="description" content="Analysis HMS Banquet Management software simplifies event bookings, scheduling, billing, and catering management for hotels and event venues.">
    <meta name="keywords" content="Banquet Management, Event Booking Software, Hotel Banquet, Catering Management, Analysis HMS">
    <meta name="author" content="Analysis Softwares Solutions">
@endsection

@section('main-container')
    <section class="service-hero text-white text-center d-flex align-items-center justify-content-center position-relative"
        style="background-image: url('{{ asset('assets/img/banquet.jpg') }}');">

        <div class="overlay"></div>
        <div class="content position-relative" data-aos="fade-up">
            <h1 class="display-4 fw-bold">Banquet Management</h1>
            <p class="lead">Seamless Event & Banquet Operations for Hotels & Venues</p>
        </div>
    </section>

    <section class="py-5 container">
        <div class="row align-items-center">
            <div class="col-md-6 mb-2 mt-2" data-aos="fade-right">
                <img src="{{ asset('assets/img/banqscreen.png') }}" alt="Banquet Management Dashboard" class="img-fluid rounded shadow">
            </div>
            <div class="col-md-6" data-aos="fade-left">
                <h2 class="fw-bold mb-3">Effortless Banquet & Event Handling</h2>
                <p>
                    The <strong>Analysis HMS Banquet Management module</strong> is designed to manage large-scale
                    events, conferences, and celebrations. From booking to billing, every aspect is automated
                    and integrated with your hotel’s operations.
                </p>
                <ul class="list-unstyled mt-3">
                    <li class="mb-2"><i class="fas fa-calendar-check text-primary me-2"></i> Easy event & hall booking</li>
                    <li class="mb-2"><i class="fas fa-users text-success me-2"></i> Guest & seating arrangement management</li>
                    <li class="mb-2"><i class="fas fa-utensils text-warning me-2"></i> Catering & menu planning</li>
                    <li class="mb-2"><i class="fas fa-receipt text-danger me-2"></i> Integrated billing & invoice system</li>
                    <li><i class="fas fa-chart-bar text-info me-2"></i> Real-time occupancy & revenue reports</li>
                </ul>
            </div>
        </div>
    </section>

    <section class="py-5 bg-light">
        <div class="container text-center" data-aos="zoom-in">
            <h2 class="fw-bold mb-4">Why Choose Our Banquet Module?</h2>
            <p class="mb-5">
                Our Banquet Management system is built to simplify event operations while maximizing
                guest satisfaction and revenue. Tailored for hotels, clubs, and convention centers.
            </p>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-hotel fa-2x text-primary mb-3"></i>
                        <h5 class="fw-bold">Hall Scheduling</h5>
                        <p>Manage multiple halls, avoid double bookings, and streamline reservations.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-glass-cheers fa-2x text-success mb-3"></i>
                        <h5 class="fw-bold">Catering Integration</h5>
                        <p>Link catering menus directly with events to deliver exceptional service.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-handshake fa-2x text-danger mb-3"></i>
                        <h5 class="fw-bold">Client Management</h5>
                        <p>Track client preferences, event history, and special requirements.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 container">
        <div class="text-center mb-5" data-aos="fade-up">
            <h2 class="fw-bold">Banquet Management in Action</h2>
            <p>Explore how our software helps you organize flawless events.</p>
        </div>
        <div class="row g-4">
            <div class="col-md-4 text-center" data-aos="zoom-in">
                <i class="bi bi-calendar-check display-4 text-primary mb-3"></i>
                <h5 class="fw-bold mb-2">Seamless Event Scheduling</h5>
                <p>Plan and manage multiple banquet events with ease using our intuitive scheduling tools. Avoid conflicts and keep everything on track.</p>
            </div>
            <div class="col-md-4 text-center" data-aos="zoom-in" data-aos-delay="200">
                <i class="bi bi-people display-4 text-success mb-3"></i>
                <h5 class="fw-bold mb-2">Smart Resource Allocation</h5>
                <p>Assign halls, staff, and catering services efficiently. Our system ensures optimal usage of resources for maximum productivity.</p>
            </div>
            <div class="col-md-4 text-center" data-aos="zoom-in" data-aos-delay="400">
                <i class="bi bi-star-fill display-4 text-warning mb-3"></i>
                <h5 class="fw-bold mb-2">Guest Experience Excellence</h5>
                <p>Deliver a memorable experience with organized seating, menu planning, and real-time updates that keep guests delighted.</p>
            </div>
        </div>
    </section>
@endsection
