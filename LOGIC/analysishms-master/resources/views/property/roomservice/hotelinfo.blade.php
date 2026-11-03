<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('Hotel Info') }} - {{ $company->comp_name ?? 'Hotel' }}</title>
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
</head>

<body class="bg-[#F7F5F0] font-sans text-slate-800 pb-24 min-h-screen">

    <div class="max-w-md mx-auto bg-[#F7F5F0] min-h-screen relative shadow-xl">

        <!-- HEADER -->
        <div class="bg-slate-900 text-white px-6 pt-8 pb-14 text-center">
            <div class="inline-flex items-center justify-center w-12 h-12 rounded-full border border-gold-400/40 mb-3">
                <i class="fa-solid fa-hotel text-gold-400"></i>
            </div>
            <h1 class="font-serif text-2xl font-bold">{{ $hotel->comp_name ?? 'Hotel' }}</h1>
            <p class="text-[10px] tracking-[0.25em] uppercase text-gold-400/90 font-medium mt-1.5">
                {{ __('Hotel Info') }}</p>
        </div>

        <div class="px-5 -mt-7 space-y-4">
            @if ($hotel)
                <!-- CONTACT DETAILS -->
                <div class="bg-white border border-slate-100 rounded-2xl shadow-sm p-5 space-y-4">

                    <div class="flex items-start gap-3.5">
                        <div
                            class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600 shrink-0">
                            <i class="fa-solid fa-location-dot"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Address') }}</p>
                            <p class="text-sm font-semibold text-slate-800">
                                {{ trim(($hotel->address1 ?? '') . ' ' . ($hotel->address2 ?? '') . ' ' . ($hotel->city ?? '')) ?: '-' }}
                            </p>
                        </div>
                    </div>

                    <div class="flex items-start gap-3.5">
                        <div
                            class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600 shrink-0">
                            <i class="fa-solid fa-phone"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Mobile') }}</p>
                            <a href="tel:{{ $hotel->mobile }}"
                                class="text-sm font-semibold text-slate-800">{{ $hotel->mobile ?? '-' }}</a>
                        </div>
                    </div>

                    <div class="flex items-start gap-3.5">
                        <div
                            class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600 shrink-0">
                            <i class="fa-regular fa-envelope"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Email') }}</p>
                            <a href="mailto:{{ $hotel->email }}"
                                class="text-sm font-semibold text-slate-800 break-all">{{ $hotel->email ?? '-' }}</a>
                        </div>
                    </div>

                    @if (!empty($hotel->website))
                        <div class="flex items-start gap-3.5">
                            <div
                                class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600 shrink-0">
                                <i class="fa-solid fa-globe"></i>
                            </div>
                            <div>
                                <p class="text-[11px] text-slate-400">{{ __('Website') }}</p>
                                <a href="{{ $hotel->website }}" target="_blank"
                                    class="text-sm font-semibold text-slate-800 break-all">{{ $hotel->website }}</a>
                            </div>
                        </div>
                    @endif

                </div>
            @else
                <div class="text-center py-10 text-slate-400">
                    <i class="fa-regular fa-face-frown text-4xl mb-3"></i>
                    <p class="text-sm">{{ __('Hotel information not available.') }}</p>
                </div>
            @endif

            <!-- SERVICES & FACILITIES -->
            <div class="bg-white border border-slate-100 rounded-2xl shadow-sm p-5">
                <h3
                    class="text-[11px] uppercase tracking-[0.15em] text-slate-400 font-semibold mb-4 flex items-center gap-2">
                    <span class="w-7 h-7 rounded-lg bg-gold-50 flex items-center justify-center text-gold-600">
                        <i class="fa-solid fa-concierge-bell text-[11px]"></i>
                    </span>
                    {{ __('Services & Facilities') }}
                </h3>

                @forelse ($services as $groupName => $items)
                    <div class="mb-4 last:mb-0">
                        <p class="text-[11px] font-semibold text-gold-600 uppercase tracking-wide mb-2">
                            {{ $groupName ?: __('General') }}</p>
                        <div class="bg-slate-50 border border-slate-100 rounded-xl divide-y divide-slate-100">
                            @foreach ($items as $item)
                                <div class="px-4 py-2.5 text-sm flex items-center justify-between">
                                    <span class="text-slate-800 flex items-center gap-2">
                                        <i class="fa-solid fa-check text-gold-500 text-[10px]"></i>
                                        {{ $item->service }}
                                    </span>
                                    @if (!empty($item->remark))
                                        <span class="text-xs text-slate-400">{{ $item->remark }}</span>
                                    @endif
                                </div>
                            @endforeach
                        </div>
                    </div>
                @empty
                    <p class="text-sm text-slate-400">{{ __('No services listed.') }}</p>
                @endforelse
            </div>

            <!-- OUTLETS -->
            <div class="bg-white border border-slate-100 rounded-2xl shadow-sm p-5">
                <h3
                    class="text-[11px] uppercase tracking-[0.15em] text-slate-400 font-semibold mb-4 flex items-center gap-2">
                    <span class="w-7 h-7 rounded-lg bg-gold-50 flex items-center justify-center text-gold-600">
                        <i class="fa-solid fa-utensils text-[11px]"></i>
                    </span>
                    {{ __('Outlets & Timings') }}
                </h3>

                @forelse ($outlets as $outlet)
                    <div
                        class="flex items-center justify-between bg-slate-50 border border-slate-100 rounded-xl px-4 py-3 mb-2 last:mb-0 text-sm">
                        <div>
                            <span class="text-slate-800 font-medium block">{{ $outlet->name }}</span>
                            <span class="text-xs text-slate-400">{{ $outlet->floor_name ?? '' }}</span>
                        </div>
                        <span class="text-xs font-semibold text-gold-600">{{ $outlet->timing ?? '-' }}</span>
                    </div>
                @empty
                    <p class="text-sm text-slate-400">{{ __('No outlets listed.') }}</p>
                @endforelse
            </div>

        </div>

        <!-- BOTTOM NAVIGATION BAR -->
        <div
            class="fixed bottom-0 left-0 right-0 max-w-md mx-auto bg-white/95 backdrop-blur border-t border-slate-100 py-3 px-6 flex justify-between items-center text-center z-50">

            <a href="{{ route('guestportal', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                <i class="fa-solid fa-house text-base"></i>
                <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('Home') }}</span>
            </a>

            <a href="{{ route('guestportal.mystay', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                <i class="fa-regular fa-file-lines text-base"></i>
                <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('My Stay') }}</span>
            </a>

            <a href="{{ route('guestportal.hotelinfo', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                class="flex flex-col items-center text-gold-600">
                <i class="fa-solid fa-hotel text-base"></i>
                <span class="text-[10px] font-semibold mt-1 tracking-wide">{{ __('Hotel Info') }}</span>
            </a>

            <a href="{{ route('guestportal.myprofile', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                <i class="fa-regular fa-user text-base"></i>
                <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('My Profile') }}</span>
            </a>

        </div>

    </div>

</body>

</html>
