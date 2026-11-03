  @php
         $meta = \App\Models\MetaTag::getByPageName('frontoffice');
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
         {{-- meta-tag-ends-here --}}
<title>Front Office Hotel Management Software | Analysis HMS</title>
<meta name="description" content="Cloud-based front office system for hotel check-in, billing, and guest services. Streamline your front desk operations.">
<meta property="og:type" content="website">
<meta property="og:title" content="Front Office Hotel Management Software | Analysis HMS">
<meta property="og:description" content="Cloud-based front office system for hotel check-in, billing, and guest services. Streamline your front desk operations.">
<meta property="og:url" content="https://www.analysishms.com/services/front-office">
<meta property="og:site_name" content="Analysis HMS">
<meta property="og:image" content="https://www.analysishms.com/assets/img/frontoffice.jpg">
<meta property="og:locale" content="en_IN">

<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Front Office Hotel Management Software | Analysis HMS">
<meta name="twitter:description" content="Hotel front desk software for efficient check-in, billing, and guest management operations.">
<meta name="twitter:image" content="https://www.analysishms.com/assets/img/frontoffice.jpg">
<meta name="twitter:site" content="@analysishms">

<link href="https://www.analysishms.com/assets/img/favicon.png" rel="icon">
<link href="https://www.analysishms.com/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet" crossorigin="anonymous">

<link href="https://www.analysishms.com/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/css/style.css" rel="stylesheet">
<link href="https://www.analysishms.com/assets/css/custom.css" rel="stylesheet">
@endif
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Organization",
        "name": "Analysis HMS",
        "url": "https://www.analysishms.com/",
        "logo": "https://www.analysishms.com/assets/img/favicon.png",
        "sameAs": [
            "https://twitter.com/analysishms",
            "https://facebook.com/analysishms",
            "https://instagram.com/analysishms",
            "https://linkedin.com/analysishms"
        ]
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Service",
        "name": "Front Office Management Software",
        "provider": {
            "@type": "Organization",
            "name": "Analysis HMS"
        },
        "description": "Hotel front office software for guest check-in, billing, room allocation, and front desk operations management.",
        "serviceType": "Hotel Management Software",
        "areaServed": "Global",
        "category": "Hospitality Software"
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
                "item": "https://www.analysishms.com/"
            },
            {
                "@type": "ListItem",
                "position": 2,
                "name": "Services",
                "item": "https://www.analysishms.com/services"
            },
            {
                "@type": "ListItem",
                "position": 3,
                "name": "Front Office Software",
                "item": "https://www.analysishms.com/services/front-office"
            }
        ]
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "SoftwareApplication",
        "name": "Analysis HMS Front Office Module",
        "applicationCategory": "BusinessApplication",
        "operatingSystem": "Web",
        "description": "Front office hotel management software for reservations, guest handling, billing, and room allocation.",
        "url": "https://www.analysishms.com/application",
        "featureList": "Reservation Management, Guest Check-in, Billing System, Room Allocation, Guest Services"
    }
</script>
