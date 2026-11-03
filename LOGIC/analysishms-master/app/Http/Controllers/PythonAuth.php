<?php

namespace App\Http\Controllers;

use App\Models\Companyreg;
use App\Models\EnviroPos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Kot;
use App\Models\PrintDelay;
use App\Models\PrintingSetup;
use App\Models\Sagar;
use App\Models\Sale1;
use App\Models\Stock;
use App\Services\TenantDatabase;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class PythonAuth extends Controller
{

    public function login(Request $request)
    {
        $data = $request->json()->all();

        $request->validate([
            'username' => 'required|string',
            'property_id' => 'required|string',
            'password' => 'required|string',
        ]);

        Log::info('Login Request:', $data);

        $user = User::on('main')->where('name', $data['username'])
            ->where('propertyid', $data['property_id'])
            ->first();

        // Log::info('User Found:', ['user' => $user]);

        if (!$user) {
            return response()->json([
                'status' => 'error',
                'Account does not exist',
            ]);
        }

        if ($user->status !== 1) {
            return response()->json([
                'status' => 'error',
                'Account is not active',
            ]);
        }

        if ($user && Hash::check($data['password'], $user->password)) {

            TenantDatabase::connect($user->propertyid);
            DB::setDefaultConnection('tenant');
            $userdata = User::select('users.*', 'userpermission.system_name')
                ->leftJoin('userpermission', function ($join) use ($user) {
                    $join->on('userpermission.username', '=', 'users.u_name')
                        ->where('userpermission.propertyid', '=', $user->propertyid);
                })
                ->where('users.propertyid', $user->propertyid)
                ->where('users.u_name', $user->u_name)
                ->where('users.useroradmin', 'user')
                ->first();

            return response()->json([
                'status' => 'success',
                'message' => 'Login successful',
                'userdetails' => $userdata,
            ]);
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid credentials',
            ], 401);
        }
    }

    public function getproperty(Request $request)
    {
        $data = $request->json()->all();

        $request->validate([
            'property_id' => 'required|string',
            'username' => 'required|string',
        ]);

        $user = User::on('main')
            ->where('name', $data['username'])
            ->where('propertyid', $data['property_id'])
            ->first();

        if (!$user) {
            return response()->json([
                'status' => 'error',
                'message' => 'Account does not exist',
            ]);
        }

        if ($user->status !== 1) {
            return response()->json([
                'status' => 'error',
                'message' => 'Account is not active',
            ]);
        }

        TenantDatabase::connect($user->propertyid);
        DB::setDefaultConnection('tenant');
        try {

            $compdata = Companyreg::where('propertyid', $user->propertyid)
                ->first();

            if ($compdata) {
                return response()->json([
                    'status' => 'success',
                    'data' => $compdata,
                ]);
            } else {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Company Data Not Found',
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Unknown Error Occurred: ' . $e->getMessage(),
            ]);
        }
    }
}
