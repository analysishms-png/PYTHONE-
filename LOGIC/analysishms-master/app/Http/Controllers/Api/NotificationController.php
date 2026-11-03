<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NotificationController extends Controller
{
    public function sync(Request $request): JsonResponse
    {
        $user = $request->user();
        $perPage = min(max((int) $request->input('per_page', 20), 1), 100);

        $query = DB::table('notification_deliveries as delivery')
            ->join('notificationmaster as notification', 'notification.id', '=', 'delivery.notification_id')
            ->where('delivery.user_id', $user->getAuthIdentifier())
            ->where('delivery.propertyid', $user->propertyid)
            ->where('notification.propertyid', $user->propertyid)
            // ->where('notification.dcode', $user->department)
            ->select([
                'notification.id',
                'notification.task',
                'notification.route',
                'notification.module',
                'notification.propertyid',
                'notification.dcode',
                'notification.created_at',
                'delivery.state',
                'delivery.sent_at',
                'delivery.delivered_at',
                'delivery.seen_at',
                'delivery.opened_at',
                'delivery.failed_at',
            ])
            ->orderByDesc('notification.id');

        if ($request->filled('since_id')) {
            $query->where('notification.id', '>', (int) $request->input('since_id'));
        }

        $page = $query->paginate($perPage);
        $items = collect($page->items())->map(fn ($notification) => [
            'id' => (int) $notification->id,
            'task' => $notification->task,
            'route' => $notification->route,
            'module' => $notification->module,
            'propertyid' => (string) $notification->propertyid,
            'dcode' => $notification->dcode,
            'created_at' => $notification->created_at,
            'state' => $notification->state,
            'sent_at' => $notification->sent_at,
            'delivered_at' => $notification->delivered_at,
            'seen_at' => $notification->seen_at,
            'opened_at' => $notification->opened_at,
            'failed_at' => $notification->failed_at,
        ]);

        return response()->json([
            'success' => true,
            'data' => $items->values(),
            'meta' => [
                'current_page' => $page->currentPage(),
                'per_page' => $page->perPage(),
                'total' => $page->total(),
                'last_page' => $page->lastPage(),
                'has_more' => $page->hasMorePages(),
            ],
        ]);
    }
}
