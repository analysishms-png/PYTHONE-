<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guest Portal - {{ $company->comp_name ?? 'Hotel' }}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Inter:wght@400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Inter', 'ui-sans-serif', 'system-ui'],
                        serif: ['Playfair Display', 'ui-serif', 'Georgia'],
                    },
                    colors: {
                        gold: {
                            50: '#FBF7EC',
                            100: '#F5EACB',
                            300: '#E4C374',
                            400: '#D4AF37',
                            500: '#BE9B2E',
                            600: '#9C7F22'
                        },
                    },
                },
            },
        };
    </script>
    <style>
        .hero-bg {
            background: linear-gradient(to bottom, rgba(15, 23, 42, 0.82), rgba(15, 23, 42, 0.97)),
                url('https://images.unsplash.com/photo-1618773928121-c32242e63f39?auto=format&fit=crop&q=80&w=1000');
            background-size: cover;
            background-position: center;
        }
    </style>
</head>

<body class="bg-[#F7F5F0] font-sans text-slate-800 pb-24 min-h-screen">

    <div class="max-w-md mx-auto bg-[#F7F5F0] min-h-screen relative shadow-xl">

        @php
            $roomno = $roomno ?? ($guest['room_no'] ?? null);
        @endphp

        <!-- HERO -->
        <div class="hero-bg text-white px-6 pt-6 pb-10 relative">

            <div class="flex justify-between items-center mb-8">
                {{-- <button class="text-white/80 text-lg focus:outline-none">
                    <i class="fa-solid fa-bars"></i>
                </button> --}}

                <form action="{{ route('lang.switch') }}" method="GET" id="guestLangForm">
                    <div
                        class="flex items-center space-x-1.5 bg-white/10 backdrop-blur-md px-3 py-1.5 rounded-full text-xs border border-white/15">
                        <i class="fa-solid fa-globe text-gold-300"></i>
                        <select name="lang" onchange="document.getElementById('guestLangForm').submit();"
                            class="bg-transparent text-white/90 focus:outline-none cursor-pointer text-xs">
                            <option value="en" class="text-slate-900"
                                {{ app()->getLocale() == 'en' ? 'selected' : '' }}>English</option>
                            <option value="es" class="text-slate-900"
                                {{ app()->getLocale() == 'es' ? 'selected' : '' }}>Español</option>
                            <option value="fr" class="text-slate-900"
                                {{ app()->getLocale() == 'fr' ? 'selected' : '' }}>Français</option>
                            <option value="de" class="text-slate-900"
                                {{ app()->getLocale() == 'de' ? 'selected' : '' }}>Deutsch</option>
                            <option value="hi" class="text-slate-900"
                                {{ app()->getLocale() == 'hi' ? 'selected' : '' }}>हिन्दी</option>
                            <option value="ar" class="text-slate-900"
                                {{ app()->getLocale() == 'ar' ? 'selected' : '' }}>العربية</option>
                        </select>
                    </div>
                </form>
            </div>

            <div class="text-center mb-7">
                <div
                    class="inline-flex items-center justify-center w-11 h-11 rounded-full border border-gold-400/40 mb-3">
                    <i class="fa-solid fa-crown text-gold-400"></i>
                </div>
                <h2 class="font-serif text-base tracking-[0.2em] font-semibold uppercase text-white/90">
                    {{ $company->comp_name ?? 'Hotel' }}
                </h2>
                <p class="text-[10px] tracking-[0.3em] uppercase text-gold-400/90 font-medium mt-1">
                    {{ __('Experience Luxury') }}
                </p>
            </div>

            <div class="text-center mb-7">
                <p class="text-[11px] font-light text-white/50 uppercase tracking-[0.25em]">{{ __('Welcome') }}</p>
                <h1 class="font-serif text-3xl font-bold tracking-wide mt-1">
                    {{ $guest['guest_name'] ?? __('Guest') }}
                </h1>
                <div
                    class="flex justify-center items-center gap-2 text-xs text-white/60 mt-2 font-medium tracking-wide">
                    <span class="w-1 h-1 rounded-full bg-gold-400"></span>
                    <span>{{ __('Room No.') }} {{ $guest['room_no'] ?? $roomno }}</span>
                    <span class="w-1 h-1 rounded-full bg-gold-400"></span>
                </div>
            </div>

            <div
                class="bg-white/10 backdrop-blur-md rounded-full py-3 px-5 text-center text-xs text-white/80 border border-white/10 flex items-center justify-center gap-2.5">
                <i class="fa-regular fa-bell text-gold-400"></i>
                <span>{{ __('How can we make your stay more comfortable?') }}</span>
            </div>

        </div>


        <!-- MAIN SERVICES GRID -->
        <div class="px-5 py-7">
            <p class="text-[11px] uppercase tracking-[0.2em] text-slate-400 font-semibold mb-4">{{ __('Services') }}
            </p>

            <div class="grid grid-cols-3 gap-y-6 gap-x-2 text-center">

                <a href="#" class="flex flex-col items-center group">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-bed text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Linen') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Request linen items') }}</span>
                </a>

                <a href="#" class="flex flex-col items-center group">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-pump-soap text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Amenities') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Request amenities') }}</span>
                </a>

                <a href="#" class="flex flex-col items-center group">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-broom text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Housekeeping') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Cleaning & service') }}</span>
                </a>

                <a href="#" class="flex flex-col items-center group">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-shirt text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Laundry') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Laundry & dry cleaning') }}</span>
                </a>

                <a href="#" class="flex flex-col items-center group">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-wrench text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Maintenance') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Report an issue') }}</span>
                </a>

                {{-- FEEDBACK TILE — jaisa tha waisa hi, chhua nahi --}}
                <a href="{{ route('feedback', ['propertyid' => $company->propertyid ?? ($propertyid ?? null)]) }}"
                    class="flex flex-col items-center group">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-regular fa-clipboard text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Feedback') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Share your feedback') }}</span>
                </a>

            </div>


            <!-- EXPRESS CHECKOUT -->
            <div class="mt-8 bg-slate-900 text-white rounded-2xl p-5 flex items-center justify-between shadow-md">
                <div class="flex items-center gap-3.5">
                    <div class="w-11 h-11 rounded-xl bg-white/10 flex items-center justify-center text-gold-400">
                        <i class="fa-solid fa-door-open"></i>
                    </div>
                    <div>
                        <h3 class="text-sm font-semibold">{{ __('Express Checkout') }}</h3>
                        <p class="text-xs text-white/50 mt-0.5">{{ __('Save time, checkout digitally') }}</p>
                    </div>
                </div>
                <a href="#"
                    class="w-9 h-9 rounded-full bg-white/10 flex items-center justify-center hover:bg-white/20 transition">
                    <i class="fa-solid fa-arrow-right text-xs text-gold-400"></i>
                </a>
            </div>

            <!-- ABOUT HOTEL — ab isi ki jagah Hotel Info tab ke andar hai (bottom nav), alag link nahi chahiye -->

        </div>


        <!-- BOTTOM NAVIGATION BAR -->
        <div
            class="fixed bottom-0 left-0 right-0 max-w-md mx-auto bg-white/95 backdrop-blur border-t border-slate-100 py-3 px-6 flex justify-between items-center text-center z-50">

            @if ($propertyid && $roomno)
                <a href="{{ route('guestportal', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                    class="flex flex-col items-center text-gold-600">
                    <i class="fa-solid fa-house text-base"></i>
                    <span class="text-[10px] font-semibold mt-1 tracking-wide">{{ __('Home') }}</span>
                </a>

                <a href="{{ route('guestportal.mystay', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                    class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                    <i class="fa-regular fa-file-lines text-base"></i>
                    <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('My Stay') }}</span>
                </a>

                <a href="{{ route('guestportal.hotelinfo', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                    class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                    <i class="fa-solid fa-hotel text-base"></i>
                    <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('Hotel Info') }}</span>
                </a>

                <a href="{{ route('guestportal.myprofile', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                    class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                    <i class="fa-regular fa-user text-base"></i>
                    <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('My Profile') }}</span>
                </a>
            @else
                <a href="{{ url()->current() }}" class="flex flex-col items-center text-gold-600">
                    <i class="fa-solid fa-house text-base"></i>
                    <span class="text-[10px] font-semibold mt-1 tracking-wide">{{ __('Home') }}</span>
                </a>
                <span class="flex flex-col items-center text-slate-300">
                    <i class="fa-regular fa-file-lines text-base"></i>
                    <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('My Stay') }}</span>
                </span>
                <span class="flex flex-col items-center text-slate-300">
                    <i class="fa-solid fa-hotel text-base"></i>
                    <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('Hotel Info') }}</span>
                </span>
                <span class="flex flex-col items-center text-slate-300">
                    <i class="fa-regular fa-user text-base"></i>
                    <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('My Profile') }}</span>
                </span>
            @endif

        </div>

    </div>

</body>

</html>
