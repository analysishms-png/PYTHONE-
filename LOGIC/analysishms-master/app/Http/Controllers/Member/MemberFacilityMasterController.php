<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Models\MemberCategory;
use App\Models\MemberFacilityMast;
use App\Models\MemberFamily;
use App\Models\SubGroup;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class MemberFacilityMasterController extends Controller
{
    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }
            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }

    public function index()
    {
        $taxstrudata = DB::table('taxstru')->where('propertyid', $this->propertyid)
            ->groupBy('str_code')
            ->get();

        $subgroupdata = DB::table('subgroup')->where('propertyid', $this->propertyid)->where('nature', 'Sale')->orderBy('name', 'ASC')->get();

        $memmberfacilitymast = MemberFacilityMast::select(
            'memfacilitymast.*',
            'subgroup.name as accountname',
            'taxstru.name as taxstruname'
        )
            ->leftJoin('subgroup', function ($join) {
                $join->on('subgroup.sub_code', '=', 'memfacilitymast.accode')
                    ->where('subgroup.propertyid', $this->propertyid);
            })
            ->leftJoin('taxstru', function ($join) {
                $join->on('taxstru.str_code', '=', 'memfacilitymast.taxstru')
                    ->where('taxstru.propertyid', $this->propertyid);
            })
            ->where('memfacilitymast.propertyid', $this->propertyid)
            ->groupBy('memfacilitymast.code')
            ->orderByDesc('memfacilitymast.sn')->get();

        return view('property.members.memberfacilitymast', [
            'taxstrudata' => $taxstrudata,
            'subgroupdata' => $subgroupdata,
            'memmberfacilitymast' => $memmberfacilitymast
        ]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'name' => 'required',
                'shortname' => 'required'
            ]);

            DB::beginTransaction();

            $duplicatename = MemberFacilityMast::where('propertyid', $this->propertyid)->where('name', $request->name)->first();

            if (!is_null($duplicatename)) {
                return redirect()->back()->with('error', 'Member category name already exist!');
            }

            $duplicatenameshort = MemberFacilityMast::where('propertyid', $this->propertyid)->where('sname', $request->short_name)->first();

            if (!is_null($duplicatenameshort)) {
                return redirect()->back()->with('error', 'Member category short name already exist!');
            }

            $maxinqresult = DB::table('memfacilitymast')
                ->select(DB::raw('MAX(CAST(code AS SIGNED)) AS max_code'))
                ->where('propertyid', $this->propertyid)
                ->first();

            $maxcode = $maxinqresult->max_code;

            if ($maxcode == null) {
                $code = $this->propertyid . '1';
            } else {
                $serial = (int)substr($maxcode, strlen($this->propertyid)) + 1;
                $code = $this->propertyid . $serial;
            }
            $mem = new MemberFacilityMast();
            $mem->propertyid = $this->propertyid;
            $mem->code = $code;
            $mem->name = $request->name;
            $mem->sname = $request->shortname;
            $mem->chargetype = $request->facilitytype;
            $mem->fixedrate = $request->fixrate ?? '0.00';
            $mem->taxstru = $request->taxstructure;
            $mem->accode = $request->accountname;
            $mem->activeyn = $request->activeyn;
            $mem->u_name = Auth::user()->name;
            $mem->created_at = now();
            $mem->updated_at = null;
            $mem->u_ae = 'a';
            $mem->save();

            DB::commit();

            return back()->with('success', 'Member Facility Added successfully');
        } catch (Exception $e) {
            DB::rollBack();
            return redirect()->back()->with('error', 'Failed to save member facility: ' . $e->getMessage());
        }
    }

    public function update(Request $request, $code)
    {
        try {
            $data = MemberFacilityMast::where('propertyid', $this->propertyid)->where('code', $code)->first();
            $taxstrudata = DB::table('taxstru')->where('propertyid', $this->propertyid)
                ->groupBy('str_code')
                ->get();

            $subgroupdata = DB::table('subgroup')->where('propertyid', $this->propertyid)->where('nature', 'Sale')->orderBy('name', 'ASC')->get();

            return view('property.members.memberfacilitymastupdate', [
                'data' => $data,
                'taxstrudata' => $taxstrudata,
                'subgroupdata' => $subgroupdata
            ]);
        } catch (Exception $e) {
            return redirect()->back()->with('error', $e->getMessage());
        }
    }

    public function updatestore(Request $request, $code)
    {
        try {

            $request->validate([
                'name'  => 'required|string|max:191',
                'shortname'       => 'required|string|max:191'
            ]);

            DB::beginTransaction();

            $duplicatename = MemberFacilityMast::where('propertyid', $this->propertyid)->where('name', $request->name)->whereNot('code', $code)->first();

            if (!is_null($duplicatename)) {
                return redirect()->back()->with('error', 'Member facitility name already exist!');
            }

            $duplicatenameshort = MemberFacilityMast::where('propertyid', $this->propertyid)->where('sname', $request->shortname)->whereNot('code', $code)->first();

            if (!is_null($duplicatenameshort)) {
                return redirect()->back()->with('error', 'Member facitility short name already exist!');
            }

            MemberFacilityMast::where('propertyid', $this->propertyid)
                ->where('code', $code)
                ->update([
                    'name'           => $request->name,
                    'sname'      => $request->shortname,
                    'chargetype'    => $request->facilitytype,
                    'fixedrate'       => $request->fixrate,
                    'taxstru' =>    $request->taxstructure,
                    'activeyn'          => $request->activeyn,
                    'accode'  =>    $request->accountname,
                    'updated_at'      => now(),
                ]);

            DB::commit();

            return redirect('member/memfacilitymast')->with('success', 'Member Facility updated successfully!');
        } catch (Exception $e) {
            return redirect()->back()->with('error', $e->getMessage());
        }
    }

    public function delete(Request $request, $code)
    {
        try {
            MemberFacilityMast::where('propertyid', $this->propertyid)->where('code', $code)->delete();

            return redirect()->back()->with('success', 'Member facility deleted successfully!');
        } catch (Exception $e) {
            return redirect()->back()->with('error', $e->getMessage());
        }
    }
}
