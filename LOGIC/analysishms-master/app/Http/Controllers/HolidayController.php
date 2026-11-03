<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Holiday;
use Illuminate\Support\Facades\Auth;

class HolidayController extends Controller
{
    public function index()
    {
        return view('property.holidaymaster');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'holiday_date' => 'required|date',
            'name' => 'required|string|max:255',
            'type' => 'nullable|string',
            'is_repeat' => 'nullable|in:Y,N',
            'is_active' => 'nullable|in:Y,N',
        ]);

        // If 'id' is present, it's an update
        if ($request->has('id') && $request->id) {
            $holiday = Holiday::find($request->id);
            $holiday->propertyid = Auth::user()->propertyid;
            $holiday->u_name = Auth::user()->name;
            if ($holiday) {
                $holiday->u_ae = 'e';
                $holiday->update($validated);
                return response()->json(['success' => true, 'message' => 'Holiday updated successfully']);
            }
            return response()->json(['success' => false, 'message' => 'Holiday not found']);
        }

        // Create new
        $validated['propertyid'] = Auth::user()->propertyid;
        $validated['u_name'] = Auth::user()->name;
        $validated['u_ae'] = 'a';
        Holiday::create($validated);
        return response()->json(['success' => true, 'message' => 'Holiday created successfully']);
    }

    public function destroy($id)
    {
        $holiday = Holiday::find($id);
        if ($holiday) {
            $holiday->delete();
            return response()->json(['success' => true, 'message' => 'Holiday deleted successfully']);
        }
        return response()->json(['success' => false, 'message' => 'Holiday not found']);
    }

    public function getData()
    {
        $holidays = Holiday::orderBy('holiday_date', 'asc')->get();
        return response()->json(['data' => $holidays]);
    }

    public function printHolidayMaster()
    {
        $propertyid = Auth::user()->propertyid;
        $company = \Illuminate\Support\Facades\DB::table('company')->where('propertyid', $propertyid)->first();
        $data = \App\Models\Holiday::orderBy('holiday_date', 'asc')->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.printholidaymaster', ['company' => $company, 'data' => $data])->setPaper('a4', 'landscape');
        return $pdf->stream('holiday-master.pdf');
    }

    public function exportHolidayMaster()
    {
        $propertyid = Auth::user()->propertyid;
        $company = \Illuminate\Support\Facades\DB::table('company')->where('propertyid', $propertyid)->first();
        $companyName = $company->comp_name ?? '';
        $data = \App\Models\Holiday::orderBy('holiday_date', 'asc')->get();
        $export = new \App\Exports\HolidayMasterExport($companyName, $data);
        return $export->download();
    }
}