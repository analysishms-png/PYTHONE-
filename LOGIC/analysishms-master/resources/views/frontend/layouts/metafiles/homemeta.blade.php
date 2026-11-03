 @php
     $meta = \App\Models\MetaTag::getByPageName('Homepage');
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
     @if                 ($meta->canonical_url)
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
     <title>Smart Cloud Based Hotel Management Software | Analysis HMS</title>
     <link href="https://www.analysishms.com/assets/img/favicon.png" rel="icon">
     <link href="https://www.analysishms.com/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
     <meta name="description"
         content="Cloud based hotel management software for modern hotels. Control daily operations from anywhere with real-time visibility into bookings, billing, staff, and performance. No local servers needed.">
     <meta name="keywords"
         content="cloud hotel management software, cloud based hotel system, hotel software, hotel management system, hotel operations software, hospitality software, analysishms">
     <meta name="author" content="Pushpendra Gupta">
     <meta name="robots" content="index, follow">
     <link rel="canonical" href="https://analysishms.com/">
     <meta name="theme-color" content="#0d6efd">
     <meta property="og:type" content="website">
     <meta property="og:title" content=" Cloud Based HSmartotel Management Software | Analysis HMS">
     <meta property="og:description"
         content="Complete cloud solution for hotel operations including front desk, billing, housekeeping, POS, inventory, and channel management. Access from anywhere, anytime.">
     <meta property="og:url" content="https://analysishms.com/">
     <meta property="og:site_name" content="Analysis HMS">
     <meta property="og:image" content="https://analysishms.com/assets/img/favicon.png">
     <meta property="og:locale" content="en_IN">
     <meta name="twitter:card" content="summary_large_image">
     <meta name="twitter:title" content="Smart Cloud Based Hotel Management Software | Analysis HMS">
     <meta name="twitter:description"
         content="Cloud hotel management software with real-time dashboard, secure hosting, and 24/7 access. Streamline operations and improve profitability.">
     <meta name="twitter:image" content="https://analysishms.com/assets/img/favicon.png">
     <meta name="twitter:site" content="@analysishms">
     <meta name="twitter:creator" content="@PushpendraGupta"> @endif
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
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "SoftwareApplication",
            "name": "Analysis HMS Cloud Hotel Management Software",
            "applicationCategory": "BusinessApplication",
            "operatingSystem": "Web",
            "description": "Smart cloud based hotel management software for modern hotels. Manage reservations, billing, housekeeping, restaurant POS, inventory, and channel connectivity from a single dashboard.",
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
            "mainEntity": [
                {
                    "@type": "Question",
                    "name": "What is cloud based hotel management software?",
                    "acceptedAnswer": {
                        "@type": "Answer",
                        "text": "Cloud hotel management software is a complete online solution that lets hotel owners and managers control daily operations from any location without local servers. It provides real-time visibility into bookings, billing, staff activity, and performance from one dashboard."
                    }
                },
                {
                    "@type": "Question",
                    "name": "Which hotel types can use this software?",
                    "acceptedAnswer": {
                        "@type": "Answer",
                        "text": "Our cloud solution is suitable for hotels, resorts, budget properties, lodges, hostels, serviced apartments, and multi-location hotel groups. The system scales as your business grows."
                    }
                },
                {
                    "@type": "Question",
                    "name": "What are the main benefits?",
                    "acceptedAnswer": {
                        "@type": "Answer",
                        "text": "Faster operations with fewer errors, better decision-making through live data, improved guest satisfaction, higher staff productivity, and lower operational costs."
                    }
                }
            ]
        }
    </script>
   
