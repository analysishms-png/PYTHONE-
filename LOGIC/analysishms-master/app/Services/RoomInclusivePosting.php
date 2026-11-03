<?php

namespace App\Services;

use App\Models\Paycharge;
use App\Models\RoomOcc;
use App\Models\TaxStructure;
use App\Models\VoucherPrefix;
use Carbon\CarbonPeriod;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class RoomInclusivePosting
{
    public function roominclusiveposting($fromdate, $todate, $docid)
    {
        $propertyid = Auth::user()->propertyid;
        $period = CarbonPeriod::create($fromdate, $todate);
        $onceordaily = $docid == null ? 'Daily' : 'Once';
        // Log::info('onceordaily: ' . $onceordaily);
        foreach ($period as $date) {
            $crdate = $date->format('Y-m-d');

            if ($docid == null) {
                $roomoccRecords = RoomOcc::select(
                    'roomocc.*',
                    'guestfolio.company as Comp_Code',
                    'guestfolio.travelagent as travel_code'
                )
                    ->leftJoin('guestfolio', function ($join) {
                        $join->on('roomocc.docid', '=', 'guestfolio.docid')
                            ->on('roomocc.sno1', '=', 'guestfolio.sno1');
                    })
                    ->where('roomocc.chkindate', '<=', $crdate)
                    ->whereNull('roomocc.type')
                    // ->where('roomocc.chkoutdate', '>=', $crdate)
                    ->where('roomocc.propertyid', $propertyid)
                    ->get();
            } else {
                $roomoccRecords = RoomOcc::select(
                    'roomocc.*',
                    'guestfolio.company as Comp_Code',
                    'guestfolio.travelagent as travel_code'
                )
                    ->leftJoin('guestfolio', function ($join) {
                        $join->on('roomocc.docid', '=', 'guestfolio.docid')
                            ->on('roomocc.sno1', '=', 'guestfolio.sno1');
                    })
                    ->where('roomocc.propertyid', $propertyid)
                    ->where('roomocc.docid', $docid)
                    ->get();
            }

            // Log::info($roomoccRecords->toJson());

            $roomInclusiveRecords = DB::table('room_inclusive')
                ->where('propertyid', $propertyid)
                ->whereIn('contradocid', $roomoccRecords->pluck('docid'))
                ->where('chargepost', $onceordaily)
                ->get();

            // Log::info($roomInclusiveRecords->toJson());

            if ($roomoccRecords->count() > 0 && $roomInclusiveRecords->count() > 0) {
                $vtype = 'REV';
                $chkvpf = VoucherPrefix::where('propertyid', $propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $fromdate)
                    ->whereDate('date_to', '>=', $fromdate)
                    ->first();

                if (!$chkvpf) {
                    continue;
                }

                foreach ($roomoccRecords as $roomocc) {
                    $restcode = 'FOM' . $propertyid;

                    $getdocroomoc = RoomOcc::where('propertyid', $propertyid)
                        ->where('docid', $roomocc->docid)
                        ->where('leaderyn', 'Y')
                        ->first();

                    $msno1 = $getdocroomoc ? $getdocroomoc->sno1 : 0;

                    $sno = 1;
                    foreach ($roomInclusiveRecords as $inclusive) {
                        if ($inclusive->amount > 0) {
                            $checkPosted = DB::table('paycharge')
                                ->where('propertyid', $propertyid)
                                ->where('folionodocid', $inclusive->contradocid)
                                ->where('vdate', $crdate)
                                ->where('posted', $onceordaily)
                                ->where('paycode', $inclusive->rev_code)
                                ->where('sno1', $roomocc->sno1)
                                ->exists();

                            // Log::info($checkPosted);

                            if ($checkPosted) {
                                continue;
                            }
                            $chkvpf = VoucherPrefix::where('propertyid', $propertyid)
                                ->where('v_type', $vtype)
                                ->where('prefix', $chkvpf->prefix)
                                ->first();

                            $start_srl_no = $chkvpf->start_srl_no + 1;
                            $vprefix = $chkvpf->prefix;
                            $new_docid = $propertyid . 'REV' . ' ‎ ‎' . $vprefix . ' ‎  ‎ ' . $start_srl_no;
                            $inclusiveamount = $inclusive->amount;
                            $revmast = DB::table('revmast')
                                ->where('propertyid', $propertyid)
                                ->where('rev_code', $inclusive->rev_code)
                                ->first();

                            $checktaxstru = TaxStructure::where('propertyid', $propertyid)
                                ->where('str_code', $revmast->tax_stru)
                                ->get();

                            if ($revmast->tax_inc == 'Y' && $checktaxstru->count() > 0) {
                                $totalRate = $checktaxstru->sum('rate');
                                $inclusiveamount = ($inclusiveamount * 100) / (100 + $totalRate);
                            }

                            $comment1 = "$revmast->name, ROOM No: " . $roomocc->roomno;

                            // Create and save Paycharge record using model
                            $paycharge = new Paycharge();
                            $paycharge->propertyid = $propertyid;
                            $paycharge->docid = $new_docid;
                            $paycharge->vno = $start_srl_no;
                            $paycharge->vtype = $vtype;
                            $paycharge->sno = $sno;
                            $paycharge->sno1 = $roomocc->sno1;
                            $paycharge->msno1 = $msno1;
                            $paycharge->vdate = $crdate;
                            $paycharge->vtime = date('H:i:s');
                            $paycharge->vprefix = $vprefix;
                            $paycharge->paycode = $revmast->rev_code;
                            $paycharge->comments = $comment1;
                            $paycharge->guestprof = $roomocc->guestprof;
                            $paycharge->comp_code = $roomocc->Comp_Code;
                            $paycharge->travel_agent = $roomocc->travel_code;
                            $paycharge->roomno = $roomocc->roomno;
                            $paycharge->amtdr = $inclusiveamount;
                            $paycharge->roomtype = $roomocc->roomtype;
                            $paycharge->roomcat = $roomocc->roomcat;
                            $paycharge->foliono = $roomocc->folioNo;
                            $paycharge->restcode = $restcode;
                            $paycharge->billamount = $inclusiveamount;
                            $paycharge->taxper = 0;
                            $paycharge->onamt = $inclusiveamount;
                            $paycharge->folionodocid = $roomocc->docid;
                            $paycharge->taxcondamt = 0;
                            $paycharge->created_at = now();
                            $paycharge->u_name = Auth::user()->u_name;
                            $paycharge->u_ae = 'a';
                            $paycharge->posted = $onceordaily;
                            $paycharge->save();
                            $sno++;

                            foreach ($checktaxstru as $taxstru) {
                                $rates = $taxstru->rate;
                                $taxamt = $inclusiveamount * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $roomocc->roomno;

                                // Create and save tax Paycharge record using model
                                $taxPaycharge = new Paycharge();
                                $taxPaycharge->propertyid = $propertyid;
                                $taxPaycharge->docid = $new_docid;
                                $taxPaycharge->vno = $start_srl_no;
                                $taxPaycharge->vtype = $vtype;
                                $taxPaycharge->sno = $sno;
                                $taxPaycharge->sno1 = $roomocc->sno1;
                                $taxPaycharge->msno1 = $msno1;
                                $taxPaycharge->vdate = $crdate;
                                $taxPaycharge->vtime = date('H:i:s');
                                $taxPaycharge->vprefix = $vprefix;
                                $taxPaycharge->paycode = $taxstru->tax_code;
                                $taxPaycharge->comments = $comments;
                                $taxPaycharge->guestprof = $roomocc->guestprof;
                                $taxPaycharge->comp_code = $roomocc->Comp_Code;
                                $taxPaycharge->travel_agent = $roomocc->travel_code;
                                $taxPaycharge->roomno = $roomocc->roomno;
                                $taxPaycharge->amtdr = $taxamt;
                                $taxPaycharge->roomtype = $roomocc->roomtype;
                                $taxPaycharge->roomcat = $roomocc->roomcat;
                                $taxPaycharge->foliono = $roomocc->folioNo;
                                $taxPaycharge->restcode = $restcode;
                                $taxPaycharge->billamount = $inclusiveamount;
                                $taxPaycharge->taxper = $rates;
                                $taxPaycharge->taxstru = $revmast->tax_stru;
                                $taxPaycharge->onamt = $inclusiveamount;
                                $taxPaycharge->folionodocid = $roomocc->docid;
                                $taxPaycharge->taxcondamt = $inclusiveamount;
                                $taxPaycharge->created_at = now();
                                $taxPaycharge->u_name = Auth::user()->u_name;
                                $taxPaycharge->u_ae = 'a';
                                $taxPaycharge->posted = $onceordaily;
                                $taxPaycharge->save();
                                $sno++;
                            }
                            VoucherPrefix::where('propertyid', $propertyid)
                                ->where('v_type', 'REV')
                                ->where('prefix', $vprefix)
                                ->increment('start_srl_no');
                        }
                    }
                }
            }
        }
    }
}
