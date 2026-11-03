@extends('frontend.layouts.main')
@section('title', 'Contact Us')
@section('main-container')
@section('meta')
    <meta name="description" content="Analysis HMS Contact Now">
    <meta name="keywords" content="Anlaysis hms contact, analysishms phone no, analysishms, analysihmsmobile, how to contact analysishms">
    <meta name="author" content="Analysis Softwares Solutions">
@endsection
<section class="contact-hero text-white text-center d-flex align-items-center justify-content-center position-relative">
    <div class="overlay"></div>
    <div class="content position-relative" data-aos="fade-up">
        <h1 class="display-4 fw-bold">Get in Touch With Us</h1>
        <p class="lead">We’re here to help you simplify your hotel & restaurant operations.</p>
    </div>
</section>

<section class="py-5 container">
    <div class="text-center mb-5" data-aos="fade-up">
        <h2 class="fw-bold">Why Contact Us?</h2>
        <p class="lead">
            Running a hotel or restaurant comes with countless challenges—from managing reservations and banquets
            to keeping track of inventory and ensuring smooth billing. We know how overwhelming it can get.
            That’s why we’re here.
        </p>
        <p>
            Whether you’re struggling with inefficient processes, looking to modernize your operations,
            or just need guidance on using the right tools—our team will work closely with you to solve your problems.
            Think of us as your dedicated tech partner, committed to helping you create flawless guest experiences
            and stress-free management.
        </p>
        <p class="fw-bold">
            No matter the size of your hotel or restaurant, we’ll make sure you always get the right support,
            quick solutions, and future-ready tools.
        </p>
    </div>

    <div class="row g-5">
        <!-- Contact Information -->
        <div class="col-md-4" data-aos="fade-right">
            <h3 class="fw-bold mb-3">Reach Us Directly</h3>
            <h4>Head Office</h4>
            <p>
                <i class="fas fa-map-marker-alt text-primary me-2"></i>
                A-2039, Awas Vikas Hanspuram Naubasta Kanpur-208021, UP India
            </p>
            <p>
                <i class="fas fa-envelope text-primary me-2"></i>
                <a href="mailto:{{ config('app.main_mail') }}">{{ config('app.main_mail') }}</a>
            </p>
            <p>
                <i class="fas fa-phone text-primary me-2"></i>
                +91 {{ config('app.phone') }}
            </p>
            <p>
                <i class="fas fa-clock text-primary me-2"></i>
                Mon - Sat: 9:00 AM - 7:00 PM
            </p>
            <h5 class="fw-bold mt-4">Connect With Us</h5>
        </div>

        <div class="col-md-4" data-aos="fade-right">
            <h3 class="fw-bold mb-3">Reach Us Directly</h3>
            <h4>Corportate Officee</h4>
            <p>
                <i class="fas fa-map-marker-alt text-primary me-2"></i>
                Saptrishi Infosystems Pvt. Ltd., 46/8, Gokhle Vihar Marg Lucknow-226001,UP India
            </p>
            <p>
                <i class="fas fa-envelope text-primary me-2"></i>
                <a href="mailto:{{ config('app.main_mail') }}">{{ config('app.main_mail') }}</a>
            </p>
            <p>
                <i class="fas fa-phone text-primary me-2"></i>
                +91 {{ config('app.phone') }}
            </p>
            <p>
                <i class="fas fa-clock text-primary me-2"></i>
                Mon - Sat: 9:00 AM - 7:00 PM
            </p>
            <h5 class="fw-bold mt-4">Connect With Us</h5>
        </div>

        <div class="col-md-4" data-aos="fade-right">
            <h3 class="fw-bold mb-3">Reach Us Directly</h3>
            <h4>Corportate Officee</h4>
            <p>
                <i class="fas fa-map-marker-alt text-primary me-2"></i>
                Anupam Nagar, Ext.,Near Jiwaji University,City Center, Gwalior-474001, M.P. India
            </p>
            <p>
                <i class="fas fa-envelope text-primary me-2"></i>
                <a href="mailto:{{ config('app.main_mail') }}">{{ config('app.main_mail') }}</a>
            </p>
            <p>
                <i class="fas fa-phone text-primary me-2"></i>
                +91 {{ config('app.phone') }}
            </p>
            <p>
                <i class="fas fa-clock text-primary me-2"></i>
                Mon - Sat: 9:00 AM - 7:00 PM
            </p>
            <h5 class="fw-bold mt-4">Connect With Us</h5>
        </div>

        <div class="d-flex gap-3">
            <a href="https://facebook.com/{{ config('app.facebook') }}" class="text-dark" target="_blank">
                <i class="fab fa-facebook fa-lg"></i>
            </a>
            <a href="https://twitter.com/{{ config('app.twitter') }}" class="text-dark" target="_blank">
                <i class="fab fa-twitter fa-lg"></i>
            </a>
            <a href="https://linkedin.com/in/{{ config('app.linkedin') }}" class="text-dark" target="_blank">
                <i class="fab fa-linkedin fa-lg"></i>
            </a>
            <a href="https://instagram.com/{{ config('app.instagram') }}" class="text-dark" target="_blank">
                <i class="fab fa-instagram fa-lg"></i>
            </a>
        </div>

        <!-- Contact Form -->
        <div class="col-md-7" data-aos="fade-left">
            <h3 class="fw-bold mb-3">Send Us a Message</h3>
            <form id="contactusform">
                <div class="mb-3">
                    <label for="name" class="form-label fw-semibold">Your Name</label>
                    <input type="text" id="name" class="form-control" placeholder="Enter your full name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label fw-semibold">Email Address</label>
                    <input type="email" id="email" class="form-control" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label fw-semibold">Phone Number</label>
                    <input type="text" id="phone" class="form-control" placeholder="Enter your phone number">
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label fw-semibold">Your Message</label>
                    <textarea id="message" rows="5" class="form-control" placeholder="Tell us how we can help you" required></textarea>
                </div>
                <button type="submit" class="btn btn-success px-4 py-2"><i class="fa-regular fa-floppy-disk"></i> Submit</button>
            </form>
        </div>
    </div>
</section>

<style>
    .contact-hero {
        background: url('{{ asset('assets/img/contact.jpg') }}') center/cover no-repeat;
        min-height: 350px;
    }

    .contact-hero .overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5);
    }
</style>

@endsection
