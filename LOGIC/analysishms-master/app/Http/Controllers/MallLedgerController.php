<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

/**
 * Mall Service Bill — Ledger (accounting) posting.
 *
 * Ye controller service bill (facilitybill*) ki double-entry ledger entries
 * banata / delete karta hai. MallManagement.php me sirf isko call kiya jaata
 * hai taaki bada controller aur bada na ho.
 *
 * Banquet billing (Banquet.php) ke same concept par bana hai:
 *   DR  Party (tenant sub_code)      = bill ka NET (balancing figure)
 *   CR  Revenue heads (revmast)      = charge amounts (facilitybill1)
 *   CR  Tax heads (CGST/SGST/...)    = tax amounts (facilitybill2)
 *   CR  Service charge / round off   = suntranfacility
 *   DR  Discount                     = suntranfacility
 */
class MallLedgerController extends Controller
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
            $prpid            = Auth::user()->propertyid;
            $propertydata     = DB::table('users')->where('propertyid', $prpid)->first();
            $this->propertyid = $propertydata->propertyid;
            $this->ncurdate   = DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->value('ncur');

            return $next($request);
        });
    }

    // =========================================================================
    // PUBLIC — MallManagement in-se call karega (same DB transaction ke andar)
    // =========================================================================

    /**
     * Service bill ki ledger entries banao.
     *
     * @param int    $propertyid
     * @param string $docid       Header docid (facilitybill.docid)
     * @param string $vtype       'FACL'
     * @param int    $vno         Header voucher no
     * @param string $vprefix     Header voucher prefix
     * @param string $billdate    'Y-m-d'
     * @param string $partycode   Tenant id (subgroup.sub_code)
     * @param array  $chargeLines facilitybill1 rows (revcode + amount)
     * @param array  $taxValues   ['CGST'=>amt,'SGST'=>amt,'IGST'=>amt,'CESS'=>amt]
     * @param array  $taxRevMap   ['CGST'=>revcode, ...] tax ka revenue code
     * @param array  $sundryRows  serviceSundryCalculation()['rows']
     * @param string $username
     */
    public function postServiceBill(
        $propertyid,
        $docid,
        $vtype,
        $vno,
        $vprefix,
        $billdate,
        $partycode,
        array $chargeLines,
        array $taxValues,
        array $taxRevMap,
        array $sundryRows,
        $username = ''
    ) {
        if (!DB::getSchemaBuilder()->hasTable('ledger')) {
            return;
        }

        $propertyid = (int) $propertyid;
        $username   = $username !== '' ? $username : ($this->username ?? 'system');
        $wallet     = [];

        // 1) Revenue heads — charge-wise, CR
        //    Har line ka account code (mall_chargemast.accountcode = subgroup.sub_code)
        //    authoritative hai. revmast ke FACL heads DISCOUNT/ROUND OFF tak seemit
        //    hain, isliye accode ko seedha subgroup account maano; accode na ho to
        //    revcode se revmast->ac_code map karo (purana rasta).
        $fallbackAccount = null;
        $revenueByAcc = [];
        foreach ($chargeLines as $line) {
            $amount = round((float) ($line['amount'] ?? 0), 2);
            if ($amount == 0.0) {
                continue;
            }
            $accode = trim((string) ($line['accode'] ?? ''));
            $rev    = strtoupper(trim((string) ($line['revcode'] ?? '')));

            $account = null;
            if ($accode !== '') {
                $account = $this->account($propertyid, $accode);
            }
            if (!$account && $rev !== '') {
                $account = $this->revAccount($propertyid, $rev);
            }
            if (!$account) {
                continue; // koi account resolve nahi hua → skip
            }

            // grouping key — same account par saari lines merge
            $key = (string) $account->sub_code;
            $revenueByAcc[$key] = ($revenueByAcc[$key] ?? ['account' => $account, 'amount' => 0.0]);
            $revenueByAcc[$key]['amount'] += $amount;
            if (!$fallbackAccount) {
                $fallbackAccount = $account;
            }
        }
        foreach ($revenueByAcc as $entry) {
            $this->accumulate($wallet, $entry['account'], 0, round($entry['amount'], 2));
        }

        // 2) Tax heads — CGST/SGST/IGST/CESS (facilitybill2), CR
        foreach ($taxValues as $taxType => $amount) {
            $amount = round((float) $amount, 2);
            if ($amount == 0.0) {
                continue;
            }
            $rev = $taxRevMap[(string) $taxType] ?? '';
            $account = $rev !== '' ? $this->revAccount($propertyid, $rev) : null;
            $this->accumulate($wallet, $account ?: $fallbackAccount, 0, $amount);
        }

        // 3) Sundry adjustments — service charge (Cr), discount (Dr), round off
        foreach ($sundryRows as $row) {
            if (strtoupper((string) ($row['postyn'] ?? 'Y')) === 'N') {
                continue;
            }
            $nature = strtoupper(trim((string) ($row['nature'] ?? '')));
            $label  = strtoupper(trim((string) ($row['disp_name'] ?? '')));
            $code   = strtoupper(trim((string) ($row['sundry_code'] ?? '')));

            // Base amount, net amount aur tax rows yahan skip (kahin aur post hote hain)
            $isAmount = $nature === 'AMOUNT' || $code === '3103' || $label === 'AMOUNT';
            $isNet    = $nature === 'NET AMOUNT' || str_contains($label, 'NET');
            $isTax    = in_array($nature, ['CGST', 'SGST', 'IGST', 'CESS', 'GST', 'VAT'], true)
                        || str_contains($label, 'GST');
            if ($isAmount || $isNet || $isTax) {
                continue;
            }

            $amount = round((float) ($row['amount'] ?? 0), 2);
            if ($amount == 0.0) {
                continue;
            }
            $rev = strtoupper(trim((string) ($row['revcode'] ?? '')));
            $account = ($rev !== '' ? $this->revAccount($propertyid, $rev) : null) ?: $fallbackAccount;
            if (!$account) {
                continue;
            }

            $isDiscount = $nature === 'DISCOUNT' || $nature === 'REDEMPTION' || $code === '7103';
            if ($isDiscount) {
                $this->accumulate($wallet, $account, abs($amount), 0);   // DR
            } elseif ($amount < 0) {
                $this->accumulate($wallet, $account, abs($amount), 0);   // negative -> DR
            } else {
                $this->accumulate($wallet, $account, 0, $amount);        // CR
            }
        }

        // 4) Party (tenant) — balancing figure, ledger hamesha tally rahe
        $partyAccount = $this->account($propertyid, $partycode);
        if (!$partyAccount) {
            return; // party account nahi mila -> unbalanced entry se bachne ke liye skip
        }
        $totalCr = 0.0;
        $totalDr = 0.0;
        foreach ($wallet as $entry) {
            $totalCr += $entry['amtcr'];
            $totalDr += $entry['amtdr'];
        }
        $partyDr = round($totalCr - $totalDr, 2);
        if ($partyDr != 0.0) {
            $this->accumulate($wallet, $partyAccount, $partyDr, 0);
        }

        if (empty($wallet)) {
            return;
        }

        // 5) Insert saari rows
        $narration = 'Service Bill: ' . $vno . ' ' . date('d-m-Y', strtotime((string) $billdate));
        $now   = now();
        $vsno  = 0;

        foreach ($wallet as $entry) {
            $amtdr = round($entry['amtdr'], 2);
            $amtcr = round($entry['amtcr'], 2);
            if ($amtdr == 0.0 && $amtcr == 0.0) {
                continue;
            }
            $vsno++;
            DB::table('ledger')->insert([
                'propertyid'  => $propertyid,
                'docid'       => $docid,
                'vsno'        => $vsno,
                'vno'         => $vno,
                'vdate'       => $billdate,
                'vtype'       => mb_substr((string) $vtype, 0, 5),
                'vprefix'     => mb_substr((string) $vprefix, 0, 5),
                'narration'   => $narration,
                'contrasub'   => '',
                'subcode'     => $entry['subcode'],
                'amtcr'       => $amtcr,
                'amtdr'       => $amtdr,
                'chqno'       => '',
                'chqdate'     => $billdate,
                'clgdate'     => $billdate,
                'groupcode'   => $entry['groupcode'],
                'groupnature' => $entry['groupnature'],
                'u_name'      => $username,
                'created_at'  => $now,
                'u_ae'        => 'a',
                'rejectuser'  => '',
            ]);
        }
    }

    /**
     * Service bill ki purani ledger entries hatao.
     *
     * @param int         $propertyid
     * @param string|null $docid
     * @param array       $extraDocids  (edit me purana docid bhi pass karo)
     */
    public function deleteServiceBill($propertyid, $docid = null, array $extraDocids = [])
    {
        if (!DB::getSchemaBuilder()->hasTable('ledger')) {
            return;
        }

        $docids = array_values(array_unique(array_filter(array_merge(
            [$docid],
            $extraDocids
        ))));

        if (empty($docids)) {
            return;
        }

        DB::table('ledger')
            ->where('propertyid', (int) $propertyid)
            ->whereIn('docid', $docids)
            ->delete();
    }

    /**
     * Payment receipt ki ledger entries banao (double-entry).
     *
     *   DR  Cash/Bank (har paymode row ke ac_code se) = uska amount
     *   CR  Party (tenant sub_code)                   = receipt amount
     *
     * Yehi tenant ki "position" kam karta hai — isi se duplicate
     * payment (ek bill ka paisa baar baar) rokta hai.
     */
    public function postPaymentReceipt(
        $propertyid,
        $docid,
        $vno,
        $vprefix,
        $vdate,
        $partycode,
        array $paymentLines,
        $receiptAmount,
        $username = ''
    ) {
        if (!DB::getSchemaBuilder()->hasTable('ledger')) {
            return;
        }

        $propertyid = (int) $propertyid;
        $username   = $username !== '' ? $username : ($this->username ?? 'system');
        $total      = round((float) $receiptAmount, 2);
        if ($total == 0.0) {
            return;
        }

        $partyAccount = $this->account($propertyid, $partycode);
        if (!$partyAccount) {
            return; // party account nahi mila → unbalanced posting se bachne ke liye skip
        }

        // DR lines — har paymode row ka cash/bank account
        $wallet = [];
        $drTotal = 0.0;
        foreach ($paymentLines as $line) {
            $amt = round((float) ($line['amount'] ?? 0), 2);
            if ($amt == 0.0) {
                continue;
            }
            $account = $this->payAccount($propertyid, (string) ($line['paycode'] ?? ''));
            if (!$account) {
                return; // kisi paymode ka account nahi mila → partial posting se bachne ke liye skip
            }
            $this->accumulate($wallet, $account, $amt, 0.0);
            $drTotal += $amt;
        }

        // Fallback — rows empty ya sum receipt amount se match na ho
        if (empty($wallet) || abs($drTotal - $total) > 0.01) {
            $account = $this->payAccount($propertyid, (string) ($paymentLines[0]['paycode'] ?? ''));
            if (!$account) {
                return;
            }
            $wallet = [];
            $this->accumulate($wallet, $account, $total, 0.0);
        }

        // CR — party (tenant)
        $this->accumulate($wallet, $partyAccount, 0.0, $total);

        $now   = now();
        $vsno  = 0;
        $label = 'Payment Receipt: ' . (int) $vno . ' ' . date('d-m-Y', strtotime((string) $vdate));

        foreach ($wallet as $entry) {
            $amtdr = round($entry['amtdr'], 2);
            $amtcr = round($entry['amtcr'], 2);
            if ($amtdr == 0.0 && $amtcr == 0.0) {
                continue;
            }
            $vsno++;
            DB::table('ledger')->insert([
                'propertyid'  => $propertyid,
                'docid'       => $docid,
                'vsno'        => $vsno,
                'vno'         => (int) $vno,
                'vdate'       => $vdate,
                'vtype'       => 'RCPT',
                'vprefix'     => mb_substr((string) $vprefix, 0, 5),
                'narration'   => $label,
                'contrasub'   => '',
                'subcode'     => $entry['subcode'],
                'amtcr'       => $amtcr,
                'amtdr'       => $amtdr,
                'chqno'       => '',
                'chqdate'     => $vdate,
                'clgdate'     => $vdate,
                'groupcode'   => $entry['groupcode'],
                'groupnature' => $entry['groupnature'],
                'u_name'      => $username,
                'created_at'  => $now,
                'u_ae'        => 'a',
                'rejectuser'  => '',
            ]);
        }
    }

    /**
     * Receipt ki ledger entries hatao (edit/delete se pehle).
     */
    public function deletePaymentReceipt($propertyid, $docid = null)
    {
        if (!$docid || !DB::getSchemaBuilder()->hasTable('ledger')) {
            return;
        }

        DB::table('ledger')
            ->where('propertyid', (int) $propertyid)
            ->where('docid', $docid)
            ->where('vtype', 'RCPT') // sirf receipt entries
            ->delete();
    }

    /**
     * Debit / Credit Note ki ledger entries banao (double-entry).
     *
     *   Debit Note  (DEN): tenant par extra charge / liability
     *       DR Party (tenant)   = total (balancing figure)
     *       CR Revenue heads    = charge amounts (mall_chargemast.accountcode)
     *       CR Tax heads        = tax amounts (taxstru -> revmast.ac_code)
     *
     *   Credit Note (CEN): tenant ko rebate / waiver
     *       CR Party (tenant)   = total (balancing figure)
     *       DR Revenue heads    = charge amounts
     *       DR Tax heads        = tax amounts
     *
     * @param array $revenueLines [['code' => subgroup sub_code, 'amount' => amt], ...]
     * @param array $taxLines     [['code' => subgroup sub_code, 'amount' => amt], ...]
     */
    public function postDebitCreditNote(
        $propertyid,
        $docid,
        $vtype,
        $vno,
        $vprefix,
        $vdate,
        $partycode,
        array $revenueLines,
        array $taxLines,
        $totalAmount,
        $username = ''
    ) {
        if (!DB::getSchemaBuilder()->hasTable('ledger')) {
            return;
        }

        $propertyid = (int) $propertyid;
        $vtype      = strtoupper(trim((string) $vtype)) === 'CEN' ? 'CEN' : 'DEN';
        $username   = $username !== '' ? $username : ($this->username ?? 'system');
        $total      = round((float) $totalAmount, 2);

        $partyAccount = $this->account($propertyid, $partycode);
        if (!$partyAccount || $total == 0.0) {
            return; // party account nahi mila → unbalanced entry se bachne ke liye skip
        }

        // Revenue + tax heads resolve karo (fallback = pehla mila hua account)
        $heads           = array_merge($revenueLines, $taxLines);
        $fallbackAccount = null;
        $resolved        = [];
        foreach ($heads as $line) {
            $amount = round((float) ($line['amount'] ?? 0), 2);
            if ($amount == 0.0) {
                continue;
            }
            $account = $this->account($propertyid, (string) ($line['code'] ?? ''));
            if ($account && !$fallbackAccount) {
                $fallbackAccount = $account;
            }
            $resolved[] = ['account' => $account, 'amount' => $amount];
        }

        if (!$fallbackAccount) {
            return; // koi revenue/tax head resolve nahi hua → skip
        }

        $wallet = [];

        // Revenue + Tax heads — DEN par CR, CEN par DR
        foreach ($resolved as $row) {
            $account = $row['account'] ?: $fallbackAccount;
            if ($vtype === 'CEN') {
                $this->accumulate($wallet, $account, $row['amount'], 0.0); // DR
            } else {
                $this->accumulate($wallet, $account, 0.0, $row['amount']); // CR
            }
        }

        // Party (tenant) — balancing figure
        if ($vtype === 'CEN') {
            $this->accumulate($wallet, $partyAccount, 0.0, $total); // CR
        } else {
            $this->accumulate($wallet, $partyAccount, $total, 0.0); // DR
        }

        $now   = now();
        $vsno  = 0;
        $label = ($vtype === 'CEN' ? 'Credit Note: ' : 'Debit Note: ')
            . (int) $vno . ' ' . date('d-m-Y', strtotime((string) $vdate));

        foreach ($wallet as $entry) {
            $amtdr = round($entry['amtdr'], 2);
            $amtcr = round($entry['amtcr'], 2);
            if ($amtdr == 0.0 && $amtcr == 0.0) {
                continue;
            }
            $vsno++;
            DB::table('ledger')->insert([
                'propertyid'  => $propertyid,
                'docid'       => $docid,
                'vsno'        => $vsno,
                'vno'         => (int) $vno,
                'vdate'       => $vdate,
                'vtype'       => $vtype,
                'vprefix'     => mb_substr((string) $vprefix, 0, 5),
                'narration'   => $label,
                'contrasub'   => '',
                'subcode'     => $entry['subcode'],
                'amtcr'       => $amtcr,
                'amtdr'       => $amtdr,
                'chqno'       => '',
                'chqdate'     => $vdate,
                'clgdate'     => $vdate,
                'groupcode'   => $entry['groupcode'],
                'groupnature' => $entry['groupnature'],
                'u_name'      => $username,
                'created_at'  => $now,
                'u_ae'        => 'a',
                'rejectuser'  => '',
            ]);
        }
    }

    /**
     * Debit / Credit Note ki ledger entries hatao (edit / delete se pehle).
     */
    public function deleteDebitCreditNote($propertyid, $docid = null)
    {
        if (!$docid || !DB::getSchemaBuilder()->hasTable('ledger')) {
            return;
        }

        DB::table('ledger')
            ->where('propertyid', (int) $propertyid)
            ->where('docid', $docid)
            ->whereIn('vtype', ['DEN', 'CEN'])
            ->delete();
    }

    // =========================================================================
    // PRIVATE HELPERS — account mapping (subgroup / revmast)
    // =========================================================================

    private function account($propertyid, $subCode)
    {
        $subCode = trim((string) $subCode);
        if ($subCode === '' || !DB::getSchemaBuilder()->hasTable('subgroup')) {
            return null;
        }

        return DB::table('subgroup')
            ->where('propertyid', $propertyid)
            ->where('sub_code', $subCode)
            ->first();
    }

    /**
     * Paymode (cash/bank) ka ledger account — revmast (field_type='P') ke
     * ac_code se subgroup account. Fallback: paycode khud subgroup code ho.
     */
    private function payAccount($propertyid, $paycode)
    {
        $paycode = trim((string) $paycode);
        if ($paycode === '') {
            return null;
        }

        if (DB::getSchemaBuilder()->hasTable('revmast')) {
            $acCode = trim((string) DB::table('revmast')
                ->where('propertyid', $propertyid)
                ->where('rev_code', $paycode)
                ->value('ac_code'));
            if ($acCode !== '') {
                $account = $this->account($propertyid, $acCode);
                if ($account) {
                    return $account;
                }
            }
        }

        return $this->account($propertyid, $paycode);
    }

    private function revAccount($propertyid, $revCode)
    {
        $revCode = trim((string) $revCode);
        if ($revCode === '' || !DB::getSchemaBuilder()->hasTable('revmast')) {
            return null;
        }

        $rev = DB::table('revmast')
            ->where('propertyid', $propertyid)
            ->where('rev_code', $revCode)
            ->first();

        if (!$rev || trim((string) ($rev->ac_code ?? '')) === '') {
            return null;
        }

        return $this->account($propertyid, $rev->ac_code);
    }

    private function accumulate(array &$wallet, $account, $amtdr, $amtcr)
    {
        if (!$account || empty($account->sub_code)) {
            return;
        }

        $key = (string) $account->sub_code;
        if (!isset($wallet[$key])) {
            $wallet[$key] = [
                'subcode'     => (string) $account->sub_code,
                'groupcode'   => (string) ($account->group_code ?? ''),
                'groupnature' => (string) ($account->nature ?? ''),
                'amtdr'       => 0.0,
                'amtcr'       => 0.0,
            ];
        }

        $wallet[$key]['amtdr'] += (float) $amtdr;
        $wallet[$key]['amtcr'] += (float) $amtcr;
    }
}
