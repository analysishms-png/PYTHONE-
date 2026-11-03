       @php
         $meta = \App\Models\MetaTag::getByPageName('banquetpage');
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
  <title>Banquet Management Software for Hotels | Event Planning System | Analysis HMS</title>
  <meta name="description" content="Streamline hotel banquet operations with cloud-based event management software. Schedule halls, manage catering, track bookings, and handle billing for conferences, weddings, and corporate events."> 
  <meta name="keywords" content="banquet management software, hotel banquet software, event management system, banquet hall booking software, catering management software, conference management, wedding planning software, hotel event management">
  <meta name="author" content="Pushpendra Gupta"> 
  <meta name="robots" content="index, follow"> 
  <link rel="canonical" href="https://analysishms.com/services/banquet">
  <meta name="theme-color" content="#0d6efd">
  <meta property="og:type" content="website">
  <meta property="og:title" content="Banquet Management Software for Hotels | Event Planning System | Analysis HMS"> 
  <meta property="og:description" content="Complete banquet and event management solution for hotels. Manage hall bookings, catering, guest arrangements, and billing in one integrated platform.">
  <meta property="og:url" content="https://analysishms.com/services/banquet"> 
  <meta property="og:site_name" content="Analysis HMS"> 
  <meta property="og:image" content="https://analysishms.com/assets/img/favicon.png">
  <meta property="og:locale" content="en_IN">
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="Banquet Management Software for Hotels | Event Planning System | Analysis HMS"> 
  <meta name="twitter:description" content="Cloud-based banquet software for hotels to manage events, conferences, weddings. Streamline hall bookings, catering, and billing operations.">
  <meta name="twitter:image" content="https://analysishms.com/assets/img/favicon.png"> 
  <meta name="twitter:site" content="@analysishms"> 
  <meta name="twitter:creator" content="@PushpendraGupta">
  @endif
  <script type="application/ld+json"> { "@context": "https://schema.org", "@type": "Service", "name": "Hotel Banquet Management Software", "description": "Cloud-based banquet and event management software designed for hotels, convention centers, and venues. Streamline hall scheduling, catering management, guest arrangements, and billing for conferences, weddings, and corporate events.", "provider": { "@type": "Organization", "name": "Analysis HMS", "url": "https://analysishms.com/" }, "areaServed": "Worldwide", "serviceType": "Banquet Management Software", "category": "Hospitality Software" } 
  </script>
  <script type="application/ld+json"> { "@context": "https://schema.org", "@type": "SoftwareApplication", "name": "Analysis HMS Banquet Module", "applicationCategory": "BusinessApplication", "operatingSystem": "Web", "description": "Comprehensive banquet management software for hotels and event venues. Features include hall scheduling, catering management, guest seating, billing integration, and real-time event reporting as part of the complete hotel management system.", "url": "https://analysishms.com/services/banquet", "offers": { "@type": "Offer", "category": "SoftwareAsAService" }, "author": { "@type": "Organization", "name": "Analysis HMS" }, "featureList": ["Hall Scheduling", "Catering Management", "Guest Arrangements", "Event Billing", "Resource Allocation"] } 
  </script>
  <script type="application/ld+json"> { "@context": "https://schema.org", "@type": "BreadcrumbList", "itemListElement": [ { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://analysishms.com/" }, { "@type": "ListItem", "position": 2, "name": "Services", "item": "https://analysishms.com/#services" }, { "@type": "ListItem", "position": 3, "name": "Banquet Management Software", "item": "https://analysishms.com/services/banquet" } ] } 
  </script>
  <script type="application/ld+json"> { "@context": "https://schema.org", "@type": "FAQPage", "mainEntity": [ { "@type": "Question", "name": "What is banquet management software and how does it help hotels?", "acceptedAnswer": { "@type": "Answer", "text": "Banquet management software is a specialized system that helps hotels and venues manage event bookings, hall scheduling, catering services, guest arrangements, and billing for conferences, weddings, and corporate events in one integrated platform." } }, { "@type": "Question", "name": "Can your banquet software integrate with other hotel systems?", "acceptedAnswer": { "@type": "Answer", "text": "Yes, our banquet management system seamlessly integrates with Front Office, POS, Inventory, and Reservation modules, providing a unified management solution for your entire hotel operation including event planning and billing." } }, { "@type": "Question", "name": "Does the software handle catering and menu planning for events?", "acceptedAnswer": { "@type": "Answer", "text": "Absolutely. Our banquet software includes comprehensive catering management features for menu planning, ingredient tracking, special dietary requirements, and linking food services directly to specific events and bookings." 
  } 
  } 
  ] 
  } 
  </script>
  <!-- SEO FIX: Added WebPage schema for better structured data -->
  <script type="application/ld+json"> { "@context": "https://schema.org", "@type": "WebPage", "name": "Banquet Management Software for Hotels", "description": "Streamline hotel banquet operations with cloud-based event management software", "url": "https://analysishms.com/services/banquet", "mainEntity": { "@type": "Service", "name": "Hotel Banquet Management Software"
  }
  } 
  </script>
  