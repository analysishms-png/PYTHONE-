<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class SetToolsSessionLifetime
{
    /**
     * Handle an incoming request.
     */
    public function handle(Request $request, Closure $next)
    {
        if ($request->routeIs('toolslogin') || $request->is('tools') || $request->is('tools/*')) {
            config([
                'session.lifetime' => 1440,
                'session.expire_on_close' => false,
            ]);
        }

        return $next($request);
    }
}
