<?php

namespace App\Http\Controllers\Android;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FcmTokenController extends Controller
{
    public function store(Request $request)
    {
        $validated = $request->validate([
            'fcm_token' => 'required|string|max:4096',
            'device_type' => 'nullable|string|max:20',
            'device_name' => 'nullable|string|max:100',
        ]);

        $user = $request->user();

        $user->update([
            'fcm_token' => $validated['fcm_token'],
            'device_type' => $validated['device_type'] ?? 'android',
            'device_name' => $validated['device_name'],
            'last_used_at' => now(),
        ]);

        return response()->json([
            'success' => true,
            'message' => 'FCM token registered successfully.',
        ]);
    }
}
