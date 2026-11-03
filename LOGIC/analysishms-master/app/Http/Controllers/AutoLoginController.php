<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Services\TenantDatabase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AutoLoginController extends Controller
{
    public function loginUser()
    {
        $userid = request('userid');
        $username = request('username');
        $propertyid = request('propertyid');
        $redirectUrl = request('redirect_url', url('/dashboard'));

        $chkuser = User::on('main')
            ->where('id', $userid)
            ->where('propertyid', $propertyid)
            ->where('u_name', $username)
            ->first();

        if (!$chkuser) {
            return response()->json([
                'status' => 'error',
                'message' => 'You are not permitted for this property.'
            ]);
        }

        if ($propertyid > 100) {
            TenantDatabase::connect($propertyid);
            DB::setDefaultConnection('tenant');

            $tenantUser = User::on('tenant')
                ->where('u_name', $chkuser->u_name)
                ->where('propertyid', $propertyid)
                ->first();

            if (!$tenantUser) {
                DB::setDefaultConnection('main');

                return response()->json([
                    'status' => 'error',
                    'message' => 'User not found in tenant database.'
                ]);
            }

            Auth::login($tenantUser);

            request()->session()->regenerate();

            request()->session()->put([
                'userid' => $tenantUser->id,
                'propertyid' => $tenantUser->propertyid,
            ]);
        } else {
            DB::setDefaultConnection('main');

            Auth::login($chkuser);

            request()->session()->regenerate();

            request()->session()->put([
                'userid' => $chkuser->id,
                'propertyid' => $chkuser->propertyid,
            ]);
        }

        return response()->json([
            'status' => 'success',
            'redirect' => $redirectUrl
        ]);
    }

    public function reactLogin()
    {
        $userid = request('userid');
        $username = request('username');
        $propertyid = request('propertyid');

        $chkuser = User::where('propertyid', $propertyid)->where('u_name', $username)->first();

        if (is_null($chkuser)) {
            return response()->json([
                'status' => 'error',
                'message' => 'User not permit for this propertyid'
            ], 401);
        }

        if (Auth::loginUsingId($userid)) {
            return response()->json([
                'status' => 'success',
                'message' => 'Login successful',
                'user' => [
                    'id' => $chkuser->id,
                    'username' => $chkuser->u_name,
                    'propertyid' => $chkuser->propertyid,
                    'token' => csrf_token()
                ]
            ]);
        }

        return response()->json([
            'status' => 'error',
            'message' => 'User not found.'
        ], 401);
    }
}
