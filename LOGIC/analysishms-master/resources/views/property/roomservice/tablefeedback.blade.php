<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('Table Feedback') }} - {{ $company->comp_name ?? 'Restaurant' }}</title>
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

            {{-- FIX 2: Validation errors dikhao, taaki silent redirect na ho --}}
            @if ($errors->any())
                <div class="mb-6 bg-red-50 border border-red-200 text-red-700 text-sm rounded-xl p-3">
                    <ul class="list-disc list-inside">
                        @foreach ($errors->all() as $err)
                            <li>{{ $err }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <div class="flex justify-between items-center border-b pb-4 mb-6">
                <h1 class="text-xl font-bold text-gray-800">{{ __('Table Feedback') }}</h1>

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
                        {{ __('Thank you for dining at') }} <br>
                        <strong
                            class="text-white font-semibold">{{ $company->comp_name ?? 'Our Restaurant' }}</strong>.
                    </p>
                </div>
                <div class="sm:w-1/2 h-44 sm:h-auto w-full">
                    <img src="https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&q=80&w=600"
                        alt="Restaurant" class="w-full h-full object-cover">
                </div>
            </div>

            <div class="bg-gray-50 p-4 rounded-xl mb-2 border border-gray-100 text-sm">
                <div class="flex items-center space-x-3">
                    <i class="fa-solid fa-chair text-gray-400 text-lg"></i>
                    <div class="flex-1">
                        <span class="text-xs text-gray-400 block">{{ __('Table No.') }}</span>
                        {{-- FIX 1: form="feedbackForm" — input form ke bahar hai, isliye attach karna zaroori --}}
                        <input type="text" id="tableInput" name="table_no" form="feedbackForm"
                            value="{{ old('table_no', $tableno ?? '') }}" placeholder="{{ __('Enter table no.') }}"
                            {{ $tableno ? 'readonly' : '' }}
                            class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                    </div>
                </div>
            </div>
            <p id="tableError" class="text-xs text-red-500 mb-6 hidden"></p>

            <form action="{{ route('tablefeedback.store') }}" method="POST" id="feedbackForm">
                @csrf
                <input type="hidden" name="propertyid" value="{{ $propertyid }}">
                <input type="hidden" id="hiddenOverallRating" name="overall_rating" value="0">
                <input type="hidden" id="hiddenCategoryRatings" name="category_ratings" value="{}">
                <input type="hidden" id="googleReviewUrlField" value="{{ $googleReviewUrl ?? '' }}">

                <!-- Name / Mobile / Email -->
                <div class="bg-gray-50 p-4 rounded-xl mb-6 border border-gray-100 text-sm space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fa-solid fa-user text-gray-400 text-lg"></i>
                        <div class="flex-1">
                            <span class="text-xs text-gray-400 block">{{ __('Your Name') }}</span>
                            <input type="text" id="nameInput" name="name" value="{{ old('name') }}"
                                placeholder="{{ __('Enter your name') }}"
                                class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                        </div>
                    </div>

                    <div class="flex items-center space-x-3">
                        <i class="fa-solid fa-phone text-gray-400 text-lg"></i>
                        <div class="flex-1">
                            <span class="text-xs text-gray-400 block">{{ __('Mobile No.') }}</span>
                            <input type="tel" id="mobileInput" name="mobile_no" value="{{ old('mobile_no') }}"
                                placeholder="{{ __('Enter mobile number') }}" maxlength="15"
                                class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                        </div>
                    </div>

                    <div class="flex items-center space-x-3">
                        <i class="fa-solid fa-envelope text-gray-400 text-lg"></i>
                        <div class="flex-1">
                            <span class="text-xs text-gray-400 block">{{ __('Email') }}</span>
                            <input type="email" id="emailInput" name="email" value="{{ old('email') }}"
                                placeholder="{{ __('Enter email (optional)') }}"
                                class="font-bold text-gray-800 bg-transparent border-0 border-b border-gray-200 focus:outline-none focus:border-slate-500 w-full p-0 text-sm">
                        </div>
                    </div>
                </div>

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
                            placeholder="{{ __('Tell us about your visit...') }}"
                            class="w-full border border-gray-200 rounded-xl p-3 text-sm focus:outline-none focus:border-gray-400 placeholder-gray-300 resize-none">{{ old('comments') }}</textarea>
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
                            class="w-full border border-gray-200 rounded-xl p-3 text-sm focus:outline-none focus:border-gray-400 placeholder-gray-300 resize-none">{{ old('improvements') }}</textarea>
                        <span class="absolute bottom-2 right-3 text-xs text-gray-400"><span id="improveCount">0</span>
                            / 500</span>
                    </div>
                </div>

                <div class="mb-6">
                    <label for="recommend" class="block font-semibold text-gray-800 mb-2">5.
                        {{ __('Would you recommend us?') }}</label>
                    <select id="recommend" name="recommend"
                        class="w-full border border-gray-200 rounded-xl p-3 text-sm text-gray-700 bg-white focus:outline-none focus:border-gray-400 cursor-pointer">
                        <option value="Yes" selected>{{ __('Yes') }}</option>
                        <option value="No">{{ __('No') }}</option>
                        <option value="Maybe">{{ __('Maybe') }}</option>
                    </select>
                </div>

                <div class="mb-3 flex items-start space-x-2">
                    <input type="checkbox" id="consent" name="consent" checked
                        class="mt-1 h-4 w-4 rounded border-gray-300 text-slate-800 focus:ring-0">
                    <label for="consent" class="text-xs text-gray-600 font-medium cursor-pointer">
                        {{ __('I agree that my feedback may be used by the restaurant to improve its services.') }}
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

                    if (value >= 4) {
                        const googleUrl = document.getElementById('googleReviewUrlField').value;
                        if (googleUrl && googleUrl.trim() !== '') {
                            window.open(googleUrl, '_blank');

                            const commentText = document.getElementById('comments').value.trim();
                            if (commentText && navigator.clipboard) {
                                navigator.clipboard.writeText(commentText).catch(() => {});
                            }
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
                counter.textContent = el.value.length;
                el.addEventListener('input', () => {
                    counter.textContent = el.value.length;
                });
            }
            bindCounter('comments', 'commentsCount');
            bindCounter('improvements', 'improveCount');

            document.getElementById('feedbackForm').addEventListener('submit', function(e) {
                const formError = document.getElementById('formError');
                const tableError = document.getElementById('tableError');
                const tableInput = document.getElementById('tableInput');
                const nameInput = document.getElementById('nameInput');

                formError.classList.add('hidden');
                tableError.classList.add('hidden');

                if (!tableInput.value.trim()) {
                    e.preventDefault();
                    tableError.textContent = "{{ __('Please enter a valid table number first') }}";
                    tableError.classList.remove('hidden');
                    tableInput.focus();
                    return;
                }

                if (!nameInput.value.trim()) {
                    e.preventDefault();
                    formError.textContent = "{{ __('Please enter your name') }}";
                    formError.classList.remove('hidden');
                    nameInput.focus();
                    return;
                }

                document.getElementById('hiddenCategoryRatings').value = JSON.stringify(categoryRatings);

                const submitBtn = this.querySelector('button[type="submit"]');
                submitBtn.disabled = true;
                submitBtn.innerHTML =
                    '<i class="fa-solid fa-spinner fa-spin text-sm"></i> <span>{{ __('Submitting...') }}</span>';
            });
        </script>
    @endif

</body>

</html>
