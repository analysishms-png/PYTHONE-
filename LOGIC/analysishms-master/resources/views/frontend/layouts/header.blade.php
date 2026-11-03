<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="google-site-verification" content="ypzW12tH39EZGRinc6cu-PEo6wL8hUH1SujZuPVsPCA">

    <link href="{{ asset('assets/img/favicon.png') }}" rel="icon">
    <link href="{{ asset('assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    @php $routname = Route::currentRouteName(); @endphp

    @if ($routname == '')
        @include('frontend.layouts.metafiles.homemeta')
    @endif
    @if ($routname == 'about')
        @include('frontend.layouts.metafiles.aboutmeta')
    @endif
    @if ($routname == 'application')
        @include('frontend.layouts.metafiles.application')
    @endif
    @if ($routname == 'services.banquet')
        @include('frontend.layouts.metafiles.banquetpage')
    @endif
    @if ($routname == 'contact')
        @include('frontend.layouts.metafiles.contactpageseo')
    @endif
    @if ($routname == 'services.front-office')
        @include('frontend.layouts.metafiles.frontofficepageseo')
    @endif
    @if ($routname == 'services.inventory')
        @include('frontend.layouts.metafiles.servicesinventory')
    @endif
    @if ($routname == 'services.pointofsale')
        @include('frontend.layouts.metafiles.pospageseo')
    @endif
    @if ($routname == 'services.reservation')
        @include('frontend.layouts.metafiles.reservationpageseo')
    @endif

    <!-- CSS -->
    <link href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/custom.css') }}" rel="stylesheet">

    <style>
        @media (max-width: 768px) {
            #header {
                padding: 10px 0;
            }

            .logo img {
                max-height: 55px;
            }

            .navbar ul {
                background: #fff;
                padding: 20px;
            }

            .mobile-nav-toggle {
                font-size: 28px;
            }
        }
    </style>

</head>

<body>

    <!-- Top Bar (hidden on mobile) -->
    <section id="topbar" class="d-none d-md-flex align-items-center">
        <div class="container d-flex justify-content-between">
            <div class="contact-info d-flex align-items-center gap-3">
                <span><i class="bi bi-envelope"></i>
                    <a href="mailto:{{ config('app.email') }}">{{ config('app.email') }}</a>
                </span>
                <span><i class="bi bi-phone"></i> {{ config('app.phone') }}</span>
            </div>

            <div class="social-links d-flex gap-2">
                <a href="https://twitter.com/{{ config('app.twitter') }}"><i class="bi bi-twitter"></i></a>
                <a href="https://facebook.com/{{ config('app.facebook') }}"><i class="bi bi-facebook"></i></a>
                <a href="https://instagram.com/{{ config('app.instagram') }}"><i class="bi bi-instagram"></i></a>
                <a href="https://linkedin.com/{{ config('app.linkedin') }}"><i class="bi bi-linkedin"></i></a>
            </div>
        </div>
    </section>

    <!-- Header -->
    <header id="header" class="d-flex align-items-center">
        <div class="container d-flex justify-content-between align-items-center">

            <div class="logo">
                <a href="{{ url('/') }}">
                    <img src="{{ asset('assets/img/logo.gif') }}" class="img-fluid" style="max-height:40px;">
                </a>
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a href="{{ url('/') }}">Home</a></li>
                    <li><a href="{{ url('login') }}">Login</a></li>
                    <li><a href="{{ url('application') }}">Application</a></li>
                    <li><a href="{{ url('/') }}#demo-request">Demo & Support</a></li>
                    <li><a href="{{ url('/about') }}">About</a></li>

                    <li class="dropdown">
                        <a href="#"><span>Services</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="{{ url('services/front-office') }}">Front Office</a></li>
                            <li><a href="{{ url('services/pointofsale') }}">POS</a></li>
                            <li><a href="{{ url('services/banquet') }}">Banquet</a></li>
                            <li><a href="{{ url('services/inventory') }}">Inventory</a></li>
                            <li><a href="{{ url('services/reservation') }}">Reservation</a></li>
                        </ul>
                    </li>

                    <li><a href="{{ url('contact') }}">Contact</a></li>
                </ul>

                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>

        </div>
    </header>

    <main class="py-0">
        @yield('content')
    </main>

    <!-- JS (bottom for performance) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    @if (session('success'))
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: '{{ session('success') }}',
            });
        </script>
    @endif
    @if (session('error'))
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: '{{ session('error') }}',
            });
        </script>
    @endif
    <script>
        AOS.init();

        // Mobile nav toggle functionality
        $(document).ready(function() {
            $('.mobile-nav-toggle').on('click', function() {
                $('#navbar').toggleClass('navbar-mobile');
                $(this).toggleClass('bi-list bi-x');
            });
        });
    </script>

    @stack('scripts')

</body>

</html>
