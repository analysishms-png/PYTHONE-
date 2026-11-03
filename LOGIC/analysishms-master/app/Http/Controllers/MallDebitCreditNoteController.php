<?php

namespace App\Http\Controllers;

use App\Models\MallLeaseHdr;
use App\Models\MallNoteDtl;
use App\Models\MallNoteHdr;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

/**
 * Mall Debit / Credit Note Entry
 *
 * Debit Note (vtype = 'DEN')  → tenant ke bill me extra charge / additional liability
 * Credit Note (vtype = 'CEN') → tenant ke bill me rebate / waiver / discount
 *
 * Data:
 *   mall_note_hdr — ek row per note (header)
 *   mall_note_dtl — charge-wise lines (sno, chargecode, period, qty/unit/rate, amount)
 *
 * Reference:
 *   Invoice → facilitybill1 (tenant ki existing bill), same source jisse
 *   Receipt Entry pending bills laata hai.
 *
 * Numbering:
 *   voucher_prefix (v_type = DEN / CEN) se allocateDocid() — bilkul receipt
 *   entry wale pattern par, do alag sequences (DEN aur CEN alag-alag).
 *
 *   Note type codes doosre module ke voucher codes se clash karte hain,
 *   isliye is module me Debit Note = DEN aur Credit Note = CEN use hota hai —
 *   voucher_prefix, mall_note_hdr.vtype aur ledger, sabhi jagah.
 */

