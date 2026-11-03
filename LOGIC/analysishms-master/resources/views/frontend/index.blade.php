@extends('frontend.layouts.main')

@section('main-container')
    {{-- <section id="hero">
        <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

            <div class="carousel-inner" role="listbox">

                <!-- Slide 1 -->
                <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg);">
                    <div class="carousel-container">
                        <div class="carousel-content animate__animated animate__fadeInUp">
                            <h2>Welcome to <span>Analysis</span></h2>
                            <p></p>
                            <div class="text-center"><a href="" class="btn-get-started">Read More</a></div>
                        </div>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item" style="background-image: url(assets/img/slide/slide-2.jpg);">
                    <div class="carousel-container">
                        <div class="carousel-content animate__animated animate__fadeInUp">
                            <h2>Analysis HMS</h2>
                            <p></p>
                            <div class="text-center"><a href="" class="btn-get-started">Read More</a></div>
                        </div>
                    </div>
                </div>

                <!-- Slide 3 -->
                <div class="carousel-item" style="background-image: url(assets/img/slide/slide-3.jpg);">
                    <div class="carousel-container">
                        <div class="carousel-content animate__animated animate__fadeInUp">
                            <h2>Analysis HMS</h2>
                            <p></p>
                            <div class="text-center"><a href="" class="btn-get-started">Read More</a></div>
                        </div>
                    </div>
                </div>

            </div>

            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon bx bx-left-arrow" aria-hidden="true"></span>
            </a>

            <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon bx bx-right-arrow" aria-hidden="true"></span>
            </a>

            <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        </div>
    </section> --}}

    {{-- <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hotel Management Software | Streamline Your Hotel Operations</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- AOS CSS -->
        <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">

        <!-- FontAwesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="styles.css" rel="stylesheet">
    </head>

    <body> --}}

    <!-- Hero Section -->
    <div class="custom-index">
        <section id="hero" class="hero-section text-center text-white position-relative">
            <div class="hero-overlay position-absolute"></div>
            <div class="container position-relative z-1 py-4">
                <h1 class="display-4 mb-4" data-aos="fade-up">
                    Smart Cloud Based Hotel Management Software for Modern Hotels
                </h1>
                <p class="lead mb-5" data-aos="fade-up" data-aos-delay="200">
                    Manage your hotel operations with ease using our cloud based hotel management software,
                    built to help hotels work faster, reduce manual effort, and deliver a better guest experience.
                </p>
                <a href="#features" class="btn btn-primary btn-md" data-aos="zoom-in" data-aos-delay="400">
                    Explore Features
                </a>
            </div>
        </section>

        <!-- Features Section -->
        <section id="features" class="features-section py-5">
            <div class="container">
                <h2 class="text-center mb-5" data-aos="fade-up">
                    Comprehensive Hotel Management Features
                </h2>
                <div class="row g-4">
                    <!-- Feature Cards (will be dynamically populated) -->
                    <div class="col-md-4" data-aos="fade-right">
                        <div class="feature-card p-4 text-center">
                            <i class="fas fa-calendar-check fa-3x mb-3"></i>
                            <h4>Reservation Booking</h4>
                            <p>Seamless online and walk-in room reservations</p>
                        </div>
                    </div>
                    <div class="col-md-4" data-aos="fade-up">
                        <div class="feature-card p-4 text-center">
                            <i class="fas fa-cash-register fa-3x mb-3"></i>
                            <h4>Point of Sale (POS)</h4>
                            <p>Efficient sales billing and order management</p>
                        </div>
                    </div>
                    <div class="col-md-4" data-aos="fade-left">
                        <div class="feature-card p-4 text-center">
                            <i class="fas fa-utensils fa-3x mb-3"></i>
                            <h4>Kitchen Order Ticket</h4>
                            <p>Streamlined restaurant order tracking</p>
                        </div>
                    </div>
                    <!-- More feature cards will follow similar pattern -->
                </div>
            </div>
        </section>

        <!-- Why Choose Us Section -->
        <section id="why-choose-us" class="py-5 bg-light">
            <div class="container">
                <h2 class="text-center mb-5" data-aos="fade-up">Why Choose Our Solution</h2>
                <div class="row g-4">
                    <div class="col-md-3" data-aos="zoom-in">
                        <div class="choose-card text-center p-4">
                            <i class="fas fa-user-friendly fa-3x mb-3"></i>
                            <h5>Easy to Use</h5>
                            <p>Intuitive interface for all staff levels</p>
                        </div>
                    </div>
                    <div class="col-md-3" data-aos="zoom-in" data-aos-delay="100">
                        <div class="choose-card text-center p-4">
                            <i class="fas fa-mobile-alt fa-3x mb-3"></i>
                            <h5>Mobile Friendly</h5>
                            <p>Access your hotel management tools anywhere</p>
                        </div>
                    </div>
                    <div class="col-md-3" data-aos="zoom-in" data-aos-delay="200">
                        <div class="choose-card text-center p-4">
                            <i class="fas fa-list-alt fa-3x mb-3"></i>
                            <h5>Comprehensive Features</h5>
                            <p>All-in-one solution for hotel operations</p>
                        </div>
                    </div>
                    <div class="col-md-3" data-aos="zoom-in" data-aos-delay="300">
                        <div class="choose-card text-center p-4">
                            <i class="fas fa-cogs fa-3x mb-3"></i>
                            <h5>Customizable</h5>
                            <p>Tailored to your specific hotel needs</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Demo Request Section -->
        <section id="demo-request" class="py-5 bg-light">
            <div class="container">
                <div class="row">
                    <div style="font-weight: 700;" class="col-md-6" data-aos="fade-right">
                        <h2>Request a Demo Today</h2>
                        <p>Experience the power of our hotel management solution</p>
                        <div style="border-bottom: 1px solid;" class="contact-info mb-4">
                            <h5>For Demo</h5>
                            <p>Call Now: <i class="fa-solid fa-phone"></i> <a
                                    href="tel: {{ config('app.phone', '61380170') }}">{{ config('app.phone', '9161380170') }}</a>
                            </p>
                        </div>
                        <div style="border-bottom: 1px solid;" class="contact-info mb-4">
                            <h5>For Support</h5>
                            <p>Call Now: <i class="fa-solid fa-phone"></i> <a href="tel: 18005700898">18005700898</a></p>
                            <p><i class="fas fa-envelope me-2"></i> <a
                                    href="mailto:{{ config('app.email', 'support.analysis@live.com') }}">{{ config('app.email', 'support.analysis@live.com') }}</a>
                            </p>
                        </div>
                    </div>

                    <div class="col-md-6" data-aos="fade-left">

                        {{-- Success Message Alert --}}
                        @if (session('success'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>Success!</strong> {{ session('success') }}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>
                            </div>
                        @endif
                        <form action="{{ route('demo-request.store') }}" method="POST" id="hotelUniqueDemoForm">
                            @csrf

                            <div class="mb-3">
                                <input type="text" class="form-control" name="name" placeholder="Your Name" required>
                            </div>
                            <div class="mb-3">
                                <input type="email" class="form-control" name="email" placeholder="Email Address"
                                    required>
                            </div>
                            <div class="mb-3">
                                <input type="tel" class="form-control" name="phone_number" placeholder="Phone Number">
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" name="hotel_name" placeholder="Hotel Name">
                            </div>
                            <div class="mb-3">
                                <textarea class="form-control" name="message" placeholder="Your Message" rows="4"></textarea>
                            </div>

                            <button type="submit" class="btn btn-primary w-100">Request Demo</button>
                        </form>

                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials Section -->
        <section id="testimonials" class="py-5">
            <div class="container">
                <h2 class="text-center mb-5" data-aos="fade-up">What Hotel Managers Say</h2>
                <div class="row g-4">
                    <div class="col-md-4" data-aos="fade-right">
                        <div class="testimonial-card p-4">
                            <p class="fst-italic mb-4">"This software transformed our hotel operations overnight. Highly
                                recommended!"</p>
                            <div class="d-flex align-items-center">
                                {{-- <img src="/api/placeholder/80/80" alt="Testimonial" class="rounded-circle me-3"> --}}
                                <div>
                                    <h5 class="mb-0">Sarah Johnson</h5>
                                    <p class="text-muted mb-0">Hotel Manager, Grand Resort</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Note: Footer is pre-created as per requirements -->

    <!-- JavaScript Dependencies -->
    {{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> --}}
    {{-- <script src="script.js"></script> --}}

    {{-- <main id="main">

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
        <div class="container">

            <div class="row">
                <div class="col-lg-9 text-center text-lg-left">
                    <h3>We've created more than <span>200 websites</span> this year!</h3>
                    <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                        pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                        mollit anim id est laborum.</p>
                </div>
                <div class="col-lg-3 cta-btn-container text-center">
                    <a class="cta-btn align-middle" href="#">Request a quote</a>
                </div>
            </div>

        </div>
    </section><!-- End Cta Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
        <div class="container">

            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box" data-aos="fade-up">
                        <div class="icon"><i class="bi bi-briefcase"></i></div>
                        <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                        <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias
                            excepturi sint occaecati cupiditate non provident</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                        <div class="icon"><i class="bi bi-card-checklist"></i></div>
                        <h4 class="title"><a href="">Dolor Sitema</a></h4>
                        <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                            ex ea commodo consequat tarad limino ata</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                        <div class="icon"><i class="bi bi-bar-chart"></i></div>
                        <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                        <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                            dolore eu fugiat nulla pariatur</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                        <div class="icon"><i class="bi bi-binoculars"></i></div>
                        <h4 class="title"><a href="">Magni Dolores</a></h4>
                        <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
                        <div class="icon"><i class="bi bi-brightness-high"></i></div>
                        <h4 class="title"><a href="">Nemo Enim</a></h4>
                        <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                            praesentium voluptatum deleniti atque</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
                        <div class="icon"><i class="bi bi-calendar4-week"></i></div>
                        <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
                        <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero
                            tempore, cum soluta nobis est eligendi</p>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End Services Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
        <div class="container">

            <div class="row" data-aos="fade-up">
                <div class="col-lg-12 d-flex justify-content-center">
                    <ul id="portfolio-flters">
                        <li data-filter="*" class="filter-active">All</li>
                        <li data-filter=".filter-app">App</li>
                        <li data-filter=".filter-card">Card</li>
                        <li data-filter=".filter-web">Web</li>
                    </ul>
                </div>
            </div>

            <div class="row portfolio-container" data-aos="fade-up">

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>App 1</h4>
                        <p>App</p>
                        <a href="assets/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Web 3</h4>
                        <p>Web</p>
                        <a href="assets/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>App 2</h4>
                        <p>App</p>
                        <a href="assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="App 2"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Card 2</h4>
                        <p>Card</p>
                        <a href="assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="Card 2"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <img src="assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Web 2</h4>
                        <p>Web</p>
                        <a href="assets/img/portfolio/portfolio-5.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="Web 2"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>App 3</h4>
                        <p>App</p>
                        <a href="assets/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="App 3"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Card 1</h4>
                        <p>Card</p>
                        <a href="assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="Card 1"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <img src="assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Card 3</h4>
                        <p>Card</p>
                        <a href="assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="Card 3"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <img src="assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Web 3</h4>
                        <p>Web</p>
                        <a href="assets/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery"
                            class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
                        <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                class="bx bx-link"></i></a>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Our Clients Section ======= -->
    <section id="clients" class="clients">
        <div class="container">

            <div class="section-title" data-aos="fade-up">
                <h2>Our <strong>Clients</strong></h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
                    consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia
                    fugiat sit in iste officiis commodi quidem hic quas.</p>
            </div>

            <div class="row no-gutters clients-wrap clearfix" data-aos="fade-up">

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="assets/img/clients/client-1.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="assets/img/clients/client-2.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="assets/img/clients/client-3.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="assets/img/clients/client-4.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="assets/img/clients/client-5.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="assets/img/clients/client-6.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="assets/img/clients/client-7.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="assets/img/clients/client-8.png" class="img-fluid" alt="">
                    </div>
                </div>

            </div>

        </div>
    </section> --}}
    <!-- End Our Clients Section -->
    <section id="clients" class="clients">
        <div class="container">
            <div class="section-title" data-aos="fade-up">
                <h2>Our <strong>Clients</strong></h2>
                <p>Trusted by leading hotels and resorts across India.</p>
            </div>

            <!-- Client Logo Slider -->
            <div class="overflow-hidden" data-aos="fade-up">
                <div class="clogo-track d-flex align-items-center">
                    <!-- First set -->
                    <div class="px-3"><img src="admin/clogo/alka.png" class="img-fluid" alt="Alka" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/DESTINN.jpeg" class="img-fluid" alt="Destinn" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/HAR SHIKHAR.jpg.jpeg" class="img-fluid" alt="Har Shikhar" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/himalay monk.png" class="img-fluid" alt="Himalay Monk" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Kashi Courtyard.jpg.jpeg" class="img-fluid" alt="Kashi Courtyard" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Lake Ambience resort.jpg.jpeg" class="img-fluid" alt="Lake Ambience Resort" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/lelegant.png" class="img-fluid" alt="Lelegant" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Meraden Opus.png" class="img-fluid" alt="Meraden Opus" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/moon and mars.png" class="img-fluid" alt="Moon and Mars" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Pratiksha.png" class="img-fluid" alt="Pratiksha" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/rave moti.png" class="img-fluid" alt="Rave Moti" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/sapphire.jpg.jpeg" class="img-fluid" alt="Sapphire" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/The Jungle Trail.jpg.jpeg" class="img-fluid" alt="The Jungle Trail" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Urban Residency.jpeg" class="img-fluid" alt="Urban Residency" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Vijay Paradise.png" class="img-fluid" alt="Vijay Paradise" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Vinda Resort &amp; Water Park.jpg.jpeg" class="img-fluid" alt="Vinda Resort" style="max-height:70px;"></div>
                    <!-- Duplicate for seamless loop -->
                    <div class="px-3"><img src="admin/clogo/alka.png" class="img-fluid" alt="Alka" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/DESTINN.jpeg" class="img-fluid" alt="Destinn" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/HAR SHIKHAR.jpg.jpeg" class="img-fluid" alt="Har Shikhar" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/himalay monk.png" class="img-fluid" alt="Himalay Monk" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Kashi Courtyard.jpg.jpeg" class="img-fluid" alt="Kashi Courtyard" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Lake Ambience resort.jpg.jpeg" class="img-fluid" alt="Lake Ambience Resort" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/lelegant.png" class="img-fluid" alt="Lelegant" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Meraden Opus.png" class="img-fluid" alt="Meraden Opus" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/moon and mars.png" class="img-fluid" alt="Moon and Mars" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Pratiksha.png" class="img-fluid" alt="Pratiksha" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/rave moti.png" class="img-fluid" alt="Rave Moti" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/sapphire.jpg.jpeg" class="img-fluid" alt="Sapphire" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/The Jungle Trail.jpg.jpeg" class="img-fluid" alt="The Jungle Trail" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Urban Residency.jpeg" class="img-fluid" alt="Urban Residency" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Vijay Paradise.png" class="img-fluid" alt="Vijay Paradise" style="max-height:70px;"></div>
                    <div class="px-3"><img src="admin/clogo/Vinda Resort &amp; Water Park.jpg.jpeg" class="img-fluid" alt="Vinda Resort" style="max-height:70px;"></div>
                </div>
            </div>

        </div>

        <style>
            .clogo-track {
                width: max-content;
                animation: clogoScroll 40s linear infinite;
            }
            .clogo-track:hover { animation-play-state: paused; }
            @keyframes clogoScroll {
                0%   { transform: translateX(0); }
                100% { transform: translateX(-50%); }
            }
        </style>
    </section>
    </main><!-- End #main -->
@endsection
