       @php
         $meta = \App\Models\MetaTag::getByPageName('contactpage');
     @endphp

     @if ($meta)
         @if ($meta->title)
             <title>{{ $meta->title }}</title>
         @endif
         @if ($meta->description)
             <meta name="description" content="{{ $meta->description }}">
         @endif
         @if ($meta->keywords)
             <meta name="keywords" content="{{ $meta->keywords }}">
         @endif
         @if ($meta->author)
             <meta name="author" content="{{ $meta->author }}">
         @endif
         @if ($meta->robots)
             <meta name="robots" content="{{ $meta->robots }}">
         @else
             <meta name="robots" content="index, follow">
         @endif
         @if ($meta->canonical_url)
             <link rel="canonical" href="{{ $meta->canonical_url }}">
         @endif
         @if ($meta->theme_color)
             <meta name="theme-color" content="{{ $meta->theme_color }}">
         @endif

         @if ($meta->og_type)
             <meta property="og:type" content="{{ $meta->og_type }}">
         @endif
         @if ($meta->og_title)
             <meta property="og:title" content="{{ $meta->og_title }}">
         @endif
         @if ($meta->og_description)
             <meta property="og:description" content="{{ $meta->og_description }}">
         @endif
         @if ($meta->og_url)
             <meta property="og:url" content="{{ $meta->og_url }}">
         @endif
         @if ($meta->og_site_name)
             <meta property="og:site_name" content="{{ $meta->og_site_name }}">
         @endif
         @if ($meta->og_image)
             <meta property="og:image" content="{{ $meta->og_image }}">
         @endif
         @if ($meta->og_locale)
             <meta property="og:locale" content="{{ $meta->og_locale }}">
         @endif

         @if ($meta->twitter_card)
             <meta name="twitter:card" content="{{ $meta->twitter_card }}">
         @endif
         @if ($meta->twitter_title)
             <meta name="twitter:title" content="{{ $meta->twitter_title }}">
         @endif
         @if ($meta->twitter_description)
             <meta name="twitter:description" content="{{ $meta->twitter_description }}">
         @endif
         @if ($meta->twitter_image)
             <meta name="twitter:image" content="{{ $meta->twitter_image }}">
         @endif
         @if ($meta->twitter_site)
             <meta name="twitter:site" content="{{ $meta->twitter_site }}">
         @endif
     @else
<title>Contact Support | Hotel Reservation Management Software - Analysis HMS</title>
<meta name="description" content="Contact Analysis HMS for expert support on cloud hotel reservation management software. Get assistance with hotel booking systems, front office, POS, and inventory management.">
<meta name="keywords" content="reservation management software for hotels, hotel booking system, cloud hotel reservation system, room booking software for hotels, hotel management software support, hotel software contact">
<meta name="author" content="Pushpendra Gupta">
<meta name="robots" content="index, follow">
<link rel="canonical" href="https://analysishms.com/contact">
<meta name="theme-color" content="#0d6efd">

<!-- Open Graph / Facebook / LinkedIn -->
<meta property="og:type" content="website">
<meta property="og:title" content="Contact Support | Hotel Reservation Management Software - Analysis HMS">
<meta property="og:description" content="Get in touch with our hospitality software experts. Support for cloud-based hotel reservation systems, booking management, POS, and inventory solutions.">
<meta property="og:url" content="https://analysishms.com/contact">
<meta property="og:site_name" content="Analysis HMS">
<meta property="og:image" content="https://analysishms.com/assets/img/favicon.png">
<meta property="og:locale" content="en_IN">

<!-- Twitter / X Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Contact Support | Hotel Reservation Management Software - Analysis HMS">
<meta name="twitter:description" content="Contact Analysis HMS for expert support on cloud hotel reservation management software. Get assistance with hotel booking systems, front office, POS, and inventory.">
<meta name="twitter:image" content="https://analysishms.com/assets/img/favicon.png">
<meta name="twitter:site" content="@analysishms">
<meta name="twitter:creator" content="@PushpendraGupta">

<!-- JSON-LD Schema -->
@endif
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Organization",
        "name": "Analysis HMS",
        "url": "https://analysishms.com/",
        "logo": "https://analysishms.com/assets/img/favicon.png",
        "sameAs": [
            "https://twitter.com/analysishms",
            "https://facebook.com/analysishms",
            "https://instagram.com/analysishms",
            "https://linkedin.com/analysishms"
        ],
        "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "+919161380170",
            "contactType": "customer support",
            "areaServed": "IN",
            "availableLanguage": "English"
        }
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "WebPage",
        "name": "Contact Analysis HMS - Hotel Reservation Software Support",
        "url": "https://analysishms.com/contact",
        "description": "Contact page for Analysis HMS cloud hotel management software. Get support for reservation management, hotel booking systems, and operational software.",
        "breadcrumb": {
            "@type": "BreadcrumbList",
            "itemListElement": [{
                "@type": "ListItem",
                "position": 1,
                "name": "Home",
                "item": "https://analysishms.com/"
            }, {
                "@type": "ListItem",
                "position": 2,
                "name": "Contact"
            }]
        }
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "SoftwareApplication",
        "name": "Analysis HMS Cloud Hotel Management Software",
        "applicationCategory": "BusinessApplication",
        "operatingSystem": "Web",
        "description": "Smart cloud-based hotel reservation management software for modern hotels. Manage bookings, front office, POS, inventory, and channel connectivity.",
        "url": "https://analysishms.com/",
        "offers": {
            "@type": "Offer",
            "category": "SoftwareAsAService"
        },
        "author": {
            "@type": "Organization",
            "name": "Analysis HMS"
        }
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "FAQPage",
        "mainEntity": [{
                "@type": "Question",
                "name": "How can I get support for my hotel reservation software?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Contact our support team via phone, email, or the contact form for assistance with cloud hotel reservation systems, booking management, and operational software."
                }
            },
            {
                "@type": "Question",
                "name": "Do you provide support for hotel POS and inventory management?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes, our experts provide comprehensive support for integrated POS, front office, and inventory management systems within our hotel software suite."
                }
            },
            {
                "@type": "Question",
                "name": "What hotel booking system features do you support?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "We support all features of our cloud hotel reservation system including online bookings, channel management, rate management, and reservation analytics."
                }
            }
        ]
    }
</script>

<!-- Vendor CSS Files -->
<link href="https://www.analysishms.com/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/css/style.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/css/custom.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/aquawolf04/font-awesome-pro@5cd1511/css/all.css">
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://www.analysishms.com/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://www.analysishms.com/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="https://www.analysishms.com/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="https://www.analysishms.com/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="https://www.analysishms.com/assets/vendor/waypoints/noframework.waypoints.js"></script>
<script src="https://www.analysishms.com/assets/vendor/php-email-form/validate.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
