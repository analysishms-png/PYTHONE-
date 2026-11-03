     @php
$meta = \App\Models\MetaTag::getByPageName('about');
@endphp

@if($meta)
    @if($meta->title)
        <title>{{ $meta->title }}</title>
    @endif
    @if($meta->description)
        <meta name="description" content="{{ $meta->description }}">
    @endif
    @if($meta->keywords)
        <meta name="keywords" content="{{ $meta->keywords }}">
    @endif
    @if($meta->author)
        <meta name="author" content="{{ $meta->author }}">
    @endif
    @if($meta->robots)
        <meta name="robots" content="{{ $meta->robots }}">
    @else
        <meta name="robots" content="index, follow">
    @endif
    @if($meta->canonical_url)
        <link rel="canonical" href="{{ $meta->canonical_url }}">
    @endif
    @if($meta->theme_color)
        <meta name="theme-color" content="{{ $meta->theme_color }}">
    @endif

    @if($meta->og_type)
        <meta property="og:type" content="{{ $meta->og_type }}">
    @endif
    @if($meta->og_title)
        <meta property="og:title" content="{{ $meta->og_title }}">
    @endif
    @if($meta->og_description)
        <meta property="og:description" content="{{ $meta->og_description }}">
    @endif
    @if($meta->og_url)
        <meta property="og:url" content="{{ $meta->og_url }}">
    @endif
    @if($meta->og_site_name)
        <meta property="og:site_name" content="{{ $meta->og_site_name }}">
    @endif
    @if($meta->og_image)
        <meta property="og:image" content="{{ $meta->og_image }}">
    @endif
    @if($meta->og_locale)
        <meta property="og:locale" content="{{ $meta->og_locale }}">
    @endif

    @if($meta->twitter_card)
        <meta name="twitter:card" content="{{ $meta->twitter_card }}">
    @endif
    @if($meta->twitter_title)
        <meta name="twitter:title" content="{{ $meta->twitter_title }}">
    @endif
    @if($meta->twitter_description)
        <meta name="twitter:description" content="{{ $meta->twitter_description }}">
    @endif
    @if($meta->twitter_image)
        <meta name="twitter:image" content="{{ $meta->twitter_image }}">
    @endif
    @if($meta->twitter_site)
        <meta name="twitter:site" content="{{ $meta->twitter_site }}">
    @endif
@else
    <!-- Default Meta Tags -->
    <title>About Analysis HMS - Hotel Management Software Company</title>
    <meta name="description" content="About Analysis HMS - a leading hotel management software company in India providing trusted cloud-based SaaS solutions for the hospitality industry.">
    <meta name="keywords" content="about analysis hms, hotel management software company, hospitality software company india, cloud hotel software provider">
    <meta name="author" content="Analysis HMS">
    <meta name="robots" content="index, follow">
    <link rel="canonical" href="https://www.analysishms.com/about">
    <meta name="theme-color" content="#0d6efd">

    <meta property="og:type" content="website">
    <meta property="og:title" content="About Analysis HMS - Hotel Management Software Company">
    <meta property="og:description" content="Learn about our mission to provide innovative cloud hotel software for the global hospitality industry.">
    <meta property="og:url" content="https://www.analysishms.com/about">
    <meta property="og:site_name" content="Analysis HMS">
    <meta property="og:image" content="https://www.analysishms.com/assets/img/favicon.png">
    <meta property="og:locale" content="en_IN">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="About Analysis HMS - Hotel Management Software Company">
    <meta name="twitter:description" content="A trusted hospitality SaaS company in India providing cloud hotel management software.">
    <meta name="twitter:image" content="https://www.analysishms.com/assets/img/favicon.png">
    <meta name="twitter:site" content="@analysishms">
@endif

<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Organization",
        "url": "https://www.analysishms.com/",
        "logo": "https://www.analysishms.com/assets/img/favicon.png",
        "description": "A leading hospitality software company in India providing cloud-based hotel management SaaS solutions.",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "A-2039, Awas Vikas Hanspuram Naubasta",
            "addressLocality": "Kanpur",
            "addressRegion": "Uttar Pradesh",
            "postalCode": "208021",
            "addressCountry": "IN"
        },
        "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "+919161380170",
            "email": "support.analysis@live.com",
            "contactType": "customer support",
            "areaServed": "IN",
            "availableLanguage": "English"
        },
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
        "@type": "AboutPage",
        "name": "About Analysis HMS",
        "url": "https://www.analysishms.com/about",
        "description": "Information about Analysis HMS, a leading hotel management software company in India.",
        "mainEntity": {
            "@type": "Organization",
            "name": "Analysis HMS",
            "url": "https://www.analysishms.com/"
        }
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [{
            "@type": "ListItem",
            "position": 1,
            "name": "Home",
            "item": "https://www.analysishms.com/"
        }, {
            "@type": "ListItem",
            "position": 2,
            "name": "About Analysis HMS",
            "item": "https://www.analysishms.com/about"
        }]
    }
</script>
<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "SoftwareApplication",
        "name": "Analysis HMS Cloud Hotel Software",
        "applicationCategory": "BusinessApplication",
        "operatingSystem": "Web",
        "description": "A comprehensive cloud hotel management software platform for automating hotel operations.",
        "url": "https://www.analysishms.com/application",
        "offers": {
            "@type": "Offer",
            "category": "SoftwareAsAService"
        },
        "author": {
            "@type": "Organization",
            "name": "Analysis HMS",
            "url": "https://www.analysishms.com/about"
        }
    }
</script>