<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('My Profile') }} - {{ $company->comp_name ?? 'Hotel' }}</title>
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
        <div class="bg-slate-900 text-white px-6 pt-8 pb-20 text-center">
            <p class="text-[10px] tracking-[0.25em] uppercase text-gold-400/90 font-medium">{{ __('My Profile') }}</p>
            <h1 class="font-serif text-xl font-bold mt-1.5">{{ $company->comp_name ?? 'Hotel' }}</h1>
        </div>

        <div class="px-5 -mt-14">
            @if ($profile)
                <!-- AVATAR -->
                <div class="flex flex-col items-center -mb-9 relative z-10">
                    <div
                        class="w-24 h-24 rounded-full overflow-hidden bg-slate-100 border-4 border-[#F7F5F0] shadow-md flex items-center justify-center">
                        @if ($picUrl)
                            <img src="{{ $picUrl }}" alt="{{ $profile->name }}"
                                class="w-full h-full object-cover">
                        @else
                            <i class="fa-regular fa-user text-3xl text-slate-400"></i>
                        @endif
                    </div>
                </div>

                <div class="bg-white border border-slate-100 rounded-2xl shadow-sm pt-14 pb-5 px-5 space-y-4">
                    <h2 class="text-center font-serif text-lg font-bold text-slate-800 -mt-1">
                        {{ $profile->name ?? '-' }}</h2>

                    <div class="flex items-start gap-3.5 pt-2 border-t border-slate-100">
                        <div
                            class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600 shrink-0">
                            <i class="fa-solid fa-location-dot"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Address') }}</p>
                            <p class="text-sm font-semibold text-slate-800">
                                {{ trim(($profile->add1 ?? '') . ' ' . ($profile->add2 ?? '') . ' ' . ($profile->cityname ?? '')) ?: '-' }}
                            </p>
                        </div>
                    </div>

                    <div class="flex items-start gap-3.5">
                        <div
                            class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600 shrink-0">
                            <i class="fa-solid fa-flag"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Nationality') }}</p>
                            <p class="text-sm font-semibold text-slate-800">{{ $profile->nationality ?? '-' }}</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-3.5">
                        <div
                            class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600 shrink-0">
                            <i class="fa-solid fa-mobile-screen-button"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Mobile No.') }}</p>
                            <p class="text-sm font-semibold text-slate-800">{{ $profile->mobile_no ?? '-' }}</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-3.5">
                        <div
                            class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600 shrink-0">
                            <i class="fa-regular fa-envelope"></i>
                        </div>
                        <div>
                            <p class="text-[11px] text-slate-400">{{ __('Email') }}</p>
                            <p class="text-sm font-semibold text-slate-800 break-all">{{ $profile->email_id ?? '-' }}
                            </p>
                        </div>
                    </div>

                    <div class="grid grid-cols-2 gap-3 pt-2">
                        <div class="bg-gold-50/60 rounded-xl p-3.5 border border-gold-100">
                            <p class="text-[9px] text-slate-400 uppercase tracking-wider">{{ __('Date of Birth') }}</p>
                            <p class="text-xs font-bold text-slate-800 mt-1">
                                {{ $profile->dob ? \Carbon\Carbon::parse($profile->dob)->format('d M Y') : '-' }}
                            </p>
                        </div>
                        <div class="bg-gold-50/60 rounded-xl p-3.5 border border-gold-100">
                            <p class="text-[9px] text-slate-400 uppercase tracking-wider">{{ __('Anniversary') }}</p>
                            <p class="text-xs font-bold text-slate-800 mt-1">
                                {{ $profile->anniversary ? \Carbon\Carbon::parse($profile->anniversary)->format('d M Y') : '-' }}
                            </p>
                        </div>
                    </div>
                </div>
            @else
                <div class="text-center py-16 text-slate-400">
                    <i class="fa-regular fa-face-frown text-4xl mb-3"></i>
                    <p class="text-sm">{{ __('Profile information not available.') }}</p>
                </div>
            @endif

            <!-- PREVIOUS VISITS -->
            @if ($profile && $previousVisits->isNotEmpty())
                <div class="bg-white border border-slate-100 rounded-2xl shadow-sm p-5 mt-4">
                    <h3
                        class="text-[11px] uppercase tracking-[0.15em] text-slate-400 font-semibold mb-1 flex items-center gap-2">
                        <span class="w-7 h-7 rounded-lg bg-gold-50 flex items-center justify-center text-gold-600">
                            <i class="fa-regular fa-clock text-[11px]"></i>
                        </span>
                        {{ __('Stay History') }}
                    </h3>
                    <p class="text-[10px] text-slate-400 mb-3 ml-9">{{ __('Previous Visits') }}</p>

                    <div class="divide-y divide-slate-100">
                        @foreach ($previousVisits as $visit)
                            <div class="flex items-center justify-between py-3 text-sm gap-2">
                                <span class="text-slate-700 font-medium w-24 shrink-0">
                                    {{ $visit->chkindate ? \Carbon\Carbon::parse($visit->chkindate)->format('d-M-Y') : '-' }}
                                </span>
                                <span class="text-slate-500 flex-1">{{ __('Room') }}
                                    {{ $visit->RoomNo ?? '-' }}</span>
                                <span class="text-slate-500 w-16 shrink-0">{{ $visit->Nights ?? '-' }}
                                    {{ __('Nights') }}</span>
                                <span class="shrink-0">
                                    @if (!is_null($visit->overallrating))
                                        <span class="text-gold-500 text-xs tracking-tighter">
                                            @for ($i = 1; $i <= 5; $i++)
                                                <i
                                                    class="fa-{{ $i <= (int) $visit->overallrating ? 'solid' : 'regular' }} fa-star"></i>
                                            @endfor
                                        </span>
                                    @else
                                        <span class="text-[10px] text-slate-300 italic">{{ __('No rating') }}</span>
                                    @endif
                                </span>
                            </div>
                        @endforeach
                    </div>
                </div>
            @endif
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
                class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                <i class="fa-solid fa-hotel text-base"></i>
                <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('Hotel Info') }}</span>
            </a>

            <a href="{{ route('guestportal.myprofile', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                class="flex flex-col items-center text-gold-600">
                <i class="fa-regular fa-user text-base"></i>
                <span class="text-[10px] font-semibold mt-1 tracking-wide">{{ __('My Profile') }}</span>
            </a>

        </div>

    </div>

</body>

</html>
