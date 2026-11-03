<?php

require __DIR__ . '/vendor/autoload.php';

use Stichoza\GoogleTranslate\GoogleTranslate;

$strings = [
    "Feedback Form", "Your feedback helps us", "serve you", "better",
    "Room No.", "Check-out Date", "Guest Name", "Overall Experience",
    "Excellent", "Please rate the following", "Optional", "Cleanliness",
    "Food & Beverages", "Staff Courtesy", "Amenities & Facilities",
    "Room Comfort", "Check-in Experience", "Value for Money",
    "Overall Satisfaction", "Additional Comments", "Tell us about your stay...",
    "What can we do to improve?", "Your suggestions help us improve...",
    "Purpose of your visit", "Select purpose...", "Would you recommend us?",
    "I agree that my feedback may be used by the hotel to improve its services.",
    "We respect your privacy. Your information will not be shared.",
    "Submit Feedback", "Thank you! Your feedback is important to us."
];

$langs = ['es', 'fr', 'de', 'hi', 'ar'];

foreach ($langs as $lang) {
    echo "Translating to $lang...\n";
    $tr = new GoogleTranslate($lang);
    $output = [];
    foreach ($strings as $s) {
        $output[$s] = $tr->translate($s);
        usleep(200000);
    }
    $path = __DIR__ . "/resources/lang/{$lang}.json";
    file_put_contents($path, json_encode($output, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
    echo "Saved: $path\n";
}

echo "All done!\n";
