@extends('frontend.layouts.main')
@section('title', 'Reservation API - Analysis HMS')
@section('meta')
    <meta name="description" content="Analysis HMS Reservation API helps hotels handle room bookings, cancellations, guest check-ins, and more programmatically. Automate your hotel management system securely and efficiently.">
    <meta name="keywords" content="Hotel Reservation API, Room Booking API, Guest Check-in API, Reservation Management API, Analysis HMS, Hotel Automation API">
    <meta name="author" content="Analysis Softwares Solutions">
@endsection

@section('main-container')

    <div class="container py-5">

        <!-- Page Heading -->
        <div class="text-center mb-5">
            <h1 class="h2 fw-bold">Reservation API - Analysis HMS</h1>
            <p class="text-muted lead">Integrate your hotel management system to handle bookings, room availability, and guest check-ins seamlessly using our secure API.</p>
        </div>

        <!-- Why use API -->
        <div class="mb-5">
            <h2 class="h4 fw-semibold">Why Use the Reservation API?</h2>
            <p>
                The Analysis HMS Reservation API allows hotels to integrate their systems programmatically with our platform.
                By using this API, you can automate reservation processes, manage room availability, update bookings,
                and track guest check-ins, reducing manual errors and improving operational efficiency.
            </p>
            <p>
                Developers can securely push reservations using a unique <strong>API key</strong> in the route and a
                <strong>Bearer token</strong> in the request header. This makes integrations safe, fast, and reliable.
            </p>
        </div>

        <!-- Types of Data You Can Push -->
        <div class="mb-5">
            <h2 class="h4 fw-semibold">Types of Data You Can Push</h2>
            <p>
                The Reservation API allows you to push a variety of data to manage hotel bookings efficiently. Below are the main types of information supported:
            </p>
            <ul>
                <li><strong>Guest Details:</strong> Name, contact information, identification, special requests, and other personal data of the guest.</li>
                <li><strong>Room & Booking Details:</strong> Room type, number of units, check-in/check-out dates, rate plans, and occupancy information.</li>
                <li><strong>Advance Charges:</strong> Prepaid amounts, deposits, or advance payments related to the booking.</li>
                <li><strong>Check-in Details:</strong> Actual check-in time, room allocation, guest status, and any notes.</li>
                <li><strong>Cancellation Details:</strong> Cancellation date, reason, refund amount, and status.</li>
                <li><strong>Payment & Billing Info:</strong> Total amount, tax, discounts, payment method, and invoice references.</li>
                <li><strong>Additional Services:</strong> Extra services like meals, airport pickup, spa, or other amenities associated with the reservation.</li>
            </ul>
            <p class="text-muted">
                Properly structuring this data in your JSON payload ensures smooth processing of reservations and prevents errors.
            </p>
        </div>

        <!-- API Endpoint Section -->
        <div class="mb-5">
            <h2 class="h4 fw-semibold">API Endpoint</h2>
            <p>
                <strong>Push a new reservation:</strong><br>
                <code id="apiRoute">POST: https://analysishms.com/api/reservation/push/{api_key}</code>
                <button class="btn btn-sm btn-outline-primary ms-2" onclick="copyApiRoute()">Copy</button>
            </p>
            <p>
                Include your <strong>Bearer token</strong> in the request header as:<br>
                <code>Authorization: Bearer &lt;your_bearer_token&gt;</code>
            </p>
        </div>

        <!-- How to get API key -->
        <div class="mb-5">
            <h2 class="h4 fw-semibold">Getting Your API Key</h2>
            <p>
                To get your unique API key and Bearer token, contact our support team:
            </p>
            <ul>
                <li>Email: <a href="mailto:{{ config('app.main_mail') }}">{{ config('app.main_mail') }}</a></li>
                <li>Phone/WhatsApp: <a href="https://api.whatsapp.com/send/?phone={{ config('app.phone') }}&text=Hello%20Sagar">{{ config('app.phone') }}</a></li>
            </ul>
            <p class="text-muted">
                After receiving your API key, you can start testing the Reservation API immediately.
            </p>
        </div>

        <!-- Sample JSON -->
        <div class="mb-5">
            <h2 class="h4 fw-semibold">Sample JSON for Reservation Push</h2>
            <p>Below is a partial JSON sample for your reference. For the complete JSON, download the sample file:</p>
            <pre class="bg-light p-3 rounded shadow-sm" style="max-height:400px; overflow:auto;">
                {
                    "RoomStays": [
                        {
                            "RoomTypes": [
                                {
                                    "RoomDescription": {
                                        "Name": "DELUXE"
                                    },
                                    "NumberOfUnits": 1,
                                    "RoomTypeCode": "1103"
                                }
                            ],
                            "RatePlans": [
                                {
                                    "RatePlanCode": "7103",
                                    "RatePlanName": "AP (DLX)"
                                }
                            ],
                            ...
                        }
                    ]
                }
        </pre>
            <div class="mt-2 text-center p-3 shadow-sm rounded bg-dark text-white">
                <strong>Download the complete sample JSON to see the full structure:</strong><br>
                <a href="{{ url('Json/pushreservation.json') }}" class="btn btn-primary mt-2" download>Download Sample JSON</a>
            </div>
        </div>

        <div class="mb-5">
            <h2 class="h4 fw-semibold">Testing in Postman</h2>
            <p>
                You can open this API directly in Postman using your API key and Bearer token:
            </p>
            <a href="https://www.postman.com/" target="_blank" class="btn btn-success">Open in Postman</a>
            <p class="mt-3 text-muted">
                Make sure to set the request type to <strong>POST</strong> and include the Authorization header:
            </p>
            <pre class="bg-light p-3 rounded">
                Authorization: Bearer &lt;your_bearer_token&gt;
                Content-Type: application/json
        </pre>
        </div>

        <div class="mb-5">
            <h2 class="h4 fw-semibold">Step-by-Step Guide to Push Reservation</h2>
            <ol>
                <li>Contact support to get your <strong>API key</strong> and <strong>Bearer token</strong>.</li>
                <li>Download the <strong>sample JSON</strong> and update with your booking details.</li>
                <li>Send a <strong>POST</strong> request to <code>/api/reservation/push/{api_key}</code> with your Bearer token in the header.</li>
                <li>Receive a JSON response confirming your reservation was successfully pushed.</li>
                <li>Check the response for success or errors and handle accordingly in your system.</li>
            </ol>
        </div>

        <!-- SEO-friendly explanation -->
        <div class="mb-5">
            <h2 class="h4 fw-semibold">Benefits of Using Analysis HMS Reservation API</h2>
            <ul>
                <li>Automates booking and reservation management.</li>
                <li>Reduces manual errors and improves operational efficiency.</li>
                <li>Secures requests with unique API key and Bearer token.</li>
                <li>Supports large-scale hotel operations with multiple room types and rate plans.</li>
                <li>Easy to integrate with existing hotel management systems or third-party apps.</li>
            </ul>
        </div>

        <!-- Page footer -->
        <div class="text-center py-4">
            <p class="text-muted small">
                Analysis HMS Reservation API - secure, reliable, and fast solution for hotel booking automation.
            </p>
        </div>

    </div>

    <script>
        function copyApiRoute() {
            var copyText = document.getElementById("apiRoute").innerText;
            navigator.clipboard.writeText(copyText).then(function() {
                alert("API route copied to clipboard!");
            }, function(err) {
                alert("Failed to copy API route.");
            });
        }
    </script>

@endsection
