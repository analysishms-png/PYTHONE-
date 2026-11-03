<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ __('Express Checkout') }} - {{ $company->comp_name ?? 'Hotel' }}</title>
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
        <div class="bg-slate-900 text-white px-6 pt-7 pb-12">
            <div class="inline-flex items-center gap-2 text-gold-400">
                <i class="fa-solid fa-crown text-sm"></i>
                <span
                    class="text-[11px] tracking-[0.2em] uppercase text-white/60 font-medium">{{ $company->comp_name ?? 'Hotel' }}</span>
            </div>
            <h1 class="font-serif text-3xl font-bold mt-3">{{ __('Express Checkout') }}</h1>
            <p class="text-xs text-white/50 mt-2 tracking-wide">{{ __('Room') }} {{ $stay->roomno ?? $roomno }}</p>
        </div>

        <div class="px-5 -mt-6">

            <!-- GUEST + BILL SUMMARY -->
            <div class="bg-white border border-slate-100 rounded-2xl shadow-sm p-5 space-y-3.5 mb-4">
                <div class="flex items-center gap-3.5">
                    <div class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600">
                        <i class="fa-regular fa-user"></i>
                    </div>
                    <div>
                        <p class="text-[11px] text-slate-400">{{ __('Guest') }}</p>
                        <p class="text-sm font-semibold text-slate-800">{{ $stay->guest_name ?? '-' }}</p>
                    </div>
                </div>

                <div class="flex items-center gap-3.5">
                    <div class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600">
                        <i class="fa-solid fa-door-closed"></i>
                    </div>
                    <div>
                        <p class="text-[11px] text-slate-400">{{ __('Room') }}</p>
                        <p class="text-sm font-semibold text-slate-800">{{ $stay->roomno ?? '-' }}</p>
                    </div>
                </div>

                <div class="flex items-center gap-3.5">
                    <div class="w-10 h-10 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600">
                        <i class="fa-regular fa-calendar-xmark"></i>
                    </div>
                    <div>
                        <p class="text-[11px] text-slate-400">{{ __('Departure Date') }}</p>
                        <p class="text-sm font-semibold text-slate-800">
                            {{ $stay->depdate ? \Carbon\Carbon::parse($stay->depdate)->format('d-M-Y') : '-' }}
                        </p>
                    </div>
                </div>
            </div>

            <!-- CURRENT BILL -->
            <div class="bg-slate-900 text-white rounded-2xl shadow-md p-5 flex items-center justify-between mb-5">
                <div>
                    <p class="text-[11px] text-white/50 uppercase tracking-wider">{{ __('Current Bill') }}</p>
                    <p class="font-serif text-3xl font-bold text-gold-400 mt-1">
                        &#8377; {{ number_format((float) ($stay->current_bill ?? 0), 2) }}
                    </p>
                </div>
                <div class="w-12 h-12 rounded-full bg-white/10 flex items-center justify-center">
                    <i class="fa-solid fa-receipt text-gold-400"></i>
                </div>
            </div>

            <!-- PAYMENT METHOD -->
            <p class="text-[11px] uppercase tracking-[0.2em] text-slate-400 font-semibold mb-3">
                {{ __('Payment Method') }}</p>

            <div class="bg-white border border-slate-100 rounded-2xl shadow-sm divide-y divide-slate-100 mb-5"
                id="paymentMethodGroup">
                <label class="flex items-center justify-between px-4 py-3.5 cursor-pointer">
                    <span class="flex items-center gap-3 text-sm text-slate-700">
                        <i class="fa-regular fa-credit-card text-slate-400"></i>
                        {{ __('Credit Card') }}
                    </span>
                    <input type="radio" name="payment_method" value="Credit Card" class="w-4 h-4 accent-gold-500">
                </label>
                <label class="flex items-center justify-between px-4 py-3.5 cursor-pointer">
                    <span class="flex items-center gap-3 text-sm text-slate-700">
                        <i class="fa-solid fa-mobile-screen-button text-slate-400"></i>
                        {{ __('UPI') }}
                    </span>
                    <input type="radio" name="payment_method" value="UPI" class="w-4 h-4 accent-gold-500">
                </label>
                <label class="flex items-center justify-between px-4 py-3.5 cursor-pointer">
                    <span class="flex items-center gap-3 text-sm text-slate-700">
                        <i class="fa-solid fa-building text-slate-400"></i>
                        {{ __('Company Credit') }}
                    </span>
                    <input type="radio" name="payment_method" value="Company Credit" class="w-4 h-4 accent-gold-500">
                </label>
                <label class="flex items-center justify-between px-4 py-3.5 cursor-pointer">
                    <span class="flex items-center gap-3 text-sm text-slate-700">
                        <i class="fa-solid fa-bell-concierge text-slate-400"></i>
                        {{ __('Pay at Reception') }}
                    </span>
                    <input type="radio" name="payment_method" value="Pay at Reception"
                        class="w-4 h-4 accent-gold-500">
                </label>
            </div>

            <!-- CONFIRM CHECKBOX -->
            <label class="flex items-start gap-2.5 mb-6 cursor-pointer">
                <input type="checkbox" id="confirmCheckout" class="mt-0.5 w-4 h-4 rounded accent-gold-500">
                <span class="text-sm text-slate-700 font-medium">{{ __('I confirm checkout.') }}</span>
            </label>

            @if ($alreadyRequested)
                <div
                    class="bg-gold-50/60 border border-gold-100 rounded-xl p-4 mb-5 text-center text-sm text-slate-600">
                    <i class="fa-solid fa-clock text-gold-600 mr-1.5"></i>
                    {{ __('A checkout request is already pending. Our Front Desk will reach out shortly.') }}
                </div>
            @else
                <!-- ACTIONS -->
                <div class="flex items-center gap-3">
                    <button type="button" id="submitCheckoutBtn" onclick="submitCheckoutRequest()"
                        class="flex-1 bg-slate-900 text-white text-sm font-semibold py-3.5 rounded-xl hover:bg-slate-800 transition">
                        {{ __('Submit Request') }}
                    </button>
                    <a href="{{ route('guestportal', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                        class="flex-1 text-center bg-white border border-slate-200 text-slate-600 text-sm font-semibold py-3.5 rounded-xl hover:bg-slate-50 transition">
                        {{ __('Cancel') }}
                    </a>
                </div>
                <p id="checkoutMsg" class="text-xs text-center mt-3 hidden"></p>
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
                class="flex flex-col items-center text-slate-400 hover:text-slate-700">
                <i class="fa-regular fa-user text-base"></i>
                <span class="text-[10px] font-medium mt-1 tracking-wide">{{ __('My Profile') }}</span>
            </a>

        </div>

    </div>

    <script>
        function showCheckoutMsg(msg, isError) {
            const el = document.getElementById('checkoutMsg');
            if (!el) return;
            el.textContent = msg;
            el.classList.remove('hidden');
            el.classList.toggle('text-red-500', isError);
            el.classList.toggle('text-green-600', !isError);
        }

        function submitCheckoutRequest() {
            const selected = document.querySelector('input[name="payment_method"]:checked');
            const confirmed = document.getElementById('confirmCheckout').checked;

            if (!selected) {
                showCheckoutMsg("{{ __('Please select a payment method.') }}", true);
                return;
            }
            if (!confirmed) {
                showCheckoutMsg("{{ __('Please confirm checkout to proceed.') }}", true);
                return;
            }

            const btn = document.getElementById('submitCheckoutBtn');
            btn.disabled = true;
            btn.textContent = "{{ __('Sending...') }}";

            fetch("{{ route('guestportal.expresscheckoutsubmit', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}", {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content,
                        'Accept': 'application/json'
                    },
                    body: JSON.stringify({
                        payment_method: selected.value,
                        confirm: confirmed
                    })
                })
                .then(res => res.json())
                .then(data => {
                    if (data.success) {
                        btn.textContent = "{{ __('Request Sent') }}";
                        showCheckoutMsg("{{ __('Checkout request sent! Our Front Desk will reach out shortly.') }}",
                            false);
                    } else {
                        btn.disabled = false;
                        btn.textContent = "{{ __('Submit Request') }}";
                        showCheckoutMsg(data.message || "{{ __('Something went wrong.') }}", true);
                    }
                })
                .catch(() => {
                    btn.disabled = false;
                    btn.textContent = "{{ __('Submit Request') }}";
                    showCheckoutMsg("{{ __('Network error. Please try again.') }}", true);
                });
        }
    </script>

</body>

</html>
