<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Models\Companyreg;
use App\Models\Ledger;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class FinanceController extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;
    protected $datemanage;
    protected $company;

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
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);
            $this->company = Companyreg::where('propertyid', $this->propertyid)->first();
            return $next($request);
        });
    }

    public function trialmainquery(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $openingbalance = $request->openingbalance;

        if ($openingbalance != 'checked') {
            $data = Ledger::select(
                'subgroup.name',
                'ledger.docid',
                'ledger.vtype',
                'ledger.vdate',
                DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                'ledger.subcode'
            )
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                ->where('ledger.propertyid', $this->propertyid)
                ->whereBetween('ledger.vdate', [$fromdate, $todate])
                ->groupBy('ledger.subcode')
                ->get();
        } else {
            $data = Ledger::select(
                'subgroup.name',
                'ledger.docid',
                'ledger.vtype',
                'ledger.vdate',
                DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                'ledger.subcode'
            )
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                ->where('ledger.propertyid', $this->propertyid)
                ->where('vdate', '<=', $todate)
                ->groupBy('ledger.subcode')
                ->get();
        }

        if ($data->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No Data Found'
            ]);
        } else {
            return response()->json($data);
        }
    }

    public function monthwisetrialfetch(Request $request)
    {
        $sub_code = $request->sub_code;
        $fromdate = $request->fromdate;
        $todate = $request->todate;

        $data = Ledger::selectRaw("DATE_FORMAT(vdate, '%M %Y') AS month_year, DATE_FORMAT(vdate, '%m') AS month_number, subcode, vprefix")
            ->selectRaw('COUNT(*) AS total_entries')
            ->selectRaw('SUM(amtdr) AS totalamtdr')
            ->selectRaw('SUM(amtcr) AS totalamtcr')
            ->where('propertyid', $this->propertyid)
            ->whereBetween('ledger.vdate', [$fromdate, $todate])
            // ->whereNot('vtype', 'F_AO')
            ->where('subcode', $sub_code)
            ->groupByRaw("DATE_FORMAT(vdate, '%Y-%m')")
            ->orderByRaw('MIN(vdate)')
            ->get();

        $openingbalance = Ledger::where('propertyid', $this->propertyid)
            ->where('vdate', '<', $fromdate)
            ->where('subcode', $sub_code)
            ->selectRaw('SUM(amtdr) - SUM(amtcr) AS balance')
            ->value('balance') ?? 0.00;

        return response()->json([
            'data' => $data,
            'openingbalance' => $openingbalance
        ]);
    }

    public function monthrowfetch(Request $request)
    {
        $sub_code = $request->sub_code;
        $month_number = $request->month_number;
        $vprefix = $request->vprefix;
        $fromdate = $request->fromdate;
        $todate = $request->todate;

        $condition = $request->condition;

        $datatmp = Ledger::select('vdate', 'docid', 'vno', 'narration', 'amtdr', 'amtcr', 'vtype')
            ->where('propertyid', $this->propertyid)
            ->where('subcode', $sub_code)
            ->whereYear('vdate', $vprefix)
            ->where('vprefix', $vprefix)
            ->where('ledger.vdate', '<=', $todate)
            ->orderBy('vdate')
            ->orderBy('id');

        if ($condition == 1) {
            $data = $datatmp->get();
            $opening_balance = Ledger::where('propertyid', $this->propertyid)
                ->where('subcode', $sub_code)
                ->where('vdate', '<', $fromdate)
                ->selectRaw('SUM(amtdr) - SUM(amtcr) as balance')
                ->value('balance') ?? 0;
        } else {
            $data = $datatmp->whereMonth('vdate', $month_number)->get();
            $opening_balance = Ledger::where('propertyid', $this->propertyid)
                ->where('subcode', $sub_code)
                ->whereDate('vdate', '<', $vprefix . '-' . $month_number . '-01')
                ->selectRaw('SUM(amtdr) - SUM(amtcr) as balance')
                ->value('balance') ?? 0;
        }

        return response()->json([
            'data' => $data,
            'opening_balance' => $opening_balance
        ]);
    }
}
