<?php

namespace App\Http\Middleware;

use App\Models\Companyreg;
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroPos;
use App\Models\EnviroWhatsapp;
use App\Services\TenantDatabase;
use Closure;
use Illuminate\Support\Facades\DB;

class TenantBootstrap
{
    public function handle($request, Closure $next)
    {
        if ($request->routeIs('logout') || $request->is('logout')) {
            DB::purge('tenant');
            DB::setDefaultConnection('main');
            return $next($request);
        }

        $propertyId = (int) session('propertyid');

        if ($propertyId > 100) {

            TenantDatabase::connect($propertyId);
            DB::setDefaultConnection('tenant');

            app()->instance('tenant.company', Companyreg::on('tenant')->first() ?? new Companyreg());
            app()->instance('tenant.general', EnviroGeneral::on('tenant')->first() ?? new EnviroGeneral());
            app()->instance('tenant.fom', EnviroFom::on('tenant')->first() ?? new EnviroFom());
            app()->instance('tenant.pos', EnviroPos::on('tenant')->first() ?? new EnviroPos());
            app()->instance('tenant.whatsapp', EnviroWhatsapp::on('tenant')->first() ?? new EnviroWhatsapp());
        } else {
            DB::setDefaultConnection('main');
        }

        return $next($request);
    }
}
