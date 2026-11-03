<?php

namespace App\Http\Controllers;

use App\Models\Depart;
use App\Models\EnviroNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;

class EnviroNotificationController extends Controller
{
    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }
    public function index()
    {
        $notifications = EnviroNotification::query()
            ->where('propertyid', $this->propertyid)
            ->orderByDesc('id')
            ->get();

        $departments = Depart::select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        return view('property.enviro_notification.index', compact('notifications', 'departments'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'route' => [
                'required',
                'string',
                'max:255',
                Rule::unique('enviro_notifications')->where(
                    fn($query) => $query->where('propertyid', $this->propertyid)
                ),
            ],
            'enabled' => ['required', 'boolean'],
            'departments' => ['nullable', 'array'],
            'departments.*' => ['string', 'max:100'],
            'superwiser' => ['required', 'boolean'],
            'message' => ['required', 'string', 'max:1000'],
        ]);

        EnviroNotification::create([
            'propertyid' => $this->propertyid,
            'route' => $validated['route'],
            'enabled' => $validated['enabled'],
            'departments' => $validated['departments'] ?? [],
            'superwiser' => $validated['superwiser'],
            'message' => $validated['message'],
        ]);

        return redirect()
            ->route('enviro-notification.index')
            ->with('success', 'Notification configuration created successfully.');
    }

    public function update(Request $request, EnviroNotification $enviroNotification)
    {
        $validated = $request->validate([
            'route' => [
                'required',
                'string',
                'max:255',
                Rule::unique('enviro_notifications')
                    ->ignore($enviroNotification->id)
                    ->where(
                        fn($query) => $query->where('propertyid', $this->propertyid)
                    ),
            ],
            'enabled' => ['required', 'boolean'],
            'departments' => ['nullable', 'array'],
            'departments.*' => ['string', 'max:100'],
            'superwiser' => ['required', 'boolean'],
            'message' => ['required', 'string', 'max:1000'],
        ]);

        $enviroNotification->update([
            'route' => $validated['route'],
            'enabled' => $validated['enabled'],
            'departments' => $validated['departments'] ?? [],
            'superwiser' => $validated['superwiser'],
            'message' => $validated['message'],
        ]);

        return redirect()
            ->route('enviro-notification.index')
            ->with('success', 'Notification configuration updated successfully.');
    }

    public function toggle(EnviroNotification $enviroNotification)
    {
        $enviroNotification->update([
            'enabled' => !$enviroNotification->enabled,
        ]);

        return redirect()
            ->route('enviro-notification.index')
            ->with('success', 'Notification status updated successfully.');
    }

    public function destroy(EnviroNotification $enviroNotification)
    {
        $enviroNotification->delete();

        return redirect()
            ->route('enviro-notification.index')
            ->with('success', 'Notification configuration deleted successfully.');
    }
}
