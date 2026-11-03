<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Companyreg;
use App\Models\EnviroGeneral;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Crypt;
use App\Models\SupportTicket;
use App\Services\TenantDatabase;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function logout(Request $request)
    {
        if (Auth::check()) {
            $user = Auth::user();

            // Tenant only
            if ($user->propertyid > 100) {
                TenantDatabase::connect($user->propertyid);
                DB::setDefaultConnection('tenant');
            } else {
                DB::setDefaultConnection('main');
            }

            SupportTicket::updateUserApStatus((int) $user->id, 'A');
        }

        Auth::logout();

        DB::purge('tenant');
        DB::setDefaultConnection('main');

        $request->session()->forget([
            'userid',
            'propertyid',
            'comp_code',
        ]);

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/login');
    }

    public function login(Request $request)
    {

        $credentials = $request->validate([
            'u_name' => 'required',
            'propertyid' => 'required',
            'password' => 'required'
        ]);


        $userWithEmail = User::on('main')->leftJoin('company', 'company.propertyid', '=', 'users.propertyid')
            ->where(function ($query) use ($credentials) {
                $query->where('users.u_name', $credentials['u_name'])
                    ->orWhere('users.email', $credentials['u_name']);
            })
            ->where('users.propertyid', $credentials['propertyid'])
            ->orderBy('company.comp_code', 'DESC')
            ->select('users.*')
            ->first();

        if (!$userWithEmail) {
            return back()->withErrors(['u_name' => 'Account does not exist'])->withInput();
        }

        if ($userWithEmail->status == 0) {
            return back()->withErrors(['u_name' => 'Account inactive'])->withInput();
        }

        if (in_array($userWithEmail->propertyid, [10, 20])) {
            Auth::login($userWithEmail);

            return match ($userWithEmail->role) {
                1 => redirect('/superadmin'),
                2 => redirect('/company'),
                3 => redirect('/user'),
                4 => redirect('/staff'),
                5 => redirect('/frontlogin'),
                default => back()->withErrors([
                    'u_name' => 'Oops Something went wrong'
                ]),
            };
        }

        TenantDatabase::connect($userWithEmail->propertyid);
        DB::setDefaultConnection('tenant');

        $envgeneral = EnviroGeneral::on('tenant')
            ->where('propertyid', $userWithEmail->propertyid)
            ->first();

        if ($envgeneral && $envgeneral->expdate && $envgeneral->propertyid != 103) {
            $expdate = Crypt::decryptString($envgeneral->expdate);

            if ($expdate < $envgeneral->ncur) {
                return back()->withErrors([
                    'u_name' => 'Your account is expired. Please contact your software vendor.'
                ]);
            }
        }

        if (!Hash::check($credentials['password'], $userWithEmail->password)) {
            return back()->withErrors([
                'password' => 'Invalid password'
            ])->withInput();
        }

        $tenantUser = User::on('tenant')
            ->where('u_name', $userWithEmail->u_name)
            ->where('propertyid', $userWithEmail->propertyid)
            ->firstOrFail();

        $tenantCompany = Companyreg::on('tenant')
            ->where('propertyid', $tenantUser->propertyid)
            ->first();

        Auth::login($tenantUser);
        // dd([
        //     'auth_role' => Auth::user()->role,
        //     'connection' => Auth::user()->getConnectionName(),
        //     'propertyid' => Auth::user()->propertyid,
        // ]);
        $request->session()->regenerate();

        $request->session()->put([
            'userid'     => $tenantUser->id,
            'propertyid' => $tenantUser->propertyid,
            'comp_code'  => $tenantCompany?->comp_code,
        ]);

        switch (Auth::user()->role) {
            case 1:
                return redirect('/superadmin');
            case 2:
                return redirect('/company');
            case 3:
                return redirect('/user');
            case 4:
                return redirect('/staff');
            case 5:
                return redirect('/frontlogin');
            default:
                Auth::logout();
                return back()->withErrors([
                    'u_name' => 'Oops Something went wrong'
                ]);
        }
    }

    public function reactlogin(Request $request)
    {
        $data = $request->json()->all();

        $request->validate([
            'username' => 'required|string',
            'property_id' => 'required|string',
            'password' => 'required|string',
        ]);

        $user = User::where('name', $data['username'])
            ->where('propertyid', $data['property_id'])
            ->first();

        // Log::info('User Found:', ['user' => $user]);

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Account does not exist',
            ]);
        }

        if ($user->status !== 1) {
            return response()->json([
                'success' => false,
                'message' => 'Account is not active',
            ]);
        }

        if ($user && Hash::check($data['password'], $user->password)) {

            $userdata = User::select('users.*')
                ->where('users.propertyid', $user->propertyid)
                ->where('users.u_name', $user->u_name)
                // ->where('users.useroradmin', 'user')
                ->first();

            return response()->json([
                'success' => true,
                'message' => 'Login successful',
                'user' => $userdata,
                'access_token' => $user->createToken('flutter')->plainTextToken,
                'token_type' => 'Bearer',
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Invalid credentials',
            ], 401);
        }
    }

    public function reactlogout(Request $request)
    {
        return response()->json([
            'success' => true,
            'message' => 'Logout successful',
        ]);
    }
}
