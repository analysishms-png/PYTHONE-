<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('Banquet Feedback') }} - {{ $company->comp_name ?? 'Banquet' }}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body class="bg-gray-100 font-sans text-gray-700 min-h-screen py-8 px-4 sm:px-6 lg:px-8">

    <div class="max-w-2xl mx-auto bg-white rounded-2xl shadow-sm p-6 sm:p-8 border border-gray-100">

        @if ($alreadySubmitted && $submittedData)
            {{-- ───────────── ALREADY SUBMITTED ───────────── --}}
            <div class="text-center py-10">
                <i class="fa-regular fa-circle-check text-green-500 text-5xl mb-4"></i>
                <h2 class="text-xl font-bold text-gray-800 mb-2">
                    {{ $submittedData->name ? __('Thank you') . ', ' . $submittedData->name . '!' : __('Thank you!') }}
                </h2>
                <p class="text-gray-500 text-sm">
                    {{ __('You have already submitted your feedback. We appreciate your time.') }}
                </p>
            </div>

            <div class="bg-gray-50 border border-gray-100 rounded-xl p-4 text-sm space-y-3">
                <div class="flex justify-between">
                    <span class="text-gray-400">{{ __('Banquet') }}</span>
                    <strong class="text-gray-800">{{ $submittedData->purpose }}</strong>
                </div>
                <div class="flex justify-between">
                    <span class="text-gray-400">{{ __('Date') }}</span>
                    <strong class="text-gray-800">
                        {{ \Carbon\Carbon::parse($submittedData->deedbackdate)->format('d M Y') }}
                    </strong>
                </div>
                <div class="flex justify-between items-center">
                    <span class="text-gray-400">{{ __('Overall Experience') }}</span>
                    <span class="text-amber-400 tracking-widest">
                        {{ str_repeat('★', (int) $submittedData->overallrating) }}<span
                            class="text-gray-300">{{ str_repeat('★', 5 - (int) $submittedData->overallrating) }}</span>
                    </span>
                </div>
            </div>

            @if ($submittedData->overallrating >= 4 && !empty($googleReviewUrl))
                <a href="{{ $googleReviewUrl }}" target="_blank" rel="noopener"
                    class="mt-6 w-full bg-red-500 hover:bg-red-600 text-white font-medium py-3 rounded-xl transition duration-200 flex items-center justify-center space-x-2 shadow-sm">
                    <i class="fa-brands fa-google text-sm"></i>
                    <span>{{ __('Rate us on Google') }}</span>
                </a>
            @endif
        @else
            @if (session('success'))
                <div class="mb-6 bg-green-50 border border-green-200 text-green-700 text-sm rounded-xl p-3 text-center">
                    {{ session('success') }}
                </div>
            @endif
            @if (session('error'))
                <div class="mb-6 bg-red-50 border border-red-200 text-red-700 text-sm rounded-xl p-3 text-center">
                    {{ session('error') }}
                </div>
            @endif
            @if ($errors->any())
                <div class="mb-6 bg-red-50 border border-red-200 text-red-700 text-sm rounded-xl p-3">
                    <ul class="list-disc list-inside">
                        @foreach ($errors->all() as $err)
                            <li>{{ $err }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            {{-- Header + Language switch --}}
            <div class="flex justify-between items-center border-b pb-4 mb-6">
                <h1 class="text-xl font-bold text-gray-800">{{ __('Banquet Feedback') }}</h1>

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

            {{-- Hero banner --}}
            <div
                class="bg-slate-900 text-white rounded-2xl overflow-hidden mb-6 flex flex-col sm:flex-row items-center justify-between shadow-md">
                <div class="p-6 sm:w-1/2">
                    <h2 class="text-2xl font-bold leading-tight mb-2">
                        {{ __('Your feedback helps us') }} <br>
                        <span class="text-gray-400 font-normal">{{ __('serve you') }}</span>
                        <span class="italic font-normal">{{ __('better') }}</span>
                    </h2>
                    <p class="text-xs text-gray-400 mt-4">
                        {{ __('Thank you for celebrating with') }} <br>
                        <strong class="text-white font-semibold">{{ $company->comp_name ?? 'Our Banquet' }}</strong>.
                    </p>
                </div>
                <div class="sm:w-1/2 h-44 sm:h-auto w-full">
                    <img src="https://images.unsplash.com/photo-1519167758481-83f550bb49b3?auto=format&fit=crop&q=80&w=600"
                        alt="Banquet" class="w-full h-full object-cover">
                </div>
            </div>

            <form action="{{ route('banquetfeedbackstore') }}" method="POST" id="feedbackForm">
                @csrf
                <input type="hidden" name="propertyid" value="{{ $propertyid }}">
                <input type="hidden" id="hiddenOverallRating" name="overall_rating"
                    value="{{ old('overall_rating', 0) }}">
                <input type="hidden" id="hiddenCategoryRatings" name="category_ratings" value="{}">

                {{-- Banquet name + Date --}}
                <div class="bg-gray-50 p-4 rounded-xl mb-4 border border-gray-100 text-sm space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fa-solid fa-champagne-glasses text-gray-400 text-lg"></i>
                        <div class="flex-1">
                            <span class="text-xs text-gray-400 block">{{ __('Banquet / Event Name') }}</span>
                            <input type="text" id="banquetInput" name="banquet_name"
                                value="{{ old('banquet_name') }}" maxlength="100"
                                placeholder="{{ __('Enter banquet / event name') }}"
                                class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                        </div>
                    </div>
                    <div class="flex items-center space-x-3">
                        <i class="fa-regular fa-calendar text-gray-400 text-lg"></i>
                        <div class="flex-1">
                            <span class="text-xs text-gray-400 block">{{ __('Date') }}</span>
                            <input type="text" value="{{ now()->format('d M Y') }}" readonly
                                class="font-bold text-gray-800 bg-transparent border-0 w-full p-0 text-sm">
                        </div>
                    </div>
                </div>
                <p id="banquetError" class="text-xs text-red-500 mb-4 hidden"></p>

                {{-- Name / Mobile / Email --}}
                <div class="bg-gray-50 p-4 rounded-xl mb-6 border border-gray-100 text-sm space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fa-solid fa-user text-gray-400 text-lg"></i>
                        <div class="flex-1">
                            <span class="text-xs text-gray-400 block">{{ __('Your Name') }}</span>
                            <input type="text" id="nameInput" name="name" value="{{ old('name') }}"
                                maxlength="100" placeholder="{{ __('Enter your name') }}"
                                class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                        </div>
                    </div>
                    <div class="flex items-center space-x-3">
                        <i class="fa-solid fa-phone text-gray-400 text-lg"></i>
                        <div class="flex-1">
                            <span class="text-xs text-gray-400 block">{{ __('Mobile No.') }}</span>
                            <input type="tel" id="mobileInput" name="mobile_no" value="{{ old('mobile_no') }}"
                                placeholder="{{ __('Enter mobile number') }}" maxlength="12"
                                class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                        </div>
                    </div>
                    <div class="flex items-center space-x-3">
                        <i class="fa-solid fa-envelope text-gray-400 text-lg"></i>
                        <div class="flex-1">
                            <span class="text-xs text-gray-400 block">{{ __('Email') }}</span>
                            <input type="email" id="emailInput" name="email" value="{{ old('email') }}"
                                maxlength="100" placeholder="{{ __('Enter email (optional)') }}"
                                class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                        </div>
                    </div>
                </div>
                {{-- 1. Overall Experience --}}
                <div class="mb-8 text-center sm:text-left">
                    <label class="block font-semibold text-gray-800 mb-3">
                        1. {{ __('Overall Experience') }}
                        <span class="text-red-500">*</span>
                    </label>
                    <div id="overallStars"
                        class="flex items-center justify-center space-x-2 text-3xl text-gray-300 my-2">
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="1"></i>
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="2"></i>
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="3"></i>
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="4"></i>
                        <i class="fa-solid fa-star cursor-pointer transition" data-value="5"></i>
                    </div>
                    <p id="overallRatingLabel" class="text-center text-sm font-semibold text-gray-700">
                        {{ __('Tap to rate') }}</p>
                    <p id="overallError" class="text-center text-xs text-red-500 mt-1 hidden"></p>
                </div>

                {{-- 2. Please also rate the following (Good / Average / Bad) --}}
                @if ($feedbackData->isNotEmpty())
                    <div class="mb-8">
                        <label class="block font-semibold text-gray-800 mb-4">2.
                            {{ __('Please also rate the following') }}</label>

                        <div class="space-y-4">
                            @foreach ($feedbackData as $q)
                                <div class="bg-gray-50 border border-gray-100 rounded-xl p-4">
                                    <div class="text-sm font-medium text-gray-700 mb-3">{{ $q->question }}</div>
                                    <div class="grid grid-cols-3 gap-2">
                                        <label class="cursor-pointer">
                                            <input type="radio" class="cat-rating peer sr-only"
                                                name="cat_{{ $q->questioncode }}" data-code="{{ $q->questioncode }}"
                                                value="5">
                                            <span
                                                class="block text-center py-2.5 text-sm font-semibold rounded-lg border border-gray-200 bg-white text-gray-600 transition peer-checked:bg-green-500 peer-checked:border-green-500 peer-checked:text-white">
                                                <i class="fa-regular fa-face-smile mr-1"></i>{{ __('Good') }}
                                            </span>
                                        </label>
                                        <label class="cursor-pointer">
                                            <input type="radio" class="cat-rating peer sr-only"
                                                name="cat_{{ $q->questioncode }}" data-code="{{ $q->questioncode }}"
                                                value="3">
                                            <span
                                                class="block text-center py-2.5 text-sm font-semibold rounded-lg border border-gray-200 bg-white text-gray-600 transition peer-checked:bg-amber-400 peer-checked:border-amber-400 peer-checked:text-white">
                                                <i class="fa-regular fa-face-meh mr-1"></i>{{ __('Average') }}
                                            </span>
                                        </label>
                                        <label class="cursor-pointer">
                                            <input type="radio" class="cat-rating peer sr-only"
                                                name="cat_{{ $q->questioncode }}" data-code="{{ $q->questioncode }}"
                                                value="1">
                                            <span
                                                class="block text-center py-2.5 text-sm font-semibold rounded-lg border border-gray-200 bg-white text-gray-600 transition peer-checked:bg-red-500 peer-checked:border-red-500 peer-checked:text-white">
                                                <i class="fa-regular fa-face-frown mr-1"></i>{{ __('Bad') }}
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <p id="categoryError" class="text-xs text-red-500 mt-2 hidden"></p>
                    </div>
                @endif

                {{-- Comments --}}
                <div class="mb-6">
                    <label for="comments" class="block font-semibold text-gray-800 mb-2">
                        {{ __('Additional Comments') }}</label>
                    <div class="relative">
                        <textarea id="comments" name="comments" rows="3" maxlength="500"
                            placeholder="{{ __('Tell us about your event...') }}"
                            class="w-full border border-gray-200 rounded-xl p-3 text-sm focus:outline-none focus:border-gray-400 placeholder-gray-300 resize-none">{{ old('comments') }}</textarea>
                        <span class="absolute bottom-2 right-3 text-xs text-gray-400"><span
                                id="commentsCount">0</span> / 500</span>
                    </div>
                </div>

                <div class="mb-8 flex items-center space-x-1.5 text-xs text-gray-400">
                    <i class="fa-solid fa-lock text-gray-400"></i>
                    <span>{{ __('We respect your privacy. Your information will not be shared.') }}</span>
                </div>

                <p id="formError" class="text-xs text-red-500 mb-3 text-center hidden"></p>

                <button type="submit" id="submitBtn"
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

    @if (!($alreadySubmitted && $submittedData))
        <script>
            // ── Overall stars ──
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
                star.addEventListener('click', function() {
                    const value = parseInt(this.dataset.value);
                    overallHidden.value = value;
                    paintOverallStars(value);
                    overallLabel.textContent = ratingLabels[value] || '';
                    document.getElementById('overallError').classList.add('hidden');
                });
            });

            const initialOverall = parseInt(overallHidden.value) || 0;
            if (initialOverall > 0) {
                paintOverallStars(initialOverall);
                overallLabel.textContent = ratingLabels[initialOverall] || '';
            }

            // ── Category ratings (Good=5 / Average=3 / Bad=1) ──
            const categoryRatings = {};
            document.querySelectorAll('.cat-rating').forEach(function(r) {
                r.addEventListener('change', function() {
                    categoryRatings[this.dataset.code] = parseInt(this.value, 10);
                    document.getElementById('hiddenCategoryRatings').value = JSON.stringify(categoryRatings);
                    const ce = document.getElementById('categoryError');
                    if (ce) ce.classList.add('hidden');
                });
            });

            // ── Character counters ──
            function bindCounter(textareaId, counterId) {
                const el = document.getElementById(textareaId);
                const counter = document.getElementById(counterId);
                counter.textContent = el.value.length;
                el.addEventListener('input', () => {
                    counter.textContent = el.value.length;
                });
            }
            bindCounter('comments', 'commentsCount');
            bindCounter('improvements', 'improveCount');

            // ── Submit validation ──
            document.getElementById('feedbackForm').addEventListener('submit', function(e) {
                const banquetInput = document.getElementById('banquetInput');
                const nameInput = document.getElementById('nameInput');
                const banquetError = document.getElementById('banquetError');
                const overallError = document.getElementById('overallError');
                const formError = document.getElementById('formError');
                const categoryError = document.getElementById('categoryError');

                banquetError.classList.add('hidden');
                overallError.classList.add('hidden');
                formError.classList.add('hidden');
                if (categoryError) categoryError.classList.add('hidden');

                if (!banquetInput.value.trim()) {
                    e.preventDefault();
                    banquetError.textContent = "{{ __('Please enter the banquet / event name') }}";
                    banquetError.classList.remove('hidden');
                    banquetInput.focus();
                    return;
                }

                if (!nameInput.value.trim()) {
                    e.preventDefault();
                    formError.textContent = "{{ __('Please enter your name') }}";
                    formError.classList.remove('hidden');
                    nameInput.focus();
                    return;
                }

                if (parseInt(overallHidden.value) < 1) {
                    e.preventDefault();
                    overallError.textContent = "{{ __('Please rate your overall experience') }}";
                    overallError.classList.remove('hidden');
                    document.getElementById('overallStars').scrollIntoView({
                        behavior: 'smooth',
                        block: 'center'
                    });
                    return;
                }

                const totalQuestions = new Set(Array.from(document.querySelectorAll('.cat-rating'))
                    .map(r => r.dataset.code)).size;
                if (Object.keys(categoryRatings).length < totalQuestions) {
                    e.preventDefault();
                    categoryError.textContent = "{{ __('Please rate all the questions.') }}";
                    categoryError.classList.remove('hidden');
                    categoryError.scrollIntoView({
                        behavior: 'smooth',
                        block: 'center'
                    });
                    return;
                }

                document.getElementById('hiddenCategoryRatings').value = JSON.stringify(categoryRatings);

                const submitBtn = document.getElementById('submitBtn');
                submitBtn.disabled = true;
                submitBtn.innerHTML =
                    '<i class="fa-solid fa-spinner fa-spin text-sm"></i> <span>{{ __('Submitting...') }}</span>';
            });
        </script>
    @endif

</body>

</html>
