<?php

namespace App\Http\Controllers;

use App\Models\Companyreg;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PurchaseController extends Controller
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

            if (! Auth::check()) {
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

    /* ================= FINANCIAL YEAR ================= */

    public function getyear()
    {
        // Get current date
        $today = Carbon::parse($this->ncurdate);

        // Determine financial year start
        if ($today->month >= 4) {
            // If current month is April (4) or later, FY started this year
            $financialYearStart = Carbon::create($today->year, 4, 1)->startOfDay();
        } else {
            // If current month is Jan, Feb, Mar, FY started last year
            $financialYearStart = Carbon::create($today->year - 1, 4, 1)->startOfDay();
        }

        // FY end date
        $financialYearEnd = $financialYearStart->copy()->addYear()->subDay(); // March 31 of next year

        return $financialYearStart->toDateString(); // e.g., "2025-04-01"
    }


    public function totalPurchase(Request $request)
    {
        $godowns = DB::table('purch2 as P')
            ->leftJoin('itemmast as I', 'P.Item', '=', 'I.Code')
            ->leftJoin('itemgrp as IG', 'I.ItemGroup', '=', 'IG.code')
            ->where('P.propertyid', $this->propertyid)
            ->distinct()
            ->get(['I.ItemGroup', 'IG.name']);

        $rows = [];

        $startOfMonth = Carbon::parse($this->ncurdate)->startOfMonth()->toDateString();
        $startOfYear = $this->getyear();

        foreach ($godowns as $g) {
            $today_cash = $this->gettotalpurchaseByStatus(
                'PBPC',
                $this->ncurdate,
                null,
                $g->ItemGroup
            );

            $today_credit = $this->gettotalpurchaseByStatus(
                'PBPB',
                $this->ncurdate,
                null,
                $g->ItemGroup
            );

            $month_cash = $this->gettotalpurchaseByStatus(
                'PBPC',
                $startOfMonth,
                $this->ncurdate,
                $g->ItemGroup
            );

            $month_credit = $this->gettotalpurchaseByStatus(
                'PBPB',
                $startOfMonth,
                $this->ncurdate,
                $g->ItemGroup
            );

            $year_cash = $this->gettotalpurchaseByStatus(
                'PBPC',
                $startOfYear,
                $this->ncurdate,
                $g->ItemGroup
            );

            $year_credit = $this->gettotalpurchaseByStatus(
                'PBPB',
                $startOfYear,
                $this->ncurdate,
                $g->ItemGroup
            );

            $total = $today_cash + $today_credit + $month_cash + $month_credit + $year_cash + $year_credit;

            $rows[] = [
                'godown' => $g->name,
                'today_cash' => $today_cash,
                'today_credit' => $today_credit,
                'month_cash' => $month_cash,
                'month_credit' => $month_credit,
                'year_cash' => $year_cash,
                'year_credit' => $year_credit,
                'total' => $total,
            ];
        }

        return view('property.purchase.total_purchase', compact('rows'));
    }


    public function gettotalpurchaseByStatus(
        $type,
        $formdate,
        $todate,
        $itemGroup = null
    ) {
        $result = DB::table('purch2 as P')
            ->leftJoin('itemmast as I', 'P.Item', '=', 'I.Code')
            ->where('P.propertyid', $this->propertyid)
            ->whereIn('P.delflag', ['N', ''])
            ->where('P.vtype', $type);


        if ($itemGroup !== null) {
            $result->where('I.ItemGroup', $itemGroup);
        }

        if ($formdate !== null && $todate !== null) {
            $result->whereBetween('P.vdate', [$formdate, $todate]);
        } elseif ($formdate !== null) {
            $result->whereDate('P.vdate', $formdate);
        }

        $amount = $result->sum('P.amount');

        return $amount ?? 0;
    }

    //code by abhishek start
    /* ================= PURCHASE REGISTER REPORT ================= */

    // public function finalpurchaseregisters(Request $request)
    // {
    //     return 'ssss';
    //     $fromdate = $request->fromdate;
    //     $todate = $request->todate;
    //     $purchase_type = $request->purchase_type;
    //     $party = $request->party;
    //     $items = $request->items;
    //     $taxstru = $request->taxstru;

    //     return $purchase_type;

    //     $query = "
    //     SELECT
    //         P.DocId,
    //         P.VType,
    //         P.VNo as vno,
    //         P.VDate as vdate,
    //         P.PartyBillNo,
    //         SG.Name as PartyName,
    //         P.NetAmt as netamt,
    //         P.Total as total,
    //         P.AddAmt as Addition,
    //         P.DedAmt as Deduction,
    //         P.DiscAmt as discamt,
    //         P.Tax as TaxAmt,
    //         P.IGST as igst,
    //         P.CGST as cgst,
    //         P.SGST as sgst,
    //         I.Name as Item,
    //         P2.RecdQty as qty,
    //         P2.RecdUnit as recdunit,
    //         P2.ItemRate as Rate,
    //         P2.Amount as amount,
    //         SG1.Name as AcName
    //     FROM purch1 P
    //     INNER JOIN voucher_type VT 
    //         ON P.VType = VT.V_Type 
    //         AND P.propertyid = VT.propertyid
    //     INNER JOIN subgroup SG 
    //         ON P.Party = SG.sub_code
    //     INNER JOIN purch2 P2 
    //         ON P.DocId = P2.DocId
    //     INNER JOIN itemmast I 
    //         ON P2.Item = I.Code 
    //         AND I.ItemType = 'Store'
    //     LEFT JOIN subgroup SG1 
    //         ON SG1.sub_code = P2.AcCode
    //     WHERE VT.ncat IN ('PBR','PBC')
    //         AND P.propertyid = ?
    //         AND P.VDate BETWEEN ? AND ?
    // ";

    //     $bindings = [$this->propertyid, $fromdate, $todate];

    //     // Purchase Type Filter (Cash/Credit)
    //     return $purchase_type;
    //     if (!empty($purchase_type)) {
    //         $placeholders = implode(',', array_fill(0, count($purchase_type), '?'));
    //         return $placeholders;
    //         $query .= " AND P.VType IN ($placeholders)";
    //         $bindings = array_merge($bindings, $purchase_type);
    //     }

    //     // Party Filter
    //     if (!empty($party)) {
    //         $placeholders = implode(',', array_fill(0, count($party), '?'));
    //         $query .= " AND P.Party IN ($placeholders)";
    //         $bindings = array_merge($bindings, $party);
    //     }

    //     // Items Filter
    //     if (!empty($items)) {
    //         $placeholders = implode(',', array_fill(0, count($items), '?'));
    //         $query .= " AND P2.Item IN ($placeholders)";
    //         $bindings = array_merge($bindings, $items);
    //     }

    //     $query .= " ORDER BY P.VDate ASC, P.DocId ASC";

    //     $data = DB::select($query, $bindings);

    //     return response()->json($data);
    // }
    //code by abhihsek end



}
