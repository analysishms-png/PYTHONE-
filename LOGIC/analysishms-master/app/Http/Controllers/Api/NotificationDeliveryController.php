<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Services\NotificationDeliveryTrackingService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class NotificationDeliveryController extends Controller
{
    public function acknowledge(
        Request $request,
        int|string $notificationId,
        string $state,
        NotificationDeliveryTrackingService $tracking,
    ): JsonResponse {
        if (!in_array($state, ['delivered', 'seen', 'opened'], true)) {
            return response()->json(['success' => false, 'message' => 'Unsupported notification state.'], 422);
        }

        try {
            $delivery = $tracking->acknowledge($notificationId, (int) $request->user()->getAuthIdentifier(), $state);
        } catch (ModelNotFoundException) {
            return response()->json(['success' => false, 'message' => 'Notification delivery not found.'], 404);
        }

        return response()->json([
            'success' => true,
            'state' => $delivery->state,
            'notification_id' => (string) $notificationId,
        ]);
    }

    public function statistics(
        int|string $notificationId,
        NotificationDeliveryTrackingService $tracking,
    ): JsonResponse {
        return response()->json([
            'success' => true,
            'notification_id' => (string) $notificationId,
            'statistics' => $tracking->statistics($notificationId),
        ]);
    }
}