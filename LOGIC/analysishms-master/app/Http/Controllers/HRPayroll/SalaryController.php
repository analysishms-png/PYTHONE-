<?php

namespace App\Http\Controllers\HRPayroll;

use App\Http\Controllers\Controller;
use App\Models\Attendance;
use App\Models\Employee;
use App\Models\Ledger;
use App\Models\Overtime;
use App\Models\Salary;
use App\Models\VoucherPrefix;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class SalaryController extends Controller
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
        return view('property.hrpayroll.salarycreation');
    }

    public function getemployee(Request $request)
    {
        $department = $request->input('department');
        $salarydate = $request->input('salarydate');
        $data = Employee::where('propertyid', $this->propertyid)
            ->where('department', $department)
            ->where('joining_date', '<=', $salarydate)
            ->where(function ($query) use ($salarydate) {
                $query->where('resign_date', '>', $salarydate)
                    ->orWhereNull('resign_date');
            })
            ->orderBy('name', 'ASC')
            ->get();

        return response()->json($data);
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $employees = $request->input('employees');
            $salarydate = $request->input('salarydate');
            $month = $request->input('month');
            $monthdate = date('Y-m-d', strtotime($month . '-01'));
            $vtype = 'SL';
            foreach ($employees as $employeeid) {

                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', 'SL')
                    ->whereDate('date_from', '<=', $salarydate)
                    ->whereDate('date_to', '>=', $salarydate)
                    ->first();

                if ($chkvpf === null || $chkvpf === '0') {
                    DB::rollBack();
                    return response()->json([
                        'success' => false,
                        'message' => 'Voucher prefix not found for the current date. Please contact administrator.'
                    ]);
                }

                $vprefix = $chkvpf->prefix;
                $vno = $chkvpf->start_srl_no + 1;
                $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                $employee = Employee::where('propertyid', $this->propertyid)
                    ->where('code', $employeeid)
                    ->where('activeyn', 'Y')
                    ->first();

                $totalabsent = Attendance::where('propertyid', $this->propertyid)
                    ->where('empcode', $employeeid)
                    ->whereMonth('vdate', date('m', strtotime($monthdate)))
                    ->whereYear('vdate', date('Y', strtotime($monthdate)))
                    ->selectRaw("
                            COALESCE(SUM(
                                (CASE WHEN firstshift = 'A' THEN 0.5 ELSE 0 END) +
                                (CASE WHEN secondshift = 'A' THEN 1 ELSE 0 END)
                            ), 0) as totalabsent
                        ")
                    ->value('totalabsent');

                $totalleave = Attendance::where('propertyid', $this->propertyid)
                    ->where('empcode', $employeeid)
                    ->whereMonth('vdate', date('m', strtotime($monthdate)))
                    ->whereYear('vdate', date('Y', strtotime($monthdate)))
                    ->selectRaw("
                        COALESCE(SUM(
                            (CASE WHEN firstshift = 'L' THEN 0.5 ELSE 0 END) +
                            (CASE WHEN secondshift = 'L' THEN 0.5 ELSE 0 END)
                        ), 0) as totalleave
                    ")
                    ->value('totalleave');

                $totalcl = Attendance::where('propertyid', $this->propertyid)
                    ->where('empcode', $employeeid)
                    ->whereMonth('vdate', date('m', strtotime($monthdate)))
                    ->whereYear('vdate', date('Y', strtotime($monthdate)))
                    ->selectRaw("
                        COALESCE(SUM(
                            (CASE WHEN firstshift = 'C' THEN 0.5 ELSE 0 END) +
                            (CASE WHEN secondshift = 'C' THEN 0.5 ELSE 0 END)
                        ), 0) as totalcl
                    ")
                    ->value('totalcl');

                $totalworkdays = payrollparameter()->gdayssalary - $totalabsent;
                $daysalary = $employee->basic / payrollparameter()->gdayssalary;
                $salarygiven = $daysalary * $totalworkdays;

                $totalsundays = 0;
                $startdate = date('Y-m-01', strtotime($monthdate));
                $enddate = date('Y-m-t', strtotime($monthdate));
                while (strtotime($startdate) <= strtotime($enddate)) {
                    if (date('N', strtotime($startdate)) == 7) {
                        $totalsundays++;
                    }
                    $startdate = date('Y-m-d', strtotime($startdate . ' +1 day'));
                }
                $totalovertime = Overtime::where('propertyid', $this->propertyid)
                    ->where('empcode', $employeeid)
                    ->whereMonth('otdate', date('m', strtotime($monthdate)))
                    ->sum('amount') ?? 0;

                $workdayaftersunday = $totalworkdays - $totalsundays;
                $onedayda = $employee->da / $workdayaftersunday;
                $earnedda = $onedayda * $workdayaftersunday;

                $onedayconveyance = $employee->conveyance / $workdayaftersunday;
                $earnedconveyance = $onedayconveyance * $workdayaftersunday;

                $onedaylta = $employee->lta / $workdayaftersunday;
                $earnedlta = $onedaylta * $workdayaftersunday;

                // Log::info("empid: $employeeid, onedayda: $onedayda, earnedda: $earnedda");
                $salary = new Salary();
                $salary->propertyid = $this->propertyid;
                $salary->emp_code = $employeeid;
                $salary->mth_year = $month;
                $salary->work_day = $totalworkdays;
                $salary->leave = $totalleave ?? 0;
                $salary->cl = $totalcl ?? 0;
                $salary->absent = $totalabsent ?? 0;
                $salary->basic = $employee->basic ?? 0;
                $salary->sunday = $totalsundays ?? 0;
                $salary->da = $onedayda ?? 0;
                $salary->hra = $employee->hra ?? 0;
                $salary->conveyance = $onedayconveyance ?? 0;
                $salary->lta = $onedaylta ?? 0;
                $salary->medical = $employee->medical ?? 0;
                $salary->overtime = $totalovertime;
                $salary->overtimeamt = $totalovertime;
                $salary->net_salary = $salarygiven;
                $salary->emp_basic = $employee->basic;
                $salary->department = $employee->department;
                $salary->created_at = now();
                $salary->u_name = Auth::user()->name;
                $salary->u_ae = 'a';
                $salary->save();

                $ledger1 = new Ledger();
                $ledger1->propertyid = $this->propertyid;
                $ledger1->docid = $docid;
                $ledger1->vtype = $vtype;
                $ledger1->vprefix = $vprefix;
                $ledger1->vdate = $salarydate;
                $ledger1->vsno = 1;
                $ledger1->vno = $vno;
                $ledger1->subcode = $employee->ac_code;
                $ledger1->contrasub = payrollparameter()->salaryac;
                $ledger1->amtdr = $salarygiven;
                $ledger1->narration = $request->input('remarks') ?? '';
                $ledger1->clgdate = $salarydate;
                $ledger1->groupcode = subgroup(payrollparameter()->salaryac)->group_code;
                $ledger1->groupnature = acgroup(subgroup(payrollparameter()->salaryac)->group_code)->nature;
                $ledger1->u_name = Auth::user()->name;
                $ledger1->created_at = now();
                $ledger1->u_ae = 'a';
                $ledger1->save();

                $ledger2 = new Ledger();
                $ledger2->propertyid = $this->propertyid;
                $ledger2->docid = $docid;
                $ledger2->vtype = $vtype;
                $ledger2->vprefix = $vprefix;
                $ledger2->vdate = $salarydate;
                $ledger2->vsno = 2;
                $ledger2->vno = $vno;
                $ledger2->subcode = payrollparameter()->salaryac;
                $ledger2->contrasub = $employee->ac_code;
                $ledger2->amtcr = $salarygiven;
                $ledger2->narration = $request->input('remarks') ?? '';
                $ledger2->clgdate = $salarydate;
                $ledger2->groupcode = subgroup(payrollparameter()->salaryac)->group_code;
                $ledger2->groupnature = acgroup(subgroup(payrollparameter()->salaryac)->group_code)->nature;
                $ledger2->u_name = Auth::user()->name;
                $ledger2->created_at = now();
                $ledger2->u_ae = 'a';
                $ledger2->save();

                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }
            // return 'sagar';
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Salaries processed successfully.'
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            Log::error('Error processing salaries: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'An error occurred while processing salaries. Please try again.' . $e->getMessage()
            ]);
        }
    }

    public function destroy(Request $request)
    {
        try {
            DB::beginTransaction();

            $month = $request->input('month');
            $department = $request->input('department');
            $monthdate = date('Y-m-d', strtotime($month . '-01'));

            Salary::where('propertyid', $this->propertyid)
                ->where('mth_year', $month)
                ->where('department', $department)
                ->delete();

            Ledger::where('propertyid', $this->propertyid)
                ->where('vtype', 'SL')
                ->whereMonth('vdate', date('m', strtotime($monthdate)))
                ->whereYear('vdate', date('Y', strtotime($monthdate)))
                ->where(function ($query) use ($department) {
                    $query->whereIn('subcode', function ($subquery) use ($department) {
                        $subquery->select('ac_code')
                            ->from('employee')
                            ->where('propertyid', $this->propertyid)
                            ->where('department', $department);
                    })
                        ->orWhereIn('contrasub', function ($subquery) use ($department) {
                            $subquery->select('ac_code')
                                ->from('employee')
                                ->where('propertyid', $this->propertyid)
                                ->where('department', $department);
                        });
                })
                ->delete();

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Salaries decreated successfully.'
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            Log::error('Error deleting salaries: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'An error occurred while decreating salaries. Please try again.' . $e->getMessage()
            ]);
        }
    }
}
