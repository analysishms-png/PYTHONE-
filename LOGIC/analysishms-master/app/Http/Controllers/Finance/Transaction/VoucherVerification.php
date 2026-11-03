<?php

namespace App\Http\Controllers\Finance\Transaction;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Illuminate\Http\Request;

class VoucherVerification extends Controller
{
    protected $username;
    protected $propertyid;
    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }
            $this->username  = Auth::user()->name;
            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }
    public function ncurfetch()
    {
        $ncurdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        return $ncurdate;
    }

    // Dashboard - 5 cards
    public function dashboard()
    {
        return view('property.finance.transaction.voucherverificationdashboard');
    }

    // Pending Vouchers Report
    // public function pendingVouchers()
    // {
    //     $data = collect(); // senior will provide query
    //     return view('property.finance.transaction.pendingvouchers', compact('data'));
    // }


    public function pendingVouchers(Request $request)
    {
        $propertyId = Auth::user()->propertyid;

        $fromDate = $request->get('fromDate')
            ? Carbon::parse($request->get('fromDate'))->format('Y-m-d')
            : Carbon::now()->startOfMonth()->format('Y-m-d');

        $toDate = $request->get('toDate')
            ? Carbon::parse($request->get('toDate'))->format('Y-m-d')
            : Carbon::now()->format('Y-m-d');

        $selectedVType = $request->get('voucherType');
        $statusFilter  = $request->get('statusFilter', 'P');

        $voucherTypes = DB::table('ledger as L')
            ->leftJoin('voucher_type as V', 'L.vtype', '=', 'V.v_type')
            ->select('V.description', 'L.vtype')
            ->where('L.propertyid', $propertyId)
            ->whereIn('V.category', ['fa', 'PurchBill'])
            ->groupBy('L.vtype', 'V.description')
            ->orderBy('V.description')
            ->get();

        $statusMap = ['P' => 'U', 'A' => 'A', 'R' => 'R'];
        $dbStatus  = $statusMap[$statusFilter] ?? 'U';

        $query = DB::table('ledger as L')
            ->join('voucher_type as V', function ($join) {
                $join->on('L.vtype', '=', 'V.v_type')
                    ->on('L.propertyid', '=', 'V.propertyid');
            })
            ->select(
                'L.vno',
                DB::raw('MAX(L.vdate) as vdate'),
                'V.description',
                'L.vtype',
                DB::raw('MAX(L.docid) as docid'),
                DB::raw('MAX(L.vprefix) as vprefix'),
                DB::raw('MAX(L.narration) as narration'),
                DB::raw('SUM(L.amtdr) as amtdr'),
                DB::raw('SUM(L.amtcr) as amtcr'),
                DB::raw('MAX(L.u_name) as u_name'),
                DB::raw('MAX(L.created_at) as created_at')
            )
            ->where('L.propertyid', $propertyId)
            ->whereBetween('L.vdate', [$fromDate, $toDate])
            ->where('L.status', $dbStatus);

        if (!empty($selectedVType)) {
            $query->where('L.vtype', $selectedVType);
        }

        $data = $query
            ->groupBy('L.vno', 'V.description', 'L.vtype')
            ->orderByDesc('vdate')
            ->orderByDesc('L.vno')
            ->get();

        return view(
            'property.finance.transaction.pendingvouchers',
            compact('data', 'fromDate', 'toDate', 'voucherTypes', 'statusFilter', 'selectedVType')
        );
    }

    public function getVoucherDetail(Request $request)
    {
        $propertyId = Auth::user()->propertyid;
        $vno        = $request->get('vno');
        $vtype      = $request->get('vtype');

        $details = DB::table('ledger as L')
            ->leftJoin('subgroup as S', 'L.SubCode', '=', 'S.Sub_Code')
            ->leftJoin('voucher_type as V', function ($join) {
                $join->on('L.VType', '=', 'V.V_Type')
                    ->on('L.PropertyID', '=', 'V.PropertyID');
            })
            ->select(
                'L.VNo',
                'L.VDate',
                'V.Description as VoucherType',
                'L.Narration',
                'L.AmtDr',
                'L.AmtCr',
                'S.sub_code',
                'S.Name as AccountName'
            )
            ->where('L.PropertyID', $propertyId)
            ->where('L.VType', $vtype)
            ->where('L.VNo', $vno)
            ->orderByDesc('L.AmtDr')
            ->orderByDesc('L.AmtCr')
            ->get();

        return response()->json(['success' => true, 'data' => $details]);
    }
    public function verifyVoucher(Request $request)
    {
        try {
            $propertyId = Auth::user()->propertyid;
            $docid      = $request->get('docid');
            $vno        = $request->get('vno');
            $vtype      = $request->get('vtype');
            $status     = $request->get('status');

            if (empty($docid) || empty($status)) {
                return response()->json(['success' => false, 'message' => 'Invalid request.']);
            }

            if ($status === 'Y') {
                DB::table('ledger')
                    ->where('propertyid', $propertyId)
                    ->where('vno', $vno)
                    ->where('vtype', $vtype)
                    ->update([
                        'status'       => 'Y',
                        'verifyuser'   => $request->get('verifyuser'),
                        'verifyremark' => $request->get('verifyremark'),
                        'verifydate'   => now(),
                    ]);
            } elseif ($status === 'R') {
                DB::table('ledger')
                    ->where('propertyid', $propertyId)
                    ->where('vno', $vno)
                    ->where('vtype', $vtype)
                    ->update([
                        'status'       => 'R',
                        'rejectuser'   => $request->get('rejecteduser'),
                        'rejectremark' => $request->get('rejectedremark'),
                        'rejectdate'   => now(),
                    ]);
            } else {
                return response()->json(['success' => false, 'message' => 'Invalid status.']);
            }

            return response()->json(['success' => true]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ]);
        }
    }

    // Approved Vouchers Report
    public function approvedVouchers(Request $request)
    {
        $propertyId = Auth::user()->propertyid;

        $fromDate = $request->get('fromDate')
            ? Carbon::parse($request->get('fromDate'))->format('Y-m-d')
            : Carbon::now()->startOfMonth()->format('Y-m-d');

        $toDate = $request->get('toDate')
            ? Carbon::parse($request->get('toDate'))->format('Y-m-d')
            : Carbon::now()->format('Y-m-d');

        $selectedVType    = $request->get('voucherType');
        $selectedVerifier = $request->get('verifiedBy');

        // Voucher Type dropdown
        $voucherTypes = DB::table('ledger as L')
            ->leftJoin('voucher_type as V', 'L.vtype', '=', 'V.v_type')
            ->select('V.description', 'L.vtype')
            ->where('L.propertyid', $propertyId)
            ->whereIn('V.category', ['fa', 'PurchBill'])
            ->groupBy('L.vtype', 'V.description')
            ->orderBy('V.description')
            ->get();

        // Verified By dropdown
        $verifiers = DB::table('ledger')
            ->where('propertyid', $propertyId)
            ->where('status', 'Y')
            ->whereNotNull('verifyuser')
            ->where('verifyuser', '!=', '')
            ->select('verifyuser')
            ->distinct()
            ->orderBy('verifyuser')
            ->get();

        // Main data query
        $query = DB::table('ledger as L')
            ->join('voucher_type as V', function ($join) {
                $join->on('L.vtype', '=', 'V.v_type')
                    ->on('L.propertyid', '=', 'V.propertyid');
            })
            ->select(
                'L.vno',
                DB::raw('MAX(L.vdate) as vdate'),
                'V.description',
                'L.vtype',
                DB::raw('MAX(L.docid) as docid'),
                DB::raw('MAX(L.vprefix) as vprefix'),
                DB::raw('MAX(L.narration) as narration'),
                DB::raw('SUM(L.amtdr) as amtdr'),
                DB::raw('SUM(L.amtcr) as amtcr'),
                DB::raw('MAX(L.verifyuser) as verifyuser'),
                DB::raw('MAX(L.verifydate) as verifydate'),
                DB::raw('MAX(L.verifyremark) as verifyremark')
            )
            ->where('L.propertyid', $propertyId)
            ->where('L.status', 'Y')
            ->whereBetween('L.vdate', [$fromDate, $toDate]);

        if (!empty($selectedVType)) {
            $query->where('L.vtype', $selectedVType);
        }

        if (!empty($selectedVerifier)) {
            $query->where('L.verifyuser', $selectedVerifier);
        }

        $data = $query
            ->groupBy('L.vno', 'V.description', 'L.vtype')
            ->orderByDesc('vdate')
            ->orderByDesc('L.vno')
            ->get();

        return view(
            'property.finance.transaction.approvedvouchers',
            compact('data', 'fromDate', 'toDate', 'voucherTypes', 'verifiers', 'selectedVType', 'selectedVerifier')
        );
    }

    // Rejected Vouchers Report
    public function rejectedVouchers(Request $request)
    {
        $propertyId = Auth::user()->propertyid;

        $fromDate = $request->get('fromDate')
            ? Carbon::parse($request->get('fromDate'))->format('Y-m-d')
            : Carbon::now()->startOfMonth()->format('Y-m-d');

        $toDate = $request->get('toDate')
            ? Carbon::parse($request->get('toDate'))->format('Y-m-d')
            : Carbon::now()->format('Y-m-d');

        $selectedVType    = $request->get('voucherType');
        $selectedRejecter = $request->get('rejectedBy');

        // Voucher Type dropdown
        $voucherTypes = DB::table('ledger as L')
            ->leftJoin('voucher_type as V', 'L.vtype', '=', 'V.v_type')
            ->select('V.description', 'L.vtype')
            ->where('L.propertyid', $propertyId)
            ->whereIn('V.category', ['fa', 'PurchBill'])
            ->groupBy('L.vtype', 'V.description')
            ->orderBy('V.description')
            ->get();

        // Rejected By dropdown
        $rejecters = DB::table('ledger')
            ->where('propertyid', $propertyId)
            ->where('status', 'R')
            ->whereNotNull('rejectuser')
            ->where('rejectuser', '!=', '')
            ->select('rejectuser')
            ->distinct()
            ->orderBy('rejectuser')
            ->get();

        // Main data query
        $query = DB::table('ledger as L')
            ->join('voucher_type as V', function ($join) {
                $join->on('L.vtype', '=', 'V.v_type')
                    ->on('L.propertyid', '=', 'V.propertyid');
            })
            ->select(
                'L.vno',
                DB::raw('MAX(L.vdate) as vdate'),
                'V.description',
                'L.vtype',
                DB::raw('MAX(L.docid) as docid'),
                DB::raw('MAX(L.vprefix) as vprefix'),
                DB::raw('MAX(L.narration) as narration'),
                DB::raw('SUM(L.amtdr) as amtdr'),
                DB::raw('SUM(L.amtcr) as amtcr'),
                DB::raw('MAX(L.rejectuser) as rejectuser'),
                DB::raw('MAX(L.rejectdate) as rejectdate'),
                DB::raw('MAX(L.rejectremark) as rejectremark')
            )
            ->where('L.propertyid', $propertyId)
            ->where('L.status', 'R')
            ->whereBetween('L.vdate', [$fromDate, $toDate]);

        if (!empty($selectedVType)) {
            $query->where('L.vtype', $selectedVType);
        }

        if (!empty($selectedRejecter)) {
            $query->where('L.rejectuser', $selectedRejecter);
        }

        $data = $query
            ->groupBy('L.vno', 'V.description', 'L.vtype')
            ->orderByDesc('vdate')
            ->orderByDesc('L.vno')
            ->get();

        return view(
            'property.finance.transaction.rejectedvouchers',
            compact('data', 'fromDate', 'toDate', 'voucherTypes', 'rejecters', 'selectedVType', 'selectedRejecter')
        );
    }
    // Edit & Resubmit — status wapas U (pending) kar do
    public function resubmitVoucher(Request $request)
    {
        try {
            $propertyId = Auth::user()->propertyid;
            $vno        = $request->get('vno');
            $vtype      = $request->get('vtype');
            $lines      = json_decode($request->get('lines'), true) ?? [];

            // Sirf status reset + reject fields clear — narration touch mat karo
            DB::table('ledger')
                ->where('propertyid', $propertyId)
                ->where('vno', $vno)
                ->where('vtype', $vtype)
                ->update([
                    'status'       => 'U',
                    'rejectuser'   => null,
                    'rejectdate'   => null,
                    'rejectremark' => null,
                    'updated_at'   => now(),
                ]);

            // Sirf ledger line amounts update karo — narration bhi wahi rakho jo modal mein edit hua
            foreach ($lines as $line) {
                if (empty($line['sn'])) continue;
                DB::table('ledger')
                    ->where('propertyid', $propertyId)
                    ->where('id', $line['sn'])
                    ->update([
                        'amtdr'      => $line['amtdr'] ?? 0,
                        'amtcr'      => $line['amtcr'] ?? 0,
                        'narration'  => $line['narration'] ?? '',
                        'updated_at' => now(),
                    ]);
            }

            return response()->json(['success' => true]);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()]);
        }
    }

    public function sendForVerification(Request $request)
    {
        try {
            $propertyId = Auth::user()->propertyid;
            DB::table('ledger')
                ->where('propertyid', $propertyId)
                ->where('vno', $request->get('vno'))
                ->where('vtype', $request->get('vtype'))
                ->update([
                    'status' => 'U',
                ]);
            return response()->json(['success' => true]);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()]);
        }
    }
    public function userWiseEntry(Request $request)
    {
        $propertyId  = Auth::user()->propertyid; // ← $this->propertyid ki jagah
        $ncurdate    = $this->ncurfetch();
        $fromDate    = $request->fromDate ?? $ncurdate ?? Carbon::now()->format('Y-m-d');
        $toDate      = $request->toDate   ?? $ncurdate ?? Carbon::now()->format('Y-m-d');
        $voucherType = $request->voucherType ?? '';
        $user        = $request->user        ?? '';
    
        $query = DB::table('ledger as L')
            ->select(
                'L.U_Name as u_name',
                DB::raw('COUNT(DISTINCT L.VNo) as total_vouchers'),
                DB::raw('SUM(L.AmtDr) as total_debit'),
                DB::raw('SUM(L.AmtCr) as total_credit'),
                DB::raw('MAX(L.created_at) as last_entry_date')
            )
            ->where('L.propertyid', $propertyId) // ← yahan bhi
            ->whereBetween('L.VDate', [$fromDate, $toDate]);

        if (!empty($voucherType)) {
            $query->where('L.VType', $voucherType);
        }
        if (!empty($user)) {
            $query->where('L.U_Name', $user);
        }

        $data = $query
            ->groupBy('L.U_Name')
            ->orderByDesc('total_vouchers')
            ->get();

        $voucherTypes = DB::table('ledger as L')
            ->leftJoin('voucher_type as V', 'L.vtype', '=', 'V.v_type')
            ->select('V.description', 'L.vtype')
            ->where('L.propertyid', $propertyId) // ← yahan bhi
            ->whereIn('V.category', ['fa', 'PurchBill'])
            ->groupBy('L.vtype', 'V.description')
            ->orderBy('V.description')
            ->get();

        $users = DB::table('ledger')
            ->select('u_name')
            ->where('propertyid', $propertyId) // ← yahan bhi
            ->whereNotNull('u_name')
            ->where('u_name', '!=', '')
            ->distinct()
            ->orderBy('u_name')
            ->get();

        return view('property.finance.transaction.userwiseentry', [
            'data'          => $data,
            'fromDate'      => $fromDate,
            'toDate'        => $toDate,
            'voucherTypes'  => $voucherTypes,
            'users'         => $users,
            'selectedVType' => $voucherType,
            'selectedUser'  => $user,
        ]);
    }

    public function userWiseDetail(Request $request)
{
    $propertyId = Auth::user()->propertyid; 

    $user     = $request->u_name;
    $fromDate = $request->fromDate ?? Carbon::now()->format('Y-m-d');
    $toDate   = $request->toDate   ?? Carbon::now()->format('Y-m-d');

    if (empty($user)) {
        return response()->json(['success' => false, 'message' => 'User not provided.']);
    }

    $data = DB::table('ledger as L')
        ->select(
            'L.VType as vtype',
            DB::raw('COUNT(DISTINCT L.vno) as total_vouchers'),
            DB::raw('SUM(L.AmtDr) as total_debit'),
            DB::raw('SUM(L.AmtCr) as total_credit'),
            DB::raw("COUNT(DISTINCT CASE WHEN L.status = 'V' THEN L.vno END) as approved"),
            DB::raw("COUNT(DISTINCT CASE WHEN L.status = 'R' THEN L.vno END) as rejected"),
            DB::raw("COUNT(DISTINCT CASE WHEN L.status = 'U' THEN L.vno END) as pending")
        )
        ->where('L.propertyid', $propertyId) // ✅ FIX
        ->where('L.u_name', $user)
        ->whereBetween('L.vdate', [$fromDate, $toDate])
        ->groupBy('L.vtype')
        ->orderBy('L.vtype')
        ->get();

    return response()->json([
        'success' => true,
        'data' => $data
    ]);
}
}
