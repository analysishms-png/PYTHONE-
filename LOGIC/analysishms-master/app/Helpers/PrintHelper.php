<?php

use App\Helpers\DateHelper;
use App\Models\EnviroFom;
use App\Models\FomBillDetail;
use App\Models\Log as InsertLog;
use App\Models\Paycharge;
use App\Models\Revmast;
use App\Models\RoomOcc;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

function buildPrintDataFOM($docid, $sno, $sno1)
{
    $propertyid = Auth::user()->propertyid;
    $totalbalance = 0.00;
    $totalroomcharge = 0.00;

    try {
        $paycharger = Paycharge::where('propertyid', $propertyid)->where('folionodocid', $docid)
            ->where('sno1', $sno1)->first();

        $chargedt = Paycharge::where('propertyid', $propertyid)->where('folionodocid', $docid)
            ->where('sno1', $sno1)->get();

        $paycode = ['RMCH' . $propertyid, 'MEGE' . $propertyid];
        foreach ($chargedt as $row) {
            $totalbalance += $row->amtdr;
        }

        $enviro = EnviroFom::where('propertyid', $propertyid)->first();
        $paycode = ['RMCH' . $propertyid, 'MEGE' . $propertyid];

        $igncode = [];
        $settlecodes = [];
        $revmasttax = Revmast::where('propertyid', $propertyid)->where('field_type', 'T')->where('type', 'Cr')->get();
        $revmastpay = Revmast::where('propertyid', $propertyid)->where('field_type', 'P')->where('type', 'Dr')->get();

        foreach ($revmasttax as $row) {
            $igncode[] = $row->rev_code;
        }

        foreach ($revmastpay as $row) {
            $settlecodes[] = $row->rev_code;
        }

        $charged = [];
        $rocc = Roomocc::where('propertyid', $propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $cond = ['paycharge.msno1' => $rocc->sno1];
        } else {
            $cond = ['paycharge.sno1' => $sno1];
        }
        if ($enviro->billprintingsummerised == 'Y') {
            $charged1 = Paycharge::select(
                'paycharge.vdate',
                'paycharge.vtype',
                'paycharge.vno',
                'paycharge.comments',
                'paycharge.roomno',
                DB::raw("SUM(paycharge.amtdr) as amtdr"),
                DB::raw("SUM(paycharge.amtcr) as amtcr"),
                'plan_mast.name as plankanaam',
                'paycharge.split',
                'paycharge.paycode'
            )
                ->leftJoin('roomocc', function ($join) use ($propertyid) {
                    $join->on('roomocc.docid', '=', 'paycharge.folionodocid')
                        ->on('roomocc.sno1', '=', 'paycharge.sno1')
                        ->whereNot('roomocc.type', 'O')
                        ->where('roomocc.propertyid', $propertyid);
                })
                ->leftJoin('plan_mast', function ($join) use ($propertyid) {
                    $join->on('roomocc.plancode', '=', 'plan_mast.pcode')
                        ->where('plan_mast.propertyid', $propertyid);
                })
                ->where('paycharge.propertyid', $propertyid)
                ->where('paycharge.folionodocid', $docid)
                ->whereNull('paycharge.modeset')
                ->where($cond)
                ->whereIn('paycharge.paycode', $paycode)
                ->groupBy('paycharge.roomno', 'paycharge.vdate')
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();

            foreach ($charged1 as $row) {
                $totalroomcharge += $row->amtdr;
                $charged[] = (object) [
                    'vdate' => $row->vdate,
                    'vtype' => $row->vtype,
                    'vno' => $row->vno,
                    'comments' => $row->plankanaam . ' For Room ' . $row->roomno,
                    'amtdr' => $row->amtdr,
                    'amtcr' => $row->amtcr,
                    'split' => $row->split,
                    'paycode' => $row->paycode
                ];
            }

            $charged2 = Paycharge::select(
                'vdate',
                'vtype',
                'vno',
                'comments',
                'amtdr',
                'amtcr',
                'split',
                'paycode'
            )
                ->where('propertyid', $propertyid)
                ->where('folionodocid', $docid)
                ->where($cond)
                ->whereNotIn('paycharge.paycode', $paycode)
                ->whereNot('paycharge.paycode', 'ROFF' . $propertyid)
                ->whereNull('paycharge.modeset')
                ->whereNotIn('paycharge.paycode', $igncode)
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();
            foreach ($charged2 as $row2) {
                $totalroomcharge += $row2->amtdr;
                $charged[] = (object) [
                    'vdate' => $row2->vdate,
                    'vtype' => $row2->vtype,
                    'vno' => $row2->vno,
                    'comments' => $row2->comments,
                    'amtdr' => $row2->amtdr,
                    'amtcr' => $row2->amtcr,
                    'split' => $row2->split,
                    'paycode' => $row2->paycode
                ];
            }
        } else {
            $charged = Paycharge::select(
                'vdate',
                'vtype',
                'vno',
                'comments',
                'amtdr',
                'amtcr',
                'split',
                'paycode'
            )
                ->where('propertyid', $propertyid)
                ->where('folionodocid', $docid)
                ->whereNot('paycode', 'ROFF' . $propertyid)
                ->whereNull('paycharge.modeset')
                ->where($cond)
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();

            $totalroomcharge = $charged->sum('amtdr');
        }

        $fombilldetail = FomBillDetail::where('propertyid', $propertyid)
            ->where('folionodocid', $docid)
            ->where('sno1', $sno1)
            ->where('status', 'settle')
            ->first();

        $year = date('Y', strtotime($fombilldetail->billdate));
        $nextyear = $year + 1;

        $divcode = DB::table('company')->where('propertyid', $propertyid)->value('division_code');
        $ranges = DateHelper::calculateDateRanges($fombilldetail->billdate);
        if ($divcode == null) {
            $invoiceno = 'BCNT/' . $ranges['finyear']['current'] . '-' . substr($ranges['finyear']['nextyear'], 2) . '/' . $fombilldetail->billno;
        } else {
            $invoiceno = $divcode . '/' . $ranges['finyear']['current'] . '-' . substr($ranges['finyear']['nextyear'], 2) . '/' . $fombilldetail->billno;
        }

        if ($rocc) {
            $payments = Paycharge::where('propertyid', $propertyid)
                ->where('folionodocid', $docid)
                ->where('msno1', $rocc->sno1)
                ->where('modeset', 'S')
                ->whereNot('paycode', 'ROFF' . $propertyid)
                ->get();

            $rooms = RoomOcc::where('propertyid', $propertyid)
                ->where('docid', $docid)
                ->groupBy('roomno')
                ->get();

            $data2 = DB::table('paycharge')
                ->select('revmast.name', DB::raw('SUM(paycharge.amtdr) as taxsum'))
                ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.msno1', $rocc->sno1)
                ->where('revmast.field_type', 'T')
                ->groupBy('revmast.name')
                ->get();
            $msno1 = $rocc->sno1;

            $adult = RoomOcc::where('docid', $docid)
                ->where('propertyid', $propertyid)
                ->sum('adult');
            $children = RoomOcc::where('docid', $docid)
                ->where('propertyid', $propertyid)
                ->sum('children');

            $taxes = Paycharge::select(
                'revmast.name',
                'paycharge.paycode',
                'paycharge.taxper',
                DB::raw('SUM(paycharge.amtdr) as amtdr'),
                DB::raw('SUM(paycharge.onamt) as onamt')
            )
                ->leftJoin('revmast', function ($join) use ($propertyid) {
                    $join->on('revmast.rev_code', '=', 'paycharge.paycode')
                        ->where('revmast.propertyid', $propertyid);
                })
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.msno1', $rocc->sno1)
                ->whereIn('paycharge.paycode', $igncode)
                ->groupBy('paycharge.taxper')
                ->groupBy('paycharge.paycode')
                ->get();
        } else {
            $payments = Paycharge::where('propertyid', $propertyid)
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->where('modeset', 'S')
                ->whereNot('paycode', 'ROFF' . $propertyid)
                ->get();
            $adult = RoomOcc::where('docid', $docid)
                ->where('propertyid', $propertyid)
                ->value('adult');
            $children = RoomOcc::where('docid', $docid)
                ->where('propertyid', $propertyid)
                ->value('children');
            $rooms = '';

            $data2 = DB::table('paycharge')
                ->select('revmast.name', DB::raw('SUM(paycharge.amtdr) as taxsum'))
                ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.sno1', $sno1)
                ->where('revmast.field_type', 'T')
                ->groupBy('revmast.name')
                ->get();
            $msno1 = 0;

            $taxes = Paycharge::select(
                'revmast.name',
                'paycharge.paycode',
                'paycharge.taxper',
                DB::raw('SUM(paycharge.amtdr) as amtdr'),
                DB::raw('SUM(paycharge.onamt) as onamt')
            )
                ->leftJoin('revmast', function ($join) use ($propertyid) {
                    $join->on('revmast.rev_code', '=', 'paycharge.paycode')
                        ->where('revmast.propertyid', $propertyid);
                })
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.sno1', $sno1)
                ->whereIn('paycharge.paycode', $igncode)
                ->groupBy('paycharge.taxper')
                ->groupBy('paycharge.paycode')
                ->get();
        }


        $data = DB::table('paycharge')
            ->select(
                'revmast.name',
                DB::raw('SUM(paycharge.taxper) AS total_taxper'),
                DB::raw('SUM(paycharge.amtcr) AS total_amtcr')
            )
            ->join('revmast', 'paycharge.paycode', '=', 'revmast.rev_code')
            ->where('paycharge.folionodocid', $docid)
            ->where('paycharge.propertyid', $propertyid)
            ->where('paycharge.sno1', $sno1)
            ->where('paycharge.taxcondamt', '!=', 0)
            ->groupBy('revmast.name')
            ->get();

        $sumfieldc = DB::table('paycharge')
            ->join('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.folionodocid', $docid)
            ->where('paycharge.sno1', $sno1)
            ->where('revmast.field_type', 'C')
            ->whereNot('paycharge.paycode', 'RMCH' . $propertyid)
            ->whereNot('paycharge.paycode', 'ROFF' . $propertyid)
            ->sum('paycharge.amtdr');

        $creditsum = DB::table('paycharge')
            ->where('folionodocid', $docid)
            ->where('sno1', $sno1)
            ->whereNull('modeset')
            ->sum('amtcr');

        $taxnames = $data2->pluck('name')->toArray();
        $totaltax = $data2->pluck('taxsum')->toArray();

        $totalcredit = $data->sum('total_amtcr');

        $betotal = 0;
        foreach ($charged as $row) {
            if (!in_array($row->paycode, $igncode)) {
                $betotal += $row->amtdr;
            }
        }

        $totalaftertaxadd = floatval($betotal) + array_sum($totaltax);
        $difference = $totalaftertaxadd - $creditsum;
        $datacc = calculateRoundOff($difference, fomparameter()->roundofftype);

        $roomocc = DB::table('roomocc')
            ->select(
                'roomocc.*',
                DB::raw('SUM(roomocc.adult) as adultsum'),
                'paycharge.*',
                'guestfolio.company as companycode',
                'guestfolio.travelagent as guesttravel',
                'roomocc.roomno as roomkanam',
                'room_cat.name as categname',
                'guestprof.nationality',
                'guestprof.city_name',
                'guestprof.mobile_no',
                'guestprof.state_name',
                'plan_mast.name as plankanam',
                'guestfolio.add1',
                'guestfolio.add2',
                'guestprof.guestsign'
            )
            ->join('paycharge', 'paycharge.folionodocid', '=', 'roomocc.docid')
            ->join('room_cat', 'room_cat.cat_code', '=', 'roomocc.roomcat')
            ->join('guestprof', 'guestprof.guestcode', '=', 'roomocc.guestprof')
            ->join('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('plan_mast', 'plan_mast.pcode', '=', 'roomocc.plancode')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'paycharge.comp_code')
            ->where(function ($myquery) {
                $myquery->whereNotNull('paycharge.comp_code')
                    ->orWhereNull('paycharge.comp_code');
            })
            ->where('roomocc.docid', $docid)
            ->where('roomocc.sno1', $sno1)
            ->where('roomocc.propertyid', $propertyid)
            ->where(function ($query) {
                $query->whereNotNull('roomocc.plancode')
                    ->orWhereNull('roomocc.plancode');
            })->where(function ($querys) {
                $querys->whereNull('roomocc.type')
                    ->orWhere('roomocc.type', 'O');
            })
            ->first();

        if ($roomocc->companycode != '') {
            $guestcomp = subgroup($roomocc->companycode);
        } else {
            $guestcomp = '';
        }

        if ($roomocc->guesttravel != '') {
            $guesttravel = subgroup($roomocc->guesttravel);
        } else {
            $guesttravel = '';
        }

        $guestsign = '';
        if ($roomocc->guestsign != '') {
            $guestsign = '<img src="storage/walkin/signature/' . $roomocc->guestsign . '" name="guestsign" id="guestsign" alt="Guest Sign">';
        }

        $pays = [];
        foreach ($payments as $pay) {
            if ($pay->paytype == 'Company') {
                $companyname = subgroup($pay->comp_code)->name;
                $pays[] = [
                    'name' => $pay->paytype . ' (' . $companyname . ')  ',
                    'amt' => $pay->amtcr,
                ];
            } else {
                $pays[] = [
                    'name' => $pay->paytype,
                    'amt' => $pay->amtcr,
                ];
            }
        }

        $paidss = '';
        foreach ($pays as $pay) {
            $paidss .= $pay['name'] . ': ' . number_format($pay['amt'], 2) . ', ';
        }
        if (empty($paidss)) {
            $paidss = 'Not Paid Yet';
        }

        return [
            'guesttravel' => $guesttravel,
            'guestcomp' => $guestcomp,
            'guest' => $roomocc,
            'guestsign' => $guestsign,
            'totalbalance' => $totalbalance,
            'totalroomcharge' => $totalroomcharge,
            'charged' => $charged,
            'igncode' => $igncode,
            'invoiceno' => $invoiceno,
            'sumfieldc' => $sumfieldc,
            'taxname' => $taxnames,
            'taxedamount' => $totaltax,
            'totalaftertaxadd' => str_replace(',', '', number_format($totalaftertaxadd, 2)),
            'totalcredit' => str_replace(',', '', number_format($totalcredit, 2)),
            'netamount' => $datacc['billamt'],
            'roundoff' => $datacc['roundoff'],
            'creditsum' => $creditsum,
            'totalsumdebit' => $betotal,
            'rooms' => $rooms,
            'fombilldetail' => $fombilldetail,
            'adult' => $adult,
            'children' => $children,
            'payments' => $pays,
            'taxes' => $taxes,
            'paidss' => $paidss,
        ];
    } catch (Exception $e) {
        logData('FOM PDF SEND Print Helper File', 'Whatsapp', $propertyid, Auth::user()->name, $e->getLine(), $e->getFile());
    }
}
