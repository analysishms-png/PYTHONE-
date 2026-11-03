<?php

namespace App\Helpers;

use App\Models\Bookings;
use App\Models\ChannelEnviro;
use App\Models\ChannelPushes;
use App\Models\GrpBookinDetail;
use App\Models\GuestProf;
use App\Models\PlanMast;
use App\Models\RoomCat;
use DateTime;
use App\Models\Companyreg as Company;
use App\Models\RoomOcc;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ResHelper
{
    protected $propertyid;

    public function __construct()
    {
        $this->propertyid = Auth::user()->propertyid;
    }

    public static function UpdateCancel($docid, $bookingid)
    {
        try {
            DB::beginTransaction();
            $propertyid = Auth::user()->propertyid;
            $guestprof = GuestProf::where('propertyid', $propertyid)->where('docid', $docid)->first();
            $booking = Bookings::where('Property_ID', $propertyid)->where('DocId', $docid)->first();
            $countries = DB::table('countries')->where('propertyid', $propertyid)->where('country_code', $guestprof->country_code)->first();
            $citydata = DB::table('cities')->where('propertyid', $propertyid)->where('city_code', $guestprof->city)->first();
            $statedata = DB::table('states')->where('propertyid', $propertyid)->where('state_code', $guestprof->state_code)->first();
            $channelenviro = ChannelEnviro::where('propertyid', $propertyid)->first();
            $compdt = Company::where('propertyid', $propertyid)->first();
            $allres = GrpBookinDetail::select('grpbookingdetails.*', 'bookingplandetails.netplanamt')
                ->leftJoin('bookingplandetails', function ($join) {
                    $join->on('bookingplandetails.docid', '=', 'grpbookingdetails.BookingDocid')
                        ->on('bookingplandetails.sno1', '=', 'grpbookingdetails.Sno');
                })
                ->where('grpbookingdetails.Property_ID', $propertyid)->where('grpbookingdetails.BookingDocid', $docid)
                ->get();

            $postdataeglobearray = [];
            $arrdateorg = '';
            $depsdateorg = '';
            $sumtotalamt = 0.00;
            $sumtotalamtaftertax = 0.00;
            foreach ($allres as $row) {
                $roomcat = RoomCat::where('propertyid', $propertyid)->where('cat_code', $row->RoomCat)->first();
                $plandata = PlanMast::where('propertyid', $propertyid)->where('pcode', $row->Plan_Code)->first();
                $arrdateorg = $row->ArrDate;
                $depsdateorg = $row->DepDate;
                $arrdate = new DateTime($row->ArrDate);
                $depsdate = new DateTime($row->DepDate);

                $croomrate = $row->netplanamt;
                $interval = $arrdate->diff($depsdate);
                $diffcount = $interval->days;
                $amountbeforesum = 0.00;
                $amountaftersum = 0.00;
                $tmparrdate = clone $arrdate->modify("-1 day");
                if ($croomrate < 7500) {
                    $txpr = 12;
                } else {
                    $txpr = 18;
                }

                if ($row->IncTax == 'Y') {
                    $ct = $croomrate * 100;
                    $amountbeforetax = (str_replace(',', '', number_format(($ct / (100 + $txpr)), 2)));
                    $amountvifergation = (str_replace(',', '', number_format($amountbeforetax, 2)) * $txpr) / 100;
                    $amountaftertax = str_replace(',', '', number_format($amountbeforetax, 2)) + $amountvifergation;
                } else {
                    $amountbeforetax = $croomrate;
                    $amountaftertax = ($croomrate * $txpr) / 100;
                }

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
                            "Count" => $row->Adults
                        ],
                        [
                            "AgeQualifyingCode" => "8",
                            "Count" => 0
                        ]
                    ],
                    "TimeSpan" => [
                        "Start" => $arrdateorg,
                        "End" => $depsdateorg
                    ],
                    "RoomRates" => $nightwise,
                    "Total" => [
                        "AmountBeforeTax" => str_replace(',', '', number_format($amountbeforesum, 2)),
                        "AmountAfterTax" => str_replace(',', '', number_format($amountaftersum, 2)),
                    ]
                ];
            }
            $ut = date('Y-m-d H:i:s');
            $date = new DateTime($ut);
            $formatted_date = $date->format('Y-m-d\TH:i:s');

            $postdata = [
                "RoomStays" => $postdataeglobearray,
                "ResGuests" => [
                    [
                        "Customer" => [
                            "PersonName" => [
                                "NamePrefix" => $guestprof->con_prefix,
                                "GivenName" => $guestprof->name,
                                "Surname" => ""
                            ],
                            "Telephone" => [
                                "PhoneNumber" => $guestprof->mobile_no ?? '',
                            ],
                            "Email" => $guestprof->email_id ?? '',
                            "Address" => [
                                "AddressLine" => [
                                    $guestprof->add1 ?? '',
                                    $guestprof->add2 ?? ''
                                ],
                                "CityName" => $citydata->cityname ?? '',
                                "PostalCode" => $citydata->zipcode ?? '',
                                "StateProv" => $statedata->name ?? '',
                                "CountryName" => $countries->name ?? ''
                            ]
                        ],
                        "PrimaryIndicator" => "1"
                    ]
                ],
                "ResGlobalInfo" => [
                    "UniqueID" => [
                        "ID" => $bookingid
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
                    "ResStatus" => "Cancel",
                    "TimeSpan" => [
                        "Start" => $arrdateorg,
                        "End" => $depsdateorg
                    ],
                    "GuestCounts" => [
                        [
                            "AgeQualifyingCode" => "10",
                            "Count" => 1
                        ],
                        [
                            "AgeQualifyingCode" => "8",
                            "Count" => 0
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
            $httpcode = curl_getinfo($eglobecurl, CURLINFO_HTTP_CODE);

            $channelpushes = [
                'propertyid' => $propertyid,
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
                'created_at' => date('Y-m-d H:i:s'),
                'u_ae' => 'a',
                'u_name' => Auth::user()->name
            ];

            ChannelPushes::insert($channelpushes);
            $arr = [
                'response' => $response,
                'httpcode' => $httpcode
            ];
            DB::commit();

            return $arr;
        } catch (Exception $e) {
            return 'Unknown Error: ' . $e->getMessage() . ', On Line: ' . $e->getLine();
        }
    }

    public static function updateammendstay($docid, $booking, $advanceamount)
    {
        try {
            DB::beginTransaction();
            $propertyid = Auth::user()->propertyid;
            $guestprof = GuestProf::where('propertyid', $propertyid)->where('docid', $docid)->first();
            $countries = DB::table('countries')->where('propertyid', $propertyid)->where('country_code', $guestprof->country_code)->first();
            $citydata = DB::table('cities')->where('propertyid', $propertyid)->where('city_code', $guestprof->city)->first();
            $statedata = DB::table('states')->where('propertyid', $propertyid)->where('state_code', $guestprof->state_code)->first();
            $channelenviro = ChannelEnviro::where('propertyid', $propertyid)->first();
            $compdt = Company::where('propertyid', $propertyid)->first();
            $allres = RoomOcc::select('roomocc.*', 'plandetails.netplanamt')
                ->leftJoin('plandetails', function ($join) {
                    $join->on('plandetails.docid', '=', 'roomocc.docid')
                        ->on('plandetails.sno1', '=', 'roomocc.sno1');
                })
                ->where('roomocc.propertyid', $propertyid)
                ->where('roomocc.docid', $docid)
                ->get();

            $postdataeglobearray = [];
            $arrdateorg = '';
            $depsdateorg = '';
            $sumtotalamt = 0.00;
            $sumtotalamtaftertax = 0.00;
            foreach ($allres as $row) {
                $roomcat = RoomCat::where('propertyid', $propertyid)->where('cat_code', $row->roomcat)->first();
                $plandata = PlanMast::where('propertyid', $propertyid)->where('pcode', $row->plancode)->first();
                $arrdateorg = $row->chkindate;
                $depsdateorg = $row->depdate;
                $arrdate = new DateTime($row->chkindate);
                $depsdate = new DateTime($row->depdate);

                $croomrate = $row->netplanamt;
                $interval = $arrdate->diff($depsdate);
                $diffcount = $interval->days;
                $amountbeforesum = 0.00;
                $amountaftersum = 0.00;
                $tmparrdate = clone $arrdate->modify("-1 day");
                if ($croomrate < 7500) {
                    $txpr = 12;
                } else {
                    $txpr = 18;
                }

                if ($row->IncTax == 'Y') {
                    $ct = $croomrate * 100;
                    $amountbeforetax = (str_replace(',', '', number_format(($ct / (100 + $txpr)), 2)));
                    $amountvifergation = (str_replace(',', '', number_format($amountbeforetax, 2)) * $txpr) / 100;
                    $amountaftertax = str_replace(',', '', number_format($amountbeforetax, 2)) + $amountvifergation;
                } else {
                    $amountbeforetax = $croomrate;
                    $amountaftertax = ($croomrate * $txpr) / 100;
                }

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
                            "Count" => $row->adult
                        ],
                        [
                            "AgeQualifyingCode" => "8",
                            "Count" => 0
                        ]
                    ],
                    "TimeSpan" => [
                        "Start" => $arrdateorg,
                        "End" => $depsdateorg
                    ],
                    "RoomRates" => $nightwise,
                    "Total" => [
                        "AmountBeforeTax" => str_replace(',', '', number_format($amountbeforesum, 2)),
                        "AmountAfterTax" => str_replace(',', '', number_format($amountaftersum, 2)),
                    ]
                ];
            }
            $ut = date('Y-m-d H:i:s');
            $date = new DateTime($ut);
            $formatted_date = $date->format('Y-m-d\TH:i:s');

            $postdata = [
                "RoomStays" => $postdataeglobearray,
                "ResGuests" => [
                    [
                        "Customer" => [
                            "PersonName" => [
                                "NamePrefix" => $guestprof->con_prefix,
                                "GivenName" => $guestprof->name,
                                "Surname" => ""
                            ],
                            "Telephone" => [
                                "PhoneNumber" => $guestprof->mobile_no ?? '',
                            ],
                            "Email" => $guestprof->email_id ?? '',
                            "Address" => [
                                "AddressLine" => [
                                    $guestprof->add1 ?? '',
                                    $guestprof->add2 ?? ''
                                ],
                                "CityName" => $citydata->cityname ?? '',
                                "PostalCode" => $citydata->zipcode ?? '',
                                "StateProv" => $statedata->name ?? '',
                                "CountryName" => $countries->name ?? ''
                            ]
                        ],
                        "PrimaryIndicator" => "1"
                    ]
                ],
                "ResGlobalInfo" => [
                    "UniqueID" => [
                        "ID" => $booking->RefBookNo,
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
                    "ResStatus" => "Modify",
                    "TimeSpan" => [
                        "Start" => $arrdateorg,
                        "End" => $depsdateorg
                    ],
                    "GuestCounts" => [
                        [
                            "AgeQualifyingCode" => "10",
                            "Count" => 1
                        ],
                        [
                            "AgeQualifyingCode" => "8",
                            "Count" => 0
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
                        "CurrencyCode" => "INR",
                        "PartialPaymentInfo" => [
                            "PartialAmount" => 1,
                            "BalanceAmount" => $advanceamount
                        ]
                    ],
                    "PaymentTypeInfo" => [
                        "PaymentType" => "PayAtHotel",
                        "PartialPaymentAmount" => 0.00
                    ],
                    "SpecialRequests" => [""]
                ]
            ];

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
            $httpcode = curl_getinfo($eglobecurl, CURLINFO_HTTP_CODE);

            $channelpushes = [
                'propertyid' => $propertyid,
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
                'created_at' => date('Y-m-d H:i:s'),
                'u_ae' => 'a',
                'u_name' => Auth::user()->name
            ];

            ChannelPushes::insert($channelpushes);
            $arr = [
                'response' => $response,
                'httpcode' => $httpcode
            ];
            DB::commit();

            return $arr;
        } catch (Exception $e) {
            return 'Unknown Error: ' . $e->getMessage() . ', On Line: ' . $e->getLine();
        }
    }

    public static function updateadvance($docid, $bookingid, $advanceamount)
    {
        try {
            DB::beginTransaction();
            $propertyid = Auth::user()->propertyid;
            $guestprof = GuestProf::where('propertyid', $propertyid)->where('docid', $docid)->first();
            $booking = Bookings::where('Property_ID', $propertyid)->where('DocId', $docid)->first();
            $countries = DB::table('countries')->where('propertyid', $propertyid)->where('country_code', $guestprof->country_code)->first();
            $citydata = DB::table('cities')->where('propertyid', $propertyid)->where('city_code', $guestprof->city)->first();
            $statedata = DB::table('states')->where('propertyid', $propertyid)->where('state_code', $guestprof->state_code)->first();
            $channelenviro = ChannelEnviro::where('propertyid', $propertyid)->first();
            $compdt = Company::where('propertyid', $propertyid)->first();
            $allres = GrpBookinDetail::select('grpbookingdetails.*', 'bookingplandetails.netplanamt')
                ->leftJoin('bookingplandetails', function ($join) {
                    $join->on('bookingplandetails.docid', '=', 'grpbookingdetails.BookingDocid')
                        ->on('bookingplandetails.sno1', '=', 'grpbookingdetails.Sno');
                })
                ->where('grpbookingdetails.Property_ID', $propertyid)->where('grpbookingdetails.BookingDocid', $docid)
                ->get();

            $postdataeglobearray = [];
            $arrdateorg = '';
            $depsdateorg = '';
            $sumtotalamt = 0.00;
            $sumtotalamtaftertax = 0.00;
            foreach ($allres as $row) {
                $roomcat = RoomCat::where('propertyid', $propertyid)->where('cat_code', $row->RoomCat)->first();
                $plandata = PlanMast::where('propertyid', $propertyid)->where('pcode', $row->Plan_Code)->first();
                $arrdateorg = $row->ArrDate;
                $depsdateorg = $row->DepDate;
                $arrdate = new DateTime($row->ArrDate);
                $depsdate = new DateTime($row->DepDate);

                $croomrate = $row->netplanamt;
                $interval = $arrdate->diff($depsdate);
                $diffcount = $interval->days;
                $amountbeforesum = 0.00;
                $amountaftersum = 0.00;
                $tmparrdate = clone $arrdate->modify("-1 day");
                if ($croomrate < 7500) {
                    $txpr = 12;
                } else {
                    $txpr = 18;
                }

                if ($row->IncTax == 'Y') {
                    $ct = $croomrate * 100;
                    $amountbeforetax = (str_replace(',', '', number_format(($ct / (100 + $txpr)), 2)));
                    $amountvifergation = (str_replace(',', '', number_format($amountbeforetax, 2)) * $txpr) / 100;
                    $amountaftertax = str_replace(',', '', number_format($amountbeforetax, 2)) + $amountvifergation;
                } else {
                    $amountbeforetax = $croomrate;
                    $amountaftertax = ($croomrate * $txpr) / 100;
                }

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
                            "Count" => $row->Adults
                        ],
                        [
                            "AgeQualifyingCode" => "8",
                            "Count" => 0
                        ]
                    ],
                    "TimeSpan" => [
                        "Start" => $arrdateorg,
                        "End" => $depsdateorg
                    ],
                    "RoomRates" => $nightwise,
                    "Total" => [
                        "AmountBeforeTax" => str_replace(',', '', number_format($amountbeforesum, 2)),
                        "AmountAfterTax" => str_replace(',', '', number_format($amountaftersum, 2)),
                    ]
                ];
            }
            $ut = date('Y-m-d H:i:s');
            $date = new DateTime($ut);
            $formatted_date = $date->format('Y-m-d\TH:i:s');

            $postdata = [
                "RoomStays" => $postdataeglobearray,
                "ResGuests" => [
                    [
                        "Customer" => [
                            "PersonName" => [
                                "NamePrefix" => $guestprof->con_prefix,
                                "GivenName" => $guestprof->name,
                                "Surname" => ""
                            ],
                            "Telephone" => [
                                "PhoneNumber" => $guestprof->mobile_no ?? '',
                            ],
                            "Email" => $guestprof->email_id ?? '',
                            "Address" => [
                                "AddressLine" => [
                                    $guestprof->add1 ?? '',
                                    $guestprof->add2 ?? ''
                                ],
                                "CityName" => $citydata->cityname ?? '',
                                "PostalCode" => $citydata->zipcode ?? '',
                                "StateProv" => $statedata->name ?? '',
                                "CountryName" => $countries->name ?? ''
                            ]
                        ],
                        "PrimaryIndicator" => "1"
                    ]
                ],
                "ResGlobalInfo" => [
                    "UniqueID" => [
                        "ID" => $bookingid
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
                    "ResStatus" => "Modify",
                    "TimeSpan" => [
                        "Start" => $arrdateorg,
                        "End" => $depsdateorg
                    ],
                    "GuestCounts" => [
                        [
                            "AgeQualifyingCode" => "10",
                            "Count" => 1
                        ],
                        [
                            "AgeQualifyingCode" => "8",
                            "Count" => 0
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
                        "CurrencyCode" => "INR",
                        "PartialPaymentInfo" => [
                            "PartialAmount" => 1,
                            "BalanceAmount" => $advanceamount
                        ]
                    ],
                    "PaymentTypeInfo" => [
                        "PaymentType" => "PayAtHotel",
                        "PartialPaymentAmount" => 0.00
                    ],
                    "SpecialRequests" => [""]
                ]
            ];

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
            $httpcode = curl_getinfo($eglobecurl, CURLINFO_HTTP_CODE);

            $channelpushes = [
                'propertyid' => $propertyid,
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
                'created_at' => date('Y-m-d H:i:s'),
                'u_ae' => 'a',
                'u_name' => Auth::user()->name
            ];

            ChannelPushes::insert($channelpushes);
            $arr = [
                'response' => $response,
                'httpcode' => $httpcode
            ];
            DB::commit();

            return $arr;
        } catch (Exception $e) {
            return 'Unknown Error: ' . $e->getMessage() . ', On Line: ' . $e->getLine();
        }
    }

    public static function updataincdnc($table, $type, $column)
    {
        try {
            DB::table($table)->where('propertyid', Auth::user()->propertyid)->$type($column);
            return true;
        } catch (Exception $e) {
            Log::info('Error while Updating: ' . $e->getMessage());
        }
    }
}


function startsWith($haystack, $needle)
{
    return substr($haystack, 0, strlen($needle)) === $needle;
}

function endsWith($haystack, $needle)
{
    return substr($haystack, -strlen($needle)) === $needle;
}

function removeSuffixIfExists($value, $suffix)
{
    if (substr($value, -strlen($suffix)) === $suffix) {
        return substr($value, 0, -strlen($suffix));
    }
    return $value;
}

function splitByJoin($value)
{
    $keyword = 'join';
    $pos = strpos($value, $keyword);
    if ($pos !== false) {
        return [
            'left' => substr($value, 0, $pos),
            'right' => substr($value, $pos + strlen($keyword)),
        ];
    }
    return false;
}
