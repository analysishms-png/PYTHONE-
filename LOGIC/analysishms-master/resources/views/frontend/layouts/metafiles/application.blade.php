     @php
         $meta = \App\Models\MetaTag::getByPageName('application');
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
         <title>Analysis HMS Application - Complete Hotel Management Software & PMS</title>
         <meta name="description"
             content="Download Analysis HMS hotel management software application. Comprehensive cloud-based PMS for front office, reservations, billing, inventory, and restaurant POS.">
         <meta name="keywords"
             content="hotel management software application, hotel PMS software, hospitality management system, cloud hotel software, hotel operations software, Analysis HMS download">
         <meta name="robots" content="index, follow">
         <link rel="canonical" href="https://www.analysishms.com/application">

         <meta property="og:title" content="Analysis HMS Application - Complete Hotel Management Software & PMS">
         <meta property="og:description"
             content="Download Analysis HMS hotel management software application. Comprehensive cloud-based PMS for front office, reservations, billing, inventory, and restaurant POS.">
         <meta property="og:url" content="https://www.analysishms.com/application">
         <meta property="og:type" content="website">
         <meta property="og:site_name" content="Analysis HMS">
         <meta property="og:image" content="https://analysishms.com/assets/img/favicon.png">

         <meta name="twitter:card" content="summary_large_image">
         <meta name="twitter:title" content="Analysis HMS Application - Complete Hotel Management Software & PMS">
         <meta name="twitter:description"
             content="Download Analysis HMS hotel management software application. Comprehensive cloud-based PMS for front office, reservations, billing, inventory, and restaurant POS.">
         <meta name="twitter:image" content="https://analysishms.com/assets/img/favicon.png">

         <link href="https://www.analysishms.com/assets/img/favicon.png" rel="icon">
         <link href="https://www.analysishms.com/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
     @endif
     <script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "SoftwareApplication",
    "name": "Analysis HMS Hotel Management Software",
    "applicationCategory": "BusinessApplication",
    "operatingSystem": "Windows, Web",
    "description": "Complete hotel management software application for hotel operations including front office, billing, inventory, reservations, and restaurant POS.",
    "url": "https://www.analysishms.com/application",
    "downloadUrl": "https://analysishms.com/storage/admin/Analysis.exe",
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
