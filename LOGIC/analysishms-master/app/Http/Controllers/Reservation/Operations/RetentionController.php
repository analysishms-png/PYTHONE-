<?php

namespace App\Http\Controllers\Reservation\Operations;

use App\Helpers\DateHelper;
use App\Http\Controllers\Controller;
use App\Models\VoucherPrefix;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class RetentionController extends Controller
{
    private const RETENTION_VTYPE = 'CCHG';

    private const ADVANCE_VTYPE = 'ADRES';

    protected $username;

    protected $email;

    protected $propertyid;

    protected $ptlngth;

    protected $prpid;

    protected $compcode;

    protected $ncurdate;

    protected $datemanage;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (! isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            $this->prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $this->prpid)->first();
            $this->compcode = companyvalue();
            $this->ncurdate = ncurdate();
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);

            return $next($request);
        });
    }

    /* =====================================================================
     |  PAGE: form + history list
     * ===================================================================== */
    public function retentioncharges(Request $request)
    {
        // History: every saved retention (main rows only)
        $records = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('vtype', self::RETENTION_VTYPE)
            ->where('sno', 1)
            ->orderByDesc('vdate')
            ->orderByDesc('vno')
            ->get();

        $totals = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('vtype', self::RETENTION_VTYPE)
            ->whereIn('docid', $records->pluck('docid')->all())
            ->selectRaw('docid, SUM(amtdr) as total')
            ->groupBy('docid')
            ->pluck('total', 'docid');

        $bookInfo = DB::table('grpbookingdetails')
            ->where('Property_ID', $this->propertyid)
            ->whereIn('BookingDocid', $records->pluck('refdocid')->all())
            ->get()
            ->groupBy('BookingDocid');

        $history = $records->map(function ($r) use ($totals, $bookInfo) {
            $b = optional($bookInfo->get($r->refdocid))->first();
            $base = round((float) $r->amtdr, 2);
            $total = round((float) ($totals[$r->docid] ?? $base), 2);

            return (object) [
                'docid' => $r->docid,
                'bookno' => $b->BookNo ?? $r->bookno,
                'guest' => $b->GuestName ?? '',
                'vno' => $r->vno,
                'vdate' => $r->vdate,
                'base' => $base,
                'tax' => round($total - $base, 2),
                'total' => $total,
                'remarks' => $r->remarks,
                'u_name' => $r->u_name,
            ];
        });

        // Dropdown: cancelled bookings that do not have a retention yet
        $retained = array_flip($records->pluck('refdocid')->all());

        $bookings = DB::table('grpbookingdetails')
            ->where('Property_ID', $this->propertyid)
            ->where('Cancel', 'Y')
            ->get()
            ->reject(fn ($r) => isset($retained[$r->BookingDocid]))
            ->groupBy('BookNo');

        $selected = $request->query('bookno') ?: null;
        $booking = $selected !== null ? $bookings->get($selected, collect()) : collect();
        $first = $booking->first();

        $guest = $first
            ? DB::table('guestprof')
                ->where('propertyid', $this->propertyid)
                ->where('guestcode', $first->GuestProf)
                ->orderByDesc('id')
                ->first()
            : null;

        $advanceTotal = 0.0;

        if ($first) {
            $advanceTotal = round((float) $this->advancesFor($first->BookingDocid)->sum('amtcr'), 2);
        }

        $taxcfg = $this->retentionTaxConfig();

        return view('property.retentioncharge', compact(
            'bookings',
            'selected',
            'booking',
            'first',
            'guest',
            'advanceTotal',
            'history',
            'taxcfg'
        ));
    }

    /* =====================================================================
     |  SAVE: create a NEW retention charge
     * ===================================================================== */
    public function saveretention(Request $request)
    {
        $request->validate([
            'bookno' => 'required',
            'retention' => 'required|numeric|gt:0',
            'remarks' => 'nullable|string|max:500',
        ]);

        $taxcfg = $this->retentionTaxConfig();

        if ($taxcfg['missing']) {
            return $this->chargeMissingResponse();
        }

        $first = $this->findCancelledBooking($request->input('bookno'));

        if (! $first) {
            return response()->json(['success' => false, 'message' => 'Cancelled booking not found.'], 404);
        }

        $advances = $this->advancesFor($first->BookingDocid);

        if ($advances->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No advance paycharge found for this booking.',
            ], 422);
        }

        $adv = $advances->last();
        $calc = $this->calculateRetention((float) $request->input('retention'), $taxcfg);
        $now = date('Y-m-d H:i:s');

        DB::beginTransaction();

        try {
            if ($this->retentionMain($first->BookingDocid, true)) {
                DB::rollBack();

                return response()->json([
                    'success' => false,
                    'message' => 'Retention already exists for this booking. Please use Edit from the history table.',
                ], 409);
            }

            $voucherPrefix = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', self::RETENTION_VTYPE)
                ->whereDate('date_from', '<=', $this->ncurdate)
                ->whereDate('date_to', '>=', $this->ncurdate)
                ->lockForUpdate()
                ->first();

            if (! $voucherPrefix) {
                throw new \Exception('Voucher prefix ('.self::RETENTION_VTYPE.') not found');
            }

            $vno = $voucherPrefix->start_srl_no + 1;
            $prefix = $voucherPrefix->prefix;
            $docId = $this->propertyid.self::RETENTION_VTYPE." \u{200E} \u{200E}".$prefix." \u{200E}  \u{200E} ".$vno;

            $this->persistRetention(
                $first,
                $adv,
                $calc,
                $taxcfg,
                $request->input('remarks'),
                $docId,
                $vno,
                $prefix,
                $now,
                'a',
                $now
            );

            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', self::RETENTION_VTYPE)
                ->where('prefix', $prefix)
                ->increment('start_srl_no');

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Retention charge saved successfully.',
                'vno' => $vno,
                'total' => $calc['total'],
            ]);
        } catch (\Throwable $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'Unable to save retention charge: '.$e->getMessage(),
            ], 500);
        }
    }

    /* =====================================================================
     |  UPDATE: edit ONE existing retention (same voucher no., rows rebuilt)
     * ===================================================================== */
    public function updateretention(Request $request)
    {
        $request->validate([
            'docid' => 'required|string',
            'retention' => 'required|numeric|gt:0',
            'remarks' => 'nullable|string|max:500',
        ]);

        $taxcfg = $this->retentionTaxConfig();

        if ($taxcfg['missing']) {
            return $this->chargeMissingResponse();
        }

        $calcInput = (float) $request->input('retention');
        $now = date('Y-m-d H:i:s');

        DB::beginTransaction();

        try {
            $existing = $this->retentionByDocId($request->input('docid'), true);

            if (! $existing) {
                DB::rollBack();

                return response()->json([
                    'success' => false,
                    'message' => 'Retention charge not found.',
                ], 404);
            }

            $first = DB::table('grpbookingdetails')
                ->where('Property_ID', $this->propertyid)
                ->where('BookingDocid', $existing->refdocid)
                ->first();

            if (! $first) {
                DB::rollBack();

                return response()->json(['success' => false, 'message' => 'Booking not found.'], 404);
            }

            $advances = $this->advancesFor($first->BookingDocid);

            if ($advances->isEmpty()) {
                DB::rollBack();

                return response()->json([
                    'success' => false,
                    'message' => 'No advance paycharge found for this booking.',
                ], 422);
            }

            $adv = $advances->last();
            $calc = $this->calculateRetention($calcInput, $taxcfg);

            DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $existing->docid)
                ->where('vtype', self::RETENTION_VTYPE)
                ->delete();

            $this->persistRetention(
                $first,
                $adv,
                $calc,
                $taxcfg,
                $request->input('remarks'),
                $existing->docid,
                $existing->vno,
                $existing->vprefix,
                $existing->created_at,
                'e',
                $now
            );

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Retention charge updated successfully.',
                'vno' => $existing->vno,
                'total' => $calc['total'],
            ]);
        } catch (\Throwable $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'Unable to update retention charge: '.$e->getMessage(),
            ], 500);
        }
    }

    /* =====================================================================
     |  DELETE: ONLY the selected retention voucher (main row + its tax rows)
     * ===================================================================== */
    public function deleteretention(Request $request)
    {
        $request->validate(['docid' => 'required|string']);

        DB::beginTransaction();

        try {
            $existing = $this->retentionByDocId($request->input('docid'), true);

            if (! $existing) {
                DB::rollBack();

                return response()->json([
                    'success' => false,
                    'message' => 'Retention charge not found.',
                ], 404);
            }

            DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $existing->docid)
                ->where('vtype', self::RETENTION_VTYPE)
                ->delete();

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Retention charge (Bill No: '.$existing->vno.') deleted successfully.',
            ]);
        } catch (\Throwable $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'Unable to delete retention charge: '.$e->getMessage(),
            ], 500);
        }
    }

    /* =====================================================================
     |  PRINT: retention invoice
     * ===================================================================== */
    public function printretention(Request $request)
    {
        $main = $this->retentionByDocId((string) $request->query('docid'));

        abort_if(! $main, 404, 'Retention charge not found.');

        $first = DB::table('grpbookingdetails')
            ->where('Property_ID', $this->propertyid)
            ->where('BookingDocid', $main->refdocid)
            ->first();

        abort_if(! $first, 404, 'Booking not found.');

        $lines = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('docid', $main->docid)
            ->where('vtype', self::RETENTION_VTYPE)
            ->orderBy('sno')
            ->get();

        $total = round((float) $lines->sum('amtdr'), 2);

        $bookingRows = DB::table('grpbookingdetails')
            ->where('Property_ID', $this->propertyid)
            ->where('BookingDocid', $first->BookingDocid)
            ->get();

        $guest = DB::table('guestprof')
            ->where('propertyid', $this->propertyid)
            ->where('guestcode', $first->GuestProf)
            ->orderByDesc('id')
            ->first();

        $rev = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('rev_code', $main->paycode)
            ->first();

        $advances = $this->advancesFor($first->BookingDocid);
        $advanceTotal = round((float) $advances->sum('amtcr'), 2);
        $balance = round($total - $advanceTotal, 2);

        $folio = Schema::hasTable('guestfolio')
            ? DB::table('guestfolio')
                ->where('propertyid', $this->propertyid)
                ->where('bookingdocid', $first->BookingDocid)
                ->orderBy('sno1')
                ->first()
            : null;

        $folioAddress = collect([$folio->add1 ?? null, $folio->add2 ?? null, $folio->city ?? null])
            ->filter()
            ->implode(', ');

        $guestInfo = [
            'name' => $first->GuestName ?? '',
            'mobile' => $this->pick($guest, ['mobile_no', 'mobile', 'phone']),
            'email' => $this->pick($guest, ['email', 'email_id', 'emailid']),
            'company' => $this->pick($guest, ['company', 'comp_name', 'companyname']),
            'address' => $folioAddress ?: $this->pick($guest, ['address', 'add1', 'address1']),
            'gstin' => $this->pick($guest, ['gstin', 'gst_no', 'gstno'], 'Unregistered'),
        ];

        $info = [
            'roomType' => $first->RoomCat ?? $main->roomtype,
            'roomRate' => $first->Tarrif ?? null,
            'rooms' => $bookingRows->count(),
            'roomNos' => $bookingRows->pluck('RoomNo')->filter()->implode(', '),
            'revName' => $this->pick($rev, ['name'], 'Retention Charges'),
            'hsn' => $this->pick($rev, ['hsn_code'], '-'),
        ];

        $balAbs = round(abs($balance), 2);
        $rupees = (int) floor($balAbs);
        $paise = (int) round(($balAbs - $rupees) * 100);

        if ($paise === 100) {
            $rupees++;
            $paise = 0;
        }

        $words = 'Rupees '.ucwords(amountToWords($rupees));

        if ($paise > 0) {
            $words .= ' and '.ucwords(amountToWords($paise)).' Paise';
        }

        $words .= ' Only';

        return view('property.retentionprint', [
            'first' => $first,
            'main' => $main,
            'lines' => $lines,
            'total' => $total,
            'advances' => $advances,
            'advanceTotal' => $advanceTotal,
            'balance' => $balance,
            'guestInfo' => $guestInfo,
            'info' => $info,
            'header' => $this->printHeader(),
            'invoiceNo' => ($main->vprefix ? $main->vprefix.'-' : '').$main->vno,
            'docRef' => trim(preg_replace('/\s+/u', ' ', str_replace("\u{200E}", '', $main->docid))),
            'words' => $words,
            'isNoShow' => ($first->U_Name ?? '') === 'NOSHOW',
        ]);
    }

    /* =====================================================================
     |  PRIVATE HELPERS
     * ===================================================================== */
    private function chargeMissingResponse()
    {
        return response()->json([
            'success' => false,
            'message' => 'Retention charge not selected. Please select the Cancellation/Retention Charge in FOM Parameter.',
        ], 422);
    }

    private function findCancelledBooking($bookno)
    {
        return DB::table('grpbookingdetails')
            ->where('Property_ID', $this->propertyid)
            ->where('Cancel', 'Y')
            ->where('BookNo', $bookno)
            ->first();
    }

    private function advancesFor($bookingDocId)
    {
        return DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('refdocid', $bookingDocId)
            ->where('vtype', self::ADVANCE_VTYPE)
            ->where('sno', 1)
            ->orderBy('vdate')
            ->orderBy('vno')
            ->get();
    }

    private function retentionMain($bookingDocId, bool $lock = false)
    {
        $q = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('refdocid', $bookingDocId)
            ->where('vtype', self::RETENTION_VTYPE)
            ->where('sno', 1);

        if ($lock) {
            $q->lockForUpdate();
        }

        return $q->first();
    }

    private function retentionByDocId(string $docId, bool $lock = false)
    {
        $q = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('docid', $docId)
            ->where('vtype', self::RETENTION_VTYPE)
            ->where('sno', 1);

        if ($lock) {
            $q->lockForUpdate();
        }

        return $q->first();
    }

    private function retentionTaxConfig(): array
    {
        $paycode = DB::table('enviro_form')
            ->where('propertyid', $this->propertyid)
            ->value('cancellationac');

        $rev = $paycode
            ? DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('rev_code', $paycode)
                ->where('field_type', 'C')
                ->where('flag_type', 'FOM')
                ->first()
            : null;

        if (! $rev) {
            return [
                'missing' => true,
                'rev' => null,
                'inclusive' => false,
                'rows' => [],
                'totalrate' => 0.0,
            ];
        }

        $taxRows = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->where('str_code', $rev->tax_stru)
            ->orderBy('sno')
            ->get();

        $rows = [];
        $totalRate = 0.0;

        foreach ($taxRows as $t) {
            $name = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('rev_code', $t->tax_code)
                ->value('name');

            $rows[] = [
                'sno' => (int) $t->sno,
                'tax_code' => $t->tax_code,
                'rate' => (float) $t->rate,
                'name' => $name,
            ];
            $totalRate += (float) $t->rate;
        }

        return [
            'missing' => false,
            'rev' => $rev,
            'inclusive' => false,
            'rows' => $rows,
            'totalrate' => $totalRate,
        ];
    }

    private function calculateRetention(float $entered, array $cfg): array
    {
        $base = abs($entered);

        if ($cfg['inclusive'] && $cfg['totalrate'] > 0) {
            $base = round(($base * 100) / (100 + $cfg['totalrate']), 2);
        }

        $taxes = [];
        $taxTotal = 0.0;

        foreach ($cfg['rows'] as $r) {
            $amount = round(($base * $r['rate']) / 100, 2);
            $taxes[] = $r + ['amount' => $amount];
            $taxTotal += $amount;
        }

        return [
            'base' => $base,
            'taxes' => $taxes,
            'tax_total' => round($taxTotal, 2),
            'total' => round($base + $taxTotal, 2),
        ];
    }

    
    private function persistRetention(
        object $first,
        object $adv,
        array $calc,
        array $taxcfg,
        ?string $remarks,
        string $docId,
        $vno,
        string $prefix,
        string $createdAt,
        string $uae,
        string $now
    ): void {
        $common = [
            'propertyid' => $this->propertyid,
            'docid' => $docId,
            'sno1' => $adv->sno1,
            'vtype' => self::RETENTION_VTYPE,
            'vno' => $vno,
            'vprefix' => $prefix,
            'vdate' => $this->ncurdate,
            'settledate' => $this->ncurdate,
            'billno' => $vno,
            'vtime' => date('H:i:s'),
            'guestprof' => $adv->guestprof,
            'comp_code' => $adv->comp_code,
            'travel_agent' => $adv->travel_agent,
            'roomcat' => $adv->roomcat,
            'roomtype' => 'RO',
            'roomno' => $adv->roomno,
            'msno1' => $adv->msno1 ?? 0,
            'bookno' => $adv->bookno,
            'booktype' => $adv->booktype,
            'restcode' => $adv->restcode,
            'relatedfolionodocid' => $adv->docid,
            'refdocid' => $first->BookingDocid,
            'remarks' => $remarks,
            'posted' => '',
            'u_name' => Auth::user()->u_name,
            'u_ae' => $uae,
            'created_at' => $createdAt,
            'updated_at' => $now,
        ];

        $revdata = $taxcfg['rev'];

        DB::table('paycharge')->insert(array_merge($common, [
            'sno' => 1,
            'paycode' => $revdata->rev_code,
            'paytype' => $revdata->pay_type ?? '',
            'comments' => $revdata->name.', Bill No: '.$vno.', Res. No: '.$first->BookNo,
            'amtdr' => $calc['base'],
            'amtcr' => 0,
            'billamount' => $calc['base'],
            'taxper' => $taxcfg['totalrate'],
            'taxstru' => $revdata->tax_stru,
            'taxcondamt' => 0,
        ]));

        $taxSno = 2;

        foreach ($calc['taxes'] as $t) {
            if ($t['amount'] <= 0) {
                continue;
            }

            DB::table('paycharge')->insert(array_merge($common, [
                'sno' => $taxSno++,
                'paycode' => $t['tax_code'],
                'paytype' => null,
                'comments' => ($t['name'] ?: 'Tax').', '.$revdata->name.', Bill No: '.$vno.', Res. No: '.$first->BookNo,
                'amtdr' => $t['amount'],
                'amtcr' => 0,
                'billamount' => 0,
                'taxper' => $t['rate'],
                'taxstru' => $revdata->tax_stru,
                'onamt' => $calc['base'],
                'taxcondamt' => $calc['base'],
            ]));
        }
    }

    private function pick($obj, array $keys, $default = '')
    {
        if (! $obj) {
            return $default;
        }

        foreach ($keys as $k) {
            if (isset($obj->$k) && $obj->$k !== '') {
                return $obj->$k;
            }
        }

        return $default;
    }

    private function printHeader(): array
    {
        $row = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->first();

        $address = collect([$row->address1 ?? null, $row->address2 ?? null, $row->city ?? null, $row->state ?? null])
            ->filter()
            ->implode(', ');

        if (! empty($row->pin)) {
            $address .= ' - '.$row->pin;
        }

        return [
            'name' => $row->comp_name ?? 'Hotel',
            'address' => $address,
            'phone' => $row->mobile ?? '',
            'email' => $row->email ?? '',
            'gstin' => $row->gstin ?? '',
            'website' => $row->website ?? '',
            'logo' => $this->logoDataUri($row->logo ?? null),
        ];
    }

    private function logoDataUri(?string $file): ?string
    {
        if (empty($file)) {
            return null;
        }

        $path = public_path('storage/admin/property_logo/'.basename($file));

        if (! is_file($path)) {
            return null;
        }

        $mime = function_exists('mime_content_type') ? mime_content_type($path) : 'image/png';

        return 'data:'.$mime.';base64,'.base64_encode(file_get_contents($path));
    }
}
