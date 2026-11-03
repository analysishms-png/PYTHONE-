@extends('frontend.layouts.main')
@section('title', 'Point of Sale (POS) - Analysis HMS')
@section('meta')
    <meta name="description" content="Analysis HMS Point of Sale (POS) system streamlines hotel, restaurant, and retail operations. Manage sales, billing, inventory, and reporting with ease.">
    <meta name="keywords" content="Point of Sale, POS Software, Hotel POS, Restaurant POS, Analysis HMS">
    <meta name="author" content="Analysis Softwares Solutions">
@endsection

@section('main-container')
    <section class="service-hero text-white text-center d-flex align-items-center justify-content-center position-relative"
        style="background-image: url('{{ asset('assets/img/hotel_home.svg') }}');">

        <div class="overlay"></div>

        <div class="content position-relative" data-aos="fade-up">
            <h1 class="display-4 fw-bold">Point of Sale (POS)</h1>
            <p class="lead">Fast, Secure & Seamless Sales Management for Hotels & Restaurants</p>
        </div>
    </section>

    <section class="py-5 container">
        <div class="row align-items-center">
            <div class="col-md-6 mt-2 mb-2" data-aos="fade-right">
                <img src="{{ asset('assets/img/pos.png') }}" alt="POS Dashboard" class="img-fluid rounded shadow">
            </div>
            <div class="col-md-6" data-aos="fade-left">
                <h2 class="fw-bold mb-3">Smarter Point of Sale Solution</h2>
                <p>
                    The <strong>Analysis HMS POS module</strong> is built to handle high-volume sales transactions
                    for hotels, restaurants, and retail stores. It ensures speed, security, and reliability,
                    helping staff serve customers quickly while maintaining accurate sales records.
                </p>
                <ul class="list-unstyled mt-3">
                    <li class="mb-2"><i class="fas fa-cash-register text-primary me-2"></i> Quick & secure billing process</li>
                    <li class="mb-2"><i class="fas fa-utensils text-success me-2"></i> Integrated with restaurant orders & menus</li>
                    <li class="mb-2"><i class="fas fa-box-open text-warning me-2"></i> Real-time inventory deduction</li>
                    <li class="mb-2"><i class="fas fa-file-invoice-dollar text-danger me-2"></i> Automated tax & invoice generation</li>
                    <li><i class="fas fa-chart-line text-info me-2"></i> Comprehensive daily sales reports</li>
                </ul>
            </div>
        </div>
    </section>

    <section class="py-5 bg-light">
        <div class="container text-center" data-aos="zoom-in">
            <h2 class="fw-bold mb-4">Why Choose Our POS?</h2>
            <p class="mb-5">
                Designed with flexibility and scalability in mind, our POS integrates with all hotel
                departments, providing a unified billing and revenue management experience.
            </p>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-mobile-alt fa-2x text-primary mb-3"></i>
                        <h5 class="fw-bold">Mobile Friendly</h5>
                        <p>Run POS on tablets or smartphones for quick service anywhere in your property.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-cloud fa-2x text-success mb-3"></i>
                        <h5 class="fw-bold">Cloud Integrated</h5>
                        <p>Access your sales and billing data in real time from any device securely.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-lock fa-2x text-danger mb-3"></i>
                        <h5 class="fw-bold">Secure Payments</h5>
                        <p>Supports multiple payment gateways with end-to-end encryption.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 container">
        <div class="text-center mb-5" data-aos="fade-up">
            <h2 class="fw-bold">POS in Action</h2>
            <p>See how our POS simplifies operations with a modern interface.</p>
        </div>
        <div class="row g-4">
            <div class="col-md-4" data-aos="zoom-in">
                <a data-fancybox="gallery" href="/images/pos1.jpg">
                    <img src="/images/pos1-thumb.jpg" class="img-fluid rounded shadow" alt="POS Screenshot 1">
                </a>
            </div>
            <div class="col-md-4" data-aos="zoom-in" data-aos-delay="200">
                <a data-fancybox="gallery" href="/images/pos2.jpg">
                    <img src="/images/pos2-thumb.jpg" class="img-fluid rounded shadow" alt="POS Screenshot 2">
                </a>
            </div>
            <div class="col-md-4" data-aos="zoom-in" data-aos-delay="400">
                <a data-fancybox="gallery" href="/images/pos3.jpg">
                    <img src="/images/pos3-thumb.jpg" class="img-fluid rounded shadow" alt="POS Screenshot 3">
                </a>
            </div>
        </div>
    </section>
@endsection
