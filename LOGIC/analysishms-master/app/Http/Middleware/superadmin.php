<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class superadmin
{
    public function handle(Request $request, Closure $next): Response
    {
        if (!Auth::check()) {
            return redirect('/login');
        }

        $user = Auth::user();
        if ((int) $user->role === 1 && (string) ($user->propertyid ?? '') === '10') {
            return $next($request);
        } elseif ($user->role == 2) {
            return redirect('/company');
        } elseif ($user->role == 3) {
            return redirect('/user');
        } elseif ($user->role == 4) {
            return redirect('/staff');
        } elseif ($user->role == 5) {
            return redirect('/frontlogin');
        }

        return response('Unauthorized', 401);
    }
}
