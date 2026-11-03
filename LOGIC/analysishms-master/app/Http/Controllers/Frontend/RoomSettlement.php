<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Helpers\WhatsappSend;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Paycharge;
use App\Models\Revmast;
use App\Models\RoomMast;
use App\Models\GuestProf;
use App\Models\EnviroWhatsapp;
use App\Models\GrpBookinDetail;
use App\Models\RoomOcc;
use App\Models\VoucherPrefix;
use Illuminate\Support\Facades\Auth;
use Exception;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Jobs\SyncInventoryJob;

use function App\Helpers\endsWith;

class RoomSettlement extends Controller
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

    public function submitRoomSettle(Request $request)
    {
        // Validate incoming request
        $request->validate([
            'charge' => 'required',
            'amount' => 'required',
        ]);

        // Constants and frequently used values
        $propertyId = $this->propertyid;
        $docId = $request->input('docid');
        $sno = $request->input('sno');
        $sno1Main = $request->input('sno1main');
        $amount = $request->input('amount');
        $voucherType = 'REC';
        $currentDate = $this->ncurdate;
        $currentTime = $this->currenttime;
        $userName = Auth::user()->u_name;
        $currentHour = $request->input('curtime');

        // return 'jj';

        // Begin transaction to ensure data integrity
        DB::beginTransaction();

        try {
            // Get voucher prefix information
            $voucherPrefix = VoucherPrefix::where('propertyid', $propertyId)
                ->where('v_type', $voucherType)
                ->whereDate('date_from', '<=', $currentDate)
                ->whereDate('date_to', '>=', $currentDate)
                ->first();

            if (!$voucherPrefix) {
                throw new \Exception('Voucher prefix not found');
            }

            $voucherNumber = $voucherPrefix->start_srl_no + 1;
            $prefix = $voucherPrefix->prefix;
            $generatedDocId = $propertyId . $voucherType . ' ‎ ‎' . $prefix . ' ‎  ‎ ' . $voucherNumber;

            // Get room occupancy information
            $roomOccupancy = DB::table('roomocc')
                ->where('propertyid', $propertyId)
                ->where('docid', $docId)
                ->where('sno', $sno)
                ->where('sno1', $sno1Main)
                ->first();

            if (!$roomOccupancy) {
                throw new Exception('Room occupancy record not found');
            }

            $checkoutDate = Carbon::parse($currentDate)->toDateString();

            $roomOccupancySnapshot = [
                'id' => $roomOccupancy->id ?? null,
                'roomcat' => $roomOccupancy->roomcat,
                'chkindate' => Carbon::parse($roomOccupancy->chkindate)->toDateString(),
                'depdate' => Carbon::parse($roomOccupancy->depdate)->toDateString(),
                'checkoutdate' => $checkoutDate,
            ];

            // Common update arrays
            $payChargeUpdate = [
                'settledate' => $currentDate,
                'updated_at' => $currentTime,
            ];

            $roomOccUpdate = [
                'userchkoutdate' => $currentDate,
                'chkoutuser' => $userName,
                'type' => 'O',
                'chkoutdate' => $currentDate,
                'u_ae' => 'e',
                'chkouttime' => $currentHour,
                'updated_at' => $currentTime,
            ];

            $grpBookingUpdate = [
                'chkoutyn' => 'Y',
                'U_AE' => 'e',
                'updated_at' => $currentTime,
            ];

            // Process leader room or individual room
            $leaderId = null;
            $billNumber = null;

            $leaderRoomOcc = RoomOcc::where('propertyid', $propertyId)
                ->where('docid', $docId)
                ->where('leaderyn', 'Y')
                ->first();

            // return $leaderRoomOcc;
            $leaderRoomSnapshots = collect();

            if ($leaderRoomOcc) {
                $leaderId = $leaderRoomOcc->sno1;

                $leaderRoomSnapshots = RoomOcc::where('propertyid', $propertyId)
                    ->where('docid', $leaderRoomOcc->docid)
                    ->get([
                        'id',
                        'docid',
                        'sno',
                        'sno1',
                        'roomcat',
                        'chkindate',
                        'depdate',
                        'roomno',
                    ]);

                $chkrelatedgroup1 = Paycharge::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $leaderRoomOcc->docid)
                    ->where('msno1', $leaderId)
                    ->groupBy('relatedfolionodocid')
                    ->get();

                $chkrelatedgroup = Paycharge::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $leaderRoomOcc->docid)
                    ->where('msno1', $leaderId)
                    ->whereNotNull('relatedfolionodocid')
                    ->where('relatedfolionodocid', '!=', '')
                    ->groupBy('relatedfolionodocid')
                    ->first();

                $relatedDocIds = collect();

                if ($chkrelatedgroup) {
                    $relatedDocIds = $chkrelatedgroup1
                        ->pluck('relatedfolionodocid')
                        ->filter()
                        ->unique()
                        ->values();

                    $relatedRoomSnapshots = RoomOcc::where('propertyid', $propertyId)
                        ->whereIn('docid', $relatedDocIds)
                        ->get([
                            'id',
                            'docid',
                            'sno',
                            'sno1',
                            'roomcat',
                            'chkindate',
                            'depdate',
                            'roomno',
                        ]);

                    $leaderRoomSnapshots = $leaderRoomSnapshots
                        ->concat($relatedRoomSnapshots)
                        ->unique('id')
                        ->values();
                }

                $tbl = DB::table('paycharge')
                    ->select(DB::raw('SUM(amtdr) as amtdr'), DB::raw('SUM(amtcr) as amtcr'), DB::raw('(SUM(amtdr) - SUM(amtcr)) as balance'))
                    ->where('folionodocid', $request->input('docid'))
                    ->where('msno1', $leaderRoomOcc->sno1)
                    ->first();
                // var_dump($chkrelatedgroup);
                // exit;

                $checkedrooms = RoomOcc::where('propertyid', $this->propertyid)
                    ->where('docid', $leaderRoomOcc->docid)
                    ->get();

                if ($checkedrooms) {
                    foreach ($checkedrooms as $row) {
                        RoomMast::where('propertyid', $this->propertyid)
                            ->where('rcode', $row->roomno)->where('type', 'RO')
                            ->where('inclcount', 'Y')
                            ->update(['room_stat' => 'D']);
                    }
                }

                if (is_null($chkrelatedgroup)) {
                    // echo 'leaderempty';
                    // exit;
                    RoomOcc::where('propertyid', $propertyId)
                        ->where('docid', $leaderRoomOcc->docid)
                        ->where(function ($q) {
                            $q->whereNull('type')
                                ->orWhere('type', 'O');
                        })
                        ->update($roomOccUpdate);

                    GrpBookinDetail::where('Property_ID', $propertyId)
                        ->where('ContraDocId', $leaderRoomOcc->docid)
                        ->update($grpBookingUpdate);
                } else {
                    // echo 'leadernotempty';
                    // exit;
                    $relatedDocIds = $chkrelatedgroup1->pluck('relatedfolionodocid');

                    RoomOcc::where('propertyid', $propertyId)
                        ->whereIn('docid', $relatedDocIds)
                        ->where(function ($q) {
                            $q->whereNull('type')
                                ->orWhere('type', 'O');
                        })
                        ->update($roomOccUpdate);

                    GrpBookinDetail::where('Property_ID', $propertyId)
                        ->whereIn('ContraDocId', $relatedDocIds)
                        ->update($grpBookingUpdate);
                }

                // return 'sagar';

                $billNumber = Paycharge::where('folionodocid', $leaderRoomOcc->docid)
                    ->where('msno1', $leaderId)
                    ->value('billno');

                Paycharge::where('propertyid', $propertyId)
                    ->where('folionodocid', $leaderRoomOcc->docid)
                    ->where('msno1', $leaderId)
                    ->update($payChargeUpdate);

                $rooms = DB::table('roomocc')
                    ->where('propertyid', $propertyId)
                    ->where('docid', $leaderRoomOcc->docid)
                    ->get();

                foreach ($rooms as $row) {
                    RoomMast::where('propertyid', $this->propertyid)->where('rcode', $row->roomno)->where('type', 'RO')->where('inclcount', 'Y')
                        ->update(['room_stat' => 'D']);
                }
            } else {
                // echo 'nonleader';
                // exit;
                $tbl = DB::table('paycharge')
                    ->select(DB::raw('SUM(amtdr) as amtdr'), DB::raw('SUM(amtcr) as amtcr'), DB::raw('(SUM(amtdr) - SUM(amtcr)) as balance'))
                    ->where('folionodocid', $request->input('docid'))
                    ->where('sno1', $request->input('sno1main'))
                    ->first();
                $billNumber = DB::table('paycharge')
                    ->where('folionodocid', $docId)
                    ->where('sno1', $sno1Main)
                    ->value('billno');

                DB::table('paycharge')
                    ->where('propertyid', $propertyId)
                    ->where('folionodocid', $docId)
                    ->where('sno1', $sno1Main)
                    ->update($payChargeUpdate);

                DB::table('roomocc')
                    ->where('propertyid', $propertyId)
                    ->where('docid', $docId)
                    ->where('sno1', $sno1Main)
                    ->where('sno', $sno)
                    ->where(function ($q) {
                        $q->whereNull('type')
                            ->orWhere('type', 'O');
                    })
                    ->update($roomOccUpdate);

                $checkedrooms = RoomOcc::where('propertyid', $this->propertyid)
                    ->where('docid', $docId)
                    ->where('sno1', $sno1Main)
                    ->where('sno', $sno)
                    ->get();

                if ($checkedrooms) {
                    foreach ($checkedrooms as $row) {
                        RoomMast::where('propertyid', $this->propertyid)
                            ->where('rcode', $row->roomno)->where('type', 'RO')
                            ->where('inclcount', 'Y')
                            ->update(['room_stat' => 'D']);
                    }
                }

                GrpBookinDetail::where('Property_ID', $propertyId)
                    ->where('ContraDocId', $docId)
                    ->where('ContraSno', $sno1Main)
                    ->update($grpBookingUpdate);

                $rooms = DB::table('roomocc')
                    ->where('propertyid', $propertyId)
                    ->where('docid', $docId)
                    ->where('sno1', $sno1Main)
                    ->where('sno', $sno)
                    ->get();

                foreach ($rooms as $row) {
                    RoomMast::where('propertyid', $this->propertyid)->where('rcode', $row->roomno)->where('type', 'RO')->where('inclcount', 'Y')
                        ->update(['room_stat' => 'D']);
                }
            }

            // return 'sagar';

            // Update bill details
            DB::table('fombilldetails')
                ->where('folionodocid', $docId)
                ->where('billno', $billNumber)
                ->update(['settamt' => $amount]);

            // Process payment charges
            $chargeCount = 0;
            foreach ($request->input() as $key => $value) {
                if (strpos($key, 'chargecode') === 0) {
                    $chargeCount++;
                }
            }

            $serialNumber = 1;
            $chargeEntries = [];

            for ($i = 1; $i <= $chargeCount; $i++) {
                $chargeCode = $request->input('chargecode' . $i);
                $chargeAmount = $request->input('amtrow' . $i);

                // Skip empty rows
                if (empty($chargeCode) || empty($chargeAmount) || $chargeAmount == 0) {
                    continue;
                }

                $payCodeInfo = Revmast::where('propertyid', $propertyId)
                    ->where('rev_code', $chargeCode)
                    ->first();

                if (!$payCodeInfo) {
                    continue;
                }

                if ($chargeCode == "ROOM{$this->propertyid}") {
                    $roomnoval = $request->input('roomnoval' . $i);

                    if (empty($roomnoval)) {
                        return back()->with('error', 'Room charge cannot be added as room number is provided in the charge details. Please remove room number from charge details to proceed.');
                    }

                    $roomoccrval = Roomocc::where('propertyid', $propertyId)
                        ->where('roomno', $roomnoval)
                        ->whereNull('chkoutdate')
                        ->whereNull('type')
                        ->first();

                    $chargeEntries[] = [
                        'propertyid' => $propertyId,
                        'docid' => $generatedDocId,
                        'vno' => $voucherNumber,
                        'vtype' => $voucherType,
                        'sno' => $serialNumber,
                        'sno1' => $sno1Main,
                        'msno1' => $leaderId ?? 0,
                        'chqno' => '',
                        'cardno' => $request->input('crnumber'),
                        'cardholder' => '',
                        'expdate' => $request->input('expdatecr'),
                        'bookno' => '',
                        'vdate' => $currentDate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $prefix,
                        'comp_code' => '',
                        'paycode' => $chargeCode,
                        'paytype' => $payCodeInfo->pay_type ?? '',
                        'comments' => "Room Adjustment for Room No: {$roomoccrval->roomno}",
                        'guestprof' => $roomoccrval->guestprof,
                        'roomno' => $roomOccupancy->roomno,
                        'amtcr' => 0.00,
                        'amtdr' => $chargeAmount,
                        'roomtype' => $roomOccupancy->roomtype,
                        'roomcat' => $roomOccupancy->roomcat,
                        'foliono' => $roomoccrval->folioNo,
                        'restcode' => 'FOM' . $propertyId,
                        'billamount' => 0.00,
                        'taxper' => 0,
                        'onamt' => 0.00,
                        'folionodocid' => $roomoccrval->docid,
                        'taxcondamt' => 0,
                        'taxstru' => '',
                        'created_at' => $currentTime,
                        'settledate' => null,
                        'u_name' => $userName,
                        'u_ae' => 'a',
                        'modeset' => '',
                    ];

                    $serialNumber++;
                }

                // return 'sagar';

                $chargeEntries[] = [
                    'propertyid' => $propertyId,
                    'docid' => $generatedDocId,
                    'vno' => $voucherNumber,
                    'vtype' => $voucherType,
                    'sno' => $serialNumber,
                    'sno1' => $sno1Main,
                    'msno1' => $leaderId ?? 0,
                    'chqno' => $request->input('checkno') ?: $request->input('referencenoupi'),
                    'cardno' => $request->input('crnumber'),
                    'cardholder' => $request->input('holdername'),
                    'expdate' => $request->input('expdatecr'),
                    'bookno' => $request->input('batchno'),
                    'vdate' => $currentDate,
                    'vtime' => date('H:i:s'),
                    'vprefix' => $prefix,
                    'comp_code' => $request->input('compcode' . $i) ?? '',
                    'paycode' => $chargeCode,
                    'paytype' => $payCodeInfo->pay_type ?? '',
                    'comments' => $request->input('chargenarration' . $i),
                    'guestprof' => $roomOccupancy->guestprof,
                    'roomno' => $request->input('rooomoccroomno') ?? $roomOccupancy->roomno,
                    'amtdr' => 0.00,
                    'amtcr' => $chargeAmount,
                    'roomtype' => $roomOccupancy->roomtype,
                    'roomcat' => $roomOccupancy->roomcat,
                    'foliono' => $roomOccupancy->folioNo,
                    'restcode' => 'FOM' . $propertyId,
                    'billamount' => 0.00,
                    'taxper' => 0,
                    'onamt' => 0.00,
                    'folionodocid' => $roomOccupancy->docid,
                    'taxcondamt' => 0,
                    'taxstru' => '',
                    'created_at' => $currentTime,
                    'settledate' => $currentDate,
                    'u_name' => $userName,
                    'u_ae' => 'a',
                    'modeset' => 'S',
                ];

                $serialNumber++;
            }


            // Bulk insert charge entries for better performance
            if (!empty($chargeEntries)) {
                DB::table('paycharge')->insert($chargeEntries);
            }
            // dd($chargeEntries);

            // Verify inserted records match expected count
            $expectedRows = $request->input('countrows');
            $actualRows = Paycharge::select('paycharge.*', 'revmast.name as revname')
                ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.propertyid', $propertyId)
                ->where('paycharge.folionodocid', $roomOccupancy->docid)
                ->where('vtype', $voucherType)
                ->whereNotNull('paycharge.paycode')
                ->whereNotNull('paycharge.paytype')
                ->whereNotNull('paycharge.modeset')
                ->where('sno1', $sno1Main)
                ->whereNot('paycharge.amtcr', 0)
                ->count();
            VoucherPrefix::where('propertyid', $propertyId)
                ->where('v_type', $voucherType)
                ->where('prefix', $prefix)
                ->increment('start_srl_no');

            $guestprof = GuestProf::where('propertyid', $propertyId)
                ->where('docid', $docId)->first();

            // exit;
            DB::commit();

            if (channelparameter()->checkyn == 'Y') {
                // Sync inventory only from the current hotel date onward.
                $checkoutDate = Carbon::parse($currentDate)->startOfDay();
                $inventorySyncRooms = collect();

                if ($leaderRoomOcc) {
                    if ($chkrelatedgroup) {
                        // Related folio rooms are checked out in this branch.
                        $inventorySyncRooms = $leaderRoomSnapshots
                            ->whereIn('docid', $relatedDocIds)
                            ->values();
                    } else {
                        // Main folio rooms are checked out in this branch.
                        $inventorySyncRooms = $leaderRoomSnapshots
                            ->where('docid', $docId)
                            ->values();
                    }
                } else {
                    // Normal checkout: only the selected room.
                    $inventorySyncRooms = collect([
                        (object) [
                            'roomcat' => $roomOccupancySnapshot['roomcat'],
                            'chkindate' => $roomOccupancySnapshot['chkindate'],
                            'depdate' => $roomOccupancySnapshot['depdate'],
                        ],
                    ]);
                }

                foreach ($inventorySyncRooms as $room) {
                    $departureDate = Carbon::parse($room->depdate)->startOfDay();

                    // Never sync dates before the current hotel date.
                    if ($departureDate->lt($checkoutDate)) {
                        continue;
                    }

                    // Refresh only the current date if checkout is on the scheduled
                    // departure date. For early checkout, refresh through departure date.
                    SyncInventoryJob::dispatch(
                        $room->roomcat,
                        $room->roomcat,
                        $checkoutDate->toDateString(),
                        $checkoutDate->toDateString(),
                        $departureDate->toDateString(),
                        $departureDate->toDateString(),
                        $propertyId,
                        $userName,
                        true
                    );
                }
            }

            $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

            if ($wpenv != null) {
                if (whatsappparameter()->checkyn == 'Y') {
                    if (whatsappparameter()->sendpdfcheckout == 1) {
                        $printData = buildPrintDataFOM($docId, $sno, $sno1Main);

                        if ($printData) {
                            $timestamp = now()->format('Y-m-d_H-i-s');
                            $filename = 'FomBill_' . '_' . $timestamp . '.pdf';

                            try {
                                $pdf = Pdf::loadView('property.prints.fom.billprint_pdf', $printData)
                                    ->setPaper('a4', 'portrait')
                                    ->setOption('isHtml5ParserEnabled', true)
                                    ->setOption('isRemoteEnabled', true)
                                    ->setOption('defaultFont', 'Arial')
                                    ->setOption('dpi', 96)
                                    ->setOption('enable_php', false)
                                    ->setOption('enable_javascript', false)
                                    ->setOption('margin-top', 0)
                                    ->setOption('margin-bottom', 0)
                                    ->setOption('margin-left', 0)
                                    ->setOption('margin-right', 0);

                                // return $pdf->download('fombill.pdf');
                                $pdfContent = $pdf->output();

                                $whatsapp = new WhatsappSend();
                                $whatsapp->sendPdfToApiDynamic($filename, $pdfContent, $docId, $printData['invoiceno'], $printData['netamount'], $printData['paidss'], $printData['fombilldetail'], $printData['guest']);
                            } catch (Exception $e) {
                                logData('FOM PDF SEND RoomSettlement File', $e->getMessage(), $this->propertyid, Auth::user()->name, $e->getLine(), $e->getFile());
                            }
                        }
                    }
                }

                $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $roomOccupancy->docid)->value('mobile_no');
                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->checkoutmsg != '' &&
                    $wpenv->checkoutmsgarray != '' &&
                    $wpenv->checkouttemplate != '' &&
                    $mob != ''
                ) {
                    $checkoutmsgarray = json_decode($wpenv->checkoutmsgarray, true);

                    $msgdata = [];
                    foreach ($checkoutmsgarray as $row) {
                        [$colname, $table] = $row;
                        if (endsWith($colname, 'billamount')) {
                            $value = $tbl->balance;
                        } else {
                            $value = DB::table($table)->where('sno', $sno)->where('sno1', $sno1Main)->where('propertyid', $this->propertyid)->where('docid', $roomOccupancy->docid)->value($colname);
                        }
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $whatsapp->MuzzTech($msgdata, $mob, 'Checkout', 'checkouttemplate');
                }

                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->checkoutmsgadmin != '' &&
                    $wpenv->checkoutmsgadminarray != '' &&
                    $wpenv->checkoutmsgadmintemplate != '' &&
                    $wpenv->managementmob != ''
                ) {
                    $checkoutmsgadminarray = json_decode($wpenv->checkoutmsgadminarray, true);

                    $msgdata = [];
                    foreach ($checkoutmsgadminarray as $row) {
                        [$colname, $table] = $row;
                        if (endsWith($colname, 'billamount')) {
                            $value = $tbl->balance;
                        } else {
                            if ($table == 'paycharge') {
                                $value = DB::table($table)->where('vtype', 'REC')->where('sno', $sno)->where('sno1', $sno1Main)->where('propertyid', $this->propertyid)->where('folionodocid', $roomOccupancy->docid)->value($colname);
                            } else {
                                $value = DB::table($table)->where('sno', $sno)->where('sno1', $sno1Main)->where('propertyid', $this->propertyid)->where('docid', $roomOccupancy->docid)->value($colname);
                            }
                        }
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $whatsapp->MuzzTech($msgdata, $wpenv->managementmob, 'Checkout Admin', 'checkoutmsgadmintemplate');
                }
            }

            return redirect('autorefreshmain');
        } catch (\Exception $e) {
            DB::rollback();
            return back()->with('error', 'Unable To Submit Room Re Settlement: ' . $e->getMessage());
        }
    }
}
