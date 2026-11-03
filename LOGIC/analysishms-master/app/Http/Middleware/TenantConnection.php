<?php

namespace App\Http\Middleware;

use App\Models\User;
use App\Services\TenantDatabase;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TenantConnection
{
    public function handle(Request $request, Closure $next)
    {
        DB::setDefaultConnection('main');

        if ($request->routeIs('logout') || $request->is('logout')) {
            return $next($request);
        }

        if (!auth()->check()) {
            return $next($request);
        }

        $user = auth()->user();
        $propertyId = $user->propertyid;

        if (!$propertyId || in_array($propertyId, [10, 20])) {
            return $next($request);
        }

        TenantDatabase::connect($propertyId);
        DB::setDefaultConnection('tenant');

        if ($user->getConnectionName() !== 'tenant') {
            $tenantUser = User::on('tenant')
                ->where('u_name', $user->u_name)
                ->where('propertyid', $propertyId)
                ->first();

            if ($tenantUser) {
                auth()->setUser($tenantUser);
            }
        }

        return $next($request);
    }
}
