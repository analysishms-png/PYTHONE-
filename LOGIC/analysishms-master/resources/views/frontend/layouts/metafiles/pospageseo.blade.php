 @php
         $meta = \App\Models\MetaTag::getByPageName('pospage');
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
<title>Point of Sale Software for Hotels | Cloud Hotel POS System | Analysis HMS</title>
<meta name="description" content="Streamline restaurant & hotel billing with our cloud POS software. Fast, secure point of sale system for hotels with real-time inventory, integrated payments, and detailed sales reports. Ideal for hospitality POS solutions.">
<meta name="keywords" content="point of sale software for hotels, hotel POS system, restaurant POS software, cloud POS for hotels, billing software for restaurants, hospitality POS solution, Analysis HMS POS, hotel billing software, restaurant management system, cloud-based POS">
<meta name="author" content="Pushpendra Gupta">
<meta name="robots" content="index, follow">
<link rel="canonical" href="https://analysishms.com/services/pointofsale">
<meta name="theme-color" content="#0d6efd">

<meta property="og:type" content="website">
<meta property="og:title" content="Point of Sale Software for Hotels | Cloud Hotel POS System | Analysis HMS">
<meta property="og:description" content="Complete cloud POS solution for hotels & restaurants. Manage billing, orders, inventory, and payments in one secure hotel POS system with real-time reporting.">
<meta property="og:url" content="https://analysishms.com/services/pointofsale">
<meta property="og:site_name" content="Analysis HMS">
<meta property="og:image" content="https://analysishms.com/assets/img/favicon.png">
<meta property="og:locale" content="en_IN">

<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Point of Sale Software for Hotels | Cloud Hotel POS System | Analysis HMS">
<meta name="twitter:description" content="Cloud-based hotel POS system for fast billing, inventory management, and secure payments. Perfect restaurant POS software for hospitality businesses.">
<meta name="twitter:image" content="https://analysishms.com/assets/img/favicon.png">
<meta name="twitter:site" content="@analysishms">
<meta name="twitter:creator" content="@PushpendraGupta">
@endif

<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Service",
        "name": "Hotel Point of Sale (POS) Software",
        "description": "Cloud-based point of sale software designed specifically for hotels and restaurants. Streamline billing, manage orders, track inventory, and process secure payments with our integrated hospitality POS solution.",
        "provider": {
            "@type": "Organization",
            "name": "Analysis HMS",
            "url": "https://analysishms.com/"
        },
        "areaServed": "Worldwide",
        "serviceType": "Point of Sale Software",
        "category": "Hospitality Software"
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "SoftwareApplication",
        "name": "Analysis HMS POS Module",
        "applicationCategory": "BusinessApplication",
        "operatingSystem": "Web",
        "description": "Cloud-based point of sale software for hotels and restaurants. Features include quick billing, menu management, real-time inventory tracking, secure payment processing, and comprehensive sales reporting as part of the complete hotel management system.",
        "url": "https://analysishms.com/services/pointofsale",
        "offers": {
            "@type": "Offer",
            "category": "SoftwareAsAService"
        },
        "author": {
            "@type": "Organization",
            "name": "Analysis HMS"
        },
        "featureList": ["Hotel Billing", "Restaurant Order Management", "Inventory Integration", "Secure Payments", "Sales Reporting"]
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
                "name": "Services",
                "item": "https://analysishms.com/services"
            },
            {
                "@type": "ListItem",
                "position": 3,
                "name": "Point of Sale (POS) Software",
                "item": "https://analysishms.com/services/pointofsale"
            }
        ]
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "FAQPage",
        "mainEntity": [
            {
                "@type": "Question",
                "name": "What is hotel POS software and how does it work?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Hotel POS software is a point of sale system specifically designed for hospitality businesses. It handles billing for restaurants, bars, and hotel services, integrates with inventory, tracks sales, and processes payments securely, all in one cloud-based platform."
                }
            },
            {
                "@type": "Question",
                "name": "Can your POS system integrate with other hotel management modules?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes, our cloud POS software seamlessly integrates with Front Office, Inventory, Reservation, and Banquet modules, providing a unified management system for your entire hotel operation."
                }
            },
            {
                "@type": "Question",
                "name": "Is your POS software suitable for both hotels and restaurants?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Absolutely. Our point of sale system is designed for hospitality businesses including hotels, restaurants, resorts, and bars. It features menu management, table service, room charge posting, and comprehensive billing capabilities."
                }
            }
        ]
    }
</script>
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

