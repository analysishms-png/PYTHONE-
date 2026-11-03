<?php

namespace App\Http\Controllers\HRPayroll;

use App\Http\Controllers\Controller;
use App\Models\Attendance;
use App\Models\Employee;
use App\Models\VoucherPrefix;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LeaveController extends Controller
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

        return view('property.hrpayroll.leave', compact('employees'));
    }

    public function store(Request $request)
    {
        $vtype = "ADE";
        $date_from = date('Y-m-d', strtotime($request->date_from));
        $date_to = date('Y-m-d', strtotime($request->date_to));

        if ($date_from > $date_to) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid date range. "Date From" must be before "Date To".'
            ]);
        }

        if ($date_from > ncurdate()) {
            return response()->json([
                'success' => false,
                'message' => 'Leave cannot be applied for future dates'
            ]);
        }

        $from = new \DateTime($date_from);
        $to = new \DateTime($date_to);
        $interval = $from->diff($to);
        $days = $interval->days + 1;

        $currentdate = new \DateTime($date_from);
        for ($i = 0; $i < $days; $i++) {

            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $currentdate->format('Y-m-d'))
                ->whereDate('date_to', '>=', $currentdate->format('Y-m-d'))
                ->first();
            if ($chkvpf === null || $chkvpf === '0') {
                return response()->json([
                    'success' => false,
                    'message' => 'Voucher prefix not found for the current date. Please contact administrator.'
                ]);
            }

            $vprefix = $chkvpf->prefix;

            // check if record already exists in attendance
            $check = Attendance::where('propertyid', $this->propertyid)
                ->where('empcode', $request->employee)
                ->where('vdate', $currentdate->format('Y-m-d'))
                ->first();
            if ($check) {
                return response()->json([
                    'success' => false,
                    'message' => 'Leave already exists for the selected date range'
                ]);
            }

            $emptable = Employee::where('propertyid', $this->propertyid)->where('code', $request->employee)->first();
            if ($currentdate->format('Y-m-d') < $emptable->joining_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Leave cannot be applied before the employee\'s joining date'
                ]);
            }

            if (!is_null($emptable->resign_date)) {
                if ($currentdate->format('Y-m-d') > $emptable->resign_date) {
                    return response()->json([
                        'success' => false,
                        'message' => 'Leave cannot be applied after the employee\'s resignation date'
                    ]);
                }
            }

            $attendance = new Attendance();
            $attendance->propertyid = $this->propertyid;
            $attendance->vdate = $currentdate->format('Y-m-d');
            $attendance->vprefix = $vprefix;
            $attendance->empcode = $request->employee;
            $attendance->firstshift = $request->firstshift;
            $attendance->secondshift = $request->secondshift;
            $attendance->created_at = date('Y-m-d H:i:s');
            $attendance->u_name = Auth::user()->name;
            $attendance->u_ae = 'a';
            $attendance->save();
            $currentdate->modify('+1 day');
        }

        return response()->json([
            'success' => true,
            'message' => 'Leave applied successfully'
        ]);
    }

    public function show()
    {
        $leaves = Attendance::select(
            'attendance.sn',
            'attendance.vdate',
            'attendance.firstshift',
            'attendance.secondshift',
            'attendance.created_at',
            'attendance.u_name',
            'attendance.u_ae',
            'employee.name as employee_name',
            'employee.code as employee_code'
        )
            ->leftJoin('employee', function ($join) {
                $join->on('employee.propertyid', '=', 'attendance.propertyid')
                    ->on('employee.code', '=', 'attendance.empcode');
            })
            ->where('attendance.propertyid', $this->propertyid)
            ->orderBy('attendance.created_at', 'desc')
            ->get();

        return response()->json([
            'success' => true,
            'data' => $leaves
        ]);
    }

    public function edit($sn)
    {
        $leave = Attendance::where('propertyid', $this->propertyid)->where('id', $sn)->first();

        if (!$leave) {
            return redirect()->route('leave')->with('error', 'Leave record not found');
        }

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

        return view('property.hrpayroll.leaveupdate', compact('leave', 'employees'));
    }

    public function update(Request $request, $sn)
    {

        $leave = Attendance::where('propertyid', $this->propertyid)->where('id', $sn)->first();
        if (!$leave) {
            return response()->json([
                'success' => false,
                'message' => 'Leave record not found'
            ]);
        }

        $attdata = [
            'firstshift' => $request->firstshift,
            'secondshift' => $request->secondshift,
            'updated_at' => date('Y-m-d H:i:s'),
            'u_name' => Auth::user()->name,
            'u_ae' => 'e'
        ];

        Attendance::where('propertyid', $this->propertyid)
            ->where('empcode', $request->employee)
            ->where('vdate', $leave->vdate)
            ->update($attdata);

        return response()->json([
            'success' => true,
            'message' => 'Leave updated successfully'
        ]);
    }

    public function destroy($sn)
    {
        $leave = Attendance::where('propertyid', $this->propertyid)->where('id', $sn)->first();

        if (!$leave) {
            return response()->json([
                'success' => false,
                'message' => 'Leave record not found'
            ]);
        }

        $leave->delete();

        return response()->json([
            'success' => true,
            'message' => 'Leave deleted successfully'
        ]);
    }
}
