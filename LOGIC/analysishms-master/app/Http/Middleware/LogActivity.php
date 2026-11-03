<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\ActivityLog;
use Illuminate\Support\Facades\Log;

class LogActivity
{
    public function handle(Request $request, Closure $next)
    {
        $response = $next($request);

        if ($this->shouldSkip($request)) {
            return $response;
        }

        try {
            $user = auth()->user();
            $route = $request->route();

            ActivityLog::on('main')->create([
                'propertyid' => $user?->propertyid ?? null,
                'username' => $user?->u_name ?? null,
                'user_id' => auth()->id(),
                'action' => $request->method(),
                'module' => $request->segment(1),
                'description' => $route?->getName() ?? $request->path(),
                'ip_address' => $request->ip(),
                'user_agent' => $request->userAgent(),
                'properties' => [
                    'query' => $request->query(),
                    'body' => $request->except(['password', 'password_confirmation', '_token']),
                ],
                'url' => $request->fullUrl(),
                'method' => $request->method(),
            ]);
        } catch (\Exception $e) {
            // Log::error('Activity log error: ' . $e->getMessage());
        }

        return $response;
    }

    private function shouldSkip(Request $request): bool
    {
        if ($request->method() === 'OPTIONS') {
            return true;
        }

        $path = $request->path();
        if (str_starts_with($path, 'storage') || 
            str_starts_with($path, 'assets') || 
            $path === 'favicon.ico') {
            return true;
        }

        return false;
    }
}

