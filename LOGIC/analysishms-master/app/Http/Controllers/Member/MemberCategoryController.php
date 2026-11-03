<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Models\MemberCategory;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class MemberCategoryController extends Controller
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

    public function openmembercategory()
    {
        return view('property.members.category');
    }

    public function categoryStore(Request $request)
    {
        try {

            $request->validate([
                'title'  => 'required|string|max:191',
                'short_name'       => 'required|string|max:191',
                'subscription'     => 'required|in:yes,no',
                'surcharge'        => 'required|in:yes,no',
                'facility_billing' => 'required|in:yes,no',
                'status'           => 'required|in:active,inactive',
            ]);

            DB::beginTransaction();

            $duplicatename = MemberCategory::where('propertyid', $this->propertyid)->where('title', $request->title)->first();

            if (!is_null($duplicatename)) {
                return redirect()->back()->with('error', 'Member category name already exist!');
            }

            $duplicatenameshort = MemberCategory::where('propertyid', $this->propertyid)->where('short_name', $request->short_name)->first();

            if (!is_null($duplicatenameshort)) {
                return redirect()->back()->with('error', 'Member category short name already exist!');
            }

            $maxinqresult = DB::table('member_categories')
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

            $membercategory = new MemberCategory();
            $membercategory->propertyid = $this->propertyid;
            $membercategory->code             = $code;
            $membercategory->title  = $request->title;
            $membercategory->short_name       = $request->short_name;
            $membercategory->subscription     = $request->subscription;
            $membercategory->surcharge        = $request->surcharge;
            $membercategory->facility_billing = $request->facility_billing;
            $membercategory->status           = $request->status;
            $membercategory->created_at = now();
            $membercategory->updated_at = null;
            $membercategory->save();

            DB::commit();

            return redirect()->back()->with('success', 'Member category created successfully!');
        } catch (Exception $e) {
            DB::rollBack();
            return redirect()->back()->with('error', 'Failed to save member category: ' . $e->getMessage());
        }
    }

    public function editcategory(Request $request, $code)
    {
        try {
            $data = MemberCategory::where('propertyid', $this->propertyid)->where('code', $code)->first();

            return view('property.members.categoryupdate', [
                'data' => $data
            ]);
        } catch (Exception $e) {
            return redirect()->back()->with('error', $e->getMessage());
        }
    }

    public function deletecategory(Request $request, $code)
    {
        try {
            MemberCategory::where('propertyid', $this->propertyid)->where('code', $code)->delete();

            return redirect()->back()->with('success', 'Member category deleted successfully!');
        } catch (Exception $e) {
            return redirect()->back()->with('error', $e->getMessage());
        }
    }

    public function updatecategory(Request $request, $code)
    {
        try {

            $request->validate([
                'title'  => 'required|string|max:191',
                'short_name'       => 'required|string|max:191',
                'subscription'     => 'required|in:yes,no',
                'surcharge'        => 'required|in:yes,no',
                'facility_billing' => 'required|in:yes,no',
                'status'           => 'required|in:active,inactive',
            ]);

            DB::beginTransaction();

            $duplicatename = MemberCategory::where('propertyid', $this->propertyid)->where('title', $request->title)->whereNot('code', $code)->first();

            if (!is_null($duplicatename)) {
                return redirect()->back()->with('error', 'Member category name already exist!');
            }

            $duplicatenameshort = MemberCategory::where('propertyid', $this->propertyid)->where('short_name', $request->short_name)->whereNot('code', $code)->first();

            if (!is_null($duplicatenameshort)) {
                return redirect()->back()->with('error', 'Member category short name already exist!');
            }

            MemberCategory::where('propertyid', $this->propertyid)
                ->where('code', $code)
                ->update([
                    'title'           => $request->title,
                    'short_name'      => $request->short_name,
                    'subscription'    => $request->subscription,
                    'surcharge'       => $request->surcharge,
                    'facility_billing' => $request->facility_billing,
                    'status'          => $request->status,
                    'updated_at'      => now(),
                ]);

            DB::commit();

            return redirect('member/category')->with('success', 'Member category updated successfully!');
        } catch (Exception $e) {
            return redirect()->back()->with('error', $e->getMessage());
        }
    }
}
