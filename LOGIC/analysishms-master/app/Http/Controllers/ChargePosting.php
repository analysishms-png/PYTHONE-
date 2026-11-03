<?php

namespace App\Http\Controllers;

use App\Models\EnviroFom;
use App\Models\Ledger;
use App\Models\Paycharge;
use App\Models\Revmast;
use App\Models\Stock;
use App\Models\Suntran;
use App\Models\VoucherPrefix;
use App\Services\AccountPosting;
use DateTime;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ChargePosting extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            $this->prpid = Auth::user()->propertyid;

            $propertydata = DB::table('users')->where('propertyid', $this->prpid)->first();
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);

            $this->ncurdate = DB::table('enviro_general')
                ->where('propertyid', $this->prpid)
                ->value('ncur');

            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');

            return $next($request);
        });
    }

    public function accountposting(Request $request)
    {
        $permission = revokeopen(191114);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        return view('property.accountposting', [
            'ncurdate' => $this->ncurdate
        ]);
    }

    public function accountpoststore(Request $request, AccountPosting $accountposting)
    {
        $result = $accountposting->accountpoststore($request->fromdate, $request->todate);
        
        // return $result;
        return back()->with(
            $result['success'] ? 'success' : 'error',
            $result['message']
        );
    }
}
