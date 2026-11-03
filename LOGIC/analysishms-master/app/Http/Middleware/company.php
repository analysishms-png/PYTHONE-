<?php

namespace App\Http\Middleware;

use App\Models\Companyreg;
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroPos;
use App\Models\EnviroWhatsapp;
use App\Services\TenantDatabase;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class company
{
    public function handle(Request $request, Closure $next): Response
    {
        // dd([
        //     'role' => Auth::user()->role,
        //     'propertyid' => Auth::user()->propertyid,
        //     'connection' => Auth::user()->getConnectionName(),
        // ]);
        if ($request->routeIs('logout') || $request->is('logout')) {
            DB::setDefaultConnection('main');
            return $next($request);
        }

        if (Auth::check() && !session()->has('propertyid')) {
            session([
                'propertyid' => Auth::user()->propertyid,
                'userid' => Auth::user()->id,
            ]);
        }

        $propertyId = (int) session('propertyid');

        if ($propertyId > 100) {
            TenantDatabase::connect($propertyId);
            DB::setDefaultConnection('tenant');
        } else {
            DB::setDefaultConnection('main');
        }

        if (!Auth::check()) {
            return redirect('/login');
        }

        if ($propertyId > 100) {
            app()->instance('tenant.company', Companyreg::on('tenant')->first() ?? new Companyreg());
            app()->instance('tenant.general', EnviroGeneral::on('tenant')->first() ?? new EnviroGeneral());
            app()->instance('tenant.fom', EnviroFom::on('tenant')->first() ?? new EnviroFom());
            app()->instance('tenant.pos', EnviroPos::on('tenant')->first() ?? new EnviroPos());
            app()->instance('tenant.whatsapp', EnviroWhatsapp::on('tenant')->first() ?? new EnviroWhatsapp());
        }

        $user = Auth::user();

        if ($user->role == 2) return $next($request);
        if ($user->role == 1) return redirect('/superadmin');
        if ($user->role == 3) return redirect('/user');
        if ($user->role == 4) return redirect('/staff');
        if ($user->role == 5) return redirect('/frontlogin');

        return response('Unauthorized', 401);
    }
}
