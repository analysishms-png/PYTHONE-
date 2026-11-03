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
use Illuminate\Support\Facades\Crypt;
use DateTime;
use Illuminate\Contracts\Pipeline\Pipeline;
use Illuminate\Support\Facades\Hash;
use Psr\Http\Client\NetworkExceptionInterface;
use Symfony\Component\Routing\Matcher\Dumper\MatcherDumper;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;
use App\Models\Kot as KotModal;
use App\Models\Sundrytype;
use App\Services\TenantDatabase;

class PropertyController extends Controller
{

    protected $propertyid;
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

    public function loadProperty()
    {
        $user = Auth::user();

        if ($user) {
            $uuu_name = Auth::user()->name;
            $prpid = Auth::user()->propertyid;
            $mail = $user->email;
            $companydcode = Companyreg::where('propertyid', $prpid)->orderBy('comp_code', 'DESC')->first();
            $company = Companyreg::select('company.*', 'enviro_general.ncur')->where('company.comp_code', $companydcode->comp_code)->leftJoin('enviro_general', 'enviro_general.propertyid', '=', 'company.propertyid')
                ->where('company.propertyid', $prpid)->first();
            if ($company) {
                $enviro = EnviroGeneral::where('propertyid', $prpid)->first();

                if ($enviro) {

                    if (empty($enviro->api_key) || empty($enviro->bearer_token)) {
                        do {
                            $apiKey = bin2hex(random_bytes(16));
                        } while (EnviroGeneral::where('api_key', $apiKey)->exists());

                        do {
                            $bearerToken = bin2hex(random_bytes(32));
                        } while (EnviroGeneral::where('bearer_token', $bearerToken)->exists());

                        $enviro->update([
                            'api_key' => $apiKey,
                            'bearer_token' => $bearerToken,
                        ]);
                    }
                }

                $menus = MenuHelp::where('propertyid', $prpid)->where('username', $uuu_name)->where('flag', 'N')
                    ->where('opt2', 0)->get();
                $roomstatusmenu = Menuhelp::where('propertyid', $prpid)->where('username', Auth::user()->name)->where('code', 141114)->first();
                $roomstatusview =  $roomstatusmenu->view ?? '';
                $ncurdate = $enviro->ncur;
                $firstdayofmonth = date("Y-m-01", strtotime($ncurdate));
                $lastdayofmonth = date("Y-m-t", strtotime($ncurdate));
                $last30days = date("Y-m-d", strtotime("-30 days", strtotime($ncurdate)));
                $datearr = [
                    'roomstatusview' => $roomstatusview,
                    'ncurdate' => $ncurdate,
                    'firstdayofmonth' => date("Y-m-01", strtotime($ncurdate)),
                    'lastdayofmonth' => date("Y-m-t", strtotime($ncurdate)),
                    'last30days' => date("Y-m-d", strtotime("-30 days", strtotime($ncurdate)))
                ];

                $month = date('m', strtotime($ncurdate));
                $day = date('d', strtotime($ncurdate));

                $dobguest = DB::table('guestprof as gp')
                    ->leftJoin('roomocc as ro', function ($join) {
                        $join->on('ro.guestprof', '=', 'gp.guestcode')
                            ->on('ro.propertyid', '=', 'gp.propertyid')
                            ->where(function ($query) {
                                $query->where('ro.type', 'O')
                                    ->orWhereNull('ro.type');
                            })
                            ->whereRaw('ro.sno1 = (
                        SELECT MAX(ro2.sno1)
                        FROM roomocc ro2
                        WHERE ro2.guestprof = gp.guestcode
                        AND ro2.propertyid = gp.propertyid
                        AND (ro2.type = "O" OR ro2.type IS NULL)
                    )');
                    })
                    ->leftJoin('sale1 as s1', function ($join) {
                        $join->on('s1.docid', '=', 'gp.docid')
                            ->on('s1.propertyid', '=', 'gp.propertyid')
                            ->whereNull('ro.guestprof');
                    })
                    ->where('gp.propertyid', $this->propertyid)
                    ->whereMonth('gp.dob', $month)
                    ->whereDay('gp.dob', $day)
                    ->where('gp.mobile_no', '!=', '')
                    ->select([
                        'gp.name',
                        'gp.docid',
                        'gp.guestcode',
                        'gp.anniversary',
                        'gp.birthdaywishsend',
                        'gp.anniversarywishsend',
                        'gp.mobile_no',
                        'gp.email_id',
                        'gp.dob',
                        DB::raw('COALESCE(ro.chkindate, s1.vdate) AS chkindate'),
                        DB::raw('COALESCE(ro.roomno, s1.roomno) AS roomno'),
                        's1.restcode',
                        DB::raw("
                        CASE
                            WHEN ro.guestprof IS NOT NULL THEN 'Checkin'
                            ELSE 'Outlet'
                        END AS status
                    "),
                    ])
                    ->groupBy('gp.guestcode')
                    ->get();

                $anniversaryguest = DB::table('guestprof as gp')
                    ->leftJoin('roomocc as ro', function ($join) {
                        $join->on('ro.guestprof', '=', 'gp.guestcode')
                            ->on('ro.propertyid', '=', 'gp.propertyid')
                            ->where(function ($query) {
                                $query->where('ro.type', 'O')
                                    ->orWhereNull('ro.type');
                            })
                            ->whereRaw('ro.sno1 = (
                        SELECT MAX(ro2.sno1)
                        FROM roomocc ro2
                        WHERE ro2.guestprof = gp.guestcode
                        AND ro2.propertyid = gp.propertyid
                        AND (ro2.type = "O" OR ro2.type IS NULL)
                    )');
                    })
                    ->leftJoin('sale1 as s1', function ($join) {
                        $join->on('s1.docid', '=', 'gp.docid')
                            ->on('s1.propertyid', '=', 'gp.propertyid')
                            ->whereNull('ro.guestprof');
                    })
                    ->where('gp.propertyid', $this->propertyid)
                    ->whereMonth('gp.anniversary', $month)
                    ->whereDay('gp.anniversary', $day)
                    ->where('gp.mobile_no', '!=', '')
                    ->select([
                        'gp.name',
                        'gp.docid',
                        'gp.guestcode',
                        'gp.anniversary',
                        'gp.birthdaywishsend',
                        'gp.anniversarywishsend',
                        'gp.mobile_no',
                        'gp.email_id',
                        'gp.dob',
                        DB::raw('COALESCE(ro.chkindate, s1.vdate) AS chkindate'),
                        DB::raw('COALESCE(ro.roomno, s1.roomno) AS roomno'),
                        's1.restcode',
                        DB::raw("
                        CASE
                            WHEN ro.guestprof IS NOT NULL THEN 'Checkin'
                            ELSE 'Outlet'
                        END AS status
                    "),
                    ])
                    ->groupBy('gp.guestcode')
                    ->get();

                // return $dobguest;

                $status = [
                    'Occupied' => $this->getOccupiedRooms($ncurdate, $prpid),
                    'CheckIn' => $this->getCheckInRooms($ncurdate, $prpid),
                    'CheckOut' => $this->getCheckOutRooms($ncurdate, $prpid),
                    'ExpectedCheckOut' => $this->getExpectedCheckOutRooms($ncurdate, $prpid),
                    'ExpectedArrival' => $this->getExpectedArrivalRooms($ncurdate, $prpid),
                    'Events' => $this->getevents($ncurdate, $prpid),
                    'UnsettledRooms' => $this->getUnsettledRooms($prpid),
                    'OutOfOrderRooms' => $this->getOutOfOrderRooms($prpid, $ncurdate),
                    'OccupiedDirtyRooms' => $this->getOccupiedDirtyRooms($prpid),
                    'VacantDirtyRooms' => $this->getVacantDirtyRooms($prpid, $ncurdate),
                    'OutletDepartments' => $this->getOutletDepartments($prpid),
                    // 'PendingKotRooms' => $roomstatusview == 'Y' ? $this->getPendingKotRooms(Depart::where('propertyid', $prpid)->where('rest_type', 'Outlet')->value('dcode')) : [],
                    'OutletSalesWithRunningKots' => $this->getOutletSalesWithRunningKots($prpid, $ncurdate),
                    'dobguest' => $dobguest,
                    'anniversaryguest' => $anniversaryguest
                ];

                return view('property.index', [
                    'user' => $company,
                    'menus' => $menus,
                    'datearr' => $datearr,
                    'status' => $status,
                ]);
            } else {
                return back()->with('logerror', 'Invalid Password');
            }
        } else {
            return redirect()->route('login');
        }
    }
    // Get Events
    public function getevents($fromDate, $propertyId)
    {

        $result = DB::table('venueocc as VO')
            ->select([
                'VO.dromtime  as PTime',
                'HB.PartyName as PName',
                'FT.Name as FName',
                'VM.Name as VName'
            ])
            ->join('hallbook as HB', 'HB.docid', '=', 'VO.fpdocid')
            ->leftJoin('functiontype as FT', 'FT.code', '=', 'HB.func_name')
            ->leftJoin('venuemast as VM', 'VM.code', '=', 'VO.venucode')
            ->whereDate('VO.FromDate', $fromDate)
            ->where('HB.propertyid', $propertyId)
            ->get();

        return $result;
    }

    // Get Occpied rooms
    public function getOccupiedRooms($ncurdate, $propertyId)
    {
        $result = DB::table('roomocc')
            ->select('RoomNo as Name')
            ->whereNull('Type')
            ->where('propertyid', $propertyId)
            ->orderBy('RoomNo')
            ->get();


        return $result;
    }

    // CheckIn Rooms
    public function getCheckInRooms($fromDate, $propertyId)
    {
        $result = DB::table('roomocc')
            ->select('RoomNo as Name')
            ->where('propertyid', $propertyId)
            ->where('Type', '!=', 'C')
            ->whereDate('ChkInDate', $fromDate)
            ->orderBy('RoomNo')
            ->get();
        return $result;
    }

    // Check Out Rooms
    public function getCheckOutRooms($fromDate, $propertyId)
    {
        $chkOutRooms = DB::table('roomocc')
            ->select('RoomNo as Name')
            ->where('Type', 'O')
            ->whereDate('ChkOutDate', $fromDate)
            ->where('propertyid', $propertyId)
            ->orderBy('RoomNo')
            ->get();
        return $chkOutRooms;
    }

    // Expected Checkout Rooms
    public function getExpectedCheckOutRooms($fromDate, $propertyId)
    {
        $expectedCheckout = DB::table('roomocc')
            ->select('RoomNo as Name')
            ->whereNull('ChkOutDate')
            ->whereDate('DepDate', $fromDate)
            ->where('propertyid', $propertyId)
            ->orderBy('RoomNo')
            ->get();
        return $expectedCheckout;
    }

    // Expected Arrival Rooms
    public function getExpectedArrivalRooms($arrivalDate, $propertyId)
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

    // Unsettled Rooms
    public function getUnsettledRooms(int $propertyId)
    {
        return DB::table('roomocc as ro')
            ->distinct()
            ->select('ro.roomno as Name')
            ->leftJoin('paycharge as pc', 'pc.foliono', '=', 'ro.foliono')
            ->where('ro.propertyid', $propertyId)
            ->whereNull('ro.type')
            ->where('pc.billno', '>', 0)
            ->whereNull('pc.settledate')
            ->orderBy('ro.roomno')
            ->get();
    }

    // Out of Order Rooms
    public function getOutOfOrderRooms(int $propertyId, string $date)
    {
        return DB::table('roomblockout')
            ->select('Roomcode as name')
            ->where('propertyid', $propertyId)
            ->where('Type', 'O')
            ->whereRaw('? BETWEEN Fromdate AND ToDate', [$date])
            ->get();
    }

    // Occupied Dirty Rooms
    public function getOccupiedDirtyRooms(int $propertyId)
    {
        return DB::table('roomocc as ro')
            ->join('room_mast as rm', 'ro.roomno', '=', 'rm.rcode')
            ->select('rm.rcode as name')
            ->whereNull('ro.type')
            ->where('rm.room_stat', 'D')
            ->where('rm.type', 'RO')
            ->where('ro.propertyid', $propertyId)
            ->where('rm.propertyid', $propertyId)
            ->orderBy('rm.rcode')
            ->get();
    }

    // Vacant Dirty Rooms
    public function getVacantDirtyRooms(int $propertyId, string $date)
    {
        return DB::table('room_mast as rm')
            ->select('rm.rcode as Name')
            ->where('rm.propertyid', $propertyId)
            ->where('rm.type', 'RO')
            ->where('rm.inclcount', 'Y')
            ->where('rm.room_stat', 'D')

            // Not occupied
            ->whereNotExists(function ($q) use ($propertyId) {
                $q->select(DB::raw(1))
                    ->from('roomocc as ro')
                    ->whereColumn('ro.roomno', 'rm.rcode')
                    ->where('ro.propertyid', $propertyId)
                    ->whereNotIn('ro.type', ['C', 'O']);
            })

            // Not blocked
            ->whereNotExists(function ($q) use ($propertyId, $date) {
                $q->select(DB::raw(1))
                    ->from('roomblockout as rb')
                    ->whereColumn('rb.roomcode', 'rm.rcode')
                    ->where('rb.propertyid', $propertyId)
                    ->whereRaw('? BETWEEN rb.fromdate AND rb.todate', [$date]);
            })
            ->orderBy('rm.rcode')
            ->get();
    }

    // Outlet Departments
    public function getOutletDepartments(int $propertyId)
    {
        return DB::table('depart')
            ->select('dcode', 'Name')
            ->where('propertyid', $propertyId)
            ->whereIn('rest_type', ['Outlet', 'ROOM SERVICE'])
            ->orderBy('Name')
            ->get();
    }

    // Pending KOT Rooms
    public function getPendingKotRooms(string $restCode)
    {
        return DB::table('kot')
            ->distinct()
            ->select('RoomNo as Name')
            ->where('Pending', 'Y')
            ->where('NcKot', 'N')
            ->where('DelFlag', '')
            ->where('VoidYN', 'N')
            ->where('RestCode', $restCode)
            ->get();
    }

    // Outlet Sales with Running KOTs
    public function getOutletSalesWithRunningKots(int $propertyId, string $vDate)
    {
        // Subquery: Sale Summary
        $saleSub = DB::table('sale1')
            ->select(
                'restcode',
                DB::raw('SUM(guaratt) AS Cover'),
                DB::raw('SUM(taxable) AS Taxable'),
                DB::raw('SUM(nontaxable) AS NonTaxable'),
                DB::raw('SUM(servicecharge) AS ServiceCharge'),
                DB::raw('SUM(discamt) AS DiscAmt'),
                DB::raw('SUM(cgst + sgst) AS Tax'),
                DB::raw('SUM(netamt) AS NetAmt')
            )
            ->where('propertyid', $propertyId)
            ->where('VDate', $vDate)
            ->where('DelFlag', 'N')
            ->groupBy('restcode');

        // Subquery: Running KOT Summary
        $kotSub = DB::table('kot')
            ->select(
                'restcode',
                DB::raw('SUM(amount) AS Runningkots'),
                DB::raw('MIN(id) AS minsn'),
                DB::raw('MAX(id) AS maxsn')
            )
            ->where('propertyid', $propertyId)
            ->where('vdate', $vDate)
            ->where('voidyn', 'N')
            ->where('nckot', 'N')
            ->where('pending', 'Y')
            ->groupBy('restcode');

        // Main Query
        return DB::query()
            ->fromSub($saleSub, 's')
            ->leftJoinSub($kotSub, 'k', function ($join) {
                $join->on('k.restcode', '=', 's.restcode');
            })
            ->leftJoin('depart as d', 'd.dcode', '=', 's.restcode')
            ->select(
                's.restcode',
                'd.name',
                's.Cover',
                's.Taxable',
                's.NonTaxable',
                's.ServiceCharge',
                's.DiscAmt',
                's.Tax',
                's.NetAmt',
                DB::raw('COALESCE(k.Runningkots, 0) AS Runningkots')
            )
            ->get();
    }


    // public function showUpdateForm()
    // {
    //     return view('admin.expirymodule');
    // }
    public function getExpiryData($propertyid)
    {
        $data = DB::table('enviro_general')
            ->where('propertyid', $propertyid)
            ->first();

        if ($data) {
            return response()->json([
                'amount' => Crypt::decryptString($data->amount),
                'expdate' => Carbon::parse(Crypt::decryptString($data->expdate))->format('Y-m-d')
            ]);
        }

        return response()->json(null);
    }
    public function updateExpiry(Request $request)
    {
        $request->validate([
            'propertyid' => 'required|integer',
            'amount' => 'required|numeric',
            'expdate' => 'required|date',
        ]);

        $propertyid = (int) $request->propertyid;

        $encryptedAmount = Crypt::encryptString($request->amount);
        $encryptedDate = Crypt::encryptString(
            Carbon::parse($request->expdate)->format('Y-m-d')
        );

        if ($propertyid > 100) {
            TenantDatabase::connect($propertyid);

            EnviroGeneral::on('tenant')
                ->update([
                    'amount' => $encryptedAmount,
                    'expdate' => $encryptedDate,
                ]);
        } else {
            EnviroGeneral::on('main')
                ->where('propertyid', $propertyid)
                ->update([
                    'amount' => $encryptedAmount,
                    'expdate' => $encryptedDate,
                ]);
        }

        return back()->with('success', 'Expiry date & amount updated successfully.');
    }
}
