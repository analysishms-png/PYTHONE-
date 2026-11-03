<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('Room Not Occupied') }} - {{ $company->comp_name ?? 'Hotel' }}</title>
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

<body class="bg-[#F7F5F0] font-sans text-slate-800 min-h-screen flex items-center justify-center px-6">

    <div class="max-w-sm w-full bg-white border border-slate-100 rounded-2xl shadow-sm p-8 text-center">

        <div class="w-16 h-16 rounded-full bg-gold-50 flex items-center justify-center text-gold-600 mx-auto mb-5">
            <i class="fa-solid fa-door-closed text-2xl"></i>
        </div>

        <h2 class="font-serif text-lg tracking-[0.15em] font-semibold uppercase text-slate-800 mb-1">
            {{ $company->comp_name ?? 'Hotel' }}
        </h2>

        <p class="text-[11px] text-slate-400 uppercase tracking-[0.2em] mb-6">
            {{ __('Room') }} {{ $roomno }}
        </p>

        <h1 class="font-serif text-xl font-bold text-slate-800 mb-3">
            {{ __('This room is currently not occupied.') }}
        </h1>

        <p class="text-sm text-slate-500 mb-6 leading-relaxed">
            {{ __('Guest services are available only after check-in.') }}<br>
            {{ __('If you need assistance, please contact Front Desk.') }}
        </p>

        @if (!empty($receptionNo))
            @php
                $isPhoneLike = preg_match('/^[\d\s\+\-\(\)]{6,}$/', trim($receptionNo));
            @endphp
            @if ($isPhoneLike)
                <a href="tel:{{ $receptionNo }}"
                    class="inline-flex items-center gap-2.5 bg-slate-900 text-white text-sm font-semibold px-5 py-3 rounded-xl hover:bg-slate-800 transition">
                    <i class="fa-solid fa-phone text-gold-400"></i>
                    {{ __('Reception') }} : {{ $receptionNo }}
                </a>
            @else
                <div
                    class="inline-flex items-center gap-2.5 bg-slate-50 border border-slate-200 text-slate-700 text-sm font-semibold px-5 py-3 rounded-xl">
                    <i class="fa-solid fa-phone text-gold-500"></i>
                    {{ __('Reception') }} : {{ $receptionNo }}
                </div>
            @endif
        @else
            <p class="text-xs text-slate-400 italic">
                {{ __('Reception contact not available. Please visit the Front Desk.') }}
            </p>
        @endif

    </div>

</body>

</html>
