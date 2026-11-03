<?php

namespace App\Http\Controllers\Finance\Transaction;

use App\Http\Controllers\Controller;
use App\Models\Ledger;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class BankReconcilation extends Controller
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
        return view('property.finance.transaction.bankreconciliation');
    }

    public function ledgeramtfetch(Request $request)
    {
        try {
            $subcode = $request->input('bankaccounts');
            $status = $request->input('status');
            $vdate = $request->input('vdate');

            if (empty($subcode) || empty($status)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Please select both bank account and status.'
                ]);
            }

            $asperbank = Ledger::where('subcode', $subcode)
                ->where('propertyid', $this->propertyid)
                ->where('vdate', '<=', $vdate)
                ->selectRaw('COALESCE(SUM(amtdr),0) - COALESCE(SUM(amtcr),0) AS asperbank')
                ->value('asperbank');

            $asperbook = Ledger::where('subcode', $subcode)
                ->where('propertyid', $this->propertyid)
                ->where('vdate', '<=', $vdate)
                ->whereNull('clgdate')
                ->selectRaw('COALESCE(SUM(amtdr),0) - COALESCE(SUM(amtcr),0) AS asperbook')
                ->value('asperbook');

            return response()->json([
                'success' => true,
                'asperbank' => $asperbank,
                'asperbook' => $asperbook
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong'
            ], 500);
        }
    }

    public function ledgerfetch(Request $request)
    {
        $subcode = $request->input('bankaccounts');
        $status = $request->input('status');
        $vdate = $request->input('vdate');

        if (empty($subcode) || empty($status)) {
            return response()->json([
                'error' => 'Please select both bank account and status.'
            ], 400);
        }

        $query = Ledger::query()
            ->select(
                'docid',
                'vsno',
                'vtype',
                'vprefix',
                'vno',
                DB::raw("DATE_FORMAT(vdate, '%d-%m-%Y') as vdate"),
                'subgroup.name as ledgername',
                'amtdr',
                'amtcr',
                'chqno',
                'chqdate',
                'clgdate',
                'narration'
            )
            ->Join('subgroup', 'ledger.contrasub', '=', 'subgroup.sub_code')
            ->where('ledger.propertyid', $this->propertyid)
            ->where('ledger.subcode', $subcode)
            ->where('ledger.vdate', '<=', $vdate)
            ->orderBy('ledger.vdate', 'desc');

        if ($status === 'clear') {
            $query->wherenotNull('ledger.clgdate');
        } elseif ($status === 'unclear') {
            $query->whereNull('ledger.clgdate');
        }

        return DataTables::of($query)
            ->addIndexColumn()
            ->make(true);
    }

    public function updateledger(Request $request)
    {
        $rows = $request->input('rows');

        if (empty($rows)) {
            return response()->json(['error' => 'No data to update'], 400);
        }

        DB::beginTransaction();

        try {
            foreach ($rows as $row) {

                $updateData = [];

                if (array_key_exists('chqno', $row)) {
                    $updateData['chqno'] = $row['chqno'] ?: null;
                    $updateData['updated_at'] = now();
                }

                if (array_key_exists('chqdate', $row)) {
                    $updateData['chqdate'] = $row['chqdate'] ?: null;
                    $updateData['updated_at'] = now();
                }

                if (array_key_exists('clgdate', $row)) {
                    $updateData['clgdate'] = $row['clgdate'] ?: null;
                    $updateData['updated_at'] = now();
                }

                if (!empty($updateData)) {
                    Ledger::where('propertyid', $this->propertyid)
                        ->where('docid', $row['docid'])
                        ->where('vsno', $row['vsno'])
                        ->limit(1)
                        ->update($updateData);
                }
            }

            DB::commit();

            return response()->json(['success' => true]);
        } catch (\Throwable $e) {

            DB::rollBack();

            return response()->json([
                'error' => 'Update failed'
            ], 500);
        }
    }
}
