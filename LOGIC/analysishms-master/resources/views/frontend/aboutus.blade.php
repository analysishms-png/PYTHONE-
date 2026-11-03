@extends('frontend.layouts.main')
@section('title', 'About Us - Analysis HMS | Premium Hotel Management Software')

@section('meta')
    <meta name="description" content="Analysis HMS by Analysis Softwares Solutions is a leading Hotel Management SaaS. Empower your hotel operations with finance, POS, inventory, reservations, housekeeping & reports solutions.">
    <meta name="keywords" content="Hotel Management Software, HMS, Hotel SaaS, POS, Inventory Management, Front Office, Banquet Management, Analysis HMS">
    <meta name="author" content="Analysis Softwares Solutions">
@endsection

@section('main-container')

    <style>
        .about-hero h1 {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .about-hero p {
            font-size: 1.3rem;
        }

        .section-title {
            font-size: 2.2rem;
            font-weight: 700;
            margin-bottom: 40px;
            position: relative;
        }

        .section-title::after {
            content: '';
            width: 60px;
            height: 3px;
            background-color: #007bff;
            display: block;
            margin-top: 10px;
        }

        .card-services {
            border: none;
            padding: 30px;
            border-radius: 12px;
            transition: 0.3s;
            background: #f8f9fa;
        }

        .card-services:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }

        .partner-logo img {
            max-width: 140px;
            margin: 15px;
            transition: transform 0.3s;
            border-radius: 12px;
        }

        .partner-logo img:hover {
            transform: scale(1.1);
        }

        .award-card {
            border: none;
            padding: 30px;
            border-radius: 12px;
            text-align: center;
            background: #fff;
            transition: 0.3s;
        }

        .award-card i {
            font-size: 3rem;
            color: #007bff;
            margin-bottom: 15px;
        }

        .award-card:hover {
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .testimonial-card {
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
            margin-bottom: 30px;
        }

        .testimonial-card img {
            border-radius: 50%;
            width: 70px;
            height: 70px;
        }
    </style>

    <div class="about-hero" data-aos="fade-down">
        <h1>About Analysis HMS</h1>
        <p>Premium Hotel Management Software by Analysis Softwares Solutions</p>
    </div>

    <div class="container my-5">
        <!-- Company Overview -->
        <section data-aos="fade-up">
            <h2 class="section-title">Company Overview</h2>
            <p>Analysis Softwares Solutions is a leading IT company delivering innovative, scalable, and reliable solutions globally. With a strong focus on technology, process improvement, and highly skilled professionals, we help clients overcome operational challenges efficiently.</p>
            <p>Our R&D, academic alliances, and partnerships ensure our customers stay ahead in technology. We provide customized solutions to multiple industries including hospitality, finance, healthcare, and education.</p>
        </section>

        <!-- Mission & Vision -->
        <section class="row mt-5" data-aos="fade-up">
            <div class="col-md-6 mb-4">
                <div class="card card-services h-100 text-center">
                    <i class="fas fa-bullseye fa-2x mb-3"></i>
                    <h5>Our Mission</h5>
                    <p>Empower hospitality businesses with intelligent, reliable, and user-friendly software that streamlines operations, enhances guest experiences, and drives growth.</p>
                </div>
            </div>
            <div class="col-md-6 mb-4">
                <div class="card card-services h-100 text-center">
                    <i class="fas fa-eye fa-2x mb-3"></i>
                    <h5>Our Vision</h5>
                    <p>To be the most trusted and innovative Hotel Management SaaS provider worldwide, enabling hotels of all sizes to operate efficiently and delight their guests.</p>
                </div>
            </div>
        </section>

        <!-- Core Values -->
        <section data-aos="fade-up" class="mt-5">
            <h2 class="section-title">Core Values</h2>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-lightbulb fa-2x mb-3"></i>
                        <h5>Innovation</h5>
                        <p>Continuously evolving software features to match industry trends.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-handshake fa-2x mb-3"></i>
                        <h5>Customer Success</h5>
                        <p>Your growth and satisfaction are our top priority.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-shield-alt fa-2x mb-3"></i>
                        <h5>Reliability</h5>
                        <p>Robust, secure, and reliable solutions for your hotel operations.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Services -->
        <section data-aos="fade-up" class="mt-5">
            <h2 class="section-title">Our Services</h2>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-hotel fa-2x mb-3"></i>
                        <h5>Front Office & Operations</h5>
                        <p>Check-ins, check-outs, room status, and guest management made simple.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-cash-register fa-2x mb-3"></i>
                        <h5>POS & Inventory</h5>
                        <p>Multi-outlet billing, stock management, and inventory tracking.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-calendar-check fa-2x mb-3"></i>
                        <h5>Banquets & Events</h5>
                        <p>Venue bookings, billing, and event management streamlined.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-broom fa-2x mb-3"></i>
                        <h5>Housekeeping</h5>
                        <p>Real-time room cleaning and maintenance tracking.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-users fa-2x mb-3"></i>
                        <h5>Member & Loyalty Programs</h5>
                        <p>Membership management and smart card integrations.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-services text-center">
                        <i class="fas fa-chart-line fa-2x mb-3"></i>
                        <h5>Reports & Analytics</h5>
                        <p>Comprehensive dashboards, occupancy reports, and MIS reports.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Partners -->
        <section data-aos="fade-up" class="mt-5 text-center">
            <h2 class="section-title">Our Partners & Clients</h2>
            <div class="d-flex flex-wrap justify-content-center partner-logo">
                <a href="#" data-fancybox="partners" data-caption="Hotel Shanta Inn"><img src="{{ url('storage/admin/property_logo/7897873492Hotel%20Shanta%20Inn1749207936.jpg') }}" alt="Hotel Shanta Inn"></a>
                <a href="#" data-fancybox="partners" data-caption="KOTADUN BIRDING RETREAT"><img src="{{ url('storage/admin/property_logo/8006000287KOTADUN%20BIRDING%20RETREAT1748429874.png') }}" alt="KOTADUN BIRDING RETREAT"></a>
                <a href="#" data-fancybox="partners" data-caption="Hotel V R Grand"><img src="{{ url('storage/admin/property_logo/9519406660Hotel%20V%20R%20Grand1745152900.jpg') }}" alt="Hotel V R Grand"></a>
                <a href="#" data-fancybox="partners" data-caption="LE PARC HOTEL & BANQUETS"><img src="{{ url('storage/admin/property_logo/8630875654Ls%20Pace%20Hotel%20&%20Banquets1751710475.jpg') }}" alt="LE PARC HOTEL & BANQUETS"></a>
                <a href="#" data-fancybox="partners" data-caption="Tulip Garden Hotel And Resort"><img src="{{ url('storage/admin/property_logo/9151116579Tulip%20Garden%20Hotel%20and%20Resort1734072440.png') }}" alt="Tulip Garden Hotel And Resort"></a>
                <a href="#" data-fancybox="partners" data-caption="Vanashraya Corbett"><img src="{{ url('storage/admin/property_logo/9557639112Vanashraya%20Corbett1737789697.jpeg') }}" alt="Vanashraya Corbett"></a>
                <a href="#" data-fancybox="partners" data-caption="Himalayan Monk"><img src="{{ url('storage/admin/property_logo/8266989958Himalayan%20Monk1734072539.png') }}" alt="Himalayan Monk"></a>
                <a href="#" data-fancybox="partners" data-caption="Hotel Swarn Bhoomi"><img src="{{ url('storage/admin/property_logo/7376727375,9918119400Hotel%20Swarn%20Bhoomi1735289871.png') }}" alt="Hotel Swarn Bhoomi"></a>
                <a href="#" data-fancybox="partners" data-caption="Urban Residency"><img src="{{ url('storage/admin/property_logo/7068786864,7068786865,05324508909Urban%20Residency1736235416.jpeg') }}" alt="Urban Residency"></a>
            </div>
            <p class="mt-3">We have helped numerous hotels worldwide streamline operations and improve guest satisfaction.</p>
        </section>

        <!-- Awards -->
        <section data-aos="fade-up" class="mt-5">
            <h2 class="section-title text-center">Awards & Recognition</h2>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="award-card">
                        <i class="fas fa-trophy"></i>
                        <h5 class="mt-3">Best Hotel Management Software 2024</h5>
                        <p>Recognized for innovation and excellence in hospitality technology.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="award-card">
                        <i class="fas fa-award"></i>
                        <h5 class="mt-3">Top SaaS Solution Provider</h5>
                        <p>Awarded for delivering reliable and scalable software solutions.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="award-card">
                        <i class="fas fa-medal"></i>
                        <h5 class="mt-3">Innovation in Hospitality Tech</h5>
                        <p>For implementing cutting-edge features in hotel operations.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section data-aos="fade-up" class="mt-5">
            <h2 class="section-title text-center">What Our Clients Say</h2>
            <div class="row g-4 justify-content-center">
                <div class="col-md-4">
                    <div class="testimonial-card text-center">
                        <img src="{{ asset('assets/img/profile.png') }}" alt="Client 1" class="mb-3">
                        <p>"Analysis HMS transformed our hotel operations. Everything from reservations to billing is smooth and fast."</p>
                        <h6 class="mt-2">— Hotel Manager, Hotel ABC</h6>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-card text-center">
                        <img src="{{ asset('assets/img/profile.png') }}" alt="Client 2" class="mb-3">
                        <p>"The platform is intuitive, secure, and has boosted our staff efficiency significantly."</p>
                        <h6 class="mt-2">— General Manager, Hotel XYZ</h6>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Scripts -->

    <script>
        AOS.init({
            duration: 1200,
            once: true
        });
    </script>
@endsection
