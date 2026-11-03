<?php

namespace App\Http\Controllers\Reservation;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Jobs\SyncInventoryJob;
use App\Models\Bookings;
use App\Models\BookinPlanDetail;
use App\Models\RoomInclusive;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\GrpBookinDetail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;
use App\Services\Insert\RemarkService;

class UpdateReservation extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
    protected $ncurdate;
    protected $datemanage;

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
            $this->compcode = companyvalue();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);
            return $next($request);
        });
    }
    # Warning: Abandon hope, all who enter here. 😱

    public function updatereservation(Request $request)
    {
        $permission = revokeopen(131111);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $advdepositcheckbox = $request->input('advdeposit');
        if ($advdepositcheckbox == 'on') {
            $advdeposit = 'Y';
        } else {
            $advdeposit = 'N';
        }
        $docid = $request->input('docid');

        $oldRoomRows = GrpBookinDetail::where('Property_ID', $this->propertyid)
            ->where('BookingDocid', $docid)
            ->where('Cancel', 'N')
            ->get([
                'Sno',
                'RoomCat',
                'ArrDate',
                'DepDate',
                'RoomNo',
            ]);

        $vtype = 'RES';

        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('country'))->first();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('cityname'))->first();
        if (!empty($request->input('issuingcity'))) {
            $issuingcityname = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('issuingcity'))->first();
            $issuingcountryname = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('issuingcountry'))->first();
        }
        $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $request->input('state'))->first();

        $dob = $request->input('birthDate');
        $age = Carbon::parse($dob)->age;

        $profilepicture = $request->input('profileimagehidden');
        $identitypicture = $request->input('identityimagehidden');

        if (!empty($request->file('profileimage'))) {
            $profilepic = $request->file('profileimage');
            $profilepicture = $request->input('guestmobile') . $request->input('guestname') . 'PR' . $this->propertyid . time() . '.' . $profilepic->getClientOriginalExtension();
            $folderPathp = 'public/walkin/reservationprofilepic';
            Storage::makeDirectory($folderPathp);
            Storage::putFileAs($folderPathp, $profilepic, $profilepicture);
            if (file_exists($folderPathp . '/' . $request->input('profileimagehidden'))) {
                unlink($folderPathp . '/' . $request->input('profileimagehidden'));
            }
        }

        if (!empty($request->file('identityimage'))) {
            $identitypic = $request->file('identityimage');
            $identitypicture = $request->input('guestmobile') . $request->input('guestname') . 'PR' . $this->propertyid . time() . '.' . $identitypic->getClientOriginalExtension();
            $folderpathi = 'public/walkin/reservationidentitypic';
            Storage::makeDirectory($folderpathi);
            Storage::putFileAs($folderpathi, $identitypic, $identitypicture);
            if (file_exists($folderpathi . '/' . $request->input('identityimagehidden'))) {
                unlink($folderpathi . '/' . $request->input('identityimagehidden'));
            }
        }

        if ($request->input('complimentry') == 'on') {
            $complimentry = 'Y';
        } else {
            $complimentry = 'N';
        }

        $prefixes = array('cat_code', 'planedit', 'planmaster', 'roomcount', 'roommast', 'adult', 'child', 'rate', 'tax_inc');

        $maxsno1 = DB::table('grpbookingdetails')->where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->max('Sno');

        $count = 0;
        $p = $count;
        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'cat_code') === 0) {
                $count++;
            }
        }
        $sns = $request->input('sns');

        if (!empty($sns) && is_string($sns)) {
            $sns = explode(',', $sns);
            DB::table('grpbookingdetails')->where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->whereIn('Sno', $sns)->delete();
            $fetchedgrp = GrpBookinDetail::where('Property_ID', $this->propertyid)
                ->where('BookingDocid', $docid)
                ->orderBy('RoomNo', 'ASC')
                ->orderBy('Plan_Code', 'ASC')
                ->orderBy('id', 'ASC')
                ->get();

            $counter = 1;

            // First assign temporary unique Sno values.
            foreach ($fetchedgrp as $grp) {
                $grp->update(['Sno' => $grp->Sno + 10000]);
            }

            // Then assign final sequential Sno values.
            foreach ($fetchedgrp as $grp) {
                $grp->update(['Sno' => $counter]);
                $counter++;
            }
        }

        // echo $maxsno1;
        // var_dump($sns);
        // exit;

        $olddbrow = Bookings::where('Property_ID', $this->propertyid)->where('DocId', $docid)->first();

        $snorev = 1;
        RoomInclusive::where('propertyid', $this->propertyid)->where('docid', $docid)
            ->where('vtype', $vtype)
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
                $fieldnamecharge = $revCodeKey . 'chargepost';
                $chargepost = $normalizedInputs[$fieldnamecharge] ?? null;
                $rinclusive = new RoomInclusive();
                $rinclusive->propertyid = $this->propertyid;
                $rinclusive->docid = $docid;
                $rinclusive->vtype = $vtype;
                $rinclusive->vdate = ncurdate();
                $rinclusive->vprefix = $olddbrow->Vprefix;
                $rinclusive->bookno = $olddbrow->BookNo;
                $rinclusive->sno = $snorev++;
                $rinclusive->rev_code = $row->rev_code;
                $rinclusive->amount = $fieldvalue;
                $rinclusive->chargepost = $chargepost ?? 'Daily';
                $rinclusive->u_name = Auth::user()->u_name;
                $rinclusive->created_at = $this->currenttime;
                $rinclusive->save();
            }
        }

        // return 'sagar';

        BookinPlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->delete();

        if ($maxsno1 == $count) {
            for ($i = 1; $i <= $count; $i++) {
                $data = [];
                $isEmptyRow = true;
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $i))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                foreach ($prefixes as $prefix) {
                    $value = $request->input($prefix . $i);
                    $grpbookingdetails = [
                        'GuestName' => $request->input('name'),
                        'RoomCat' => $request->input('cat_code' . $i),
                        'RoomNo' => $request->input('roommast' . $i),
                        'RateCode' => 2,
                        'NoDays' => $request->input('stay_days' . $i),
                        'DepDate' => $request->input('checkoutdate' . $i),
                        'DepTime' => $request->input('checkouttime' . $i),
                        'RoomTaxStru' => $rtaxstru,
                        'Tarrif' => $request->input('rate' . $i),
                        'ArrDate' => $request->input('arrivaldate' . $i),
                        'ArrTime' => $request->input('arrivaltime' . $i),
                        'Adults' => $request->input('adult' . $i),
                        'Childs' => $request->input('child' . $i),
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'U_AE' => 'e',
                        'Plan_Code' => $request->input('planmaster' . $i) ?? '',
                        'IncTax' => $request->input('tax_inc' . $i) ?? 'Y',
                        'ContraDocId' => '',
                        'ContraSno' => '',
                    ];

                    $plandetails = [
                        'propertyid' => $this->propertyid,
                        'foliono' => $request->input('folioNo'),
                        'docid' => $docid,
                        'sno' => 1,
                        'sno1' => $i,
                        'roomno' => $request->input('roommast' . $i) ?? '0',
                        'room_rate_before_tax' => $request->input('roomrate' . $i) ?? '0',
                        'total_rate' => $request->input('plansumrate' . $i),
                        'pcode' => $request->input('planmaster' . $i),
                        'noofdays' => $request->input('stay_days' . $i),
                        'rev_code' => $request->input('rowsrev_code' . $i) ?? '',
                        'fixrate' => $request->input('rowdplanfixrate' . $i),
                        'planper' => $request->input('rowdplan_per' . $i),
                        'amount' => $request->input('rowdamount' . $i),
                        'netplanamt' => $request->input('plankaamount' . $i),
                        'taxinc' => $request->input('taxincplanroomrate' . $i),
                        'taxstru' => $request->input('rowstax_stru' . $i),
                        'created_at' => $this->currenttime,
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (!empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (!$isEmptyRow) {
                    DB::table('grpbookingdetails')->where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->where('Sno', $i)->update($grpbookingdetails);
                    if ($request->input('planedit' . $i) == 'Y') {
                        BookinPlanDetail::insert($plandetails);
                    }
                }
            }
        } elseif ($maxsno1 < $count) {
            // return $count;
            // return 'coming';
            // return $request->input('roommast2');

            for ($j = 1; $j <= $count; $j++) {
                $datas = [];
                $isEmptyRow2 = true;
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $j))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');

                foreach ($prefixes as $prefix) {
                    $value = $request->input($prefix . $j);

                    $grpbookingdetails2 = [
                        'GuestName' => $request->input('name'),
                        'RoomCat' => $request->input('cat_code' . $j),
                        'RoomNo' => $request->input('roommast' . $j),
                        'RateCode' => 2,
                        'NoDays' => $request->input('stay_days' . $j),
                        'DepDate' => $request->input('checkoutdate' . $j),
                        'DepTime' => $request->input('checkouttime' . $j),
                        'RoomTaxStru' => $rtaxstru,
                        'Tarrif' => $request->input('rate' . $j),
                        'ArrDate' => $request->input('arrivaldate' . $j),
                        'ArrTime' => $request->input('arrivaltime' . $j),
                        'Adults' => $request->input('adult' . $j),
                        'Childs' => $request->input('child' . $j),
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'U_AE' => 'e',
                        'Plan_Code' => $request->input('planmaster' . $j) ?? '',
                        'IncTax' => $request->input('tax_inc' . $j) ?? 'Y',
                        'ContraDocId' => '',
                        'ContraSno' => '',
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
                        'noofdays' => $request->input('stay_days' . $j),
                        'rev_code' => $request->input('rowsrev_code' . $j),
                        'fixrate' => $request->input('rowdplanfixrate' . $j),
                        'planper' => $request->input('rowdplan_per' . $j),
                        'amount' => $request->input('rowdamount' . $j),
                        'netplanamt' => $request->input('plankaamount' . $j),
                        'taxinc' => $request->input('taxincplanroomrate' . $j),
                        'taxstru' => $request->input('rowstax_stru' . $j),
                        'created_at' => $this->currenttime,
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (!empty($value)) {
                        $datas[$prefix] = $value;
                        $isEmptyRow2 = false;
                    }
                }

                if (!$isEmptyRow2) {
                    DB::table('grpbookingdetails')->where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->where('Sno', $j)->update($grpbookingdetails2);
                    if ($request->input('planedit' . $j) == 'Y') {
                        BookinPlanDetail::insert($plandetails);
                    }
                }
            }

            $sno1 = $maxsno1 + 1;
            $fixcount = $count - $maxsno1;

            // return $fixcount;
            for ($i = 1; $i <= $fixcount; $i++) {
                $rowIndex = $maxsno1 + $i;
                $data = [];
                $isEmptyRow = true;
                // This code is like a delicate souffl: touch it too much, and it collapses.
                foreach ($prefixes as $prefix) {
                    $value = $request->input($prefix . $rowIndex);

                    $grpbookingdetails = [
                        'Property_ID' => $this->propertyid,
                        'BookingDocid' => $docid,
                        'Sno' => $sno1,
                        'RoomDet' => '1',
                        'Cancel' => 'N',
                        'Bookno' => $request->input('folioNo'),
                        'Guestprof' => $request->input('guestprof'),
                        'GuestName' => $request->input('name'),
                        'RoomCat' => $request->input('cat_code' . $rowIndex),
                        'RoomNo' => $request->input('roommast' . $rowIndex),
                        'RateCode' => 2,
                        'NoDays' => $request->input('stay_days' . $rowIndex),
                        'DepDate' => $request->input('checkoutdate' . $rowIndex),
                        'DepTime' => $request->input('checkouttime' . $rowIndex),
                        'RoomTaxStru' => $rtaxstru,
                        'Tarrif' => $request->input('rate' . $rowIndex),
                        'ArrDate' => $request->input('arrivaldate' . $rowIndex),
                        'ArrTime' => $request->input('arrivaltime' . $rowIndex),
                        'Adults' => $request->input('adult' . $rowIndex),
                        'Childs' => $request->input('child' . $rowIndex),
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'U_AE' => 'a',
                        'Plan_Code' => $request->input('planmaster' . $rowIndex) ?? '',
                        'IncTax' => $request->input('tax_inc' . $rowIndex) ?? 'Y',
                        'ContraDocId' => '',
                        'ContraSno' => '',
                    ];

                    $plandetails = [
                        'propertyid' => $this->propertyid,
                        'foliono' => $request->input('folioNo'),
                        'docid' => $docid,
                        'sno' => 1,
                        'sno1' => $rowIndex,
                        'roomno' => $request->input('roommast' . $rowIndex),
                        'room_rate_before_tax' => $request->input('roomrate' . $rowIndex),
                        'total_rate' => $request->input('plansumrate' . $rowIndex),
                        'pcode' => $request->input('planmaster' . $rowIndex),
                        'noofdays' => $request->input('stay_days' . $rowIndex),
                        'rev_code' => $request->input('rowsrev_code' . $rowIndex),
                        'fixrate' => $request->input('rowdplanfixrate' . $rowIndex),
                        'planper' => $request->input('rowdplan_per' . $rowIndex),
                        'amount' => $request->input('rowdamount' . $rowIndex),
                        'netplanamt' => $request->input('plankaamount' . $rowIndex),
                        'taxinc' => $request->input('taxincplanroomrate' . $rowIndex),
                        'taxstru' => $request->input('rowstax_stru' . $rowIndex),
                        'created_at' => $this->currenttime,
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (!empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (!$isEmptyRow) {
                    DB::table('grpbookingdetails')->insert($grpbookingdetails);
                    if ($request->input('planedit' . $rowIndex) == 'Y') {
                        BookinPlanDetail::insert($plandetails);
                    }
                }
                $sno1++;
            }
        } elseif ($maxsno1 > $count) {

            for ($j = 1; $j <= $count; $j++) {
                $datas = [];
                $isEmptyRow2 = true;
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $j))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                foreach ($prefixes as $prefix) {
                    $value = $request->input($prefix . $j);

                    $grpbookingdetails2 = [
                        'GuestName' => $request->input('name'),
                        'RoomCat' => $request->input('cat_code' . $j),
                        'RoomNo' => $request->input('roommast' . $j) ?? '',
                        'RateCode' => 2,
                        'NoDays' => $request->input('stay_days' . $j),
                        'DepDate' => $request->input('checkoutdate' . $j),
                        'DepTime' => $request->input('checkouttime' . $j),
                        'RoomTaxStru' => $rtaxstru,
                        'Tarrif' => $request->input('rate' . $j),
                        'ArrDate' => $request->input('arrivaldate' . $j),
                        'ArrTime' => $request->input('arrivaltime' . $j),
                        'Adults' => $request->input('adult' . $j),
                        'Childs' => $request->input('child' . $j),
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'U_AE' => 'e',
                        'Plan_Code' => $request->input('planmaster' . $j) ?? '',
                        'IncTax' => $request->input('tax_inc' . $j) ?? 'Y',
                        'ContraDocId' => '',
                        'ContraSno' => '',
                    ];

                    $plandetailsb = [
                        'propertyid' => $this->propertyid,
                        'foliono' => $request->input('folioNo'),
                        'docid' => $docid,
                        'sno' => 1,
                        'sno1' => $j,
                        'roomno' => $request->input('roommast' . $j) ?? '',
                        'room_rate_before_tax' => $request->input('roomrate' . $j),
                        'total_rate' => $request->input('plansumrate' . $j),
                        'pcode' => $request->input('planmaster' . $j),
                        'noofdays' => $request->input('stay_days' . $j),
                        'rev_code' => $request->input('rowsrev_code' . $j),
                        'fixrate' => $request->input('rowdplanfixrate' . $j),
                        'planper' => $request->input('rowdplan_per' . $j),
                        'amount' => $request->input('rowdamount' . $j),
                        'netplanamt' => $request->input('plankaamount' . $j),
                        'taxinc' => $request->input('taxincplanroomrate' . $j),
                        'taxstru' => $request->input('rowstax_stru' . $j),
                        'created_at' => $this->currenttime,
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (!empty($value)) {
                        $datas[$prefix] = $value;
                        $isEmptyRow2 = false;
                    }
                }

                if (!$isEmptyRow2) {
                    // echo $j . '-' . $request->input('planedit' . $j) . '-' . $request->input('cat_code' . $j) . '-' . $this->currenttime . '</br>';
                    DB::table('grpbookingdetails')->where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->where('Sno', $j)->update($grpbookingdetails2);
                    if ($request->input('planedit' . $j) == 'Y') {
                        BookinPlanDetail::insert($plandetailsb);
                    }
                }
            }

            $sno1 = $maxsno1 + 1;
            $fixcount = $count - $maxsno1;
            for ($i = 1; $i <= $fixcount; $i++) {
                $data = [];
                $isEmptyRow = true;
                // This code is like a delicate souffl: touch it too much, and it collapses.
                foreach ($prefixes as $prefix) {
                    $value = $request->input($prefix . $i);

                    $grpbookingdetails = [
                        'GuestName' => $request->input('name'),
                        'RoomCat' => $request->input('cat_code' . $i),
                        'RoomNo' => $request->input('roommast' . $i),
                        'RateCode' => 2,
                        'NoDays' => $request->input('stay_days' . $i),
                        'DepDate' => $request->input('checkoutdate' . $i),
                        'DepTime' => $request->input('checkouttime' . $i),
                        'RoomTaxStru' => $rtaxstru,
                        'Tarrif' => $request->input('rate' . $i),
                        'ArrDate' => $request->input('arrivaldate' . $i),
                        'ArrTime' => $request->input('arrivaltime' . $i),
                        'Adults' => $request->input('adult' . $i),
                        'Childs' => $request->input('child' . $i),
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'U_AE' => 'e',
                        'Plan_Code' => $request->input('planmaster' . $i) ?? '',
                        'IncTax' => $request->input('tax_inc' . $i) ?? 'Y',
                        'ContraDocId' => '',
                        'ContraSno' => '',
                    ];
                    if (!empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (!$isEmptyRow) {
                    DB::table('grpbookingdetails')->insert($grpbookingdetails);
                }
                $sno1++;
            }
        }

        $incount = GrpBookinDetail::where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->count();

        $bookingdata = [
            'GuestName' => $request->input('name') ?? '',
            'Vtype' => $vtype,
            // 'vdate' => $ncurdate,
            'Remarks' => $request->input('remarkmain') ?? '',
            'pickupdrop' => $request->pickupdrop ?? '',
            'advdeposit' => $advdeposit,
            'vehiclenum' => $request->input('vehiclenum') ?? '',
            'TravelAgency' => $request->input('travel_agent') ?? '',
            'purpofvisit' => $request->input('purposeofvisit') ?? '',
            'BussSource' => $request->input('bsource') ?? '',
            'MarketSeg' => $request->input('booking_source') ?? '',
            'RRServiceChrg' => '',
            'BookedBy' => $request->input('booked_by') ?? '',
            'ResStatus' => $request->input('reservation_status') ?? '',
            'ResMode' => '',
            'TravelMode' => $request->input('travelmode') ?? '',
            'CancelDate' => null,
            'Cancel' => 'N',
            'Company' => $request->input('company') ?? '',
            'ArrFrom' => $request->input('arrfrom') ?? '',
            'Destination' => $request->input('destination') ?? '',
            'updated_at' => $this->currenttime,
            'U_Name' => Auth::user()->u_name,
            'U_AE' => 'e',
            'NoofRooms' => $incount,
            'Authorization' => '',
            'Verified' => '',
            'CancelUName' => '',
            'MobNo' => $request->input('mobile') ?? '',
            'Email' => $request->input('email') ?? '',
            'RRTaxInc' => $request->input('tax_inc1') ?? '',
            'RDisc' => $request->input('rodisc') ?? '0',
            'RSDisc' => $request->input('rsdisc') ?? '0',
            'AdvDueDate' => null,
            'RefCode' => '',
            'RefBookNo' => $request->input('ref_booking_id') ?? ''
        ];

        if (!empty($request->input('remarkmain'))) {
            RemarkService::update([
                'docid' => $docid,
                'sno' => 1,
                'description' => $request->input('remarkmain'),
            ]);
        }

        $guestproft = [
            'propertyid' => $this->propertyid,
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
            'complimentry' => $complimentry,
            'name' => $request->input('name'),
            'state_code' => $request->input('state'),
            'country_code' => $request->input('country'),
            'add1' => $request->input('address1'),
            'add2' => $request->input('address2'),
            'city' => $request->input('cityname'),
            'type' => $countrydata->Type,
            'mobile_no' => $request->input('mobile'),
            'email_id' => $request->input('email'),
            'bill_to' => $request->input('bill_to'),
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

        DB::table('booking')->where('Property_ID', $this->propertyid)->where('DocId', $docid)->update($bookingdata);
        DB::table('guestprof')->where('propertyid', $this->propertyid)->where('docid', $docid)->update($guestproft);

        $newRoomRows = GrpBookinDetail::where('Property_ID', $this->propertyid)
            ->where('BookingDocid', $docid)
            ->where('Cancel', 'N')
            ->get([
                'Sno',
                'RoomCat',
                'ArrDate',
                'DepDate',
                'RoomNo',
            ]);

        if (channelparameter()->checkyn == 'Y') {
            $oldRoomData = $oldRoomRows
                ->map(fn($room) => [
                    'Sno'     => $room->Sno,
                    'RoomCat' => $room->RoomCat,
                    'ArrDate' => $room->ArrDate,
                    'DepDate' => $room->DepDate,
                    'RoomNo'  => $room->RoomNo,
                ])
                ->sortBy('Sno')
                ->values()
                ->toArray();

            $newRoomData = $newRoomRows
                ->map(fn($room) => [
                    'Sno'     => $room->Sno,
                    'RoomCat' => $room->RoomCat,
                    'ArrDate' => $room->ArrDate,
                    'DepDate' => $room->DepDate,
                    'RoomNo'  => $room->RoomNo,
                ])
                ->sortBy('Sno')
                ->values()
                ->toArray();

            // Log::info('oldroomdata: ' . json_encode($oldRoomData));
            // Log::info('newroomdata: ' . json_encode($newRoomData));

            if ($oldRoomData !== $newRoomData) {
                $oldRoomsBySno = $oldRoomRows->keyBy('Sno');
                $newRoomsBySno = $newRoomRows->keyBy('Sno');

                foreach ($oldRoomsBySno as $sno => $oldRoom) {
                    $newRoom = $newRoomsBySno->get($sno);

                    // Room removed: inventory must be refreshed for its old category and dates.
                    if (!$newRoom) {
                        $oldCategory = $oldRoom->RoomCat;
                        $oldArrDate = $oldRoom->ArrDate;
                        $oldDepDate = $oldRoom->DepDate;

                        SyncInventoryJob::dispatch(
                            $oldCategory,
                            $oldCategory,
                            $oldArrDate,
                            $oldArrDate,
                            $oldDepDate,
                            $oldDepDate,
                            $this->propertyid,
                            Auth::user()->u_name,
                            true
                        );

                        continue;
                    }

                    $categoryChanged = $oldRoom->RoomCat != $newRoom->RoomCat;
                    $arrivalChanged = $oldRoom->ArrDate != $newRoom->ArrDate;
                    $departureChanged = $oldRoom->DepDate != $newRoom->DepDate;

                    if ($categoryChanged || $arrivalChanged || $departureChanged) {
                        SyncInventoryJob::dispatch(
                            $oldRoom->RoomCat,
                            $newRoom->RoomCat,
                            $oldRoom->ArrDate,
                            $newRoom->ArrDate,
                            $oldRoom->DepDate,
                            $newRoom->DepDate,
                            $this->propertyid,
                            Auth::user()->u_name,
                            true
                        );
                    }
                }

                // Newly added rooms
                foreach ($newRoomsBySno as $sno => $newRoom) {
                    if (!$oldRoomsBySno->has($sno)) {
                        SyncInventoryJob::dispatch(
                            $newRoom->RoomCat,
                            $newRoom->RoomCat,
                            $newRoom->ArrDate,
                            $newRoom->ArrDate,
                            $newRoom->DepDate,
                            $newRoom->DepDate,
                            $this->propertyid,
                            Auth::user()->u_name,
                            true
                        );
                    }
                }
            }
        }

        if ($advdepositcheckbox == 'on') {
            $coded = base64_encode($docid);
            return response()->json([
                'redirecturl' => 'advancedeposit?docid=' . $coded,
                'status' => 'success',
                'message' => 'Reservation Updated successfully!',
            ]);
        } elseif ($request->page_source) {
            return response()->json([
                'redirecturl' => $request->page_source,
                'status' => 'success',
                'message' => 'Reservation Updated successfully!',
            ]);
        } {
            return response()->json([
                'redirecturl' => 'reservationlist',
                'status' => 'success',
                'message' => 'Reservation Updated successfully!',
            ]);
        }
    }
}
