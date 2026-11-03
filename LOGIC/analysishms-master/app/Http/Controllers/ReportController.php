<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Models\Bookings;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Guestfolio;
use App\Models\Suntran;
use App\Models\Sale1;
use App\Models\Sale2;
use App\Models\Stock;
use App\Models\SubGroup;
use App\Models\MenuHelp;
use App\Models\Paycharge;
use App\Models\Companyreg;
use App\Models\RoomOcc;
use App\Models\FomBillDetail;
use App\Models\BussSource;
use App\Models\EnviroFom;
use App\Models\Depart;
use App\Models\EnviroGeneral;
use App\Models\EnviroInventory;
use App\Models\Focc;
use App\Models\GrpBookinDetail;
use App\Models\ItemCatMast;
use App\Models\ItemMast;
use App\Models\Kot;
use App\Models\PaychargeH;
use App\Models\Revmast;
use App\Models\RoomCat;
use App\Models\HallSale1;
use App\Models\RoomMast;
use App\Models\States;
use App\Models\TaxStructure;
use App\Models\VoucherType;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Support\Facades\Cache;
use Laravel\Ui\Presets\React;
use Laravel\Ui\UiCommand;
use Monolog\Formatter\GoogleCloudLoggingFormatter;
use Monolog\Handler\FlowdockHandler;
use Symfony\Component\CssSelector\Parser\Handler\NumberHandler;
use Symfony\Component\EventDispatcher\Attribute\AsEventListener;
use Symfony\Component\Mailer\Transport\Dsn;
use Illuminate\Support\Facades\Log;
use Spatie\FlareClient\Report;

use function PHPSTORM_META\type;
use function Termwind\ask;

class ReportController extends Controller
{


    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;

