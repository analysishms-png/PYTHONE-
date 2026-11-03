<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('My Stay') }} - {{ $company->comp_name ?? 'Hotel' }}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
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
                        gold: { 50: '#FBF7EC', 100: '#F5EACB', 300: '#E4C374', 400: '#D4AF37', 500: '#BE9B2E', 600: '#9C7F22' },
                    },
                },
            },
        };
    </script>
</head>

<body class="bg-[#F7F5F0] font-sans text-slate-800 pb-24 min-h-screen">

    <div class="max-w-md mx-auto bg-[#F7F5F0] min-h-screen relative shadow-xl">

        <!-- HEADER -->
        <div class="bg-slate-900 text-white px-6 pt-7 pb-12">
            <div class="inline-flex items-center gap-2 text-gold-400">
                <i class="fa-solid fa-crown text-sm"></i>
                <span class="text-[11px] tracking-[0.2em] uppercase text-white/60 font-medium">{{ $company->comp_name ?? 'Hotel' }}</span>
            </div>
            <h1 class="font-serif text-3xl font-bold mt-3">{{ __('My Stay') }}</h1>
            <p class="text-xs text-white/50 mt-2 tracking-wide">{{ __('Room') }} {{ $stay->roomno ?? $roomno }} &middot; {{ $stay->guest_name ?? '' }}</p>
        </div>

        <div class="px-5 -mt-6">
            @if ($stay)
                <!-- QUICK STAT CARDS -->
                <div class="grid grid-cols-3 gap-2.5 mb-4">
                    <div class="bg-white rounded-2xl shadow-sm p-3.5 text-center border border-slate-100">
                        <i class="fa-regular fa-calendar-check text-gold-500 mb-1.5"></i>
                        <p class="text-[9px] text-slate-400 uppercase tracking-wider">{{ __('Check-in') }}</p>
                        <p class="text-xs font-bold text-slate-800 mt-1">
                            {{ $stay->chkindate ? \Carbon\Carbon::parse($stay->chkindate)->format('d M') : '-' }}
                        </p>
                    </div>
                    <div class="bg-white rounded-2xl shadow-sm p-3.5 text-center border border-slate-100">
                        <i class="fa-regular fa-calendar-xmark text-gold-500 mb-1.5"></i>
                        <p class="text-[9px] text-slate-400 uppercase tracking-wider">{{ __('Check-out') }}</p>
                        <p class="text-xs font-bold text-slate-800 mt-1">
                            {{ $stay->depdate ? \Carbon\Carbon::parse($stay->depdate)->format('d M') : '-' }}
                        </p>
                    </div>
                    <div class="bg-white rounded-2xl shadow-sm p-3.5 text-center border border-slate-100">
                        <i class="fa-regular fa-moon text-gold-500 mb-1.5"></i>
                        <p class="text-[9px] text-slate-400 uppercase tracking-wider">{{ __('Nights') }}</p>
                        <p class="text-xs font-bold text-slate-800 mt-1">{{ $stay->nodays ?? '-' }}</p>
                    </div>
                </div>

                <!-- ROOM DETAILS -->
                <div class="bg-white border border-slate-100 rounded-2xl shadow-sm p-5 space-y-4 mb-4">
                    <p class="text-[11px] uppercase tracking-[0.15em] text-slate-400 font-semibold mb-1">{{ __('Room Details') }}</p>

                    <div class="flex items-center gap-3.5">
                        <div class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600">
                            <i class="fa-solid fa-bed"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Room Type') }}</p>
                            <p class="text-sm font-semibold text-slate-800">{{ $stay->room_type ?? '-' }}</p>
                        </div>
                    </div>

                    <div class="flex items-center gap-3.5">
                        <div class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600">
                            <i class="fa-solid fa-door-closed"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Room No.') }}</p>
                            <p class="text-sm font-semibold text-slate-800">{{ $stay->roomno ?? '-' }}</p>
                        </div>
                    </div>

                    <div class="flex items-center gap-3.5">
                        <div class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600">
                            <i class="fa-regular fa-user"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Guest Name') }}</p>
                            <p class="text-sm font-semibold text-slate-800">{{ $stay->guest_name ?? '-' }}</p>
                        </div>
                    </div>
                </div>

                <!-- CURRENT BILL -->
                <div class="bg-slate-900 text-white rounded-2xl shadow-md p-5 flex items-center justify-between mb-4">
                    <div>
                        <p class="text-[11px] text-white/50 uppercase tracking-wider">{{ __('Current Bill') }}</p>
                        <p class="font-serif text-2xl font-bold text-gold-400 mt-1">
                            &#8377; {{ number_format((float) ($stay->current_bill ?? 0), 2) }}
                        </p>
                    </div>
                    <div class="w-12 h-12 rounded-full bg-white/10 flex items-center justify-center">
                        <i class="fa-solid fa-receipt text-gold-400"></i>
                    </div>
                </div>
            @else
                <div class="text-center py-16 text-slate-400">
                    <i class="fa-regular fa-face-frown text-4xl mb-3"></i>
                    <p class="text-sm">{{ __('No active stay found for this room.') }}</p>
                </div>
            @endif
        </div>

        <!-- BOTTOM NAVIGATION BAR -->
        <div class="fixed bottom-0 left-0 right-0 max-w-md mx-auto bg-white/95 backdrop-blur border-t border-slate-100 py-3 px-6 flex justify-between items-center text-center z-50">

            <a href="{{ route('guestportal', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                <i class="fa-solid fa-house text-base"></i>
                <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('Home') }}</span>
            </a>

            <a href="{{ route('guestportal.mystay', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                class="flex flex-col items-center text-gold-600">
                <i class="fa-regular fa-file-lines text-base"></i>
                <span class="text-[10px] font-semibold mt-1 tracking-wide">{{ __('My Stay') }}</span>
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

        </div>

    </div>

</body>

</html>