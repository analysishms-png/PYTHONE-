<?php

namespace App\Http\Controllers\FrontOffice\Operations;

use App\Http\Controllers\Controller;
use App\Helpers\UpdateRepeat;
use App\Helpers\WhatsappSend;
use App\Jobs\SendEnviroNotificationJob;
use App\Models\Bookings;
use App\Services\RoomInclusivePosting;
use App\Models\RoomInclusive;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Companyreg;
use App\Models\EnviroFom;
use App\Models\Paycharge;
use App\Models\Guestfolio;
use App\Models\GuestProf;
use App\Models\EnviroWhatsapp;
use App\Models\GrpBookinDetail;
use App\Models\GuestFolioProfDetail;
use App\Models\PlanDetail;
use App\Models\RoomCat;
use App\Models\RoomOcc;
use App\Models\TaxStructure;
use App\Models\VoucherPrefix;
use App\Services\FrontOffice\FixGrpBooking;
use App\Services\NotificationCreatorService;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;
use App\Jobs\SyncInventoryJob;

class WalkinSubmit extends Controller
{
    protected $username;
    protected $propertyid;
    protected $ptlngth;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->propertyid = Auth::user()->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            return $next($request);
        });
    }

    public function submitwalkin(
        Request $request,
        RoomInclusivePosting $roominclusiveposting,
        FixGrpBooking $fixGrpBooking
    ) {
        $chkenviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $compuname = Companyreg::where('propertyid', $this->propertyid)->first();
        $allowflag = 1;
        if ($chkenviro && $chkenviro->allowcheckinsubmit == 'Y') {
            $allowflag = 1;
        } else {
            if (Auth::user()->u_name != $compuname->u_name) {
                return response()->json([
                    'redirecturl' => '',
                    'status' => 'error',
                    'message' => 'You have no permission to execute this functionality!'
                ]);
            }

            $permission = $this->revokeopen(141112);

            if (is_null($permission) || $permission->ins == 0) {
                return response()->json([
                    'redirecturl' => '',
                    'status' => 'error',
                    'message' => 'You have no permission to execute this functionality!'
                ]);
            }
        }

        try {
            $validate = $request->validate([
                'name' => 'required|string',
                'cityname' => 'required|string',
                'checkindate' => 'required|date',
                'checkoutdate' => 'required|date|after_or_equal:checkindate',
                'checkintime' => 'required',
                'checkouttime' => 'required',
                'totalrooms' => 'required|integer|min:1'
            ]);

            DB::beginTransaction();
            $vtype = "CHK";
            $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $request->checkindate)
                ->whereDate('date_to', '>=', $request->checkindate)
                ->first();
            if ($chkvpf === null || $chkvpf === '0') {
                DB::rollBack();
                return response()->json([
                    'redirecturl' => '',
                    'status' => 'error',
                    'message' => 'You are not eligible to checkin for this date: ' . date('d-m-Y', strtotime($request->checkindate)),
                ]);
            }

            $start_srl_no = $chkvpf->start_srl_no + 1;
            $vprefix = $chkvpf->prefix;

            $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('country'))->first();
            $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('cityname'))->first();
            if (!empty($request->input('issuingcity'))) {
                $issuingcityname = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('issuingcity'))->first();
                $issuingcountryname = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('issuingcountry'))->first();
            }
            $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $request->input('state'))->first();

            $dob = $request->input('birthDate');
            $age = Carbon::parse($dob)->age;

            $profilepicture = null;
            $identitypicture = null;

            if (!empty($request->file('profileimage'))) {
                $profilepic = $request->file('profileimage');
                $profilepicture = $request->input('guestmobile') . $request->input('guestname') . 'PR' . $this->propertyid . time() . '.' . $profilepic->getClientOriginalExtension();
                $folderPathp = 'public/walkin/profileimage';
                Storage::makeDirectory($folderPathp);
                Storage::putFileAs($folderPathp, $profilepic, $profilepicture);
            } else {
                $existingProfileImage = $request->input('existing_profileimage');
                if ($existingProfileImage != '') {
                    $folderPathp = 'public/walkin/profileimage';
                    $existingFilePath = $folderPathp . '/' . $existingProfileImage;

                    $newProfilepicture = $request->input('guestmobile') . $request->input('guestname') . 'PR' . $this->propertyid . time() . '.' . pathinfo($existingProfileImage, PATHINFO_EXTENSION);
                    $newFilePath = $folderPathp . '/' . $newProfilepicture;

                    if (Storage::exists($existingFilePath)) {
                        Storage::copy($existingFilePath, $newFilePath);
                        $profilepicture = $newProfilepicture;
                    } else {
                        $profilepicture = null;
                    }
                } else {
                    $profilepicture = null;
                }
            }

            if (!empty($request->file('identityimage'))) {
                $identitypic = $request->file('identityimage');
                $identitypicture = $request->input('guestmobile') . $request->input('guestname') . 'ID' . $this->propertyid . time() . '.' . $identitypic->getClientOriginalExtension();
                $folderpathi = 'public/walkin/identityimage';
                Storage::makeDirectory($folderpathi);
                Storage::putFileAs($folderpathi, $identitypic, $identitypicture);
            } else {
                $existingIdentityImage = $request->input('existing_identityimage');
                if ($existingIdentityImage != '') {
                    $folderpathi = 'public/walkin/identityimage';
                    $existingFilePath = $folderpathi . '/' . $existingIdentityImage;
                    $newIdentitypicture = $request->input('guestmobile') . $request->input('guestname') . 'ID' . $this->propertyid . time() . '.' . pathinfo($existingIdentityImage, PATHINFO_EXTENSION);
                    $newFilePath = $folderpathi . '/' . $newIdentitypicture;

                    if (Storage::exists($existingFilePath)) {
                        Storage::copy($existingFilePath, $newFilePath);
                        $identitypicture = $newIdentitypicture;
                    } else {
                        $identitypicture = null;
                    }
                } else {
                    $identitypicture = null;
                }
            }

            $signfilename = '';
            if (!empty($request->input('signimage'))) {
                $imageData = $request->input('signimage');

                $encodedImage = str_replace('data:image/png;base64,', '', $imageData);
                $decodedImage = base64_decode($encodedImage);

                $signfilename = $request->input('guestmobile') . $request->input('guestname') . 'signature_' . time() . '.png';

                $folder = 'walkin/signature';
                $path = storage_path('app/public/' . $folder . '/' . $signfilename);

                if (!file_exists(dirname($path))) {
                    mkdir(dirname($path), 0755, true);
                }

                file_put_contents($path, $decodedImage);
            }

            $roomrate = $request->input('rate1');

            if ($request->input('complimentry') == 'on') {
                $complimentry = 'Y';
                $roomrate = 0;
            } else {
                $complimentry = 'N';
            }

            $bookdocid = $request->input('docid');

            $count = $request->totalrooms;

            $grpBookingSync = ['inserted_rows' => []];

            if (!empty($bookdocid)) {
                $grpBookingSync = $fixGrpBooking->sync(
                    $request,
                    (int) $this->propertyid
                );
            }

            $chkhalfcheckedin = GrpBookinDetail::where('Property_ID', $this->propertyid)
                ->where('BookingDocid', $request->input('docid'))
                ->where(function ($query) {
                    $query->whereNotNull('ContraDocId')
                        ->where('ContraDocId', '<>', '');
                })
                ->first();

            if (!$chkhalfcheckedin) {

                $maxguestprof = GuestProf::where('propertyid', $this->propertyid)->max('guestcode');
                $guestprof = ($maxguestprof === null) ? $this->propertyid . '10001' : ($guestprof = $this->propertyid . substr($maxguestprof, $this->ptlngth) + 1);

                $guestprofflag = false;
                if ($request->input('guestfetch') == 'Y') {
                    $guestprofflag = true;
                    $guestfetchdocid = $request->input('guestfetchdocid');
                    $findexist = GuestProf::where('propertyid', $this->propertyid)->where('docid', $guestfetchdocid)->first();
                    $guestprof = $findexist->guestcode;
                }

                $docid = $this->propertyid . 'CHK' . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;
                $sno1 = 1;
                $maxgrpsno = $count;
            } else {
                $checkroomocc = RoomOcc::where('propertyid', $this->propertyid)
                    ->where('docid', $chkhalfcheckedin->ContraDocId)
                    ->first();

                $docid = $chkhalfcheckedin->ContraDocId;
                $start_srl_no = $checkroomocc->folioNo;
                $guestprof = $checkroomocc->guestprof;
                $vprefix = $checkroomocc->vprefix;
                $sno1 = RoomOcc::where('propertyid', $this->propertyid)
                    ->where('docid', $chkhalfcheckedin->ContraDocId)
                    ->max('sno1') + 1;
                $guestprofflag = true;
                $maxgrpsno = $count;
            }

            // return $docid;

            $bookingsno = '';
            $maxsno = GrpBookinDetail::where('BookingDocid', $request->input('docid'))->where('Property_ID', $this->propertyid)->max('Sno');

            if (!empty($bookdocid)) {
                $olddbrow = Bookings::where('Property_ID', $this->propertyid)->where('DocId', $bookdocid)->first();
                $snorev = 1;
                RoomInclusive::where('propertyid', $this->propertyid)
                    ->where('docid', $bookdocid)->where('vtype', $olddbrow->Vtype)
                    ->delete();
                $normalizedInputs = [];
                foreach ($request->all() as $key => $value) {
                    $normalizedInputs[preg_replace('/[^A-Za-z0-9_]/', '_', $key)] = $value;
                }
                foreach (revmastroominclusive() as $row) {
                    $revCodeKey = preg_replace('/[^A-Za-z0-9_]/', '_', $row->rev_code);
                    $fieldname = $revCodeKey . 'amount';
                    $fieldvalue = $normalizedInputs[$fieldname] ?? null;
                    if ($fieldvalue !== null && $fieldvalue !== '') {
                        $fieldnamecharge = $row->rev_code . 'chargepost';
                        $chargepost = $request->input($fieldnamecharge);
                        $rinclusive = new RoomInclusive();
                        $rinclusive->propertyid = $this->propertyid;
                        $rinclusive->docid = $bookdocid;
                        $rinclusive->vtype = $olddbrow->Vtype;
                        $rinclusive->vdate = $olddbrow->vdate;
                        $rinclusive->vprefix = $olddbrow->Vprefix;
                        $rinclusive->bookno = $olddbrow->BookNo;
                        $rinclusive->contradocid = $docid;
                        $rinclusive->sno = $snorev++;
                        $rinclusive->rev_code = $row->rev_code;
                        $rinclusive->amount = $fieldvalue;
                        $rinclusive->chargepost = $chargepost ?? 'Daily';
                        $rinclusive->u_name = Auth::user()->u_name;
                        $rinclusive->created_at = now();
                        $rinclusive->updated_at = now();
                        $rinclusive->save();
                    }
                }
            } else {
                $snorev = 1;
                foreach (revmastroominclusive() as $row) {
                    $fieldname = $row->rev_code . 'amount';
                    $fieldvalue = $request->input($fieldname);
                    if (!empty($fieldvalue)) {
                        $fieldnamecharge = $row->rev_code . 'chargepost';
                        $chargepost = $request->input($fieldnamecharge);
                        $rinclusive = new RoomInclusive();
                        $rinclusive->propertyid = $this->propertyid;
                        $rinclusive->docid = $docid;
                        $rinclusive->vtype = $vtype;
                        $rinclusive->vdate = ncurdate();
                        $rinclusive->vprefix = $vprefix;
                        $rinclusive->bookno = $start_srl_no;
                        $rinclusive->contradocid = $docid;
                        $rinclusive->sno = $snorev++;
                        $rinclusive->rev_code = $row->rev_code;
                        $rinclusive->amount = $fieldvalue;
                        $rinclusive->chargepost = $chargepost ?? 'Daily';
                        $rinclusive->u_name = Auth::user()->u_name;
                        $rinclusive->created_at = now();
                        $rinclusive->save();
                    }
                }
            }

            $advcheck = DB::table('paycharge')->where('propertyid', $this->propertyid)->where('refdocid', $request->input('docid'))->where('sno', '1')->where('sno1', $maxsno)->get();
            $planrowscount = 0;
            $inyn = 1;
            $leaders = [];

            // return $maxgrpsno;
            for ($i = 1; $i <= $maxgrpsno; $i++) {
                // return 'sagar';
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $i))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                $fetchtaxstru = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $rtaxstru)
                    ->get();
                $roomrate = round($request->input('rate' . $i));
                $roomrateoriginal = round($request->input('rate' . $i));
                $rodisc = $request->input('rodisc');
                if (fomparameter()->postroomdiscseparately == 'N') {
                    if ($rodisc > 0) {
                        $roomrate = round($roomrate - ($roomrate * $rodisc / 100));
                    }
                }

                $totalroomrate = 0.00;
                $totalrateaftertax = 0.00;

                // Check repeatsame room same date
                $checkrepeat = RoomOcc::where('propertyid', $this->propertyid)
                    ->where('roomno', $request->input('roommast' . $i))
                    ->where('roomcat', $request->input('cat_code' . $i))
                    ->where('chkindate', $request->input('checkindate'))
                    ->where(function ($query) use ($request, $i) {
                        $query->where('depdate', $request->input('checkoutdate'))
                            ->whereBetween('depdate', [$request->input('checkindate'), $request->input('checkoutdate')]);
                    })
                    ->whereNull('type')
                    ->first();

                if (!is_null($checkrepeat)) {
                    DB::rollBack();
                    $inyn = 0;
                    if (!empty($request->input('docid'))) {
                        UpdateRepeat::emptygrpcontra($request->input('docid'), $request->bookingsno, $this->propertyid);
                    }
                    return response()->json([
                        'status' => 'error',
                        'message' => 'Room No. ' . $request->input('roommast' . $i) . ' Already Checked In for Date: ' . date('d-m-Y', strtotime($request->input('checkindate'))) . ' to ' . date('d-m-Y', strtotime($request->input('checkoutdate'))) . ' Please Select Another Room or Date',
                    ]);
                }

                $checkrepeatgrp = DB::table('grpbookingdetails')
                    ->where('Property_ID', $this->propertyid)
                    ->where('RoomNo', $request->input('roommast' . $i))
                    ->where('RoomCat', $request->input('cat_code' . $i))
                    ->whereDate('ArrDate', $request->input('checkindate'))
                    ->where('Cancel', 'N')
                    ->where(function ($query) use ($request) {
                        $query->whereDate('DepDate', $request->input('checkoutdate'))
                            ->whereBetween('DepDate', [
                                $request->input('checkindate'),
                                $request->input('checkoutdate')
                            ]);
                    })
                    ->first();

                if (!is_null($checkrepeatgrp)) {
                    if ($checkrepeatgrp->BookingDocid != $request->input('docid')) {
                        DB::rollBack();
                        $inyn = 0;
                        if (!empty($request->input('docid'))) {
                            UpdateRepeat::emptygrpcontra($request->input('docid'), $request->bookingsno, $this->propertyid);
                        }
                        return response()->json([
                            'status' => 'error',
                            'message' => 'Room No. ' . $request->input('roommast' . $i) . ' Already Booked for Date: ' . date('d-m-Y', strtotime($request->input('checkindate'))) . ' to ' . date('d-m-Y', strtotime($request->input('checkoutdate'))) . ' Please Select Another Room or Date',
                        ]);
                    }
                }

                $ratenew = 0;
                $ratenewreverse = 0;
                $postamount = 0;
                $pamount = $request->input('rowdamount' . $i);
                $ptaxstru = TaxStructure::where('propertyid', $this->propertyid)->where('str_code', $request->input('rowstax_stru' . $i))->sum('rate');

                if ($request->input('tax_inc' . $i) == 'Y') {

                    $postamount = ($pamount * 100) / ($ptaxstru + 100);

                    foreach ($fetchtaxstru as $taxstru) {
                        $limitstart = $taxstru->limits;
                        $limitend = $taxstru->limit1;
                        $rate = $taxstru->rate;
                        $comp_operator = $taxstru->comp_operator;
                        if ($roomrate >= $limitstart && $roomrate <= $limitend) {
                            $ratenew += $rate;
                            $fixedrate = $ratenew + 100;
                        } else if ($roomrate >= $limitstart && $comp_operator != 'Between') {
                            $ratenew += $rate;
                            $fixedrate = $ratenew + 100;
                        }
                    }
                    $calcedamttmp = $roomrate * 100 / $fixedrate;
                    $calcedamt = number_format($calcedamttmp, 2);

                    $ratenewreverse = 0;

                    foreach ($fetchtaxstru as $taxstrurow) {
                        $limitstart2 = floatval(trim($taxstrurow->limits));
                        $limitend2 = $taxstrurow->limit1 !== null ? floatval(trim($taxstrurow->limit1)) : null;
                        $rate2 = floatval($taxstrurow->rate);
                        $comp_operator2 = trim($taxstrurow->comp_operator);
                        $roundedAmt = round($roomrate);

                        if (!is_null($limitend2) && $comp_operator2 === 'Between') {
                            if ($roundedAmt >= $limitstart2 && $roundedAmt <= $limitend2) {
                                $ratenewreverse += $rate2;
                            }
                        } elseif ($comp_operator2 !== 'Between') {
                            if ($roundedAmt >= $limitstart2) {
                                $ratenewreverse += $rate2;
                            }
                        }
                    }

                    $fixedratereverse = $ratenewreverse + 100;

                    $calcedamtreversetmp = ($calcedamttmp * $fixedratereverse) / 100;
                    $relcalcamt = $calcedamttmp * $ratenewreverse / 100;
                    $relcalcamt = floor($relcalcamt * 100) / 100;
                    $sumof2calcroomrate = $calcedamttmp + $relcalcamt;
                    $sumof2calcroomrate = floor($sumof2calcroomrate * 100) / 100;
                    $calcedamt = number_format($calcedamttmp, 2);

                    if ($roomrate != round($calcedamtreversetmp)) {
                        DB::rollBack();
                        return response()->json([
                            'status' => 'error',
                            'message' => 'Invalid Room Tarrif'
                        ], 500);
                    }
                } else {
                    $calcedamt = $roomrate;
                }


                if ($request->input('planedit' . $i) == 'Y') {
                    $planamount = $request->input('plankaamount' . $i);
                } else {
                    $planamount = $roomrate;
                }
                $roomoccdata = [
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'name' => $request->input('name'),
                    'sno' => 1,
                    'sno1' => $sno1,
                    'folioNo' => $start_srl_no,
                    'vtype' => $vtype,
                    'vprefix' => $vprefix,
                    'guestprof' => $guestprof,
                    'roomcat' => $request->input('cat_code' . $i),
                    'roomtype' => 'RO',
                    'roomno' => $request->input('roommast' . $i),
                    'ratecode' => 2,
                    'depdate' => $request->input('checkoutdate'),
                    'deptime' => $request->input('checkouttime'),
                    'nodays' => $request->input('stay_days'),
                    'rrservicechrg' => '',
                    'chngdate' => $request->input('checkindate'),
                    'roomtaxstru' => $rtaxstru,
                    'roomrate' => str_replace(',', '', $calcedamt),
                    'rackrate' => $roomrate,
                    'originalamount' => $roomrateoriginal,
                    'chkindate' => $request->input('checkindate'),
                    'chkintime' => $request->input('checkintime'),
                    'adult' => $request->input('adult' . $i),
                    'children' => $request->input('child' . $i),
                    'chkoutdate' => null,
                    'chkouttime' => null,
                    'created_at' => now(),
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'rodisc' => $request->input('rodisc'),
                    'rsdisc' => $request->input('rsdisc'),
                    'plancode' => $request->input('planmaster' . $i),
                    'planamt' => $planamount,
                    'rrtaxinc' => $request->input('tax_inc' . $i) ?? 'Y',
                    'leaderyn' => $request->input('leader' . $i) == 'on' ? 'Y' : 'N',
                    'reasonrchange' => ''
                ];

                $plandetails = [
                    'propertyid' => $this->propertyid,
                    'foliono' => $start_srl_no,
                    'docid' => $docid,
                    'sno' => 1,
                    'sno1' => $sno1,
                    'roomno' => $request->input('roommast' . $i),
                    'room_rate_before_tax' => $request->input('roomrate' . $i),
                    'total_rate' => $request->input('plansumrate' . $i),
                    'pcode' => $request->input('planmaster' . $i),
                    'noofdays' => $request->input('stay_days'),
                    'rev_code' => $request->input('rowsrev_code' . $i),
                    'fixrate' => $request->input('rowdplanfixrate' . $i),
                    'planper' => $request->input('rowdplan_per' . $i),
                    'amount' => $postamount,
                    'netplanamt' => $request->input('plankaamount' . $i),
                    'taxinc' => $request->input('taxincplanroomrate' . $i),
                    'taxstru' => $request->input('rowstax_stru' . $i),
                    'created_at' => now(),
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                ];


                $roomcat = RoomCat::where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $i))->first();
                // return $inyn;
                if ($inyn == 1) {

                    $totalroomrate += $roomrate;
                    $totalrateaftertax += str_replace(',', '', $calcedamt);

                    // return $roomoccdata;
                    RoomOcc::insert($roomoccdata);
                    if ($request->input('planedit' . $i) == 'Y') {
                        PlanDetail::insert($plandetails);
                        $planrowscount++;
                    }

                    $leaderinserted = false;

                    if (!empty($request->input('docid'))) {
                        $grp = GrpBookinDetail::where('Property_ID', $this->propertyid)->where('BookingDocid', $request->input('docid'))->first();
                        $bookingsno = $grp->Sno;
                        $fillamttmp = 0.00;
                        if (!$chkhalfcheckedin) {
                            if ($advcheck !== null) {
                                $roomno = $request->input('roommast' . $i);
                                $roomcat = $request->input('cat_code' . $i);
                                $n = 1;
                                foreach ($advcheck as $row) {
                                    $fillamttmp = $row->amtcr;
                                    $paycode = $row->paycode;
                                    $comments = $row->comments;
                                    $billamount = $row->billamount;
                                    $leadercheck = $request->input('leader' . $i) == 'on' ? 'Y' : 'N';
                                    $leaders[] = $leadercheck;

                                    if ($leadercheck == 'N') {
                                        $fillamt = $fillamttmp / $count;
                                        $paychargedata = [
                                            'propertyid' => $this->propertyid,
                                            'docid' => $docid,
                                            'folionodocid' => $docid,
                                            'refdocid' => $request->input('docid'),
                                            'foliono' => $start_srl_no,
                                            'sno' => $n,
                                            'sno1' => $sno1,
                                            'vno' => $sno1,
                                            'vtype' => $vtype,
                                            'vprefix' => $vprefix,
                                            'vdate' => $ncurdate,
                                            'vtime' => date('H:i:s'),
                                            'paycode' => $paycode,
                                            'paytype' => $row->paytype,
                                            'comments' => $comments,
                                            'guestprof' => $guestprof,
                                            'comp_code' => '',
                                            'travel_agent' => '',
                                            'roomno' => $roomno,
                                            'amtcr' => $fillamt,
                                            'roomcat' => $roomcat,
                                            'roomtype' => 'RO',
                                            'restcode' => 'FOM' . $this->propertyid,
                                            'billamount' => $billamount,
                                            'taxper' => 0,
                                            'onamt' => 0,
                                            'taxstru' => '',
                                            'taxcondamt' => 0,
                                            'created_at' => now(),
                                            'u_name' => Auth::user()->u_name,
                                            'u_ae' => 'a',
                                        ];
                                        Paycharge::insert($paychargedata);
                                        $n++;
                                    } else if ($leadercheck == 'Y') {
                                        if (!$leaderinserted) {
                                            $paychargedata = [
                                                'propertyid' => $this->propertyid,
                                                'docid' => $docid,
                                                'folionodocid' => $docid,
                                                'refdocid' => $request->input('docid'),
                                                'foliono' => $start_srl_no,
                                                'sno' => $n,
                                                'sno1' => $sno1,
                                                'msno1' => $sno1,
                                                'vno' => $sno1,
                                                'vtype' => $vtype,
                                                'vprefix' => $vprefix,
                                                'vdate' => $ncurdate,
                                                'vtime' => date('H:i:s'),
                                                'paycode' => $paycode,
                                                'paytype' => $row->paytype,
                                                'comments' => $comments,
                                                'guestprof' => $guestprof,
                                                'comp_code' => '',
                                                'travel_agent' => '',
                                                'roomno' => $roomno,
                                                'amtcr' => $fillamttmp,
                                                'roomcat' => $roomcat,
                                                'roomtype' => 'RO',
                                                'restcode' => 'FOM' . $this->propertyid,
                                                'billamount' => $billamount,
                                                'taxper' => 0,
                                                'onamt' => 0,
                                                'taxstru' => '',
                                                'taxcondamt' => 0,
                                                'created_at' => now(),
                                                'u_name' => Auth::user()->u_name,
                                                'u_ae' => 'a',
                                            ];
                                            DB::table('paycharge')->insert($paychargedata);
                                            $n++;
                                        }
                                    }
                                }
                            }
                        }
                        $originalSno = $request->input('grpsno' . $i);

                        // New room ke liye service se inserted Sno use hoga.
                        if ($originalSno === null || $originalSno === '') {
                            $originalSno = $grpBookingSync['inserted_rows'][$i] ?? null;
                        }

                        // if ($originalSno !== null && $originalSno !== '') {
                        //     DB::table('grpbookingdetails')
                        //         ->where('Property_ID', $this->propertyid)
                        //         ->where('BookingDocid', $request->input('docid'))
                        //         ->where('Sno', $originalSno)
                        //         ->where(function ($query) {
                        //             $query->whereNull('ContraDocId')
                        //                 ->orWhere('ContraDocId', '');
                        //         })
                        //         ->update([
                        //             'ContraDocId' => $docid,
                        //             'ContraSno' => $sno1,
                        //             'updated_at' => now(),
                        //         ]);
                        // }
                        if ($originalSno !== null && $originalSno !== '') {

                            $bookingRoom = DB::table('grpbookingdetails')
                                ->where('Property_ID', $this->propertyid)
                                ->where('BookingDocid', $request->input('docid'))
                                ->where('Sno', $originalSno)
                                ->where(function ($query) {
                                    $query->whereNull('ContraDocId')
                                        ->orWhere('ContraDocId', '');
                                })
                                ->first();

                            if ($bookingRoom) {

                                // Update inventory if room category has changed.
                                if (
                                    $bookingRoom->RoomCat != $request->input('cat_code' . $i)
                                    && channelparameter()->checkyn == 'Y'
                                ) {
                                    $oldArrivalDate = Carbon::parse($bookingRoom->ArrDate)->toDateString();
                                    $oldDepartureDate = Carbon::parse($bookingRoom->DepDate)->toDateString();

                                    $newArrivalDate = Carbon::parse($request->input('checkindate'))->toDateString();
                                    $newDepartureDate = Carbon::parse($request->input('checkoutdate'))->toDateString();

                                    $currentDate = Carbon::parse($ncurdate)->toDateString();

                                    if ($oldArrivalDate >= $currentDate || $newArrivalDate >= $currentDate) {
                                        SyncInventoryJob::dispatch(
                                            $bookingRoom->RoomCat,
                                            $request->input('cat_code' . $i),
                                            $oldArrivalDate,
                                            $newArrivalDate,
                                            $oldDepartureDate,
                                            $newDepartureDate,
                                            (int) $this->propertyid,
                                            Auth::user()->u_name,
                                            true
                                        );
                                    }
                                }

                                DB::table('grpbookingdetails')
                                    ->where('Property_ID', $this->propertyid)
                                    ->where('BookingDocid', $request->input('docid'))
                                    ->where('Sno', $originalSno)
                                    ->where(function ($query) {
                                        $query->whereNull('ContraDocId')
                                            ->orWhere('ContraDocId', '');
                                    })
                                    ->update([
                                        'ContraDocId' => $docid,
                                        'ContraSno' => $sno1,
                                        'updated_at' => now(),
                                    ]);
                            }
                        }
                    }
                }

                $sno1++;
            }

            if (in_array('Y', $leaders)) {
                Paycharge::where('refdocid', $request->input('docid'))->where('msno1', '0')
                    ->where('docid', $docid)->delete();
            }

            $guestfolio = [
                'propertyid' => $this->propertyid,
                'created_at' => now(),
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'nochargepost' => $request->input('nochargepost') == 'on' ? 'Y' : 'N',
                'remarks' => $request->remarkmain ?? '',
                'pickupdrop' => $request->pickupdrop ?? '',
                'add1' => $request->input('address1') ?? '',
                'add2' => $request->input('address2') ?? '',
                'docid' => $docid,
                'folio_no' => $start_srl_no,
                'vtype' => $vtype,
                'vdate' => $ncurdate,
                'bookingdocid' => $request->input('docid') ?? '',
                'bookingsno' => $bookingsno,
                'vprefix' => $vprefix,
                'booking_source' => $request->input('booking_source') ?? '',
                'guestprof' => $guestprof,
                'travelagent' => $request->input('travel_agent'),
                'name' => $request->input('name'),
                'city' => $request->input('cityname'),
                'nodays' => $request->input('stay_days'),
                'roomcount' => $request->input('rooms') ?? '1',
                'purvisit' => $request->input('purpofvisit'),
                'company' => $request->input('company'),
                'arrfrom' => $request->input('arrfrom'),
                'vehiclenum' => $request->input('vehiclenum'),
                'destination' => $request->input('destination'),
                'travelmode' => $request->input('travelmode'),
                'rodisc' => $request->input('rodisc'),
                'rsdisc' => $request->input('rsdisc'),
                'busssource' => $request->input('bsource'),
                'depdate' => $request->input('checkoutdate'),
                'whatsappcheckout' => $request->input('whatsappcheckout') == 'on' ? 'Y' : 'N',
                'suppressrate' => $request->input('suppressrate') == 'on' ? 'Y' : 'N',
            ];

            if ($guestprofflag == false) {

                $guestproft = [
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'folio_no' => $start_srl_no,
                    'created_at' => now(),
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'complimentry' => $complimentry,
                    'guestcode' => $guestprof,
                    'name' => $request->input('name'),
                    'bill_to' => $request->input('bill_to') ?? '',
                    'state_code' => $request->input('state'),
                    'country_code' => $request->input('country'),
                    'add1' => $request->input('address1'),
                    'add2' => $request->input('address2'),
                    'city' => $request->input('cityname'),
                    'type' => $countrydata->Type,
                    'mobile_no' => $request->input('mobile'),
                    'email_id' => $request->input('email'),
                    'nationality' => $countrydata->nationality ?? null,
                    'anniversary' => $request->input('weddingAnniversary'),
                    'guest_status' => $request->input('vipStatus'),
                    'comments1' => null,
                    'comments2' => null,
                    'comments3' => null,
                    'city_name' => $citydata->cityname,
                    'state_name' => $statedata->name,
                    'country_name' => $countrydata->name,
                    'gender' => $request->input('genderguest'),
                    'marital_status' => $request->input('marital_status'),
                    'zip_code' => $citydata->zipcode,
                    'con_prefix' => $request->input('greetings'),
                    'dob' => $dob,
                    'age' => $age,
                    'pic_path' => $profilepicture ?? '',
                    'guestsign' => $signfilename ?? '',
                    'id_proof' => $request->input('idType'),
                    'idproof_no' => $request->input('idNumber'),
                    'issuingcitycode' => $request->input('issuingcity') ?? null,
                    'issuingcityname' => $issuingcityname->cityname ?? null,
                    'issuingcountrycode' => $request->input('issuingcountry') ?? null,
                    'issuingcountryname' => $issuingcountryname->name ?? null,
                    'expiryDate' => $request->input('expiryDate'),
                    'vipStatus' => $request->input('vipStatus'),
                    'paymentMethod' => $request->input('paymentMethod'),
                    'billingAccount' => $request->input('billingAccount'),
                    'idpic_path' => $identitypicture,
                    'm_prof' => $guestprof,
                    'father_name' => null,
                    'fom' => 1,
                    'pos' => 0,
                ];
                DB::table('guestprof')->insert($guestproft);
            } else {
                $guestproft = [
                    'updated_at' => now(),
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                    'complimentry' => $complimentry,
                    'guestcode' => $guestprof,
                    'name' => $request->input('name'),
                    'state_code' => $request->input('state'),
                    'country_code' => $request->input('country'),
                    'add1' => $request->input('address1'),
                    'add2' => $request->input('address2'),
                    'city' => $request->input('cityname'),
                    'type' => $countrydata->Type,
                    'mobile_no' => $request->input('mobile'),
                    'email_id' => $request->input('email'),
                    'nationality' => $countrydata->nationality ?? null,
                    'anniversary' => $request->input('weddingAnniversary'),
                    'guest_status' => $request->input('vipStatus'),
                    'comments1' => null,
                    'comments2' => null,
                    'comments3' => null,
                    'city_name' => $citydata->cityname,
                    'state_name' => $statedata->name,
                    'country_name' => $countrydata->name,
                    'gender' => $request->input('genderguest'),
                    'marital_status' => $request->input('marital_status'),
                    'zip_code' => $citydata->zipcode,
                    'con_prefix' => $request->input('greetings'),
                    'dob' => $dob,
                    'age' => $age,
                    'pic_path' => $profilepicture,
                    'guestsign' => $signfilename,
                    'id_proof' => $request->input('idType'),
                    'idproof_no' => $request->input('idNumber'),
                    'issuingcitycode' => $request->input('issuingcity') ?? null,
                    'issuingcityname' => $issuingcityname->cityname ?? null,
                    'issuingcountrycode' => $request->input('issuingcountry') ?? null,
                    'issuingcountryname' => $issuingcountryname->name ?? null,
                    'expiryDate' => $request->input('expiryDate'),
                    'vipStatus' => $request->input('vipStatus'),
                    'paymentMethod' => $request->input('paymentMethod'),
                    'billingAccount' => $request->input('billingAccount'),
                    'idpic_path' => $identitypicture,
                    'm_prof' => $guestprof,
                    'father_name' => null,
                    'fom' => 1,
                    'pos' => 0,
                ];

                GuestProf::where('guestcode', $guestprof)->where('propertyid', $this->propertyid)->update($guestproft);
            }

            $guestfolioprofdetail = [
                'propertyid' => $this->propertyid,
                'created_at' => now(),
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'doc_id' => $docid,
                'folio_no' => $start_srl_no,
                'guest_prof' => $guestprof,
                'mprof' => $guestprof,
            ];

            if (!$chkhalfcheckedin) {
                DB::table('guestfolio')->insert($guestfolio);
                DB::table('guestfolioprofdetail')->insert($guestfolioprofdetail);
            }

            if (!$chkhalfcheckedin) {
                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            DB::commit();

            if (channelparameter()->checkyn == 'Y' && $request->pagename == 'walkin') {

                $currentDate = Carbon::parse($ncurdate)->toDateString();

                $rooms = RoomOcc::where('propertyid', $this->propertyid)
                    ->where('docid', $docid)
                    ->where('sno', 1)
                    ->whereNull('type')
                    ->get(['roomcat', 'chkindate', 'depdate']);

                foreach ($rooms as $room) {

                    $arrivalDate = Carbon::parse($room->chkindate)->toDateString();

                    if ($arrivalDate >= $currentDate) {
                        $departureDate = Carbon::parse($room->depdate)->toDateString();

                        SyncInventoryJob::dispatch(
                            $room->roomcat,
                            $room->roomcat,
                            $arrivalDate,
                            $arrivalDate,
                            $departureDate,
                            $departureDate,
                            (int) $this->propertyid,
                            Auth::user()->u_name,
                            true
                        );
                    }
                }
            }

            $notificationMessage = app(NotificationCreatorService::class)
                ->createWalkinCheckin(
                    propertyId: $this->propertyid,
                    docid: $docid,
                );

            SendEnviroNotificationJob::dispatch(
                propertyId: $this->propertyid,
                route: 'walkinsubmit',
                customMessage: $notificationMessage,
            );

            $chkgfolio = Guestfolio::where('guestprof', $guestprof)->where('propertyid', $this->propertyid)->first();
            $chkgprof = GuestProf::where('guestcode', $guestprof)->where('propertyid', $this->propertyid)->first();
            $chkgproffolio = GuestFolioProfDetail::where('guest_prof', $guestprof)->where('propertyid', $this->propertyid)->first();

            if (!$chkgprof) {
                DB::rollBack();
                if (!empty($request->input('docid'))) {
                    UpdateRepeat::emptygrpcontra($request->input('docid'), $request->bookingsno, $this->propertyid);
                }
                return response()->json([
                    'redirecturl' => 'walkincheckin',
                    'status' => 'error',
                    'message' => 'Unable to insert data in Guest Profile',
                ]);
            }

            if (!$chkgproffolio) {
                DB::rollBack();
                if (!empty($request->input('docid'))) {
                    UpdateRepeat::emptygrpcontra($request->input('docid'), $request->bookingsno, $this->propertyid);
                }
                return response()->json([
                    'redirecturl' => 'walkincheckin',
                    'status' => 'error',
                    'message' => 'Unable to insert data in Guest Profile Folio',
                ]);
            }

            if (!$chkgfolio) {
                DB::rollBack();
                if (!empty($request->input('docid'))) {
                    UpdateRepeat::emptygrpcontra($request->input('docid'), $request->bookingsno, $this->propertyid);
                }
                return response()->json([
                    'redirecturl' => 'walkincheckin',
                    'status' => 'error',
                    'message' => 'Unable to insert data in Guest Folio',
                ]);
            }

            $plandtcount = PlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->count();

            if ($planrowscount != $plandtcount) {
                DB::rollBack();

                if (!empty($request->input('docid'))) {
                    UpdateRepeat::emptygrpcontra($request->input('docid'), $request->bookingsno, $this->propertyid);
                }
                return response()->json([
                    'redirecturl' => 'walkincheckin',
                    'status' => 'error',
                    'message' => 'Unable to insert data in Plan Detail',
                ]);
            }

            $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

            if ($wpenv != null) {
                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->checkinmsg != '' &&
                    $wpenv->checkinmsgarray != '' &&
                    $wpenv->checkintemplate != '' &&
                    $request->mobile != ''
                ) {
                    $checkinmsgarray = json_decode($wpenv->checkinmsgarray, true);

                    $msgdata = [];
                    foreach ($checkinmsgarray as $row) {
                        [$colname, $table] = $row;
                        $value = DB::table($table)->where('propertyid', $this->propertyid)->where('docid', $docid)->value($colname);
                        $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $docid)->value('mobile_no');
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $whatsapp->MuzzTech($msgdata, $mob, 'Checkin', 'checkintemplate');
                }

                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->checkinmsgadmin != '' &&
                    $wpenv->checkinmsgadminarray != '' &&
                    $wpenv->checkinmsgadmintemplate != '' &&
                    $wpenv->managementmob != ''
                ) {
                    $checkinmsgadminarray = json_decode($wpenv->checkinmsgadminarray, true);

                    $msgdata = [];
                    foreach ($checkinmsgadminarray as $row) {
                        [$colname, $table] = $row;
                        $value = DB::table($table)->where('propertyid', $this->propertyid)->where('docid', $docid)->value($colname);
                        $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $docid)->value('mobile_no');
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $whatsapp->MuzzTech($msgdata, $wpenv->managementmob, 'Checkin Admin', 'checkinmsgadmintemplate');
                }
            }

            $chkroomincl = RoomInclusive::where('propertyid', $this->propertyid)
                ->where('contradocid', $docid)
                ->where('chargepost', 'Once')
                ->first();

            if ($chkroomincl) {
                $roominclusiveposting->roominclusiveposting(ncurdate(), ncurdate(), $docid);
            }

            if ($request->page_source) {
                return response()->json([
                    'redirecturl' => $request->page_source,
                    'status' => 'success',
                    'message' => 'Walk-in submission successful.!',
                ]);
            } else {
                return response()->json([
                    'redirecturl' => fomparameter()->pageopenwalkin,
                    'status' => 'success',
                    'message' => 'Walk-in submission successful.',
                ]);
            }
        } catch (Exception $e) {
            DB::rollBack();

            if (!empty($request->input('docid'))) {
                UpdateRepeat::emptygrpcontra($request->input('docid'), $request->bookingsno, $this->propertyid);
            }

            return response()->json([
                'redirecturl' => '',
                'status' => 'error',
                'message' => 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine(),
            ]);
        }
    }
}
