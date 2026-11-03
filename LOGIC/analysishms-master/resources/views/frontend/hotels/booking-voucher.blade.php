<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Voucher</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Arial', sans-serif;
            font-size: 12px;
            line-height: 1.2;
            color: #333;
        }
        
        .voucher-container {
            margin: 10px;
            padding: 10px;
        }
        
        .header {
            text-align: center;
            margin-bottom: 15px;
            border-bottom: 1px solid #007bff;
            padding-bottom: 10px;
        }
        
        .company-logo {
            max-width: 60px;
            max-height: 60px;
            margin-bottom: 5px;
        }
        
        .company-name {
            font-size: 18px;
            font-weight: bold;
            color: #007bff;
        }
        
        .company-address {
            font-size: 9px;
            color: #666;
        }
        
        .voucher-title {
            font-size: 14px;
            font-weight: bold;
            color: #333;
            text-transform: uppercase;
        }
        
        .booking-info {
            display: table;
            width: 100%;
            margin-bottom: 10px;
        }
        
        .booking-info-left,
        .booking-info-right {
            display: table-cell;
            width: 50%;
            vertical-align: top;
            padding: 5px;
        }
        
        .info-row {
            margin-bottom: 5px;
        }
        
        .info-label {
            font-weight: bold;
            color: #555;
            width: 100px;
            display: inline-block;
        }
        
        .info-value {
            color: #333;
        }
        
        .guest-details {
            background-color: #f8f9fa;
            padding: 10px;
            border-radius: 3px;
            margin-bottom: 10px;
        }
        
        .section-title {
            font-size: 12px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 5px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 3px;
        }
        
        .room-details {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 3px;
            padding: 10px;
            margin-bottom: 10px;
        }
        
        .room-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 5px;
        }
        
        .room-table th,
        .room-table td {
            border: 1px solid #ddd;
            padding: 5px;
            text-align: left;
        }
        
        .room-table th {
            background-color: #f8f9fa;
            font-weight: bold;
            font-size: 10px;
        }
        
        .room-table td {
            font-size: 10px;
        }
        
        .total-section {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border-radius: 3px;
            text-align: right;
            margin-bottom: 10px;
        }
        
        .total-amount {
            font-size: 14px;
            font-weight: bold;
        }
        
        .terms-conditions {
            font-size: 9px;
            color: #666;
            line-height: 1.4;
            margin-top: 10px;
            border-top: 1px solid #eee;
            padding-top: 10px;
        }
        
        .footer {
            text-align: center;
            margin-top: 15px;
            padding-top: 10px;
            border-top: 1px solid #007bff;
            font-size: 9px;
            color: #666;
        }
        
        .status-badge {
            background-color: #28a745;
            color: white;
            padding: 2px 5px;
            border-radius: 3px;
            font-size: 9px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="voucher-container">
        <!-- Header Section -->
        <div class="header">
            @if($company && $company->logo)
                @php
                    $logoPath = public_path('storage/admin/property_logo/' . $company->logo);
                @endphp
                @if(file_exists($logoPath))
                    <img src="data:image/png;base64,{{ base64_encode(file_get_contents($logoPath)) }}" 
                         alt="Hotel Logo" class="company-logo">
                @endif
            @endif
            
            <div class="company-name">{{ $company->comp_name ?? 'Hotel Name' }}</div>
            <div class="company-address">
                {{ $company->address1 ?? '' }}{{ $company->address2 ? ', ' . $company->address2 : '' }}<br>
                @if(isset($company->city_name) && $company->city_name){{ $company->city_name }}, @endif
                @if(isset($company->state_name) && $company->state_name){{ $company->state_name }} @endif
                @if(isset($company->pin_code) && $company->pin_code)- {{ $company->pin_code }}@endif<br>
                @if(isset($company->telephone) && $company->telephone)Phone: {{ $company->telephone }} @endif
                @if(isset($company->email) && $company->email)| Email: {{ $company->email }}@endif
            </div>
            <div class="voucher-title">Booking Confirmation Voucher</div>
        </div>

        <!-- Booking Information -->
        <div class="booking-info">
            <div class="booking-info-left">
                <div class="info-row">
                    <span class="info-label">Booking No:</span>
                    <span class="info-value">{{ $booking->BookNo }}</span>
                </div>
                <div class="info-row">
                    <span class="info-label">Booking Date:</span>
                    <span class="info-value">{{ date('d M Y', strtotime($booking->vdate)) }}</span>
                </div>
                <div class="info-row">
                    <span class="info-label">Status:</span>
                    <span class="status-badge">{{ $booking->ResStatus }}</span>
                </div>
            </div>
            <div class="booking-info-right">
                @if($bookingDetails->isNotEmpty())
                <div class="info-row">
                    <span class="info-label">Check-in:</span>
                    <span class="info-value">{{ date('d M Y', strtotime($bookingDetails->first()->ArrDate)) }} at {{ date('h:i A', strtotime($bookingDetails->first()->ArrTime)) }}</span>
                </div>
                <div class="info-row">
                    <span class="info-label">Check-out:</span>
                    <span class="info-value">{{ date('d M Y', strtotime($bookingDetails->first()->DepDate)) }} at {{ date('h:i A', strtotime($bookingDetails->first()->DepTime)) }}</span>
                </div>
                <div class="info-row">
                    <span class="info-label">Nights:</span>
                    <span class="info-value">{{ $bookingDetails->first()->NoDays }} Night(s)</span>
                </div>
                @endif
                <div class="info-row">
                    <span class="info-label">Total Rooms:</span>
                    <span class="info-value">{{ $booking->NoofRooms }}</span>
                </div>
            </div>
        </div>

        <!-- Guest Details -->
        <div class="guest-details">
            <div class="section-title">Guest Details</div>
            @if($guestProfile)
            <div class="info-row">
                <span class="info-label">Guest Name:</span>
                <span class="info-value">{{ $guestProfile->name }}</span>
            </div>
            <div class="info-row">
                <span class="info-label">Mobile Number:</span>
                <span class="info-value">{{ $guestProfile->mobile_no }}</span>
            </div>
            <div class="info-row">
                <span class="info-label">Email:</span>
                <span class="info-value">{{ $guestProfile->email_id }}</span>
            </div>
            @if($guestProfile->add1)
            <div class="info-row">
                <span class="info-label">Address:</span>
                <span class="info-value">{{ $guestProfile->add1 }}</span>
            </div>
            @endif
            @endif
        </div>

        <!-- Room Details -->
        <div class="room-details">
            <div class="section-title">Room Details</div>
            @if($bookingDetails->isNotEmpty())
            <table class="room-table">
                <thead>
                    <tr>
                        <th>Room Category</th>
                        <th>Room No.</th>
                        <th>Adults</th>
                        <th>Children</th>
                        @if($planDetails)
                        <th>Plan</th>
                        @endif
                        <th>Rate</th>
                        <th>Nights</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    @php $totalAmount = 0; @endphp
                    @foreach($bookingDetails as $detail)
                    @php 
                        $roomTotal = $detail->Tarrif * $detail->NoDays;
                        $totalAmount += $roomTotal;
                    @endphp
                    <tr>
                        <td>{{ $detail->RoomCat }}</td>
                        <td>{{ $detail->RoomNo ?: 'TBA' }}</td>
                        <td>{{ $detail->Adults }}</td>
                        <td>{{ $detail->Childs }}</td>
                        @if($planDetails)
                        <td>{{ $planDetails->pname ?? $detail->Plan_Code }}</td>
                        @endif
                        <td>Rs. {{ number_format($detail->Tarrif, 2) }}</td>
                        <td>{{ $detail->NoDays }}</td>
                        <td>Rs. {{ number_format($roomTotal, 2) }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            @endif
        </div>

        <!-- Total Section -->
        <div class="total-section">
            <div class="total-amount">
                Total Amount: Rs. {{ number_format($totalAmount ?? 0, 2) }}
            </div>
            <div style="font-size: 10px; margin-top: 3px;">
                (Taxes Extras)
            </div>
        </div>

        <!-- Terms & Conditions -->
        <div class="terms-conditions">
            {{-- <h4>Terms & Conditions:</h4> --}}
            {{-- <ul style="margin-left: 10px;">
                <li>Check-in time is 2:00 PM and check-out time is 12:00 PM.</li>
                <li>Valid government-issued photo identification is required at check-in.</li>
                <li>Cancellation policy applies as per hotel terms.</li>
                <li>This voucher must be presented at the time of check-in.</li>
                <li>Room allocation is subject to availability at the time of check-in.</li>
                <li>Any additional services or charges will be payable directly to the hotel.</li>
                <li>The management reserves the right to refuse accommodation without assigning any reason.</li>
            </ul> --}}
        </div>

        <!-- Footer -->
        <div class="footer">
            <p><strong>Thank you for choosing {{ $company->comp_name ?? 'our hotel' }}!</strong></p>
            <p>For any queries, please contact us at {{ isset($company->telephone) ? $company->telephone : 'N/A' }} or {{ isset($company->email) ? $company->email : 'N/A' }}</p>
            <p style="margin-top: 5px; font-style: italic;">This is a computer-generated voucher and does not require a signature.</p>
        </div>
    </div>
</body>
</html>