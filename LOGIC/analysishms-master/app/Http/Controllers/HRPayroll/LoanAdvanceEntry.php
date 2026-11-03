<?php

namespace App\Http\Controllers\HRPayroll;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use App\Models\Ledger;
use App\Models\Loan;
use App\Models\VoucherPrefix;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class LoanAdvanceEntry extends Controller
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
        $loans = Loan::where('propertyid', $this->propertyid)->get();
        return view('property.hrpayroll.loanadvanceentry', compact('loans'));
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $date = $request->input('date') ?? ncurdate();
            $vtype = $request->input('type');
            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $request->input('date'))
                ->whereDate('date_to', '>=', $request->input('date'))
                ->first();

            if ($chkvpf === null || $chkvpf === '0') {
                return response()->json([
                    'success' => false,
                    'message' => 'Voucher prefix not found for the current date. Please contact administrator.'
                ]);
            }

            $vprefix = $chkvpf->prefix;
            $vno = $chkvpf->start_srl_no + 1;

            $emptable = Employee::where('propertyid', $this->propertyid)->where('code', $request->employee)->first();
            if ($date < $emptable->joining_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Loan/Advance cannot be applied before the employee\'s joining date'
                ]);
            }

            if ($date > $emptable->resign_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Loan/Advance cannot be applied after the employee\'s resignation date'
                ]);
            }

            switch ($vtype) {
                case 'ADE':
                    if (empty(payrollparameter()->advanceac)) {
                        DB::rollBack();
                        return response()->json([
                            'success' => false,
                            'message' => 'Advance account not set in payroll parameters. Please contact administrator.'
                        ]);
                    }
                    break;

                case 'LO':
                    if (empty(payrollparameter()->loanac)) {
                        DB::rollBack();
                        return response()->json([
                            'success' => false,
                            'message' => 'Loan account not set in payroll parameters. Please contact administrator.'
                        ]);
                    }
                    break;
            }

            switch ($vtype) {
                case 'ADE':
                    $account = payrollparameter()->advanceac;
                    break;

                case 'LO':
                    $account = payrollparameter()->loanac;
                    break;
            }

            $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

            $ledger1 = new Ledger();
            $ledger1->propertyid = $this->propertyid;
            $ledger1->docid = $docid;
            $ledger1->vtype = $vtype;
            $ledger1->vprefix = $vprefix;
            $ledger1->vdate = $request->input('date');
            $ledger1->vsno = 1;
            $ledger1->vno = $vno;
            $ledger1->subcode = $request->input('postac');
            $ledger1->contrasub = $account;
            $ledger1->amtdr = $request->input('amount');
            $ledger1->narration = $request->input('remarks') ?? '';
            $ledger1->clgdate = $request->input('date');
            $ledger1->groupcode = subgroup($account)->group_code;
            $ledger1->groupnature = acgroup(subgroup($account)->group_code)->nature;
            $ledger1->u_name = Auth::user()->name;
            $ledger1->created_at = now();
            $ledger1->u_ae = 'a';
            $ledger1->save();

            $ledger2 = new Ledger();
            $ledger2->propertyid = $this->propertyid;
            $ledger2->docid = $docid;
            $ledger2->vtype = $vtype;
            $ledger2->vprefix = $vprefix;
            $ledger2->vdate = $request->input('date');
            $ledger2->vsno = 2;
            $ledger2->vno = $vno;
            $ledger2->subcode = $account;
            $ledger2->contrasub = $request->input('postac');
            $ledger2->amtcr = $request->input('amount');
            $ledger2->narration = $request->input('remarks') ?? '';
            $ledger2->clgdate = $request->input('date');
            $ledger2->groupcode = subgroup($account)->group_code;
            $ledger2->groupnature = acgroup(subgroup($account)->group_code)->nature;
            $ledger2->u_name = Auth::user()->name;
            $ledger2->created_at = now();
            $ledger2->u_ae = 'a';
            $ledger2->save();

            $loan = new Loan();
            $loan->propertyid = $this->propertyid;
            $loan->vtype = $vtype;
            $loan->vno = $vno;
            $loan->vprefix = $vprefix;
            $loan->vdate = $request->input('date');
            $loan->empcode = $request->input('employee');
            $loan->amount = $request->input('amount');
            $loan->installment = $request->input('installment') ?? 1;
            $loan->accode = $request->input('postac');
            $loan->remark = $request->input('remarks') ?? '';
            $loan->u_name = Auth::user()->name;
            $loan->created_at = now();
            $loan->u_ae = 'a';
            $loan->save();

            Employee::where('propertyid', $this->propertyid)
                ->where('code', $request->input('employee'))
                ->update([
                    'op_inst' => $request->input('installment') ?? 1
                ]);

            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->where('prefix', $vprefix)
                ->increment('start_srl_no');

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Loan/Advance entry created successfully.',
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'An error occurred while creating the entry: ' . $e->getMessage()
            ]);
        }
    }

    public function edit($vno, $empcode)
    {
        $loan = Loan::where('propertyid', $this->propertyid)
            ->where('vno', $vno)
            ->where('empcode', $empcode)
            ->first();

        if (!$loan) {
            return back()->with('error', 'Loan/Advance record not found');
        }

        return view('property.hrpayroll.loanadvanceentryedit', compact('loan'));
    }

    public function update(Request $request, $vno, $empcode)
    {
        try {
            DB::beginTransaction();
            $date = $request->input('date') ?? ncurdate();
            $vtype = $request->input('type');

            $loan = Loan::where('propertyid', $this->propertyid)
                ->where('vno', $vno)
                ->where('empcode', $empcode)
                ->first();

            if (!$loan) {
                return response()->json([
                    'success' => false,
                    'message' => 'Loan/Advance record not found'
                ]);
            }

            $emptable = Employee::where('propertyid', $this->propertyid)->where('code', $request->employee)->first();
            if ($date < $emptable->joining_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Loan/Advance cannot be applied before the employee\'s joining date'
                ]);
            }

            if ($date > $emptable->resign_date) {
                return response()->json([
                    'success' => false,
                    'message' => 'Loan/Advance cannot be applied after the employee\'s resignation date'
                ]);
            }

            switch ($vtype) {
                case 'ADE':
                    if (empty(payrollparameter()->advanceac)) {
                        DB::rollBack();
                        return response()->json([
                            'success' => false,
                            'message' => 'Advance account not set in payroll parameters. Please contact administrator.'
                        ]);
                    }
                    break;

                case 'LO':
                    if (empty(payrollparameter()->loanac)) {
                        DB::rollBack();
                        return response()->json([
                            'success' => false,
                            'message' => 'Loan account not set in payroll parameters. Please contact administrator.'
                        ]);
                    }
                    break;
            }

            switch ($vtype) {
                case 'ADE':
                    $account = payrollparameter()->advanceac;
                    break;

                case 'LO':
                    $account = payrollparameter()->loanac;
                    break;
            }

            $vprefix = $loan->vprefix;
            $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

            Ledger::where('propertyid', $this->propertyid)
                ->where('vno', $vno)
                ->where('vtype', $vtype)
                ->delete();

            $ledger1 = new Ledger();
            $ledger1->propertyid = $this->propertyid;
            $ledger1->docid = $docid;
            $ledger1->vtype = $vtype;
            $ledger1->vprefix = $vprefix;
            $ledger1->vdate = $request->input('date');
            $ledger1->vsno = 1;
            $ledger1->vno = $vno;
            $ledger1->subcode = $request->input('postac');
            $ledger1->contrasub = $account;
            $ledger1->amtdr = $request->input('amount');
            $ledger1->narration = $request->input('remarks') ?? '';
            $ledger1->clgdate = $request->input('date');
            $ledger1->groupcode = subgroup($account)->group_code;
            $ledger1->groupnature = acgroup(subgroup($account)->group_code)->nature;
            $ledger1->u_name = Auth::user()->name;
            $ledger1->created_at = now();
            $ledger1->u_ae = 'e';
            $ledger1->save();

            $ledger2 = new Ledger();
            $ledger2->propertyid = $this->propertyid;
            $ledger2->docid = $docid;
            $ledger2->vtype = $vtype;
            $ledger2->vprefix = $vprefix;
            $ledger2->vdate = $request->input('date');
            $ledger2->vsno = 2;
            $ledger2->vno = $vno;
            $ledger2->subcode = $account;
            $ledger2->contrasub = $request->input('postac');
            $ledger2->amtcr = $request->input('amount');
            $ledger2->narration = $request->input('remarks') ?? '';
            $ledger2->clgdate = $request->input('date');
            $ledger2->groupcode = subgroup($account)->group_code;
            $ledger2->groupnature = acgroup(subgroup($account)->group_code)->nature;
            $ledger2->u_name = Auth::user()->name;
            $ledger2->created_at = now();
            $ledger2->u_ae = 'e';
            $ledger2->save();

            $updateData = [
                'vtype' => $vtype,
                'vdate' => $request->input('date'),
                'empcode' => $request->input('employee'),
                'amount' => $request->input('amount'),
                'installment' => $request->input('installment') ?? 1,
                'accode' => $request->input('postac'),
                'remark' => $request->input('remarks') ?? '',
                'u_name' => Auth::user()->name,
                'updated_at' => now(),
                'u_ae' => 'e'
            ];

            Loan::where('propertyid', $this->propertyid)
                ->where('vno', $vno)
                ->where('empcode', $empcode)
                ->update($updateData);

            Employee::where('propertyid', $this->propertyid)
                ->where('code', $request->input('employee'))
                ->update([
                    'op_inst' => $request->input('installment') ?? 1
                ]);

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Loan/Advance entry updated successfully.',
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'An error occurred while updating the entry: ' . $e->getMessage()
            ]);
        }
    }

    public function destroy($vno, $empcode)
    {
        try {
            DB::beginTransaction();

            $loan = Loan::where('propertyid', $this->propertyid)
                ->where('vno', $vno)
                ->where('empcode', $empcode)
                ->first();

            if (!$loan) {
                return back()->with('error', 'Loan/Advance record not found');
            }

            Ledger::where('propertyid', $this->propertyid)
                ->where('vno', $vno)
                ->where('vtype', $loan->vtype)
                ->delete();

            Loan::where('propertyid', $this->propertyid)
                ->where('vno', $vno)
                ->where('empcode', $empcode)
                ->delete();

            DB::commit();

            return back()->with('success', 'Loan/Advance record deleted successfully');
        } catch (Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Error deleting loan/advance record: ' . $e->getMessage());
        }
    }
}
