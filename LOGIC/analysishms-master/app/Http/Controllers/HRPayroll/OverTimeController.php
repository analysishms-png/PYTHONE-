<?php

namespace App\Http\Controllers\HRPayroll;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use App\Models\Overtime;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class OverTimeController extends Controller
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
        $employees = Employee::select(
            'employee.code',
            'employee.name',
            'depart.name as department',
            'desig.name as designation'
        )
            ->leftJoin('depart', function ($join) {
                $join->on('depart.propertyid', '=', 'employee.propertyid')
                    ->on('depart.dcode', '=', 'employee.department');
            })
            ->leftJoin('desig', function ($join) {
                $join->on('desig.propertyid', '=', 'employee.propertyid')
                    ->on('desig.code', '=', 'employee.designation');
            })
            ->where('employee.propertyid', $this->propertyid)
            ->get();

        $overtimerecord = Overtime::where('propertyid', $this->propertyid)->get();

        return view('property.hrpayroll.overtime', compact('employees', 'overtimerecord'));
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'employee' => 'required',
                'otdate' => 'required|date',
                'ottime' => 'required',
                'rate' => 'required|numeric|min:0',
                'amount' => 'required|numeric|min:0',
            ]);

            $otdate = $request->otdate;

            $checkalready = Overtime::where('propertyid', $this->propertyid)
                ->where('empcode', $request->employee)
                ->where('otdate', $otdate)
                ->first();

            if ($checkalready) {
                return response()->json([
                    'success' => false,
                    'message' => 'Overtime record already exists for this employee on the selected date'
                ]);
            }

            $emptable = Employee::where('propertyid', $this->propertyid)->where('code', $request->employee)->first();
            if ($otdate < $emptable->joining_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Overtime cannot be applied before the employee\'s joining date'
                ]);
            }

            if ($otdate > $emptable->resign_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Overtime cannot be applied after the employee\'s resignation date'
                ]);
            }

            $overtime = new Overtime();
            $overtime->propertyid = $this->propertyid;
            $overtime->empcode = $request->employee;
            $overtime->otdate = $request->otdate;
            $overtime->ottime = $request->ottime;
            $overtime->rate = $request->rate;
            $overtime->amount = $request->amount;
            $overtime->remark = $request->remarks ?? '';
            $overtime->u_name = Auth::user()->name;
            $overtime->created_at = now();
            $overtime->updated_at = now();
            $overtime->u_ae = 'a';
            $overtime->save();

            return response()->json([
                'success' => true,
                'message' => 'Overtime record created successfully'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error creating overtime record: ' . $e->getMessage()
            ], 500);
        }
    }

    public function edit($sn, $empcode)
    {
        $overtime = Overtime::where('propertyid', $this->propertyid)
            ->where('id', $sn)
            ->where('empcode', $empcode)
            ->first();

        if (!$overtime) {
            return back()->with('error', 'Overtime record not found for the specified employee and date');
        }

        return view('property.hrpayroll.overtimeedit', compact('overtime'));
    }

    public function update(Request $request, $sn, $empcode)
    {
        try {
            $request->validate([
                'employee' => 'required',
                'otdate' => 'required|date',
                'ottime' => 'required',
                'rate' => 'required|numeric|min:0',
                'amount' => 'required|numeric|min:0',
            ]);

            $overtime = Overtime::where('propertyid', $this->propertyid)
                ->where('id', $sn)
                ->where('empcode', $empcode)
                ->where('otdate', $request->otdate)
                ->first();

            if (!$overtime) {
                return response()->json([
                    'success' => false,
                    'message' => 'Overtime record not found for the specified employee and date'
                ], 404);
            }

            $emptable = Employee::where('propertyid', $this->propertyid)->where('code', $request->employee)->first();
            if ($request->otdate < $emptable->joining_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Overtime cannot be applied before the employee\'s joining date'
                ]);
            }

            if ($request->otdate > $emptable->resign_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Overtime cannot be applied after the employee\'s resignation date'
                ]);
            }

            $updatedata = [
                'empcode' => $request->employee,
                'otdate' => $request->otdate,
                'ottime' => $request->ottime,
                'rate' => $request->rate,
                'amount' => $request->amount,
                'remark' => $request->remarks ?? '',
                'u_name' => Auth::user()->name,
                'updated_at' => now(),
                'u_ae' => 'e'
            ];

            Overtime::where('propertyid', $this->propertyid)
                ->where('id', $sn)
                ->where('empcode', $empcode)
                ->where('otdate', $request->otdate)
                ->update($updatedata);

            return response()->json([
                'success' => true,
                'message' => 'Overtime record updated successfully'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error updating overtime record: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($sn, $empcode, $otdate)
    {
        try {
            $overtime = Overtime::where('propertyid', $this->propertyid)
                ->where('id', $sn)
                ->where('empcode', $empcode)
                ->where('otdate', $otdate)
                ->first();

            if (!$overtime) {
                return back()->with('error', 'Overtime record not found for the specified employee and date');
            }

            Overtime::where('propertyid', $this->propertyid)
                ->where('id', $sn)
                ->where('empcode', $empcode)
                ->where('otdate', $otdate)
                ->delete();

            return back()->with('success', 'Overtime record deleted successfully');
        } catch (Exception $e) {
            return back()->with('error', 'Error deleting overtime record: ' . $e->getMessage());
        }
    }
}
