@extends('frontend.hotels.layouts.main')
@section('title', '{{ percompdata()->comp_name }}')
@section('meta')
    <meta name="description" content="{{ percompdata()->metadesc }}">
    <meta name="keywords" content="{{ percompdata()->metakey_word }}">
    <meta name="author" content="{{ config('app.name') }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('main-container')
    <style>
        /* Minimal Custom Styles - Using Bootstrap Classes */
        .hero-section {
            background: linear-gradient(135deg, #007bff59, rgb(0 86 179 / 0%));
            color: white;
            position: relative;
            overflow: hidden;
        }

        .hero-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }

        .booking-interface {
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-top: -30px;
            position: relative;
            z-index: 10;
        }

        .date-btn,
        .guest-btn {
            border: 2px solid #e9ecef;
            background: white;
            transition: all 0.3s ease;
        }

        .date-btn:hover,
        .guest-btn:hover {
            border-color: #007bff;
            transform: translateY(-2px);
        }

        .room-card {
            border: none;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.08);
            transition: all 0.3s ease;
            overflow: hidden;
        }

        .room-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        .room-image {
            width: 100%;
            height: 66vh;
            object-fit: contain;
        }

        .plan-card {
            border: 1px solid #e9ecef;
            transition: all 0.3s ease;
        }

        .plan-card:hover {
            border-color: #007bff;
            box-shadow: 0 4px 12px rgba(0, 123, 255, 0.1);
        }

        .plan-card.border-success {
            border-color: #28a745 !important;
            background-color: rgba(40, 167, 69, 0.02);
        }

        .badge-sm {
            font-size: 0.65rem;
            padding: 0.2rem 0.4rem;
        }

        .amenity-badge {
            font-size: 0.75rem;
        }

        .price-tag {
            background: linear-gradient(135deg, #28a745, #20c997);
            color: white;
            font-weight: 700;
        }

        .hero-gallery img {
            height: 80px;
            object-fit: cover;
            border-radius: 8px;
        }

        /* Calendar Styles */
        .calendar-day {
            position: relative;
            height: 50px;
            cursor: pointer;
            border: 1px solid #e9ecef;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            transition: all 0.2s ease;
            padding: 5px 2px;
        }

        .calendar-day:hover {
            background-color: #f8f9fa;
            border-color: #007bff;
        }

        .calendar-day.day-selected {
            background-color: #007bff !important;
            color: white !important;
            border-color: #007bff !important;
        }

        .calendar-day.day-highlight {
            background-color: rgba(0, 123, 255, 0.1) !important;
            border-color: rgba(0, 123, 255, 0.3) !important;
        }

        .date-number {
            font-weight: 600;
            font-size: 14px;
            line-height: 1;
            margin-bottom: 2px;
        }

        .date-price {
            font-size: 10px;
            line-height: 1;
            font-weight: 500;
            opacity: 0.8;
        }

        .calendar-day.day-selected .date-price {
            color: rgba(255, 255, 255, 0.9);
        }

        .calendar-day.day-highlight .date-price {
            color: #007bff;
            font-weight: 600;
        }

        /* Carousel Styles */
        .carousel-control-prev,
        .carousel-control-next {
            width: 40px;
            height: 40px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 50%;
            top: 50%;
            transform: translateY(-50%);
        }

        .carousel-control-prev {
            left: 10px;
        }

        .carousel-control-next {
            right: 10px;
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            width: 15px;
            height: 15px;
        }

        .carousel-indicators {
            bottom: 10px;
            margin-bottom: 0;
        }

        .carousel-indicators [data-bs-target] {
            width: 8px;
            height: 8px;
            border-radius: 50%;
            margin: 0 3px;
        }

        /* Amenities overlay styles */
        .bg-gradient-dark {
            background: linear-gradient(transparent, rgba(0, 0, 0, 0.7)) !important;
        }

        /* Modal responsive fixes */
        @media (max-width: 768px) {
            .hero-gallery img {
                height: 60px;
            }

            .room-image {
                height: 150px;
            }

            .calendar-day {
                height: 45px;
                padding: 3px 1px;
            }

            .date-number {
                font-size: 12px;
            }

            .date-price {
                font-size: 9px;
            }

            .modal-dialog {
                margin: 10px;
            }

            .modal-lg {
                max-width: calc(100vw - 20px);
            }
        }

        @media (max-width: 576px) {
            .calendar-day {
                height: 40px;
                padding: 2px 1px;
            }

            .date-number {
                font-size: 11px;
            }

            .date-price {
                font-size: 8px;
            }

            .modal-header .badge {
                font-size: 0.7rem;
                padding: 0.25rem 0.5rem;
            }
        }
    </style>

    <!-- Hotel Hero Section -->
    <section class="hero-section py-5">
        @php
            $heroImages = explode(',', percompdata()->images);
            $mainImage = percompdata()->cover_image;
        @endphp
        @if ($mainImage)
            <img src="{{ asset('storage/property/coverimage/' . $mainImage) }}"
                alt="{{ percompdata()->comp_name }}"
                class="hero-bg"
                onerror="this.style.display='none'">
        @endif

        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8">
                    <h1 class="display-4 fw-bold mb-3">{{ percompdata()->comp_name }}</h1>
                    <p class="lead mb-3">{{ percompdata()->address1 }}{{ percompdata()->address2 ? ', ' . percompdata()->address2 : '' }}</p>
                    <p class="mb-3">
                        <i class="fas fa-map-marker-alt me-2"></i>
                        {{ percompdata()->city }}, {{ percompdata()->state }} - {{ percompdata()->pin }}
                    </p>
                    <div class="d-flex flex-wrap gap-3 mb-4">
                        @if (percompdata()->mobile)
                            <span class="badge bg-light text-dark p-2">
                                <i class="fas fa-phone me-1"></i> {{ percompdata()->mobile }}
                            </span>
                        @endif
                        @if (percompdata()->email)
                            <span class="badge bg-light text-dark p-2">
                                <i class="fas fa-envelope me-1"></i> {{ percompdata()->email }}
                            </span>
                        @endif
                    </div>
                </div>

                @if (percompdata()->images && count(explode(',', percompdata()->images)) > 1)
                    <div class="col-lg-4">
                        <div class="hero-gallery">
                            <div class="row g-2">
                                @php
                                    $galleryImages = array_slice(explode(',', percompdata()->images), 1, 4);
                                @endphp
                                @foreach ($galleryImages as $image)
                                    @if (trim($image))
                                        <div class="col-6">
                                            <img src="{{ asset('storage/property/' . trim($image)) }}"
                                                alt="Hotel Gallery"
                                                class="w-100"
                                                onerror="this.style.display='none'">
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </section>

    <!-- Booking Interface -->
    {{-- <div class="container"> --}}
    <div class="booking-interface p-4">
        <div class="row g-3 align-items-end mb-4">
            <div class="col-md-3">
                <label class="form-label fw-semibold">Check-in</label>
                <button type="button" class="date-btn w-100 p-3 text-start border rounded" id="checkinBtn">
                    <div class="fw-bold text-primary">Check-in</div>
                    <div id="checkinDate" class="text-muted"></div>
                </button>
            </div>

            <div class="col-md-3">
                <label class="form-label fw-semibold">Check-out</label>
                <button type="button" class="date-btn w-100 p-3 text-start border rounded" id="checkoutBtn">
                    <div class="fw-bold text-primary">Check-out</div>
                    <div id="checkoutDate" class="text-muted"></div>
                </button>
            </div>

            <div class="col-md-3">
                <label class="form-label fw-semibold">Guests & Rooms</label>
                <button type="button" class="guest-btn w-100 p-3 text-start border rounded" id="guestBtn">
                    <div class="fw-bold text-primary">Rooms & Guests</div>
                    <div id="guestSummary" class="text-muted">1 Room, 2 Adults</div>
                </button>
            </div>

            <div class="col-md-3">
                <button type="button" class="btn btn-primary btn-lg w-100 py-3" id="searchBtn">
                    <i class="fas fa-search me-2"></i>Search Rooms
                </button>
            </div>
        </div>

        <!-- Room Categories will be loaded here -->
        <div id="roomcategories"></div>
    </div>
    {{-- </div> --}}

    <!-- Modal Backdrop -->
    <div class="modal-backdrop fade" id="modalBackdrop" style="display: none;"></div>

    <!-- Date Picker Modal -->
    <div class="modal fade" id="datePickerModal" tabindex="-1" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-light">
                    <div class="d-flex align-items-center">
                        <span class="badge bg-primary me-2 p-2" id="fromDateDisplay">9 Nov 25</span>
                        <span class="mx-2">to</span>
                        <span class="badge bg-outline-primary border p-2" id="toDateDisplay">11 Nov 25</span>
                    </div>
                </div>

                <div class="modal-body p-0">
                    <div class="d-flex justify-content-between align-items-center p-3 border-bottom">
                        <button class="btn btn-outline-primary" id="prevMonth">&larr;</button>
                        <div class="d-flex gap-4">
                            <h6 class="mb-0" id="leftMonth">October 25</h6>
                            <h6 class="mb-0" id="rightMonth">November 25</h6>
                        </div>
                        <button class="btn btn-outline-primary" id="nextMonth">&rarr;</button>
                    </div>

                    <div class="row g-0">
                        <div class="col-6 border-end">
                            <div class="row g-0 text-center p-2 border-bottom bg-light">
                                <div class="col">Su</div>
                                <div class="col">Mo</div>
                                <div class="col">Tu</div>
                                <div class="col">We</div>
                                <div class="col">Th</div>
                                <div class="col">Fr</div>
                                <div class="col">Sa</div>
                            </div>
                            <div id="leftCalendarDays" class="p-2"></div>
                        </div>
                        <div class="col-6">
                            <div class="row g-0 text-center p-2 border-bottom bg-light">
                                <div class="col">Su</div>
                                <div class="col">Mo</div>
                                <div class="col">Tu</div>
                                <div class="col">We</div>
                                <div class="col">Th</div>
                                <div class="col">Fr</div>
                                <div class="col">Sa</div>
                            </div>
                            <div id="rightCalendarDays" class="p-2"></div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" id="resetDates">Reset</button>
                    <button type="button" class="btn btn-primary" id="applyDates">Apply Dates</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Guest Modal -->
    <div class="modal fade" id="guestModal" tabindex="-1" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Rooms & Guests</h5>
                </div>
                <div class="modal-body">
                    <div class="row mb-3">
                        <div class="col-6">
                            <label class="form-label">Rooms</label>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center justify-content-end gap-2">
                                <button type="button" class="btn btn-outline-secondary btn-sm rounded-circle" id="roomMinus">-</button>
                                <span class="fw-bold mx-2" id="roomCount">1</span>
                                <button type="button" class="btn btn-outline-secondary btn-sm rounded-circle" id="roomPlus">+</button>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-6">
                            <label class="form-label">Adults</label>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center justify-content-end gap-2">
                                <button type="button" class="btn btn-outline-secondary btn-sm rounded-circle" id="adultMinus">-</button>
                                <span class="fw-bold mx-2" id="adultCount">2</span>
                                <button type="button" class="btn btn-outline-secondary btn-sm rounded-circle" id="adultPlus">+</button>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-6">
                            <label class="form-label">Children</label>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center justify-content-end gap-2">
                                <button type="button" class="btn btn-outline-secondary btn-sm rounded-circle" id="childMinus">-</button>
                                <span class="fw-bold mx-2" id="childCount">0</span>
                                <button type="button" class="btn btn-outline-secondary btn-sm rounded-circle" id="childPlus">+</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" id="closeGuestModal">Cancel</button>
                    <button type="button" class="btn btn-primary" id="applyGuests">Apply</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Global variables
            let checkinDate, checkoutDate;
            let roomCount = 1,
                adultCount = 2,
                childCount = 0;
            let currentMonth = new Date();
            let selectedStartDate = null,
                selectedEndDate = null;

            const today = new Date();
            const tomorrow = new Date(today);
            tomorrow.setDate(today.getDate() + 1);

            checkinDate = today;
            checkoutDate = tomorrow;

            // Initialize selected dates for calendar
            selectedStartDate = new Date(checkinDate);
            selectedEndDate = new Date(checkoutDate);

            updateDateDisplays();
            updateGuestSummary();

            var csrfToken = "{{ csrf_token() }}";
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': csrfToken,
                    'Accept': 'application/json',
                    'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
                }
            });

            performSearch();

            function formatDate(date) {
                const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
                ];
                return date.getDate() + ' ' + months[date.getMonth()] + ' ' + (date.getFullYear().toString().substr(-2));
            }

            function formatDateForAPI(date) {
                return date.getFullYear() + '-' +
                    String(date.getMonth() + 1).padStart(2, '0') + '-' +
                    String(date.getDate()).padStart(2, '0');
            }

            function updateDateDisplays() {
                $('#checkinDate').text(formatDate(checkinDate));
                $('#checkoutDate').text(formatDate(checkoutDate));
                $('#fromDateDisplay').text(formatDate(checkinDate));
                $('#toDateDisplay').text(formatDate(checkoutDate));
            }

            function updateGuestSummary() {
                let summary = roomCount + ' Room';
                if (roomCount > 1) summary += 's';
                summary += ', ' + adultCount + ' Adult';
                if (adultCount > 1) summary += 's';
                if (childCount > 0) {
                    summary += ', ' + childCount + ' Child';
                    if (childCount > 1) summary += 'ren';
                }
                $('#guestSummary').text(summary);
            }

            function performSearch() {
                const fromdate = formatDateForAPI(checkinDate);
                const todate = formatDateForAPI(checkoutDate);

                $.ajax({
                    url: "{{ route('fetchdatewiseemptyroomcat', ['propertyid' => $compdata->propertyid]) }}",
                    method: "POST",
                    data: {
                        fromdate: fromdate,
                        todate: todate,
                        rooms: roomCount,
                        adults: adultCount,
                        children: childCount,
                    },
                    success: function(response) {

                        if (response.roomcategories && response.roomcategories.length > 0) {
                            displayRoomCategories(response);
                        } else {
                            displayNoRoomsMessage();
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error("AJAX Error Details:");
                        console.error("Status:", status);
                        console.error("Error:", error);
                        console.error("HTTP Status:", xhr.status);
                        console.error("Response:", xhr.responseText);

                        if (xhr.status === 419) {
                            alert('Session expired. Please refresh the page and try again.');
                        } else if (xhr.status === 500) {
                            alert('Server error. Please try again later.');
                        } else {
                            alert('An error occurred. Please try again.');
                        }
                    }
                });
            }

            $('#checkinBtn, #checkoutBtn').click(function() {
                selectedStartDate = new Date(checkinDate);
                selectedEndDate = new Date(checkoutDate);

                $('#fromDateDisplay').text(formatDate(selectedStartDate))
                    .removeClass('bg-outline-primary border')
                    .addClass('bg-primary');
                $('#toDateDisplay').text(formatDate(selectedEndDate))
                    .removeClass('bg-outline-primary border')
                    .addClass('bg-primary');

                currentMonth = new Date(checkinDate.getFullYear(), checkinDate.getMonth(), 1);
                generateCalendar();

                $('#datePickerModal').show().addClass('show');
                $('#modalBackdrop').show().addClass('show');
            });

            $('#guestBtn').click(function() {
                $('#guestModal').show().addClass('show');
                $('#modalBackdrop').show().addClass('show');
            });

            $('#searchBtn').click(function() {
                performSearch();
            });

            $('#modalBackdrop').click(function() {
                closeAllModals();
            });

            function closeAllModals() {
                $('#datePickerModal, #guestModal').hide().removeClass('show');
                $('#modalBackdrop').hide().removeClass('show');
            }

            $('#applyDates').click(function() {
                if (selectedStartDate && selectedEndDate) {
                    checkinDate = new Date(selectedStartDate);
                    checkoutDate = new Date(selectedEndDate);

                    console.log('Applying new dates:', {
                        checkin: formatDate(checkinDate),
                        checkout: formatDate(checkoutDate)
                    });

                    updateDateDisplays();
                    closeAllModals();
                    performSearch();
                } else {
                    alert('Please select both check-in and check-out dates.');
                }
            });

            $('#resetDates').click(function() {
                selectedStartDate = new Date(checkinDate);
                selectedEndDate = new Date(checkoutDate);

                $('#fromDateDisplay').text(formatDate(selectedStartDate))
                    .removeClass('bg-outline-primary border')
                    .addClass('bg-primary');
                $('#toDateDisplay').text(formatDate(selectedEndDate))
                    .removeClass('bg-outline-primary border')
                    .addClass('bg-primary');

                generateCalendar();
            });

            $('#roomMinus').click(function() {
                if (roomCount > 1) {
                    roomCount--;
                    $('#roomCount').text(roomCount);
                }
            });

            $('#roomPlus').click(function() {
                if (roomCount < 500) {
                    roomCount++;
                    $('#roomCount').text(roomCount);
                }
            });

            $('#adultMinus').click(function() {
                if (adultCount > 1) {
                    adultCount--;
                    $('#adultCount').text(adultCount);
                    updatePlanFiltering();
                }
            });

            $('#adultPlus').click(function() {
                if (adultCount < 20) {
                    adultCount++;
                    $('#adultCount').text(adultCount);
                    updatePlanFiltering();
                }
            });

            $('#childMinus').click(function() {
                if (childCount > 0) {
                    childCount--;
                    $('#childCount').text(childCount);
                    updatePlanFiltering();
                }
            });

            $('#childPlus').click(function() {
                if (childCount < 10) {
                    childCount++;
                    $('#childCount').text(childCount);
                    updatePlanFiltering();
                }
            });

            $('#closeGuestModal').click(function() {
                closeAllModals();
            });

            $('#applyGuests').click(function() {
                updateGuestSummary();
                closeAllModals();

                updatePlanFiltering();

                performSearch();
            });

            function updatePlanFiltering() {
                console.log('Updating plan filtering for adult count:', adultCount);

                $('[data-category-plans]').each(function() {
                    const planCard = $(this);
                    const plansData = JSON.parse(planCard.attr('data-category-plans'));
                    const categoryName = planCard.attr('data-category-name');

                    console.log('Processing category:', categoryName, 'with plans:', plansData);

                    if (plansData && categoryName) {
                        const filteredPlans = plansData.filter(plan => {
                            const planAdults = parseInt(plan.plan_adults) || 1;
                            console.log(`Plan: ${plan.plan_name}, Plan Adults: ${planAdults}, Show: ${planAdults >= adultCount}`);
                            return planAdults >= adultCount;
                        });

                        console.log(`Filtered ${plansData.length} to ${filteredPlans.length} plans`);

                        planCard.find('.badge').text(filteredPlans.length);

                        const filterTextElement = planCard.find('small');
                        if (filteredPlans.length < plansData.length) {
                            filterTextElement.text(`Filtered for ${adultCount} adults`).show();
                        } else {
                            filterTextElement.hide();
                        }

                        let newContent;
                        if (filteredPlans.length > 0) {
                            newContent = filteredPlans.map(plan => generatePlanCard(plan, categoryName)).join('');
                        } else {
                            newContent = `<div class="p-3 text-center text-muted">
                                <i class="fas fa-info-circle me-1"></i>
                                No plans available for ${adultCount} adults
                                <br><small>Try selecting fewer adults or check other categories</small>
                            </div>`;
                        }

                        planCard.find('.card-body').html(newContent);
                    }
                });
            }

            function generateCalendar() {
                const leftMonth = new Date(currentMonth);
                const rightMonth = new Date(currentMonth);
                rightMonth.setMonth(rightMonth.getMonth() + 1);

                $('#leftMonth').text(leftMonth.toLocaleDateString('en-US', {
                    month: 'long',
                    year: '2-digit'
                }));
                $('#rightMonth').text(rightMonth.toLocaleDateString('en-US', {
                    month: 'long',
                    year: '2-digit'
                }));

                generateMonthCalendar(leftMonth, '#leftCalendarDays');
                generateMonthCalendar(rightMonth, '#rightCalendarDays');
            }

            function generateMonthCalendar(month, container) {
                const year = month.getFullYear();
                const monthIndex = month.getMonth();
                const firstDay = new Date(year, monthIndex, 1);
                const lastDay = new Date(year, monthIndex + 1, 0);
                const startDate = firstDay.getDay();

                let html = '';
                let dayCount = 1;

                for (let week = 0; week < 6; week++) {
                    html += '<div class="row g-0">';

                    for (let day = 0; day < 7; day++) {
                        if (week === 0 && day < startDate) {
                            html += '<div class="col"></div>';
                        } else if (dayCount > lastDay.getDate()) {
                            html += '<div class="col"></div>';
                        } else {
                            const currentDate = new Date(year, monthIndex, dayCount);
                            const today = new Date();
                            today.setHours(0, 0, 0, 0);
                            currentDate.setHours(0, 0, 0, 0);

                            const currentDateString = currentDate.toDateString();
                            const selectedStartString = selectedStartDate ? selectedStartDate.toDateString() : null;
                            const selectedEndString = selectedEndDate ? selectedEndDate.toDateString() : null;

                            const isStartDate = selectedStartString && currentDateString === selectedStartString;
                            const isEndDate = selectedEndString && currentDateString === selectedEndString;
                            const isSelected = isStartDate || isEndDate;

                            const isInRange = selectedStartDate && selectedEndDate &&
                                currentDate > selectedStartDate &&
                                currentDate < selectedEndDate;

                            const isPastDate = currentDate < today;

                            let classes = 'col calendar-day';
                            if (isPastDate) {
                                classes += ' text-muted';
                            } else if (isSelected) {
                                classes += ' day-selected';
                            } else if (isInRange) {
                                classes += ' day-highlight';
                            }

                            const basePrice = 1500 + Math.floor(Math.random() * 1000);
                            const weekendMultiplier = (day === 0 || day === 6) ? 1.3 : 1;
                            const finalPrice = Math.round(basePrice * weekendMultiplier);

                            html += `<div class="${classes}" data-date="${currentDate.getTime()}" ${isPastDate ? 'style="pointer-events: none; opacity: 0.5;"' : ''}>
                                        <span class="date-number">${dayCount}</span>
                                        <span class="date-price">₹${finalPrice}</span>
                                    </div>`;
                            dayCount++;
                        }
                    }
                    html += '</div>';

                    if (dayCount > lastDay.getDate()) break;
                }

                $(container).html(html);
            }

            $('#prevMonth').click(function() {
                currentMonth.setMonth(currentMonth.getMonth() - 1);
                generateCalendar();
            });

            $('#nextMonth').click(function() {
                currentMonth.setMonth(currentMonth.getMonth() + 1);
                generateCalendar();
            });

            $(document).on('click', '.calendar-day', function() {
                if ($(this).css('pointer-events') === 'none') {
                    return;
                }

                const dateTime = parseInt($(this).data('date'));
                const clickedDate = new Date(dateTime);

                if (!selectedStartDate || (selectedStartDate && selectedEndDate)) {
                    selectedStartDate = new Date(clickedDate);
                    selectedEndDate = null;

                    $('#fromDateDisplay').text(formatDate(selectedStartDate))
                        .removeClass('bg-outline-primary border')
                        .addClass('bg-primary');
                    $('#toDateDisplay').text('Select checkout')
                        .removeClass('bg-primary')
                        .addClass('bg-outline-primary border');
                } else {
                    // Complete selection
                    if (clickedDate >= selectedStartDate) {
                        selectedEndDate = new Date(clickedDate);
                    } else {
                        selectedEndDate = new Date(selectedStartDate);
                        selectedStartDate = new Date(clickedDate);
                    }

                    $('#fromDateDisplay').text(formatDate(selectedStartDate))
                        .removeClass('bg-outline-primary border')
                        .addClass('bg-primary');
                    $('#toDateDisplay').text(formatDate(selectedEndDate))
                        .removeClass('bg-outline-primary border')
                        .addClass('bg-primary');
                }

                generateCalendar();
            });

            generateCalendar();

            // Keyboard navigation for carousels
            $(document).on('keydown', function(e) {
                if ($('.carousel:hover').length > 0) {
                    const activeCarousel = $('.carousel:hover')[0];
                    const carouselId = activeCarousel.id;

                    if (e.key === 'ArrowLeft') {
                        e.preventDefault();
                        $(`#${carouselId}`).carousel('prev');
                    } else if (e.key === 'ArrowRight') {
                        e.preventDefault();
                        $(`#${carouselId}`).carousel('next');
                    }
                }
            });

            // Add hover effect to carousels for keyboard navigation
            $(document).on('mouseenter', '.carousel', function() {
                $(this).attr('tabindex', '0').focus();
            });

            $(document).on('mouseleave', '.carousel', function() {
                $(this).removeAttr('tabindex');
            });

            function displayRoomCategories(data) {
                const {
                    roomcategories
                } = data;

                let html = '';
                roomcategories
                    .filter(category => {
                        // Filter categories based on room count availability
                        return category.available_rooms >= roomCount;
                    })
                    .forEach((category, index) => {
                        html += generateCategoryCard(category);
                    });

                if (html === '') {
                    html = displayNoRoomsMessage();
                }

                $('#roomcategories').html(html);
            }

            function displayNoRoomsMessage() {
                const html = `
                    <div class="mt-4">
                        <div class="alert alert-warning text-center border-0 shadow-sm">
                            <i class="fas fa-exclamation-triangle fa-2x text-warning mb-3"></i>
                            <h4>No rooms available</h4>
                            <p class="mb-0">Sorry, no rooms are available for the selected dates. Please try different dates or contact us for assistance.</p>
                        </div>
                    </div>`;
                $('#roomcategories').html(html);
            }

            function generateCategoryCard(category) {
                const images = category.category_image ? category.category_image.split(',') : [];
                const amenities = category.category_ammenities ? category.category_ammenities.split(',') : [];

                let standardRate = null;

                let occtype = 'extrauser';
                if (adultCount <= 1) {
                    occtype = 'singleuser';
                } else if (adultCount === 2) {
                    occtype = 'multiuser';
                }

                if (category.rateliscategory && Array.isArray(category.rateliscategory)) {
                    for (let rate of category.rateliscategory) {
                        if (rate.occtype === occtype && rate.rate2) {
                            standardRate = rate.rate2;
                            break;
                        }
                    }
                }

                return `
                    <div class="col-12">
                        <div class="card room-card border-0 mb-4">
                            <div class="row g-0">
                                <div class="col-md-6">
                                    <div class="position-relative">
                                        ${generateImageSection(images, category.category)}
                                    </div>
                                    ${generateAmenitiesSection(amenities)}
                                </div>
                                <div class="col-md-6">
                                    <div id="${category.cat_code}" class="card-body p-4">
                                        <div class="d-flex justify-content-between align-items-start mb-3">
                                            <div>
                                                <h4 class="card-title text-primary mb-1">${category.category || 'Room Category'}</h4>
                                                <div class="text-success small mb-2">
                                                    <i class="fas fa-check-circle me-1"></i>
                                                    ${category.available_rooms} rooms available
                                                </div>
                                                <div class="text-warning small">
                                                    ★★★★☆ <span class="text-muted">(4.2/5 - 128 reviews)</span>
                                                </div>
                                            </div>
                                            ${standardRate ? `
                                                            <div class="text-end">
                                                                <div class="price-tag badge fs-6 p-2">₹${numberFormat(standardRate)}</div>
                                                                    <div class="small text-muted">per night</div>
                                                                </div>
                                                            ` : ''}
                                        </div>
                                        
                                        <div class="row g-3 mt-3">
                                            <div class="col-md-6">
                                                ${generateStandardBooking(category.cat_code, standardRate)}
                                            </div>
                                            <div class="col-md-6">
                                                ${generatePlanSection(category)}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`;
            }

            function generateImageSection(images, categoryName) {
                if (!images.length) {
                    return `
                        <div class="d-flex align-items-center justify-content-center bg-light" style="height: 200px;">
                            <i class="fas fa-image text-muted fa-3x"></i>
                        </div>`;
                }

                const carouselId = `carousel-${categoryName.replace(/\s+/g, '-').toLowerCase()}-${Date.now()}`;

                if (images.length === 1) {
                    const mainImage = images[0].trim();
                    return `
                        <img src="/storage/property/roomcategory/${mainImage}" 
                             alt="${categoryName || 'Room'}" 
                             class="room-image"
                             onerror="this.src='https://placehold.co/400x200?text=${categoryName || 'Room'}'">`;
                }

                let carouselHtml = `
                    <div id="${carouselId}" class="carousel slide" data-bs-ride="carousel" style="height: 200px;">
                        <div class="carousel-inner" style="height: 100%;">`;

                images.forEach((image, index) => {
                    const trimmedImage = image.trim();
                    if (trimmedImage) {
                        carouselHtml += `
                            <div class="carousel-item ${index === 0 ? 'active' : ''}" style="height: 100%;">
                                <img src="/storage/property/roomcategory/${trimmedImage}" 
                                     alt="${categoryName || 'Room'} - Image ${index + 1}" 
                                     class="d-block w-100 room-image"
                                     style="height: 100%; object-fit: cover;"
                                     onerror="this.src='https://placehold.co/400x200?text=${categoryName || 'Room'}'">
                            </div>`;
                    }
                });

                carouselHtml += `
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#${carouselId}" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#${carouselId}" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                        <div class="carousel-indicators">`;

                images.forEach((image, index) => {
                    const trimmedImage = image.trim();
                    if (trimmedImage) {
                        carouselHtml += `
                            <button type="button" data-bs-target="#${carouselId}" data-bs-slide-to="${index}" 
                                    ${index === 0 ? 'class="active" aria-current="true"' : ''} 
                                    aria-label="Slide ${index + 1}"></button>`;
                    }
                });

                carouselHtml += `
                        </div>
                    </div>`;

                return carouselHtml;
            }

            function generateAmenitiesSection(amenities) {
                if (!amenities.length) return '';

                return `
                    <div class="p-3 bg-light border-top">
                        <h6 class="text-muted mb-2 small">
                            <i class="fas fa-star me-1"></i>Amenities
                        </h6>
                        <div class="d-flex flex-wrap gap-1">
                            ${amenities.slice(0, 6).map(amenity => 
                                amenity.trim() ? `<span class="badge bg-primary amenity-badge" style="font-size: 0.7rem;">${amenity.trim()}</span>` : ''
                            ).join('')}
                            ${amenities.length > 6 ? `<span class="badge bg-secondary amenity-badge" style="font-size: 0.7rem;">+${amenities.length - 6} more</span>` : ''}
                        </div>
                    </div>`;
            }

            function generateStandardBooking(catCode, standardRate) {
                return `
                    <div class="card h-100">
                        <div class="card-header bg-light">
                            <h6 class="mb-0 text-primary">Standard Booking</h6>
                        </div>
                        <div class="card-body text-center d-flex flex-column">
                            ${standardRate ? `
                                                                            <div class="mb-3">
                                                                                <div class="h4 text-primary mb-1">₹${numberFormat(standardRate)}</div>
                                                                                <small class="text-muted">Per night • Taxes Extras</small>
                                                                            </div>
                                                                            <button class="btn btn-success mt-auto" onclick="bookStandardRoom('${catCode}', ${standardRate})">
                                                                                <i class="fas fa-calendar-check me-1"></i> Book Now
                                                                            </button>
                                                                        ` : `
                                                                            <div class="text-muted">
                                                                                <i class="fas fa-times-circle me-1"></i>
                                                                                Rate not available
                                                                            </div>
                                                                        `}
                        </div>
                    </div>`;
            }

            function generatePlanSection(category) {
                const plans = category.plans || [];

                const filteredPlans = plans.filter(plan => {
                    const planAdults = parseInt(plan.plan_adults) || 1;
                    return planAdults >= adultCount;
                });

                return `
                    <div class="card h-100" data-category-plans='${JSON.stringify(plans)}' data-category-name="${category.category}">
                        <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                            <h6 class="mb-0">Package Plans</h6>
                            <div class="d-flex align-items-center gap-2">
                                <span class="badge bg-light text-primary">${filteredPlans.length}</span>
                                ${filteredPlans.length < plans.length ? 
                                    `<small class="text-light opacity-75">Filtered for ${adultCount} adults</small>` : ''}
                            </div>
                        </div>
                        <div class="card-body p-0" style="max-height: 300px; overflow-y: auto;">
                            ${filteredPlans.length > 0 ? 
                                filteredPlans.map(plan => generatePlanCard(plan, category)).join('') : 
                                `<div class="p-3 text-center text-muted">
                                        <i class="fas fa-info-circle me-1"></i>
                                                No plans available for ${adultCount} adults
                                        <br><small>Try selecting fewer adults or check other categories</small>
                                    </div>`}
                        </div>
                    </div>`;
            }

            function generatePlanCard(plan, category) {
                const planTitle = plan.plan_desc1 || plan.plan_name || 'Plan';
                const planAdults = parseInt(plan.plan_adults) || 1;
                const planChildren = parseInt(plan.plan_childs) || 0;

                const isPerfectMatch = planAdults === adultCount && planChildren >= childCount;
                const canAccommodate = planAdults >= adultCount;

                return `
                    <div class="plan-card border-bottom ${isPerfectMatch ? 'border-success' : ''}">
                        <div class="p-3">
                            <div class="d-flex justify-content-between align-items-start mb-2">
                                <div class="flex-grow-1">
                                    <div class="d-flex align-items-center gap-2 mb-1">
                                        <h6 class="text-primary mb-0">${category.category}</h6>
                                        ${isPerfectMatch ? 
                                            '<span class="badge bg-success badge-sm">Perfect Match</span>' : 
                                            canAccommodate ? '<span class="badge bg-info badge-sm">Available</span>' : ''}
                                    </div>
                                    <div class="fw-bold">${planTitle}</div>
                                    <small class="text-muted">
                                        <i class="fas fa-users me-1"></i>
                                        ${planAdults} Adults
                                        ${planChildren > 0 ? ` • <i class="fas fa-child me-1"></i>${planChildren} Children` : ''}
                                        ${planAdults > adultCount ? ` • <span class="text-success">+${planAdults - adultCount} extra capacity</span>` : ''}
                                    </small>
                                </div>
                                <div class="text-end">
                                    <div class="fw-bold text-success">₹${numberFormat(plan.plan_package_amount || 0)}</div>
                                    <small class="text-muted">total</small>
                                </div>
                            </div>
                            
                            ${plan.plan_desc2 ? `
                                                                            <div class="small text-muted mb-2">
                                                                                <i class="fas fa-check text-success me-1"></i>${plan.plan_desc2}
                                                                            </div>
                                                                        ` : ''}
                            
                            <button class="btn ${isPerfectMatch ? 'btn-success' : 'btn-outline-primary'} btn-sm w-100" 
                                    onclick="bookPlan('${category.cat_code}','${plan.plan_code || ''}', ${plan.plan_package_amount || 0}, '${planTitle}', '${category.category}')">
                                <i class="fas fa-plus me-1"></i> 
                                ${isPerfectMatch ? 'Select Perfect Match' : 'Select Plan'}
                            </button>
                        </div>
                    </div>`;
            }

            function numberFormat(num) {
                return new Intl.NumberFormat('en-IN').format(num);
            }

            function formatDisplayDate(dateStr) {
                const date = new Date(dateStr);
                const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                return `${months[date.getMonth()]} ${date.getDate()}, ${date.getFullYear()}`;
            }

            // Global functions for booking (attach to window)
            window.togglePlan = function(element) {
                const details = element.nextElementSibling;
                const icon = element.querySelector('.expand-icon');

                details.classList.toggle('active');
                icon.classList.toggle('rotated');
            };

            let propertyId = "{{ $compdata->propertyid }}";
            window.bookStandardRoom = function(catCode, rate) {
                window.location.href = `/hotels/${propertyId}/booking?category=${catCode}&rate=${rate}&type=standard
                &checkin=${formatDateForAPI(checkinDate)}&checkout=${formatDateForAPI(checkoutDate)}
                &rooms=${roomCount}&adults=${adultCount}&children=${childCount}`;
            };

            window.bookPlan = function(catCode, planCode, amount, planTitle, categoryName) {
                window.location.href = `/hotels/${propertyId}/booking?category=${catCode}&rate=${amount}&type=standard
                &checkin=${formatDateForAPI(checkinDate)}&checkout=${formatDateForAPI(checkoutDate)}
                &rooms=${roomCount}&adults=${adultCount}&children=${childCount}&plancode=${planCode}&amount=${amount}`;
            };

            // Fix the 'More Amenities' click issue
            $(document).on('click', '.amenities-more-btn', function() {
                const target = $(this).data('target');
                $(`#${target}`).toggleClass('d-none');
                $(this).text($(this).text() === 'More' ? 'Less' : 'More');
            });
        });
    </script>
@endsection
