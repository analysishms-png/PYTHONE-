<?php

namespace App\Services;

use App\Helpers\DateHelper;
use App\Models\Depart;
use App\Models\EnviroFom;
use App\Models\ExpenseEntry;
use App\Models\Ledger;
use App\Models\Paycharge;
use App\Models\Revmast;
use App\Models\Stock;
use App\Models\SubGroup;
use App\Models\Suntran;
use App\Models\VoucherPrefix;
use Carbon\CarbonPeriod;
use DateTime;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class AccountPosting
{

    public function accountpoststore($fromdate, $todate)
    {
        try {
            // DB::beginTransaction();
            $propertyid = Auth::user()->propertyid;
            // $permission = revokeopen(191114);
            // if (is_null($permission) || $permission->ins == 0) {
            //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
            // }

            $frmdatetmp = new DateTime($fromdate);
            $todatetmp = new DateTime($todate);
            $financialYearStart = (int) $frmdatetmp->format('Y');

            $fyStart = new DateTime("1 April $financialYearStart");
            $fyEnd = new DateTime("31 March " . ($financialYearStart + 1));

            if ($todatetmp > $fyEnd) {
                return back()->with('error', "To date exceeds the financial year limit (1 April $financialYearStart - 31 March " . ($financialYearStart + 1) . ").");
            }

            $checkdatec = VoucherPrefix::where('propertyid', $propertyid)
                ->whereDate('date_from', '<=', $fromdate)
                ->whereDate('date_to', '>=', $todate)
                ->first();

            if ($checkdatec === null || $checkdatec === '0') {
                return back()->with('error', 'You are not eligible to post charges for this date: ' . date('d-m-Y', strtotime($fromdate)));
            }

            $period = CarbonPeriod::create($fromdate, $todate);

            foreach ($period as $date) {
                $crdate = $date->format('Y-m-d');

                Paycharge::whereDate('vdate', $crdate)->whereIn('vtype', ['PPOS', 'IPOS'])->where('propertyid', $propertyid)->delete();

                $permission = revokeopen(141112);
                if (!is_null($permission) && $permission->view != 0) {
                    $roomchrgdueac = EnviroFom::where('propertyid', $propertyid)->first();
                    if ($roomchrgdueac->roomchrgdueac == '') {
                        return ['success' => false, 'message' => 'First Fill Enviro Setting Related to Daily Posting'];
                    }
                }

                $ppostpost = Suntran::select([
                    DB::raw('SUM(suntran.amount) AS RevAmt'),
                    DB::raw('GROUP_CONCAT(DISTINCT suntran.vno ORDER BY suntran.vno ASC) AS vno_group'),
                    'suntran.revcode',
                    'suntran.restcode',
                    'suntran.vdate',
                    DB::raw('MAX(depart.name) AS Outlet'),
                    DB::raw('MAX(depart.short_name) AS DShortName'),
                    DB::raw('MAX(revmast.name) AS Revenue'),
                    DB::raw('MAX(suntran.suncode) AS SundryCode'),
                    DB::raw('MAX(suntran.vno) as billno')
                ])
                    ->leftJoin('revmast', 'suntran.revcode', '=', 'revmast.rev_code')
                    ->leftJoin('depart', 'suntran.restcode', '=', 'depart.dcode')
                    ->where('suntran.propertyid', $propertyid)
                    ->whereDate('suntran.vdate', $crdate)
                    ->whereNotNull('suntran.revcode')
                    ->where('suntran.revcode', '!=', '')
                    ->where('suntran.suncode', '!=', $propertyid . '101')
                    ->whereIn('depart.rest_type', ['Outlet', 'Room Service'])
                    ->where('suntran.delflag', '!=', 'Y')
                    ->groupBy('suntran.restcode', 'suntran.revcode', 'suntran.vdate')
                    ->orderBy('suntran.restcode')
                    ->get();

                // return $ppostpost;

                foreach ($ppostpost as $row) {
                    $vtypeac = 'PPOS';
                    $chkvpf = VoucherPrefix::where('propertyid', $propertyid)
                        ->where('v_type', $vtypeac)
                        ->whereDate('date_from', '<=', $fromdate)
                        ->whereDate('date_to', '>=', $todate)
                        ->first();

                    $vno = $chkvpf->start_srl_no + 1;
                    $vprefix = $chkvpf->prefix;

                    $vnos = explode(',', $row->vno_group);
                    $billNoRange = DateHelper::generateBillNoRange($vnos);
                    $comment = $row->revenue . ' Bill No: ' . $billNoRange;

                    VoucherPrefix::where('propertyid', $propertyid)
                        ->where('v_type', $vtypeac)
                        ->where('prefix', $vprefix)
                        ->increment('start_srl_no');

                    $docid = $propertyid . $vtypeac . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                    $indata = [
                        'propertyid' => $propertyid,
                        'docid' => $docid,
                        'vno' => $vno,
                        'vdate' => $row->vdate,
                        'sno' => '1',
                        'sno1' => '1',
                        'vtype' => $vtypeac,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefix,
                        // 'comments' => $row->revenue . 'Bill No: ' . $row->billno,
                        'comments' => $comment,
                        'paycode' => $row->revcode,
                        'amtcr' => '0.00',
                        'amtdr' => $row->RevAmt,
                        'restcode' => $row->restcode,
                        'created_at' => now(),
                        'u_name' => Auth::user()->name,
                        'u_ae' => 'a',
                    ];
                    Paycharge::insert($indata);
                }

                // return 'ppost';

                $amountSelect = posparameter()->postposdiscseperately == 'Y'
                    ? DB::raw('SUM(stock.amount) AS ItemAmt')
                    : DB::raw('SUM(stock.amount) - SUM(stock.discamt) AS ItemAmt');

                $ipospost = Stock::select(
                    $amountSelect,
                    DB::raw('GROUP_CONCAT(DISTINCT stock.vno ORDER BY stock.vno ASC) AS vno_group'),
                    DB::raw('itemcatmast.RevCode'),
                    DB::raw('stock.restcode'),
                    DB::raw('stock.vdate'),
                    DB::raw('itemcatmast.AcCode'),
                    DB::raw('MAX(depart.short_name) AS DShortName')
                )
                    ->leftJoin('itemmast', function ($join) use ($propertyid) {
                        $join->on('stock.item', '=', 'itemmast.Code')
                            ->on('stock.itemrestcode', '=', 'itemmast.RestCode')
                            ->where('itemmast.Property_ID', $propertyid);
                    })
                    ->leftJoin('itemcatmast', function ($join) use ($propertyid) {
                        $join->on('itemmast.ItemCatCode', '=', 'itemcatmast.Code')
                            ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode')
                            ->where('itemcatmast.propertyid', $propertyid);
                    })
                    ->leftJoin('depart', function ($join) use ($propertyid) {
                        $join->on('stock.restcode', '=', 'depart.dcode')
                            ->where('depart.propertyid', $propertyid);
                    })
                    ->whereDate('stock.vdate', $crdate)
                    ->where('stock.propertyid', $propertyid)
                    ->where('stock.delflag', '<>', 'Y')
                    ->whereRaw("stock.vtype = CONCAT('B', COALESCE(depart.short_name, ''))")
                    ->whereIn('depart.rest_type', ['Outlet', 'Room Service'])
                    ->groupBy(
                        DB::raw('stock.restcode'),
                        DB::raw('stock.vdate'),
                        DB::raw('itemcatmast.RevCode'),
                        DB::raw('itemcatmast.AcCode')
                    )
                    ->get();

                // return $ipospost;

                foreach ($ipospost as $row) {
                    $vnos = explode(',', $row->vno_group);
                    $billNoRange = DateHelper::generateBillNoRange($vnos);

                    $comment = $row->DShortName . ' Bill No: ' . $billNoRange;
                    $vtypeipos = 'IPOS';

                    $chkvpf = VoucherPrefix::where('propertyid', $propertyid)
                        ->where('v_type', $vtypeipos)
                        ->whereDate('date_from', '<=', $fromdate)
                        ->whereDate('date_to', '>=', $todate)
                        ->first();

                    $vnoipos = $chkvpf->start_srl_no + 1;
                    $vprefix = $chkvpf->prefix;

                    VoucherPrefix::where('propertyid', $propertyid)
                        ->where('v_type', $vtypeipos)
                        ->where('prefix', $vprefix)
                        ->increment('start_srl_no');

                    $docid = $propertyid . $vtypeipos . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vnoipos;

                    $iposin = [
                        'propertyid' => $propertyid,
                        'docid' => $docid,
                        'vno' => $vnoipos,
                        'vdate' => $row->vdate,
                        'sno' => '1',
                        'sno1' => '1',
                        'vtype' => $vtypeipos,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefix,
                        'comments' => $comment,
                        'paycode' => $row->RevCode,
                        'amtcr' => '0.00',
                        'amtdr' => $row->ItemAmt,
                        'restcode' => $row->restcode,
                        'created_at' => now(),
                        'u_name' => Auth::user()->name,
                        'u_ae' => 'a',
                    ];

                    Paycharge::insert($iposin);
                }

                // Ledger Posting
                $ledgerdata = DB::table('paycharge')
                    ->select(
                        'paycharge.paycode',
                        DB::raw('MAX(revmast.ac_posting) as ACPosting'),
                        DB::raw('MAX(paycharge.settledate) AS settledate'),
                        DB::raw('MAX(paycharge.vprefix) AS vprefix'),
                        'revmast.ac_code'
                    )
                    ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                    ->where('paycharge.propertyid', $propertyid)
                    ->where('paycharge.settledate', $crdate)
                    ->whereIn('revmast.field_type', ['C', 'T'])
                    ->whereRaw('(paycharge.amtdr - paycharge.amtcr) <> 0')
                    ->where('paycharge.restcode', 'FOM' . $propertyid)
                    ->groupBy('paycharge.paycode')
                    ->get();

                $envirofom = EnviroFom::where('propertyid', $propertyid)->first();

                $oldHpostData = Ledger::where('propertyid', $propertyid)
                    ->where('vtype', 'HPOST')
                    ->whereDate('vdate', $crdate)
                    ->whereNotNull('clgdate')
                    ->get()
                    ->mapWithKeys(function ($row) {
                        return [
                            $row->docid . '_' . $row->vsno => [
                                'chqno' => $row->chqno,
                                'chqdate' => $row->chqdate,
                                'clgdate' => $row->clgdate,
                            ]
                        ];
                    })
                    ->toArray();
                $l = 1;
                Ledger::where('propertyid', $propertyid)->where('vtype', 'HPOST')->whereDate('vdate', $crdate)->delete();

                if ($ledgerdata->isNotEmpty()) {
                    $t = [];
                    foreach ($ledgerdata as $row) {
                        $amountdata = DB::table('paycharge')
                            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                            ->select([
                                DB::raw('SUM(paycharge.amtdr) - SUM(paycharge.amtcr) as DebitAmt'),
                                'paycharge.paycode',
                                DB::raw('MAX(revmast.ac_code) as ACCode'),
                                DB::raw('MAX(revmast.name) as RevenueName'),
                            ])
                            ->where('paycharge.propertyid', $propertyid)
                            ->where('paycharge.settledate', $row->settledate)
                            ->whereIn('revmast.field_type', ['C', 'T'])
                            ->whereRaw('(paycharge.amtdr - paycharge.amtcr) <> 0')
                            // ->where('paycharge.restcode', 'FOM' . $propertyid)
                            ->where('paycharge.paycode', $row->paycode)
                            ->groupBy('paycharge.paycode')
                            ->first();

                        // $t[] = $amountdata;
                        $subgroup = SubGroup::where('propertyid', $propertyid)->where('sub_code', $amountdata->ACCode)->first();

                        $billnos = DB::table('paycharge')
                            ->select('billno')
                            ->distinct()
                            ->where('paycharge.propertyid', $propertyid)
                            ->where('settledate', $row->settledate)
                            ->whereRaw('paycharge.amtdr - paycharge.amtcr <> 0')
                            ->where('paycharge.restcode', 'FOM' . $propertyid)
                            ->where('paycharge.paycode', $row->paycode)
                            ->pluck('billno')
                            ->implode(', ');

                        $vno = $row->vprefix . date('dm', strtotime($row->settledate));
                        $vtype = 'HPOST';
                        $docid = $propertyid . $vtype . '‎ ‎ ' . $row->vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                        $hpostdata1 = [
                            'propertyid' => $propertyid,
                            'docid' => $docid,
                            'vsno' => $l++,
                            'vno' => $vno,
                            'vdate' => $row->settledate,
                            'vtype' => $vtype,
                            'vprefix' => $row->vprefix,
                            'narration' => 'Against Guest Bill No(s) : ' . $billnos,
                            'contrasub' => $amountdata->ACCode ?? '',
                            'subcode' => $envirofom->roomchrgdueac,
                            'amtcr' => '0.00',
                            'amtdr' => $amountdata->DebitAmt,
                            'chqno' => '',
                            'chqdate' => null,
                            'clgdate' => null,
                            'groupcode' => $subgroup->group_code ?? '',
                            'groupnature' => $subgroup->nature ?? '',
                            'u_name' => Auth::user()->name,
                            'created_at' => now(),
                            'u_ae' => 'a',
                        ];

                        $hpostdata2 = [
                            'propertyid' => $propertyid,
                            'docid' => $docid,
                            'vsno' => $l++,
                            'vno' => $vno,
                            'vdate' => $row->settledate,
                            'vtype' => $vtype,
                            'vprefix' => $row->vprefix,
                            'narration' => 'Against Guest Bill No(s) : ' . $billnos,
                            'contrasub' => $envirofom->roomchrgdueac,
                            'subcode' => $amountdata->ACCode ?? '',
                            'amtcr' => $amountdata->DebitAmt,
                            'amtdr' => '0.00',
                            'chqno' => '',
                            'chqdate' => null,
                            'clgdate' => null,
                            'groupcode' => $subgroup->group_code ?? '',
                            'groupnature' => $subgroup->nature ?? '',
                            'u_name' => Auth::user()->name,
                            'created_at' => now(),
                            'u_ae' => 'a',
                        ];

                        Ledger::insert($hpostdata1);
                        Ledger::insert($hpostdata2);
                    }

                    // return $t;
                }

                // return 'hy';

                // Pos Submit Ledger
                $paycharges = DB::table('paycharge')
                    ->select([
                        'paycode',
                        'restcode',
                        'propertyid',
                        DB::raw('SUM(amtdr) AS TotalDr'),
                        DB::raw('SUM(amtcr) AS TotalCr'),
                        DB::raw('MAX(comments) AS Comments'),
                        DB::raw('vdate AS vdate'),
                        DB::raw('MAX(vprefix) AS vprefix')
                    ])
                    ->whereDate('vdate', $crdate)
                    ->where('propertyid', $propertyid)
                    ->where('restcode', '<>', 'FOM' . $propertyid)
                    ->whereNot('restcode', '')
                    ->where(function ($query) {
                        $query->whereNull('paytype')
                            ->orWhere('paytype', '');
                    })
                    ->groupBy('paycode', 'restcode', 'propertyid');

                $posledger = DB::query()
                    ->fromSub($paycharges, 'p')
                    ->leftJoin('revmast', function ($join) use ($propertyid) {
                        $join->on('p.paycode', '=', 'revmast.rev_code')
                            ->where('revmast.propertyid', $propertyid);
                    })
                    ->leftJoin('depart', function ($join) use ($propertyid) {
                        $join->on('p.restcode', '=', 'depart.dcode')
                            ->where('depart.propertyid', $propertyid);
                    })
                    ->select([
                        'p.paycode',
                        'p.restcode',
                        'p.propertyid',
                        'p.comments',
                        'p.vdate',
                        'p.vprefix',
                        DB::raw('MAX(revmast.ac_code) AS ACCode'),
                        DB::raw('MAX(depart.name) AS Department'),
                        DB::raw('MAX(revmast.name) AS RevenueName'),
                        DB::raw('(p.TotalDr - p.TotalCr) AS DebitAmt')
                    ])
                    ->when(posparameter()->postposdiscseperately == 'N', function ($query) {
                        $query->whereRaw("p.paycode NOT LIKE CONCAT((SELECT short_name FROM depart WHERE dcode = p.restcode LIMIT 1), 'DC', p.propertyid)");
                    })
                    ->having('DebitAmt', '>', 0)
                    ->groupBy('p.paycode', 'p.restcode', 'p.propertyid', 'p.Comments', 'p.vdate', 'p.vprefix')
                    ->get();

                // return $posledger;

                if ($posledger->isNotEmpty()) {
                    foreach ($posledger as $row) {

                        if (!is_null($row->DebitAmt)) {
                            $billnos = DB::table('paycharge')
                                ->select('vno')
                                ->distinct()
                                ->where('paycharge.propertyid', $propertyid)
                                ->where('vdate', $row->vdate)
                                ->whereRaw('paycharge.amtdr - paycharge.amtcr <> 0')
                                ->where('paycharge.restcode', '<>', 'FOM' . $propertyid)
                                ->where('paycharge.paycode', $row->paycode)
                                ->pluck('vno')
                                ->implode(', ');

                            $subgroup = SubGroup::where('propertyid', $propertyid)->where('sub_code', $row->ACCode)->first();
                            $vno = $row->vprefix . date('dm', strtotime($row->vdate));
                            $vtype = 'HPOST';
                            $docid = $propertyid . $vtype . '‎ ‎ ' . $row->vprefix . '‎ ‎ ‎ ‎ ' . $vno;
                            $depart = Depart::where('propertyid', $propertyid)->where('dcode', $row->restcode)->first();

                            if ($row->paycode == $depart->short_name . 'DC' . $propertyid) {
                                $debitamt = $row->DebitAmt;
                                $creditamt = 0.00;
                            } else {
                                $debitamt = 0.00;
                                $creditamt = $row->DebitAmt;
                            }

                            $posledgerdata1 = [
                                'propertyid' => $propertyid,
                                'docid' => $docid,
                                'vsno' => $l++,
                                'vno' => $vno,
                                'vdate' => $row->vdate,
                                'vtype' => $vtype,
                                'vprefix' => $row->vprefix,
                                'narration' => $row->comments,
                                'contrasub' => fomparameter()->roomchrgdueac ?? '',
                                'subcode' => $row->ACCode ?? '',
                                'amtcr' => $creditamt,
                                'amtdr' => $debitamt,
                                'chqno' => '',
                                'chqdate' => null,
                                'clgdate' => null,
                                'groupcode' => $subgroup->group_code ?? '',
                                'groupnature' => $subgroup->nature ?? '',
                                'u_name' => Auth::user()->name,
                                'created_at' => now(),
                                'u_ae' => 'a',
                            ];

                            $posledgerdata2 = [
                                'propertyid' => $propertyid,
                                'docid' => $docid,
                                'vsno' => $l++,
                                'vno' => $vno,
                                'vdate' => $row->vdate,
                                'vtype' => $vtype,
                                'vprefix' => $row->vprefix,
                                'narration' => $row->comments,
                                'contrasub' => $row->ACCode ?? '',
                                'subcode' => fomparameter()->roomchrgdueac ?? '',
                                'amtcr' => '0.00',
                                'amtdr' => $row->DebitAmt,
                                'chqno' => '',
                                'chqdate' => null,
                                'clgdate' => null,
                                'groupcode' => subgroup(fomparameter()->roomchrgdueac)->group_code ?? '',
                                'groupnature' => subgroup(fomparameter()->roomchrgdueac)->nature ?? '',
                                'u_name' => Auth::user()->name,
                                'created_at' => now(),
                                'u_ae' => 'a',
                            ];

                            // Log::info(json_encode($posledgerdata2));

                            Ledger::insert($posledgerdata1);
                            Ledger::insert($posledgerdata2);
                        }
                    }
                }

                // return 'ppp';

                $revmastpaypost = DB::table('revmast')
                    ->where('propertyid', $propertyid)
                    ->where('field_type', 'P')
                    ->whereIn('pay_type', ['Cash', 'UPI', 'Credit Card', 'Hold', 'Cheque', 'Void'])
                    ->get();
                $tl = [];

                // return $revmastpaypost;

                if ($revmastpaypost->isNotEmpty()) {

                    foreach ($revmastpaypost as $rows) {
                        $datarevpost = DB::table('paycharge')
                            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                            ->select([
                                DB::raw('(SUM(paycharge.amtcr - paycharge.amtdr)) as CreditAmt'),
                                'paycharge.paycode',
                                'revmast.ac_code',
                                'revmast.name as RevenueName',
                                'paycharge.comments',
                                'paycharge.vdate',
                                'paycharge.vprefix',
                                DB::raw("GROUP_CONCAT(DISTINCT paycharge.folionodocid SEPARATOR ', ') as folionodocids")
                            ])
                            ->where('paycharge.propertyid', $propertyid)
                            ->whereDate('paycharge.vdate', $crdate)
                            ->whereNotIn('paycharge.docid', function ($query) {
                                $query->select(DB::raw('distinct contraid'))
                                    ->from('paycharge')
                                    ->whereNotNull('contraid')
                                    ->where('contraid', '<>', '');
                            })
                            ->where('paycharge.paytype', $rows->pay_type)
                            ->where('paycharge.restcode', 'FOM' . $propertyid)
                            ->groupBy('paycharge.paytype')
                            ->get();

                        if ($datarevpost->isNotEmpty()) {
                            $tl[] = $datarevpost;
                            foreach ($datarevpost as $row) {

                                $folionodocids = array_filter(
                                    array_map('trim', explode(',', $row->folionodocids ?? ''))
                                );

                                $billnos = DB::table('paycharge')
                                    ->where('propertyid', $propertyid)
                                    ->where('restcode', 'FOM' . $propertyid)
                                    ->where('settledate', $row->vdate)
                                    ->where('billno', '>', 0)
                                    ->whereRaw('(amtdr - amtcr) <> 0')
                                    ->whereIn('folionodocid', $folionodocids)
                                    ->distinct()
                                    ->orderBy('billno')
                                    ->pluck('billno')
                                    ->implode(', ');

                                $subgroup = SubGroup::where('propertyid', $propertyid)->where('sub_code', $row->ac_code)->first();

                                $vno = $row->vprefix . date('dm', strtotime($row->vdate));
                                $vtype = 'HPOST';
                                $docid = $propertyid . $vtype . '‎ ‎ ' . $row->vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                                $revmastpaypost1 = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vsno' => $l++,
                                    'vno' => $vno,
                                    'vdate' => $row->vdate,
                                    'vtype' => $vtype,
                                    'vprefix' => $row->vprefix,
                                    'narration' => 'FOM Against Guest Bill No(s) : ' . $billnos,
                                    'contrasub' => $row->ac_code ?? '',
                                    'subcode' => $envirofom->roomchrgdueac,
                                    'amtcr' => $row->CreditAmt,
                                    'amtdr' => '0.00',
                                    'chqno' => '',
                                    'chqdate' => null,
                                    'clgdate' => null,
                                    'groupcode' => $subgroup->group_code ?? '',
                                    'groupnature' => $subgroup->nature ?? '',
                                    'u_name' => Auth::user()->name,
                                    'created_at' => now(),
                                    'u_ae' => 'a',
                                ];

                                $revmastpaypost2 = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vsno' => $l++,
                                    'vno' => $vno,
                                    'vdate' => $row->vdate,
                                    'vtype' => $vtype,
                                    'vprefix' => $row->vprefix,
                                    'narration' => 'FOM Against Guest Bill No(s) : ' . $billnos,
                                    'contrasub' => $envirofom->roomchrgdueac,
                                    'subcode' => $row->ac_code ?? '',
                                    'amtcr' => '0.00',
                                    'amtdr' => $row->CreditAmt,
                                    'chqno' => '',
                                    'chqdate' => null,
                                    'clgdate' => null,
                                    'groupcode' => $subgroup->group_code ?? '',
                                    'groupnature' => $subgroup->nature ?? '',
                                    'u_name' => Auth::user()->name,
                                    'created_at' => now(),
                                    'u_ae' => 'a',
                                ];

                                Ledger::insert($revmastpaypost1);
                                Ledger::insert($revmastpaypost2);
                            }
                        }
                    }
                }

                if ($revmastpaypost->isNotEmpty()) {
                    $tp = [];
                    foreach ($revmastpaypost as $rows) {
                        $datarevpostpos = DB::table('paycharge')
                            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                            ->select([
                                DB::raw('(SUM(paycharge.amtcr - paycharge.amtdr)) as CreditAmt'),
                                'paycharge.paycode',
                                'revmast.ac_code',
                                'revmast.name as RevenueName',
                                'paycharge.comments',
                                'paycharge.vdate',
                                'paycharge.vprefix'
                            ])
                            ->where('paycharge.propertyid', $propertyid)
                            ->whereDate('paycharge.vdate', $crdate)
                            ->whereNotIn('paycharge.docid', function ($query) {
                                $query->select(DB::raw('distinct contraid'))
                                    ->from('paycharge')
                                    ->whereNotNull('contraid')
                                    ->where('contraid', '<>', '');
                            })
                            ->where('paycharge.paytype', $rows->pay_type)
                            ->whereNot('paycharge.restcode', 'FOM' . $propertyid)
                            ->groupBy('paycharge.paytype')
                            ->get();

                        // Log::info('datapos: ' . json_encode($datarevpostpos));

                        if ($datarevpostpos->isNotEmpty()) {
                            $tp[] = $datarevpostpos;
                            foreach ($datarevpostpos as $row) {

                                $billnos = DB::table('paycharge')
                                    ->select('vno')
                                    ->distinct()
                                    ->where('paycharge.propertyid', $propertyid)
                                    ->where('vdate', $row->vdate)
                                    ->whereNot('paycharge.restcode', 'FOM' . $propertyid)
                                    ->where('paycharge.paycode', $row->paycode)
                                    ->pluck('vno')
                                    ->implode(', ');
                                $subgroup = SubGroup::where('propertyid', $propertyid)->where('sub_code', $row->ac_code)->first();

                                $vno = $row->vprefix . date('dm', strtotime($row->vdate));
                                $vtype = 'HPOST';
                                $docid = $propertyid . $vtype . '‎ ‎ ' . $row->vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                                $revmastpaypost1 = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vsno' => $l++,
                                    'vno' => $vno,
                                    'vdate' => $row->vdate,
                                    'vtype' => $vtype,
                                    'vprefix' => $row->vprefix,
                                    'narration' => 'Pos Against Guest Bill No(s): ' . $billnos,
                                    'contrasub' => $row->ac_code ?? '',
                                    'subcode' => $envirofom->roomchrgdueac,
                                    'amtcr' => $row->CreditAmt,
                                    'amtdr' => '0.00',
                                    'chqno' => '',
                                    'chqdate' => null,
                                    'clgdate' => null,
                                    'groupcode' => $subgroup->group_code ?? '',
                                    'groupnature' => $subgroup->nature ?? '',
                                    'u_name' => Auth::user()->name,
                                    'created_at' => now(),
                                    'u_ae' => 'a',
                                ];

                                $revmastpaypost2 = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vsno' => $l++,
                                    'vno' => $vno,
                                    'vdate' => $row->vdate,
                                    'vtype' => $vtype,
                                    'vprefix' => $row->vprefix,
                                    'narration' => 'Pos Against Guest Bill No(s): ' . $billnos,
                                    'contrasub' => $envirofom->roomchrgdueac,
                                    'subcode' => $row->ac_code ?? '',
                                    'amtcr' => '0.00',
                                    'amtdr' => $row->CreditAmt,
                                    'chqno' => '',
                                    'chqdate' => null,
                                    'clgdate' => null,
                                    'groupcode' => $subgroup->group_code ?? '',
                                    'groupnature' => $subgroup->nature ?? '',
                                    'u_name' => Auth::user()->name,
                                    'created_at' => now(),
                                    'u_ae' => 'a',
                                ];

                                Ledger::insert($revmastpaypost1);
                                Ledger::insert($revmastpaypost2);
                            }
                        }
                    }

                    // return $tp;
                }
                // return 'paypost';

                $companypost = DB::table('revmast')
                    ->where('propertyid', $propertyid)
                    ->where('field_type', 'P')
                    ->whereIn('pay_type', ['Company'])
                    ->get();

                if ($companypost->isNotEmpty()) {

                    foreach ($companypost as $rows) {
                        $datarevpostcompfom = DB::table('paycharge')
                            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                            ->select([
                                DB::raw('(SUM(paycharge.amtcr - paycharge.amtdr)) as CreditAmt'),
                                'paycharge.paycode',
                                'revmast.ac_code',
                                'revmast.name as RevenueName',
                                'paycharge.comments',
                                'paycharge.vdate',
                                'paycharge.vprefix',
                                'paycharge.paytype',
                                'paycharge.comp_code',
                                DB::raw("GROUP_CONCAT(DISTINCT paycharge.folionodocid SEPARATOR ', ') as folionodocids")
                            ])
                            ->where('paycharge.propertyid', $propertyid)
                            ->where('paycharge.vdate', $crdate)
                            ->whereNotIn('paycharge.docid', function ($query) {
                                $query->select(DB::raw('distinct contraid'))
                                    ->from('paycharge')
                                    ->whereNotNull('contraid')
                                    ->where('contraid', '<>', '');
                            })
                            ->where('paycharge.paytype', $rows->pay_type)
                            ->where('paycharge.restcode', 'FOM' . $propertyid)
                            ->groupBy('paycharge.comp_code')
                            ->get();

                        if ($datarevpostcompfom->isNotEmpty()) {
                            $tl[] = $datarevpostcompfom;
                            foreach ($datarevpostcompfom as $row) {

                                $folionodocids = array_filter(
                                    array_map('trim', explode(',', $row->folionodocids ?? ''))
                                );

                                $billnos = DB::table('paycharge')
                                    ->where('propertyid', $propertyid)
                                    ->where('restcode', 'FOM' . $propertyid)
                                    ->where('settledate', $row->vdate)
                                    ->where('billno', '>', 0)
                                    ->whereRaw('(amtdr - amtcr) <> 0')
                                    ->whereIn('folionodocid', $folionodocids)
                                    ->distinct()
                                    ->orderBy('billno')
                                    ->pluck('billno')
                                    ->implode(', ');

                                $subgroup = SubGroup::where('propertyid', $propertyid)->where('sub_code', $row->ac_code)->first();

                                $vno = $row->vprefix . date('dm', strtotime($row->vdate));
                                $vtype = 'HPOST';
                                $docid = $propertyid . $vtype . '‎ ‎ ' . $row->vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                                $revmastpaypost1 = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vsno' => $l++,
                                    'vno' => $vno,
                                    'vdate' => $row->vdate,
                                    'vtype' => $vtype,
                                    'vprefix' => $row->vprefix,
                                    'narration' => 'FOM Adv. Agst. Bill No. : ' . $billnos,
                                    'contrasub' => $row->comp_code ?? '',
                                    'subcode' => $envirofom->roomchrgdueac,
                                    'amtcr' => $row->CreditAmt,
                                    'amtdr' => '0.00',
                                    'chqno' => '',
                                    'chqdate' => null,
                                    'clgdate' => null,
                                    'groupcode' => $subgroup->group_code ?? '',
                                    'groupnature' => $subgroup->nature ?? '',
                                    'u_name' => Auth::user()->name,
                                    'created_at' => now(),
                                    'u_ae' => 'a',
                                ];

                                $revmastpaypost2 = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vsno' => $l++,
                                    'vno' => $vno,
                                    'vdate' => $row->vdate,
                                    'vtype' => $vtype,
                                    'vprefix' => $row->vprefix,
                                    'narration' => 'FOM Adv. Agst. Bill No. : ' . $billnos,
                                    'contrasub' => $envirofom->roomchrgdueac,
                                    'subcode' => $row->comp_code ?? '',
                                    'amtcr' => '0.00',
                                    'amtdr' => $row->CreditAmt,
                                    'chqno' => '',
                                    'chqdate' => null,
                                    'clgdate' => null,
                                    'groupcode' => $subgroup->group_code ?? '',
                                    'groupnature' => $subgroup->nature ?? '',
                                    'u_name' => Auth::user()->name,
                                    'created_at' => now(),
                                    'u_ae' => 'a',
                                ];

                                Ledger::insert($revmastpaypost1);
                                Ledger::insert($revmastpaypost2);
                            }
                        }
                    }
                }

                if ($companypost->isNotEmpty()) {
                    $tlp = [];
                    foreach ($companypost as $rows) {
                        $datarevpostcomp = DB::table('paycharge')
                            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                            ->select([
                                DB::raw('(SUM(paycharge.amtcr - paycharge.amtdr)) as CreditAmt'),
                                'paycharge.paycode',
                                'revmast.ac_code',
                                'revmast.name as RevenueName',
                                'paycharge.comments',
                                'paycharge.vdate',
                                'paycharge.vprefix',
                                'paycharge.paytype',
                                'paycharge.comp_code'
                            ])
                            ->where('paycharge.propertyid', $propertyid)
                            ->whereDate('paycharge.vdate', $crdate)
                            ->whereNotIn('paycharge.docid', function ($query) {
                                $query->select(DB::raw('distinct contraid'))
                                    ->from('paycharge')
                                    ->whereNotNull('contraid')
                                    ->where('contraid', '<>', '');
                            })
                            ->where('paycharge.paytype', $rows->pay_type)
                            ->whereNot('paycharge.restcode', 'FOM' . $propertyid)
                            ->groupBy('paycharge.comp_code')
                            ->get();

                        if ($datarevpostcomp->isNotEmpty()) {

                            // return $datarevpostcomp;
                            $tlp[] = $datarevpostcomp;
                            foreach ($datarevpostcomp as $row) {

                                $billnos = DB::table('paycharge')
                                    ->select('vno')
                                    ->distinct()
                                    ->where('paycharge.propertyid', $propertyid)
                                    ->where('vdate', $row->vdate)
                                    ->whereNot('paycharge.restcode', 'FOM' . $propertyid)
                                    ->where('paycharge.paycode', $row->paycode)
                                    ->pluck('vno')
                                    ->implode(', ');
                                $subgroup = SubGroup::where('propertyid', $propertyid)->where('sub_code', $row->ac_code)->first();

                                $vno = $row->vprefix . date('dm', strtotime($row->vdate));
                                $vtype = 'HPOST';
                                $docid = $propertyid . $vtype . '‎ ‎ ' . $row->vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                                $revmastpaypost1 = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vsno' => $l++,
                                    'vno' => $vno,
                                    'vdate' => $row->vdate,
                                    'vtype' => $vtype,
                                    'vprefix' => $row->vprefix,
                                    'narration' => 'POS Bill No.(S): ' . $billnos,
                                    'contrasub' => $row->comp_code ?? '',
                                    'subcode' => $envirofom->roomchrgdueac,
                                    'amtcr' => $row->CreditAmt,
                                    'amtdr' => '0.00',
                                    'chqno' => '',
                                    'chqdate' => null,
                                    'clgdate' => null,
                                    'groupcode' => $subgroup->group_code ?? '',
                                    'groupnature' => $subgroup->nature ?? '',
                                    'u_name' => Auth::user()->name,
                                    'created_at' => now(),
                                    'u_ae' => 'a',
                                ];

                                $revmastpaypost2 = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vsno' => $l++,
                                    'vno' => $vno,
                                    'vdate' => $row->vdate,
                                    'vtype' => $vtype,
                                    'vprefix' => $row->vprefix,
                                    'narration' => 'POS Bill No.(S): ' . $billnos,
                                    'contrasub' => $envirofom->roomchrgdueac,
                                    'subcode' => $row->comp_code ?? '',
                                    'amtcr' => '0.00',
                                    'amtdr' => $row->CreditAmt,
                                    'chqno' => '',
                                    'chqdate' => null,
                                    'clgdate' => null,
                                    'groupcode' => $subgroup->group_code ?? '',
                                    'groupnature' => $subgroup->nature ?? '',
                                    'u_name' => Auth::user()->name,
                                    'created_at' => now(),
                                    'u_ae' => 'a',
                                ];

                                Ledger::insert($revmastpaypost1);
                                Ledger::insert($revmastpaypost2);
                            }
                        }
                    }

                    // return $tlp;
                }

                // Expense Posting
                $expdata = ExpenseEntry::whereDate('vdate', $crdate)->where('delflag', 'N')->where('propertyid', $propertyid)->get();

                // Log::info('expdata: ' . json_encode($expdata));

                if ($expdata->isNotEmpty()) {
                    foreach ($expdata as $row) {
                        $subgroup = SubGroup::where('propertyid', $propertyid)->where('sub_code', $row->drac)->first();

                        $vno = $row->vprefix . date('dm', strtotime($row->vdate));
                        $vtype = 'HPOST';
                        $docid = $propertyid . $vtype . '‎ ‎ ' . $row->vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                        if ($row->vtype == 'HTEXP') {
                            $amtdr = $row->dramt;
                            $amtcr = '0.00';
                            $amtdr2 = '0.00';
                            $amtcr2 = $row->dramt;
                        } else {
                            $amtdr = $row->cramt;
                            $amtcr = '0.00';
                            $amtdr2 = '0.00';
                            $amtcr2 = $row->cramt;
                        }

                        $expensedata1 = [
                            'propertyid' => $propertyid,
                            'docid' => $docid,
                            'vsno' => $l++,
                            'vno' => $vno,
                            'vdate' => $row->vdate,
                            'vtype' => $vtype,
                            'vprefix' => $row->vprefix,
                            'narration' => $row->remark,
                            'contrasub' => $row->crac,
                            'subcode' => $row->drac,
                            'amtcr' => $amtcr,
                            'amtdr' => $amtdr,
                            'chqno' => '',
                            'chqdate' => null,
                            'clgdate' => null,
                            'groupcode' => $subgroup->group_code ?? '',
                            'groupnature' => $subgroup->nature ?? '',
                            'u_name' => Auth::user()->name,
                            'created_at' => now(),
                            'u_ae' => 'a',
                        ];

                        $expensedata2 = [
                            'propertyid' => $propertyid,
                            'docid' => $docid,
                            'vsno' => $l++,
                            'vno' => $vno,
                            'vdate' => $row->vdate,
                            'vtype' => $vtype,
                            'vprefix' => $row->vprefix,
                            'narration' => $row->remark,
                            'contrasub' => $row->drac,
                            'subcode' => $row->crac,
                            'amtcr' => $amtcr2,
                            'amtdr' => $amtdr2,
                            'chqno' => '',
                            'chqdate' => null,
                            'clgdate' => null,
                            'groupcode' => $subgroup->group_code ?? '',
                            'groupnature' => $subgroup->nature ?? '',
                            'u_name' => Auth::user()->name,
                            'created_at' => now(),
                            'u_ae' => 'a',
                        ];

                        // Log::info('expensedata1: ' . json_encode($expensedata1));
                        // Log::info('expensedata2: ' . json_encode($expensedata2));

                        Ledger::insert($expensedata1);
                        Ledger::insert($expensedata2);
                    }
                }

                foreach ($oldHpostData as $key => $values) {
                    [$docid, $vsno] = explode('_', $key);

                    Ledger::where('propertyid', $propertyid)
                        ->where('docid', $docid)
                        ->where('vsno', $vsno)
                        ->where(function ($q) {
                            $q->whereNull('clgdate')->orWhere('clgdate', '');
                        })
                        ->update([
                            'chqno' => $values['chqno'],
                            'chqdate' => $values['chqdate'],
                            'clgdate' => $values['clgdate'],
                        ]);
                }
            }
            // DB::commit();
            return ['success' => true, 'message' => 'Account Posting Successfully'];
        } catch (Exception $e) {
            DB::rollBack();
            // return $e->getMessage() . 'On Line: ' . $e->getLine();
            return [
                'success' => false,
                'message' => 'Unknown error occured: ' . $e->getMessage() . 'On Line: ' . $e->getLine()
            ];
        }
    }
}
