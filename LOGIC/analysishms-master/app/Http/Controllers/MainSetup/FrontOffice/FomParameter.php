<?php

namespace App\Http\Controllers\MainSetup\FrontOffice;

use App\Http\Controllers\Controller;
use App\Models\EnviroFom;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FomParameter extends Controller
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

    public function housekeepingparamstore(Request $request)
    {
        $request->validate([
            'autoroomassign' => 'required|numeric|min:0|max:1',
            'housekeepingroomstatus' => 'required|numeric|min:0|max:1',
            'googlereviewurl' => 'nullable|url',
            'deptnotificationyn' => 'required|numeric|min:0|max:1',
        ]);

        EnviroFom::where('propertyid', $this->propertyid)
            ->update([
                'autoroomassign' => $request->autoroomassign,
                'housekeepingroomstatus' => $request->housekeepingroomstatus,
                'googlereviewurl' => $request->googlereviewurl,
                'deptnotificationyn' => $request->deptnotificationyn,
            ]);

        return back()->with('success', 'House Keeping Updated');
    }

    public function grcinstructionparamstore(Request $request)
    {
        $permission = revokeopen(121211);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $rules = [];
        foreach (range(1, 12) as $i) {
           $rules['grcinstruction' . $i] = 'nullable|string';

        }
        $request->validate($rules);

        $updateData = [];
        foreach (range(1, 12) as $i) {
            $column = 'grcinstruction' . $i;
            $updateData[$column] = $request->input($column, '');
        }

        EnviroFom::where('propertyid', $this->propertyid)->update($updateData);

        return back()->with('success', 'GRC Instructions Updated successfully!');
    }
}
