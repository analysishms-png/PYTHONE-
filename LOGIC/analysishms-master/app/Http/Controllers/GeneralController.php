<?php

namespace App\Http\Controllers;

use App\Models\CompanyDiscount;
use App\Models\Companyreg;
use App\Models\Depart;
use App\Models\Depart1;
use App\Models\EnviroBanquet;
use App\Models\EnviroFom;
use App\Models\EnviroInventory;
use App\Models\EnviroPos;
use App\Models\PlanMast;
use App\Models\RoomOcc;
use App\Models\ServerMast;
use App\Models\SubGroup;
use App\Services\TenantDatabase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class GeneralController extends Controller
{
    public function calculateroundoffpos(Request $request)
    {
        $envfom = EnviroPos::where('propertyid', Auth::user()->propertyid)->first();
        $mode = $envfom->roundofftype;

        $results = [];
        foreach ($request->amounts as $row) {
            $res = calculateRoundOff($row['amount'], $mode);
            $results[] = [
                'outlet' => $row['outlet'],
                'billamt' => $res['billamt'],
                'roundoff' => $res['roundoff']
            ];
        }
        return response()->json($results);
    }


    public function calculateroundpurch(Request $request)
    {
        $envfom = EnviroInventory::where('propertyid', Auth::user()->propertyid)->first();
        $amount = $request->amount;

        $data = calculateRoundOff($amount, $envfom->roundofftype);

        return response()->json($data);
    }

    public function calculateroundbanquet(Request $request)
    {
        $envfom = EnviroBanquet::where('propertyid', Auth::user()->propertyid)->first();
        $mode = $envfom->roundofftype;

        $res = calculateRoundOff($request->amount, $mode);
        $results = [
            'restcode' => $request->restcode,
            'billamt' => $res['billamt'],
            'roundoff' => $res['roundoff']
        ];
        return response()->json($results);
    }

    public function fetchallemptyrooms(Request $request)
    {
        $propertyid = Auth::user()->propertyid;
        $checkindate = $request->checkindate;
        $checkoutdate = $request->checkoutdate;

        $roommast = DB::table('room_mast as rm')
            ->select('rm.rcode', 'rm.room_cat')
            ->where('rm.propertyid', $propertyid)
            ->where('rm.type', 'RO')
            ->where('rm.inclcount', 'Y')
            ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $checkindate, $checkoutdate) {
                $query->select('ro.roomno')
                    ->from('roomocc as ro')
                    ->where('ro.propertyid', $propertyid)
                    ->whereNull('ro.type')
                    ->where('ro.chkindate', '<', $checkoutdate)
                    ->where('ro.depdate', '>=', $checkindate);
            })
            ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $checkindate, $checkoutdate) {
                $query->select('gb.RoomNo')
                    ->from('grpbookingdetails as gb')
                    ->where('gb.Property_ID', $propertyid)
                    ->where('gb.ArrDate', '<', $checkoutdate)
                    ->where('gb.DepDate', '>', $checkindate)
                    ->where('gb.chkoutyn', 'N')
                    ->where('gb.Cancel', 'N')
                    ->where('gb.RoomNo', '!=', 0);
            })
            ->whereNotIn('rm.rcode', function ($query) use ($checkindate, $checkoutdate) {
                $query->select('rb.roomcode')
                    ->from('roomblockout as rb')
                    ->where('rb.fromdate', '<', $checkoutdate)
                    ->where('rb.todate', '>', $checkindate)
                    ->where('rb.type', 'O');
            })
            ->groupBy('rm.rcode', 'rm.room_cat')
            ->get();

        return response()->json([
            'success' => true,
            'count' => $roommast->count(),
            'data' => $roommast,
        ]);
    }

    public function planfetchbycat(Request $request)
    {
        $roomcat = $request->roomcat;
        $plans = PlanMast::where('propertyid', Auth::user()->propertyid)->where('room_cat', $roomcat)->where('activeYN', 'Y')->orderBy('name')->get();
        return response()->json($plans);
    }

    public function walkincompdetail(Request $request)
    {
        $compcode = $request->compcode;

        $compdata = SubGroup::where('propertyid', Auth::user()->propertyid)->where('sub_code', $compcode)->first();

        $compdiscdata = CompanyDiscount::where('propertyid', Auth::user()->propertyid)->where('compcode', $compcode)->orderBy('sno')->get();

        return response()->json([
            'compdata' => $compdata,
            'compdiscdata' => $compdiscdata
        ]);
    }

    public function outletwiseitemshowoutlet(Request $request, $propertyid, $outletcode, $comp_name)
    {
        return $this->outletwiseitemshow($request, $propertyid, $outletcode, null, $comp_name);
    }

    public function outletwiseitemshow(Request $request, $propertyid, $outletcode, $rcode = null, $comp_name)
    {
        $propertyexists = propertyexists($propertyid);
        if (!$propertyexists) {
            return back('/')->with('Property Not Found!');
        }
        DB::purge('tenant');
        TenantDatabase::connect((int) $propertyexists->propertyid);
        DB::setDefaultConnection('tenant');
        $departdata = DB::table('depart')->where('propertyid', $propertyid)->where('dcode', $outletcode)->first();

        if ($departdata) {
            $associatedrestcode = [];
            $posparameter = EnviroPos::where('propertyid', $propertyid)->first();
            if ($posparameter->displaymergedoutlet == 'Y') {
                $associatedrestcode = Depart1::where('propertyid', $propertyid)
                    ->where('departcode', $departdata->dcode)
                    ->pluck('associatedrestcode')
                    ->toArray();
            }

            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);

            // return $restcodes;
            $items = DB::table('itemmast')
                ->select(
                    'itemmast.Name as item_name',
                    'itemrate.Rate as item_rate',
                    'items.itempic',
                    'itemmast.ItemGroup as item_group_code',
                    'itemgrp.name as group_name',
                    'itemmast.dishtype',
                    'itemmast.Code as item_code',
                    'itemmast.RestCode as rest_code'
                )
                ->leftJoin('items', 'items.icode', '=', 'itemmast.Code')
                ->leftJoin('itemrate', function ($join) {
                    $join->on('itemrate.ItemCode', '=', 'itemmast.Code')
                        ->on('itemrate.RestCode', '=', 'itemmast.RestCode');
                })
                ->leftJoin('itemgrp', function ($join) {
                    $join->on('itemgrp.code', '=', 'itemmast.ItemGroup')
                        ->on('itemgrp.restcode', '=', 'itemmast.RestCode');
                })
                ->where('itemmast.Property_ID', $propertyid)
                ->whereIn('itemmast.RestCode', $restcodes)
                ->where('itemmast.ActiveYN', 'Y')
                ->groupBy('itemmast.Code', 'itemmast.RestCode')
                ->orderBy('itemrate.AppDate')
                ->get();

            $comp_data = Companyreg::where('propertyid', $propertyid)->first();

            $propertyid = $comp_data->propertyid;


            if (strtolower($departdata->nature) == 'room service' && $rcode != null) {
                // return $rcode . ' - ' . strtolower($departdata->nature);
                $chkroomocc = RoomOcc::where('propertyid', $propertyid)
                    ->where('roomno', $rcode)
                    ->whereNull('type')
                    ->first();

                if (is_null($chkroomocc)) {
                    return redirect('/')->with('error', 'This room is not available for service yet.');
                }
            }

            $existingName = ServerMast::where('name', 'Self')
                ->where('propertyid', $propertyid)
                ->first();
            //error
            if (is_null($existingName)) {
                $scode = ServerMast::where('propertyid', $propertyid)->max('scode');
                if ($scode === null) {
                    $scode = 1;
                } else {
                    $scode = intval(substr($scode, 0, -3)) + 1;
                }

                $insertdata = [
                    'name' => 'Self',
                    'activeYN' => 'Y',
                    'created_at' => now(),
                    'sysYN' => 'N',
                    'scode' => $scode . $propertyid,
                    'u_name' => 'sa',
                    'propertyid' => $propertyid,
                    'u_ae' => 'a',
                ];

                ServerMast::insert($insertdata);
            }
        } else {
            return redirect('/')->with('error', 'Department not found for the given outlet code.');
        }

        return view('frontend.outletitemlist', [
            'items' => $items,
            'comp_data' => $comp_data,
            'depart' => $departdata,
            'rcode' => $rcode,
        ]);
    }
}
