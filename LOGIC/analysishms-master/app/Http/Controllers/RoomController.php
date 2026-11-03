<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Helpers\ResHelper;
use App\Helpers\UpdateRepeat;
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
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroPos;
use App\Models\GrpBookinDetail;
use App\Models\GuestFolioProfDetail;
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
use App\Repositories\RoomRepository;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use DateTime;
use Illuminate\Contracts\Pipeline\Pipeline;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Psr\Http\Client\NetworkExceptionInterface;
use Symfony\Component\Routing\Matcher\Dumper\MatcherDumper;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;

class RoomController extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
    protected $ncurdate;
    private RoomRepository $roomRepository;
    protected $datemanage;

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
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);
            return $next($request);
        });
    }

    public function getRooms(Request $request)
    {
        $cid = $request->post('cid');

        if ($cid === null || $cid === '' || !is_numeric($cid)) {
            return response('<option value="">Select Room</option>');
        }

        $cid = (int) $cid;

        $checkindate = $request->post('checkindate');
        $checkoutdate = $request->post('checkoutdate');

        $rooms = $this->roomRepository->getAvailableRooms(
            $cid,
            $checkindate,
            $checkoutdate
        );

        $html = '<option value="">Select Room</option>';

        foreach ($rooms as $roomCode) {
            $html .= '<option data-catcode="' . $roomCode->room_cat . '" value="' . $roomCode->rcode . '">' . $roomCode->rcode . '</option>';
        }

        return $html;
    }

    public function getmaxroomallow(Request $request)
    {
        $cid = $request->post('catcode');

        if ($cid === null || $cid === '' || !is_numeric($cid)) {
            return response()->json(['maxallow' => 0]);
        }

        $cid = (int) $cid;
        $checkindate = $request->post('checkindate');
        $checkoutdate = $request->post('checkoutdate');
        $propertyid = $this->propertyid;

        $rooms = $this->roomRepository->getAvailableRooms(
            $cid,
            $checkindate,
            $checkoutdate
        );

        $data = [
            'maxallow' => count($rooms)
        ];

        return $data;
    }

    public function getPlans(Request $request)
    {
        $cid = $request->post('cid');
        $state = DB::table('plan_mast')->where('propertyid', $this->propertyid)->where('room_cat', $cid)->orderBy('name', 'asc')->where('activeYN', 'Y')
            ->get();
        $html = '<option value="">Select Plans</option>';
        foreach ($state as $list) {
            $html .= '<option data-taxinc="' . $list->rrinc_tax . '" value="' . $list->pcode . '">' . $list->name . '</option>';
        }
        echo $html;
    }

    public function getRoomswalkin(Request $request)
    {
        $cid = $request->post('cid');
        $checkindate = $request->post('checkindate');
        $checkoutdate = $request->post('checkoutdate');
        $propertyid = $this->propertyid;

        // $rooms = DB::table('room_mast as rm')
        //     ->select('rm.rcode', 'rm.room_cat')
        //     ->where('rm.propertyid', $propertyid)
        //     ->where('rm.room_cat', $cid)
        //     ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $cid, $checkindate, $checkoutdate) {
        //         $query->select('ro.roomno')
        //             ->from('roomocc as ro')
        //             ->where('ro.propertyid', $propertyid)
        //             ->whereNull('ro.type')
        //             ->where('ro.roomcat', $cid)
        //             ->where('ro.chkindate', '<', $checkoutdate)
        //             ->where('ro.depdate', '>=', $checkindate);
        //     })
        //     ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $checkindate, $checkoutdate) {
        //         $query->select('gb.RoomNo')
        //             ->from('grpbookingdetails as gb')
        //             ->where('gb.Property_ID', $propertyid)
        //             ->where('gb.ArrDate', '<', $checkoutdate)
        //             ->where('gb.DepDate', '>', $checkoutdate)
        //             ->where('gb.chkoutyn', 'N')
        //             ->where('gb.Cancel', 'N')
        //             ->where('gb.RoomNo', '!=', 0);
        //     })
        //     ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $checkindate, $checkoutdate) {
        //         $query->select('rb.roomcode')
        //             ->from('roomblockout as rb')
        //             ->where('rb.fromdate', '<', $checkoutdate)
        //             ->where('rb.todate', '>', $checkindate)
        //             ->where('rb.propertyid', $propertyid)
        //             ->where('rb.type', 'O');
        //     })
        //     ->get();

        $rooms = $this->roomRepository->getAvailableRooms(
            $cid,
            $checkindate,
            $checkoutdate
        );

        $html = '<option value="">Select Room</option>';
        foreach ($rooms as $list) {
            $html .= '<option value="' . $list->rcode . '">' . $list->rcode . '</option>';
        }
        return $html;
    }

    public function mergefolio(Request $request)
    {
        $permission = revokeopen(141118);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $bookedroomdata = RoomOcc::select(
            'roomocc.*',
            'booking.BookedBy',
            DB::raw('DATE_SUB(roomocc.depdate, INTERVAL 1 DAY) as depdate_minus_one'),
            DB::raw('IFNULL(paycharge.billno, 0) as billno'),
            'enviro_form.checkout as envcheck',
            'room_cat.cat_code',
            'room_cat.name as roomcatname',
            'guestprof.con_prefix',
            'guestprof.mobile_no',
            'guestprof.guestcode',
            'roomocc.guestprof',
            'plan_mast.pcode',
            'guestfolio.company',
            'guestfolio.pickupdrop',
            'guestfolio.remarks',
            'plan_mast.name as planname',
            'sc.name as companyname',
            'st.name as travelname'
        )
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.guestcode', '=', 'roomocc.guestprof')
                    ->where('guestprof.propertyid', $this->propertyid);
            })
            ->leftJoin('guestfolio', function ($query) {
                $query->on('guestfolio.docid', '=', 'roomocc.docid')
                    ->on('guestfolio.guestprof', '=', 'roomocc.guestprof');
            })
            ->leftJoin('grpbookingdetails', function ($query) {
                $query->on('grpbookingdetails.ContraDocId', '=', 'roomocc.docid')
                    ->where('grpbookingdetails.Property_ID', $this->propertyid);
            })
            ->leftJoin('booking', function ($query) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->where('grpbookingdetails.Property_ID', $this->propertyid);
            })
            ->join('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
            ->leftJoin('enviro_form', 'enviro_form.propertyid', '=', 'roomocc.propertyid')
            ->leftJoin('subgroup as sc', 'sc.sub_code', '=', 'guestfolio.company')
            ->leftJoin('subgroup as st', 'st.sub_code', '=', 'guestfolio.travelagent')
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.folionodocid', '=', 'roomocc.docid')
                    ->whereIn('paycharge.vtype', ['RC', 'REV'])
                    ->whereNull('paycharge.modeset')
                    ->whereColumn('paycharge.sno1', '=', 'roomocc.sno1');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('paycharge.billno', '0')
            ->where(function ($query) {
                $query->whereNotNull('roomocc.plancode')
                    ->orWhereNull('roomocc.plancode');
            })
            ->whereNull('roomocc.type')
            ->groupBy('roomocc.roomno')
            ->get();
        return view('property.mergefolio', [
            'bookedroomdata' => $bookedroomdata
        ]);
    }

    public function mergeroomdata(Request $request)
    {
        $bookedroomdata = RoomOcc::select(
            'roomocc.*',
            'booking.BookedBy',
            DB::raw('DATE_SUB(roomocc.depdate, INTERVAL 1 DAY) as depdate_minus_one'),
            DB::raw('IFNULL(paycharge.billno, 0) as billno'),
            'enviro_form.checkout as envcheck',
            'room_cat.cat_code',
            'room_cat.name as roomcatname',
            'guestprof.con_prefix',
            'guestprof.mobile_no',
            'guestprof.guestcode',
            'roomocc.guestprof',
            'plan_mast.pcode',
            'guestfolio.company',
            'guestfolio.pickupdrop',
            'guestfolio.remarks',
            'plan_mast.name as planname',
            'sc.name as companyname',
            'st.name as travelname'
        )
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.guestcode', '=', 'roomocc.guestprof')
                    ->where('guestprof.propertyid', $this->propertyid);
            })
            ->leftJoin('guestfolio', function ($query) {
                $query->on('guestfolio.docid', '=', 'roomocc.docid')
                    ->on('guestfolio.guestprof', '=', 'roomocc.guestprof');
            })
            ->leftJoin('grpbookingdetails', function ($query) {
                $query->on('grpbookingdetails.ContraDocId', '=', 'roomocc.docid')
                    ->where('grpbookingdetails.Property_ID', $this->propertyid);
            })
            ->leftJoin('booking', function ($query) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->where('grpbookingdetails.Property_ID', $this->propertyid);
            })
            ->join('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
            ->leftJoin('enviro_form', 'enviro_form.propertyid', '=', 'roomocc.propertyid')
            ->leftJoin('subgroup as sc', 'sc.sub_code', '=', 'guestfolio.company')
            ->leftJoin('subgroup as st', 'st.sub_code', '=', 'guestfolio.travelagent')
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.folionodocid', '=', 'roomocc.docid')
                    ->whereIn('paycharge.vtype', ['RC', 'REV'])
                    ->whereNull('paycharge.modeset')
                    ->whereColumn('paycharge.sno1', '=', 'roomocc.sno1');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('paycharge.billno', '0')
            ->where(function ($query) {
                $query->whereNotNull('roomocc.plancode')
                    ->orWhereNull('roomocc.plancode');
            })
            ->whereNull('roomocc.type')
            ->groupBy('roomocc.folioNo')
            ->get();

        $data = [
            'bookedroomdata' => $bookedroomdata
        ];

        return response()->json($data);
    }

    public function mergeroompost(Request $request)
    {
        $permission = revokeopen(141118);
        if (is_null($permission) || $permission->ins == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to execute this functionality!']);
        }
        // return 'iuh';
        $foliochk = $request->foliochk;
        $merdocid = $request->merdocid;
        $merroomno = $request->merroomno;
        try {
            DB::beginTransaction();
            $payfetch = Paycharge::where('propertyid', $this->propertyid)
                ->where('folionodocid', $merdocid)
                ->first();

            if (!$payfetch) {
                return back()->with('error', 'Main folio not found');
            }

            RoomOcc::where('propertyid', $this->propertyid)->whereIn('docid', $foliochk)->update(['leaderyn' => 'N']);

            RoomOcc::where('propertyid', $this->propertyid)->where('docid', $merdocid)->where('roomno', $merroomno)->update(['leaderyn' => 'Y']);

            $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $merdocid)->where('leaderyn', 'Y')->first();

            $payfetchall = Paycharge::where('propertyid', $this->propertyid)
                ->where('folionodocid', $merdocid)
                ->get();

            foreach ($payfetchall as $row) {
                Paycharge::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $row->folionodocid)
                    ->update([
                        'relatedfolionodocid' => $row->folionodocid,
                        'relatdfoliono'       => $row->foliono,
                        'msno1' => $rocc->sno1,
                    ]);
            }

            $paycharges = Paycharge::where('propertyid', $this->propertyid)
                ->whereIn('folionodocid', $foliochk)
                ->get();

            $relatedMap = [];

            foreach ($paycharges as $row) {
                Paycharge::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $row->folionodocid)
                    ->update([
                        'relatedfolionodocid' => $row->folionodocid,
                        'relatdfoliono'       => $row->foliono,
                        'msno1' => $rocc->sno1,
                    ]);

                $relatedMap[$row->folionodocid] = $row->foliono;
            }

            foreach ($relatedMap as $relatedFolioDocId => $originalFolioNo) {
                Paycharge::where('propertyid', $this->propertyid)
                    ->where('relatedfolionodocid', $relatedFolioDocId)
                    ->update([
                        'folionodocid' => $payfetch->folionodocid,
                        'foliono'      => $payfetch->foliono,
                        'msno1' => $rocc->sno1,
                    ]);
            }
            DB::commit();
            return response()->json(['success' => true, 'message' => 'Folio merged successfully']);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Error occurred: ' . $e->getMessage()]);
        }
    }

    public function reversemergefolio(Request $request)
    {
        $permission = revokeopen(141119);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $bookedroomdata = RoomOcc::select(
            'roomocc.*',
            'booking.BookedBy',
            DB::raw('DATE_SUB(roomocc.depdate, INTERVAL 1 DAY) as depdate_minus_one'),
            DB::raw('IFNULL(paycharge.billno, 0) as billno'),
            'enviro_form.checkout as envcheck',
            'room_cat.cat_code',
            'room_cat.name as roomcatname',
            'guestprof.con_prefix',
            'guestprof.mobile_no',
            'guestprof.guestcode',
            'roomocc.guestprof',
            'plan_mast.pcode',
            'guestfolio.company',
            'guestfolio.pickupdrop',
            'guestfolio.remarks',
            'plan_mast.name as planname',
            'sc.name as companyname',
            'st.name as travelname'
        )
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.guestcode', '=', 'roomocc.guestprof')
                    ->where('guestprof.propertyid', $this->propertyid);
            })
            ->leftJoin('guestfolio', function ($query) {
                $query->on('guestfolio.docid', '=', 'roomocc.docid')
                    ->on('guestfolio.guestprof', '=', 'roomocc.guestprof');
            })
            ->leftJoin('grpbookingdetails', function ($query) {
                $query->on('grpbookingdetails.ContraDocId', '=', 'roomocc.docid')
                    ->where('grpbookingdetails.Property_ID', $this->propertyid);
            })
            ->leftJoin('booking', function ($query) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->where('grpbookingdetails.Property_ID', $this->propertyid);
            })
            ->join('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
            ->leftJoin('enviro_form', 'enviro_form.propertyid', '=', 'roomocc.propertyid')
            ->leftJoin('subgroup as sc', 'sc.sub_code', '=', 'guestfolio.company')
            ->leftJoin('subgroup as st', 'st.sub_code', '=', 'guestfolio.travelagent')
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.relatedfolionodocid', '=', 'roomocc.docid')
                    ->whereIn('paycharge.vtype', ['RC', 'REV'])
                    ->whereNull('paycharge.modeset')
                    ->whereColumn('paycharge.sno1', '=', 'roomocc.sno1');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('paycharge.billno', '0')
            ->whereNotNull('paycharge.relatedfolionodocid')
            ->where(function ($query) {
                $query->whereNotNull('roomocc.plancode')
                    ->orWhereNull('roomocc.plancode');
            })
            ->where('roomocc.leaderyn', 'Y')
            ->whereNull('roomocc.type')
            ->groupBy('roomocc.roomno')
            ->get();

        return view('property.mergefolioreverse', [
            'bookedroomdata' => $bookedroomdata
        ]);
    }

    public function mergereverseroomdata(Request $request)
    {

        $excludedFolios = RoomOcc::where('propertyid', $this->propertyid)
            ->where('leaderyn', 'Y')
            ->pluck('folioNo')
            ->toArray();

        $bookedroomdata = RoomOcc::select(
            'roomocc.*',
            'booking.BookedBy',
            DB::raw('DATE_SUB(roomocc.depdate, INTERVAL 1 DAY) as depdate_minus_one'),
            DB::raw('IFNULL(paycharge.billno, 0) as billno'),
            'enviro_form.checkout as envcheck',
            'room_cat.cat_code',
            'room_cat.name as roomcatname',
            'guestprof.con_prefix',
            'guestprof.mobile_no',
            'guestprof.guestcode',
            'roomocc.guestprof',
            'plan_mast.pcode',
            'guestfolio.company',
            'guestfolio.pickupdrop',
            'guestfolio.remarks',
            'plan_mast.name as planname',
            'sc.name as companyname',
            'st.name as travelname'
        )
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.guestcode', '=', 'roomocc.guestprof')
                    ->where('guestprof.propertyid', $this->propertyid);
            })
            ->leftJoin('guestfolio', function ($query) {
                $query->on('guestfolio.docid', '=', 'roomocc.docid')
                    ->on('guestfolio.guestprof', '=', 'roomocc.guestprof');
            })
            ->leftJoin('grpbookingdetails', function ($query) {
                $query->on('grpbookingdetails.ContraDocId', '=', 'roomocc.docid')
                    ->where('grpbookingdetails.Property_ID', $this->propertyid);
            })
            ->leftJoin('booking', function ($query) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->where('grpbookingdetails.Property_ID', $this->propertyid);
            })
            ->join('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
            ->leftJoin('enviro_form', 'enviro_form.propertyid', '=', 'roomocc.propertyid')
            ->leftJoin('subgroup as sc', 'sc.sub_code', '=', 'guestfolio.company')
            ->leftJoin('subgroup as st', 'st.sub_code', '=', 'guestfolio.travelagent')
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.relatedfolionodocid', '=', 'roomocc.docid')
                    ->whereIn('paycharge.vtype', ['RC', 'REV'])
                    ->whereNull('paycharge.modeset')
                    ->whereColumn('paycharge.sno1', '=', 'roomocc.sno1');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('paycharge.billno', '0')
            ->where(function ($query) {
                $query->whereNotNull('roomocc.plancode')
                    ->orWhereNull('roomocc.plancode');
            })
            ->whereNull('roomocc.type')
            ->whereNotIn('roomocc.folioNo', $excludedFolios)
            ->groupBy('roomocc.folioNo')
            ->get();


        $data = [
            'bookedroomdata' => $bookedroomdata
        ];

        return response()->json($data);
    }

    public function mergereverseroompost(Request $request)
    {
        $permission = revokeopen(141119);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        // exit;
        $foliochk = $request->foliochk;
        $merdocid = $request->merdocid;
        $merroomno = $request->merroomno;

        array_push($foliochk, $merdocid);
        // return $foliochk;
        try {
            DB::beginTransaction();
            $payfetch = Paycharge::where('propertyid', $this->propertyid)
                ->where('folionodocid', $merdocid)
                ->first();

            if (!$payfetch) {
                return back()->with('error', 'Main folio not found');
            }

            RoomOcc::where('propertyid', $this->propertyid)->whereIn('docid', $foliochk)->update(['leaderyn' => 'N']);


            $payfetchall = Paycharge::where('propertyid', $this->propertyid)
                ->whereIN('relatedfolionodocid', $foliochk)
                ->where('folionodocid', $merdocid)
                ->get();


            foreach ($payfetchall as $row) {
                Paycharge::where('propertyid', $this->propertyid)
                    ->where('relatedfolionodocid', $row->relatedfolionodocid)
                    ->update([
                        'folionodocid' => $row->relatedfolionodocid,
                        'foliono' => $row->relatdfoliono,
                        'relatedfolionodocid' => null,
                        'relatdfoliono'       => null,
                        'msno1' => 0,
                    ]);
            }

            // exit;
            DB::commit();
            return back()->with('success', 'Reverse Folio merged successfully');
        } catch (Exception $e) {
            DB::rollBack();
            return back()->with('success', 'Unknown Error Occured: ' . $e->getMessage() . ' On Line : ' . $e->getLine());
        }
    }

    public function chkkotpendingroom(Request $request)
    {
        $folionodocid = $request->input('folionodocid');
        $sno1 = $request->input('sno1');
        $sno = $request->input('sno');

        $roomnos = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $folionodocid)
            ->pluck('roomno')
            ->toArray();

        $chkkot = Kot::where('propertyid', $this->propertyid)
            ->whereIn('roomno', $roomnos)
            ->where('pending', 'Y')
            ->where('nckot', 'N')
            ->where('voidyn', 'N')
            ->groupBy('kot.roomno')
            ->get();

        if (count($chkkot) > 0) {
            return response()->json([
                'success' => true,
                'kot' => 'pending',
                'message' => "KOT is pending for roomno(s): " . implode(', ', $chkkot->pluck('roomno')->toArray())
            ]);
        }
    }
}
