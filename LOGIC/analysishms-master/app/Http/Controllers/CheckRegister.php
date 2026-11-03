<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Revmast;
use App\Models\Paycharge;
use App\Models\SubGroup;
use App\Models\Companyreg;
use App\Models\States;
use Illuminate\Support\Facades\Auth;

class CheckRegister extends Controller
{

    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (Auth::check()) {
                $this->propertyid = Auth::user()->propertyid;
            }
            return $next($request);
        });
    }

    public function chequeClearedRegister()
    {
        // Fetch all bank accounts for the dropdown
        $banks = SubGroup::where('propertyid', $this->propertyid)
            ->where('nature', 'Bank')
            ->orderBy('name')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.chequeclearedregister', [
            'banks' => $banks,
            'statename' => $statename
        ]);
    }

    public function fetchChequeClearedData(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $bankcode = $request->input('bankcode');

        // Query based on the provided SQL
        $data = DB::select("
            SELECT 
                L.clgdate as ClgDate,
                L.chqno as ChqNo,
                L.chqdate as ChqDate,
                L.vno as VrNo,
                S.Name as Particular, 
                L.AmtDr as Debit,
                L.AmtCr as Credit,
                (@bal := @bal + (IFNULL(L.AmtDr,0) - IFNULL(L.AmtCr,0))) AS Balance,
                L.Narration
            FROM ledger L
            INNER JOIN subgroup S ON L.ContraSub = S.sub_code
            CROSS JOIN (SELECT @bal := 0) b
            WHERE L.SubCode = ? 
           AND L.clgdate BETWEEN ? AND ?
            AND L.clgdate <> ''
            ORDER BY L.vdate, L.vno
        ", [$bankcode, $fromdate, $todate]);

        return response()->json($data);
    }

    public function chequeNotClearedRegister()
{
    // Fetch all bank accounts for the dropdown
    $banks = SubGroup::where('propertyid', $this->propertyid)
        ->where('nature', 'Bank')
        ->orderBy('name')
        ->get();

    $company = Companyreg::where('propertyid', $this->propertyid)->first();
    $statename = States::where('propertyid', $this->propertyid)
        ->where('state_code', $company->state_code)
        ->value('name');

    return view('property.chequenotclearedregister', [
        'banks' => $banks,
        'statename' => $statename
    ]);
}

public function fetchChequeNotClearedData(Request $request)
{
    $fromdate = $request->input('fromdate');
    $todate = $request->input('todate');
    $bankcode = $request->input('bankcode');

    \Log::info('Fetch Not Cleared Data Request', [
        'fromdate' => $fromdate,
        'todate' => $todate,
        'bankcode' => $bankcode
    ]);

    // Query for NOT cleared cheques (clgdate IS NULL)
    $data = DB::select("
        SELECT 
            L.clgdate,
            L.chqno,
            L.chqdate,
            L.vno,
            S.Name as Particular, 
            L.AmtDr as Debit,
            L.AmtCr as Credit,
            (@bal := @bal + (IFNULL(L.AmtDr,0) - IFNULL(L.AmtCr,0))) AS Balance,
            L.Narration
        FROM ledger L
        INNER JOIN subgroup S ON L.ContraSub = S.sub_code,
        (SELECT @bal := 0) b
        WHERE L.SubCode = ? 
        AND L.clgdate IS NULL
        ORDER BY L.vdate, L.vno
    ", [$bankcode]);

    \Log::info('Fetch Not Cleared Data Result', ['count' => count($data)]);

    return response()->json($data);
}

    public function fetchpayApiData(Request $request)
    {
        $this->propertyid = $request->input('propertyid');

        $cgst = 'CGSS' . $this->propertyid;
        $sgst = 'SGSS' . $this->propertyid;
        $roundoff = 'ROFF' . $this->propertyid;
        $disc = 'DISC' . $this->propertyid;
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $seqrevcode = [];
        $revmast = Revmast::where('revmast.propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', '=', 'FOM' . $this->propertyid)
            ->whereNot('seq_no', '0')
            ->whereNotIn('revmast.rev_code', [$roundoff, $disc])
            ->distinct()
            ->orderBy('seq_no', 'ASC')
            ->get();

        $skipcode = [$roundoff, $disc];

        foreach ($revmast as $row) {
            $seqrevcode[] = $row->rev_code;
        }

        $selectFields = [
            'billno',
            DB::raw("SUM(CASE WHEN paycharge.sno IS NOT NULL THEN paycharge.amtdr ELSE 0 END) AS billamt"),
            DB::raw("SUM(CASE WHEN paycharge.sno = 1 THEN paycharge.amtdr ELSE 0 END) AS goods1"),
            DB::raw("SUM(CASE WHEN paycode = '{$cgst}' THEN amtdr - amtcr ELSE 0 END) AS cgstsum"),
            DB::raw("SUM(CASE WHEN paycode = '{$sgst}' THEN amtdr - amtcr ELSE 0 END) AS sgstsum"),
            DB::raw("SUM(CASE WHEN paycode = '{$roundoff}' THEN amtdr - amtcr ELSE 0 END) AS roundoff"),
            DB::raw("SUM(CASE WHEN paycode = '{$disc}' THEN amtcr ELSE 0 END) AS discount"),
            DB::raw("SUM(CASE WHEN paycode = '{$cgst}' THEN taxper ELSE 0 END) AS cgstsumtaxper"),
            DB::raw("SUM(CASE WHEN paycode = '{$sgst}' THEN taxper ELSE 0 END) AS sgstsumtaxper"),
        ];

        $dynamicAliases = [];

        foreach ($seqrevcode as $code) {
            $alias = "sum_" . strtolower(substr($code, 0, 4));
            $selectFields[] = DB::raw("SUM(CASE WHEN paycode = '{$code}' THEN amtdr ELSE 0 END) AS {$alias}");
            $dynamicAliases[] = $alias;
        }
        $mainQuery = DB::table('paycharge')
            ->select([
                'paycharge.sno1',
                'paycharge.vtype as payvtype',
                'paycharge.settledate',
                'paycharge.vprefix',
                'paycharge.taxper',
                'guestfolio.name as guestname',
                'guestfolio.vdate as checkindate',
                'roomocc.chkintime as checkintime',
                DB::raw("COALESCE(roomocc.chkoutdate, '') as chkoutdate"),
                'roomocc.chkouttime as chkouttime',
                'roomocc.docid as roomdocid',
                'roomocc.sno1 as rocc1',
                'guestfolio.busssource as bcode',
                'busssource.name as busssource',
                'guestprof.mobile_no as mobile_no',
                'guestfolio.company as compcode',
                'guestfolio.docid as folionodocid',
                'guestfolio.travelagent as travelcode',
                'paycharge.foliono',
                'paycharge.billno',
                'paycharge.docid',
                'paycharge.paycode',
                'paycharge.roomno',
                DB::raw('(roomocc.adult + roomocc.children) AS occ'),
                'roomocc.nodays as nights',
                'subcom.name as company',
                'subcom.gstin as compgstin',
                'travelcom.name as travelcompany',
                'travelcom.gstin as travelgstin',
                'booking.DocId as bookingdocid',
                'booking.BookNo AS bookno',
                'booking.RefBookNo AS refbookingid'
            ])
            ->leftJoin('roomocc', 'paycharge.folionodocid', '=', 'roomocc.docid')
            ->leftJoin('guestfolio', 'paycharge.folionodocid', '=', 'guestfolio.docid')
            ->leftJoin('guestprof', 'roomocc.guestprof', '=', 'guestprof.guestcode')
            ->leftJoin('subgroup AS subcom', 'guestfolio.company', '=', 'subcom.sub_code')
            ->leftJoin('subgroup AS travelcom', 'guestfolio.travelagent', '=', 'travelcom.sub_code')
            ->leftJoin('busssource', 'busssource.bcode', '=', 'guestfolio.busssource')
            ->leftJoin('booking', 'booking.DocId', '=', 'guestfolio.bookingdocid')
            ->where('paycharge.propertyid', $this->propertyid)
            ->whereBetween('paycharge.settledate', [$fromdate, $todate])
            ->where('paycharge.roomtype', 'RO')
            ->where('paycharge.foliono', '!=', 0)
            ->where('paycharge.billno', '!=', 0)
            ->where('roomocc.type', 'O');


        $mainQuery->groupBy('paycharge.billno')
            ->orderBy('paycharge.billno')
            ->orderBy('paycharge.settledate');



        $cgstQuery = DB::table('paycharge')
            ->select($selectFields)
            ->where('propertyid', $this->propertyid)
            ->whereBetween('settledate', [$fromdate, $todate])
            ->groupBy('billno');

        $resultQuery = DB::table(DB::raw("({$mainQuery->toSql()}) AS main_query"))
            ->mergeBindings($mainQuery)
            ->leftJoin(DB::raw("({$cgstQuery->toSql()}) AS cgst"), 'main_query.billno', '=', 'cgst.billno')
            ->mergeBindings($cgstQuery)
            ->select([
                'main_query.sno1',
                'main_query.paycode',
                'main_query.payvtype',
                'main_query.taxper',
                'main_query.rocc1',
                'main_query.settledate',
                'main_query.guestname',
                'main_query.checkindate',
                'main_query.checkintime',
                'main_query.roomdocid',
                'main_query.chkoutdate',
                'main_query.chkouttime',
                'main_query.mobile_no',
                'main_query.foliono',
                'main_query.billno',
                'main_query.folionodocid',
                'main_query.bookingdocid',
                'main_query.roomno',
                'main_query.occ',
                'main_query.nights',
                'main_query.vprefix',
                'cgst.sgstsum as sgstsum',
                'cgst.cgstsum as cgstsum',
                DB::raw('IFNULL(cgst.goods1, 0) AS goods1'),
                DB::raw('IFNULL(cgst.cgstsum, 0) AS cgstsum'),
                DB::raw('IFNULL(cgst.sgstsum, 0) AS sgstsum'),
                DB::raw('IFNULL(cgst.cgstsumtaxper, 0) AS cgstsumtaxper'),
                DB::raw('IFNULL(cgst.sgstsumtaxper, 0) AS sgsttaxper'),
                DB::raw('IFNULL(cgst.roundoff, 0) AS roundoff'),
                DB::raw('IFNULL(cgst.discount, 0) AS discount'),
                DB::raw('(IFNULL(cgst.cgstsum, 0) + IFNULL(cgst.sgstsum, 0)) AS total_tax'),
                DB::raw('IFNULL(cgst.billamt, 0) AS billamt'),
                'main_query.company',
                'main_query.compgstin',
                'main_query.travelcompany',
                'main_query.travelgstin',
                'main_query.compcode',
                'main_query.travelcode',
                'main_query.bookno',
                'main_query.refbookingid',
                'main_query.busssource',
                'main_query.bcode'
            ]);

        foreach ($dynamicAliases as $alias) {
            $resultQuery = $resultQuery->addSelect(DB::raw("IFNULL(cgst.{$alias}, 0) AS {$alias}"));
        }

        $resulttmp = $resultQuery->get();

        if ($resulttmp->isEmpty()) {
            return json_encode([
                'skipcode' => $skipcode,
                'report' => [],
                'revmast' => $revmast,
                'resultQuery' => []
            ]);
        }

        $roomDocIds = $resulttmp->pluck('roomdocid')->filter()->unique()->values()->toArray();

        $bulkPaymentQuery = DB::table('paycharge')
            ->leftJoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'paycharge.paycode')
                    ->where('revmast.field_type', '=', 'P');
            })
            ->whereIn('paycharge.folionodocid', $roomDocIds)
            ->where('modeset', 'S')
            ->where('paycharge.paycode', '!=', 'ROFF' . $this->propertyid)
            ->select([
                'paycharge.folionodocid',
                'paycharge.paytype',
                DB::raw('SUM(paycharge.amtcr) AS totalamt')
            ])
            ->groupBy('paycharge.folionodocid', 'paycharge.paytype')
            ->havingRaw('SUM(paycharge.amtcr) > 0');



        $bulkPaymentData = $bulkPaymentQuery->get()->groupBy('folionodocid');

        $bulkAdvanceData = Paycharge::whereIn('paycharge.folionodocid', $roomDocIds)
            ->where('paycharge.propertyid', $this->propertyid)
            ->whereIn('vtype', ['REC', 'CHK'])
            ->whereNull('modeset')
            ->select([
                'folionodocid',
                'sno1',
                DB::raw('SUM(paycharge.amtcr) AS advance_sum')
            ])
            ->groupBy('folionodocid', 'sno1')
            ->get()
            ->keyBy(function ($item) {
                return $item->folionodocid . '_' . $item->sno1;
            });

        $result = [];

        foreach ($resulttmp as $row) {
            $paymentDataForRoom = $bulkPaymentData->get($row->roomdocid, collect());

            $paytypeStr = $paymentDataForRoom->pluck('paytype')->implode(', ');
            $paymentStr = $paymentDataForRoom->pluck('totalamt')->implode(', ');



            $advanceKey = $row->roomdocid . '_' . $row->rocc1;
            $advancesum = $bulkAdvanceData->get($advanceKey)->advance_sum ?? 0;

            $row->paytype = $paytypeStr;
            $row->payment = $paymentStr;
            $row->advance = $advancesum;

            $result[] = $row;
        }




        $sale["Sales"] = [];
        foreach ($result as $item) {

            // ------------------ CGST & SGST (null-safe) ------------------
            $gettexcgst = Paycharge::where([
                ['propertyid', '=', $this->propertyid],
                ['paycode', '=', $cgst],
                ['sno1', '=', 1],
                ['billno', '=', $item->billno],
            ])->first(['amtdr', 'taxper']);

            $gettexsgst = Paycharge::where([
                ['propertyid', '=', $this->propertyid],
                ['paycode', '=', $sgst],
                ['sno1', '=', 1],
                ['billno', '=', $item->billno],
            ])->first(['amtdr', 'taxper']);

            $totalGSTRate = (($gettexcgst->taxper ?? 0) + ($gettexsgst->taxper ?? 0));

            // ------------------ PICK ALL PAYCODES FOR THIS BILL ------------------
            $paycodes = Paycharge::where('propertyid', $this->propertyid)
                ->where('billno', $item->billno)
                ->pluck('paycode')
                ->toArray();

            // Codes to skip
            $skip = [$cgst, $sgst, $roundoff, $disc];

            // Remove skipped codes
            $validCodes = array_values(array_diff($paycodes, $skip)); // reindexed

            // print_r($validCodes );

            // RMCH code setup
            $roomservi = 'RMCH' . $this->propertyid;
            $Cash      = 'CASH' . $this->propertyid;
            $tof       = 'TOUT' . $this->propertyid;

            // ------------------ CALCULATE TOTALS PER PAYCODE ------------------
            // We'll compute totals for every valid code. RMCH has special filter vtype != 'BRS'
            $codeTotals = [];

            // If RMCH exists in list, compute it with special condition and remove from validCodes
            if (in_array($roomservi, $validCodes)) {
                $codeTotals[$roomservi] = Paycharge::where([
                    ['propertyid', '=', $this->propertyid],
                    ['paycode', '=', $roomservi],
                    ['vtype', '!=', 'BRS'],
                    ['billno', '=', $item->billno],
                ])->sum('amtdr');

                // remove RMCH from codes to process further
                $validCodes = array_values(array_diff($validCodes, [$roomservi]));
            }

            // If RMCH exists in list, compute it with special condition and remove from validCodes
            if (in_array($Cash, $validCodes)) {
                $codeTotals[$Cash] = Paycharge::where([
                    ['propertyid', '=', $this->propertyid],
                    ['paycode', '=', $Cash],
                    ['billno', '=', $item->billno],
                ])->sum('amtcr');

                // remove RMCH from codes to process further
                $validCodes = array_values(array_diff($validCodes, [$Cash]));
            }

            // For the rest of valid codes, compute sum normally
            if (!empty($validCodes)) {
                // Use whereIn to reduce DB queries: get sums grouped by paycode in one query if desired.
                // Eloquent doesn't have a direct grouped sum helper, so we can use DB::table:
                $rows = DB::table('paycharge')
                    ->select('paycode', DB::raw('SUM(amtdr) as total_amtdr'))
                    ->where('propertyid', $this->propertyid)
                    ->where('billno', $item->billno)
                    ->whereIn('paycode', $validCodes)
                    ->groupBy('paycode')
                    ->get();

                foreach ($rows as $r) {
                    $codeTotals[$r->paycode] = (float) $r->total_amtdr;
                }

                // Ensure any codes not returned (zero rows) are present with 0.00
                foreach ($validCodes as $c) {
                    if (!isset($codeTotals[$c])) {
                        $codeTotals[$c] = 0.00;
                    }
                }
            }

            // ------------------ FETCH REVMAST FOR ALL CODES WE HAVE ------------------
            $codesToLookup = array_keys($codeTotals);

            if (!empty($codesToLookup)) {
                $recvList = Revmast::where('propertyid', $this->propertyid)
                    ->whereIn('rev_code', $codesToLookup)
                    ->get();
            } else {
                $recvList = collect();
            }

            // ------------------ BUILD DETAILS ARRAY (one detail per rev_code) ------------------
            $details = [];
            foreach ($recvList as $rev) {
                $revCode = $rev->rev_code;
                if ($revCode != $Cash) {
                    $taxableAmount = $codeTotals[$revCode] ?? 0.00;
                    if ($revCode == $tof) {
                        $getGst = 0;
                    } else {
                        $getGst = $totalGSTRate;
                    }
                    $details[] = [
                        "LedgerHead" => $rev->name ?? "",
                        "Taxable"    => $taxableAmount,
                        "GSTRate"    => $getGst,
                        "HSNCode"    => $rev->hsn_code ?? "",
                    ];
                }
            }

            // If there are any codeTotals that don't have a Revmast entry, and you still want them shown:
            // (optional) add them with LedgerHead = paycode
            foreach ($codeTotals as $codeKey => $amt) {
                if ($codeKey != $Cash) {
                    if ($amt == 0) continue; // optional skip zero
                    $existsInRecv = $recvList->firstWhere('rev_code', $codeKey);
                    if (!$existsInRecv) {
                        if ($codeKey == $tof) {
                            $getGst = 0;
                        } else {
                            $getGst = $totalGSTRate;
                        }
                        $details[] = [
                            "LedgerHead" => $codeKey,
                            "Taxable"    => $amt,
                            "GSTRate"    => $getGst,
                            "HSNCode"    => "",
                        ];
                    }
                }
            }

            // ------------------ INVOICE NUMBER ------------------
            $year = date('Y', strtotime($item->vprefix));
            $nextyear = $year + 1;

            $divcode = DB::table('company')
                ->where('propertyid', $this->propertyid)
                ->value('division_code');

            $invoiceno = $divcode
                ? $divcode . '/' . $year . '-' . substr($nextyear, -2) . '/' . $item->billno
                : 'BCNT/' . $year . '-' . substr($nextyear, -2) . '/' . $item->billno;

            // ------------------ FINAL SALES ENTRY ------------------
            $sale["Sales"][] = [
                "BillNo"     => $invoiceno,
                "BillDate"   => $item->chkoutdate ?? "",
                "DebitHead"  => $item->company ?? "Walk In",
                "GuestName"  => $item->guestname ?? "",
                "RoomNo"     => $item->roomno ?? "",
                "BillAmount" => $item->billamt ?? 0.00,
                "TOTALCGST"  => $item->cgstsum ?? 0.00,
                "TOTALSGST"  => $item->sgstsum ?? 0.00,
                "RountOff"   => $item->roundoff ?? 0.00,
                "GSTNO"      => $item->compgstin ?? "",
                "Details"    => $details
            ];
        }



        return response()->json($sale);
    }


    // public function fetchpayApiData(Request $request)
    // {
    //     $this->propertyid = $request->input('propertyid');

    //     $cgst = 'CGSS' . $this->propertyid;
    //     $sgst = 'SGSS' . $this->propertyid;
    //     $roundoff = 'ROFF' . $this->propertyid;
    //     $disc = 'DISC' . $this->propertyid;
    //     $fromdate = $request->input('fromdate');
    //     $todate = $request->input('todate');

    //     $seqrevcode = [];
    //     $revmast = Revmast::where('revmast.propertyid', $this->propertyid)
    //         ->where('field_type', 'C')
    //         ->where('Desk_code', '=', 'FOM' . $this->propertyid)
    //         ->whereNot('seq_no', '0')
    //         ->whereNotIn('revmast.rev_code', [$roundoff, $disc])
    //         ->distinct()
    //         ->orderBy('seq_no', 'ASC')
    //         ->get();

    //     $skipcode = [$roundoff, $disc];

    //     foreach ($revmast as $row) {
    //         $seqrevcode[] = $row->rev_code;
    //     }

    //     $selectFields = [
    //         'billno',
    //         DB::raw("SUM(CASE WHEN paycharge.sno IS NOT NULL THEN paycharge.amtdr ELSE 0 END) AS billamt"),
    //         DB::raw("SUM(CASE WHEN paycharge.sno = 1 THEN paycharge.amtdr ELSE 0 END) AS goods1"),
    //         DB::raw("SUM(CASE WHEN paycode = '{$cgst}' THEN amtdr - amtcr ELSE 0 END) AS cgstsum"),
    //         DB::raw("SUM(CASE WHEN paycode = '{$sgst}' THEN amtdr - amtcr ELSE 0 END) AS sgstsum"),
    //         DB::raw("SUM(CASE WHEN paycode = '{$roundoff}' THEN amtdr - amtcr ELSE 0 END) AS roundoff"),
    //         DB::raw("SUM(CASE WHEN paycode = '{$disc}' THEN amtcr ELSE 0 END) AS discount"),
    //         DB::raw("SUM(CASE WHEN paycode = '{$cgst}' THEN taxper ELSE 0 END) AS cgstsumtaxper"),
    //         DB::raw("SUM(CASE WHEN paycode = '{$sgst}' THEN taxper ELSE 0 END) AS sgstsumtaxper"),
    //     ];

    //     $dynamicAliases = [];

    //     foreach ($seqrevcode as $code) {
    //         $alias = "sum_" . strtolower(substr($code, 0, 4));
    //         $selectFields[] = DB::raw("SUM(CASE WHEN paycode = '{$code}' THEN amtdr ELSE 0 END) AS {$alias}");
    //         $dynamicAliases[] = $alias;
    //     }
    //     $mainQuery = DB::table('paycharge')
    //         ->select([
    //             'paycharge.sno1',
    //             'paycharge.vtype as payvtype',
    //             'paycharge.settledate',
    //             'paycharge.vprefix',
    //             'paycharge.taxper',
    //             'guestfolio.name as guestname',
    //             'guestfolio.vdate as checkindate',
    //             'roomocc.chkintime as checkintime',
    //             DB::raw("COALESCE(roomocc.chkoutdate, '') as chkoutdate"),
    //             'roomocc.chkouttime as chkouttime',
    //             'roomocc.docid as roomdocid',
    //             'roomocc.sno1 as rocc1',
    //             'guestfolio.busssource as bcode',
    //             'busssource.name as busssource',
    //             'guestprof.mobile_no as mobile_no',
    //             'guestfolio.company as compcode',
    //             'guestfolio.docid as folionodocid',
    //             'guestfolio.travelagent as travelcode',
    //             'paycharge.foliono',
    //             'paycharge.billno',
    //             'paycharge.docid',
    //             'paycharge.paycode',
    //             'paycharge.roomno',
    //             DB::raw('(roomocc.adult + roomocc.children) AS occ'),
    //             'roomocc.nodays as nights',
    //             'subcom.name as company',
    //             'subcom.gstin as compgstin',
    //             'travelcom.name as travelcompany',
    //             'travelcom.gstin as travelgstin',
    //             'booking.DocId as bookingdocid',
    //             'booking.BookNo AS bookno',
    //             'booking.RefBookNo AS refbookingid'
    //         ])
    //         ->leftJoin('roomocc', 'paycharge.folionodocid', '=', 'roomocc.docid')
    //         ->leftJoin('guestfolio', 'paycharge.folionodocid', '=', 'guestfolio.docid')
    //         ->leftJoin('guestprof', 'roomocc.guestprof', '=', 'guestprof.guestcode')
    //         ->leftJoin('subgroup AS subcom', 'guestfolio.company', '=', 'subcom.sub_code')
    //         ->leftJoin('subgroup AS travelcom', 'guestfolio.travelagent', '=', 'travelcom.sub_code')
    //         ->leftJoin('busssource', 'busssource.bcode', '=', 'guestfolio.busssource')
    //         ->leftJoin('booking', 'booking.DocId', '=', 'guestfolio.bookingdocid')
    //         ->where('paycharge.propertyid', $this->propertyid)
    //         ->whereBetween('paycharge.settledate', [$fromdate, $todate])
    //         ->where('paycharge.roomtype', 'RO')
    //         ->where('paycharge.foliono', '!=', 0)
    //         ->where('paycharge.billno', '!=', 0)
    //         ->where('roomocc.type', 'O');


    //     $mainQuery->groupBy('paycharge.billno')
    //         ->orderBy('paycharge.billno')
    //         ->orderBy('paycharge.settledate');

    //     $resulttmp = $mainQuery->get(); //['billno','paycode','sno1']



    //     $sale["Sales"] = [];
    //     foreach ($resulttmp as $item) {
    //         $gettexcgst = Paycharge::where([
    //             ['propertyid', '=', $this->propertyid],
    //             ['paycode', '=', $cgst],
    //             ['sno1', '=', $item->sno1],
    //             ['billno', '=', $item->billno],
    //         ])->first(['amtdr', 'taxper']);

    //         $gettexsgst = Paycharge::where([
    //             ['propertyid', '=', $this->propertyid],
    //             ['paycode', '=', $sgst],
    //             ['sno1', '=', $item->sno1],
    //             ['billno', '=', $item->billno],
    //         ])->first(['amtdr', 'taxper']);

    //         $RoomServices = Paycharge::where([
    //             ['propertyid', '=', $this->propertyid],
    //             ['sno', '=', 1],
    //             ['vtype', '!=', 'BRS'],
    //             ['billno', '=', $item->billno],
    //         ])
    //         ->sum('amtdr');

    //         $rcode = 'TOUT' . $this->propertyid;
    //         $tfo = Paycharge::where([
    //             ['propertyid', '=', $this->propertyid],
    //             ['paycode', '=', $rcode],
    //             ['billno', '=', $item->billno],
    //         ])
    //             ->sum('amtdr');


    //         $paycodes = Paycharge::where('propertyid', $this->propertyid)
    //             ->where('billno', $item->billno)
    //             ->pluck('paycode')
    //             ->toArray();

    //         // skip CGST / SGST / ROUND / DISC
    //         $skip = [$cgst, $sgst, $roundoff, $disc];
    //         $validCodes = array_diff($paycodes, $skip);


    //         $recvList = Revmast::where('propertyid', $this->propertyid)
    //             ->whereIn('rev_code', $validCodes)
    //             ->get();


    //         $details = [];

    //         foreach ($recvList as $rev) {
    //             if ($rev->name == 'ROOM CHARGE') {
    //                 $details[] = [
    //                     "LedgerHead" => $rev->name ?? "",
    //                     "Taxable"    => $RoomServices ?? 0.00,
    //                     "GSTRate"    => ($gettexcgst->taxper + $gettexsgst->taxper) ?? 0.00,
    //                     "HSNCode"    => $rev->hsn_code ?? "",
    //                 ];
    //             } elseif ($rev->name == 'TRANSFER FROM OUTLET') {
    //                 $details[] = [
    //                     "LedgerHead" => $rev->name ?? "",
    //                     "Taxable"    => $tfo ?? 0.00,
    //                     "GSTRate"    => ($gettexcgst->taxper + $gettexsgst->taxper) ?? 0.00,
    //                     "HSNCode"    => $rev->hsn_code ?? "",
    //                 ];
    //             }else{
    //                   $details[] = [
    //                     "LedgerHead" => $rev->name ?? "",
    //                     "Taxable"    => $tfo ?? 0.00,
    //                     "GSTRate"    => ($gettexcgst->taxper + $gettexsgst->taxper) ?? 0.00,
    //                     "HSNCode"    => $rev->hsn_code ?? "",
    //                 ];
    //             }
    //         }


    //         // Invoice number
    //         $year = date('Y', strtotime($item->vprefix));
    //         $nextyear = $year + 1;

    //         $divcode = DB::table('company')
    //             ->where('propertyid', $this->propertyid)
    //             ->value('division_code');

    //         $invoiceno = $divcode
    //             ? $divcode . '/' . $year . '-' . substr($nextyear, -2) . '/' . $item->billno
    //             : 'BCNT/' . $year . '-' . substr($nextyear, -2) . '/' . $item->billno;

    //         // ============ FINAL SALES PUSH ============
    //         $sale["Sales"][] = [
    //             "BillNo"     => $invoiceno ?? "",
    //             "BillDate"   => $item->chkoutdate ?? "",
    //             "DebitHead"  => $item->company ?? "Walk In",
    //             "GuestName"  => $item->guestname ?? "",
    //             "RoomNo"     => $item->roomno ?? "",
    //             "BillAmount" => $item->billamt ?? 0.00,
    //             "TOTALCGST"  => $item->cgstsum ?? 0.00,
    //             "TOTALSGST"  => $item->sgstsum ?? 0.00,
    //             "RountOff"   => $item->roundoff ?? 0.00,

    //             // details array direct assign (perfect format)
    //             "Details" => $details
    //         ];
    //     }

    //     return response()->json($sale);
    // }
}
