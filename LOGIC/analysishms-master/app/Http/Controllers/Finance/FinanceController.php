<?php

namespace App\Http\Controllers\Finance;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Models\ACGroup;
use App\Models\Companyreg;
use App\Models\Ledger;
use App\Models\TdsCategory;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

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

    public function trialgroupbalance(Request $request)
    {
        $permission = revokeopen(111211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        return view('property.finance.trialgroupbalance');
    }

    public function trialgroupmainquery(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $openingbalance = $request->openingbalance;
        $allproperties = $request->allproperties;

        if ($openingbalance != 'checked') {
            // WITHOUT opening balance
            // $mainrows = Ledger::select(
            //     'acgroup.maingroupname as name',
            //     'acgroup.group_code',
            //     'acgroup.maingroupcode',
            //     DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
            //     'acgroup.undergroup'
            // )
            //     ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
            //     ->leftJoin('acgroup', function ($join) {
            //         $join->on('acgroup.group_code', '=', 'subgroup.group_code')
            //             ->where('acgroup.sys_group', 'Y');
            //     })
            //     ->whereIn('ledger.propertyid', $allproperties)
            //     ->whereBetween('ledger.vdate', [$fromdate, $todate])
            //     ->groupBy(
            //         // 'acgroup.maingroupcode',
            //         // 'acgroup.maingroupname',
            //         'acgroup.group_code'
            //     )
            //     ->orderBy('acgroup.maingroupname')
            //     ->get();
            $mainrows = DB::table('acgroup as A')
                ->leftJoin('ledger as L', function ($join) {
                    $join->on('A.group_code', '=', 'L.groupcode');
                })
                ->select(
                    'A.maingroupname as name',
                    'A.group_code',
                    'A.maingroupcode',
                    DB::raw('SUM(L.amtdr) - SUM(L.amtcr) AS balance'),
                    'A.undergroup'
                )
                ->whereIn('A.propertyid', $allproperties)
                ->whereIn('L.propertyid', $allproperties)
                ->whereBetween('L.vdate', [$fromdate, $todate])
                ->groupBy('A.maingroupname')
                ->orderBy('A.maingroupname')
                ->get();
        } else {
            // WITH opening balance
            // $mainrows = Ledger::select(
            //     'acgroup.maingroupname as name',
            //     'acgroup.group_code',
            //     'acgroup.maingroupcode',
            //     DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
            //     'acgroup.undergroup'
            // )
            //     ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
            //     ->leftJoin('acgroup', function ($join) {
            //         $join->on('acgroup.group_code', '=', 'subgroup.group_code')
            //             ->where('acgroup.sys_group', 'Y');
            //     })
            //     ->whereIn('ledger.propertyid', $allproperties)
            //     ->where('ledger.vdate', '<=', $todate)
            //     ->groupBy(
            //         // 'acgroup.maingroupcode',
            //         // 'acgroup.maingroupname',
            //         'acgroup.group_code'
            //     )
            //     ->orderBy('acgroup.maingroupname')
            //     ->get();
            $mainrows = DB::table('acgroup as A')
                ->leftJoin('ledger as L', function ($join) {
                    $join->on('A.group_code', '=', 'L.groupcode');
                })
                ->select(
                    'A.maingroupname as name',
                    'A.group_code',
                    'A.maingroupcode',
                    DB::raw('SUM(L.amtdr) - SUM(L.amtcr) AS balance'),
                    'A.undergroup'
                )
                ->whereIn('A.propertyid', $allproperties)
                ->whereIn('L.propertyid', $allproperties)
                ->whereBetween('L.vdate', [$fromdate, $todate])
                ->groupBy('A.maingroupname')
                ->orderBy('A.maingroupname')
                ->get();
        }

        if ($mainrows->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No Data Found'
            ]);
        }

        $subgroupDetails = [];

        foreach ($mainrows as $mainrow) {
            $groupByColumn = $mainrow->undergroup == "N"
                ? 'acgroup.group_code'
                : 'ledger.subcode';

            $subgroups = Ledger::select([
                DB::raw('
                        CASE 
                            WHEN acgroup.undergroup = "Y" 
                            THEN subgroup.name 
                            ELSE acgroup.group_name 
                        END AS name
                    '),
                DB::raw('
                    CASE 
                        WHEN acgroup.undergroup = "Y" 
                        THEN 0 
                        ELSE 1
                    END AS groupynvalue
                '),
                DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                'ledger.subcode',
                'acgroup.undergroup',
                'acgroup.group_code as acgroupcode',
            ])
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
                ->whereIn('ledger.propertyid', $allproperties)
                ->whereBetween('ledger.vdate', [$fromdate, $todate])
                ->where('subgroup.group_code', $mainrow->group_code)
                ->groupBy($groupByColumn)
                ->orderBy('name')
                ->get();

            $subgroupDetails[$mainrow->group_code] = $subgroups;
        }

        return response()->json([
            'mainrows' => $mainrows,
            'subgroupDetails' => $subgroupDetails
        ]);
    }

    public function fetchsubgroupdetails(Request $request)
    {
        $maingroupcode = $request->maingroupcode;
        $group_code = $request->group_code;
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $openingbalance = $request->openingbalance;
        $allproperties = $request->allproperties;
        $openingBalanceEnabled = ($openingbalance !== 'not checked');

        $undergroup = ACGroup::whereIn('propertyid', $allproperties)->where('group_code', $group_code)->value('undergroup');
        // $groupByColumn = $undergroup == "N"
        //     ? 'acgroup.group_code'
        //     : 'ledger.subcode';

        $groupByColumn = $undergroup == "N"
            ? 'acgroup.group_code'
            : 'ledger.subcode';

        // Log::info('Group Code: ' . $group_code . ', Undergroup: ' . $undergroup . ', Group By Column: ' . $groupByColumn);

        // $query = Ledger::select(
        //     DB::raw('
        //             CASE 
        //                 WHEN acgroup.undergroup = "Y" 
        //                 THEN subgroup.name 
        //                 ELSE acgroup.group_name 
        //             END AS name
        //         '),
        //     DB::raw('
        //             CASE 
        //                 WHEN acgroup.undergroup = "Y" 
        //                 THEN 0 
        //                 ELSE 1
        //             END AS groupynvalue
        //         '),
        //     'ledger.docid',
        //     'ledger.vtype',
        //     'ledger.vdate',
        //     DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
        //     'ledger.subcode',
        //     'acgroup.group_code as acgroupcode',
        //     'acgroup.maingroupcode',
        // )
        //     ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
        //     ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
        //     ->where('ledger.propertyid', $this->propertyid)
        //     ->where('acgroup.maingroupcode', $maingroupcode)
        //     ->whereBetween('ledger.vdate', [$fromdate, $todate])
        //     ->orderBy('subgroup.name');

        // $subgroups = $query->groupBy($groupByColumn)
        //     ->orderBy('subgroup.name')
        //     ->get();

        $propertyIds = implode(',', $allproperties);
        $dateCondition = $openingBalanceEnabled
            ? "ledger.vdate <= '{$todate}'"
            : "ledger.vdate BETWEEN '{$fromdate}' AND '{$todate}'";
        $subgroups = DB::table(DB::raw("(SELECT
        CASE WHEN acgroup.undergroup = 'Y' THEN subgroup.name ELSE acgroup.group_name END AS name,
        CASE WHEN acgroup.undergroup = 'Y' THEN 0 ELSE 1 END AS groupynvalue,
        SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance,
        acgroup.group_code as acgroupcode,
        ledger.docid,
        ledger.vtype,
        ledger.vdate,
        DATE_FORMAT(ledger.vdate, '%Y') AS year,
        acgroup.maingroupcode,
        acgroup.undergroup,
        ledger.subcode
            FROM ledger
            LEFT JOIN subgroup ON subgroup.sub_code = ledger.subcode
            LEFT JOIN acgroup ON acgroup.group_code = subgroup.group_code
            WHERE ledger.propertyid IN ({$propertyIds})
                AND acgroup.maingroupcode = {$maingroupcode}
                AND acgroup.propertyid IN ({$propertyIds})
                AND {$dateCondition}
            GROUP BY name, groupynvalue
        ) AS x"))
            ->select(
                'name',
                'groupynvalue',
                DB::raw('SUM(balance) AS balance'),
                'acgroupcode',
                'docid',
                'vtype',
                'vdate',
                'year',
                'maingroupcode',
                'subcode',
                'undergroup'
            )
            ->groupBy('name', 'groupynvalue')
            ->orderBy('name', 'asc')
            ->get();

        $data = [
            'subgroups' => $subgroups
        ];
        return response()->json($data);
    }

    public function fetchsubgroupdetails2(Request $request)
    {
        $maingroupcode = $request->maingroupcode;
        $group_code = $request->group_code;
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $openingbalance = $request->openingbalance;
        $acgroupcode = $request->acgroupcode;
        $allproperties = $request->allproperties;
        $openingBalanceEnabled = ($openingbalance !== 'not checked');

        // $undergroup = ACGroup::where('propertyid', $this->propertyid)->where('group_code', $group_code)->value('undergroup');
        // $groupByColumn = $undergroup == "N"
        //     ? 'acgroup.group_code'
        //     : 'ledger.subcode';

        // Log::info('Group Code: ' . $group_code . ', Undergroup: ' . $undergroup . ', Group By Column: ' . $groupByColumn);

        $query = Ledger::select(
            'subgroup.name',
            'ledger.docid',
            'ledger.vtype',
            'ledger.vdate',
            DB::raw('DATE_FORMAT(ledger.vdate, "%Y") AS year'),
            DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
            'ledger.subcode',
            'acgroup.group_code as acgroupcode',
            'acgroup.maingroupcode',
        )
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
            ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
            ->whereIn('ledger.propertyid', $allproperties)
            ->where('acgroup.group_code', $acgroupcode)
            // ->where('acgroup.maingroupcode', $maingroupcode)
            ->when(!$openingBalanceEnabled, function ($q) use ($fromdate, $todate) {
                $q->whereBetween('ledger.vdate', [$fromdate, $todate]);
            })
            ->when($openingBalanceEnabled, function ($q) use ($todate) {
                $q->where('ledger.vdate', '<=', $todate);
            })
            ->orderBy('subgroup.name');

        $subgroups = $query->groupBy('ledger.subcode')
            ->orderBy('subgroup.name')
            ->get();

        $data = [
            'subgroups' => $subgroups
        ];
        return response()->json($data);
    }

    public function detailedTrialLedger(Request $request)
    {
        $permission = revokeopen(111211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate = $this->datemanage['mtd']['start'];
        $todate = $this->ncurdate;

        $companyName = $this->company->comp_name ?? '';
        $reportDate = $this->ncurdate;

        return view('property.finance.detailedtrialledger', compact('fromdate', 'todate', 'companyName', 'reportDate'));
    }

    public function detailedTrialLedgerQuery(Request $request)
    {
        $request->validate([
            'fromdate' => 'required|date',
            'todate' => 'required|date|after_or_equal:fromdate',
        ]);

        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $propertyid = $this->propertyid;

        $data = DB::table('subgroup as s')
            ->leftJoin('acgroup as a', 's.group_code', '=', 'a.group_code')
            ->leftJoin('ledger as l', function ($join) use ($propertyid) {
                $join->on('s.sub_code', '=', 'l.subcode')
                    ->where('l.propertyid', $propertyid);
            })
            ->where('s.propertyid', $propertyid)
            ->select(
                's.sub_code',
                's.name',
                'a.group_name'
            )
            ->selectRaw('SUM(CASE WHEN l.vdate < ? THEN l.amtdr ELSE 0 END) AS opening_dr', [$fromdate])
            ->selectRaw('SUM(CASE WHEN l.vdate < ? THEN l.amtcr ELSE 0 END) AS opening_cr', [$fromdate])
            ->selectRaw('SUM(CASE WHEN l.vdate BETWEEN ? AND ? THEN l.amtdr ELSE 0 END) AS trans_dr', [$fromdate, $todate])
            ->selectRaw('SUM(CASE WHEN l.vdate BETWEEN ? AND ? THEN l.amtcr ELSE 0 END) AS trans_cr', [$fromdate, $todate])
            ->selectRaw('SUM(CASE WHEN l.vdate <= ? THEN l.amtdr ELSE 0 END) AS closing_dr', [$todate])
            ->selectRaw('SUM(CASE WHEN l.vdate <= ? THEN l.amtcr ELSE 0 END) AS closing_cr', [$todate])
            ->groupBy('s.sub_code', 's.name', 'a.group_name')
            ->orderBy('a.group_name')
            ->orderBy('s.name')
            ->get()
            ->filter(function ($row) {
                // remove rows where all amounts are zero or null
                $vals = [
                    (float) ($row->opening_dr ?? 0),
                    (float) ($row->opening_cr ?? 0),
                    (float) ($row->trans_dr ?? 0),
                    (float) ($row->trans_cr ?? 0),
                    (float) ($row->closing_dr ?? 0),
                    (float) ($row->closing_cr ?? 0),
                ];

                foreach ($vals as $v) {
                    if (abs($v) > 0.00001) {
                        return true;
                    }
                }
                return false;
            })->values();

        return response()->json(['data' => $data]);
    }

    public function printDetailedTrialLedger(Request $request)
    {
        $fromDate = $request->query('fromdate', $this->datemanage['mtd']['start']);
        $toDate = $request->query('todate', $this->ncurdate);

        try {
            $from = Carbon::parse($fromDate)->format('Y-m-d');
            $to = Carbon::parse($toDate)->format('Y-m-d');
        } catch (Exception $e) {
            $from = $this->datemanage['mtd']['start'];
            $to = $this->ncurdate;
        }

        if ($from > $to) {
            [$from, $to] = [$to, $from];
        }

        $propertyid = $this->propertyid;

        $reportData = DB::table('subgroup as s')
            ->leftJoin('acgroup as a', 's.group_code', '=', 'a.group_code')
            ->leftJoin('ledger as l', function ($join) use ($propertyid) {
                $join->on('s.sub_code', '=', 'l.subcode')
                    ->where('l.propertyid', $propertyid);
            })
            ->where('s.propertyid', $propertyid)
            ->select(
                's.sub_code',
                's.name',
                'a.group_name'
            )
            ->selectRaw('SUM(CASE WHEN l.vdate < ? THEN l.amtdr ELSE 0 END) AS opening_dr', [$from])
            ->selectRaw('SUM(CASE WHEN l.vdate < ? THEN l.amtcr ELSE 0 END) AS opening_cr', [$from])
            ->selectRaw('SUM(CASE WHEN l.vdate BETWEEN ? AND ? THEN l.amtdr ELSE 0 END) AS trans_dr', [$from, $to])
            ->selectRaw('SUM(CASE WHEN l.vdate BETWEEN ? AND ? THEN l.amtcr ELSE 0 END) AS trans_cr', [$from, $to])
            ->selectRaw('SUM(CASE WHEN l.vdate <= ? THEN l.amtdr ELSE 0 END) AS closing_dr', [$to])
            ->selectRaw('SUM(CASE WHEN l.vdate <= ? THEN l.amtcr ELSE 0 END) AS closing_cr', [$to])
            ->groupBy('s.sub_code', 's.name', 'a.group_name')
            ->orderBy('a.group_name')
            ->orderBy('s.name')
            ->get()
            ->filter(function ($row) {
                $vals = [
                    (float) ($row->opening_dr ?? 0),
                    (float) ($row->opening_cr ?? 0),
                    (float) ($row->trans_dr ?? 0),
                    (float) ($row->trans_cr ?? 0),
                    (float) ($row->closing_dr ?? 0),
                    (float) ($row->closing_cr ?? 0),
                ];
                foreach ($vals as $v) {
                    if (abs($v) > 0.00001) {
                        return true;
                    }
                }
                return false;
            })->values();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView(
            'property.print.printdetailedtrialledger',
            [
                'company' => $this->company,
                'reportData' => $reportData,
                'fromDate' => $from,
                'toDate' => $to,
            ]
        )->setPaper('a4', 'landscape');

        return $pdf->stream('detailed-trial-ledger.pdf');
    }

    public function exportDetailedTrialLedger(Request $request)
    {
        $request->validate([
            'fromdate' => 'required|date',
            'todate'   => 'required|date|after_or_equal:fromdate',
        ]);

        $companyName = $this->company->comp_name ?? '';

        $export = new \App\Exports\DetailedTrialLedgerExport(
            $request->fromdate,
            $request->todate,
            $this->propertyid,
            $companyName
        );

        return $export->download();
    }

    public function trailbalance(Request $request)
    {
        $permission = revokeopen(111211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        return view('property.finance.trailbalance');
    }

    public function trialmainquery(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $openingbalance = $request->openingbalance;
        $allproperties = $request->allproperties;

        if (empty($allproperties)) {
            return response()->json([
                'success' => false,
                'message' => 'No property selected.'
            ], 422);
        }

        if (empty($fromdate) || empty($todate)) {
            return response()->json([
                'success' => false,
                'message' => 'Date range is required.'
            ], 422);
        }

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
                ->whereIn('ledger.propertyid', $allproperties)
                ->whereBetween('ledger.vdate', [$fromdate, $todate])
                ->groupBy('ledger.subcode')
                ->orderBy('subgroup.name')
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
                ->whereIn('ledger.propertyid', $allproperties)
                ->where('vdate', '<=', $todate)
                ->groupBy('ledger.subcode')
                ->orderBy('subgroup.name')
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
        $openingbalanceFlag = $request->openingbalance;
        $allproperties = $request->allproperties;
        $openingBalanceEnabled = ($openingbalanceFlag !== 'not checked');

        if (empty($allproperties)) {
            return response()->json(['success' => false, 'message' => 'No property selected.'], 422);
        }
        $data = Ledger::selectRaw("DATE_FORMAT(vdate, '%M %Y') AS month_year, DATE_FORMAT(vdate, '%m') AS month_number, subcode, vprefix")
            ->selectRaw('COUNT(*) AS total_entries')
            ->selectRaw('SUM(amtdr) AS totalamtdr')
            ->selectRaw('SUM(amtcr) AS totalamtcr')
            ->selectRaw('DATE_FORMAT(vdate, "%Y") AS year')
            ->whereIn('propertyid', $allproperties)
            ->whereBetween('ledger.vdate', [$fromdate, $todate])
            ->where('subcode', $sub_code)
            ->groupByRaw("DATE_FORMAT(vdate, '%Y-%m')")
            ->orderBy('vdate')
            ->get();

        $openingbalance = 0.00;
        if ($openingBalanceEnabled) {
            $openingbalance = Ledger::whereIn('propertyid', $allproperties)
                ->where('vdate', '<', $fromdate)
                ->where('subcode', $sub_code)
                ->selectRaw('SUM(amtdr) - SUM(amtcr) AS balance')
                ->value('balance') ?? 0.00;
        }

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
        $openingbalanceFlag = $request->openingbalance;
        $openingBalanceEnabled = ($openingbalanceFlag !== 'not checked');

        $condition = $request->condition;
        $allproperties = $request->allproperties;

        if (empty($allproperties)) {
            return response()->json(['success' => false, 'message' => 'No property selected.'], 422);
        }
        $datatmp = Ledger::selectRaw('vdate, vno, vtype, MAX(narration) as narration, MAX(docid) as docid, SUM(amtdr) as amtdr, SUM(amtcr) as amtcr')
            ->whereIn('propertyid', $allproperties)
            ->where('subcode', $sub_code)
            // ->whereYear('vdate', $vprefix)
            ->where('vprefix', $vprefix)
            // ->where('ledger.vdate', '<=', $todate)
            ->whereBetween('ledger.vdate', [$fromdate, $todate])
            ->groupBy('vdate', 'vno', 'vtype', 'vsno')
            ->orderBy('vdate')
            ->orderBy('vno');

        if ($condition == 1) {
            $data = $datatmp->get();
        } else {
            $data = $datatmp->whereMonth('vdate', $month_number)->get();
        }

        $opening_balance = 0;
        if ($openingBalanceEnabled) {
            $opening_balance = Ledger::whereIn('propertyid', $allproperties)
                ->where('subcode', $sub_code)
                ->where('vdate', '<', $fromdate)
                ->selectRaw('SUM(amtdr) - SUM(amtcr) as balance')
                ->value('balance') ?? 0;
        }

        // return $data;

        return response()->json([
            'data' => $data,
            'opening_balance' => $opening_balance
        ]);
    }

    public function profitloss(Request $request)
    {
        // $permission = revokeopen(111213);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        return view('property.finance.profitloss');
    }

    public function profitlossmainquery(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $detailed = $request->detailed ?? false;
        $allproperties = $request->allproperties;

        $saleGroupCodes = array_map(function ($prop) {
            return "25{$prop}";
        }, $allproperties);
        $closingstockGroupCodes = array_map(function ($prop) {
            return "6{$prop}";
        }, $allproperties);
        $openingstockGroupCodes = array_map(function ($prop) {
            return "20{$prop}";
        }, $allproperties);
        $purchaseGroupCodes = array_map(function ($prop) {
            return "23{$prop}";
        }, $allproperties);
        $directexpensesGroupCodes = array_map(function ($prop) {
            return "10{$prop}";
        }, $allproperties);
        $indirectexpensesGroupCodes = array_map(function ($prop) {
            return "14{$prop}";
        }, $allproperties);
        $indirectincomeGroupCodes = array_map(function ($prop) {
            return "15{$prop}";
        }, $allproperties);
        $directincomeGroupCodes = array_map(function ($prop) {
            return "11{$prop}";
        }, $allproperties);

        $sale = ACGroup::whereIn('propertyid', $allproperties)
            ->whereIn('group_code', $saleGroupCodes)
            ->first();

        $closingstock = ACGroup::whereIn('propertyid', $allproperties)
            ->whereIn('group_code', $closingstockGroupCodes)
            ->first();

        $openingstock = ACGroup::whereIn('propertyid', $allproperties)
            ->whereIn('group_code', $openingstockGroupCodes)
            ->first();

        $purchaseaccount = ACGroup::whereIn('propertyid', $allproperties)
            ->whereIn('group_code', $purchaseGroupCodes)
            ->first();

        $directexpenses = ACGroup::whereIn('propertyid', $allproperties)
            ->whereIn('group_code', $directexpensesGroupCodes)
            ->first();

        $indirectexpenses = ACGroup::whereIn('propertyid', $allproperties)
            ->whereIn('group_code', $indirectexpensesGroupCodes)
            ->first();

        $indirectincome = ACGroup::whereIn('propertyid', $allproperties)
            ->whereIn('group_code', $indirectincomeGroupCodes)
            ->first();

        $directincome = ACGroup::whereIn('propertyid', $allproperties)
            ->whereIn('group_code', $directincomeGroupCodes)
            ->first();

        $detailedGroups = [
            'sale',
            'closingstock',
            'openingstock',
            'purchaseaccount',
            'directexpenses',
            'directincome',
            'indirectexpenses',
            'indirectincome',
        ];

        $groupCodesMap = [
            'sale' => $saleGroupCodes,
            'closingstock' => $closingstockGroupCodes,
            'openingstock' => $openingstockGroupCodes,
            'purchaseaccount' => $purchaseGroupCodes,
            'directexpenses' => $directexpensesGroupCodes,
            'indirectexpenses' => $indirectexpensesGroupCodes,
            'indirectincome' => $indirectincomeGroupCodes,
            'directincome' => $directincomeGroupCodes,
        ];

        $groupsac = [
            'sale' => $sale,
            'closingstock' => $closingstock,
            'openingstock' => $openingstock,
            'purchaseaccount' => $purchaseaccount,
            'directexpenses' => $directexpenses,
            'indirectexpenses' => $indirectexpenses,
            'indirectincome' => $indirectincome,
            'directincome' => $directincome,
        ];

        Log::info("groupac: " . json_encode($groupsac, JSON_PRETTY_PRINT));
        Log::info("groupCodesMap: " . json_encode($groupCodesMap, JSON_PRETTY_PRINT));

        foreach ($groupsac as $key => $group) {
            $accountrows = Ledger::select(
                'acgroup.maingroupname as name',
                'acgroup.group_code',
                'acgroup.maingroupcode',
                DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                'acgroup.undergroup'
            )
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
                ->whereIn('ledger.propertyid', $allproperties)
                ->whereBetween('ledger.vdate', [$fromdate, $todate])
                ->whereIn('acgroup.group_code', $groupCodesMap[$key])
                ->groupBy(
                    'acgroup.maingroupcode',
                    'acgroup.maingroupname',
                    'acgroup.group_code'
                )
                ->orderBy('acgroup.maingroupname')
                ->get();

            $groupsac[$key . '_rows'] = $accountrows;

            if ($detailed && in_array($key, $detailedGroups)) {
                $subgroups = Ledger::select([
                    DB::raw('
                        CASE 
                            WHEN acgroup.undergroup = "Y" 
                            THEN subgroup.name 
                            ELSE acgroup.group_name 
                        END AS name
                    '),
                    DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                    'ledger.subcode',
                    'acgroup.undergroup',
                    'acgroup.group_code as acgroupcode',
                    'ledger.vdate',
                ])
                    ->selectRaw('DATE_FORMAT(ledger.vdate, "%Y") AS year')
                    ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                    ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
                    ->whereIn('ledger.propertyid', $allproperties)
                    ->whereBetween('ledger.vdate', [$fromdate, $todate])
                    // ->whereIn('subgroup.group_code', $groupCodesMap[$key])
                    ->whereIn('acgroup.maingroupcode', $accountrows->pluck('maingroupcode')->unique()->toArray())
                    ->groupBy(
                        'ledger.subcode',
                        'acgroup.undergroup',
                        'acgroup.group_code',
                        'acgroup.group_name',
                        'subgroup.name'
                    )
                    ->orderBy('name')
                    ->get();

                $groupsac[$key . '_subgroups'] = $subgroups;
            }
        }

        $data = [
            'groupsac' => $groupsac,
            'detailed' => $detailed
        ];

        return response()->json($data);
    }

    public function profitlosssecondqueryhf(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $detailed = $request->detailed ?? false;
        $allproperties = $request->allproperties;
        $groupcode = $request->group_code;

        $subgroups = Ledger::select([
            'subgroup.name',
            DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
            'ledger.subcode',
            'acgroup.undergroup',
            'acgroup.group_code as acgroupcode',
            'ledger.vdate',
        ])
            ->selectRaw('DATE_FORMAT(ledger.vdate, "%Y") AS year')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
            ->join('acgroup', function ($join) {
                $join->on('acgroup.group_code', '=', 'subgroup.group_code')
                    ->on('acgroup.propertyid', '=', 'ledger.propertyid');
            })
            ->whereIn('ledger.propertyid', $allproperties)
            ->whereBetween('ledger.vdate', [$fromdate, $todate])
            ->where('acgroup.group_code', $groupcode)
            ->groupBy(
                'ledger.subcode',
                'acgroup.undergroup',
                'acgroup.group_code',
                'acgroup.group_name',
                'subgroup.name'
            )
            ->orderBy('name')
            ->get();

        return response()->json([
            'subgroups' => $subgroups
        ]);
    }

    public function balancesheet(Request $request)
    {
        return view('property.finance.balancesheet');
    }

    public function balancesheetmainquery(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $detailed = $request->detailed ?? false;
        $allproperties = $request->allproperties;

        // Right Side: Assets (using maingroupcode 50, 60, 40)
        $investments = ACGroup::whereIn('propertyid', $allproperties)
            ->where('maingroupcode', '50')
            ->first();

        $currentassets = ACGroup::whereIn('propertyid', $allproperties)
            ->where('maingroupcode', '60')
            ->first();

        $fixedassets = ACGroup::whereIn('propertyid', $allproperties)
            ->where('maingroupcode', '40')
            ->first();

        // Left Side: All other accounts EXCEPT profit/loss codes and right-side asset codes
        // Build excluded group codes for all properties (same pattern as profitloss)
        $excludedGroupCodes = [];

        // P&L codes to exclude
        $excludedPrefixes = ['25', '23', '10', '14', '15', '11', '6', '20']; // Sale, Purchase, Direct Exp, Indirect Exp, Indirect Inc, Direct Inc, Closing Stock, Opening Stock

        // Asset codes to exclude (using maingroupcode 50, 60, 40)
        // Note: These use maingroupcode, not group_code pattern

        foreach ($allproperties as $prop) {
            foreach ($excludedPrefixes as $prefix) {
                $excludedGroupCodes[] = "{$prefix}{$prop}";
            }
        }

        // Get all left side groups (excluding P&L group_codes)
        $leftSideGroups = ACGroup::whereIn('propertyid', $allproperties)
            ->whereNotIn('group_code', $excludedGroupCodes)
            ->whereNotIn('maingroupcode', ['50', '60', '40']) // Also exclude asset maingroupcodes
            ->get();

        // When "Detailed" is checked, return subgroup totals for all displayed groups
        // (right-side assets + all left-side maingroupcodes).
        $detailedGroups = ['investments', 'currentassets', 'fixedassets'];

        // Right Side groups
        $rightSideGroupsAc = [
            'investments' => $investments,
            'currentassets' => $currentassets,
            'fixedassets' => $fixedassets,
        ];

        $groupsac = [];

        // Process Right Side (Assets) with maingroupcode
        foreach ($rightSideGroupsAc as $key => $group) {
            $groupsac[$key] = $group;

            if (!$group) {
                $groupsac[$key . '_rows'] = collect();
                continue;
            }

            $accountrows = Ledger::select(
                'acgroup.maingroupname as name',
                'acgroup.group_code',
                'acgroup.maingroupcode',
                DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                'acgroup.undergroup'
            )
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
                ->whereIn('ledger.propertyid', $allproperties)
                ->whereBetween('ledger.vdate', [$fromdate, $todate])
                ->where('acgroup.maingroupcode', $group->maingroupcode)
                ->groupBy('acgroup.maingroupcode', 'acgroup.maingroupname', 'acgroup.group_code')
                ->orderBy('acgroup.maingroupname')
                ->get();

            $groupsac[$key . '_rows'] = $accountrows;

            // Fetch subgroup details if detailed view is enabled
            if ($detailed && in_array($key, $detailedGroups)) {
                $subgroups = Ledger::select([
                    DB::raw('
                        CASE 
                            WHEN acgroup.undergroup = "Y" 
                            THEN subgroup.name 
                            ELSE acgroup.group_name 
                        END AS name
                    '),
                    DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                    'ledger.subcode',
                    'acgroup.undergroup',
                    'acgroup.group_code as acgroupcode',
                ])
                    ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                    ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
                    ->whereIn('ledger.propertyid', $allproperties)
                    ->whereBetween('ledger.vdate', [$fromdate, $todate])
                    ->where('acgroup.maingroupcode', $group->maingroupcode)
                    ->groupBy('ledger.subcode', 'acgroup.undergroup', 'acgroup.group_code', 'acgroup.group_name', 'subgroup.name')
                    ->orderBy('name')
                    ->get();

                $groupsac[$key . '_subgroups'] = $subgroups;
            }
        }

        // Process Left Side (Liabilities & Capital) - all groups except excluded ones
        $leftSideRows = [];
        $leftSideGroupsMeta = []; // keyed by maingroupcode
        foreach ($leftSideGroups as $leftGroup) {
            $accountrows = Ledger::select(
                'acgroup.maingroupname as name',
                'acgroup.group_code',
                'acgroup.maingroupcode',
                DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                'acgroup.undergroup'
            )
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
                ->whereIn('ledger.propertyid', $allproperties)
                ->whereBetween('ledger.vdate', [$fromdate, $todate])
                ->where('acgroup.maingroupcode', $leftGroup->maingroupcode)
                ->groupBy('acgroup.maingroupcode', 'acgroup.maingroupname', 'acgroup.group_code')
                ->orderBy('acgroup.maingroupname')
                ->get();

            if ($accountrows->isNotEmpty()) {
                $leftSideRows = array_merge($leftSideRows, $accountrows->toArray());
            }

            // Capture meta once per maingroupcode (across properties)
            if (!isset($leftSideGroupsMeta[$leftGroup->maingroupcode])) {
                $leftSideGroupsMeta[$leftGroup->maingroupcode] = [
                    'maingroupcode' => $leftGroup->maingroupcode,
                    'name' => $leftGroup->maingroupname ?? $leftGroup->group_name ?? null,
                ];
            }
        }

        $groupsac['leftside_rows'] = collect($leftSideRows);

        if ($detailed) {
            $leftSideSubgroupsByMain = [];

            foreach ($leftSideGroupsMeta as $meta) {
                $mainCode = $meta['maingroupcode'];

                $subgroups = Ledger::select([
                    DB::raw('
                        CASE 
                            WHEN acgroup.undergroup = "Y" 
                            THEN subgroup.name 
                            ELSE acgroup.group_name 
                        END AS name
                    '),
                    DB::raw('SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance'),
                    'ledger.subcode',
                    'acgroup.undergroup',
                    'acgroup.group_code as acgroupcode',
                ])
                    ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                    ->leftJoin('acgroup', 'acgroup.group_code', '=', 'subgroup.group_code')
                    ->whereIn('ledger.propertyid', $allproperties)
                    ->whereBetween('ledger.vdate', [$fromdate, $todate])
                    ->where('acgroup.maingroupcode', $mainCode)
                    ->groupBy('ledger.subcode', 'acgroup.undergroup', 'acgroup.group_code', 'acgroup.group_name', 'subgroup.name')
                    ->orderBy('name')
                    ->get();

                $leftSideSubgroupsByMain[$mainCode] = $subgroups;
            }

            $groupsac['leftside_groups_meta'] = array_values($leftSideGroupsMeta);
            $groupsac['leftside_subgroups_by_maingroupcode'] = $leftSideSubgroupsByMain;
        }

        $data = [
            'groupsac' => $groupsac,
            'detailed' => $detailed
        ];

        return response()->json($data);
    }

    public function tdsreport(Request $request)
    {
        // $permission = revokeopen(111214);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }

        $company = $this->company;

        // Combine address1 and address2
        $fullAddress = trim(($company->address1 ?? '') . ' ' . ($company->address2 ?? ''));

        $statename = DB::table('states')
            ->where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // Logo path logic
        $logoPath = null;
        $logoBase64 = null;
        $logoMimeType = null;
        if (!empty($company->logo) && Storage::disk('public')->exists('admin/property_logo/' . $company->logo)) {
            $logoPath = storage_path('app/public/admin/property_logo/' . $company->logo);
            if (file_exists($logoPath)) {
                $imageData = file_get_contents($logoPath);
                $logoBase64 = base64_encode($imageData);
                // Detect MIME type
                $finfo = finfo_open(FILEINFO_MIME_TYPE);
                $logoMimeType = finfo_file($finfo, $logoPath);
                finfo_close($finfo);
            }
        }

        return view('property.finance.tdsreport', [
            'company' => $company,
            'statename' => $statename,
            'fulladdress' => $fullAddress,
            'logoPath' => $logoPath,
            'logoBase64' => $logoBase64,
            'logoMimeType' => $logoMimeType
        ]);
    }

    public function tdsreportdata(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;
        $allproperties = $request->allproperties ?? [$this->propertyid];

        // Updated query as per sir's requirement - using ledger_tds table
        $tdsData = DB::table('ledger_tds as T')
            ->select([
                'T.docid',
                'T.vdate',
                'T.onamt',
                'T.tds',
                'T.tdsamt',
                'S.name as PartyName'
            ])
            ->join('subgroup as S', 'T.tdsdrcode', '=', 'S.sub_code')
            ->whereIn('T.propertyid', $allproperties)
            ->whereBetween('T.vdate', [$fromdate, $todate])
            ->orderBy('T.vdate')
            ->orderBy('T.docid')
            ->get();

        if ($tdsData->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No TDS Data Found'
            ]);
        }

        return response()->json([
            'success' => true,
            'data' => $tdsData,
            'fromdate' => $fromdate,
            'todate' => $todate
        ]);
    }
}
