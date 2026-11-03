<?php

namespace App\Http\Controllers\FrontOffice;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Helpers\ResHelper;
use App\Helpers\UpdateRepeat;
use App\Helpers\WhatsappSend;
use App\Models\ACGroup;
use App\Models\Bookings;
use App\Models\BookinPlanDetail;
use App\Models\ChannelEnviro;
use App\Models\ChannelPushes;
use App\Models\Cities;
use App\Models\CompanyDiscount;
use App\Models\FomBillDetail;
use App\Models\Happyhour;
use App\Models\PlanMast;
use App\Models\RoomInclusive;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\CompanyLog;
use App\Models\Companyreg;
use App\Models\Countries;
use App\Models\UserModule;
use App\Models\MenuHelp;
use App\Models\Paycharge;
use App\Models\UserPermission;
use App\Models\Items;
use App\Models\ItemMast;
use App\Models\ItemRate;
use App\Models\ItemCatMast;
use App\Models\ItemGrp;
use App\Models\Guestfolio;
use App\Models\Kot;
use App\Models\Revmast;
use App\Models\RoomMast;
use App\Models\GuestProf;
use App\Models\Sale1;
use App\Models\SubGroup;
use App\Models\Depart;
use App\Models\Depart1;
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroPos;
use App\Models\EnviroWhatsapp;
use App\Models\GrpBookinDetail;
use App\Models\GuestFolioProfDetail;
use App\Models\Ledger;
use App\Models\NightAuditLog;
use App\Models\PlanDetail;
use App\Models\PrintingSetup;
use App\Models\RoomBlockout;
use App\Models\RoomCat;
use App\Models\Sagar;
use App\Models\Stock;
use App\Models\RoomOcc;
use App\Models\Roomkey;
use App\Models\States;
use App\Models\SundryMast;
use App\Models\SundryTypeFix;
use App\Models\Suntran;
use App\Models\TaxStructure;
use App\Models\User;
use App\Models\VoucherPrefix;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use DateTime;
use Illuminate\Contracts\Pipeline\Pipeline;
use Illuminate\Support\Facades\Hash;
use Psr\Http\Client\NetworkExceptionInterface;
use Symfony\Component\Routing\Matcher\Dumper\MatcherDumper;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;
use App\Models\Kot as KotModal;
use App\Models\Remark;
use App\Models\Sundrytype;
use App\Services\AccountPosting;
use Illuminate\Support\Facades\Log;

use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;
use function PHPUnit\Framework\isNull;

