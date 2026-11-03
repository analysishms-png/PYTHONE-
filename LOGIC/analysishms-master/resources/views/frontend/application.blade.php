@extends('frontend.layouts.main')
@section('main-container')
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Analysis - Hotel Management Software</title>
        {{-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.7.32/sweetalert2.min.css" rel="stylesheet"> --}}
        <style>
            .hero {
                min-height: 100vh;
                background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
                    url('https://images.unsplash.com/photo-1561501878-aabd62634533?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') center/cover;
                display: flex;
                align-items: center;
                color: white;
            }

            .feature-card {
                border-radius: 15px;
                overflow: hidden;
                transition: transform 0.3s;
            }

            .feature-card:hover {
                transform: translateY(-5px);
            }

            .feature-icon {
                width: 60px;
                height: 60px;
                fill: #0d6efd;
            }

            .download-section {
                background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
                    url('https://images.unsplash.com/photo-1506059612708-99d6c258160e?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') center/cover fixed;
                color: white;
                padding: 80px 0;
            }

            .btn-download {
                padding: 15px 40px;
                font-size: 1.2rem;
                font-weight: 600;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .management-section {
                background-color: #f8f9fa;
                padding: 80px 0;
            }

            .management-card {
                background: white;
                border-radius: 20px;
                padding: 2rem;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                height: 100%;
                transition: all 0.3s ease;
            }

            .management-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            }

            .stats-section {
                background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
                    url('https://images.unsplash.com/photo-1506059612708-99d6c258160e?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') center/cover fixed;
                color: white;
                padding: 80px 0;
            }

            .stat-item {
                text-align: center;
                padding: 2rem;
            }

            .stat-number {
                font-size: 3rem;
                font-weight: bold;
                margin-bottom: 1rem;
                color: #0d6efd;
            }
        </style>
    </head>

    <body>
        <!-- Hero Section -->
        <div class="application">
            <section class="hero">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8" data-aos="fade-right">
                            <h1 class="display-3 fw-bold mb-4">Analysis Hotel Management Software</h1>
                            <p class="lead mb-5">Streamline your hotel operations with our comprehensive management solution</p>
                            {{-- <button class="btn btn-primary btn-lg download-btn">Download Now</button> --}}
                        </div>
                    </div>
                </div>
            </section>

            <!-- Features Section -->
            <section class="py-5">
                <div class="container">
                    <h2 class="text-center mb-5" data-aos="fade-up">Key Features</h2>
                    <div class="row g-4">
                        <!-- KOT Management -->
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                            <div class="feature-card shadow p-4">
                                <svg class="feature-icon mb-4" viewBox="0 0 24 24">
                                    <path d="M3 3h18v18H3V3zm16 16V5H5v14h14zM7 7h10v2H7V7zm0 4h10v2H7v-2zm0 4h7v2H7v-2z" />
                                </svg>
                                <h3>KOT Management</h3>
                                <p>Efficient kitchen order management system with real-time updates and tracking capabilities.</p>
                            </div>
                        </div>

                        <!-- Bill Printing -->
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                            <div class="feature-card shadow p-4">
                                <svg class="feature-icon mb-4" viewBox="0 0 24 24">
                                    <path d="M19 8h-1V3H6v5H5c-1.66 0-3 1.34-3 3v6h4v4h12v-4h4v-6c0-1.66-1.34-3-3-3zM8 5h8v3H8V5zm8 14H8v-4h8v4zm4-4h-2v-2H6v2H4v-4c0-.55.45-1 1-1h14c.55 0 1 .45 1 1v4z" />
                                </svg>
                                <h3>Bill Printing</h3>
                                <p>Generate professional invoices and bills with customizable templates and instant printing.</p>
                            </div>
                        </div>

                        <!-- Multi-vendor -->
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                            <div class="feature-card shadow p-4">
                                <svg class="feature-icon mb-4" viewBox="0 0 24 24">
                                    <path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5s-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z" />
                                </svg>
                                <h3>Multi-vendor Support</h3>
                                <p>Seamlessly manage multiple vendors and suppliers through a unified platform.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="management-section">
                <div class="container">
                    <h2 class="text-center mb-5" data-aos="fade-up">Comprehensive Management Solutions</h2>
                    <div class="row g-4">
                        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                            <div class="management-card">
                                <svg class="feature-icon mb-4" viewBox="0 0 24 24">
                                    <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4zm0 2c2.67 0 8 1.34 8 4v2H4v-2c0-2.66 5.33-4 8-4z" />
                                </svg>
                                <h3 class="mb-3">Front Office Management</h3>
                                <p>Complete guest management system with:</p>
                                <ul class="list-unstyled">
                                    <li class="mb-2">✓ Guest profiles and history</li>
                                    <li class="mb-2">✓ Check-in/Check-out automation</li>
                                    <li class="mb-2">✓ Room status monitoring</li>
                                    <li>✓ Guest requests handling</li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
                            <div class="management-card">
                                <svg class="feature-icon mb-4" viewBox="0 0 24 24">
                                    <path d="M19 3h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 0c.55 0 1 .45 1 1s-.45 1-1 1-1-.45-1-1 .45-1 1-1zm2 14H7v-2h7v2zm3-4H7v-2h10v2zm0-4H7V7h10v2z" />
                                </svg>
                                <h3 class="mb-3">Charge Posting Management</h3>
                                <p>Efficient billing and charging system featuring:</p>
                                <ul class="list-unstyled">
                                    <li class="mb-2">✓ Automatic room charges</li>
                                    <li class="mb-2">✓ Additional service billing</li>
                                    <li class="mb-2">✓ Split billing options</li>
                                    <li>✓ Multiple payment methods</li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
                            <div class="management-card">
                                <svg class="feature-icon mb-4" viewBox="0 0 24 24">
                                    <path d="M19 4h-1V2h-2v2H8V2H6v2H5c-1.11 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 16H5V10h14v10zM9 14H7v-2h2v2zm4 0h-2v-2h2v2zm4 0h-2v-2h2v2z" />
                                </svg>
                                <h3 class="mb-3">Reservation Management</h3>
                                <p>Advanced booking system including:</p>
                                <ul class="list-unstyled">
                                    <li class="mb-2">✓ Online reservations</li>
                                    <li class="mb-2">✓ Group booking handling</li>
                                    <li class="mb-2">✓ Calendar visualization</li>
                                    <li>✓ Automated confirmation emails</li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
                            <div class="management-card">
                                <svg class="feature-icon mb-4" viewBox="0 0 24 24">
                                    <path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V5h14v14zm-7-2h2V7h-4v2h2z" />
                                </svg>
                                <h3 class="mb-3">Multi-type Reporting</h3>
                                <p>Comprehensive reporting tools with:</p>
                                <ul class="list-unstyled">
                                    <li class="mb-2">✓ Financial reports</li>
                                    <li class="mb-2">✓ Occupancy analytics</li>
                                    <li class="mb-2">✓ Revenue forecasting</li>
                                    <li>✓ Custom report generation</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Stats Section -->
            <section class="stats-section">
                <div class="container">
                    <div class="row g-4">
                        <div class="col-md-3" data-aos="fade-up">
                            <div class="stat-item">
                                <div class="stat-number">500+</div>
                                <div class="stat-label">Hotels Using Analysis</div>
                            </div>
                        </div>
                        <div class="col-md-3" data-aos="fade-up" data-aos-delay="100">
                            <div class="stat-item">
                                <div class="stat-number">99.9%</div>
                                <div class="stat-label">Uptime</div>
                            </div>
                        </div>
                        <div class="col-md-3" data-aos="fade-up" data-aos-delay="200">
                            <div class="stat-item">
                                <div class="stat-number">24/7</div>
                                <div class="stat-label">Support</div>
                            </div>
                        </div>
                        <div class="col-md-3" data-aos="fade-up" data-aos-delay="300">
                            <div class="stat-item">
                                <div class="stat-number">50+</div>
                                <div class="stat-label">Features</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Download Section -->
            <section class="download-section text-center">
                <div class="container">
                    <h2 class="mb-4" data-aos="fade-up">Ready to Transform Your Hotel Management?</h2>
                    <p class="lead mb-5" data-aos="fade-up">Download Analysis Software and start optimizing your operations today.</p>
                    <button class="btn btn-light btn-lg btn-download download-btn" data-aos="zoom-in">
                        Download Now
                    </button>
                </div>
            </section>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script> --}}
        {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script> --}}
        {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.7.32/sweetalert2.min.js"></script> --}}

        <script>
            $(document).ready(function() {
                // Initialize AOS
                AOS.init({
                    duration: 800,
                    offset: 100,
                    once: true
                });

                // Download button click handler
                $('.download-btn').click(function() {
                    Swal.fire({
                        title: 'Thanks for downloading!',
                        text: 'Your download will begin shortly.',
                        icon: 'success',
                        confirmButtonColor: '#0d6efd'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Create a hidden link element
                            var link = document.createElement('a');
                            link.href = 'https://analysishms.com/storage/admin/Analysis.exe';
                            link.download = 'Analysis.exe';
                            document.body.appendChild(link);

                            // Trigger the download
                            link.click();

                            // Clean up
                            document.body.removeChild(link);
                        }
                    });
                });
            });
        </script>
    </body>

    </html>
@endsection
