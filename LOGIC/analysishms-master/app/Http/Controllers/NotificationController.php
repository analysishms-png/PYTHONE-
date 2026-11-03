<?php

namespace App\Http\Controllers;

use App\Jobs\SendCustomNotificationJob;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use Illuminate\Validation\ValidationException;

class NotificationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create()
    {
        $this->authorizeNotification('view');

        $propertyId = Auth::user()->propertyid;
        $departments = DB::table('depart')
            ->where('propertyid', $propertyId)
            ->select('dcode', 'name')
            ->groupBy('dcode')
            ->orderBy('name')
            ->get();

        return view('property.notification.create', compact('departments'));
    }

    public function users(Request $request): JsonResponse
    {
        $this->authorizeNotification('view');
        $propertyId = Auth::user()->propertyid;
        $target = $request->input('target');

        if ($target === 'all') {
            $departments = DB::table('depart')
                ->where('propertyid', $propertyId)
                ->pluck('dcode')
                ->values();
        } else {
            $departments = $request->validate([
                'departments' => ['required', 'array', 'min:1'],
                'departments.*' => [
                    'required',
                    'string',
                    Rule::exists('depart', 'dcode')->where(fn($query) => $query->where('propertyid', $propertyId)),
                ],
            ])['departments'];
        }

        $users = User::query()
    ->leftJoin('depart', function ($join) {
        $join->on('users.propertyid', '=', 'depart.propertyid')
            ->on(
                DB::raw('users.department COLLATE utf8mb4_unicode_ci'), 
                '=', 
                DB::raw('depart.dcode COLLATE utf8mb4_unicode_ci')
            );
    })
    ->leftJoin('desig', function ($join) {
        $join->on('users.propertyid', '=', 'desig.propertyid')
            ->on(
                DB::raw('users.designation COLLATE utf8mb4_unicode_ci'), 
                '=', 
                DB::raw('desig.code COLLATE utf8mb4_unicode_ci')
            );
    })
    ->where('users.propertyid', $propertyId)
    ->where('users.status', 1)
    ->whereIn('users.department', $departments)
    ->orderBy('users.name')
    ->get([
        'users.id',
        'users.name',
        'depart.name as department_name',
        'desig.name as designation_name',
        'users.u_name',
        'users.designation',
        'users.department',
        'users.fcm_token'
    ])
    ->map(fn(User $user) => [
        'id' => $user->id,
        'name' => $user->name,
        'username' => $user->u_name,
        'designation' => $user->designation,
        'department' => $user->department,
        'department_name' => $user->department_name,
        'designation_name' => $user->designation_name,
        'has_token' => filled($user->fcm_token),
    ]);

        return response()->json(['success' => true, 'data' => $users]);
    }

    public function store(Request $request): JsonResponse
    {
        $this->authorizeNotification('send');
        $propertyId = Auth::user()->propertyid;
        $validated = $request->validate([
            'target' => ['required', Rule::in(['all', 'departments', 'users'])],
            'departments' => ['nullable', 'array'],
            'departments.*' => [
                'string',
                Rule::exists('depart', 'dcode')->where(fn($query) => $query->where('propertyid', $propertyId)),
            ],
            'user_ids' => ['nullable', 'array'],
            'user_ids.*' => ['integer', 'distinct'],
            'task' => ['required', 'string', 'max:1000'],
            'route' => ['required', 'string', 'max:100'],
            'module' => ['required', 'string', 'max:100'],
        ]);

        $task = trim($validated['task']);
        if ($task === '') {
            throw ValidationException::withMessages(['task' => 'The notification message cannot be empty.']);
        }
        $route = trim($validated['route']);
        $module = trim($validated['module']);
        if ($route === '') {
            throw ValidationException::withMessages(['route' => 'The route cannot be empty.']);
        }
        if ($module === '') {
            throw ValidationException::withMessages(['module' => 'The module cannot be empty.']);
        }

        $departments = $validated['departments'] ?? [];
        if ($validated['target'] === 'all') {
            $departments = DB::table('depart')->where('propertyid', $propertyId)->pluck('dcode')->all();
        } elseif ($departments === []) {
            throw ValidationException::withMessages(['departments' => 'Select at least one department.']);
        }

        $userQuery = User::query()
            ->where('propertyid', $propertyId)
            ->where('status', 1)
            ->whereIn('department', $departments);

        if (empty($validated['user_ids'])) {
            throw ValidationException::withMessages(['user_ids' => 'Select at least one user.']);
        }
        $userQuery->whereIn('id', $validated['user_ids']);

        $users = $userQuery->get(['id', 'department', 'fcm_token']);
        $validUsers = $users->filter(fn(User $user) => filled($user->fcm_token))->values();

        if ($validUsers->count() !== count($validated['user_ids'])) {
            throw ValidationException::withMessages([
                'user_ids' => 'One or more selected users are invalid, inactive, outside this property, or have no device token.',
            ]);
        }
        if ($validUsers->isEmpty()) {
            throw ValidationException::withMessages(['user_ids' => 'No selected active user has a valid device token.']);
        }

        $lockKey = 'custom-notification:' . Auth::id() . ':' . sha1(json_encode([
            $propertyId,
            $validated['target'],
            $departments,
            $validUsers->pluck('id')->sort()->values()->all(),
            $task,
            $validated['route'],
            $validated['module'],
        ]));
        if (!Cache::lock($lockKey, 10)->get()) {
            return response()->json(['success' => false, 'message' => 'This notification was already submitted.'], 409);
        }

        $queuedNotifications = DB::transaction(function () use ($validUsers, $propertyId, $validated, $task) {
            $notifications = [];
            foreach ($validUsers->groupBy('department') as $department => $recipients) {
                $id = DB::table('notificationmaster')->insertGetId([
                    'propertyid' => $propertyId,
                    'route' => trim($validated['route']),
                    'module' => trim($validated['module']),
                    'dcode' => $department,
                    'task' => $task,
                    'status' => 1,
                    'created_at' => now(),
                    'u_name' => Auth::user()->u_name ?? Auth::user()->name,
                    'u_ae' => 'a',
                ]);
                $notifications[] = [
                    'id' => (int) $id,
                    'user_ids' => $recipients->pluck('id')->map(fn($id) => (int) $id)->values()->all(),
                ];
            }
            return $notifications;
        });

        // The transaction has committed successfully, so queued jobs cannot
        // reference notificationmaster rows that were rolled back.
        foreach ($queuedNotifications as $notification) {
            SendCustomNotificationJob::dispatch(
                $notification['id'],
                $notification['user_ids'],
            );
        }

        return response()->json([
            'success' => true,
            'message' => 'Notification queued successfully.',
            'data' => [
                'notification_ids' => array_column($queuedNotifications, 'id'),
                'recipients' => $validUsers->count(),
            ],
        ]);
    }

    private function authorizeNotification(string $ability): void
    {
        $permission = revokeopen(122011);
        if (is_null($permission) || ($permission->{$ability === 'send' ? 'ins' : 'view'} ?? 0) == 0) {
            abort(403, 'You have no permission to send notifications.');
        }
    }
}
