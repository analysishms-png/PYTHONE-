<?php

namespace App\Http\Controllers;

use App\Helpers\WhatsappSend;
use App\Models\Kot;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Companyreg;
use App\Models\Guestfolio;
use App\Models\Suntran;
use App\Models\RoomMast;
use App\Models\Sale1;
use App\Models\Sale2;
use App\Models\Stock;
use App\Models\Paycharge;
use App\Models\MenuHelp;
use App\Models\Depart;
use App\Models\Revmast;
use App\Models\ServerMast;
use App\Models\EnviroPos;
use App\Models\GuestProf;
use App\Models\PrintingSetup;
use App\Models\UserPermission;
use App\Models\RoomOcc;
use App\Models\GuestReward;
use App\Models\Cities;
use App\Models\EnviroWhatsapp;
use App\Models\SubGroup;
use App\Models\Sale1log;
use App\Models\Sale2log;
use App\Models\Stocklog;
use App\Models\Suntranlog;
use App\Models\Kot as KoTModal;
use App\Models\KotLog;
use App\Models\RewardParameter;
use App\Models\Sundrytype;
use App\Models\VoucherPrefix;
use App\Models\VoucherType;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Filesystem\AwsS3V3Adapter;
use Illuminate\Support\Facades\Log;
use PhpParser\Node\Stmt\TryCatch;
use Symfony\Component\Finder\Iterator\VcsIgnoredFilterIterator;

use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;
use function App\Helpers\splitByJoin;

