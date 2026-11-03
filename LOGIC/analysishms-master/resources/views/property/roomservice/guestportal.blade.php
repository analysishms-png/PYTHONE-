<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
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

        /* stepper input — compact +/- */
        .qty-stepper .qty-value {
            width: 28px;
            min-width: 28px;
            max-width: 28px;
        }

        .time-wheel-container {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 4px;
            height: 132px;
            margin: 12px 0 6px;
        }

        .wheel-highlight {
            position: absolute;
            top: 44px;
            left: 0;
            right: 0;
            height: 44px;
            background: rgba(212, 175, 55, 0.08);
            border-top: 1px solid #E4C374;
            border-bottom: 1px solid #E4C374;
            pointer-events: none;
            z-index: 0;
            border-radius: 8px;
        }

        .time-wheel {
            height: 132px;
            width: 62px;
            overflow-y: scroll;
            scroll-snap-type: y mandatory;
            -webkit-overflow-scrolling: touch;
            scrollbar-width: none;
            position: relative;
            z-index: 1;
        }

        .time-wheel::-webkit-scrollbar {
            display: none;
        }

        .wheel-item {
            height: 44px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
            font-weight: 600;
            color: #cbd5e1;
            scroll-snap-align: center;
            transition: color .15s, transform .15s;
        }

        .wheel-item.active {
            color: #0f172a;
            transform: scale(1.08);
        }

        .time-sep {
            font-size: 22px;
            font-weight: 700;
            color: #0f172a;
            z-index: 1;
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


        <div class="px-5 py-7">
            <p class="text-[11px] uppercase tracking-[0.2em] text-slate-400 font-semibold mb-4">{{ __('Services') }}
            </p>

            <div class="grid grid-cols-3 gap-y-6 gap-x-2 text-center">

                <button type="button" onclick="openServiceModal('linen')"
                    class="flex flex-col items-center group w-full">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-bed text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Linen') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Request linen items') }}</span>
                </button>

                <button type="button" onclick="openServiceModal('amenities')"
                    class="flex flex-col items-center group w-full">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-pump-soap text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Amenities') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Request amenities') }}</span>
                </button>

                <button type="button" onclick="openServiceModal('housekeeping')"
                    class="flex flex-col items-center group w-full">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-broom text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Housekeeping') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Cleaning & service') }}</span>
                </button>

                <button type="button" onclick="openServiceModal('laundry')"
                    class="flex flex-col items-center group w-full">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-shirt text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Laundry') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Laundry & dry cleaning') }}</span>
                </button>

                <button type="button" onclick="openServiceModal('maintenance')"
                    class="flex flex-col items-center group w-full">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-wrench text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Maintenance') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Report an issue') }}</span>
                </button>

                <a href="{{ route('feedback', ['propertyid' => $company->propertyid ?? ($propertyid ?? null)]) }}"
                    class="flex flex-col items-center group">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-regular fa-clipboard text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Feedback') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Share your feedback') }}</span>
                </a>

                <button type="button" onclick="openServiceModal('wakeup')"
                    class="flex flex-col items-center group w-full">
                    <div
                        class="w-14 h-14 rounded-2xl bg-white group-hover:bg-gold-50 flex items-center justify-center text-slate-600 group-hover:text-gold-600 transition shadow-sm border border-slate-100">
                        <i class="fa-solid fa-clock text-lg"></i>
                    </div>
                    <span class="text-xs font-semibold text-slate-800 mt-2">{{ __('Wake-Up Call') }}</span>
                    <span class="text-[10px] text-slate-400 leading-tight">{{ __('Set your alarm') }}</span>
                </button>

            </div>

            <!-- EXPRESS CHECKOUT -->
            <a href="{{ route('guestportal.expresscheckout', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
                class="mt-8 bg-slate-900 text-white rounded-2xl p-5 flex items-center justify-between shadow-md block">
                <div class="flex items-center gap-3.5">
                    <div class="w-11 h-11 rounded-xl bg-white/10 flex items-center justify-center text-gold-400">
                        <i class="fa-solid fa-door-open"></i>
                    </div>
                    <div>
                        <h3 class="text-sm font-semibold">{{ __('Express Checkout') }}</h3>
                        <p class="text-xs text-white/50 mt-0.5">{{ __('Save time, checkout digitally') }}</p>
                    </div>
                </div>
                <span
                    class="w-9 h-9 rounded-full bg-white/10 flex items-center justify-center hover:bg-white/20 transition">
                    <i class="fa-solid fa-arrow-right text-xs text-gold-400"></i>
                </span>
            </a>


        </div>


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

    <div id="serviceModal" class="fixed inset-0 z-[60] hidden items-center justify-center bg-black/50 px-5">
        <div class="bg-white rounded-2xl w-full max-w-sm p-5 relative">
            <button type="button" onclick="closeServiceModal()"
                class="absolute top-4 right-4 text-slate-400 hover:text-slate-700">
                <i class="fa-solid fa-xmark"></i>
            </button>

            <div class="flex items-center gap-3 mb-4">
                <div id="modalIcon"
                    class="w-11 h-11 rounded-xl bg-gold-50 flex items-center justify-center text-gold-600">
                    <i class="fa-solid fa-bed text-lg"></i>
                </div>
                <div>
                    <h3 id="modalTitle" class="text-sm font-semibold text-slate-800"></h3>
                    <p class="text-xs text-slate-400">{{ __('Room No.') }} {{ $guest['room_no'] ?? $roomno }}</p>
                </div>
            </div>

            <div id="modalItemsWrap" class="space-y-2 max-h-56 overflow-y-auto mb-4"></div>

            <div class="mb-4">
                <label class="text-xs font-semibold text-slate-500 mb-1 block">{{ __('Additional notes') }}</label>
                <textarea id="modalNotes" rows="2" maxlength="35"
                    class="w-full text-sm border border-slate-200 rounded-xl p-2.5 focus:outline-none focus:ring-1 focus:ring-gold-400"
                    placeholder="{{ __('Anything specific...') }}"></textarea>
            </div>

            <button type="button" id="modalSubmitBtn" onclick="submitServiceRequest()"
                class="w-full bg-slate-900 text-white text-sm font-semibold py-3 rounded-xl hover:bg-slate-800 transition">
                {{ __('Send Request') }}
            </button>
            <p id="modalMsg" class="text-xs text-center mt-2 hidden"></p>
        </div>
    </div>

    <script>
        const dbServiceItems = @json($serviceItems ?? []);

        const dbFacilityItems = @json($facilityItems ?? []);

        const dbMaintenanceItems = @json($maintenanceItems ?? []);

        const categoryDcodes = @json($categoryDcodes ?? []);

        const SERVICE_TYPES = {
            linen: {
                title: "{{ __('Linen Request') }}",
                icon: "fa-bed",
                items: dbServiceItems.Linen || [],
                hasQty: true,
                dcode: categoryDcodes.linen || null
            },
            amenities: {
                title: "{{ __('Amenities Request') }}",
                icon: "fa-pump-soap",
                items: dbServiceItems.Amenities || [],
                hasQty: true,
                dcode: categoryDcodes.amenities || null
            },
            housekeeping: {
                title: "{{ __('Housekeeping Request') }}",
                icon: "fa-broom",
                items: dbFacilityItems.Housekeeping || [],
                hasQty: false,
                dcode: categoryDcodes.housekeeping || null
            },
            laundry: {
                title: "{{ __('Laundry Request') }}",
                icon: "fa-shirt",
                items: dbFacilityItems.Laundry || [],
                hasQty: false,
                dcode: categoryDcodes.laundry || null
            },
            maintenance: {
                title: "{{ __('Maintenance Request') }}",
                icon: "fa-wrench",
                items: dbMaintenanceItems || [],
                hasQty: false,
                dcode: categoryDcodes.maintenance || null
            },
            wakeup: {
                title: "{{ __('Wake-Up Call') }}",
                icon: "fa-clock",
                items: [],
                hasQty: false,
                isTimePicker: true,
                dcode: categoryDcodes.wakeup || null
            }
        };

        let currentServiceType = null;

        function buildWheel(el, values) {
            el.innerHTML = '';
            const spTop = document.createElement('div');
            spTop.style.height = '44px';
            const spBot = document.createElement('div');
            spBot.style.height = '44px';
            el.appendChild(spTop);
            values.forEach(v => {
                const item = document.createElement('div');
                item.className = 'wheel-item';
                item.textContent = v;
                item.dataset.value = v;
                el.appendChild(item);
            });
            el.appendChild(spBot);
        }

        function getWheelValue(el) {
            const items = el.querySelectorAll('.wheel-item');
            const idx = Math.max(0, Math.min(items.length - 1, Math.round(el.scrollTop / 44)));
            return items[idx].dataset.value;
        }

        function highlightWheel(el) {
            const val = getWheelValue(el);
            el.querySelectorAll('.wheel-item').forEach(it => it.classList.toggle('active', it.dataset.value === val));
        }

        function scrollWheelToValue(el, value) {
            const items = Array.from(el.querySelectorAll('.wheel-item'));
            const idx = items.findIndex(it => it.dataset.value === String(value));
            if (idx >= 0) el.scrollTop = idx * 44;
            highlightWheel(el);
        }

        function attachWheelSnap(el) {
            let t;
            el.addEventListener('scroll', () => {
                highlightWheel(el);
                clearTimeout(t);
                t = setTimeout(() => {
                    const idx = Math.round(el.scrollTop / 44);
                    el.scrollTo({
                        top: idx * 44,
                        behavior: 'smooth'
                    });
                    highlightWheel(el);
                }, 120);
            });
        }

        function initWakeupPicker() {
            const wrap = document.getElementById('modalItemsWrap');
            wrap.innerHTML = `
        <div class="text-center mb-1">
            <p class="text-xs text-slate-400">{{ __('Select your preferred wake-up time') }}</p>
        </div>
        <div class="time-wheel-container">
            <div class="wheel-highlight"></div>
            <div class="time-wheel" id="wheelHour"></div>
            <div class="time-sep">:</div>
            <div class="time-wheel" id="wheelMinute"></div>
            <div class="time-wheel" id="wheelAmPm"></div>
        </div>
    `;
            const hourEl = document.getElementById('wheelHour');
            const minEl = document.getElementById('wheelMinute');
            const ampmEl = document.getElementById('wheelAmPm');

            const hours = Array.from({
                length: 12
            }, (_, i) => String(i + 1).padStart(2, '0'));
            const minutes = Array.from({
                length: 12
            }, (_, i) => String(i * 5).padStart(2, '0'));
            const ampm = ['AM', 'PM'];

            buildWheel(hourEl, hours);
            buildWheel(minEl, minutes);
            buildWheel(ampmEl, ampm);
            [hourEl, minEl, ampmEl].forEach(attachWheelSnap);

            const now = new Date();
            let defHour = now.getHours() % 12;
            defHour = defHour === 0 ? 12 : defHour;
            const defAmPm = now.getHours() >= 12 ? 'PM' : 'AM';

            setTimeout(() => {
                scrollWheelToValue(hourEl, String(defHour).padStart(2, '0'));
                scrollWheelToValue(minEl, '00');
                scrollWheelToValue(ampmEl, defAmPm);
            }, 50);
        }


        function openServiceModal(type) {
            currentServiceType = type;
            const cfg = SERVICE_TYPES[type];

            document.getElementById('modalTitle').textContent = cfg.title;
            document.getElementById('modalIcon').innerHTML = `<i class="fa-solid ${cfg.icon} text-lg"></i>`;

            if (cfg.isTimePicker) {
                initWakeupPicker();
            } else {
                const wrap = document.getElementById('modalItemsWrap');
                wrap.innerHTML = '';

                if (!cfg.items || cfg.items.length === 0) {
                    wrap.innerHTML =
                        `<p class="text-xs text-slate-400 text-center py-4">{{ __('No items available right now.') }}</p>`;
                } else if (cfg.hasQty) {
                    cfg.items.forEach(item => {
                        const name = item.name;
                        const code = item.itemcode || '';
                        wrap.innerHTML += `
                    <div class="flex items-center justify-between border border-slate-100 rounded-xl px-3 py-2.5">
                        <span class="text-sm text-slate-700">${name}</span>
                        <div class="flex items-center gap-2 qty-stepper" data-name="${name}" data-itemcode="${code}">
                            <button type="button" class="qty-down w-7 h-7 rounded-full border border-slate-200 text-slate-500 text-sm flex items-center justify-center active:bg-slate-100">-</button>
                            <input type="text" inputmode="numeric" value="0" readonly class="qty-value text-center text-sm font-semibold border-0 bg-transparent focus:outline-none">
                            <button type="button" class="qty-up w-7 h-7 rounded-full border border-slate-200 text-slate-500 text-sm flex items-center justify-center active:bg-slate-100">+</button>
                        </div>
                    </div>`;
                    });
                } else {
                    cfg.items.forEach(item => {
                        wrap.innerHTML += `
                    <label class="flex items-center justify-between border border-slate-100 rounded-xl px-3 py-2.5 cursor-pointer">
                        <span class="text-sm text-slate-700">${item}</span>
                        <input type="checkbox" value="${item}" class="service-item-checkbox w-4 h-4 accent-gold-500">
                    </label>`;
                    });
                }
            }

            document.getElementById('modalNotes').value = '';
            document.getElementById('modalMsg').classList.add('hidden');
            document.getElementById('serviceModal').classList.remove('hidden');
            document.getElementById('serviceModal').classList.add('flex');
        }

        function closeServiceModal() {
            document.getElementById('serviceModal').classList.add('hidden');
            document.getElementById('serviceModal').classList.remove('flex');
        }

        document.getElementById('modalItemsWrap').addEventListener('click', function(e) {
            const btn = e.target.closest('.qty-up, .qty-down');
            if (!btn) return;
            const wrap = btn.closest('.qty-stepper');
            const input = wrap.querySelector('.qty-value');
            let val = parseInt(input.value || '0', 10);
            val = btn.classList.contains('qty-up') ? val + 1 : Math.max(0, val - 1);
            input.value = val;
        });

        function submitServiceRequest() {
            const cfg = SERVICE_TYPES[currentServiceType];
            let payloadItems = [];

            if (cfg.isTimePicker) {
                const hour = getWheelValue(document.getElementById('wheelHour'));
                const min = getWheelValue(document.getElementById('wheelMinute'));
                const ampm = getWheelValue(document.getElementById('wheelAmPm'));
                payloadItems.push({
                    item: `${hour}:${min} ${ampm}`,
                    itemcode: '',
                    qty: 1
                });
            } else if (cfg.hasQty) {
                document.querySelectorAll('#modalItemsWrap .qty-stepper').forEach(w => {
                    const qty = parseInt(w.querySelector('.qty-value').value || '0', 10);
                    if (qty > 0) {
                        payloadItems.push({
                            item: w.getAttribute('data-name'),
                            itemcode: w.getAttribute('data-itemcode'),
                            qty: qty
                        });
                    }
                });
            } else {
                document.querySelectorAll('.service-item-checkbox:checked').forEach(cb => {
                    payloadItems.push({
                        item: cb.value,
                        itemcode: '',
                        qty: 1
                    });
                });
            }

            const notes = document.getElementById('modalNotes').value.trim();

            if (payloadItems.length === 0) {
                showModalMsg("{{ __('Please select at least one item.') }}", true);
                return;
            }

            const btn = document.getElementById('modalSubmitBtn');
            btn.disabled = true;
            btn.textContent = "{{ __('Sending...') }}";

            fetch("{{ route('guestportal.servicerequest', ['propertyid' => $propertyid ?? ($company->propertyid ?? ''), 'roomno' => $roomno]) }}", {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content,
                        'Accept': 'application/json'
                    },
                    body: JSON.stringify({
                        type: currentServiceType,
                        items: payloadItems,
                        notes: notes,
                        dcode: cfg.dcode
                    })
                })
                .then(res => res.json())
                .then(data => {
                    btn.disabled = false;
                    btn.textContent = "{{ __('Send Request') }}";
                    if (data.success) {
                        showModalMsg("{{ __('Request sent! Our team will assist you shortly.') }}", false);
                        setTimeout(closeServiceModal, 1500);
                    } else {
                        showModalMsg(data.message || "{{ __('Something went wrong.') }}", true);
                    }
                })
                .catch(() => {
                    btn.disabled = false;
                    btn.textContent = "{{ __('Send Request') }}";
                    showModalMsg("{{ __('Network error. Please try again.') }}", true);
                });
        }

        function showModalMsg(msg, isError) {
            const el = document.getElementById('modalMsg');
            el.textContent = msg;
            el.classList.remove('hidden');
            el.classList.toggle('text-red-500', isError);
            el.classList.toggle('text-green-600', !isError);
        }
    </script>

</body>

</html>