class MallDebitCreditNoteController extends Controller
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
     * Allocate next docid + vno for a vtype (DEN / CEN) — call inside DB::transaction
     */
    private function allocateDocid(string $vdate, string $vtype): array
    {
        $fy = $this->fiscalYear($vdate);

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
     * Normalise and validate the vtype coming from the client.
     * Debit → DEN, Credit → CEN (accepts full words too).
     */
    private function normalizeVtype(string $raw): string
    {
        $raw = strtoupper(trim($raw));

        if (in_array($raw, ['DEN', 'DEBIT', 'DEBIT NOTE'], true)) {
            return 'DEN';
        }
        if (in_array($raw, ['CEN', 'CREDIT', 'CREDIT NOTE'], true)) {
            return 'CEN';
        }

        return '';
    }

    /**
     * Selected shop (unit) ki lease me jo charges hain, unke charge codes.
     *
     * Tenant select hone ke baad user shop chunta hai; us shop ki lease
     * (mall_lease_hdr.unitid) ke charges (tablemall_lease_charges) hi us
     * shop ki bills (facilitybill1.facilitycode) define karte hain.
     */
    private function shopChargeCodes(string $tenantid, string $shopid): array
    {
        if (
            !DB::getSchemaBuilder()->hasTable('mall_lease_hdr') ||
            !DB::getSchemaBuilder()->hasTable('tablemall_lease_charges')
        ) {
            return [];
        }

        $hdrLeaseIds = DB::table('mall_lease_hdr')
            ->where('propertyid', $this->propertyid)
            ->where('tenantid', $tenantid)
            ->where(function ($q) use ($shopid) {
                $q->where('unitid', $shopid)
                    ->orWhere('id', $shopid);
            })
            ->where('activeyn', 1)
            ->pluck('id')
            ->all();

        $dtlLeaseIds = [];
        if (DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
            $dtlLeaseIds = DB::table('mall_lease_hdr as hdr')
                ->join('mall_lease_dtl as dtl', function ($j) {
                    $j->on('dtl.lease_id', '=', 'hdr.id')
                        ->on('dtl.propertyid', '=', 'hdr.propertyid');
                })
                ->where('hdr.propertyid', $this->propertyid)
                ->where('hdr.tenantid', $tenantid)
                ->where('hdr.activeyn', 1)
                ->where(function ($q) use ($shopid) {
                    $q->where('dtl.unitid', $shopid)
                        ->orWhere('dtl.shopcode', $shopid);
                })
                ->pluck('hdr.id')
                ->all();
        }

        $leaseIds = array_values(array_unique(array_merge($hdrLeaseIds, $dtlLeaseIds)));

        if (empty($leaseIds)) {
            $leaseIds = DB::table('mall_lease_hdr')
                ->where('propertyid', $this->propertyid)
                ->where('tenantid', $tenantid)
                ->where('activeyn', 1)
                ->pluck('id')
                ->all();
        }

        if (empty($leaseIds)) {
            return [];
        }

        return DB::table('tablemall_lease_charges')
            ->where('propertyid', $this->propertyid)
            ->whereIn('leaseid', $leaseIds)
            ->pluck('chargecode')
            ->unique()
            ->filter()
            ->values()
            ->all();
    }

    /**
     * Charge master ke saath Tax % attach karo.
     * mall_chargemast.taxstru → taxstru table me us str_code ke rate ka sum
     * (jaise CGST 9 + SGST 9 = 18%, NO TAX = 0).
     */
    private function attachChargeTax($charges)
    {
        if (!$charges || $charges->isEmpty()) {
            return $charges;
        }

        $strCodes = $charges->pluck('taxstru')->filter()->unique()->values()->all();
        $taxMap   = [];

        if (!empty($strCodes) && DB::getSchemaBuilder()->hasTable('taxstru')) {
            $taxMap = DB::table('taxstru')
                ->where('propertyid', $this->propertyid)
                ->whereIn('str_code', $strCodes)
                ->groupBy('str_code')
                ->select('str_code', DB::raw('SUM(COALESCE(rate, 0)) as taxpercent'))
                ->pluck('taxpercent', 'str_code')
                ->toArray();
        }

        return $charges->map(function ($c) use ($taxMap) {
            $c->taxpercent = round((float) ($taxMap[$c->taxstru] ?? 0), 2);

            return $c;
        });
    }

    /**
     * Note lines se ledger ke revenue + tax heads banao.
     *
     *   Revenue head = mall_chargemast.accountcode (subgroup sub_code)
     *   Tax head     = taxstru.tax_code → revmast.ac_code (subgroup sub_code)
     *
     * Tax amount ko taxstru ke rate ke proportion me split kiya jaata hai
     * (CGST/SGST alag-alag heads me post ho), taki ledger ke revenue heads
     * service bill / receipt jaise hi consistent rahein.
     *
     * @return array ['revenue' => [['code','amount'],...], 'tax' => [['code','amount'],...]]
     */
    private function noteLedgerHeads(array $lines): array
    {
        if (empty($lines)) {
            return ['revenue' => [], 'tax' => []];
        }

        $chargeCodes = array_values(array_unique(array_filter(array_map(function ($l) {
            return (string) ($l['chargecode'] ?? '');
        }, $lines))));

        $charges = DB::getSchemaBuilder()->hasTable('mall_chargemast')
            ? DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->whereIn('chargecode', $chargeCodes)
                ->get(['chargecode', 'accountcode', 'taxstru'])
                ->keyBy('chargecode')
            : collect();

        // taxstru rows — str_code => [ ['tax_code','rate'], ... ]
        $strCodes = $charges->pluck('taxstru')->filter()->unique()->values()->all();
        $taxStru  = [];
        if (!empty($strCodes) && DB::getSchemaBuilder()->hasTable('taxstru')) {
            foreach (DB::table('taxstru')
                ->where('propertyid', $this->propertyid)
                ->whereIn('str_code', $strCodes)
                ->whereNotNull('rate')
                ->orderBy('sno')
                ->get(['str_code', 'tax_code', 'rate']) as $t) {
                $taxStru[$t->str_code][] = ['tax_code' => (string) $t->tax_code, 'rate' => (float) $t->rate];
            }
        }

        // tax_code => subgroup sub_code (revmast.ac_code)
        $taxCodes = [];
        foreach ($taxStru as $rows) {
            foreach ($rows as $r) {
                $taxCodes[] = $r['tax_code'];
            }
        }
        $taxCodes = array_values(array_unique(array_filter($taxCodes)));
        $revAcMap = [];
        if (!empty($taxCodes) && DB::getSchemaBuilder()->hasTable('revmast')) {
            $revAcMap = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->whereIn('rev_code', $taxCodes)
                ->pluck('ac_code', 'rev_code')
                ->toArray();
        }

        $revenue = [];
        $tax     = [];

        foreach ($lines as $l) {
            $amount  = round((float) ($l['taxableamount'] ?? 0), 2);
            $taxAmt  = round((float) ($l['taxamount'] ?? 0), 2);
            $charge  = $charges[(string) ($l['chargecode'] ?? '')] ?? null;
            $account = trim((string) ($charge->accountcode ?? ''));
            $strCode = trim((string) ($charge->taxstru ?? ''));

            $splitDone = false;
            if ($taxAmt != 0.0 && $strCode !== '' && !empty($taxStru[$strCode])) {
                $rates     = $taxStru[$strCode];
                $totalRate = array_sum(array_column($rates, 'rate'));
                if ($totalRate > 0) {
                    $allocated = 0.0;
                    $last      = count($rates) - 1;
                    foreach ($rates as $i => $rrow) {
                        $acCode = trim((string) ($revAcMap[$rrow['tax_code']] ?? ''));
                        if ($acCode === '') {
                            continue;
                        }
                        $part = ($i === $last)
                            ? round($taxAmt - $allocated, 2)
                            : round($taxAmt * $rrow['rate'] / $totalRate, 2);
                        $allocated += $part;
                        if ($part != 0.0) {
                            $tax[] = ['code' => $acCode, 'amount' => $part];
                        }
                    }
                    $splitDone = $allocated != 0.0;
                }
            }

            if (!$splitDone) {
                // tax ka head nahi mila → amount me jod do (revenue head par chalega)
                $amount = round($amount + $taxAmt, 2);
            }

            if ($account !== '') {
                $revenue[] = ['code' => $account, 'amount' => $amount];
            }
        }

        return ['revenue' => $revenue, 'tax' => $tax];
    }

    // =========================================================================
    // 1. GET /debitcreditnoteentry
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

        $charges = DB::getSchemaBuilder()->hasTable('mall_chargemast')
            ? DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('chargename')
                ->get(['chargecode', 'chargename', 'unit', 'calculationbasis', 'taxstru', 'accountcode'])
            : collect();
        $charges = $this->attachChargeTax($charges);

        // Register — last 50 notes (DEN + CEN dono), DB se seedha (page reload par)
        $notes = DB::getSchemaBuilder()->hasTable('mall_note_hdr')
            ? DB::table('mall_note_hdr as n')
                ->leftJoin('subgroup as s', function ($j) {
                    $j->on('s.sub_code', '=', DB::raw('CAST(n.tenantid AS CHAR)'))
                      ->on('s.propertyid', '=', 'n.propertyid');
                })
                ->where('n.propertyid', $this->propertyid)
                ->orderByDesc('n.vdate')
                ->orderByDesc('n.vno')
                ->limit(50)
                ->get([
                    'n.docid', 'n.vtype', 'n.vno', 'n.vdate', 'n.refdocid',
                    'n.reason', 'n.totalamount', 'n.remarks', 'n.u_name',
                    's.name as tenantname',
                ])
            : collect();

        return view('property.mallmanagement.debitcreditnoteentry', [
            'tenants'    => $tenants,
            'charges'    => $charges,
            'notes'      => $notes,
            'ncurdate'   => $this->ncurdate,
            'username'   => $this->username,
            'propertyid' => $this->propertyid,
        ]);
    }

    // =========================================================================
    // 1b. POST /debitcreditnoteentry/nextno  (AJAX)
    //     Next DEN/CEN number preview — voucher_prefix se (read-only, no lock)
    // =========================================================================
    public function nextNoteNo(Request $request)
    {
        if (!DB::getSchemaBuilder()->hasTable('voucher_prefix')) {
            return response()->json(['success' => false, 'message' => 'voucher_prefix table not found.']);
        }

        $vtype = $this->normalizeVtype((string) ($request->vtype ?? ''));
        if ($vtype === '') {
            return response()->json(['success' => false, 'message' => 'Invalid note type.']);
        }

        $vdate = trim((string) ($request->vdate ?? ''));
        $fy = $this->fiscalYear($vdate !== '' ? $vdate : ($this->ncurdate ?: date('Y-m-d')));

        $vpRow = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->whereRaw('UPPER(v_type) = ?', [strtoupper($vtype)])
            ->where('date_from', $fy['from'])
            ->first();

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
    // 1c. POST /debitcreditnoteentry/charges  (AJAX)
    //     mall_chargemast se active charges (charge-code master)
    // =========================================================================
    public function getCharges()
    {
        if (!DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            return response()->json([]);
        }

        $charges = DB::table('mall_chargemast')
            ->where('propertyid', $this->propertyid)
            ->where('activeyn', 1)
            ->orderBy('chargename')
            ->get(['chargecode', 'chargename', 'unit', 'calculationbasis', 'taxstru', 'accountcode']);
        $charges = $this->attachChargeTax($charges);

        return response()->json($charges);
    }

    // =========================================================================
    // 1d. POST /debitcreditnoteentry/tenantshops  (AJAX)
    //     Tenant select karne par uski shops (display ke liye)
    // =========================================================================
    public function getTenantShops(Request $request)
    {
        $tenantcode = trim((string) ($request->tenantcode ?? ''));
        if ($tenantcode === '') {
            return response()->json([]);
        }

        $floorNames = collect();
        if (DB::getSchemaBuilder()->hasTable('hkfloors')) {
            $hkFloors = DB::table('hkfloors')
                ->where('propertyid', $this->propertyid)
                ->get();
            foreach ($hkFloors as $hf) {
                if (!empty($hf->id)) { $floorNames[(string) $hf->id] = (string) $hf->name; }
                if (!empty($hf->code)) { $floorNames[(string) $hf->code] = (string) $hf->name; }
            }
        }

        $allShops = collect();

        // 1. Primary: mall_partylocation se mapped shops
        if (
            DB::getSchemaBuilder()->hasTable('mall_partylocation') &&
            DB::getSchemaBuilder()->hasTable('mall_shopmast')
        ) {
            $pShops = DB::table('mall_partylocation as pl')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.shopcode', '=', 'pl.shopcode')
                      ->on('sh.propertyid', '=', 'pl.propertyid');
                })
                ->where('pl.propertyid', $this->propertyid)
                ->where('pl.tenantcode', $tenantcode)
                ->where('pl.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select(
                    'sh.id', 'sh.shopcode', 'sh.shopname',
                    'sh.floorid', 'sh.chargeablearea', 'sh.shoptype'
                )
                ->distinct()
                ->get();
            $allShops = $allShops->merge($pShops);
        }

        // 2. Multi-shop lease: mall_lease_hdr + mall_lease_dtl
        if (
            DB::getSchemaBuilder()->hasTable('mall_lease_hdr') &&
            DB::getSchemaBuilder()->hasTable('mall_lease_dtl') &&
            DB::getSchemaBuilder()->hasTable('mall_shopmast')
        ) {
            $dtlShops = DB::table('mall_lease_hdr as hdr')
                ->join('mall_lease_dtl as dtl', function ($j) {
                    $j->on('dtl.lease_id', '=', 'hdr.id')
                      ->on('dtl.propertyid', '=', 'hdr.propertyid');
                })
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.id', '=', 'dtl.unitid')
                      ->on('sh.propertyid', '=', 'hdr.propertyid');
                })
                ->where('hdr.propertyid', $this->propertyid)
                ->where('hdr.tenantid', $tenantcode)
                ->where('hdr.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select(
                    'sh.id', 'sh.shopcode', 'sh.shopname',
                    'sh.floorid', 'sh.chargeablearea', 'sh.shoptype'
                )
                ->distinct()
                ->get();
            $allShops = $allShops->merge($dtlShops);
        }

        // 3. Single-shop lease: mall_lease_hdr.unitid
        if (
            DB::getSchemaBuilder()->hasTable('mall_lease_hdr') &&
            DB::getSchemaBuilder()->hasTable('mall_shopmast')
        ) {
            $hdrShops = DB::table('mall_lease_hdr as hdr')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.id', '=', 'hdr.unitid')
                      ->on('sh.propertyid', '=', 'hdr.propertyid');
                })
                ->where('hdr.propertyid', $this->propertyid)
                ->where('hdr.tenantid', $tenantcode)
                ->where('hdr.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select(
                    'sh.id', 'sh.shopcode', 'sh.shopname',
                    'sh.floorid', 'sh.chargeablearea', 'sh.shoptype'
                )
                ->distinct()
                ->get();
            $allShops = $allShops->merge($hdrShops);
        }

        $allShops = $allShops->unique('shopcode')->values();

        // Tenant active lease fallback
        $defaultLease = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $defaultLease = DB::table('mall_lease_hdr')
                ->where('propertyid', $this->propertyid)
                ->where('tenantid', $tenantcode)
                ->where('activeyn', 1)
                ->orderByDesc('id')
                ->first(['id', 'agreementno', 'leasestatus']);
        }

        $result = [];
        foreach ($allShops as $shop) {
            $lease = null;
            // 1. Check dtl lease
            if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr') && DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
                $lease = DB::table('mall_lease_hdr as hdr')
                    ->join('mall_lease_dtl as dtl', function ($j) {
                        $j->on('dtl.lease_id', '=', 'hdr.id')
                          ->on('dtl.propertyid', '=', 'hdr.propertyid');
                    })
                    ->where('hdr.propertyid', $this->propertyid)
                    ->where('hdr.tenantid', $tenantcode)
                    ->where('hdr.activeyn', 1)
                    ->where(function ($q) use ($shop) {
                        $q->where('dtl.unitid', $shop->id)
                          ->orWhere('dtl.shopcode', $shop->shopcode);
                    })
                    ->orderByDesc('hdr.id')
                    ->first(['hdr.id', 'hdr.agreementno', 'hdr.leasestatus']);
            }

            // 2. Check hdr lease
            if (!$lease && DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
                $lease = DB::table('mall_lease_hdr')
                    ->where('propertyid', $this->propertyid)
                    ->where('tenantid', $tenantcode)
                    ->where('unitid', $shop->id)
                    ->where('activeyn', 1)
                    ->orderByDesc('id')
                    ->first(['id', 'agreementno', 'leasestatus']);
            }

            if (!$lease) {
                $lease = $defaultLease;
            }

            $floorname = $floorNames[(string) ($shop->floorid ?? '')] ?? '—';

            $result[] = [
                'id'             => $shop->id,
                'shopcode'       => $shop->shopcode,
                'shopname'       => $shop->shopname,
                'floorname'      => $floorname,
                'chargeablearea' => $shop->chargeablearea ?? '—',
                'shoptype'       => $shop->shoptype ?? '—',
                'agreementno'    => $lease->agreementno ?? '—',
                'leasestatus'    => $lease->leasestatus ?? '—',
                'leaseid'        => $lease->id ?? null,
            ];
        }

        return response()->json($result);
    }

    // =========================================================================
    // 1e. POST /debitcreditnoteentry/referencelist  (AJAX)
    //     Tenant ki invoices (facilitybill1) — reference dikhane ke liye
    // =========================================================================
    public function referenceList(Request $request)
    {
        $tenantid = trim((string) ($request->tenantid ?? ''));
        if ($tenantid === '' || !DB::getSchemaBuilder()->hasTable('facilitybill1')) {
            return response()->json([]);
        }

        $lines = DB::table('facilitybill1 as b')
            ->where('b.propertyid', $this->propertyid)
            ->where('b.partycode', $tenantid)
            ->orderBy('b.vdate', 'desc')
            ->orderBy('b.vno', 'desc')
            ->orderBy('b.sno')
            ->get([
                'b.docid', 'b.docid1', 'b.vno', 'b.vdate', 'b.facilitycode',
                'b.forperiod', 'b.toperiod', 'b.amount'
            ]);

        if ($lines->isEmpty()) {
            return response()->json([]);
        }

        $chargeNames = DB::getSchemaBuilder()->hasTable('mall_chargemast')
            ? DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->whereIn('chargecode', $lines->pluck('facilitycode')->unique()->filter()->values()->all())
                ->pluck('chargename', 'chargecode')
                ->toArray()
            : [];

        $grouped = [];
        foreach ($lines as $l) {
            $hdrDocid = trim((string) ($l->docid1 ?: $l->docid));
            if (!isset($grouped[$hdrDocid])) {
                $grouped[$hdrDocid] = [
                    'docid' => $hdrDocid,
                    'vno' => (int) $l->vno,
                    'vdate' => $l->vdate ? date('d-m-Y', strtotime($l->vdate)) : '',
                    'vdate_iso' => $l->vdate ? date('Y-m-d', strtotime($l->vdate)) : '',
                    'forperiod' => $l->forperiod ? date('M Y', strtotime($l->forperiod)) : '',
                    'billamount' => 0.0,
                    'charges' => [],
                ];
            }
            $grouped[$hdrDocid]['billamount'] = round($grouped[$hdrDocid]['billamount'] + (float)$l->amount, 2);
            $cName = $chargeNames[$l->facilitycode] ?? (string)$l->facilitycode;
            if (!in_array($cName, $grouped[$hdrDocid]['charges'])) {
                $grouped[$hdrDocid]['charges'][] = $cName;
            }
        }

        $result = [];
        foreach ($grouped as $b) {
            $result[] = [
                'docid'        => $b['docid'],
                'vno'          => $b['vno'],
                'vdate'        => $b['vdate'],
                'vdate_iso'    => $b['vdate_iso'],
                'forperiod'    => $b['forperiod'],
                'chargename'   => implode(', ', $b['charges']),
                'billamount'   => number_format($b['billamount'], 2, '.', ''),
                'paid'         => '0.00',
                'outstanding'  => number_format($b['billamount'], 2, '.', ''),
            ];
        }

        return response()->json($result);
    }

    // =========================================================================
    // 1f. POST /debitcreditnoteentry/bills  (AJAX)
    //     Selected tenant (aur optional shop) ki bills — bill date range ke andar,
    //     har bill ke saath uske charge lines.
    //
    //     Sale Bill Entry concept: pehle BILL fetch hoti hai, phir us bill ke
    //     charge par Debit / Credit Note banta hai. Original bill edit nahi hoti.
    // =========================================================================
    public function billList(Request $request)
    {
        $tenantid = trim((string) ($request->tenantid ?? ''));
        if ($tenantid === '' || !DB::getSchemaBuilder()->hasTable('facilitybill1')) {
            return response()->json([
                'success' => false,
                'bills'   => [],
                'message' => 'Select a tenant first, then fetch the bills.',
            ]);
        }

        $shopid   = trim((string) ($request->shopid ?? ''));
        $fromdate = trim((string) ($request->fromdate ?? ''));
        $todate   = trim((string) ($request->todate ?? ''));

        // Tenant ki bills ka asli date range — date range me kuch na mile to
        // user ko yahi batana hai ki bills kis date par hain.
        $range = DB::table('facilitybill1')
            ->where('propertyid', $this->propertyid)
            ->where('partycode', $tenantid)
            ->selectRaw('MIN(vdate) as min_vdate, MAX(vdate) as max_vdate, COUNT(*) as cnt')
            ->first();

        $rangeInfo = ($range && (int) $range->cnt > 0) ? [
            'min'   => date('d-m-Y', strtotime($range->min_vdate)),
            'max'   => date('d-m-Y', strtotime($range->max_vdate)),
            'count' => (int) $range->cnt,
        ] : null;

        $query = DB::table('facilitybill1 as b')
            ->where('b.propertyid', $this->propertyid)
            ->where('b.partycode', $tenantid);

        // Bill date range — khali chhodo to tenant ki saari bills
        if ($fromdate !== '') {
            $query->where('b.vdate', '>=', date('Y-m-d 00:00:00', strtotime($fromdate)));
        }
        if ($todate !== '') {
            $query->where('b.vdate', '<=', date('Y-m-d 23:59:59', strtotime($todate)));
        }

        $lines = $query->orderBy('b.vdate')
            ->orderBy('b.vno')
            ->orderBy('b.sno')
            ->get([
                'b.docid', 'b.docid1', 'b.vno', 'b.vdate', 'b.sno',
                'b.facilitycode', 'b.unit', 'b.unitrate', 'b.amount',
                'b.forperiod', 'b.toperiod',
            ]);

        if ($lines->isEmpty()) {
            return response()->json([
                'success'      => true,
                'bills'        => [],
                'shopfiltered' => false,
                'fallback'     => false,
                'range'        => $rangeInfo,
                'message'      => $rangeInfo
                    ? 'No bill found in this date range. This tenant\'s bills are between '
                        . $rangeInfo['min'] . ' and ' . $rangeInfo['max']
                        . ' (total ' . $rangeInfo['count'] . ') — please change the date range.'
                    : 'No bills found for this tenant.',
            ]);
        }

        // Charge names (chargecode → chargename)
        $chargeNames = DB::getSchemaBuilder()->hasTable('mall_chargemast')
            ? DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->whereIn('chargecode', $lines->pluck('facilitycode')->unique()->filter()->values()->all())
                ->pluck('chargename', 'chargecode')
                ->toArray()
            : [];

        // Line-wise tax — facilitybill2 (docid = charge docid, sno1 = facilitybill1.sno)
        $taxMap = [];
        if (DB::getSchemaBuilder()->hasTable('facilitybill2')) {
            $taxRows = DB::table('facilitybill2')
                ->where('propertyid', $this->propertyid)
                ->whereIn('docid', $lines->pluck('docid')->unique()->values()->all())
                ->get(['docid', 'sno1', 'taxper', 'taxamt']);

            foreach ($taxRows as $t) {
                $key = $t->docid . '|' . (int) $t->sno1;
                if (!isset($taxMap[$key])) {
                    $taxMap[$key] = ['per' => 0.0, 'amt' => 0.0];
                }
                $taxMap[$key]['per'] += (float) $t->taxper;
                $taxMap[$key]['amt'] += (float) $t->taxamt;
            }
        }

        // Bill header (docid1) wise group — ek bill = ek header, uske charge lines
        $bills = [];
        foreach ($lines as $l) {
            $header = trim((string) $l->docid1) !== '' ? trim((string) $l->docid1) : $l->docid;
            $key    = $l->docid . '|' . (int) $l->sno;
            $tax    = $taxMap[$key] ?? ['per' => 0.0, 'amt' => 0.0];

            if (!isset($bills[$header])) {
                $bills[$header] = [
                    'docid'    => $header,
                    'vno'      => (int) $l->vno,
                    'vdate'    => $l->vdate ? date('d-m-Y', strtotime($l->vdate)) : '',
                    'vdate_iso'=> $l->vdate ? date('Y-m-d', strtotime($l->vdate)) : '',
                    'from'     => '',
                    'to'       => '',
                    'amount'   => 0.00,
                    'lines'    => [],
                ];
            }

            $bill = &$bills[$header];

            if ($l->forperiod) {
                $bill['from'] = $bill['from'] === '' ? $l->forperiod : min($bill['from'], $l->forperiod);
            }
            if ($l->toperiod) {
                $bill['to'] = $bill['to'] === '' ? $l->toperiod : max($bill['to'], $l->toperiod);
            }

            $bill['amount'] = round($bill['amount'] + (float) $l->amount, 2);
            $bill['lines'][] = [
                'billdocid'  => $header,
                'chargedocid'=> $l->docid,
                'chargecode' => (string) $l->facilitycode,
                'chargename' => $chargeNames[$l->facilitycode] ?? (string) $l->facilitycode,
                'fromdate'   => $l->forperiod ? date('Y-m-d', strtotime($l->forperiod)) : '',
                'todate'     => $l->toperiod ? date('Y-m-d', strtotime($l->toperiod)) : '',
                'unit'       => (float) $l->unit,
                'rate'       => round((float) $l->unitrate, 2),
                'amount'     => round((float) $l->amount, 2),
                'taxrate'    => round($tax['per'], 2),
                'taxamount'  => round($tax['amt'], 2),
            ];
            unset($bill);
        }

        // Shop chuna hai? To dekho in bills me us shop ki lease wale charge hain ya nahi.
        $shopCodes = $shopid !== '' ? $this->shopChargeCodes($tenantid, $shopid) : [];

        foreach ($bills as $header => $bill) {
            $matched = 0;
            foreach ($bill['lines'] as $ln) {
                if (!empty($shopCodes) && in_array((string) $ln['chargecode'], $shopCodes, true)) {
                    $matched++;
                }
            }
            $bills[$header]['shopmatched']  = $matched > 0;
            $bills[$header]['shoplines']    = $matched;
        }

        $anyMatched = false;
        foreach ($bills as $b) {
            if ($b['shopmatched']) { $anyMatched = true; break; }
        }

        $shopfiltered = false;
        $fallback     = false;
        $message      = '';

        if ($shopid !== '') {
            if ($anyMatched) {
                // Shop filter laga do — sirf us shop ki bills
                $shopfiltered = true;
                $bills = array_filter($bills, function ($b) { return $b['shopmatched']; });
                $message = 'Showing bill(s) that contain the selected shop\'s charges.';
            } else {
                // Shop ki lease me in bills ka koi charge nahi — dead end se bachao:
                // filter hata ke tenant ki saari bills dikhao (charge ke hisaab se note banega).
                $fallback = true;
                $message  = 'This shop\'s lease has no charge from these bill(s), so all of the tenant\'s bill(s) are being shown.';
            }
        }

        $result = [];
        foreach ($bills as $bill) {
            $bill['period'] = ($bill['from'] ? date('M Y', strtotime($bill['from'])) : '')
                . ($bill['to'] ? ' to ' . date('M Y', strtotime($bill['to'])) : '');
            $bill['from'] = $bill['from'] ? date('Y-m-d', strtotime($bill['from'])) : '';
            $bill['to']   = $bill['to']   ? date('Y-m-d', strtotime($bill['to']))   : '';
            $bill['amount'] = number_format($bill['amount'], 2, '.', '');
            $result[] = $bill;
        }

        return response()->json([
            'success'      => true,
            'bills'        => array_values($result),
            'shopfiltered' => $shopfiltered,
            'fallback'     => $fallback,
            'range'        => $rangeInfo,
            'message'      => $message,
        ]);
    }

    // =========================================================================
    // 1g. POST /debitcreditnoteentry/rentescalation  (AJAX)
    //     Jab Reference = RENT ho aur shop select + From/To Date daala jaaye,
    //     mall_lease_escalation se effective RENT rate/area fetch karo.
    //     Logic: effectivefrom <= fromdate ka latest row — newrate aur area return.
    // =========================================================================
    public function getRentEscalation(Request $request)
    {
        $leaseid    = (int) ($request->leaseid  ?? 0);
        $tenantid   = trim((string) ($request->tenantid ?? ''));
        $fromdate   = trim((string) ($request->fromdate ?? ''));
        $todate     = trim((string) ($request->todate   ?? ''));
        $reqCharge  = trim((string) ($request->chargecode ?? ''));

        if (! $fromdate) {
            return response()->json(['success' => false, 'message' => 'fromdate required.'], 422);
        }

        // 1. RENT charge master row lookup (taxpercent, chargecode, chargename etc.)
        $rentCharge = null;
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $q = DB::table('mall_chargemast')->where('propertyid', $this->propertyid);
            if ($reqCharge !== '') {
                $rentCharge = (clone $q)->where(function ($sub) use ($reqCharge) {
                    $sub->where('chargecode', $reqCharge)
                        ->orWhere('shortcode', $reqCharge)
                        ->orWhere('chargename', $reqCharge);
                })->first();
            }
            if (!$rentCharge) {
                $rentCharge = (clone $q)->where(function ($sub) {
                    $sub->where('shortcode', 'RENT')
                        ->orWhere('chargecode', 'RENT')
                        ->orWhere('chargename', 'like', '%RENT%');
                })->first();
            }
        }
        $rentChargeCode = $rentCharge->chargecode ?? ($reqCharge ?: 'RENT');
        $rentChargeName = $rentCharge->chargename ?? 'RENT';
        $rentTaxPercent = 0;
        if (!empty($rentCharge->taxstru) && DB::getSchemaBuilder()->hasTable('taxstru')) {
            $rentTaxPercent = (float) DB::table('taxstru')
                ->where('propertyid', $this->propertyid)
                ->where('str_code', $rentCharge->taxstru)
                ->sum('rate');
        }

        // 2. leaseid nahi mila to tenantid se latest active lease dhundo
        if (! $leaseid && $tenantid !== '' && DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $leaseid = (int) DB::table('mall_lease_hdr')
                ->where('propertyid', $this->propertyid)
                ->where('tenantid', $tenantid)
                ->where('activeyn', 1)
                ->orderByDesc('id')
                ->value('id');
        }

        if (! $leaseid) {
            return response()->json(['success' => false, 'message' => 'No active lease found for this tenant.'], 422);
        }

        if (! DB::getSchemaBuilder()->hasTable('mall_lease_escalation')) {
            return response()->json(['success' => false, 'message' => 'mall_lease_escalation table not found.'], 422);
        }

        // 3. Escalation lookup: check both actual chargecode (e.g. '4182') and 'RENT'
        $row = DB::table('mall_lease_escalation')
            ->where('propertyid', $this->propertyid)
            ->where('leaseid', $leaseid)
            ->where(function ($q) use ($rentChargeCode) {
                $q->where('chargecode', $rentChargeCode)
                  ->orWhere('chargecode', 'RENT');
            })
            ->where('effectivefrom', '<=', $fromdate)
            ->orderByDesc('effectivefrom')
            ->first(['newrate', 'newamount', 'area', 'effectivefrom', 'effectiveto', 'chargecode']);

        if (! $row) {
            // Check if there is an escalation entry whose date range starts after fromdate (first slab)
            $firstRow = DB::table('mall_lease_escalation')
                ->where('propertyid', $this->propertyid)
                ->where('leaseid', $leaseid)
                ->where(function ($q) use ($rentChargeCode) {
                    $q->where('chargecode', $rentChargeCode)
                      ->orWhere('chargecode', 'RENT');
                })
                ->orderBy('effectivefrom', 'asc')
                ->first(['newrate', 'newamount', 'area', 'effectivefrom', 'effectiveto', 'chargecode']);

            if ($firstRow) {
                $row = $firstRow;
            }
        }

        if (! $row) {
            // Koi escalation row nahi mili — lease ki base rate try karo
            if (! DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
                return response()->json(['success' => false, 'message' => 'No escalation data found for this lease and date.']);
            }

            $lease = DB::table('mall_lease_hdr')
                ->where('propertyid', $this->propertyid)
                ->where('id', $leaseid)
                ->first();

            if (! $lease) {
                return response()->json(['success' => false, 'message' => 'No escalation data found for this lease and date.']);
            }

            $area = (float) ($lease->chargeablearea ?? 0);
            $rate = (float) ($lease->rentrate ?? 0);
            $amt  = $rate > 0 && $area > 0 ? round($rate * $area, 2) : (float) ($lease->currentrent ?? 0);

            if ($amt == 0 && DB::getSchemaBuilder()->hasTable('tablemall_lease_charges')) {
                $chgRow = DB::table('tablemall_lease_charges')
                    ->where('propertyid', $this->propertyid)
                    ->where('leaseid', $leaseid)
                    ->where(function ($q) use ($rentChargeCode) {
                        $q->where('chargecode', $rentChargeCode)
                          ->orWhere('chargecode', 'RENT');
                    })
                    ->first();
                if ($chgRow) {
                    $rate = (float) ($chgRow->rate ?? 0);
                    $amt  = (float) ($chgRow->amount ?? ($rate > 0 && $area > 0 ? round($rate * $area, 2) : 0));
                }
            }

            return response()->json([
                'success'    => true,
                'chargecode' => $rentChargeCode,
                'chargename' => $rentChargeName,
                'rate'       => $rate,
                'area'       => $area,
                'amount'     => $amt,
                'taxpercent' => $rentTaxPercent,
                'source'     => 'lease_base',
            ]);
        }

        $area = (float) ($row->area ?? 0);
        $rate = (float) ($row->newrate ?? 0);
        // newrate = per-sqft rate → amount = rate * area; newamount fallback for fixed rent
        $amt  = $rate > 0 && $area > 0
            ? round($rate * $area, 2)
            : (float) ($row->newamount ?? 0);

        return response()->json([
            'success'      => true,
            'chargecode'   => $rentChargeCode,
            'chargename'   => $rentChargeName,
            'rate'         => $rate,
            'area'         => $area,
            'amount'       => $amt,
            'taxpercent'   => $rentTaxPercent,
            'effectivefrom'=> $row->effectivefrom ?? null,
            'source'       => 'escalation',
        ]);
    }

    // =========================================================================
    // 2. POST /debitcreditnoteentrysave  (AJAX)
    //    Insert/Update — Eloquent (standard 3.1)
    // =========================================================================
    public function save(Request $request)
    {
        $request->validate([
            'vtype'    => 'required',
            'tenantid' => 'required',
            'vdate'    => 'required|date',
        ]);

        if (
            !DB::getSchemaBuilder()->hasTable('mall_note_hdr') ||
            !DB::getSchemaBuilder()->hasTable('mall_note_dtl')
        ) {
            return response()->json([
                'success' => false,
                'message' => 'mall_note_hdr / mall_note_dtl table not found. Run migration first.',
            ], 422);
        }

        $vtype       = $this->normalizeVtype((string) $request->vtype);
        $tenantid    = trim((string) $request->tenantid);
        $vdate       = date('Y-m-d', strtotime($request->vdate));
        $refdocid    = trim((string) ($request->refdocid ?? ''));
        $refdate     = $request->filled('refdate') ? date('Y-m-d', strtotime($request->refdate)) : null;
        $reason      = substr(trim((string) ($request->reason ?? '')), 0, 250);
        $remarks     = substr(trim((string) ($request->remarks ?? '')), 0, 500);
        $editingDocid = trim((string) ($request->input('editing_docid', '')));
        $isEditing   = $editingDocid !== '';
        $rows        = $request->input('note_rows', []);

        if ($vtype === '') {
            return response()->json(['success' => false, 'message' => 'Invalid note type.'], 422);
        }
        if (!is_array($rows)) {
            $rows = [];
        }

        // At least one valid row (chargecode + amount > 0)
        $validRows = array_values(array_filter($rows, function ($r) {
            return trim((string) ($r['chargecode'] ?? '')) !== ''
                && (float) ($r['amount'] ?? 0) > 0;
        }));

        if (empty($validRows)) {
            return response()->json([
                'success' => false,
                'message' => 'Add at least one charge line with amount.',
            ], 422);
        }

        // Line-wise amounts + tax (Amount tax-exclusive: Total = Amount + Tax)
        $lines   = [];
        $taxable = 0.00;
        $tax     = 0.00;
        $total   = 0.00;

        foreach ($validRows as $r) {
            $amount  = round((float) ($r['amount'] ?? 0), 2);
            $taxrate = round((float) ($r['taxrate'] ?? $r['tax'] ?? 0), 2);
            $taxamt  = round($amount * $taxrate / 100, 2);
            $linetot = round($amount + $taxamt, 2);

            $taxable += $amount;
            $tax     += $taxamt;
            $total   += $linetot;

            $lines[] = [
                'chargecode'    => substr(trim((string) ($r['chargecode'] ?? '')), 0, 30),
                'fromdate'      => $r['fromdate'] ?? null,
                'todate'        => $r['todate'] ?? null,
                'qty'           => (float) ($r['qty'] ?? 1),
                'unit'          => trim((string) ($r['unit'] ?? '')),
                'rate'          => round((float) ($r['rate'] ?? 0), 4),
                'amount'        => $amount,
                'taxrate'       => $taxrate,
                'taxableamount' => $amount,
                'taxamount'     => $taxamt,
                'totalamount'   => $linetot,
                'remarks'       => trim((string) ($r['remarks'] ?? '')),
            ];
        }
        $taxable = round($taxable, 2);
        $tax     = round($tax, 2);
        $total   = round($total, 2);

        try {
            DB::beginTransaction();

            // ── UPDATE ──────────────────────────────────────────────────────
            if ($isEditing) {
                $note = MallNoteHdr::forProperty($this->propertyid)
                    ->where('docid', $editingDocid)
                    ->firstOrFail();

                $note->update([
                    'vdate'         => $vdate,
                    'tenantid'      => $tenantid,
                    'refdocid'      => $refdocid !== '' ? $refdocid : null,
                    'refdate'       => $refdate,
                    'reason'        => $reason,
                    'remarks'       => $remarks,
                    'taxableamount' => $taxable,
                    'taxamount'     => $tax,
                    'totalamount'   => $total,
                    'u_name'        => $this->username,
                    'u_entdt'       => now(),
                ]);

                // Detail rows replace (delete + reinsert)
                MallNoteDtl::forProperty($this->propertyid)
                    ->where('docid', $note->docid)
                    ->delete();

                $this->insertDetails($note->docid, $refdocid, $lines);

                // Purani ledger entries hata kar dobara post karo
                app(MallLedgerController::class)->deleteDebitCreditNote($this->propertyid, $note->docid);
                $this->postNoteLedger($note, $tenantid, $lines, $total, $vdate);

                DB::commit();
                return response()->json([
                    'success' => true,
                    'message' => ucfirst($vtype === 'DEN' ? 'Debit' : 'Credit') . ' Note updated successfully.',
                    'docid'   => $note->docid,
                    'vno'     => $note->vno,
                    'vtype'   => $note->vtype,
                ]);
            }

            // ── NEW NOTE ────────────────────────────────────────────────────
            $allocated = $this->allocateDocid($vdate, $vtype);

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

            // Eloquent create — standard 3.1
            $note = MallNoteHdr::create([
                'propertyid'     => $this->propertyid,
                'docid'          => $allocated['docid'],
                'vtype'          => $allocated['vtype'],
                'vno'            => $allocated['vno'],
                'vdate'          => $vdate,
                'tenantid'       => $tenantid,
                'leaseid'        => $leaseid,
                'refdocid'       => $refdocid !== '' ? $refdocid : null,
                'refdate'        => $refdate,
                'reason'         => $reason,
                'taxableamount'  => $taxable,
                'taxamount'      => $tax,
                'totalamount'    => $total,
                'remarks'        => $remarks,
                'u_name'         => $this->username,
                'u_entdt'        => now(),
            ]);

            $this->insertDetails($note->docid, $refdocid, $lines);

            // Ledger posting (DEN = DR tenant, CEN = CR tenant)
            $this->postNoteLedger($note, $tenantid, $lines, $total, $vdate);

            // Voucher prefix counter update
            DB::table('voucher_prefix')
                ->where('propertyid', $this->propertyid)
                ->whereRaw('UPPER(v_type) = ?', [strtoupper($allocated['vtype'])])
                ->where('date_from', $allocated['date_from'])
                ->update(['start_srl_no' => $allocated['vno']]);

            DB::commit();
            return response()->json([
                'success' => true,
                'message' => ucfirst($vtype === 'DEN' ? 'Debit' : 'Credit') . ' Note saved successfully.',
                'docid'   => $note->docid,
                'vno'     => $note->vno,
                'vtype'   => $note->vtype,
            ]);

        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Note not found for editing.'], 404);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Charge-wise detail rows insert (mall_note_dtl) — tax ke saath
     */
    private function insertDetails(string $docid, string $refdocid, array $rows): void
    {
        if (!DB::getSchemaBuilder()->hasTable('mall_note_dtl')) {
            return;
        }

        $sno = 0;
        foreach ($rows as $r) {
            $sno++;
            $chargecode = substr(trim((string) ($r['chargecode'] ?? '')), 0, 30);
            if ($chargecode === '') {
                continue;
            }

            $amount  = round((float) ($r['amount'] ?? 0), 2);
            $taxrate = round((float) ($r['taxrate'] ?? 0), 2);
            $taxamt  = round((float) ($r['taxamount'] ?? 0), 2);
            $linetot = round((float) ($r['totalamount'] ?? ($amount + $taxamt)), 2);

            MallNoteDtl::create([
                'propertyid'    => $this->propertyid,
                'docid'         => $docid,
                'sno'           => $sno,
                'refdocid'      => $refdocid !== '' ? $refdocid : null,
                'chargecode'    => $chargecode,
                'fromdate'      => !empty($r['fromdate']) ? date('Y-m-d', strtotime($r['fromdate'])) : null,
                'todate'        => !empty($r['todate'])   ? date('Y-m-d', strtotime($r['todate']))   : null,
                'qty'           => (float) ($r['qty']   ?? 1),
                'unit'          => substr(trim((string) ($r['unit'] ?? '')), 0, 20) ?: null,
                'rate'          => round((float) ($r['rate'] ?? 0), 4),
                'amount'        => $amount,
                'taxrate'       => $taxrate,
                'taxableamount' => round((float) ($r['taxableamount'] ?? $amount), 2),
                'taxamount'     => $taxamt,
                'totalamount'   => $linetot,
                'remarks'       => substr(trim((string) ($r['remarks'] ?? '')), 0, 300) ?: null,
                'u_name'        => $this->username,
                'u_entdt'       => now(),
            ]);
        }
    }

    /**
     * Note ki ledger entries post karo — revenue/tax heads note lines se bante hain.
     */
    private function postNoteLedger($note, $tenantid, array $lines, $total, $vdate): void
    {
        $heads = $this->noteLedgerHeads($lines);
        $fy    = $this->fiscalYear($vdate);

        app(MallLedgerController::class)->postDebitCreditNote(
            $this->propertyid,
            $note->docid,
            $note->vtype,
            $note->vno,
            $fy['prefix'],
            $vdate,
            $tenantid,
            $heads['revenue'],
            $heads['tax'],
            $total,
            $this->username
        );
    }

    // =========================================================================
    // 3. POST /debitcreditnoteentrynote  (AJAX)
    //    Single note load by docid (edit/view mode)
    // =========================================================================
    public function fetchNote(Request $request)
    {
        $docid = trim((string) ($request->docid ?? ''));

        if ($docid === '' || !DB::getSchemaBuilder()->hasTable('mall_note_hdr')) {
            return response()->json(['success' => false, 'message' => 'Note not found.'], 404);
        }

        $note = MallNoteHdr::forProperty($this->propertyid)
            ->leftJoin('subgroup as s', function ($j) {
                $j->on('s.sub_code', '=', DB::raw('CAST(mall_note_hdr.tenantid AS CHAR)'))
                  ->on('s.propertyid', '=', 'mall_note_hdr.propertyid');
            })
            ->where('mall_note_hdr.docid', $docid)
            ->select(
                'mall_note_hdr.*',
                's.name as tenantname'
            )
            ->first();

        if (!$note) {
            return response()->json(['success' => false, 'message' => 'Note not found.'], 404);
        }

        // Detail rows with charge names
        $details = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_note_dtl')) {
            $details = MallNoteDtl::forProperty($this->propertyid)
                ->leftJoin('mall_chargemast as cm', function ($j) {
                    $j->on('cm.chargecode', '=', 'mall_note_dtl.chargecode')
                      ->on('cm.propertyid', '=', 'mall_note_dtl.propertyid');
                })
                ->where('mall_note_dtl.docid', $docid)
                ->orderBy('mall_note_dtl.sno')
                ->select(
                    'mall_note_dtl.*',
                    DB::raw('COALESCE(cm.chargename, mall_note_dtl.chargecode) as chargename')
                )
                ->get();
        }

        return response()->json([
            'success' => true,
            'note'    => $note,
            'details' => $details,
        ]);
    }

    // =========================================================================
    // 4. POST /debitcreditnoteentrydelete  (AJAX)
    // =========================================================================
    public function destroy(Request $request)
    {
        $docid = trim((string) ($request->docid ?? ''));
        if ($docid === '') {
            return response()->json(['success' => false, 'message' => 'No note selected.'], 422);
        }
        if (
            !DB::getSchemaBuilder()->hasTable('mall_note_hdr') ||
            !DB::getSchemaBuilder()->hasTable('mall_note_dtl')
        ) {
            return response()->json(['success' => false, 'message' => 'Table not found.'], 422);
        }

        try {
            DB::beginTransaction();

            $note = MallNoteHdr::forProperty($this->propertyid)
                ->where('docid', $docid)
                ->firstOrFail();

            // Ledger entries hatao (tenant position wapas ho jaye)
            app(MallLedgerController::class)->deleteDebitCreditNote($this->propertyid, $docid);

            // Detail rows delete
            MallNoteDtl::forProperty($this->propertyid)
                ->where('docid', $docid)
                ->delete();

            // Voucher concept: voucher_prefix row kabhi delete nahi hoti aur
            // start_srl_no reset nahi hota — note delete karne par sirf note /
            // detail / ledger rows jate hain, DEN / CEN ka number reuse nahi hota.
            $note->delete(); // Eloquent delete

            DB::commit();
            return response()->json(['success' => true, 'message' => 'Note deleted successfully.']);

        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Note not found.'], 404);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // =========================================================================
    // 5. POST /debitcreditnoteentry/list  (AJAX — DataTables server-side)
    // =========================================================================
    public function noteList(Request $request)
    {
        if (!DB::getSchemaBuilder()->hasTable('mall_note_hdr')) {
            return response()->json(['data' => [], 'recordsTotal' => 0, 'recordsFiltered' => 0]);
        }

        $query = MallNoteHdr::forProperty($this->propertyid)
            ->leftJoin('subgroup as s', function ($j) {
                $j->on('s.sub_code', '=', DB::raw('CAST(mall_note_hdr.tenantid AS CHAR)'))
                  ->on('s.propertyid', '=', 'mall_note_hdr.propertyid');
            })
            ->select(
                'mall_note_hdr.id',
                'mall_note_hdr.docid',
                'mall_note_hdr.vtype',
                'mall_note_hdr.vno',
                'mall_note_hdr.vdate',
                'mall_note_hdr.refdocid',
                'mall_note_hdr.reason',
                'mall_note_hdr.totalamount',
                'mall_note_hdr.remarks',
                'mall_note_hdr.u_name',
                'mall_note_hdr.u_entdt',
                's.name as tenantname'
            );

        // Optional filters
        if ($request->filled('vtype')) {
            $vtype = $this->normalizeVtype((string) $request->vtype);
            if ($vtype !== '') {
                $query->where('mall_note_hdr.vtype', $vtype);
            }
        }
        if ($request->filled('tenantid')) {
            $query->where('mall_note_hdr.tenantid', $request->tenantid);
        }
        if ($request->filled('from_date')) {
            $query->where('mall_note_hdr.vdate', '>=', $request->from_date);
        }
        if ($request->filled('to_date')) {
            $query->where('mall_note_hdr.vdate', '<=', $request->to_date);
        }

        // DataTables server-side params
        $total  = $query->count();
        $start  = (int) ($request->start  ?? 0);
        $length = (int) ($request->length ?? 15);
        $search = trim((string) ($request->input('search.value', '') ?? ''));

        if ($search !== '') {
            $query->where(function ($q) use ($search) {
                $q->where('mall_note_hdr.docid', 'like', "%{$search}%")
                  ->orWhere('mall_note_hdr.refdocid', 'like', "%{$search}%")
                  ->orWhere('mall_note_hdr.reason', 'like', "%{$search}%")
                  ->orWhere('s.name', 'like', "%{$search}%");
            });
        }

        $filtered = $query->count();
        $rows     = $query->orderByDesc('mall_note_hdr.vdate')
                          ->orderByDesc('mall_note_hdr.vno')
                          ->offset($start)
                          ->limit($length)
                          ->get();

        return response()->json([
            'draw'            => intval($request->draw ?? 1),
            'recordsTotal'    => $total,
            'recordsFiltered' => $filtered,
            'data'            => $rows,
        ]);
    }

    // =========================================================================
    // 6. GET /debitcreditnoteentryprint/{docid}
    //    Print note — Barryvdh DomPDF
    // =========================================================================
    public function printNote($docid)
    {
        $docid = urldecode($docid);

        $note = MallNoteHdr::forProperty($this->propertyid)
            ->leftJoin('subgroup as s', function ($j) {
                $j->on('s.sub_code', '=', DB::raw('CAST(mall_note_hdr.tenantid AS CHAR)'))
                  ->on('s.propertyid', '=', 'mall_note_hdr.propertyid');
            })
            ->where('mall_note_hdr.docid', $docid)
            ->select(
                'mall_note_hdr.*',
                's.name as tenantname'
            )
            ->first();

        abort_if(!$note, 404, 'Note not found.');

        // Detail rows with charge names
        $details = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_note_dtl')) {
            $details = MallNoteDtl::forProperty($this->propertyid)
                ->leftJoin('mall_chargemast as cm', function ($j) {
                    $j->on('cm.chargecode', '=', 'mall_note_dtl.chargecode')
                      ->on('cm.propertyid', '=', 'mall_note_dtl.propertyid');
                })
                ->where('mall_note_dtl.docid', $docid)
                ->orderBy('mall_note_dtl.sno')
                ->select(
                    'mall_note_dtl.*',
                    DB::raw('COALESCE(cm.chargename, mall_note_dtl.chargecode) as chargename')
                )
                ->get();
        }

        $company = companydata();
        $vno     = $note->vno;

        // Amount in words
        $words = '';
        try {
            $amount = (float) $note->totalamount;
            $words  = numberToWords($amount);
        } catch (\Throwable $e) {
            $words = '';
        }

        $pdf = Pdf::loadView('property.mallmanagement.debitcreditnoteprint', [
            'note'    => $note,
            'details' => $details,
            'company' => $company,
            'vno'     => $vno,
            'words'   => $words,
        ])->setPaper('a4', 'portrait');

        return $pdf->stream('debit-credit-note-' . $vno . '.pdf');
    }
}
