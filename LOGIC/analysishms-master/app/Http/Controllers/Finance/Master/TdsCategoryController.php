<?php

namespace App\Http\Controllers\Finance\Master;

use App\Http\Controllers\Controller;
use App\Models\TdsCategory;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class TdsCategoryController extends Controller
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

    public function index()
    {
        $data = TdsCategory::select('tds_categories.*', 'subgroup.name as accountname')
            ->leftJoin('subgroup', 'tds_categories.account', '=', 'subgroup.sub_code')
            ->where('tds_categories.propertyid', $this->propertyid)
            ->get();

        return view('property.finance.master.tdscategory', compact('data'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'tdspercentage' => 'required|numeric',
            'account' => 'nullable|string',
        ]);

        $latestcode = TdsCategory::where('propertyid', $this->propertyid)->max('code');
        $newCode = $latestcode ? str_pad($latestcode + 1, 4, '0', STR_PAD_LEFT) : '0001';

        TdsCategory::create([
            'propertyid' => $this->propertyid,
            'code' => $newCode,
            'name' => $request->name,
            'tdspercentage' => $request->tdspercentage,
            'account' => $request->account,
            'u_name' => auth()->user()->name,
        ]);

        return back()->with('success', 'TDS Category created successfully.');
    }

    public function edit($id)
    {
        $editData = TdsCategory::where('propertyid', $this->propertyid)->findOrFail($id);

        return view('property.finance.master.tdscategoryedit', compact('editData'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'tdspercentage' => 'required|numeric',
            'account' => 'nullable|string',
        ]);

        $tdsCategory = TdsCategory::where('propertyid', $this->propertyid)->findOrFail($id);
        $tdsCategory->update([
            'name' => $request->name,
            'tdspercentage' => $request->tdspercentage,
            'account' => $request->account,
            'u_name' => auth()->user()->name,
        ]);

        return redirect()->route('finance.master.tdscategory')
            ->with('success', 'TDS Category updated successfully.');
    }

    public function destroy($id)
    {
        $tdsCategory = TdsCategory::where('propertyid', $this->propertyid)->findOrFail($id);
        $tdsCategory->delete();

        return redirect()->route('finance.master.tdscategory')
            ->with('success', 'TDS Category deleted successfully.');
    }
}
