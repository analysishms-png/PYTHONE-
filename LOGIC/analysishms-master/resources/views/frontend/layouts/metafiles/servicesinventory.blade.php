 @php
         $meta = \App\Models\MetaTag::getByPageName('servicesinventory');
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
<title>Hotel Inventory Management Software | Cloud Stock & Purchase Control | Analysis HMS</title>
<meta name="description" content="Cloud hotel inventory management software for hotels. Streamline stock control, purchase orders, vendor management & cost analysis. Real-time inventory tracking for hospitality.">
<meta name="keywords" content="hotel inventory management software, cloud hotel inventory, stock control for hotels, purchase management hotel, hospitality inventory software, hotel stock management, inventory control system, cloud hotel management software, analysishms">
<meta name="author" content="Pushpendra Gupta">
<meta name="robots" content="index, follow">
<link rel="canonical" href="https://analysishms.com/services/inventory">
<meta name="theme-color" content="#0d6efd">

<!-- Open Graph / Facebook / LinkedIn -->
<meta property="og:type" content="website">
<meta property="og:title" content="Hotel Inventory Management Software | Cloud Stock & Purchase Control">
<meta property="og:description" content="Complete cloud inventory management for hotels. Manage stock, purchases, transfers & vendors with real-time tracking. Reduce wastage & optimize hotel inventory costs.">
<meta property="og:url" content="https://analysishms.com/services/inventory">
<meta property="og:site_name" content="Analysis HMS">
<meta property="og:image" content="https://analysishms.com/assets/img/inventory.jpg">
<meta property="og:locale" content="en_IN">

<!-- Twitter / X Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Hotel Inventory Management Software | Cloud Stock & Purchase Control">
<meta name="twitter:description" content="Cloud hotel inventory management software for hotels. Streamline stock control, purchase orders & vendor management with real-time tracking.">
<meta name="twitter:image" content="https://analysishms.com/assets/img/inventory.jpg">
<meta name="twitter:site" content="@analysishms">
<meta name="twitter:creator" content="@PushpendraGupta">

<!-- JSON-LD Structured Data -->
@endif
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "SoftwareApplication",
        "name": "Analysis HMS Inventory Management Module",
        "applicationCategory": "BusinessApplication",
        "operatingSystem": "Web",
        "description": "Cloud-based inventory management software for hotels. Features include stock tracking, purchase order management, vendor billing, stock transfers, and detailed consumption reports for hospitality businesses.",
        "url": "https://analysishms.com/services/inventory",
        "offers": {
            "@type": "Offer",
            "category": "SoftwareAsAService"
        },
        "author": {
            "@type": "Organization",
            "name": "Analysis HMS"
        },
        "featureList": [
            "Purchase Management",
            "Real-time Stock Tracking",
            "Stock Transfers Across Outlets",
            "Vendor & Bill Management",
            "Inventory Usage Reports",
            "Automated Reorder Alerts"
        ]
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "WebPage",
        "name": "Inventory Management Module for Hotels",
        "description": "Cloud inventory management software for hotel stock control, purchase management, and cost optimization.",
        "url": "https://analysishms.com/services/inventory",
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
                    "item": "https://analysishms.com#services"
                },
                {
                    "@type": "ListItem",
                    "position": 3,
                    "name": "Inventory Management",
                    "item": "https://analysishms.com/services/inventory"
                }
            ]
        },
        "mainEntity": {
            "@type": "Service",
            "name": "Hotel Inventory Management Software",
            "serviceType": "Cloud Inventory Management",
            "provider": {
                "@type": "Organization",
                "name": "Analysis HMS"
            },
            "areaServed": "Global",
            "audience": "Hotels, Resorts, Hospitality Businesses"
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
                "name": "What is hotel inventory management software?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Hotel inventory management software is a cloud-based system that helps hotels track stock levels, manage purchase orders, control vendor bills, and monitor inventory usage across different departments like kitchen, housekeeping, and restaurant."
                }
            },
            {
                "@type": "Question",
                "name": "How does cloud inventory software help hotels?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Cloud inventory software provides real-time stock visibility, reduces wastage, automates reorder alerts, streamlines purchase approvals, and generates detailed consumption reports to optimize hotel inventory costs."
                }
            },
            {
                "@type": "Question",
                "name": "Can I track inventory across multiple hotel outlets?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes, our inventory management module supports stock transfers between outlets, central warehouse management, and consolidated reporting for multi-outlet hotel operations."
                }
            },
            {
                "@type": "Question",
                "name": "Does it integrate with other hotel management modules?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "The inventory module seamlessly integrates with POS, kitchen, housekeeping, and procurement modules within Analysis HMS, providing unified inventory control across hotel operations."
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
<!-- Template Main CSS File -->

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
