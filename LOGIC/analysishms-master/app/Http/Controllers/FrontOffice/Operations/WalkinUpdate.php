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
use App\Models\RoomInclusiveLog;
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

class WalkinUpdate extends Controller
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

    public function updatewalkin(Request $request)
    {
        $validate = $request->validate([
            'name' => 'required',
            'cityname' => 'required',
            'checkindate' => 'required',
            'checkoutdate' => 'required',
            'checkintime' => 'required',
            'checkouttime' => 'required',
        ]);

        $docid = $request->input('docid');
        $ncurdate = ncurdate();
        $vtype = 'CHK';

        $oldRoomRows = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->whereNull('type')
            ->orderBy('sno1')
            ->get([
                'id',
                'sno1',
                'roomcat',
                'chkindate',
                'depdate',
                'roomno',
            ]);

        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $ncurdate)
            ->whereDate('date_to', '>=', $ncurdate)
            ->first();
        $vprefixyr = $chkvpf->prefix;

        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('country'))->first();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('cityname'))->first();
        if (! empty($request->input('issuingcity'))) {
            $issuingcityname = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('issuingcity'))->first();
            $issuingcountryname = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('issuingcountry'))->first();
        }
        $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $request->input('state'))->first();

        $dob = $request->input('birthDate');
        $age = Carbon::parse($dob)->age;

        $profilepicture = $request->input('profileimagehidden');

        if ($request->hasFile('profileimage')) {

            $profilepic = $request->file('profileimage');

            $oldImage = $request->input('profileimagehidden');

            $profilepicture = $request->input('guestmobile')
                . $request->input('guestname')
                . 'PR'
                . $this->propertyid
                . time()
                . '.'
                . $profilepic->getClientOriginalExtension();

            $folderPathp = 'public/walkin/profileimage';

            Storage::makeDirectory($folderPathp);

            if (! empty($oldImage) && Storage::exists($folderPathp . '/' . $oldImage)) {
                Storage::delete($folderPathp . '/' . $oldImage);
            }

            Storage::putFileAs($folderPathp, $profilepic, $profilepicture);
        }

        $identitypicture = $request->input('identityimagehidden');

        if ($request->hasFile('identityimage')) {

            $identitypic = $request->file('identityimage');

            $oldIdentityImage = $request->input('identityimagehidden');

            $identitypicture = $request->input('guestmobile')
                . $request->input('guestname')
                . 'PR'
                . $this->propertyid
                . time()
                . '.'
                . $identitypic->getClientOriginalExtension();

            $folderpathi = 'public/walkin/identityimage';

            Storage::makeDirectory($folderpathi);

            if (! empty($oldIdentityImage) && Storage::exists($folderpathi . '/' . $oldIdentityImage)) {
                Storage::delete($folderpathi . '/' . $oldIdentityImage);
            }

            Storage::putFileAs($folderpathi, $identitypic, $identitypicture);
        }

        $olddbrow = Guestfolio::where('propertyid', $this->propertyid)->where('docid', $docid)->first();

        $snorev = 1;
        $normalizedInputs = [];
        foreach ($request->all() as $key => $value) {
            $normalizedInputs[preg_replace('/[^A-Za-z0-9_]/', '_', $key)] = $value;
        }
        foreach (revmastroominclusive() as $row) {
            $revCodeKey = preg_replace('/[^A-Za-z0-9_]/', '_', $row->rev_code);
            $amountKey = $revCodeKey . 'amount';
            $amount = $normalizedInputs[$amountKey] ?? null;

            if ($amount !== null && $amount !== '') {
                $old = RoomInclusive::where('propertyid', $this->propertyid)
                    ->where('contradocid', $docid)
                    ->first();

                if (! is_null($old)) {
                    RoomInclusiveLog::create([
                        'propertyid' => $old->propertyid,
                        'docid' => $old->docid,
                        'vtype' => $old->vtype,
                        'vdate' => $old->vdate,
                        'vprefix' => $old->vprefix,
                        'bookno' => $old->bookno,
                        'contradocid' => $old->contradocid,
                        'sno' => $old->sno,
                        'rev_code' => $row->rev_code,
                        'amount' => $old->amount,
                        'chargepost' => $old->chargepost,
                        'u_name' => Auth::user()->u_name,
                        'created_at' => now(),
                    ]);

                    $logrincl = RoomInclusiveLog::where('propertyid', $this->propertyid)
                        ->where('contradocid', $docid)
                        ->where('rev_code', $row->rev_code)
                        ->first();
                }

                RoomInclusive::where('propertyid', $this->propertyid)
                    ->where('contradocid', $docid)
                    ->where('rev_code', $row->rev_code)
                    ->delete();

                $chargepostKey = $revCodeKey . 'chargepost';
                $chargepost = $normalizedInputs[$chargepostKey] ?? null;

                RoomInclusive::create([
                    'propertyid' => $this->propertyid,
                    'docid' => $logrincl->docid ?? $docid,
                    'vtype' => $logrincl->vtype ?? $olddbrow->vtype,
                    'vdate' => $logrincl->vdate ?? $olddbrow->vdate,
                    'vprefix' => $logrincl->vprefix ?? $olddbrow->vprefix,
                    'bookno' => $logrincl->bookno ?? $olddbrow->folio_no,
                    'contradocid' => $logrincl->contradocid ?? $docid,
                    'sno' => $snorev++,
                    'rev_code' => $row->rev_code,
                    'amount' => $amount,
                    'chargepost' => $chargepost ?? 'Daily',
                    'u_name' => Auth::user()->u_name,
                    'created_at' => now(),
                ]);
            }
        }

        $roomrate = $request->input('rate1');

        if ($request->input('complimentry') == 'on') {
            $complimentry = 'Y';
            $roomrate = 0;
        } else {
            $complimentry = 'N';
        }

        $prefixes = ['cat_code', 'planedit', 'planmaster', 'roommast', 'adult', 'child', 'rate', 'tax_inc'];

        $maxsno1 = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $docid)->max('sno1');

        $count = 0;
        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'cat_code') === 0) {
                $count++;
            }
        }
        PlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->delete();

        $guestcodep = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->first();

        $roomoccfirst = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', 1)->first();
        // return $maxsno1 . '==' . $count;
        if ($maxsno1 === $count) {
            for ($i = 1; $i <= $count; $i++) {
                $data = [];
                $isEmptyRow = true;
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $i))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                $fetchtaxstru = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $rtaxstru)
                    ->get();
                $roomrate = round($request->input('rate' . $i));
                $roomrateoriginal = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $i)->value('originalamount');
                $rodisc = $request->input('rodisc');
                if (fomparameter()->postroomdiscseparately == 'N') {
                    if ($rodisc > 0 && $guestcodep->rodisc != $rodisc) {
                        $roomrate = round($roomrateoriginal - ($roomrateoriginal * $rodisc / 100));
                    }
                }

                foreach ($prefixes as $prefix) {
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
                            } elseif ($roomrate >= $limitstart && $comp_operator != 'Between') {
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
                            // $roundedAmt = round($calcedamttmp);
                            $roundedAmt = round($roomrate);

                            if (! is_null($limitend2) && $comp_operator2 === 'Between') {
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
                        $calcedamtreverse = number_format($calcedamtreversetmp, 2);
                        $calcedamt = number_format($calcedamttmp, 2);

                        if ($roomrate != round($calcedamtreversetmp)) {
                            DB::rollBack();

                            return response()->json([
                                'status' => 'error',
                                'message' => 'Invalid Room Tarrif',
                            ], 500);
                        }
                    } else {
                        $calcedamt = $roomrate;
                    }
                    $value = $request->input($prefix . $i);

                    $roomoccdata = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        // 'name' => $request->input('name'),
                        'vprefix' => $vprefixyr,
                        'roomcat' => $request->input('cat_code' . $i),
                        'roomtype' => 'RO',
                        'roomno' => $request->input('roommast' . $i),
                        'ratecode' => 2,
                        'depdate' => $request->input('checkoutdate'),
                        'deptime' => $request->input('checkouttime'),
                        'rrservicechrg' => '',
                        'chngdate' => $request->input('checkindate'),
                        'roomtaxstru' => $rtaxstru,
                        'rackrate' => $roomrate,
                        'roomrate' => str_replace(',', '', $calcedamt),
                        'originalamount' => $roomrateoriginal,
                        'chkindate' => $request->input('checkindate'),
                        'nodays' => $request->input('stay_days'),
                        'roomcount' => $request->input('rooms') ?? '1',
                        'chkintime' => $request->input('checkintime'),
                        'adult' => $request->input('adult' . $i),
                        'children' => $request->input('child' . $i),
                        'updated_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                        'plancode' => $request->input('planmaster' . $i),
                        'rodisc' => $request->input('rodisc'),
                        'rsdisc' => $request->input('rsdisc'),
                        'rrtaxinc' => $request->input('tax_inc' . $i) ?? 'Y',
                        'leaderyn' => $request->input('leader' . $i) == 'on' ? 'Y' : 'N',
                        'reasonrchange' => '',
                    ];

                    $plandetails = [
                        'propertyid' => $this->propertyid,
                        'foliono' => $request->input('folioNo'),
                        'docid' => $docid,
                        'sno' => 1,
                        'sno1' => $i,
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
                        'updated_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (! empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (! $isEmptyRow) {
                    DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $i)->update($roomoccdata);
                    if ($request->input('planedit' . $i) == 'Y') {
                        PlanDetail::insert($plandetails);
                    }
                }
            }
        } elseif ($maxsno1 < $count) {

            for ($j = 1; $j <= $count; $j++) {
                $datas = [];
                $isEmptyRow2 = true;
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $j))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                $fetchtaxstru = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $rtaxstru)
                    ->get();
                $roomrate = $request->input('rate' . $j);
                $roomrateoriginal = $roomrate;
                $rodisc = $request->input('rodisc');
                if (fomparameter()->postroomdiscseparately == 'N') {
                    if ($rodisc > 0 && $guestcodep->rodisc != $rodisc) {
                        $roomrate = round($roomrateoriginal - ($roomrateoriginal * $rodisc / 100));
                    }
                }
                foreach ($prefixes as $prefix) {
                    $ratenew = 0;
                    $ratenewreverse = 0;
                    $postamount = 0;
                    $pamount = $request->input('rowdamount' . $j);
                    $ptaxstru = TaxStructure::where('propertyid', $this->propertyid)->where('str_code', $request->input('rowstax_stru' . $j))->sum('rate');
                    if ($request->input('tax_inc' . $j) == 'Y') {
                        $postamount = ($pamount * 100) / ($ptaxstru + 100);
                        foreach ($fetchtaxstru as $taxstru) {
                            $limitstart = $taxstru->limits;
                            $limitend = $taxstru->limit1;
                            $rate = $taxstru->rate;
                            $comp_operator = $taxstru->comp_operator;
                            if ($roomrate >= $limitstart && $roomrate <= $limitend) {
                                $ratenew += $rate;
                                $fixedrate = $ratenew + 100;
                            } elseif ($roomrate >= $limitstart && $comp_operator != 'Between') {
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
                            // $roundedAmt = round($calcedamttmp);
                            $roundedAmt = round($roomrate);

                            if (! is_null($limitend2) && $comp_operator2 === 'Between') {
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
                        $calcedamtreverse = number_format($calcedamtreversetmp, 2);
                        $calcedamt = number_format($calcedamttmp, 2);

                        if ($roomrate != round($calcedamtreversetmp)) {
                            DB::rollBack();

                            return response()->json([
                                'status' => 'error',
                                'message' => 'Invalid Room Tarrif',
                            ], 500);
                        }
                    } else {
                        $calcedamt = $roomrate;
                    }
                    $value = $request->input($prefix . $j);

                    $roomoccdata2 = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        // 'name' => $request->input('name'),
                        'vprefix' => $vprefixyr,
                        'roomcat' => $request->input('cat_code' . $j),
                        'roomtype' => 'RO',
                        'roomno' => $request->input('roommast' . $j),
                        'ratecode' => 2,
                        'depdate' => $request->input('checkoutdate'),
                        'deptime' => $request->input('checkouttime'),
                        'rrservicechrg' => '',
                        'chngdate' => $request->input('checkindate'),
                        'roomtaxstru' => $rtaxstru,
                        'rackrate' => $roomrate,
                        'roomrate' => str_replace(',', '', $calcedamt),
                        'originalamount' => $roomrateoriginal,
                        'chkindate' => $request->input('checkindate'),
                        'nodays' => $request->input('stay_days'),
                        'roomcount' => $request->input('rooms') ?? '1',
                        'chkintime' => $request->input('checkintime'),
                        'adult' => $request->input('adult' . $j),
                        'children' => $request->input('child' . $j),
                        'updated_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                        'plancode' => $request->input('planmaster' . $j),
                        'rodisc' => $request->input('rodisc'),
                        'rsdisc' => $request->input('rsdisc'),
                        'rrtaxinc' => $request->input('tax_inc' . $j) ?? 'Y',
                        'leaderyn' => $request->input('leader' . $j) == 'on' ? 'Y' : 'N',
                        'reasonrchange' => '',
                    ];

                    $plandetails = [
                        'propertyid' => $this->propertyid,
                        'foliono' => $request->input('folioNo'),
                        'docid' => $docid,
                        'sno' => 1,
                        'sno1' => $j,
                        'roomno' => $request->input('roommast' . $j),
                        'room_rate_before_tax' => $request->input('roomrate' . $j),
                        'total_rate' => $request->input('plansumrate' . $j),
                        'pcode' => $request->input('planmaster' . $j),
                        'noofdays' => $request->input('stay_days'),
                        'rev_code' => $request->input('rowsrev_code' . $j),
                        'fixrate' => $request->input('rowdplanfixrate' . $j),
                        'planper' => $request->input('rowdplan_per' . $j),
                        'amount' => $postamount,
                        'netplanamt' => $request->input('plankaamount' . $j),
                        'taxinc' => $request->input('taxincplanroomrate' . $j),
                        'taxstru' => $request->input('rowstax_stru' . $j),
                        'created_at' => now(),
                        'updated_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (! empty($value)) {
                        $datas[$prefix] = $value;
                        $isEmptyRow2 = false;
                    }
                }

                if (! $isEmptyRow2) {
                    DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $j)->update($roomoccdata2);
                    if ($request->input('planedit' . $j) == 'Y') {
                        PlanDetail::insert($plandetails);
                    }
                }
            }

            $sno1 = $maxsno1 + 1;
            $fixcount = $count - $maxsno1;
            for ($i = 1; $i <= $fixcount; $i++) {
                $data = [];
                $isEmptyRow = true;
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $i))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                $fetchtaxstru = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $rtaxstru)
                    ->get();
                $roomrate = round($request->input('rate' . $i));
                $roomrateoriginal = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $i)->value('originalamount') ?? $roomrate;
                $rodisc = $request->input('rodisc');
                if (fomparameter()->postroomdiscseparately == 'N') {
                    if ($rodisc > 0 && $guestcodep->rodisc != $rodisc) {
                        $roomrate = round($roomrateoriginal - ($roomrateoriginal * $rodisc / 100));
                    }
                }
                // This code is like a delicate soufflé: touch it too much, and it collapses.
                foreach ($prefixes as $prefix) {
                    $ratenew = 0;
                    $ratenewreverse = 0;
                    $postamount = 0;
                    $pamount = $request->input('rowdamount' . $i);
                    $ptaxstru = TaxStructure::where('propertyid', $this->propertyid)->where('str_code', $request->input('rowstax_stru' . $i))->sum('rate');
                    if ($request->input('tax_inc' . $j) == 'Y') {
                        $postamount = ($pamount * 100) / ($ptaxstru + 100);
                        foreach ($fetchtaxstru as $taxstru) {
                            $limitstart = $taxstru->limits;
                            $limitend = $taxstru->limit1;
                            $rate = $taxstru->rate;
                            $comp_operator = $taxstru->comp_operator;
                            if ($roomrate >= $limitstart && $roomrate <= $limitend) {
                                $ratenew += $rate;
                                $fixedrate = $ratenew + 100;
                            } elseif ($roomrate >= $limitstart && $comp_operator != 'Between') {
                                $ratenew += $rate;
                                $fixedrate = $ratenew + 100;
                            }
                        }
                        $calcedamttmp = $roomrate * 100 / $fixedrate;
                        $calcedamt = number_format($calcedamttmp, 2);

                        $ratenewreverse = 0;
                        $ratenewreverse = 0;

                        foreach ($fetchtaxstru as $taxstrurow) {
                            $limitstart2 = floatval(trim($taxstrurow->limits));
                            $limitend2 = $taxstrurow->limit1 !== null ? floatval(trim($taxstrurow->limit1)) : null;
                            $rate2 = floatval($taxstrurow->rate);
                            $comp_operator2 = trim($taxstrurow->comp_operator);
                            // $roundedAmt = round($calcedamttmp);
                            $roundedAmt = round($roomrate);

                            if (! is_null($limitend2) && $comp_operator2 === 'Between') {
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
                        $calcedamtreverse = number_format($calcedamtreversetmp, 2);
                        $calcedamt = number_format($calcedamttmp, 2);

                        if ($roomrate != round($calcedamtreversetmp)) {
                            DB::rollBack();

                            return response()->json([
                                'status' => 'error',
                                'message' => 'Invalid Room Tarrif',
                            ], 500);
                        }
                    } else {
                        $calcedamt = $roomrate;
                    }
                    $value = $request->input($prefix . $i);

                    $roomoccdata = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'name' => $request->input('name'),
                        'sno' => 1,
                        'sno1' => $sno1,
                        'folioNo' => $request->input('folioNo'),
                        'vtype' => $vtype,
                        'vprefix' => $request->input('vprefix'),
                        'guestprof' => $request->input('guestprof'),
                        'roomcat' => $request->input('cat_code' . $sno1),
                        'roomtype' => 'RO',
                        'roomno' => $request->input('roommast' . $sno1),
                        'ratecode' => 2,
                        'depdate' => $request->input('checkoutdate'),
                        'deptime' => $request->input('checkouttime'),
                        'rrservicechrg' => '',
                        'chngdate' => $request->input('checkindate'),
                        'roomtaxstru' => $rtaxstru,
                        'rackrate' => $roomrate,
                        'originalamount' => $roomrateoriginal,
                        'roomrate' => str_replace(',', '', $calcedamt),
                        'chkindate' => $request->input('checkindate'),
                        'nodays' => $request->input('stay_days'),
                        'roomcount' => $request->input('rooms') ?? '1',
                        'chkintime' => $request->input('checkintime'),
                        'adult' => $request->input('adult' . $sno1),
                        'children' => $request->input('child' . $sno1),
                        'created_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                        'plancode' => $request->input('planmaster' . $sno1),
                        'rodisc' => $request->input('rodisc'),
                        'rsdisc' => $request->input('rsdisc'),
                        'rrtaxinc' => $request->input('tax_inc' . $sno1) ?? 'Y',
                        'leaderyn' => $request->input('leader' . $sno1) == 'on' ? 'Y' : 'N',
                        'reasonrchange' => '',
                    ];

                    $plandetails = [
                        'propertyid' => $this->propertyid,
                        'foliono' => $request->input('folioNo'),
                        'docid' => $docid,
                        'sno' => 1,
                        'sno1' => $i,
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
                        'updated_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (! empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (! $isEmptyRow) {
                    DB::table('roomocc')->insert($roomoccdata);
                    if ($request->input('planedit' . $i) == 'Y') {
                        PlanDetail::insert($plandetails);
                    }
                }
                $sno1++;
            }
        } elseif ($maxsno1 > $count) {
            DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', '>', $count)->delete();
            PlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', '>', $count)->delete();

            for ($j = 1; $j <= $count; $j++) {
                $datas = [];
                $isEmptyRow2 = true;
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $j))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                $fetchtaxstru = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $rtaxstru)
                    ->get();
                $roomrate = round($request->input('rate' . $j));
                $roomrateoriginal = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $j)->value('originalamount') ?? $roomrate;
                $rodisc = $request->input('rodisc');
                if (fomparameter()->postroomdiscseparately == 'N') {
                    if ($rodisc > 0 && $guestcodep->rodisc != $rodisc) {
                        $roomrate = round($roomrateoriginal - ($roomrateoriginal * $rodisc / 100));
                    }
                }

                foreach ($prefixes as $prefix) {
                    $ratenew = 0;
                    $ratenewreverse = 0;
                    $postamount = 0;
                    $pamount = $request->input('rowdamount' . $j);
                    $ptaxstru = TaxStructure::where('propertyid', $this->propertyid)->where('str_code', $request->input('rowstax_stru' . $j))->sum('rate');

                    if ($request->input('tax_inc' . $j) == 'Y') {
                        $postamount = ($pamount * 100) / ($ptaxstru + 100);
                        foreach ($fetchtaxstru as $taxstru) {
                            $limitstart = $taxstru->limits;
                            $limitend = $taxstru->limit1;
                            $rate = $taxstru->rate;
                            $comp_operator = $taxstru->comp_operator;
                            if ($roomrate >= $limitstart && $roomrate <= $limitend) {
                                $ratenew += $rate;
                                $fixedrate = $ratenew + 100;
                            } elseif ($roomrate >= $limitstart && $comp_operator != 'Between') {
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
                            // $roundedAmt = round($calcedamttmp);
                            $roundedAmt = round($roomrate);

                            if (! is_null($limitend2) && $comp_operator2 === 'Between') {
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
                        $calcedamtreverse = number_format($calcedamtreversetmp, 2);
                        $calcedamt = number_format($calcedamttmp, 2);

                        if ($roomrate != round($calcedamtreversetmp)) {
                            DB::rollBack();

                            return response()->json([
                                'status' => 'error',
                                'message' => 'Invalid Room Tarrif',
                            ], 500);
                        }
                    } else {
                        $calcedamt = $roomrate;
                    }
                    $value = $request->input($prefix . $j);

                    $roomoccdata2 = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        // 'name' => $request->input('name'),
                        'vprefix' => $vprefixyr,
                        'roomcat' => $request->input('cat_code' . $j),
                        'roomtype' => 'RO',
                        'roomno' => $request->input('roommast' . $j),
                        'ratecode' => 2,
                        'depdate' => $request->input('checkoutdate'),
                        'deptime' => $request->input('checkouttime'),
                        'rrservicechrg' => '',
                        'chngdate' => $request->input('checkindate'),
                        'roomtaxstru' => $rtaxstru,
                        'rackrate' => $roomrate,
                        'originalamount' => $roomrateoriginal,
                        'roomrate' => str_replace(',', '', $calcedamt),
                        'chkindate' => $request->input('checkindate'),
                        'nodays' => $request->input('stay_days'),
                        'roomcount' => $request->input('rooms') ?? '1',
                        'chkintime' => $request->input('checkintime'),
                        'adult' => $request->input('adult' . $j),
                        'children' => $request->input('child' . $j),
                        'updated_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                        'plancode' => $request->input('planmaster' . $j),
                        'rodisc' => $request->input('rodisc'),
                        'rsdisc' => $request->input('rsdisc'),
                        'rrtaxinc' => $request->input('tax_inc' . $j) ?? 'Y',
                        'leaderyn' => $request->input('leader' . $j) == 'on' ? 'Y' : 'N',
                        'reasonrchange' => '',
                    ];

                    $plandetails = [
                        'propertyid' => $this->propertyid,
                        'foliono' => $request->input('folioNo'),
                        'docid' => $docid,
                        'sno' => 1,
                        'sno1' => $j,
                        'roomno' => $request->input('roommast' . $j),
                        'room_rate_before_tax' => $request->input('roomrate' . $j),
                        'total_rate' => $request->input('plansumrate' . $j),
                        'pcode' => $request->input('planmaster' . $j),
                        'noofdays' => $request->input('stay_days'),
                        'rev_code' => $request->input('rowsrev_code' . $j),
                        'fixrate' => $request->input('rowdplanfixrate' . $j),
                        'planper' => $request->input('rowdplan_per' . $j),
                        'amount' => $postamount,
                        'netplanamt' => $request->input('plankaamount' . $j),
                        'taxinc' => $request->input('taxincplanroomrate' . $j),
                        'taxstru' => $request->input('rowstax_stru' . $j),
                        'created_at' => now(),
                        'updated_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (! empty($value)) {
                        $datas[$prefix] = $value;
                        $isEmptyRow2 = false;
                    }
                }

                if (! $isEmptyRow2) {
                    DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $j)->update($roomoccdata2);
                    if ($request->input('planedit' . $j) == 'Y') {
                        PlanDetail::insert($plandetails);
                    }
                }
            }

            $sno1 = $maxsno1 + 1;
            $fixcount = $count - $maxsno1;
            for ($i = 1; $i <= $fixcount; $i++) {
                $data = [];
                $isEmptyRow = true;
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $i))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                $fetchtaxstru = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $rtaxstru)
                    ->get();
                $roomrate = round($request->input('rate' . $i));
                $roomrateoriginal = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $i)->value('originalamount') ?? $roomrate;
                $rodisc = $request->input('rodisc');
                if (fomparameter()->postroomdiscseparately == 'N') {
                    if ($rodisc > 0 && $guestcodep->rodisc != $rodisc) {
                        $roomrate = round($roomrateoriginal - ($roomrateoriginal * $rodisc / 100));
                    }
                }
                // This code is like a delicate soufflé: touch it too much, and it collapses.
                foreach ($prefixes as $prefix) {
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
                            } elseif ($roomrate >= $limitstart && $comp_operator != 'Between') {
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
                            // $roundedAmt = round($calcedamttmp);
                            $roundedAmt = round($roomrate);

                            if (! is_null($limitend2) && $comp_operator2 === 'Between') {
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
                        $calcedamtreverse = number_format($calcedamtreversetmp, 2);
                        $calcedamt = number_format($calcedamttmp, 2);

                        if ($roomrate != round($calcedamtreversetmp)) {
                            DB::rollBack();

                            return response()->json([
                                'status' => 'error',
                                'message' => 'Invalid Room Tarrif',
                            ], 500);
                        }
                    } else {
                        $calcedamt = $roomrate;
                    }
                    $value = $request->input($prefix . $i);

                    $roomoccdata = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'name' => $request->input('name'),
                        'sno' => 1,
                        'sno1' => $sno1,
                        'folioNo' => $request->input('folioNo'),
                        'vtype' => $vtype,
                        'vprefix' => $request->input('vprefix'),
                        'guestprof' => $request->input('guestprof'),
                        'roomcat' => $request->input('cat_code' . $sno1),
                        'roomtype' => 'RO',
                        'roomno' => $request->input('roommast' . $sno1),
                        'ratecode' => 2,
                        'depdate' => $request->input('checkoutdate'),
                        'deptime' => $request->input('checkouttime'),
                        'rrservicechrg' => '',
                        'chngdate' => $request->input('checkindate'),
                        'roomtaxstru' => null,
                        'rackrate' => $roomrate,
                        'originalamount' => $roomrateoriginal,
                        'roomrate' => str_replace(',', '', $calcedamt),
                        'chkindate' => $request->input('checkindate'),
                        'nodays' => $request->input('stay_days'),
                        'roomcount' => $request->input('rooms') ?? '1',
                        'chkintime' => $request->input('checkintime'),
                        'adult' => $request->input('adult' . $sno1),
                        'children' => $request->input('child' . $sno1),
                        'created_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                        'plancode' => $request->input('planmaster' . $sno1),
                        'rodisc' => $request->input('rodisc'),
                        'rsdisc' => $request->input('rsdisc'),
                        'rrtaxinc' => $request->input('tax_inc' . $sno1) ?? 'Y',
                        'leaderyn' => $request->input('leader' . $sno1) == 'on' ? 'Y' : 'N',
                        'reasonrchange' => '',
                    ];

                    $plandetails = [
                        'propertyid' => $this->propertyid,
                        'foliono' => $request->input('folioNo'),
                        'docid' => $docid,
                        'sno' => 1,
                        'sno1' => $i,
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
                        'updated_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (! empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (! $isEmptyRow) {
                    DB::table('roomocc')->insert($roomoccdata);
                    if ($request->input('planedit' . $i) == 'Y') {
                        PlanDetail::insert($plandetails);
                    }
                }
                $sno1++;
            }
        }

        $guestfolio = [
            'propertyid' => $this->propertyid,
            'updated_at' => now(),
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
            'add1' => $request->input('address1'),
            'add2' => $request->input('address2'),
            'booking_source' => $request->input('booking_source') ?? '',
            'travelagent' => $request->input('travel_agent'),
            'name' => $request->input('name'),
            'city' => $request->input('cityname'),
            'nodays' => $request->input('stay_days'),
            'roomcount' => $request->input('rooms') ?? '1',
            'vdate' => $request->input('checkindate'),
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
            'remarks' => $request->remarkmain ?? '',
            'pickupdrop' => $request->pickupdrop ?? '',
            'whatsappcheckout' => $request->input('whatsappcheckout') == 'on' ? 'Y' : 'N',
            'suppressrate' => $request->input('suppressrate') == 'on' ? 'Y' : 'N',
            'nochargepost' => $request->input('nochargepost') == 'on' ? 'Y' : 'N',
        ];

        $activemprof = GuestFolioProfDetail::where('propertyid', $this->propertyid)
            ->where('doc_id', $docid)
            ->value('mprof');

        $activegprof = GuestProf::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('guestcode', $activemprof)
            ->first();

        $guestproft = [
            'propertyid' => $this->propertyid,
            'updated_at' => now(),
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
            'complimentry' => $complimentry,
            'bill_to' => $request->input('billto'),
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
            'con_prefix' => $request->input('greetingsguest'),
            'dob' => $dob,
            'age' => $age,
            'pic_path' => $profilepicture,
            'id_proof' => $request->input('idType'),
            'idproof_no' => $request->input('idNumber'),
            'issuingcitycode' => $request->input('issuingcity') ?? null,
            'issuingcityname' => $issuingcityname->cityname ?? null,
            'issuingcountrycode' => $request->input('issuingcountry') ?? null,
            'issuingcountryname' => $issuingcountryname->name ?? null,
            'expiryDate' => $request->input('expiryDate'),
            'paymentMethod' => $request->input('paymentMethod'),
            'idpic_path' => $identitypicture,
            'father_name' => null,
            'fom' => 1,
            'pos' => 0,
        ];

        $guestfolioprofdetail = [
            'propertyid' => $this->propertyid,
            'updated_at' => now(),
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
        ];

        Guestfolio::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', 1)
            ->update($guestfolio);

        GuestProf::where('propertyid', $this->propertyid)
            ->where('guestcode', $activemprof)
            ->where('sno1', 1)
            ->update($guestproft);

        GuestFolioProfDetail::where('propertyid', $this->propertyid)
            ->where('doc_id', $docid)
            ->update($guestfolioprofdetail);

        $finpay = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($finpay) {
            $updata = [
                'msno1' => $finpay->sno1,
            ];
            Paycharge::where('folionodocid', $docid)->where('propertyid', $this->propertyid)->update($updata);
        }


        $newRoomRows = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->whereNull('type')
            ->orderBy('sno1')
            ->get([
                'id',
                'sno1',
                'roomcat',
                'chkindate',
                'depdate',
                'roomno',
            ]);

        if (channelparameter()->checkyn == 'Y') {

            $oldRoomsById = $oldRoomRows->keyBy('id');
            $newRoomsById = $newRoomRows->keyBy('id');

            $propertyId = (int) $this->propertyid;
            $u_name = Auth::user()->name ?? 'System';

            // Removed rooms
            foreach ($oldRoomsById as $id => $oldRoom) {
                if (!$newRoomsById->has($id)) {
                    SyncInventoryJob::dispatch(
                        $oldRoom->roomcat,
                        $oldRoom->roomcat,
                        $oldRoom->chkindate,
                        $oldRoom->chkindate,
                        $oldRoom->depdate,
                        $oldRoom->depdate,
                        $propertyId,
                        $u_name,
                        true
                    );
                }
            }

            // Added rooms and modified existing rooms
            foreach ($newRoomsById as $id => $newRoom) {
                if (!$oldRoomsById->has($id)) {
                    // New room added
                    SyncInventoryJob::dispatch(
                        $newRoom->roomcat,
                        $newRoom->roomcat,
                        $newRoom->chkindate,
                        $newRoom->chkindate,
                        $newRoom->depdate,
                        $newRoom->depdate,
                        $propertyId,
                        $u_name,
                        true
                    );

                    continue;
                }

                $oldRoom = $oldRoomsById->get($id);

                $categoryChanged = (string) $oldRoom->roomcat !== (string) $newRoom->roomcat;

                $arrivalChanged = (string) $oldRoom->chkindate !== (string) $newRoom->chkindate;

                $departureChanged = (string) $oldRoom->depdate !== (string) $newRoom->depdate;

                if ($categoryChanged || $arrivalChanged || $departureChanged) {
                    SyncInventoryJob::dispatch(
                        $oldRoom->roomcat,
                        $newRoom->roomcat,
                        $oldRoom->chkindate,
                        $newRoom->chkindate,
                        $oldRoom->depdate,
                        $newRoom->depdate,
                        $propertyId,
                        $u_name
                    );
                }
            }
        }

        return response()->json([
            'redirecturl' => 'roomstatus',
            'status' => 'success',
            'message' => 'Walkin Guest Updated successfully!',
        ]);
    }
}
