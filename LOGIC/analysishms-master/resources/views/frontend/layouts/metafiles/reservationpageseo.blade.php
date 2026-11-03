 @php
         $meta = \App\Models\MetaTag::getByPageName('reservationpage');
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
<!-- Primary SEO -->
<title>Hotel Reservation Management Software | Cloud Booking System for Hotels | Analysis HMS</title>
<meta name="description" content="Advanced reservation management software for hotels. Cloud-based hotel booking system with real-time availability, online reservations, and integrated front office operations. Streamline your hotel reservation system.">
<meta name="keywords" content="reservation management software for hotels, hotel booking system, cloud hotel reservation system, room booking software for hotels, hotel reservation software, online hotel booking system, hotel management software">
<meta name="author" content="Pushpendra Gupta">
<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
<link rel="canonical" href="https://analysishms.com/services/reservation">
<meta name="theme-color" content="#0d6efd">

<!-- Open Graph / Facebook / LinkedIn -->
<meta property="og:type" content="website">
<meta property="og:title" content="Hotel Reservation Management Software | Cloud Booking System | Analysis HMS">
<meta property="og:description" content="Complete cloud-based reservation management software for hotels. Handle bookings, cancellations, room allocation, and guest check-ins with real-time synchronization.">
<meta property="og:url" content="https://analysishms.com/services/reservation">
<meta property="og:site_name" content="Analysis HMS">
<meta property="og:image" content="https://analysishms.com/assets/img/reservation.jpg">
<meta property="og:locale" content="en_IN">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">

<!-- Twitter / X Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Hotel Reservation Management Software | Cloud Booking System">
<meta name="twitter:description" content="Streamline hotel bookings with our cloud reservation management software. Real-time availability, online reservations, and integrated billing for modern hotels.">
<meta name="twitter:image" content="https://analysishms.com/assets/img/reservation.jpg">
<meta name="twitter:site" content="@analysishms">
<meta name="twitter:creator" content="@PushpendraGupta">

<!-- JSON-LD Structured Data -->
@endif
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "WebPage",
        "name": "Hotel Reservation Management Software | Analysis HMS",
        "description": "Cloud-based reservation management software for hotels and resorts. Streamline booking operations with real-time availability and integrated front office management.",
        "url": "https://analysishms.com/services/reservation",
        "breadcrumb": {
            "@type": "BreadcrumbList",
            "itemListElement": [
                {
                    "@type": "ListItem",
                    "position": 1,
                    "name": "Home",
                    "item": "https://analysishms.com"
                },
                {
                    "@type": "ListItem",
                    "position": 2,
                    "name": "Services",
                    "item": "https://analysishms.com/services"
                },
                {
                    "@type": "ListItem",
                    "position": 3,
                    "name": "Reservation Management Software",
                    "item": "https://analysishms.com/services/reservation"
                }
            ]
        },
        "mainEntity": {
            "@type": "SoftwareApplication",
            "name": "Analysis HMS Reservation Management Software",
            "applicationCategory": "BusinessApplication",
            "operatingSystem": "Web",
            "description": "Cloud-based reservation management system for hotels. Features include real-time booking, room allocation, cancellation management, and integrated billing.",
            "url": "https://analysishms.com/services/reservation",
            "offers": {
                "@type": "Offer",
                "category": "SoftwareAsAService"
            },
            "featureList": [
                "Real-time room availability",
                "Online booking management",
                "Group reservations",
                "Integrated billing system",
                "Channel management",
                "Occupancy analytics"
            ],
            "author": {
                "@type": "Organization",
                "name": "Analysis HMS"
            }
        }
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "FAQPage",
        "mainEntity": [
            {
                "@type": "Question",
                "name": "What is hotel reservation management software?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Hotel reservation management software is a cloud-based system that handles room bookings, cancellations, guest data, and room allocation in real-time. It streamlines the entire booking process from inquiry to check-out."
                }
            },
            {
                "@type": "Question",
                "name": "How does cloud hotel reservation system work?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Our cloud hotel reservation system operates online, allowing hotel staff to manage bookings from any device. It syncs real-time room availability across all channels and integrates with front office, POS, and inventory management for complete operations."
                }
            },
            {
                "@type": "Question",
                "name": "Can I manage online and walk-in bookings together?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes, our reservation management software handles both online bookings and walk-in reservations in a single dashboard, preventing double bookings and ensuring accurate room inventory."
                }
            },
            {
                "@type": "Question",
                "name": "Does it integrate with other hotel systems?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Absolutely. Our reservation module seamlessly integrates with Front Office for check-ins, POS for restaurant billing, and Inventory Management for stock control, providing a unified hotel management solution."
                }
            }
        ]
    }
</script>
