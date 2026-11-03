<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta name="google-site-verification" content="ypzW12tH39EZGRinc6cu-PEo6wL8hUH1SujZuPVsPCA" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Favicons -->
    <link href="{{ asset('assets/img/favicon.png') }}" rel="icon">
    <link href="{{ asset('assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

    <!-- Primary SEO -->
    <title>Analysis HMS - Complete Hotel Management Software for Hotels & Restaurants</title>
    <meta name="description" content="Analysis HMS is an all-in-one hotel management software offering front office, POS, inventory, reservation, banquet, and guest management solutions to optimize your hotel operations.">
    <meta name="keywords" content="hotel management software, hotel software, hotel management system, front office management, point of sale, POS software, reservation software, inventory management, banquet management, guest management, hotel automation, hotel ERP, analysishms, hotel management website, hospitality software, hotel operations software">
    <meta name="author" content="Pushpendra Gupta">
    <meta name="robots" content="index, follow">
    <link rel="canonical" href="https://analysishms.com/">
    <meta name="theme-color" content="#0d6efd">

    <!-- Open Graph / Facebook / LinkedIn -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="Analysis HMS - Complete Hotel Management Software for Hotels & Restaurants">
    <meta property="og:description" content="Analysis HMS is an all-in-one hotel management software offering front office, POS, inventory, reservation, banquet, and guest management solutions to optimize your hotel operations.">
    <meta property="og:url" content="https://analysishms.com/">
    <meta property="og:site_name" content="Analysis HMS">
    <meta property="og:image" content="https://analysishms.com/assets/img/favicon.png">
    <meta property="og:locale" content="en_IN">

    <!-- Twitter / X Card -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Analysis HMS - Complete Hotel Management Software for Hotels & Restaurants">
    <meta name="twitter:description" content="Analysis HMS is an all-in-one hotel management software offering front office, POS, inventory, reservation, banquet, and guest management solutions to optimize your hotel operations.">
    <meta name="twitter:image" content="https://analysishms.com/assets/img/favicon.png">
    <meta name="twitter:site" content="@analysishms">
    <meta name="twitter:creator" content="@PushpendraGupta">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- JSON-LD Organization Schema -->
    <script type="application/ld+json">
        {
        "@context": "https://schema.org",
        "@type": "Organization",
        "name": "Analysis HMS",
        "url": "https://analysishms.com/",
        "logo": "https://analysishms.com/assets/img/favicon.png",
        "sameAs": [
            "https://twitter.com/{{ config('app.twitter') }}",
            "https://facebook.com/{{ config('app.facebook') }}",
            "https://instagram.com/{{ config('app.instagram') }}",
            "https://linkedin.com/{{ config('app.linkedin') }}"
        ],
        "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "+918574921683",
            "contactType": "customer support",
            "areaServed": "IN",
            "availableLanguage": "English"
        },
        "address": {
            "@type": "PostalAddress",
            "addressLocality": "Indore",
            "addressRegion": "Madhya Pradesh",
            "addressCountry": "India"
        }
        }
    </script>

    <script type="application/ld+json">
        {
        "@context": "https://schema.org",
        "@type": "WebSite",
        "url": "https://analysishms.com/",
        "name": "Analysis HMS",
        "potentialAction": {
            "@type": "SearchAction",
            "target": "https://analysishms.com/search?q={search_term_string}",
            "query-input": "required name=search_term_string"
        }
        }
    </script>

    <script type="application/ld+json">
        {
        "@context": "https://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [
            {
            "@type": "ListItem",
            "position": 1,
            "name": "Home",
            "item": "https://analysishms.com/"
            },
            {
            "@type": "ListItem",
            "position": 2,
            "name": "Hotel Management Software",
            "item": "https://analysishms.com/software"
            }
        ]
        }
    </script>

    <!-- Vendor CSS Files -->
    <link href="{{ asset('assets/vendor/animate.css/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/aos/aos.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/custom.css') }}" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
    <!-- Template Main CSS File -->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/aquawolf04/font-awesome-pro@5cd1511/css/all.css">
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/waypoints/noframework.waypoints.js') }}"></script>
    <script src="{{ asset('assets/vendor/php-email-form/validate.js') }}"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

</head>

<body>

    <!-- ======= Top Bar ======= -->
    <section id="topbar" class="d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-between">
            <div class="contact-info d-flex align-items-center">
                <i class="bi bi-envelope d-flex align-items-center"><a
                        href="mailto:{{ percompdata()->email }}">{{ percompdata()->email }}</a></i>
                <i class="bi bi-phone d-flex align-items-center ms-4"><span>{{ percompdata()->mobile }}</span></i>
            </div>
            <div class="social-links d-none d-md-flex align-items-center">
                <a href="https://twitter.com/{{ config('app.twitter') }}" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="https://facebook.com/{{ config('app.facebook') }}" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="https://instagram.com/{{ config('app.instagram') }}" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="https://linkedin.com/{{ config('app.linkedin') }}" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
            </div>
        </div>
    </section>

    <!-- ======= Header ======= -->
    <header id="header" class="d-flex align-items-center">
        <div class="container d-flex justify-content-between">

            <div class="logo">
                <h1 class="text-light"><a href="{{ url('/hotels/' . percompdata()->propertyid) }}">Hotel Booking</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                {{-- <a href="{{ url('./') }}"><img src="{{ asset('assets/img/logo.gif') }}"
                        alt="" class="img-fluid"></a> --}}
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="active" href="{{ url('/hotels/' . percompdata()->propertyid) }}">Home</a></li>
                    {{-- <li><a href="{{ url('/about') }}">About</a></li> --}}
                    <li class="dropdown"><a href="#"><span>Categories</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            @foreach (percomproomcategory() as $item)
                                <li><a href="#{{ $item->cat_code }}">{{ $item->name }}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    {{-- <li><a href="{{ url('/hotels/' . percompdata()->propertyid . '/contact') }}">Contact</a></li> --}}
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->
    <main class="py-4">
        @yield('content')
    </main>
