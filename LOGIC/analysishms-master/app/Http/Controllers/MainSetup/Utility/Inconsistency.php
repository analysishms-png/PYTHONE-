<?php

namespace App\Http\Controllers\MainSetup\Utility;

use App\Http\Controllers\Controller;
use App\Services\TenantDatabase;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Inconsistency extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            return $next($request);
        });
    }

    public function countryloadupdate()
    {
        TenantDatabase::connect(propertyid());

        $countries = DB::connection('main')
            ->table('tbl_country')
            ->select('name', 'country_code', 'nationality')
            ->get();

        $existing = DB::connection('tenant')
            ->table('countries')
            ->pluck('name')
            ->flip();

        $now = now();
        $user = Auth::user()->u_name;
        $insert = [];

        foreach ($countries as $country) {
            if (!isset($existing[$country->name])) {
                $insert[] = [
                    'name'         => $country->name,
                    'country_code' => $country->country_code,
                    'nationality'  => $country->nationality,
                    'created_at'   => $now,
                    'u_name'       => $user,
                ];
            }
        }

        if (!empty($insert)) {
            DB::connection('tenant')
                ->table('countries')
                ->insert($insert);
        }

        DB::setDefaultConnection('main');

        return response()->json([
            'message' => count($insert) . ' Countries Inserted Successfully',
        ]);
    }

    public function stateloadupdate()
    {
        TenantDatabase::connect(propertyid());

        if (!DB::connection('tenant')->table('countries')->exists()) {
            return response()->json([
                'message' => 'Please add Country First',
            ], 500);
        }

        $states = DB::connection('main')
            ->table('tbl_state')
            ->select('name', 'country', 'state_code')
            ->get();

        $existing = DB::connection('tenant')
            ->table('states')
            ->pluck('name')
            ->flip();

        $now = now();
        $user = Auth::user()->u_name;
        $insert = [];

        foreach ($states as $state) {
            if (!isset($existing[$state->name])) {
                $insert[] = [
                    'name'       => $state->name,
                    'country'    => $state->country,
                    'state_code' => $state->state_code,
                    'created_at' => $now,
                    'u_name'     => $user,
                ];
            }
        }

        if (!empty($insert)) {
            DB::connection('tenant')
                ->table('states')
                ->insert($insert);
        }

        DB::setDefaultConnection('main');

        return response()->json([
            'message' => count($insert) . ' States Inserted Successfully',
        ]);
    }

    public function cityloadupdate()
    {
        TenantDatabase::connect(propertyid());

        if (!DB::connection('tenant')->table('states')->exists()) {
            return response()->json([
                'message' => 'Please add State First',
            ], 500);
        }

        $cities = DB::connection('main')
            ->table('tbl_city')
            ->select('cityname', 'country', 'state', 'zipcode')
            ->get();

        $existing = DB::connection('tenant')
            ->table('cities')
            ->pluck('cityname')
            ->flip();

        $lastCode = (int) DB::connection('tenant')
            ->table('cities')
            ->selectRaw('MAX(CAST(SUBSTRING(city_code, ?) AS UNSIGNED)) as max_code', [strlen((string) propertyid()) + 1])
            ->value('max_code');

        $counter = $lastCode + 1;
        $now = now();
        $user = Auth::user()->u_name;
        $insert = [];

        foreach ($cities as $city) {
            if (!isset($existing[$city->cityname])) {
                $insert[] = [
                    'city_code'  => propertyid() . $counter++,
                    'cityname'   => $city->cityname,
                    'country'    => $city->country,
                    'state'      => $city->state,
                    'zipcode'    => $city->zipcode,
                    'created_at' => $now,
                    'u_name'     => $user,
                ];
            }
        }

        if (!empty($insert)) {
            DB::connection('tenant')
                ->table('cities')
                ->insert($insert);
        }

        DB::setDefaultConnection('main');

        return response()->json([
            'message' => count($insert) . ' Cities Inserted Successfully',
        ]);
    }
}
