<?php

namespace App\Http\Controllers;

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
use App\Models\PlanMast;
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
use App\Models\Sundrytype;

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

    // Booked Room Get
    // public function bookedroomget()
    // {
    //     $prpid = Auth::user()->propertyid;
    //     $ncurdate = DB::table('enviro_general')->where('propertyid', $prpid)->value('ncur');

    //     $bookedroomdata = DB::table('bookings as b')
    //         ->join('guestprof as g', 'b.guestcode', '=', 'g.guestcode')
    //         ->join('room_mast as r', 'b.roomno', '=', 'r.rcode')
    //         ->join('room_cat as rc', 'r.roomcat', '=', 'rc.cat_code')
    //         ->join('plan_mast as pm', 'b.plancode', '=', 'pm.plancode')
    //         ->leftJoin('company_mast as cm', 'b.company', '=', 'cm.comp_code')
    //         ->select(
    //             'b.docid',
    //             'b.sno',
    //             'b.sno1',
    //             'b.guestcode',
    //             'g.name',
    //             'b.roomno',
    //             'rc.name as roomcatname',
    //             'pm.planname',
    //             'b.planamt',
    //             'b.chkindate',
    //             'b.depdate',
    //             'b.billno',
    //             'b.leaderyn',
    //             'b.mobile_no',
    //             'b.con_prefix',
    //             'b.adult',
    //             'b.child',
    //             'b.roomrate',
    //             'b.company',
    //             'cm.comp_name as companyname',
    //             'b.travel',
    //             'b.pickupdrop',
    //             'b.complimentry',
    //             'b.remarks',
    //             'b.BookedBy',
    //             DB::raw("DATE_SUB(b.depdate, INTERVAL 1 DAY) as depdate_minus_one"),
    //             DB::raw("DATE_FORMAT(DATE_ADD(b.depdate, INTERVAL 2 HOUR), '%Y-%m-%d %H:%i:%s') as envcheck"),
    //             'b.folioNo'
    //         )
    //         ->where('b.propertyid', $prpid)
    //         ->where('b.chkindate', '<=', $ncurdate)
    //         ->where('b.depdate', '>', $ncurdate)
    //         ->where('b.billno', '!=', '0')
    //         ->orWhere(function ($query) use ($prpid, $ncurdate) {
    //             $query->where('b.propertyid', $prpid)
    //                 ->where('b.chkindate', '<=', $ncurdate)
    //                 ->where('b.depdate', '>', $ncurdate)
    //                 ->where('b.billno', '=', '0');
    //         })
    //         ->get();

    //     $amountdetails = DB::table('guestfolio as gf')
    //         ->where('gf.propertyid', $prpid)
    //         ->select(
    //             'gf.docid',
    //             'gf.sno1',
    //             DB::raw('SUM(gf.amtdr) as totalamt'),
    //             DB::raw('SUM(gf.amtcr) as paidamt'),
    //             DB::raw('SUM(gf.amtdr) - SUM(gf.amtcr) as balance')
    //         )
    //         ->groupBy('gf.docid', 'gf.sno1')
    //         ->get();

    //     $roomblockout = DB::table('room_blockout as rb')
    //         ->select('rb.roomcode', 'rb.fromdate', 'rb.todate', 'rb.block', 'rb.reasons')
    //         ->where('rb.propertyid', $prpid)
    //         ->where('rb.todate', '>=', $ncurdate)
    //         ->get();

    //     return response()->json([
    //         'bookedroomdata' => $bookedroomdata,
    //         'amountdetails' => $amountdetails,
    //         'roomblockout' => $roomblockout
    //     ]);
    // }

    // Reserved Room Get
    // public function reservedroomget()
    // {
    //     // return 'sagar';
    //     $prpid = Auth::user()->propertyid;
    //     $ncurdate = DB::table('enviro_general')->where('propertyid', $prpid)->value('ncur');

    //     $bookedroomdata = DB::table('bookings as b')
    //         ->join('guestprof as g', 'b.guestcode', '=', 'g.guestcode')
    //         ->join('room_mast as r', 'b.roomno', '=', 'r.rcode')
    //         ->join('room_cat as rc', 'r.roomcat', '=', 'rc.cat_code')
    //         ->join('plan_mast as pm', 'b.plancode', '=', 'pm.plancode')
    //         ->leftJoin('company_mast as cm', 'b.company', '=', 'cm.comp_code')
    //         ->select(
    //             'b.docid as BookingDocid',
    //             'b.sno as Sno',
    //             'b.guestcode',
    //             'g.name as GuestName',
    //             'b.roomno as RoomNo',
    //             'rc.name as roomcatname',
    //             'pm.planname',
    //             'b.planamt as plannetamt',
    //             'b.chkindate as ArrDate',
    //             'b.depdate as DepDate',
    //             'b.mobile_no',
    //             'b.con_prefix',
    //             'b.adult as Adults',
    //             'b.child as Childs',
    //             'b.roomrate as Tarrif',
    //             'b.company',
    //             'cm.comp_name as companyname',
    //             'b.travel',
    //             'b.pickupdrop',
    //             'b.remarks as Remarks',
    //             'b.BookedBy',
    //             'b.bill_to',
    //             DB::raw("'Confirmed' as ResStatus"),
    //             DB::raw("DATE_SUB(b.depdate, INTERVAL 1 DAY) as depdate_minus_one"),
    //             'b.docid as BookNo'
    //         )
    //         ->where('b.propertyid', $prpid)
    //         ->where('b.chkindate', '>', $ncurdate)
    //         ->get();

    //     $advance = [];
    //     foreach ($bookedroomdata as $booking) {
    //         $booking->advance = DB::table('guestfolio')
    //             ->where('docid', $booking->BookingDocid)
    //             ->where('crdr', 'cr')
    //             ->select('paytype', 'vdate', 'vtime', 'amtcr')
    //             ->get();
    //     }

    //     return response()->json(['bookedroomdata' => $bookedroomdata]);
    // }

    // Checkout Room Get
    // public function checkoutroomget()
    // {
    //     $prpid = Auth::user()->propertyid;
    //     $ncurdate = DB::table('enviro_general')->where('propertyid', $prpid)->value('ncur');

    //     $checkoutroomdata = DB::table('bookings as b')
    //         ->join('guestprof as g', 'b.guestcode', '=', 'g.guestcode')
    //         ->join('room_mast as r', 'b.roomno', '=', 'r.rcode')
    //         ->join('room_cat as rc', 'r.roomcat', '=', 'rc.cat_code')
    //         ->join('plan_mast as pm', 'b.plancode', '=', 'pm.plancode')
    //         ->leftJoin('company_mast as cm', 'b.company', '=', 'cm.comp_code')
    //         ->select(
    //             'b.docid',
    //             'b.sno',
    //             'b.sno1',
    //             'b.guestcode',
    //             'g.name',
    //             'b.roomno',
    //             'rc.name as roomcatname',
    //             'pm.planname',
    //             'b.planamt',
    //             'b.chkindate',
    //             'b.depdate',
    //             'b.billno',
    //             'b.leaderyn',
    //             'b.mobile_no',
    //             'b.con_prefix',
    //             'b.adult',
    //             'b.child',
    //             'b.roomrate',
    //             'b.company',
    //             'cm.comp_name as companyname',
    //             'b.travel',
    //             'b.pickupdrop',
    //             'b.complimentry',
    //             'b.remarks',
    //             'b.BookedBy',
    //             DB::raw("DATE_SUB(b.depdate, INTERVAL 1 DAY) as depdate_minus_one"),
    //             DB::raw("DATE_FORMAT(DATE_ADD(b.depdate, INTERVAL 2 HOUR), '%Y-%m-%d %H:%i:%s') as envcheck"),
    //             'b.folioNo'
    //         )
    //         ->where('b.propertyid', $prpid)
    //         ->where('b.depdate', '=', $ncurdate)
    //         ->get();

    //     return response()->json(['checkoutroomdata' => $checkoutroomdata]);
    // }
}
