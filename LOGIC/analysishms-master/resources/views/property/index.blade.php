@extends('property.layouts.main')
@section('main-container')
    @include('property.dashboardcss')
    <div class="content-body">
        <div class="container-fluid mt-5">
            <h2 class="mb-4" style="font-weight: 700; color: #333;">Analytics Dashboard</h2>
            <!-- Analytics Dashboard Section -->

            <div class="row justify-content-center">
                <style>
                    @media (max-width: 991px) {
                        .cardWidth {
                            width: 93% !important;
                        }
                    }

                    .cardWidth {
                        width: 100%
                    }
                </style>
                <div class="card cardWidth">
                    @php
                        use Carbon\Carbon;
                        $currentHour = Carbon::now()->format('H');
                        $greeting = '';
                        $greetingIcon = '';

                        if ($currentHour >= 5 && $currentHour < 12) {
                            $greeting = 'Good Morning';
                            $greetingIcon = '🌅';
                        } elseif ($currentHour >= 12 && $currentHour < 17) {
                            $greeting = 'Good Afternoon';
                            $greetingIcon = '☀️';
                        } elseif ($currentHour >= 17 && $currentHour < 21) {
                            $greeting = 'Good Evening';
                            $greetingIcon = '🌆';
                        } else {
                            $greeting = 'Good Night';
                            $greetingIcon = '🌙';
                        }
                        $softwareDate = Carbon::parse($datearr['ncurdate'])->format('l, d F Y');
                    @endphp
                    <div class="welcome-header">
                        <div class="welcome-left">
                            <div class="greeting-text">
                                <span class="greeting-icon">{{ $greetingIcon }}</span>
                                <span>{{ $greeting }}, {{ Auth::user()->name }}!</span>
                            </div>
                            <div class="software-date">
                                <i class="fa fa-calendar"></i> <strong>Software Date:</strong> {{ $softwareDate }}
                            </div>
                        </div>
                        <div class="welcome-right">
                            <div class="live-time-container">
                                <div class="time-label">Live Time</div>

                                <div class="clock-wrapper">
                                    <!-- Analog Clock -->
                                    <div class="analog-clock">
                                        <div class="clock-face">
                                            <!-- Hour Markers (skipping 0, 90, 180, 270 deg for numbers 12,3,6,9) -->
                                            <div class="clock-markers">
                                                <div class="hour-marker" style="transform: rotate(30deg)"><span></span></div>
                                                <div class="hour-marker" style="transform: rotate(60deg)"><span></span></div>
                                                <div class="hour-marker" style="transform: rotate(120deg)"><span></span></div>
                                                <div class="hour-marker" style="transform: rotate(150deg)"><span></span></div>
                                                <div class="hour-marker" style="transform: rotate(210deg)"><span></span></div>
                                                <div class="hour-marker" style="transform: rotate(240deg)"><span></span></div>
                                                <div class="hour-marker" style="transform: rotate(300deg)"><span></span></div>
                                                <div class="hour-marker" style="transform: rotate(330deg)"><span></span></div>
                                            </div>

                                            <!-- Clock Numbers -->
                                            <div class="clock-number" style="top: 6px; left: 50%; transform: translateX(-50%);">12</div>
                                            <div class="clock-number" style="top: 50%; right: 6px; transform: translateY(-50%);">3</div>
                                            <div class="clock-number" style="bottom: 6px; left: 50%; transform: translateX(-50%);">6</div>
                                            <div class="clock-number" style="top: 50%; left: 6px; transform: translateY(-50%);">9</div>

                                            <div class="clock-hour-hand" id="hourHand"></div>
                                            <div class="clock-minute-hand" id="minuteHand"></div>
                                            <div class="clock-second-hand" id="secondHand"></div>
                                            <div class="clock-center"></div>
                                        </div>
                                    </div>

                                    <!-- Live Weather Display -->
                                    <div class="weather-widget">
                                        <div class="weather-loading" id="weatherLoading">
                                            <i class="fa fa-spinner fa-spin"></i> Loading...
                                        </div>
                                        <div class="weather-content" id="weatherContent" style="display: none;">
                                            <div class="weather-icon">
                                                <i class="fa fa-sun-o" id="weatherIcon"></i>
                                            </div>
                                            <div class="weather-info">
                                                <div class="weather-temp" id="weatherTemp">--°C</div>
                                                <div class="weather-desc" id="weatherDesc">--</div>
                                                <div class="weather-location" id="weatherLocation">
                                                    <i class="fa fa-map-marker"></i> <span id="locationName">--</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="weather-error" id="weatherError" style="display: none;">
                                            <i class="fa fa-exclamation-circle"></i> Unable to load weather
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @php
                        use Illuminate\Support\Facades\Crypt;

                        $expdate = null;
                        $daysLeft = null;

                        if (enviromaingeneral() && enviromaingeneral()->expdate && enviromaingeneral()->propertyid != '103') {
                            try {
                                $expCarbon = Carbon::parse(Crypt::decryptString(enviromaingeneral()->expdate));
                                $expdate = $expCarbon->format('d-m-Y');
                                $expamount = number_format((float) Crypt::decryptString(enviromaingeneral()->amount), 2);

                                $ncurdate = Carbon::parse(ncurdate());
                                $daysLeft = $ncurdate->diffInDays($expCarbon, false); // false keeps negative if expired
                            } catch (\Exception $e) {
                                $expdate = 'Invalid date';
                            }
                        }
                    @endphp

                    <div class="card-body">
                        <marquee id="wpmsgerror" class="text-capitalize text-dpink font-weight-bold" behavior=""
                            direction="right"></marquee>

                        {{-- <p><strong>Expiry Date:</strong> {{ $expdate }}</p> --}}
                        @if ($expdate && $expdate !== 'Invalid date')
                            @if ($daysLeft >= 0 && $daysLeft <= 30)
                                <div class="alert alert-warning mt-2">
                                    ⚠️ Your account will be expiring on <strong>{{ $expdate }}</strong>
                                    (in {{ $daysLeft }} day{{ $daysLeft != 1 ? 's' : '' }}). and due amount is: {{ $expamount }}
                                </div>
                            @endif
                            {{-- <p><strong>Expiry Date:</strong> Not Set</p> --}}
                        @endif

                        {{-- <div style="overflow: hidden;">
                                    <h3 class="animate-charcter" style="float: left;">{{ $user->comp_name }}</h3>
                                    <button id="edit-btn" onclick="Enableformshow()" class="btn btn-dark" style="float: right;"><i
                                            class="fa fa-edit" aria-hidden="true"></i>Edit</button>
                                </div> --}}
                        {{-- @if (Auth::user()->propertyid != '103')
                                    <form class="companychangeform" id="companychangeform" action="{{ route('changecompanydetail') }}"
                                        method="POST">
                                        @csrf
                                        <div class="row">
                                                                            
                                            <div class="col-md-6">
                                                <table class="table table-bordered">
                                                    <tbody>
                                                        <tr>
                                                            <th>Property ID</th>
                                                            <td>{{ $user->propertyid }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Company Code</th>
                                                            <td>{{ $user->comp_code }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Serial Number</th>
                                                            <td>{{ $user->sn_num }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Start Date</th>
                                                            <td id="start_dtdd"></td>
                                                        </tr>
                                                        <tr>
                                                            <th>End Date</th>
                                                            <td id="end_dtdd"></td>
                                                        </tr>
                                                        <tr>
                                                            <th>Address</th>
                                                            <td>{{ $user->address1 }}</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="col-md-6">
                                                <table class="table table-bordered">
                                                    <tbody>
                                                        <tr>
                                                            <th>Country</th>
                                                            <td>{{ $user->country }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>State</th>
                                                            <td>{{ $user->state }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>City</th>
                                                            <td>{{ $user->city }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Name</th>
                                                            <td><input class="form-invisible" type="text"
                                                                    value="{{ $user->legal_name }}" name="legal_name" disabled></td>
                                                            @error('legal_name')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </tr>
                                                        <tr>
                                                            <th>Mobile</th>
                                                            <td><input class="form-invisible" type="text" value="{{ $user->mobile }}"
                                                                    minlength="10" maxlength="10" name="mobile" disabled></td>
                                                            @error('mobile')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </tr>
                                                        <tr>
                                                            <th>Email</th>
                                                            <td><input class="form-invisible" type="email" value="{{ $user->email }}"
                                                                    name="email" disabled></td>
                                                            @error('email')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            
                                        </div>
                                        <div id="submitbtnindex" class="form-group row">
                                            <div class="col-7 mt-4 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                {{-- @endif --}}
                    </div>

                </div>
            </div>

            {{-- @if (Auth::user()->propertyid == '103') --}}
            <!-- Room Status Dashboard -->
            <div class="container-fluid mt-4">
                @if ($status['OutletSalesWithRunningKots'] && count($status['OutletSalesWithRunningKots']) > 0)
                    <div class="row mb-4">
                        <div class="col-12">
                            <!-- Stats Cards -->
                            <div class="stats-grid">
                                @foreach ($status['OutletSalesWithRunningKots'] as $outlet)
                                    @php
                                        $colorClass = 'color-' . (($loop->index % 8) + 1);
                                    @endphp
                                    <div class="analytics-card {{ $colorClass }}">
                                        <div class="card-header-row">
                                            <div>
                                                <div class="card-title">{{ $outlet->name }}</div>
                                                <div class="restcode">{{ $outlet->restcode }}</div>
                                            </div>
                                            <div class="running-kots-badge">
                                                <div class="running-kots-label">Running KOTs</div>
                                                <div class="running-kots-value">₹{{ number_format($outlet->Runningkots, 2) }}</div>
                                            </div>
                                        </div>
                                        <div class="card-value">₹{{ number_format($outlet->NetAmt, 2) }}</div>
                                        <div class="card-details">
                                            <div class="detail-item">
                                                <span class="detail-label">Cover:</span>
                                                <span class="detail-value">{{ $outlet->Cover }}</span>
                                            </div>
                                            <div class="detail-item">
                                                <span class="detail-label">Taxable:</span>
                                                <span class="detail-value">₹{{ number_format($outlet->Taxable, 2) }}</span>
                                            </div>
                                            <div class="detail-item">
                                                <span class="detail-label">Non-Taxable:</span>
                                                <span class="detail-value">₹{{ number_format($outlet->NonTaxable, 2) }}</span>
                                            </div>
                                            <div class="detail-item">
                                                <span class="detail-label">Service Charge:</span>
                                                <span class="detail-value">₹{{ number_format($outlet->ServiceCharge, 2) }}</span>
                                            </div>
                                            <div class="detail-item">
                                                <span class="detail-label">Discount:</span>
                                                <span class="detail-value">₹{{ number_format($outlet->DiscAmt, 2) }}</span>
                                            </div>
                                            <div class="detail-item">
                                                <span class="detail-label">Tax:</span>
                                                <span class="detail-value">₹{{ number_format($outlet->Tax, 2) }}</span>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                @endif
                <div class="row g-3">
                    <?php if ($status['Events'] && count($status['Events']) > 0) {
                        $colClass = 'col-lg-8 col-md-12';
                    } else {
                        $colClass = 'col-12';
                    }
                    ?>
                    <div class="{{ $colClass }}">
                        <div class="row g-3">
                            <!-- Occupied Rooms -->
                            @if ($status['Occupied'] && count($status['Occupied']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card occupied-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle occupied-icon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Occupied Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge occupied-count"> {{ count($status['Occupied']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['Occupied'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge occupied-badge">{{ $room->Name }}</span>
                                                @endif
                                            @endforeach
                                            @if (count($status['Occupied']) > 5)
                                                <button class="btn btn-sm btn-view-more" onclick="showRoomModal('Occupied Room', {{ json_encode($status['Occupied']->pluck('Name')) }}, 'occupied')">View More ({{ count($status['Occupied']) - 5 }})</button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <!-- Check In -->
                            @if ($status['CheckIn'] && count($status['CheckIn']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card checkin-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle checkin-icon">
                                                    <i class="fa fa-sign-in"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Check In Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge checkin-count">{{ count($status['CheckIn']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['CheckIn'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge checkin-badge">{{ $room->Name }}</span>
                                                @endif
                                            @endforeach
                                            @if (count($status['CheckIn']) > 5)
                                                <button class="btn btn-sm btn-view-more" onclick="showRoomModal('Checkin', {{ json_encode($status['CheckIn']->pluck('Name')) }}, 'checkin')">View More ({{ count($status['CheckIn']) - 5 }})</button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif


                            <!-- Checkout -->
                            @if ($status['CheckOut'] && count($status['CheckOut']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card checkout-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle checkout-icon">
                                                    <i class="fa fa-check-circle"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Checkout Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge checkout-count">{{ count($status['CheckOut']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['CheckOut'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge checkout-badge">{{ $room->Name }}</span>
                                                @endif
                                            @endforeach
                                            @if (count($status['CheckOut']) > 5)
                                                <button class="btn btn-sm btn-view-more" onclick="showRoomModal('Checkout Room', {{ json_encode($status['CheckOut']->pluck('Name')) }}, 'checkout')">View More ({{ count($status['CheckOut']) - 5 }})</button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <!-- DOB Guest -->
                            @if ($status['dobguest'] && count($status['dobguest']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card checkout-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle dobguest-icon">
                                                    <i class="fa-solid fa-cake-candles"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Today's Birthday</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge checkout-count">{{ count($status['dobguest']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['dobguest'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge checkout-badge">
                                                        {{ $room->name == '' ? "R. No. $room->roomno" : $room->name }}
                                                    </span>
                                                @endif
                                            @endforeach

                                            @if (count($status['dobguest']) > 0)
                                                <button class="btn btn-sm btn-view-more"
                                                    onclick="showbirthdaymodal(`Today's Birthday`, {{ json_encode($status['dobguest']) }}, 'birthdaywishsend')">
                                                    View More ({{ count($status['dobguest']) > 5 ? count($status['dobguest']) - 5 : 0 }})
                                                </button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <!-- DOB Guest -->
                            @if ($status['anniversaryguest'] && count($status['anniversaryguest']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card checkout-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle anniversaryguest-icon">
                                                    <i class="fa-solid fa-cake-candles"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Today's Anniversary</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge checkout-count">{{ count($status['anniversaryguest']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['anniversaryguest'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge checkout-badge">
                                                        {{ $room->name == '' ? "R. No. $room->roomno" : $room->name }}
                                                    </span>
                                                @endif
                                            @endforeach

                                            @if (count($status['anniversaryguest']) > 0)
                                                <button class="btn btn-sm btn-view-more"
                                                    onclick="showbirthdaymodal(`Today's Anniversary`, {{ json_encode($status['anniversaryguest']) }}, 'anniversarywishsend')">
                                                    View More ({{ max(0, count($status['anniversaryguest']) - 5) }})
                                                </button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <!-- Expected CheckOut -->
                            @if ($status['ExpectedCheckOut'] && count($status['ExpectedCheckOut']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card expected-checkout-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle expected-checkout-icon">
                                                    <i class="fa fa-hourglass-end"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Expected CheckOut Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge expected-checkout-count">{{ count($status['ExpectedCheckOut']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['ExpectedCheckOut'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge expected-checkout-badge">{{ $room->Name }}</span>
                                                @endif
                                            @endforeach
                                            @if (count($status['ExpectedCheckOut']) > 5)
                                                <button class="btn btn-sm btn-view-more" onclick="showRoomModal('Expected CheckOut Room', {{ json_encode($status['ExpectedCheckOut']->pluck('Name')) }}, 'expected-checkout')">View More ({{ count($status['ExpectedCheckOut']) - 5 }})</button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <!-- UnsettledRooms -->
                            @if ($status['UnsettledRooms'] && count($status['UnsettledRooms']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card unsettled-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle unsettled-icon">
                                                    <i class="fa fa-exclamation-triangle"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Unsettled Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge unsettled-count">{{ count($status['UnsettledRooms']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['UnsettledRooms'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge unsettled-badge">{{ $room->Name }}</span>
                                                @endif
                                            @endforeach
                                            @if (count($status['UnsettledRooms']) > 5)
                                                <button class="btn btn-sm btn-view-more" onclick="showRoomModal('Unsettled Room', {{ json_encode($status['UnsettledRooms']->pluck('Name')) }}, 'unsettled')">View More ({{ count($status['UnsettledRooms']) - 5 }})</button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <!--  OutOfOrderRooms -->
                            @if ($status['OutOfOrderRooms'] && count($status['OutOfOrderRooms']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card ooo-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle ooo-icon">
                                                    <i class="fa fa-ban"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Out Of Order Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge ooo-count">{{ count($status['OutOfOrderRooms']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['OutOfOrderRooms'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge ooo-badge">{{ $room->name }}</span>
                                                @endif
                                            @endforeach
                                            @if (count($status['OutOfOrderRooms']) > 5)
                                                <button class="btn btn-sm btn-view-more" onclick="showRoomModal('Out Of Order Room', {{ json_encode($status['OutOfOrderRooms']->pluck('Name')) }}, 'ooo')">View More ({{ count($status['OutOfOrderRooms']) - 5 }})</button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <!-- Occupied Dirty Rooms -->
                            @if ($status['OccupiedDirtyRooms'] && count($status['OccupiedDirtyRooms']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card dirty-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle dirty-icon">
                                                    <i class="fa fa-bell"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Occupied Dirty Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge dirty-count">{{ count($status['OccupiedDirtyRooms']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['OccupiedDirtyRooms'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge dirty-badge">{{ $room->name }}</span>
                                                @endif
                                            @endforeach
                                            @if (count($status['OccupiedDirtyRooms']) > 5)
                                                <button class="btn btn-sm btn-view-more" onclick="showRoomModal('Occupied Dirty Room', {{ json_encode($status['OccupiedDirtyRooms']->pluck('name')) }}, 'dirty')">View More ({{ count($status['OccupiedDirtyRooms']) - 5 }})</button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <!-- Vacant Dirty Rooms -->
                            @if ($status['VacantDirtyRooms'] && count($status['VacantDirtyRooms']) > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card clean-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle clean-icon">
                                                    <i class="fa fa-bell"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Vacant Dirty Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge clean-count">{{ count($status['VacantDirtyRooms']) }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['VacantDirtyRooms'] as $index => $room)
                                                @if (!empty($room) && $index < 5)
                                                    <span class="room-badge clean-badge">{{ $room->Name }}</span>
                                                @endif
                                            @endforeach
                                            @if (count($status['VacantDirtyRooms']) > 5)
                                                <button class="btn btn-sm btn-view-more" onclick="showRoomModal('Vacant Dirty Room', {{ json_encode($status['VacantDirtyRooms']->pluck('Name')) }}, 'clean')">View More ({{ count($status['VacantDirtyRooms']) - 5 }})</button>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif
                            <!-- ExpectedArrival -->
                            @php
                                $filteredArrivals = $status['ExpectedArrival']->filter(function ($item) {
                                    return $item->total_rooms > 0;
                                });
                                $totalArrivals = $filteredArrivals->sum('total_rooms');
                            @endphp
                            @if ($totalArrivals && $totalArrivals > 0)
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="room-status-card expected-arrival-card">
                                        <div class="card-header-section">
                                            <div class="icon-wrapper">
                                                <div class="icon-circle expected-arrival-icon">
                                                    <i class="fa fa-plane"></i>
                                                </div>
                                                <div class="text-content">
                                                    <h5 class="status-title">Expected Arrival Room</h5>
                                                </div>
                                            </div>
                                            <div class="count-badge expected-arrival-count">{{ $totalArrivals }}</div>
                                        </div>
                                        <div class="room-numbers">
                                            @foreach ($status['ExpectedArrival'] as $room)
                                                @if ($room->total_rooms > 0)
                                                    <span class="room-badge expected-arrival-badge">
                                                        {{ $room->name }} - {{ $room->total_rooms }}
                                                    </span>
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                    <!-- Events -->
                    @if ($status['Events'] && count($status['Events']) > 0)
                        <div class="col-lg-4 col-md-12">
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="events-card">
                                        <div class="events-header">
                                            <div class="events-title-section">
                                                <div class="events-icon-wrapper">
                                                    <i class="fa fa-calendar"></i>
                                                </div>
                                                <div>
                                                    <h4 class="events-title">Today's Events</h4>
                                                    <p class="events-subtitle">
                                                        Upcoming events and activities
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="events-count-badge">
                                                <span class="count-number">{{ count($status['Events']) }}</span>
                                                <span class="count-label">Events</span>
                                            </div>
                                        </div>
                                        <div class="events-list">
                                            @foreach ($status['Events'] as $event)
                                                <div class="event-item">
                                                    <div class="event-time-badge">
                                                        <i class="fa fa-clock-o"></i>
                                                        <span>{{ \Carbon\Carbon::parse($event->PTime)->format('h:i A') }}</span>
                                                    </div>
                                                    <div class="event-details">
                                                        <h5 class="event-name">
                                                            {{ $event->FName }} - {{ $event->VName }}
                                                        </h5>
                                                        <div class="event-meta">
                                                            <span class="event-user">
                                                                <i class="fa fa-user"></i> {{ $event->PName }}
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                @endif
            </div>
        </div>

        @if ($datearr['roomstatusview'] == 1)
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">

                        <!-- Header and Filters -->
                        <div class="header-filter d-flex flex-wrap justify-content-between align-items-center mb-3">
                            <h3 class="col-12 col-md-4 mb-2 mb-md-0 text-center text-md-start">
                                Number of Guests Day Wise
                            </h3>

                            <div class="row col-12 col-md-8 g-2">
                                <div class="col-6">
                                    <label for="startdate">From</label>
                                    <input type="date" max="{{ $datearr['ncurdate'] }}" value="{{ $datearr['last30days'] }}"
                                        class="form-control" name="startdate" id="startdate">
                                </div>
                                <div class="col-6">
                                    <label for="enddate">To</label>
                                    <input max="{{ $datearr['ncurdate'] }}" type="date" value="{{ $datearr['ncurdate'] }}"
                                        class="form-control" name="enddate" id="enddate">
                                </div>
                            </div>
                        </div>

                        <!-- Chart -->
                        <div class="chart-container" style="position: relative; width: 100%; overflow-x: auto;">
                            <canvas id="hotelGuestsChart" style="width: 100%; height: auto; min-height: 200px;"></canvas>
                        </div>

                    </div>
                </div>
            </div>

            <!-- ✅ Responsive Styling -->
            <style>
                @media (max-width: 991px) {
                    .header-filter {
                        flex-direction: column;
                        align-items: flex-start;
                    }

                    .header-filter h3 {
                        text-align: center;
                        width: 100%;
                        margin-bottom: 15px;
                    }

                    .header-filter .row {
                        width: 100%;
                    }

                    .chart-container {
                        margin-top: 15px;
                    }
                }

                @media (max-width: 576px) {
                    .header-filter .col-6 {
                        width: 100%;
                    }
                }
            </style>
        @endif

        {{-- <div class="container-fluid mt-3">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-1">
                        <div class="card-body">
                            <h3 class="card-title text-white">Products Sold</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">4565</h2>
                                <p class="text-white mb-0">Jan - March 2019</p>
                            </div>
                            <span class="float-right display-5 opacity-5"><i class="fa fa-shopping-cart"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-2">
                        <div class="card-body">
                            <h3 class="card-title text-white">Net Profit</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">$ 8541</h2>
                                <p class="text-white mb-0">Jan - March 2019</p>
                            </div>
                            <span class="float-right display-5 opacity-5"><i class="fa fa-money"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-3">
                        <div class="card-body">
                            <h3 class="card-title text-white">New Customers</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">4565</h2>
                                <p class="text-white mb-0">Jan - March 2019</p>
                            </div>
                            <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-4">
                        <div class="card-body">
                            <h3 class="card-title text-white">Customer Satisfaction</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">99%</h2>
                                <p class="text-white mb-0">Jan - March 2019</p>
                            </div>
                            <span class="float-right display-5 opacity-5"><i class="fa fa-heart"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}

    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <script>
        // Analog Clock Update
        function updateClock() {
            const now = new Date();
            let hours = now.getHours();
            const minutes = now.getMinutes();
            const seconds = now.getSeconds();

            // Update Analog Clock
            const hourHand = document.getElementById('hourHand');
            const minuteHand = document.getElementById('minuteHand');
            const secondHand = document.getElementById('secondHand');

            if (hourHand && minuteHand && secondHand) {
                // Calculate angles for clock hands
                const secondAngle = (seconds / 60) * 360;
                const minuteAngle = (minutes / 60) * 360 + (seconds / 60) * 6;
                const hourAngle = ((hours % 12) / 12) * 360 + (minutes / 60) * 30;

                // Apply rotation to clock hands
                secondHand.style.transform = `translateX(-50%) rotate(${secondAngle}deg)`;
                minuteHand.style.transform = `translateX(-50%) rotate(${minuteAngle}deg)`;
                hourHand.style.transform = `translateX(-50%) rotate(${hourAngle}deg)`;
            }
        }

        // Weather Icons mapping based on WMO Weather codes
        const weatherIcons = {
            0: {
                icon: 'fa-sun-o',
                desc: 'Clear Sky'
            },
            1: {
                icon: 'fa-sun-o',
                desc: 'Mainly Clear'
            },
            2: {
                icon: 'fa-cloud',
                desc: 'Partly Cloudy'
            },
            3: {
                icon: 'fa-cloud',
                desc: 'Overcast'
            },
            45: {
                icon: 'fa-smog',
                desc: 'Foggy'
            },
            48: {
                icon: 'fa-smog',
                desc: 'Foggy'
            },
            51: {
                icon: 'fa-cloud-rain',
                desc: 'Light Drizzle'
            },
            53: {
                icon: 'fa-cloud-rain',
                desc: 'Drizzle'
            },
            55: {
                icon: 'fa-cloud-rain',
                desc: 'Heavy Drizzle'
            },
            61: {
                icon: 'fa-cloud-showers-heavy',
                desc: 'Light Rain'
            },
            63: {
                icon: 'fa-cloud-showers-heavy',
                desc: 'Rain'
            },
            65: {
                icon: 'fa-cloud-showers-heavy',
                desc: 'Heavy Rain'
            },
            71: {
                icon: 'fa-snowflake-o',
                desc: 'Light Snow'
            },
            73: {
                icon: 'fa-snowflake-o',
                desc: 'Snow'
            },
            75: {
                icon: 'fa-snowflake-o',
                desc: 'Heavy Snow'
            },
            80: {
                icon: 'fa-cloud-rain',
                desc: 'Rain Showers'
            },
            81: {
                icon: 'fa-cloud-rain',
                desc: 'Rain Showers'
            },
            82: {
                icon: 'fa-cloud-showers-heavy',
                desc: 'Heavy Rain Showers'
            },
            95: {
                icon: 'fa-bolt',
                desc: 'Thunderstorm'
            },
            96: {
                icon: 'fa-bolt',
                desc: 'Thunderstorm'
            },
            99: {
                icon: 'fa-bolt',
                desc: 'Thunderstorm with Hail'
            }
        };

        // Fetch Weather Data using Open-Meteo API (Free, No API Key Required)
        async function fetchWeather() {
            try {
                // Get user's location
                if (!navigator.geolocation) {
                    throw new Error('Geolocation not supported');
                }

                navigator.geolocation.getCurrentPosition(async (position) => {
                    const lat = position.coords.latitude;
                    const lon = position.coords.longitude;

                    try {
                        // Fetch weather data from Open-Meteo API (Free!)
                        const weatherResponse = await fetch(
                            `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current_weather=true&temperature_unit=celsius`
                        );

                        if (!weatherResponse.ok) throw new Error('Weather fetch failed');

                        const weatherData = await weatherResponse.json();

                        // Fetch location name using Nominatim (OpenStreetMap - Free!)
                        const locationResponse = await fetch(
                            `https://nominatim.openstreetmap.org/reverse?lat=${lat}&lon=${lon}&format=json`
                        );

                        let locationName = 'Your Location';
                        if (locationResponse.ok) {
                            const locationData = await locationResponse.json();
                            locationName = locationData.address.city ||
                                locationData.address.town ||
                                locationData.address.village ||
                                locationData.address.county ||
                                'Unknown Location';
                        }

                        // Update UI
                        document.getElementById('weatherLoading').style.display = 'none';
                        document.getElementById('weatherContent').style.display = 'flex';

                        const temp = Math.round(weatherData.current_weather.temperature);
                        const weatherCode = weatherData.current_weather.weathercode;
                        const weatherInfo = weatherIcons[weatherCode] || {
                            icon: 'fa-cloud',
                            desc: 'Cloudy'
                        };

                        document.getElementById('weatherTemp').textContent = `${temp}°C`;
                        document.getElementById('weatherDesc').textContent = weatherInfo.desc;
                        document.getElementById('locationName').textContent = locationName;
                        document.getElementById('weatherIcon').className = `fa ${weatherInfo.icon}`;

                    } catch (error) {
                        console.error('Weather API error:', error);
                        document.getElementById('weatherLoading').style.display = 'none';
                        document.getElementById('weatherError').style.display = 'block';
                    }

                }, (error) => {
                    // Location permission denied or error
                    console.error('Geolocation error:', error);
                    document.getElementById('weatherLoading').style.display = 'none';
                    document.getElementById('weatherError').style.display = 'block';
                });

            } catch (error) {
                console.error('Weather error:', error);
                document.getElementById('weatherLoading').style.display = 'none';
                document.getElementById('weatherError').style.display = 'block';
            }
        }

        // Initialize on page load
        updateClock();
        setInterval(updateClock, 1000);
        fetchWeather();
        // Refresh weather every 10 minutes
        setInterval(fetchWeather, 600000);
    </script>

    <script>
        $(document).ready(function() {

            let csrftoken = "{{ csrf_token() }}";
            let hotelGuestsChartInstance = null;

            $(document).on('change', '#startdate, #enddate', function() {
                let startdate = $('#startdate').val();
                let enddate = $('#enddate').val();

                const postdata = {
                    'startdate': startdate,
                    'enddate': enddate
                };

                const options = {
                    method: "POST",
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': csrftoken
                    },
                    body: JSON.stringify(postdata)
                };

                fetch('/getindex', options)
                    .then(response => response.json())
                    .then(result => {
                        if (result.success) {
                            let gueststayduration = result.data.gueststayduration;

                            const guestcount = gueststayduration.map(x => x.guest_count);
                            const chkindate = gueststayduration.map(x => new Date(x.chkindate).getDate());

                            const guestStayData = {
                                labels: chkindate,
                                datasets: [{
                                    label: 'Number of Guests this Day',
                                    data: guestcount,
                                    borderColor: 'rgba(54, 162, 235, 1)',
                                    tension: 0.4,
                                    fill: false
                                }]
                            };

                            const guestStayOptions = {
                                responsive: true,
                                plugins: {
                                    legend: {
                                        position: 'top'
                                    },
                                    title: {
                                        display: true,
                                        text: 'Number of Guests Day Wise'
                                    }
                                },
                                scales: {
                                    x: {
                                        title: {
                                            display: true,
                                            text: 'Day of the Month'
                                        }
                                    },
                                }
                            };

                            if (hotelGuestsChartInstance) {
                                hotelGuestsChartInstance.destroy();
                            }

                            const ctx1 = document.getElementById('hotelGuestsChart').getContext('2d');
                            hotelGuestsChartInstance = new Chart(ctx1, {
                                type: 'line',
                                data: guestStayData,
                                options: guestStayOptions
                            });
                        }
                    })
                    .catch(error => {
                        console.log(error);
                    })
            });
            $('#startdate').trigger('change');
        });

        // Room Modal Functions
        function showRoomModal(title, rooms, type) {
            $('#roomModalLabel').text(title);
            let badgeClass = type + '-badge';
            let roomsHtml = '';
            rooms.forEach(room => {
                roomsHtml += `<span class="room-badge ${badgeClass} m-1">${room}</span>`;
            });
            $('#roomModalBody').html(roomsHtml);
            $('#roomModal').modal('show');
        }

        const whatsappCheck = @json(optional(whatsappparameter())->checkyn ?? 'N');
        // DOB Guest Modal Functions
        function showbirthdaymodal(title, dobguest, type) {
            $('#dobguestModalLabel').text(title);

            let badgeClass = type + '-badge';
            let dobguestHtml = '';

            dobguest.forEach((guest, index) => {
                let displayName = guest.name && guest.name.trim() !== '' ?
                    guest.name :
                    `R. No. ${guest.roomno}`;
                let typecheck = type == 'birthdaywishsend' ? guest.birthdaywishsend : guest.anniversarywishsend;

                dobguestHtml += `
            <div class="d-inline-flex flex-column align-items-center m-1">
                <span class="room-badge ${badgeClass}">${displayName}</span>
                ${guest.chkindate ? `<small class="text-muted mt-1">${dmy(guest.chkindate)}</small>` : ''}
                <small class="text-muted">${guest.status}</small>
        `;

                if (whatsappCheck === 'Y') {
                    dobguestHtml += `
                <button type="button"
                        class="btn btn-sm btn-success mt-1 send-birthday-wish"
                        data-docid="${guest.docid}"
                        data-type="${type}"
                        data-typecheck="${typecheck}"
                        data-guestcode="${guest.guestcode}"
                        data-dob="${guest.dob}"
                        data-chkindate="${guest.chkindate}"
                        ${typecheck == 1 ? 'disabled' : ''}>
                    ${typecheck == 1 ? 'Already Wished <i class="fa-solid fa-cake-candles"></i>' : 'Send Wish'}
                </button>
            `;
                }

                dobguestHtml += `</div>`;
            });

            $('#dobguestModalBody').html(dobguestHtml);
            $('#dobguestModal').modal('show');
        }

        $(document).on('click', '.send-birthday-wish', function() {
            let button = $(this);
            let type = button.data('type');
            let postdata = {
                docid: button.data('docid'),
                guestcode: button.data('guestcode'),
                dob: button.data('dob'),
                chkindate: button.data('chkindate')
            };

            button.prop('disabled', true).html('Sending...');

            $.ajax({
                url: `{{ url('/sendwish') }}/${type}`,
                type: 'POST',
                data: postdata,
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function(response) {
                    if (response.success === true) {
                        button
                            .prop('disabled', true)
                            .html('Already Wished <i class="fa-solid fa-cake-candles"></i>');

                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: response.message,
                            timer: 1500,
                            showConfirmButton: false
                        });
                    } else {
                        button.prop('disabled', false).html('Send Wish');

                        Swal.fire({
                            icon: 'error',
                            title: 'Failed',
                            text: response.message || 'Unable to send birthday wish.'
                        });
                    }
                },
                error: function(xhr) {
                    button.prop('disabled', false).html('Send Wish');

                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: xhr.responseJSON?.message || 'Something went wrong while sending the birthday wish.'
                    });
                }
            });
        });
    </script>

    <!-- Room Modal -->
    <div class="modal fade" id="roomModal" tabindex="-1" role="dialog" aria-labelledby="roomModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="roomModalLabel">Room Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="roomModalBody">
                    <!-- Room badges will be dynamically inserted here -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- DOB Guest Modal -->
    <div class="modal fade" id="dobguestModal" tabindex="-1" role="dialog" aria-labelledby="dobguestModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="dobguestModalLabel">Today's Birthday Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="dobguestModalBody">
                    <!-- dobguest badges will be dynamically inserted here -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
@endsection
