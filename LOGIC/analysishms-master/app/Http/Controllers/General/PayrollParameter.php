<?php

namespace App\Http\Controllers\General;

use App\Http\Controllers\Controller;
use App\Models\EnviroPayroll;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PayrollParameter extends Controller
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
        $chkexist = EnviroPayroll::where('propertyid', $this->propertyid)->first();
        if (!isset($chkexist)) {
            $payroll = new EnviroPayroll();
            $payroll->propertyid = $this->propertyid;
            $payroll->created_at = date('Y-m-d H:i:s');
            $payroll->u_name = Auth::user()->name;
            $payroll->save();
        }
        return view('property.general.payrollparameter');
    }

    public function updatepayroll(Request $request)
    {

        $payroll = EnviroPayroll::where('propertyid', $this->propertyid)->first();
        $payroll->pflimit = $request->pflimit;
        $payroll->pfemployee = $request->pfemployee;
        $payroll->pfemployer = $request->pfemployer;
        $payroll->esilimit = $request->esilimit;
        $payroll->esiemployee = $request->esiemployee;
        $payroll->loanac = $request->loanac;
        $payroll->salaryac = $request->salaryac;
        $payroll->advanceac = $request->advanceac;
        $payroll->gdayssalary = $request->gdayssalary;
        $payroll->updated_at = date('Y-m-d H:i:s');
        $payroll->u_name = Auth::user()->name;
        $payroll->save();
        return redirect()->back()->with('success', 'Payroll Parameter Updated Successfully');
    }
}
