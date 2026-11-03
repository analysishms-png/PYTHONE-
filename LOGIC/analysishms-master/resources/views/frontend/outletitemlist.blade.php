{{-- resources/views/frontend/outletitemlist.blade.php --}}
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ "{$comp_data->comp_name} - Outlet - {$depart->name} - Menu" }}</title>
    <link href="{{ asset('assets/img/favicon.png') }}" rel="icon">
    <link href="{{ asset('assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#e91e63',
                        secondary: '#f06292',
                    }
                }
            }
        }
    </script>
    <style>
        .backdrop-blur {
            backdrop-filter: blur(10px);
        }

        .scrollbar-hide {
            -ms-overflow-style: none;
            scrollbar-width: none;
        }

        .scrollbar-hide::-webkit-scrollbar {
            display: none;
        }
    </style>
</head>

<body class="bg-gradient-to-br from-purple-400 via-pink-500 to-red-500 min-h-screen">

    <!-- Mobile Menu Toggle -->
    <button id="mobile-menu-toggle" class="fixed top-4 left-4 z-50 bg-white/90 backdrop-blur p-3 rounded-full shadow-lg md:hidden">
        <i class="fas fa-bars text-gray-700"></i>
    </button>

    <!-- Sidebar -->
    <div id="sidebar" class="fixed left-0 top-0 h-full w-80 bg-white/95 backdrop-blur transform -translate-x-full transition-transform duration-300 z-40 shadow-2xl md:translate-x-0">
        <!-- Sidebar Header -->
        <div class="bg-gradient-to-r from-primary to-secondary p-6 text-white">
            <div class="flex items-center justify-between">
                <div class="flex items-center space-x-3">
                    <i class="fas fa-utensils text-xl"></i>
                    <h2 class="text-xl font-bold">{{ $comp_data->comp_name }}</h2>
                </div>
                <button id="close-sidebar" class="md:hidden">
                    <i class="fas fa-times text-xl"></i>
                </button>
            </div>
        </div>

        <!-- Search Section -->
        <div class="p-6 border-b border-gray-200">
            <div class="relative">
                <input type="text" id="search-input" placeholder="Search menu items..."
                    class="w-full pl-4 pr-12 py-3 border-2 border-gray-200 rounded-full focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/20 transition-all">
                <i class="fas fa-search absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-400"></i>
            </div>
        </div>

        <!-- Menu Navigation -->
        <div class="p-6">
            <nav class="space-y-2">
                <a href="#" class="flex items-center space-x-3 p-3 rounded-lg hover:bg-gray-100 transition-colors border-l-4 border-transparent hover:border-primary">
                    <i class="fas fa-home text-gray-600"></i>
                    <span class="text-gray-700 font-medium">Menu</span>
                </a>
                <a href="#" id="wishlist-btn" class="flex items-center space-x-3 p-3 rounded-lg hover:bg-gray-100 transition-colors border-l-4 border-transparent hover:border-primary">
                    <i class="fas fa-heart text-gray-600"></i>
                    <span class="text-gray-700 font-medium">Wishlist</span>
                    <span id="wishlist-count" class="ml-auto bg-primary text-white text-xs px-2 py-1 rounded-full hidden">0</span>
                </a>
                {{-- <a href="#" class="flex items-center space-x-3 p-3 rounded-lg hover:bg-gray-100 transition-colors border-l-4 border-transparent hover:border-primary">
                    <i class="fas fa-info-circle text-gray-600"></i>
                    <span class="text-gray-700 font-medium">Resto Information</span>
                </a>
                <a href="#" class="flex items-center space-x-3 p-3 rounded-lg hover:bg-gray-100 transition-colors border-l-4 border-transparent hover:border-primary">
                    <i class="fas fa-file-contract text-gray-600"></i>
                    <span class="text-gray-700 font-medium">Terms & Conditions</span>
                </a> --}}
            </nav>
        </div>

        <!-- Filter Section -->
        <div class="p-6 border-t border-gray-200">
            <h3 class="text-lg font-semibold text-gray-800 mb-4">Filters</h3>

            <!-- Dish Type Filter -->
            <div class="mb-6">
                <h4 class="text-sm font-medium text-gray-700 mb-3">Dish Type</h4>
                <div class="space-y-2">
                    <label class="flex items-center space-x-2 cursor-pointer">
                        <input type="checkbox" id="filter-all" class="filter-dishtype rounded border-gray-300 text-primary focus:ring-primary" checked>
                        <span class="text-sm text-gray-600">All Items</span>
                    </label>
                    <label class="flex items-center space-x-2 cursor-pointer">
                        <input type="checkbox" id="filter-veg" class="filter-dishtype rounded border-gray-300 text-primary focus:ring-primary" value="1">
                        <span class="text-sm text-gray-600 flex items-center">
                            <i class="fas fa-circle text-green-500 mr-1" style="font-size: 8px;"></i>
                            Vegetarian
                        </span>
                    </label>
                    <label class="flex items-center space-x-2 cursor-pointer">
                        <input type="checkbox" id="filter-nonveg" class="filter-dishtype rounded border-gray-300 text-primary focus:ring-primary" value="2">
                        <span class="text-sm text-gray-600 flex items-center">
                            <i class="fas fa-circle text-red-500 mr-1" style="font-size: 8px;"></i>
                            Non-Vegetarian
                        </span>
                    </label>
                </div>
            </div>

            <!-- Price Range Filter -->
            <div class="mb-6">
                <h4 class="text-sm font-medium text-gray-700 mb-3">Price Range</h4>
                <div class="space-y-2">
                    <label class="flex items-center space-x-2 cursor-pointer">
                        <input type="checkbox" class="filter-price rounded border-gray-300 text-primary focus:ring-primary" value="0-200">
                        <span class="text-sm text-gray-600">Under ₹200</span>
                    </label>
                    <label class="flex items-center space-x-2 cursor-pointer">
                        <input type="checkbox" class="filter-price rounded border-gray-300 text-primary focus:ring-primary" value="200-500">
                        <span class="text-sm text-gray-600">₹200 - ₹500</span>
                    </label>
                    <label class="flex items-center space-x-2 cursor-pointer">
                        <input type="checkbox" class="filter-price rounded border-gray-300 text-primary focus:ring-primary" value="500-1000">
                        <span class="text-sm text-gray-600">₹500 - ₹1000</span>
                    </label>
                    <label class="flex items-center space-x-2 cursor-pointer">
                        <input type="checkbox" class="filter-price rounded border-gray-300 text-primary focus:ring-primary" value="1000+">
                        <span class="text-sm text-gray-600">Above ₹1000</span>
                    </label>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Content -->
    <div id="main-content" class="md:ml-80 transition-all duration-300">
        <!-- Header -->
        <header class="bg-white/95 backdrop-blur shadow-lg p-6">
            <div class="flex items-center justify-between">
                <h1 class="text-3xl font-bold text-gray-800 flex items-center">
                    <i class="fas fa-utensils mr-3 text-primary"></i>
                    {{ $depart->name }}
                </h1>
                <div class="flex items-center space-x-4">
                    <button id="view-wishlist" class="bg-gradient-to-r from-primary to-secondary text-white px-6 py-2 rounded-full hover:shadow-lg transition-all duration-300 flex items-center space-x-2">
                        <i class="fas fa-heart"></i>
                        <span>Wishlist</span>
                    </button>
                </div>
            </div>
        </header>

        <!-- Hero Section -->
        <section class="m-6 h-64 bg-gradient-to-r from-purple-600 to-pink-600 rounded-2xl flex items-center justify-center text-white relative overflow-hidden">
            <div class="absolute inset-0 bg-black/30"></div>
            <div class="text-center z-10">
                <h2 class="text-4xl font-bold mb-4">Menu</h2>
                <div class="propertylogo flex justify-center mb-4">
                    <img src="{{ url('/storage/admin/property_logo') }}/{{ $comp_data->logo }}" alt="" class="max-h-16 w-auto">
                </div>
                <p class="text-lg opacity-90">Taxes As Applicable Extra</p>
            </div>
        </section>

        <!-- Category Tabs -->
        <section class="mx-4 mb-4">
            <div class="bg-white/95 backdrop-blur rounded-xl p-4 shadow-md">
                {{-- Toggle Button --}}
                <div class="flex justify-end mb-2">
                    <button
                        class="px-3 py-1.5 text-xs rounded-md bg-primary text-white hover:bg-secondary transition"
                        onclick="
                                const tabs = document.getElementById('category-tabs');
                                if (tabs.classList.contains('flex-wrap')) {
                                    tabs.classList.remove('flex-wrap','gap-2');
                                    tabs.classList.add('space-x-2','overflow-x-auto','scrollbar-hide','pb-2');
                                    this.innerText = 'Multi-Line View';
                                } else {
                                    tabs.classList.add('flex-wrap','gap-2');
                                    tabs.classList.remove('space-x-2','overflow-x-auto','scrollbar-hide','pb-2');
                                    this.innerText = 'Single Line View';
                                }
                            ">
                        Multi-Line View
                    </button>
                    <button id="download-pdf"
                        class="px-3 ml-1 py-1.5 text-xs rounded-md bg-primary text-white hover:bg-secondary transition">
                        <i class="fas fa-file-pdf"></i>
                        <span>Download PDF</span>
                    </button>

                </div>

                {{-- Tabs --}}
                <div id="category-tabs" class="flex space-x-2 overflow-x-auto scrollbar-hide pb-2 transition-all">
                    {{-- All Items --}}
                    <button class="category-tab px-3 py-1.5 rounded-full bg-gradient-to-r from-primary to-secondary text-white text-sm font-medium whitespace-nowrap transition-all" data-group="all">
                        All Items
                        <span class="ml-1 px-1.5 py-0.5 rounded-full bg-white/20 text-xs font-semibold">
                            {{ $items->count() }}
                        </span>
                    </button>

                    @php
                        $groupedItems = $items->groupBy('item_group_code')->sortBy(function ($group) {
                            return $group->first()->group_name ?? '';
                        });
                    @endphp
                    @foreach ($groupedItems as $groupCode => $groupItems)
                        @php
                            $groupName = $groupItems->first()->group_name;
                        @endphp
                        @if ($groupName)
                            <button class="category-tab px-3 py-1.5 rounded-full bg-white border border-gray-200 text-gray-600 text-sm font-medium whitespace-nowrap hover:border-primary hover:text-primary transition-all" data-group="{{ $groupCode }}">
                                {{ $groupName }}
                                <span class="ml-1 px-1.5 py-0.5 rounded-full bg-gray-200 text-gray-700 text-xs font-semibold">
                                    {{ $groupItems->count() }}
                                </span>
                            </button>
                        @endif
                    @endforeach
                </div>
            </div>
        </section>

        <!-- Menu Items -->
        <section class="mx-6 mb-6">
            <div id="items-container" class="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-2">
                @foreach ($items as $item)
                    <div class="menu-item bg-white/95 backdrop-blur rounded-2xl shadow-xl overflow-hidden hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1"
                        data-group="{{ $item->item_group_code }}"
                        data-dishtype="{{ $item->dishtype }}"
                        data-price="{{ $item->item_rate }}"
                        data-name="{{ strtolower($item->item_name) }}"
                        data-itemcode="{{ $item->item_code }}">

                        <!-- Item Image -->
                        <div class="relative overflow-hidden">
                            @if ($item->itempic)
                                <img style="max-height: 11rem;min-height: 11rem;" src="{{ url('/storage/property/itempicture/') }}/{{ $item->itempic }}"
                                    alt="{{ $item->item_name }}"
                                    class="w-full object-cover">
                            @else
                                <div style="max-height: 11rem;min-height: 11rem;" class="w-full h-full bg-gradient-to-br from-gray-200 to-gray-300 flex items-center justify-center">
                                    <i class="fas fa-utensils text-4xl text-gray-400"></i>
                                </div>
                            @endif

                            <!-- Wishlist Button -->
                            {{-- <button class="wishlist-btn absolute top-4 right-4 w-10 h-10 bg-white/90 backdrop-blur rounded-full flex items-center justify-center shadow-lg hover:bg-white transition-all"
                                data-item-name="{{ $item->item_name }}"
                                data-item-price="{{ $item->item_rate }}"
                                data-item-image="{{ $item->itempic }}"
                                data-item-code="{{ $item->item_code }}"
                                data-rest-code="{{ $item->rest_code }}"
                                <i class="fas fa-heart text-gray-400 hover:text-red-500 transition-colors"></i>
                            </button> --}}
                            <button class="wishlist-btn absolute top-4 right-4 w-10 h-10 bg-white/90 backdrop-blur rounded-full flex items-center justify-center shadow-lg transition-all"
                                data-item-name="{{ $item->item_name }}"
                                data-item-price="{{ $item->item_rate }}"
                                data-item-image="{{ $item->itempic }}"
                                data-item-code="{{ $item->item_code }}"
                                data-rest-code="{{ $item->rest_code }}">

                                <i class="fa-regular fa-heart text-gray-500 text-lg"></i>
                            </button>
                        </div>

                        <!-- Item Details -->
                        <div class="p-1">
                            <div class="flex items-start justify-between mb-3">
                                <div class="flex-1">
                                    <h5 class="font-bold text-gray-800 mb-2">{{ strtoupper($item->item_name) }}</h5>
                                    <div class="flex items-center space-x-2 mb-3">
                                        @if ($item->dishtype == 1)
                                            <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-medium bg-green-100 text-green-800">
                                                <i class="fas fa-circle text-green-500 mr-1" style="font-size: 6px;"></i>
                                                Veg
                                            </span>
                                        @elseif ($item->dishtype == 2)
                                            <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-medium bg-red-100 text-red-800">
                                                <i class="fas fa-circle text-red-500 mr-1" style="font-size: 6px;"></i>
                                                Non-Veg
                                            </span>
                                        @else
                                            
                                        @endif
                                        @if ($item->group_name)
                                            <span class="px-2 py-1 rounded-full text-xs font-medium bg-blue-100 text-blue-800">
                                                {{ $item->group_name }}
                                            </span>
                                        @endif
                                    </div>
                                </div>
                            </div>

                            <div class="flex items-center justify-between">
                                <div class="text-2xl font-bold text-primary">
                                    ₹{{ number_format($item->item_rate, 0) }}
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <!-- No Items Found Message -->
            <div id="no-items-message" class="hidden text-center py-12">
                <div class="bg-white/95 backdrop-blur rounded-2xl p-8 shadow-xl">
                    <i class="fas fa-search text-6xl text-gray-300 mb-4"></i>
                    <h3 class="text-2xl font-bold text-gray-600 mb-2">No items found</h3>
                    <p class="text-gray-500">Try adjusting your filters or search terms</p>
                </div>
            </div>
        </section>
    </div>

    <!-- Wishlist Modal -->
    <div id="wishlist-modal" class="fixed inset-0 bg-black/50 z-50 hidden items-center justify-center p-4">
        <div class="bg-white rounded-2xl max-w-2xl w-full max-h-[80vh] overflow-y-auto">
            <div class="p-6 border-b border-gray-200">
                <div class="flex items-center justify-between">
                    <h2 class="text-2xl font-bold text-gray-800">My Wishlist</h2>
                    <button id="close-wishlist-modal" class="text-gray-500 hover:text-gray-700">
                        <i class="fas fa-times text-2xl"></i>
                    </button>
                </div>
            </div>
            <div id="wishlist-items" class="p-6">
                <!-- Wishlist items will be populated here -->
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            let wishlist = JSON.parse(localStorage.getItem('wishlist') || '[]');
            updateWishlistUI();

            // Mobile menu toggle
            $('#mobile-menu-toggle').click(function() {
                $('#sidebar').addClass('translate-x-0').removeClass('-translate-x-full');
            });

            $('#close-sidebar').click(function() {
                $('#sidebar').addClass('-translate-x-full').removeClass('translate-x-0');
            });

            // Close sidebar when clicking outside on mobile
            $(document).click(function(e) {
                if ($(window).width() < 768 && !$(e.target).closest('#sidebar, #mobile-menu-toggle').length) {
                    $('#sidebar').addClass('-translate-x-full').removeClass('translate-x-0');
                }
            });

            // Category tabs
            $('.category-tab').click(function() {
                $('.category-tab').removeClass('bg-gradient-to-r from-primary to-secondary text-white').addClass('bg-white border-2 border-gray-200 text-gray-700');
                $(this).removeClass('bg-white border-2 border-gray-200 text-gray-700').addClass('bg-gradient-to-r from-primary to-secondary text-white');

                const selectedGroup = $(this).data('group');
                filterItems();
            });

            // Search functionality
            $('#search-input').on('input', function() {
                filterItems();
            });

            // Filter functionality
            $('.filter-dishtype, .filter-price').change(function() {
                // Handle "All Items" checkbox logic
                if ($(this).attr('id') === 'filter-all') {
                    if ($(this).is(':checked')) {
                        // When "All Items" is checked, uncheck other dishtype filters
                        $('#filter-veg, #filter-nonveg').prop('checked', false);
                    } else {
                        // When "All Items" is unchecked, do nothing special
                    }
                } else if ($(this).hasClass('filter-dishtype') && $(this).attr('id') !== 'filter-all') {
                    // When any specific dishtype is checked, uncheck "All Items"
                    if ($(this).is(':checked')) {
                        $('#filter-all').prop('checked', false);
                    } else {
                        // If no specific dishtype is selected, check "All Items"
                        if (!$('#filter-veg').is(':checked') && !$('#filter-nonveg').is(':checked')) {
                            $('#filter-all').prop('checked', true);
                        }
                    }
                }
                filterItems();
            });

            function filterItems() {
                const searchTerm = $('#search-input').val().toLowerCase();
                const selectedGroup = $('.category-tab.text-white').data('group') || 'all';
                const selectedDishTypes = [];
                const selectedPriceRanges = [];

                const isAllDishTypesSelected = $('#filter-all').is(':checked');

                if (!isAllDishTypesSelected) {
                    $('.filter-dishtype:checked').each(function() {
                        if ($(this).val() && $(this).attr('id') !== 'filter-all') {
                            selectedDishTypes.push($(this).val());
                        }
                    });
                }

                $('.filter-price:checked').each(function() {
                    selectedPriceRanges.push($(this).val());
                });

                let visibleCount = 0;

                $('.menu-item').each(function() {
                    let show = true;
                    const $item = $(this);
                    const itemGroup = $item.data('group');
                    const itemDishType = $item.data('dishtype').toString();
                    const itemPrice = parseFloat($item.data('price'));
                    const itemName = $item.data('name');

                    if (selectedGroup !== 'all' && itemGroup != selectedGroup) {
                        show = false;
                    }

                    if (searchTerm && !itemName.includes(searchTerm)) {
                        show = false;
                    }

                    if (!isAllDishTypesSelected && selectedDishTypes.length > 0) {
                        if (!selectedDishTypes.includes(itemDishType)) {
                            show = false;
                        }
                    }

                    if (selectedPriceRanges.length > 0) {
                        let priceMatch = false;
                        selectedPriceRanges.forEach(function(range) {
                            if (range === '0-200' && itemPrice <= 200) priceMatch = true;
                            if (range === '200-500' && itemPrice > 200 && itemPrice <= 500) priceMatch = true;
                            if (range === '500-1000' && itemPrice > 500 && itemPrice <= 1000) priceMatch = true;
                            if (range === '1000+' && itemPrice > 1000) priceMatch = true;
                        });
                        if (!priceMatch) show = false;
                    }

                    if (show) {
                        $item.show();
                        visibleCount++;
                    } else {
                        $item.hide();
                    }
                });

                if (visibleCount === 0) {
                    $('#no-items-message').removeClass('hidden');
                } else {
                    $('#no-items-message').addClass('hidden');
                }
            }


            // Wishlist functionality
            $('.wishlist-btn').click(function(e) {
                e.stopPropagation();
                const itemName = $(this).data('item-name');
                const itemPrice = $(this).data('item-price');
                const itemImage = $(this).data('item-image');
                const restCode = $(this).data('rest-code');

                const itemCode = $(this).data('item-code');

                const item = {
                    name: itemName,
                    price: itemPrice,
                    image: itemImage,
                    itemcode: itemCode,
                    qty: 1,
                    rest_code: restCode
                };

                const existingIndex = wishlist.findIndex(w => w.name === itemName);
                const icon = $(this).find('i');

                if (existingIndex > -1) {
                    wishlist.splice(existingIndex, 1);
                    icon.removeClass('fa-solid text-red-500').addClass('fa-regular text-gray-500');
                } else {
                    wishlist.push(item);
                    icon.removeClass('fa-regular text-gray-500').addClass('fa-solid text-red-500');
                }

                localStorage.setItem('wishlist', JSON.stringify(wishlist));
                updateWishlistUI();
            });

            function updateWishlistUI() {
                // Update wishlist count
                const count = wishlist.length;
                if (count > 0) {
                    $('#wishlist-count').text(count).removeClass('hidden');
                } else {
                    $('#wishlist-count').addClass('hidden');
                }

                // Update wishlist button states
                $('.wishlist-btn').each(function() {
                    const itemName = $(this).data('item-name');
                    const isInWishlist = wishlist.some(w => w.name === itemName);

                    if (isInWishlist) {
                        $(this).find('i').removeClass('text-gray-400').addClass('text-red-500');
                    } else {
                        $(this).find('i').removeClass('text-red-500').addClass('text-gray-400');
                    }
                });
            }

            // Show wishlist modal
            $('#view-wishlist, #wishlist-btn').click(function() {
                displayWishlistModal();
            });

            $('#close-wishlist-modal').click(function() {
                $('#wishlist-modal').addClass('hidden').removeClass('flex');
            });

            function displayWishlistModal() {
                let wishlistHTML = '';

                if (wishlist.length === 0) {
                    wishlistHTML = '<div class="text-center py-8"><i class="fas fa-heart text-6xl text-gray-300 mb-4"></i><p class="text-gray-500 text-lg">Your wishlist is empty</p></div>';
                } else {
                    wishlist.forEach(function(item, index) {
                        let qty = item.qty || 1;
                        wishlistHTML += `
                        <div class="flex items-center space-x-4 p-4 border border-gray-200 rounded-lg mb-4">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex items-center justify-center flex-shrink-0">
                                ${item.image ? `<img src="{{ url('/storage/property/itempicture') }}/${item.image}" alt="${item.name}" class="w-full h-full object-cover rounded-lg">` : '<i class="fas fa-utensils text-gray-400"></i>'}
                            </div>
                            <div class="flex-1">
                                <h4 class="font-semibold text-gray-800">${item.name}</h4>
                                <p class="text-primary font-bold">₹${item.price}</p>
                            </div>
                            <div class="flex items-center space-x-2">
                                <button class="qty-btn qty-minus bg-gray-200 hover:bg-gray-300 text-gray-700 w-8 h-8 rounded-lg font-bold" data-index="${index}">-</button>
                                <input type="text" class="qty-input w-12 text-center font-semibold text-gray-800 border border-gray-300 rounded-lg" data-index="${index}" value="${qty}">
                                <button class="qty-btn qty-plus bg-gray-200 hover:bg-gray-300 text-gray-700 w-8 h-8 rounded-lg font-bold" data-index="${index}">+</button>
                            </div>
                            <button class="remove-from-wishlist text-red-500 hover:text-red-700 ml-2" data-index="${index}">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    `;
                    });

                    wishlistHTML += `
                        <div class="border-t border-gray-200 pt-4 mt-4">
                            <button id="order-now-btn" class="w-full bg-gradient-to-r from-primary to-secondary text-white py-3 rounded-xl font-bold text-lg hover:opacity-90 transition-opacity">
                                <i class="fas fa-shopping-cart mr-2"></i> Order Now
                            </button>
                        </div>
                    `;
                }

                $('#wishlist-items').html(wishlistHTML);
                $('#wishlist-modal').removeClass('hidden').addClass('flex');
            }

            // Qty controls
            $(document).on('click', '.qty-minus', function() {
                const index = $(this).data('index');
                if (wishlist[index].qty > 1) {
                    wishlist[index].qty--;
                    localStorage.setItem('wishlist', JSON.stringify(wishlist));
                    $(this).siblings('.qty-input').val(wishlist[index].qty);
                }
            });

            $(document).on('click', '.qty-plus', function() {
                const index = $(this).data('index');
                wishlist[index].qty = (wishlist[index].qty || 1) + 1;
                localStorage.setItem('wishlist', JSON.stringify(wishlist));
                $(this).siblings('.qty-input').val(wishlist[index].qty);
            });

            $(document).on('change input', '.qty-input', function() {
                const index = $(this).data('index');
                let val = parseInt($(this).val());
                if (isNaN(val) || val < 1) val = 1;
                $(this).val(val);
                wishlist[index].qty = val;
                localStorage.setItem('wishlist', JSON.stringify(wishlist));
            });

            // Order Now
            $(document).on('click', '#order-now-btn', function() {
                let items = wishlist.map(function(item) {
                    return {
                        item: item.name,
                        itemcode: item.itemcode,
                        qty: item.qty || 1,
                        rest_code: item.rest_code
                    };
                });

                $.ajax({
                    url: "{{ url('placeorder') }}",
                    method: "POST",
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    },
                    contentType: 'application/json',
                    data: JSON.stringify({
                        propertyid: @json($comp_data->propertyid),
                        rest_code: @json($depart->dcode),
                        roomno: @json($rcode ?? ''),
                        roomtype: @json($roomtype ?? ''),
                        items: items
                    }),
                    success: function(response) {
                        if (response.success) {
                            wishlist = [];
                            localStorage.setItem('wishlist', JSON.stringify(wishlist));
                            updateWishlistUI();

                            $('#wishlist-items').html(`
                                <div class="text-center py-8">
                                    <img src="{{ asset('assets/img/order_success1.gif') }}" alt="Order Placed" class="mx-auto mb-4" style="max-width: 250px;">
                                    <p class="text-lg font-semibold text-gray-800">Order Placed Successfully!</p>
                                </div>
                            `);

                            setTimeout(function() {
                                location.reload();
                            }, 3000);
                        } else {
                            alert('Failed to place order. Please try again.');
                        }
                    },
                    error: function() {
                        alert('Failed to place order. Please try again.');
                    }
                });
            });

            // Remove from wishlist
            $(document).on('click', '.remove-from-wishlist', function() {
                const index = $(this).data('index');
                const itemName = wishlist[index].name;

                wishlist.splice(index, 1);
                localStorage.setItem('wishlist', JSON.stringify(wishlist));

                updateWishlistUI();
                displayWishlistModal();

                // Update the wishlist button in the main grid
                $(`.wishlist-btn[data-item-name="${itemName}"]`).find('i').removeClass('text-red-500').addClass('text-gray-400');
            });

            // Close modal when clicking outside
            $('#wishlist-modal').click(function(e) {
                if (e.target === this) {
                    $(this).addClass('hidden').removeClass('flex');
                }
            });

            // Initialize filters
            filterItems();
        });

        $(document).on("click", "#download-pdf", function() {
            // Detect active group
            // let selectedGroup = $('.category-tab.bg-gradient-to-r').data('group');
            const selectedGroup = $('.category-tab.text-white').data('group') || 'all';


            // Select items properly
            let $visibleItems;
            if (selectedGroup === "all") {
                // Respect filters (take only visible ones if search/filter applied)
                $visibleItems = $(".menu-item:visible");
                // If nothing filtered out, include all
                if ($visibleItems.length === 0) {
                    $visibleItems = $(".menu-item");
                }
            } else {
                $visibleItems = $(".menu-item:visible");
            }

            if ($visibleItems.length === 0) {
                alert("No visible items to export!");
                return;
            }

            // Group name
            let groupName = (selectedGroup === "all") ?
                "All Items" :
                $('.category-tab.bg-gradient-to-r').text().trim().split('\n')[0];

            // Blade variables
            let companyName = @json($comp_data->comp_name);
            let departName = @json($depart->name);

            // Date
            let now = new Date();
            let dateString = now.toLocaleDateString() + " " + now.toLocaleTimeString();

            // Container
            let $tempContainer = $("<div></div>");
            $tempContainer.append(`
        <div style="text-align:center;padding:10px 0 0 0;">
            <h1 style="font-size:28px;color:#e91e63;margin-bottom:5px;font-family:sans-serif;">${companyName}</h1>
            <h2 style="font-size:20px;color:#333;margin-bottom:2px;font-family:sans-serif;">${departName}</h2>
            <div style="font-size:14px;color:#666;margin-bottom:10px;">${dateString}</div>
            <hr style="border:0;border-top:2px solid #e91e63;margin-bottom:15px;">
            <h2 style='text-align:center;font-size:22px;margin-bottom:15px;color:#e91e63;'>${groupName}</h2>
            <p style="font-size:16px;color:#444;margin-bottom:30px;">
                Welcome to our restaurant! Please find the delicious menu items in the following pages. Taxes as applicable extra.
            </p>
        </div>
        <div style='page-break-after:always;'></div>
    `);

            // Pagination: 6 items per page, 3 per row
            let itemsPerRow = 3;
            let itemsPerPage = 6;
            let totalItems = $visibleItems.length;
            let pageStart = 0;

            while (pageStart < totalItems) {
                let start = pageStart;
                let end = Math.min(start + itemsPerPage, totalItems);

                let $table = $("<table style='width:100%;border-spacing:16px 20px;margin-bottom:30px;'><tbody></tbody></table>");
                for (let i = start; i < end; i += itemsPerRow) {
                    let $row = $("<tr></tr>");
                    for (let j = 0; j < itemsPerRow; j++) {
                        let idx = i + j;
                        if (idx < end) {
                            let $item = $($visibleItems[idx]);
                            let $clone = $item.clone();
                            $clone.find('.wishlist-btn, .add-to-cart').remove();
                            $row.append(`<td style="width:33%;vertical-align:top;border:1px solid #eee;border-radius:12px;padding:16px;background:#fff;box-shadow:0 2px 8px #eee;">
                        ${$clone.html()}
                    </td>`);
                        } else {
                            $row.append(`<td style="width:33%;"></td>`);
                        }
                    }
                    $table.find("tbody").append($row);
                }
                $tempContainer.append($table[0]);
                pageStart = end;
                if (pageStart < totalItems) {
                    $tempContainer.append("<div style='page-break-after:always;'></div>");
                }
            }

            // Footer
            $tempContainer.append(`
        <div style="text-align:center;margin-top:30px;padding:10px 0 0 0;">
            <hr style="border:0;border-top:2px solid #e91e63;margin-bottom:8px;">
            <span style="font-size:15px;color:#e91e63;font-family:sans-serif;font-weight:bold;">
                AnalysisHMS Software Solution
            </span>
        </div>
    `);

            // Generate PDF
            html2pdf()
                .set({
                    margin: 10,
                    filename: "menu-items.pdf",
                    image: {
                        type: "jpeg",
                        quality: 0.98
                    },
                    html2canvas: {
                        scale: 2
                    },
                    jsPDF: {
                        unit: "mm",
                        format: "a4",
                        orientation: "portrait"
                    }
                })
                .from($tempContainer[0])
                .save();
        });
    </script>
</body>

</html>