class RoomStatus extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
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
            $this->propertyid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $this->propertyid)->first();
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

    public function inhouseroomstatus(Request $request)
    {
        $propertyId = $this->propertyid;
        $asOnDate = $this->ncurdate;
        $roomStatusCounts = $this->getRoomStatusCounts($propertyId, $asOnDate); // Get room status counts
        $getTodayArrivals = $this->getTodayArrivalByRoomCategory($propertyId, $asOnDate); // Get today's arrivals by room category
        return view('property.roomstatusinhouse', compact('roomStatusCounts', 'getTodayArrivals'));
    }

    public function getTodayArrivalByRoomCategory($propertyId, $arrivalDate)
    {
        return DB::table('room_cat as rc')
            ->leftJoin('grpbookingdetails as g', function ($q) use ($arrivalDate) {
                $q->on('g.RoomCat', '=', 'rc.cat_code')
                    ->on('g.Property_ID', '=', 'rc.propertyid')
                    ->where('g.ArrDate', $arrivalDate)
                    ->where('g.Cancel', 'N')
                    ->where('g.ContraDocId', '');
            })
            ->where('rc.propertyid', $propertyId)
            ->select(
                'rc.cat_code',
                'rc.name',
                DB::raw('COALESCE(SUM(g.RoomDet),0) AS total_rooms')
            )
            ->groupBy('rc.cat_code', 'rc.name')
            ->orderBy('rc.name')
            ->get();
    }

    public function todaysarrivals(Request $request)
    {
        $arrdate = ncurdate();
        $data = GrpBookinDetail::select(
            'grpbookingdetails.BookingDocid',
            'grpbookingdetails.Sno',
            'grpbookingdetails.BookNo',
            'grpbookingdetails.RoomCat',
            'grpbookingdetails.RoomNo',
            'grpbookingdetails.ArrDate',
            'grpbookingdetails.ArrTime',
            'grpbookingdetails.DepDate',
            'grpbookingdetails.DepTime',
            'grpbookingdetails.GuestProf',
            'grpbookingdetails.DepDate',
            'grpbookingdetails.GuestName as guestname',
            'room_cat.name as roomcatname',
            'guestprof.mobile_no',
            'booking.ResStatus'
        )
            ->join('booking', function ($join) {
                $join->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->where('booking.Property_ID', $this->propertyid);
            })
            ->leftjoin('guestprof', 'guestprof.guestcode', '=', 'grpbookingdetails.GuestProf')
            ->join('room_cat', 'grpbookingdetails.RoomCat', '=', 'room_cat.cat_code')
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->where('grpbookingdetails.ArrDate', $arrdate)
            ->where('grpbookingdetails.ContraDocId', '')
            ->where('grpbookingdetails.Cancel', 'N')
            ->groupBy('grpbookingdetails.BookingDocid', 'grpbookingdetails.Sno')
            ->get();

        return response()->json($data);
    }

    public function todaysarrivalsbydate(Request $request)
    {
        $arrdate = $request->date;
        $cat = $request->roomcat;

        $query = GrpBookinDetail::select(
            'grpbookingdetails.BookingDocid',
            'grpbookingdetails.Sno',
            'grpbookingdetails.BookNo',
            'grpbookingdetails.RoomCat',
            'grpbookingdetails.RoomNo',
            'grpbookingdetails.ArrDate',
            'grpbookingdetails.ArrTime',
            'grpbookingdetails.DepDate',
            'grpbookingdetails.DepTime',
            'grpbookingdetails.GuestProf',
            'grpbookingdetails.GuestName as guestname',
            'room_cat.name as roomcatname',
            'guestprof.mobile_no',
            'booking.ResStatus'
        )
            ->join('booking', function ($join) {
                $join->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->where('booking.Property_ID', $this->propertyid);
            })
            ->leftJoin('guestprof', 'guestprof.guestcode', '=', 'grpbookingdetails.GuestProf')
            ->join('room_cat', 'grpbookingdetails.RoomCat', '=', 'room_cat.cat_code')
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->where('grpbookingdetails.ArrDate', $arrdate)
            ->where('grpbookingdetails.ContraDocId', '')
            ->where('grpbookingdetails.Cancel', 'N');

        if (!empty($cat)) {
            $query->where('grpbookingdetails.RoomCat', $cat);
        }

        $data = $query
            ->groupBy('grpbookingdetails.BookingDocid', 'grpbookingdetails.Sno')
            ->get();

        return response()->json($data);
    }

    ///////// Room Status Count Functions /////////
    public function getRoomStatusCounts($propertyId, $asOnDate)
    {
        $result = [];

        // TR
        $result['TR'] = DB::table('room_mast')
            ->where('type', 'RO')
            ->where('inclcount', 'Y')
            ->where('propertyid', $propertyId)
            ->count();

        // OO
        $result['OO'] = DB::table('roomblockout')
            ->where('propertyid', $propertyId)
            ->where('Type', 'O')
            ->whereDate('FromDate', '<=', $asOnDate)
            ->whereDate('ToDate', '>=', $asOnDate)
            ->count();

        // OD
        $result['OD'] = DB::table('roomocc as ro')
            ->join('room_mast as rm', 'ro.roomno', '=', 'rm.rcode')
            ->where('ro.propertyid', $propertyId)
            ->where('rm.propertyid', $propertyId)
            ->whereNull('ro.type')
            ->where('rm.room_stat', 'D')
            ->where('rm.type', 'RO')
            ->count();

        // OR
        $result['OR'] = DB::table('roomocc')
            ->where('propertyid', $propertyId)
            ->whereNull('type')
            ->where(function ($q) use ($asOnDate) {
                $q->where(function ($x) use ($asOnDate) {
                    $x->where('ChkInDate', '<=', $asOnDate)
                        ->whereNull('ChkOutDate');
                })->orWhere(function ($x) use ($asOnDate) {
                    $x->where('ChkInDate', '<=', $asOnDate)
                        ->where('ChkOutDate', '>', $asOnDate);
                });
            })
            ->count();

        // OC
        $result['OC'] = DB::table('roomocc as ro')
            ->join('room_mast as rm', 'ro.RoomNo', '=', 'rm.rcode')
            ->whereNull('ro.type')
            ->where('rm.room_stat', 'C')
            ->where('rm.Type', 'RO')
            ->where('ro.propertyid', $propertyId)
            ->where('rm.propertyid', $propertyId)
            ->count();

        // VR
        $result['VR'] = DB::table('room_mast as rm')
            ->where('rm.propertyid', $propertyId)
            ->where('rm.type', 'RO')
            ->where('rm.inclcount', 'Y')
            ->whereNotExists(function ($q) use ($propertyId) {
                $q->select(DB::raw(1))
                    ->from('roomocc as ro')
                    ->whereColumn('ro.roomno', 'rm.rcode')
                    ->where('ro.propertyid', $propertyId)
                    ->whereNull('ro.type');
            })
            ->whereNotExists(function ($q) use ($propertyId, $asOnDate) {
                $q->select(DB::raw(1))
                    ->from('roomblockout as rb')
                    ->whereColumn('rb.roomcode', 'rm.rcode')
                    ->where('rb.propertyid', $propertyId)
                    ->whereDate('rb.fromdate', '<=', $asOnDate)
                    ->whereDate('rb.todate', '>=', $asOnDate);
            })
            ->count();

        // VD
        $result['VD'] = DB::table('room_mast as rm')
            ->where('rm.propertyid', $propertyId)
            ->where('rm.type', 'RO')
            ->where('rm.inclcount', 'Y')
            ->where('rm.room_stat', 'D')
            ->whereNotExists(function ($q) use ($propertyId) {
                $q->select(DB::raw(1))
                    ->from('roomocc as ro')
                    ->whereColumn('ro.roomno', 'rm.rcode')
                    ->where('ro.propertyid', $propertyId)
                    ->whereNull('ro.type');
            })
            ->whereNotExists(function ($q) use ($propertyId, $asOnDate) {
                $q->select(DB::raw(1))
                    ->from('roomblockout as rb')
                    ->whereColumn('rb.roomcode', 'rm.rcode')
                    ->where('rb.propertyid', $propertyId)
                    ->whereDate('rb.fromdate', '<=', $asOnDate)
                    ->whereDate('rb.todate', '>=', $asOnDate);
            })
            ->count();

        // VC
        $result['VC'] = DB::table('room_mast as rm')
            ->where('rm.propertyid', $propertyId)
            ->where('rm.type', 'RO')
            ->where('rm.inclcount', 'Y')
            ->where('rm.room_stat', 'C')
            ->whereNotExists(function ($q) use ($propertyId) {
                $q->select(DB::raw(1))
                    ->from('roomocc as ro')
                    ->whereColumn('ro.roomno', 'rm.rcode')
                    ->where('ro.propertyid', $propertyId)
                    ->whereNull('ro.type');
            })
            ->whereNotExists(function ($q) use ($propertyId, $asOnDate) {
                $q->select(DB::raw(1))
                    ->from('roomblockout as rb')
                    ->whereColumn('rb.roomcode', 'rm.rcode')
                    ->where('rb.propertyid', $propertyId)
                    ->whereDate('rb.fromdate', '<=', $asOnDate)
                    ->whereDate('rb.todate', '>=', $asOnDate);
            })
            ->count();

        return $result;
    }


    public function inhoseroomstatusfetch(Request $request)
    {
        $data = readyroomoccdata();

        return response()->json($data);
    }

    public function bookedroomget(Request $request)
    {
        $bookedroomdata = RoomOcc::select([
            'roomocc.docid',
            'roomocc.folioNo',
            'roomocc.sno1',
            'roomocc.sno',
            'roomocc.roomno',
            'roomocc.roomcat',
            'roomocc.plancode',
            'roomocc.guestprof',
            'roomocc.name as name',
            'roomocc.chkindate',
            'roomocc.depdate',
            'roomocc.leaderyn',
            'roomocc.propertyid',
            'roomocc.roomrate',
            'roomocc.planamt',
            'roomocc.ammendstay as amendstay',
            'roomocc.deptime as deptime',
            'roomocc.chkouttime as chkouttime',
            'roomocc.adult',
            'roomocc.children',
            'booking.BookedBy',
            DB::raw('DATE_SUB(roomocc.depdate, INTERVAL 1 DAY) as depdate_minus_one'),
            DB::raw('COALESCE(paycharge.billno, 0) as billno'),
            'enviro_form.checkout as envcheck',
            'room_cat.cat_code',
            'room_cat.name as roomcatname',
            'guestprof.con_prefix',
            'guestprof.complimentry',
            'guestprof.mobile_no',
            'guestprof.guestcode',
            'plan_mast.pcode',
            'guestfolio.company',
            'guestfolio.pickupdrop',
            'guestfolio.remarks',
            'plan_mast.name as planname',
            'sc.name as companyname',
            'st.name as travelname',
            'st.logo as travellogo'
        ])
            ->where('roomocc.propertyid', $this->propertyid)
            ->whereNull('roomocc.type')
            ->leftJoin('guestprof', function ($join) {
                $join->on('guestprof.guestcode', '=', 'roomocc.guestprof')
                    ->where('guestprof.propertyid', '=', $this->propertyid);
            })

            ->leftJoin('guestfolio', function ($join) {
                $join->on('guestfolio.docid', '=', 'roomocc.docid');
                // ->on('guestfolio.sno1', '=', 'roomocc.sno1');
            })

            ->leftJoin('grpbookingdetails', function ($join) {
                $join->on('grpbookingdetails.ContraDocId', '=', 'roomocc.docid')
                    ->where('grpbookingdetails.Property_ID', '=', $this->propertyid);
            })

            ->leftJoin('booking', function ($join) {
                $join->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid');
            })
            ->join('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
            ->leftJoin('enviro_form', 'enviro_form.propertyid', '=', 'roomocc.propertyid')
            ->leftJoin('subgroup as sc', 'sc.sub_code', '=', 'guestfolio.company')
            ->leftJoin('subgroup as st', 'st.sub_code', '=', 'guestfolio.travelagent')
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.folionodocid', '=', 'roomocc.docid')
                    ->on('paycharge.sno1', '=', 'roomocc.sno1')
                    ->whereIn('paycharge.vtype', ['RC', 'REV']);
            })
            ->groupBy([
                'roomocc.docid',
                'roomocc.sno1',
                'roomocc.sno',
                'roomocc.roomno',
                'roomocc.roomcat',
                'roomocc.plancode',
                'roomocc.guestprof',
                'roomocc.name',
                'roomocc.chkindate',
                'roomocc.depdate',
                'roomocc.leaderyn',
                'roomocc.propertyid',
                'roomocc.ammendstay',
                'roomocc.deptime',
                'roomocc.chkouttime',
                'booking.BookedBy',
                'enviro_form.checkout',
                'room_cat.cat_code',
                'room_cat.name',
                'guestprof.con_prefix',
                'guestprof.mobile_no',
                'guestprof.guestcode',
                'plan_mast.pcode',
                'guestfolio.company',
                'guestfolio.pickupdrop',
                'guestfolio.remarks',
                'plan_mast.name',
                'sc.name',
                'st.name'
            ])
            ->orderBy('roomocc.roomno')
            ->get();

        $this->appendRoomKeyStatus($bookedroomdata);

        $amountdetails = RoomOcc::select([
            'roomocc.name as guestname',
            'roomocc.docid',
            'roomocc.sno1',
            'roomocc.sno',
            'roomocc.leaderyn',
            'roomocc.roomno',
            DB::raw('COALESCE(MAX(paycharge.msno1), 0) AS msno1'),
            DB::raw('COALESCE(SUM(CASE WHEN paycharge.amtdr IS NOT NULL THEN paycharge.amtdr ELSE 0 END), 0.00) AS totalamt'),
            DB::raw('COALESCE(SUM(CASE WHEN paycharge.amtcr IS NOT NULL THEN paycharge.amtcr ELSE 0 END), 0.00) AS paidamt'),
            DB::raw('COALESCE(SUM(CASE WHEN paycharge.amtdr IS NOT NULL THEN paycharge.amtdr ELSE 0 END) - SUM(CASE WHEN paycharge.amtcr IS NOT NULL THEN paycharge.amtcr ELSE 0 END), 0.00) as balance'),
            DB::raw('COALESCE(MAX(paycharge.billno), 0) AS billno')
        ])
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.folionodocid', '=', 'roomocc.docid')
                    ->on('paycharge.sno1', '=', 'roomocc.sno1');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->whereNotNull('roomocc.docid')
            ->whereNull('roomocc.type')
            ->groupBy(['roomocc.docid', 'roomocc.sno1', 'roomocc.name', 'roomocc.sno', 'roomocc.leaderyn', 'roomocc.roomno'])
            ->orderBy('roomocc.roomno')
            ->get();

        $roomblockout = RoomBlockout::select(['roomcode', 'fromdate', 'reasons', 'propertyid', 'todate', 'block'])
            ->where('propertyid', $this->propertyid)
            ->whereNull('cleardate')
            ->orderBy('roomcode')
            ->get();

        $data = [
            'bookedroomdata' => $bookedroomdata,
            'amountdetails' => $amountdetails,
            'roomblockout' => $roomblockout
        ];

        return response()->json($data);
    }

    public function checkoutroomget(Request $request)
    {
        $fromDate = $request->input('fromdate');
        $toDate = $request->input('todate');

        $checkoutrooms = RoomOcc::select([
            'roomocc.docid',
            'roomocc.folioNo',
            'roomocc.sno1',
            'roomocc.sno',
            'roomocc.roomno',
            'roomocc.roomcat',
            'roomocc.plancode',
            'roomocc.guestprof',
            'roomocc.name as name',
            'roomocc.chkindate',
            'roomocc.depdate',
            'roomocc.chkoutdate',
            'roomocc.leaderyn',
            'roomocc.propertyid',
            'roomocc.roomrate',
            'roomocc.planamt',
            'roomocc.ammendstay as amendstay',
            'roomocc.deptime as deptime',
            'roomocc.chkouttime as chkouttime',
            'roomocc.adult',
            'roomocc.children',
            'booking.BookedBy',
            DB::raw('CASE 
                WHEN roomocc.chkindate = roomocc.chkoutdate 
                THEN roomocc.chkoutdate 
                ELSE DATE_SUB(roomocc.chkoutdate, INTERVAL 1 DAY) 
            END as depdate_minus_one'),
            DB::raw('COALESCE(paycharge.billno, 0) as billno'),
            'enviro_form.checkout as envcheck',
            'room_cat.cat_code',
            'room_cat.name as roomcatname',
            'guestprof.con_prefix',
            'guestprof.complimentry',
            'guestprof.mobile_no',
            'guestprof.guestcode',
            'plan_mast.pcode',
            'guestfolio.company',
            'guestfolio.pickupdrop',
            'guestfolio.remarks',
            'plan_mast.name as planname',
            'sc.name as companyname',
            'st.name as travelname',
            'st.logo as travellogo'
        ])
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.type', 'O')
            ->when($fromDate, function ($q) use ($fromDate) {
                return $q->where('roomocc.chkoutdate', '>=', $fromDate);
            })
            ->when($toDate, function ($q) use ($toDate) {
                return $q->where('roomocc.chkoutdate', '<=', $toDate);
            })
            ->leftJoin('guestprof', function ($join) {
                $join->on('guestprof.guestcode', '=', 'roomocc.guestprof')
                    ->where('guestprof.propertyid', '=', $this->propertyid);
            })

            ->leftJoin('guestfolio', function ($join) {
                $join->on('guestfolio.docid', '=', 'roomocc.docid')
                    ->on('guestfolio.guestprof', '=', 'roomocc.guestprof');
            })

            ->leftJoin('grpbookingdetails', function ($join) {
                $join->on('grpbookingdetails.ContraDocId', '=', 'roomocc.docid')
                    ->where('grpbookingdetails.Property_ID', '=', $this->propertyid);
            })

            ->leftJoin('booking', function ($join) {
                $join->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid');
            })

            ->join('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')

            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')

            ->leftJoin('enviro_form', 'enviro_form.propertyid', '=', 'roomocc.propertyid')

            ->leftJoin('subgroup as sc', 'sc.sub_code', '=', 'guestfolio.company')

            ->leftJoin('subgroup as st', 'st.sub_code', '=', 'guestfolio.travelagent')

            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.folionodocid', '=', 'roomocc.docid')
                    ->on('paycharge.sno1', '=', 'roomocc.sno1')
                    ->whereIn('paycharge.vtype', ['RC', 'REV']);
            })

            ->groupBy([
                'roomocc.docid',
                'roomocc.sno1',
                'roomocc.sno',
                'roomocc.roomno',
                'roomocc.roomcat',
                'roomocc.plancode',
                'roomocc.guestprof',
                'roomocc.name',
                'roomocc.chkindate',
                'roomocc.depdate',
                'roomocc.leaderyn',
                'roomocc.propertyid',
                'roomocc.ammendstay',
                'roomocc.deptime',
                'roomocc.chkouttime',
                'booking.BookedBy',
                'enviro_form.checkout',
                'room_cat.cat_code',
                'room_cat.name',
                'guestprof.con_prefix',
                'guestprof.mobile_no',
                'guestprof.guestcode',
                'plan_mast.pcode',
                'guestfolio.company',
                'guestfolio.pickupdrop',
                'guestfolio.remarks',
                'plan_mast.name',
                'sc.name',
                'st.name'
            ])
            ->orderBy('roomocc.roomno')
            ->get();

        $this->appendRoomKeyStatus($checkoutrooms);

        $docIds = $checkoutrooms->pluck('docid')->unique()->toArray();

        $amountdetails = RoomOcc::select([
            'roomocc.name as guestname',
            'roomocc.docid',
            'roomocc.sno1',
            'roomocc.sno',
            'roomocc.leaderyn',
            'roomocc.roomno',
            DB::raw('COALESCE(MAX(paycharge.msno1), 0) AS msno1'),
            DB::raw('COALESCE(SUM(paycharge.amtdr), 0) AS totalamt'),
            DB::raw('COALESCE(SUM(paycharge.amtcr), 0) AS paidamt'),
            DB::raw('COALESCE(SUM(paycharge.amtdr) - SUM(paycharge.amtcr), 0) AS balance'),
            DB::raw('COALESCE(MAX(paycharge.billno), 0) AS billno')
        ])
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.folionodocid', '=', 'roomocc.docid')
                    ->on('paycharge.sno1', '=', 'roomocc.sno1');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->whereIn('roomocc.docid', $docIds)
            ->where('roomocc.type', 'O')
            ->groupBy([
                'roomocc.docid',
                'roomocc.sno1',
                'roomocc.name',
                'roomocc.sno',
                'roomocc.leaderyn',
                'roomocc.roomno'
            ])
            ->orderBy('roomocc.roomno')
            ->get();

        $data = [
            'checkoutroomdata' => $checkoutrooms,
            'amountdetails' => $amountdetails,
            'isCheckout' => true
        ];

        return response()->json($data);
    }

    protected function appendRoomKeyStatus($roomRows)
    {
        foreach ($roomRows as $roomRow) {
            $roomKey = Roomkey::where('propertyid', $this->propertyid)
                ->where('docid', $roomRow->docid)
                ->where('sno1', $roomRow->sno1)
                ->first();

            $roomRow->roomkey_status = optional($roomKey)->status;
            $roomRow->roomkey_reason = optional($roomKey)->reason;
            $roomRow->amendstay = (int) ($roomRow->amendstay ?? 0);
        }
    }

    public function reservedroomget(Request $request)
    {

        $fromdate = $request->fromdate;

        $todate = date('Y-m-d', strtotime($fromdate . ' +' . (int) $request->todate . ' days'));

        $bookedroomdata = DB::table('grpbookingdetails')
            ->select(
                'booking.BookedBy',
                'booking.Company',
                'booking.Remarks',
                'booking.ResStatus',
                'booking.pickupdrop',
                'grpbookingdetails.*',
                DB::raw('DATE_SUB(grpbookingdetails.DepDate, INTERVAL 1 DAY) as depdate_minus_one'),
                'room_cat.cat_code',
                'room_cat.name as roomcatname',
                'guestprof.bill_to',
                'guestprof.con_prefix',
                'guestprof.mobile_no',
                'guestprof.guestcode',
                'grpbookingdetails.GuestProf',
                'plan_mast.pcode',
                'plan_mast.name as planname',
                'bookingplandetails.sno1 as bsno1',
                'bookingplandetails.netplanamt as plannetamt',
                'sb.name as companyname',
                'st.name as travelname',
                'st.logo as travellogo'
            )
            ->join('guestprof', 'guestprof.guestcode', '=', 'grpbookingdetails.GuestProf')
            ->join('room_cat', 'grpbookingdetails.RoomCat', '=', 'room_cat.cat_code')
            ->leftJoin('plan_mast', 'grpbookingdetails.Plan_Code', '=', 'plan_mast.pcode')
            ->leftJoin('bookingplandetails', function ($join) {
                $join->on('bookingplandetails.docid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('bookingplandetails.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('booking', function ($query) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->where('booking.Property_ID', $this->propertyid);
            })
            ->leftJoin('subgroup as st', 'st.sub_code', '=', 'booking.TravelAgency')
            ->leftJoin('subgroup as sb', 'sb.sub_code', '=', 'booking.Company')
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->where('grpbookingdetails.Cancel', 'N')
            ->whereBetween('grpbookingdetails.ArrDate', [$fromdate, $todate])
            ->where(function ($query) {
                $query->whereNotNull('grpbookingdetails.Plan_Code')
                    ->orWhereNull('grpbookingdetails.Plan_Code');
            })
            ->where(function ($query) {
                $query->where('grpbookingdetails.ContraDocId', '')
                    ->orWhereNull('grpbookingdetails.ContraDocId');
            })
            ->groupBy(
                'grpbookingdetails.BookingDocid',
                'grpbookingdetails.Sno',
            )
            ->get();

        foreach ($bookedroomdata as $row) {
            $advance = Paycharge::where('propertyid', $this->propertyid)->where('sno', 1)->where('refdocid', $row->BookingDocid)->get() ?? '';
            $row->advance = $advance;
            $remarks = Remark::where('docid', $row->BookingDocid)
                ->get();
            $row->remarks = $remarks;
        }

        $emptycategory = GrpBookinDetail::select(
            'RoomCat as room_cat',
            'BookingDocid',
            'ArrDate',
            'DepDate',
            DB::raw('COUNT(*) as emptycategory')
        )
            ->where('RoomNo', '=', 0)
            ->where('Property_ID', '=', $this->propertyid)
            ->groupBy('RoomCat')
            ->get();

        $emptyrooms = GrpBookinDetail::where('Property_ID', $this->propertyid)->where('RoomNo', '=', '0')
            ->groupBy('BookingDocid')
            ->get();

        // $inclusiveroom = InclusiveRoom::where('propertyid', $this->propertyid)
        //     ->where('roomno', '=', '0')
        //     ->groupBy('bookingdocid')
        //     ->get();

        $data = [
            'bookedroomdata' => $bookedroomdata,
            'emptycategory' => $emptycategory,
            'emptyrooms' => $emptyrooms
        ];

        return response()->json($data);
    }

    public function roomstatusdata(Request $request)
    {
        $categories = DB::table('room_cat')
            ->select('cat_code', 'name', 'norooms')
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')
            ->get();

        $rooms = DB::table('room_mast')
            ->select(
                'room_mast.rcode',
                'room_mast.room_cat',
                'room_mast.room_stat',
                'room_mast.building',
                'buildingmaster.name',
                'hkroomassigns.cleaningstatus',
                'hkroomassigns.esttime',
                'hkroomassigns.vtime'
            )
            ->leftJoin('hkroomassigns', function ($join) {
                $join->on('hkroomassigns.roomno', '=', 'room_mast.rcode')
                    ->where('hkroomassigns.vdate', ncurdate())
                    ->where('hkroomassigns.cleaningstatus', 'In Progress');
            })
            ->leftJoin('buildingmaster', 'buildingmaster.code', '=', 'room_mast.building')
            ->where('room_mast.type', 'RO')
            ->orderBy('room_mast.room_cat')
            ->orderBy('room_mast.rcode')
            ->get()
            ->groupBy('room_cat');

        return response()->json([
            'categories' => $categories,
            'rooms' => $rooms,
        ]);
    }

    public function updatenameaftercheckout(Request $request)
    {
        $validated = $request->validate([
            'newname' => ['required', 'string', 'max:255'],
            'docid' => ['required', 'string', 'max:255'],
            'sno1' => ['required'],
        ]);

        try {
            $newName = trim($validated['newname']);

            if ($newName === '') {
                return response()->json([
                    'success' => false,
                    'message' => 'Guest name is required.',
                ], 422);
            }

            $updated = RoomOcc::where('docid', $validated['docid'])
                ->where('sno1', $validated['sno1'])
                ->update([
                    'name' => $newName,
                    'updated_at' => now(),
                    'u_name' => Auth::user()->name
                ]);

            if (!$updated) {
                return response()->json([
                    'success' => false,
                    'message' => 'Guest record not found or the name is unchanged.',
                ], 404);
            }

            return response()->json([
                'success' => true,
                'message' => 'Guest name updated successfully.',
            ]);
        } catch (\Throwable $e) {
            Log::error('Failed to update guest name after checkout.', [
                'docid' => $validated['docid'],
                'sno1' => $validated['sno1'],
                'exception' => $e->getMessage(),
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Unable to update guest name. Please try again.',
            ], 500);
        }
    }

    public function fetchroominclusive(Request $request, $docid)
    {
        $inclusiveroom = RoomInclusive::select('room_inclusive.amount', 'room_inclusive.chargepost', 'revmast.name')
            ->leftJoin('revmast', 'room_inclusive.rev_code', '=', 'revmast.rev_code')
            ->where('room_inclusive.propertyid', $this->propertyid)
            ->where('room_inclusive.docid', $docid)
            ->get();

        return response()->json($inclusiveroom);
    }

    // public function getAvailability(Request $request)
    // {
    //     $dates = $request->dates;

    //     $totalRooms = DB::table('room_cat')
    //         ->where('propertyid', $this->propertyid)
    //         ->where('inclcount', 'Y')
    //         ->where('type', 'RO')
    //         ->sum('norooms');

    //     $categories = DB::table('room_cat')
    //         ->where('propertyid', $this->propertyid)
    //         ->where('type', 'RO')
    //         ->where('inclcount', 'Y')
    //         ->get();

    //     $result = [];

    //     foreach ($dates as $date) {

    //         $totalBookedocc = DB::table('roomocc')
    //             ->where('propertyid', $this->propertyid)
    //             ->where(function ($query) {
    //                 $query->where('type', '!=', 'C')
    //                     ->orWhereNull('type');
    //             })
    //             ->where('chkindate', '<=', $date)
    //             ->where(function ($query) use ($date) {
    //                 $query->where('chkoutdate', '>', $date)
    //                     ->orWhere(function ($query) use ($date) {
    //                         $query->whereNull('chkoutdate')
    //                             ->where('depdate', '>', $date);
    //                     });
    //             })
    //             ->count();

    //         $totalBookedgrp = DB::table('grpbookingdetails')
    //             ->where('Property_ID', $this->propertyid)
    //             ->where('ArrDate', '<=', $date)
    //             ->where('DepDate', '>', $date)
    //             ->where('Cancel', 'N')
    //             ->where('ContraDocId', '')
    //             ->count('Sno');

    //         $totalBooked = $totalBookedocc + $totalBookedgrp;

    //         $occupancy = $totalRooms > 0 ? round(($totalBooked / $totalRooms) * 100, 2) : 0;

    //         $bookingsocc = DB::table('roomocc')
    //             ->select('roomcat', DB::raw('COUNT(DISTINCT roomno) as booked'))
    //             ->where('propertyid', $this->propertyid)
    //             ->where(function ($query) {
    //                 $query->where('type', '!=', 'C')
    //                     ->orWhereNull('type');
    //             })
    //             ->where('chkindate', '<=', $date)
    //             ->where(function ($query) use ($date) {
    //                 $query->where('chkoutdate', '>', $date)
    //                     ->orWhere(function ($query) use ($date) {
    //                         $query->whereNull('chkoutdate')
    //                             ->where('depdate', '>', $date);
    //                     });
    //             })
    //             ->groupBy('roomcat')
    //             ->pluck('booked', 'roomcat');

    //         $bookingsgrp = DB::table('grpbookingdetails')
    //             ->select('RoomCat', DB::raw('COUNT(DISTINCT id) as booked'))
    //             ->where('Property_ID', $this->propertyid)
    //             ->where('ArrDate', '<=', $date)
    //             ->where('DepDate', '>', $date)
    //             ->where('Cancel', 'N')
    //             ->where('ContraDocId', '')
    //             ->groupBy('RoomCat')
    //             ->pluck('booked', 'RoomCat');

    //         $categoryData = [];

    //         foreach ($categories as $cat) {
    //             $occBooked = $bookingsocc[$cat->cat_code] ?? 0;
    //             $grpBooked = $bookingsgrp[$cat->cat_code] ?? 0;

    //             $catBooked = $occBooked + $grpBooked;

    //             $categoryData[$cat->cat_code] = [
    //                 'total' => $cat->norooms,
    //                 'available' => $cat->norooms - $catBooked
    //             ];
    //         }

    //         $result[$date] = [
    //             'total_available' => $totalRooms - $totalBooked,
    //             'occupancy' => $occupancy,
    //             'categories' => $categoryData
    //         ];
    //     }

    //     return response()->json($result);
    // }

    public function getAvailability(Request $request)
    {
        $dates = $request->input('dates', []);

        if (!is_array($dates)) {
            return response()->json([
                'message' => 'The dates field must be an array.',
            ], 422);
        }

        $totalRooms = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->where('type', 'RO')
            ->sum('norooms');

        $categories = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('type', 'RO')
            ->where('inclcount', 'Y')
            ->get();

        $result = [];

        foreach ($dates as $date) {
            $date = Carbon::parse($date)->toDateString();

            /*
         * Occupied individual rooms.
         */
            $occupiedOcc = DB::table('roomocc')
                ->where('propertyid', $this->propertyid)
                ->where(function ($query) {
                    $query->where('type', '!=', 'C')
                        ->orWhereNull('type');
                })
                ->where('chkindate', '<=', $date)
                ->where(function ($query) use ($date) {
                    $query->where('chkoutdate', '>', $date)
                        ->orWhere(function ($query) use ($date) {
                            $query->whereNull('chkoutdate')
                                ->where('depdate', '>', $date);
                        });
                })
                ->distinct()
                ->pluck('roomno')
                ->all();

            /*
         * Occupied group-booking rooms.
         */
            $occupiedGrp = DB::table('grpbookingdetails')
                ->where('Property_ID', $this->propertyid)
                ->where('ArrDate', '<=', $date)
                ->where('DepDate', '>', $date)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->where('RoomNo', '!=', 0)
                ->distinct()
                ->pluck('RoomNo')
                ->all();

            /*
         * Rooms blocked for the selected date.
         * roomblockout.roomcode is assumed to match room_mast.rcode.
         */
            // $blockedRooms = DB::table('roomblockout')
            //     ->where('propertyid', $this->propertyid)
            //     ->where('type', 'O')
            //     ->where('fromdate', '<=', $date)
            //     ->where('todate', '>', $date)
            //     ->distinct()
            //     ->pluck('roomcode')
            //     ->all();

            $blockedRooms = DB::table('roomblockout')
                ->where('propertyid', $this->propertyid)
                ->where('type', 'O')
                ->where('fromdate', '<=', $date)
                ->where('todate', '>=', $date)
                ->distinct()
                ->pluck('roomcode')
                ->all();

            /*
         * Count unique occupied rooms and blocked rooms together.
         * This prevents a room from being counted twice if occupied
         * and blocked records overlap.
         */
            $unavailableRooms = array_unique(array_merge(
                $occupiedOcc,
                $occupiedGrp,
                $blockedRooms
            ));

            $totalUnavailable = count($unavailableRooms);

            $occupancy = $totalRooms > 0
                ? round(($totalUnavailable / $totalRooms) * 100, 2)
                : 0;

            /*
         * Category-wise occupied room codes.
         */
            $bookingsocc = DB::table('roomocc')
                ->join('room_mast as rm', 'rm.rcode', '=', 'roomocc.roomno')
                ->select('rm.room_cat', DB::raw('COUNT(DISTINCT roomocc.roomno) as booked'))
                ->where('roomocc.propertyid', $this->propertyid)
                ->where(function ($query) {
                    $query->where('roomocc.type', '!=', 'C')
                        ->orWhereNull('roomocc.type');
                })
                ->where('roomocc.chkindate', '<=', $date)
                ->where(function ($query) use ($date) {
                    $query->where('roomocc.chkoutdate', '>', $date)
                        ->orWhere(function ($query) use ($date) {
                            $query->whereNull('roomocc.chkoutdate')
                                ->where('roomocc.depdate', '>', $date);
                        });
                })
                ->groupBy('rm.room_cat')
                ->pluck('booked', 'rm.room_cat');

            $bookingsgrp = DB::table('grpbookingdetails')
                ->select('RoomCat', DB::raw('COUNT(DISTINCT RoomNo) as booked'))
                ->where('Property_ID', $this->propertyid)
                ->where('ArrDate', '<=', $date)
                ->where('DepDate', '>', $date)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->where('RoomNo', '!=', 0)
                ->groupBy('RoomCat')
                ->pluck('booked', 'RoomCat');

            /*
         * Category-wise blocked room counts.
         */
            $blockedByCategory = DB::table('roomblockout as rb')
                ->join('room_mast as rm', 'rm.rcode', '=', 'rb.roomcode')
                ->select('rm.room_cat', DB::raw('COUNT(DISTINCT rb.roomcode) as blocked'))
                ->where('rb.propertyid', $this->propertyid)
                ->where('rb.type', 'O')
                ->where('rb.fromdate', '<=', $date)
                ->where('rb.todate', '>=', $date)
                ->groupBy('rm.room_cat')
                ->pluck('blocked', 'rm.room_cat');

            $categoryData = [];

            foreach ($categories as $cat) {
                $occBooked = (int) ($bookingsocc[$cat->cat_code] ?? 0);
                $grpBooked = (int) ($bookingsgrp[$cat->cat_code] ?? 0);
                $blocked = (int) ($blockedByCategory[$cat->cat_code] ?? 0);

                /*
             * Do not double-count rooms that are both occupied
             * and blocked.
             */
                $occupiedRoomCodes = DB::table('roomocc')
                    ->join('room_mast as rm', 'rm.rcode', '=', 'roomocc.roomno')
                    ->where('rm.room_cat', $cat->cat_code)
                    ->where('roomocc.propertyid', $this->propertyid)
                    ->where(function ($query) {
                        $query->where('roomocc.type', '!=', 'C')
                            ->orWhereNull('roomocc.type');
                    })
                    ->where('roomocc.chkindate', '<=', $date)
                    ->where(function ($query) use ($date) {
                        $query->where('roomocc.chkoutdate', '>', $date)
                            ->orWhere(function ($query) use ($date) {
                                $query->whereNull('roomocc.chkoutdate')
                                    ->where('roomocc.depdate', '>', $date);
                            });
                    })
                    ->pluck('roomocc.roomno')
                    ->all();

                $groupRoomCodes = DB::table('grpbookingdetails')
                    ->where('Property_ID', $this->propertyid)
                    ->where('RoomCat', $cat->cat_code)
                    ->where('ArrDate', '<=', $date)
                    ->where('DepDate', '>', $date)
                    ->where('Cancel', 'N')
                    ->where('ContraDocId', '')
                    ->where('RoomNo', '!=', 0)
                    ->pluck('RoomNo')
                    ->all();

                $blockedRoomCodes = DB::table('roomblockout as rb')
                    ->join('room_mast as rm', 'rm.rcode', '=', 'rb.roomcode')
                    ->where('rm.room_cat', $cat->cat_code)
                    ->where('rb.propertyid', $this->propertyid)
                    ->where('rb.type', 'O')
                    ->where('rb.fromdate', '<=', $date)
                    ->where('rb.todate', '>=', $date)
                    ->pluck('rb.roomcode')
                    ->all();

                $categoryUnavailable = count(array_unique(array_merge(
                    $occupiedRoomCodes,
                    $groupRoomCodes,
                    $blockedRoomCodes
                )));

                $categoryData[$cat->cat_code] = [
                    'total' => (int) $cat->norooms,
                    'available' => max(0, (int) $cat->norooms - $categoryUnavailable),
                ];
            }

            $result[$date] = [
                'total_available' => max(0, (int) $totalRooms - $totalUnavailable),
                'occupancy' => min(100, $occupancy),
                'categories' => $categoryData,
            ];
        }

        return response()->json($result);
    }

    public function getPropertyLocation(Request $request)
    {
        $request->validate([
            'mobile' => 'required|string',
            'guestname' => 'nullable|string',
        ]);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $maplink = $company->maplink ?? '';

        if (empty($maplink)) {
            return response()->json([
                'success' => false,
                'message' => 'Property maps link is not set. Please add it in property settings.',
            ]);
        }

        $whatsapp = new WhatsappSend();
        $sent = $whatsapp->sendLocation(
            $request->guestname ?? '',
            $company->comp_name ?? '',
            $maplink,
            $request->mobile
        );

        return response()->json([
            'success' => $sent,
            'message' => $sent ? 'Location sent successfully via WhatsApp.' : 'Failed to send location.',
        ]);
    }

    public function updatedefaultdays(Request $request)
    {
        $value = (int) $request->default_days_roomstatus;

        if ($value < 5 || $value > 30) {
            return response()->json([
                'message' => 'Days must be between 5 and 30.'
            ], 422);
        }

        DB::table('enviro_form')->update([
            'default_days_roomstatus' => $value
        ]);

        return response()->json([
            'message' => 'Default room status days updated successfully.'
        ]);
    }
}
