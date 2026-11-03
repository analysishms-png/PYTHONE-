<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
class user
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (!Auth::check()) {
            return redirect('/login');
        }

        $user = Auth::user();
        if ($user->role == 3) {
            return $next($request);
        } elseif ($user->role == 1) {
            return redirect('/superadmin');
        } elseif ($user->role == 2) {
            return redirect('/company');
        } elseif ($user->role == 4) {
            return redirect('/staff');
        } elseif ($user->role == 5) {
            return redirect('/frontlogin');
        }

        return response('Unauthorized', 401);
    }
}
