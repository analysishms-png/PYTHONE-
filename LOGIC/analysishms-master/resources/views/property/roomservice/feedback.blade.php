<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('Feedback Form') }} - {{ $company->comp_name ?? 'Hotel' }}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body class="bg-gray-100 font-sans text-gray-700 min-h-screen py-8 px-4 sm:px-6 lg:px-8">

    <div class="max-w-2xl mx-auto bg-white rounded-2xl shadow-sm p-6 sm:p-8 border border-gray-100">

        @if ($alreadySubmitted)
            <div class="text-center py-14">
                <i class="fa-regular fa-circle-check text-green-500 text-5xl mb-4"></i>
                <h2 class="text-xl font-bold text-gray-800 mb-2">{{ __('Thank you!') }}</h2>
                <p class="text-gray-500 text-sm">
                    {{ __('You have already submitted your feedback. We appreciate your time.') }}
                </p>
            </div>
        @else
            @if (session('error'))
                <div class="mb-6 bg-red-50 border border-red-200 text-red-700 text-sm rounded-xl p-3 text-center">
                    {{ session('error') }}
                </div>
            @endif

            <div class="flex justify-between items-center border-b pb-4 mb-6">
                <h1 class="text-xl font-bold text-gray-800">{{ __('Feedback Form') }}</h1>

                <div class="relative inline-block text-left">
                    <form action="{{ route('lang.switch') }}" method="GET" id="langForm"
                        class="flex items-center space-x-1 bg-gray-50 border border-gray-200 px-3 py-1.5 rounded-full">
                        <i class="fa-solid fa-globe text-gray-500 text-xs"></i>
                        <select name="lang" onchange="document.getElementById('langForm').submit();"
                            class="bg-transparent text-xs font-semibold text-gray-700 focus:outline-none cursor-pointer">
                            <option value="en" {{ app()->getLocale() == 'en' ? 'selected' : '' }}>English</option>
                            <option value="es" {{ app()->getLocale() == 'es' ? 'selected' : '' }}>Español</option>
                            <option value="fr" {{ app()->getLocale() == 'fr' ? 'selected' : '' }}>Français</option>
                            <option value="de" {{ app()->getLocale() == 'de' ? 'selected' : '' }}>Deutsch</option>
                            <option value="hi" {{ app()->getLocale() == 'hi' ? 'selected' : '' }}>हिन्दी</option>
                            <option value="ar" {{ app()->getLocale() == 'ar' ? 'selected' : '' }}>العربية</option>
                            <option value="gu" {{ app()->getLocale() == 'gu' ? 'selected' : '' }}>ગુજરાતી</option>
                            <option value="te" {{ app()->getLocale() == 'te' ? 'selected' : '' }}>తెలుగు</option>
                            <option value="ta" {{ app()->getLocale() == 'ta' ? 'selected' : '' }}>தமிழ்</option>
                            <option value="bn" {{ app()->getLocale() == 'bn' ? 'selected' : '' }}>বাংলা</option>
                            <option value="mr" {{ app()->getLocale() == 'mr' ? 'selected' : '' }}>मराठी</option>
                        </select>
                    </form>
                </div>
            </div>

            <div
                class="bg-slate-900 text-white rounded-2xl overflow-hidden mb-6 flex flex-col sm:flex-row items-center justify-between shadow-md">
                <div class="p-6 sm:w-1/2">
                    <h2 class="text-2xl font-bold leading-tight mb-2">
                        {{ __('Your feedback helps us') }} <br>
                        <span class="text-gray-400 font-normal">{{ __('serve you') }}</span> <span
                            class="italic font-normal">{{ __('better') }}</span>
                    </h2>
                    <p class="text-xs text-gray-400 mt-4">
                        {{ __('Thank you for choosing') }} <br>
                        <strong
                            class="text-white font-semibold">{{ $company->comp_name ?? 'Grand Palace Hotel' }}</strong>.
                    </p>
                </div>
                <div class="sm:w-1/2 h-44 sm:h-auto w-full">
                    <img id="roomImage"
                        src="https://images.unsplash.com/photo-1618773928121-c32242e63f39?auto=format&fit=crop&q=80&w=600"
                        alt="Hotel Room" class="w-full h-full object-cover">
                </div>
            </div>

            <div
                class="grid grid-cols-1 sm:grid-cols-2 gap-4 bg-gray-50 p-4 rounded-xl mb-2 border border-gray-100 text-sm">
                <div class="flex items-center space-x-3">
                    <i class="fa-solid fa-door-closed text-gray-400 text-lg"></i>
                    <div class="flex-1">
                        <span class="text-xs text-gray-400 block">{{ __('Room No.') }}</span>
                        <input type="text" id="roomInput" placeholder="{{ __('Enter room no.') }}"
                            class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                    </div>
                </div>
                <div class="flex items-center space-x-3">
                    <i class="fa-regular fa-calendar-days text-gray-400 text-lg"></i>
                    <div>
                        <span class="text-xs text-gray-400 block">{{ __('Check-out Date') }}</span>
                        <input type="date" id="displayCheckout"
                            class="font-bold text-gray-800 border-b w-full bg-transparent focus:outline-none focus:border-slate-500">
                    </div>
                </div>
                <div class="flex items-center space-x-3">
                    <i class="fa-regular fa-user text-gray-400 text-lg"></i>
                    <div>
                        <span class="text-xs text-gray-400 block">{{ __('Guest Name') }}</span>
                        <input type="text" id="displayGuestName" class="font-bold text-gray-800 border-b w-full">
                    </div>
                </div>
                <div class="flex items-center space-x-3">
                    <i class="fa-solid fa-mobile-screen-button text-gray-400 text-lg"></i>
                    <div>
                        <span class="text-xs text-gray-400 block">{{ __('Mobile No.') }}</span>
                        <input type="text" id="displayMobile" class="font-bold text-gray-800 border-b w-full">
                    </div>
                </div>
                <div class="flex items-center space-x-3 sm:col-span-2">
                    <i class="fa-regular fa-envelope text-gray-400 text-lg"></i>
                    <div>
                        <span class="text-xs text-gray-400 block">{{ __('Email') }}</span>
                        <input type="text" id="displayEmail" class="font-bold text-gray-800 border-b w-full">
                    </div>
                </div>
            </div>
            <p id="roomError" class="text-xs text-red-500 mb-2 hidden"></p>
            <p id="roomLoading" class="text-xs text-gray-400 mb-6 hidden">{{ __('Searching...') }}</p>

            <form action="{{ route('feedback.store') }}" method="POST" id="feedbackForm">
                @csrf

                <input type="hidden" id="hiddenRoomNo" name="room_no" value="">
                <input type="hidden" id="hiddenPropertyId" name="propertyid" value="{{ $propertyid }}">
                <input type="hidden" id="hiddenGuestName" name="guest_name" value="">
                <input type="hidden" id="hiddenMobile" name="mobile_no" value="">
                <input type="hidden" id="hiddenEmail" name="email" value="">
                <input type="hidden" id="hiddenCheckout" name="checkout_date" value="">
                <input type="hidden" id="hiddenSno1" name="sno1" value="">
                <input type="hidden" id="hiddenFolioNo" name="folio_no" value="">
                <input type="hidden" id="hiddenDocid" name="docid" value="">
                <input type="hidden" id="hiddenGuestprof" name="guestprof" value="">
                <input type="hidden" id="hiddenOverallRating" name="overall_rating" value="0">
                <input type="hidden" id="hiddenCategoryRatings" name="category_ratings" value="{}">
                <input type="hidden" id="googleReviewUrlField" value="{{ $googleReviewUrl }}">

                <div class="mb-8 text-center sm:text-left">
                    <label class="block font-semibold text-gray-800 mb-3">1. {{ __('Overall Experience') }}</label>
                    <div id="overallStars"
                        class="flex items-center justify-center space-x-2 text-2xl text-gray-300 my-2">
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="1"></i>
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="2"></i>
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="3"></i>
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="4"></i>
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="5"></i>
                    </div>
                    <p id="overallRatingLabel" class="text-center text-sm font-semibold text-gray-700">
                        {{ __('Tap to rate') }}</p>
                </div>

                <div class="mb-8">
                    <div class="flex items-center justify-between mb-4">
                        <label class="font-semibold text-gray-800">2. {{ __('Please rate the following') }}</label>
                        <span class="text-xs text-gray-400">({{ __('Optional') }})</span>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-y-4 gap-x-8 text-sm category-ratings">
                        @foreach ($feedbackData as $q)
                            <div class="flex items-center justify-between">
                                <span class="text-gray-600">{{ $q->question }}</span>
                                <div class="star-group text-gray-300 text-sm space-x-0.5"
                                    data-questioncode="{{ $q->questioncode }}">
                                    <i class="fa-solid fa-star cursor-pointer" data-value="1"></i>
                                    <i class="fa-solid fa-star cursor-pointer" data-value="2"></i>
                                    <i class="fa-solid fa-star cursor-pointer" data-value="3"></i>
                                    <i class="fa-solid fa-star cursor-pointer" data-value="4"></i>
                                    <i class="fa-solid fa-star cursor-pointer" data-value="5"></i>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

                <div class="mb-6">
                    <label for="comments" class="block font-semibold text-gray-800 mb-2">3.
                        {{ __('Additional Comments') }}</label>
                    <div class="relative">
                        <textarea id="comments" name="comments" rows="3" maxlength="500"
                            placeholder="{{ __('Tell us about your stay...') }}"
                            class="w-full border border-gray-200 rounded-xl p-3 text-sm focus:outline-none focus:border-gray-400 placeholder-gray-300 resize-none"></textarea>
                        <span class="absolute bottom-2 right-3 text-xs text-gray-400"><span
                                id="commentsCount">0</span> / 500</span>
                    </div>
                </div>

                <div class="mb-6">
                    <label for="improvements" class="block font-semibold text-gray-800 mb-2">4.
                        {{ __('What can we do to improve?') }}</label>
                    <div class="relative">
                        <textarea id="improvements" name="improvements" rows="3" maxlength="500" required
                            placeholder="{{ __('Your suggestions help us improve...') }}"
                            class="w-full border border-gray-200 rounded-xl p-3 text-sm focus:outline-none focus:border-gray-400 placeholder-gray-300 resize-none"></textarea>
                        <span class="absolute bottom-2 right-3 text-xs text-gray-400"><span id="improveCount">0</span>
                            / 500</span>
                    </div>
                </div>
                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 mb-6">
                    <div>
                        <label for="purpose" class="block font-semibold text-gray-800 mb-2">5.
                            {{ __('Purpose of your visit') }}</label>
                        <select id="purpose" name="purpose" required
                            class="w-full border border-gray-200 rounded-xl p-3 text-sm text-gray-700 bg-white focus:outline-none focus:border-gray-400 cursor-pointer">
                            <option value="" disabled selected>{{ __('Select purpose...') }}</option>
                            <option value="Business Trip">{{ __('Business Trip') }}</option>
                            <option value="Holiday">{{ __('Holiday') }}</option>
                            <option value="Family Vacation">{{ __('Family Vacation') }}</option>
                            <option value="Sightseeing">{{ __('Sightseeing') }}</option>
                            <option value="Religious Visit">{{ __('Religious Visit') }}</option>
                            <option value="Wedding Function">{{ __('Wedding Function') }}</option>
                            <option value="Conference">{{ __('Conference') }}</option>
                            <option value="Business Meeting">{{ __('Business Meeting') }}</option>
                            <option value="Seminar">{{ __('Seminar') }}</option>
                            <option value="Training Program">{{ __('Training Program') }}</option>
                            <option value="Exhibition">{{ __('Exhibition') }}</option>
                            <option value="Event">{{ __('Event') }}</option>
                            <option value="Medical Treatment">{{ __('Medical Treatment') }}</option>
                            <option value="Education">{{ __('Education') }}</option>
                            <option value="Job Interview">{{ __('Job Interview') }}</option>
                            <option value="Sports Event">{{ __('Sports Event') }}</option>
                            <option value="Government Work">{{ __('Government Work') }}</option>
                            <option value="Transit Stay">{{ __('Transit Stay') }}</option>
                            <option value="Airline / Crew Stay">{{ __('Airline / Crew Stay') }}</option>
                            <option value="Long Stay">{{ __('Long Stay') }}</option>
                            <option value="Other">{{ __('Other') }}</option>
                        </select>
                    </div>

                    <div>
                        <label for="recommend" class="block font-semibold text-gray-800 mb-2">6.
                            {{ __('Would you recommend us?') }}</label>
                        <select id="recommend" name="recommend"
                            class="w-full border border-gray-200 rounded-xl p-3 text-sm text-gray-700 bg-white focus:outline-none focus:border-gray-400 cursor-pointer">
                            <option value="Yes" selected>{{ __('Yes') }}</option>
                            <option value="No">{{ __('No') }}</option>
                            <option value="Maybe">{{ __('Maybe') }}</option>
                        </select>
                    </div>
                </div>

                <div class="mb-3 flex items-start space-x-2">
                    <input type="checkbox" id="consent" name="consent" checked
                        class="mt-1 h-4 w-4 rounded border-gray-300 text-slate-800 focus:ring-0">
                    <label for="consent" class="text-xs text-gray-600 font-medium cursor-pointer">
                        {{ __('I agree that my feedback may be used by the hotel to improve its services.') }}
                    </label>
                </div>

                <div class="mb-8 flex items-center space-x-1.5 text-xs text-gray-400">
                    <i class="fa-solid fa-lock text-gray-400"></i>
                    <span>{{ __('We respect your privacy. Your information will not be shared.') }}</span>
                </div>

                <p id="formError" class="text-xs text-red-500 mb-3 text-center hidden"></p>

                <button type="submit"
                    class="w-full bg-slate-800 hover:bg-slate-900 text-white font-medium py-3 rounded-xl transition duration-200 flex items-center justify-center space-x-2 shadow-sm">
                    <i class="fa-regular fa-paper-plane text-sm"></i>
                    <span>{{ __('Submit Feedback') }}</span>
                </button>

                <div class="mt-4 text-center flex items-center justify-center space-x-1.5 text-xs text-gray-400">
                    <i class="fa-regular fa-circle-check text-green-500"></i>
                    <span>{{ __('Thank you! Your feedback is important to us.') }}</span>
                </div>

            </form>

        @endif

    </div>

    @if (!$alreadySubmitted)
        <script>
            const roomInput = document.getElementById('roomInput');
            let lastSearchedRoom = '';

            // ── NEW: Mobile number masking helper ──────────────────────────
            // Sirf display ke liye — last 4 digits visible, baaki '*' se.
            // "9876543210" -> "******3210"
            function maskMobile(num) {
                if (!num) return num;
                const str = String(num).trim();
                if (str.length <= 4) return str; // bahut chhota number, mask ka fayda nahi
                const last4 = str.slice(-4);
                const maskedPart = '*'.repeat(str.length - 4);
                return maskedPart + last4;
            }

            function lookupRoom() {
                const roomNo = roomInput.value.trim();
                const errorEl = document.getElementById('roomError');
                const loadingEl = document.getElementById('roomLoading');

                errorEl.classList.add('hidden');

                if (!roomNo || roomNo === lastSearchedRoom) {
                    return;
                }

                loadingEl.classList.remove('hidden');

                fetch("{{ route('feedback.roomDetails') }}", {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                        },
                        body: JSON.stringify({
                            room_no: roomNo,
                            propertyid: document.getElementById('hiddenPropertyId').value
                        })
                    })
                    .then(res => res.json())
                    .then(data => {
                        loadingEl.classList.add('hidden');

                        if (!data.success) {
                            errorEl.textContent = data.message;
                            errorEl.classList.remove('hidden');
                            return;
                        }

                        lastSearchedRoom = roomNo;

                        document.getElementById('displayCheckout').value = data.checkout_date_iso || '';
                        document.getElementById('hiddenCheckout').value = data.checkout_date_iso || '';

                        document.getElementById('displayGuestName').value = data.guest_name;
                        document.getElementById('displayEmail').value = data.email;

                        // ── NEW: Mobile ab masked dikhega, poora number hidden field me jaayega ──
                        const mobileDisplayEl = document.getElementById('displayMobile');
                        mobileDisplayEl.value = maskMobile(data.mobile_no);
                        mobileDisplayEl.dataset.actual = data.mobile_no || '';

                        document.getElementById('hiddenRoomNo').value = data.room_no;
                        document.getElementById('hiddenGuestName').value = data.guest_name;
                        document.getElementById('hiddenMobile').value = data.mobile_no; // poora number backend ke liye, unchanged
                        document.getElementById('hiddenEmail').value = data.email;
                        document.getElementById('hiddenSno1').value = data.sno1;
                        document.getElementById('hiddenFolioNo').value = data.folio_no;
                        document.getElementById('hiddenDocid').value = data.docid;
                        document.getElementById('hiddenGuestprof').value = data.guestprof;
                    })
                    .catch(() => {
                        loadingEl.classList.add('hidden');
                        errorEl.textContent = "{{ __('Something went wrong, please try again') }}";
                        errorEl.classList.remove('hidden');
                    });
            }

            document.getElementById('displayCheckout').addEventListener('change', function() {
                document.getElementById('hiddenCheckout').value = this.value;
            });

            document.getElementById('displayGuestName').addEventListener('input', function() {
                document.getElementById('hiddenGuestName').value = this.value;
            });

            // ── Mobile field: manual typing bilkul pehle jaisa hi behave karta hai ──
            // (yeh listener change nahi hua — jo bhi field me hoga wahi hidden me jaayega)
            const displayMobileEl = document.getElementById('displayMobile');
            displayMobileEl.addEventListener('input', function() {
                document.getElementById('hiddenMobile').value = this.value;
            });

            // ── NEW: Focus par masked number ko unmask kar do taaki edit karna aasan ho ──
            displayMobileEl.addEventListener('focus', function() {
                if (this.dataset.actual && this.value === maskMobile(this.dataset.actual)) {
                    this.value = this.dataset.actual;
                }
            });

            // ── NEW: Blur par, agar user ne kuch change nahi kiya, to wapas mask kar do ──
            displayMobileEl.addEventListener('blur', function() {
                if (this.dataset.actual && this.value === this.dataset.actual) {
                    this.value = maskMobile(this.dataset.actual);
                }
            });

            document.getElementById('displayEmail').addEventListener('input', function() {
                document.getElementById('hiddenEmail').value = this.value;
            });

            let typingTimer;
            const delay = 600;

            roomInput.addEventListener('input', function() {
                clearTimeout(typingTimer);
                typingTimer = setTimeout(() => {
                    lookupRoom();
                }, delay);
            });
            roomInput.addEventListener('keydown', function(e) {
                if (e.key === 'Enter') {
                    e.preventDefault();
                    lookupRoom();
                    roomInput.blur();
                }
            });

            const overallStars = document.querySelectorAll('#overallStars i');
            const overallLabel = document.getElementById('overallRatingLabel');
            const overallHidden = document.getElementById('hiddenOverallRating');
            const ratingLabels = {
                1: "{{ __('Poor') }}",
                2: "{{ __('Fair') }}",
                3: "{{ __('Good') }}",
                4: "{{ __('Very Good') }}",
                5: "{{ __('Excellent') }}"
            };

            function paintOverallStars(value) {
                overallStars.forEach(star => {
                    const v = parseInt(star.dataset.value);
                    star.classList.toggle('text-amber-400', v <= value);
                    star.classList.toggle('text-gray-300', v > value);
                });
            }

            overallStars.forEach(star => {
                star.addEventListener('click', async function() {
                    const value = parseInt(this.dataset.value);

                    overallHidden.value = value;
                    paintOverallStars(value);
                    overallLabel.textContent = ratingLabels[value] || '';

                    if (value >= 4) {
                        const googleUrl = document.getElementById('googleReviewUrlField').value;
                        if (googleUrl && googleUrl.trim() !== '') {
                            const commentText = document.getElementById('comments').value.trim();
                            if (commentText && navigator.clipboard) {
                                try {
                                    await navigator.clipboard.writeText(commentText);
                                } catch (e) {}
                            }
                            window.open(googleUrl, '_blank');
                        }
                    }
                });
            });

            const categoryRatings = {};

            document.querySelectorAll('.star-group').forEach(group => {
                const questionCode = group.dataset.questioncode;
                const stars = group.querySelectorAll('i');
                stars.forEach(star => {
                    star.addEventListener('click', function() {
                        const value = parseInt(this.dataset.value);
                        categoryRatings[questionCode] = value;
                        stars.forEach(s => {
                            const v = parseInt(s.dataset.value);
                            s.classList.toggle('text-amber-400', v <= value);
                            s.classList.toggle('text-gray-300', v > value);
                        });
                    });
                });
            });

            function bindCounter(textareaId, counterId) {
                const el = document.getElementById(textareaId);
                const counter = document.getElementById(counterId);
                el.addEventListener('input', () => {
                    counter.textContent = el.value.length;
                });
            }
            bindCounter('comments', 'commentsCount');
            bindCounter('improvements', 'improveCount');

            document.getElementById('feedbackForm').addEventListener('submit', function(e) {
                const formError = document.getElementById('formError');
                formError.classList.add('hidden');

                // room_no optional hai — no validation needed

                document.getElementById('hiddenCategoryRatings').value = JSON.stringify(categoryRatings);

                const submitBtn = this.querySelector('button[type="submit"]');
                submitBtn.disabled = true;
                submitBtn.innerHTML =
                    '<i class="fa-solid fa-spinner fa-spin text-sm"></i> <span>{{ __("Submitting...") }}</span>';
            });
        </script>
    @endif

</body>

</html>