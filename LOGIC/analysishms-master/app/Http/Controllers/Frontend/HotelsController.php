<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Companyreg;
use App\Models\GrpBookinDetail;
use App\Models\PlanMast;
use App\Models\RoomCat;
use App\Models\RoomOcc;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HotelsController extends Controller
{
    public function index($propertyid)
    {
        $compdata = Companyreg::where('propertyid', $propertyid)->first();
        if (!$compdata) {
            abort(404);
        }

        return view('frontend.hotels.index', compact('compdata'));
    }


    public function fetchdatewiseemptyroomcat(Request $request, $propertyid)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $roomcategories = RoomCat::with(['plans', 'ratelistdetails'])
            ->select('cat_code', 'name', 'norooms', 'image_path', 'ammenties')
            ->where('propertyid', $propertyid)
            ->where('inclcount', 'y')
            ->orderBy('name')
            ->get();

        $results = [];
        $totalrooms = 0;

        foreach ($roomcategories as $category) {

            $currentDate = $fromdate;
            $minAvailableRooms = $category->norooms;

            while (strtotime($currentDate) <= strtotime($todate)) {
                $norooms = $category->norooms;

                $busyrooms_grp = GrpBookinDetail::where('Property_ID', $propertyid)
                    ->whereDate('ArrDate', '<=', $currentDate)
                    ->whereDate('DepDate', '>', $currentDate)
                    ->where('RoomCat', $category->cat_code)
                    ->where('ContraDocId', '')
                    ->where('Cancel', 'N')
                    ->sum('RoomDet');

                $busyrooms_occ = RoomOcc::where('propertyid', $propertyid)
                    ->where('roomcat', $category->cat_code)
                    ->where('roomtype', 'ro')
                    ->whereDate('chkindate', '<=', $currentDate)
                    ->whereDate('depdate', '>', $currentDate)
                    ->whereNull('type')
                    ->count();

                $available = $norooms - ($busyrooms_grp + $busyrooms_occ);
                if ($available < $minAvailableRooms) {
                    $minAvailableRooms = max(0, $available);
                }

                $currentDate = date('Y-m-d', strtotime($currentDate . ' +1 day'));
            }

            if ($minAvailableRooms <= 0) continue;

            $totalrooms += $minAvailableRooms;

            $results[] = [
                'category' => $category->name,
                'cat_code' => $category->cat_code,
                'available_rooms' => $minAvailableRooms,
                'category_image' => $category->image_path,
                'category_ammenities' => $category->ammenties,
                'plans' => $category->plans->map(function ($plan) {
                    return [
                        'plan_code' => $plan->pcode,
                        'plan_name' => $plan->name,
                        'plan_package_amount' => $plan->package_amount,
                        'plan_adults' => $plan->adults,
                        'plan_childs' => $plan->childs,
                        'plan_desc1' => $plan->desc1,
                        'plan_desc2' => $plan->desc2,
                    ];
                }),
                'rateliscategory' => $category->ratelistdetails
                    ->groupBy('occtype')
                    ->map(function ($rates, $occtype) {
                        $rate = $rates->first();
                        return [
                            'occtype' => $occtype,
                            'rate2' => $rate->rate2,
                        ];
                    })->values()
            ];
        }

        return response()->json([
            'roomcategories' => $results,
            'totalrooms' => $totalrooms,
            'fromdate' => $fromdate,
            'todate' => $todate
        ]);
    }



    public function availablerooms($propertyid, $fromdate, $todate)
    {
        $compdata = Companyreg::where('propertyid', $propertyid)->first();
        if (!$compdata) {
            abort(404);
        }

        $availableRooms = DB::table('room_mast as rm')
            ->select([
                'rm.rcode',
                'rm.room_cat',
                'rc.name as catname',
                'rc.image_path as catimage',
                'rm.pic_path as roomimage',
            ])
            ->leftJoin('room_cat as rc', function ($join) use ($propertyid) {
                $join->on('rc.cat_code', '=', 'rm.room_cat')
                    ->where('rc.propertyid', '=', $propertyid);
            })
            ->where('rm.propertyid', $propertyid)
            ->where('rm.type', 'RO')
            ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $fromdate, $todate) {
                $query->select('ro.roomno')
                    ->from('roomocc as ro')
                    ->where('ro.propertyid', $propertyid)
                    ->whereNull('ro.type')
                    ->where('ro.chkindate', '<', $todate)
                    ->where('ro.depdate', '>=', $fromdate);
            })
            ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $fromdate, $todate) {
                $query->select('gb.RoomNo')
                    ->from('grpbookingdetails as gb')
                    ->where('gb.Property_ID', $propertyid)
                    ->where('gb.ArrDate', '<', $todate)
                    ->where('gb.DepDate', '>', $fromdate)
                    ->where('gb.chkoutyn', 'N')
                    ->where('gb.Cancel', 'N')
                    ->where('gb.RoomNo', '!=', 0);
            })
            ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $fromdate, $todate) {
                $query->select('rb.roomcode')
                    ->from('roomblockout as rb')
                    ->where('rb.fromdate', '<', $todate)
                    ->where('rb.todate', '>', $fromdate)
                    ->where('rb.propertyid', $propertyid)
                    ->where('rb.type', 'O');
            })
            ->get();


        return response()->json([
            'availableRooms' => $availableRooms,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ]);
    }

    public function hotelbooking(Request $request, $propertyid)
    {
        $compdata = Companyreg::where('propertyid', $propertyid)->first();
        if (!$compdata) {
            abort(404);
        }
        $category = $request->query('category');
        $rate = $request->query('rate');
        $checkin = $request->query('checkin');
        $checkout = $request->query('checkout');
        $rooms = $request->query('rooms');
        $adults = $request->query('adults');
        $children = $request->query('children');
        $plancode = $request->query('plancode', '');

        $categorydata = RoomCat::where('propertyid', $propertyid)
            ->where('cat_code', $category)
            ->first();

        $plandata = PlanMast::where('propertyid', $propertyid)
            ->where('pcode', $plancode)
            ->first();

        $data = [
            'rate' => $rate,
            'checkin' => $checkin,
            'checkout' => $checkout,
            'rooms' => $rooms,
            'adults' => $adults,
            'children' => $children,
            'categorydata' => $categorydata,
            'plandata' => $plandata,
            'propertyid' => $propertyid,
        ];

        return view('frontend.hotels.booking', [
            'data' => $data,
            'compdata' => $compdata,
        ]);
    }
}
