<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Models\Bookings;
use App\Models\ChannelEnviro;
use App\Models\EnviroGeneral;
use App\Models\ErrorLog;
use App\Models\GrpBookinDetail;
use App\Models\GuestProf;
use App\Models\PlanMast;
use App\Models\Revmast;
use App\Models\RoomCat;
use App\Models\ChannelPushes;
use App\Models\Companyreg;
use App\Models\EnviroFom;
use App\Models\Paycharge;
use App\Models\SubGroup;
use App\Models\VoucherPrefix;
use App\Services\TenantDatabase;
use DateTime;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ChannelPublic extends Controller
{

    protected $currenttime;

    public function __construct()
    {
        date_default_timezone_set('Asia/Kolkata');
        $this->currenttime = date('Y-m-d H:i:s');
    }

    public function eglobetohms(Request $request, $apiKey)
    {

        // return 'sagar';
        $acceptHeader = $request->header('Content-Type');
        $authorization = $request->header('Authorization');

        if (!$apiKey) {
            return response()->json(['error' => 'Api key is missing', 406]);
        }

        if (!$acceptHeader || $acceptHeader !== 'application/json') {
            return response()->json(['error' => 'Accept header must be application/json'], 406);
        }

        if (!str_starts_with($authorization, 'Bearer')) {
            return response()->json(['error' => 'Invalid Authorization header'], 406);
        }
        $requestData = $request->json()->all();


        if (empty($requestData)) {
            return response()->json(['error' => 'Body is Empty'], 500);
        }

        $eglobeCode = $requestData['ResGlobalInfo']['BasicPropertyInfo']['HotelCode'];

        $company = Companyreg::on('main')
            ->where('eglobepropcode', $eglobeCode)
            ->first();

        if (!$company) {
            return response()->json([
                'IsError' => true,
                'message' => 'Invalid HotelCode: ' . $eglobeCode
            ], 404);
        }

        DB::purge('tenant');
        TenantDatabase::connect((int) $company->propertyid);
        DB::setDefaultConnection('tenant');

        $channelenviro = ChannelEnviro::where('authorization', $authorization)->where('apikey', $apiKey)->first();
        if (is_null($channelenviro)) {
            return response()->json(['error' => 'Channel Enviro not found!'], 500);
        }

        try {
            DB::connection('tenant')->getPdo();
        } catch (Exception $e) {
            $error = 'Failed to connect to tenant database for property ' . $company->propertyid . ': ' . $e->getMessage();

            logData('Reservation Submit Error', $error, $company->propertyid, 'system', $e->getLine(), $e->getFile(), 'main');
            return response()->json([
                'IsError' => true,
                'message' => $error
            ], 500);
        }

        try {
            DB::beginTransaction();
            $channelpushes = [
                'propertyid' => $channelenviro->propertyid,
                'eglobepropertyid' => '1',
                'name' => $channelenviro->name,
                'url' => $channelenviro->url,
                'username' => $channelenviro->url,
                'password' => $channelenviro->password,
                'apikey' => $apiKey,
                'authorization' => $request->header('Authorization'),
                'providercode' => $channelenviro->providercode,
                'checkyn' => $channelenviro->checkyn,
                'postdata' => json_encode($requestData),
                'response' => 'Booked By Eglobe',
                'httpcode' => '200',
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
                'u_name' => 'Web'
            ];

            ChannelPushes::insert($channelpushes);
            DB::commit();
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json(['IsError' => true, 'message' => "Internal Server Error: " . $e->getMessage() . ' On Line: ' . $e->getLine()], 500);
        }

        $ptlength = strlen($channelenviro->propertyid);
        $vtype = 'RES';
        try {
            $resGuests = $requestData['ResGuests'];
            $resGlobalInfo = $requestData['ResGlobalInfo'];

            $mergedArray = ['ResGuests' => $resGuests, 'ResGlobalInfo' => $resGlobalInfo];

            $chkcancel = Bookings::where('Property_ID', $channelenviro->propertyid)
                ->where('RefBookNo', $mergedArray['ResGlobalInfo']['UniqueID']['ID'])
                ->first();

            if (!is_null($chkcancel)) {
                if ($chkcancel->ResStatus == 'Cancel' && $chkcancel->Cancel == 'Y') {
                    return response()->json([
                        'IsError' => false,
                        'message' => 'Already Cancelled for Id: ' . $mergedArray['ResGlobalInfo']['UniqueID']['ID']
                    ], 200);
                }

                if ($chkcancel->ResStatus == 'Confirm' && $chkcancel->Cancel == 'N' && $mergedArray['ResGlobalInfo']['ResStatus'] != 'Cancel') {
                    return response()->json([
                        'IsError' => false,
                        'message' => 'Booking Already Exists for Id: ' . $mergedArray['ResGlobalInfo']['UniqueID']['ID']
                    ], 200);
                }

                if ($chkcancel->ResStatus == 'Confirm' && $chkcancel->Cancel == 'N' && $mergedArray['ResGlobalInfo']['ResStatus'] == 'Cancel') {
                    $docidbook = $chkcancel->DocId;

                    $bookingup = [
                        'ResStatus' => $mergedArray['ResGlobalInfo']['ResStatus'],
                        'Cancel' => 'Y',
                        'CancelUName' => 'Web',
                        'CancelDate' => date('Y-m-d', strtotime($this->currenttime)),
                        'updated_at' => $this->currenttime,
                        'u_ae' => 'e'
                    ];

                    $grpup = [
                        'Cancel' => 'Y',
                        'CancelUName' => 'Web',
                        'CancelDate' => date('Y-m-d', strtotime($this->currenttime)),
                        'updated_at' => $this->currenttime,
                        'chkoutyn' => 'Y',
                        'U_AE' => 'e'
                    ];

                    Bookings::where('Property_ID', $channelenviro->propertyid)
                        ->where('RefBookNo', $mergedArray['ResGlobalInfo']['UniqueID']['ID'])->update($bookingup);

                    GrpBookinDetail::where('Property_ID', $channelenviro->propertyid)
                        ->where('BookingDocid', $docidbook)->update($grpup);

                    return response()->json([
                        'IsError' => false,
                        'message' => 'Cancel Updated Successfully for Id: ' . $mergedArray['ResGlobalInfo']['UniqueID']['ID']
                    ], 200);
                }
            }

            DB::beginTransaction();
            $bookingtb = Bookings::where('Property_ID', $channelenviro->propertyid)->where('GuestProf', $mergedArray['ResGlobalInfo']['UniqueID']['ID'])->first();
            if (is_null($bookingtb)) {

                $ncurdate = EnviroGeneral::where('propertyid', $channelenviro->propertyid)->value('ncur');
                $envirofom = EnviroFom::where('propertyid', $channelenviro->propertyid)->first();
                $chkvpf = VoucherPrefix::where('propertyid', $channelenviro->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();

                $vno = $chkvpf->start_srl_no + 1;
                $vprefixyr = $chkvpf->prefix;
                $docid = $channelenviro->propertyid . $vtype . '‎ ‎ ' . $vprefixyr . '‎ ‎ ‎ ‎ ' . $vno;

                $taxes = $mergedArray['ResGlobalInfo']['Total']['Taxes'];
                $IncTax = 'N';
                if ($taxes) {
                    if ($taxes['Tax']['Amount'] > 0) {
                        $IncTax = 'Y';
                    }
                }

                foreach ($requestData['ResGuests'] as $guestdt) {
                    $Customer = $guestdt['Customer'];
                    $PhoneNumber = DateHelper::removeLeadingPrefix($guestdt['Customer']['Telephone']['PhoneNumber']);
                }

                $findexist = GuestProf::where('propertyid', $channelenviro->propertyid)->where('mobile_no', $PhoneNumber)->first();

                if ($findexist != null) {
                    $guestprof = $findexist->guestcode;
                } else {
                    $maxguestprof = GuestProf::where('propertyid', $channelenviro->propertyid)->max('guestcode');
                    $guestprof = ($maxguestprof === null) ? $channelenviro->propertyid . '10001' : ($guestprof = $channelenviro->propertyid . substr($maxguestprof, $ptlength) + 1);
                }
                $channelproperty = $channelenviro->propertyid;
                $sno = 1;
                $NoofRooms = 0;
                foreach ($requestData['RoomStays'] as $roomStay) {
                    $ratePlanCode = $roomStay['RatePlans'][0]['RatePlanCode'];
                    // $tarrif = $roomStay['RoomRates'][0]['Base']['AmountAfterTax'] ?? 0;

                    $startDate = $roomStay['TimeSpan']['Start'];
                    $endDate = $roomStay['TimeSpan']['End'];

                    $date1 = new DateTime($startDate);
                    $date2 = new DateTime($endDate);
                    $daysDifference = $date1->diff($date2)->days;

                    $totalAmount = (float) ($roomStay['Total']['AmountAfterTax'] ?? 0);
                    $totalRoomCount = array_sum(array_column($roomStay['RoomTypes'], 'NumberOfUnits'));
                    $roomRatesCount = count($roomStay['RoomRates'] ?? []);

                    if ($roomRatesCount === 1) {
                        $tarrif = $totalAmount;
                    } else {
                        $tarrif = ($totalRoomCount > 0 && $daysDifference > 0)
                            ? round($totalAmount / $totalRoomCount / $daysDifference, 2)
                            : 0;
                    }

                    $startDate = $roomStay['TimeSpan']['Start'];
                    $endDate = $roomStay['TimeSpan']['End'];
                    $date1 = new DateTime($startDate);
                    $date2 = new DateTime($endDate);
                    $diff = $date1->diff($date2);

                    foreach ($resGlobalInfo['GuestCounts'] as $row) {
                        $AgeQualifyingCode = $row['AgeQualifyingCode'];
                        if ($AgeQualifyingCode == 8) {
                            $childcount = $row['Count'];
                        } else if ($AgeQualifyingCode == 10) {
                            $adultcount = $row['Count'];
                        }
                    }

                    $daysDifference = $diff->days;
                    foreach ($roomStay['RoomTypes'] as $roomtype) {
                        $NoofRooms++;
                        $roomcatname = $roomtype['RoomDescription']['Name'];
                        $RoomTypeCode = $roomtype['RoomTypeCode'];
                        $roomcattaxstructure = RoomCat::where('propertyid', $channelenviro->propertyid)->where('cat_code', $RoomTypeCode)->value('rev_code');
                        $rtaxstru = '';
                        if ($roomcattaxstructure) {
                            $rtaxstru = Revmast::where('propertyid', $channelenviro->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
                        }
                        $catcode = RoomCat::where('map_code', $RoomTypeCode)->first();
                        $plancode = PlanMast::where('map_code', $ratePlanCode)->where('room_cat', $catcode->cat_code)->first();
                        if ($adultcount == '2') {
                            $plancodeins = PlanMast::where('map_code', $ratePlanCode)->where('room_cat', $catcode->cat_code)->where('adults', '2')->first();
                        } else if ($adultcount == '1') {
                            $plancodeins = PlanMast::where('map_code', $ratePlanCode)->where('room_cat', $catcode->cat_code)->where('adults', '1')->first();
                        } else if ($adultcount >= '3') {
                            $plancodeins = PlanMast::where('map_code', $ratePlanCode)->where('room_cat', $catcode->cat_code)->where('adults', '>=', '3')->first();
                        } else {
                            $plancodeins = PlanMast::where('map_code', $ratePlanCode)->where('room_cat', $catcode->cat_code)->first();
                        }
                        // Log::info('Cat Code', ['catcode' => $catcode]);
                        // Log::info('Plan Code Ins', ['plancodeins' => $plancodeins]);
                        $cid = $catcode->cat_code;
                        $emptrooms = '';
                        if ($envirofom->autofillroomres == 'Y') {

                            $rooms = DB::table('room_mast as rm')
                                ->select('rm.rcode', 'rm.room_cat')
                                ->where('rm.propertyid', $channelenviro->propertyid)
                                ->where('rm.room_cat', $cid)
                                ->whereNotIn('rm.rcode', function ($query) use ($channelenviro, $cid, $startDate, $endDate) {
                                    $query->select('ro.roomno')
                                        ->from('roomocc as ro')
                                        ->where('ro.propertyid', $channelenviro->propertyid)
                                        ->whereNull('ro.type')
                                        ->where('ro.roomcat', $cid)
                                        ->where('ro.chkindate', '<', $endDate)
                                        ->where('ro.depdate', '>=', $startDate);
                                })
                                ->whereNotIn('rm.rcode', function ($query) use ($channelenviro, $cid, $startDate, $endDate) {
                                    $query->select('gb.RoomNo')
                                        ->from('grpbookingdetails as gb')
                                        ->where('gb.Property_ID', $channelenviro->propertyid)
                                        ->where('gb.RoomCat', $cid)
                                        ->where('gb.ArrDate', '<', $endDate)
                                        ->where('gb.DepDate', '>', $startDate)
                                        ->where('gb.ContraDocId', '')
                                        ->where('gb.chkoutyn', 'N')
                                        ->where('gb.Cancel', 'N')
                                        ->where('gb.RoomNo', '!=', 0);
                                })
                                ->whereNotIn('rm.rcode', function ($query) use ($channelenviro, $startDate, $endDate) {
                                    $query->select('rb.roomcode')
                                        ->from('roomblockout as rb')
                                        ->where('rb.propertyid', $channelenviro->propertyid)
                                        ->where('rb.fromdate', '<', $endDate)
                                        ->where('rb.todate', '>', $startDate)
                                        ->where('rb.type', 'O');
                                })
                                ->first();
                            $emptrooms = $rooms->rcode ?? '';
                            // Log::info('rooms: ' . json_encode($rooms));
                        }

                        $grpbookingdetails = [
                            'ccode' => $RoomTypeCode,
                            'pcode' => $plancodeins->pcode ?? '0',
                            'Property_ID' => $channelenviro->propertyid,
                            'BookingDocid' => $docid,
                            'Sno' => $sno,
                            'BookNo' => $vno,
                            'RoomDet' => '1',
                            'CancelUName' => '',
                            'GuestProf' => $guestprof,
                            'GuestName' => $guestdt['Customer']['PersonName']['GivenName'] . ' ' . $guestdt['Customer']['PersonName']['Surname'],
                            'RoomCat' => $catcode->cat_code ?? '0',
                            'Plan_Code' => $plancodeins->pcode ?? '0',
                            'ServiceChrg' => 'No',
                            'RoomNo' => $emptrooms,
                            'RateCode' => 2,
                            'NoDays' => $daysDifference,
                            'DepDate' => $endDate,
                            'DepTime' => date('H:i:s'),
                            'RoomTaxStru' => $rtaxstru ?? '',
                            'CancelDate' => null,
                            'Cancel' => 'N',
                            'IncTax' => $IncTax,
                            'Tarrif' => $tarrif,
                            'ArrDate' => $startDate,
                            'ArrTime' => date('H:i:s'),
                            'Adults' => $adultcount,
                            'Childs' => $childcount,
                            'created_at' => $this->currenttime,
                            'U_Name' => 'Web',
                            'U_AE' => 'a',
                            'ContraDocId' => '',
                            'ContraSno' => '',
                        ];
                        GrpBookinDetail::insert($grpbookingdetails);
                        $sno++;
                    }
                }

                foreach ($resGuests as $row) {
                    $subgroup = SubGroup::where('mapcode', $mergedArray['ResGlobalInfo']['Source']['BookingChannel']['CompanyCode'])->where('propertyid', $channelenviro->propertyid)->first();
                    $bookingdata = [
                        'Property_ID' => $channelenviro->propertyid,
                        'DocId' => $docid,
                        'GuestName' => $row['Customer']['PersonName']['GivenName'] . ' ' . $row['Customer']['PersonName']['Surname'],
                        'BookNo' => $vno,
                        'Vtype' => $vtype,
                        'advdeposit' => 0.00,
                        'Vprefix' => $vprefixyr,
                        'vdate' => $ncurdate,
                        'GuestProf' => $guestprof,
                        'vehiclenum' => '',
                        'TravelAgency' => $subgroup->sub_code ?? '',
                        'purpofvisit' => '',
                        'BussSource' => $mergedArray['ResGlobalInfo']['Source']['RequestorID']['ID'],
                        'MarketSeg' => 'Travel Agent',
                        'RRServiceChrg' => '',
                        'BookedBy' => $subgroup->name ?? '',
                        'ResStatus' => $mergedArray['ResGlobalInfo']['ResStatus'] == 'Commit' ? 'Confirm' : $mergedArray['ResGlobalInfo']['ResStatus'],
                        'ResMode' => '',
                        'TravelMode' => '',
                        'CancelDate' => null,
                        'Cancel' => 'N',
                        'Company' => $subgroup->sub_code ?? '',
                        'ArrFrom' => '',
                        'Destination' => '',
                        'created_at' => $this->currenttime,
                        'U_Name' => 'Web',
                        'U_AE' => 'a',
                        'NoofRooms' => $sno - 1,
                        'Remarks' => $mergedArray['ResGlobalInfo']['SpecialRequests'][0] ?? '',
                        'pickupdrop' => '',
                        'Authorization' => '',
                        'Verified' => '',
                        'CancelUName' => '',
                        'MobNo' => $row['Customer']['Telephone']['PhoneNumber'] = DateHelper::removeLeadingPrefix($guestdt['Customer']['Telephone']['PhoneNumber']),
                        'Email' => $row['Customer']['Email'] ?? '',
                        'RRTaxInc' => $request->input('tax_inc') ?? '',
                        'RDisc' => $request->input('rodisc') ?? '0',
                        'RSDisc' => $request->input('rsdisc') ?? '0',
                        'AdvDueDate' => null,
                        'RefCode' => '',
                        'RefBookNo' => $mergedArray['ResGlobalInfo']['UniqueID']['ID'] ?? '',
                    ];

                    $guestproft = [
                        'propertyid' => $channelenviro->propertyid,
                        'docid' => $docid,
                        'folio_no' => $vno,
                        'created_at' => $this->currenttime,
                        'u_name' => 'Web',
                        'u_ae' => 'a',
                        'complimentry' => '',
                        'guestcode' => $guestprof,
                        'name' => $row['Customer']['PersonName']['GivenName'] . ' ' . $row['Customer']['PersonName']['Surname'],
                        'state_code' => '',
                        'country_code' => '',
                        'add1' => $row['Customer']['Address']['AddressLine'][0] ?? '',
                        'add2' => $row['Customer']['Address']['AddressLine'][1] ?? '',
                        'city' => '',
                        'type' => '',
                        'mobile_no' => $row['Customer']['Telephone']['PhoneNumber'] = DateHelper::removeLeadingPrefix($guestdt['Customer']['Telephone']['PhoneNumber']),
                        'email_id' => $row['Customer']['Email'],
                        'nationality' => $countrydata->nationality ?? '',
                        'anniversary' => null,
                        'guest_status' => '',
                        'comments1' => '',
                        'comments2' => '',
                        'comments3' => '',
                        'city_name' => $row['Customer']['Address']['CityName'] ?? '',
                        'state_name' => $row['Customer']['Address']['StateProv'] ?? '',
                        'country_name' => $row['Customer']['Address']['CountryName'] ?? '',
                        'gender' => '',
                        'marital_status' => '',
                        'zip_code' => $row['Customer']['Address']['PostalCode'] ?? '',
                        'con_prefix' => $row['Customer']['PersonName']['NamePrefix'] ?? 'Mr.',
                        'dob' => null,
                        'age' => '',
                        'pic_path' => '',
                        'id_proof' => '',
                        'idproof_no' => '',
                        'issuingcitycode' => '',
                        'issuingcityname' => '',
                        'issuingcountrycode' => '',
                        'issuingcountryname' => '',
                        'expiryDate' => '',
                        'paymentMethod' => $mergedArray['ResGlobalInfo']['PaymentTypeInfo']['PaymentType'] ?? '',
                        'idpic_path' => '',
                        'm_prof' => $guestprof,
                        'father_name' => '',
                        'fom' => 1,
                        'pos' => 0,
                    ];
                }
                Bookings::insert($bookingdata);
                GuestProf::insert($guestproft);

                if (isset($mergedArray['ResGlobalInfo']['Total']['PartialPaymentInfo'])) {
                    $paymenttype = $mergedArray['ResGlobalInfo']['Total']['PaymentType'];
                    $totalamount = $mergedArray['ResGlobalInfo']['Total']['AmountAfterTax'];

                    $maxsno = GrpBookinDetail::where('BookingDocid', $docid)->where('Property_ID', $channelenviro->propertyid)->max('Sno');
                    $result = DB::table('grpbookingdetails')->where('BookingDocid', $docid)->where('Property_ID', $channelenviro->propertyid)->where('Sno', $maxsno)->first();

                    $vtypep = 'ADRES';

                    $chkvpfp = VoucherPrefix::where('propertyid', $channelenviro->propertyid)
                        ->where('v_type', $vtypep)
                        ->whereDate('date_from', '<=', $ncurdate)
                        ->whereDate('date_to', '>=', $ncurdate)
                        ->first();
                    $vnop = $chkvpfp->start_srl_no;
                    $docidp = $channelenviro->propertyid . $vtypep . ' ‎ ‎' . $vprefixyr . ' ‎ ‎ ‎ ' . $vnop;

                    $preamount = $mergedArray['ResGlobalInfo']['Total']['PartialPaymentInfo']['PartialAmount'];
                    $amtdr = 0.00;
                    $amtcr = $preamount;

                    $paytype = Revmast::where('propertyid', $channelenviro->propertyid)->where('rev_code', 'CRED' . $channelenviro->propertyid)->first();

                    $narration = "Advance Agst. Res. No. $vnop Rect. No. 1 Dt. " . date('d-m-Y', strtotime($ncurdate)) . ", $paytype->name";

                    $insertdefaultdata = [
                        'propertyid' => $channelenviro->propertyid,
                        'remarks' => $paymenttype,
                        'docid' => $docidp,
                        'vno' => $vnop,
                        'vtype' => $vtypep,
                        'sno' => 1,
                        'sno1' => $result->Sno,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefixyr,
                        'paycode' => $paytype->rev_code,
                        'paytype' => $paytype->name,
                        'comments' => $narration,
                        'guestprof' => $result->GuestProf,
                        'comp_code' => '',
                        'travel_agent' => '',
                        'roomno' => $result->RoomNo,
                        'amtdr' => $amtdr,
                        'amtcr' => $amtcr,
                        'roomcat' => $result->RoomCat,
                        'restcode' => 'FOM' . $channelenviro->propertyid,
                        'billamount' => $totalamount,
                        'taxper' => 0,
                        'onamt' => 0,
                        'taxstru' => '',
                        'refdocid' => $docid,
                        'foliono' => $result->BookNo,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => 'Web',
                        'u_ae' => 'a',
                    ];

                    Paycharge::insert($insertdefaultdata);
                    VoucherPrefix::where('propertyid', $channelenviro->propertyid)
                        ->where('v_type', $vtypep)
                        ->where('prefix', $vprefixyr)
                        ->increment('start_srl_no');
                }

                VoucherPrefix::where('propertyid', $channelenviro->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefixyr)
                    ->increment('start_srl_no');

                DB::commit();

                return response()->json(['IsError' => false, 'message' => 'Data stored successfully'], 200);
            } else {
                return response()->json(['IsError' => true, 'message' => 'Booking Already Exists For Id: ' . $mergedArray['ResGlobalInfo']['UniqueID']['ID']], 500);
            }
        } catch (Exception $e) {
            DB::rollBack();
            $errors = [
                'propertyid' => $channelenviro->propertyid,
                'error' => $e->getMessage(),
                'ccode' => $RoomTypeCode ?? '',
                'pcode' => $ratePlanCode ?? '',
                'created_at' => $this->currenttime,
                'updated_at' => null,
                'u_name' => 'Web',
                'u_ae' => 'a'
            ];

            ErrorLog::insert($errors);

            return response()->json(['IsError' => true, 'message' => "Internal Server Error: " . $e->getMessage()], 500);
        }
    }
}
