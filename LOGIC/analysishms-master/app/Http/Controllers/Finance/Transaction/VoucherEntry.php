<?php

namespace App\Http\Controllers\Finance\Transaction;

use App\Http\Controllers\Controller;
use App\Models\ACGroup;
use App\Models\ChequeDesign;
use App\Models\Ledger;
use App\Models\LedgerLog;
use App\Models\LedgerTds;
use App\Models\SubGroup;
use App\Models\TdsCategory;
use App\Models\VoucherPrefix;
use App\Models\VoucherType;
use App\Services\LedgerLogService;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class VoucherEntry extends Controller
{
    protected $username;
    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }

    public function voucherentry()
    {
        $vtypes = VoucherType::where('propertyid', $this->propertyid)
            ->where('category', 'FA')
            ->get();

        $ledgerRows = Ledger::select(
            'voucher_type.description as vouchername',
            'subgroup.name as accountname',
            'subgroup.nature',
            'subgroup.cheque_design',
            'ledger.*'
        )
            ->join('voucher_type', function ($join) {
                $join->on('ledger.vtype', '=', 'voucher_type.v_type')
                    ->where('voucher_type.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('subgroup', function ($join) {
                $join->on('ledger.subcode', '=', 'subgroup.sub_code')
                    ->where('subgroup.propertyid', '=', $this->propertyid);
            })
            ->where('ledger.propertyid', $this->propertyid)
            ->whereIn('ledger.vtype', $vtypes->pluck('v_type'))
            ->orderBy('ledger.vno', 'desc')
            ->orderBy('ledger.created_at', 'desc')
            ->orderBy('ledger.vsno')
            ->get();

        $tdsDocIds = LedgerTds::where('propertyid', $this->propertyid)
            ->pluck('docid')
            ->flip();

        $data = $ledgerRows->groupBy('docid')->flatMap(function ($rows) use ($tdsDocIds) {
            if ($tdsDocIds->has($rows->first()->docid) && $rows->count() > 2) {
                return $rows->take($rows->count() - 2)->values();
            }

            return $rows->values();
        })->values();

        $chequedesigns = ChequeDesign::where('propertyid', $this->propertyid)
            ->where('is_active', 1)
            ->orderBy('design_name')
            ->get(['id', 'design_name']);

        return view(
            'property.finance.transaction.voucherentry',
            compact('data', 'chequedesigns')
        );
    }

    public function tdsentrycheckup(Request $request)
    {
        $particular = $request->input('particular');

        $chksubgroup = SubGroup::where('propertyid', $this->propertyid)
            ->where('sub_code', $particular)
            ->first();
        if ($chksubgroup && $chksubgroup->tds_catg) {
            $tdscategories = TdsCategory::where('propertyid', $this->propertyid)
                ->where('code', $chksubgroup->tds_catg)
                ->first();
        }
        $data = [
            'success' => true,
            'subgroup' => $chksubgroup,
            'tdscategories' => $tdscategories ?? null,
        ];

        return response()->json($data);
    }

    public function getvoucherentrydatavr(Request $request)
    {
        $type = $request->input('type');
        if ($type == 'contrabtn') {
            $desc = ['Contra'];
        } else if ($type == 'paymentbtn') {
            $desc = ['Cash Payment', 'Bank Payment'];
        } else if ($type == 'receiptbtn') {
            $desc = ['Cash Receipt', 'Bank Receipt'];
        } else if ($type == 'journalbtn') {
            $desc = ['Journal'];
        }

        $vouchertype = VoucherType::where('propertyid', $this->propertyid)
            ->where('category', 'FA')
            ->whereIn('description', $desc)
            ->get();

        return response()->json($vouchertype);
    }

    public function getvoucherentrydatavno(Request $request)
    {
        $vrtype = $request->input('vrtype');
        $vrdate = $request->input('vrdate');

        $voucherpref = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vrtype)
            ->whereDate('date_from', '<=', $vrdate)
            ->whereDate('date_to', '>=', $vrdate)
            ->first();

        if (is_null($voucherpref)) {
            return response()->json([
                'success' => false,
                'message' => 'No voucher prefix found for the selected type and date'
            ]);
        }

        return response()->json($voucherpref);
    }

    public function checksubledger(Request $request)
    {
        try {
            $subcode = $request->input('particular');

            $leder = Ledger::where('propertyid', $this->propertyid)
                ->where('subcode', $subcode)
                ->get();

            $totaldr = $leder->sum('amtdr');
            $totalcr = $leder->sum('amtcr');

            $balance = $totaldr - $totalcr;
            return response()->json([
                'success' => true,
                'balance' => $balance,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error checking subledger: ' . $e->getMessage(),
            ]);
        }
    }

    public function savevoucherentry(Request $request)
    {

        try {
            Db::beginTransaction();
            $request->validate([
                'vrdate' => 'required|date',
                'vrtype' => 'required|string',
                'totaldr' => 'required|numeric',
                'totalcr' => 'required|numeric',
                'narration' => 'nullable|string',
                'chequeno' => 'nullable|string',
                'chequedate' => 'nullable|date',
                'clearingdate' => 'nullable|date',
                'tds_code' => 'nullable|string',
                'tds_narration' => 'nullable|string',
                'tds_on_amount' => 'nullable|numeric',
                'tds_percent' => 'nullable|numeric',
                'tds_amount' => 'nullable|numeric',
                'tds_row_index' => 'nullable|numeric',
                'tds_applied' => 'nullable|in:0,1',
            ]);

            $vrdate = $request->vrdate;
            $vrtype = $request->vrtype;
            $totaldr = $request->totaldr;
            $totalcr = $request->totalcr;
            $narration = $request->narration ?? '';
            $chequeno = $request->chequeno;
            $chequedate = $request->chequedate;
            $clearingdate = $request->clearingdate;
            $rows = $request->totalrows;
            $tdscode = $request->tds_code;
            $tdsnarration = $request->tds_narration;
            $tdsonamount = $request->tds_on_amount;
            $tdspercent = $request->tds_percent;
            $tdsamount = $request->tds_amount;
            $tdsrowindex = $request->tds_row_index;
            $tdsapplied = $request->tds_applied;

            $balancedTotalDr = (float) $totaldr;

            if (round($balancedTotalDr, 2) != round((float) $totalcr, 2)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Total Debit and Credit amounts must be equal.',
                ]);
            }

            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vrtype)
                ->whereDate('date_from', '<=', $vrdate)
                ->whereDate('date_to', '>=', $vrdate)
                ->first();

            $start_srl_no = $chkvpf->start_srl_no + 1;
            $vprefix = $chkvpf->prefix;

            $docid = $this->propertyid . $vrtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;

            if ($tdsapplied == '1') {
                $totalrowsset = $rows;
                $vrtypetds = 'TDS';
                $chkvpftds = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vrtypetds)
                    ->whereDate('date_from', '<=', $vrdate)
                    ->whereDate('date_to', '>=', $vrdate)
                    ->first();

                $start_srl_notds = $chkvpftds->start_srl_no + 1;
                $vprefixtds = $chkvpftds->prefix;

                $docidtds = $this->propertyid . $vrtypetds . '‎ ‎ ' . $vprefixtds . '‎ ‎ ‎ ‎ ' . $start_srl_notds;

                $particulartds = $request->input('particular' . $tdsrowindex);
                $subgrouptdsparticular = SubGroup::where('propertyid', $this->propertyid)
                    ->where('sub_code', $particulartds)
                    ->first();

                $groupnaturetds = ACGroup::where('propertyid', $this->propertyid)
                    ->where('group_code', $subgrouptdsparticular->group_code)
                    ->value('nature');

                $tdscategory = TdsCategory::where('propertyid', $this->propertyid)
                    ->where('code', $subgrouptdsparticular->tds_catg)
                    ->first();

                $subgrouptds = SubGroup::where('propertyid', $this->propertyid)
                    ->where('sub_code', $tdscategory->account)
                    ->first();

                // return $subgrouptds;

                $ledger = new Ledger();
                $ledger->propertyid = $this->propertyid;
                $ledger->docid = $docid;
                $ledger->vsno = $totalrowsset + 1;
                $ledger->vtype = $vrtype;
                $ledger->vno = $start_srl_no;
                $ledger->vprefix = $vprefix;
                $ledger->vdate = $vrdate;
                $ledger->subcode = $particulartds;
                $ledger->amtcr = 0;
                $ledger->amtdr = $tdsamount;
                $ledger->contrasub = $subgrouptds ? $subgrouptds->sub_code : '';
                $ledger->chqno = '';
                $ledger->chqdate = null;
                $ledger->clgdate = null;
                $ledger->narration = $tdsnarration != '' ? $tdsnarration : $narration;
                $ledger->groupcode = $subgrouptdsparticular ? $subgrouptdsparticular->group_code : '';
                $ledger->groupnature = $groupnaturetds ?? '';
                $ledger->u_name = $this->username;
                $ledger->created_at = now();
                $ledger->u_ae = 'a';
                $ledger->save();

                $ledger2 = new Ledger();
                $ledger2->propertyid = $this->propertyid;
                $ledger2->docid = $docid;
                $ledger2->vsno = $totalrowsset + 2;
                $ledger2->vtype = $vrtype;
                $ledger2->vno = $start_srl_no;
                $ledger2->vprefix = $vprefix;
                $ledger2->vdate = $vrdate;
                $ledger2->subcode = $subgrouptds ? $subgrouptds->sub_code : '';
                $ledger2->amtcr = $tdsamount;
                $ledger2->amtdr = 0;
                $ledger2->contrasub = $particulartds;
                $ledger2->chqno = '';
                $ledger2->chqdate = null;
                $ledger2->clgdate = null;
                $ledger2->narration = $tdsnarration != '' ? $tdsnarration : $narration;
                $ledger2->groupcode = $subgrouptdsparticular ? $subgrouptdsparticular->group_code : '';
                $ledger2->groupnature = $groupnaturetds ?? '';
                $ledger2->u_name = $this->username;
                $ledger2->created_at = now();
                $ledger2->u_ae = 'a';
                $ledger2->save();

                $ledertds = new LedgerTds();
                $ledertds->propertyid = $this->propertyid;
                $ledertds->docid = $docid;
                $ledertds->vsno = 1;
                $ledertds->vprefix = $vprefixtds;
                $ledertds->vdate = $vrdate;
                $ledertds->tdscode = $subgrouptdsparticular->tds_catg;
                $ledertds->tdsdrcode = $subgrouptdsparticular->sub_code;
                $ledertds->onamt = $tdsonamount;
                $ledertds->tds = $tdspercent;
                $ledertds->tdsamt = $tdsamount;
                $ledertds->tdsdocid = $docidtds;
                $ledertds->tdsvsno = $start_srl_notds;
                $ledertds->u_name = $this->username;
                $ledertds->u_ae = 'a';
                $ledertds->save();

                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vrtypetds)
                    ->where('prefix', $vprefixtds)
                    ->increment('start_srl_no');
            }

            // return 'sagar';

            $subGroups = SubGroup::where('propertyid', $this->propertyid)
                ->pluck('group_code', 'sub_code');

            $groupNatures = ACGroup::where('propertyid', $this->propertyid)
                ->pluck('nature', 'group_code');

            $lastCrParticular = null;

            for ($i = 1; $i <= $rows; $i++) {
                if ($request->input('drcr' . $i) == 'CR') {
                    Log::info('CR entry found at row ' . $i);
                    $lastCrParticular = $request->input('particular' . $i);
                }
            }

            if (!$lastCrParticular) {
                return response()->json([
                    'success' => false,
                    'message' => 'At least one CR entry is required.',
                ]);
            }

            for ($i = 1; $i <= $rows; $i++) {

                $particular = $request->input('particular' . $i);
                $dramt = $request->input('dramt' . $i);
                $cramt = $request->input('cramt' . $i);
                $seperatenarration = $request->input('narration' . $i);
                $drorcr = $request->input('drcr' . $i);

                if (empty($particular)) {
                    return response()->json([
                        'success' => false,
                        'message' => 'Particular account is required for row ' . $i,
                    ]);
                }

                $contrasub = $lastCrParticular;

                $groupcode = $subGroups[$particular] ?? '';
                $groupnature = $groupNatures[$groupcode] ?? '';

                Ledger::updateOrCreate(
                    [
                        'propertyid' => $this->propertyid,
                        'docid'      => $docid,
                        'vsno'       => $i,
                    ],
                    [
                        'vtype'       => $vrtype,
                        'vno'         => $start_srl_no,
                        'vprefix'     => $vprefix,
                        'vdate'       => $vrdate,
                        'subcode'     => $particular,
                        'amtcr'       => $cramt != '' ? $cramt : 0,
                        'amtdr'       => $dramt != '' ? $dramt : 0,
                        'contrasub'   => $contrasub,
                        'chqno'       => $chequeno,
                        'chqdate'     => $chequedate != '' ? $chequedate : null,
                        'clgdate'     => $clearingdate != '' ? $clearingdate : null,
                        'narration'   => $seperatenarration != '' ? $seperatenarration : $narration,
                        'groupcode'   => $groupcode,
                        'groupnature' => $groupnature,
                        'u_name'      => $this->username,
                        'created_at'     => now(),
                        'u_ae'        => 'a',
                    ]
                );
            }

            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vrtype)
                ->where('prefix', $vprefix)
                ->increment('start_srl_no');

            $askprintyn = 'Y';

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Voucher saved successfully.',
                'askprintyn' => $askprintyn,
                'docid' => $docid,
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Error saving voucher: ' . $e->getMessage(),
            ]);
        }
    }

    public function editvoucherentry($docid)
    {
        try {
            $ledgerRows = Ledger::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->orderBy('vsno')
                ->get();

            if ($ledgerRows->isEmpty()) {
                return redirect('voucherentry')->with('error', 'Voucher not found.');
            }

            $tdsLedger = LedgerTds::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->first();

            $data = $tdsLedger && $ledgerRows->count() > 2
                ? $ledgerRows->take($ledgerRows->count() - 2)->values()
                : $ledgerRows;

            $tdsNarration = '';
            if ($tdsLedger && $ledgerRows->count() > $data->count()) {
                $tdsNarration = $ledgerRows[$data->count()]->narration ?? '';
            }

            $tdsCategory = null;
            if ($tdsLedger) {
                $tdsCategory = TdsCategory::where('propertyid', $this->propertyid)
                    ->where('code', $tdsLedger->tdscode)
                    ->first();
            }

            $tdsRowIndex = null;
            if ($tdsLedger) {
                $matchedIndex = $data->search(function ($row) use ($tdsLedger) {
                    $expectedAmount = (float) $tdsLedger->onamt - (float) $tdsLedger->tdsamt;
                    return $row->subcode === $tdsLedger->tdsdrcode
                        && round((float) $row->amtdr, 2) === round($expectedAmount, 2);
                });

                if ($matchedIndex !== false) {
                    $tdsRowIndex = $matchedIndex + 1;
                } else {
                    $fallbackIndex = $data->search(function ($row) use ($tdsLedger) {
                        return $row->subcode === $tdsLedger->tdsdrcode;
                    });

                    if ($fallbackIndex !== false) {
                        $tdsRowIndex = $fallbackIndex + 1;
                    }
                }
            }

            $tdsData = [
                'applied' => $tdsLedger ? '1' : '0',
                'row_index' => $tdsRowIndex,
                'code' => $tdsLedger->tdscode ?? '',
                'code_name' => $tdsCategory->name ?? '',
                'narration' => $tdsNarration,
                'on_amount' => $tdsLedger->onamt ?? '',
                'percent' => $tdsLedger->tds ?? '',
                'amount' => $tdsLedger->tdsamt ?? '',
            ];

            // return $tdsData;

            $vtype = $data[0]->vtype;
            $vouchertype = VoucherType::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->first();

            $commonNarr = $vouchertype->common_narr ?? 'Y';
            $separateNarr = $vouchertype->separate_narr ?? 'N';
            $defaultCrac = $vouchertype->defaultcrac ?? '';
            $defaultDrac = $vouchertype->defaultdrac ?? '';
            $narration = $data[0]->narration ?? '';


            foreach ($data as $row) {
                $leder = Ledger::where('propertyid', $this->propertyid)
                    ->where('subcode', $row->subcode)
                    ->get();

                $totaldr = $leder->sum('amtdr');
                $totalcr = $leder->sum('amtcr');
                $balance = $totaldr - $totalcr;

                $row->balance = $balance;
            }

            // return $data;

            return view('property.general.editvoucherentry', compact(
                'data',
                'commonNarr',
                'separateNarr',
                'defaultCrac',
                'defaultDrac',
                'narration',
                'tdsData',
                'tdsLedger'
            ));
        } catch (Exception $e) {
            return redirect('voucherentry')->with('error', 'Error loading voucher: ' . $e->getMessage());
        }
    }

    public function updatevoucherentry(Request $request)
    {
        try {
            $request->validate([
                'docid' => 'required|string',
                'vrdate' => 'required|date',
                'vrtype' => 'required|string',
                'totaldr' => 'required|numeric',
                'totalcr' => 'required|numeric',
                'narration' => 'nullable|string',
                'chequeno' => 'nullable|string',
                'chequedate' => 'nullable|date',
                'clearingdate' => 'nullable|date',
                'tds_code' => 'nullable|string',
                'tds_narration' => 'nullable|string',
                'tds_on_amount' => 'nullable|numeric',
                'tds_percent' => 'nullable|numeric',
                'tds_amount' => 'nullable|numeric',
                'tds_row_index' => 'nullable|numeric',
                'tds_applied' => 'nullable|in:0,1',
            ]);

            $docid = $request->docid;
            $vrdate = $request->vrdate;
            $vrtype = $request->vrtype;
            $totaldr = $request->totaldr;
            $totalcr = $request->totalcr;
            $narration = $request->narration ?? '';
            $chequeno = $request->chequeno;
            $chequedate = $request->chequedate;
            $clearingdate = $request->clearingdate;
            $rows = $request->totalrows;
            $tdscode = $request->tds_code;
            $tdsnarration = $request->tds_narration;
            $tdsonamount = $request->tds_on_amount;
            $tdspercent = $request->tds_percent;
            $tdsamount = $request->tds_amount;
            $tdsrowindex = $request->tds_row_index;
            $tdsapplied = $request->tds_applied;

            if (round((float) $totaldr, 2) != round((float) $totalcr, 2)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Total Debit and Credit amounts must be equal.',
                ]);
            }

            // Check if voucher exists
            $oldVoucher = Ledger::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->first();
            $oldLedgerTds = LedgerTds::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->first();

            if (!$oldVoucher) {
                return response()->json([
                    'success' => false,
                    'message' => 'Voucher not found.',
                ]);
            }

            DB::beginTransaction();

            try {

                $ledgers = Ledger::where('propertyid', $this->propertyid)
                    ->where('docid', $docid)
                    ->get();

                LedgerLogService::store(
                    $ledgers,
                    auth()->user()->u_name ?? null
                );

                Ledger::where('propertyid', $this->propertyid)
                    ->where('docid', $docid)
                    ->delete();

                LedgerTds::where('propertyid', $this->propertyid)
                    ->where('docid', $docid)
                    ->delete();

                // Insert new ledger entries
                $subGroups = SubGroup::where('propertyid', $this->propertyid)
                    ->pluck('group_code', 'sub_code');

                $groupNatures = ACGroup::where('propertyid', $this->propertyid)
                    ->pluck('nature', 'group_code');

                $lastCrParticular = null;

                for ($i = 1; $i <= $rows; $i++) {
                    if ($request->input('drcr' . $i) == 'CR') {
                        Log::info('CR entry found at row ' . $i);
                        $lastCrParticular = $request->input('particular' . $i);
                    }
                }

                if (!$lastCrParticular) {
                    return response()->json([
                        'success' => false,
                        'message' => 'At least one CR entry is required.',
                    ]);
                }

                for ($i = 1; $i <= $rows; $i++) {

                    $particular = $request->input('particular' . $i);
                    $dramt = $request->input('dramt' . $i);
                    $cramt = $request->input('cramt' . $i);
                    $seperatenarration = $request->input('narration' . $i);
                    $drorcr = $request->input('drcr' . $i);

                    if (empty($particular)) {
                        return response()->json([
                            'success' => false,
                            'message' => 'Particular account is required for row ' . $i,
                        ]);
                    }

                    $contrasub = $lastCrParticular;

                    $groupcode = $subGroups[$particular] ?? '';
                    $groupnature = $groupNatures[$groupcode] ?? '';

                    Ledger::updateOrCreate(
                        [
                            'propertyid' => $this->propertyid,
                            'docid'      => $docid,
                            'vsno'       => $i,
                        ],
                        [
                            'vtype'       => $vrtype,
                            'vno'         => $oldVoucher->vno,
                            'vprefix'     => $oldVoucher->vprefix,
                            'vdate'       => $vrdate,
                            'subcode'     => $particular,
                            'amtcr'       => $cramt != '' ? $cramt : 0,
                            'amtdr'       => $dramt != '' ? $dramt : 0,
                            'contrasub'   => $contrasub,
                            'chqno'       => $chequeno,
                            'chqdate'     => $chequedate != '' ? $chequedate : null,
                            'clgdate'     => $clearingdate != '' ? $clearingdate : null,
                            'narration'   => $seperatenarration != '' ? $seperatenarration : $narration,
                            'groupcode'   => $groupcode,
                            'groupnature' => $groupnature,
                            'u_name'      => $this->username,
                            'created_at'     => now(),
                            'u_ae'        => 'a',
                        ]
                    );
                }

                if ($tdsapplied == '1') {
                    $vrtypetds = 'TDS';
                    $tdsvprefix = $oldLedgerTds->vprefix ?? null;
                    $tdsdocid = $oldLedgerTds->tdsdocid ?? null;
                    $tdsvsno = $oldLedgerTds->tdsvsno ?? null;

                    if (!$oldLedgerTds) {
                        $chkvpftds = VoucherPrefix::where('propertyid', $this->propertyid)
                            ->where('v_type', $vrtypetds)
                            ->whereDate('date_from', '<=', $vrdate)
                            ->whereDate('date_to', '>=', $vrdate)
                            ->first();

                        $start_srl_notds = $chkvpftds->start_srl_no + 1;
                        $tdsvprefix = $chkvpftds->prefix;
                        $tdsdocid = $this->propertyid . $vrtypetds . '‎ ‎ ' . $tdsvprefix . '‎ ‎ ‎ ‎ ' . $start_srl_notds;
                        $tdsvsno = $start_srl_notds;

                        VoucherPrefix::where('propertyid', $this->propertyid)
                            ->where('v_type', $vrtypetds)
                            ->where('prefix', $tdsvprefix)
                            ->increment('start_srl_no');
                    }

                    $particulartds = $request->input('particular' . $tdsrowindex);
                    $subgrouptdsparticular = SubGroup::where('propertyid', $this->propertyid)
                        ->where('sub_code', $particulartds)
                        ->first();

                    $groupnaturetds = ACGroup::where('propertyid', $this->propertyid)
                        ->where('group_code', $subgrouptdsparticular->group_code)
                        ->value('nature');

                    $tdscategory = TdsCategory::where('propertyid', $this->propertyid)
                        ->where('code', $tdscode ?: $subgrouptdsparticular->tds_catg)
                        ->first();

                    $subgrouptds = SubGroup::where('propertyid', $this->propertyid)
                        ->where('sub_code', $tdscategory->account)
                        ->first();

                    $ledger = new Ledger();
                    $ledger->propertyid = $this->propertyid;
                    $ledger->docid = $docid;
                    $ledger->vsno = $rows + 1;
                    $ledger->vtype = $vrtype;
                    $ledger->vno = $oldVoucher->vno;
                    $ledger->vprefix = $oldVoucher->vprefix;
                    $ledger->vdate = $vrdate;
                    $ledger->subcode = $particulartds;
                    $ledger->amtcr = 0;
                    $ledger->amtdr = $tdsamount;
                    $ledger->contrasub = $subgrouptds ? $subgrouptds->sub_code : '';
                    $ledger->chqno = '';
                    $ledger->chqdate = null;
                    $ledger->clgdate = null;
                    $ledger->narration = $tdsnarration != '' ? $tdsnarration : $narration;
                    $ledger->groupcode = $subgrouptdsparticular ? $subgrouptdsparticular->group_code : '';
                    $ledger->groupnature = $groupnaturetds ?? '';
                    $ledger->u_name = $this->username;
                    $ledger->created_at = $oldVoucher->created_at;
                    $ledger->updated_at = now();
                    $ledger->u_ae = 'e';
                    $ledger->save();

                    $ledger2 = new Ledger();
                    $ledger2->propertyid = $this->propertyid;
                    $ledger2->docid = $docid;
                    $ledger2->vsno = $rows + 2;
                    $ledger2->vtype = $vrtype;
                    $ledger2->vno = $oldVoucher->vno;
                    $ledger2->vprefix = $oldVoucher->vprefix;
                    $ledger2->vdate = $vrdate;
                    $ledger2->subcode = $subgrouptds ? $subgrouptds->sub_code : '';
                    $ledger2->amtcr = $tdsamount;
                    $ledger2->amtdr = 0;
                    $ledger2->contrasub = $particulartds;
                    $ledger2->chqno = '';
                    $ledger2->chqdate = null;
                    $ledger2->clgdate = null;
                    $ledger2->narration = $tdsnarration != '' ? $tdsnarration : $narration;
                    $ledger2->groupcode = $subgrouptdsparticular ? $subgrouptdsparticular->group_code : '';
                    $ledger2->groupnature = $groupnaturetds ?? '';
                    $ledger2->u_name = $this->username;
                    $ledger2->created_at = $oldVoucher->created_at;
                    $ledger2->updated_at = now();
                    $ledger2->u_ae = 'e';
                    $ledger2->save();

                    $ledertds = new LedgerTds();
                    $ledertds->propertyid = $this->propertyid;
                    $ledertds->docid = $docid;
                    $ledertds->vsno = 1;
                    $ledertds->vprefix = $tdsvprefix;
                    $ledertds->vdate = $vrdate;
                    $ledertds->tdscode = $tdscode ?: ($subgrouptdsparticular->tds_catg ?? '');
                    $ledertds->tdsdrcode = $subgrouptdsparticular->sub_code;
                    $ledertds->onamt = $tdsonamount;
                    $ledertds->tds = $tdspercent;
                    $ledertds->tdsamt = $tdsamount;
                    $ledertds->tdsdocid = $tdsdocid;
                    $ledertds->tdsvsno = $tdsvsno;
                    $ledertds->u_name = $this->username;
                    $ledertds->u_ae = 'e';
                    $ledertds->save();
                }

                DB::commit();
                $askprintyn = 'Y';
                return response()->json([
                    'success' => true,
                    'message' => 'Voucher updated successfully.',
                    'askprintyn' => $askprintyn,
                    'docid' => $docid,
                ]);
            } catch (Exception $e) {
                DB::rollBack();
                return response()->json([
                    'success' => false,
                    'message' => 'Error updating voucher: ' . $e->getMessage(),
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function deletevoucherentry($docid)
    {
        try {
            $permission = revokeopen(111111);
            if (is_null($permission) || $permission->del == 0) {
                return redirect()->back()->with('error', 'You have no permission to delete voucher entry!');
            }

            $oldVoucher = Ledger::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->first();

            if (!$oldVoucher) {
                return redirect('voucherentry')->with('error', 'Voucher not found.');
            }

            DB::beginTransaction();

            try {

                $ledgers = Ledger::where('propertyid', $this->propertyid)
                    ->where('docid', $docid)
                    ->get();

                LedgerLogService::store(
                    $ledgers,
                    auth()->user()->u_name ?? null
                );

                Ledger::where('propertyid', $this->propertyid)
                    ->where('docid', $docid)
                    ->delete();

                DB::commit();

                return redirect('voucherentry')->with('success', 'Voucher deleted successfully.');
            } catch (Exception $e) {
                DB::rollBack();
                return redirect('voucherentry')->with('error', 'Error deleting voucher: ' . $e->getMessage());
            }
        } catch (Exception $e) {
            return redirect('voucherentry')->with('error', 'Error: ' . $e->getMessage());
        }
    }

    public function printvoucherentry($docid)
    {
        try {

            $data = Ledger::select(
                'voucher_type.description as vouchername',
                'ledger.*',
                'subgroup.name as compname'
            )
                ->join('voucher_type', function ($join) {
                    $join->on('ledger.vtype', '=', 'voucher_type.v_type')
                        ->where('voucher_type.propertyid', '=', $this->propertyid);
                })
                ->join('subgroup', function ($join) {
                    $join->on('ledger.subcode', '=', 'subgroup.sub_code')
                        ->where('subgroup.propertyid', '=', $this->propertyid);
                })
                ->where('ledger.propertyid', $this->propertyid)
                ->where('ledger.docid', $docid)
                ->groupBy('ledger.docid', 'ledger.vsno', 'ledger.vtype')
                ->orderBy('ledger.vno', 'desc')
                ->get();

            $contrasub = Ledger::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->whereNot('contrasub', '')
                ->value('contrasub');

            if ($data->isEmpty()) {
                return redirect('voucherentry')->with('error', 'Voucher not found.');
            }


            return view('property.general.printvoucherentry', compact('data', 'contrasub'));
        } catch (Exception $e) {
            return redirect('voucherentry')->with('error', 'Error: ' . $e->getMessage());
        }
    }

    public function printvouchercheque($docid)
    {
        try {

            $printOptions = [
                'cheque_date'    => request('cheque_date'),
                'ac_payee_name'  => request('ac_payee_name'),

                'print_payee'    => request('print_payee', 0),
                'print_company'  => request('print_company', 0),
                'print_date'     => request('print_date', 0),

                'signature_type' => request('signature_type', ''),
                'cheque_design_id' => request('cheque_design_id'),
                'sub_code' => request('sub_code'),
                'cheque_amount' => request('cheque_amount'),
            ];

            $chequeDesign = null;

            if (!empty($printOptions['cheque_design_id'])) {

                $chequeDesign = ChequeDesign::where('propertyid', $this->propertyid)
                    ->where('id', $printOptions['cheque_design_id'])
                    ->where('is_active', 1)
                    ->first();

                if (!$chequeDesign) {
                    return redirect()
                        ->back()
                        ->with('error', 'Cheque design not found.');
                }
            }

            // return $chequeDesign;

            $dataamount = Ledger::select(
                'ledger.*',
                'subgroup.name as compname'
            )
                ->join('subgroup', function ($join) {
                    $join->on('ledger.subcode', '=', 'subgroup.sub_code')
                        ->where('subgroup.propertyid', '=', $this->propertyid);
                })
                ->where('ledger.propertyid', $this->propertyid)
                ->where('ledger.docid', $docid)
                ->where('ledger.subcode', $printOptions['sub_code'])
                ->first();

            $tdscheck = LedgerTds::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->first();

            $dataname = Ledger::select(
                'ledger.*',
                'subgroup.name as compname'
            )
                ->join('subgroup', function ($join) {
                    $join->on('ledger.subcode', '=', 'subgroup.sub_code')
                        ->where('subgroup.propertyid', '=', $this->propertyid);
                })
                ->where('ledger.propertyid', $this->propertyid)
                ->where('ledger.docid', $docid)
                ->where('ledger.subcode', '!=', $printOptions['sub_code'])
                ->first();

            if (!$dataamount) {
                return redirect('voucherentry')
                    ->with('error', 'Voucher not found.');
            }

            $amount = $printOptions['cheque_amount'] ?? $dataamount->amtcr;
            $voucherDate = preg_replace('/[^0-9]/', '', date('d-m-Y', strtotime($printOptions['cheque_date'] ?? $dataname->vdate)));

            $pdata = [
                'amount' => $amount - ($tdscheck ? $tdscheck->tdsamt : 0),
                'amt_words' => amountToWords($amount - ($tdscheck ? $tdscheck->tdsamt : 0)) . ' Only',
                'payee_name' => $printOptions['print_payee'] ? ($printOptions['ac_payee_name'] ?? $dataname->compname) : $dataname->compname,
                'label' => $printOptions['signature_type'] ?? '',
                'comp_name' => $printOptions['print_company'] ? companydata()->comp_name : '',
                'voucher_date' => $voucherDate,
            ];

            // return $printOptions['cheque_amount'];

            return view(
                'property.general.printvoucherentrycheque',
                compact(
                    'pdata',
                    'chequeDesign'
                )
            );
        } catch (Exception $e) {
            return redirect('voucherentry')->with('error', 'Error: ' . $e->getMessage());
        }
    }
}