    ///////////////////////////  Deepak Code Repport //////////////////////////

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
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }
    public function ncurfetch()
    {
        $ncurdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        return $ncurdate;
        $paycharge = Paycharge::$encrypter->value;
    }

    public function dailyFunctionSheet(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        $distinctuname = Paycharge::where('propertyid', $this->propertyid)->where('modeset', 'S')->distinct('u_name')->get(['u_name']);
        return view('property.dailyfunctionsheet', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'distinctuname' => $distinctuname,
            'company' => $company,
            'revheading' => $revheading
        ]);
    }

    public function dailyFunctionSheetData(Request $request)
    {

        // try {
        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $type = $request->input('type');
        $propertyid = $this->propertyid;

        if ($type == 1) {
            $query = $this->getFunctionData($fromdate, $todate, $propertyid);
        } else if ($type == 2) {
            $query = $this->getPendingData($fromdate, $todate, $propertyid);
        } else if ($type == 3) {
            $query = $this->getAdvanceData($fromdate, $todate, $propertyid);
        } else {
            // For type 3 or any other invalid type, return zero records
            return response()->json([
                'draw' => $draw,
                'recordsTotal' => 0,
                'recordsFiltered' => 0,
                'data' => []
            ]);
        }


        // DataTables global search filter
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('S.vno', 'like', "%{$search}%")
                    ->orWhere('VM.name', 'like', "%{$search}%")
                    ->orWhere('VO.fromdate', 'like', "%{$search}%")
                    ->orWhere('VO.dromtime', 'like', "%{$search}%")
                    ->orWhere('VO.totime', 'like', "%{$search}%")
                    ->orWhere('S.guaratt', 'like', "%{$search}%")
                    ->orWhere('S.coverrate', 'like', "%{$search}%")
                    ->orWhere('functiontype.name', 'like', "%{$search}%")
                    ->orWhere('S.partyname', 'like', "%{$search}%");
            });
        }

        $total = $query->count();
        $data = $query->offset($start)->limit($length)->get();
        $result = [];
        $sno = $start + 1;
        $lastFpno = null;

        if ($type == 3) {
            // Sort $data by fpno (vno) so all same fpno rows are together
            $data = $data->sortBy('vno')->values();
            $fpnoMap = [];
        }

        foreach ($data as $row) {
            if ($type == 3) {
                $currentFpno = $row->vno;
                if (!isset($fpnoMap[$currentFpno])) {
                    $fpnoMap[$currentFpno] = $sno++;
                    $showSno = $fpnoMap[$currentFpno];
                } else {
                    $showSno = '';
                }
                $result[] = [
                    'sno'           => $showSno,
                    'fpno'          => $row->vno,
                    'venue'         => $row->Venue ?? '',
                    'function_date' => $row->fromdate ?? '',
                    'for_time'      => $row->ForTime ?? '',
                    'to_time'       => $row->ToTime ?? '',
                    'pax'           => $row->Pax ?? '',
                    'pax_rate'      => $row->Rate ?? '',
                    'function_type' => $row->FuncType ?? '',
                    'party_name'    => $row->PartyName ?? '',
                    'advance'       => $row->Advance ?? '',
                    'type'          => $row->Adv_Type ?? '',
                    'rect_no'       => $row->Adv_No ?? '',
                    'rect_date'     => $row->Adv_Date ?? '',
                ];
            } else {
                $currentFpno = $row->vno;
                $showSno = ($currentFpno !== $lastFpno) ? $sno++ : '';
                $lastFpno = $currentFpno;
                $advances = $this->getAdvanceDetails($row->docid, $propertyid);

                if ($advances->isNotEmpty()) {
                    $first = true;
                    foreach ($advances as $advance) {
                        $result[] = [
                            'sno'           => $first ? $showSno : '',
                            'fpno'          => $row->vno,
                            'venue'         => $row->Venue ?? '',
                            'function_date' => $row->fromdate ?? '',
                            'for_time'      => $row->ForTime ?? '',
                            'to_time'       => $row->ToTime ?? '',
                            'pax'           => $row->Pax ?? '',
                            'pax_rate'      => $row->Rate ?? '',
                            'function_type' => $row->FuncType ?? '',
                            'party_name'    => $row->PartyName ?? '',
                            'advance'       => $advance->Advance ?? '',
                            'type'          => $advance->Adv_Type ?? '',
                            'rect_no'       => $advance->Adv_No ?? '',
                            'rect_date'     => $advance->Adv_Date ?? '',
                        ];
                        $first = false;
                    }
                } else {
                    $result[] = [
                        'sno'           => $showSno,
                        'fpno'          => $row->vno,
                        'venue'         => $row->Venue ?? '',
                        'function_date' => $row->fromdate ?? '',
                        'for_time'      => $row->ForTime ?? '',
                        'to_time'       => $row->ToTime ?? '',
                        'pax'           => $row->Pax ?? '',
                        'pax_rate'      => $row->Rate ?? '',
                        'function_type' => $row->FuncType ?? '',
                        'party_name'    => $row->PartyName ?? '',
                        'advance'       => '',
                        'type'          => '',
                        'rect_no'       => '',
                        'rect_date'     => '',
                    ];
                }
            }
        }

        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $total,
            'recordsFiltered' => $total,
            'data' => $result
        ]);
    }


    private function getAdvanceDetails($contradocid, $propertyid)
    {
        $query = DB::table('paychargeh as PH')
            ->select([
                'PH.sno',
                'PH.vno as Adv_No',
                'PH.vdate as Adv_Date',
                DB::raw("CASE WHEN PH.Vtype = 'AD' THEN PH.AmtCr ELSE -PH.AmtDr END as Advance"),
                'PH.paytype as Adv_Type',
            ])
            ->whereIn('PH.vtype', ['AD', 'AR'])
            ->where('PH.restcode', 'BANQ' . $propertyid)
            ->where('PH.contradocid', $contradocid)
            ->where('PH.sno', 1)
            ->orderBy('PH.vdate')
            ->orderBy('PH.vno')
            ->orderBy('PH.sno');

        return $query->get();
    }


    private function getFunctionData($fromdate, $todate, $propertyid)
    {
        $query = DB::table('hallbook as S')
            ->select([
                'S.docid',
                'S.vno',
                DB::raw("CONCAT(
                IF(TRIM(IFNULL(S.mobileno, '')) <> '', CONCAT(TRIM(S.mobileno), ', '), ''),
                IF(TRIM(IFNULL(S.mobileno1, '')) <> '', CONCAT(TRIM(S.mobileno1), ', '), '')
            ) as ContactNo"),
                'VM.name as Venue',
                'S.guaratt as Pax',
                'S.coverrate as Rate',
                'S.partyname as PartyName',
                'functiontype.name as FuncType',
                'VO.fromdate',
                'VO.dromtime as ForTime',
                'VO.todate',
                'VO.totime as ToTime',
            ])
            ->leftJoin('functiontype', 'S.Func_Name', '=', 'functiontype.code')
            ->join('venueocc as VO', 'S.DocId', '=', 'VO.fpdocid')
            ->join('venuemast as VM', 'VO.VenuCode', '=', 'VM.code')
            ->where('S.restcode', 'BANQ' . $propertyid)
            ->where('S.propertyid', $propertyid)
            ->whereBetween('VO.fromdate', [
                DB::raw("STR_TO_DATE('$fromdate', '%Y-%m-%d')"),
                DB::raw("STR_TO_DATE('$todate', '%Y-%m-%d')")
            ])
            ->orderBy('VO.fromdate')
            ->orderBy('VO.dromtime');

        return $query;
    }

    private function getPendingData($fromdate, $todate, $propertyid)
    {
        $query = DB::table('hallbook as S')
            ->select([
                'S.docid',
                'S.vno',
                DB::raw("CONCAT(
                IF(TRIM(IFNULL(S.mobileno, '')) <> '', CONCAT(TRIM(S.mobileno), ', '), ''),
                IF(TRIM(IFNULL(S.mobileno1, '')) <> '', CONCAT(TRIM(S.mobileno1), ', '), '')
            ) as ContactNo"),
                'VM.name as Venue',
                'S.guaratt as Pax',
                'S.coverrate as Rate',
                'S.partyname as PartyName',
                'functiontype.name as FuncType',
                'VO.fromdate',
                'VO.dromtime as ForTime',
                'VO.todate',
                'VO.totime as ToTime',
            ])
            ->leftJoin('functiontype', 'S.Func_Name', '=', 'functiontype.code')
            ->join('venueocc as VO', 'S.DocId', '=', 'VO.fpdocid')
            ->join('venuemast as VM', 'VO.VenuCode', '=', 'VM.code')
            ->where('S.restcode', 'BANQ' . $propertyid)
            ->where('S.propertyid', $propertyid)
            ->whereNotIn('S.docid', function ($subquery) use ($propertyid) {
                $subquery->select('bookdocid')
                    ->from('hallsale1')
                    ->where('restcode', 'BANQ' . $propertyid)
                    ->where('propertyid', $propertyid);
            })
            ->whereBetween('VO.fromdate', [
                DB::raw("STR_TO_DATE('$fromdate', '%Y-%m-%d')"),
                DB::raw("STR_TO_DATE('$todate', '%Y-%m-%d')")
            ])
            ->orderBy('VO.fromdate')
            ->orderBy('VO.dromtime');

        return $query;
    }

    private function getAdvanceData($fromdate, $todate, $propertyid)
    {
        $query = DB::table('hallbook as S')
            ->select([
                'S.docid',
                'S.vno',
                DB::raw("CONCAT(
                IF(TRIM(IFNULL(S.mobileno, '')) <> '', CONCAT(TRIM(S.mobileno), ', '), ''),
                IF(TRIM(IFNULL(S.mobileno1, '')) <> '', CONCAT(TRIM(S.mobileno1), ', '), '')
            ) as ContactNo"),
                'VM.name as Venue',
                'VO.fromdate',
                'VO.dromtime as ForTime',
                'VO.todate',
                'VO.totime as ToTime',
                'S.guaratt as Pax',
                'S.coverrate as Rate',
                'S.partyname as PartyName',
                'functiontype.name as FuncType',
                'PH.amtcr as Advance',
                'PH.paytype as Adv_Type',
                'PH.vno as Adv_No',
                'PH.vdate as Adv_Date',
            ])
            ->leftJoin('functiontype', 'S.func_name', '=', 'functiontype.Code')
            ->join('venueocc as VO', 'S.DocId', '=', 'VO.fpdocid')
            ->join('venuemast as VM', 'VO.VenuCode', '=', 'VM.code')
            ->leftJoin('paychargeh as PH', function ($join) {
                $join->on('S.DocId', '=', 'PH.contradocid')
                    ->where('PH.VType', '=', 'AD');
            })
            ->where('S.restcode', 'BANQ' . $propertyid)
            ->where('S.propertyid', $propertyid)
            ->where('PH.sno', 1)
            ->whereBetween('VO.fromdate', [
                DB::raw("STR_TO_DATE('$fromdate', '%Y-%m-%d')"),
                DB::raw("STR_TO_DATE('$todate', '%Y-%m-%d')")
            ])
            // ->orderBy('VO.fromdate')
            // ->orderBy('VO.dromtime');
            ->orderBy('PH.vdate')
            ->orderBy('PH.vno')
            ->orderBy('PH.sno');

        return $query;
    }


    public function bookingEnquiryDetail(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        $distinctuname = Paycharge::where('propertyid', $this->propertyid)->where('modeset', 'S')->distinct('u_name')->get(['u_name']);
        return view('property.bookinginquirydetail', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'distinctuname' => $distinctuname,
            'company' => $company,
            'revheading' => $revheading
        ]);
    }

    public function bookingEnquiryDetailFetch(Request $request)
    {

        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $fromDate = $request->input('fromdate'); // ex: '2025-03-31'
        $toDate = $request->input('todate');     // ex: '2026-03-31'
        $status = $request->input('status');     // ex: 'Active'
        $propertyId = $this->propertyid;

        // print_r($status);

        $query = DB::table('bookinginquiry as B')
            ->join('bookingdetail as BD', 'B.inqno', '=', 'BD.inqno')
            ->leftJoin('functiontype as F', 'B.functype', '=', 'F.code')
            ->leftJoin('venuemast as V', 'BD.venuecode', '=', 'V.code')
            ->select(
                'B.inqno',
                'BD.fromdate',
                'BD.todate',
                'BD.fromtime',
                'BD.totime',
                'F.Name as FunctionType',
                'BD.venuecode',
                'V.Name as VenueName',
                'B.partyname',
                'B.mobileno',
                'B.conperson',
                'B.bookedby',
                'B.handledby',
                'B.status',
                'B.u_name',
                'B.remark'
            )
            ->where('B.cattype', 'Indoor')
            ->where('B.propertyid', $propertyId)
            ->whereBetween('BD.fromdate', [$fromDate, $toDate]);

        // Status filter logic
        if ($status === 'Active') {
            $query->where('B.status', 'Active');
        } elseif ($status === 'Inactive') {
            $query->where('B.status', 'Inactive');
        }

        // DataTables server-side pagination, search, and ordering
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('B.inqno', 'like', "%{$search}%")
                    ->orWhere('B.partyname', 'like', "%{$search}%")
                    ->orWhere('B.mobileno', 'like', "%{$search}%")
                    ->orWhere('V.Name', 'like', "%{$search}%");
            });
        }

        $total = $query->count();

        $data = $query
            ->orderBy('BD.fromdate')
            ->orderBy('BD.fromtime')
            ->offset($start)
            ->limit($length)
            ->get();

        return response()->json([
            'draw' => intval($draw),
            'recordsTotal' => $total,
            'recordsFiltered' => $total,
            'data' => $data,
        ]);
    }

    public function outStandingreport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        $distinctuname = Paycharge::where('propertyid', $this->propertyid)->where('modeset', 'S')->distinct('u_name')->get(['u_name']);
        return view('property.outstandingreport', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'distinctuname' => $distinctuname,
            'company' => $company,
            'revheading' => $revheading
        ]);
    }

    public function outStandingreportData(Request $request)
    {

        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $propertyid = $this->propertyid;


        $query = DB::table('hallsale1 as H')
            ->select([
                'H.docId',
                'H.vdate as BookDate',
                'V.fromdate as FuncStartDate',
                'V.todate as FuncEndDate',
                'V.dromtime as FuncStartTime',
                'V.totime as FuncEndTime',
                'F.name as FuncName',
                'H.party as PartyName',
                'S.vno as BillNo',
                'SH.vdate as BillDate',
                DB::raw('(IFNULL(SH.Amount,0) + IFNULL(S.Amount,0)) as Amount'),
                'H.BookDocID'
            ])
            ->leftJoin('paychargeh as P', 'H.DocId', '=', 'P.DocId')
            ->leftJoin('suntran as S', 'H.DocId', '=', 'S.DocId')
            ->leftJoin('suntranh as SH', 'H.DocId', '=', 'SH.DocId')
            ->leftJoin('hallbook as HB', 'H.bookdocid', '=', 'HB.docid')
            ->leftJoin('functiontype as F', 'HB.func_name', '=', 'F.code')
            ->leftJoin('venueocc as V', 'HB.DocId', '=', 'V.FPDocId')
            ->where(function ($q) {
                $q->where('S.suncode', 10103)
                    ->orWhere('SH.suncode', 10103);
            })
            ->where('H.propertyid', $propertyid)
            ->where('H.restcode', 'BANQ' . $propertyid)
            ->whereBetween('H.vdate', [$fromdate, $todate])
            ->whereRaw("((IFNULL(SH.Amount,0) + IFNULL(S.Amount,0)) - (IFNULL(P.AmtCr,0) + IFNULL(H.Advance,0))) > 0")
            ->groupBy('H.docId')
            ->distinct();

        // DataTables search
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('H.party', 'like', "%{$search}%")
                    ->orWhere('F.name', 'like', "%{$search}%")
                    ->orWhere('S.vno', 'like', "%{$search}%")
                    ->orWhere('SH.vdate', 'like', "%{$search}%")
                    ->orWhere('V.fromdate', 'like', "%{$search}%");
            });
        }

        $total = $query->count();
        $data = $query->offset($start)->limit($length)->get();

        // Format data for DataTables
        $result = [];
        $sno = $start + 1;
        foreach ($data as $row) {
            $advance = $this->getAdvanceByContraDoc($row->BookDocID, $propertyid);
            $totalReceipt = $this->getTotalReceiptByDoc($row->docId);
            $balance = ($row->Amount) - (($advance->Advance ?? 0) + ($totalReceipt->TotRect ?? 0));

            $result[] = [
                'sno' => $sno++,
                'book_date' => $row->BookDate,
                'function_date' => $row->FuncStartDate,
                'for_time' => $row->FuncStartTime,
                'function_type' => $row->FuncName,
                'party_name' => $row->PartyName,
                'fpno' => $row->BillNo,
                'rect_date' => $row->BillDate,
                'amount' => $row->Amount,
                'advance' => $advance->Advance ?? 0,
                'rect_no' => $totalReceipt->TotRect ?? 0,
                'balance' => $balance,
            ];
        }

        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $total,
            'recordsFiltered' => $total,
            'data' => $result
        ]);
    }


    private function getAdvanceByContraDoc($contraDocId, $propertyId = 103)
    {
        return DB::table('paychargeh')
            ->select(DB::raw('SUM(AmtCr) as Advance'))
            ->where('VType', 'AD')
            ->where('propertyid', $propertyId)
            ->where('ContraDocID', $contraDocId)
            ->first();
    }

    private function getTotalReceiptByDoc($docId)
    {
        return DB::table('paychargeh')
            ->select(DB::raw('IFNULL(SUM(AmtCr),0) as TotRect'))
            ->where('DocId', $docId)
            ->first();
    }


    public function companyWiseSaleReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        $distinctuname = Paycharge::where('propertyid', $this->propertyid)->where('modeset', 'S')->distinct('u_name')->get(['u_name']);
        $partyName = HallSale1::where('propertyid', $this->propertyid)->distinct('party')->get(['party']);
        return view('property.companywisesalereport', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'distinctuname' => $distinctuname,
            'company' => $company,
            'partyName' => $partyName,
            'revheading' => $revheading
        ]);
    }



    // DataTables-compatible Banquet Balance fetch (pagination, search, multi-party)
    public function companyWiseSaleReportData(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $partyNames = $request->input('party_name');

        // Party list resolve karo
        if ($partyNames === 'all' || empty($partyNames)) {
            $partyList = DB::table('hallsale1')
                ->where('propertyid', $this->propertyid)
                ->distinct()
                ->pluck('party')
                ->toArray();
        } else {
            $partyList = array_filter(array_map('trim', explode(',', $partyNames)));
        }

        if (empty($partyList)) {
            return response()->json([
                'draw'            => intval($draw),
                'recordsTotal'    => 0,
                'recordsFiltered' => 0,
                'data'            => [],
            ]);
        }

        $advanceSql = "(SELECT IFNULL(SUM(amtcr),0) FROM paychargeh WHERE ContraDocID = H.bookdocid)";
        $totRectSql = "(SELECT IFNULL(SUM(amtcr),0) FROM paychargeh WHERE DocId = H.docId)";
        $balanceSql = "(H.netamt - {$advanceSql})";

        $baseQuery = DB::table('hallsale1 as H')
            ->leftJoin('hallbook as HB', 'H.bookdocid', '=', 'HB.docid')
            ->leftJoin('functiontype as F', 'HB.func_name', '=', 'F.code')
            ->leftJoin('venueocc as V', 'HB.docid', '=', 'V.fpdocid')
            ->select([
                'H.docId',
                'H.party    as PartyName',
                'H.vno      as BillNo',
                'H.vdate    as BillDate',
                'H.netamt   as Amount',
                'V.dromtime as FuncStartDate',
                'V.dromtime as FuncStartTime',
                'V.totime   as FuncEndTime',
                'F.name     as FuncName',
                'H.bookdocid',
                DB::raw("{$advanceSql} as Advance"),
                DB::raw("{$totRectSql} as TotRect"),
                DB::raw("{$balanceSql} as Balance"),
            ])
            ->where('H.restcode',   'BANQ' . $this->propertyid)
            ->where('H.propertyid', $this->propertyid)
            ->whereBetween('H.vdate', [$fromdate, $todate])
            ->whereIn('H.party', $partyList);
        // havingRaw HATA DIYA — balance negative bhi valid data hai

        // Search filter
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $baseQuery->where(function ($q) use ($search) {
                $q->where('H.party', 'like', "%{$search}%")
                    ->orWhere('F.name',  'like', "%{$search}%")
                    ->orWhere('H.vno',   'like', "%{$search}%");
            });
        }

        // Total count
        $total = (clone $baseQuery)->count();

        // Data fetch with pagination
        $data = (clone $baseQuery)
            ->orderBy('H.party')
            ->orderBy('H.vno')
            ->offset($start)
            ->limit($length)
            ->get();

        // Response format
        $result = [];
        $sno = $start + 1;
        foreach ($data as $row) {
            $result[] = [
                'sno'           => $sno++,
                'party_name'    => $row->PartyName,
                'fpno'          => $row->BillNo,
                'rect_date'     => $row->BillDate,
                'function_date' => $row->FuncStartDate,
                'for_time'      => $row->FuncStartTime,
                'function_type' => $row->FuncName,
                'amount'        => number_format((float)$row->Amount,  2, '.', ''),
                'advance'       => number_format((float)$row->Advance, 2, '.', ''),
                'rect_no'       => number_format((float)$row->TotRect, 2, '.', ''),
                'balance'       => number_format((float)$row->Balance, 2, '.', ''),
            ];
        }

        return response()->json([
            'draw'            => intval($draw),
            'recordsTotal'    => $total,
            'recordsFiltered' => $total,
            'data'            => $result,
        ]);
    }
    // public function companyWiseSaleReportData(Request $request)
    // {
    //     $draw = $request->input('draw');
    //     $start = $request->input('start', 0);
    //     $length = $request->input('length', 10);
    //     $fromdate = $request->input('fromdate');
    //     $todate = $request->input('todate');
    //     $partyNames = $request->input('party_name'); // comma-separated or 'all'

    //     // Convert partyNames to array if not 'all'
    //     if ($partyNames === 'all' || empty($partyNames)) {
    //         $partyList = DB::table('hallsale1')->distinct()->pluck('party')->toArray();
    //     } else {
    //         $partyList = array_filter(array_map('trim', explode(',', $partyNames)));
    //     }

    //     // If $partyList is empty, return no data
    //     if (empty($partyList)) {
    //         return response()->json([
    //             'draw' => intval($draw),
    //             'recordsTotal' => 0,
    //             'recordsFiltered' => 0,
    //             'data' => [],
    //         ]);
    //     }

    //     $advanceSub = DB::table('paychargeh')
    //         ->selectRaw('IFNULL(SUM(amtcr),0)')
    //         ->whereColumn('ContraDocID', 'H.bookdocid');
    //     $totRectSub = DB::table('paychargeh')
    //         ->selectRaw('IFNULL(SUM(amtcr),0)')
    //         ->whereColumn('DocId', 'H.docId');

    //     $baseQuery = DB::table('hallsale1 as H')
    //         ->leftJoin('paychargeh as P', 'H.docId', '=', 'P.DocId')
    //         ->leftJoin('hallbook as HB', 'H.bookdocid', '=', 'HB.docid')
    //         ->leftJoin('functiontype as F', 'HB.func_name', '=', 'F.code')
    //         ->leftJoin('venueocc as V', 'HB.docid', '=', 'V.fpdocid')
    //         ->select([
    //             'H.docId',
    //             'HB.vdate as BookDate',
    //             'V.dromtime as FuncStartDate',
    //             'V.todate as FuncEndDate',
    //             'V.dromtime as FuncStartTime',
    //             'V.totime as FuncEndTime',
    //             'F.name as FuncName',
    //             'H.party as PartyName',
    //             'H.vno as BillNo',
    //             'H.vdate as BillDate',
    //             'H.netamt as Amount',
    //             // ✅ Subquery columns
    //             DB::raw("({$advanceSub->toSql()}) as Advance"),
    //             DB::raw("(H.netamt - ({$advanceSub->toSql()})) as Balance"),
    //             DB::raw("({$totRectSub->toSql()}) as TotRect"),
    //             'H.bookdocid',
    //         ])
    //         ->mergeBindings($advanceSub)
    //         ->mergeBindings($totRectSub)
    //         ->where('H.restcode', 'BANQ' . $this->propertyid)
    //         ->where('H.propertyid', $this->propertyid)
    //         ->whereBetween('H.vdate', [$fromdate, $todate])
    //         ->whereIn('H.party', $partyList)
    //         ->havingRaw('Balance > 0');

    //     // DataTables search
    //     if ($request->input('search.value')) {
    //         $search = $request->input('search.value');
    //         $baseQuery->where(function ($q) use ($search) {
    //             $q->where('H.party', 'like', "%{$search}%")
    //                 ->orWhere('F.Name', 'like', "%{$search}%")
    //                 ->orWhere('H.vno', 'like', "%{$search}%");
    //         });
    //     }

    //     $total = $baseQuery->count();

    //     // Pagination
    //     $data = $baseQuery
    //         ->orderBy('H.party')
    //         ->orderBy('H.vno')
    //         ->offset($start)
    //         ->limit($length)
    //         ->get();

    //     // Format for DataTables
    //     $result = [];
    //     $sno = $start + 1;
    //     foreach ($data as $row) {
    //         $result[] = [
    //             'sno' => $sno++,
    //             'book_date' => $row->BookDate,
    //             'function_date' => $row->FuncStartDate,
    //             'for_time' => $row->FuncStartTime,
    //             'function_type' => $row->FuncName,
    //             'party_name' => $row->PartyName,
    //             'fpno' => $row->BillNo,
    //             'rect_date' => $row->BillDate,
    //             'rect_no' => $row->TotRect ?? 0.00,
    //             'amount' => $row->Amount ?? 0.00,
    //             'advance' => $row->Advance ?? 0.00,
    //             'balance' => $row->Balance ?? 0.00
    //         ];
    //     }

    //     return response()->json([
    //         'draw' => intval($draw),
    //         'recordsTotal' => $total,
    //         'recordsFiltered' => $total,
    //         'data' => $result,
    //     ]);
    // }


    public function itemWiseSaleReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        $distinctuname = Paycharge::where('propertyid', $this->propertyid)->where('modeset', 'S')->distinct('u_name')->get(['u_name']);
        $itemcat = ItemCatMast::where('propertyid', $this->propertyid)->get();
        return view('property.itemwisesalereport', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'distinctuname' => $distinctuname,
            'company' => $company,
            'itemcat' => $itemcat,
            'revheading' => $revheading
        ]);
    }

    public function itemWiseSaleReportData(Request $request)
    {

        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $query = DB::table('hallstock as H')
            ->select([
                'H.VDate as SDate',
                'I.Name as Item',
                DB::raw('SUM(H.QtyIss) as Qty'),
                DB::raw('MAX(H.Unit) as Unit'),
                DB::raw('MAX(H.Rate) as Rate'),
                DB::raw('SUM(H.Amount) as Amount'),
                DB::raw('IFNULL(unitmast.name, "") as UnitName')
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('H.Item', '=', 'I.Code')
                    ->where('I.Property_ID', '=', $this->propertyid);
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('unitmast.ucode', '=', 'H.Unit')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->where('H.VType', 'IDC')
            ->whereBetween('H.VDate', [$fromdate, $todate])
            ->groupBy('H.VDate', 'H.Item');

        // DataTables search
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('I.Name', 'like', "%{$search}%")
                    ->orWhere('H.VDate', 'like', "%{$search}%");
            });
        }

        $total = $query->count();
        $data = $query->offset($start)->limit($length)->get();

        // Format data for DataTables
        $result = [];
        $sno = $start + 1;
        foreach ($data as $row) {
            $result[] = [
                'sno'     => $sno++,
                'sdate'   => $row->SDate,
                'item'    => $row->Item,
                'qty'     => $row->Qty,
                'unit'    => $row->UnitName,
                'rate'    => $row->Rate,
                'amount'  => $row->Amount,
            ];
        }

        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $total,
            'recordsFiltered' => $total,
            'data' => $result
        ]);
    }

    public function kitchenWiseIssueSaleReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate      = $this->ncurdate;
        $company       = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename     = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $revheading    = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        $distinctuname = Paycharge::where('propertyid', $this->propertyid)->where('modeset', 'S')->distinct('u_name')->get(['u_name']);
        $kitchens      = Depart::where('propertyid', $this->propertyid)
            ->where('rest_type', 'Kitchen')
            ->orderBy('name')
            ->get(['name', 'dcode']);

        return view('property.kitchenwiseissuesalereport', [
            'fromdate'      => $fromdate,
            'statename'     => $statename,
            'distinctuname' => $distinctuname,
            'company'       => $company,
            'revheading'    => $revheading,
            'kitchens'      => $kitchens,
        ]);
    }

    public function kitchenWiseIssueSaleReportData(Request $request)
    {
        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $propertyid = $this->propertyid;

        $result = $this->buildFbCostMatrix($fromdate, $todate, $propertyid);

        return response()->json($result);
    }

    // ---------------------------------------------------------------
    //  Core: build the FB-Cost-Statement cross-tab matrix
    // ---------------------------------------------------------------
    private function buildFbCostMatrix($fromdate, $todate, $propertyid)
    {
        /* ── 1. Kitchens (columns) ─────────────────────────────────
         *  Query: SELECT D.Name, D.dcode FROM depart D
         *         WHERE D.rest_type='Kitchen' AND propertyid=? ORDER BY Name
         * ─────────────────────────────────────────────────────────── */
        $kitchens = DB::table('depart as D')
            ->select('D.name as name', 'D.dcode as dcode')
            ->where('D.rest_type', 'Kitchen')
            ->where('D.propertyid', $propertyid)
            ->orderBy('D.name')
            ->get();

        $kitchenCodes = $kitchens->pluck('dcode')->toArray();

        /* ── 2. All CatTypes from master (not just what's in stock) ─
         *  Query: SELECT DISTINCT cattype FROM itemcatmast
         *         WHERE CatType<>'' AND CatType IS NOT NULL
         *           AND Cattype<>'HallRent' AND propertyid=?
         * ─────────────────────────────────────────────────────────── */
        $allCatTypes = DB::table('itemcatmast')
            ->select('CatType')
            ->where('propertyid', $propertyid)
            ->where('CatType', '<>', '')
            ->whereNotNull('CatType')
            ->where('CatType', '<>', 'Hall Rent')
            ->where('CatType', '<>', 'HallRent')
            ->distinct()
            ->orderBy('CatType')
            ->pluck('CatType')
            ->toArray();

        /* ── 3. COST (Issue): stock grouped by CatType × departcode ─
         *  Based on your working query:
         *  SELECT ICM.CatType, SUM(S.Amount) AS NetSale,
         *         MAX(D.Name) AS KitcName, S.departcode
         *  FROM depart D
         *  LEFT JOIN stock S ON D.dcode = S.departcode
         *  LEFT JOIN itemmast IM ON IM.Code=S.item AND IM.RestCode=S.itemrestcode
         *  LEFT JOIN itemcatmast ICM ON IM.ItemcatCode=ICM.Code
         *  WHERE IM.Type='Finish' AND ICM.CatType<>'Hall Rent'
         *    AND S.RestCode<>'' AND S.RestCode IS NOT NULL
         *    AND S.DelFlag<>'Y' AND S.VDate BETWEEN ? AND ?
         *    AND S.propertyid=?
         *  GROUP BY ICM.CatType, S.DepartCode
         * ─────────────────────────────────────────────────────────── */
        $costRows = DB::table('depart as D')
            ->select([
                'ICM.CatType as CatType',
                DB::raw('SUM(S.Amount) as Amount'),
                'S.departcode as DepartCode',
            ])
            ->leftJoin('stock as S', function ($j) use ($propertyid) {
                $j->on('D.dcode', '=', 'S.departcode')
                  ->where('S.propertyid', $propertyid)
                  ->where('S.DelFlag', '<>', 'Y')
                  ->where('S.RestCode', '<>', '')
                  ->whereNotNull('S.RestCode');
            })
            ->leftJoin('itemmast as IM', function ($j) use ($propertyid) {
                $j->on('IM.Code', '=', 'S.item')
                  ->on('IM.RestCode', '=', 'S.itemrestcode')
                  ->where('IM.Property_ID', $propertyid)
                  ->where('IM.Type', 'Finish');
            })
            ->leftJoin('itemcatmast as ICM', 'IM.ItemcatCode', '=', 'ICM.Code')
            ->where('D.rest_type', 'Kitchen')
            ->where('D.propertyid', $propertyid)
            ->where('ICM.CatType', '<>', 'Hall Rent')
            ->whereNotNull('ICM.CatType')
            ->whereBetween('S.VDate', [$fromdate, $todate])
            ->groupBy('ICM.CatType', 'S.departcode')
            ->orderBy('ICM.CatType')
            ->get();

        /* ── 4. SALE: stock QtyRec > 0 per CatType × kitchen ───────
         *  Sale = receipts into kitchen stock (QtyRec > 0)
         *  Using same stock table, same joins, same kitchen filter
         * ─────────────────────────────────────────────────────────── */
        $saleRows = DB::table('depart as D')
            ->select([
                'ICM.CatType as CatType',
                DB::raw('SUM(S.Amount) as Amount'),
                'S.departcode as DepartCode',
            ])
            ->leftJoin('stock as S', function ($j) use ($propertyid) {
                $j->on('D.dcode', '=', 'S.departcode')
                  ->where('S.propertyid', $propertyid)
                  ->where('S.DelFlag', '<>', 'Y')
                  ->where('S.QtyRec', '>', 0);
            })
            ->leftJoin('itemmast as IM', function ($j) use ($propertyid) {
                $j->on('IM.Code', '=', 'S.item')
                  ->on('IM.RestCode', '=', 'S.itemrestcode')
                  ->where('IM.Property_ID', $propertyid)
                  ->where('IM.Type', 'Finish');
            })
            ->leftJoin('itemcatmast as ICM', 'IM.ItemcatCode', '=', 'ICM.Code')
            ->where('D.rest_type', 'Kitchen')
            ->where('D.propertyid', $propertyid)
            ->where('ICM.CatType', '<>', 'Hall Rent')
            ->whereNotNull('ICM.CatType')
            ->whereBetween('S.VDate', [$fromdate, $todate])
            ->groupBy('ICM.CatType', 'S.departcode')
            ->get();

        /* ── 5. Staff Kitchen Issue ─────────────────────────────────
         *  departcode IN (select dcode from depart where rest_type='Staff Kitchen')
         * ─────────────────────────────────────────────────────────── */
        $staffKitchenCodes = DB::table('depart')
            ->where('rest_type', 'Staff Kitchen')
            ->where('propertyid', $propertyid)
            ->pluck('dcode')
            ->toArray();

        $grandStaffIssue = 0;
        if (!empty($staffKitchenCodes)) {
            $grandStaffIssue = (float) DB::table('stock as S')
                ->leftJoin('itemmast as IM', function ($j) use ($propertyid) {
                    $j->on('IM.Code', '=', 'S.item')
                      ->on('IM.RestCode', '=', 'S.itemrestcode')
                      ->where('IM.Property_ID', $propertyid)
                      ->where('IM.Type', 'Finish');
                })
                ->whereIn('S.departcode', $staffKitchenCodes)
                ->where('S.DelFlag', '<>', 'Y')
                ->whereBetween('S.VDate', [$fromdate, $todate])
                ->where('S.propertyid', $propertyid)
                ->sum('S.Amount');
        }

        /* ── 6. Build pivot matrices ────────────────────────────── */

        // costMatrix[CatType][dcode] = amount
        $costMatrix = [];
        foreach ($costRows as $row) {
            if (empty($row->CatType) || empty($row->DepartCode)) continue;
            $costMatrix[$row->CatType][$row->DepartCode] = (float)$row->Amount;
        }

        // saleMatrix[CatType][dcode] = amount
        $saleMatrix = [];
        foreach ($saleRows as $row) {
            if (empty($row->CatType) || empty($row->DepartCode)) continue;
            $saleMatrix[$row->CatType][$row->DepartCode] = (float)$row->Amount;
        }

        /* ── 7. Use master CatTypes (show all, even zero-value ones) */
        $costCatTypes = $allCatTypes;

        /* ── 8. Per-kitchen totals ───────────────────────────────── */
        $netConsumedPerKitchen = [];
        foreach ($kitchenCodes as $dcode) {
            $total = 0;
            foreach ($costCatTypes as $cat) {
                $total += $costMatrix[$cat][$dcode] ?? 0;
            }
            $netConsumedPerKitchen[$dcode] = $total;
        }

        // Sale per kitchen — split into Beverage vs Food/Other
        $saleBevPerKitchen  = [];
        $saleFoodPerKitchen = [];
        $netSalePerKitchen  = [];
        foreach ($kitchenCodes as $dcode) {
            $bev = 0; $food = 0; $net = 0;
            foreach ($saleMatrix as $cat => $byKitchen) {
                $amt  = $byKitchen[$dcode] ?? 0;
                $net += $amt;
                if (stripos($cat, 'bev') !== false || stripos($cat, 'drink') !== false) {
                    $bev  += $amt;
                } else {
                    $food += $amt;
                }
            }
            $saleBevPerKitchen[$dcode]  = $bev;
            $saleFoodPerKitchen[$dcode] = $food;
            $netSalePerKitchen[$dcode]  = $net;
        }

        // Grand totals
        $grandNetConsumed = array_sum($netConsumedPerKitchen);
        // $grandStaffIssue already computed above from Staff Kitchen query
        $grandNetSale     = array_sum($netSalePerKitchen);
        $grandSaleBev     = array_sum($saleBevPerKitchen);
        $grandSaleFood    = array_sum($saleFoodPerKitchen);

        // Net Cost (after staff issue adjustment)
        $grandNetCost = $grandNetConsumed - $grandStaffIssue;

        // Detect beverage / food / liquor CatTypes for ratio lines
        $beverageCats = array_filter($costCatTypes, fn($c) => stripos($c, 'bev') !== false || stripos($c, 'drink') !== false);
        $foodCats     = array_filter($costCatTypes, fn($c) => stripos($c, 'food') !== false || stripos($c, 'dairy') !== false || stripos($c, 'fruit') !== false || stripos($c, 'veg') !== false || stripos($c, 'dry') !== false);
        $liquorCats   = array_filter($costCatTypes, fn($c) => stripos($c, 'liq') !== false || stripos($c, 'spirit') !== false || stripos($c, 'wine') !== false || stripos($c, 'beer') !== false);

        // Cost of food/bev/liquor totals for ratio lines
        $grandCostFood   = 0;
        $grandCostBev    = 0;
        $grandCostLiquor = 0;
        foreach ($beverageCats as $cat) $grandCostBev    += array_sum($costMatrix[$cat] ?? []);
        foreach ($foodCats     as $cat) $grandCostFood   += array_sum($costMatrix[$cat] ?? []);
        foreach ($liquorCats   as $cat) $grandCostLiquor += array_sum($costMatrix[$cat] ?? []);

        // Ratio helpers (percentage)
        $fmtRatio = fn($cost, $sale) => $sale > 0 ? round(($cost / $sale) * 100, 2) : 0;

        $netCostRatio    = $fmtRatio($grandNetConsumed, $grandNetSale);
        $netCostOfFood   = $fmtRatio($grandCostFood,    $grandSaleFood);
        $netCostOfBev    = $fmtRatio($grandCostBev,     $grandSaleBev);
        $netCostOfLiquor = $fmtRatio($grandCostLiquor,  $grandNetSale);
        $netTotalCost    = $fmtRatio($grandNetCost,     $grandNetSale);

        /* ── 9. Return structured data ──────────────────────────── */
        return [
            'kitchens'              => $kitchens->toArray(),
            'costCatTypes'          => $costCatTypes,
            'costMatrix'            => $costMatrix,
            'saleMatrix'            => $saleMatrix,
            'netConsumedPerKitchen' => $netConsumedPerKitchen,
            'saleBevPerKitchen'     => $saleBevPerKitchen,
            'saleFoodPerKitchen'    => $saleFoodPerKitchen,
            'netSalePerKitchen'     => $netSalePerKitchen,
            // grand totals
            'grandNetConsumed'      => $grandNetConsumed,
            'grandStaffIssue'       => $grandStaffIssue,
            'grandNetCost'          => $grandNetCost,
            'grandNetSale'          => $grandNetSale,
            'grandSaleBev'          => $grandSaleBev,
            'grandSaleFood'         => $grandSaleFood,
            'grandCostFood'         => $grandCostFood,
            'grandCostBev'          => $grandCostBev,
            'grandCostLiquor'       => $grandCostLiquor,
            // ratios
            'netCostRatio'          => $netCostRatio,
            'netCostOfFood'         => $netCostOfFood,
            'netCostOfBev'          => $netCostOfBev,
            'netCostOfLiquor'     => $netCostOfLiquor,
            'netTotalCost'        => $netTotalCost,
        ];
    }

    public function printKitchenWiseIssueSaleReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate = $request->fromdate;
        $todate   = $request->todate;
        if (empty($fromdate) || empty($todate)) {
            $fromdate = $this->ncurdate;
            $todate   = $this->ncurdate;
        }

        $matrix  = $this->buildFbCostMatrix($fromdate, $todate, $this->propertyid);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.kitchenwiseissuesalereportprint', array_merge($matrix, [
            'company'     => $company,
            'startdate'   => $fromdate,
            'enddate'     => $todate,
            'reportTitle' => 'Kitchen Wise Issue Sale Report',
        ]))->setPaper('a4', 'landscape');

        return $pdf->stream('kitchen-wise-issue-sale-report-' . $fromdate . '-' . $todate . '.pdf');
    }

    public function exportKitchenWiseIssueSaleReport(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate');
            $todate   = $request->query('todate');
            if (empty($fromdate) || empty($todate)) {
                $fromdate = $this->ncurdate;
                $todate   = $this->ncurdate;
            }

            $m       = $this->buildFbCostMatrix($fromdate, $todate, $this->propertyid);
            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $kitchens     = $m['kitchens'];        // array of {name, dcode}
            $costCatTypes = $m['costCatTypes'];
            $costMatrix   = $m['costMatrix'];
            $saleMatrix   = $m['saleMatrix'];

            $spreadsheet = new \PhpOffice\PhpSpreadsheet\Spreadsheet();
            $sheet       = $spreadsheet->getActiveSheet();
            $sheet->setTitle('FB Cost Statement');

            // Total columns = 1 (label) + count(kitchens) + 1 (Total)
            $totalCols = 1 + count($kitchens) + 1;
            $lastColLetter = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($totalCols);

            // Helper: column letter for kitchen index (1-based, col A = label)
            $kitchenCol = fn(int $idx) => \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($idx + 2);
            $totalCol   = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex(count($kitchens) + 2);

            $fmt = fn($v) => number_format((float)$v, 2, '.', '');

            /* ── Header rows ─────────────────────────── */
            $sheet->mergeCells('A1:' . $lastColLetter . '1');
            $sheet->setCellValue('A1', $company->comp_name ?? '');
            $sheet->getStyle('A1')->applyFromArray(['font' => ['bold' => true, 'size' => 13],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER]]);

            $sheet->mergeCells('A2:' . $lastColLetter . '2');
            $sheet->setCellValue('A2', 'Kitchen Wise Issue Sale Report (FB Cost Statement)');
            $sheet->getStyle('A2')->applyFromArray(['font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER]]);

            $sheet->mergeCells('A3:' . $lastColLetter . '3');
            $sheet->setCellValue('A3', 'From: ' . $fromdate . '  To: ' . $todate);
            $sheet->getStyle('A3')->applyFromArray(['font' => ['size' => 9],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER]]);

            /* ── Column header row (row 5) ───────────── */
            $hr = 5;
            $sheet->setCellValue('A' . $hr, '');
            foreach ($kitchens as $idx => $k) {
                $sheet->setCellValueByColumnAndRow($idx + 2, $hr, $k['name'] ?? $k->name);
            }
            $sheet->setCellValue($totalCol . $hr, 'Total');

            $headerRange = 'A' . $hr . ':' . $lastColLetter . $hr;
            $sheet->getStyle($headerRange)->applyFromArray([
                'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill'      => ['fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
                                'startColor' => ['argb' => 'FF5c2d91']],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                                'vertical'   => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER],
                'borders'   => ['allBorders' => ['borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN]],
            ]);

            $cr = $hr + 1; // current row

            /* ── Helper: write a data row ─────────────── */
            $writeRow = function (
                string $label,
                array $byDcode,
                float $rowTotal,
                bool $bold = false,
                string $bgArgb = ''
            ) use ($sheet, $kitchens, $totalCol, $lastColLetter, $fmt, &$cr) {
                $sheet->setCellValue('A' . $cr, $label);
                foreach ($kitchens as $idx => $k) {
                    $dcode = is_array($k) ? $k['dcode'] : $k->dcode;
                    $v     = $byDcode[$dcode] ?? 0;
                    $col   = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($idx + 2);
                    if ($v != 0) {
                        $sheet->setCellValue($col . $cr, (float)$v);
                        $sheet->getStyle($col . $cr)->getNumberFormat()->setFormatCode('#,##0.00');
                        $sheet->getStyle($col . $cr)->getAlignment()
                              ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
                    }
                }
                $sheet->setCellValue($totalCol . $cr, (float)$rowTotal);
                $sheet->getStyle($totalCol . $cr)->getNumberFormat()->setFormatCode('#,##0.00');
                $sheet->getStyle($totalCol . $cr)->getAlignment()
                      ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);

                $style = ['borders' => ['allBorders' => ['borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                                                          'color'       => ['argb' => 'FFCCCCCC']]]];
                if ($bold)   $style['font'] = ['bold' => true];
                if ($bgArgb) $style['fill'] = ['fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
                                               'startColor' => ['argb' => $bgArgb]];
                $sheet->getStyle('A' . $cr . ':' . $lastColLetter . $cr)->applyFromArray($style);
                $sheet->getStyle('A' . $cr)->getAlignment()
                      ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $cr++;
            };

            $writeSectionLabel = function (string $label) use ($sheet, $lastColLetter, &$cr) {
                $sheet->mergeCells('A' . $cr . ':' . $lastColLetter . $cr);
                $sheet->setCellValue('A' . $cr, $label);
                $sheet->getStyle('A' . $cr . ':' . $lastColLetter . $cr)->applyFromArray([
                    'font' => ['bold' => true, 'color' => ['argb' => 'FF000080']],
                    'fill' => ['fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
                               'startColor' => ['argb' => 'FFdce6f1']],
                    'borders' => ['allBorders' => ['borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN]],
                ]);
                $cr++;
            };

            /* ── SALE section ─────────────────────────── */
            $writeSectionLabel('SALE');

            // Beverage sale per kitchen
            $beverageSaleByKitchen = [];
            $foodSaleByKitchen     = [];
            foreach ($kitchens as $k) {
                $dcode = is_array($k) ? $k['dcode'] : $k->dcode;
                $beverageSaleByKitchen[$dcode] = $m['saleBevPerKitchen'][$dcode]  ?? 0;
                $foodSaleByKitchen[$dcode]     = $m['saleFoodPerKitchen'][$dcode] ?? 0;
            }
            $writeRow('Beverage', $beverageSaleByKitchen, $m['grandSaleBev'],  false, '');
            $writeRow('Food',     $foodSaleByKitchen,     $m['grandSaleFood'], false, '');
            $writeRow('Net Sale', $m['netSalePerKitchen'], $m['grandNetSale'],  true,  'FFd9e1f2');

            /* ── COST INCURRED section ────────────────── */
            $writeSectionLabel('COST INCURRED');

            foreach ($costCatTypes as $cat) {
                $byDcode   = $costMatrix[$cat] ?? [];
                $rowTotal  = array_sum($byDcode);
                $writeRow($cat, $byDcode, $rowTotal);
            }
            $writeRow('Net Consumed', $m['netConsumedPerKitchen'], $m['grandNetConsumed'], true, 'FFd9e1f2');

            /* ── SUMMARY section ──────────────────────── */
            $writeSectionLabel('SUMMARY');

            $blank = [];
            $writeRow('Net Cost Ratio',        $blank, $m['netCostRatio'],   false, '');
            $writeRow('NC Details',            $blank, 0,                    false, '');
            $writeRow('Staff Kitchen Issue',   $blank, $m['grandStaffIssue'], false, '');
            $writeRow('Net Cost',              $blank, $m['grandNetCost'],   true,  'FFd9e1f2');
            $writeRow('Net Cost Of Food',      $blank, $m['netCostOfFood'],  false, '');
            $writeRow('Net Cost Of Beverages', $blank, $m['netCostOfBev'],   false, '');
            $writeRow('Net Cost Of Liquor',    $blank, $m['netCostOfLiquor'], false, '');
            $writeRow('Net Total Cost',        $blank, $m['netTotalCost'],   true,  'FFd9e1f2');

            /* ── Column widths ───────────────────────── */
            $sheet->getColumnDimension('A')->setWidth(28);
            foreach ($kitchens as $idx => $k) {
                $col = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($idx + 2);
                $sheet->getColumnDimension($col)->setWidth(16);
            }
            $sheet->getColumnDimension($totalCol)->setWidth(16);

            $filename = 'FB_Cost_Statement_' . date('YmdHis') . '.xlsx';
            if (ob_get_length()) ob_end_clean();
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');
            (new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet))->save('php://output');
            exit;

        } catch (\Exception $e) {
            \Log::error('Kitchen Wise Export Error: ' . $e->getMessage(), [
                'file'  => $e->getFile(),
                'line'  => $e->getLine(),
            ]);
            return response()->json(['error' => 'Failed to generate Excel: ' . $e->getMessage()], 500);
        }
    }

    public function payChargeReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        return view('property.paychargereport', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'company' => $company
        ]);
    }

    public function payChargeReportData(Request $request)
    {
        $draw       = $request->input('draw');
        $start      = $request->input('start', 0);
        $length     = $request->input('length', 10);
        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $propertyid = $this->propertyid;
        $search     = $request->input('search.value');

        /* ---------- FETCH PAYMENT MODES (Dynamic) ---------- */
        $modes = DB::table('revmast')
            ->where('propertyid', $propertyid)
            ->where('field_type', 'P')
            ->pluck('name', 'rev_code')
            ->toArray();

        /* ---------- MAIN QUERY (ROW DATA) ---------- */
        $rows = DB::table('paychargeh AS P')
            ->join('revmast AS R', 'R.rev_code', '=', 'P.paycode')
            ->leftJoin('hallbook AS H', 'H.docid', '=', 'P.contradocid')
            ->leftJoin('subgroup AS SG', 'SG.sub_code', '=', 'P.comp_code')
            ->where('R.propertyid', $propertyid)
            ->where('R.field_type', 'P')
            ->where('P.propertyid', $propertyid)
            ->when($fromdate && $todate, function ($q) use ($fromdate, $todate) {
                $q->whereBetween(DB::raw('DATE(H.vdate)'), [$fromdate, $todate]);
            })

            ->select([
                'P.vtype',
                'P.vno AS PayNo',
                'H.partyname AS PartyName',
                'H.vdate AS BillDate',
                'H.u_name AS userName',
                'R.name AS PayType',
                'P.amtcr AS Amount',
                'SG.name AS paycompanyname',
                'P.comp_code',
                'P.comments',
            ])

            ->selectSub(function ($q) {
                $q->from('hallsale1 AS S')
                    ->select('S.vno')
                    ->whereColumn('S.bookdocid', 'H.docid')
                    ->limit(1);
            }, 'BillNo')

            ->orderBy('H.vdate', 'DESC')
            ->get();

        /* ---------- GROUP + ACCUMULATE ---------- */
        $temp = [];
        $sno = 1;

        foreach ($rows as $row) {

            $key = $row->BillNo . '|' . $row->vtype;

            if (!isset($temp[$key])) {

                $temp[$key] = [
                    'sno'             => null,
                    'billDate'        => $row->BillDate,
                    'vno'             => $row->vtype . '/' . $row->BillNo,
                    'partyName'       => $row->PartyName,
                    'vtype'           => $row->vtype,
                    'name'            => $row->userName,
                    'paycompanyname'  => $row->paycompanyname ?? '',
                    'comments'        => $row->comments ?? '',
                    'cash'            => 0,
                    'cheque'          => 0,
                    'company'         => 0,
                    'creditCard'      => 0,
                    'hold'            => 0,
                    'room'            => 0,
                    'staff'           => 0,
                    'upi'             => 0,
                ];
            }

            // Store paycompanyname - capture from any row with company payment
            if (!empty($row->paycompanyname)) {
                $temp[$key]['paycompanyname'] = $row->paycompanyname;
            }

            // Accumulate comments with comma separation, filtering empty values
            if (!empty($row->comments)) {
                $commentText = trim($row->comments);
                if (!empty($commentText)) {
                    if (empty($temp[$key]['comments'])) {
                        $temp[$key]['comments'] = $commentText;
                    } else {
                        // Only add if not already present to avoid duplicates
                        if (strpos($temp[$key]['comments'], $commentText) === false) {
                            $temp[$key]['comments'] .= ', ' . $commentText;
                        }
                    }
                }
            }

            // Map dynamic payment type to static key
            $dynamicKey = strtolower(str_replace(' ', '_', trim($row->PayType)));
            $staticKey = '';

            if ($dynamicKey == 'cash_in_hand' || $dynamicKey == 'cash') {
                $staticKey = 'cash';
            } else if ($dynamicKey == 'bill_on_hold' || $dynamicKey == 'hold') {
                $staticKey = 'hold';
            } else if ($dynamicKey == 'credit_card' || $dynamicKey == 'creditcard') {
                $staticKey = 'creditCard';
            } else if ($dynamicKey == 'bill_to_company' || $dynamicKey == 'company') {
                $staticKey = 'company';
            } else if ($dynamicKey == 'room_settlement' || $dynamicKey == 'room') {
                $staticKey = 'room';
            } else if ($dynamicKey == 'upi') {
                $staticKey = 'upi';
            } else if ($dynamicKey == 'staff') {
                $staticKey = 'staff';
            } else if ($dynamicKey == 'cheque') {
                $staticKey = 'cheque';
            }

            // Accumulate amount to static key
            if ($staticKey && isset($temp[$key][$staticKey])) {
                $temp[$key][$staticKey] += (float)$row->Amount;
            }

            $temp[$key]['billAmount'] = array_sum([
                $temp[$key]['cash'],
                $temp[$key]['cheque'],
                $temp[$key]['company'],
                $temp[$key]['creditCard'],
                $temp[$key]['hold'],
                $temp[$key]['room'],
                $temp[$key]['staff'],
                $temp[$key]['upi'],
            ]);
        }

        /* ---------- FORMAT FINAL RESULT ---------- */
        $result = [];

        foreach ($temp as $row) {

            $row['sno'] = $sno++;

            // Format all static payment columns
            $row['cash']       = number_format($row['cash'], 2);
            $row['cheque']     = number_format($row['cheque'], 2);
            $row['company']    = number_format($row['company'], 2);
            $row['creditCard'] = number_format($row['creditCard'], 2);
            $row['hold']       = number_format($row['hold'], 2);
            $row['room']       = number_format($row['room'], 2);
            $row['staff']      = number_format($row['staff'], 2);
            $row['upi']        = number_format($row['upi'], 2);

            $result[] = $row;
        }

        return response()->json([
            'draw'            => intval($draw),
            'recordsTotal'    => count($result),
            'recordsFiltered' => count($result),
            'data'            => $result
        ]);
    }

    public function taxReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $banquet   = banquetparameter();
        // dd($banquet->toArray());
        // dd($banquet);
        return view('property.taxreport', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'company' => $company,
            'banquet'   => $banquet,
        ]);
    }

    public function getAlltaxCodes(Request $request)
    {
        $propertyId = $this->propertyid; // dynamic propertyid
        $fromDate = $request->input('fromdate');    // dynamic from date
        $toDate = $request->input('todate');        // dynamic to date

        // First subquery
        $subQuery1 = DB::table('hallsale2 as P')
            ->join('revmast as R', 'P.TaxCode', '=', 'R.rev_code')
            ->select('R.name', 'R.rev_code', 'R.sundry', 'P.TaxPer')
            ->where('R.field_type', 'T')
            ->where('P.propertyid', $propertyId)
            ->where('P.vtype', 'IDC')
            ->whereBetween('P.vdate', [$fromDate, $toDate]);

        // Second subquery
        $subQuery2 = DB::table('suntranh as P')
            ->join('revmast as R', 'P.revCode', '=', 'R.rev_code')
            ->join('sundrymast as S', 'R.sundry', '=', 'S.sundry_code')
            ->select('R.name', 'R.rev_code', 'R.sundry', DB::raw('P.SValue as TaxPer'))
            ->where('R.field_type', 'T')
            ->where('P.propertyid', $propertyId)
            ->where('P.vtype', 'IDC')
            ->whereBetween('P.vdate', [$fromDate, $toDate]);

        // Union All
        $finalQuery = $subQuery1->unionAll($subQuery2);

        // Wrap in outer query to apply DISTINCT and order
        $result = DB::table(DB::raw("({$finalQuery->toSql()}) as Q"))
            ->mergeBindings($finalQuery) // merge bindings for parameters
            ->select('Q.name', 'Q.rev_code', 'Q.sundry', 'Q.TaxPer')
            ->distinct()
            ->orderBy('Q.TaxPer')
            ->get();

        return response()->json($result);
    }
    public function taxReportData(Request $request)
    {
        $draw       = $request->input('draw');
        $start      = $request->input('start', 0);
        $length     = $request->input('length', 10);
        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $propertyid = $this->propertyid;
        $cgstCode   = 'CGSS' . $propertyid;
        $sgstCode   = 'SGSS' . $propertyid;

        $taxes = $request->input('taxes', []);
        if (is_string($taxes)) {
            $decoded = json_decode($taxes, true);
            $taxes = is_array($decoded) ? $decoded : ($taxes === '' ? [] : [$taxes]);
        }
        $taxes = array_values(array_filter($taxes, fn($v) => $v !== 'All' && $v !== '' && $v !== null));

        // ✅ Sub Query 1a — hallsale2 (has 9% data)
        $subQuery1a = DB::table('hallsale2 as P')
            ->selectRaw("P.DocId, P.TaxCode, P.TaxPer, P.BASEVALUE, P.TaxAmt")
            ->where('P.propertyid', $propertyid)
            ->where('P.VType', 'IDC')
            ->whereBetween('P.VDate', [$fromdate, $todate])
            ->when(!empty($taxes), fn($q) => $q->whereIn('P.TaxCode', $taxes));

        // ✅ Sub Query 1b — suntranh (has 2.5% data)
        // ✅ Correct column names from suntranh schema
        $subQuery1b = DB::table('suntranh as P')
            ->selectRaw("P.docid AS DocId, P.revcode AS TaxCode, P.svalue AS TaxPer, P.baseamount AS BASEVALUE, P.amount AS TaxAmt")
            ->where('P.propertyid', $propertyid)
            ->where('P.vtype', 'IDC')
            ->where('P.delflag', 'N')
            ->whereBetween('P.vdate', [$fromdate, $todate])
            ->when(!empty($taxes), fn($q) => $q->whereIn('P.revcode', $taxes));

        // ✅ Union both sources
        $unionQuery = $subQuery1a->unionAll($subQuery1b);

        // ✅ Sub Query 1 — Pivot tax into columns
        $subQuery = DB::table(DB::raw("({$unionQuery->toSql()}) as P"))
            ->mergeBindings($unionQuery)
            ->selectRaw("
            P.DocId,

            CASE WHEN P.TaxCode='{$cgstCode}' AND ROUND(P.TaxPer,1)=2.5 THEN '{$cgstCode}' END AS SUNCODE1,
            CASE WHEN P.TaxCode='{$cgstCode}' AND ROUND(P.TaxPer,1)=2.5 THEN SUM(P.BASEVALUE) END AS BASEVALUE1,
            CASE WHEN P.TaxCode='{$cgstCode}' AND ROUND(P.TaxPer,1)=2.5 THEN MAX(P.TaxPer) END AS TAXPER1,
            CASE WHEN P.TaxCode='{$cgstCode}' AND ROUND(P.TaxPer,1)=2.5 THEN SUM(P.TaxAmt) END AS TAXAMT1,

            CASE WHEN P.TaxCode='{$sgstCode}' AND ROUND(P.TaxPer,1)=2.5 THEN '{$sgstCode}' END AS SUNCODE2,
            CASE WHEN P.TaxCode='{$sgstCode}' AND ROUND(P.TaxPer,1)=2.5 THEN SUM(P.BASEVALUE) END AS BASEVALUE2,
            CASE WHEN P.TaxCode='{$sgstCode}' AND ROUND(P.TaxPer,1)=2.5 THEN MAX(P.TaxPer) END AS TAXPER2,
            CASE WHEN P.TaxCode='{$sgstCode}' AND ROUND(P.TaxPer,1)=2.5 THEN SUM(P.TaxAmt) END AS TAXAMT2,

            CASE WHEN P.TaxCode='{$cgstCode}' AND ROUND(P.TaxPer,0)=9 THEN '{$cgstCode}' END AS SUNCODE3,
            CASE WHEN P.TaxCode='{$cgstCode}' AND ROUND(P.TaxPer,0)=9 THEN SUM(P.BASEVALUE) END AS BASEVALUE3,
            CASE WHEN P.TaxCode='{$cgstCode}' AND ROUND(P.TaxPer,0)=9 THEN MAX(P.TaxPer) END AS TAXPER3,
            CASE WHEN P.TaxCode='{$cgstCode}' AND ROUND(P.TaxPer,0)=9 THEN SUM(P.TaxAmt) END AS TAXAMT3,

            CASE WHEN P.TaxCode='{$sgstCode}' AND ROUND(P.TaxPer,0)=9 THEN '{$sgstCode}' END AS SUNCODE4,
            CASE WHEN P.TaxCode='{$sgstCode}' AND ROUND(P.TaxPer,0)=9 THEN SUM(P.BASEVALUE) END AS BASEVALUE4,
            CASE WHEN P.TaxCode='{$sgstCode}' AND ROUND(P.TaxPer,0)=9 THEN MAX(P.TaxPer) END AS TAXPER4,
            CASE WHEN P.TaxCode='{$sgstCode}' AND ROUND(P.TaxPer,0)=9 THEN SUM(P.TaxAmt) END AS TAXAMT4
        ")
            ->groupBy('P.DocId', 'P.TaxCode', 'P.TaxPer');

        // ✅ Sub Query 2 — Collapse to one row per DocId
        $joinSubQuery = DB::table(DB::raw("({$subQuery->toSql()}) as a"))
            ->mergeBindings($subQuery)
            ->selectRaw("
            DocId,
            MAX(SUNCODE1) AS SUNCODE1, MAX(BASEVALUE1) AS BASEVALUE1, MAX(TAXPER1) AS TAXPER1, MAX(TAXAMT1) AS TAXAMT1,
            MAX(SUNCODE2) AS SUNCODE2, MAX(BASEVALUE2) AS BASEVALUE2, MAX(TAXPER2) AS TAXPER2, MAX(TAXAMT2) AS TAXAMT2,
            MAX(SUNCODE3) AS SUNCODE3, MAX(BASEVALUE3) AS BASEVALUE3, MAX(TAXPER3) AS TAXPER3, MAX(TAXAMT3) AS TAXAMT3,
            MAX(SUNCODE4) AS SUNCODE4, MAX(BASEVALUE4) AS BASEVALUE4, MAX(TAXPER4) AS TAXPER4, MAX(TAXAMT4) AS TAXAMT4
        ")
            ->groupBy('DocId');

        // ✅ Main Query
        $query = DB::table('hallsale1 as P')
            ->leftJoinSub($joinSubQuery, 'SL', fn($join) => $join->on('P.DocId', '=', 'SL.DocId'))
            ->join('voucher_type as VT', function ($join) use ($propertyid) {
                $join->on('P.VType', '=', 'VT.V_Type')
                    ->whereColumn('P.propertyid', 'VT.propertyid');
            })
            ->where('P.propertyid', $propertyid)
            ->where('P.VType', 'IDC')
            ->whereBetween('P.VDate', [$fromdate, $todate])
            ->orderBy('P.VDate')
            ->orderBy('P.VNo')
            ->selectRaw("
            P.DOCID, P.Vdate, P.VNo, P.Party, P.NetAmt,
            P.Taxable, P.NonTaxable, P.RestCode, P.RoundOff, P.DiscAmt, P.Total,

            IFNULL(SL.SUNCODE1, '')  AS SUNCODE1, IFNULL(SL.BASEVALUE1, 0) AS BASEVALUE1,
            IFNULL(SL.TAXPER1, 0)   AS TAXPER1,   IFNULL(SL.TAXAMT1, 0)   AS TAXAMT1,

            IFNULL(SL.SUNCODE2, '')  AS SUNCODE2, IFNULL(SL.BASEVALUE2, 0) AS BASEVALUE2,
            IFNULL(SL.TAXPER2, 0)   AS TAXPER2,   IFNULL(SL.TAXAMT2, 0)   AS TAXAMT2,

            IFNULL(SL.SUNCODE3, '')  AS SUNCODE3, IFNULL(SL.BASEVALUE3, 0) AS BASEVALUE3,
            IFNULL(SL.TAXPER3, 0)   AS TAXPER3,   IFNULL(SL.TAXAMT3, 0)   AS TAXAMT3,

            IFNULL(SL.SUNCODE4, '')  AS SUNCODE4, IFNULL(SL.BASEVALUE4, 0) AS BASEVALUE4,
            IFNULL(SL.TAXPER4, 0)   AS TAXPER4,   IFNULL(SL.TAXAMT4, 0)   AS TAXAMT4,

            (IFNULL(SL.BASEVALUE1,0) + IFNULL(SL.BASEVALUE2,0) + IFNULL(SL.BASEVALUE3,0) + IFNULL(SL.BASEVALUE4,0)) AS EBASEVALUE,
            (IFNULL(SL.TAXAMT1,0)   + IFNULL(SL.TAXAMT2,0)   + IFNULL(SL.TAXAMT3,0)   + IFNULL(SL.TAXAMT4,0))   AS ETAXAMT
        ");

        $total = $query->count();
        $data  = $query->offset($start)->limit($length)->get();

        $result = [];
        $sno = $start + 1;
        foreach ($data as $row) {
            $result[] = [
                'sno'        => $sno++,
                'docid'      => $row->DOCID,
                'vdate'      => $row->Vdate,
                'vno'        => $row->VNo,
                'party'      => $row->Party,
                'netAmt'     => number_format($row->NetAmt, 2),
                'taxable'    => number_format($row->Taxable, 2),
                'nontaxable' => number_format($row->NonTaxable, 2),
                'roundoff'   => number_format($row->RoundOff, 2),
                'discamt'    => number_format($row->DiscAmt, 2),
                'total'      => number_format($row->Total, 2),

                'suncode1'   => $row->SUNCODE1,
                'basevalue1' => number_format($row->BASEVALUE1, 2),
                'taxper1'    => number_format($row->TAXPER1, 2),
                'taxamt1'    => number_format($row->TAXAMT1, 2),

                'suncode2'   => $row->SUNCODE2,
                'basevalue2' => number_format($row->BASEVALUE2, 2),
                'taxper2'    => number_format($row->TAXPER2, 2),
                'taxamt2'    => number_format($row->TAXAMT2, 2),

                'suncode3'   => $row->SUNCODE3,
                'basevalue3' => number_format($row->BASEVALUE3, 2),
                'taxper3'    => number_format($row->TAXPER3, 2),
                'taxamt3'    => number_format($row->TAXAMT3, 2),

                'suncode4'   => $row->SUNCODE4,
                'basevalue4' => number_format($row->BASEVALUE4, 2),
                'taxper4'    => number_format($row->TAXPER4, 2),
                'taxamt4'    => number_format($row->TAXAMT4, 2),

                'ebasevalue' => number_format($row->EBASEVALUE, 2),
                'etaxamt'    => number_format($row->ETAXAMT, 2),
            ];
        }

        return response()->json([
            'draw'            => $draw,
            'recordsTotal'    => $total,
            'recordsFiltered' => $total,
            'data'            => $result
        ]);
    }

    //code by abhishek
    public function taxReporPos(Request $request)
    {
        $fromdate   = $this->ncurdate;
        $propertyid = $this->propertyid;
        $company    = Companyreg::where('propertyid', $propertyid)->first();
        $statename  = States::where('propertyid', $propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // Only POS outlets (pos = 'Y') for this property
        $outlets = DB::table('depart')
            ->where('PropertyID', $propertyid)
            ->where('pos', 'Y')
            ->orderBy('Name')
            ->get(['DCode', 'Name']);

        return view('property.taxreporpos', [
            'fromdate'  => $fromdate,
            'statename' => $statename,
            'company'   => $company,
            'outlets'   => $outlets,
        ]);
    }

    public function taxReporPosData(Request $request)
    {
        $draw       = $request->input('draw');
        $start      = (int) $request->input('start', 0);
        $length     = (int) $request->input('length', 10);
        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $search     = $request->input('search.value', '');
        $alloutlets = $request->input('alloutlets', '');   // comma-separated string
        $propertyid = $this->propertyid;
        $fetchAll   = ($length <= 0);

        if (!$fromdate || !$todate) {
            return response()->json(['message' => 'From Date and To Date required.'], 422);
        }

        // Parse comma-separated outlets string into array
        $outlets = array_values(array_filter(array_map('trim', explode(',', $alloutlets))));

        // RestCodes filter
        if (count($outlets) > 0) {
            $restCodes = $outlets;
        } else {
            $restCodes = DB::table('depart')
                ->where('PropertyID', $propertyid)
                ->where('pos', 'Y')
                ->pluck('DCode')
                ->toArray();
        }

        // ── Base query factory (called fresh each time) ───────────────────────
        $makeQuery = function () use ($propertyid, $restCodes, $fromdate, $todate, $search) {

            $taxSub = DB::table('suntran')
                ->selectRaw("DocID,
                    SUM(CASE WHEN DispName LIKE '%CGST%' THEN IFNULL(Amount,0) ELSE 0 END) AS CGSTAmt,
                    SUM(CASE WHEN DispName LIKE '%SGST%' THEN IFNULL(Amount,0) ELSE 0 END) AS SGSTAmt")
                ->where('DelFlag', 'N')
                ->groupBy('DocID');   // NO RestCode filter here — match all DocIDs

            return DB::table('sale1 as S')
                ->leftJoin('depart as D', function ($j) use ($propertyid) {
                    $j->on('S.RestCode', '=', 'D.DCode')
                        ->where('D.PropertyID', '=', $propertyid);
                })
                ->leftJoin('subgroup as SB', 'S.Party', '=', 'SB.Sub_Code')
                ->leftJoinSub($taxSub, 'TX', fn($j) => $j->on('TX.DocID', '=', 'S.DocID'))
                ->where('S.PropertyID', $propertyid)
                ->where('S.DelFlag', 'N')
                ->whereBetween('S.VDate', [$fromdate, $todate])
                ->when(!empty($restCodes), fn($q) => $q->whereIn('S.RestCode', $restCodes))
                ->when(!empty($search), function ($q) use ($search) {
                    $q->where(function ($q2) use ($search) {
                        $q2->where('D.Name',    'LIKE', "%{$search}%")
                            ->orWhere('S.VDate', 'LIKE', "%{$search}%")
                            ->orWhere('S.VNo',   'LIKE', "%{$search}%")
                            ->orWhere('SB.Name', 'LIKE', "%{$search}%")
                            ->orWhere('SB.GSTIN', 'LIKE', "%{$search}%");
                    });
                });
        };

        // ── Count ────────────────────────────────────────────────────────────
        $total = $makeQuery()->selectRaw('COUNT(DISTINCT S.DocID) as total')->value('total');

        // ── Grand Totals ──────────────────────────────────────────────────────
        $totalsRow = $makeQuery()->selectRaw("
            SUM(S.Taxable)            AS gt_taxable,
            SUM(S.NonTaxable)         AS gt_nontaxable,
            SUM(S.DiscAmt)            AS gt_discamt,
            SUM(S.ServiceCharge)      AS gt_servicecharge,
            SUM(IFNULL(TX.CGSTAmt,0)) AS gt_cgst,
            SUM(IFNULL(TX.SGSTAmt,0)) AS gt_sgst,
            SUM(S.RoundOff)           AS gt_roundoff,
            SUM(S.NetAmt)             AS gt_billamt
        ")->first();

        // ── Paged Data ────────────────────────────────────────────────────────
        $data = $makeQuery()
            ->selectRaw("
                D.Name                AS DepartName,
                S.VDate               AS BillDate,
                S.VNo                 AS BillNo,
                S.NetAmt              AS BillAMT,
                S.Taxable,
                S.DiscAmt,
                S.NonTaxable,
                S.RoundOff,
                S.ServiceCharge,
                IFNULL(TX.CGSTAmt,0)  AS CGSTAmt,
                IFNULL(TX.SGSTAmt,0)  AS SGSTAmt,
                SB.Name               AS Company,
                SB.GSTIN
            ")
            ->orderBy('D.Name')
            ->orderBy('S.VDate')
            ->orderBy('S.VNo')
            ->when(!$fetchAll, fn($q) => $q->skip($start)->take($length))
            ->get();

        $sno  = $fetchAll ? 1 : ($start + 1);
        $rows = [];
        foreach ($data as $row) {
            $rows[] = [
                'sno'           => $sno++,
                'DepartName'    => $row->DepartName ?? '-',
                'BillDate'      => $row->BillDate   ?? '',
                'BillNo'        => $row->BillNo     ?? '',
                'Company'       => $row->Company    ?? '-',
                'GSTIN'         => $row->GSTIN      ?? '-',
                'Taxable'       => (float)($row->Taxable       ?? 0),
                'NonTaxable'    => (float)($row->NonTaxable    ?? 0),
                'DiscAmt'       => (float)($row->DiscAmt       ?? 0),
                'ServiceCharge' => (float)($row->ServiceCharge ?? 0),
                'CGSTAmt'       => (float)($row->CGSTAmt       ?? 0),
                'SGSTAmt'       => (float)($row->SGSTAmt       ?? 0),
                'RoundOff'      => (float)($row->RoundOff      ?? 0),
                'BillAMT'       => (float)($row->BillAMT       ?? 0),
            ];
        }

        return response()->json([
            'draw'            => intval($draw),
            'recordsTotal'    => $total,
            'recordsFiltered' => $total,
            'data'            => $rows,
            'grandTotals'     => [
                'taxable'       => (float)($totalsRow->gt_taxable       ?? 0),
                'nontaxable'    => (float)($totalsRow->gt_nontaxable    ?? 0),
                'discamt'       => (float)($totalsRow->gt_discamt       ?? 0),
                'servicecharge' => (float)($totalsRow->gt_servicecharge ?? 0),
                'cgst'          => (float)($totalsRow->gt_cgst          ?? 0),
                'sgst'          => (float)($totalsRow->gt_sgst          ?? 0),
                'roundoff'      => (float)($totalsRow->gt_roundoff      ?? 0),
                'billamt'       => (float)($totalsRow->gt_billamt       ?? 0),
            ],
        ]);
    }


    public function complimentaryReport(Request $request)
    {
        $fromdate  = $this->ncurdate;
        $company   = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.complimentaryreport', [
            'fromdate'  => $fromdate,
            'company'   => $company,
            'statename' => $statename,
        ]);
    }

    public function complimentaryReportData(Request $request)
    {
        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $propertyid = $this->propertyid;

        $data = DB::table('guestprof as G')
            ->join('roomocc as R', 'G.docid', '=', 'R.docid')
            ->leftJoin('cities as C', 'G.city', '=', 'C.city_code')
            ->select([
                'G.Name',
                'R.folioNo',
                'R.roomno',
                'R.chkindate',
                'R.chkintime',
                'R.chkoutdate',
                'R.chkouttime',
                'R.adult',
                'R.children',
                'G.Add1',
                'C.cityname',
                'G.mobile_no',
                'G.email_id',
                'G.u_name',
            ])
            ->where('G.propertyid', $propertyid)
            ->where('G.complimentry', 'Y')
            ->whereBetween('R.chkindate', [$fromdate, $todate])
            ->orderBy('R.chkindate')
            ->get();

        return response()->json([
            'data'  => $data,
            'total' => $data->count(),
        ]);
    }

    public function taxSummaryPos(Request $request)
    {
        $fromdate   = $this->ncurdate;
        $propertyid = $this->propertyid;
        $company    = Companyreg::where('propertyid', $propertyid)->first();
        $statename  = States::where('propertyid', $propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // POS outlets for this property
        $outlets = DB::table('depart')
            ->where('PropertyID', $propertyid)
            ->where('pos', 'Y')
            ->orderBy('Name')
            ->get(['DCode', 'Name']);

        return view('property.taxsummarypos', [
            'ncurdate'  => $fromdate,
            'statename' => $statename,
            'company'   => $company,
            'outlets'   => $outlets,
        ]);
    }

    public function taxSummaryPosData(Request $request)
    {
        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $alloutlets = $request->input('alloutlets', '');
        $propertyid = $this->propertyid;

        if (!$fromdate || !$todate) {
            return response()->json(['message' => 'From Date and To Date required.'], 422);
        }

        // Parse selected outlets
        $outlets = array_values(array_filter(array_map('trim', explode(',', $alloutlets))));

        // If none selected, use all POS outlets for this property
        if (empty($outlets)) {
            $outlets = DB::table('depart')
                ->where('PropertyID', $propertyid)
                ->where('pos', 'Y')
                ->pluck('DCode')
                ->toArray();
        }

        $rows = DB::table('sale1 as S')
            ->leftJoin('depart', function ($j) use ($propertyid) {
                $j->on('S.RestCode', '=', 'depart.dcode')
                    ->where('depart.PropertyID', '=', $propertyid);
            })
            ->select([
                'depart.Name as DepartName',
                'S.VDate',
                DB::raw('SUM(S.NetAmt)        AS NetAmt'),
                DB::raw('SUM(S.DiscAmt)       AS DiscAmt'),
                DB::raw('SUM(S.Taxable)       AS Taxable'),
                DB::raw('SUM(S.NonTaxable)    AS NonTaxable'),
                DB::raw('SUM(S.ServiceCharge) AS ServiceCharge'),
                DB::raw('SUM(S.CGST)          AS CGST'),
                DB::raw('SUM(S.SGST)          AS SGST'),
                DB::raw('SUM(S.RoundOff)      AS RoundOff'),
            ])
            ->where(function ($q) {
                $q->where('S.DELFLAG', 'N')
                    ->orWhere('S.DELFLAG', '');
            })
            ->where('S.propertyid', $propertyid)
            ->whereBetween('S.VDate', [$fromdate, $todate])
            ->whereIn('S.RestCode', $outlets)
            ->groupBy('depart.Name', 'S.VDate')
            ->orderBy('depart.Name')
            ->orderBy('S.VDate')
            ->get();

        $grandTotal = [
            'NetAmt' => 0,
            'DiscAmt' => 0,
            'Taxable' => 0,
            'NonTaxable' => 0,
            'ServiceCharge' => 0,
            'CGST' => 0,
            'SGST' => 0,
            'RoundOff' => 0,
        ];

        $data = [];
        foreach ($rows as $row) {
            $r = [
                'DepartName'    => $row->DepartName    ?? '-',
                'VDate'         => $row->VDate         ?? '',
                'NetAmt'        => (float)($row->NetAmt        ?? 0),
                'DiscAmt'       => (float)($row->DiscAmt       ?? 0),
                'Taxable'       => (float)($row->Taxable       ?? 0),
                'NonTaxable'    => (float)($row->NonTaxable    ?? 0),
                'ServiceCharge' => (float)($row->ServiceCharge ?? 0),
                'CGST'          => (float)($row->CGST          ?? 0),
                'SGST'          => (float)($row->SGST          ?? 0),
                'RoundOff'      => (float)($row->RoundOff      ?? 0),
            ];
            $data[] = $r;
            foreach ($grandTotal as $key => $_) {
                $grandTotal[$key] += $r[$key];
            }
        }

        return response()->json([
            'data'       => $data,
            'grandTotal' => $grandTotal,
        ]);
    }

    // ─────────────────────────────────────────────────────────────────────────
    //  Credit Report
    // ─────────────────────────────────────────────────────────────────────────

    public function creditReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate = $this->ncurdate;
        $company  = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // Pay Type list for dropdown — actual values from transaction tables
        // (revmast names aur paycharge/paychargeh values alag ho sakte hain)
        $payTypes = DB::select("
            SELECT DISTINCT PayType FROM (
                SELECT PayType FROM paycharge
                WHERE propertyid = ? AND PayType IS NOT NULL AND PayType <> ''
                UNION
                SELECT PayType FROM paychargeh
                WHERE propertyid = ? AND PayType IS NOT NULL AND PayType <> ''
            ) AS T
            ORDER BY PayType
        ", [$this->propertyid, $this->propertyid]);
        $payTypes = array_column($payTypes, 'PayType');

        return view('property.creditreport', [
            'fromdate'  => $fromdate,
            'statename' => $statename,
            'company'   => $company,
            'payTypes'  => $payTypes,
        ]);
    }

    public function creditReportData(Request $request)
    {
        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $paytype    = $request->input('paytype', 'All');
        $propertyid = $this->propertyid;

        if (!$fromdate || !$todate) {
            return response()->json(['error' => 'Date range required.'], 422);
        }

        // ── Main detail rows ────────────────────────────────────────────────
        $baseQuery = "
            SELECT
                Q.*,
                CASE
                    WHEN SUBSTRING(Q.RestCode, 3, 4) = 'BANQ' THEN 'BANQUET'
                    WHEN SUBSTRING(Q.RestCode, 3, 3) = 'ODC'  THEN 'OUTDOOR BANQUET'
                    ELSE D.Name
                END AS Department
            FROM (
                SELECT
                    P.FolioNoDocid, P.RefDocId, P.PayType,
                    P.VDate, P.FolioNo, P.RoomNo,
                    P.VType, P.VNo, P.Comments,
                    P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                    P.RestCode, P.U_Name,
                    S.Name AS CompanyName
                FROM paycharge P
                LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                WHERE P.VType NOT IN ('IPOS','PPOS')
                  AND P.AmtCr <> 0
                  AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paycharge)
                  AND P.propertyid = ?
                  AND P.VDate BETWEEN ? AND ?

                UNION ALL

                SELECT
                    '' AS FolioNoDocid, '' AS RefDocId,
                    P.PayType, P.VDate, 0 AS FolioNo,
                    P.RoomNo, P.VType, P.VNo, P.Comments,
                    P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                    P.RestCode, P.U_Name,
                    S.Name AS CompanyName
                FROM paychargeh P
                LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                WHERE P.AmtCr <> 0
                  AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paychargeh)
                  AND P.propertyid = ?
                  AND P.VDate BETWEEN ? AND ?

                UNION ALL

                SELECT
                    '' AS FolioNoDocid, '' AS RefDocId,
                    'Cash' AS PayType, P.VDate, 0 AS FolioNo,
                    '' AS RoomNo, P.VType, P.VNo,
                    P.remark AS Comments,
                    P.cramt AS AmtCr,
                    '' AS ChqNo, NULL AS ChqDate, 0 AS BatchNo,
                    CONCAT('FOM', ?) AS RestCode,
                    P.U_Name,
                    S.Name AS CompanyName
                FROM expsheet P
                LEFT JOIN subgroup S ON P.drac = S.sub_code
                WHERE P.VType = 'HTSAL'
                  AND P.propertyid = ?
                  AND P.VDate BETWEEN ? AND ?
            ) AS Q
            LEFT JOIN depart D ON D.dcode = Q.RestCode
        ";

        $params = [
            $propertyid, $fromdate, $todate,
            $propertyid, $fromdate, $todate,
            $propertyid, $propertyid, $fromdate, $todate,
        ];

        // Optional PayType filter
        if ($paytype && strtolower($paytype) !== 'all') {
            $baseQuery .= " WHERE Q.PayType = ? ";
            $params[]   = $paytype;
        }

        $baseQuery .= " ORDER BY Q.VDate, Q.RestCode, Q.VNo ";

        $rows = DB::select($baseQuery, $params);

        // ── Summary by PayType ───────────────────────────────────────────────
        $summaryParams = [
            $propertyid, $fromdate, $todate,
            $propertyid, $fromdate, $todate,
            $propertyid, $propertyid, $fromdate, $todate,
        ];

        $summaryWhere = '';
        if ($paytype && strtolower($paytype) !== 'all') {
            $summaryWhere    = " WHERE R.PayType = ? ";
            $summaryParams[] = $paytype;
        }

        $summaryQuery = "
            SELECT R.PayType, SUM(R.AmtCr) AS AmtCr
            FROM (
                SELECT Q.*,
                    CASE
                        WHEN SUBSTRING(Q.RestCode, 3, 4) = 'BANQ' THEN 'BANQUET'
                        WHEN SUBSTRING(Q.RestCode, 3, 3) = 'ODC'  THEN 'OUTDOOR BANQUET'
                        ELSE D.Name
                    END AS Department
                FROM (
                    SELECT
                        P.FolioNoDocid, P.RefDocId, P.PayType,
                        P.VDate, P.FolioNo, P.RoomNo,
                        P.VType, P.VNo, P.Comments,
                        P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                        P.RestCode, P.U_Name,
                        S.Name AS CompanyName
                    FROM paycharge P
                    LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                    WHERE P.VType NOT IN ('IPOS','PPOS')
                      AND P.AmtCr <> 0
                      AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paycharge)
                      AND P.propertyid = ?
                      AND P.VDate BETWEEN ? AND ?

                    UNION ALL

                    SELECT
                        '' AS FolioNoDocid, '' AS RefDocId,
                        P.PayType, P.VDate, 0 AS FolioNo,
                        P.RoomNo, P.VType, P.VNo, P.Comments,
                        P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                        P.RestCode, P.U_Name,
                        S.Name AS CompanyName
                    FROM paychargeh P
                    LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                    WHERE P.AmtCr <> 0
                      AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paychargeh)
                      AND P.propertyid = ?
                      AND P.VDate BETWEEN ? AND ?

                    UNION ALL

                    SELECT
                        '' AS FolioNoDocid, '' AS RefDocId,
                        'Cash' AS PayType, P.VDate, 0 AS FolioNo,
                        '' AS RoomNo, P.VType, P.VNo,
                        P.remark AS Comments,
                        P.cramt AS AmtCr,
                        '' AS ChqNo, NULL AS ChqDate, 0 AS BatchNo,
                        CONCAT('FOM', ?) AS RestCode,
                        P.U_Name,
                        S.Name AS CompanyName
                    FROM expsheet P
                    LEFT JOIN subgroup S ON P.drac = S.sub_code
                    WHERE P.VType = 'HTSAL'
                      AND P.propertyid = ?
                      AND P.VDate BETWEEN ? AND ?
                ) Q
                LEFT JOIN depart D ON D.dcode = Q.RestCode
            ) R
            {$summaryWhere}
            GROUP BY R.PayType
            ORDER BY R.PayType
        ";

        $summary = DB::select($summaryQuery, $summaryParams);

        // Format rows for DataTable
        $formatted = [];
        foreach ($rows as $i => $row) {
            $formatted[] = [
                'sno'         => $i + 1,
                'VDate'       => $row->VDate,
                'VNo'         => $row->VType . '/' . $row->VNo,
                'FolioNo'     => $row->FolioNo,
                'RoomNo'      => $row->RoomNo,
                'PayType'     => $row->PayType,
                'CompanyName' => $row->CompanyName ?? '',
                'Comments'    => $row->Comments ?? '',
                'ChqNo'       => $row->ChqNo ?? '',
                'ChqDate'     => $row->ChqDate,
                'AmtCr'       => number_format((float)$row->AmtCr, 2),
                'U_Name'      => $row->U_Name ?? '',
                'Department'  => $row->Department ?? '',
            ];
        }

        $summaryFormatted = [];
        $grandTotal = 0;
        foreach ($summary as $s) {
            $summaryFormatted[] = [
                'PayType' => $s->PayType,
                'AmtCr'   => number_format((float)$s->AmtCr, 2),
            ];
            $grandTotal += (float)$s->AmtCr;
        }

        return response()->json([
            'recordsTotal'    => count($formatted),
            'recordsFiltered' => count($formatted),
            'data'            => $formatted,
            'summary'         => $summaryFormatted,
            'grandTotal'      => number_format($grandTotal, 2),
        ]);
    }

    // ─────────────────────────────────────────────────────────────────────────
    //  Credit Report — Print (PDF)
    // ─────────────────────────────────────────────────────────────────────────

    public function printCreditReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $paytype    = $request->input('paytype', 'All');
        $propertyid = $this->propertyid;

        $baseParams = [
            $propertyid, $fromdate, $todate,
            $propertyid, $fromdate, $todate,
            $propertyid, $propertyid, $fromdate, $todate,
        ];

        $sql = "
            SELECT Q.*,
                CASE
                    WHEN SUBSTRING(Q.RestCode, 3, 4) = 'BANQ' THEN 'BANQUET'
                    WHEN SUBSTRING(Q.RestCode, 3, 3) = 'ODC'  THEN 'OUTDOOR BANQUET'
                    ELSE D.Name
                END AS Department
            FROM (
                SELECT
                    P.FolioNoDocid, P.RefDocId, P.PayType,
                    P.VDate, P.FolioNo, P.RoomNo,
                    P.VType, P.VNo, P.Comments,
                    P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                    P.RestCode, P.U_Name, S.Name AS CompanyName
                FROM paycharge P
                LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                WHERE P.VType NOT IN ('IPOS','PPOS') AND P.AmtCr <> 0
                  AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paycharge)
                  AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?

                UNION ALL

                SELECT
                    '' AS FolioNoDocid, '' AS RefDocId,
                    P.PayType, P.VDate, 0 AS FolioNo,
                    P.RoomNo, P.VType, P.VNo, P.Comments,
                    P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                    P.RestCode, P.U_Name, S.Name AS CompanyName
                FROM paychargeh P
                LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                WHERE P.AmtCr <> 0 AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paychargeh)
                  AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?

                UNION ALL

                SELECT
                    '' AS FolioNoDocid, '' AS RefDocId,
                    'Cash' AS PayType, P.VDate, 0 AS FolioNo,
                    '' AS RoomNo, P.VType, P.VNo,
                    P.remark AS Comments,
                    P.cramt AS AmtCr,
                    '' AS ChqNo, NULL AS ChqDate, 0 AS BatchNo,
                    CONCAT('FOM', ?) AS RestCode,
                    P.U_Name, S.Name AS CompanyName
                FROM expsheet P
                LEFT JOIN subgroup S ON P.drac = S.sub_code
                WHERE P.VType = 'HTSAL' AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?
            ) AS Q
            LEFT JOIN depart D ON D.dcode = Q.RestCode
        ";

        if ($paytype && strtolower($paytype) !== 'all') {
            $sql         .= " WHERE Q.PayType = ? ";
            $baseParams[] = $paytype;
        }
        $sql .= " ORDER BY Q.VDate, Q.RestCode, Q.VNo ";

        $rows = DB::select($sql, $baseParams);

        // ── Summary ───────────────────────────────────────────────────────────
        $summaryParams = [
            $propertyid, $fromdate, $todate,
            $propertyid, $fromdate, $todate,
            $propertyid, $propertyid, $fromdate, $todate,
        ];
        $summaryWhere = '';
        if ($paytype && strtolower($paytype) !== 'all') {
            $summaryWhere    = " WHERE R.PayType = ? ";
            $summaryParams[] = $paytype;
        }

        $summarySql = "
            SELECT R.PayType, SUM(R.AmtCr) AS AmtCr
            FROM (
                SELECT Q.*,
                    CASE
                        WHEN SUBSTRING(Q.RestCode, 3, 4) = 'BANQ' THEN 'BANQUET'
                        WHEN SUBSTRING(Q.RestCode, 3, 3) = 'ODC'  THEN 'OUTDOOR BANQUET'
                        ELSE D.Name
                    END AS Department
                FROM (
                    SELECT
                        P.FolioNoDocid, P.RefDocId, P.PayType,
                        P.VDate, P.FolioNo, P.RoomNo,
                        P.VType, P.VNo, P.Comments,
                        P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                        P.RestCode, P.U_Name, S.Name AS CompanyName
                    FROM paycharge P
                    LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                    WHERE P.VType NOT IN ('IPOS','PPOS') AND P.AmtCr <> 0
                      AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paycharge)
                      AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?

                    UNION ALL

                    SELECT
                        '' AS FolioNoDocid, '' AS RefDocId,
                        P.PayType, P.VDate, 0 AS FolioNo,
                        P.RoomNo, P.VType, P.VNo, P.Comments,
                        P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                        P.RestCode, P.U_Name, S.Name AS CompanyName
                    FROM paychargeh P
                    LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                    WHERE P.AmtCr <> 0 AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paychargeh)
                      AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?

                    UNION ALL

                    SELECT
                        '' AS FolioNoDocid, '' AS RefDocId,
                        'Cash' AS PayType, P.VDate, 0 AS FolioNo,
                        '' AS RoomNo, P.VType, P.VNo,
                        P.remark AS Comments,
                        P.cramt AS AmtCr,
                        '' AS ChqNo, NULL AS ChqDate, 0 AS BatchNo,
                        CONCAT('FOM', ?) AS RestCode,
                        P.U_Name, S.Name AS CompanyName
                    FROM expsheet P
                    LEFT JOIN subgroup S ON P.drac = S.sub_code
                    WHERE P.VType = 'HTSAL' AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?
                ) Q
                LEFT JOIN depart D ON D.dcode = Q.RestCode
            ) R
            {$summaryWhere}
            GROUP BY R.PayType ORDER BY R.PayType
        ";

        $summary = DB::select($summarySql, $summaryParams);

        $company = Companyreg::where('propertyid', $propertyid)->first();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.creditreport_print', [
            'company'  => $company,
            'rows'     => $rows,
            'summary'  => $summary,
            'fromdate' => $fromdate,
            'todate'   => $todate,
            'paytype'  => $paytype ?: 'All',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('credit-report.pdf');
    }

    // ─────────────────────────────────────────────────────────────────────────
    //  Credit Report — Excel Export
    // ─────────────────────────────────────────────────────────────────────────

    public function exportCreditReport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate   = $request->input('fromdate');
        $todate     = $request->input('todate');
        $paytype    = $request->input('paytype', 'All');
        $propertyid = $this->propertyid;

        $company = Companyreg::where('propertyid', $propertyid)->first();

        $export = new \App\Exports\CreditReportExport(
            $fromdate,
            $todate,
            $paytype,
            $propertyid,
            $company->comp_name ?? ''
        );

        return $export->download();
    }
}
