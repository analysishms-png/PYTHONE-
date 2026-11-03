<?php

namespace App\Http\Controllers\Reservation\Operations;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Helpers\WhatsappSend;
use App\Models\Bookings;
use App\Models\BookinPlanDetail;
use App\Models\ChannelEnviro;
use App\Models\ChannelPushes;
use App\Models\Cities;
use App\Models\Countries;
use App\Models\PlanMast;
use App\Models\RoomInclusive;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Companyreg;
use App\Models\GuestProf;
use App\Models\EnviroWhatsapp;
use App\Models\GrpBookinDetail;
use App\Models\RoomCat;
use App\Models\States;
use App\Models\VoucherPrefix;
use App\Repositories\RoomRepository;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use DateTime;
use App\Services\Insert\RemarkService;
use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;

class ReservationSubmit extends Controller
{

    protected $username;
    protected $email;
    protected $propertyid;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
    protected $ncurdate;
    protected $datemanage;
    private RoomRepository $roomRepository;

    public function __construct(RoomRepository $roomRepository)
    {
        $this->roomRepository = $roomRepository;
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
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

    public function reservationsubmit(Request $request)
    {
        //fix
        $permission = revokeopen(131111);
        // return $permission;
        if (is_null($permission) || $permission->ins == 0) {
            return response()->json([
                'redirecturl' => '',
                'status' => 'error',
                'message' => 'You have no permission to execute this functionality!'
            ]);
        }

        try {

            $validate = $request->validate([
                'name' => 'required',
                'cityname' => 'required',
                'arrivaldate1' => 'required',
                'checkoutdate1' => 'required',
                'arrivaltime1' => 'required',
                'checkouttime1' => 'required',
            ]);

            DB::beginTransaction();

            $channelenviro = ChannelEnviro::where('propertyid', $this->propertyid)->first();
            $envirofom = fomparameter();

            $advdepositcheckbox = $request->input('advdeposit');

            if ($advdepositcheckbox == 'on') {
                $advdeposit = 'Y';
            } else {
                $advdeposit = 'N';
            }

            $vtype = 'RES';

            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $this->ncurdate)
                ->whereDate('date_to', '>=', $this->ncurdate)
                ->first();

            $start_srl_no = $chkvpf->start_srl_no + 1;
            $vprefixyr = $chkvpf->prefix;

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
                $folderPathp = 'public/walkin/reservationprofilepic';
                Storage::makeDirectory($folderPathp);
                Storage::putFileAs($folderPathp, $profilepic, $profilepicture);
            }

            if (!empty($request->file('identityimage'))) {
                $identitypic = $request->file('identityimage');
                $identitypicture = $request->input('guestmobile') . $request->input('guestname') . 'PR' . $this->propertyid . time() . '.' . $identitypic->getClientOriginalExtension();
                $folderpathi = 'public/walkin/reservationidentitypic';
                Storage::makeDirectory($folderpathi);
                Storage::putFileAs($folderpathi, $identitypic, $identitypicture);
            }

            if ($request->input('complimentry') == 'on') {
                $complimentry = 'Y';
            } else {
                $complimentry = 'N';
            }

            $maxguestprof = GuestProf::where('propertyid', $this->propertyid)->max('guestcode');
            if ($maxguestprof == null) {
                $guestprof = $this->propertyid . 10001;
            } else {
                $guestprof = $this->propertyid . substr($maxguestprof, $this->ptlngth) + 1;
            }

            $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefixyr . '‎ ‎ ‎ ‎ ' . $start_srl_no;

            $snorev = 1;
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
                    $rinclusive->docid = $docid;
                    $rinclusive->vtype = $vtype;
                    $rinclusive->vdate = ncurdate();
                    $rinclusive->vprefix = $vprefixyr;
                    $rinclusive->bookno = $start_srl_no;
                    $rinclusive->sno = $snorev++;
                    $rinclusive->rev_code = $row->rev_code;
                    $rinclusive->amount = $fieldvalue;
                    $rinclusive->chargepost = $chargepost ?? 'Daily';
                    $rinclusive->u_name = Auth::user()->u_name;
                    $rinclusive->created_at = now();
                    $rinclusive->save();
                }
            }

            $ncurdate = ncurdate();
            $count = $request->totalrooms;
            $sno = 1;
            $postdataeglobearray = [];

            $categoryAvailability = [];
            $categoryUsed = [];
            $categoryAvailableRooms = [];
            for ($x = 1; $x <= $count; $x++) {
                $categoryId = $request->input('cat_code' . $x);

                if ($categoryId === null || $categoryId === '' || !is_numeric($categoryId)) {
                    DB::table('debug_logs')->insert([
                        'propertyid' => $this->propertyid ?? null,
                        'log_type' => 'Reservation submission: missing room category',
                        'message' => json_encode([
                            'row' => $x,
                            'totalrooms' => $request->input('totalrooms'),
                            'category_key' => 'cat_code' . $x,
                            'submitted_categories' => collect($request->all())
                                ->filter(fn($value, $key) => preg_match('/^cat_code\d+$/', $key))
                                ->all(),
                        ]),
                        'created_at' => now(),
                    ]);

                    return response()->json([
                        'status' => 'error',
                        'message' => "Room category missing in row {$x}."
                    ], 422);
                }

                $categoryId = (int) $categoryId;
                if (isset($categoryAvailability[$categoryId])) {
                    continue;
                }

                $availableRooms = $this->roomRepository->getAvailableRooms(
                    $categoryId,
                    $request->input('arrivaldate' . $x),
                    $request->input('checkoutdate' . $x)
                );

                if ($availableRooms->isEmpty()) {
                    $categoryName = RoomCat::where('cat_code', $categoryId)->value('name') ?? "Category {$categoryId}";

                    return response()->json([
                        'status' => 'error',
                        'message' => "Room category '{$categoryName}' has 0 available rooms for the selected dates. Please fix your data before submitting the reservation."
                    ], 422);
                }

                $categoryAvailability[$categoryId] = $availableRooms->count();
                $categoryUsed[$categoryId] = 0;
                $categoryAvailableRooms[$categoryId] = $availableRooms
                    ->pluck('rcode')
                    ->map(fn($room) => (string) $room)
                    ->values()
                    ->all();
            }

            $allocateRoom = function ($categoryId, $requestedRoomNo = '') use (
                &$categoryUsed,
                &$categoryAvailableRooms,
                $categoryAvailability,
                $envirofom
            ) {
                if ($categoryUsed[$categoryId] >= $categoryAvailability[$categoryId]) {
                    return null;
                }

                if (!empty($requestedRoomNo)) {
                    $roomNo = (string) $requestedRoomNo;

                    $roomIndex = array_search(
                        $roomNo,
                        $categoryAvailableRooms[$categoryId],
                        true
                    );

                    if ($roomIndex !== false) {
                        unset($categoryAvailableRooms[$categoryId][$roomIndex]);
                        $categoryAvailableRooms[$categoryId] = array_values(
                            $categoryAvailableRooms[$categoryId]
                        );
                    }

                    $categoryUsed[$categoryId]++;

                    return $roomNo;
                }

                if ($envirofom->autofillroomres != 'Y') {
                    $categoryUsed[$categoryId]++;
                    return '';
                }

                $roomNo = array_shift($categoryAvailableRooms[$categoryId]);

                if ($roomNo === null) {
                    return null;
                }

                $categoryUsed[$categoryId]++;

                return $roomNo;
            };

            $sumtotalamt = 0.00;
            $sumtotalamtaftertax = 0.00;
            $planrowcount = 0;

            $roommastIndex = 1;
            for ($i = 1; $i <= $count; $i++) {
                $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $i))->value('rev_code');
                $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');

                $cid = $request->input('cat_code' . $i);

                $requestedRoomCount = max(1, (int) $request->input('roomcount' . $i));
                $remainingCategoryCapacity = $categoryAvailability[$cid] - $categoryUsed[$cid];

                if ($remainingCategoryCapacity <= 0) {
                    continue;
                }

                $acceptedRoomCount = min($requestedRoomCount, $remainingCategoryCapacity);

                $roomNo = $allocateRoom(
                    $cid,
                    $request->input('roommast' . $roommastIndex)
                );

                $roommastIndex++;

                if ($roomNo === null) {
                    continue;
                }

                $grpbookingdetails = [
                    'Property_ID' => $this->propertyid,
                    'BookingDocid' => $docid,
                    'Sno' => $sno,
                    'BookNo' => $start_srl_no,
                    'RoomDet' => '1',
                    'CancelUName' => '',
                    'GuestProf' => $guestprof,
                    'GuestName' => $request->input('name') ?? '',
                    'RoomCat' => $request->input('cat_code' . $i) ?? '',
                    'Plan_Code' => $request->input('planmaster' . $i) ?? '',
                    'ServiceChrg' => 'No',
                    'RoomNo' => $roomNo,
                    'RateCode' => 2,
                    'NoDays' => $request->input('stay_days' . $i) ?? '',
                    'DepDate' => $request->input('checkoutdate' . $i) ?? '',
                    'DepTime' => $request->input('checkouttime' . $i) ?? '',
                    'RoomTaxStru' => $rtaxstru ?? '',
                    'CancelDate' => null,
                    'Cancel' => 'N',
                    'IncTax' => $request->input('tax_inc' . $i) ?? '',
                    'Tarrif' => $request->input('rate' . $i) ?? '',
                    'ArrDate' => $request->input('arrivaldate' . $i) ?? '',
                    'ArrTime' => $request->input('arrivaltime' . $i) ?? '',
                    'Adults' => $request->input('adult' . $i) ?? '',
                    'Childs' => $request->input('child' . $i) ?? '',
                    'created_at' => now(),
                    'U_Name' => Auth::user()->u_name,
                    'U_AE' => 'a',
                    'ContraDocId' => '',
                    'ContraSno' => '',
                ];

                $plandetails = [
                    'propertyid' => $this->propertyid,
                    'foliono' => $start_srl_no,
                    'docid' => $docid,
                    'sno' => 1,
                    'sno1' => $sno,
                    'roomno' => $roomNo,
                    'room_rate_before_tax' => $request->input('roomrate' . $i) ?? '0',
                    'total_rate' => $request->input('plansumrate' . $i) ?? '0',
                    'pcode' => $request->input('planmaster' . $i),
                    'noofdays' => $request->input('stay_days' . $i),
                    'rev_code' => $request->input('rowsrev_code' . $i) ?? '',
                    'fixrate' => $request->input('rowdplanfixrate' . $i),
                    'planper' => $request->input('rowdplan_per' . $i),
                    'amount' => $request->input('rowdamount' . $i),
                    'netplanamt' => $request->input('plankaamount' . $i),
                    'taxinc' => $request->input('taxincplanroomrate' . $i) ?? 'Y',
                    'taxstru' => $request->input('rowstax_stru' . $i),
                    'created_at' => now(),
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                ];

                $roomcat = RoomCat::where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $i))->first();
                $plandata = PlanMast::where('propertyid', $this->propertyid)->where('pcode', $request->input('planmaster' . $i))->first();
                // Log::info('planmast for ' . $request->input('planmaster' . $i) . ' : ' . json_encode($plandata));

                if ($channelenviro->checkyn == 'Y') {
                    $planedit = $request->input('planedit' . $i);
                    $taxinc = $request->input('tax_inc' . $i);

                    $croomrate = 0.00;

                    if ($planedit == 'Y') {
                        $croomrate = $request->input('plankaamount' . $i);
                    } else {
                        $croomrate = $request->input('rate' . $i);
                    }

                    if ($croomrate < 7500) {
                        $txpr = 12;
                    } else {
                        $txpr = 18;
                    }

                    if ($taxinc == 'Y') {
                        $ct = $croomrate * 100;
                        $amountbeforetax = (str_replace(',', '', number_format(($ct / (100 + $txpr)), 2)));
                        $amountvifergation = (str_replace(',', '', number_format($amountbeforetax, 2)) * $txpr) / 100;
                        $amountaftertax = str_replace(',', '', number_format($amountbeforetax, 2)) + $amountvifergation;
                    } else {
                        $amountbeforetax = $croomrate;
                        $amountaftertax = ($croomrate * $txpr) / 100;
                    }

                    $arrdate = new DateTime($request->input('arrivaldate' . $i));
                    $depsdate = new DateTime($request->input('checkoutdate' . $i));

                    $interval = $arrdate->diff($depsdate);

                    $diffcount = $interval->days;
                    $amountbeforesum = 0.00;
                    $amountaftersum = 0.00;

                    $tmparrdate = clone $arrdate->modify("-1 day");

                    $rowscount = $acceptedRoomCount;

                    $nightwise = [];
                    for ($l = 1; $l <= $diffcount; $l++) {
                        $amountbeforesum += str_replace(',', '', number_format($amountbeforetax, 2));
                        $amountaftersum += str_replace(',', '', number_format($amountaftertax, 2));
                        $effectivedate = clone $tmparrdate;
                        $effectivedate->modify("+$l day");
                        $nightwise[] = [
                            "Base" => [
                                "AmountBeforeTax" => str_replace(',', '', number_format($amountbeforetax, 2)),
                                "AmountAfterTax" => str_replace(',', '', number_format($amountaftertax, 2))
                            ],
                            "EffectiveDate" => $effectivedate->format('Y-m-d')
                        ];
                    }

                    for ($m = 1; $m <= $rowscount; $m++) {
                        $sumtotalamt += str_replace(',', '', number_format($amountbeforesum, 2));
                        $sumtotalamtaftertax += str_replace(',', '', number_format($amountaftersum, 2));
                        $postdataeglobearray[] = [
                            "RoomTypes" => [
                                [
                                    "RoomDescription" => [
                                        "Name" => $roomcat->name
                                    ],
                                    "NumberOfUnits" => 1,
                                    "RoomTypeCode" => $roomcat->map_code
                                ]
                            ],
                            "RatePlans" => [
                                [
                                    "RatePlanCode" => "$plandata->map_code",
                                    "RatePlanName" => $plandata->name
                                ]
                            ],
                            "GuestCounts" => [
                                [
                                    "AgeQualifyingCode" => "10",
                                    "Count" => $request->input('adult' . $i)
                                ],
                                [
                                    "AgeQualifyingCode" => "8",
                                    "Count" => $request->input('child' . $i)
                                ]
                            ],
                            "TimeSpan" => [
                                "Start" => $request->input('arrivaldate' . $i),
                                "End" => $request->input('checkoutdate' . $i)
                            ],
                            "RoomRates" => $nightwise,
                            "Total" => [
                                "AmountBeforeTax" => str_replace(',', '', number_format($amountbeforesum, 2)),
                                "AmountAfterTax" => str_replace(',', '', number_format($amountaftersum, 2)),
                            ]
                        ];
                    }
                }

                GrpBookinDetail::insert($grpbookingdetails);
                if ($request->input('planedit' . $i) == 'Y') {
                    $planrowcount++;
                    BookinPlanDetail::insert($plandetails);
                }
                if ($acceptedRoomCount > 1) {
                    for ($j = 1; $j < $acceptedRoomCount; $j++) {

                        $additionalRoomNo = $allocateRoom(
                            $cid,
                            $request->input('roommast' . $roommastIndex)
                        );

                        $roommastIndex++;

                        if ($additionalRoomNo === null) {
                            break;
                        }

                        $grpexcept = [
                            'Property_ID' => $this->propertyid,
                            'BookingDocid' => $docid,
                            'Sno' => ++$sno,
                            'BookNo' => $start_srl_no,
                            'RoomDet' => '1',
                            'CancelUName' => '',
                            'GuestProf' => $guestprof,
                            'GuestName' => $request->input('name') ?? '',
                            'RoomCat' => $request->input('cat_code' . $i) ?? '',
                            'Plan_Code' => $request->input('planmaster' . $i) ?? '',
                            'ServiceChrg' => 'No',
                            'RoomNo' => $additionalRoomNo,
                            'RateCode' => 2,
                            'NoDays' => $request->input('stay_days' . $i) ?? '',
                            'DepDate' => $request->input('checkoutdate' . $i) ?? '',
                            'DepTime' => $request->input('checkouttime' . $i) ?? '',
                            'RoomTaxStru' => $rtaxstru ?? '',
                            'CancelDate' => null,
                            'Cancel' => 'N',
                            'IncTax' => $request->input('tax_inc' . $i) ?? '',
                            'Tarrif' => $request->input('rate' . $i) ?? '',
                            'ArrDate' => $request->input('arrivaldate' . $i) ?? '',
                            'ArrTime' => $request->input('arrivaltime' . $i) ?? '',
                            'Adults' => $request->input('adult' . $i) ?? '',
                            'Childs' => $request->input('child' . $i) ?? '',
                            'created_at' => now(),
                            'U_Name' => Auth::user()->u_name,
                            'U_AE' => 'a',
                            'ContraDocId' => '',
                            'ContraSno' => '',
                        ];

                        $plandetailsexcept = [
                            'propertyid' => $this->propertyid,
                            'foliono' => $start_srl_no,
                            'docid' => $docid,
                            'sno' => 1,
                            'sno1' => ++$sno,
                            'roomno' => $additionalRoomNo,
                            'room_rate_before_tax' => $request->input('roomrate' . $i) ?? '0',
                            'total_rate' => $request->input('plansumrate' . $i) ?? '0',
                            'pcode' => $request->input('planmaster' . $i),
                            'noofdays' => $request->input('stay_days' . $i),
                            'rev_code' => $request->input('rowsrev_code' . $i) ?? '',
                            'fixrate' => $request->input('rowdplanfixrate' . $i),
                            'planper' => $request->input('rowdplan_per' . $i),
                            'amount' => $request->input('rowdamount' . $i),
                            'netplanamt' => $request->input('plankaamount' . $i),
                            'taxinc' => $request->input('taxincplanroomrate' . $i) ?? 'Y',
                            'taxstru' => $request->input('rowstax_stru' . $i),
                            'created_at' => now(),
                            'u_name' => Auth::user()->u_name,
                            'u_ae' => 'a',
                        ];

                        if ($request->input('planedit' . $i) == 'Y') {
                            $planrowcount++;
                            BookinPlanDetail::insert($plandetailsexcept);
                        }

                        GrpBookinDetail::insert($grpexcept);
                    }
                }
                $sno++;
            }

            $incount = GrpBookinDetail::where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->count();

            $bookingdata = [
                'Property_ID' => $this->propertyid,
                'DocId' => $docid,
                'GuestName' => $request->input('name') ?? '',
                'BookNo' => $start_srl_no,
                'Vtype' => $vtype,
                'advdeposit' => $advdeposit,
                'Vprefix' => $vprefixyr,
                'vdate' => $ncurdate,
                'GuestProf' => $guestprof,
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
                'created_at' => now(),
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'a',
                'NoofRooms' => $incount,
                'Remarks' => $request->input('remarkmain') ?? '',
                'pickupdrop' => $request->pickupdrop ?? '',
                'Authorization' => '',
                'Verified' => '',
                'CancelUName' => '',
                'MobNo' => $request->input('mobile') ?? '',
                'Email' => $request->input('email') ?? '',
                'RRTaxInc' => $request->input('tax_inc' . $i) ?? '',
                'RDisc' => $request->input('rodisc') ?? '0',
                'RSDisc' => $request->input('rsdisc') ?? '0',
                'AdvDueDate' => null,
                'RefCode' => '',
                'RefBookNo' => $request->input('ref_booking_id') ?? '',
            ];

            if (!empty($request->input('remarkmain'))) {
                RemarkService::insert([
                    [
                        'docid' => $docid,
                        'type' => 'Internal Note',
                        'description' => $request->input('remarkmain'),
                    ],
                ]);
            }

            $guestproft = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'folio_no' => $start_srl_no,
                'bill_to' => $request->input('bill_to') ?? '',
                'created_at' => now(),
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'complimentry' => $complimentry,
                'guestcode' => $guestprof,
                'name' => $request->input('name'),
                'state_code' => $request->input('state'),
                'country_code' => $request->input('country'),
                'add1' => $request->input('address1'),
                'add2' => $request->input('address2'),
                'city' => $request->input('cityname'),
                'type' => $countrydata->Type ?? '',
                'mobile_no' => $request->input('mobile'),
                'email_id' => $request->input('email'),
                'nationality' => $countrydata->nationality ?? '',
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
                'm_prof' => $guestprof,
                'father_name' => null,
                'fom' => 1,
                'pos' => 0,
            ];

            if ($channelenviro->checkyn == 'Y') {
                $compdt = Companyreg::where('propertyid', $this->propertyid)->where('role', 'Property')->first();
                $citydata = Cities::where('propertyid', $this->propertyid)->where('city_code', $request->input('cityname'))->first();
                $statedata = States::where('propertyid', $this->propertyid)->where('state_code', $citydata->state)->first();
                $countries = Countries::where('propertyid', $this->propertyid)->where('country_code', $statedata->country)->first();

                $ut = date('Y-m-d H:i:s');
                $date = new DateTime($ut);
                $formatted_date = $date->format('Y-m-d\TH:i:s');

                if ($channelenviro->url == 'https://www.eglobe-solutions.com') {
                    $postdata = [
                        "RoomStays" => $postdataeglobearray,
                        "ResGuests" => [
                            [
                                "Customer" => [
                                    "PersonName" => [
                                        "NamePrefix" => $request->input('greetingsguest'),
                                        "GivenName" => $request->input('name'),
                                        "Surname" => ""
                                    ],
                                    "Telephone" => [
                                        "PhoneNumber" => $request->input('mobile'),
                                    ],
                                    "Email" => $request->input('email'),
                                    "Address" => [
                                        "AddressLine" => [
                                            $request->input('address1') ?? '',
                                            $request->input('address2') ?? ''
                                        ],
                                        "CityName" => $citydata->cityname,
                                        "PostalCode" => $citydata->zipcode,
                                        "StateProv" => $statedata->name,
                                        "CountryName" => $countries->name
                                    ]
                                ],
                                "PrimaryIndicator" => "1"
                            ]
                        ],
                        "ResGlobalInfo" => [
                            "UniqueID" => [
                                "ID" => $guestprof
                            ],
                            "BasicPropertyInfo" => [
                                "HotelCode" => $channelenviro->eglobepropertyid,
                                "HotelName" => $compdt->comp_name
                            ],
                            "Source" => [
                                "RequestorID" => [
                                    "ID" => "EXT_PMS_CODE",
                                    "Type" => "ChannelManager"
                                ],
                                "BookingChannel" => [
                                    "Type" => "OTA",
                                    "CompanyName" => "EXT PMS NAME",
                                    "CompanyCode" => ""
                                ]
                            ],
                            "CreateDateTime" => $formatted_date,
                            "ResStatus" => "Commit",
                            "TimeSpan" => [
                                "Start" => $request->input('arrivaldate1'),
                                "End" => $request->input('checkoutdate1')
                            ],
                            "GuestCounts" => [
                                [
                                    "AgeQualifyingCode" => "10",
                                    "Count" => $request->input('adult1')
                                ],
                                [
                                    "AgeQualifyingCode" => "8",
                                    "Count" => $request->input('child1')
                                ]
                            ],
                            "Total" => [
                                "OtherCharges" => [
                                    [
                                        "ChargeDesc" => "Airport Pickup",
                                        "AmountBeforeTax" => 0,
                                        "AmountAfterTax" => 0
                                    ],
                                    [
                                        "ChargeDesc" => "Airport Drop",
                                        "AmountBeforeTax" => 0,
                                        "AmountAfterTax" => 0
                                    ]
                                ],
                                "Taxes" => [
                                    "Tax" => [
                                        "Amount" => str_replace(',', '', number_format($sumtotalamtaftertax - $sumtotalamt, 2)),
                                    ]
                                ],
                                "AmountBeforeTax" => str_replace(',', '', number_format($sumtotalamt, 2)),
                                "AmountAfterTax" => str_replace(',', '', number_format($sumtotalamtaftertax, 2)),
                                "CurrencyCode" => "INR"
                            ],
                            "PaymentTypeInfo" => [
                                "PaymentType" => "PayAtHotel",
                                "PartialPaymentAmount" => 0.00
                            ],
                            "SpecialRequests" => [""]
                        ]
                    ];

                    // echo json_encode($postdata);

                    // echo '<pre>';
                    // print_r($postdata);
                    // echo '</pre>'; 
                    // return $postdata;
                    // exit;

                    $apiurl = "$channelenviro->url/webapichannelmanager/extpms/bookings/notif";
                    $eglobecurl = curl_init($apiurl);
                    curl_setopt($eglobecurl, CURLOPT_RETURNTRANSFER, true);
                    curl_setopt($eglobecurl, CURLOPT_POST, true);
                    curl_setopt($eglobecurl, CURLOPT_HTTPHEADER, [
                        "Content-Type: application/json",
                        "Authorization: $channelenviro->authorization",
                        "ProviderCode: $channelenviro->providercode",
                        "User-Agent: AnalysisHMS-PMS/1.0"
                    ]);
                    curl_setopt($eglobecurl, CURLOPT_POSTFIELDS, json_encode($postdata));
                    $response = curl_exec($eglobecurl);
                    // $response = 451;
                    $httpcode = curl_getinfo($eglobecurl, CURLINFO_HTTP_CODE);

                    $datas = [
                        'apiurl' => $apiurl,
                        'response' => $response,
                        'httpcode' => $httpcode
                    ];

                    $channelpushes = [
                        'propertyid' => $this->propertyid,
                        'eglobepropertyid' => $channelenviro->eglobepropertyid,
                        'name' => $channelenviro->name,
                        'url' => $channelenviro->url,
                        'username' => $channelenviro->username,
                        'password' => $channelenviro->password,
                        'apikey' => $channelenviro->apikey,
                        'authorization' => $channelenviro->authorization,
                        'providercode' => $channelenviro->providercode,
                        'checkyn' => $channelenviro->checkyn,
                        'postdata' => json_encode($postdata),
                        'response' => $response,
                        'httpcode' => $httpcode,
                        'created_at' => now(),
                        'u_ae' => 'a',
                        'u_name' => Auth::user()->name
                    ];

                    ChannelPushes::insert($channelpushes);
                }
            }
            // DB::commit();
            // exit;

            DB::table('booking')->insert($bookingdata);
            DB::table('guestprof')->insert($guestproft);

            // Fetch records sorted properly
            $fetchedgrp = GrpBookinDetail::where('Property_ID', $this->propertyid)
                ->where('BookingDocid', $docid)
                ->orderBy('RoomNo', 'ASC')
                ->orderBy('Plan_Code', 'ASC')
                ->orderBy('id', 'ASC')
                ->get();

            foreach ($fetchedgrp as $grp) {
                $grp->update(['Sno' => 100000 + $grp->Sno]);
            }

            $counter = 1;
            foreach ($fetchedgrp as $grp) {
                $grp->update(['Sno' => $counter]);
                $counter++;
            }

            $fetchedplan = BookinPlanDetail::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->orderBy('roomno', 'ASC')
                ->orderBy('pcode', 'ASC')
                ->orderBy('id', 'ASC')
                ->get();

            foreach ($fetchedplan as $gplan) {
                $gplan->update(['sno1' => 100000 + $gplan->sno1]);
            }

            $counterp = 1;
            foreach ($fetchedplan as $gplan) {
                $gplan->update(['sno1' => $counterp]);
                $counterp++;
            }

            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->where('prefix', $vprefixyr)
                ->increment('start_srl_no');




            DB::commit();

            $chkgprof = GuestProf::where('guestcode', $guestprof)->where('propertyid', $this->propertyid)->first();
            $chkbooking = Bookings::where('DocId', $docid)->where('Property_ID', $this->propertyid)->first();

            if (!$chkgprof) {
                BookinPlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->delete();
                GrpBookinDetail::where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->delete();
                Bookings::where('Property_ID', $this->propertyid)->where('DocId', $docid)->delete();
                DB::rollBack();
                return response()->json([
                    'redirecturl' => 'Reservation',
                    'status' => 'error',
                    'message' => 'Unable to insert data in Guest Profile Please Try Again',
                ]);
            }

            if (!$chkbooking) {
                BookinPlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->delete();
                GrpBookinDetail::where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->delete();
                GuestProf::where('guestcode', $guestprof)->where('propertyid', $this->propertyid)->delete();
                DB::rollBack();
                return response()->json([
                    'redirecturl' => 'Reservation',
                    'status' => 'error',
                    'message' => 'Unable to insert data in Booking Please Try Again',
                ]);
            }

            if ($planrowcount > 0) {
                $insertedplanb = BookinPlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->count();

                if ($insertedplanb < $planrowcount) {
                    BookinPlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->delete();
                    GrpBookinDetail::where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->delete();
                    Bookings::where('Property_ID', $this->propertyid)->where('DocId', $docid)->delete();
                    GuestProf::where('guestcode', $guestprof)->where('propertyid', $this->propertyid)->delete();
                    DB::rollBack();
                    return response()->json([
                        'redirecturl' => 'Reservation',
                        'status' => 'error',
                        'message' => 'Unable to insert data in Booking Plan Details Please Try Again',
                    ]);
                }
            }

            $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

            if ($wpenv != null) {
                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->reservation != '' &&
                    $wpenv->reservationarray != '' &&
                    $wpenv->reservationtemplate != '' &&
                    $request->mobile != ''
                ) {
                    $reservationarray = json_decode($wpenv->reservationarray, true);

                    $msgdata = [];
                    foreach ($reservationarray as $row) {
                        [$colname, $table] = $row;
                        if (endsWith($colname, 'sum')) {
                            $value = DB::table($table)->where('propertyid', $this->propertyid)->where('refdocid', $docid)->sum(removeSuffixIfExists($colname, 'sum'));
                        } else {
                            if ($colname == 'RoomCat') {
                                $rcode = DB::table($table)->where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->value($colname);
                                $value = RoomCat::where('propertyid', $this->propertyid)->where('cat_code', $rcode)->value('name');
                            } else {
                                $value = DB::table($table)->where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->value($colname);
                            }
                        }
                        $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $docid)->value('mobile_no');
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $whatsapp->MuzzTech($msgdata, $mob, 'Reservation', 'reservationtemplate');
                }

                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->adminreservation != '' &&
                    $wpenv->adminreservationarray != '' &&
                    $wpenv->adminreservationtemplate != '' &&
                    $wpenv->managementmob != ''
                ) {
                    $adminreservationarray = json_decode($wpenv->adminreservationarray, true);

                    $msgdata = [];
                    foreach ($adminreservationarray as $row) {
                        [$colname, $table] = $row;
                        if (endsWith($colname, 'sum')) {
                            $value = DB::table($table)->where('propertyid', $this->propertyid)->where('refdocid', $docid)->sum(removeSuffixIfExists($colname, 'sum'));
                        } else {
                            $value = DB::table($table)->where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->value($colname);
                        }
                        $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $docid)->value('mobile_no');
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $whatsapp->MuzzTech($msgdata, $wpenv->managementmob, 'Reservation Admin', 'adminreservationtemplate');
                }
            }


            // return 'success';

            if ($advdepositcheckbox == 'on') {
                $coded = base64_encode($docid);
                return response()->json([
                    'redirecturl' => 'advancedeposit?docid=' . $coded,
                    'status' => 'success',
                    'message' => 'Reservation Added successfully!',
                ]);
            } elseif ($request->page_source) {
                return response()->json([
                    'redirecturl' => $request->page_source,
                    'status' => 'success',
                    'message' => 'Reservation Updated successfully!',
                ]);
            } else {
                return response()->json([
                    'redirecturl' => 'openlookuproom',
                    'status' => 'success',
                    'message' => 'Reservation Added successfully!',
                ]);
            }
        } catch (Exception $e) {
            DB::rollBack();
            // return $e->getMessage() . ' On Line: ' . $e->getLine();
            return response()->json([
                'redirecturl' => '',
                'status' => 'error',
                'message' => 'Unknown error occurred: ' . $e->getMessage() . ' On Line: ' . $e->getLine(),
            ]);
        }
    }
}
