<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Models\Companyreg;
use App\Models\ItemMast;
use App\Models\ItemRate;
use App\Models\MenuHelp;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ItemViewerController extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
    protected $ncurdate;
    protected $datemanage;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username   = Auth::user()->name;
            $this->email      = Auth::user()->email;
            $this->prpid      = Auth::user()->propertyid;
            $propertydata     = DB::table('users')->where('propertyid', $this->prpid)->first();
            $this->compcode   = Companyreg::where('propertyid', Auth::user()->propertyid)->value('comp_code');
            $this->ncurdate   = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth    = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage  = DateHelper::calculateDateRanges($this->ncurdate);

            return $next($request);
        });
    }

    // ─────────────────────────────────────────────────────────────────────────
    //  OPEN ITEM VIEWER PAGE
    // ─────────────────────────────────────────────────────────────────────────
    public function index()
    {
        // Restaurants / Outlets
        $restaurantdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('nature', ['Room Service', 'Outlet'])
            ->orderBy('name', 'ASC')
            ->get(['dcode', 'name']);

        // All item groups (ActiveYN='Y') — with RestCode for JS filtering
        $itemgroups = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->where('ActiveYN', 'Y')
            ->orderBy('name', 'ASC')
            ->get(['code', 'name', 'restcode']);   // restcode used in JS per-row filtering

        // Units — for inline select (code → name)
        $units = DB::table('unitmast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get(['ucode', 'name']);

        // Kitchens — for inline select + filter dropdown (dcode → name)
        $kitchens = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('nature', 'Kitchen')
            ->where(function ($q) {
                $q->where('activeYN', 'Y')->orWhereNull('activeYN');
            })
            ->orderBy('name', 'ASC')
            ->get(['dcode', 'name']);

        // Item Categories — for inline select + filter dropdown (Code → Name)
        $itemcategories = DB::table('itemcatmast')
            ->where('propertyid', $this->propertyid)
            ->where('ActiveYN', 'Y')
            ->orderBy('Name', 'ASC')
            ->get(['Code', 'Name', 'RestCode']);

        return view('property.itemviewer', compact('restaurantdata', 'itemgroups', 'units', 'kitchens', 'itemcategories'));
    }

    // ─────────────────────────────────────────────────────────────────────────
    //  AJAX – FETCH TABLE DATA (Restaurant + Group filter)
    // ─────────────────────────────────────────────────────────────────────────
    public function fetchData(Request $request)
    {
        $restcode  = $request->input('restcode');
        $groupcode = $request->input('groupcode');

        $query = DB::table('itemmast')
            ->select(
                'itemmast.id',
                'itemmast.Code',
                'itemmast.RestCode',
                'itemmast.Name as itemname',
                'itemmast.DispCode',
                'itemmast.Unit',
                'itemmast.RateEdit',
                'itemmast.DiscApp',
                'itemmast.SChrgApp',
                'itemmast.RateIncTax',
                'itemmast.ActiveYN',
                'itemmast.Kitchen',
                'itemmast.NType',
                'itemmast.dishtype',
                'itemmast.favourite',
                'itemmast.ItemGroup',
                'itemmast.ItemCatCode',
                'unitmast.name as unitname',
                'itemgrp.Name as itemgrpname',
                'itemcatmast.Name as itemcatname',
                'depart_r.Name as Restaurant',
                'depart_k.Name as Kitchenname',
                'itemrate.Rate'
            )
            ->leftJoin('itemgrp', function ($join) {
                $join->on('itemgrp.Code', '=', 'itemmast.ItemGroup')
                    ->where('itemgrp.property_id', '=', $this->propertyid);
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('unitmast.ucode', '=', 'itemmast.Unit')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->where('itemcatmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('depart as depart_r', function ($join) {
                $join->on('depart_r.dcode', '=', 'itemmast.RestCode')
                    ->where('depart_r.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemrate', function ($join) {
                $join->on('itemrate.ItemCode', '=', 'itemmast.Code')
                    ->on('itemrate.RestCode', '=', 'itemmast.RestCode')
                    ->where('itemrate.Property_ID', '=', $this->propertyid);
            })
            ->leftJoin('depart as depart_k', function ($join) {
                $join->on('depart_k.dcode', '=', 'itemmast.Kitchen')
                    ->where('depart_k.propertyid', '=', $this->propertyid)
                    ->where('depart_k.nature', '=', 'Kitchen')
                    ->where(function ($q) {
                        $q->where('depart_k.activeYN', '=', 'Y')
                          ->orWhereNull('depart_k.activeYN');
                    });
            })
            ->where('itemmast.Property_ID', '=', $this->propertyid)
            ->whereNotIn('itemmast.RestCode', [
                'PURC' . $this->propertyid,
                'BANQ' . $this->propertyid,
            ]);

        if (!empty($restcode)) {
            $query->where('itemmast.RestCode', $restcode);
        }

        if (!empty($groupcode)) {
            $query->where('itemmast.ItemGroup', $groupcode);
        }

        $items = $query->groupBy('itemmast.Code', 'itemmast.RestCode')->get();

        return response()->json([
            'status' => 'success',
            'data'   => $items,
        ]);
    }

    // ─────────────────────────────────────────────────────────────────────────
    //  AJAX – FETCH ITEM GROUPS BY RESTAURANT (for Group dropdown cascade)
    // ─────────────────────────────────────────────────────────────────────────
    public function fetchGroups(Request $request)
    {
        $restcode = $request->input('restcode');

        $groups = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->where('restcode', $restcode)
            ->orderBy('name', 'ASC')
            ->get(['code', 'name']);

        return response()->json(['status' => 'success', 'groups' => $groups]);
    }

    // ─────────────────────────────────────────────────────────────────────────
    //  AJAX – INLINE CELL UPDATE (itemmast + itemrate)
    // ─────────────────────────────────────────────────────────────────────────
    public function updateCell(Request $request)
    {
        $request->validate([
            'code'     => 'required',
            'restcode' => 'required',
            'field'    => 'required|string',
            'value'    => 'nullable',
        ]);

        $code     = $request->input('code');
        $restcode = $request->input('restcode');
        $field    = $request->input('field');
        $value    = $request->input('value');

        // Fields that belong to itemrate table
        $itemrateFields = ['Rate'];

        // Fields that belong to itemmast table
        $itemmastFields = [
            'Unit', 'RateEdit', 'DiscApp', 'SChrgApp', 'RateIncTax',
            'ActiveYN', 'Kitchen', 'NType', 'dishtype', 'favourite',
            'ItemGroup', 'DispCode', 'ItemCatCode', 'Name',
        ];

        try {
            if (in_array($field, $itemrateFields)) {
                // Validate rate is numeric
                if (!is_numeric($value)) {
                    return response()->json([
                        'status'  => 'error',
                        'message' => 'Rate must be a valid number.',
                    ], 422);
                }

                ItemRate::where('Property_ID', $this->propertyid)
                    ->where('ItemCode', $code)
                    ->where('RestCode', $restcode)
                    ->update([
                        $field    => $value,
                        'U_Name'  => Auth::user()->u_name,
                        'U_AE'    => 'e',
                    ]);

            } elseif (in_array($field, $itemmastFields)) {
                ItemMast::where('Property_ID', $this->propertyid)
                    ->where('Code', $code)
                    ->where('RestCode', $restcode)
                    ->update([
                        $field    => $value,
                        'U_Name'  => Auth::user()->u_name,
                        'U_AE'    => 'e',
                    ]);
            } else {
                return response()->json([
                    'status'  => 'error',
                    'message' => 'Field not allowed for inline edit.',
                ], 422);
            }

            return response()->json([
                'status'  => 'success',
                'message' => 'Updated successfully!',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status'  => 'error',
                'message' => 'Update failed: ' . $e->getMessage(),
            ], 500);
        }
    }
}
