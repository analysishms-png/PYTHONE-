<?php

namespace App\Http\Controllers;

use App\Models\MallLeaseHdr;
use App\Models\MallReceipt;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class MallPaymentReceiptController extends Controller
{
    protected $propertyid;
    protected $username;
    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username   = Auth::user()->name;
            $this->propertyid = Auth::user()->propertyid;
            $this->ncurdate   = DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->value('ncur');

            return $next($request);
        });
    }

    // ─── Private Helpers ──────────────────────────────────────────────────────

    /**
     * Financial year from a date (April – March)
     */
    private function fiscalYear(string $date): array
    {
        $ts = strtotime($date) ?: strtotime($this->ncurdate ?: date('Y-m-d'));
        $year      = (int) date('Y', $ts);
        $month     = (int) date('n', $ts);
        $startYear = $month >= 4 ? $year : $year - 1;

        return [
            'from'   => $startYear . '-04-01',
            'to'     => ($startYear + 1) . '-03-31',
            'prefix' => $startYear,
        ];
    }

    /**
     * Allocate next RCPT docid + vno — call inside DB::transaction
     */
    private function allocateDocid(string $vdate): array
    {
        $fy    = $this->fiscalYear($vdate);
        $vtype = 'RCPT';

        $vpRow = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->whereRaw('UPPER(v_type) = ?', [strtoupper($vtype)])
            ->where('date_from', $fy['from'])
            ->lockForUpdate()
            ->first();

        if (!$vpRow) {
            DB::table('voucher_prefix')->insert([
                'propertyid'   => $this->propertyid,
                'v_type'       => $vtype,
                'date_from'    => $fy['from'],
                'date_to'      => $fy['to'],
                'prefix'       => $fy['prefix'],
                'start_srl_no' => 0,
                'u_name'       => $this->username,
                'created_at'   => now(),
            ]);

            $vpRow = DB::table('voucher_prefix')
                ->where('propertyid', $this->propertyid)
                ->whereRaw('UPPER(v_type) = ?', [strtoupper($vtype)])
                ->where('date_from', $fy['from'])
                ->lockForUpdate()
                ->first();
        }

        $vno   = (int) $vpRow->start_srl_no + 1;
        $docid = $this->propertyid . $vtype . '‎ ‎ ' . $fy['prefix'] . '‎ ‎ ‎ ‎ ' . $vno;

        return [
            'docid'     => $docid,
            'vno'       => $vno,
            'vprefix'   => (int) $fy['prefix'],
            'vtype'     => $vtype,
            'date_from' => $fy['from'],
        ];
    }

    /**
     * POST /paymentreceiptentry/receiptno  (AJAX)
     * Next RCPT number preview — voucher_prefix se (read-only, no lock)
     * docid format matches allocateDocid(): {propertyid}RCPT{prefix}{vno 4-digit}
     * Page load / tenant select / receipt date change pe Receipt No dikhane ke liye
     */
    public function nextReceiptNo(Request $request)
    {
        if (!DB::getSchemaBuilder()->hasTable('voucher_prefix')) {
            return response()->json(['success' => false, 'message' => 'voucher_prefix table not found.']);
        }

        $vdate = trim((string) ($request->vdate ?? ''));
        $fy    = $this->fiscalYear($vdate !== '' ? $vdate : ($this->ncurdate ?: date('Y-m-d')));
        $vtype = 'RCPT';

        $vpRow = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->whereRaw('UPPER(v_type) = ?', [strtoupper($vtype)])
            ->where('date_from', $fy['from'])
            ->first();

        // Row nahi hai = pehli baar save hoga → prefix = FY start year, vno = 1
        $prefix = $vpRow ? (string) $vpRow->prefix : (string) $fy['prefix'];
        $vno    = $vpRow ? ((int) $vpRow->start_srl_no + 1) : 1;

        $docid = $this->propertyid . $vtype . '‎ ‎ ' . $prefix . '‎ ‎ ‎ ‎ ' . $vno;

        return response()->json([
            'success' => true,
            'docid'   => $docid,
            'vtype'   => $vtype,
            'prefix'  => $prefix,
            'vno'     => $vno,
        ]);
    }

    // =========================================================================
    // 1. GET /paymentreceiptentry
    // =========================================================================
    public function index()
    {
        $tenants = DB::getSchemaBuilder()->hasTable('subgroup')
            ? DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('group_code', 'like', '28' . $this->propertyid . '%')
                ->orderBy('name')
                ->get(['sub_code', 'name', 'conperson', 'mobile'])
            : collect();

        $paymodes = DB::getSchemaBuilder()->hasTable('revmast')
            ? DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('field_type', 'P')
                ->orderBy('name')
                ->get(['rev_code', 'name', 'nature'])
            : collect();

        // Bill to Company mode ke liye companies (banquet settlement jaisa source)
        $companies = DB::getSchemaBuilder()->hasTable('subgroup')
            ? DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
                ->orderBy('name')
                ->get(['sub_code', 'name'])
            : collect();

        // Bottom register — page load pe recent receipts (servicebillentry jaisa)
        $receipts = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_receipt')) {
            $receipts = DB::table('mall_receipt as mr')
                ->where('mr.propertyid', $this->propertyid)
                ->leftJoin('subgroup as s', function ($j) {
                    $j->on('s.sub_code', '=', DB::raw('CAST(mr.tenantid AS CHAR)'))
                      ->on('s.propertyid', '=', 'mr.propertyid');
                })
                ->leftJoin('revmast as rm', function ($j) {
                    $j->on('rm.rev_code', '=', 'mr.paycode')
                      ->on('rm.propertyid', '=', 'mr.propertyid');
                })
                ->select(
                    'mr.docid',
                    'mr.vno',
                    'mr.vdate',
                    'mr.paytype',
                    'mr.refno',
                    'mr.receiptamount',
                    'mr.narration',
                    DB::raw('s.name as tenantname'),
                    DB::raw('rm.name as paymodename')
                )
                ->orderByDesc('mr.vdate')
                ->orderByDesc('mr.vno')
                ->limit(50)
                ->get();
        }

        return view('property.mallmanagement.paymentreceiptentry', [
            'tenants'    => $tenants,
            'paymodes'   => $paymodes,
            'companies'  => $companies,
            'receipts'   => $receipts,
            'ncurdate'   => $this->ncurdate,
            'username'   => $this->username,
            'propertyid' => $this->propertyid,
        ]);
    }

    // =========================================================================
    // 1b. POST /paymentreceiptentry/paymodes  (AJAX)
    //     Paymaster mein jo payment modes bane hain wahi dikhao
    //     (field_type = 'P' — revmast table se)
    //     Mall ke liye admin khud paymaster mein relevant modes banata hai
    // =========================================================================
    public function getMallPaymodes(Request $request)
    {
        if (!DB::getSchemaBuilder()->hasTable('revmast')) {
            return response()->json([]);
        }

        $modes = DB::table('revmast as r')
            ->leftJoin('subgroup as s', 's.sub_code', '=', 'r.ac_code')
            ->where('r.propertyid', $this->propertyid)
            ->where('r.field_type', 'P')
            ->orderBy('r.name')
            ->select('r.rev_code', 'r.name', 'r.nature', 'r.ac_code', 's.name as ac_name')
            ->get();

        return response()->json($modes);
    }

    // =========================================================================
    // 1c. POST /paymentreceiptentry/tenantshops  (AJAX)
    //     Tenant select karne par uski shops fetch karo
    //     mall_partylocation → mall_shopmast (primary)
    //     mall_lease_hdr → mall_shopmast (fallback)
    // =========================================================================
    public function getTenantShops(Request $request)
    {
        $tenantcode = trim((string) ($request->tenantcode ?? ''));
        if ($tenantcode === '') {
            return response()->json([]);
        }

        $shops = collect();

        if (
            DB::getSchemaBuilder()->hasTable('mall_partylocation') &&
            DB::getSchemaBuilder()->hasTable('mall_shopmast')
        ) {
            // Primary: mall_partylocation se mapped shops
            $shops = DB::table('mall_partylocation as pl')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.shopcode', '=', 'pl.shopcode')
                      ->on('sh.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('hkfloors as f', 'f.code', '=', 'sh.floorid')
                ->where('pl.propertyid', $this->propertyid)
                ->where('pl.tenantcode', $tenantcode)
                ->where('pl.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select(
                    'sh.id', 'sh.shopcode', 'sh.shopname',
                    'sh.floorid', 'f.name as floorname',
                    'sh.chargeablearea', 'sh.shoptype'
                )
                ->distinct()
                ->get();
        }

        // Lease se bhi shops lo — ek lease me multiple shops (DTL rows) hote hain,
        // HDR.unitid sirf primary shop hota hai. Partylocation mapping ke saath
        // union karo taaki lease wali saari shops dikhein.
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')
            && DB::getSchemaBuilder()->hasTable('mall_lease_dtl')
            && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $leaseShops = DB::table('mall_lease_hdr as hdr')
                ->join('mall_lease_dtl as dtl', function ($j) {
                    $j->on('dtl.lease_id', '=', 'hdr.id')
                      ->on('dtl.propertyid', '=', 'hdr.propertyid');
                })
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.id', '=', 'dtl.unitid')
                      ->on('sh.propertyid', '=', 'hdr.propertyid');
                })
                ->leftJoin('hkfloors as f', 'f.code', '=', 'sh.floorid')
                ->where('hdr.propertyid', $this->propertyid)
                ->where('hdr.tenantid', $tenantcode)
                ->where('hdr.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select(
                    'sh.id', 'sh.shopcode', 'sh.shopname',
                    'sh.floorid', 'f.name as floorname',
                    'sh.chargeablearea', 'sh.shoptype'
                )
                ->distinct()
                ->get();

            $existingIds = $shops->pluck('id')->all();
            foreach ($leaseShops as $leaseShop) {
                if (! in_array($leaseShop->id, $existingIds, true)) {
                    $shops->push($leaseShop);
                }
            }
        }

        $result = [];
        foreach ($shops as $shop) {
            // Har shop ka latest lease info — DTL se (multi-shop lease)
            $lease = null;
            if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
                if (DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
                    $lease = DB::table('mall_lease_hdr as hdr')
                        ->join('mall_lease_dtl as dtl', function ($j) {
                            $j->on('dtl.lease_id', '=', 'hdr.id')
                              ->on('dtl.propertyid', '=', 'hdr.propertyid');
                        })
                        ->where('hdr.propertyid', $this->propertyid)
                        ->where('hdr.tenantid', $tenantcode)
                        ->where('dtl.unitid', $shop->id)
                        ->where('hdr.activeyn', 1)
                        ->orderByDesc('hdr.id')
                        ->select('hdr.id', 'hdr.agreementno', 'hdr.leasestatus')
                        ->first();
                }
                if (! $lease) {
                    $lease = DB::table('mall_lease_hdr')
                        ->where('propertyid', $this->propertyid)
                        ->where('tenantid', $tenantcode)
                        ->where('unitid', $shop->id)
                        ->where('activeyn', 1)
                        ->orderByDesc('id')
                        ->first(['id', 'agreementno', 'leasestatus']);
                }
            }

            $result[] = [
                'id'             => $shop->id,
                'shopcode'       => $shop->shopcode,
                'shopname'       => $shop->shopname,
                'floorname'      => $shop->floorname ?? '—',
                'chargeablearea' => $shop->chargeablearea ?? '—',
                'shoptype'       => $shop->shoptype ?? '—',
                'agreementno'    => $lease->agreementno ?? '—',
                'leasestatus'    => $lease->leasestatus ?? '—',
            ];
        }

        return response()->json($result);
    }


    //    Tenant ke outstanding invoices from facilitybill1
    //    Report/Aggregate query — DB Query Builder allowed (standard 3.2)
    // =========================================================================
    public function pendingBills(Request $request)
    {
        $tenantid = trim((string) ($request->tenantid ?? ''));
        if ($tenantid === '' || !DB::getSchemaBuilder()->hasTable('facilitybill1')) {
            return response()->json([]);
        }

        $bills = DB::table('facilitybill1 as b')
            ->where('b.propertyid', $this->propertyid)
            ->where('b.partycode', $tenantid)
            ->select(
                DB::raw("COALESCE(NULLIF(b.docid1,''), b.docid) as docid"),
                'b.docid as chargedocid',
                'b.vno', 'b.vdate', 'b.facilitycode',
                DB::raw('MIN(b.forperiod) as forperiod'),
                DB::raw('MAX(b.toperiod)  as toperiod'),
                DB::raw('SUM(b.amount)    as billamount')
            )
            ->groupByRaw("COALESCE(NULLIF(b.docid1,''), b.docid), b.docid, b.vno, b.vdate, b.partycode, b.facilitycode")
            ->orderBy('b.vdate')
            ->get();

        if ($bills->isEmpty()) {
            return response()->json([]);
        }

        // Charge names in one query
        $chargeNames = DB::getSchemaBuilder()->hasTable('mall_chargemast')
            ? DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->whereIn('chargecode', $bills->pluck('facilitycode')->unique()->filter()->values()->all())
                ->pluck('chargename', 'chargecode')
                ->toArray()
            : [];

        // Net Amount per docid from suntranfacility (dispname = 'Net Amount')
        // This is the actual payable amount including GST, round-off etc.
        $netAmountByDocid = [];
        if (DB::getSchemaBuilder()->hasTable('suntranfacility')) {
            DB::table('suntranfacility')
                ->where('propertyid', $this->propertyid)
                ->whereIn('docid', $bills->pluck('chargedocid')->all())
                ->whereRaw("UPPER(TRIM(dispname)) = 'NET AMOUNT'")
                ->select('docid', DB::raw('SUM(amount) as netamount'))
                ->groupBy('docid')
                ->get()
                ->each(function ($row) use (&$netAmountByDocid) {
                    $netAmountByDocid[$row->docid] = (float) $row->netamount;
                });
        }

        // Tenant ka outstanding = bills (Net) − mall_receipt total.
        // Already-covered amount = totalBillNet − outstanding (conservative).
        // Covered amount sabse PURANI bill pehle adjust hota hai (FIFO).
        $totalBillNet = 0.0;
        foreach ($bills as $bill) {
            $totalBillNet += (float) ($netAmountByDocid[$bill->chargedocid] ?? 0);
        }
        $position = $this->tenantOutstanding($tenantid);
        if ($position === null) {
            $position = $totalBillNet; // compute nahi ho saka → sab pending
        }
        $covered = max(0.0, min($totalBillNet, round($totalBillNet - $position, 2)));
        if ($covered < 0) {
            $covered = 0.0;
        }

        $result = [];
        foreach ($bills as $bill) {
            // chargedocid se Net Amount lo — suntranfacility.docid = charge docid
            $billAmount = $netAmountByDocid[$bill->chargedocid] ?? 0;

            $paid        = min($covered, (float) $billAmount);
            $covered     = round($covered - $paid, 2);
            $outstanding = round($billAmount - $paid, 2);
            if ($outstanding <= 0) {
                continue;
            }
            $result[] = [
                'docid'       => $bill->docid,
                'vno'         => $bill->vno,
                'vdate'       => $bill->vdate ? date('d-m-Y', strtotime($bill->vdate)) : '',
                'forperiod'   => $bill->forperiod ? date('M Y', strtotime($bill->forperiod)) : '',
                'chargename'  => $chargeNames[$bill->facilitycode] ?? $bill->facilitycode,
                'billamount'  => number_format($billAmount, 2, '.', ''),
                'paid'        => number_format($paid, 2, '.', ''),
                'outstanding' => number_format($outstanding, 2, '.', ''),
            ];
        }

        return response()->json($result);
    }

    // =========================================================================
    // 3. POST /paymentreceiptentrysave  (AJAX)
    //    Insert/Update — Eloquent (standard 3.1)
    // =========================================================================
    public function save(Request $request)
    {
        $request->validate([
            'tenantid'      => 'required',
            'vdate'         => 'required|date',
            'receiptamount' => 'required|numeric|min:0.01',
            'paycode'       => 'required',
        ]);

        if (!DB::getSchemaBuilder()->hasTable('mall_receipt')) {
            return response()->json([
                'success' => false,
                'message' => 'mall_receipt table not found. Run migration first.',
            ], 422);
        }

        $tenantid      = trim((string) $request->tenantid);
        $vdate         = date('Y-m-d', strtotime($request->vdate));
        $rcptAmt       = (float) $request->receiptamount;
        $paycode       = trim((string) $request->paycode);
        $paytype       = trim((string) ($request->paytype      ?? ''));
        $remarks       = substr(trim((string) ($request->remarks  ?? '')), 0, 50);
        $editingDocid  = trim((string) ($request->input('editing_docid', '')));
        $isEditing     = $editingDocid !== '';

        // ── Outstanding validation (bills − receipts) ─────────────────────────
        // Concept: outstanding = total bills (Net) minus total receipts already
        // saved in mall_receipt. Partial payment ka sahi hisaab ho (pehle 1L,
        // baaki bill − 1L). Overpayment aur duplicate receipt rokna hai.
        // Edit mode: apni purani receipt amount wapas add hoti hai.
        $oldReceiptAmount = 0.0;
        if ($isEditing) {
            $oldReceiptAmount = (float) (MallReceipt::forProperty($this->propertyid)
                ->where('docid', $editingDocid)
                ->value('receiptamount') ?? 0);
        }
        $outstanding = $this->tenantOutstanding($tenantid);
        if ($outstanding !== null) {
            $available = round($outstanding + $oldReceiptAmount, 2);
            if ($rcptAmt > $available + 0.009) {
                return response()->json([
                    'success' => false,
                    'message' => $available <= 0
                        ? 'No pending outstanding for this tenant. Duplicate receipt cannot be created.'
                        : 'Receipt amount exceeds outstanding of Rs ' . number_format($available, 2) . '.',
                ], 422);
            }
        }

        // 4. Payment Detail — primary payment row se header columns (mall_receipt)
        $paymentRows = $request->input('payment_rows', []);
        $primary     = (is_array($paymentRows) && !empty($paymentRows)) ? $paymentRows[0] : [];

        if (!is_array($primary)) {
            $primary = [];
        }

        // UPI ref / cheque no / UTR / card no — jo bhi mile
        $refnoRaw = trim((string) ($request->input('refno', '')));
        if ($refnoRaw === '') {
            $refnoRaw = trim((string) (
                $primary['refno'] ?? $primary['txnno'] ?? $primary['utrno'] ?? $primary['cardno'] ?? ''
            ));
        }
        $refno = substr($refnoRaw, 0, 25);

        $paydet = [
            'narration'  => substr(trim((string) ($primary['narration']  ?? '')), 0, 50),
            'cardno'     => substr(trim((string) ($primary['cardno']     ?? '')), 0, 16),
            'cardholder' => substr(trim((string) ($primary['holdername'] ?? '')), 0, 50),
            'expdate'    => !empty($primary['expdatecr']) ? date('Y-m-d', strtotime($primary['expdatecr'])) : null,
            'batchno'    => substr(trim((string) ($primary['batchno']    ?? '')), 0, 10),
            'comp_code'  => substr(trim((string) ($primary['compcode']   ?? '')), 0, 15),
        ];

        try {
            DB::beginTransaction();

            // ── UPDATE ──────────────────────────────────────────────────────
            if ($isEditing) {
                $receipt = MallReceipt::forProperty($this->propertyid)
                    ->where('docid', $editingDocid)
                    ->firstOrFail();

                $receipt->update(array_merge([
                    'vdate'         => $vdate,
                    'receiptamount' => $rcptAmt,
                    'paytype'       => $paytype,
                    'paycode'       => $paycode,
                    'refno'         => $refno,
                    'remarks'       => $remarks,
                    'u_updateby'    => $this->username,
                    'u_updatedt'    => now(),
                ], $paydet));

                // Ledger: purani entries hatao, nayi amount se dobara post karo
                app(MallLedgerController::class)->deletePaymentReceipt($this->propertyid, $editingDocid);
                app(MallLedgerController::class)->postPaymentReceipt(
                    $this->propertyid,
                    $editingDocid,
                    $receipt->vno,
                    $receipt->vprefix,
                    $vdate,
                    $tenantid,
                    $this->receiptPaymentLines($request, $rcptAmt),
                    $rcptAmt,
                    $this->username
                );

                DB::commit();
                return response()->json([
                    'success' => true,
                    'message' => 'Receipt updated successfully.',
                    'docid'   => $editingDocid,
                ]);
            }

            // ── NEW RECEIPT ─────────────────────────────────────────────────
            $allocated = $this->allocateDocid($vdate);

            // Latest active lease for this tenant
            $leaseid = null;
            if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
                $leaseid = MallLeaseHdr::where('propertyid', $this->propertyid)
                    ->where('tenantid', $tenantid)
                    ->where('activeyn', 1)
                    ->whereIn('leasestatus', ['ACTIVE', 'DRAFT'])
                    ->orderByDesc('id')
                    ->value('id');
            }

            // Mobile no from subgroup
            $mobileno = substr((string) (DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('sub_code', $tenantid)
                ->value('mobile') ?? ''), 0, 10);

            // Eloquent create — standard 3.1
            $receipt = MallReceipt::create(array_merge([
                'propertyid'    => $this->propertyid,
                'docid'         => $allocated['docid'],
                'vtype'         => $allocated['vtype'],
                'vno'           => $allocated['vno'],
                'vdate'         => $vdate,
                'vprefix'       => $allocated['vprefix'],
                'tenantid'      => $tenantid,
                'leaseid'       => $leaseid,
                'receiptamount' => $rcptAmt,
                'paytype'       => $paytype,
                'paycode'       => $paycode,
                'refno'         => $refno,
                'remarks'       => $remarks,
                'mobileno'      => $mobileno,
                'u_name'        => $this->username,
                'u_entdt'       => now(),
            ], $paydet));

            // Voucher prefix counter update
            DB::table('voucher_prefix')
                ->where('propertyid', $this->propertyid)
                ->whereRaw('UPPER(v_type) = ?', [strtoupper($allocated['vtype'])])
                ->where('date_from', $allocated['date_from'])
                ->update(['start_srl_no' => $allocated['vno']]);

            // Ledger posting: DR cash/bank, CR tenant — position yahin se kam hoti hai
            app(MallLedgerController::class)->postPaymentReceipt(
                $this->propertyid,
                $receipt->docid,
                $receipt->vno,
                $receipt->vprefix,
                $vdate,
                $tenantid,
                $this->receiptPaymentLines($request, $rcptAmt),
                $rcptAmt,
                $this->username
            );

            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'Receipt saved successfully.',
                'docid'   => $receipt->docid,
                'vno'     => $receipt->vno,
            ]);

        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Receipt not found for editing.'], 404);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // =========================================================================
    // 4. POST /paymentreceiptentrybill  (AJAX)
    //    Single receipt load by docid (edit/view mode)
    // =========================================================================
    public function fetchBill(Request $request)
    {
        $docid = trim((string) ($request->docid ?? ''));

        if ($docid === '' || !DB::getSchemaBuilder()->hasTable('mall_receipt')) {
            return response()->json(['success' => false, 'message' => 'Receipt not found.'], 404);
        }

        $receipt = MallReceipt::forProperty($this->propertyid)
            ->leftJoin('subgroup as s', function ($j) {
                $j->on('s.sub_code', '=', DB::raw('CAST(mall_receipt.tenantid AS CHAR)'))
                  ->on('s.propertyid', '=', 'mall_receipt.propertyid');
            })
            ->leftJoin('revmast as rm', function ($j) {
                $j->on('rm.rev_code', '=', 'mall_receipt.paycode')
                  ->on('rm.propertyid', '=', 'mall_receipt.propertyid');
            })
            ->where('mall_receipt.docid', $docid)
            ->select(
                'mall_receipt.*',
                's.name      as tenantname',
                's.conperson as contactperson',
                's.mobile    as tenantmobile',
                'rm.name     as paymodename'
            )
            ->first();

        if (!$receipt) {
            return response()->json(['success' => false, 'message' => 'Receipt not found.'], 404);
        }

        return response()->json(['success' => true, 'receipt' => $receipt]);
    }

    // =========================================================================
    // 5. POST /paymentreceiptentrydelete  (AJAX)
    //    Delete — Eloquent (standard 3.1)
    // =========================================================================
    public function destroy(Request $request)
    {
        $docid = trim((string) ($request->docid ?? ''));
        if ($docid === '') {
            return response()->json(['success' => false, 'message' => 'No receipt selected.'], 422);
        }
        if (!DB::getSchemaBuilder()->hasTable('mall_receipt')) {
            return response()->json(['success' => false, 'message' => 'Table not found.'], 422);
        }

        try {
            DB::beginTransaction();

            $receipt = MallReceipt::forProperty($this->propertyid)
                ->where('docid', $docid)
                ->firstOrFail();

            $receipt->delete(); // Eloquent delete

            // Ledger entries bhi hatao — tenant ki position wapas badh jaaye
            app(MallLedgerController::class)->deletePaymentReceipt($this->propertyid, $docid);

            DB::commit();
            return response()->json(['success' => true, 'message' => 'Receipt deleted successfully.']);

        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Receipt not found.'], 404);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Tenant ki current outstanding = (bills ka Net Amount) − (receipts ka total).
     *
     * Concept (user requirement):
     *   ek bill do part me pay ho — pehle 1,00,000, toh doosri baar sirf
     *   baaki (bill − pehle ki payment) hi dikhe / save ho. Overpayment aur
     *   duplicate receipt rukni chahiye.
     *
     * Bills side  : facilitybill1 (party ki saari bills) → suntranfacility
     *               Net Amount. Receipts side: mall_receipt (hamesha save
     *               hota hai — ledger posting skip ho to bhi). Isliye
     *               outstanding mall_receipt se authoritative hai aur
     *               ledger ki unavailability par depend nahi karta.
     *
     * Table na mile to NULL → save() validation skip (purana behaviour).
     */
    private function tenantOutstanding($tenantid)
    {
        $tenantid = trim((string) $tenantid);

        if (
            !DB::getSchemaBuilder()->hasTable('facilitybill1') ||
            !DB::getSchemaBuilder()->hasTable('suntranfacility') ||
            !DB::getSchemaBuilder()->hasTable('mall_receipt')
        ) {
            return null; // compute nahi kar sakte → validation skip
        }

        // Bills side — party ki saari bill docids (facilitybill1.docid)
        $chargeDocids = DB::table('facilitybill1')
            ->where('propertyid', $this->propertyid)
            ->where('partycode', $tenantid)
            ->pluck('docid')
            ->unique()
            ->values()
            ->all();

        $billsTotal = 0.0;
        if (!empty($chargeDocids)) {
            $billsTotal = (float) DB::table('suntranfacility')
                ->where('propertyid', $this->propertyid)
                ->whereIn('docid', $chargeDocids)
                ->whereRaw("UPPER(TRIM(dispname)) = 'NET AMOUNT'")
                ->sum('amount');
        }

        // Receipts side — mall_receipt (authoritative, ledger pe depend nahi)
        $receiptsTotal = (float) MallReceipt::forProperty($this->propertyid)
            ->where('tenantid', $tenantid)
            ->sum('receiptamount');

        return round($billsTotal - $receiptsTotal, 2);
    }

    /**
     * Payment rows se ledger DR lines: [[paycode, amount], ...]
     */
    private function receiptPaymentLines(Request $request, $fallbackAmount)
    {
        $lines = [];
        foreach ((array) $request->input('payment_rows', []) as $row) {
            if (!is_array($row)) {
                continue;
            }
            $paycode = trim((string) ($row['paycode'] ?? ''));
            $amount  = round((float) ($row['amount'] ?? 0), 2);
            if ($paycode !== '' && $amount > 0) {
                $lines[] = ['paycode' => $paycode, 'amount' => $amount];
            }
        }

        if (empty($lines)) {
            $lines[] = [
                'paycode' => trim((string) $request->input('paycode', '')),
                'amount'  => round((float) $fallbackAmount, 2),
            ];
        }

        return $lines;
    }

    // =========================================================================
    // 6. GET /paymentreceiptentryprint/{docid}
    //    Print receipt — Barryvdh DomPDF
    // =========================================================================
    public function printReceipt($docid)
    {
        $docid = urldecode($docid);

        $receipt = MallReceipt::forProperty($this->propertyid)
            ->leftJoin('subgroup as s', function ($j) {
                $j->on('s.sub_code', '=', DB::raw('CAST(mall_receipt.tenantid AS CHAR)'))
                  ->on('s.propertyid', '=', 'mall_receipt.propertyid');
            })
            ->leftJoin('revmast as rm', function ($j) {
                $j->on('rm.rev_code', '=', 'mall_receipt.paycode')
                  ->on('rm.propertyid', '=', 'mall_receipt.propertyid');
            })
            ->where('mall_receipt.docid', $docid)
            ->select(
                'mall_receipt.*',
                's.name      as tenantname',
                's.conperson as contactperson',
                's.mobile    as tenantmobile',
                'rm.name     as paymodename'
            )
            ->first();

        abort_if(!$receipt, 404, 'Receipt not found.');

        $company = companydata();
        $vno     = $receipt->vno;

        // Amount in words
        $words = '';
        try {
            $amount = (float) $receipt->receiptamount;
            $words  = numberToWords($amount);
        } catch (\Throwable $e) {
            $words = '';
        }

        $pdf = Pdf::loadView('property.mallmanagement.paymentreceiptprint', [
            'receipt' => $receipt,
            'company' => $company,
            'vno'     => $vno,
            'words'   => $words,
        ])->setPaper('a4', 'portrait');

        return $pdf->stream('payment-receipt-' . $vno . '.pdf');
    }
}
