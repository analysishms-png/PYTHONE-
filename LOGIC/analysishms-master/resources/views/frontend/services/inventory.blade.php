@extends('frontend.layouts.main')
@section('title', 'Inventory Management - Analysis HMS')
@section('meta')
    <meta name="description" content="Analysis HMS Inventory Management software helps hotels manage stock, purchase orders, requisitions, and reporting with accuracy and efficiency.">
    <meta name="keywords" content="Hotel Inventory Management, Stock Control, Purchase Order, Requisition, Analysis HMS">
    <meta name="author" content="Analysis Softwares Solutions">
@endsection

@section('main-container')

    <section class="service-hero text-white text-center d-flex align-items-center justify-content-center position-relative"
        style="background-image: url('{{ asset('assets/img/inventory.jpg') }}');">

        <div class="overlay"></div>

        <div class="content position-relative" data-aos="fade-up">
            <h1 class="display-4 fw-bold">Inventory Management</h1>
            <p class="lead">Streamlined Stock & Purchase Management for Hotels</p>
        </div>
    </section>

    <section class="py-5 container">
        <div class="row align-items-center">
            <div class="col-md-6" data-aos="fade-right">
                <img src="{{ asset('assets/img/inventoryscreen.png') }}" alt="Inventory Management Dashboard" class="img-fluid rounded shadow">
            </div>
            <div class="col-md-6" data-aos="fade-left">
                <h2 class="fw-bold mb-3">Smarter Hotel Inventory Control</h2>
                <p>
                    The <strong>Analysis HMS Inventory Management module</strong> simplifies the way hotels
                    handle stock, purchases, and requisitions. By automating processes and integrating
                    with other hotel operations, it ensures accuracy, reduces wastage, and optimizes costs.
                </p>
                <ul class="list-unstyled mt-3">
                    <li class="mb-2"><i class="fas fa-boxes text-primary me-2"></i> Centralized stock management</li>
                    <li class="mb-2"><i class="fas fa-shopping-cart text-success me-2"></i> Purchase orders & approvals</li>
                    <li class="mb-2"><i class="fas fa-exchange-alt text-warning me-2"></i> Stock transfers across outlets</li>
                    <li class="mb-2"><i class="fas fa-file-invoice-dollar text-danger me-2"></i> Billing & vendor management</li>
                    <li><i class="fas fa-chart-line text-info me-2"></i> Detailed stock usage & cost analysis reports</li>
                </ul>
            </div>
        </div>
    </section>

    <section class="py-5 bg-light">
        <div class="container text-center" data-aos="zoom-in">
            <h2 class="fw-bold mb-4">Key Features of Inventory Module</h2>
            <p class="mb-5">
                Our Inventory system is built to give hotels **real-time control** over
                their supplies and reduce operational leakages.
            </p>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-receipt fa-2x text-primary mb-3"></i>
                        <h5 class="fw-bold">Purchase Management</h5>
                        <p>Generate purchase orders, track vendor bills, and manage approvals seamlessly.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-warehouse fa-2x text-success mb-3"></i>
                        <h5 class="fw-bold">Stock Transfers</h5>
                        <p>Transfer stock across outlets, track shortages, and maintain real-time levels.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-4 bg-white rounded shadow h-100">
                        <i class="fas fa-chart-pie fa-2x text-danger mb-3"></i>
                        <h5 class="fw-bold">Reports & Insights</h5>
                        <p>View detailed reports on consumption, wastage, and cost analysis instantly.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5 container">
        <div class="text-center mb-5" data-aos="fade-up">
            <h2 class="fw-bold">Inventory Management in Action</h2>
            <p>See how our software helps hotels maintain precise stock records and smooth operations.</p>
        </div>
        <div class="row g-4">
            <div class="col-md-4 text-center" data-aos="zoom-in">
                <i class="bi bi-box-seam display-4 text-primary mb-3"></i>
                <h5 class="fw-bold mb-2">Real-time Stock Tracking</h5>
                <p>Monitor every item in your inventory with instant updates to prevent shortages or overstocking.</p>
            </div>
            <div class="col-md-4 text-center" data-aos="zoom-in" data-aos-delay="200">
                <i class="bi bi-clipboard-data display-4 text-success mb-3"></i>
                <h5 class="fw-bold mb-2">Automated Reorder Alerts</h5>
                <p>Get timely notifications when stock levels fall below the threshold and never miss reordering essentials.</p>
            </div>
            <div class="col-md-4 text-center" data-aos="zoom-in" data-aos-delay="400">
                <i class="bi bi-bar-chart-line-fill display-4 text-warning mb-3"></i>
                <h5 class="fw-bold mb-2">Detailed Usage Reports</h5>
                <p>Generate insightful reports on consumption trends, wastage, and supplier performance to optimize operations.</p>
            </div>
        </div>
    </section>

@endsection
