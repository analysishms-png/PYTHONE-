<?php

namespace App\Http\Controllers;

use App\Mail\MallServiceBillMail;
use App\Models\MailSetting;
use App\Services\PropertyMailConfigurator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class MallMailController extends Controller
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
    // 1. SETTINGS PAGE (form dikhao — apni SMTP details bharegi property)
    // =========================================================================
    public function mailsettings()
    {
        $setting = MailSetting::where('propertyid', $this->propertyid)->first();

        $provider = 'gmail';
        if ($setting && !empty($setting->host)) {
            $host = strtolower(trim($setting->host));
            $map  = [
                'gmail'   => 'smtp.gmail.com',
                'outlook' => 'smtp-mail.outlook.com',
                'yahoo'   => 'smtp.mail.yahoo.com',
                'zoho'    => 'smtp.zoho.com',
            ];
            $provider = 'custom';
            foreach ($map as $key => $needle) {
                if (strpos($host, $needle) !== false) {
                    $provider = $key;
                    break;
                }
            }
        }

        return view('property.mallmanagement.mailsettings', [
            'setting'    => $setting,
            'username'   => $this->username,
            'propertyid' => $this->propertyid,
            'provider'   => $provider,
        ]);
    }

    // =========================================================================
    // 1b. SETTINGS STATUS (configured hai ya nahi — Send se pehle check)
    // =========================================================================
    public function mailsettings_status(Request $request)
    {
        $setting = MailSetting::where('propertyid', $this->propertyid)->first();

        return response()->json([
            'configured' => (bool) ($setting && $setting->activeyn),
        ]);
    }

    // =========================================================================
    // 2. SETTINGS SAVE (host/user/pass/from — per property)
    // =========================================================================
    public function mailsettings_save(Request $request)
    {
        $request->validate([
            'host'           => 'required',
            'port'           => 'required|numeric',
            'username'       => 'required|email',
            'from_address'   => 'nullable|email',
            'signature_file' => 'nullable|image|mimes:png,jpg,jpeg,webp|max:2048',
        ]);

        // From/Sender khud banta hai — form me poocha hi nahi jaata
        // (from_address = login username, from_name = company ka naam)
        $fromName = trim((string) $request->from_name);
        if ($fromName === '') {
            $fromName = (string) (\App\Models\Companyreg::on('main')
                ->where('propertyid', $this->propertyid)
                ->value('comp_name') ?? '');
        }

        $data = [
            'propertyid'   => $this->propertyid,
            'mailer'       => 'smtp',
            'host'         => $request->host,
            'port'         => (int) $request->port,
            'username'     => $request->username,
            'encryption'   => $request->encryption ?: 'tls',
            'from_address' => $request->from_address ?: $request->username,
            'from_name'    => $fromName ?: $request->username,
            'activeyn'     => 1,
            'u_name'       => Auth::id(),
            'created_at'   => now(),
        ];

        // Password sirf tab update karo jab diya ho (blank = purana rahega)
        if ($request->filled('password')) {
            $data['password'] = $request->password; // 'encrypted' cast khud encrypt karega
        }

        $existing = MailSetting::where('propertyid', $this->propertyid)->first();

        // --- Signature image upload ---
        $signaturePath = $existing->signature ?? null;

        if ($request->hasFile('signature_file')) {
            // Purani file delete karo agar thi
            if ($signaturePath && \Illuminate\Support\Facades\Storage::disk('public')->exists($signaturePath)) {
                \Illuminate\Support\Facades\Storage::disk('public')->delete($signaturePath);
            }
            $signaturePath = $request->file('signature_file')
                ->store('mail_signatures', 'public');
            $data['signature'] = $signaturePath;
        } elseif ($request->input('remove_signature') == '1') {
            // User ne remove kiya
            if ($signaturePath && \Illuminate\Support\Facades\Storage::disk('public')->exists($signaturePath)) {
                \Illuminate\Support\Facades\Storage::disk('public')->delete($signaturePath);
            }
            $data['signature'] = null;
            $signaturePath     = null;
        }

        if ($existing) {
            $data['u_ae'] = 'U';
            $existing->update($data);
        } else {
            $request->validate(['password' => 'required']); // naye record par password zaroori
            $data['u_ae'] = 'A';
            MailSetting::create($data);
        }

        return response()->json([
            'success'        => true,
            'message'        => 'Mail settings saved.',
            'signature_path' => $signaturePath,
        ]);
    }

    // =========================================================================
    // 3. TEST EMAIL (config sahi hai ya nahi)
    // =========================================================================
    public function mailsettings_test(Request $request)
    {
        $to = trim((string) $request->email);
        if (!filter_var($to, FILTER_VALIDATE_EMAIL)) {
            return response()->json(['success' => false, 'message' => 'Please enter a valid email.'], 422);
        }

        if (!PropertyMailConfigurator::apply($this->propertyid)) {
            return response()->json(['success' => false, 'message' => 'Please save your mail settings first.'], 422);
        }

        try {
            Mail::mailer('propertymail')->raw(
                'Test email from property ' . $this->propertyid,
                function ($msg) use ($to) {
                    $msg->to($to)->subject('Test Email — Mail Settings');
                }
            );
            return response()->json(['success' => true, 'message' => 'Test email sent to: ' . $to]);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => 'Test failed: ' . $e->getMessage()], 500);
        }
    }

    // =========================================================================
    // 4. MALL MAIL SEND (bill email — property ki apni SMTP se)
    //    ★ MallManagement.php me 0 change — poora logic yahan COPY hai
    // =========================================================================
    public function mallmailsend(Request $request)
    {
        $docid = trim((string) $request->docid);

        if ($docid === '') {
            return response()->json([
                'success' => false,
                'message' => 'Invalid document id.',
            ], 422);
        }

        $built = $this->buildBillData($docid);
        if (!$built['data']) {
            return response()->json([
                'success' => false,
                'message' => 'Bill not found (docs / charges).',
            ], 404);
        }

        $company = $built['company'];
        $tenant  = $built['tenant'];
        $bill    = $built['bill'];
        $groups  = $built['groups'];

        // Tenant (subgroup) ka email pehle se pada hai — default yahi use karo.
        // User ab bhi override kar sakta hai (`email` param bhejega).
        $toEmail = trim((string) $request->email);
        if ($toEmail === '') {
            $toEmail = trim((string) ($tenant->email ?? ''));
        }
        if (!filter_var($toEmail, FILTER_VALIDATE_EMAIL)) {
            return response()->json([
                'success' => false,
                'needs_setup' => false,
                'message' => 'Tenant email not found (subgroup.email is empty). '
                           . 'Please add an email in the party master first, '
                           . 'or send the mail manually.',
            ], 422);
        }

        // ── DYNAMIC per-property mail config (sabse important) ──
        // Dedicated mailer 'propertymail' lagata hai; default 'smtp'/
        // reservation mail/baaki app mail — sab untouched rehte hain.
        $from = PropertyMailConfigurator::apply($this->propertyid);

        // Agar property ki smtp settings abhi tak nahi bhari (register nahi hai):
        // SIRF is case me batao ki Mail Settings ka form bharna hoga.
        if (!$from) {
            return response()->json([
                'success' => false,
                'needs_setup' => true,
                'message' => 'This property has no email settings configured yet. '
                           . 'Please save your company email/SMTP details '
                           . 'in Mail Settings before sending.',
            ], 422);
        }

        try {
            // ★ DISPATCH QUEUE JOB (Instant background execution)
            \App\Jobs\SendMallServiceBillEmailJob::dispatch(
                $this->propertyid,
                $docid,
                $toEmail,
                \Illuminate\Support\Facades\Auth::id()
            );

            return response()->json([
                'success' => true,
                'queued'  => true,
                'message' => 'Bill email has been queued and is sending in background to: ' . $toEmail . ' (PDF attached)',
            ]);
        } catch (\Exception $e) {
            // Wrong credentials or any send error → frontend shows a button that
            // takes the user straight to the Mail Settings form to fix it.
            return response()->json([
                'success' => false,
                'fix_settings' => true,
                'message' => 'Mail job could not be queued. Error: ' . $e->getMessage(),
            ], 500);
        }
    }

    // =========================================================================
    // Bill data fetch — MallManagement::servicebillentryprint() se COPY kiye
    // gaye queries (us file ko touch NAHI karte). Yaad rakhna: ye bhi
    // tenant DB (property ki apni DB) se hi padhta hai.
    // =========================================================================
    public function buildBillData($docid, $propertyid = null)
    {
        if ($propertyid) {
            $this->propertyid = $propertyid;
        }
        if (!DB::getSchemaBuilder()->hasTable('facilitybill1')) {
            return ['data' => false];
        }

        $lines = DB::table('facilitybill1')
            ->where('propertyid', $this->propertyid)
            ->where(function ($query) use ($docid) {
                $query->where('docid1', $docid)
                    ->orWhere('docid', $docid);
            })
            ->orderBy('sno')
            ->get();

        if ($lines->isEmpty()) {
            return ['data' => false];
        }

        $first   = $lines->first();
        $company = \App\Models\Companyreg::on('main')->where('propertyid', $this->propertyid)->first();
        $tenant  = DB::getSchemaBuilder()->hasTable('subgroup')
            ? DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('sub_code', $first->partycode)
                ->first()
            : null;

        // City — subgroup.citycode me CODE store hai; name cities table se lookup
        $cityName = '';
        if ($tenant && trim((string) ($tenant->citycode ?? '')) !== '') {
            $cityName = trim((string) $tenant->citycode); // legacy fallback: agar name directly store hai
            if (DB::getSchemaBuilder()->hasTable('cities')) {
                $lookedUp = DB::table('cities')
                    ->where('propertyid', $this->propertyid)
                    ->where('city_code', (int) $tenant->citycode)
                    ->value('cityname');
                if ($lookedUp !== null && trim((string) $lookedUp) !== '') {
                    $cityName = trim((string) $lookedUp);
                }
            }
        }

        // Charge master keyed by chargecode
        $chargeMasters = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $chargeMasters = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->get()
                ->keyBy('chargecode');
        }
        $master = $chargeMasters[$first->facilitycode] ?? null;

        // Floor names keyed by both id and code
        $floorNames = collect();
        if (DB::getSchemaBuilder()->hasTable('hkfloors')) {
            $hkFloors = DB::table('hkfloors')
                ->where('propertyid', $this->propertyid)
                ->get();
            foreach ($hkFloors as $hf) {
                if (! empty($hf->id)) { $floorNames[(string) $hf->id] = (string) $hf->name; }
                if (! empty($hf->code)) { $floorNames[(string) $hf->code] = (string) $hf->name; }
            }
        }

        // Meter readings (power) — best effort, per shop
        $meterRows = $this->sbeMeterReadings($first->partycode, $first->facilitycode, $first->toperiod);

        // Tenant ke associated shops (mall_partylocation + mall_lease_dtl + mall_lease_hdr + facilitybill locationcode)
        $tenantShops = collect();

        // 1. Primary: mall_partylocation se mapped shops
        if (DB::getSchemaBuilder()->hasTable('mall_partylocation') && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $pShops = DB::table('mall_partylocation as pl')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.shopcode', '=', 'pl.shopcode')
                        ->on('sh.propertyid', '=', 'pl.propertyid');
                })
                ->where('pl.propertyid', $this->propertyid)
                ->where('pl.tenantcode', $first->partycode)
                ->where('pl.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select('sh.id', 'sh.shopcode', 'sh.shopname', 'sh.floorid', 'sh.chargeablearea')
                ->distinct()
                ->get();
            $tenantShops = $tenantShops->merge($pShops);
        }

        // 2. Multi-shop lease: mall_lease_hdr + mall_lease_dtl
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr') && DB::getSchemaBuilder()->hasTable('mall_lease_dtl') && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $lDtlShops = DB::table('mall_lease_hdr as hdr')
                ->join('mall_lease_dtl as dtl', function ($j) {
                    $j->on('dtl.lease_id', '=', 'hdr.id')
                        ->on('dtl.propertyid', '=', 'hdr.propertyid');
                })
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.id', '=', 'dtl.unitid')
                        ->on('sh.propertyid', '=', 'hdr.propertyid');
                })
                ->where('hdr.propertyid', $this->propertyid)
                ->where('hdr.tenantid', $first->partycode)
                ->where('hdr.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select('sh.id', 'sh.shopcode', 'sh.shopname', 'sh.floorid', 'sh.chargeablearea')
                ->distinct()
                ->get();
            $tenantShops = $tenantShops->merge($lDtlShops);
        }

        // 3. Single-shop lease fallback: mall_lease_hdr.unitid
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr') && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $lHdrShops = DB::table('mall_lease_hdr as hdr')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.id', '=', 'hdr.unitid')
                        ->on('sh.propertyid', '=', 'hdr.propertyid');
                })
                ->where('hdr.propertyid', $this->propertyid)
                ->where('hdr.tenantid', $first->partycode)
                ->where('hdr.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select('sh.id', 'sh.shopcode', 'sh.shopname', 'sh.floorid', 'sh.chargeablearea')
                ->distinct()
                ->get();
            $tenantShops = $tenantShops->merge($lHdrShops);
        }

        // 4. Header locationcode fallback
        if (DB::getSchemaBuilder()->hasTable('facilitybill') && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $headerDocid = trim((string) ($first->docid1 ?? $first->docid ?? $docid));
            $locCode = DB::table('facilitybill')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $headerDocid)
                ->value('locationcode');
            if ($locCode) {
                $locShop = DB::table('mall_shopmast')
                    ->where('propertyid', $this->propertyid)
                    ->where(function ($q) use ($locCode) {
                        $q->where('id', $locCode)->orWhere('shopcode', $locCode);
                    })
                    ->select('id', 'shopcode', 'shopname', 'floorid', 'chargeablearea')
                    ->get();
                $tenantShops = $tenantShops->merge($locShop);
            }
        }

        $tenantShops = $tenantShops->unique(function ($item) {
            return (string) ($item->shopcode ?: $item->id);
        })->values();

        $allShopLocations = $tenantShops->map(function ($s) use ($floorNames) {
            $fn = $floorNames[(string) ($s->floorid ?? '')] ?? '';
            return trim(($fn ? $fn.' — ' : '').($s->shopname ?? ''));
        })->filter()->values();

        $defaultLocation = $allShopLocations->implode(', ');

        // Lines grouped by charge
        $groups = [];
        $lineIndex = 0;
        foreach ($lines as $line) {
            $code = (string) $line->facilitycode;
            if (!isset($groups[$code])) {
                $groups[$code] = [
                    'code'      => $code,
                    'name'      => $chargeMasters[$code]->chargename ?? $code,
                    'shortcode' => $chargeMasters[$code]->shortcode ?? $code,
                    'saccode'   => $chargeMasters[$code]->saccode ?? '',
                    'rows'      => [],
                ];
            }

            $lineArea = round((float) $line->unit, 2);
            $matchedShop = null;

            if ($lineArea > 0) {
                foreach ($tenantShops as $lu) {
                    if (round((float) ($lu->chargeablearea ?? 0), 2) === $lineArea) {
                        $matchedShop = $lu;
                        break;
                    }
                }
            }

            if ($matchedShop) {
                $floorname = $floorNames[(string) ($matchedShop->floorid ?? '')] ?? '';
                $displayLocation = trim(($floorname ? $floorname.' — ' : '').($matchedShop->shopname ?? ''));
            } elseif ($tenantShops->count() === 1) {
                $displayLocation = $allShopLocations->first() ?? '';
            } elseif (isset($tenantShops[$lineIndex])) {
                $lu = $tenantShops[$lineIndex];
                $floorname = $floorNames[(string) ($lu->floorid ?? '')] ?? '';
                $displayLocation = trim(($floorname ? $floorname.' — ' : '').($lu->shopname ?? ''));
            } else {
                $displayLocation = $defaultLocation;
            }

            $groups[$code]['rows'][] = [
                'from'     => $line->forperiod,
                'to'       => $line->toperiod,
                'unit'     => $lineArea,
                'rate'     => round((float) $line->unitrate, 2),
                'amount'   => round((float) $line->amount, 2),
                'shopname' => $displayLocation,
                'meter'    => $meterRows[$lineIndex] ?? null,
            ];
            $lineIndex++;
        }
        $groups = array_values($groups);

        // Taxes (facilitybill2)
        $taxRows = DB::getSchemaBuilder()->hasTable('facilitybill2')
            ? DB::table('facilitybill2')
                ->where('propertyid', $this->propertyid)
                ->where(function ($query) use ($docid) {
                    $query->where('docid1', $docid)
                        ->orWhere('docid', $docid);
                })
                ->get()
            : collect();
        $taxes = [];
        foreach ($taxRows as $t) {
            $code = strtoupper(trim((string) $t->taxcode));
            if (!isset($taxes[$code])) {
                $taxes[$code] = ['base' => 0.0, 'amt' => 0.0, 'per' => 0.0];
            }
            $taxes[$code]['base'] += (float) $t->basevalue;
            $taxes[$code]['amt']  += (float) $t->taxamt;
            if ((float) $t->taxper > 0) {
                $taxes[$code]['per'] = (float) $t->taxper;
            }
        }

        // Sundry — discount (store se)
        $sundries = DB::getSchemaBuilder()->hasTable('suntranfacility')
            ? DB::table('suntranfacility')
                ->where('propertyid', $this->propertyid)
                ->whereIn('docid', $lines->pluck('docid')->unique()->values())
                ->orderBy('sno')
                ->get()
            : collect();
        $discount = 0.0;
        foreach ($sundries as $s) {
            $label = strtoupper(trim((string) $s->dispname));
            $code  = strtoupper(trim((string) $s->suncode));
            if (($s->roff ?? 'N') === 'Y' || str_contains($label, 'ROUND')) {
                continue;
            }
            if (str_contains($label, 'DISCOUNT') || $code === '7103') {
                $discount += abs((float) $s->amount);
            }
        }

        $baseTotal = round($lines->sum('amount'), 2);
        $total     = round($baseTotal - $discount, 2);
        $taxTotal  = round(array_sum(array_map(function ($x) {
            return $x['amt'];
        }, $taxes)), 2);
        $preRound  = round($total + $taxTotal, 2);
        $netAmount = round($preRound);
        $roundOff  = round($netAmount - $preRound, 2);

        // Previous outstanding (ledger)
        $previousOutstanding = 0.0;
        if (DB::getSchemaBuilder()->hasTable('ledger')) {
            $previousOutstanding = (float) DB::table('ledger')
                ->where('propertyid', $this->propertyid)
                ->where('subcode', $first->partycode)
                ->selectRaw('COALESCE(SUM(amtdr), 0) - COALESCE(SUM(amtcr), 0) AS balance')
                ->value('balance');
        }

        // Due date — active lease se (fallback bill date + 7 din)
        $dueDate = null;
        $leaseId = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $lease = DB::table('mall_lease_hdr')
                ->where('propertyid', $this->propertyid)
                ->where('tenantid', $first->partycode)
                ->where('activeyn', 1)
                ->whereIn('leasestatus', ['ACTIVE', 'DRAFT'])
                ->orderBy('id', 'desc')
                ->first();
            if ($lease) {
                $leaseId = $lease->id;
                $dueDate = $this->serviceDueDate($lease, $first->forperiod);
            }
        }
        if (!$dueDate) {
            $dueDate = date('Y-m-d', strtotime($first->vdate . ' +7 days'));
        }

        // Terms & Conditions — lease commercial terms se (dynamic)
        $termsText = '';
        if (DB::getSchemaBuilder()->hasTable('mall_lease_commercial')) {
            $tq = DB::table('mall_lease_commercial')
                ->where('propertyid', $this->propertyid);
            if ($leaseId) {
                $tq->where('leaseid', $leaseId);
            } else {
                $tq->where('tenantid', $first->partycode);
            }
            $commercialRow = $tq->orderByDesc('id')->first();
            if ($commercialRow) {
                $termsText = trim((string) ($commercialRow->terms_conditions ?? ''));
            }
        }
        $termLines = $termsText === ''
            ? []
            : array_values(array_filter(array_map('trim', preg_split('/\r\n|\r|\n/', $termsText))));

        // Bill series (shortcode) + bill no
        $series = trim((string) ($master->shortcode ?? ''));
        if ($series === '') {
            $series = trim((string) $first->facilitycode);
        }
        if ($series === '') {
            $series = trim((string) $first->vtype);
        }
        $billNo = $series . '/' . trim((string) $first->vprefix) . '/' . str_pad((string) $first->vno, 3, '0', STR_PAD_LEFT);

        // Party state info
        $partyStateCode = '';
        $partyStateName = '';
        if ($tenant && !empty($tenant->gstin) && strlen((string) $tenant->gstin) >= 2) {
            $partyStateCode = substr((string) $tenant->gstin, 0, 2);
        }
        if ($partyStateCode !== '' && DB::getSchemaBuilder()->hasTable('states')) {
            $partyStateName = (string) DB::table('states')
                ->where('propertyid', $this->propertyid)
                ->where('state_code', $partyStateCode)
                ->value('name');
        }

        $netPayable = round($netAmount + $previousOutstanding, 2);

        $bill = [
            'billNo'         => $billNo,
            'chargeName'     => $master->chargename ?? $first->facilitycode ?? '',
            'vdate'          => $first->vdate ?? null,
            'fromperiod'     => $first->forperiod ?? null,
            'toperiod'       => $first->toperiod ?? null,
            'dueDate'        => $dueDate,
            'taxTotal'       => $taxTotal,
            'saccode'        => $master->saccode ?? '',
            'groups'         => $groups,
            'taxes'          => $taxes,
            'total'          => $total,
            'roundOff'       => $roundOff,
            'netAmount'      => $netAmount,
            'balance'        => $previousOutstanding,
            'amountWords'    => 'Rupees ' . ucwords(amountToWords($netPayable)) . ' Only',
            'terms'          => $termLines,
            'partyStateCode' => $partyStateCode,
            'partyStateName' => $partyStateName,
        ];

        // Print (PDF) view ke liye poora data — servicebillentryprint() jaisa.
        // Email me hamesha YAHI print-wala PDF attach hota hai.
        $companyPanNo = trim((string) ($company ? $company->getRawOriginal('pan_no') : ''));
        $companyCinNo = trim((string) ($company ? $company->getRawOriginal('CInNo') : ''));
        $logoPath = null;
        if ($company && !empty($company->logo)
            && \Illuminate\Support\Facades\Storage::disk('public')->exists('admin/property_logo/' . $company->logo)) {
            $logoPath = storage_path('app/public/admin/property_logo/' . $company->logo);
        }
        $irn = '';
        if (DB::getSchemaBuilder()->hasTable('einvoicebill')) {
            $irn = (string) DB::table('einvoicebill')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $first->docid)
                ->orderByDesc('id')
                ->value('irn');
        }

        $printData = [
            'company'        => $company,
            'companyPanNo'   => $companyPanNo,
            'companyCinNo'   => $companyCinNo,
            'logoPath'       => $logoPath,
            'tenant'         => $tenant,
            'cityName'       => $cityName,
            'master'         => $master,
            'first'          => $first,
            'groups'         => $groups,
            'taxes'          => $taxes,
            'discount'       => $discount,
            'roundOff'       => $roundOff,
            'total'          => $total,
            'baseTotal'      => $baseTotal,
            'taxTotal'       => $taxTotal,
            'netAmount'      => $netAmount,
            'previousOutstanding' => $previousOutstanding,
            'netPayable'     => $netPayable,
            'dueDate'        => $dueDate,
            'irn'            => $irn,
            'billNo'         => $billNo,
            'isBillOfSupply' => $taxTotal <= 0,
            'isMeter'        => !empty($meterRows),
            'partyStateCode' => $partyStateCode,
            'partyStateName' => $partyStateName,
            'amountWords'    => 'Rupees ' . ucwords(amountToWords($netPayable)) . ' Only',
            'termLines'      => $termLines,
        ];

        return [
            'data'      => true,
            'company'   => $company,
            'tenant'    => $tenant,
            'bill'      => $bill,
            'groups'    => $groups,
            'printData' => $printData,
        ];
    }

    // Meter readings (power) — MallManagement se COPY
    private function sbeMeterReadings($tenantid, $servicecode, $toPeriod)
    {
        if (!DB::getSchemaBuilder()->hasTable('mall_meter_reading')
            || !DB::getSchemaBuilder()->hasTable('mall_partylocation')) {
            return [];
        }

        $shopCodes = DB::table('mall_partylocation')
            ->where('propertyid', $this->propertyid)
            ->where('tenantcode', $tenantid)
            ->where('servicecode', $servicecode)
            ->where('activeyn', 1)
            ->orderBy('sno')
            ->pluck('shopcode')
            ->all();

        if (empty($shopCodes)) {
            return [];
        }

        $shopIds = DB::getSchemaBuilder()->hasTable('mall_shopmast')
            ? DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->whereIn('shopcode', $shopCodes)
                ->pluck('id', 'shopcode')
                ->all()
            : [];

        $toDate  = date('Y-m-d', strtotime($toPeriod));
        $rows    = [];
        foreach ($shopCodes as $shopCode) {
            $shopId = $shopIds[$shopCode] ?? null;
            if ($shopId === null) {
                continue;
            }
            $reading = DB::table('mall_meter_reading')
                ->where('propertyid', $this->propertyid)
                ->where('shopid', $shopId)
                ->where('reading_date', '<=', $toDate)
                ->orderByDesc('reading_date')
                ->first(['previous_reading', 'current_reading']);
            if (!$reading) {
                continue;
            }
            $rows[] = [
                'previous' => (float) $reading->previous_reading,
                'current'  => (float) $reading->current_reading,
            ];
        }

        return $rows;
    }

    // Due date — MallManagement se COPY
    private function serviceDueDate($lease, $billingFromDate = null)
    {
        $raw = $lease->duedateofmonth ?? null;
        if (!$raw) {
            return null;
        }

        if (strpos((string) $raw, '-') !== false) {
            $dueDay = (int) date('d', strtotime($raw));
        } else {
            $dueDay = (int) $raw;
        }

        if ($dueDay < 1 || $dueDay > 31) {
            return null;
        }

        $baseDate = $billingFromDate ?: $this->serviceBillingDate();
        $monthStart = date('Y-m-01', strtotime($baseDate));
        $daysInMonth = (int) date('t', strtotime($monthStart));
        $offset = min($dueDay, $daysInMonth) - 1;

        return date('Y-m-d', strtotime($monthStart . ' +' . $offset . ' days'));
    }

    // Billing month start — MallManagement se COPY
    private function serviceBillingDate()
    {
        $base = strtotime($this->ncurdate ?: date('Y-m-d'));
        if ($base === false) {
            $base = time();
        }

        return date('Y-m-01', $base);
    }
}