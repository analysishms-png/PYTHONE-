<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Models\Companyreg;
use App\Models\MenuHelp;
use App\Models\VoucherPrefix;
use Carbon\Carbon;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class FinancialPush extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
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
            $this->compcode = companyvalue();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function yearandupdation(Request $request)
    {
        $permission = revokeopen(122022);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        return view('property.yearandupdation', [
            'ncurdate' => $this->ncurdate
        ]);
    }

    public function yearupdatesubmit(Request $request)
    {
        $permission = revokeopen(122022);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        // $company = Companyreg::where('propertyid', $this->propertyid)->orderBy('comp_code', 'DESC')->first();
        // $start_dt = $company->start_dt;
        // $start_dtplus = new DateTime($start_dt);
        // $start_dtplus->modify('+1 year');

        // $end_dt = $company->end_dt;
        // $end_dtplus = new DateTime($end_dt);
        // $end_dtplus->modify('+1 year');

        $datemanage = DateHelper::calculateDateRanges(ncurdate());

        $curfyearstart = $datemanage['ftd']['start'];
        $start_dtplus = new DateTime($curfyearstart);
        $start_dtplus->modify('+1 year');
        $curfyearend = $datemanage['ftd']['end'];
        $end_dtplus = new DateTime($curfyearend);
        $end_dtplus->modify('+1 year');

        // return $start_dtplus->format('Y-m-d') . ' ' . $end_dtplus->format('Y-m-d');

        $voucher = VoucherPrefix::where('propertyid', $this->propertyid)->where('date_from', $curfyearstart)->get();

        // return $voucher;

        foreach ($voucher as $row) {
            $vouchers = new VoucherPrefix;
            $vouchers->propertyid = $this->propertyid;
            $vouchers->short_name = $row->short_name;
            $vouchers->v_type = $row->v_type;
            $vouchers->start_srl_no = 0;
            $vouchers->date_from = $start_dtplus->format('Y-m-d');
            $vouchers->date_to = $end_dtplus->format('Y-m-d');
            $vouchers->prefix = $row->prefix + 1;
            $vouchers->u_ae = 'a';
            $vouchers->u_name = Auth::user()->u_name;
            $vouchers->created_at = $this->currenttime;
            $vouchers->sysYN = $row->sysYN;
            $vouchers->save();
        }

        $updatencr = Carbon::parse($this->ncurdate)->addDays(1)->format('Y-m-d');

        DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->update([
                'ncur' => $updatencr,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ]);


        return response()->json([
            'redirecturl' => 'logout',
            'status' => 'success',
            'message' => 'Year Update Processed Successfully',
        ]);
    }
}
