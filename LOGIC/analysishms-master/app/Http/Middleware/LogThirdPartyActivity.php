<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Exception;
use Illuminate\Support\Facades\Log;

class LogThirdPartyActivity
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // Process the request first
        $response = $next($request);

        // Log the activity after response
        try {
            $payload = $request->json()->all();
            $propertyId = $payload['property_id'] ?? null;
            
            if (!$propertyId) {
                return $response;
            }

            // Extract route information
            $routeName = $request->route()->getName() ?? 'unknown';
            $routePath = $request->path();
            
            // Map route names to action descriptions
            $actionMap = [
                'updateroomkeydata' => 'Update Room Key Data',
            ];
            
            $action = $actionMap[$routeName] ?? ucfirst(str_replace(['-', '_'], ' ', $routeName));
            $module = 'KOT/POS Print System'; // Module name for third-party operations

            // Get IP address
            $ipAddress = $request->ip();
            $userAgent = $request->userAgent();

            // Extract username if available in payload
            $username = $payload['username'] ?? 'System (Third Party)';

            // Log to activity_logs table
            // DB::table('activity_logs')->insert([
            //     'propertyid' => $propertyId,
            //     'username' => $username,
            //     'user_id' => null,
            //     'module' => $module,
            //     'action' => $action,
            //     'method' => $request->method(),
            //     'url' => $request->fullUrl(),
            //     'ip_address' => $ipAddress,
            //     'user_agent' => $userAgent,
            //     'properties' => json_encode([
            //         'route' => $routePath,
            //         'route_name' => $routeName,
            //         'source' => 'third_party',
            //         'payload_keys' => array_keys($payload),
            //     ]),
            //     'created_at' => now(),
            // ]);
        } catch (Exception $e) {
            // Don't break the request if logging fails
            Log::error('Third Party Activity Logging Error: ' . $e->getMessage());
        }

        return $response;
    }
}