class SaleBill extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            $this->prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $this->prpid)->first();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function checkCustomerReward(Request $request)
    {
        $mobileno = trim($request->mobileno);
        $restcode = trim($request->restcode);

        $rwparam = RewardParameter::where('propertyid', $this->propertyid)
            ->where('restcode', $restcode)
            ->where('activeyn', 1)
            ->where('validupto', '>=', ncurdate())
            ->orderByDesc('limitlow')
            ->first();

        if (!$rwparam) {
            return response()->json([
                'success' => false,
                'message' => 'No active reward parameter found for this outlet.'
            ]);
        }

        $balance = $this->getRewardBalance($mobileno, $restcode);

        return response()->json([
            'success' => true,
            'availablepoint' => $balance['availablepoint'],
            'availablevalue' => $balance['availablevalue'],
            'pointvalue' => $balance['availablepoint'] > 0
                ? round($balance['availablevalue'] / $balance['availablepoint'], 2)
                : 0
        ]);
    }

    public function getRewardBalance($mobileno, $restcode)
    {
        $data = GuestReward::selectRaw("
            COALESCE(SUM(rewardpoint),0) as totalrewardpoint,
            COALESCE(SUM(redeempoint),0) as totalredeempoint,
            COALESCE(SUM(rewardvalue),0) as totalrewardvalue,
            COALESCE(SUM(reedemvalue),0) as totalredeemvalue
        ")
            ->where('propertyid', $this->propertyid)
            ->where('mobileno', $mobileno)
            ->where('restcode', $restcode)
            ->first();

        return [
            'availablepoint' => $data->totalrewardpoint - $data->totalredeempoint,
            'availablevalue' => $data->totalrewardvalue - $data->totalredeemvalue
        ];
    }

    public function salebillsubmit(Request $request)
    {

        $request->validate([
            'roomno' => 'required',
            'pax' => 'required',
            'itemcode1' => 'required',
            'rate1' => 'required',
            'fixrestcode' => 'required'
        ]);

        DB::beginTransaction();

        try {
            // 1. Prepare basic data
            $docids = array_filter(explode(',', $request->input('kotdocid')));
            $kotdata = KoTModal::where('propertyid', $this->propertyid)->whereIn('docid', $docids)->first();

            // Log::info($kotdata);
            // return 'sagar';
            $kotvno = KoTModal::where('propertyid', $this->propertyid)
                ->whereIn('docid', $docids)
                ->pluck('vno')->unique()->implode(',');
            $totalItems = intval($request->input('totalitems'));
            $roomno     = $request->input('roomno');
            $mergedWith = KoTModal::where('docid', $docids[0] ?? '')
                ->where('propertyid', $this->propertyid)
                ->value('mergedwith');

            // return $totalItems;

            // 2. Group items by restcode
            $grouped = [];
            for ($i = 1; $i <= $totalItems; $i++) {
                $code = $request->input("itemcode$i");
                $rest = DB::table('itemmast')
                    ->where('Property_ID', $this->propertyid)
                    ->where('Code', $code)
                    ->where('RestCode', $request->input("itemrestcode$i"))
                    ->value('RestCode');
                // Log::info("Item code: $code, RestCode: $rest");
                if (!$rest) throw new Exception("Missing RestCode for $code");
                $grouped[$rest][] = $i;
            }

            // 3. Process each outlet separately
            $generatedDocs = [];
            $rests = [];
            $guestProfileInserted = false;
            foreach ($grouped as $rest => $indexes) {
                $rests[] = $rest;
                // a. Generate voucher number
                $dept = Depart::where('propertyid', $this->propertyid)
                    ->where('dcode', $rest)->first();
                $vtype = VoucherType::where('propertyid', $this->propertyid)
                    ->where('restcode', $rest)
                    ->where('description', $dept->short_name . ' Memo Entry')
                    ->value('v_type');
                if (!$vtype) throw new Exception("Missing vtype for $rest");

                $pref = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $this->ncurdate)
                    ->whereDate('date_to', '>=', $this->ncurdate)
                    ->first();
                $vno = $pref->start_srl_no + 1;
                $docid = $this->propertyid . $vtype . '‎ ‎ ' . $pref->prefix . '‎ ‎ ‎ ‎ ' . $vno;
                $generatedDocs[] = $docid;

                $vat      = floatval($request->input($rest . 'vatamount', 0));
                $deduction      = floatval($request->input($rest . 'deductionamount', 0));
                $addition      = floatval($request->input($rest . 'additionamount', 0));
                $redemptionamount      = floatval($request->input($rest . 'redemptionamount', 0));
                $cgst     = floatval($request->input($rest . 'cgstamount', 0));
                $sgst     = floatval($request->input($rest . 'sgstamount', 0));
                $igst     = floatval($request->input($rest . 'igstamount', 0));
                $totaltaxable = floatval($request->input($rest . 'totaltaxable', 0));
                $totalnontaxable = floatval($request->input($rest . 'totalnontaxable', 0));
                $servicepercent = floatval($request->input($rest . 'servicechargefix', 0));
                $service  = floatval($request->input($rest . 'servicechargeamount', 0));
                $discper = floatval($request->input($rest . 'discountfix', 0));
                $discount = floatval($request->input($rest . 'discountsundry', 0));
                $roundoff = floatval($request->input($rest . 'roundoffamount', 0));
                $netamt   = floatval($request->input($rest . 'netamount', 0));
                $totalamt = floatval($request->input($rest . 'totalamountoutlet', 0));
                $sundryCount = intval($request->input($rest . 'sundrycount', 0));

                if ($netamt == 0) {
                    DB::rollBack();
                    throw new Exception('Net Amount cannot be zero for outlet ' . $rest);
                }

                if ($sundryCount == '0') {
                    DB::rollBack();
                    throw new Exception('Sundry Count not Found');
                }

                if ($roundoff > 0) {
                    $roundyn = 'Y';
                } else {
                    $roundyn = 'N';
                }

                $roomdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('roomno', $roomno)->whereNull('type')->first();
                $msno1 = 0;
                $wpnum = '';
                if (isset($roomdata)) {
                    $gprof = GuestProf::where('propertyid', $this->propertyid)->where('docid', $roomdata->docid)->first();
                    $wpnum = $gprof->mobile_no ?? '';
                    $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $roomdata->docid)->where('leaderyn', 'Y')->first();
                    if ($rocc) {
                        $msno1 = $rocc->sno1;
                    }
                }
                $roommast = RoomMast::where('propertyid', $this->propertyid)
                    ->where('rcode', $roomno)
                    ->first();

                $guestprof = '';
                if ($request->input('phoneno') != '') {
                    $wpnum = $request->input('phoneno');
                    $findexist = GuestProf::where('propertyid', $this->propertyid)->where('mobile_no', $request->input('phoneno'))->first();

                    if ($findexist != null) {
                        $guestprof = $findexist->guestcode;
                    } else {
                        $maxguestprof = GuestProf::where('propertyid', $this->propertyid)->max('guestcode');
                        $guestprof = ($maxguestprof === null) ? $this->propertyid . '10001' : ($guestprof = $this->propertyid . substr($maxguestprof, $this->ptlngth) + 1);
                    }

                    $citycode = $request->input('customercity');
                    $citydata = '';
                    $statedata = '';
                    $countrydata = '';
                    if (!empty($citycode)) {
                        $citydata = Cities::where('propertyid', $this->propertyid)->where('city_code', $citycode)->first();
                        $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $citydata->state)->first();
                        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $citydata->country)->first();
                    }

                    $totalamtchrg = $totalamt - $discount;

                    $rewardparam = RewardParameter::where('propertyid', $this->propertyid)
                        ->where('restcode', $rest)
                        ->where('activeyn', 1)
                        ->where('validupto', '>=', ncurdate())
                        ->where('limitlow', '<=', $totalamtchrg)
                        ->where('limitup', '>=', $totalamtchrg)
                        ->first();

                    $lowercategory = false;

                    if (!$rewardparam) {
                        $lowercategory = true;

                        $rewardparam = RewardParameter::where('propertyid', $this->propertyid)
                            ->where('restcode', $rest)
                            ->where('activeyn', 1)
                            ->where('validupto', '>=', ncurdate())
                            ->where('limitlow', '<=', $totalamtchrg)
                            ->orderByDesc('limitlow')
                            ->first();
                    }

                    if ($rewardparam) {

                        $rewardvalueused = floatval($request->rewardvalueused ?? 0);
                        $rewardpointused = floatval($request->rewardpointused ?? 0);

                        if ($rewardvalueused > 0) {

                            $balance = $this->getRewardBalance(
                                $request->input('phoneno'),
                                $rest
                            );

                            if ($rewardvalueused > $balance['availablevalue']) {
                                throw new \Exception('Invalid reward redemption amount.');
                            }

                            if ($rewardpointused > $balance['availablepoint']) {
                                throw new \Exception('Invalid reward redemption points.');
                            }

                            if ($rewardvalueused > $netamt) {
                                throw new \Exception('Redemption amount cannot exceed bill amount.');
                            }
                        }

                        $calcamount = $lowercategory ? $rewardparam->limitup : $totalamtchrg;

                        if ($rewardparam->type === 'percentage') {

                            $mobile = $request->input('phoneno');

                            $customerExists = GuestReward::where('propertyid', $this->propertyid)
                                ->where('mobileno', $mobile)
                                ->exists();

                            $percentage = $customerExists
                                ? floatval($rewardparam->pervalue)
                                : floatval($rewardparam->firstpervalue);

                            $rewardpoint = floor(($calcamount * $percentage) / 100);
                        } else {
                            $mobile = $request->input('phoneno');
                            $rewardpoint = floor(
                                $calcamount / $rewardparam->rpointonamt
                            ) * $rewardparam->rpoint;
                        }

                        $rewardvalue = $rewardpoint * $rewardparam->rpointvalue;

                        $guestreward = [
                            'propertyid' => $this->propertyid,
                            'docid' => $docid,
                            'custcode' => $guestprof,
                            'vdate' => $this->ncurdate,
                            'vtime' => date('H:i:s'),
                            'restcode' => $rest,
                            'departname' => $dept->name,
                            'billno' => $vno,
                            'total' => $totalamt,
                            'billamt' => $netamt,

                            'rewardpoint' => $rewardpoint,
                            'redeempoint' => $rewardpointused,

                            'mobileno' => $mobile,

                            'discamt' => $discamt ?? 0.00,
                            'schemecode' => '',
                            'saleupto' => $calcamount,
                            'rppointonamt' => $rewardparam->rpointonamt,

                            'rewardvalue' => $rewardvalue,
                            'reedemvalue' => $rewardvalueused,

                            'regid' => $rewardparam->id,
                            'discper' => $discper ?? 0.00,

                            'created_at' => $this->currenttime,
                            'u_name' => Auth::user()->u_name,
                            'u_ae' => 'a',
                        ];

                        GuestReward::insert($guestreward);
                    }

                    // return 'sagar';

                    $dob = $request->input('birthdate');
                    $age = Carbon::parse($dob)->age;

                    $guestproft = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'folio_no' => '0',
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                        'complimentry' => '',
                        'guestcode' => $guestprof,
                        'name' => $request->input('customername'),
                        'state_code' => $citydata->state ?? '',
                        'country_code' => $citydata->country ?? '',
                        'add1' => $request->input('address') ?? '',
                        'add2' => '',
                        'city' => $citycode ?? '',
                        'type' => $countrydata->Type ?? '',
                        'mobile_no' => $request->input('phoneno'),
                        'email_id' => '',
                        'nationality' => $countrydata->nationality ?? '',
                        'anniversary' => $request->input('anniversary') ?? null,
                        'guest_status' => '',
                        'comments1' => '',
                        'comments2' => '',
                        'comments3' => '',
                        'city_name' => $citydata->cityname ?? '',
                        'state_name' => $statedata->name ?? '',
                        'country_name' => $countrydata->name ?? '',
                        'gender' => '',
                        'marital_status' => $request->input('anniversary') != '' ? 'Married' : 'Single',
                        'zip_code' => $citydata->zipcode ?? '',
                        'con_prefix' => '',
                        'dob' => $dob ?? null,
                        'age' => $age ?? '',
                        'pic_path' => '',
                        'id_proof' => '',
                        'idproof_no' => '',
                        'issuingcitycode' => '',
                        'issuingcityname' => '',
                        'issuingcountrycode' => '',
                        'issuingcountryname' => '',
                        'expiryDate' => null,
                        'vipStatus' => '',
                        'paymentMethod' => '',
                        'billingAccount' => '',
                        'idpic_path' => '',
                        'm_prof' => $guestprof,
                        'father_name' => '',
                        'likes' => $request->input('like') ?? '',
                        'dislikes' => $request->input('dislike') ?? '',
                        'fom' => 0,
                        'pos' => 1,
                    ];

                    if (!$guestProfileInserted && $findexist == null) {
                        GuestProf::insert($guestproft);
                        $guestProfileInserted = true;
                    }
                }

                $chkroomserv = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $rest)->first();
                if (strtolower($chkroomserv->rest_type) == 'room service') {
                    // Log::info("chkroomserv" . "\n" . json_encode($chkroomserv, JSON_PRETTY_PRINT));

                    $paycode1 = 'ROOM' . $this->propertyid;
                    $revdata1 = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $paycode1)->first();

                    $paycharge1 = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'comp_code' => $request->input('company'),
                        'sno' => 1,
                        'sno1' => $roomdata->sno1 ?? '',
                        'msno1' => $msno1,
                        'vdate' => $this->ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $pref->prefix,
                        'paycode' => $paycode1,
                        'comments' => '(' . $dept->short_name . ')' . ' BILL NO.- ' . $vno,
                        'paytype' => $revdata1->pay_type,
                        'roomcat' => 'REST',
                        'restcode' => $rest,
                        'roomno' => $roomno,
                        'amtcr' => $netamt,
                        'roomtype' => 'RO',
                        'foliono' => 0,
                        'billamount' => $netamt,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    $paycode2 = 'TOUT' . $this->propertyid;
                    $paycharge2 = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'comp_code' => $request->input('company'),
                        'sno' => 2,
                        'sno1' => $roomdata->sno1 ?? '',
                        'msno1' => $msno1,
                        'vdate' => $this->ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $pref->prefix,
                        'paycode' => $paycode2,
                        'comments' => '(' . $dept->short_name . ')' . ' BILL NO.- ' . $vno,
                        'paytype' => $revdata1->pay_type,
                        'folionodocid' => $roomdata->docid ?? '',
                        'restcode' => $rest,
                        'roomno' => $roomno,
                        'roomcat' => $roommast->room_cat,
                        'amtdr' => $netamt,
                        'roomtype' => $roommast->type,
                        'foliono' => $roomdata->folioNo ?? '',
                        'guestprof' => $roomdata->guestprof ?? '',
                        'billamount' => $netamt,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];
                    Paycharge::insert($paycharge1);
                    Paycharge::insert($paycharge2);
                }

                if (strtolower($chkroomserv->rest_type) == 'room service') {
                    $checkinsertedroom = Paycharge::where('propertyid', $this->propertyid)
                        ->where('docid', $docid)
                        ->where('paycode', 'ROOM' . $this->propertyid)
                        ->first();

                    $checkinsertedtout = Paycharge::where('propertyid', $this->propertyid)
                        ->where('docid', $docid)
                        ->where('paycode', 'TOUT' . $this->propertyid)
                        ->first();

                    if (!$checkinsertedroom || !$checkinsertedtout) {
                        DB::rollBack();
                        throw new Exception('Room Service Paycharge entries not inserted for outlet ' . $rest);
                    }
                }

                // return $sundryCount;
                for ($s = 1; $s <= $sundryCount; $s++) {
                    $st = DB::table('sundrytype')
                        ->where('propertyid', $this->propertyid)
                        ->where('vtype', $rest)
                        ->where('sno', $s)
                        ->first();
                    if (!$st) continue;

                    $amt = 0;
                    $base = 0;
                    if ($st->nature == 'Discount') {
                        $amt = $discount;
                        $base = $discper;
                    } elseif ($st->nature == 'Service Charge') {
                        $amt = $service;
                        $base = $servicepercent;
                    } elseif ($st->nature == 'Amount') {
                        $amt = $totalamt;
                        if ($totalamt <= 0) {
                            throw new Exception('Amount Not Found');
                        }
                    } elseif ($st->nature == 'CGST') {
                        $amt = $cgst;
                    } elseif ($st->nature == 'SGST') {
                        $amt = $sgst;
                    } elseif ($st->nature == 'VAT') {
                        $amt = $vat;
                    } elseif ($st->nature == 'Addition') {
                        $amt = $addition;
                    } elseif ($st->nature == 'Deduction') {
                        $amt = $deduction;
                    } elseif ($st->nature == 'Redemption') {
                        $amt = $redemptionamount;
                    } elseif ($st->nature == 'IGST') {
                        $amt = $igst;
                    } elseif ($st->nature == 'Round Off') {
                        $amt = $roundoff;
                        $base = $netamt + $roundoff;
                    } elseif ($st->nature == 'Net Amount') {
                        $amt = $netamt;
                        if ($netamt <= 0) {
                            throw new Exception('Net Amount Not Found');
                        }
                    }

                    $suntrandata = [
                        'propertyid' => $this->propertyid,
                        'docid'       => $docid,
                        'sno'         => $s,
                        'vno'         => $vno,
                        'vtype'       => $vtype,
                        'vdate'       => $this->ncurdate,
                        'dispname'    => $st->disp_name,
                        'suncode'     => $st->sundry_code,
                        'calcformula' => $st->calcformula,
                        'svalue'      => $st->svalue,
                        'amount'     => number_format((float)$amt, 2, '.', ''),
                        'baseamount' => number_format((float)$base, 2, '.', ''),
                        'revcode'     => $st->revcode,
                        'restcode'    => $rest,
                        'sunappdate'  => $this->ncurdate,
                        'delflag'     => 'N',
                        'created_at'     => $this->currenttime,
                        'u_name'      => Auth::user()->u_name,
                        'u_ae'        => 'a',
                    ];

                    DB::table('suntran')->insert($suntrandata);
                }

                $sale1data = [
                    'propertyid'   => $this->propertyid,
                    'docid'        => $docid,
                    'vno'          => $vno,
                    'vtype'        => $vtype,
                    'vdate'        => $this->ncurdate,
                    'vtime'        => date('H:i:s'),
                    'vprefix'      => $pref->prefix,
                    'restcode'     => $rest,
                    'waiter'       => $kotdata->waiter ?? '',
                    'party'        => $request->input('company') ?? '',
                    'roomno'       => $roomno,
                    'roomcat'      => $roommast->room_cat ?? null,
                    'roomtype'     => $roommast->type ?? null,
                    'foliono'      => $roomData->folioNo ?? '',
                    'sno1'         => $roomData->sno1 ?? 1,
                    'total'        => $totalamt,
                    'dedamt' => max(0, ($deduction ?? 0)) + max(0, ($redemptionamount ?? 0)),
                    'addamt'       => $addition,
                    'nontaxable'   => $totalnontaxable,
                    'taxable'      => $totaltaxable,
                    'discper'      => $discper,
                    'discamt'      => $discount,
                    'servicecharge' => $service,
                    'roundoff'     => $roundoff,
                    'netamt'       => $netamt,
                    'sgst'         => $sgst,
                    'cgst'         => $cgst,
                    'vat'          => $vat,
                    'igst'         => $igst,
                    'folionodocid' => $roomdata->docid ?? '',
                    'guestcode'    => $guestprof,
                    'kotno'        => $kotvno,
                    'guaratt'      => $request->input('pax'),
                    'created_at'      => $this->currenttime,
                    'u_name'       => Auth::user()->u_name,
                    'u_ae'         => 'a',
                ];

                DB::table('sale1')->insert($sale1data);

                // e. Insert sale2 item-level records
                $sale2Records = [];
                $maxkotsno = 0;
                if ($dept->kot_yn == 'Y') {
                    $maxkotsno = KoTModal::where('propertyid', $this->propertyid)
                        ->where('docid', $kotdata->docid)
                        ->max('sno') ?? 0;
                }
                foreach ($indexes as $i) {
                    $itemqty     = floatval($request->input("quantity$i", 0));
                    $itemcamttmp = floatval($request->input("fixamount$i", 0));
                    $discperitem = floatval($request->input("itemdiscepercent$i", 0));
                    $itemcode = $request->input('itemcode' . $i);
                    $itemratetmp = $request->input('taxedrate' . $i);
                    $itemrate = floor($itemratetmp * 100) / 100;
                    $itemtruerate = $request->input('rate' . $i);
                    $itemcamt = floor($itemcamttmp * 100) / 100;
                    $taxratepos = $request->input('taxrate_sum' . $i);
                    $tax_rate = $request->input('tax_rate' . $i);
                    $discamt = $discper != 0 ? ($itemqty * $itemrate * $discper / 100) : 0.00;
                    $taxamt = ($itemcamt * $taxratepos) / 100;
                    $netamount = $itemcamt + $taxamt - $discamt;
                    $kotsdocid = $request->input('kotsdocid' . $i);


                    $itemmast = DB::table('itemmast')
                        ->where('Property_ID', $this->propertyid)
                        ->where('RestCode', $rest)
                        ->where('Code', $request->input("itemcode$i"))
                        ->first();

                    // if ($itemmast->DiscApp == 'Y') {
                    //     $idiscper = $discperitem > 0 ? $discperitem : $discper;
                    if ($discper > 0 && $itemmast->DiscApp == 'Y') {
                        $idiscper = $discper;
                    } else {
                        $idiscper = 0;
                    }

                    if (!$itemmast->RestCode) throw new Exception("Missing RestCode for $code");

                    if ($dept->kot_yn == 'Y') {
                        if ($kotsdocid && $kotsdocid != '') {
                            $chkkotcontra = Kot::where('propertyid', $this->propertyid)
                                ->where('docid', $kotsdocid)
                                ->where('item', $itemcode)
                                ->where('pending', 'Y')
                                ->where('delflag', '')
                                ->first();

                            if (isset($chkkotcontra) && $chkkotcontra->contradocid != '') {
                                DB::rollBack();
                                throw new Exception('Item ' . $itemmast->Name . ' not pending in KOT or KOT already billed.');
                            }
                        }
                    }

                    $taxStruct = DB::table('itemcatmast')
                        ->where('propertyid', $this->propertyid)
                        ->where('Code', $itemmast->ItemCatCode)
                        ->where('RestCode', $rest)
                        ->value('TaxStru');
                    $taxes = DB::table('taxstru')
                        ->where('propertyid', $this->propertyid)
                        ->where('str_code', $taxStruct)
                        ->get();

                    foreach ($taxes as $taxRow) {
                        if (floatval($taxRow->rate) > 0) {
                            $baseVal = $itemqty * ($itemcamttmp / $itemqty);
                            if ($itemmast->DiscApp == 'Y') {
                                $baseVal = $itemcamttmp * (1 - $discper / 100);
                            }
                            $taxAmttmp = $baseVal * $taxRow->rate / 100;

                            $roundedtmp = floor($taxAmttmp * 100) / 100;
                            $taxAmt = number_format($roundedtmp, 2);

                            $sale2Records[] = [
                                'propertyid'  => $this->propertyid,
                                'docid'       => $docid,
                                'sno'         => intval($request->input("itemnumber$i", 0)),
                                'sno1'        => $taxRow->sno,
                                'vno'         => $vno,
                                'vtype'       => $vtype,
                                'vdate'       => $this->ncurdate,
                                'vtime'       => date('H:i:s'),
                                'vprefix'     => $pref->prefix,
                                'restcode'    => $rest,
                                'taxcode'     => $taxRow->tax_code,
                                'basevalue'   => $baseVal,
                                'taxper'      => $taxRow->rate,
                                'taxamt'      => $taxAmt,
                                'delflag'     => 'N',
                                'created_at'     => $this->currenttime,
                                'u_name'      => Auth::user()->u_name,
                                'u_ae'        => 'a',
                            ];
                        }
                    }

                    $lastSno = DB::table('stock')
                        ->where('propertyid', $this->propertyid)
                        ->where('docid', $docid)
                        ->max('sno');
                    $sno = $lastSno ? $lastSno + 1 : 1;

                    $stock = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'sno' => $sno,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'vdate' => $this->ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $pref->prefix,
                        'restcode' => $rest,
                        'roomno' => $request->input('roomno'),
                        'roomcat' => $roommast->room_cat ?? '',
                        'roomtype' => $roommast->type ?? '',
                        'item' => $itemcode,
                        'qtyiss' => $itemqty,
                        'qtyrec' => '0',
                        'unit' => $itemmast->Unit ?? '',
                        'rate' => $itemrate,
                        'amount' => $itemcamt,
                        'taxper' => $tax_rate,
                        'taxamt' => $taxamt,
                        'discper' => $idiscper ?? '0.00',
                        'discamt' => $discamt,
                        'description' => $request->input('description' . $i) ?? '',
                        'kotdocid' => $request->input('kotsdocid' . $i) ?? $request->input('kotdocidfix') ?? '',
                        'kotsno' => $request->input('kotsno' . $i) ?? '0',
                        'total' => $netamount,
                        'discapp' => $request->input('discapp' . $i) ?? '',
                        'roundoff' => $roundyn,
                        'departcode' => $itemmast->Kitchen ?? '',
                        'godowncode' => $itemmast->Kitchen ?? '',
                        'chalqty' => '',
                        'recdqty' => '',
                        'accqty' => '',
                        'rejqty' => '',
                        'recdunit' => '',
                        'specification' => '',
                        'itemrate' => $itemtruerate,
                        'delflag' => 'N',
                        'landval' => 0.00,
                        'convratio' => 0.00,
                        'indentdocid' => '',
                        'indentsno' => 0,
                        'issqty' => 0.00,
                        'issueunit' => '',
                        'freesno' => 0,
                        'schemecode' => '',
                        'seqno' => 0,
                        'company' => '',
                        'itemrestcode' => $itemmast->RestCode,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    Stock::insert($stock);

                    if ($dept->kot_yn == 'Y') {
                        if (empty($request->input('kotsdocid' . $i)) && !empty($kotdata->docid)) {

                            $maxkotsno++;
                            $kotdatain = [
                                'propertyid' => $this->propertyid,
                                'docid' => $kotdata->docid,
                                'sno' => $maxkotsno,
                                'pax' => $kotdata->pax,
                                'vno' => $kotdata->vno,
                                'itemrestcode' => $rest,
                                'item' => $itemcode,
                                'description' => $kotdata->description,
                                'qty' => $itemqty,
                                'rate' => $itemrate,
                                'amount' => $itemqty * $itemrate,
                                'voidyn' => $kotdata->voidyn,
                                'vtype' => $kotdata->vtype,
                                'vdate' => ncurdate(),
                                'vtime' => date('H:i:s'),
                                'vprefix' => $kotdata->vprefix,
                                'roomcat' => $kotdata->roomcat,
                                'restcode' => $rest,
                                'waiter' => $kotdata->waiter,
                                'pending' => 'N',
                                'delflag' => '',
                                'contradocid' => $docid,
                                'contrsno' => $vno,
                                'reasons' => $kotdata->reasons,
                                'ncreason' => $kotdata->ncreason,
                                'remarks' => $kotdata->remarks,
                                'roomtype' => $kotdata->roomtype,
                                'roomno' => $kotdata->roomno,
                                'created_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'e',
                                'nckot' => $kotdata->nckot,
                                'nctype' => $kotdata->nctype,
                                'freesno' => $kotdata->freesno,
                                'printed' => $kotdata->printed,
                                'schemecode' => $kotdata->schemecode,
                                'tokenno' => $kotdata->tokenno,
                                'printflag' => $kotdata->printflag,
                            ];
                            KoTModal::insert($kotdatain);
                        } else {
                            $kotdatainup = [
                                'qty' => $itemqty,
                                'rate' => $itemrate,
                                'amount' => $itemqty * $itemrate,
                            ];

                            KoTModal::where('propertyid', $this->propertyid)
                                ->where('docid', $request->input('kotsdocid' . $i))
                                ->where('sno', $request->input('kotsno' . $i))
                                ->update($kotdatainup);
                        }
                    }

                    $kotupdate = [
                        'pending' => 'N',
                        'contradocid' => $docid,
                        'contrsno' => $vno,
                        'updated_at' => $this->currenttime,
                        'u_ae' => 'e',
                    ];

                    DB::table('kot')
                        ->where('propertyid', $this->propertyid)
                        ->whereIn('docid', $docids)
                        ->update($kotupdate);
                }

                if ($sale2Records) {
                    DB::table('sale2')->insert($sale2Records);
                }

                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $pref->prefix)
                    ->increment('start_srl_no');
            }

            $uniqueDocIDs = array_unique($generatedDocs);

            if (count($uniqueDocIDs) > 1) {
                $merged = implode(',', $uniqueDocIDs);

                Sale1::where('propertyid', $this->propertyid)
                    ->whereIn('docid', $uniqueDocIDs)
                    ->update(['mergedwith' => $merged]);
            }

            DB::commit();

            $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();
            $mainoutlet = Depart::where('propertyid', $this->propertyid)
                ->where('dcode', $request->fixrestcode)
                ->first();

            $sale1 = Sale1::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->first();
            if (!$sale1) {
                logData('POS PDF SEND', 'Guest Sale1 profile not found for docid: ' . $docid, $this->propertyid, Auth::user()->name, null, "SaleBill");
            }

            if (empty($sale1->guestcode)) {
                logData('POS PDF SEND', 'Guest Sale1 guestcode not found for docid: ' . $docid, $this->propertyid, Auth::user()->name, null, "SaleBill");
            }

            $guestprofchk = GuestProf::where('propertyid', $this->propertyid)
                ->where(function ($query) use ($sale1) {
                    $query->where('guestcode', $sale1->guestcode)
                        ->orWhere('docid', $sale1->folionodocid);
                })
                ->first();

            if (!$guestprofchk) {
                logData('POS PDF SEND', 'Guest profile not found for docid: ' . $docid, $this->propertyid, Auth::user()->name, null, "SaleBill");
            } else {
                logData('POS PDF SEND', 'Guest profile found for docid: ' . $guestprofchk->docid . 'Guest Code: ' . $guestprofchk->guestcode, $this->propertyid, Auth::user()->name, null, "SaleBill");
            }

            if ($wpenv != null) {
                if (
                    $wpenv->checkyn == 'Y' &&
                    !empty($wpenv->billmsgguest) &&
                    !empty($wpenv->billmsgguestarray) &&
                    !empty($wpenv->billmsgguesttemplate) &&
                    $guestprofchk !== null &&
                    !empty($guestprofchk->mobile_no)
                ) {
                    $billmsgguestarray = json_decode($wpenv->billmsgguestarray, true);
                    $msgdata = [];

                    foreach ($billmsgguestarray as $row) {
                        [$colname, $tbl] = $row;

                        if (endsWith($colname, 'sum')) {
                            $value = DB::table($tbl)
                                ->where('propertyid', $this->propertyid)
                                ->where('docid', $docid)
                                ->sum(removeSuffixIfExists($colname, 'sum'));
                        } elseif (endsWith($colname, 'rw')) {
                            if ($mainoutlet->nature == 'Room Service') {
                                $field = removeSuffixIfExists($colname, 'rw');

                                switch ($field) {

                                    case 'rewardpoint':
                                        $value = 0.00;
                                        break;

                                    case 'redeempoint':
                                        $value = 0.00;
                                        break;

                                    case 'availablepoint':
                                        $value = 0.00;
                                        break;

                                    default:
                                        $value = '';
                                        break;
                                }
                            }
                            if ($mainoutlet->nature != 'Room Service') {
                                if ($rewardparam) {
                                    $rewardBalance = $this->getRewardBalance(
                                        $request->input('phoneno'),
                                        $rest
                                    );

                                    $field = removeSuffixIfExists($colname, 'rw');

                                    switch ($field) {

                                        case 'rewardpoint':
                                            $value = $rewardpoint;
                                            break;

                                        case 'redeempoint':
                                            $value = $rewardpointused;
                                            break;

                                        case 'availablepoint':
                                            $value = $rewardBalance['availablepoint'];
                                            break;

                                        default:
                                            $value = '';
                                            break;
                                    }
                                }
                            }

                            // dd($colname, endsWith($colname, 'rw'));
                        } elseif ($res = splitByJoin($colname)) {
                            $left = $res['left'];
                            $right = $res['right'];

                            $value = DB::table($tbl)
                                ->leftJoin($right, function ($join) use ($tbl, $right, $left) {
                                    $join->on("$tbl.$left", '=', "$right.Code")
                                        ->whereColumn("$right.RestCode", "$tbl.restcode");
                                })
                                ->where("$tbl.propertyid", $this->propertyid)
                                ->where("$tbl.docid", $docid)
                                ->pluck("$right.Name")
                                ->implode(', ');
                        } else {

                            $query = DB::table($tbl)
                                ->where('propertyid', $this->propertyid);

                            if ($tbl == 'depart') {
                                $query->where('dcode', $rest);
                            } elseif ($tbl == 'guestprof') {
                                $query->where("guestcode", $guestprofchk->guestcode);
                            } else {
                                $query->where('docid', $docid);
                            }

                            $value = $query->value($colname);
                        }

                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    // DB::rollBack();
                    // dd($msgdata);
                    $whatsapp->MuzzTech($msgdata, $guestprofchk->mobile_no, 'Bill Message Pos To User', 'billmsgguesttemplate');
                }
            }

            $billprinty = $request->input('billprinty');
            $posroomno = $request->input('posroomno');

            $sale1print = Sale1::select(
                'sale1.vno',
                'sale1.vdate',
                'sale1.waiter',
                'sale1.roomno',
                'sale1.restcode',
                'sale1.vtype',
                'sale1.kotno',
                'depart.name as departname',
                'depart.nature as departnature',
                'server_mast.name as waitername',
                'sale1.docid',
                'sale1.folionodocid',
                'sale1.mergedwith',
                'sale1.netamt'
            )
                ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
                ->leftJoin('depart', 'depart.dcode', '=', 'sale1.restcode')
                ->where('sale1.docid', $docid)->where('sale1.propertyid', $this->propertyid)->whereIn('sale1.restcode', $rests)->first();

            $mergedDocids = array_map('trim', explode(',', $sale1print->mergedwith));
            $sale2 = '';
            if (count($mergedDocids) > 1) {
                $margeDocid = $mergedDocids[0];
                $sale2 = Sale1::select(
                    'sale1.vno',
                    'sale1.vdate',
                    'sale1.waiter',
                    'sale1.roomno',
                    'sale1.restcode',
                    'sale1.vtype',
                    'sale1.kotno',
                    'sale1.folionodocid',
                    'depart.name as departname',
                    'depart.nature as departnature',
                    'server_mast.name as waitername',
                    'sale1.docid',
                    'sale1.mergedwith',
                    'sale1.netamt'
                )
                    ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
                    ->leftJoin('depart', 'depart.dcode', '=', 'sale1.restcode')
                    ->where('sale1.propertyid', $this->propertyid)->where('sale1.docid', $margeDocid)->first();
            }


            $printsetup = PrintingSetup::where('propertyid', $this->propertyid)->where('restcode', $rests)->where('module', 'POS')->first();


            $amt1 = $sale1print->netamt;
            $amt2 = $sale2->netamt ?? 0.00;

            $totalAmt = $amt1 + $amt2;
            $invoiceStatus = trim($sale2->departname ?? '') !== ''
                ? $sale1print->departname . ' & ' . $sale2->departname
                : $sale1print->departname;

            $printdata = [
                'roomno' => $sale1print->roomno,
                'vdate' => $sale1print->vdate,
                'vtype' => $sale1print->vtype,
                'waiter' => $sale1print->waitername,
                'billno' => $sale1print->vno,
                'departname' => $sale1print->departname,
                'kotno' => $sale1print->kotno,
                'outletcode' => $sale1print->restcode,
                'departnature' => $sale1print->departnature,
                'printsetup' => $printsetup,
                'docid' => $sale1print->docid,
                'addeddocid' => $sale1print->folionodocid,

                ///////////////// Secound Outlet Data /////////////////
                'roomno2' => $sale2->roomno ?? '',
                'vdate2' => $sale2->vdate ?? '',
                'vtype2' => $sale2->vtype ?? '',
                'waiter2' => $sale2->waitername ?? '',
                'billno2' => $sale2->vno ?? '',
                'departname2' => $sale2->departname ?? '',
                'kotno2' => $sale2->kotno ?? '',
                'outletcode2' => $sale2->restcode ?? '',
                'departnature2' => $sale2->departnature ?? '',
                'docid2' => $sale2->docid ?? '',
                'addeddocid2' => $sale2->folionodocid ?? '',

                'totalAmt' => $totalAmt,
                'invoiceStatus' => $invoiceStatus,
            ];

            // $datap = [
            //     'billprinty' => $billprinty,
            //     'posroomno' => $posroomno
            // ];

            // return $datap;

            // Log::info('Print Data: ' . json_encode($printdata));

            if ($billprinty == 'Y' && empty($posroomno)) {
                $page = 'salebillentry';
                return view('property.layouts.prints', [
                    'printdata' => $printdata,
                    'page' => $page
                ]);
            } else if ($billprinty == '' && !empty($posroomno)) {
                // Log::info('Print Data: ' . json_encode($printdata));
                return redirect('displaytable?dcode=' . $request->input('fixrestcode'))->with('infosale', [
                    'title' => 'Success',
                    'text' => 'Sale Bill Submitted Successfully Do You Want To Print Bill ?',
                    'printdata' => json_encode($printdata)
                ]);
            } else if (empty($posroomno) && empty($billprinty)) {
                if ($request->wantsJson()) {
                    return response()->json([
                        'status' => 'success',
                        'message' => 'Sale Bill Submitted Successfully!',
                        'printdata' => $printdata
                    ]);
                }
                return back()->with('infosale', [
                    'title' => 'Success',
                    'text' => 'Sale Bill Submitted Successfully Do You Want To Print Bill ?',
                    'printdata' => json_encode($printdata)
                ]);
            } else {
                $page = 'displaytable';
                return view('property.layouts.prints', [
                    'printdata' => $printdata,
                    'page' => $page
                ]);
            }
        } catch (Exception $e) {
            DB::rollBack();
            return $e->getMessage() . ' on line ' . $e->getLine();
        }
    }

    public function salebillupdate(Request $request)
    {
        DB::beginTransaction();

        try {
            if (!$request->input('itemcode1')) {
                return back()->with('error', 'You can not delete all the items!');
            }
            // return $request->input('kotdocidfix');
            $docids = array_filter(explode(',', $request->input('kotdocid')));
            $kotdata = KoTModal::where('propertyid', $this->propertyid)->whereIn('docid', $docids)->first();

            // return $kotdata;
            // Log::info($kotdata);
            // return 'sagar';
            $kotvno = KoTModal::where('propertyid', $this->propertyid)
                ->whereIn('docid', $docids)
                ->pluck('vno')->unique()->implode(',');

            $docid      = $request->input('sale1docid');
            $totalItems = intval($request->input('totalitems'));
            $restcode   = $request->input('fixrestcode');
            $roomno     = $request->input('previousroomno');
            $company    = $request->input('company') ?? '';
            $waiter     = $request->input('waiter');
            $pax        = $request->input('pax');

            $sale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $docid)->first();

            $mergedwith = !empty($sale1->mergedwith) ? explode(',', $sale1->mergedwith) : [$sale1->docid];

            // return $mergedwith;

            $enviro_pos = EnviroPos::where('propertyid', $this->propertyid)->first();

            $grouped = [];
            for ($i = 1; $i <= $totalItems; $i++) {
                $code = $request->input("itemcode$i");
                $rest = DB::table('itemmast')
                    ->where('Property_ID', $this->propertyid)
                    ->where('RestCode', $request->input("itemrestcode$i"))
                    ->where('Code', $code)
                    ->value('RestCode');
                if (!$rest) throw new \Exception("Missing RestCode for $code");
                $grouped[$rest][] = $i;
            }

            foreach ($grouped as $rest => $indexes) {
                $sale1perdocid = Sale1::where('propertyid', $this->propertyid)
                    ->whereIn('docid', $mergedwith)
                    ->where('restcode', $rest)
                    ->first();

                if (!$sale1perdocid) continue;

                $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $rest)->first();

                $vat      = floatval($request->input($rest . 'vatamount', 0));
                $redemptionamount      = floatval($request->input($rest . 'redemptionamount', 0));
                $addition      = floatval($request->input($rest . 'additionamount', 0));
                $deduction      = floatval($request->input($rest . 'deductionamount', 0));
                $cgst     = floatval($request->input($rest . 'cgstamount', 0));
                $igst     = floatval($request->input($rest . 'igstamount', 0));
                $sgst     = floatval($request->input($rest . 'sgstamount', 0));
                $totaltaxable = floatval($request->input($rest . 'totaltaxable', 0));
                $totalnontaxable = floatval($request->input($rest . 'totalnontaxable', 0));
                $servicepercent = floatval($request->input($rest . 'servicechargefix', 0));
                $service  = floatval($request->input($rest . 'servicechargeamount', 0));
                $discper = floatval($request->input($rest . 'discountfix', 0));
                $discount = floatval($request->input($rest . 'discountsundry', 0));
                $roundoff = floatval($request->input($rest . 'roundoffamount', 0));
                $netamt   = floatval($request->input($rest . 'netamount', 0));
                $totalamt = floatval($request->input($rest . 'totalamountoutlet', 0));
                $sundryCount = intval($request->input($rest . 'sundrycount', 0));

                // return $cgst;

                if ($netamt == 0) {
                    DB::rollBack();
                    return back()->with('error', 'Net Amount cannot be zero for outlet ' . $rest);
                }

                // Log::info("Restcode $rest - Discper $discper");

                $guestprof = GuestProf::where('propertyid', $this->propertyid)->where('guestcode', $sale1perdocid->guestcode)->first();
                $guestcode = $guestprof != null ? $guestprof->guestcode : $sale1perdocid->guestcode;
                if ($guestprof) {
                    $citycode = $request->input('customercity');
                    $citydata = '';
                    $statedata = '';
                    $countrydata = '';
                    if (!empty($citycode)) {
                        $citydata = Cities::where('propertyid', $this->propertyid)->where('city_code', $citycode)->first();
                        $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $citydata->state)->first();
                        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $citydata->country)->first();
                    }

                    $guestreward = [
                        'total' => $totalamt,
                        'billamt' => $netamt,
                        'mobileno' => $request->input('phoneno'),
                        'discamt' => $discamt ?? 0.00,
                        'discper' => $discper ?? 0.00,
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    $dob = $request->input('birthdate');
                    $age = Carbon::parse($dob)->age;

                    $guestproft = [
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                        'name' => $request->input('customername'),
                        'state_code' => $citydata->state ?? '',
                        'country_code' => $citydata->country ?? '',
                        'add1' => $request->input('address') ?? '',
                        'city' => $citycode ?? '',
                        'type' => $countrydata->Type ?? '',
                        'mobile_no' => $request->input('phoneno'),
                        'nationality' => $countrydata->nationality ?? '',
                        'anniversary' => $request->input('anniversary') ?? null,
                        'city_name' => $citydata->cityname ?? '',
                        'state_name' => $statedata->name ?? '',
                        'country_name' => $countrydata->name ?? '',
                        'marital_status' => $request->input('anniversary') != '' ? 'Married' : 'Single',
                        'zip_code' => $citydata->zipcode ?? '',
                        'dob' => $dob ?? null,
                        'age' => $age ?? '',
                        'm_prof' => $guestprof->guestcode,
                        'likes' => $request->input('like') ?? '',
                        'dislikes' => $request->input('dislike') ?? '',
                    ];
                    GuestReward::where('propertyid', $this->propertyid)->where('docid', $sale1perdocid->docid)->update($guestreward);
                    GuestProf::where('propertyid', $this->propertyid)->where('guestcode', $guestprof->guestcode)->update($guestproft);
                } else if ($request->input('phoneno') != '') {
                    $findexist = GuestProf::where('propertyid', $this->propertyid)->where('mobile_no', $request->input('phoneno'))->first();

                    if ($findexist != null) {
                        $guestprof = $findexist->guestcode;
                        $guestcode = $findexist->guestcode;
                    } else {
                        $maxguestprof = GuestProf::where('propertyid', $this->propertyid)->max('guestcode');
                        $guestprof = ($maxguestprof === null) ? $this->propertyid . '10001' : ($guestprof = $this->propertyid . substr($maxguestprof, $this->ptlngth) + 1);
                        $guestcode = ($maxguestprof === null) ? $this->propertyid . '10001' : ($guestprof = $this->propertyid . substr($maxguestprof, $this->ptlngth) + 1);
                    }

                    $citycode = $request->input('customercity');
                    $citydata = '';
                    $statedata = '';
                    $countrydata = '';
                    if (!empty($citycode)) {
                        $citydata = Cities::where('propertyid', $this->propertyid)->where('city_code', $citycode)->first();
                        $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $citydata->state)->first();
                        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $citydata->country)->first();
                    }

                    $guestreward = [
                        'propertyid' => $this->propertyid,
                        'docid' => $sale1perdocid->docid,
                        'custcode' => $guestprof,
                        'vdate' => $sale1perdocid->vdate,
                        'vtime' => date('H:i:s'),
                        'restcode' => $restcode,
                        'departname' => $depart->name,
                        'billno' => $sale1perdocid->vno,
                        'total' => $totalamt,
                        'billamt' => $netamt,
                        'rewardpoint' => 0.00,
                        'redeempoint' => 0.00,
                        'mobileno' => $request->input('phoneno'),
                        'discamt' => $discamt ?? 0.00,
                        'schemecode' => '',
                        'saleupto' => 0.00,
                        'rppointonamt' => 0.00,
                        'rewardvalue' => 0.00,
                        'reedemvalue' => 0.00,
                        'regid' => '',
                        'discper' => $discper ?? 0.00,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    $dob = $request->input('birthdate');
                    $age = Carbon::parse($dob)->age;

                    $guestproft = [
                        'propertyid' => $this->propertyid,
                        'docid' => $sale1perdocid->docid,
                        'folio_no' => $sale1perdocid->vno,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                        'complimentry' => '',
                        'guestcode' => $guestprof,
                        'name' => $request->input('customername'),
                        'state_code' => $citydata->state ?? '',
                        'country_code' => $citydata->country ?? '',
                        'add1' => $request->input('address') ?? '',
                        'add2' => '',
                        'city' => $citycode ?? '',
                        'type' => $countrydata->Type ?? '',
                        'mobile_no' => $request->input('phoneno'),
                        'email_id' => '',
                        'nationality' => $countrydata->nationality ?? '',
                        'anniversary' => $request->input('anniversary') ?? null,
                        'guest_status' => '',
                        'comments1' => '',
                        'comments2' => '',
                        'comments3' => '',
                        'city_name' => $citydata->cityname ?? '',
                        'state_name' => $statedata->name ?? '',
                        'country_name' => $countrydata->name ?? '',
                        'gender' => '',
                        'marital_status' => $request->input('anniversary') != '' ? 'Married' : 'Single',
                        'zip_code' => $citydata->zipcode ?? '',
                        'con_prefix' => '',
                        'dob' => $dob ?? null,
                        'age' => $age ?? '',
                        'pic_path' => '',
                        'id_proof' => '',
                        'idproof_no' => '',
                        'issuingcitycode' => '',
                        'issuingcityname' => '',
                        'issuingcountrycode' => '',
                        'issuingcountryname' => '',
                        'expiryDate' => null,
                        'vipStatus' => '',
                        'paymentMethod' => '',
                        'billingAccount' => '',
                        'idpic_path' => '',
                        'm_prof' => $guestprof,
                        'father_name' => '',
                        'likes' => $request->input('like') ?? '',
                        'dislikes' => $request->input('dislike') ?? '',
                        'fom' => 0,
                        'pos' => 1,
                    ];
                    GuestReward::insert($guestreward);

                    if ($findexist == null) {
                        GuestProf::insert($guestproft);
                    }
                }

                if ($enviro_pos->possalebillauditlog == 'Y') {
                    $sale1log = new Sale1log();
                    $oldsale1data = Sale1::where('propertyid', $this->propertyid)
                        ->whereIn('docid', $mergedwith)
                        ->where('restcode', $rest)
                        ->first();

                    if ($oldsale1data) {
                        $sale1log->fill($oldsale1data->toArray());
                        $sale1log->save();
                    }
                    $oldsale2data = Sale2::where('propertyid', $this->propertyid)
                        ->whereIn('docid', $mergedwith)
                        ->where('restcode', $rest)
                        ->get();

                    if ($oldsale2data->isNotEmpty()) {
                        foreach ($oldsale2data as $sale2record) {
                            $sale2log = new Sale2log();
                            $sale2log->fill($sale2record->toArray());
                            $sale2log->save();
                        }
                    }

                    $oldstockdata = Stock::where('propertyid', $this->propertyid)
                        ->whereIn('docid', $mergedwith)
                        ->where('restcode', $rest)
                        ->get();

                    if ($oldstockdata->isNotEmpty()) {
                        foreach ($oldstockdata as $oldstockrow) {
                            $stocklog = new Stocklog();
                            $stocklog->fill($oldstockrow->toArray());
                            $stocklog->save();
                        }
                    }

                    $oldsuntrandata = Suntran::where('propertyid', $this->propertyid)
                        ->whereIn('docid', $mergedwith)
                        ->where('restcode', $rest)
                        ->get();

                    if ($oldsuntrandata->isNotEmpty()) {
                        foreach ($oldsuntrandata as $oldsuntranrow) {
                            $suntranlog = new Suntranlog();
                            $suntranlog->fill($oldsuntranrow->toArray());
                            $suntranlog->save();
                        }
                    }
                }

                // Update sale1
                $sale1data = [
                    'total'      => $totalamt,
                    'nontaxable' => $totalnontaxable,
                    'taxable'    => $totaltaxable,
                    'party'      => $company,
                    'discper'    => $discper,
                    'discamt'    => $discount,
                    'roundoff'   => $roundoff,
                    'guestcode'  => $guestcode,
                    'dedamt' => max(0, ($deduction ?? 0)) + max(0, ($redemptionamount ?? 0)),
                    'addamt'     => $addition,
                    'servicecharge' => $service,
                    'netamt'     => $netamt,
                    'waiter'     => $waiter,
                    'guaratt'    => $pax,
                    'sgst'       => $sgst,
                    'cgst'       => $cgst,
                    'igst'       => $igst,
                    'updated_at' => $this->currenttime,
                    'u_name'     => Auth::user()->u_name,
                    'u_ae'       => 'e',
                ];

                Sale1::where('propertyid', $this->propertyid)->where('docid', $sale1perdocid->docid)->update($sale1data);

                // Delete and insert new sundry
                Suntran::where('propertyid', $this->propertyid)->where('docid', $sale1perdocid->docid)->delete();

                $suntrantypes = Sundrytype::where('propertyid', $this->propertyid)->where('vtype', $sale1perdocid->restcode)->get();

                $suntraninsert = [];

                $s = 1;
                foreach ($suntrantypes as $st) {
                    $amt = 0;
                    $base = 0;

                    if ($st->nature == 'Discount') {
                        $amt = $discount;
                        $base = $discper;
                    } elseif ($st->nature == 'Service Charge') {
                        $amt = $service;
                        $base = $servicepercent;
                    } elseif ($st->nature == 'Amount') {
                        $amt = $totalamt;
                        if ($totalamt <= 0) {
                            return back()->with('error', 'Amount Not Found');
                        }
                    } elseif ($st->nature == 'CGST') {
                        $amt = $cgst;
                    } elseif ($st->nature == 'SGST') {
                        $amt = $sgst;
                    } else if ($st->nature == 'IGST') {
                        $amt = $igst;
                    } elseif ($st->nature == 'VAT') {
                        $amt = $vat;
                    } elseif ($st->nature == 'Addition') {
                        $amt = $addition;
                    } elseif ($st->nature == 'Deduction') {
                        $amt = $deduction;
                    } elseif ($st->nature == 'Redemption') {
                        $amt = $redemptionamount;
                    } elseif ($st->nature == 'Round Off') {
                        $amt = $roundoff;
                        $base = $netamt + $roundoff;
                    } elseif ($st->nature == 'Net Amount') {
                        $amt = $netamt;
                        if ($netamt <= 0) {
                            return back()->with('error', 'Net Amount Not Found');
                        }
                    }

                    $suntraninsert[] = [
                        'propertyid' => $this->propertyid,
                        'docid'      => $sale1perdocid->docid,
                        'sno'        => $s++,
                        'vno'        => $sale1perdocid->vno,
                        'vtype'      => $sale1perdocid->vtype,
                        'vdate'      => $sale1perdocid->vdate,
                        'dispname'   => $st->disp_name,
                        'suncode'    => $st->sundry_code,
                        'calcformula' => $st->calcformula,
                        'svalue'     => $st->svalue,
                        'amount'     => number_format((float)$amt, 2, '.', ''),
                        'baseamount' => number_format((float)$base, 2, '.', ''),
                        'revcode'    => $st->revcode,
                        'restcode'   => $rest,
                        'sunappdate' => $sale1perdocid->vdate,
                        'delflag'    => 'N',
                        'created_at'    => $this->currenttime,
                        'updated_at' => $this->currenttime,
                        'u_name'     => Auth::user()->u_name,
                        'u_ae'       => 'a',
                    ];
                }

                // Log::info("Suntran Insert Data:\n" . json_encode($suntraninsert, JSON_PRETTY_PRINT));

                // return 'sagar';

                Suntran::insert($suntraninsert);

                // Cleanup sale2 and stock
                Sale2::where('propertyid', $this->propertyid)->where('docid', $sale1perdocid->docid)->delete();
                Stock::where('propertyid', $this->propertyid)->where('docid', $sale1perdocid->docid)->delete();

                $sale2Records = [];
                $stockRecords = [];
                $stockSnoTracker = [];
                $maxkotsno = 0;
                if ($depart->kot_yn == 'Y') {
                    $maxkotsno = KoTModal::where('propertyid', $this->propertyid)->where('docid', $kotdata->docid)->max('sno') ?? 0;
                }
                foreach ($indexes as $i) {
                    $itemcode = $request->input("itemcode$i");
                    $itemmast = DB::table('itemmast')
                        ->where('Property_ID', $this->propertyid)
                        ->where('RestCode', $rest)
                        ->where('Code', $itemcode)
                        ->first();

                    // Log::info("itemmast:\n" . json_encode($itemmast, JSON_PRETTY_PRINT));

                    if (!$itemmast) continue;

                    if (!$itemmast->RestCode) throw new \Exception("Missing RestCode for $code");

                    $itemqty     = floatval($request->input("quantity$i", 0));
                    $itemcamttmp  = floor(floatval($request->input("fixamount$i", 0)) * 100) / 100;
                    $discperitem = floatval($request->input("itemdiscepercent$i", 0));
                    $rate    = floor(floatval($request->input("taxedrate$i", 0)) * 100) / 100;
                    $truerate = floatval($request->input("rate$i", 0));
                    $taxrate = floatval($request->input("taxrate_sum$i", 0));
                    $taxper  = floatval($request->input("tax_rate$i", 0));
                    $discamt = $discper != 0 ? ($itemqty * $rate * $discper / 100) : 0.00;
                    $taxamt  = ($itemcamttmp * $taxrate) / 100;
                    $net     = $itemcamttmp + $taxamt - $discamt;
                    // Log::info('discamt:' . $discamt);
                    // Log::info('rate:' . $rate);
                    // Log::info('discperitem:' . $discperitem);
                    // if ($itemmast->DiscApp == 'Y') {
                    //     $idiscper = $discperitem > 0 ? $discperitem : $discper;
                    if ($discper > 0 && $itemmast->DiscApp == 'Y') {
                        $idiscper = $discper;
                    } else {
                        $idiscper = 0;
                    }
                    $roommast = RoomMast::where('propertyid', $this->propertyid)->where('rcode', $roomno)->first();

                    $taxStruct = DB::table('itemcatmast')
                        ->where('propertyid', $this->propertyid)
                        ->where('Code', $itemmast->ItemCatCode)
                        ->where('RestCode', $rest)
                        ->value('TaxStru');

                    $taxes = DB::table('taxstru')
                        ->where('propertyid', $this->propertyid)
                        ->where('str_code', $taxStruct)
                        ->get();

                    // Log::info("ITEMMAST: \n" . json_encode($itemmast, JSON_PRETTY_PRINT));
                    // Log::info("Taxstructure: " . $taxStruct);
                    // Log::info("taxes: \n" . json_encode($taxes, JSON_PRETTY_PRINT));

                    foreach ($taxes as $tax) {
                        if ($tax->rate > 0) {
                            // Log::info('reinserting');
                            $baseVal = $itemqty * ($itemcamttmp / $itemqty);
                            if ($itemmast->DiscApp == 'Y') {
                                $baseVal = $itemcamttmp * (1 - $discper / 100);
                            }
                            $taxAmttmp = $baseVal * $tax->rate / 100;

                            $roundedtmp = floor($taxAmttmp * 100) / 100;
                            $taxAmt = number_format($roundedtmp, 2);

                            $sale2Records[] = [
                                'propertyid' => $this->propertyid,
                                'docid'      => $sale1perdocid->docid,
                                'sno'        => intval($request->input("itemnumber$i", 0)),
                                'sno1'       => $tax->sno,
                                'vno'        => $sale1perdocid->vno,
                                'vtype'      => $sale1perdocid->vtype,
                                'vdate'      => $sale1perdocid->vdate,
                                'vtime'      => date('H:i:s'),
                                'vprefix'    => $sale1perdocid->vprefix,
                                'restcode'   => $rest,
                                'taxcode'    => $tax->tax_code,
                                'basevalue'  => $baseVal,
                                'taxper'     => $tax->rate ?? 0.00,
                                'taxamt'     => $taxAmt,
                                'delflag'    => 'N',
                                'created_at'    => $this->currenttime,
                                'updated_at' => $this->currenttime,
                                'u_name'     => Auth::user()->u_name,
                                'u_ae'       => 'e',
                            ];
                        }
                    }

                    $docidKey = $sale1perdocid->docid;

                    if (!isset($stockSnoTracker[$docidKey])) {
                        $stockSnoTracker[$docidKey] = DB::table('stock')
                            ->where('propertyid', $this->propertyid)
                            ->where('docid', $docidKey)
                            ->max('sno') ?? 0;
                    }

                    $stockSnoTracker[$docidKey]++;
                    $sno = $stockSnoTracker[$docidKey];

                    Log::info('kotsno: ' . $i . ' / ' . $request->input('kotsno' . $i));
                    $stockRecords[] = [
                        'propertyid' => $this->propertyid,
                        'docid'      => $sale1perdocid->docid,
                        'sno'        => $sno,
                        'vno'        => $sale1perdocid->vno,
                        'vtype'      => $sale1perdocid->vtype,
                        'vdate'      => $sale1perdocid->vdate,
                        'vtime'      => date('H:i:s'),
                        'roomcat' => $roommast->room_cat ?? '',
                        'roomtype' => $roommast->type ?? '',
                        'vprefix'    => $sale1perdocid->vprefix,
                        'restcode'   => $rest,
                        'kotdocid' => $request->input('kotsdocid' . $i) ?? $request->input('kotdocidfix') ?? '',
                        'kotsno' => $request->input('kotsno' . $i) > 0 ? $request->input('kotsno' . $i) : $sno,
                        'roomno'     => $roomno,
                        'item'       => $itemcode,
                        'qtyiss'     => $itemqty,
                        'unit'       => $itemmast->Unit ?? '',
                        'itemrestcode' => $itemmast->RestCode,
                        'description' => $request->input('description' . $i) ?? '',
                        'rate'       => $rate,
                        'amount'     => $itemcamttmp,
                        'taxper'     => $taxper,
                        'taxamt'     => $taxamt,
                        'discper'    => $idiscper ?? '0.00',
                        'discamt'    => $discamt,
                        'total'      => $net,
                        'itemrate'   => $truerate,
                        'roundoff'   => $roundoff > 0 ? 'Y' : 'N',
                        'delflag'    => 'N',
                        'created_at'    => $this->currenttime,
                        'updated_at' => $this->currenttime,
                        'u_name'     => Auth::user()->u_name,
                        'u_ae'       => 'e',
                    ];

                    if ($depart->kot_yn == 'Y') {
                        $kotsdocid = $request->input('kotsdocid' . $i);
                        if (empty($kotsdocid) && !empty($kotdata->docid)) {
                            $maxkotsno++;
                            $kotdatain = [
                                'propertyid' => $this->propertyid,
                                'docid' => $kotdata->docid,
                                'sno' => $maxkotsno,
                                'pax' => $kotdata->pax,
                                'vno' => $kotdata->vno,
                                'itemrestcode' => $rest,
                                'item' => $itemcode,
                                'description' => $kotdata->description,
                                'qty' => $itemqty,
                                'rate' => $rate,
                                'amount' => $itemqty * $rate,
                                'voidyn' => $kotdata->voidyn,
                                'vtype' => $kotdata->vtype,
                                'vdate' => $kotdata->vdate,
                                'vtime' => date('H:i:s'),
                                'vprefix' => $kotdata->vprefix,
                                'roomcat' => $kotdata->roomcat,
                                'restcode' => $rest,
                                'waiter' => $kotdata->waiter,
                                'pending' => 'N',
                                'delflag' => '',
                                'contradocid' => $sale1perdocid->docid,
                                'contrsno' => $sale1perdocid->vno,
                                'reasons' => $kotdata->reasons,
                                'ncreason' => $kotdata->ncreason,
                                'remarks' => $kotdata->remarks,
                                'roomtype' => $kotdata->roomtype,
                                'roomno' => $kotdata->roomno,
                                'created_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'e',
                                'nckot' => $kotdata->nckot,
                                'nctype' => $kotdata->nctype,
                                'freesno' => $kotdata->freesno,
                                'printed' => $kotdata->printed,
                                'schemecode' => $kotdata->schemecode,
                                'tokenno' => $kotdata->tokenno,
                                'printflag' => $kotdata->printflag,
                            ];
                            KoTModal::insert($kotdatain);
                        } else if (!empty($kotsdocid)) {
                            $kotdatainup = [
                                'qty' => $itemqty,
                                'rate' => $rate,
                                'amount' => $itemqty * $rate,
                            ];
                            KoTModal::where('propertyid', $this->propertyid)
                                ->where('docid', $kotsdocid)
                                ->where('sno', $request->input('kotsno' . $i))
                                ->update($kotdatainup);
                        }
                    }

                    $kotupdate = [
                        'pending' => 'N',
                        'contradocid' => $sale1perdocid->docid,
                        'contrsno' => $sale1perdocid->vno,
                        'updated_at' => $this->currenttime,
                        'u_ae' => 'e',
                    ];

                    DB::table('kot')
                        ->where('propertyid', $this->propertyid)
                        ->whereIn('docid', $docids)
                        ->update($kotupdate);
                }
                Log::info("stock: " . json_encode($stockRecords, JSON_PRETTY_PRINT));
                if (!empty($sale2Records)) Sale2::insert($sale2Records);
                if (!empty($stockRecords)) Stock::insert($stockRecords);
            }
            DB::commit();
            return back()->with('success', 'Sale Bill Updated Successfully!');
        } catch (Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Unknown Error: ' . $e->getMessage() . ' on line ' . $e->getLine());
        }
    }
}
