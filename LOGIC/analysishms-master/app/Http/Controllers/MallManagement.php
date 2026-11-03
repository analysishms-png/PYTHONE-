<?php

namespace App\Http\Controllers;

use App\Exports\DailyMeterReadingExport;
use App\Exports\FacilityBillRegisterExport;
use App\Jobs\SendEnviroNotificationJob;
use App\Models\Companyreg;
use App\Models\MallChargemast;
use App\Models\MallLeaseCommercial;
use App\Models\MallLeaseDtl;
use App\Models\MallLeaseHdr;
use App\Models\MallMeterReading;
use App\Models\MallPartylocation;
use App\Models\MallShopmast;
use App\Models\MallUnittype;
use App\Services\ImageCompressionService;
use App\Services\NotificationCreatorService;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class MallManagement extends Controller
{
    protected $propertyid;

    protected $username;

    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (! isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $prpid)->first();
            $this->propertyid = $propertydata->propertyid;
            $this->ncurdate = DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->value('ncur');

            return $next($request);
        });
    }

    //
    public function leaseagreemententry(Request $request)
    {
        // Floors from hkfloors master
        $floors = collect();
        if (DB::getSchemaBuilder()->hasTable('hkfloors')) {
            $floors = DB::table('hkfloors')
                ->where('propertyid', $this->propertyid)
                ->orderBy('name')
                ->get();
        }

        // Tenants from subgroup (party master group_code like 28{propertyid}% = SUNDRY DEBTORS)
        $tenants = collect();
        if (DB::getSchemaBuilder()->hasTable('subgroup')) {
            $tenants = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('group_code', 'like', '28'.$this->propertyid.'%')
                ->orderBy('name')
                ->get(['sub_code', 'name']);
        }

        // Units from mall_shopmast if table exists
        $units = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $units = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->orderBy('shopname')
                ->get();
        }

        // Unit Types from mall_unittype master (connected via unitype page)
        $unittypes = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_unittype')) {
            $unittypes = MallUnittype::where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('typename')
                ->get(['id', 'typecode', 'typename']);
        }

        // Load existing record if sn passed (for edit)
        $lease = null;
        if ($request->has('sn') && $request->sn && DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $lease = MallLeaseHdr::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();
        }

        // Load lease detail (unittype lives here, not in header)
        $leasedtl = null;
        if ($lease && DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
            $dtlQuery = MallLeaseDtl::where('lease_id', $lease->id)
                ->where('propertyid', $this->propertyid);

            if ($request->has('unitid') && $request->unitid) {
                $dtlQuery->where('unitid', $request->unitid);
            } elseif ($request->has('shopcode') && $request->shopcode) {
                $dtlQuery->where('shopcode', $request->shopcode);
            }

            $leasedtl = $dtlQuery->first();
            if (! $leasedtl) {
                $leasedtl = MallLeaseDtl::where('lease_id', $lease->id)
                    ->where('propertyid', $this->propertyid)
                    ->first();
            }

            if ($leasedtl && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
                $shop = DB::table('mall_shopmast')
                    ->where('propertyid', $this->propertyid)
                    ->where(function ($q) use ($leasedtl) {
                        $q->where('id', $leasedtl->unitid);
                        if (!empty($leasedtl->shopcode)) {
                            $q->orWhere('shopcode', $leasedtl->shopcode);
                        }
                    })
                    ->first();
                if ($shop) {
                    $leasedtl->shopname = $shop->shopname;
                    if (!isset($leasedtl->floorid) || !$leasedtl->floorid) {
                        $leasedtl->floorid = $shop->floorid;
                    }
                }
            }
        }

        // Agreement No: existing lease pe usi ka no, naye lease pe agla serial pre-filled
        $agreementNo = null;
        $nextAgreementNo = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $agreementNo = ($lease && $lease->agreementno)
                ? $lease->agreementno
                : $this->nextAgreementNo(date('Y'));
            // Hamesha agla serial (naye lease / grey shop click ke liye)
            $nextAgreementNo = $this->nextAgreementNo(date('Y'));
        }

        // Saved Escalation rows for edit mode (RENT only)
        // mall_chargemast se RENT / CAM ka actual chargecode resolve karo
        // taaki edit mode me purani rows bhi sahi load ho sakein
        $rentChargeCode = 'RENT';
        $camChargeCode  = 'CAM';
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $rentMaster = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where(function ($q) {
                    $q->where('shortcode', 'RENT')
                      ->orWhere('chargecode', 'RENT')
                      ->orWhere('chargename', 'like', '%RENT%');
                })
                ->orderByRaw("CASE WHEN shortcode = 'RENT' THEN 0 WHEN chargecode = 'RENT' THEN 1 ELSE 2 END")
                ->first();
            if ($rentMaster) {
                $rentChargeCode = $rentMaster->chargecode;
            }

            $camMaster = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where(function ($q) {
                    $q->where('shortcode', 'CAM')
                      ->orWhere('chargecode', 'CAM')
                      ->orWhere('chargename', 'like', '%COMMON AREA%')
                      ->orWhere('chargename', 'like', '%CAM%');
                })
                ->orderByRaw("CASE WHEN shortcode = 'CAM' THEN 0 WHEN chargecode = 'CAM' THEN 1 ELSE 2 END")
                ->first();
            if ($camMaster) {
                $camChargeCode = $camMaster->chargecode;
            }
        }

        $escalations = collect();
        if ($lease && DB::getSchemaBuilder()->hasTable('mall_lease_escalation')) {
            $escQuery = DB::table('mall_lease_escalation')
                ->where('leaseid', $lease->id)
                ->where('propertyid', $this->propertyid)
                ->where(function ($q) use ($rentChargeCode) {
                    $q->where('chargecode', $rentChargeCode)
                      ->orWhere('chargecode', 'RENT');
                });

            if ($leasedtl && ! empty($leasedtl->shopcode) && DB::getSchemaBuilder()->hasColumn('mall_lease_escalation', 'shopcode')) {
                $escQuery->where(function ($q) use ($leasedtl) {
                    $q->where('shopcode', $leasedtl->shopcode)
                      ->orWhereNull('shopcode')
                      ->orWhere('shopcode', '');
                });
            }

            $escalations = $escQuery->orderBy('effectivefrom')->get();
        }

        // Saved CAM escalation rows for edit mode
        $camescalations = collect();
        if ($lease && DB::getSchemaBuilder()->hasTable('mall_lease_escalation')) {
            $camQuery = DB::table('mall_lease_escalation')
                ->where('leaseid', $lease->id)
                ->where('propertyid', $this->propertyid)
                ->where(function ($q) use ($camChargeCode) {
                    $q->where('chargecode', $camChargeCode)
                      ->orWhere('chargecode', 'CAM');
                });

            if ($leasedtl && ! empty($leasedtl->shopcode) && DB::getSchemaBuilder()->hasColumn('mall_lease_escalation', 'shopcode')) {
                $camQuery->where(function ($q) use ($leasedtl) {
                    $q->where('shopcode', $leasedtl->shopcode)
                      ->orWhereNull('shopcode')
                      ->orWhere('shopcode', '');
                });
            }

            $camescalations = $camQuery->orderBy('sno')->get();
        }

        // Saved Charges rows for edit mode
        $chargerows = collect();
        if ($lease && DB::getSchemaBuilder()->hasTable('tablemall_lease_charges')) {
            $chgQuery = DB::table('tablemall_lease_charges')
                ->where('leaseid', $lease->id)
                ->where('propertyid', $this->propertyid);

            if ($leasedtl && ! empty($leasedtl->shopcode) && DB::getSchemaBuilder()->hasColumn('tablemall_lease_charges', 'shopcode')) {
                $chgQuery->where(function ($q) use ($leasedtl) {
                    $q->where('shopcode', $leasedtl->shopcode)
                      ->orWhereNull('shopcode')
                      ->orWhere('shopcode', '');
                });
            }

            $chargerows = $chgQuery->orderBy('effectivefrom')->get();
        }

        // All agreements list (bottom table) — tenant name + shop name ke saath
        $agreements = $this->buildAgreementsList();

        return view('property.mallmanagement.leaseagreemententry', [
            'floors' => $floors,
            'tenants' => $tenants,
            'units' => $units,
            'unittypes' => $unittypes,
            'lease' => $lease,
            'leasedtl' => $leasedtl,
            'agreementNo' => $agreementNo,
            'nextAgreementNo' => $nextAgreementNo,
            'escalations' => $escalations,
            'camescalations' => $camescalations,
            'chargerows' => $chargerows,
            'agreements' => $agreements,
            'username' => $this->username,
            'ncurdate' => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    // Next Agreement No: AGR-YYYY-SSS (per property + year, unique serial)
    private function nextAgreementNo($year = null, $lock = false)
    {
        $year = $year ?: date('Y');
        $prefix = 'AGR-'.$year.'-';

        $query = MallLeaseHdr::where('propertyid', $this->propertyid)
            ->where('agreementno', 'like', $prefix.'%');

        if ($lock) {
            $query->lockForUpdate();
        }

        $last = $query->orderByRaw('CAST(SUBSTRING_INDEX(agreementno, "-", -1) AS UNSIGNED) DESC')
            ->value('agreementno');

        $serial = 1;
        if ($last) {
            $serial = ((int) substr($last, strrpos($last, '-') + 1)) + 1;
        }

        return $prefix.str_pad($serial, 3, '0', STR_PAD_LEFT);
    }

    // Bottom "Agreements List": tenant + shop name ke saath, latest pehle
    private function buildAgreementsList()
    {
        if (! DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            return collect();
        }

        return DB::table('mall_lease_hdr')
            ->leftJoin('subgroup', function ($join) {
                $join->on('subgroup.sub_code', '=', 'mall_lease_hdr.tenantid')
                    ->on('subgroup.propertyid', '=', 'mall_lease_hdr.propertyid');
            })
            ->leftJoin('mall_shopmast', function ($join) {
                $join->on('mall_shopmast.id', '=', 'mall_lease_hdr.unitid')
                    ->on('mall_shopmast.propertyid', '=', 'mall_lease_hdr.propertyid');
            })
            ->where('mall_lease_hdr.propertyid', $this->propertyid)
            ->where('mall_lease_hdr.activeyn', 1)
            ->select(
                'mall_lease_hdr.id',
                'mall_lease_hdr.agreementno',
                'mall_lease_hdr.agreement_date',
                'mall_lease_hdr.leasecommencementdate',
                'mall_lease_hdr.leaseexpirydate',
                'mall_lease_hdr.leasestatus',
                'subgroup.name as tenant_name',
                'mall_shopmast.shopname as shop_name'
            )
            ->orderBy('mall_lease_hdr.id', 'desc')
            ->get();
    }

    public function leasecommercialterms(Request $request)
    {
        $lease = null;
        $commercial = null;

        if ($request->has('sn') && $request->sn) {
            $lease = MallLeaseHdr::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();

            // Load existing commercial term for edit mode (1 row per lease)
            $commercial = MallLeaseCommercial::where('leaseid', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();
        }

        // Chargeable area from shop master for the selected unit (fallback to lease detail)
        $chargeablearea = $lease->chargeablearea ?? 0;
        if ($lease && $lease->unitid && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $shop = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->where('id', $lease->unitid)
                ->first();
            if ($shop) {
                $chargeablearea = $shop->chargeablearea ?? $chargeablearea;
            }
        }

        // Charges from mall_chargemast master (connected via chargesmaster page)
        $charges = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $charges = MallChargemast::where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('chargename')
                ->get();
        }

        return view('property.mallmanagement.leasecommercialterms', [
            'lease' => $lease,
            'commercial' => $commercial,
            'chargeablearea' => $chargeablearea,
            'charges' => $charges,
            'company' => Companyreg::on('main')->where('propertyid', $this->propertyid)->first(),
            'username' => $this->username,
            'ncurdate' => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    // Save lease agreement (header + detail) from entry form
    public function leaseagreementsave(Request $request)
    {
        if ($request->has('duedateofmonth') && ! $request->filled('duedateofmonth')) {
            $request->merge(['duedateofmonth' => null]);
        }

        $request->validate([
            'tenantid'              => 'required',
            'unitid'                => 'required',
            'leasecommencementdate' => 'required|date',
            'leaseexpirydate'       => 'required|date|after:leasecommencementdate',
            'duedateofmonth'        => 'nullable|date',
        ]);

        try {
            $existingSn = $request->sn;

            // unitid se mall_shopmast ka shopcode lookup karo — floorid / shopcode column me shopcode store karna hai
            $shopCodeForDtl = $request->shopcode ?: ($request->floorid ?: null); // fallback: form ka shopcode / floorid
            if ($request->unitid && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
                $shopRow = DB::table('mall_shopmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('id', $request->unitid)
                    ->first();
                if ($shopRow && $shopRow->shopcode) {
                    $shopCodeForDtl = $shopRow->shopcode;
                }
            }

            $data = [
                'propertyid' => $this->propertyid,
                'floorid' => $request->floorid ?: null,
                'unitid' => $request->unitid,
                'tenantid' => $request->tenantid,
                'leasetype' => $request->leasetype ?? 'NEW',
                'leasestatus' => $request->leasestatus ?? 'DRAFT',
                'loino' => $request->loino ?: null,
                'loidate' => $request->loidate ?: null,
                'agreementno' => $request->agreementno ?: null,
                'agreement_date' => $request->agreement_date ?: null,
                'commercialmodel' => $request->commercialmodel ?: null,
                'leasecommencementdate' => $request->leasecommencementdate,
                'leaseexpirydate' => $request->leaseexpirydate,
                'lockinstartdate' => $request->lockinstartdate ?: null,
                'lockinenddate' => $request->lockinenddate ?: null,
                'possessiondate' => $request->possessiondate ?: null,
                'fitoutstartdate' => $request->fitoutstartdate ?: null,
                'fitout_completion_date' => $request->fitout_completion_date ?: null,
                'storeopeningdate' => $request->storeopeningdate ?: null,
                'moveindate' => $request->moveindate ?: null,
                'noticeperioddays' => $request->noticeperioddays ?? 0,
                'renewalrequired' => $request->has('renewalrequired') ? 1 : 0,
                'renewaldate' => $request->renewaldate ?: null,
                'remarks' => $request->remarks ?: null,
                'billingcycle'    => $request->billingcycle ?: 'MONTHLY',
                'billingstartfrom' => $request->billingstartfrom ?: null,
                'duedateofmonth'  => $request->duedateofmonth ?: null,
                'U_name'          => Auth::id(),
                'u_ae'            => $existingSn ? 'E' : 'A',
                'activeyn'        => 1,
                // created_at: sirf CREATE path me set hoga (update path me nahi)
            ];

            [$data, $skippedHdr] = $this->onlyExistingColumns($data, 'mall_lease_hdr');
            $skipped = $skippedHdr;

            if ($existingSn) {
                // Update Eloquent
                $lease = MallLeaseHdr::where('id', $existingSn)
                    ->where('propertyid', $this->propertyid)
                    ->firstOrFail();

                // Agreement No immutable — sirf wahi rahega jo pehle mila tha
                $data['agreementno'] = $lease->agreementno;

                // HDR ke unitid aur dates ko form se overwrite mat karo —
                // ye HDR-level lock hain (multi-shop case me corrupt hone se bachata hai).
                // Per-shop dates DTL row me store hoti hain.
                unset($data['unitid'], $data['leasecommencementdate'], $data['leaseexpirydate']);

                // created_at kabhi update path me overwrite nahi hona chahiye
                unset($data['created_at']);

                $lease->update($data);

                $sn = $existingSn;
                $leaseno = $lease->fresh()->leaseno;
                $message = 'Lease Agreement updated successfully.';

                // Update detail record (updateOrCreate: safe even if row missing)
                $dtlData = [
                    'shopcode'       => $shopCodeForDtl,
                    'unitid'         => $request->unitid,
                    'unittype'       => $request->unittype ?: null,
                    'carpetarea'     => $request->carpetarea ?: 0,
                    'chargeablearea' => $request->chargeablearea ?: 0,
                    'renttype'       => $request->renttype ?: 'FIXED_SQFT',
                    'rentbasis'      => $request->rentbasis ?: 'PER_SQFT',
                    'rentrate'       => $request->rentrate ?? 0,
                    'minimumrent'    => $request->minimumrent ?? 0,
                    'currentrent'    => $request->currentrent ?? 0,
                    'camrate'        => $request->camrate ?? 0,
                    'mincam'         => $request->mincam ?? 0,
                    'currentcam'     => $request->currentcam ?? 0,
                    'effectivefrom'  => $request->leasecommencementdate ?: null,
                    'effectiveto'    => $request->leaseexpirydate ?: null,
                    'u_ae'           => 'E',
                    'u_name'         => Auth::id(),
                    'updated_at'     => now(),
                ];
                [$dtlData, $skippedDtl] = $this->onlyExistingColumns($dtlData, 'mall_lease_dtl');

                MallLeaseDtl::updateOrCreate(
                    [
                        'lease_id'   => $sn,
                        'propertyid' => $this->propertyid,
                        'unitid'     => $request->unitid,
                    ],
                    $dtlData
                );

                $skipped = array_merge($skipped, $skippedDtl);
            } else {
                // Check if same tenantid + propertyid HDR already exists
                $existingHdr = MallLeaseHdr::where('tenantid', $request->tenantid)
                    ->where('propertyid', $this->propertyid)
                    ->where('activeyn', 1)
                    ->first();

                if ($existingHdr) {
                    // HDR already exists for this tenant+property - reuse it
                    // This handles the case: ek tenant ke multiple shops = 1 HDR + multiple DTL rows
                    $sn = $existingHdr->id;
                    $leaseno = $existingHdr->fresh()->leaseno;

                    // DUPLICATE SHOP GUARD: same shop already active lease me hai?
                    // NOTE: agar same lease_id + unitid combination hai to ye EDIT hai,
                    // silently update karo (sn blank ho gaya JS se) — error mat do
                    $shopAlreadyLeased = MallLeaseDtl::where('lease_id', $sn)
                        ->where('propertyid', $this->propertyid)
                        ->where('unitid', $request->unitid)
                        ->exists();

                    if ($shopAlreadyLeased) {
                        // Ye genuinely edit case hai — sn JS se blank ho gaya tha
                        // Seedha update path pe jao (same as $existingSn path)
                        $lease = MallLeaseHdr::where('id', $sn)
                            ->where('propertyid', $this->propertyid)
                            ->firstOrFail();

                        unset($data['unitid'], $data['leasecommencementdate'], $data['leaseexpirydate'], $data['created_at']);
                        $data['agreementno'] = $lease->agreementno;
                        $lease->update($data);

                        $dtlData = [
                            'shopcode'       => $shopCodeForDtl,
                            'unitid'         => $request->unitid,
                            'unittype'       => $request->unittype ?: null,
                            'carpetarea'     => $request->carpetarea ?: 0,
                            'chargeablearea' => $request->chargeablearea ?: 0,
                            'renttype'       => $request->renttype ?: 'FIXED_SQFT',
                            'rentbasis'      => $request->rentbasis ?: 'PER_SQFT',
                            'rentrate'       => $request->rentrate ?? 0,
                            'minimumrent'    => $request->minimumrent ?? 0,
                            'currentrent'    => $request->currentrent ?? 0,
                            'camrate'        => $request->camrate ?? 0,
                            'mincam'         => $request->mincam ?? 0,
                            'currentcam'     => $request->currentcam ?? 0,
                            'effectivefrom'  => $request->leasecommencementdate ?: null,
                            'effectiveto'    => $request->leaseexpirydate ?: null,
                            'u_ae'           => 'E',
                            'u_name'         => Auth::id(),
                            'updated_at'     => now(),
                        ];
                        [$dtlData, $skippedDtl] = $this->onlyExistingColumns($dtlData, 'mall_lease_dtl');
                        MallLeaseDtl::updateOrCreate(
                            ['lease_id' => $sn, 'propertyid' => $this->propertyid, 'unitid' => $request->unitid],
                            $dtlData
                        );
                        $skipped = array_merge($skipped, $skippedDtl);
                        $message = 'Lease Agreement updated successfully.';
                    } else {

                    // Insert detail record with unitid in updateOrCreate key
                    // new DB primary key: (lease_id, propertyid, unitid)
                    $dtlData = [
                        'lease_id'          => $sn,
                        'propertyid'        => $this->propertyid,
                        'shopcode'          => $shopCodeForDtl,
                        'unitid'            => $request->unitid,
                        'unittype'          => $request->unittype ?: null,
                        'carpetarea'        => $request->carpetarea ?: 0,
                        'builtuparea'       => 0,
                        'chargeablearea'    => $request->chargeablearea ?: 0,
                        'areaunit'          => 'SQFT',
                        'frontage'          => 0,
                        'ceilingheight'     => 0,
                        'possession_status' => 'PENDING',
                        'fitoutstatus'      => 'PENDING',
                        'storestatus'       => 'NOT_OPEN',
                        'renttype'          => $request->renttype ?: 'FIXED_SQFT',
                        'rentbasis'         => $request->rentbasis ?: 'PER_SQFT',
                        'rentrate'          => $request->rentrate ?? 0,
                        'minimumrent'       => $request->minimumrent ?? 0,
                        'currentrent'       => $request->currentrent ?? 0,
                        'camrate'           => $request->camrate ?? 0,
                        'mincam'            => $request->mincam ?? 0,
                        'currentcam'        => $request->currentcam ?? 0,
                        'effectivefrom'     => $request->leasecommencementdate ?: null,
                        'effectiveto'       => $request->leaseexpirydate ?: null,
                        'remarks'           => $request->remarks ?: null,
                        'u_ae'              => 'A',
                        'u_name'            => Auth::id(),
                        'created_at'        => now(),
                        'activeyn'          => 1,
                    ];
                    [$dtlData, $skippedDtl] = $this->onlyExistingColumns($dtlData, 'mall_lease_dtl');

                    MallLeaseDtl::updateOrCreate(
                        [
                            'lease_id' => $sn,
                            'propertyid' => $this->propertyid,
                            'unitid' => $request->unitid,
                        ],
                        $dtlData
                    );

                    $skipped = array_merge($skipped, $skippedDtl);
                    $message = 'Lease Agreement saved successfully. Additional shop row added.';
                    } // end else (new shop for existing tenant)
                } else {
                    // No existing HDR - create new HDR inside transaction
                    // DUPLICATE SHOP GUARD: koi aur active tenant ke paas ye shop already hai?
                    $shopLeaseExists = DB::table('mall_lease_dtl')
                        ->join('mall_lease_hdr', function ($j) {
                            $j->on('mall_lease_hdr.id', '=', 'mall_lease_dtl.lease_id')
                              ->on('mall_lease_hdr.propertyid', '=', 'mall_lease_dtl.propertyid');
                        })
                        ->where('mall_lease_dtl.propertyid', $this->propertyid)
                        ->where('mall_lease_dtl.unitid', $request->unitid)
                        ->where('mall_lease_hdr.activeyn', 1)
                        ->where(function ($q) use ($request) {
                            // Overlapping date range check
                            $q->where('mall_lease_dtl.effectivefrom', '<=', $request->leaseexpirydate)
                              ->where(function ($q2) use ($request) {
                                  $q2->whereNull('mall_lease_dtl.effectiveto')
                                     ->orWhere('mall_lease_dtl.effectiveto', '>=', $request->leasecommencementdate);
                              });
                        })
                        ->exists();

                    if ($shopLeaseExists) {
                        return response()->json([
                            'success' => false,
                            'message' => 'This shop already has an active lease in the selected date range. Please check existing leases.',
                        ]);
                    }

                    $leaseOut = DB::transaction(function () use ($data, $request, $shopCodeForDtl) {
                        $lastCode = MallLeaseHdr::where('propertyid', $this->propertyid)->max('code') ?? 0;
                        $code = $lastCode + 1;
                        $leaseno = 'AGR/'.date('Y').'/'.str_pad($code, 4, '0', STR_PAD_LEFT);

                        $data['code']           = $code;
                        $data['leaseno']        = $leaseno;
                        $data['agreementno']    = $this->nextAgreementNo(date('Y'), true);
                        $data['approvalstatus'] = 'PENDING';
                        $data['created_at']     = now(); // sirf create path me set karo

                        $lease = MallLeaseHdr::create($data);
                        $sn = $lease->id;

                        // Insert detail record with unitid in updateOrCreate key
                        // new DB primary key: (lease_id, propertyid, unitid)
                        $dtlData = [
                            'lease_id' => $sn,
                            'propertyid' => $this->propertyid,
                            'shopcode' => $shopCodeForDtl,
                            'unitid' => $request->unitid,
                            'unittype' => $request->unittype ?: null,
                            'carpetarea' => $request->carpetarea ?: 0,
                            'builtuparea' => 0,
                            'chargeablearea' => $request->chargeablearea ?: 0,
                            'areaunit' => 'SQFT',
                            'frontage' => 0,
                            'ceilingheight' => 0,
                            'possession_status' => 'PENDING',
                            'fitoutstatus' => 'PENDING',
                            'storestatus' => 'NOT_OPEN',
                            'renttype' => $request->renttype ?: 'FIXED_SQFT',
                            'rentbasis' => $request->rentbasis ?: 'PER_SQFT',
                            'rentrate' => $request->rentrate ?? 0,
                            'minimumrent' => $request->minimumrent ?? 0,
                            'currentrent' => $request->currentrent ?? 0,
                            'camrate' => $request->camrate ?? 0,
                            'mincam' => $request->mincam ?? 0,
                            'currentcam' => $request->currentcam ?? 0,
                            'effectivefrom' => $request->leasecommencementdate ?: null,
                            'effectiveto' => $request->leaseexpirydate ?: null,
                            'remarks' => $request->remarks ?: null,
                            'u_ae' => 'A',
                            'u_name' => Auth::id(),
                            'created_at' => now(),
                            'activeyn' => 1,
                        ];
                        [$dtlData, $skippedDtl] = $this->onlyExistingColumns($dtlData, 'mall_lease_dtl');

                        MallLeaseDtl::updateOrCreate(
                            [
                                'lease_id' => $sn,
                                'propertyid' => $this->propertyid,
                                'unitid' => $request->unitid,
                            ],
                            $dtlData
                        );

                        return [$lease, $sn, $leaseno, $dtlData['unittype'] ?? null, $skippedDtl];
                    });

                    $lease = $leaseOut[0];
                    $sn = $leaseOut[1];
                    $leaseno = $leaseOut[2];
                    $skipped = array_merge($skipped, $leaseOut[4]);
                    $message = 'Lease Agreement saved successfully.';
                }
            }

            // Escalation + Charges rows sync karo (delete + re-insert) — transaction me wrap
            DB::transaction(function () use ($sn, $request, $shopCodeForDtl) {
                $this->syncEscalation($sn, $request, $shopCodeForDtl);
                $this->syncCamEscalation($sn, $request, $shopCodeForDtl);
                $this->syncCharges($sn, $request, $shopCodeForDtl);
            });

            return response()->json([
                'success' => true,
                'message' => $message,
                'sn' => $sn,
                'leaseno' => $leaseno ?? '',
                'leasestatus' => $request->leasestatus ?? 'DRAFT',
                'data_not_saved' => array_values(array_unique($skipped)),
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    // Escalation Schedule rows → mall_lease_escalation (delete + re-insert)
    private function syncEscalation($leaseid, Request $request, $shopcode = null)
    {
        $tbl = 'mall_lease_escalation';
        if (! DB::getSchemaBuilder()->hasTable($tbl)) {
            return;
        }

        // mall_chargemast se RENT ka actual chargecode lookup karo
        // shortcode = 'RENT' ya chargename LIKE '%RENT%' wali row
        $rentCode = 'RENT'; // fallback
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $rentMaster = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where(function ($q) {
                    $q->where('shortcode', 'RENT')
                      ->orWhere('chargecode', 'RENT')
                      ->orWhere('chargename', 'like', '%RENT%');
                })
                ->orderByRaw("CASE WHEN shortcode = 'RENT' THEN 0 WHEN chargecode = 'RENT' THEN 1 ELSE 2 END")
                ->first();
            if ($rentMaster) {
                $rentCode = $rentMaster->chargecode;
            }
        }

        $delQuery = DB::table($tbl)->where('leaseid', $leaseid)
            ->where('propertyid', $this->propertyid)
            ->where(function ($q) use ($rentCode) {
                $q->where('chargecode', $rentCode)
                  ->orWhere('chargecode', 'RENT');
            });

        if ($shopcode && DB::getSchemaBuilder()->hasColumn($tbl, 'shopcode')) {
            $delQuery->where('shopcode', $shopcode);
        }

        $delQuery->delete();

        $eff    = array_values($request->input('esc_effectivefrom', []));
        $months = array_values($request->input('esc_aftermonths', []));
        $types  = array_values($request->input('esc_increasetype', []));
        $values = array_values($request->input('esc_increasevalue', []));
        $newrate = array_values($request->input('esc_newrate', []));
        $newrent = array_values($request->input('esc_newmonthlyrent', []));

        $area        = (float) ($request->chargeablearea ?: 0);
        // Bug B fix: minimumrent > 0 ho to wo base rate hai, warna rentrate
        $minimumRent = (float) ($request->minimumrent ?? 0);
        $rate0       = $minimumRent > 0 ? $minimumRent : (float) ($request->rentrate ?? 0);
        $rent0       = (float) ($request->currentrent ?? round($rate0 * $area, 2));

        $rows      = [];
        $prevRate  = $rate0;
        $prevRent  = $rent0;
        $sno       = 0;
        foreach ($eff as $i => $from) {
            if (! $from) {
                continue;
            }
            $sno++;
            $type = $types[$i] ?? 'Percentage';
            $val  = (float) ($values[$i] ?? 0);

            // Server-side compound rate — JS pe depend mat karo
            $formNewRate = (float) ($newrate[$i] ?? 0);
            if ($sno === 1) {
                $calcRate = $rate0; // base row = minimumrent ya rentrate (Bug B fix above)
            } elseif ($formNewRate > 0) {
                $calcRate = $formNewRate;
            } elseif ($type === 'Percentage' && $val > 0) {
                $calcRate = round($prevRate * (1 + $val / 100), 4);
            } elseif ($type === 'Fixed Amount' && $val > 0) {
                $calcRate = round($prevRate + $val, 4);
            } else {
                $calcRate = $prevRate;
            }

            $formNewRent = (float) ($newrent[$i] ?? 0);
            $calcRent    = $formNewRent > 0 ? $formNewRent : round($calcRate * $area, 2);

            $diffRate = round($calcRate - $prevRate, 4);
            $diffAmt  = round($calcRent - $prevRent, 2);
            $incAmt   = $type === 'Fixed Amount' ? $val : ($diffAmt > 0 ? $diffAmt : ($diffRate > 0 ? $diffRate : 0));

            $rows[] = [
                'propertyid'      => $this->propertyid,
                'leaseid'         => $leaseid,
                'tenantid'        => $request->tenantid ?: null,
                'shopcode'        => (string) ($shopcode ?: ($request->shopcode ?: '')),
                'chargecode'      => $rentCode,
                'sno'             => $sno,
                'effectivefrom'   => $from,
                'effectiveto'     => $request->leaseexpirydate ?: null,
                'aftermonths'     => (int) ($months[$i] ?? 0),
                'increasetype'    => $type ?: 'Percentage',
                'increasepercent' => $type === 'Percentage' ? $val : 0,
                'increaseamount'  => $incAmt,
                'oldrate'         => $prevRate,
                'newrate'         => $calcRate,
                'oldamount'       => $prevRent,
                'newamount'       => $calcRent,
                'area'            => $area,
                'u_name'          => $this->username,
                'created_at'      => now(),
                'u_updatedby'     => $this->username,
                'updated_at'      => now(),
            ];
            $prevRate = $calcRate;
            $prevRent = $calcRent;
        }

        // Har row ka effectiveto = agli row ka effectivefrom - 1 day, last row = lease expiry date
        $escCount = count($rows);
        for ($k = 0; $k < $escCount; $k++) {
            if ($k < $escCount - 1 && ! empty($rows[$k + 1]['effectivefrom'])) {
                $rows[$k]['effectiveto'] = date('Y-m-d', strtotime($rows[$k + 1]['effectivefrom'].' -1 day'));
            } else {
                $rows[$k]['effectiveto'] = $request->leaseexpirydate ?: null;
            }
        }

        if ($rows) {
            $filteredRows = [];
            foreach ($rows as $r) {
                [$fr] = $this->onlyExistingColumns($r, $tbl);
                $filteredRows[] = $fr;
            }
            DB::table($tbl)->insert($filteredRows);
        }
    }

    // CAM (Common Area Maintenance) Schedule rows → mall_lease_escalation (chargecode = CAM, delete + re-insert)
    private function syncCamEscalation($leaseid, Request $request, $shopcode = null)
    {
        $tbl = 'mall_lease_escalation';
        if (! DB::getSchemaBuilder()->hasTable($tbl)) {
            return;
        }

        // mall_chargemast se CAM ka actual chargecode lookup karo
        // shortcode = 'CAM' ya chargename LIKE '%CAM%' ya '%COMMON AREA%'
        $camCode = 'CAM'; // fallback
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $camMaster = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where(function ($q) {
                    $q->where('shortcode', 'CAM')
                      ->orWhere('chargecode', 'CAM')
                      ->orWhere('chargename', 'like', '%COMMON AREA%')
                      ->orWhere('chargename', 'like', '%CAM%');
                })
                ->orderByRaw("CASE WHEN shortcode = 'CAM' THEN 0 WHEN chargecode = 'CAM' THEN 1 ELSE 2 END")
                ->first();
            if ($camMaster) {
                $camCode = $camMaster->chargecode;
            }
        }

        $delCamQuery = DB::table($tbl)->where('leaseid', $leaseid)
            ->where('propertyid', $this->propertyid)
            ->where(function ($q) use ($camCode) {
                $q->where('chargecode', $camCode)
                  ->orWhere('chargecode', 'CAM');
            });

        if ($shopcode && DB::getSchemaBuilder()->hasColumn($tbl, 'shopcode')) {
            $delCamQuery->where('shopcode', $shopcode);
        }

        $delCamQuery->delete();

        $eff = array_values($request->input('cam_effectivefrom', []));
        $months = array_values($request->input('cam_aftermonths', []));
        $types = array_values($request->input('cam_increasetype', []));
        $values = array_values($request->input('cam_increasevalue', []));
        $newrate = array_values($request->input('cam_newrate', []));
        $newamt = array_values($request->input('cam_newamount', []));

        $area     = (float) ($request->chargeablearea ?: 0);
        $baseRate = (float) ($request->mincam > 0 ? $request->mincam : ($request->camrate ?? 0));

        $rows     = [];
        $prevRate = $baseRate;
        $prevAmt  = (float) ($request->currentcam ?? round($baseRate * $area, 2));
        $sno      = 0;
        foreach ($eff as $i => $from) {
            if (! $from) {
                continue;
            }
            $sno++;
            $type = $types[$i] ?? 'Percentage';
            $val  = (float) ($values[$i] ?? 0);

            // Server-side compound rate calculate karo
            $formNewRate = (float) ($newrate[$i] ?? 0);
            if ($sno === 1) {
                $calcRate = $baseRate;
            } elseif ($formNewRate > 0) {
                $calcRate = $formNewRate;
            } elseif ($type === 'Percentage' && $val > 0) {
                $calcRate = round($prevRate * (1 + $val / 100), 4);
            } elseif ($type === 'Fixed Amount' && $val > 0) {
                $calcRate = round($prevRate + $val, 4);
            } else {
                $calcRate = $prevRate;
            }

            $formNewAmt = (float) ($newamt[$i] ?? 0);
            $calcAmt    = $formNewAmt > 0
                ? $formNewAmt
                : round($calcRate * $area, 2);

            $diffCamRate = round($calcRate - $prevRate, 4);
            $diffCamAmt  = round($calcAmt - $prevAmt, 2);
            $incCamAmt   = $type === 'Fixed Amount' ? $val : ($diffCamAmt > 0 ? $diffCamAmt : ($diffCamRate > 0 ? $diffCamRate : 0));

            $rows[] = [
                'propertyid'      => $this->propertyid,
                'leaseid'         => $leaseid,
                'tenantid'        => $request->tenantid ?: null,
                'shopcode'        => (string) ($shopcode ?: ($request->shopcode ?: '')),
                'chargecode'      => $camCode,
                'sno'             => $sno,
                'effectivefrom'   => $from,
                'effectiveto'     => $request->leaseexpirydate ?: null,
                'aftermonths'     => (int) ($months[$i] ?? 0),
                'increasetype'    => $type ?: 'Percentage',
                'increasepercent' => $type === 'Percentage' ? $val : 0,
                'increaseamount'  => $incCamAmt,
                'oldrate'         => $prevRate,
                'newrate'         => $calcRate,
                'oldamount'       => $prevAmt,
                'newamount'       => $calcAmt,
                'area'            => $area,
                'u_name'          => $this->username,
                'created_at'      => now(),
                'u_updatedby'     => $this->username,
                'updated_at'      => now(),
            ];
            $prevRate = $calcRate;
            $prevAmt  = $calcAmt;
        }

        // Har row ka effectiveto = agli row ka effectivefrom - 1 day, last row = lease expiry date
        $camCount = count($rows);
        for ($k = 0; $k < $camCount; $k++) {
            if ($k < $camCount - 1 && ! empty($rows[$k + 1]['effectivefrom'])) {
                $rows[$k]['effectiveto'] = date('Y-m-d', strtotime($rows[$k + 1]['effectivefrom'].' -1 day'));
            } else {
                $rows[$k]['effectiveto'] = $request->leaseexpirydate ?: null;
            }
        }

        if ($rows) {
            $filteredRows = [];
            foreach ($rows as $r) {
                [$fr] = $this->onlyExistingColumns($r, $tbl);
                $filteredRows[] = $fr;
            }
            DB::table($tbl)->insert($filteredRows);
        }
    }

    // Charges Summary rows → tablemall_lease_charges (delete + re-insert)
    private function syncCharges($leaseid, Request $request, $shopcode = null)
    {
        $tbl = 'tablemall_lease_charges';
        if (! DB::getSchemaBuilder()->hasTable($tbl)) {
            return;
        }

        $delQuery = DB::table($tbl)->where('leaseid', $leaseid)
            ->where('propertyid', $this->propertyid);

        if ($shopcode && DB::getSchemaBuilder()->hasColumn($tbl, 'shopcode')) {
            $delQuery->where('shopcode', $shopcode);
        }

        $delQuery->delete();

        $codes = array_values($request->input('chg_chargecode', []));
        $names = array_values($request->input('chg_chargename', []));
        $methods = array_values($request->input('chg_calculationmethod', []));
        $basis = array_values($request->input('chg_basis', []));
        $rates = array_values($request->input('chg_rate', []));
        $amounts = array_values($request->input('chg_amount', []));
        $cycles = array_values($request->input('chg_billingcycle', []));
        $efff = array_values($request->input('chg_effectivefrom', []));
        $efft = array_values($request->input('chg_effectiveto', []));

        $area = $request->chargeablearea ?: 0;

        $rows = [];
        foreach ($codes as $i => $code) {
            if (! $code) {
                continue;
            }
            $rows[] = [
                'propertyid' => $this->propertyid,
                'leaseid' => $leaseid,
                'tenantid' => $request->tenantid ?: null,
                'shopcode' => (string) ($shopcode ?: ($request->shopcode ?: '')),
                'chargecode' => $code,
                'chargename' => $names[$i] ?? null,
                'calculationmethod' => $methods[$i] ?? null,
                'basis' => $basis[$i] ?? null,
                'area' => $area,
                'rate' => (float) ($rates[$i] ?? 0),
                'amount' => (float) ($amounts[$i] ?? 0),
                'billingcycle' => $cycles[$i] ?? 'MONTHLY',
                'gstapplicable' => 1,
                'gstpercent' => 0,
                'effectivefrom' => $efff[$i] ?? $request->leasecommencementdate,
                'effectiveto' => $efft[$i] ?? $request->leaseexpirydate,
                'u_name' => $this->username,
                'created_at' => now(),
                'u_updatedby' => $this->username,
                'updated_at' => now(),
            ];
        }

        if ($rows) {
            $filteredRows = [];
            foreach ($rows as $r) {
                [$fr] = $this->onlyExistingColumns($r, $tbl);
                $filteredRows[] = $fr;
            }
            DB::table($tbl)->insert($filteredRows);
        }
    }

    //
    public function leasecommercialterms_save(Request $request)
    {
        // Lease header (sn) required this links the commercial terms to the lease
        $lease = MallLeaseHdr::where('id', $request->sn)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (! $lease) {
            return response()->json([
                'success' => false,
                'message' => 'Lease agreement not found. Please save the agreement first.',
            ]);
        }

        try {
            // Chargeable area from shop master for the selected unit
            $chargeablearea = 0;
            if ($lease->unitid && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
                $shop = DB::table('mall_shopmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('id', $lease->unitid)
                    ->first();
                $chargeablearea = $shop->chargeablearea ?? 0;
            }

            $data = [
                'leaseid' => $lease->id,
                'propertyid' => $this->propertyid,
                'shopid' => $lease->unitid,
                'tenantid' => $lease->tenantid,
                'commercialmodel' => $lease->commercialmodel ?: 'GENERAL',
                'rent_basis' => $request->rent_basis,
                'chargeablearea' => $chargeablearea,
                'areaunit' => 'SQFT',
                'rentrate' => $request->rentrate ?? 0,
                'monthlyrent' => $request->current_monthly_rent ?? 0,
                'mgamount' => $request->min_monthly_rent ?? 0,
                'revenuesharepercent' => $request->revenuesharepercent ?? 0,
                'turnoverbasis' => $request->turnoverbasis,
                'rentfree_to' => $request->rentfree_to ?: null,
                'fitout_period_to' => $request->fitout_period_to ?: null,
                'due_day' => $request->due_day_of_month ?? 10,
                'review_basis' => $request->review_basis,
                'grace_period_days' => $request->grace_period_days ?? 5,
                'payment_mode' => $request->payment_mode,
                'late_interest_type' => $request->late_interest_type,
                'late_interest_pct' => $request->late_interest_pct ?? 0,
                'interest_calculation' => $request->interest_calculation,
                'interest_start_from' => $request->interest_start_from,
                'security_deposit_adj' => $request->security_deposit_adj,
                'terms_conditions' => $request->terms_conditions,
                'fixedamount' => $request->fixedamount ?? 0,
                'effectivefrom' => $lease->leasecommencementdate,
                'effectiveto' => $lease->leaseexpirydate,
                'billingfrequency' => $request->billing_cycle,
                'remarks' => $request->remarks,
                'u_name' => Auth::id(),
                'created_at' => now(),
                'activeyn' => 1,
            ];

            [$data, $skipped] = $this->onlyExistingColumns($data, 'mall_lease_commercial');

            // 1 row per lease insert if none, update if exists
            $existing = MallLeaseCommercial::where('leaseid', $lease->id)
                ->where('propertyid', $this->propertyid)
                ->first();

            if ($existing) {
                $data['u_ae'] = 'U';
                $existing->update($data);
                $message = 'Commercial Terms updated successfully.';
            } else {
                $data['u_ae'] = 'I';
                MallLeaseCommercial::create($data);
                $message = 'Commercial Terms saved successfully.';
            }

            return response()->json([
                'success' => true,
                'message' => $message,
                'data_not_saved' => $skipped,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    //
    public function getunitbyfloor(Request $request)
    {
        if (! DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            return response()->json([]);
        }

        $units = DB::table('mall_shopmast')
            ->where('propertyid', $this->propertyid)
            ->where('floorid', $request->floorid)
            ->where('activeyn', 1)
            ->orderBy('shopname')
            ->get(['id', 'shopcode', 'shopname', 'floorid', 'shoptype', 'carpetarea', 'builtuparea', 'chargeablearea']);

        return response()->json($units);
    }

    // Fetch shop/unit details from mall_shopmast (shop master) for auto-fill on unit select
    public function getshop(Request $request)
    {
        $shop = null;
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $shop = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->where('id', $request->sn)
                ->select('id', 'shopcode', 'shopname', 'shoptype', 'floorid',
                    'carpetarea', 'builtuparea', 'chargeablearea',
                    'areaunit', 'frontage', 'ceilingheight',
                    'shopstatus', 'electricitymeterno', 'activeyn')
                ->first();
        }

        if (! $shop) {
            \Log::info('getshop: no row found', [
                'propertyid' => $this->propertyid,
                'sn' => $request->sn,
            ]);
        }

        return response()->json($shop ?: new \stdClass);
    }

    // Fetch tenant details from subgroup master for auto-fill on tenant select
    public function gettenant(Request $request)
    {
        $tenant = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('sub_code', $request->tenantid)
            ->first(['sub_code', 'name', 'conperson', 'mobile', 'email', 'address', 'panno', 'gstin', 'tradename']);

        $data = $tenant ? (array) $tenant : [];

        // Tenant ka previous agreement no (latest lease) — sirf jaankari ke liye
        $data['prev_agreementno'] = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $prev = MallLeaseHdr::where('propertyid', $this->propertyid)
                ->where('tenantid', $request->tenantid)
                ->whereNotNull('agreementno')
                ->orderBy('id', 'desc')
                ->value('agreementno');
            $data['prev_agreementno'] = $prev;
        }

        return response()->json($data);
    }

    // Tenant Shop Panel — tenant ki saari shops + har shop ka lease status
    public function gettenantshops(Request $request)
    {
        $tenantcode = $request->tenantcode;
        $shops = collect();

        if (
            $tenantcode
            && DB::getSchemaBuilder()->hasTable('mall_partylocation')
            && DB::getSchemaBuilder()->hasTable('mall_shopmast')
        ) {

            // 1) Tenant Location setup se tenant ki mapped shops (DISTINCT)
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
                    'sh.id',
                    'sh.shopcode',
                    'sh.shopname',
                    'sh.floorid',
                    'f.name as floorname',
                    'sh.chargeablearea',
                    'sh.shoptype'
                )
                ->distinct()
                ->get();

            // 2) FALLBACK — mapping na ho to tenant ki existing leases wali shops bhi dikhao
            $mappedSn = $shops->pluck('id');
            $leased = DB::table('mall_lease_hdr')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.id', '=', 'mall_lease_hdr.unitid')
                        ->on('sh.propertyid', '=', 'mall_lease_hdr.propertyid');
                })
                ->leftJoin('hkfloors as f', 'f.code', '=', 'sh.floorid')
                ->where('mall_lease_hdr.propertyid', $this->propertyid)
                ->where('mall_lease_hdr.tenantid', $tenantcode)
                ->where('mall_lease_hdr.activeyn', 1)
                ->select(
                    'sh.id',
                    'sh.shopcode',
                    'sh.shopname',
                    'sh.floorid',
                    'f.name as floorname',
                    'sh.chargeablearea',
                    'sh.shoptype'
                )
                ->get();

            foreach ($leased as $ls) {
                if (! $mappedSn->contains($ls->id)) {
                    $shops->push($ls);
                }
            }
        }

        // Har shop ka latest lease check
        // mall_lease_hdr me sirf pehla shop ka unitid hota hai (1 HDR + N DTL)
        // isliye mall_lease_dtl se check karo — wahan har shop ki row hoti hai
        $result = [];
        foreach ($shops as $shop) {
            $lease = null;
            if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr') && DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
                // mall_lease_dtl me is shop ka record dhundho (unitid = shop.id)
                $dtlRow = DB::table('mall_lease_dtl')
                    ->where('propertyid', $this->propertyid)
                    ->where('unitid', $shop->id)
                    ->where('activeyn', 1)
                    ->orderBy('id', 'desc')
                    ->first(['lease_id']);

                if ($dtlRow) {
                    $lease = DB::table('mall_lease_hdr')
                        ->where('propertyid', $this->propertyid)
                        ->where('tenantid', $tenantcode)
                        ->where('id', $dtlRow->lease_id)
                        ->where('activeyn', 1)
                        ->first(['id', 'agreementno', 'leasestatus']);
                }

                // Fallback: DTL me nahi mila to HDR me directly check karo (legacy)
                if (! $lease) {
                    $lease = DB::table('mall_lease_hdr')
                        ->where('propertyid', $this->propertyid)
                        ->where('tenantid', $tenantcode)
                        ->where('unitid', $shop->id)
                        ->where('activeyn', 1)
                        ->orderBy('id', 'desc')
                        ->first(['id', 'agreementno', 'leasestatus']);
                }
            }

            $result[] = [
                'id' => $shop->id,
                'shopcode' => $shop->shopcode,
                'shopname' => $shop->shopname,
                'floorname' => $shop->floorname ?? null,
                'chargeablearea' => $shop->chargeablearea,
                'shoptype' => $shop->shoptype,
                'lease_sn' => $lease ? $lease->id : null,
                'agreementno' => $lease ? $lease->agreementno : null,
                'leasestatus' => $lease ? $lease->leasestatus : null,
                'has_lease' => (bool) $lease,
            ];
        }

        return response()->json($result);
    }

    // Charges Summary source — tenant+shop ki mapped charges mall_partylocation se
    public function getpartylocationcharges(Request $request)
    {
        $tenantcode = $request->tenantcode;
        $unitid = $request->unitid;

        $charges = collect();
        if (
            $tenantcode && $unitid
            && DB::getSchemaBuilder()->hasTable('mall_partylocation')
            && DB::getSchemaBuilder()->hasTable('mall_shopmast')
            && DB::getSchemaBuilder()->hasTable('mall_chargemast')
        ) {

            $charges = DB::table('mall_partylocation as pl')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.shopcode', '=', 'pl.shopcode')
                        ->on('sh.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('mall_chargemast as cm', function ($j) {
                    $j->on('cm.chargecode', '=', 'pl.servicecode')
                        ->on('cm.propertyid', '=', 'pl.propertyid');
                })
                ->where('pl.propertyid', $this->propertyid)
                ->where('pl.tenantcode', $tenantcode)
                ->where('sh.id', $unitid)
                ->where('pl.activeyn', 1)
                ->orderBy('pl.id')
                ->select(
                    'pl.servicecode as chargecode',
                    'cm.chargename',
                    'cm.calculationbasis',
                    'cm.billingfrequency'
                )
                ->distinct()
                ->get();
        }

        return response()->json($charges);
    }

    // ─── Shop Master ─────────────────────────────────────────────────────────
    public function shopmaster()
    {
        $floors = collect();
        if (DB::getSchemaBuilder()->hasTable('hkfloors')) {
            $floors = DB::table('hkfloors')
                ->where('propertyid', $this->propertyid)
                ->orderBy('name')
                ->get();
        }

        $unittypes = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_unittype')) {
            $unittypes = MallUnittype::where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('typename')
                ->get(['id', 'typecode', 'typename']);
        }

        $unitdata = collect();
        if (DB::getSchemaBuilder()->hasTable('unitmast')) {
            $unitdata = DB::table('unitmast')
                ->where('propertyid', $this->propertyid)
                ->where('activeYN', 'Y')
                ->orderBy('name', 'ASC')
                ->get(['ucode', 'name']);
        }

        $data = DB::table('mall_shopmast')
            ->leftJoin('hkfloors', 'hkfloors.code', '=', 'mall_shopmast.floorid')
            ->where('mall_shopmast.propertyid', $this->propertyid)
            ->orderBy('mall_shopmast.shopcode')
            ->select('mall_shopmast.*', 'hkfloors.name as floorname')
            ->get();

        return view('property.mallmanagement.shopmaster', [
            'data' => $data,
            'floors' => $floors,
            'unittypes' => $unittypes,
            'unitdata' => $unitdata,
            'username' => $this->username,
            'ncurdate' => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    public function shopmasterstore(Request $request)
    {
        $request->validate([
            'shopname' => 'nullable|max:150',
            'shoptype' => 'nullable|max:50',
            'businesscategory' => 'nullable|max:100',
            'carpetarea' => 'nullable|numeric',
            'builtuparea' => 'nullable|numeric',
            'chargeablearea' => 'nullable|numeric',
            'areaunit' => 'nullable|string|max:20',
            'frontage' => 'nullable|numeric',
            'ceilingheight' => 'nullable|numeric',
            'shopstatus' => 'nullable|string|max:30',
            'electricitymeterno' => 'nullable|string|max:50',
            'activeyn' => 'nullable|in:0,1',
        ]);

        // Auto-generate shopcode: sequence prefix + propertyid  e.g. 1103, 2103, 3103
        $lastCode = MallShopmast::where('propertyid', $this->propertyid)
            ->orderByRaw('shopcode * 1 DESC')
            ->value('shopcode');
        $shopcode = $lastCode ? ((int) substr($lastCode, 0, -strlen((string) $this->propertyid)) + 1).$this->propertyid : '1'.$this->propertyid;

        try {
            MallShopmast::create([
                'propertyid' => $this->propertyid,
                'floorid' => $request->floorid ?: null,
                'shopcode' => $shopcode,
                'shopname' => strtoupper($request->shopname) ?: null,
                'shoptype' => $request->shoptype ?: null,
                'businesscategory' => strtoupper($request->businesscategory) ?: null,
                'carpetarea' => $request->carpetarea ?? 0,
                'builtuparea' => $request->builtuparea ?? 0,
                'chargeablearea' => $request->chargeablearea ?? 0,
                'areaunit' => $request->areaunit ?: 'SQFT',
                'frontage' => $request->frontage ?? 0,
                'ceilingheight' => $request->ceilingheight ?? 0,
                'shopstatus' => $request->shopstatus ?: 'VACANT',
                'electricitymeterno' => strtoupper($request->electricitymeterno) ?: null,
                'u_name' => Auth::id(),
                'created_at' => now(),
                'u_ae' => 'A',
                'activeyn' => $request->activeyn === '0' ? 0 : 1,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Shop created successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function shopmasterupdate(Request $request)
    {
        $request->validate([
            'sn' => 'required|numeric',
            'shopname' => 'nullable|max:150',
            'shoptype' => 'nullable|max:50',
            'businesscategory' => 'nullable|max:100',
            'carpetarea' => 'nullable|numeric',
            'builtuparea' => 'nullable|numeric',
            'chargeablearea' => 'nullable|numeric',
            'areaunit' => 'nullable|string|max:20',
            'frontage' => 'nullable|numeric',
            'ceilingheight' => 'nullable|numeric',
            'shopstatus' => 'nullable|string|max:30',
            'electricitymeterno' => 'nullable|string|max:50',
            'activeyn' => 'nullable|in:0,1',
        ]);

        try {
            $shop = MallShopmast::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $shop->update([
                'floorid' => $request->floorid ?: null,
                'shopname' => strtoupper($request->shopname) ?: null,
                'shoptype' => $request->shoptype ?: null,
                'businesscategory' => strtoupper($request->businesscategory) ?: null,
                'carpetarea' => $request->carpetarea ?? 0,
                'builtuparea' => $request->builtuparea ?? 0,
                'chargeablearea' => $request->chargeablearea ?? 0,
                'areaunit' => $request->areaunit ?: 'SQFT',
                'frontage' => $request->frontage ?? 0,
                'ceilingheight' => $request->ceilingheight ?? 0,
                'shopstatus' => $request->shopstatus ?: 'VACANT',
                'electricitymeterno' => strtoupper($request->electricitymeterno) ?: null,
                'u_name' => Auth::id(),
                'created_at' => now(),
                'u_ae' => 'U',
                'activeyn' => $request->activeyn === '0' ? 0 : 1,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Shop updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function shopmasterdelete($sn)
    {
        try {
            $shop = MallShopmast::where('id', $sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $shop->delete();

            return response()->json([
                'success' => true,
                'message' => 'Shop deleted successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function exportShopmasterExcel()
    {
        try {
            $data = MallShopmast::where('propertyid', $this->propertyid)
                ->orderBy('shopcode')
                ->get();

            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $compName = $company->comp_name ?? 'Shop Master Report';

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Shop Master');

            $lastCol = 'P';

            // Row 1: Company Name
            $sheet->mergeCells('A1:'.$lastCol.'1');
            $sheet->setCellValue('A1', $compName);
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:'.$lastCol.'2');
            $sheet->setCellValue('A2', 'Shop Master Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date
            $sheet->mergeCells('A3:'.$lastCol.'3');
            $sheet->setCellValue('A3', 'Generated on: '.date('d/m/Y h:i A'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Headers
            $headers = [
                '#',
                'Shop Code',
                'Shop Name',
                'Shop Type',
                'Business Category',
                'Carpet Area',
                'Built-up Area',
                'Chargeable Area',
                'Area Unit',
                'Frontage',
                'Ceiling Height',
                'Shop Status',
                'Electricity Meter No',
                'Active',
            ];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A'.$currentRow, $i + 1);
                $sheet->setCellValue('B'.$currentRow, $row->shopcode);
                $sheet->setCellValue('C'.$currentRow, $row->shopname);
                $sheet->setCellValue('D'.$currentRow, $row->shoptype);
                $sheet->setCellValue('E'.$currentRow, $row->businesscategory);
                $sheet->setCellValue('F'.$currentRow, $row->carpetarea);
                $sheet->setCellValue('G'.$currentRow, $row->builtuparea);
                $sheet->setCellValue('H'.$currentRow, $row->chargeablearea);
                $sheet->setCellValue('I'.$currentRow, $row->areaunit);
                $sheet->setCellValue('J'.$currentRow, $row->frontage);
                $sheet->setCellValue('K'.$currentRow, $row->ceilingheight);
                $sheet->setCellValue('L'.$currentRow, $row->shopstatus);
                $sheet->setCellValue('M'.$currentRow, $row->electricitymeterno);
                $sheet->setCellValue('N'.$currentRow, $row->activeyn == 1 ? 'Active' : 'Inactive');

                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                $sheet->getStyle('B'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('C'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(15);
            $sheet->getColumnDimension('C')->setWidth(25);
            $sheet->getColumnDimension('D')->setWidth(15);
            $sheet->getColumnDimension('E')->setWidth(20);
            $sheet->getColumnDimension('F')->setWidth(14);
            $sheet->getColumnDimension('G')->setWidth(14);
            $sheet->getColumnDimension('H')->setWidth(16);
            $sheet->getColumnDimension('I')->setWidth(12);
            $sheet->getColumnDimension('J')->setWidth(12);
            $sheet->getColumnDimension('K')->setwIDTH(15);
            $sheet->getColumnDimension('L')->setWidth(16);
            $sheet->getColumnDimension('M')->setWidth(20);
            $sheet->getColumnDimension('N')->setWidth(10);

            $filename = 'Shop_Master_Report_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (\Exception $e) {
            Log::error('Shop Master Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    public function printShopmaster()
    {
        $data = MallShopmast::where('propertyid', $this->propertyid)
            ->orderBy('shopcode')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.shopmasterprint', [
            'company' => $company,
            'data' => $data,
            'reportTitle' => 'Shop Master Report',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('shop-master-report-'.date('YmdHis').'.pdf');
    }

    // ─── Unit Type Master ──────────────────────────────────────────────────────
    public function unitype()
    {
        $data = MallUnittype::where('propertyid', $this->propertyid)
            ->orderBy('typename')
            ->get();

        return view('property.mallmanagement.unitype', [
            'data' => $data,
            'username' => $this->username,
            'ncurdate' => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    public function submitunitype(Request $request)
    {
        $request->validate([
            'typename' => 'required|max:100',
        ], [
            'typename.required' => 'Type Name is required.',
        ]);

        // Auto-generate typecode: sequence prefix + propertyid  e.g. 1103, 2103, 3103
        $lastCode = MallUnittype::where('propertyid', $this->propertyid)
            ->orderByRaw('typecode * 1 DESC')
            ->value('typecode');
        $typecode = $lastCode ? ((int) substr($lastCode, 0, -strlen((string) $this->propertyid)) + 1).$this->propertyid : '1'.$this->propertyid;

        try {
            MallUnittype::create([
                'propertyid' => $this->propertyid,
                'typecode' => $typecode,
                'typename' => strtoupper($request->typename),
                'description' => $request->description ?: null,
                'u_name' => Auth::id(),
                'created_at' => now(),
                'u_ae' => 'A',
                'activeyn' => $request->activeyn === '0' ? 0 : 1,
            ]);

            $notificationMessage = app(NotificationCreatorService::class)
                ->unitmaster(
                    propertyId: $this->propertyid,
                    typecode: $typecode,
                );

            SendEnviroNotificationJob::dispatch(
                propertyId: $this->propertyid,
                route: 'unitype',
                customMessage: $notificationMessage,
            );

            return response()->json([
                'success' => true,
                'message' => 'Unit Type saved successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function updateunitype(Request $request)
    {
        $request->validate([
            'sn' => 'required|numeric',
            'typename' => 'required|max:100',
        ]);

        try {
            $unittype = MallUnittype::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $unittype->update([
                'typename' => strtoupper($request->typename),
                'description' => $request->description ?: null,
                'u_name' => Auth::id(),
                'u_ae' => 'U',
                'created_at' => now(),
                'activeyn' => $request->activeyn === '0' ? 0 : 1,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Unit Type updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function deleteunitype($sn)
    {
        try {
            $unittype = MallUnittype::where('id', $sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $unittype->delete();

            return response()->json([
                'success' => true,
                'message' => 'Unit Type deleted successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function exportUnitypeExcel()
    {
        try {
            $data = MallUnittype::where('propertyid', $this->propertyid)
                ->orderBy('typename')
                ->get();

            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $compName = $company->comp_name ?? 'Unit Type Report';

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Unit Type');

            $lastCol = 'E';

            // Row 1: Company Name
            $sheet->mergeCells('A1:'.$lastCol.'1');
            $sheet->setCellValue('A1', $compName);
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:'.$lastCol.'2');
            $sheet->setCellValue('A2', 'Unit Type Master Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date
            $sheet->mergeCells('A3:'.$lastCol.'3');
            $sheet->setCellValue('A3', 'Generated on: '.date('d/m/Y h:i A'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Headers
            $headers = ['#', 'Type Code', 'Type Name', 'Description', 'Active'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A'.$currentRow, $i + 1);
                $sheet->setCellValue('B'.$currentRow, $row->typecode);
                $sheet->setCellValue('C'.$currentRow, $row->typename);
                $sheet->setCellValue('D'.$currentRow, $row->description);
                $sheet->setCellValue('E'.$currentRow, $row->activeyn == 1 ? 'Active' : 'Inactive');

                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                $sheet->getStyle('B'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('C'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('D'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(15);
            $sheet->getColumnDimension('C')->setWidth(25);
            $sheet->getColumnDimension('D')->setWidth(40);
            $sheet->getColumnDimension('E')->setWidth(10);

            $filename = 'Unit_Type_Report_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (\Exception $e) {
            Log::error('Unit Type Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    public function printUnitype()
    {
        $data = MallUnittype::where('propertyid', $this->propertyid)
            ->orderBy('typename')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.unitypeprint', [
            'company' => $company,
            'data' => $data,
            'reportTitle' => 'Unit Type Master Report',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('unit-type-report-'.date('YmdHis').'.pdf');
    }

    // ─── Charge Master ─────────────────────────────────────────────────────────
    public function chargesmaster()
    {
        // Source 1 — mall_chargemast (CATEGORY wale charges)
        $data = DB::table('mall_chargemast')
            ->leftJoin('subgroup', function ($join) {
                $join->on('subgroup.sub_code', '=', 'mall_chargemast.accountcode')
                    ->where('subgroup.propertyid', '=', $this->propertyid);
            })
            ->select(
                'mall_chargemast.*',
                'subgroup.name as accountname',
                DB::raw('(SELECT name FROM taxstru WHERE taxstru.propertyid = mall_chargemast.propertyid AND (taxstru.str_code = mall_chargemast.taxstru OR taxstru.id = mall_chargemast.taxstru) ORDER BY taxstru.sno LIMIT 1) as taxstruname'),
                DB::raw('(SELECT str_code FROM taxstru WHERE taxstru.propertyid = mall_chargemast.propertyid AND (taxstru.str_code = mall_chargemast.taxstru OR taxstru.id = mall_chargemast.taxstru) ORDER BY taxstru.sno LIMIT 1) as taxstru_code')
            )
            ->where('mall_chargemast.propertyid', $this->propertyid)
            ->orderBy('mall_chargemast.chargename')
            ->get()
            ->map(function ($row) {
                $row->source = 'MASTER';
                $row->revcodedisp = '';
                // Edit modal ke liye str_code use karo (numeric id nahi)
                if (! empty($row->taxstru_code)) {
                    $row->taxstru = $row->taxstru_code;
                }

                return $row;
            });

        // Source 2 — revmast (CHARGE category ka data yahin jata hai)
        // Bina iske CHARGE select karke banaye gaye revenue heads list me
        // dikhte hi nahi the — save hote the par kabhi dikhte nahi the.
        $revenueHeads = collect();
        if (DB::getSchemaBuilder()->hasTable('revmast')) {
            $revenueHeads = DB::table('revmast')
                ->leftJoin('subgroup', function ($join) {
                    $join->on('subgroup.sub_code', '=', 'revmast.ac_code')
                        ->where('subgroup.propertyid', '=', $this->propertyid);
                })
                ->select(
                    'revmast.id as id',
                    'revmast.rev_code',
                    'revmast.name',
                    'revmast.short_name',
                    'revmast.ac_code',
                    'revmast.tax_stru',
                    'revmast.flag_type',
                    'revmast.field_type',
                    'revmast.active',
                    'subgroup.name as accountname',
                    DB::raw('(SELECT name FROM taxstru WHERE taxstru.propertyid = revmast.propertyid AND taxstru.str_code = revmast.tax_stru ORDER BY taxstru.sno LIMIT 1) as taxstruname')
                )
                ->where('revmast.propertyid', $this->propertyid)
                ->where('revmast.Desk_code', 'FACL'.$this->propertyid)
                ->where('revmast.field_type', 'C')
                ->where('revmast.flag_type', 'FAC')
                ->orderBy('revmast.name')
                ->get()
                ->map(function ($row) {
                    // Blade ke har column ka ek common shape — taaki dono sources
                    // ek hi table me render ho sakein.
                    $shortcode = trim((string) $row->short_name);
                    $displayName = (string) $row->name;
                    if ($shortcode !== '' && str_starts_with($displayName, $shortcode.' - ')) {
                        $displayName = trim(substr($displayName, strlen($shortcode) + 3));
                    }

                    return (object) [
                        'source' => 'REVENUE',
                        'id' => $row->id,
                        'sn' => $row->id,
                        'chargecode' => $row->rev_code,
                        'revcodedisp' => $row->rev_code,
                        'chargename' => $displayName,
                        'shortcode' => null,
                        'saccode' => null,
                        'chargecategory' => 'CHARGE',
                        'calculationbasis' => null,
                        'unit' => null,
                        'taxstru' => $row->tax_stru,
                        'taxstruname' => $row->taxstruname,
                        'escalationyn' => null,
                        'billingfrequency' => null,
                        'accountcode' => $row->ac_code,
                        'accountname' => $row->accountname,
                        'activeyn' => $row->active === 'N' ? 0 : 1,
                    ];
                });
        }

        $data = $data->concat($revenueHeads)
            ->sortBy('chargename')
            ->values();

        // Account Name: sub-group me se sirf SAle A/c (nature = Sale) wale show karo
        $subgroupdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('nature', 'Sale')
            ->orderBy('name', 'ASC')
            ->get();

        $unitdata = collect();
        if (DB::getSchemaBuilder()->hasTable('unitmast')) {
            $unitdata = DB::table('unitmast')
                ->where('propertyid', $this->propertyid)
                ->where('activeYN', 'Y')
                ->orderBy('name', 'ASC')
                ->get(['ucode', 'name']);
        }

        $taxstrudata = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->distinct()
            ->orderBy('name', 'ASC')
            ->get(['str_code', 'name']);

        return view('property.mallmanagement.chargesmaster', [
            'data' => $data,
            'subgroupdata' => $subgroupdata,
            'unitdata' => $unitdata,
            'taxstrudata' => $taxstrudata,
            'username' => $this->username,
            'ncurdate' => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    /**
     * Short Code ko ek hi roop me laata hai — taaki "cam", "CAM" aur "C A M"
     * duplicate na maane jaayein. Beech ke extra spaces hata deta hai.
     */
    private function normalizeShortcode($value): string
    {
        return trim(preg_replace('/\s+/', ' ', strtoupper(trim((string) $value))));
    }

    public function submitchargesmaster(Request $request)
    {
        // CHARGE → sirf Account Name compulsory; CATEGORY → Unit + Account Name.
        // Pehle `if ($category !== '')` ki wajah se category khali chhodne par
        // poori validation skip ho jaati thi — account bhi required nahi rehta.
        // Isliye ab category khud mandatory hai aur account hamesha required.
        $request->merge(['chargecategory' => trim((string) $request->chargecategory)]);

        $request->validate([
            'chargecategory' => 'required|in:CHARGE,CATEGORY',
            'accountcode' => 'required',
        ], [
            'chargecategory.required' => 'Charge Category is required.',
            'chargecategory.in' => 'Charge Category is invalid.',
            'accountcode.required' => 'Account Name is required.',
        ]);

        $category = $request->chargecategory;

        if ($category === 'CATEGORY') {
            $request->validate([
                'unit' => 'required',
            ], [
                'unit.required' => 'Unit is required for Charge Category.',
            ]);
        }

        // Charge category = CHARGE → revmast table me insert (FACL desk)
        if ($category === 'CHARGE') {
            return $this->storeFaclCharge($request);
        }

        $request->merge(['shortcode' => $this->normalizeShortcode($request->shortcode)]);

        $request->validate([
            'chargename' => 'required|max:30',
            'shortcode' => ['required', 'between:3,5', 'regex:/^[A-Za-z ]+$/'],
        ], [
            'chargename.required' => 'Charge Name is required.',
            'shortcode.required' => 'Short Code is required.',
            'shortcode.between' => 'Short Code must be between 3 and 5 characters.',
            'shortcode.regex' => 'Short Code must contain only letters (space allowed), no special characters.',
        ]);

        $shortcode = $request->shortcode;

        // Duplicate shortcode check — same property. Error me batao ki kaunsa
        // charge us code par pehle se maujood hai (jaise CAM = COMMON AREA MAINTANCE).
        $duplicate = MallChargemast::where('propertyid', $this->propertyid)
            ->where('shortcode', $shortcode)
            ->first();

        if ($duplicate) {
            return response()->json([
                'success' => false,
                'message' => "Short Code '{$shortcode}' is already used by '{$duplicate->chargename}'. Please use a different one.",
            ]);
        }

        // Also check voucher_prefix for same v_type + propertyid (cross-check)
        $vpExists = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->where('v_type', $shortcode)
            ->exists();

        if ($vpExists) {
            return response()->json([
                'success' => false,
                'message' => "Short Code '{$shortcode}' is already used in voucher prefix. Please choose another.",
            ]);
        }

        // Auto-generate chargecode: sequence prefix + propertyid  e.g. 1103, 2103, 3103
        $lastCode = MallChargemast::where('propertyid', $this->propertyid)
            ->orderByRaw('chargecode * 1 DESC')
            ->value('chargecode');
        $chargecode = $lastCode ? ((int) substr($lastCode, 0, -strlen((string) $this->propertyid)) + 1).$this->propertyid : '1'.$this->propertyid;

        try {
            MallChargemast::create([
                'propertyid' => $this->propertyid,
                'chargecode' => $chargecode,
                'chargename' => strtoupper($request->chargename),
                'shortcode' => $shortcode,
                'saccode' => $request->saccode ?: null,
                'chargecategory' => $request->chargecategory ?: null,
                'calculationbasis' => $request->calculationbasis ?: null,
                'unit' => $request->unit ?: null,
                'taxstru' => $request->taxstru ?? 0.00,
                'escalationyn' => $request->escalationyn === '0' ? 0 : 1,
                'billingfrequency' => $request->billingfrequency ?: 'MONTHLY',
                'accountcode' => $request->accountcode ?: null,
                'u_name' => $this->username,
                'created_at' => now(),
                'u_ae' => 'A',
                'activeyn' => $request->activeyn === '0' ? 0 : 1,
            ]);

            // Save shortcode in voucher_prefix (v_type = shortcode, serial_no = 0)
            $vp_date_from = date('Y').'-04-01';
            $vp_date_to = (date('Y') + 1).'-03-31';
            DB::table('voucher_prefix')->insert([
                'propertyid' => $this->propertyid,
                'v_type' => $shortcode,
                'short_name' => $shortcode,
                'date_from' => $vp_date_from,
                'date_to' => $vp_date_to,
                'prefix' => (int) substr($vp_date_from, 0, 4),
                'start_srl_no' => 0,
                'u_name' => $this->username,
                'created_at' => now(),
                'u_ae' => 'a',
                'sysYN' => 'N',
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Charge Master saved successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    private function storeFaclCharge(Request $request)
    {
        $request->validate([
            'chargename' => 'required|max:30',
            'accountcode' => 'required',
        ], [
            'chargename.required' => 'Charge Name is required.',
            'accountcode.required' => 'Account Name is required.',
        ]);

        // Mall me FACL ek VOUCHER hai, department nahi. Charge ka naam banane ke
        // liye depart table ki zaroorat nahi — mall apna prefix khud rakhta hai.
        $deskcode = 'FACL'.$this->propertyid;
        $shortname = 'FACL';

        $chargename = strtoupper(trim($request->chargename));

        // Duplicate name check — same desk. Do exact shape match karte hain:
        // naya format 'FACL - X' aur legacy 'X'. LIKE isliye nahi — tenant DBs me
        // koi 'FAC - X' naam exist nahi karta, aur raw LIKE me user ka %/_ wildcard
        // ban jata.
        $exists = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('Desk_code', $deskcode)
            ->where('field_type', 'C')
            ->where(function ($query) use ($shortname, $chargename) {
                $query->where('name', $shortname.' - '.$chargename)
                    ->orWhere('name', $chargename);
            })
            ->exists();

        if ($exists) {
            return response()->json([
                'success' => false,
                'message' => "Charge '{$chargename}' already exists.",
            ]);
        }

        // Auto rev_code like itemcategory: FACL + propertyid + seq
        $maxcodeRow = DB::table('revmast')
            ->select('rev_code')
            ->where('propertyid', $this->propertyid)
            ->where('rev_code', 'like', $deskcode.'%')
            ->orderByRaw('CAST(SUBSTRING(rev_code, '.(strlen($deskcode) + 1).', LENGTH(rev_code)) AS UNSIGNED) DESC')
            ->first();

        if (! $maxcodeRow) {
            $code = $deskcode.'1';
        } else {
            $numericPart = (int) substr($maxcodeRow->rev_code, strlen($deskcode));
            $code = $deskcode.($numericPart + 1);
        }

        try {
            DB::table('revmast')->insert([
                'propertyid' => $this->propertyid,
                'rev_code' => $code,
                'name' => $shortname.' - '.$chargename,
                'short_name' => $shortname,
                'ac_code' => $request->accountcode ?: null,
                'tax_stru' => $request->taxstru ?: null,
                'type' => 'Cr',
                'flag_type' => 'FAC',
                'Desk_code' => $deskcode,
                'field_type' => 'C',
                'active' => $request->activeyn == '0' ? 'N' : 'Y',
                'SysYN' => 'N',
                'u_name' => $this->username,
                'created_at' => now(),
                'u_ae' => 'a',
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Charge saved successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    /**
     * revmast (FACL desk) ke revenue head record ka update — CHARGE category ka
     * data yahin hota hai, isliye edit bhi yahan se hona chahiye.
     */
    private function updateFaclCharge(Request $request)
    {
        $request->validate([
            'revcode' => 'required',
            'chargename' => 'required|max:30',
            'accountcode' => 'required',
        ], [
            'revcode.required' => 'Revenue code is required.',
            'chargename.required' => 'Charge Name is required.',
            'accountcode.required' => 'Account Name is required.',
        ]);

        $revcode = trim((string) $request->revcode);
        $deskcode = 'FACL'.$this->propertyid;

        $head = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('Desk_code', $deskcode)
            ->where('field_type', 'C')
            ->where('flag_type', 'FAC')
            ->where('rev_code', $revcode)
            ->first();

        if (! $head) {
            return response()->json([
                'success' => false,
                'message' => 'Revenue head nahi mila.',
            ], 422);
        }

        $chargename = strtoupper(trim($request->chargename));

        // revmast ka convention — "<short_name> - <name>". short_name khaali ho to
        // dangling " - " na lage, warna naam " - RENT" ban jayega.
        $shortName = trim((string) $head->short_name);
        $fullName = $shortName !== ''
            ? $shortName.' - '.$chargename
            : $chargename;

        try {
            DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('Desk_code', $deskcode)
                ->where('field_type', 'C')
                ->where('flag_type', 'FAC')
                ->where('rev_code', $revcode)
                ->update([
                    'name' => $fullName,
                    'ac_code' => $request->accountcode ?: null,
                    'tax_stru' => $request->taxstru ?: null,
                    'active' => $request->activeyn == '0' ? 'N' : 'Y',
                    'u_name' => $this->username,
                    'updated_at' => now(),
                ]);

            return response()->json([
                'success' => true,
                'message' => 'Revenue head updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function updatechargesmaster(Request $request)
    {
        // CHARGE category ka record revmast (revenue head) me hota hai — use alag
        // tarike se update karna padta hai. Pehle list me dikhta hi nahi tha.
        if (trim((string) $request->source) === 'REVENUE') {
            return $this->updateFaclCharge($request);
        }

        // CHARGE → sirf Account Name compulsory; CATEGORY → Unit + Account Name.
        // Category khali chhodne par pehle koi validation nahi chalti thi.
        $request->merge(['chargecategory' => trim((string) $request->chargecategory)]);

        $request->validate([
            'chargecategory' => 'required|in:CHARGE,CATEGORY',
            'accountcode' => 'required',
        ], [
            'chargecategory.required' => 'Charge Category is required.',
            'chargecategory.in' => 'Charge Category is invalid.',
            'accountcode.required' => 'Account Name is required.',
        ]);

        $category = $request->chargecategory;

        if ($category === 'CATEGORY') {
            $request->validate([
                'unit' => 'required',
            ], [
                'unit.required' => 'Unit is required for Charge Category.',
            ]);
        }

        $request->validate([
            'sn' => 'required|numeric',
            'chargename' => 'required|max:30',
        ]);

        try {
            $charge = MallChargemast::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            // Charge Code system khud banata hai (1103, 2103, 3103 ...). Edit form
            // me ye readonly hai — aur yahan request me bheja gaya value ignore
            // karke stored value hi rakhti hai. Pehle ye field bilkul padhi hi
            // nahi jati thi, isliye user ka change chupke se chhoot jaata tha.
            $oldChargeCode = trim((string) $charge->chargecode);

            if ($oldChargeCode !== '') {
                $chargecode = $oldChargeCode;
            } else {
                // Purani entry bina charge code ke — use ek baar set karne dena
                // zaroori hai, warna uska edit hi nahi ho paayega.
                $sentChargeCode = strtoupper(trim((string) $request->chargecode));

                $chargeCodeValidator = Validator::make(
                    ['chargecode' => $sentChargeCode],
                    ['chargecode' => ['required', 'max:30']],
                    [
                        'chargecode.required' => 'Charge Code is required.',
                        'chargecode.max' => 'Charge Code must be 30 characters or less.',
                    ]
                );

                if ($chargeCodeValidator->fails()) {
                    return response()->json([
                        'success' => false,
                        'message' => $chargeCodeValidator->errors()->first('chargecode'),
                    ]);
                }

                $duplicateCode = MallChargemast::where('propertyid', $this->propertyid)
                    ->where('chargecode', $sentChargeCode)
                    ->where('id', '!=', $charge->id)
                    ->first();

                if ($duplicateCode) {
                    return response()->json([
                        'success' => false,
                        'message' => "Charge Code '{$sentChargeCode}' is already used by '{$duplicateCode->chargename}'. Please use a different one.",
                    ]);
                }

                $chargecode = $sentChargeCode;
            }

            $oldShortcode = trim((string) $charge->shortcode);
            $sentShortcode = $this->normalizeShortcode($request->shortcode);

            // Short Code ek baar set hone ke baad badla nahi ja sakta — wo
            // voucher_prefix ka v_type hai aur usi ke against bill numbers
            // chalti rehti hain. Edit form me isliye ye readonly hai.
            if ($oldShortcode !== '') {
                $shortcode = $oldShortcode;
            } else {
                // Purani entries (jaise MAINTENANCE) short code ke bina bani hain.
                // Unhe ek baar set karne dena zaroori hai, warna unka edit hi
                // nahi ho paayega.
                $request->merge(['shortcode' => $sentShortcode]);

                $shortcodeValidator = Validator::make(
                    ['shortcode' => $sentShortcode],
                    ['shortcode' => ['required', 'between:3,5', 'regex:/^[A-Za-z ]+$/']],
                    [
                        'shortcode.required' => 'Short Code is required.',
                        'shortcode.between' => 'Short Code must be between 3 and 5 characters.',
                        'shortcode.regex' => 'Short Code must contain only letters (space allowed), no special characters.',
                    ]
                );

                if ($shortcodeValidator->fails()) {
                    return response()->json([
                        'success' => false,
                        'message' => $shortcodeValidator->errors()->first('shortcode'),
                    ]);
                }

                $shortcode = $sentShortcode;

                // Duplicate check — current record ko chhodkar. Error me batao
                // ki kaunsa charge us code par pehle se maujood hai.
                $duplicate = MallChargemast::where('propertyid', $this->propertyid)
                    ->where('shortcode', $shortcode)
                    ->where('id', '!=', $charge->id)
                    ->first();

                if ($duplicate) {
                    return response()->json([
                        'success' => false,
                        'message' => "Short Code '{$shortcode}' is already used by '{$duplicate->chargename}'. Please use a different one.",
                    ]);
                }

                $vpExists = DB::table('voucher_prefix')
                    ->where('propertyid', $this->propertyid)
                    ->where('v_type', $shortcode)
                    ->exists();

                if ($vpExists) {
                    return response()->json([
                        'success' => false,
                        'message' => "Short Code '{$shortcode}' is already used in voucher prefix. Please choose another.",
                    ]);
                }
            }

            $charge->update([
                'chargecode' => $chargecode,
                'chargename' => strtoupper($request->chargename),
                'shortcode' => $shortcode,
                'saccode' => $request->saccode ?: null,
                'chargecategory' => $request->chargecategory ?: null,
                'calculationbasis' => $request->calculationbasis ?: null,
                'unit' => $request->unit ?: null,
                'taxstru' => $request->taxstru ?? 0.00,
                'escalationyn' => $request->escalationyn === '0' ? 0 : 1,
                'billingfrequency' => $request->billingfrequency ?: 'MONTHLY',
                'accountcode' => $request->accountcode ?: null,
                'u_name' => $this->username,
                'u_ae' => 'U',
                'created_at' => now(),
                'activeyn' => $request->activeyn === '0' ? 0 : 1,
            ]);

            // Update voucher_prefix — v_type = shortcode
            // Agar oldShortcode null tha (purani entry) to INSERT karo, warna UPDATE
            if (empty($oldShortcode)) {
                // Purani entry thi bina shortcode ke — fresh insert
                $vpAlreadyExists = DB::table('voucher_prefix')
                    ->where('propertyid', $this->propertyid)
                    ->where('v_type', $shortcode)
                    ->exists();

                if (! $vpAlreadyExists) {
                    $vp_date_from = date('Y').'-04-01';
                    $vp_date_to = (date('Y') + 1).'-03-31';
                    DB::table('voucher_prefix')->insert([
                        'propertyid' => $this->propertyid,
                        'v_type' => $shortcode,
                        'short_name' => $shortcode,
                        'date_from' => $vp_date_from,
                        'date_to' => $vp_date_to,
                        'prefix' => (int) substr($vp_date_from, 0, 4),
                        'start_srl_no' => 0,
                        'u_name' => $this->username,
                        'created_at' => now(),
                        'u_ae' => 'a',
                        'sysYN' => 'N',
                    ]);
                }
            }

            return response()->json([
                'success' => true,
                'message' => 'Charge Master updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function deletechargesmaster($sn)
    {
        try {
            $charge = MallChargemast::where('id', $sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $shortcode = $charge->shortcode;

            $charge->delete();

            return response()->json([
                'success' => true,
                'message' => 'Charge Master deleted successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function exportChargesmasterExcel()
    {
        try {
            $data = DB::table('mall_chargemast')
                ->leftJoin('subgroup', function ($join) {
                    $join->on('subgroup.sub_code', '=', 'mall_chargemast.accountcode')
                        ->where('subgroup.propertyid', '=', $this->propertyid);
                })
                ->select(
                    'mall_chargemast.*',
                    'subgroup.name as accountname',
                    DB::raw('(SELECT name FROM taxstru WHERE taxstru.propertyid = mall_chargemast.propertyid AND taxstru.str_code = mall_chargemast.taxstru ORDER BY taxstru.sno LIMIT 1) as taxstruname')
                )
                ->where('mall_chargemast.propertyid', $this->propertyid)
                ->orderBy('mall_chargemast.chargename')
                ->get();

            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $compName = $company->comp_name ?? 'Charge Master Report';

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Charge Master');

            $lastCol = 'M';

            // Row 1: Company Name
            $sheet->mergeCells('A1:'.$lastCol.'1');
            $sheet->setCellValue('A1', $compName);
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:'.$lastCol.'2');
            $sheet->setCellValue('A2', 'Charge Master Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date
            $sheet->mergeCells('A3:'.$lastCol.'3');
            $sheet->setCellValue('A3', 'Generated on: '.date('d/m/Y h:i A'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Headers
            $headers = [
                '#',
                'Charge Code',
                'Charge Name',
                'SAC Code',
                'Category',
                'Calculation Basis',
                'Unit',
                'Tax %',
                'Escalation',
                'Frequency',
                'Account Name',
                'Active',
            ];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A'.$currentRow, $i + 1);
                $sheet->setCellValue('B'.$currentRow, $row->chargecode);
                $sheet->setCellValue('C'.$currentRow, $row->chargename);
                $sheet->setCellValue('D'.$currentRow, $row->saccode);
                $sheet->setCellValue('E'.$currentRow, $row->chargecategory);
                $sheet->setCellValue('F'.$currentRow, $row->calculationbasis);
                $sheet->setCellValue('G'.$currentRow, $row->unit);
                $sheet->setCellValue('H'.$currentRow, $row->taxstruname ?? $row->taxstru);
                $sheet->setCellValue('I'.$currentRow, $row->escalationyn == 1 ? 'Yes' : 'No');
                $sheet->setCellValue('J'.$currentRow, $row->billingfrequency);
                $sheet->setCellValue('K'.$currentRow, $row->accountname ?? $row->accountcode);
                $sheet->setCellValue('L'.$currentRow, $row->activeyn == 1 ? 'Active' : 'Inactive');

                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                $sheet->getStyle('B'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('C'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(15);
            $sheet->getColumnDimension('C')->setWidth(20);
            $sheet->getColumnDimension('D')->setWidth(18);
            $sheet->getColumnDimension('E')->setwIDTH(18);
            $sheet->getColumnDimension('F')->setWidth(10);
            $sheet->getColumnDimension('G')->setWidth(10);
            $sheet->getColumnDimension('H')->setWidth(12);
            $sheet->getColumnDimension('I')->setWidth(15);
            $sheet->getColumnDimension('J')->setWidth(15);
            $sheet->getColumnDimension('K')->setWidth(10);
            $sheet->getColumnDimension('L')->setWidth(10);

            $filename = 'Charge_Master_Report_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (\Exception $e) {
            Log::error('Charge Master Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    public function printChargesmaster()
    {
        $data = DB::table('mall_chargemast')
            ->leftJoin('subgroup', function ($join) {
                $join->on('subgroup.sub_code', '=', 'mall_chargemast.accountcode')
                    ->where('subgroup.propertyid', '=', $this->propertyid);
            })
            ->select(
                'mall_chargemast.*',
                'subgroup.name as accountname',
                DB::raw('(SELECT name FROM taxstru WHERE taxstru.propertyid = mall_chargemast.propertyid AND taxstru.str_code = mall_chargemast.taxstru ORDER BY taxstru.sno LIMIT 1) as taxstruname')
            )
            ->where('mall_chargemast.propertyid', $this->propertyid)
            ->orderBy('mall_chargemast.chargename')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.chargesmasterprint', [
            'company' => $company,
            'data' => $data,
            'reportTitle' => 'Charge Master Report',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('charge-master-report-'.date('YmdHis').'.pdf');
    }

    /* ------------------------------------------------------------------
       TESTING PHASE HELPERS
       Only columns that ACTUALLY exist in the table get saved.
       The rest are returned as "data_not_saved" so the view can warn.
    ------------------------------------------------------------------ */
    private function existingColumns($table)
    {
        if (! DB::getSchemaBuilder()->hasTable($table)) {
            return collect();
        }

        return collect(DB::getSchemaBuilder()->getColumnListing($table))
            ->map(function ($col) {
                return strtolower($col);
            });
    }

    private function onlyExistingColumns(array $data, $table)
    {
        $cols = $this->existingColumns($table);
        if ($cols->isEmpty()) {
            return [$data, array_keys($data)];
        }
        $skipped = [];
        foreach ($data as $key => $value) {
            if (! $cols->contains(strtolower($key))) {
                $skipped[] = $key;
                unset($data[$key]);
            }
        }

        return [$data, $skipped];
    }

    private function serviceBillingDate()
    {
        $base = strtotime($this->ncurdate ?: date('Y-m-d'));
        if ($base === false) {
            $base = time();
        }

        return date('Y-m-01', $base);
    }

    /**
     * voucher_prefix ka primary key (propertyid, v_type, date_from) hai — matlab
     * ek hi v_type ki saal-dar-saal rows maujood ho sakti hain. Isliye har read
     * aur write ko CURRENT financial year ki row tak hi seemit karna zaroori hai.
     * Financial year 1 April se 31 March tak chalta hai.
     */
    private function serviceVoucherFiscalYear($date)
    {
        $ts = strtotime((string) $date);
        if ($ts === false) {
            $ts = strtotime($this->ncurdate ?: date('Y-m-d'));
        }
        if ($ts === false) {
            $ts = time();
        }

        $year = (int) date('Y', $ts);
        $month = (int) date('n', $ts);
        $startYear = $month >= 4 ? $year : $year - 1;

        return [
            'from' => $startYear.'-04-01',
            'to' => ($startYear + 1).'-03-31',
            'prefix' => $startYear,
        ];
    }

    private function serviceDueDate($lease, $billingFromDate = null)
    {
        $raw = $lease->duedateofmonth ?? null;
        if (! $raw) {
            return null;
        }

        // DATE type store hai (e.g. 2026-10-10) — day nikalo
        // Ya phir direct integer bhi ho sakta hai (legacy)
        if (strpos((string) $raw, '-') !== false) {
            $dueDay = (int) date('d', strtotime($raw));
        } else {
            $dueDay = (int) $raw;
        }

        if ($dueDay < 1 || $dueDay > 31) {
            return null;
        }

        // Billing period ka fromdate use karo agar pass hua ho,
        // warna system ncurdate se fallback (backward compat)
        $baseDate = $billingFromDate ?: $this->serviceBillingDate();
        $monthStart = date('Y-m-01', strtotime($baseDate));
        $daysInMonth = (int) date('t', strtotime($monthStart));
        $offset = min($dueDay, $daysInMonth) - 1;

        return date('Y-m-d', strtotime($monthStart.' +'.$offset.' days'));
    }

    private function serviceChargeKey($value)
    {
        return preg_replace('/[^A-Z0-9]/', '', strtoupper(trim((string) $value)));
    }

    private function serviceChargeRole($chargecode, $chargename = '', $master = null)
    {
        $code = strtoupper(trim((string) ($master->chargecode ?? $chargecode)));
        $name = strtoupper(trim((string) ($master->chargename ?? $chargename)));
        $short = strtoupper(trim((string) ($master->shortcode ?? '')));
        $text = $code.' '.$name.' '.$short;

        if (str_contains($short, 'RENT')
            || str_contains($name, 'BASE RENT')
            || str_contains($name, 'RENT') && ! str_contains($name, 'RENTFREE')) {
            return 'RENT';
        }
        if (str_contains($short, 'CAM')
            || str_contains($name, 'COMMON AREA')
            || preg_match('/\bCAM\b/', $text)
            || str_contains($text, 'RAM')) {
            return 'CAM';
        }

        return '';
    }

    private function serviceChargeMasters()
    {
        if (! DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            return collect();
        }

        // CHARGE aur CATEGORY dono yahin rehte hain (chargecategory column).
        // revmast ke FACL rows CHARGE nahi hain — wo sirf voucher heads hain
        // (DISCOUNT, ROUND OFF), isliye yahan merge nahi karte.
        return DB::table('mall_chargemast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('chargecode')
            ->get();
    }

    private function serviceRevenueHeads()
    {
        if (! DB::getSchemaBuilder()->hasTable('revmast')) {
            return collect();
        }

        return DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('Desk_code', 'FACL'.$this->propertyid)
            ->where('field_type', 'C')
            ->where('flag_type', 'FAC')
            ->where('active', 'Y')
            ->orderBy('rev_code')
            ->get(['rev_code', 'name', 'ac_code']);
    }

    private function serviceMasterForCharge($chargecode, $chargename = '', $masters = null)
    {
        $masters = $masters ?: $this->serviceChargeMasters();
        $rawCode = strtoupper(trim((string) $chargecode));
        $rawName = strtoupper(trim((string) $chargename));
        $codeKey = $this->serviceChargeKey($rawCode);
        $nameKey = $this->serviceChargeKey($rawName);

        foreach ($masters as $master) {
            $masterCode = strtoupper(trim((string) $master->chargecode));
            $masterName = strtoupper(trim((string) $master->chargename));
            $shortCode = strtoupper(trim((string) ($master->shortcode ?? '')));
            $masterCodeKey = $this->serviceChargeKey($masterCode);
            $masterNameKey = $this->serviceChargeKey($masterName);
            $shortCodeKey = $this->serviceChargeKey($shortCode);

            if ($rawCode !== '' && ($rawCode === $masterCode || $rawCode === $shortCode)) {
                return $master;
            }
            if ($codeKey !== '' && ($codeKey === $masterCodeKey || $codeKey === $masterNameKey || $codeKey === $shortCodeKey)) {
                return $master;
            }
            if ($nameKey !== '' && ($nameKey === $masterCodeKey || $nameKey === $masterNameKey)) {
                return $master;
            }
        }

        $combined = $rawCode.' '.$rawName;
        $combinedKey = $this->serviceChargeKey($combined);
        foreach ($masters as $master) {
            $masterKey = $this->serviceChargeKey(
                ($master->chargecode ?? '').' '.($master->chargename ?? '').' '.($master->shortcode ?? '')
            );
            if (($codeKey !== '' && str_contains($masterKey, $codeKey))
                || ($nameKey !== '' && str_contains($masterKey, $nameKey))
                || ($combinedKey !== '' && str_contains($masterKey, $combinedKey))) {
                return $master;
            }
        }

        if (str_contains($combined, 'BASE') && str_contains($combined, 'RENT')) {
            foreach ($masters as $master) {
                $name = strtoupper((string) $master->chargename);
                if (str_contains($name, 'BASE') && str_contains($name, 'RENT')) {
                    return $master;
                }
            }
        }

        if (str_contains($combined, 'CAM') || str_contains($combined, 'COMMON AREA')) {
            foreach ($masters as $master) {
                if ($this->serviceChargeRole($master->chargecode, $master->chargename, $master) === 'CAM') {
                    return $master;
                }
            }
        }

        return null;
    }

    private function serviceRevenueCode($chargecode, $chargename, $heads = null, $accountcode = '')
    {
        $heads = $heads ?: $this->serviceRevenueHeads();
        $rawChargeCode = strtoupper(trim((string) $chargecode));
        $role = $this->serviceChargeRole($chargecode, $chargename);
        $isRent = $role === 'RENT';
        $isCam = $role === 'CAM';

        $nameKey = $this->serviceChargeKey($chargename);
        foreach ($heads as $head) {
            $headText = strtoupper(trim((string) $head->rev_code).' '.trim((string) $head->name));
            $headCodeKey = $this->serviceChargeKey($head->rev_code);
            $headNameKey = $this->serviceChargeKey($head->name);
            $headAccount = trim((string) ($head->ac_code ?? ''));
            if ($accountcode !== '' && $headAccount !== '' && trim((string) $accountcode) === $headAccount) {
                return $head->rev_code;
            }
            if ($isRent && str_contains($headText, 'RENT')) {
                return $head->rev_code;
            }
            if ($isCam && (str_contains($headText, 'CAM') || str_contains($headText, 'COMMON')
                || str_contains($headText, 'MAINT') || str_contains($headText, 'RAM'))) {
                return $head->rev_code;
            }
            if ($rawChargeCode !== '' && ($rawChargeCode === $head->rev_code || $rawChargeCode === $head->name)) {
                return $head->rev_code;
            }
            if ($rawChargeCode !== '' && $headCodeKey === $this->serviceChargeKey($rawChargeCode)) {
                return $head->rev_code;
            }
            if ($nameKey !== '' && strlen($nameKey) >= 3
                && ($headNameKey === $nameKey || str_ends_with($headNameKey, $nameKey))) {
                return $head->rev_code;
            }
        }

        return '';
    }

    private function serviceLeaseDetail($leaseid, $unitid = null, $shopcode = null)
    {
        if (! $leaseid || ! DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
            return null;
        }

        $query = DB::table('mall_lease_dtl')
            ->where('propertyid', $this->propertyid)
            ->where('lease_id', $leaseid);

        // Multi-shop lease: har shop ki apni dtl row hoti hai — sahi row hi lo
        if ($unitid !== null && $unitid !== '') {
            $row = (clone $query)->where('unitid', $unitid)->first();
            if ($row) {
                return $row;
            }
        }
        if ($shopcode !== null && $shopcode !== '' && DB::getSchemaBuilder()->hasColumn('mall_lease_dtl', 'shopcode')) {
            $row = (clone $query)->where('shopcode', $shopcode)->first();
            if ($row) {
                return $row;
            }
        }

        return $query->first();
    }

    // Shop code for a lease's unit (charges/escalation per-shop hote hain)
    private function serviceLeaseShopcode($leaseid, $unitid = null)
    {
        if (! $leaseid || ! $unitid || ! DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
            return null;
        }

        $query = DB::table('mall_lease_dtl')
            ->where('propertyid', $this->propertyid)
            ->where('lease_id', $leaseid)
            ->where('unitid', $unitid);

        if (DB::getSchemaBuilder()->hasColumn('mall_lease_dtl', 'shopcode')) {
            return $query->value('shopcode');
        }

        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            return DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->where('id', $unitid)
                ->value('shopcode');
        }

        return null;
    }

    /**
     * Escalation schedule se billing date ke hisab se effective rate nikalo.
     * mall_lease_escalation mein effectivefrom <= billingDate ka latest row dhundho.
     * Agar koi row nahi mila (billing date pehle sab rows se) to fallbackRate return karo.
     *
     * @param  int|null  $leaseid
     * @param  string  $chargecode  'RENT' | 'CAM'
     * @param  string  $billingDate  'YYYY-MM-DD'
     * @param  float  $fallbackRate
     * @return float
     */
    private function getEscalatedRate($leaseid, $chargecode, $billingDate, $fallbackRate, $shopcode = null)
    {
        if (! $leaseid || ! DB::getSchemaBuilder()->hasTable('mall_lease_escalation')) {
            return $fallbackRate;
        }

        $query = DB::table('mall_lease_escalation')
            ->where('propertyid', $this->propertyid)
            ->where('leaseid', $leaseid)
            ->where('chargecode', $chargecode)
            ->where('effectivefrom', '<=', $billingDate);

        // Escalation har shop ke liye alag hoti hai — sirf usi shop ki row lo
        if ($shopcode !== null && $shopcode !== '' && DB::getSchemaBuilder()->hasColumn('mall_lease_escalation', 'shopcode')) {
            $query->where(function ($q) use ($shopcode) {
                $q->where('shopcode', $shopcode)
                  ->orWhereNull('shopcode')
                  ->orWhere('shopcode', '');
            });
        }

        $row = $query
            ->orderByDesc('effectivefrom')
            ->first(['newrate', 'newamount']);

        if ($row) {
            // newrate prefer karo (per-sqft for AREA, flat amount for FIXED)
            if ((float) $row->newrate > 0) {
                return (float) $row->newrate;
            }
            // Fallback: newamount check (fixed rent ke liye kabhi kabhi sirf newamount store hoti hai)
            if ((float) ($row->newamount ?? 0) > 0) {
                return (float) $row->newamount;
            }
        }

        return $fallbackRate;
    }

    private function servicePeriodBounds($fromperiod = null, $toperiod = null)
    {
        $billing = strtotime($this->serviceBillingDate());
        $from = $fromperiod ?: date('Y-m', $billing);
        $to = $toperiod ?: $from;
        $fromTime = strtotime($from.'-01');
        $toTime = strtotime($to.'-01');

        if ($fromTime === false) {
            $fromTime = $billing;
            $from = date('Y-m', $fromTime);
        }
        if ($toTime === false) {
            $toTime = $fromTime;
            $to = $from;
        }

        return [
            date('Y-m-01', $fromTime),
            date('Y-m-t', $toTime),
        ];
    }

    private function serviceChargePeriodMonths($charge, $fromdate, $toperiod)
    {
        $fromTime = $fromdate ? strtotime(date('Y-m-01', strtotime($fromdate))) : false;
        $toTime = $toperiod ? strtotime(date('Y-m-01', strtotime($toperiod))) : false;
        if ($fromTime === false || $toTime === false) {
            return 1;
        }

        $effectiveFrom = $charge->effectivefrom ?? null;
        $effectiveTo = $charge->effectiveto ?? null;
        if ($effectiveFrom) {
            $effectiveFromTime = strtotime(date('Y-m-01', strtotime($effectiveFrom)));
            if ($effectiveFromTime !== false && $effectiveFromTime > $fromTime) {
                $fromTime = $effectiveFromTime;
            }
        }
        if ($effectiveTo) {
            $effectiveToTime = strtotime(date('Y-m-01', strtotime($effectiveTo)));
            if ($effectiveToTime !== false && $effectiveToTime < $toTime) {
                $toTime = $effectiveToTime;
            }
        }
        if ($toTime < $fromTime) {
            return 0;
        }

        $months = ((int) date('Y', $toTime) - (int) date('Y', $fromTime)) * 12
            + (int) date('n', $toTime) - (int) date('n', $fromTime) + 1;
        $cycle = strtoupper(trim((string) ($charge->billingcycle ?? 'MONTHLY')));
        $divisor = 1;
        if (in_array($cycle, ['QUARTERLY', 'QUARTER', 'QTR'], true)) {
            $divisor = 3;
        } elseif (in_array($cycle, ['ANNUAL', 'YEARLY', 'YEAR'], true)) {
            $divisor = 12;
        }

        return max(1, (int) round($months / $divisor));
    }

    private function serviceChargeOverlapsPeriod($charge, $fromdate, $toperiod)
    {
        $from = $charge->effectivefrom ?? null;
        $to = $charge->effectiveto ?? null;

        if ($from && $from > $toperiod) {
            return false;
        }
        if ($to && $to < $fromdate) {
            return false;
        }

        return true;
    }

    private function serviceSyntheticCharge($lease, $detail, $master)
    {
        return (object) [
            'propertyid' => $this->propertyid,
            'leaseid' => $lease->id ?? $lease->hdr_id ?? null,
            'chargecode' => $master->chargecode,
            'chargename' => $master->chargename,
            'calculationmethod' => $master->calculationbasis ?: 'AREA',
            'basis' => $master->calculationbasis,
            'area' => $detail->chargeablearea ?? 0,
            'rate' => 0,
            'amount' => 0,
            'billingcycle' => $master->billingfrequency ?: 'MONTHLY',
            'gstapplicable' => 1,
            'gstpercent' => 0,
            'effectivefrom' => $detail->effectivefrom ?? $lease->leasecommencementdate,
            'effectiveto' => $detail->effectiveto ?? $lease->leaseexpirydate,
        ];
    }

    private function normalizeServiceCharge($charge, $detail, $masters, $heads, $periodMonths = 1, $billingPeriodDate = null, $shopcode = null)
    {
        $rawCode = trim((string) ($charge->chargecode ?? ''));
        $rawName = trim((string) ($charge->chargename ?? ''));
        $master = $this->serviceMasterForCharge($rawCode, $rawName, $masters);
        $chargeCode = $master->chargecode ?? $rawCode;
        $chargeName = $master->chargename ?? $rawName;
        $role = $this->serviceChargeRole($chargeCode, $chargeName, $master);
        $method = strtoupper(trim((string) ($charge->calculationmethod ?: ($master->calculationbasis ?? 'AREA'))));
        $method = str_replace(' ', '_', $method);
        if (in_array($method, ['PER_SQFT', 'SQFT', 'PER_SQ.FT'], true)) {
            $method = 'AREA';
        }
        if ($method === 'FLAT') {
            $method = 'FIXED';
        }
        if (! in_array($method, ['AREA', 'FIXED'], true)) {
            $method = 'AREA';
        }

        $area = (float) ($charge->area ?? 0);
        $detailArea = (float) ($detail->chargeablearea ?? 0);
        if ($detailArea > 0) {
            $area = $detailArea;
        }
        $storedRate = (float) ($charge->rate ?? 0);
        $storedAmount = (float) ($charge->amount ?? 0);

        // Billing date: fromperiod ke start se milta hai (servicePeriodBounds se set hota hai)
        // Escalation: billing date ke hisab se current effective rate nikalo
        $leaseid = $charge->leaseid ?? null;
        $billingDate = $billingPeriodDate ?: $this->serviceBillingDate();

        // Path A: tablemall_lease_charges mein rate/amount stored hai
        // Escalation check: sirf RENT/CAM ke liye — agar escalation table mein zyada current rate hai to override karo
        if ($storedRate > 0 && $leaseid && in_array($role, ['RENT', 'CAM'], true)) {
            $escalatedRate = $this->getEscalatedRate($leaseid, $role, $billingDate, $storedRate, $shopcode);
            if ($escalatedRate > 0 && abs($escalatedRate - $storedRate) > 0.0001) {
                $storedRate = $escalatedRate;
            }
        }

        $rate = $storedRate;
        $amountCycle = $method === 'FIXED' ? $storedRate : ($area > 0 ? $storedRate * $area : 0);

        if ($storedAmount > 0 && $storedRate <= 0) {
            // Amount stored but no rate — check escalation for FIXED/RENT/CAM
            // Escalation se override try karo (FIXED rent ke liye newamount bhi check hoga)
            if ($leaseid && in_array($role, ['RENT', 'CAM'], true)) {
                $escalatedAmt = $this->getEscalatedRate($leaseid, $role, $billingDate, $storedAmount, $shopcode);
                if ($escalatedAmt > 0) {
                    $storedAmount = $escalatedAmt;
                }
            }
            $amountCycle = $storedAmount;
            if ($method === 'FIXED') {
                $rate = $storedAmount;
            } elseif ($area > 0) {
                $rate = $storedAmount / $area;
            }
        } elseif ($storedRate > 0) {
            // Rate already set (possibly escalation-updated above) — recalc amount
            $amountCycle = $method === 'FIXED' ? $storedRate : ($area > 0 ? $storedRate * $area : 0);
            $rate = $storedRate;
        } elseif ($storedRate <= 0 && $storedAmount <= 0 && $detail && $role !== '') {
            // Path B: nothing stored — fall back to mall_lease_dtl + escalation
            if ($role === 'RENT') {
                $rentType = strtoupper((string) ($detail->renttype ?? ''));
                $rentBasis = strtoupper((string) ($detail->rentbasis ?? ''));
                $rentRate = (float) ($detail->rentrate ?? 0);
                $currentRent = (float) ($detail->currentrent ?? 0);
                $minimumRent = (float) ($detail->minimumrent ?? 0);
                if ($rentType === 'FIXED_AMOUNT' || $rentBasis === 'FLAT') {
                    $method = 'FIXED';
                    $baseRate = $minimumRent > 0 ? $minimumRent : ($rentRate > 0 ? $rentRate : $currentRent);
                    // Escalation: fixed amount bhi escalation se override ho sakta hai
                    $rate = $leaseid ? $this->getEscalatedRate($leaseid, 'RENT', $billingDate, $baseRate, $shopcode) : $baseRate;
                } else {
                    $method = 'AREA';
                    // Escalation: per-sqft rate escalation se nikalo
                    $baseRate = $rentRate;
                    if ($baseRate <= 0 && $currentRent > 0) {
                        $baseRate = $area > 0 ? $currentRent / $area : $currentRent;
                    }
                    $rate = $leaseid ? $this->getEscalatedRate($leaseid, 'RENT', $billingDate, $baseRate, $shopcode) : $baseRate;
                }
            } else {
                $camRate = (float) ($detail->camrate ?? 0);
                $currentCam = (float) ($detail->currentcam ?? 0);
                $minimumCam = (float) ($detail->mincam ?? 0);
                if ($minimumCam > 0) {
                    $method = 'FIXED';
                    $baseRate = $minimumCam;
                    $rate = $leaseid ? $this->getEscalatedRate($leaseid, 'CAM', $billingDate, $baseRate, $shopcode) : $baseRate;
                } else {
                    $method = 'AREA';
                    $baseRate = $camRate;
                    if ($baseRate <= 0 && $currentCam > 0) {
                        $baseRate = $area > 0 ? $currentCam / $area : $currentCam;
                    }
                    $rate = $leaseid ? $this->getEscalatedRate($leaseid, 'CAM', $billingDate, $baseRate, $shopcode) : $baseRate;
                }
            }
            $amountCycle = $method === 'FIXED' ? $rate : ($area > 0 ? $rate * $area : 0);
        }

        $periodMonths = max(1, (int) round((float) $periodMonths));
        $amount = round($amountCycle * $periodMonths, 2);
        $gst = (float) ($charge->gstpercent ?? 0);

        // Agar gstpercent 0 hai lekin master me taxstru set hai to taxstru se total rate nikalo
        if ($gst <= 0 && ! empty($master->taxstru)) {
            $taxRows = DB::table('taxstru')
                ->where('propertyid', $this->propertyid)
                ->where('str_code', $master->taxstru)
                ->get(['rate']);
            if ($taxRows->isNotEmpty()) {
                $gst = (float) $taxRows->sum('rate');
            }
        }

        return [
            'sn' => $charge->id ?? null,
            'leaseid' => $charge->leaseid ?? null,
            'source_chargecode' => $rawCode,
            'chargecode' => $chargeCode,
            'chargename' => $chargeName,
            'shortcode' => $master->shortcode ?? $rawCode,
            'calculationmethod' => $method,
            'basis' => $method,
            'area' => $method === 'FIXED' ? 0 : round($area, 2),
            'rate' => round($rate, 4),
            'amount' => $amount,
            'periodmonths' => $periodMonths,
            'role' => $role,
            'stored_rate' => round($storedRate, 4),
            'stored_amount' => round($storedAmount, 2),
            'billingcycle' => $charge->billingcycle ?? ($master->billingfrequency ?? 'MONTHLY'),
            'gstapplicable' => (int) ($charge->gstapplicable ?? 0),
            'gstpercent' => round($gst, 4),
            'effectivefrom' => $charge->effectivefrom ?? null,
            'effectiveto' => $charge->effectiveto ?? null,
            'revcode' => $this->serviceRevenueCode($chargeCode, $chargeName, $heads, $master->accountcode ?? ''),
        ];
    }

    private function serviceLeaseChargeRows($lease, $chargecode = '', $fromperiod = null, $toperiod = null, $unitid = null)
    {
        // Multi-shop lease: caller kabhi header row bhejta hai (id), kabhi
        // hdr+dtl joined row (hdr_id). Dono support karo.
        $leaseid = $lease->id ?? $lease->hdr_id ?? null;
        if (! $leaseid) {
            return collect();
        }
        if ($unitid === null || $unitid === '') {
            $unitid = $lease->unitid ?? null;
        }
        $shopcode = $lease->shopcode ?? null;
        if (($shopcode === null || $shopcode === '') && $unitid) {
            $shopcode = $this->serviceLeaseShopcode($leaseid, $unitid);
        }

        $fromdate = null;
        $toperiodDate = null;
        [$fromdate, $toperiodDate] = $this->servicePeriodBounds($fromperiod, $toperiod);
        $detail = $this->serviceLeaseDetail($leaseid, $unitid, $shopcode);
        $masters = $this->serviceChargeMasters();
        $heads = $this->serviceRevenueHeads();
        $rawCode = trim((string) $chargecode);
        $selectedMaster = $rawCode !== '' ? $this->serviceMasterForCharge($rawCode, '', $masters) : null;
        $selectedCode = $selectedMaster->chargecode ?? strtoupper($rawCode);
        $selectedRole = $selectedMaster
            ? $this->serviceChargeRole($selectedCode, $selectedMaster->chargename, $selectedMaster)
            : $this->serviceChargeRole($rawCode);
        $rows = [];

        if (DB::getSchemaBuilder()->hasTable('tablemall_lease_charges')) {
            $chargeQuery = DB::table('tablemall_lease_charges')
                ->where('propertyid', $this->propertyid)
                ->where('leaseid', $leaseid);

            // Charges har shop ke liye alag store hote hain (shopcode column)
            if ($shopcode !== null && $shopcode !== '' && DB::getSchemaBuilder()->hasColumn('tablemall_lease_charges', 'shopcode')) {
                $chargeQuery->where(function ($q) use ($shopcode) {
                    $q->where('shopcode', $shopcode)
                      ->orWhereNull('shopcode')
                      ->orWhere('shopcode', '');
                });
            }

            $charges = $chargeQuery
                ->orderBy('effectivefrom')
                ->orderBy('chargecode')
                ->get();

            foreach ($charges as $charge) {
                if (! $this->serviceChargeOverlapsPeriod($charge, $fromdate, $toperiodDate)) {
                    continue;
                }
                $periodMonths = $this->serviceChargePeriodMonths($charge, $fromdate, $toperiodDate);
                if ($periodMonths < 1) {
                    continue;
                }

                $normalized = $this->normalizeServiceCharge($charge, $detail, $masters, $heads, $periodMonths, $fromdate, $shopcode);
                if ($rawCode !== ''
                    && strtoupper((string) $normalized['source_chargecode']) !== strtoupper($rawCode)
                    && strtoupper((string) $normalized['chargecode']) !== strtoupper($selectedCode)) {
                    continue;
                }
                $rows[] = $normalized;
            }
        }

        $existingCodes = collect($rows)->pluck('chargecode')->map(function ($code) {
            return strtoupper((string) $code);
        })->all();
        $existingRoles = collect($rows)->pluck('role')->filter()->map(function ($role) {
            return strtoupper((string) $role);
        })->all();
        $syntheticRoles = $rawCode !== '' ? ($selectedRole !== '' ? [$selectedRole] : []) : ['RENT', 'CAM'];
        foreach ($syntheticRoles as $syntheticRole) {
            if (in_array(strtoupper((string) $syntheticRole), $existingRoles, true)) {
                continue;
            }
            $master = collect($masters)->first(function ($item) use ($syntheticRole) {
                return (int) ($item->activeyn ?? 0) === 1
                    && strtoupper((string) $this->serviceChargeRole($item->chargecode, $item->chargename, $item)) === strtoupper((string) $syntheticRole);
            });
            if (! $master || ! $detail) {
                continue;
            }
            $synthetic = $this->serviceSyntheticCharge($lease, $detail, $master);
            if (! $this->serviceChargeOverlapsPeriod($synthetic, $fromdate, $toperiodDate)) {
                continue;
            }
            $periodMonths = $this->serviceChargePeriodMonths($synthetic, $fromdate, $toperiodDate);
            if ($periodMonths < 1) {
                continue;
            }
            $rows[] = $this->normalizeServiceCharge($synthetic, $detail, $masters, $heads, $periodMonths, $fromdate, $shopcode);
            $existingCodes[] = strtoupper((string) $master->chargecode);
            $existingRoles[] = strtoupper((string) $syntheticRole);
        }

        return collect($rows)->values();
    }

    private function serviceChargeList($tenantid, $unitid = null)
    {
        $unique = [];

        // 1. Party Location (`mall_partylocation`) se assigned services/charges lo
        if (DB::getSchemaBuilder()->hasTable('mall_partylocation') && DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $plQuery = DB::table('mall_partylocation as pl')
                ->join('mall_chargemast as c', function ($j) {
                    $j->on('c.chargecode', '=', 'pl.servicecode')
                      ->on('c.propertyid', '=', 'pl.propertyid');
                })
                ->where('pl.propertyid', $this->propertyid)
                ->where('pl.tenantcode', $tenantid)
                ->where('pl.activeyn', 1)
                ->where('c.activeyn', 1);

            if ($unitid !== null && $unitid !== '') {
                // If shop unitid is passed, get shopcode from mall_shopmast
                $unitShopCode = DB::table('mall_shopmast')->where('id', $unitid)->where('propertyid', $this->propertyid)->value('shopcode');
                if ($unitShopCode) {
                    $plQuery->where('pl.shopcode', $unitShopCode);
                }
            }

            $plCharges = $plQuery->select([
                'c.chargecode',
                'c.chargename',
                'c.shortcode',
                'c.calculationbasis',
                'c.taxstru',
                'c.accountcode'
            ])->distinct()->get();

            foreach ($plCharges as $pc) {
                $k = strtoupper((string) $pc->chargecode);
                $unique[$k] = [
                    'chargecode'        => $pc->chargecode,
                    'chargename'        => $pc->chargename,
                    'shortcode'         => $pc->shortcode ?: $pc->chargecode,
                    'calculationbasis'  => $pc->calculationbasis ?? 'AREA',
                    'calculationmethod' => $pc->calculationbasis ?? 'AREA',
                    'basis'             => $pc->calculationbasis ?? 'AREA',
                    'rate'              => 0,
                    'amount'            => 0,
                    'gstpercent'        => 0,
                    'gstapplicable'     => 1,
                    'taxstru'           => $pc->taxstru,
                    'accountcode'       => $pc->accountcode ?? '',
                ];
            }
        }

        // 2. Lease tables se charges lo (agar lease bani hui ho)
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $query = DB::table('mall_lease_hdr')
                ->where('propertyid', $this->propertyid)
                ->where('tenantid', $tenantid)
                ->where('activeyn', 1)
                ->whereIn('leasestatus', ['ACTIVE', 'DRAFT']);

            if ($unitid !== null && $unitid !== '') {
                if (DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
                    $query->whereExists(function ($q) use ($unitid) {
                        $q->select(DB::raw(1))
                          ->from('mall_lease_dtl')
                          ->whereColumn('mall_lease_dtl.lease_id', 'mall_lease_hdr.id')
                          ->whereColumn('mall_lease_dtl.propertyid', 'mall_lease_hdr.propertyid')
                          ->where('mall_lease_dtl.unitid', $unitid);
                    });
                } else {
                    $query->where('unitid', $unitid);
                }
            }

            $leases = $query->orderBy('id')->get();
            $rows = collect();
            foreach ($leases as $lease) {
                $rows = $rows->concat($this->serviceLeaseChargeRows($lease, '', null, null, $unitid));
            }

            foreach ($rows as $row) {
                $key = strtoupper((string) $row['chargecode']);
                if ($key === '') {
                    continue;
                }
                $unique[$key] = $row;
            }
        }

        return collect(array_values($unique))->sortBy('chargename')->values();
    }

    private function facilitySundryRows($appdate = null)
    {
        if (! DB::getSchemaBuilder()->hasTable('sundrytype')) {
            return collect();
        }

        $appdate = $appdate ?: $this->serviceBillingDate();

        // Purchase bill style: har nature ki apni latest appdate — revmast join bhi
        $latestDates = DB::table('sundrytype')
            ->selectRaw('nature, MAX(appdate) as appdate')
            ->where('propertyid', $this->propertyid)
            ->where('vtype', 'FACL'.$this->propertyid)
            ->whereDate('appdate', '<=', $appdate)
            ->groupBy('nature');

        $rows = DB::table('sundrytype')
            ->select('sundrytype.*', 'revmast.field_type')
            ->joinSub($latestDates, 'latest', function ($join) {
                $join->on('sundrytype.nature', '=', 'latest.nature')
                    ->on('sundrytype.appdate', '=', 'latest.appdate');
            })
            ->leftJoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'sundrytype.revcode')
                    ->where('revmast.propertyid', $this->propertyid);
            })
            ->where('sundrytype.propertyid', $this->propertyid)
            ->where('sundrytype.vtype', 'FACL'.$this->propertyid)
            ->orderBy('sundrytype.sno')
            ->get();

        return $rows;
    }

    private function serviceSundryFormulaValue($formula, $values)
    {
        $formula = trim((string) $formula);
        if ($formula === '') {
            return 0;
        }

        $tokens = preg_split('/([+-])/', $formula, -1, PREG_SPLIT_DELIM_CAPTURE);
        $total = 0;
        $sign = 1;
        foreach ($tokens as $token) {
            $token = trim((string) $token);
            if ($token === '+') {
                $sign = 1;

                continue;
            }
            if ($token === '-') {
                $sign = -1;

                continue;
            }
            if ($token === '') {
                continue;
            }
            if (! ctype_digit($token)) {
                continue;
            }
            $total += $sign * (float) ($values[(int) $token] ?? 0);
        }

        return $total;
    }

    private function serviceSundryTaxType($row)
    {
        $text = strtoupper(trim((string) ($row->sundry_code ?? '')).' '
            .trim((string) ($row->disp_name ?? '')).' '
            .trim((string) ($row->nature ?? '')));
        if (str_contains($text, 'IGST')) {
            return 'IGST';
        }
        if (str_contains($text, 'SGST')) {
            return 'SGST';
        }
        if (str_contains($text, 'CGST')) {
            return 'CGST';
        }
        if (str_contains($text, 'COMP CESS') || str_contains($text, 'COMPCESS')) {
            return 'CESS';
        }

        return '';
    }

    private function serviceSundryCalculation($baseAmount, $fallbackGst, $rows, $fallbackRevcode = '')
    {
        $baseAmount = round((float) $baseAmount, 2);
        $fallbackGst = round((float) $fallbackGst, 2);
        $fallbackTax = [
            'CGST' => $fallbackGst / 2,
            'SGST' => $fallbackGst / 2,
            'IGST' => 0,
            'CESS' => 0,
        ];
        $values = [1 => $baseAmount];
        $net = $baseAmount;
        $adjustment = 0;
        $roundOff = 0;
        $taxTotal = 0;
        $taxMap = ['CGST' => null, 'SGST' => null, 'IGST' => null, 'CESS' => 0];
        $postedTaxTotal = 0;
        $postedTaxMap = ['CGST' => null, 'SGST' => null, 'IGST' => null, 'CESS' => 0];
        $result = [];

        foreach ($rows as $index => $row) {
            $nature = strtoupper(trim((string) ($row->nature ?? '')));
            $label = strtoupper(trim((string) ($row->disp_name ?? '')));
            $code = strtoupper(trim((string) ($row->sundry_code ?? '')));
            $taxType = $this->serviceSundryTaxType($row);
            $isTax = $taxType !== '';
            $isPosted = strtoupper((string) ($row->postyn ?? 'Y')) !== 'N';
            $isAmount = $nature === 'AMOUNT' || $code === '3103' || $label === 'AMOUNT';
            $isRound = $nature === 'ROUND OFF' || $code === '12103' || str_contains($label, 'ROUND');
            $isNet = $nature === 'NET AMOUNT' || str_contains($label, 'NET');
            $isDiscount = $nature === 'DISCOUNT' || $nature === 'REDEMPTION' || $code === '7103';
            $isAddition = $nature === 'ADDITION';
            $isServiceCharge = $nature === 'SERVICE CHARGE' || $code === '14103';
            $svalue = round((float) ($row->svalue ?? 0), 4);
            $isPercent = strtoupper(trim((string) ($row->peroramt ?? ''))) === 'P' || $isTax;
            $formulaBase = $this->serviceSundryFormulaValue($row->calcformula ?? '', $values);
            $value = 0;
            $base = $formulaBase;
            $signed = 0;
            $postAmount = 0;

            if ($isAmount) {
                $value = $baseAmount;
                $base = $baseAmount;
                $net = $baseAmount;
                $values[$index + 1] = $value;
            } elseif ($isRound) {
                $value = round($net) - $net;
                $base = $net;
                $roundOff += $value;
                $net += $value;
                $postAmount = $value;
                $values[$index + 1] = $value;
            } elseif ($isNet) {
                $value = $net;
                $base = 0;
                $postAmount = $value;
                $values[$index + 1] = $value;
            } else {
                if ($isTax && $svalue <= 0) {
                    $value = $fallbackTax[$taxType] ?? 0;
                } elseif ($isPercent) {
                    $value = $base * $svalue / 100;
                } elseif ($svalue > 0) {
                    $value = $svalue;
                }

                $sign = strtoupper(trim((string) ($row->calcsign ?? ''))) === '-' ? -1 : 1;
                $signed = $sign * abs($value);
                if ($isTax) {
                    $taxTotal += $signed;
                    if ($taxMap[$taxType] === null) {
                        $taxMap[$taxType] = 0;
                    }
                    $taxMap[$taxType] += $signed;
                    if ($isPosted) {
                        $postedTaxTotal += $signed;
                        if ($postedTaxMap[$taxType] === null) {
                            $postedTaxMap[$taxType] = 0;
                        }
                        $postedTaxMap[$taxType] += $signed;
                    }
                } elseif ($isDiscount || $isAddition || $isServiceCharge) {
                    $adjustment += $signed;
                }
                $net += $signed;
                $values[$index + 1] = abs($value);
            }

            $result[] = [
                'sno' => $index + 1,
                'sundry_code' => $row->sundry_code ?? '',
                'disp_name' => $row->disp_name ?? '',
                'nature' => $row->nature ?? '',
                'calcsign' => $row->calcsign ?? '',
                'calcformula' => $row->calcformula ?? '',
                'peroramt' => $row->peroramt ?? '',
                'svalue' => $row->svalue ?? 0,
                'amount' => round($isRound ? $postAmount : abs($value), 2),
                'baseamount' => round($base, 2),
                'revcode' => trim((string) ($row->revcode ?? '')) ?: $fallbackRevcode,
                'postyn' => $row->postyn ?? 'Y',
            ];
        }

        if ($taxTotal === 0 && $fallbackGst !== 0.0) {
            $taxMap['CGST'] = $fallbackTax['CGST'];
            $taxMap['SGST'] = $fallbackTax['SGST'];
            $taxTotal = $fallbackGst;
            if ($postedTaxTotal === 0.0) {
                $postedTaxMap['CGST'] = $fallbackTax['CGST'];
                $postedTaxMap['SGST'] = $fallbackTax['SGST'];
                $postedTaxTotal = $fallbackGst;
            }
        }
        foreach (['CGST', 'SGST', 'IGST'] as $taxKey) {
            if ($taxMap[$taxKey] === null) {
                $taxMap[$taxKey] = 0;
            }
            if ($postedTaxMap[$taxKey] === null) {
                $postedTaxMap[$taxKey] = 0;
            }
        }

        return [
            'rows' => $result,
            'cgst' => $postedTaxMap['CGST'],
            'sgst' => $postedTaxMap['SGST'],
            'igst' => $postedTaxMap['IGST'],
            'cess' => $postedTaxMap['CESS'],
            'totalTax' => $postedTaxTotal,
            'postedcgst' => $postedTaxMap['CGST'],
            'postedsgst' => $postedTaxMap['SGST'],
            'postedigst' => $postedTaxMap['IGST'],
            'postedcess' => $postedTaxMap['CESS'],
            'postedTotalTax' => $postedTaxTotal,
            'adjustment' => $adjustment,
            'roundOff' => $roundOff,
            'net' => $net,
        ];
    }

    // Manual Service Bill Entry (Mall Management)
    public function servicebillentry()
    {
        $services = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $services = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('chargename')
                ->get(['chargecode', 'chargename', 'shortcode', 'calculationbasis', 'unit', 'taxstru', 'billingfrequency']);
        }

        // TENANTS = subgroup ke SABHI tenants (group me jo bhi hai)
        // NOTE: koi USER keh raha tha lease-only — galat. Saare dikhte hain,
        // lekin section 1/2/3 tabhi autofill hoga jab selected tenant ki lease ho.
        $tenants = collect();
        if (DB::getSchemaBuilder()->hasTable('subgroup')) {
            $tenants = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('group_code', 'like', '28'.$this->propertyid.'%')
                ->orderBy('name')
                ->get(['sub_code', 'name']);
        }

        $units = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $units = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('shopname')
                ->get(['id', 'shopcode', 'shopname', 'floorid', 'carpetarea', 'builtuparea', 'chargeablearea', 'shopstatus']);
        }

        $floors = collect();
        if (DB::getSchemaBuilder()->hasTable('hkfloors')) {
            $floors = DB::table('hkfloors')
                ->where('propertyid', $this->propertyid)
                ->orderBy('name')
                ->get(['id', 'name']);
        }

        // FACL revenue heads (revmast) — bill ki har line ka revcode source
        $revheads = collect();
        if (DB::getSchemaBuilder()->hasTable('revmast')) {
            $revheads = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('Desk_code', 'FACL'.$this->propertyid)
                ->where('field_type', 'C')
                ->where('flag_type', 'FAC')
                ->where('active', 'Y')
                ->orderBy('rev_code')
                ->get(['rev_code', 'name', 'ac_code']);
        }

        // Previous bills (same party+service) — view ke liye basic list
        $prevBills = collect();
        if (DB::getSchemaBuilder()->hasTable('facilitybill1')) {
            $prevBills = DB::table('facilitybill1 as b')
                ->where('b.propertyid', $this->propertyid)
                ->orderBy('b.vno', 'desc')
                ->select(
                    DB::raw("COALESCE(NULLIF(b.docid1, ''), b.docid) as docid"),
                    'b.vno',
                    'b.vdate',
                    'b.partycode',
                    'b.facilitycode',
                    DB::raw('MIN(b.forperiod) as fromperiod'),
                    DB::raw('MAX(b.toperiod) as toperiod'),
                    DB::raw('SUM(b.amount) as amount')
                )
                ->groupByRaw("COALESCE(NULLIF(b.docid1, ''), b.docid), b.vno, b.vdate, b.partycode, b.facilitycode")
                ->limit(10)
                ->get();
        }

        return view('property.mallmanagement.servicebillentry', [
            'services' => $services,
            'tenants' => $tenants,
            'units' => $units,
            'floors' => $floors,
            'revheads' => $revheads,
            'prevBills' => $prevBills,
            'sundry' => $this->facilitySundryRows(),
            'billingDate' => $this->serviceBillingDate(),
            'username' => $this->username,
            'ncurdate' => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    // AJAX: Units leased to a tenant (for unit dropdown on tenant select)
    // ─── Service Bill Entry: shared query helpers ───────────────────────
    private function sbeUnits($tenantid)
    {
        if (! DB::getSchemaBuilder()->hasTable('mall_lease_hdr') || ! DB::getSchemaBuilder()->hasTable('mall_shopmast') || ! DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
            return collect();
        }

        $select = [
            'mall_shopmast.id',
            'mall_shopmast.shopcode',
            'mall_shopmast.shopname',
            'mall_shopmast.floorid',
            'mall_shopmast.carpetarea',
            'mall_shopmast.builtuparea',
            'mall_shopmast.chargeablearea',
            'mall_shopmast.shopstatus',
            'hdr.leasestatus',
            'hdr.agreementno',
        ];
        if ($this->existingColumns('mall_lease_hdr')->contains('duedateofmonth')) {
            $select[] = 'hdr.duedateofmonth';
        }

        return DB::table('mall_lease_hdr as hdr')
            ->join('mall_lease_dtl as dtl', function ($join) {
                $join->on('dtl.lease_id', '=', 'hdr.id')
                    ->on('dtl.propertyid', '=', 'hdr.propertyid');
            })
            ->join('mall_shopmast', function ($join) {
                $join->on('mall_shopmast.id', '=', 'dtl.unitid')
                    ->on('mall_shopmast.propertyid', '=', 'hdr.propertyid');
            })
            ->where('hdr.propertyid', $this->propertyid)
            ->where('hdr.tenantid', $tenantid)
            ->where('hdr.activeyn', 1)
            ->whereIn('hdr.leasestatus', ['ACTIVE', 'DRAFT'])
            ->where('mall_shopmast.activeyn', 1)
            ->orderBy('mall_shopmast.shopname')
            ->select($select)
            ->get();
    }

    private function sbeCharges($tenantid, $unitid = null)
    {
        return $this->serviceChargeList($tenantid, $unitid);
    }

    private function sbePrevBills($tenantid, $servicecode = '')
    {
        if (! DB::getSchemaBuilder()->hasTable('facilitybill1')) {
            return collect();
        }

        $query = DB::table('facilitybill1')
            ->where('propertyid', $this->propertyid)
            ->where('partycode', $tenantid ?? '');

        // Charge filter optional — khali bhejne par tenant ke SAARE bills
        if (trim((string) $servicecode) !== '') {
            $query->where('facilitycode', $servicecode);
        }

        $rows = $query->get(['docid', 'docid1', 'vno', 'vdate', 'forperiod', 'toperiod', 'amount', 'revcode']);

        return $rows->groupBy(function ($row) {
            return trim((string) ($row->docid1 ?? '')) ?: $row->docid;
        })->map(function ($group, $docid) {
            $first = $group->first();
            $total = round($group->sum('amount'), 2);

            return [
                'docid' => $docid,
                'vno' => $first->vno,
                'vdate' => $first->vdate,
                'period' => date('Y-m', strtotime($group->min('forperiod'))).' to '.date('Y-m', strtotime($group->max('toperiod'))),
                'amount' => $total,
                'balance' => $total,
                'status' => 'UNPAID',
            ];
        })->values();
    }

    // AJAX: Tenant select = EK hi request (details + units + charges + prev bills)
    public function gettenantbundle(Request $request)
    {
        $tenantid = $request->tenantid;
        $pid = $this->propertyid;

        $tenant = null;
        if (DB::getSchemaBuilder()->hasTable('subgroup')) {
            $tenant = DB::table('subgroup')
                ->where('propertyid', $pid)
                ->where('sub_code', $tenantid)
                ->first(['sub_code', 'name', 'conperson', 'mobile', 'email', 'address', 'panno', 'gstin', 'tradename']);
        }

        $prevAgreementNo = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $prevAgreementNo = MallLeaseHdr::where('propertyid', $pid)
                ->where('tenantid', $tenantid)
                ->whereNotNull('agreementno')
                ->orderBy('id', 'desc')
                ->value('agreementno');
        }

        $units = $this->sbeUnits($tenantid);
        $charges = $this->sbeCharges($tenantid);

        return response()->json([
            'tenant' => $tenant ?: new \stdClass,
            'prev_agreementno' => $prevAgreementNo,
            'units' => $units,
            'charges' => $charges,
            'prevbills' => $this->sbePrevBills($tenantid),
            'sundry' => $this->facilitySundryRows(),
        ]);
    }

    public function getunitsbytenant(Request $request)
    {
        return response()->json($this->sbeUnits($request->tenantid));
    }

    // AJAX: Tenant ki lease me jo charges hain — sirf wahi (faltu charges nahi)
    public function gettenantcharges(Request $request)
    {
        return response()->json($this->sbeCharges($request->tenantid, $request->unitid));
    }

    public function fetchleasecharges(Request $request)
    {
        $request->validate([
            'tenantid' => 'required',
            'unitid' => 'required',
            'chargecode' => 'required',
        ]);

        // Multi-shop lease: shop ka lease DTL me map hota hai (HDR.unitid = primary shop)
        $lease = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
            $lease = DB::table('mall_lease_hdr as hdr')
                ->join('mall_lease_dtl as dtl', function ($j) {
                    $j->on('dtl.lease_id', '=', 'hdr.id')
                      ->on('dtl.propertyid', '=', 'hdr.propertyid');
                })
                ->where('hdr.propertyid', $this->propertyid)
                ->where('hdr.tenantid', $request->tenantid)
                ->where('dtl.unitid', $request->unitid)
                ->where('hdr.activeyn', 1)
                ->whereIn('hdr.leasestatus', ['ACTIVE', 'DRAFT'])
                ->orderByDesc('hdr.id')
                ->select('hdr.*')
                ->first();
        }
        if (! $lease) {
            $lease = DB::table('mall_lease_hdr')
                ->where('propertyid', $this->propertyid)
                ->where('tenantid', $request->tenantid)
                ->where('unitid', $request->unitid)
                ->where('activeyn', 1)
                ->whereIn('leasestatus', ['ACTIVE', 'DRAFT'])
                ->orderBy('id', 'desc')
                ->first();
        }

        if (! $lease) {
            return response()->json([
                'success' => false,
                'message' => 'No active lease was found for the selected tenant and unit.',
            ], 422);
        }

        $fromInput = trim((string) $request->fromperiod);
        $toInput = trim((string) $request->toperiod);
        if (! preg_match('/^\d{4}-\d{2}$/', $fromInput)
            || ! preg_match('/^\d{4}-\d{2}$/', $toInput)
            || ! checkdate((int) substr($fromInput, 5, 2), 1, (int) substr($fromInput, 0, 4))
            || ! checkdate((int) substr($toInput, 5, 2), 1, (int) substr($toInput, 0, 4))) {
            return response()->json([
                'success' => false,
                'message' => 'The billing period must be a valid month.',
            ], 422);
        }
        [$fromdate, $toperiodDate] = $this->servicePeriodBounds($fromInput, $toInput);
        if ($fromdate > $toperiodDate) {
            return response()->json([
                'success' => false,
                'message' => 'The start period cannot be later than the end period.',
            ], 422);
        }
        $charges = $this->serviceLeaseChargeRows(
            $lease,
            $request->chargecode,
            $fromdate,
            $toperiodDate,
            $request->unitid
        );

        if ($charges->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'The selected charge is not available in the lease agreement for this billing period.',
            ], 422);
        }

        return response()->json([
            'success' => true,
            'lease' => $lease,
            'charges' => $charges,
            'period' => ['from' => $fromdate, 'to' => $toperiodDate],
            'sundry' => $this->facilitySundryRows($fromdate),
            'billingdate' => $this->serviceBillingDate(),
            'duedate' => $this->serviceDueDate($lease, $fromdate),
        ]);
    }

    // AJAX: Tenant + Charge select → us tenant ke SAARE shops ki rows
    // (multi-shop billing — ek charge, sab shops, ek bill)
    public function fetchallshopcharges(Request $request)
    {
        $request->validate([
            'tenantid' => 'required',
            'chargecode' => 'required',
        ]);

        $tenantid = $request->tenantid;
        $chargecode = $request->chargecode;
        $fromInput = trim((string) ($request->fromperiod ?? $this->serviceBillingDate()));
        $toInput = trim((string) ($request->toperiod ?? $this->serviceBillingDate()));

        // YYYY-MM format → YYYY-MM-01 agar sirf month aaya
        if (preg_match('/^\d{4}-\d{2}$/', $fromInput)) {
            $fromInput = $fromInput.'-01';
        }
        if (preg_match('/^\d{4}-\d{2}$/', $toInput)) {
            // Last day of month
            $toInput = date('Y-m-t', strtotime($toInput.'-01'));
        }

        [$fromdate, $toperiodDate] = $this->servicePeriodBounds($fromInput, $toInput);

        $unitids = $request->input('unitids', []);

        // 1. Get Charge Master details
        $chargeObj = null;
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $chargeObj = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where('chargecode', $chargecode)
                ->first();
        }

        $shortCodeUpper = strtoupper(trim((string) ($chargeObj->shortcode ?? '')));
        $chargeNameUpper = strtoupper(trim((string) ($chargeObj->chargename ?? '')));
        $calcBasisUpper = strtoupper(trim((string) ($chargeObj->calculationbasis ?? '')));
        $isKesco = ($shortCodeUpper === 'ELE' || strpos($chargeNameUpper, 'KESKO') !== false || strpos($chargeNameUpper, 'KESCO') !== false);
        $isDg = ($shortCodeUpper === 'PDG' || strpos($chargeNameUpper, 'DG') !== false);
        $isPowerCharge = ($isKesco || $isDg || $calcBasisUpper === 'CALCULATED' || strpos($chargeNameUpper, 'POWER') !== false || strpos($chargeNameUpper, 'ELECTRIC') !== false);

        // 2. POWER BILLING LOGIC: Validate against Tenant Party Location (`mall_partylocation`) & `mall_shoppowerconsumption`
        if ($isPowerCharge) {
            // First check if this charge/service is assigned to this tenant in mall_partylocation
            $plShops = collect();
            if (DB::getSchemaBuilder()->hasTable('mall_partylocation') && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
                $plQuery = DB::table('mall_partylocation as pl')
                    ->join('mall_shopmast as s', function ($j) {
                        $j->on('s.shopcode', '=', 'pl.shopcode')
                          ->on('s.propertyid', '=', 'pl.propertyid');
                    })
                    ->where('pl.propertyid', $this->propertyid)
                    ->where('pl.tenantcode', $tenantid)
                    ->where('pl.servicecode', $chargecode)
                    ->where('pl.activeyn', 1)
                    ->where('s.activeyn', 1);

                if (! empty($unitids)) {
                    $plQuery->whereIn('s.id', $unitids);
                }

                $plShops = $plQuery->select([
                    's.id as unitid',
                    's.shopcode',
                    's.shopname',
                    's.floorid',
                    's.chargeablearea'
                ])->distinct()->get();
            }

            // Fallback: if not mapped specifically in partylocation, get all tenant shops
            if ($plShops->isEmpty() && DB::getSchemaBuilder()->hasTable('mall_partylocation')) {
                $plQuery = DB::table('mall_partylocation as pl')
                    ->join('mall_shopmast as s', function ($j) {
                        $j->on('s.shopcode', '=', 'pl.shopcode')
                          ->on('s.propertyid', '=', 'pl.propertyid');
                    })
                    ->where('pl.propertyid', $this->propertyid)
                    ->where('pl.tenantcode', $tenantid)
                    ->where('pl.activeyn', 1)
                    ->where('s.activeyn', 1);

                if (! empty($unitids)) {
                    $plQuery->whereIn('s.id', $unitids);
                }

                $plShops = $plQuery->select([
                    's.id as unitid',
                    's.shopcode',
                    's.shopname',
                    's.floorid',
                    's.chargeablearea'
                ])->distinct()->get();
            }

            if ($plShops->isEmpty() && DB::getSchemaBuilder()->hasTable('mall_lease_hdr') && DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
                $plShops = DB::table('mall_lease_hdr as hdr')
                    ->join('mall_lease_dtl as dtl', function ($j) {
                        $j->on('dtl.lease_id', '=', 'hdr.id')
                          ->on('dtl.propertyid', '=', 'hdr.propertyid');
                    })
                    ->join('mall_shopmast as s', function ($j) {
                        $j->on('s.id', '=', 'dtl.unitid')
                          ->on('s.propertyid', '=', 'hdr.propertyid');
                    })
                    ->where('hdr.propertyid', $this->propertyid)
                    ->where('hdr.tenantid', $tenantid)
                    ->where('hdr.activeyn', 1)
                    ->when(! empty($unitids), function ($q) use ($unitids) {
                        $q->whereIn('dtl.unitid', $unitids);
                    })
                    ->select([
                        's.id as unitid',
                        's.shopcode',
                        's.shopname',
                        's.floorid',
                        's.chargeablearea'
                    ])->distinct()->get();
            }

            if ($plShops->isEmpty()) {
                return response()->json([
                    'success' => false,
                    'message' => 'No mapped location/shop found for this tenant in Party Location.',
                ], 422);
            }

            // Power Consumption Fetch
            $billingMonth = substr($fromdate, 0, 7); // YYYY-MM
            $allRows = [];

            // GST % from tax structure
            $gstPercent = 0;
            if (!empty($chargeObj->taxstru) && DB::getSchemaBuilder()->hasTable('taxstru')) {
                $gstPercent = (float) DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $chargeObj->taxstru)
                    ->sum('rate');
            }

            foreach ($plShops as $sh) {
                $shopCode = (string) ($sh->shopcode ?? '');
                if ($shopCode === '') {
                    continue;
                }

                $powerRow = null;
                if (DB::getSchemaBuilder()->hasTable('mall_shoppowerconsumption')) {
                    $powerRow = DB::table('mall_shoppowerconsumption')
                        ->where('property_id', $this->propertyid)
                        ->where('shop_code', $shopCode)
                        ->where('month', $billingMonth)
                        ->first();
                }

                if (! $powerRow) {
                    continue;
                }

                $totUnits = (float) ($powerRow->consumption_kwh ?? 0);
                $rowRate  = 0;
                $rowUnits = 0;
                $rowAmt   = 0;

                if ($isDg) {
                    // DG Power calculation
                    $dgPct   = (float) ($powerRow->dg_percentage ?? 0);
                    $rowRate = (float) ($powerRow->dg_rate ?? 0);
                    $rowUnits = round($totUnits * $dgPct / 100, 2);
                    $rowAmt   = round((float) ($powerRow->dg ?? ($rowUnits * $rowRate)), 2);
                } else {
                    // KESCO / Grid Power calculation
                    $kescoPct = (float) ($powerRow->kesco_percentage ?? 0);
                    $rowRate  = (float) ($powerRow->kesco_rate ?? 0);
                    $rowUnits = round($totUnits * $kescoPct / 100, 2);
                    $rowAmt   = round((float) ($powerRow->kesco ?? ($rowUnits * $rowRate)), 2);
                }

                if ($rowAmt <= 0 && $rowUnits <= 0) {
                    continue;
                }

                $allRows[] = [
                    'chargecode'        => $chargecode,
                    'chargename'        => $chargeObj->chargename ?? ($isDg ? 'POWER(DG)' : 'POWER(KESKO)'),
                    'calculationbasis'  => 'METER',
                    'calculationmethod' => 'METER',
                    'basis'             => 'METER',
                    'area'              => $rowUnits, // Consumed Units
                    'rate'              => $rowRate,
                    'amount'            => $rowAmt,
                    'gstpercent'        => $gstPercent,
                    'gstapplicable'     => 1,
                    'taxstru'           => $chargeObj->taxstru ?? '',
                    'accountcode'       => $chargeObj->accountcode ?? '',
                    'shopname'          => $sh->shopname ?? '',
                    'shopcode'          => $sh->shopcode ?? '',
                    'floorid'           => $sh->floorid ?? '',
                    'unitid'            => $sh->unitid ?? '',
                    'leaseid'           => null,
                ];
            }

            if (empty($allRows)) {
                return response()->json([
                    'success' => false,
                    'message' => 'No power consumption data found for selected month (' . $billingMonth . ') in Shop Power Consumption table.',
                ], 422);
            }

            return response()->json([
                'success'          => true,
                'rows'             => $allRows,
                'period'           => ['from' => $fromdate, 'to' => $toperiodDate],
                'sundry'           => $this->facilitySundryRows($fromdate),
                'billingdate'      => $this->serviceBillingDate(),
                'duedate'          => null,
                'billingstartfrom' => null,
            ]);
        }

        // 3. LEASE / AREA CHARGES LOGIC (Rent, CAM, etc.)
        if (! DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            return response()->json(['success' => false, 'message' => 'The lease table is unavailable.'], 422);
        }

        $leases = DB::table('mall_lease_hdr as hdr')
            ->join('mall_lease_dtl as dtl', function ($j) {
                $j->on('dtl.lease_id', '=', 'hdr.id')
                    ->on('dtl.propertyid', '=', 'hdr.propertyid');
            })
            ->join('mall_shopmast as shopmast', function ($j) {
                $j->on('shopmast.id', '=', 'dtl.unitid')
                    ->on('shopmast.propertyid', '=', 'hdr.propertyid');
            })
            ->where('hdr.propertyid', $this->propertyid)
            ->where('hdr.tenantid', $tenantid)
            ->where('hdr.activeyn', 1)
            ->whereIn('hdr.leasestatus', ['ACTIVE', 'DRAFT'])
            ->when(! empty($unitids), function ($q) use ($unitids) {
                $q->whereIn('dtl.unitid', $unitids);
            })
            ->orderBy('shopmast.shopname')
            ->select(array_values(array_merge([
                'hdr.id as hdr_id',
                'hdr.leasestatus',
                'hdr.billingstartfrom',
                'hdr.leasecommencementdate',
                'hdr.leaseexpirydate',
                'dtl.id as dtl_id',
                'dtl.lease_id',
                'dtl.propertyid as dtl_propertyid',
                'dtl.unitid',
                'dtl.unittype',
                'dtl.carpetarea',
                'dtl.builtuparea',
                'dtl.chargeablearea',
                'dtl.renttype',
                'dtl.rentbasis',
                'dtl.rentrate',
                'dtl.minimumrent',
                'dtl.currentrent',
                'dtl.camrate',
                'dtl.mincam',
                'dtl.currentcam',
                'dtl.effectivefrom',
                'dtl.effectiveto',
                'dtl.remarks',
                'dtl.u_ae',
                'dtl.u_name',
                'dtl.created_at',
                'dtl.activeyn',
                'shopmast.shopname',
                'shopmast.shopcode',
                'shopmast.chargeablearea as shop_chargeablearea',
                'shopmast.floorid',
            ], $this->existingColumns('mall_lease_hdr')->contains('billingcycle') ? ['hdr.billingcycle'] : [])))
            ->get();

        if ($leases->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No active lease was found for this tenant.',
            ], 422);
        }

        $allRows = [];
        $duedate = null;
        $billingstartfrom = null;

        foreach ($leases as $lease) {
            $chargeRows = $this->serviceLeaseChargeRows($lease, $chargecode, $fromdate, $toperiodDate, $lease->unitid);
            if ($chargeRows->isEmpty()) {
                continue;
            }
            if (! $duedate) {
                $duedate = $this->serviceDueDate($lease, $fromdate);
            }
            if (! $billingstartfrom && ! empty($lease->billingstartfrom)) {
                $billingstartfrom = $lease->billingstartfrom;
            }
            foreach ($chargeRows as $row) {
                if ((float) ($row['amount'] ?? 0) <= 0 && (float) ($row['rate'] ?? 0) <= 0) {
                    continue;
                }
                $row['shopname'] = $lease->shopname ?? '';
                $row['shopcode'] = $lease->shopcode ?? '';
                $row['floorid'] = $lease->floorid ?? '';
                $row['unitid'] = $lease->unitid ?? '';
                $row['leaseid'] = $lease->hdr_id ?? '';
                $allRows[] = $row;
            }
        }

        if (empty($allRows)) {
            return response()->json([
                'success' => false,
                'message' => 'No lease data was found for the selected charge and shops.',
            ], 422);
        }

        return response()->json([
            'success' => true,
            'rows' => $allRows,
            'period' => ['from' => $fromdate, 'to' => $toperiodDate],
            'sundry' => $this->facilitySundryRows($fromdate),
            'billingdate' => $this->serviceBillingDate(),
            'duedate' => $duedate,
            'billingstartfrom' => $billingstartfrom ?? null,
        ]);
    }

    // SAVE: Manual Service Bill Entry -> facilitybill1 + facilitybill2 + suntranfacility
    public function servicebillentrysave(Request $request)
    {
        $request->validate([
            'tenantid' => 'required',
            'servicecode' => 'required',
            'billdate' => 'required|date',
            'fromperiod' => 'required',
            'toperiod' => 'required',
            'rows' => 'required|array|min:1',
        ], [
            'rows.required' => 'Add at least one bill line.',
        ]);

        $remark = trim((string) $request->input('remarks', '')) ?: null;

        if (! DB::getSchemaBuilder()->hasTable('facilitybill')
            || ! DB::getSchemaBuilder()->hasTable('facilitybill1')
            || ! DB::getSchemaBuilder()->hasTable('facilitybill2')
            || ! DB::getSchemaBuilder()->hasTable('suntranfacility')) {
            return response()->json([
                'success' => false,
                'message' => 'The required facility bill tables are unavailable.',
            ], 422);
        }

        $propertyid = $this->propertyid;
        $editingDocid = trim((string) $request->input('editing_docid', ''));
        $isEditing = $editingDocid !== '';
        $billDateInput = trim((string) $request->billdate);
        $billTimestamp = strtotime($billDateInput);
        $billdate = $billTimestamp !== false ? date('Y-m-d', $billTimestamp) : $this->serviceBillingDate();
        $fromPeriod = trim((string) $request->fromperiod);
        $toPeriod = trim((string) $request->toperiod);
        if (! preg_match('/^\d{4}-\d{2}$/', $fromPeriod)
            || ! preg_match('/^\d{4}-\d{2}$/', $toPeriod)
            || ! checkdate((int) substr($fromPeriod, 5, 2), 1, (int) substr($fromPeriod, 0, 4))
            || ! checkdate((int) substr($toPeriod, 5, 2), 1, (int) substr($toPeriod, 0, 4))) {
            return response()->json([
                'success' => false,
                'message' => 'The billing period must be a valid month.',
            ], 422);
        }
        [$fromDate, $toDate] = $this->servicePeriodBounds($fromPeriod, $toPeriod);
        if ($fromDate > $toDate) {
            return response()->json([
                'success' => false,
                'message' => 'The start period cannot be later than the end period.',
            ], 422);
        }

        // Multi-shop support: per-row unitid se lease map banao
        // unitids array bhi accept karo (multi-shop) ya single unitid (legacy)
        $unitidsFromRows = collect($request->rows ?? [])
            ->pluck('unitid')
            ->filter()
            ->unique()
            ->values()
            ->all();

        $requestedUnitids = $request->input('unitids', []);
        if (empty($requestedUnitids) && $request->unitid) {
            $requestedUnitids = [$request->unitid];
        }

        // Saare relevant unitids collect karo
        $allUnitids = array_unique(array_merge($unitidsFromRows, $requestedUnitids));
        $allUnitids = array_filter($allUnitids);

        if (empty($allUnitids)) {
            return response()->json([
                'success' => false,
                'message' => 'Select at least one shop or unit.',
            ], 422);
        }

        // Tenant ke active leases — unitid-to-lease map
        $leasesAll = DB::table('mall_lease_hdr')
            ->where('propertyid', $propertyid)
            ->where('tenantid', $request->tenantid)
            ->where('activeyn', 1)
            ->whereIn('leasestatus', ['ACTIVE', 'DRAFT'])
            ->orderBy('id', 'desc')
            ->get();

        // Multi-shop lease: unit-to-lease mapping DTL rows se banao (har shop ki
        // apni row hoti hai), HDR.unitid sirf primary shop hota hai.
        $dtlUnitMap = [];
        if (DB::getSchemaBuilder()->hasTable('mall_lease_dtl') && $leasesAll->isNotEmpty()) {
            $dtlCols = ['lease_id', 'unitid'];
            if (DB::getSchemaBuilder()->hasColumn('mall_lease_dtl', 'shopcode')) {
                $dtlCols[] = 'shopcode';
            }
            $dtlRows = DB::table('mall_lease_dtl')
                ->where('propertyid', $propertyid)
                ->whereIn('lease_id', $leasesAll->pluck('id')->all())
                ->get($dtlCols);
            foreach ($dtlRows as $dtlRow) {
                $dtlUnitMap[(string) $dtlRow->lease_id][(string) $dtlRow->unitid] = $dtlRow->shopcode ?? null;
            }
        }

        $leaseByUnit = [];
        foreach ($leasesAll as $l) {
            $uid = (string) ($l->unitid ?? '');
            if ($uid !== '' && ! isset($leaseByUnit[$uid])) {
                $leaseByUnit[$uid] = $l;
            }
            foreach (($dtlUnitMap[(string) $l->id] ?? []) as $dtlUnitid => $dtlShopcode) {
                if ($dtlUnitid === '' || isset($leaseByUnit[$dtlUnitid])) {
                    continue;
                }
                $unitLease = clone $l;
                $unitLease->shopcode = $dtlShopcode;
                $leaseByUnit[$dtlUnitid] = $unitLease;
            }
        }

        // Default lease — pehli available lease (backward compat)
        $defaultLease = $leasesAll->first();
        if (! $defaultLease) {
            // Agar lease nahi hai lekin bill banaya ja raha hai (e.g. Utility/Power from PartyLocation)
            $defaultLease = (object) [
                'id' => null,
                'propertyid' => $propertyid,
                'tenantid' => $request->tenantid,
                'unitid' => $allUnitids[0] ?? null,
                'billingcycle' => 'MONTHLY',
                'duedateofmonth' => null,
                'leasestatus' => 'ACTIVE',
            ];
        }
        // Legacy $lease variable — first lease
        $lease = $defaultLease;

        $masters = $this->serviceChargeMasters();
        $selectedMaster = $this->serviceMasterForCharge($request->servicecode, '', $masters);
        $facilityCode = $selectedMaster->chargecode ?? trim((string) $request->servicecode);

        // facilitybill1 detail lines mein charge ka shortcode (REN, CAM, etc.)
        $chargeVtype = strtoupper(trim((string) ($selectedMaster->shortcode ?? '')));
        if ($chargeVtype === '') {
            $chargeVtype = strtoupper(substr($facilityCode, 0, 6));
        }
        if ($chargeVtype === '') {
            $chargeVtype = 'FACL';
        }

        $headerVtype = 'FACL';

        $heads = $this->serviceRevenueHeads();

        DB::beginTransaction();
        try {
            $headerSerialAllocated = false;
            $headerDateFrom = null;

            // Charge voucher — prefix + serial
            //    Sirf CURRENT financial year ki row par lock — taaki saal-dar-saal
            //    maujood rows me se koi galat na uthaye.
            if ($isEditing) {
                // Edit flow: existing voucher ka docid/vno/vprefix reuse karo
                $existingLine = DB::table('facilitybill1')
                    ->where('propertyid', $propertyid)
                    ->where(function ($query) use ($editingDocid) {
                        $query->where('docid1', $editingDocid)
                            ->orWhere('docid', $editingDocid);
                    })
                    ->orderBy('sno')
                    ->first();

                if (! $existingLine) {
                    DB::rollBack();

                    return response()->json([
                        'success' => false,
                        'message' => 'The bill to edit was not found.',
                    ], 422);
                }

                $docid = trim((string) ($existingLine->docid1 ?? '')) ?: $editingDocid;
                $oldHeaderDocid = $docid; // ledger delete ke liye (reallocation se pehle)
                $chargeDocid = $existingLine->docid;
                $vno = (int) $existingLine->vno;
                $vprefix = $existingLine->vprefix;
                $headerDocidToUpdate = $docid;
                $header = DB::table('facilitybill')
                    ->where('propertyid', $propertyid)
                    ->where('docid', $docid)
                    ->first();
                if (! $header) {
                    DB::rollBack();

                    return response()->json([
                        'success' => false,
                        'message' => 'The bill header was not found.',
                    ], 422);
                }
                $headerVno = (int) ($header->vno ?? $vno);
                $headerVprefix = (string) ($header->vprefix ?? $vprefix);

                if (strpos($docid, (string) $propertyid.$headerVtype) !== 0) {
                    $fiscalYear = $this->serviceVoucherFiscalYear($billdate);
                    $headerDateFrom = $fiscalYear['from'];
                    $headerVp = DB::table('voucher_prefix')
                        ->where('propertyid', $propertyid)
                        ->whereRaw('UPPER(v_type) = ?', [$headerVtype])
                        ->where('date_from', $headerDateFrom)
                        ->lockForUpdate()
                        ->first();

                    if (! $headerVp) {
                        $headerVprefix = $fiscalYear['prefix'];
                        $headerVno = 1;
                        DB::table('voucher_prefix')->insert([
                            'propertyid' => $propertyid,
                            'v_type' => $headerVtype,
                            'short_name' => $headerVtype,
                            'date_from' => $headerDateFrom,
                            'date_to' => $fiscalYear['to'],
                            'prefix' => $headerVprefix,
                            'start_srl_no' => 0,
                            'u_name' => $this->username,
                            'created_at' => now(),
                            'u_ae' => 'a',
                            'sysYN' => 'N',
                        ]);
                    } else {
                        $headerVprefix = $headerVp->prefix;
                        $headerVno = (int) $headerVp->start_srl_no + 1;
                    }

                    $headerDocidToUpdate = $docid;
                    $docid = $propertyid.$headerVtype.'‎ ‎ '.$headerVprefix.'‎ ‎ ‎ ‎ '.$headerVno;
                    $headerSerialAllocated = true;
                }
            } else {
                $fiscalYear = $this->serviceVoucherFiscalYear($billdate);
                $vpDateFrom = $fiscalYear['from'];
                $vpDateTo = $fiscalYear['to'];
                $headerDateFrom = $vpDateFrom;

                $chargeVp = DB::table('voucher_prefix')
                    ->where('propertyid', $propertyid)
                    ->whereRaw('UPPER(v_type) = ?', [$chargeVtype])
                    ->where('date_from', $vpDateFrom)
                    ->lockForUpdate()
                    ->first();

                if (! $chargeVp) {
                    $vprefix = $fiscalYear['prefix'];
                    $vno = 1;
                    DB::table('voucher_prefix')->insert([
                        'propertyid' => $propertyid,
                        'v_type' => $chargeVtype,
                        'short_name' => $chargeVtype,
                        'date_from' => $vpDateFrom,
                        'date_to' => $vpDateTo,
                        'prefix' => $vprefix,
                        'start_srl_no' => 0,
                        'u_name' => $this->username,
                        'created_at' => now(),
                        'u_ae' => 'a',
                        'sysYN' => 'N',
                    ]);
                } else {
                    $vprefix = $chargeVp->prefix;
                    $vno = (int) $chargeVp->start_srl_no + 1;
                }

                $chargeDocid = $propertyid.$chargeVtype.'‎ ‎ '.$vprefix.'‎ ‎ ‎ ‎ '.$vno;

                $headerVp = DB::table('voucher_prefix')
                    ->where('propertyid', $propertyid)
                    ->whereRaw('UPPER(v_type) = ?', [$headerVtype])
                    ->where('date_from', $vpDateFrom)
                    ->lockForUpdate()
                    ->first();

                if (! $headerVp) {
                    $headerVprefix = $fiscalYear['prefix'];
                    $headerVno = 1;
                    DB::table('voucher_prefix')->insert([
                        'propertyid' => $propertyid,
                        'v_type' => $headerVtype,
                        'short_name' => $headerVtype,
                        'date_from' => $vpDateFrom,
                        'date_to' => $vpDateTo,
                        'prefix' => $headerVprefix,
                        'start_srl_no' => 0,
                        'u_name' => $this->username,
                        'created_at' => now(),
                        'u_ae' => 'a',
                        'sysYN' => 'N',
                    ]);
                } else {
                    $headerVprefix = $headerVp->prefix;
                    $headerVno = (int) $headerVp->start_srl_no + 1;
                }

                $docid = $propertyid.$headerVtype.'‎ ‎ '.$headerVprefix.'‎ ‎ ‎ ‎ '.$headerVno;
            }

            $duplicateBill = DB::table('facilitybill1')
                ->where('propertyid', $propertyid)
                ->where('partycode', $request->tenantid)
                ->where('facilitycode', $facilityCode)
                ->whereDate('forperiod', '<=', $toDate)
                ->whereDate('toperiod', '>=', $fromDate);
            if ($isEditing) {
                $duplicateBill
                    ->where('docid', '<>', $editingDocid)
                    ->where(function ($query) use ($editingDocid) {
                        $query->whereNull('docid1')
                            ->orWhere('docid1', '<>', $editingDocid);
                    });
            }
            $duplicateBill = $duplicateBill->lockForUpdate()->first();
            if ($duplicateBill) {
                DB::rollBack();

                return response()->json([
                    'success' => false,
                    'message' => 'A bill already exists for this tenant, charge, and billing period. See the existing bill in Section 6.',
                ], 422);
            }

            $bill1Rows = [];
            $bill2Rows = [];
            $lineTaxData = [];
            $sundRows = [];
            $ledgerChargeLines = [];
            $lineSno = 0;
            $taxSno = 0;
            $sundSno = 0;

            // ── facilitybill HEADER insert / update ──────────────────────────
            if ($isEditing) {
                DB::table('facilitybill')
                    ->where('propertyid', $propertyid)
                    ->where('docid', $headerDocidToUpdate)
                    ->update([
                        'docid' => $docid,
                        'vtype' => 'FACL',
                        'vdate' => $billdate,
                        'vno' => $headerVno,
                        'vprefix' => $headerVprefix,
                        'forperiod' => $fromDate,
                        'toperiod' => $toDate,
                        'remark' => $remark,
                        'u_ae' => 'E',
                        'u_updatedby' => $this->username,
                        'updated_at' => now(),
                    ]);
            } else {
                DB::table('facilitybill')->insert([
                    'propertyid' => $propertyid,
                    'docid' => $docid,
                    'vtype' => 'FACL',
                    'vdate' => $billdate,
                    'vno' => $headerVno,
                    'vprefix' => $headerVprefix,
                    'partycode' => $request->tenantid,
                    'locationcode' => ! empty($allUnitids) ? $allUnitids[0] : null,
                    'duedate' => null,
                    'forperiod' => $fromDate,
                    'toperiod' => $toDate,
                    'u_ae' => 'A',
                    'u_name' => $this->username,
                    'u_entdt' => now(),
                    'remark' => $remark,
                    'created_at' => now(),
                    'updated_at' => null,
                ]);
            }
            // ─────────────────────────────────────────────────────────────────

            foreach ($request->rows as $row) {
                $rowCode = trim((string) ($row['chargecode'] ?? ''));
                $isLeaseRow = strtoupper(trim((string) ($row['source'] ?? ''))) === 'LEASE'
                    || $rowCode !== '';
                $authoritative = null;

                if ($isLeaseRow) {
                    // Per-row unitid se sahi lease dhundho (multi-shop support)
                    $rowUnitid = trim((string) ($row['unitid'] ?? ''));
                    $rowLease = ($rowUnitid !== '' && isset($leaseByUnit[$rowUnitid]))
                        ? $leaseByUnit[$rowUnitid]
                        : $lease; // fallback to first lease

                    $lookupCode = $rowCode !== '' ? $rowCode : $facilityCode;
                    $candidates = $lookupCode !== ''
                        ? $this->serviceLeaseChargeRows($rowLease, $lookupCode, $fromDate, $toDate, $rowUnitid)
                        : collect();
                    $chargeSn = $row['chargesn'] ?? null;
                    $authoritative = $chargeSn !== null && $chargeSn !== ''
                        ? $candidates->first(function ($candidate) use ($chargeSn) {
                            return (string) ($candidate['sn'] ?? '') === (string) $chargeSn;
                        })
                        : $candidates->first();
                    if (! $authoritative) {
                        // Strict validation hata diya — agar lease charge nahi mila to
                        // row data use karo (MANUAL row ki tarah treat karo)
                        $isLeaseRow = false;
                    }
                    if ($authoritative && $facilityCode !== ''
                        && strtoupper((string) $authoritative['chargecode']) !== strtoupper((string) $facilityCode)) {
                        // Code mismatch — authoritative ignore karo
                        $authoritative = null;
                        $isLeaseRow = false;
                    }
                }

                if ($authoritative) {
                    $basis = strtoupper((string) $authoritative['basis']);
                    $area = round((float) $authoritative['area'], 2);
                    $rate = round((float) $authoritative['rate'], 2);
                    $gst = (int) ($authoritative['gstapplicable'] ?? 0) > 0
                        ? round((float) ($authoritative['gstpercent'] ?? 0), 2)
                        : 0;
                    $rev = trim((string) ($authoritative['revcode'] ?? ''));
                    $desc = trim((string) ($authoritative['chargename'] ?? ''));
                } else {
                    $basis = strtoupper(trim((string) ($row['basis'] ?? 'AREA')));
                    $area = round((float) ($row['area'] ?? 0), 2);
                    $rate = round((float) ($row['rate'] ?? 0), 2);
                    $gst = round((float) ($row['gst'] ?? 0), 2);
                    $rev = trim((string) ($row['revcode'] ?? ''));
                    $desc = trim((string) ($row['desc'] ?? ''));
                }

                if ($rev === '' && $facilityCode !== '') {
                    $rev = $this->serviceRevenueCode($facilityCode, $desc, $heads, $selectedMaster->accountcode ?? '');
                }

                if (! in_array($basis, ['AREA', 'FIXED'], true)) {
                    throw new \DomainException('The charge basis is invalid.');
                }
                if ($area < 0 || $rate < 0 || $gst < 0) {
                    throw new \DomainException('Charge area, rate, and GST cannot be negative.');
                }
                if (($basis === 'FIXED' && $rate <= 0) || ($basis === 'AREA' && ($area <= 0 || $rate <= 0))) {
                    continue;
                }
                $amt = $basis === 'FIXED' ? $rate : round($area * $rate, 2);
                if ($authoritative && (float) ($authoritative['amount'] ?? 0) > 0) {
                    $amt = round((float) $authoritative['amount'], 2);
                    if ($basis === 'FIXED') {
                        $rate = $amt;
                    } elseif ($area > 0) {
                        $rate = round($amt / $area, 4);
                    }
                }
                $validRevCodes = $heads->pluck('rev_code')->map(function ($code) {
                    return strtoupper(trim((string) $code));
                })->all();
                if ($heads->isNotEmpty()) {
                    if ($rev === '' || ! in_array(strtoupper($rev), $validRevCodes, true)) {
                        // Auto-assign: facilityCode se match dhundho, warna pehla valid code
                        $matched = null;
                        $fcUpper = strtoupper($facilityCode);
                        foreach ($heads as $h) {
                            $hcode = strtoupper(trim((string) ($h->rev_code ?? '')));
                            $hname = strtoupper(trim((string) ($h->name ?? '')));
                            if ($hcode === $fcUpper || str_contains($hname, 'RENT')) {
                                $matched = $h->rev_code;
                                break;
                            }
                        }
                        if (! $matched) {
                            $matched = $heads->first()->rev_code ?? '';
                        }
                        $rev = trim((string) $matched);
                    }
                }
                if ($desc === '') {
                    throw new \DomainException('A charge description is required.');
                }

                // Ledger posting ke liye charge ka asli account (subgroup sub_code).
                // revmast ke FACL heads DISCOUNT/ROUND OFF tak seemit hain, isliye
                // mall_chargemast.accountcode ko hi authoritative revenue account
                // maano (jaise Debit/Credit Note posting karta hai).
                $rowMaster = $this->serviceMasterForCharge($rowCode, $desc, $masters);
                if (! $rowMaster) {
                    $rowMaster = $selectedMaster;
                }
                $rowAccount = trim((string) ($rowMaster->accountcode ?? ''));
                if ($rowAccount === '') {
                    $rowAccount = trim((string) ($selectedMaster->accountcode ?? ''));
                }

                $lineSno++;
                $ledgerChargeLines[] = [
                    'revcode' => $rev,
                    'accode' => $rowAccount,
                    'amount' => $amt,
                ];
                $bill1Rows[] = [
                    'propertyid' => $propertyid,
                    'docid' => $chargeDocid,
                    'docid1' => $docid,
                    'vno' => $vno,
                    'sno' => $lineSno,
                    'vtype' => $chargeVtype,
                    'vdate' => $billdate,
                    'vprefix' => $vprefix,
                    'partycode' => $request->tenantid,
                    'facilitycode' => $facilityCode,
                    'unit' => $area,
                    'unitrate' => $rate,
                    'amount' => $amt,
                    'forperiod' => $fromDate,
                    'toperiod' => $toDate,
                    'facilitytax' => $gst > 0 ? (string) $gst : '0',
                    'appdate' => $billdate,
                    'revcode' => $rev,
                    'u_ae' => 'a',
                    'u_name' => $this->username,
                    'created_at' => now(),
                ];

                $lineTaxData[] = [
                    'lineSno' => $lineSno,
                    'amount' => $amt,
                    'gst' => $gst,
                ];

                $sundSno++;
                $sundRows[] = [
                    'propertyid' => $propertyid,
                    'docid' => $chargeDocid,
                    'sno' => $sundSno,
                    'vtype' => $chargeVtype,
                    'vno' => $vno,
                    'vdate' => $billdate,
                    'partycode' => $request->tenantid,
                    'suncode' => $facilityCode,
                    'dispname' => mb_substr($desc, 0, 30),
                    'roff' => 'N',
                    'calcformula' => $basis === 'FIXED' ? 'Fixed' : 'Per Sq.Ft',
                    'svalue' => $rate,
                    'amount' => $amt,
                    'baseamount' => $amt,
                    'u_name' => $this->username,
                    'created_at' => now(),
                    'u_ae' => 'a',
                    'sunappaate' => $billdate,
                    'revcode' => $rev,
                    'delflag' => 'N',
                ];
            }

            $sundryConfig = $this->facilitySundryRows($fromDate);
            $postedSundryConfig = $sundryConfig->filter(function ($row) {
                return strtoupper((string) ($row->postyn ?? 'Y')) !== 'N';
            })->values();
            $baseAmount = collect($bill1Rows)->sum('amount');
            $fallbackGst = round(collect($lineTaxData)->sum(function ($line) {
                return (float) $line['amount'] * (float) $line['gst'] / 100;
            }), 2);
            $fallbackRevcode = $bill1Rows[0]['revcode'] ?? '';

            // ── Purchase bill style: user-entered discount + nature-based amounts ──
            $discountPer = round((float) $request->input('discount_per', 0), 4);
            $discountAmount = round((float) $request->input('discount_amount', 0), 2);
            // Priority: amount field, else calculate from %
            if ($discountAmount > 0) {
                $discountPer = $baseAmount > 0 ? round($discountAmount / $baseAmount * 100, 4) : 0;
            } elseif ($discountPer > 0) {
                $discountAmount = round($baseAmount * $discountPer / 100, 2);
            }
            $postDiscountBase = $baseAmount - $discountAmount;

            // Tax amounts (CGST/SGST/IGST) — calculated on post-discount base
            // NOTE: sundrytype config me CGST/SGST/IGST teeno rows ho sakti hain.
            //   - kisi row ka svalue > 0  → usi % se amount
            //   - sab svalue = 0          → total GST (fallbackGst) ko EK BAAR split karo:
            //         sirf IGST      → poora IGST (inter-state)
            //         warna          → CGST aadha + SGST aadha, IGST 0 (intra-state)
            $taxSvalues = [];
            foreach ($postedSundryConfig as $scRow) {
                $taxType = $this->serviceSundryTaxType($scRow);
                if ($taxType === '') {
                    continue;
                }
                $taxSvalues[$taxType] = ($taxSvalues[$taxType] ?? 0.0)
                    + (float) ($scRow->svalue ?? 0);
            }

            $taxAmounts = ['CGST' => 0.0, 'SGST' => 0.0, 'IGST' => 0.0];
            $hasConfiguredRate = ! empty(array_filter($taxSvalues, function ($sval) {
                return $sval > 0;
            }));

            if (! empty($taxSvalues)) {
                if ($hasConfiguredRate) {
                    foreach ($taxSvalues as $taxType => $sval) {
                        if (isset($taxAmounts[$taxType]) && $sval > 0) {
                            $taxAmounts[$taxType] = round($postDiscountBase * $sval / 100, 2);
                        }
                    }
                } elseif (isset($taxSvalues['IGST']) && ! isset($taxSvalues['CGST']) && ! isset($taxSvalues['SGST'])) {
                    $taxAmounts['IGST'] = round($fallbackGst, 2);
                } elseif (isset($taxSvalues['CGST']) && isset($taxSvalues['SGST'])) {
                    $taxAmounts['CGST'] = round($fallbackGst / 2, 2);
                    $taxAmounts['SGST'] = round($fallbackGst / 2, 2);
                } elseif (isset($taxSvalues['CGST'])) {
                    $taxAmounts['CGST'] = round($fallbackGst, 2);
                } elseif (isset($taxSvalues['SGST'])) {
                    $taxAmounts['SGST'] = round($fallbackGst, 2);
                } else {
                    $taxAmounts['IGST'] = round($fallbackGst, 2);
                }
            }

            $cgstAmt = $taxAmounts['CGST'];
            $sgstAmt = $taxAmounts['SGST'];
            $igstAmt = $taxAmounts['IGST'];
            $taxTotalAmt = round($cgstAmt + $sgstAmt + $igstAmt, 2);
            $preRound = round($postDiscountBase + $taxTotalAmt, 2);
            $netAmount = round($preRound);
            $roundOffAmt = round($netAmount - $preRound, 2);

            // inputData keyed by nature (purchase bill style)
            $inputData = [
                'amount' => ['amount' => $baseAmount,     'svalue' => 0,           'baseamount' => 0],
                'discount' => ['amount' => $discountAmount, 'svalue' => $discountPer, 'baseamount' => $baseAmount],
                'redemption' => ['amount' => $discountAmount, 'svalue' => $discountPer, 'baseamount' => $baseAmount],
                'cgst' => ['amount' => $cgstAmt,        'svalue' => 0,           'baseamount' => $postDiscountBase],
                'sgst' => ['amount' => $sgstAmt,        'svalue' => 0,           'baseamount' => $postDiscountBase],
                'igst' => ['amount' => $igstAmt,        'svalue' => 0,           'baseamount' => $postDiscountBase],
                'cess' => ['amount' => 0,               'svalue' => 0,           'baseamount' => 0],
                'round off' => ['amount' => $roundOffAmt,    'svalue' => 0,           'baseamount' => $preRound],
                'net amount' => ['amount' => $netAmount,      'svalue' => 0,           'baseamount' => 0],
            ];

            // postedTaxValues for bill2 rows
            $postedTaxValues = [
                'CGST' => $cgstAmt,
                'SGST' => $sgstAmt,
                'IGST' => $igstAmt,
                'CESS' => 0.0,
            ];
            $taxTypes = [];
            $taxTypeCodeMap = [];
            $taxTypeRevMap = [];
            foreach ($postedSundryConfig as $sundryConfigRow) {
                $taxType = $this->serviceSundryTaxType($sundryConfigRow);
                if ($taxType !== '' && ! in_array($taxType, $taxTypes, true)) {
                    $taxTypes[] = $taxType;
                    $taxTypeCodeMap[$taxType] = strtoupper(trim((string) ($sundryConfigRow->sundry_code ?? $taxType)));
                }
                if ($taxType !== '') {
                    $taxTypeRevMap[$taxType] = trim((string) ($sundryConfigRow->revcode ?? ''));
                }
            }

            $taxSno = 0;
            if (! empty($taxTypes) && $baseAmount > 0) {
                $allocatedTaxes = array_fill_keys($taxTypes, 0.0);
                foreach ($lineTaxData as $lineIndex => $lineTax) {
                    $lineTaxTotal = 0;
                    foreach ($taxTypes as $taxType) {
                        $taxKey = strtolower($taxType);
                        $taxTotal = (float) ($postedTaxValues[$taxType] ?? 0);
                        $ratio = (float) $lineTax['amount'] / (float) $baseAmount;
                        $taxAmt = (int) $lineIndex === count($lineTaxData) - 1
                            ? round($taxTotal - $allocatedTaxes[$taxType], 2)
                            : round($taxTotal * $ratio, 2);
                        $allocatedTaxes[$taxType] += $taxAmt;
                        if ($taxAmt == 0.0) {
                            continue;
                        }
                        $lineTaxTotal += $taxAmt;
                        $taxSno++;
                        $bill2Rows[] = [
                            'propertyid' => $propertyid,
                            'docid' => $chargeDocid,
                            'docid1' => $docid,
                            'sno1' => $lineTax['lineSno'],
                            'sno' => $taxSno,
                            'vtype' => $chargeVtype,
                            'vno' => $vno,
                            'vprefix' => $vprefix,
                            'vdate' => $billdate,
                            'taxcode' => $taxTypeCodeMap[$taxType] ?? $taxType,
                            'basevalue' => $lineTax['amount'],
                            'taxper' => $lineTax['amount'] > 0 ? round($taxAmt / $lineTax['amount'] * 100, 4) : 0,
                            'taxamt' => $taxAmt,
                            'u_name' => $this->username,
                            'created_at' => now(),
                            'u_ae' => 'a',
                            'delflag' => 'N',
                        ];
                    }
                    if (isset($bill1Rows[$lineTax['lineSno'] - 1])) {
                        $bill1Rows[$lineTax['lineSno'] - 1]['facilitytax'] = (string) (
                            $lineTax['amount'] > 0 ? round($lineTaxTotal / $lineTax['amount'] * 100, 4) : 0
                        );
                    }
                }
            } else {
                foreach ($lineTaxData as $lineTax) {
                    if ((float) $lineTax['gst'] <= 0) {
                        continue;
                    }
                    $half = (float) $lineTax['gst'] / 2;
                    foreach (['CGST', 'SGST'] as $taxCode) {
                        $taxSno++;
                        $bill2Rows[] = [
                            'propertyid' => $propertyid,
                            'docid' => $chargeDocid,
                            'docid1' => $docid,
                            'sno1' => $lineTax['lineSno'],
                            'sno' => $taxSno,
                            'vtype' => $chargeVtype,
                            'vno' => $vno,
                            'vprefix' => $vprefix,
                            'vdate' => $billdate,
                            'taxcode' => $taxTypeCodeMap[$taxCode] ?? $taxCode,
                            'basevalue' => $lineTax['amount'],
                            'taxper' => $half,
                            'taxamt' => round($lineTax['amount'] * $half / 100, 2),
                            'u_name' => $this->username,
                            'created_at' => now(),
                            'u_ae' => 'a',
                            'delflag' => 'N',
                        ];
                    }
                }
            }

            if ($postedSundryConfig->isNotEmpty() && ! empty($bill1Rows)) {
                $sundRows = [];
                $sundSno = 0;
                $ledgerSundryRows = []; // postServiceBill ke liye proper format
                foreach ($postedSundryConfig as $fstype) {
                    $sundSno++;
                    $natureKey = strtolower(trim((string) ($fstype->nature ?? '')));
                    $sundryNature = strtoupper($natureKey);
                    $sundryLabel = strtoupper(trim((string) ($fstype->disp_name ?? '')));
                    $sundryCode = strtoupper(trim((string) ($fstype->sundry_code ?? '')));

                    $data = $inputData[$natureKey] ?? ['amount' => 0, 'svalue' => (float) ($fstype->svalue ?? 0), 'baseamount' => 0];
                    $amount = round((float) ($data['amount'] ?? 0), 2);
                    $svalue = round((float) ($data['svalue'] ?? $fstype->svalue ?? 0), 4);
                    $baseamount = round((float) ($data['baseamount'] ?? 0), 2);

                    $sundRows[] = [
                        'propertyid' => $propertyid,
                        'docid' => $chargeDocid,
                        'sno' => $sundSno,
                        'vtype' => $chargeVtype,
                        'vno' => $vno,
                        'vdate' => $billdate,
                        'partycode' => $request->tenantid,
                        'suncode' => $fstype->sundry_code,
                        'dispname' => mb_substr((string) ($fstype->disp_name ?? ''), 0, 30),
                        'roff' => (str_contains($sundryNature, 'ROUND') || $sundryCode === '12103') ? 'Y' : 'N',
                        'calcformula' => $fstype->calcformula ?? '',
                        'svalue' => $svalue,
                        'amount' => $amount,
                        'baseamount' => $baseamount,
                        'u_name' => $this->username,
                        'created_at' => now(),
                        'u_ae' => 'a',
                        'sunappaate' => $billdate,
                        'revcode' => trim((string) ($fstype->revcode ?? '')) ?: $fallbackRevcode,
                        'delflag' => 'N',
                    ];

                    // postServiceBill ke liye format (serviceSundryCalculation['rows'] style)
                    $ledgerSundryRows[] = [
                        'sno' => $sundSno,
                        'sundry_code' => $fstype->sundry_code,
                        'disp_name' => $fstype->disp_name ?? '',
                        'nature' => $fstype->nature ?? '',
                        'calcsign' => $fstype->calcsign ?? '',
                        'calcformula' => $fstype->calcformula ?? '',
                        'peroramt' => $fstype->peroramt ?? '',
                        'svalue' => $svalue,
                        'amount' => $amount,
                        'baseamount' => $baseamount,
                        'revcode' => trim((string) ($fstype->revcode ?? '')) ?: $fallbackRevcode,
                        'postyn' => $fstype->postyn ?? 'Y',
                    ];
                }
            }

            if (empty($bill1Rows)) {
                DB::rollBack();

                return response()->json([
                    'success' => false,
                    'message' => 'The bill does not contain any valid line items.',
                ], 422);
            }

            if ($isEditing) {
                // Purani lines hatao — naya data same docid par insert hoga
                DB::table('facilitybill1')
                    ->where('propertyid', $propertyid)
                    ->where(function ($query) use ($docid, $editingDocid) {
                        $query->where('docid1', $docid)
                            ->orWhere('docid', $editingDocid);
                    })
                    ->delete();
                DB::table('facilitybill2')
                    ->where('propertyid', $propertyid)
                    ->where(function ($query) use ($docid, $editingDocid) {
                        $query->where('docid1', $docid)
                            ->orWhere('docid', $editingDocid);
                    })
                    ->delete();
                DB::table('suntranfacility')
                    ->where('propertyid', $propertyid)
                    ->where('docid', $chargeDocid)
                    ->delete();

                // Purani ledger entries hatao — nayi neeche post hongi
                app(MallLedgerController::class)
                    ->deleteServiceBill($propertyid, $docid, [$editingDocid, $oldHeaderDocid]);
            }

            DB::table('facilitybill1')->insert($bill1Rows);
            if (! empty($bill2Rows)) {
                DB::table('facilitybill2')->insert($bill2Rows);
            }
            DB::table('suntranfacility')->insert($sundRows);

            // Ledger (accounting) posting — alag controller me (MallLedgerController)
            app(MallLedgerController::class)->postServiceBill(
                $propertyid,
                $docid,
                $headerVtype,
                $headerVno,
                $headerVprefix,
                $billdate,
                $request->tenantid,
                $ledgerChargeLines,
                $postedTaxValues,
                $taxTypeRevMap,
                $ledgerSundryRows ?? [],
                $this->username
            );

            // voucher serial update
            // date_from ka shart zaroori hai — iske bina UPDATE saal-dar-saal
            // SAARI rows par lag jaata tha aur har saal ka serial ek jaisa ho jata tha.
            if (! $isEditing) {
                DB::table('voucher_prefix')
                    ->where('propertyid', $propertyid)
                    ->whereRaw('UPPER(v_type) = ?', [$chargeVtype])
                    ->where('date_from', $vpDateFrom)
                    ->update(['start_srl_no' => $vno]);
            }
            if (! $isEditing || $headerSerialAllocated) {
                DB::table('voucher_prefix')
                    ->where('propertyid', $propertyid)
                    ->whereRaw('UPPER(v_type) = ?', [$headerVtype])
                    ->where('date_from', $headerDateFrom)
                    ->update(['start_srl_no' => $headerVno]);
            }

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => $isEditing ? 'Bill updated successfully.' : 'Bill saved successfully.',
                'vno' => $vno,
                'vprefix' => $vprefix,
                'vtype' => $chargeVtype,
                'docid' => $docid,
                'chargedocid' => $chargeDocid,
                'updated' => $isEditing,
                'billno' => $chargeVtype.'/'.$vprefix.'/'.str_pad($vno, 3, '0', STR_PAD_LEFT),
            ]);
        } catch (\DomainException $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ], 422);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ], 500);
        }
    }

    // AJAX: Previous bills (same party + service) for servicebillentry view
    public function servicebillentryprevbills(Request $request)
    {
        return response()->json($this->sbePrevBills(
            $request->tenantid ?? '',
            $request->servicecode ?? ''
        ));
    }

    // AJAX: Next charge-wise bill number preview for the selected billing date
    public function servicebillentrybillno(Request $request)
    {
        $validated = $request->validate([
            'servicecode' => 'required|string',
            'billdate' => 'nullable|date',
        ]);

        $charge = $this->serviceMasterForCharge($validated['servicecode'], '', $this->serviceChargeMasters());
        if (! $charge || empty($charge->chargecode)) {
            return response()->json([
                'success' => false,
                'message' => 'The selected charge was not found.',
            ], 422);
        }

        $chargeVtype = strtoupper(trim((string) ($charge->shortcode ?? '')));
        if ($chargeVtype === '') {
            $chargeVtype = strtoupper(substr((string) $charge->chargecode, 0, 6));
        }
        if ($chargeVtype === '') {
            return response()->json([
                'success' => false,
                'message' => 'The selected charge does not have a valid bill series.',
            ], 422);
        }

        $billdate = $validated['billdate'] ?? $this->serviceBillingDate();
        $fiscalYear = $this->serviceVoucherFiscalYear($billdate);
        $prefixRow = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->whereRaw('UPPER(v_type) = ?', [$chargeVtype])
            ->where('date_from', $fiscalYear['from'])
            ->first();

        $prefix = $prefixRow->prefix ?? $fiscalYear['prefix'];
        $nextNumber = (int) ($prefixRow->start_srl_no ?? 0) + 1;

        return response()->json([
            'success' => true,
            'billno' => $chargeVtype.'/'.$prefix.'/'.str_pad((string) $nextNumber, 3, '0', STR_PAD_LEFT),
        ]);
    }

    // AJAX: Selected tenant ledger balance for the service bill summary
    public function servicebillentryoutstanding(Request $request)
    {
        $validated = $request->validate([
            'tenantid' => 'required|string',
        ]);

        if (! DB::getSchemaBuilder()->hasTable('ledger')) {
            return response()->json([
                'success' => false,
                'message' => 'Ledger table is unavailable.',
            ], 500);
        }

        $balance = DB::table('ledger')
            ->where('propertyid', $this->propertyid)
            ->where('subcode', $validated['tenantid'])
            ->selectRaw('COALESCE(SUM(amtdr), 0) - COALESCE(SUM(amtcr), 0) AS balance')
            ->value('balance');

        return response()->json([
            'success' => true,
            'balance' => (float) $balance,
        ]);
    }

    // AJAX: Single previous bill detail (for Edit)
    public function servicebillentrybill(Request $request)
    {
        $docid = trim((string) $request->docid);
        if ($docid === '' || ! DB::getSchemaBuilder()->hasTable('facilitybill1')) {
            return response()->json(['success' => false, 'message' => 'The bill was not found.'], 422);
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
            return response()->json(['success' => false, 'message' => 'The bill was not found.'], 422);
        }

        $first = $lines->first();

        // Header ka remark (facilitybill se) — edit form me dikhane ke liye
        $headerRemark = null;
        if (DB::getSchemaBuilder()->hasTable('facilitybill')) {
            $headerRemark = DB::table('facilitybill')
                ->where('propertyid', $this->propertyid)
                ->where('docid', trim((string) ($first->docid1 ?? '')))
                ->value('remark');
        }

        $tenant = null;
        if (DB::getSchemaBuilder()->hasTable('subgroup')) {
            $tenant = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('sub_code', $first->partycode)
                ->first(['sub_code', 'name', 'email', 'mobile', 'conperson', 'tradename']);
        }

        $chargeNames = [];
        $chargeShortcodes = [];
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $chargeNames = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->pluck('chargename', 'chargecode')
                ->all();
            $chargeShortcodes = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->pluck('shortcode', 'chargecode')
                ->all();
        }

        $rows = $lines->map(function ($line) use ($chargeNames) {
            $amount = round((float) $line->amount, 2);
            $gst = round((float) $line->facilitytax, 2);
            $gstAmt = round($amount * $gst / 100, 2);
            $basis = ((float) $line->unit) > 0 ? 'AREA' : 'FIXED';
            $desc = $chargeNames[$line->facilitycode] ?? $line->facilitycode;

            return [
                'source' => 'MANUAL',
                'chargecode' => $line->facilitycode,
                'desc' => $desc,
                'chargename' => $desc,
                'revcode' => $line->revcode,
                'basis' => $basis,
                'area' => round((float) $line->unit, 2),
                'rate' => round((float) $line->unitrate, 2),
                'amount' => $amount,
                'gstpercent' => $gst,
                'gstapplicable' => $gst > 0 ? 1 : 0,
                'gstamt' => $gstAmt,
                'total' => round($amount + $gstAmt, 2),
                'unitid' => '',
                'leaseid' => '',
                'shopcode' => '',
                'shopname' => '',
            ];
        })->values();

        return response()->json([
            'success' => true,
            'docid' => trim((string) ($first->docid1 ?? '')) ?: $first->docid,
            'vno' => (int) $first->vno,
            'vprefix' => $first->vprefix,
            'vtype' => $first->vtype,
            'billno' => (trim((string) ($chargeShortcodes[$first->facilitycode] ?? '')) ?: $first->vtype)
                .'/'.$first->vprefix.'/'.str_pad((string) $first->vno, 3, '0', STR_PAD_LEFT),
            'tenantid' => $first->partycode,
            'facilitycode' => $first->facilitycode,
            'billdate' => date('Y-m-d', strtotime($first->vdate)),
            'fromperiod' => date('Y-m', strtotime($first->forperiod)),
            'toperiod' => date('Y-m', strtotime($first->toperiod)),
            'email' => $tenant->email ?? '',
            'remark' => (string) ($headerRemark ?? ''),
            'rows' => $rows,
        ]);
    }

    // AJAX: Delete a previous bill (facilitybill1 + facilitybill2 + suntranfacility)
    public function servicebillentrydelete(Request $request)
    {
        $docid = trim((string) $request->docid);
        if ($docid === '') {
            return response()->json(['success' => false, 'message' => 'Select a bill to continue.'], 422);
        }

        $exists = DB::table('facilitybill1')
            ->where('propertyid', $this->propertyid)
            ->where(function ($query) use ($docid) {
                $query->where('docid1', $docid)
                    ->orWhere('docid', $docid);
            })
            ->exists();

        if (! $exists) {
            return response()->json(['success' => false, 'message' => 'The bill was not found.'], 422);
        }

        DB::beginTransaction();
        try {
            $chargeDocids = DB::table('facilitybill1')
                ->where('propertyid', $this->propertyid)
                ->where(function ($query) use ($docid) {
                    $query->where('docid1', $docid)
                        ->orWhere('docid', $docid);
                })
                ->pluck('docid')
                ->unique()
                ->values();

            DB::table('facilitybill1')
                ->where('propertyid', $this->propertyid)
                ->where(function ($query) use ($docid) {
                    $query->where('docid1', $docid)
                        ->orWhere('docid', $docid);
                })
                ->delete();
            if (DB::getSchemaBuilder()->hasTable('facilitybill2')) {
                DB::table('facilitybill2')
                    ->where('propertyid', $this->propertyid)
                    ->where(function ($query) use ($docid) {
                        $query->where('docid1', $docid)
                            ->orWhere('docid', $docid);
                    })
                    ->delete();
            }
            if (DB::getSchemaBuilder()->hasTable('suntranfacility')) {
                DB::table('suntranfacility')
                    ->where('propertyid', $this->propertyid)
                    ->whereIn('docid', $chargeDocids)
                    ->delete();
            }
            if (DB::getSchemaBuilder()->hasTable('facilitybill')) {
                DB::table('facilitybill')
                    ->where('propertyid', $this->propertyid)
                    ->where('docid', $docid)
                    ->delete();
            }

            // Ledger (accounting) entries bhi hatao
            app(MallLedgerController::class)
                ->deleteServiceBill($this->propertyid, $docid);

            DB::commit();
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'The bill could not be deleted: '.$e->getMessage(),
            ], 500);
        }

        return response()->json(['success' => true, 'message' => 'The bill was deleted successfully.']);
    }

    // Print / PDF: single previous bill (old software format)
    public function servicebillentryprint(Request $request)
    {
        $docid = trim((string) $request->docid);
        if ($docid === '' || ! DB::getSchemaBuilder()->hasTable('facilitybill1')) {
            abort(404, 'Bill not found');
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
            abort(404, 'Bill not found');
        }

        $first = $lines->first();
        $company = Companyreg::on('main')->where('propertyid', $this->propertyid)->first();
        $companyPanNo = trim((string) ($company ? $company->getRawOriginal('pan_no') : ''));
        $companyCinNo = trim((string) ($company ? $company->getRawOriginal('CInNo') : ''));
        $logoPath = null;
        if ($company && ! empty($company->logo) && Storage::disk('public')->exists('admin/property_logo/'.$company->logo)) {
            $logoPath = storage_path('app/public/admin/property_logo/'.$company->logo);
        }
        $tenant = DB::getSchemaBuilder()->hasTable('subgroup')
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

        // Shop names — mall_shopmast se keyed by shopcode
        $shopNames = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $shopNames = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->pluck('shopname', 'shopcode');
        }
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

        // Charge master keyed by chargecode
        $chargeMasters = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $chargeMasters = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->get()
                ->keyBy('chargecode');
        }
        $master = $chargeMasters[$first->facilitycode] ?? null;

        // Meter readings (power/KESCO) — best effort, per shop
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

        $groups = [];
        $lineIndex = 0;
        foreach ($lines as $line) {
            $code = (string) $line->facilitycode;
            if (! isset($groups[$code])) {
                $groups[$code] = [
                    'code' => $code,
                    'name' => $chargeMasters[$code]->chargename ?? $code,
                    'shortcode' => $chargeMasters[$code]->shortcode ?? $code,
                    'saccode' => $chargeMasters[$code]->saccode ?? '',
                    'rows' => [],
                ];
            }

            $lineArea = round((float) $line->unit, 2);
            $matchedShop = null;

            // Match by chargeable area if lineArea > 0
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
                'from' => $line->forperiod,
                'to' => $line->toperiod,
                'unit' => $lineArea,
                'rate' => round((float) $line->unitrate, 2),
                'amount' => round((float) $line->amount, 2),
                'shopname' => $displayLocation,
                'meter' => $meterRows[$lineIndex] ?? null,
            ];
            $lineIndex++;
        }
        $groups = array_values($groups);

        // Taxes (facilitybill2) — sundrytype se disp_name join karke proper label
        $taxRows = DB::getSchemaBuilder()->hasTable('facilitybill2')
            ? DB::table('facilitybill2')
                ->where('facilitybill2.propertyid', $this->propertyid)
                ->where(function ($query) use ($docid) {
                    $query->where('facilitybill2.docid1', $docid)
                        ->orWhere('facilitybill2.docid', $docid);
                })
                ->leftJoin('sundrytype', function ($join) {
                    $join->on('sundrytype.sundry_code', '=', 'facilitybill2.taxcode')
                        ->where('sundrytype.propertyid', $this->propertyid)
                        ->where('sundrytype.vtype', 'FACL'.$this->propertyid);
                })
                ->select(
                    'facilitybill2.*',
                    DB::raw("COALESCE(NULLIF(sundrytype.disp_name,''), facilitybill2.taxcode) as tax_label")
                )
                ->get()
            : collect();
        $taxes = [];
        foreach ($taxRows as $t) {
            $code = strtoupper(trim((string) $t->taxcode));
            $label = strtoupper(trim((string) ($t->tax_label ?? $t->taxcode)));
            if (! isset($taxes[$code])) {
                $taxes[$code] = ['base' => 0.0, 'amt' => 0.0, 'per' => 0.0, 'label' => $label];
            }
            $taxes[$code]['base'] += (float) $t->basevalue;
            $taxes[$code]['amt'] += (float) $t->taxamt;
            if ((float) $t->taxper > 0) {
                $taxes[$code]['per'] = (float) $t->taxper;
            }
            // label update karo (latest non-empty value)
            if ($label !== '' && $label !== $code) {
                $taxes[$code]['label'] = $label;
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
            $code = strtoupper(trim((string) $s->suncode));
            if (($s->roff ?? 'N') === 'Y' || str_contains($label, 'ROUND')) {
                continue;
            }
            if (str_contains($label, 'DISCOUNT') || $code === '7103') {
                $discount += abs((float) $s->amount);
            }
        }

        $baseTotal = round($lines->sum('amount'), 2);
        $total = round($baseTotal - $discount, 2);
        $taxTotal = round(array_sum(array_map(function ($x) {
            return $x['amt'];
        }, $taxes)), 2);
        $preRound = round($total + $taxTotal, 2);
        $netAmount = round($preRound);
        $roundOff = round($netAmount - $preRound, 2);

        if (! DB::getSchemaBuilder()->hasTable('ledger')) {
            abort(500, 'Ledger table is unavailable.');
        }
        $previousOutstanding = (float) DB::table('ledger')
            ->where('propertyid', $this->propertyid)
            ->where('subcode', $first->partycode)
            ->selectRaw('COALESCE(SUM(amtdr), 0) - COALESCE(SUM(amtcr), 0) AS balance')
            ->value('balance');
        $netPayable = round($netAmount + $previousOutstanding, 2);

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
        if (! $dueDate) {
            $dueDate = date('Y-m-d', strtotime($first->vdate.' +7 days'));
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

        // e-Invoice IRN (agar ho)
        $irn = '';
        if (DB::getSchemaBuilder()->hasTable('einvoicebill')) {
            $irn = (string) DB::table('einvoicebill')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $first->docid)
                ->orderByDesc('id')
                ->value('irn');
        }

        // Bill series (shortcode) + bill no
        $series = trim((string) ($master->shortcode ?? ''));
        if ($series === '') {
            $series = trim((string) $first->facilitycode);
        }
        if ($series === '') {
            $series = trim((string) $first->vtype);
        }
        $billNo = $series.'/'.trim((string) $first->vprefix).'/'.str_pad((string) $first->vno, 3, '0', STR_PAD_LEFT);

        // Partial / company state info
        $partyStateCode = '';
        $partyStateName = '';
        if ($tenant && ! empty($tenant->gstin) && strlen((string) $tenant->gstin) >= 2) {
            $partyStateCode = substr((string) $tenant->gstin, 0, 2);
        }
        if ($partyStateCode !== '' && DB::getSchemaBuilder()->hasTable('states')) {
            $partyStateName = (string) DB::table('states')
                ->where('propertyid', $this->propertyid)
                ->where('state_code', $partyStateCode)
                ->value('name');
        }

        $data = [
            'company' => $company,
            'companyPanNo' => $companyPanNo,
            'companyCinNo' => $companyCinNo,
            'logoPath' => $logoPath,
            'tenant' => $tenant,
            'cityName' => $cityName,
            'master' => $master,
            'first' => $first,
            'groups' => $groups,
            'taxes' => $taxes,
            'discount' => $discount,
            'roundOff' => $roundOff,
            'total' => $total,
            'baseTotal' => $baseTotal,
            'taxTotal' => $taxTotal,
            'netAmount' => $netAmount,
            'previousOutstanding' => $previousOutstanding,
            'netPayable' => $netPayable,
            'dueDate' => $dueDate,
            'irn' => $irn,
            'billNo' => $billNo,
            'isBillOfSupply' => $taxTotal <= 0,
            'isMeter' => ! empty($meterRows),
            'partyStateCode' => $partyStateCode,
            'partyStateName' => $partyStateName,
            'amountWords' => 'Rupees '.ucwords(amountToWords($netPayable)).' Only',
            'termLines' => $termLines,
        ];

        $pdf = Pdf::loadView('property.mallmanagement.servicebillprint', $data)
            ->setPaper('a4', 'portrait');

        return $pdf->stream('bill-'.preg_replace('/[^A-Za-z0-9-]/', '-', $billNo).'.pdf');
    }

    // Meter readings (power) tenant + service ke shops ke liye — latest reading
    private function sbeMeterReadings($tenantid, $servicecode, $toPeriod)
    {
        if (! DB::getSchemaBuilder()->hasTable('mall_meter_reading')
            || ! DB::getSchemaBuilder()->hasTable('mall_partylocation')) {
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

        $toDate = date('Y-m-d', strtotime($toPeriod));
        $rows = [];
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
            if (! $reading) {
                continue;
            }
            $rows[] = [
                'previous' => (float) $reading->previous_reading,
                'current' => (float) $reading->current_reading,
            ];
        }

        return $rows;
    }

    // ─── Party-Location (tenantlocation) ─────────────────────────────────
    public function tenantlocation(Request $request)
    {
        // Parties from subgroup (party master)
        $parties = collect();
        if (DB::getSchemaBuilder()->hasTable('subgroup')) {
            $parties = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('group_code', 'like', '28'.$this->propertyid.'%')
                ->orderBy('name')
                ->get(['sub_code', 'name']);
        }

        // Services (same source as servicebillentry: mall_chargemast)
        $services = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $services = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('chargename')
                ->get(['chargecode', 'chargename']);
        }

        // Locations (mall_shopmast + floor name)
        $locations = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $locations = DB::table('mall_shopmast')
                ->leftJoin('hkfloors', 'hkfloors.code', '=', 'mall_shopmast.floorid')
                ->where('mall_shopmast.propertyid', $this->propertyid)
                ->where('mall_shopmast.activeyn', 1)
                ->orderBy('mall_shopmast.shopname')
                ->select('mall_shopmast.shopcode', 'mall_shopmast.shopname', 'hkfloors.name as floorname')
                ->get();
        }

        // Listing: party name + service name + location name
        $data = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_partylocation')) {
            $data = DB::table('mall_partylocation as pl')
                ->leftJoin('subgroup as p', function ($j) {
                    $j->on('p.sub_code', '=', 'pl.tenantcode')
                        ->on('p.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('mall_chargemast as s', function ($j) {
                    $j->on('s.chargecode', '=', 'pl.servicecode')
                        ->on('s.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('mall_shopmast as sh', function ($j) {
                    $j->on('sh.shopcode', '=', 'pl.shopcode')
                        ->on('sh.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('hkfloors as f', 'f.code', '=', 'sh.floorid')
                ->where('pl.propertyid', $this->propertyid)
                ->orderBy('pl.id', 'desc')
                ->select(
                    'pl.id',
                    'pl.sno',
                    'pl.tenantcode',
                    'p.name as partyname',
                    'pl.servicecode',
                    's.chargename as servicename',
                    'pl.shopcode',
                    'sh.shopname as shopname',
                    'f.name as floorname',
                    'pl.activeyn'
                )
                ->get();
        }

        // Edit mode (sn pass hone pe)
        $row = null;
        if ($request->has('sn') && $request->sn && DB::getSchemaBuilder()->hasTable('mall_partylocation')) {
            $row = MallPartylocation::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();
        }

        return view('property.mallmanagement.tenantlocation', [
            'parties' => $parties,
            'services' => $services,
            'locations' => $locations,
            'data' => $data,
            'row' => $row,
            'username' => $this->username,
            'ncurdate' => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    // Save party location: 1 party + 1 service + multiple shops ek saath
    public function submittenantlocation(Request $request)
    {
        $request->validate([
            'tenantcode' => 'required|max:8',
            'servicecode' => 'required|max:6',
        ], [
            'tenantcode.required' => 'Party select karein.',
            'servicecode.required' => 'Service select karein.',
        ]);

        $tenantcode = $request->tenantcode;
        $servicecode = $request->servicecode;
        $shopcodes = array_values(array_filter((array) $request->input('shopcode', [])));

        if (! $shopcodes) {
            return response()->json([
                'success' => false,
                'message' => 'Kam se kam ek Location (Shop) add karen.',
            ]);
        }

        try {
            // sno = is party+service ki agli serial (rent: 1,2,3 / cam: 1,2,3 / power: 1,2,3)
            $nextSno = (int) MallPartylocation::where('propertyid', $this->propertyid)
                ->where('tenantcode', $tenantcode)
                ->where('servicecode', $servicecode)
                ->max('sno');

            $created = 0;
            $duplicates = [];

            foreach ($shopcodes as $shopcode) {
                // Duplicate check: party + service + location ek party me ek baar
                $exists = MallPartylocation::where('propertyid', $this->propertyid)
                    ->where('tenantcode', $tenantcode)
                    ->where('servicecode', $servicecode)
                    ->where('shopcode', $shopcode)
                    ->where('activeyn', 1)
                    ->first();

                if ($exists) {
                    $duplicates[] = $shopcode;

                    continue;
                }

                $nextSno++;

                MallPartylocation::create([
                    'propertyid' => $this->propertyid,
                    'tenantcode' => $tenantcode,
                    'servicecode' => $servicecode,
                    'sno' => $nextSno,
                    'shopcode' => $shopcode,
                    'activeyn' => 1,
                    'u_name' => $this->username,
                    'created_at' => now(),
                    'u_ae' => 'A',
                ]);
                $created++;
            }

            $message = $created.' row(s) saved successfully.';
            if ($duplicates) {
                $message .= ' | Duplicate skip: '.implode(', ', $duplicates);
            }

            return response()->json([
                'success' => true,
                'message' => $message,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function updatetenantlocation(Request $request)
    {
        $request->validate([
            'sn' => 'required|numeric',
            'tenantcode' => 'required|max:8',
            'servicecode' => 'required|max:6',
            'sno' => 'required|numeric|min:1',
            'shopcode' => 'required|max:8',
        ]);

        try {
            $row = MallPartylocation::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $dup = MallPartylocation::where('propertyid', $this->propertyid)
                ->where('tenantcode', $request->tenantcode)
                ->where('servicecode', $request->servicecode)
                ->where('shopcode', $request->shopcode)
                ->where('activeyn', 1)
                ->where('id', '!=', $request->sn)
                ->first();

            if ($dup) {
                return response()->json([
                    'success' => false,
                    'message' => 'Ye party + service + location pehle se mapped hai (S.No: '.$dup->sno.').',
                ]);
            }

            $row->update([
                'tenantcode' => $request->tenantcode,
                'servicecode' => $request->servicecode,
                'sno' => $request->sno,
                'shopcode' => $request->shopcode,
                'u_name' => $this->username,
                'u_ae' => 'U',
                'activeyn' => $request->activeyn === '0' ? 0 : 1,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Party location updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function deletetenantlocation($sn)
    {
        try {
            $row = MallPartylocation::where('id', $sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $row->update([
                'activeyn' => 0,
                'u_name' => $this->username,
                'u_ae' => 'U',
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Party location deactivated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function dailymeterreading()
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first(['comp_name']);
        $companyname = $company->comp_name ?? 'Company Name';

        return view('property.mallmanagement.meterreading', [
            'username' => $this->username,
            'ncurdate' => $this->ncurdate,
            'todaydate' => now()->format('Y-m-d'),
            'propertyid' => $this->propertyid,
            'companyname' => $companyname,
        ]);
    }

    public function meterReadingShopList(Request $request)
    {
        $propertyid = $this->propertyid;
        $date = $request->input('date', now()->format('Y-m-d'));
        $filter = $request->input('filter', 'all');   // all | pending | completed
        $search = trim((string) $request->input('search', ''));

        $shops = DB::table('mall_shopmast as s')
            ->leftJoin('hkfloors as f', 'f.code', '=', 's.floorid')
            ->leftJoin('mall_meter_reading as r', function ($join) use ($date) {
                $join->on('r.shopid', '=', 's.shopcode')
                    ->where('r.propertyid', '=', DB::raw('s.propertyid'))
                    ->where('r.reading_date', '=', $date);
            })
            ->where('s.propertyid', $propertyid)
            ->where('s.activeyn', 1)
            ->when($search !== '', function ($q) use ($search) {
                $q->where(function ($qq) use ($search) {
                    $qq->where('s.shopcode', 'like', "%{$search}%")
                        ->orWhere('s.shopname', 'like', "%{$search}%");
                });
            })
            ->select([
                's.shopcode as shopid',
                's.shopcode',
                's.shopname',
                's.floorid',
                'f.name as floorname',
                's.chargeablearea',
                's.areaunit',
                's.electricitymeterno',
                'r.id as reading_sn',
                'r.current_reading',
                'r.consumption',
            ])
            ->orderBy('s.shopcode')
            ->get()
            ->map(function ($row) {
                $row->status = $row->reading_sn ? 'completed' : 'pending';

                return $row;
            });

        if ($filter === 'pending') {
            $shops = $shops->where('status', 'pending')->values();
        } elseif ($filter === 'completed') {
            $shops = $shops->where('status', 'completed')->values();
        }

        $all = DB::table('mall_shopmast as s')
            ->leftJoin('mall_meter_reading as r', function ($join) use ($date) {
                $join->on('r.shopid', '=', 's.shopcode')
                    ->where('r.propertyid', '=', DB::raw('s.propertyid'))
                    ->where('r.reading_date', '=', $date);
            })
            ->where('s.propertyid', $propertyid)
            ->where('s.activeyn', 1)
            ->select('s.shopcode', DB::raw('r.id as reading_sn'))
            ->get();

        return response()->json([
            'date' => $date,
            'counts' => [
                'all' => $all->count(),
                'pending' => $all->whereNull('reading_sn')->count(),
                'completed' => $all->whereNotNull('reading_sn')->count(),
            ],
            'shops' => $shops,
        ]);
    }

    public function meterReadingShopDetail(Request $request)
    {
        $propertyid = $this->propertyid;
        $shopid = $request->input('shopid');
        $date = $request->input('date', now()->format('Y-m-d'));

        $shop = MallShopmast::where('mall_shopmast.propertyid', $propertyid)
            ->where('mall_shopmast.shopcode', $shopid)
            ->leftJoin('hkfloors as f', 'f.code', '=', 'mall_shopmast.floorid')
            ->first(['mall_shopmast.id', 'mall_shopmast.shopcode', 'mall_shopmast.shopname', 'f.name as floorname', 'mall_shopmast.chargeablearea', 'mall_shopmast.areaunit', 'mall_shopmast.electricitymeterno']);

        if (! $shop) {
            return response()->json(['success' => false, 'message' => 'Shop not found'], 404);
        }

        $previous = MallMeterReading::where('propertyid', $propertyid)
            ->where('shopid', $shopid)
            ->where('reading_date', '<', $date)
            ->orderByDesc('reading_date')
            ->first(['current_reading']);

        $today = MallMeterReading::where('propertyid', $propertyid)
            ->where('shopid', $shopid)
            ->where('reading_date', $date)
            ->first(['current_reading', 'multiplication_factor', 'consumption', 'remarks', 'meter_photo', 'reading_status']);

        return response()->json([
            'success' => true,
            'shop' => [
                'shopid' => $shop->shopcode,
                'shopcode' => $shop->shopcode,
                'shopname' => $shop->shopname,
                'floorname' => $shop->floorname,
                'chargeablearea' => $shop->chargeablearea,
                'areaunit' => $shop->areaunit,
                'electricitymeterno' => $shop->electricitymeterno,
            ],
            'previous_reading' => $previous->current_reading ?? '0.0000',
            'has_previous_reading' => (bool) $previous,
            'multiplication_factor' => $today->multiplication_factor ?? '1.0000',
            'existing' => $today ? [
                'current_reading' => $today->current_reading,
                'consumption' => $today->consumption,
                'remarks' => $today->remarks,
                'meter_photo' => $today->meter_photo && ($rel = $this->meterPhotoRel($today->meter_photo)) ? asset($rel) : null,
                'reading_status' => $today->reading_status,
            ] : null,
        ]);
    }

    public function meterReadingSave(Request $request)
    {
        $propertyid = $this->propertyid;

        $validator = Validator::make($request->all(), [
            'shopid' => 'required|string|max:50',
            'reading_date' => 'required|date',
            'current_reading' => 'required|numeric|min:0',
            'remarks' => 'nullable|string|max:50',
            'photo' => 'nullable|file',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $shopid = $request->input('shopid');
        $readingDate = $request->input('reading_date');
        $currReading = $request->input('current_reading');

        try {
            $previousRow = MallMeterReading::where('propertyid', $propertyid)
                ->where('shopid', $shopid)
                ->where('reading_date', '<', $readingDate)
                ->orderByDesc('reading_date')
                ->first();

            $previous = $previousRow->current_reading ?? 0;
            $multiplicationFactor = $previousRow->multiplication_factor ?? 1;

            if ($currReading < $previous) {
                return response()->json([
                    'success' => false,
                    'message' => 'Current reading cannot be less than previous reading.',
                ], 422);
            }

            $consumption = $previousRow
                ? ($currReading - $previous) * $multiplicationFactor
                : 0;

            $photoPath = null;
            if ($request->hasFile('photo')) {
                // Rule 10.7 — compression is mandatory via the service.
                $compressed = app(ImageCompressionService::class)
                    ->compress($request->file('photo'));

                // Store directly inside the public webroot so the photo is
                // served without depending on a `php artisan storage:link`
                // symlink (which is often missing on shared hosting).
                $uploadDir = public_path('uploads/meter_photos');
                if (! is_dir($uploadDir)) {
                    mkdir($uploadDir, 0777, true);
                }

                $ext = strtolower($compressed->getClientOriginalExtension());
                if (empty($ext) || ! in_array($ext, ['jpg', 'jpeg', 'png', 'webp', 'gif'])) {
                    // Detect from mime type as fallback
                    $mime = $compressed->getMimeType();
                    $ext = match ($mime) {
                        'image/png' => 'png',
                        'image/webp' => 'webp',
                        'image/gif' => 'gif',
                        default => 'jpg',
                    };
                }
                $photoName = Str::random(20).'_'.time().'.'.$ext;
                $compressed->move($uploadDir, $photoName);
                $photoPath = 'uploads/meter_photos/'.$photoName;
            }

            $existing = MallMeterReading::where('propertyid', $propertyid)
                ->where('shopid', $shopid)
                ->where('reading_date', $readingDate)
                ->first();

            if ($existing) {
                return response()->json([
                    'success' => false,
                    'message' => 'Reading for this date is already recorded and is locked. It can only be edited from the next day onward.',
                ], 422);
            }

            $data = [
                'propertyid' => $propertyid,
                'shopid' => $shopid,
                'reading_date' => $readingDate,
                'previous_reading' => $previous,
                'current_reading' => $currReading,
                'multiplication_factor' => $multiplicationFactor,
                'consumption' => $consumption,
                'reading_status' => 'Normal',
                'remarks' => $request->input('remarks'),
                'entry_source' => 'MOBILE',
                'u_ae' => 'A',
                'u_name' => $this->username,
                'created_at' => now(),
            ];

            if ($photoPath) {
                $data['meter_photo'] = $photoPath;
            }

            MallMeterReading::create($data);

            return response()->json([
                'success' => true,
                'message' => 'Reading saved successfully!',
                'data' => [
                    'consumption' => number_format($consumption, 2),
                ],
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    // Daily Meter Reading Register — page with From/To Date filter
    public function dailymeterreadingregister(Request $request)
    {
        $fromDate = $request->input('from_date', date('Y-m-d'));
        $toDate = $request->input('to_date', date('Y-m-d'));

        $rows = $this->meterReadingRegisterQuery($fromDate, $toDate)->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return view('property.mallmanagement.dailymeterreadingregister', [
            'company' => $company,
            'rows' => $rows,
            'fromDate' => $fromDate,
            'toDate' => $toDate,
            'ncurdate' => $this->ncurdate,
        ]);
    }

    // Daily Meter Reading Register — DomPDF print
    public function printdailymeterreadingregister(Request $request)
    {
        $fromDate = $request->input('from_date', date('Y-m-d'));
        $toDate = $request->input('to_date', date('Y-m-d'));

        $rows = $this->meterReadingRegisterQuery($fromDate, $toDate)->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.dailymeterreadingregisterprint', [
            'company' => $company,
            'rows' => $rows,
            'fromDate' => $fromDate,
            'toDate' => $toDate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('daily-meter-reading-register-'.date('YmdHis').'.pdf');
    }

    // Daily Meter Reading Register — Excel Export
    public function exceldailymeterreadingregister(Request $request)
    {
        $fromDate = $request->input('from_date', date('Y-m-d'));
        $toDate = $request->input('to_date', date('Y-m-d'));

        $rows = $this->meterReadingRegisterQuery($fromDate, $toDate)->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $export = new DailyMeterReadingExport(
            $rows,
            $fromDate,
            $toDate,
            $company->cname ?? ''
        );

        return $export->download();
    }

    protected function meterReadingRegisterQuery($fromDate, $toDate = null)
    {
        $toDate = $toDate ?: $fromDate;

        $query = DB::table('mall_meter_reading as R')
            ->leftJoin('mall_shopmast as S', function ($j) {
                $j->on('R.shopid', '=', 'S.shopcode');
            })
            ->leftJoin('hkfloors as F', 'S.floorid', '=', 'F.code')
            ->where('R.propertyid', $this->propertyid)
            ->select(
                'R.reading_date as ReadingDate',
                'F.name as Floor',
                'S.shopname as ShopNo',
                'S.electricitymeterno as MeterNo',
                'R.previous_reading as Previous',
                'R.current_reading as Current',
                'R.meter_photo as Photo',
                'R.multiplication_factor as MF',
                'R.consumption as Consumption',
                'R.u_name as ReadingBy',
                'R.created_at as Time'
            )
            ->orderBy('R.reading_date')
            ->orderBy('F.name')
            ->orderBy('S.shopname')
            ->orderBy('R.created_at');

        if (! empty($fromDate)) {
            $query->whereDate('R.reading_date', '>=', $fromDate);
        }
        if (! empty($toDate)) {
            $query->whereDate('R.reading_date', '<=', $toDate);
        }

        return $query;
    }

    /**
     * Normalize a stored meter_photo value into a web-relative path that
     * actually exists. Supports the new public-webroot uploads
     * (uploads/meter_photos/...) as well as legacy photos saved on the
     * "public" disk (meter_photos/... / storage/meter_photos/...).
     */
    protected function meterPhotoRel($path)
    {
        $path = ltrim((string) preg_replace('#^(storage/|/storage/)#i', '', (string) $path), '/');

        if ($path && file_exists(public_path($path))) {
            return $path;
        }

        if ($path && file_exists(storage_path('app/public/'.$path))) {
            return 'storage/'.$path;
        }

        return null;
    }

    // ─── Facility Bill Register (Mall) ────────────────────────────────────────

    public function facilitybillregister(Request $request)
    {
        $fromDate = $request->input('from_date', $this->ncurdate ?: date('Y-m-d'));
        $toDate = $request->input('to_date', $this->ncurdate ?: date('Y-m-d'));

        $rows = $this->facilityBillRegisterQuery($fromDate, $toDate);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return view('property.mallmanagement.facilitybillregister', [
            'company' => $company,
            'rows' => $rows,
            'fromDate' => $fromDate,
            'toDate' => $toDate,
            'ncurdate' => $this->ncurdate,
        ]);
    }

    // Facility Bill Register — DomPDF print
    public function printfacilitybillregister(Request $request)
    {
        $fromDate = $request->input('from_date', $this->ncurdate ?: date('Y-m-d'));
        $toDate = $request->input('to_date', $this->ncurdate ?: date('Y-m-d'));

        $rows = $this->facilityBillRegisterQuery($fromDate, $toDate);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.facilitybillregisterprint', [
            'company' => $company,
            'rows' => $rows,
            'fromDate' => $fromDate,
            'toDate' => $toDate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('facility-bill-register-'.date('YmdHis').'.pdf');
    }

    // Facility Bill Register — Excel Export
    public function excelfacilitybillregister(Request $request)
    {
        $fromDate = $request->input('from_date', $this->ncurdate ?: date('Y-m-d'));
        $toDate = $request->input('to_date', $this->ncurdate ?: date('Y-m-d'));

        $rows = $this->facilityBillRegisterQuery($fromDate, $toDate);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $export = new FacilityBillRegisterExport(
            $rows,
            $fromDate,
            $toDate,
            $company->comp_name ?? ''
        );

        return $export->download();
    }

    protected function facilityBillRegisterQuery($fromDate, $toDate)
    {
        $propertyid = $this->propertyid;

        $sql = "
            SELECT
                Fb.docid            AS Docid,
                Fb.partycode        AS PartyCode,
                L.name              AS Party,
                Fb.vdate            AS VDate,
                CONCAT(Fb1.vtype, '/', Fb1.vno) AS BillNo,
                Fb1.sno             AS Sno,
                Fb1.forperiod       AS ForPeriod,
                Fb1.toperiod        AS ToPeriod,
                Fb1.facilitycode    AS FacilityCode,
                F.chargename        AS Facility,
                Fb1.unit            AS Unit,
                Fb1.unitrate        AS UnitRate,
                Fb1.amount          AS Amount,
                COALESCE(T.CGSTPer, 0) AS CGSTPer,
                COALESCE(T.CGSTAmt, 0) AS CGSTAmt,
                COALESCE(T.SGSTPer, 0) AS SGSTPer,
                COALESCE(T.SGSTAmt, 0) AS SGSTAmt,
                COALESCE(T.IGSTPer, 0) AS IGSTPer,
                COALESCE(T.IGSTAmt, 0) AS IGSTAmt,
                COALESCE(B.Discount, 0) AS Discount,
                COALESCE(B.RoundOff, 0) AS RoundOff,
                COALESCE(B.NetAmount, 0) AS NetAmount,
                Fb.remark           AS Remark
            FROM facilitybill Fb
            LEFT JOIN facilitybill1 Fb1
                ON Fb.docid = Fb1.docid1
                AND Fb.propertyid = Fb1.propertyid
            LEFT JOIN (
                SELECT
                    propertyid, docid1, sno1,
                    MAX(CASE WHEN UPPER(TRIM(taxcode)) = 'CGST' THEN taxper END) AS CGSTPer,
                    SUM(CASE WHEN UPPER(TRIM(taxcode)) = 'CGST' THEN taxamt ELSE 0 END) AS CGSTAmt,
                    MAX(CASE WHEN UPPER(TRIM(taxcode)) = 'SGST' THEN taxper END) AS SGSTPer,
                    SUM(CASE WHEN UPPER(TRIM(taxcode)) = 'SGST' THEN taxamt ELSE 0 END) AS SGSTAmt,
                    MAX(CASE WHEN UPPER(TRIM(taxcode)) = 'IGST' THEN taxper END) AS IGSTPer,
                    SUM(CASE WHEN UPPER(TRIM(taxcode)) = 'IGST' THEN taxamt ELSE 0 END) AS IGSTAmt
                FROM facilitybill2
                WHERE propertyid = ?
                GROUP BY propertyid, docid1, sno1
            ) T
                ON T.propertyid = Fb1.propertyid
                AND T.docid1 = Fb1.docid1
                AND T.sno1 = Fb1.sno
            LEFT JOIN
            (
                -- suntranfacility me docid CHARGE docid hota hai (facilitybill1.docid),
                -- report ka header docid facilitybill1.docid1 hai — dono ko map karke join
                SELECT
                    S.propertyid,
                    F1.docid1              AS headerdocid,
                    SUM(CASE WHEN UPPER(TRIM(S.dispname)) = 'DISCOUNT' THEN S.amount ELSE 0 END) AS Discount,
                    SUM(CASE WHEN UPPER(TRIM(S.dispname)) = 'ROUND OFF' THEN S.amount ELSE 0 END) AS RoundOff,
                    SUM(CASE WHEN UPPER(TRIM(S.dispname)) = 'NET AMOUNT' THEN S.amount ELSE 0 END) AS NetAmount
                FROM suntranfacility S
                JOIN (
                    SELECT DISTINCT propertyid, docid, docid1
                    FROM facilitybill1
                ) F1
                    ON F1.propertyid = S.propertyid
                    AND F1.docid = S.docid
                WHERE S.propertyid = ?
                GROUP BY S.propertyid, F1.docid1
            ) B
                ON B.propertyid = Fb.propertyid
                AND B.headerdocid = Fb.docid
            LEFT JOIN subgroup L
                ON Fb.partycode = L.sub_code
                AND L.propertyid = Fb.propertyid
            LEFT JOIN mall_chargemast F
                ON Fb1.facilitycode = F.chargecode
                AND F.propertyid = Fb.propertyid
            WHERE Fb.propertyid = ?
                AND Fb.vdate >= ?
                AND Fb.vdate <= ?
            ORDER BY L.name, Fb.vdate, Fb1.vtype, Fb1.sno
        ";

        return DB::select($sql, [
            $propertyid,
            $propertyid,
            $propertyid,
            $fromDate,
            $toDate.' 23:59:59',
        ]);
    }

    public function malldaskboard(Request $request)
    {
        $propertyid = $this->propertyid;
        $totalShops = DB::selectOne('SELECT COUNT(*) AS cnt FROM mall_shopmast WHERE activeyn=1 AND propertyid=?', [$propertyid]);
        // DISTINCT shopcode — mall_partylocation me ek shop ki multiple (duplicate) mapping rows ho sakti hain
        $occupiedUnits = DB::selectOne('SELECT COUNT(DISTINCT S.shopcode) AS cnt FROM mall_shopmast S JOIN mall_partylocation P ON S.shopcode=P.shopcode AND S.propertyid=P.propertyid WHERE S.activeyn=1 AND S.propertyid=? AND P.activeyn=1', [$propertyid]);
        $expiringLeases = DB::selectOne('SELECT COUNT(*) AS cnt FROM mall_lease_hdr WHERE propertyid = ? AND leaseexpirydate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 90 DAY)', [$propertyid]);
        $underFitOut = DB::selectOne('SELECT COUNT(*) AS cnt FROM mall_shopmast WHERE activeyn=0 AND propertyid=?', [$propertyid]);
        $totalTenants = DB::selectOne('SELECT COUNT(DISTINCT tenantid) AS cnt FROM mall_lease_hdr WHERE propertyid = ?', [$propertyid]);

        // Vacant Units = Total Shops/Units - Occupied Units (kabhi negative na aaye)
        $totalShopsCnt    = (int) ($totalShops->cnt    ?? 0);
        $occupiedUnitsCnt = (int) ($occupiedUnits->cnt ?? 0);
        $underFitOutCnt   = (int) ($underFitOut->cnt   ?? 0);
        $vacantUnitsCnt   = max(0, $totalShopsCnt - $occupiedUnitsCnt);
        $vacantUnits      = (object) ['cnt' => $vacantUnitsCnt];
        $blockedCnt       = 0; // no separate blocked column; set 0
        $allUnitsCnt      = $totalShopsCnt + $underFitOutCnt;

        // Percentages (denominator = allUnits so all slices add to ~100%)
        $denom       = $allUnitsCnt > 0 ? $allUnitsCnt : 1;
        $occupiedPct = round(($occupiedUnitsCnt * 100) / $denom, 1);
        $vacantPct   = round(($vacantUnitsCnt   * 100) / $denom, 1);
        $fitOutPct   = round(($underFitOutCnt   * 100) / $denom, 1);
        $blockedPct  = 0;

        // Monthly Sale / Collection Summary — current financial year (April se ab tak)
        $fyStartYear = (int) date('n') >= 4 ? (int) date('Y') : (int) date('Y') - 1;
        $fyFromDate = $fyStartYear . '-04-01';
        $fyUpToDate = date('Y-m-d');                          // header me dikhane ke liye
        $fyToDateExclusive = date('Y-m-d', strtotime('+1 day')); // query me vdate < ke liye

        $billedRows = DB::select(
            "SELECT DATE_FORMAT(vdate, '%Y-%m') AS billmonth, ROUND(SUM(amount), 2) AS billedamount
             FROM facilitybill1
             WHERE propertyid = ? AND vdate >= ? AND vdate < ?
             GROUP BY YEAR(vdate), MONTH(vdate)
             ORDER BY YEAR(vdate), MONTH(vdate)",
            [$propertyid, $fyFromDate, $fyToDateExclusive]
        );

        $receiptRows = DB::select(
            "SELECT DATE_FORMAT(vdate, '%Y-%m') AS billmonth, ROUND(SUM(receiptamount), 2) AS receiptamount
             FROM mall_receipt
             WHERE propertyid = ? AND vdate >= ? AND vdate < ?
             GROUP BY YEAR(vdate), MONTH(vdate)
             ORDER BY YEAR(vdate), MONTH(vdate)",
            [$propertyid, $fyFromDate, $fyToDateExclusive]
        );

        $billedMap = [];
        foreach ($billedRows as $row) {
            $billedMap[$row->billmonth] = (float) $row->billedamount;
        }

        $receiptMap = [];
        foreach ($receiptRows as $row) {
            $receiptMap[$row->billmonth] = (float) $row->receiptamount;
        }

        // ── FY ke saare months generate karo (Apr to current month) ──
        // Data ho ya na ho, har month graph mein dikhega
        $allFyMonths = [];
        $fyStart = new \DateTime($fyFromDate);
        $fyEnd   = new \DateTime($fyUpToDate);
        $cur     = clone $fyStart;
        while ($cur <= $fyEnd) {
            $allFyMonths[] = $cur->format('Y-m');
            $cur->modify('+1 month');
        }

        $monthlySummary = [];
        $grandBilled    = 0;
        $grandCollected = 0;

        foreach ($allFyMonths as $month) {
            $billed    = $billedMap[$month]  ?? 0;
            $collected = $receiptMap[$month] ?? 0;
            $grandBilled    += $billed;
            $grandCollected += $collected;

            $monthlySummary[] = (object) [
                'month'      => $month,
                'monthname'  => date('M', strtotime($month . '-01')),
                'billed'     => $billed,
                'collected'  => $collected,
                'difference' => $collected - $billed,
            ];
        }

        // ── Lease Expiry (Next 90 Days) ──
        $leaseExpiry90 = DB::select(
            "SELECT L.tenantid, S.shopname, T.name, L.leaseexpirydate,
                    DATEDIFF(L.leaseexpirydate, CURDATE()) AS daysleft
             FROM mall_lease_hdr L
             LEFT JOIN mall_partylocation P ON L.tenantid = P.tenantcode
             LEFT JOIN mall_shopmast S ON P.shopcode = S.shopcode AND L.propertyid = S.propertyid
             LEFT JOIN subgroup T ON L.tenantid = T.sub_code
             WHERE L.propertyid = ?
               AND L.leaseexpirydate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 90 DAY)
             GROUP BY L.tenantid
             ORDER BY L.leaseexpirydate ASC",
            [$propertyid]
        );

        // ── Lease Expiry (All) for View All ──
        $leaseExpiryAll = DB::select(
            "SELECT L.tenantid, S.shopname, T.name, L.leaseexpirydate,
                    DATEDIFF(L.leaseexpirydate, CURDATE()) AS daysleft
             FROM mall_lease_hdr L
             LEFT JOIN mall_partylocation P ON L.tenantid = P.tenantcode
             LEFT JOIN mall_shopmast S ON P.shopcode = S.shopcode AND L.propertyid = S.propertyid
             LEFT JOIN subgroup T ON L.tenantid = T.sub_code
             WHERE L.propertyid = ?
             GROUP BY L.tenantid
             ORDER BY L.leaseexpirydate ASC",
            [$propertyid]
        );

        // ── Rent / CAM Increment (Next 90 Days + All for View All) ──
        $rentCamIncrement90 = [];
        $rentCamIncrementAll = [];
        if (DB::getSchemaBuilder()->hasTable('mall_lease_escalation')) {
            $schema = DB::getSchemaBuilder();
            $hasTenantId = $schema->hasColumn('mall_lease_escalation', 'tenantid');
            $hasShopCode = $schema->hasColumn('mall_lease_escalation', 'shopcode');

            // Legacy rows me tenantid/shopcode khaali hote hain — lease header + partylocation se fallback
            $leaseIdCol = $schema->hasColumn('mall_lease_hdr', 'id') ? 'LH.id' : 'LH.sn';
            $leaseJoin = "LEFT JOIN mall_lease_hdr LH ON ME.leaseid = {$leaseIdCol} AND ME.propertyid = LH.propertyid";
            $tenantExpr = $hasTenantId ? 'COALESCE(ME.tenantid, LH.tenantid)' : 'LH.tenantid';
            $shopExpr = $hasShopCode
                ? "COALESCE(
                       (SELECT MS.shopname FROM mall_shopmast MS
                         WHERE MS.shopcode = ME.shopcode AND MS.propertyid = ME.propertyid LIMIT 1),
                       (SELECT MS2.shopname FROM mall_partylocation P2
                          JOIN mall_shopmast MS2 ON MS2.shopcode = P2.shopcode AND MS2.propertyid = P2.propertyid
                         WHERE P2.tenantcode = {$tenantExpr} AND P2.propertyid = ME.propertyid
                           AND P2.activeyn = '1' LIMIT 1)
                   )"
                : "(SELECT MS.shopname FROM mall_partylocation P
                     JOIN mall_shopmast MS ON MS.shopcode = P.shopcode AND MS.propertyid = P.propertyid
                    WHERE P.tenantcode = LH.tenantid AND P.propertyid = LH.propertyid AND P.activeyn = '1'
                    LIMIT 1)";

            $rentCamSql = "SELECT ME.leaseid, S.name, {$shopExpr} AS shopname,
                        COALESCE(MC.chargename, ME.chargecode) AS chargename,
                        ME.effectivefrom, ME.increasepercent,
                        DATEDIFF(ME.effectivefrom, CURDATE()) AS daysleft
                 FROM mall_lease_escalation ME
                 {$leaseJoin}
                 LEFT JOIN subgroup S ON {$tenantExpr} = S.sub_code
                 LEFT JOIN mall_chargemast MC
                        ON ME.propertyid = MC.propertyid
                       AND (MC.chargecode = ME.chargecode OR MC.shortcode = ME.chargecode)
                 WHERE ME.propertyid = ?";

            $rentCamOrder = ' ORDER BY ME.effectivefrom ASC, ME.chargecode ASC';

            $rentCamIncrement90 = DB::select(
                $rentCamSql." AND ME.effectivefrom BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 90 DAY)".$rentCamOrder,
                [$propertyid]
            );

            // View All bhi aaj ki date se hi dikhana hai — past (purani) increments nahi
            $rentCamIncrementAll = DB::select(
                $rentCamSql." AND ME.effectivefrom >= CURDATE()".$rentCamOrder,
                [$propertyid]
            );
        }

        // ── Charge Wise Revenue (Billed Amount per charge type) ──
        $chargeWiseRows = DB::select(
            "SELECT
                A.vtype AS chargename,
                ROUND(SUM(A.basevalue), 2) AS billedamount
             FROM (
                SELECT propertyid, docid, docid1, sno1, vtype,
                       MAX(basevalue) AS basevalue,
                       SUM(taxamt)    AS taxamount
                FROM facilitybill2
                WHERE propertyid = ?
                GROUP BY propertyid, docid, docid1, sno1, vtype
             ) A
             GROUP BY A.vtype
             ORDER BY billedamount DESC",
            [$propertyid]
        );

        // Max value for progress-bar width
        $chargeWiseMax = count($chargeWiseRows)
            ? max(array_map(fn($r) => (float) $r->billedamount, $chargeWiseRows))
            : 1;

        return view('property.mallmanagement.malldaskboard', compact(
            'totalShops', 'occupiedUnits', 'vacantUnits',
            'occupiedPct', 'vacantPct', 'expiringLeases', 'underFitOut', 'totalTenants',
            'monthlySummary', 'grandBilled', 'grandCollected', 'fyFromDate', 'fyUpToDate',
            'fitOutPct', 'blockedPct', 'occupiedUnitsCnt', 'vacantUnitsCnt',
            'underFitOutCnt', 'blockedCnt', 'allUnitsCnt',
            'chargeWiseRows', 'chargeWiseMax',
            'leaseExpiry90', 'leaseExpiryAll', 'rentCamIncrement90', 'rentCamIncrementAll'
        ));
    }
}
