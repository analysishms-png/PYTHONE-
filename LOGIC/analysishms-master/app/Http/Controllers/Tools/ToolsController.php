<?php

namespace App\Http\Controllers\Tools;

use App\Helpers\DateHelper;
use App\Http\Controllers\Controller;
use App\Models\Companyreg;
use App\Models\Depart;
use App\Models\EnviroGeneral;
use App\Models\FomBillDetail;
use App\Models\Guestfolio;
use App\Models\Paycharge;
use App\Models\Purch1;
use App\Models\Purch2;
use App\Models\RoomOcc;
use App\Models\SupportTicket;
use App\Models\SupportTicketMessage;
use App\Models\SupportTicketTransfer;
use App\Models\UserUpdate;
use App\Models\VoucherPrefix;
use App\Services\TenantDatabase;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class ToolsController extends Controller
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

    protected function isSuperAdminUser(): bool
    {
        return (int) (Auth::user()->role ?? 0) === 1
            && (string) (Auth::user()->propertyid ?? '') === '10';
    }

    protected function canOverrideSupportTicketAccess(): bool
    {
        $user = Auth::user();

        return $this->isSuperAdminUser()
            || (($user->AP ?? null) === 'P')
            || ((string) ($user->superwiser ?? '') === '0');
    }

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $isSubmitTicket = $request->routeIs('tools.submitTicket');
            $isSuperAdminRoute = $request->routeIs('superadmin.*');

            if (! isset(Auth::user()->name)) {
                if ($isSubmitTicket) {
                    return response()->json([
                        'success' => false,
                        'message' => 'Unauthorized. Please login and try again.',
                    ], 401);
                }

                return redirect('/');
            }

            if (! $isSubmitTicket && ! $isSuperAdminRoute && ! $this->isSuperAdminUser() && Auth::user()->propertyid != '20') {
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

            if ((string) Auth::user()->propertyid === '20' && ! $this->isSuperAdminUser()) {
                SupportTicket::updateUserApStatus((int) Auth::id(), 'P');
                SupportTicket::assignQueuedTicketsForAvailableUsers();
            }

            return $next($request);
        });
    }

    public function toolsdashboard()
    {
        return view('tools.index');
    }

    public function changecheckout()
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.changecheckout', compact('companies'));
    }

    public function fetchbillno(Request $request)
    {
        $propertyid = $request->input('propertyid');
        $billno = $request->input('billno');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                DB::connection('tenant')->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        }

        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyid)->value('ncur');
        $prifix = VoucherPrefix::on($connection)->where('propertyid', $propertyid)
            ->where('v_type', 'BCNT')
            ->where('date_from', '<=', $ncurdate)
            ->where('date_to', '>=', $ncurdate)
            ->value('prefix');

        if ($prifix) {
            return response()->json([
                'vprefix' => $prifix,
            ]);
        } else {
            return response()->json([
                'vprefix' => null,
            ]);
        }
    }

    public function submitCheckoutChange(Request $request)
    {
        // Validation
        $request->validate([
            'propertyid' => 'required',
            'vprefix' => 'required',
            'billno' => 'required',
            'new_checkout_date' => 'required|date',
        ]);
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }

        $billno = $request->input('billno');
        $new_checkout_date = $request->input('new_checkout_date');
        $vprefix = $request->input('vprefix');

        $foliono = FomBillDetail::on($connection)->select('foliono')->where('propertyid', $propertyid)->where('billno', $billno)->first('foliono');
        if (! $foliono) {
            return redirect()->back()->with('error', 'Folio No. Not Found!');
        }

        // Update in roomOcc
        RoomOcc::on($connection)->where('propertyid', $propertyid)
            ->where('vprefix', $vprefix)
            ->where('folioNo', $foliono->foliono)
            ->update(['chkoutdate' => $new_checkout_date]);
        // Update Paycharge
        Paycharge::on($connection)->where('propertyid', $propertyid)
            ->where('vprefix', $vprefix)
            ->where('folioNo', $foliono->foliono)
            ->update(['settledate' => $new_checkout_date]);

        // Update vdate for records where modeset = 'S'
        Paycharge::on($connection)->where('propertyid', $propertyid)
            ->where('vprefix', $vprefix)
            ->where('folioNo', $foliono->foliono)
            ->where('modeset', 'S')
            ->update(['vdate' => $new_checkout_date]);

        return redirect()->back()->with('success', 'Checkout date changed successfully.');
    }

    public function fetchfoliono(Request $request)
    {
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }

        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyid)->value('ncur');
        $prifix = VoucherPrefix::on($connection)->where('propertyid', $propertyid)
            ->where('v_type', 'BCNT')
            ->where('date_from', '<=', $ncurdate)
            ->where('date_to', '>=', $ncurdate)
            ->value('prefix');
        $folionos = RoomOcc::on($connection)->where('propertyid', $propertyid)
            ->where('vprefix', $prifix)
            // ->where('leaderyn', 'Y')
            ->groupBy('folioNo')
            ->distinct()
            ->get();

        return response()->json(['folios' => $folionos]);
    }

    public function changecheckoutsubmit(Request $request)
    {
        $vprefix = $request->input('vprefix');
        $foliono = $request->input('billno');
        $new_checkout_date = $request->input('new_checkout_date');
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }

        RoomOcc::on($connection)->where('vprefix', $vprefix)
            ->where('folioNo', $foliono)
            ->update(['chkoutdate' => $new_checkout_date]);

        $userupdate = new UserUpdate;
        $userupdate->setConnection('main');
        $userupdate->user = $this->username;
        $userupdate->propertyid = $request->input('propertyid');
        $userupdate->oldvalue = 'Old Checkout Date for Folio No: '.$foliono;
        $userupdate->newvalue = 'New Checkout Date: '.$new_checkout_date;
        $userupdate->form_type = 'Change Check Out Date';
        $userupdate->created_at = $this->currenttime;
        $userupdate->updated_at = $this->currenttime;
        $userupdate->save();

        return redirect()->back()->with('success', 'Checkout date updated successfully.');
    }

    // /////////// Change SW Date //////////////

    public function changeswdate()
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.changeswdate', compact('companies'));
    }

    public function fetchswdate(Request $request)
    {
        $propertyId = (int) $request->propertyid;

        $connection = 'main';

        if ($propertyId > 100) {
            try {
                TenantDatabase::connect($propertyId);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyId,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }

        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyId)->value('ncur');

        return response()->json(['ncurdate' => $ncurdate]);
    }

    public function changeswdatesubmit(Request $request)
    {
        $current_sw_date = $request->input('current_sw_date');
        $new_sw_date = $request->input('new_sw_date');
        $propertyId = (int) $request->propertyid;

        $connection = 'main';

        if ($propertyId > 100) {
            try {
                TenantDatabase::connect($propertyId);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyId,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }

        EnviroGeneral::on($connection)->where('propertyid', $propertyId)
            ->update(['ncur' => $new_sw_date]);

        $userupdate = new UserUpdate;
        $userupdate->setConnection('main');
        $userupdate->user = $this->username;
        $userupdate->propertyid = $request->input('propertyid');
        $userupdate->oldvalue = 'S/W Date is :'.$current_sw_date;
        $userupdate->newvalue = 'S/W Date is :'.$new_sw_date;
        $userupdate->form_type = 'Change S/W Date';
        $userupdate->created_at = $this->currenttime;
        $userupdate->updated_at = $this->currenttime;
        $userupdate->save();

        return redirect()->back()->with('success', 'S/W date updated successfully.');
    }

    // /////////// Change Company Details //////////////
    public function changecompanydetails()
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();
        $contrylist = DB::table('tbl_country')->orderBy('name', 'ASC')->get(['name', 'country_code']);
        $stateslist = DB::table('tbl_state')->orderBy('name', 'ASC')->get(['name', 'state_code']);
        $cityslist = DB::table('tbl_city')->orderBy('cityname', 'ASC')->get(['cityname', 'city_code']);

        return view('tools.changecompanydetails', compact('companies', 'contrylist', 'stateslist', 'cityslist'));
    }

    // Fetch State
    public function fetchstates(Request $request)
    {
        $country_code = $request->input('country_code');
        $states = DB::table('tbl_state')
            ->where('country', $country_code)
            ->orderBy('name', 'ASC')
            ->get(['name', 'state_code']);

        return response()->json(['states' => $states]);
    }

    // Fetch City
    public function fetchcitys(Request $request)
    {
        $state_code = $request->input('state_code');
        $propertyId = $request->input('propertyid');

        $connection = 'main';

        if ($propertyId > 100) {
            try {
                TenantDatabase::connect($propertyId);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyId,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }

        $citys = DB::connection($connection)->table('cities')
            ->where('propertyid', $propertyId)
            ->where('state', $state_code)
            ->orderBy('cityname', 'ASC')
            ->get(['cityname', 'city_code']);

        return response()->json(['citys' => $citys]);
    }

    public function fetchcompanydetails(Request $request)
    {
        $propertyid = $request->input('propertyid');

        $companydetails = Companyreg::on('main')->select([
            'comp_name',
            'address1',
            'address2',
            'country',
            'state',
            'city',
            'state_code',
            'mobile',
            'email',
            'gstin',
            'website',
            'acname',
            'acnum',
            'ifsccode',
            'bankname',
            'branchname',
        ])
            ->where('propertyid', $propertyid)
            ->first();

        // ---------------------------------------------
        // 🟦 STATE LOGIC → If state contains code
        // ---------------------------------------------
        if ($companydetails && ! empty($companydetails->state)) {

            $stateInput = $companydetails->state;

            $stateRow = DB::table('tbl_state')
                ->where('state_code', $stateInput)     // code match
                ->orWhere('name', $stateInput)         // OR name match
                ->first(['name', 'state_code']);

            if ($stateRow) {
                // Overwrite with correct values
                $companydetails->state = $stateRow->name;
                $companydetails->state_code = $stateRow->state_code;
            }
        }

        return response()->json(['companydetails' => $companydetails]);
    }

    public function changecompanydetailssubmit(Request $request)
    {
        $propertyid = $request->input('propertyid');

        // -------------------------------------------
        // 🟦 1. Handle STATE (match by name OR code)
        // -------------------------------------------
        $stateInput = $request->input('state');

        $state = DB::table('tbl_state')
            ->where('name', $stateInput)
            ->orWhere('state_code', $stateInput)
            ->first(['name', 'state_code']);

        if ($state) {
            $request->merge([
                'state' => $state->name,
                'state_code' => $state->state_code,
            ]);
        }

        // -------------------------------------------
        // 🟦 2. Handle CITY (match by name OR code)
        // -------------------------------------------
        $cityInput = $request->input('city');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }

        $city = DB::connection($connection)->table('cities')
            ->where('cityname', $cityInput)
            ->orWhere('city_code', $cityInput)
            ->first(['cityname', 'city_code']);

        if ($city) {
            $request->merge([
                'city' => $city->cityname,
                // 'city_code' => $city->city_code
            ]);
        }

        // -------------------------------------------
        // 🟦 3. Fields to update
        // -------------------------------------------
        $fields = [
            'comp_name',
            'address1',
            'address2',
            'country',
            'state',
            'city',
            'state_code',
            'mobile',
            'email',
            'gstin',
            'website',
            'acname',
            'acnum',
            'ifsccode',
            'bankname',
            'branchname',
        ];

        $updateData = [];
        $changedFields = [];

        foreach ($fields as $field) {
            $old = $request->input('old_'.$field);
            $new = $request->input($field);

            // Value changed?
            if ($new !== null && $new !== $old) {
                $updateData[$field] = $new;

                // Log only changed values
                $changedFields[$field] = [
                    'old' => $old,
                    'new' => $new,
                ];
            }
        }

        // -------------------------------------------
        // 🟦 4. Update DB
        // -------------------------------------------
        if (! empty($updateData)) {
            Companyreg::on('main')->where('propertyid', $propertyid)->update($updateData);
            if ($propertyid > 100) {
                Companyreg::on('tenant')->where('propertyid', $propertyid)->update($updateData);
            }
        }

        // -------------------------------------------
        // 🟦 5. LOG ONLY CHANGED VALUES
        // -------------------------------------------
        if (! empty($changedFields)) {

            $logOld = '';
            $logNew = '';

            foreach ($changedFields as $field => $values) {
                $logOld .= "$field: {$values['old']}, ";
                $logNew .= "$field: {$values['new']}, ";
            }

            $userupdate = new UserUpdate;
            $userupdate->setConnection('main');
            $userupdate->user = $this->username;
            $userupdate->propertyid = $propertyid;
            $userupdate->oldvalue = rtrim($logOld, ', ');
            $userupdate->newvalue = rtrim($logNew, ', ');
            $userupdate->form_type = 'Change Company Details';
            $userupdate->created_at = $this->currenttime;
            $userupdate->updated_at = $this->currenttime;
            $userupdate->save();
        }

        return redirect()->back()->with('success', 'Company details updated successfully.');
    }

    // getcompanydetails
    public function getcompanydetails()
    {
        $companies = Companyreg::on('main')
            ->select(
                'propertyid',
                'comp_name',
                'city',
                'mobile',
                'created_at'
            )
            ->orderBy('propertyid')
            ->orderBy('comp_name')
            ->get();

        $data = $companies->map(function ($company) {

            $ncur = null;

            if ($company->propertyid > 100) {
                try {
                    TenantDatabase::connect($company->propertyid);
                    $ncur = EnviroGeneral::on('tenant')->value('ncur');
                } catch (\Throwable $e) {
                    $ncur = null;
                }
            }

            return [
                'PropertyID' => $company->propertyid,
                'Name' => $company->comp_name,
                'City' => $company->city,
                'Mobile' => $company->mobile,
                'SWDate' => $ncur,
                'InstallDate' => $company->created_at,
            ];
        });

        return response()->json([
            'status' => $data->isNotEmpty(),
            'data' => $data,
        ]);
    }

    // // Data Empty Tool ////
    public function dataempty()
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.dataempty', compact('companies'));
    }

    public function deletedate(Request $request)
    {
        $request->validate([
            'propertyid' => 'required',
            'delete_type' => 'required|in:with_cm,without_cm',
        ]);

        $propertyid = $request->propertyid;

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }
        $deleteType = $request->delete_type;

        DB::connection($connection)->beginTransaction();

        try {

            if ($deleteType === 'with_cm') {

                // [01] booking
                DB::connection($connection)->table('booking')->where('property_id', $propertyid)->delete();

                // [02] fombilldetails
                DB::connection($connection)->table('fombilldetails')->where('propertyid', $propertyid)->delete();

                // [03] grpbookingdetails
                DB::connection($connection)->table('grpbookingdetails')->where('property_id', $propertyid)->delete();

                // [04] guestfolio
                DB::connection($connection)->table('guestfolio')->where('propertyid', $propertyid)->delete();

                // [05] guestfolioprofdetail
                DB::connection($connection)->table('guestfolioprofdetail')->where('propertyid', $propertyid)->delete();

                // [06] guestprof
                DB::connection($connection)->table('guestprof')->where('propertyid', $propertyid)->delete();

                // [07] roomblockout
                DB::connection($connection)->table('roomblockout')->where('propertyid', $propertyid)->delete();

                // [08] paycharge
                DB::connection($connection)->table('paycharge')->where('propertyid', $propertyid)->delete();

                // [09] paychargelog
                DB::connection($connection)->table('paychargelog')->where('propertyid', $propertyid)->delete();

                // [10] plandetails
                DB::connection($connection)->table('plandetails')->where('propertyid', $propertyid)->delete();

                // [11] roomocc
                DB::connection($connection)->table('roomocc')->where('propertyid', $propertyid)->delete();

                // [12] room_inclusive
                DB::connection($connection)->table('room_inclusive')->where('propertyid', $propertyid)->delete();

                // [13] expsheet
                DB::connection($connection)->table('expsheet')->where('propertyid', $propertyid)->delete();

                // [14] kot
                DB::connection($connection)->table('kot')->where('propertyid', $propertyid)->delete();

                // [15] kotlog
                DB::connection($connection)->table('kotlog')->where('propertyid', $propertyid)->delete();

                // [16] sale1
                DB::connection($connection)->table('sale1')->where('propertyid', $propertyid)->delete();

                // [17] sale1log
                DB::connection($connection)->table('sale1log')->where('propertyid', $propertyid)->delete();

                // [18] sale2
                DB::connection($connection)->table('sale2')->where('propertyid', $propertyid)->delete();

                // [19] sale2log
                DB::connection($connection)->table('sale2log')->where('propertyid', $propertyid)->delete();

                // [20] suntran
                DB::connection($connection)->table('suntran')->where('propertyid', $propertyid)->delete();

                // [21] suntranlog
                DB::connection($connection)->table('suntranlog')->where('propertyid', $propertyid)->delete();

                // [22] stock
                DB::connection($connection)->table('stock')->where('propertyid', $propertyid)->delete();

                // [23] stocklog
                DB::connection($connection)->table('stocklog')->where('propertyid', $propertyid)->delete();

                // [24] gin
                DB::connection($connection)->table('gin')->where('propertyid', $propertyid)->delete();

                // [25] purch1
                DB::connection($connection)->table('purch1')->where('propertyid', $propertyid)->delete();

                // [26] purch2
                DB::connection($connection)->table('purch2')->where('propertyid', $propertyid)->delete();

                // [27] ledger
                DB::connection($connection)->table('ledger')->where('propertyid', $propertyid)->delete();

                // [28] hallbook
                DB::connection($connection)->table('hallbook')->where('propertyid', $propertyid)->delete();

                // [29] hallsale1
                DB::connection($connection)->table('hallsale1')->where('propertyid', $propertyid)->delete();

                // [30] hallsale2
                DB::connection($connection)->table('hallsale2')->where('propertyid', $propertyid)->delete();

                // [31] hallstock
                DB::connection($connection)->table('hallstock')->where('propertyid', $propertyid)->delete();

                // [32] paychargeh
                DB::connection($connection)->table('paychargeh')->where('propertyid', $propertyid)->delete();

                // [33] venueocc
                DB::connection($connection)->table('venueocc')->where('propertyid', $propertyid)->delete();

                // [34] suntranh
                DB::connection($connection)->table('suntranh')->where('propertyid', $propertyid)->delete();

                // [35] bookinginquiry
                DB::connection($connection)->table('bookinginquiry')->where('propertyid', $propertyid)->delete();

                // [36] booking_follow_ups
                DB::connection($connection)->table('booking_follow_ups')->where('propertyid', $propertyid)->delete();

                // [37] bookingdetail
                DB::connection($connection)->table('bookingdetail')->where('propertyid', $propertyid)->delete();

                // [38] bookingplandetails
                DB::connection($connection)->table('bookingplandetails')->where('propertyid', $propertyid)->delete();

                // [39] hallsale1est
                DB::connection($connection)->table('hallsale1est')->where('propertyid', $propertyid)->delete();

                // [40] hallsale2est
                DB::connection($connection)->table('hallsale2est')->where('propertyid', $propertyid)->delete();

                // [41] hallstockest
                DB::connection($connection)->table('hallstockest')->where('propertyid', $propertyid)->delete();

                // [42] voucher_prefix reset
                DB::connection($connection)->table('voucher_prefix')
                    ->where('propertyid', $propertyid)
                    ->update(['start_srl_no' => 0]);

                DB::connection($connection)->commit();

                return response()->json([
                    'status' => true,
                    'message' => 'WITH CM data deleted successfully. Total queries executed: 42',
                ]);
            } elseif ($deleteType == 'without_cm') {
                // [01] booking
                DB::connection($connection)->table('booking')->where('property_id', $propertyid)->delete();

                // [02] fombilldetails
                DB::connection($connection)->table('fombilldetails')->where('propertyid', $propertyid)->delete();

                // [03] grpbookingdetails
                DB::connection($connection)->table('grpbookingdetails')->where('property_id', $propertyid)->delete();

                // [04] guestfolio
                DB::connection($connection)->table('guestfolio')->where('propertyid', $propertyid)->delete();

                // [05] guestfolioprofdetail
                DB::connection($connection)->table('guestfolioprofdetail')->where('propertyid', $propertyid)->delete();

                // [06] guestprof
                DB::connection($connection)->table('guestprof')->where('propertyid', $propertyid)->delete();

                // [07] roomblockout
                DB::connection($connection)->table('roomblockout')->where('propertyid', $propertyid)->delete();

                // [08] paycharge
                DB::connection($connection)->table('paycharge')->where('propertyid', $propertyid)->delete();

                // [09] paychargelog
                DB::connection($connection)->table('paychargelog')->where('propertyid', $propertyid)->delete();

                // [10] plandetails
                DB::connection($connection)->table('plandetails')->where('propertyid', $propertyid)->delete();

                // [11] roomocc
                DB::connection($connection)->table('roomocc')->where('propertyid', $propertyid)->delete();

                // [12] room_inclusive
                DB::connection($connection)->table('room_inclusive')->where('propertyid', $propertyid)->delete();

                // [13] expsheet
                DB::connection($connection)->table('expsheet')->where('propertyid', $propertyid)->delete();

                // [14] kot
                DB::connection($connection)->table('kot')->where('propertyid', $propertyid)->delete();

                // [15] kotlog
                DB::connection($connection)->table('kotlog')->where('propertyid', $propertyid)->delete();

                // [16] sale1
                DB::connection($connection)->table('sale1')->where('propertyid', $propertyid)->delete();

                // [17] sale1log
                DB::connection($connection)->table('sale1log')->where('propertyid', $propertyid)->delete();

                // [18] sale2
                DB::connection($connection)->table('sale2')->where('propertyid', $propertyid)->delete();

                // [19] sale2log
                DB::connection($connection)->table('sale2log')->where('propertyid', $propertyid)->delete();

                // [20] suntran
                DB::connection($connection)->table('suntran')->where('propertyid', $propertyid)->delete();

                // [21] suntranlog
                DB::connection($connection)->table('suntranlog')->where('propertyid', $propertyid)->delete();

                // [22] stock
                DB::connection($connection)->table('stock')->where('propertyid', $propertyid)->delete();

                // [23] stocklog
                DB::connection($connection)->table('stocklog')->where('propertyid', $propertyid)->delete();

                // [24] gin
                DB::connection($connection)->table('gin')->where('propertyid', $propertyid)->delete();

                // [25] purch1
                DB::connection($connection)->table('purch1')->where('propertyid', $propertyid)->delete();

                // [26] purch2
                DB::connection($connection)->table('purch2')->where('propertyid', $propertyid)->delete();

                // [27] ledger
                DB::connection($connection)->table('ledger')->where('propertyid', $propertyid)->delete();

                // [28] hallbook
                DB::connection($connection)->table('hallbook')->where('propertyid', $propertyid)->delete();

                // [29] hallsale1
                DB::connection($connection)->table('hallsale1')->where('propertyid', $propertyid)->delete();

                // [30] hallsale2
                DB::connection($connection)->table('hallsale2')->where('propertyid', $propertyid)->delete();

                // [31] hallstock
                DB::connection($connection)->table('hallstock')->where('propertyid', $propertyid)->delete();

                // [32] paychargeh
                DB::connection($connection)->table('paychargeh')->where('propertyid', $propertyid)->delete();

                // [33] venueocc
                DB::connection($connection)->table('venueocc')->where('propertyid', $propertyid)->delete();

                // [34] suntranh
                DB::connection($connection)->table('suntranh')->where('propertyid', $propertyid)->delete();

                // [35] bookinginquiry
                DB::connection($connection)->table('bookinginquiry')->where('propertyid', $propertyid)->delete();

                // [36] booking_follow_ups
                DB::connection($connection)->table('booking_follow_ups')->where('propertyid', $propertyid)->delete();

                // [37] bookingdetail
                DB::connection($connection)->table('bookingdetail')->where('propertyid', $propertyid)->delete();

                // [38] bookingplandetails
                DB::connection($connection)->table('bookingplandetails')->where('propertyid', $propertyid)->delete();

                // [39] hallsale1est
                DB::connection($connection)->table('hallsale1est')->where('propertyid', $propertyid)->delete();

                // [40] hallsale2est
                DB::connection($connection)->table('hallsale2est')->where('propertyid', $propertyid)->delete();

                // [41] hallstockest
                DB::connection($connection)->table('hallstockest')->where('propertyid', $propertyid)->delete();

                // [42] voucher_prefix reset
                DB::connection($connection)->table('voucher_prefix')
                    ->where('propertyid', $propertyid)
                    ->update(['start_srl_no' => 0]);

                DB::connection($connection)->commit();

                return response()->json([
                    'status' => true,
                    'message' => 'WITHOUT CM data deleted successfully. Total queries executed: 42',
                ]);
            }

            $userupdate = new UserUpdate;
            $userupdate->setConnection('main');
            $userupdate->user = $this->username;
            $userupdate->propertyid = $propertyid;
            $userupdate->oldvalue = 'Data Deletion Type: ';
            $userupdate->newvalue = 'Data Deletion Type: '.$deleteType.' data deleted successfully';
            $userupdate->form_type = 'Data Deletion Tool';
            $userupdate->created_at = $this->currenttime;
            $userupdate->updated_at = $this->currenttime;
            $userupdate->save();
        } catch (Exception $e) {

            DB::connection($connection)->rollBack();

            return response()->json([
                'status' => false,
                'message' => 'Deletion failed: '.$e->getMessage(),
            ], 500);
        }

        try {
            $userupdate = new UserUpdate;
            $userupdate->setConnection('main');
            $userupdate->user = $this->username;
            $userupdate->propertyid = $propertyid;
            $userupdate->oldvalue = 'Data Deletion Type: ';
            $userupdate->newvalue = 'Data Deletion Type: '.$deleteType.' data deleted successfully';
            $userupdate->form_type = 'Data Deletion Tool';
            $userupdate->created_at = $this->currenttime;
            $userupdate->updated_at = $this->currenttime;
            $userupdate->save();
        } catch (Exception $e) {

            DB::rollBack();

            return response()->json([
                'status' => false,
                'message' => 'Deletion failed: '.$e->getMessage(),
            ], 500);
        }
    }

    // Room Charge Post Tool
    public function roomchargepost()
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.roomchargepost', compact('companies'));
    }

    public function getPrifix($ncurdate, $propertyid, $connection = 'main')
    {
        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyid)->value('ncur');
        $prifix = VoucherPrefix::on($connection)->where('propertyid', $propertyid)
            ->where('v_type', 'RC')
            ->where('date_from', '<=', $ncurdate)
            ->where('date_to', '>=', $ncurdate)
            ->value('prefix');

        return $prifix;
    }

    public function getfolionoroomchargepost(Request $request)
    {
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }
        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyid)->value('ncur');
        $prifix = $this->getPrifix($ncurdate, $propertyid, $connection);
        $folionos = RoomOcc::on($connection)->where('propertyid', $propertyid)
            ->where('vprefix', $prifix)
            // ->where('leaderyn', 'Y')
            ->distinct()
            ->get();

        return response()->json(['folios' => $folionos]);
    }

    // Get Room Number By Folio No
    public function fetchroomchargepostfolionos(Request $request)
    {
        $propertyid = $request->input('propertyid');
        $foliono = $request->input('foliono');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }
        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyid)->value('ncur');
        $prifix = $this->getPrifix($ncurdate, $propertyid, $connection);

        $roomno = RoomOcc::on($connection)->where('propertyid', $propertyid)
            ->where('folioNo', $foliono)
            ->where('vprefix', $prifix)
            ->where(function ($q) {
                $q->where('type', 'O')
                    ->orWhereNull('type')
                    ->orWhere('type', '');
            })
            ->get();
        $count = $roomno->count();

        return response()->json(['count' => $count, 'rooms' => $roomno]);
    }

    // Get VPrefix for Room Charge Post by Folio No
    public function getvprefixroomcharge(Request $request)
    {
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);

                $db = DB::connection('tenant');
                $db->getPdo();
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        } else {
            $db = DB::connection('main');
        }
        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyid)->value('ncur');
        $getprifix = $this->getPrifix($ncurdate, $propertyid, $connection);

        if ($getprifix) {
            return response()->json(['vprefix' => $getprifix]);
        }

        return response()->json(['vprefix' => null, 'message' => 'Folio not found']);
    }

    public function roomchargepostsubmit(Request $request)
    {

        try {
            DB::beginTransaction();

            $tablename = 'paycharge';
            $docidf = $request->input('docid');
            $sno1 = $request->input('sno1');
            $roomno = $request->input('roomno');
            $date = $request->input('room_charge_date');
            $amount = $request->input('amount');
            $propertyid = $request->input('propertyid');

            $connection = 'main';

            if ($propertyid > 100) {
                try {
                    TenantDatabase::connect($propertyid);

                    $db = DB::connection('tenant');
                    $db->getPdo();
                    $connection = 'tenant';
                } catch (\Throwable $e) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Database not found for Property ID: '.$propertyid,
                    ]);
                }
            } else {
                $db = DB::connection('main');
            }

            $recdata = [
                'docidf' => $docidf,
                'sno1' => $sno1,
                'roomnorec' => $roomno,
            ];

            $ncurdate = $date;
            $getdocroomoc = RoomOcc::on($connection)->where('propertyid', $propertyid)->where('docid', $docidf)->where('leaderyn', 'Y')->first();

            $fomBillDetails = DB::connection($connection)->table('fombilldetails')
                ->where('propertyid', $propertyid)
                ->where('folionodocid', $docidf)
                ->where('sno1', $sno1)
                ->where('status', 'settle')
                ->first();

            if ($getdocroomoc) {
                $msno1 = $getdocroomoc->sno1;
            } else {
                $msno1 = 0;
            }

            $results = DB::connection($connection)->table('roomocc')
                ->select(
                    'roomocc.*',
                    'roomocc.id as snnum',
                    'roomocc.rodisc as roomdisc',
                    'revmast.ac_code AS RoomChargeAc',
                    'revmast.rev_code AS PayCode',
                    'revmast.tax_stru AS TaxStru',
                    'guestfolio.company as Comp_Code',
                    'guestfolio.travelagent as travel_code',
                    'guestfolio.rodisc',
                    'guestfolio.company',
                    'guestfolio.mfoliono',
                    'guestfolio.mfolionodocid'
                )
                ->leftJoin('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
                ->leftJoin('revmast', 'room_cat.rev_code', '=', 'revmast.rev_code')
                ->leftJoin('guestfolio', 'roomocc.docid', '=', 'guestfolio.docid')
                ->where(function ($q) {
                    $q->where('roomocc.type', '!=', 'C')
                        ->orWhereNull('roomocc.type')
                        ->orWhere('roomocc.type', '');
                })
                ->where('roomocc.propertyid', $propertyid)
                ->where('roomocc.docid', $docidf)
                ->where('roomocc.sno1', $sno1)
                ->get();

            // Log::info('Post Charges One - Results: ' . $results->toJson());

            $paycode = DB::connection($connection)->table('revmast')->where('propertyid', $propertyid)->where('name', 'ROOM CHARGE')->value('rev_code');

            foreach ($results as $result) {
                $vtype = 'RC';

                $chkvpf = VoucherPrefix::on($connection)->where('propertyid', $propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();
                $vno = $chkvpf->start_srl_no + 1;
                $vprefixyr = $chkvpf->prefix;
                $docid = $propertyid.'RC'.' ‎ ‎'.$vprefixyr.' ‎ ‎ ‎ '.$vno;
                $roombookamt = $amount;

                $rbookpost = $amount;
                if ($result->roomdisc > 0 && fomparameter()->postroomdiscseparately == 'Y') {
                    $discountamt = ($amount * $result->roomdisc) / 100;
                    $roombookamt = $amount - $discountamt;
                    $comment1 = 'ROOM DISC, ROOM No: '.$result->roomno;
                    $rsdiscdata = [
                        'propertyid' => $propertyid,
                        'docid' => $docid,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'sno' => 10,
                        'sno1' => $result->sno1,
                        'msno1' => $msno1,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefixyr,
                        'paycode' => "RSDC$propertyid",
                        'comments' => $comment1,
                        'guestprof' => $result->guestprof,
                        'comp_code' => $result->Comp_Code,
                        'travel_agent' => $result->travel_code,
                        'roomno' => $result->roomno,
                        'amtcr' => $discountamt,
                        'roomtype' => $result->roomtype,
                        'roomcat' => $result->roomcat,
                        'foliono' => $result->folioNo,
                        'restcode' => 'FOM'.$propertyid,
                        'billamount' => $amount,
                        'billno' => $fomBillDetails ? $fomBillDetails->billno : 0,
                        'settledate' => $fomBillDetails ? $fomBillDetails->billdate : null,
                        'taxper' => 0,
                        'onamt' => $amount,
                        'folionodocid' => $result->docid,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    Paycharge::on($connection)->insert($rsdiscdata);
                } elseif ($result->roomdisc > 0 && fomparameter()->postroomdiscseparately == 'N') {
                    $discountamt = ($amount * $result->roomdisc) / 100;
                    $roombookamt = $amount - $discountamt;
                    $rbookpost = $roombookamt;
                }

                // Log::info('roombookamount: ' . $roombookamt);

                if ($roombookamt != 0) {

                    $checktaxstru = DB::table('taxstru')
                        ->where('propertyid', $propertyid)
                        ->where('str_code', $result->TaxStru)
                        ->get();

                    $comment1 = 'ROOM CHARGE, ROOM No: '.$result->roomno;
                    $insertdefaultdata = [
                        'propertyid' => $propertyid,
                        'docid' => $docid,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'sno' => 1,
                        'sno1' => $result->sno1,
                        'msno1' => $msno1,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefixyr,
                        'paycode' => $paycode,
                        'comments' => $comment1,
                        'guestprof' => $result->guestprof,
                        'comp_code' => $result->Comp_Code,
                        'travel_agent' => $result->travel_code,
                        'roomno' => $result->roomno,
                        'amtdr' => $rbookpost,
                        'roomtype' => $result->roomtype,
                        'roomcat' => $result->roomcat,
                        'foliono' => $result->folioNo,
                        'restcode' => 'FOM'.$propertyid,
                        'billamount' => $rbookpost,
                        'billno' => $fomBillDetails ? $fomBillDetails->billno : 0,
                        'settledate' => $fomBillDetails ? $fomBillDetails->billdate : null,
                        'taxper' => 0,
                        'onamt' => $rbookpost,
                        'folionodocid' => $result->docid,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    DB::connection($connection)->table($tablename)->insert($insertdefaultdata);

                    foreach ($checktaxstru as $taxstru) {
                        $rates = $taxstru->rate;
                        $lowerlimit = $taxstru->limits;
                        $upperlimit = $taxstru->limit1;
                        $comp_operator = $taxstru->comp_operator;

                        if ($comp_operator == 'Between') {
                            if ($roombookamt >= $lowerlimit && $roombookamt <= $upperlimit) {
                                $taxamt = $roombookamt * $rates / 100;

                                $taxname = DB::connection($connection)->table('revmast')
                                    ->where('propertyid', $propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname.', '.'Room No: '.$result->roomno;

                                $insertdata = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vno' => $vno,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefixyr,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travel_code,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->folioNo,
                                    'restcode' => 'FOM'.$propertyid,
                                    'billamount' => $roombookamt,
                                    'billno' => $fomBillDetails ? $fomBillDetails->billno : 0,
                                    'settledate' => $fomBillDetails ? $fomBillDetails->billdate : null,
                                    'taxper' => $rates,
                                    'taxstru' => $result->TaxStru,
                                    'onamt' => $roombookamt,
                                    'folionodocid' => $result->docid,
                                    'taxcondamt' => $roombookamt,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::connection($connection)->table($tablename)->insert($insertdata);
                            }
                        } else {
                            if ($comp_operator == '<=') {
                                if ($roombookamt >= $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>=') {
                                if ($roombookamt <= $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefixyr,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'billno' => $fomBillDetails ? $fomBillDetails->billno : 0,
                                        'settledate' => $fomBillDetails ? $fomBillDetails->billdate : null,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '=') {
                                if ($roombookamt == $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefixyr,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'billno' => $fomBillDetails ? $fomBillDetails->billno : 0,
                                        'settledate' => $fomBillDetails ? $fomBillDetails->billdate : null,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>') {
                                if ($roombookamt > $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefixyr,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'billno' => $fomBillDetails ? $fomBillDetails->billno : 0,
                                        'settledate' => $fomBillDetails ? $fomBillDetails->billdate : null,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '<') {
                                if ($roombookamt < $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefixyr,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'billno' => $fomBillDetails ? $fomBillDetails->billno : 0,
                                        'settledate' => $fomBillDetails ? $fomBillDetails->billdate : null,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            }
                        }
                    }
                }
                VoucherPrefix::on($connection)->where('propertyid', $propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefixyr)
                    ->increment('start_srl_no');
            }
            $data = [
                'success' => true,
                'message' => 'Charge Posted Successfully',
                'roomno' => $comment1 ?? '',
                'docid' => $docid ?? '',
            ] + $recdata;

            DB::commit();

            $userupdate = new UserUpdate;
            $userupdate->setConnection('main');
            $userupdate->user = $this->username;
            $userupdate->propertyid = $propertyid;
            $userupdate->oldvalue = 'Room Charge Post';
            $userupdate->newvalue = 'Room Charge Post data posted successfully with docid '.$docidf.' for room no '.$roomno;
            $userupdate->form_type = 'Room Charge Post';
            $userupdate->created_at = $this->currenttime;
            $userupdate->updated_at = $this->currenttime;
            $userupdate->save();

            return response()->json($data);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'Unable To Post Charge: '.$e->getMessage(),
            ], 500);
        }
    }

    // Extra Bed Post Tool
    public function extrabedpost()
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.extrabedpost', compact('companies'));
    }

    public function getmaxadresnobytools(Request $request)
    {
        $vtype = $request->input('vtype');
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        }

        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyid)->value('ncur');
        $chkvpf = VoucherPrefix::on($connection)->where('propertyid', $propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $ncurdate)
            ->whereDate('date_to', '>=', $ncurdate)
            ->first();

        $start_srl_no = $chkvpf->start_srl_no + 1;

        return json_encode($start_srl_no);
    }

    public function fetchrevnaturebytools(Request $request)
    {
        $revcode = $request->input('rev_code');
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        }

        $nature = DB::connection($connection)->table('revmast')->where('propertyid', $propertyid)->where('rev_code', $revcode)->value('nature');
        $fieldtype = DB::connection($connection)->table('revmast')->where('propertyid', $propertyid)->where('rev_code', $revcode)->value('field_type');
        $name = DB::connection($connection)->table('revmast')->where('propertyid', $propertyid)->where('rev_code', $revcode)->value('name');
        $data = [
            'nature' => $nature,
            'fieldtype' => $fieldtype,
            'name' => $name,
        ];

        return json_encode($data);
    }

    public function fetchadvamtbytools(Request $request)
    {
        $revcode = $request->input('rev_code');
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        }

        $amount = DB::connection($connection)->table('revmast')->where('propertyid', $propertyid)->where('field_type', 'C')->where('rev_code', $revcode)->value('sales_rate');
        $narration = DB::connection($connection)->table('revmast')->where('propertyid', $propertyid)->where('field_type', 'C')->where('rev_code', $revcode)->value('name');
        $data = [
            'amount' => $amount,
            'narration' => $narration,
        ];

        return json_encode($data);
    }

    public function fetchadvamtpaybytools(Request $request)
    {
        $revcode = $request->input('rev_code');
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        }

        $paydata = DB::connection($connection)->table('paycharge')->where('propertyid', $propertyid)->where('folionodocid', $docid)->where('sno1', $sno1)->get();
        $debitamt = 0;
        $creditamt = 0;
        foreach ($paydata as $data) {
            $debitamt += $data->amtdr;
            $creditamt += $data->amtcr;
        }
        $fxdebitamt = str_replace(',', '', number_format($debitamt, 2));
        $fxcreditamt = str_replace(',', '', number_format($creditamt, 2));
        $sum = $fxdebitamt - $fxcreditamt;
        $data = [
            'sum' => round($sum, 2),
        ];

        return json_encode($data);
    }

    public function openadvancecharge(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');
        $sno = $request->query('sno');
        $propertyid = $request->query('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                // Handle error appropriately
            }
        }

        // echo $sno1 . ' - ' . $docid;
        // exit;
        $roomoccdata = DB::connection($connection)->table('roomocc')
            ->select('roomocc.*', 'guestprof.con_prefix')
            ->join('guestprof', 'roomocc.guestprof', '=', 'guestprof.guestcode')
            ->where('roomocc.propertyid', $propertyid)
            ->where('roomocc.docid', $docid)->where('roomocc.sno1', $sno1)->where('roomocc.sno', $sno)
            ->first();

        $records = DB::connection($connection)->table('revmast')
            ->select('revmast.name', 'revmast.nature', 'revmast.rev_code', 'revmast.field_type', 'revmast.flag_type')
            ->selectRaw("CASE WHEN revmast.field_type = 'C' THEN NULL ELSE depart_pay.pay_code END AS pay_code")
            ->leftJoin('depart_pay', 'revmast.rev_code', '=', 'depart_pay.pay_code')
            ->where(function ($query) {
                $query->where('revmast.field_type', '=', 'P')
                    ->orWhere(function ($query) {
                        $query->where('revmast.field_type', '=', 'C')
                            ->where('revmast.flag_type', '=', 'FOM');
                    });
            })
            ->where('revmast.propertyid', '=', $propertyid)
            ->where('revmast.active', 'Y')
            ->distinct()
            ->get();
        $company = DB::connection($connection)->table('subgroup')
            ->where('propertyid', $propertyid)
            ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();
        $restrooms = DB::connection($connection)->table('roomocc')->where('propertyid', $propertyid)->whereNot('roomno', $roomoccdata->roomno)->where('type', null)->get();

        $ncurdate = DB::connection($connection)->table('enviro_general')->where('propertyid', $propertyid)->value('ncur');
        $companydata = DB::connection('main')->table('company')->where('propertyid', $propertyid)->first();

        return view('tools.advancecharge', [
            'revdata' => $records,
            'data' => $roomoccdata,
            'restroooms' => $restrooms,
            'roomoccdata' => $roomoccdata,
            'ncurdate' => $ncurdate,
            'company' => $company,
            'companydata' => $companydata,
            'propertyid' => $propertyid,
        ]);
    }

    public function advancechargesubmit(Request $request)
    {
        $validate = $request->validate([
            'charge' => 'required',
            'amount' => 'required',
        ]);

        $propertyid = $request->input('propertyid');
        $ncurdate = $request->input('ncurdate'); // EnviroGeneral::where('propertyid', $propertyid)->value('ncur');
        $this->ncurdate = $ncurdate;

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        }

        // echo $request->docid;
        // exit;
        if ($request->charge == 'RMCH'.$propertyid) {
            $results = DB::connection($connection)->table('roomocc')
                ->select(
                    'roomocc.*',
                    'revmast.ac_code AS RoomChargeAc',
                    'revmast.rev_code AS PayCode',
                    'revmast.tax_stru AS TaxStru',
                    'guestfolio.company as Comp_Code',
                    'guestfolio.travelagent as travel_code',
                    'guestfolio.rodisc',
                    'guestfolio.company',
                    'guestfolio.mfoliono',
                    'guestfolio.mfolionodocid'
                )
                ->leftJoin('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
                ->leftJoin('revmast', 'room_cat.rev_code', '=', 'revmast.rev_code')
                ->leftJoin('guestfolio', 'roomocc.docid', '=', 'guestfolio.docid')
                ->whereNull('roomocc.chkoutdate')
                ->where('roomocc.chkindate', '<=', $this->ncurdate)
                ->whereNull('roomocc.type')
                ->where('roomocc.docid', $request->docid)
                ->where('roomocc.sno1', $request->sno1)
                ->where('roomocc.sno', $request->sno)
                ->where('roomocc.propertyid', $propertyid)
                ->get();

            // var_dump($results);

            $paycode = DB::connection($connection)->table('revmast')->where('propertyid', $propertyid)->where('name', 'ROOM CHARGE')->value('rev_code');
            $tablename = 'paycharge';

            foreach ($results as $result) {

                $getdocroomoc = RoomOcc::on($connection)->where('propertyid', $propertyid)->where('docid', $result->docid)->where('leaderyn', 'Y')->first();

                if ($getdocroomoc) {
                    $msno1 = $getdocroomoc->sno1;
                } else {
                    $msno1 = 0;
                }

                $vtype = 'RC';
                $chkvpf = VoucherPrefix::on($connection)->where('propertyid', $propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();

                $start_srl_no = $chkvpf->start_srl_no + 1;
                $vprefix = $chkvpf->prefix;

                $docid = $propertyid.'RC'.' ‎ ‎'.$vprefix.' ‎ ‎ ‎ '.$start_srl_no;
                // $roombookamt = $result->roomrate;
                $roombookamt = $request->input('amount');
                if ($roombookamt != 0) {

                    $checktaxstru = DB::connection($connection)->table('taxstru')
                        ->where('propertyid', $propertyid)
                        ->where('str_code', $result->TaxStru)
                        ->get();

                    $comment1 = 'ROOM CHARGE, ROOM No: '.$result->roomno;
                    $insertdefaultdata = [
                        'propertyid' => $propertyid,
                        'docid' => $docid,
                        'vno' => $start_srl_no,
                        'vtype' => $vtype,
                        'sno' => 1,
                        'sno1' => $result->sno1,
                        'msno1' => $msno1,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefix,
                        'paycode' => $paycode,
                        'comments' => $comment1,
                        'guestprof' => $result->guestprof,
                        'comp_code' => $result->Comp_Code,
                        'travel_agent' => $result->travel_code,
                        'roomno' => $result->roomno,
                        'amtdr' => $roombookamt,
                        'roomtype' => $result->roomtype,
                        'roomcat' => $result->roomcat,
                        'foliono' => $result->folioNo,
                        'restcode' => 'FOM'.$propertyid,
                        'billamount' => $roombookamt,
                        'taxper' => 0,
                        'onamt' => $roombookamt,
                        'folionodocid' => $result->docid,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    DB::connection($connection)->table($tablename)->insert($insertdefaultdata);

                    foreach ($checktaxstru as $taxstru) {
                        $rates = $taxstru->rate;
                        $lowerlimit = $taxstru->limits;
                        $upperlimit = $taxstru->limit1;
                        $comp_operator = $taxstru->comp_operator;

                        if ($comp_operator == 'Between') {
                            if ($roombookamt >= $lowerlimit && $roombookamt <= $upperlimit) {
                                $taxamt = $roombookamt * $rates / 100;

                                $taxname = DB::connection($connection)->table('revmast')
                                    ->where('propertyid', $propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname.', '.'Room No: '.$result->roomno;

                                $insertdata = [
                                    'propertyid' => $propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travel_code,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->folioNo,
                                    'restcode' => 'FOM'.$propertyid,
                                    'billamount' => $roombookamt,
                                    'taxper' => $rates,
                                    'taxstru' => $result->TaxStru,
                                    'onamt' => $roombookamt,
                                    'folionodocid' => $result->docid,
                                    'taxcondamt' => $roombookamt,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::connection($connection)->table($tablename)->insert($insertdata);
                            }
                        } else {
                            if ($comp_operator == '<=') {
                                if ($roombookamt >= $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>=') {
                                if ($roombookamt <= $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '=') {
                                if ($roombookamt == $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>') {
                                if ($roombookamt > $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '<') {
                                if ($roombookamt < $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::connection($connection)->table('revmast')
                                        ->where('propertyid', $propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname.', '.'Room No: '.$result->roomno;

                                    $insertdata = [
                                        'propertyid' => $propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM'.$propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::connection($connection)->table($tablename)->insert($insertdata);
                                }
                            }
                        }
                    }
                }
                VoucherPrefix::on($connection)->where('propertyid', $propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            return response()->json([
                'status' => true,
                'message' => 'Advance charge added successfully.',
            ]);
        }

        $guestfolio = Guestfolio::on($connection)->where('propertyid', $propertyid)->where('docid', $request->input('docid'))->first();

        $compcodetmp = '';
        if (! is_null($guestfolio)) {
            $compcodetmp = $guestfolio->company ?? '';
        }

        $revdata = DB::connection($connection)->table('revmast')->where('propertyid', $propertyid)->where('rev_code', $request->input('charge'))->first();
        $roombookamt = $request->input('amount');

        $checktaxstru = DB::connection($connection)->table('taxstru')
            ->where('propertyid', $propertyid)
            ->where('str_code', $revdata->tax_stru)
            ->get();

        $taxrates = 0;
        if ($revdata->tax_inc == 'Y') {
            $taxrates = 0;
            foreach ($checktaxstru as $tax) {
                $taxrates += $tax->rate;
            }
            if ($taxrates > 0 && ! is_null($taxrates)) {
                $valuenew = str_replace(',', '', number_format(($roombookamt * 100) / (100 + $taxrates), 2));
                $roombookamt = $valuenew;
            }
        }

        if (strtolower($revdata->field_type) == 'c' && strtolower($revdata->type) == 'dr') {
            $amtdr = null;
            $amtcr = $roombookamt;
            $vtype = 'REV';
            $compcode = $compcodetmp;
        } elseif (strtolower($revdata->field_type) == 'c' && strtolower($revdata->type) == 'cr') {
            $amtdr = $roombookamt;
            $amtcr = null;
            $vtype = 'REV';
            $compcode = $compcodetmp;
        }

        if (strtolower($revdata->field_type) == 'p' && $roombookamt < 0) {
            $amtdr = abs($roombookamt);
            $amtcr = null;
            $vtype = 'REV';
            $compcode = '';
        } elseif (strtolower($revdata->field_type) == 'p' && $roombookamt > 0) {
            $amtdr = null;
            $amtcr = $roombookamt;
            $vtype = 'REC';
            $compcode = '';
        }

        $chkvpf = VoucherPrefix::on($connection)->where('propertyid', $propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->first();

        $start_srl_no = $chkvpf->start_srl_no + 1;
        $vprefix = $chkvpf->prefix;

        $vno = $start_srl_no;

        $result = DB::connection($connection)->table('roomocc')->where('propertyid', $propertyid)->where('docid', $request->input('docid'))->where('sno1', $request->input('sno1'))->first();
        $docid = $propertyid.$vtype.' ‎ ‎'.$vprefix.' ‎ ‎ ‎ '.$vno;

        $rtaxstru = $revdata->tax_stru;

        $rocc = RoomOcc::on($connection)->where('propertyid', $propertyid)->where('docid', $request->input('docid'))->where('leaderyn', 'Y')->first();

        $insertdata = [
            'propertyid' => $propertyid,
            'docid' => $docid,
            'comp_code' => $compcode,
            'vno' => $vno,
            'vtype' => $vtype,
            'sno' => 1,
            'sno1' => $request->input('sno1'),
            'msno1' => $rocc->sno1 ?? 0,
            'chqno' => $request->input('checkno') ? $request->input('checkno') : $request->input('referencenoupi'),
            'cardno' => $request->input('crnumber'),
            'cardholder' => $request->input('holdername'),
            'expdate' => $request->input('expdatecr'),
            'bookno' => $request->input('batchno'),
            'vdate' => $this->ncurdate,
            'vtime' => date('H:i:s'),
            'vprefix' => $vprefix,
            'paycode' => $request->input('charge'),
            'paytype' => $revdata->pay_type ?? '',
            'comments' => $request->input('narration'),
            'guestprof' => $result->guestprof,
            'roomno' => $result->roomno,
            'amtdr' => $amtdr ?? '0.00',
            'amtcr' => $amtcr ?? '0.00',
            'roomtype' => $result->roomtype,
            'roomcat' => $result->roomcat,
            'foliono' => $result->folioNo,
            'restcode' => 'FOM'.$propertyid,
            'billamount' => $result->rackrate,
            'taxper' => $taxrates,
            'onamt' => $result->rackrate,
            'folionodocid' => $result->docid,
            'taxcondamt' => 0,
            'taxstru' => $rtaxstru,
            'created_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'a',
        ];

        DB::connection($connection)->table('paycharge')->insert($insertdata);

        foreach ($checktaxstru as $taxstru) {
            $rates = $taxstru->rate;
            $lowerlimit = $taxstru->limits;
            $upperlimit = $taxstru->limit1;
            $comp_operator = $taxstru->comp_operator;

            $taxamt = $roombookamt * $rates / 100;

            if ($taxamt > 0) {
                if (strtolower($revdata->field_type) == 'c') {
                    $amtdr = $taxamt;
                    $amtcr = null;
                    $vtype = 'REV';
                }

                $taxname = DB::connection($connection)->table('revmast')
                    ->where('propertyid', $propertyid)
                    ->where('rev_code', $taxstru->tax_code)
                    ->value('name');

                $comments = $taxname.', '.'Room No: '.$result->roomno;
                $insertdata = [
                    'propertyid' => $propertyid,
                    'docid' => $docid,
                    'vno' => $vno,
                    'vtype' => $vtype,
                    'sno' => $taxstru->sno + 1,
                    'sno1' => $request->input('sno1'),
                    'msno1' => $rocc->sno1 ?? 0,
                    'chqno' => $request->input('checkno') ? $request->input('checkno') : $request->input('referencenoupi'),
                    'vdate' => $this->ncurdate,
                    'vtime' => date('H:i:s'),
                    'vprefix' => $vprefix,
                    'paycode' => $taxstru->tax_code,
                    'comments' => $comments,
                    'guestprof' => $result->guestprof,
                    'roomno' => $result->roomno,
                    'amtdr' => abs($amtdr) ?? '0.00',
                    'amtcr' => abs($amtcr) ?? '0.00',
                    'roomtype' => $result->roomtype,
                    'roomcat' => $result->roomcat,
                    'foliono' => $result->folioNo,
                    'restcode' => 'FOM'.$propertyid,
                    'billamount' => $roombookamt,
                    'taxper' => $rates,
                    'taxstru' => $rtaxstru,
                    'onamt' => $roombookamt,
                    'folionodocid' => $result->docid,
                    'taxcondamt' => $roombookamt,
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                ];

                DB::connection($connection)->table('paycharge')->insert($insertdata);
            }
        }

        VoucherPrefix::on($connection)->where('propertyid', $propertyid)
            ->where('v_type', $vtype)
            ->where('prefix', $vprefix)
            ->increment('start_srl_no');

        return response()->json([
            'status' => true,
            'message' => 'Advance charge added successfully.',
        ]);
    }

    // Change Bill Date
    public function changebilldate(Request $request)
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.changebilldate', [
            'companies' => $companies,
        ]);
    }

    // Fetch Outlets based on Property ID
    public function fetchoutletbyproperty(Request $request)
    {
        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Database not found for Property ID: '.$propertyid,
                ]);
            }
        }

        $outlets = DB::connection($connection)->table('depart')
            ->select('dcode', 'Name', 'rest_type', 'propertyid')
            ->where('propertyid', $propertyid)
            ->where('outlet_yn', 'Y')
            ->whereIn('rest_type', ['Outlet', 'Room Service'])
            ->orderBy('Name')
            ->get();

        return response()->json([
            'status' => true,
            'outlets' => $outlets,
        ]);
    }

    // Change Bill Date Submit
    public function changebilldatesubmit(Request $request)
    {
        $validate = $request->validate([
            'propertyid' => 'required',
            'from_bill_no' => 'required',
            'to_bill_no' => 'required',
            'change_bill_date' => 'required',
            'outletid' => 'required',
        ]);

        $propertyid = $request->input('propertyid');
        $from_bill_no = $request->input('from_bill_no');
        $to_bill_no = $request->input('to_bill_no');
        $change_bill_date = $request->input('change_bill_date');
        $outletid = $request->input('outletid');
        $dcode = $request->input('dcode');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return redirect()->back()->with('error', 'Database not found for Property ID: '.$propertyid);
            }
        }

        $ncurdate = EnviroGeneral::on($connection)->where('propertyid', $propertyid)->value('ncur');
        $department = Depart::on($connection)->select('short_name')->where('propertyid', $propertyid)
            ->where('dcode', $dcode)
            ->first();
        $vtype = 'B'.$department->short_name ?? 'SL';
        $chkvpf = VoucherPrefix::on($connection)->select('prefix')->where('propertyid', $propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $ncurdate)
            ->whereDate('date_to', '>=', $ncurdate)
            ->first();

        // Fetch bills to be updated
        $bills = DB::connection($connection)->table('sale1')
            ->select('docid', 'vno', 'vdate', 'restcode', 'propertyid')
            ->where('propertyid', $propertyid)
            ->where('vprefix', $chkvpf->prefix)
            ->whereBetween('vno', [$from_bill_no, $to_bill_no])
            ->where('restcode', $dcode)
            ->get();

        // echo "<pre>";
        // print_r($request->toArray());

        // print_r($bills->toArray());
        // echo "</pre>";
        // exit;

        if ($bills->isEmpty()) {
            return redirect()->back()->with('error', 'No bills found for the specified criteria.');
        }

        foreach ($bills as $bill) {
            // Update bill dates in sale1 table
            DB::connection($connection)->table('sale1')
                ->where('propertyid', $propertyid)
                ->where('docid', $bill->docid)
                ->update(['vdate' => $change_bill_date]);

            // Update bill dates in sale2 table
            DB::connection($connection)->table('sale2')
                ->where('propertyid', $propertyid)
                ->where('docid', $bill->docid)
                ->update(['vdate' => $change_bill_date]);

            // Update bill dates in paycharge table
            DB::connection($connection)->table('paycharge')
                ->where('propertyid', $propertyid)
                ->where('docid', $bill->docid)
                ->update(['vdate' => $change_bill_date]);

            // Update bill dates in Stock table
            DB::connection($connection)->table('stock')
                ->where('propertyid', $propertyid)
                ->where('docid', $bill->docid)
                ->update(['vdate' => $change_bill_date]);

            // Update bill dates in Santran table
            DB::connection($connection)->table('suntran')
                ->where('propertyid', $propertyid)
                ->where('docid', $bill->docid)
                ->update(['vdate' => $change_bill_date]);
        }

        // Log the update
        $userupdate = new UserUpdate;
        $userupdate->user = $this->username;
        $userupdate->propertyid = $propertyid;
        $userupdate->oldvalue = 'Bill Date Change from Bill No: '.$from_bill_no.' to '.$to_bill_no;
        $userupdate->newvalue = 'New Bill Date: '.$change_bill_date.' for Outlet: '.$outletid;
        $userupdate->form_type = 'Change Bill Date';
        $userupdate->created_at = $this->currenttime;
        $userupdate->updated_at = $this->currenttime;
        $userupdate->save();

        return redirect()->back()->with('success', 'Bill date updated successfully for '.$bills->count().' bill(s).');
    }

    // Reset Pos Recycle
    public function posrecycle(Request $request)
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.resetposrecyclebin', [
            'companies' => $companies,
        ]);
    }

    public function posrecyclesubmit(Request $request)
    {
        $validate = $request->validate([
            'propertyid' => 'required',
        ]);

        $propertyid = $request->input('propertyid');

        $connection = 'main';

        if ($propertyid > 100) {
            try {
                TenantDatabase::connect($propertyid);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return redirect()->back()->with('error', 'Database not found for Property ID: '.$propertyid);
            }
        }

        $result = $this->resetOutletData($propertyid, $connection);

        if (! $result['status']) {
            return redirect()->back()->with('error', 'Error resetting outlet data: '.$result['message']);
        }

        $outletNames = implode(', ', $result['outlets']->pluck('Name')->toArray());
        $shortNames = implode(', ', $result['short_names']);

        // Update log
        $userupdate = new UserUpdate;
        $userupdate->user = $this->username;
        $userupdate->propertyid = $propertyid;
        $userupdate->oldvalue = 'Reset Outlet Data';
        $userupdate->newvalue = 'Data Reset Successfully! For Outlets: '.$outletNames.' Short Names: '.$shortNames;
        $userupdate->form_type = 'Reset Outlet Data';
        $userupdate->created_at = $this->currenttime;
        $userupdate->updated_at = $this->currenttime;
        $userupdate->save();

        return redirect()->back()->with('success', 'Data Reset Successfully! For Outlets: '.$outletNames.' Short Names: '.$shortNames);
    }

    public function resetOutletData(int $propertyId, string $connection = 'main')
    {
        DB::connection($connection)->beginTransaction();

        try {

            /* ===============================
         | 1. Get Outlet Departments
         =============================== */
            $outlets = DB::connection($connection)->table('depart')
                ->select('dcode', 'Name', 'rest_type', 'propertyid', 'short_name')
                ->where('propertyid', $propertyId)
                ->where('outlet_yn', 'Y')
                ->where('rest_type', 'Outlet')
                ->where('dcode', '<>', 'RS'.$propertyId)
                ->orderBy('Name')
                ->get();

            if ($outlets->isEmpty()) {
                DB::connection($connection)->rollBack();

                return [
                    'status' => false,
                    'message' => 'No outlets found for this property',
                ];
            }

            /* ===============================
         | 2. Process Each Outlet
         =============================== */
            $shortNames = [];

            foreach ($outlets as $outlet) {
                if (! empty($outlet->short_name)) {
                    $shortNames[] = $outlet->short_name;
                }
            }

            if (empty($shortNames)) {
                DB::connection($connection)->rollBack();

                return [
                    'status' => false,
                    'message' => 'No valid short names found for outlets',
                ];
            }

            /* ===============================
         | 3. Delete Data (KOT)
         =============================== */
            $kotVtypes = [];
            foreach ($shortNames as $shortName) {
                $kotVtypes[] = 'K'.$shortName;
                $kotVtypes[] = 'N'.$shortName;
            }

            DB::connection($connection)->table('kot')
                ->where('propertyid', $propertyId)
                ->whereIn('vtype', $kotVtypes)
                ->delete();

            /* ===============================
         | 4. Delete Sale / Stock / Others
         =============================== */
            $tables = ['sale1', 'sale2', 'stock', 'suntran', 'paycharge'];

            foreach ($tables as $table) {
                foreach ($shortNames as $shortName) {
                    DB::connection($connection)->table($table)
                        ->where('propertyid', $propertyId)
                        ->where('vtype', 'B'.$shortName)
                        ->delete();
                }
            }

            /* ===============================
         | 5. Reset Voucher Prefix
         =============================== */
            $voucherVtypes = [];
            foreach ($shortNames as $shortName) {
                $voucherVtypes[] = 'B'.$shortName;
                $voucherVtypes[] = 'K'.$shortName;
                $voucherVtypes[] = 'N'.$shortName;
            }

            DB::connection($connection)->table('voucher_prefix')
                ->where('propertyid', $propertyId)
                ->whereIn('v_type', $voucherVtypes)
                ->update(['start_srl_no' => 0]);

            DB::connection($connection)->commit();

            return [
                'status' => true,
                'outlets' => $outlets,
                'short_names' => $shortNames,
                'message' => 'Outlet data reset successfully',
            ];
        } catch (Exception $e) {

            DB::connection($connection)->rollBack();

            return [
                'status' => false,
                'message' => $e->getMessage(),
            ];
        }
    }

    // Table Management System
    public function tablemanagement()
    {
        return view('tools.tablemanagement');
    }

    // Fetch All Tables
    public function fetchtables(Request $request)
    {
        try {
            // Yahan apni allowed tables ki list add karein
            // Jo tables dikhana chahte ho, sirf unko is array me add karo
            $allowedTables = [
                'plan1',
                'plandetails',
                'fombilldetails',
                'depart',
                'itemgrp',
                'guestfolio',
                'grpbookingdetails',
                'itemcatmast',
                'itemmast',
                'itemrate',
                'items',
                'paycharge',
                'paychargeh',
                'hallsale1',
                'hallsale2',
                'hallstock',
                'paychargelog',
                'revmast',
                'roomocc',
                'sale1',
                'sale2',
                'stock',
                'suntran',
                'voucher_prefix',
                'kot',
                'suntran',
                'booking',
                'venueocc',
                'indent',
                'indent1',
                'porder',
                'porder1',
                'gin',
                'purch1',
                'purch2',
                'expsheet',
                'hallbook',
                'ledger',
                'subgroup',
                'menuhelp',
                'revmast',
                'usermodule',
                'guestprof',
                'sundrymast',
                // Aur tables add kar sakte ho yahan
            ];

            // Validate ki allowed tables me propertyid column hai ya nahi
            $tableNames = [];
            $skippedTables = []; // Debug ke liye

            foreach ($allowedTables as $tableName) {
                try {
                    // Check if table exists
                    $tableExists = DB::select("SHOW TABLES LIKE '{$tableName}'");
                    if (! empty($tableExists)) {
                        // Check if table has propertyid OR Property_ID column
                        $allColumns = DB::select("SHOW COLUMNS FROM `{$tableName}`");
                        $hasPropertyId = false;

                        foreach ($allColumns as $col) {
                            $fieldLower = strtolower($col->Field);
                            if ($fieldLower === 'propertyid' || $fieldLower === 'property_id') {
                                $hasPropertyId = true;
                                break;
                            }
                        }

                        if ($hasPropertyId) {
                            $tableNames[] = $tableName;
                        } else {
                            $skippedTables[] = $tableName.' (No propertyid column)';
                        }
                    } else {
                        $skippedTables[] = $tableName.' (Table not found)';
                    }
                } catch (Exception $e) {
                    // Skip tables that don't exist or have issues
                    $skippedTables[] = $tableName.' (Error: '.$e->getMessage().')';

                    continue;
                }
            }
            sort($tableNames);

            return response()->json([
                'status' => true,
                'tables' => $tableNames,
                'skipped' => $skippedTables,  // Debug info
            ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    public function fetchtabledata(Request $request)
    {
        try {
            ini_set('memory_limit', '512M');

            $tableName = $request->table_name;
            $sqlWhere = $request->sql_where;

            $propertyId = (int) $request->property_id;

            if ($propertyId > 100) {
                try {
                    TenantDatabase::connect($propertyId);

                    $db = DB::connection('tenant');
                    $db->getPdo();
                } catch (\Throwable $e) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Database not found for Property ID: '.$propertyId,
                    ]);
                }
            } else {
                $db = DB::connection('main');
            }

            $selectColumns = $request->select_columns;
            $orderBy = $request->order_by;
            $groupBy = $request->group_by;
            $betweenClause = $request->between_clause;

            // Check if server-side processing
            $isServerSide = $request->has('start') && $request->has('length');

            // Validate table name to prevent SQL injection
            $validTables = $db->select('SHOW TABLES');
            $database = $db->getDatabaseName();
            $tableExists = false;

            foreach ($validTables as $table) {
                if ($table->{'Tables_in_'.$database} === $tableName) {
                    $tableExists = true;
                    break;
                }
            }

            if (! $tableExists) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid table name',
                ]);
            }

            // Get table columns
            $schema = $db->getSchemaBuilder();

            $columnNames = $schema->getColumnListing($tableName);

            $columns = collect($columnNames)->map(function ($column) {
                return (object) ['Field' => $column];
            })->all();

            // Process select columns
            $selectedColumnsList = ['*'];
            if ($selectColumns && trim($selectColumns) !== '') {
                $selectedColumnsList = array_map('trim', explode(',', $selectColumns));

                // Validate selected columns exist in table
                foreach ($selectedColumnsList as $col) {
                    if (! in_array($col, $columnNames)) {
                        return response()->json([
                            'status' => false,
                            'message' => "Invalid column name: {$col}",
                        ]);
                    }
                }
            }

            // Build base query with selected columns
            $query = $db->table($tableName)->select($selectedColumnsList);

            // Apply WHERE conditions
            if ($sqlWhere) {
                $query->whereRaw($sqlWhere);
            }

            // Apply BETWEEN clause
            if ($betweenClause && trim($betweenClause) !== '') {
                // Parse BETWEEN clause (e.g., "rate BETWEEN 100 AND 500")
                if (preg_match('/^(\w+)\s+BETWEEN\s+(.+?)\s+AND\s+(.+)$/i', trim($betweenClause), $matches)) {
                    $column = $matches[1];
                    $value1 = trim($matches[2], " '\"");
                    $value2 = trim($matches[3], " '\"");

                    // Validate column exists
                    if (! in_array($column, $columnNames)) {
                        return response()->json([
                            'status' => false,
                            'message' => "Invalid BETWEEN column: {$column}",
                        ]);
                    }

                    $query->whereBetween($column, [$value1, $value2]);
                } else {
                    return response()->json([
                        'status' => false,
                        'message' => 'Invalid BETWEEN syntax. Use: column BETWEEN value1 AND value2',
                    ]);
                }
            }

            // Apply GROUP BY clause
            if ($groupBy && trim($groupBy) !== '') {
                $groupByColumns = array_map('trim', explode(',', $groupBy));

                // Validate group by columns
                foreach ($groupByColumns as $col) {
                    if (! in_array($col, $columnNames)) {
                        return response()->json([
                            'status' => false,
                            'message' => "Invalid GROUP BY column: {$col}",
                        ]);
                    }
                }

                $query->groupBy($groupByColumns);
            }

            // Apply ORDER BY clause
            if ($orderBy && trim($orderBy) !== '') {
                // Parse order by string (e.g., "rate DESC, name ASC")
                $orderByClauses = array_map('trim', explode(',', $orderBy));

                foreach ($orderByClauses as $orderClause) {
                    $parts = preg_split('/\s+/', trim($orderClause));
                    $column = $parts[0];
                    $direction = isset($parts[1]) && strtoupper($parts[1]) === 'DESC' ? 'DESC' : 'ASC';

                    // Validate column exists
                    if (! in_array($column, $columnNames)) {
                        return response()->json([
                            'status' => false,
                            'message' => "Invalid ORDER BY column: {$direction}",
                        ]);
                    }

                    $query->orderBy($column, $direction);
                }
            }

            // Server-side processing for large datasets
            if ($isServerSide) {
                $totalRecords = $query->count();

                // Apply search
                $searchValue = $request->search;
                if ($searchValue) {
                    $query->where(function ($q) use ($columnNames, $searchValue) {
                        foreach ($columnNames as $column) {
                            $q->orWhere($column, 'LIKE', "%{$searchValue}%");
                        }
                    });
                }

                $filteredRecords = $query->count();

                // Apply ordering
                if ($request->has('order_column') && $request->has('order_dir')) {
                    $query->orderBy($request->order_column, $request->order_dir);
                }

                // Apply pagination - REDUCED PAGE SIZE FOR MEMORY SAFETY
                $start = (int) $request->start;
                $length = min((int) $request->length, 25); // Max 25 rows per page for safety
                $data = $query->skip($start)->take($length)->get();

                return response()->json([
                    'status' => true,
                    'columns' => $selectedColumnsList[0] === '*' ? $columnNames : $selectedColumnsList,
                    'data' => $data,
                    'recordsTotal' => $totalRecords,
                    'recordsFiltered' => $filteredRecords,
                ]);
            } else {
                // Normal mode - AGGRESSIVE PAGINATION TO PREVENT MEMORY CRASH
                // Count total records first
                $totalRecords = $query->count();

                // Define MUCH SMALLER page size for memory safety
                $maxNormalRows = 1000; // Only 1000 rows max in normal mode
                $forceFilterThreshold = 10000; // Force filtering for datasets over 10k

                // If total records exceed filter threshold, require WHERE clause
                if ($totalRecords > $forceFilterThreshold && ! $sqlWhere) {
                    return response()->json([
                        'status' => false,
                        'message' => "Dataset too large ({$totalRecords} records). Please use SQL WHERE clause to filter data first.",
                        'requiresFilter' => true,
                        'totalRecords' => $totalRecords,
                    ]);
                }

                // If total records exceed threshold, force server-side pagination
                if ($totalRecords > $maxNormalRows) {
                    // Return metadata to indicate server-side pagination needed
                    return response()->json([
                        'status' => true,
                        'columns' => $selectedColumnsList[0] === '*' ? $columnNames : $selectedColumnsList,
                        'data' => [],
                        'recordsTotal' => $totalRecords,
                        'recordsFiltered' => $totalRecords,
                        'forceServerSide' => true,
                        'message' => "Large dataset detected ({$totalRecords} records). Using optimized server-side pagination (25 rows per page).",
                    ]);
                }

                // For smaller datasets, apply soft limit
                $data = $query->limit($maxNormalRows)->get();

                return response()->json([
                    'status' => true,
                    'columns' => $selectedColumnsList[0] === '*' ? $columnNames : $selectedColumnsList,
                    'data' => $data,
                    'recordsTotal' => $totalRecords,
                    'isLargeDataset' => $totalRecords > 500,
                ]);
            }
        } catch (Exception $e) {
            Log::error('Error in fetchtabledata: '.$e->getMessage());

            return response()->json([
                'status' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    // Update Table Cell
    public function updatetablecell(Request $request)
    {
        try {
            $propertyId = (int) $request->property_id;

            $connection = 'main';

            if ($propertyId > 100) {
                try {
                    TenantDatabase::connect($propertyId);
                    $connection = 'tenant';
                } catch (\Throwable $e) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Database not found for Property ID: '.$propertyId,
                    ]);
                }
            }

            $db = DB::connection($connection);

            $tableName = $request->table_name;
            $columnName = $request->column_name;
            $value = $request->value;
            $id = $request->primary_key_value;

            $validTables = $db->select('SHOW TABLES');
            $tableExists = false;

            foreach ($validTables as $table) {
                $tableNameField = array_key_first((array) $table);

                if ($table->{$tableNameField} === $tableName) {
                    $tableExists = true;
                    break;
                }
            }

            if (! $tableExists) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid table name',
                ]);
            }

            $columnNames = $db->getSchemaBuilder()->getColumnListing($tableName);

            if (! in_array('id', $columnNames, true)) {
                return response()->json([
                    'status' => false,
                    'message' => 'This table does not have an id column.',
                ]);
            }

            if (! in_array($columnName, $columnNames, true)) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid column name.',
                ]);
            }

            if ($columnName === 'id') {
                return response()->json([
                    'status' => false,
                    'message' => 'The id column cannot be edited.',
                ]);
            }

            $oldRecord = $db->table($tableName)
                ->where('id', $id)
                ->first();

            if (! $oldRecord) {
                return response()->json([
                    'status' => false,
                    'message' => 'Record not found.',
                ]);
            }

            $oldValue = $oldRecord->{$columnName} ?? null;

            $db->table($tableName)
                ->where('id', $id)
                ->update([
                    $columnName => $value,
                ]);

            $logPropertyId = $oldRecord->propertyid
                ?? $oldRecord->property_id
                ?? $propertyId;

            $userupdate = new UserUpdate;
            $userupdate->setConnection('main');
            $userupdate->user = $this->username;
            $userupdate->propertyid = $logPropertyId;
            $userupdate->oldvalue = "Table: {$tableName} | ID: {$id} | Column: {$columnName} | Old Value: {$oldValue}";
            $userupdate->newvalue = "New Value: {$value}";
            $userupdate->form_type = 'Table Management - Cell Update';
            $userupdate->created_at = $this->currenttime;
            $userupdate->updated_at = $this->currenttime;
            $userupdate->save();

            return response()->json([
                'status' => true,
                'message' => 'Record updated successfully',
            ]);
        } catch (\Throwable $e) {
            return response()->json([
                'status' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    // Delete Table Record
    public function deletetablerecord(Request $request)
    {
        try {
            $tableName = $request->table_name;
            $id = $request->primary_key_value;
            $propertyId = (int) $request->property_id;

            $connection = 'main';

            if ($propertyId > 100) {
                try {
                    TenantDatabase::connect($propertyId);
                    $connection = 'tenant';
                } catch (\Throwable $e) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Database not found for Property ID: '.$propertyId,
                    ]);
                }
            }

            $db = DB::connection($connection);

            // Validate table name
            $validTables = $db->select('SHOW TABLES');
            $database = $db->getDatabaseName();
            $tableExists = false;

            foreach ($validTables as $table) {
                $tableArray = (array) $table;
                $tableNameField = array_key_first($tableArray);

                if ($table->{$tableNameField} === $tableName) {
                    $tableExists = true;
                    break;
                }
            }

            if (! $tableExists) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid table name',
                ]);
            }

            // This tool works only with tables having an id column
            $columnNames = $db->getSchemaBuilder()->getColumnListing($tableName);

            if (! in_array('id', $columnNames, true)) {
                return response()->json([
                    'status' => false,
                    'message' => 'This table does not have an id column.',
                ]);
            }

            // Get record before deleting
            $oldRecord = $db->table($tableName)
                ->where('id', $id)
                ->first();

            if (! $oldRecord) {
                return response()->json([
                    'status' => false,
                    'message' => 'Record not found.',
                ]);
            }

            // Delete using id only
            $deleted = $db->table($tableName)
                ->where('id', $id)
                ->delete();

            if (! $deleted) {
                return response()->json([
                    'status' => false,
                    'message' => 'Record could not be deleted.',
                ]);
            }

            // Get property ID for logging
            $logPropertyId = $oldRecord->propertyid
                ?? $oldRecord->property_id
                ?? $propertyId;

            // Log deletion in main database
            $userupdate = new UserUpdate;
            $userupdate->setConnection('main');
            $userupdate->user = $this->username;
            $userupdate->propertyid = $logPropertyId;
            $userupdate->oldvalue =
                "Table: {$tableName} | Deleted Record ID: {$id} | Table Data: "
                .json_encode($oldRecord);
            $userupdate->newvalue = 'Record Deleted';
            $userupdate->form_type = 'Table Management - Record Deletion';
            $userupdate->created_at = $this->currenttime;
            $userupdate->updated_at = $this->currenttime;
            $userupdate->save();

            return response()->json([
                'status' => true,
                'message' => 'Record deleted successfully',
            ]);
        } catch (\Throwable $e) {
            return response()->json([
                'status' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    // Delete Multiple Records
    public function deletemultiplerecords(Request $request)
    {
        try {
            $tableName = $request->table_name;
            $primaryKeyValuesJson = $request->primary_key_values;
            $propertyId = (int) $request->property_id;

            $connection = 'main';

            if ($propertyId > 100) {
                try {
                    TenantDatabase::connect($propertyId);
                    $connection = 'tenant';
                } catch (\Throwable $e) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Database not found for Property ID: '.$propertyId,
                    ]);
                }
            }

            $db = DB::connection($connection);

            $ids = json_decode($primaryKeyValuesJson, true);

            if (! is_array($ids) || empty($ids)) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid record IDs.',
                ]);
            }

            // Validate table name
            $validTables = $db->select('SHOW TABLES');
            $tableExists = false;

            foreach ($validTables as $table) {
                $tableArray = (array) $table;
                $tableNameField = array_key_first($tableArray);

                if ($table->{$tableNameField} === $tableName) {
                    $tableExists = true;
                    break;
                }
            }

            if (! $tableExists) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid table name.',
                ]);
            }

            // This tool works only with tables having an id column
            $columnNames = $db->getSchemaBuilder()->getColumnListing($tableName);

            if (! in_array('id', $columnNames, true)) {
                return response()->json([
                    'status' => false,
                    'message' => 'This table does not have an id column.',
                ]);
            }

            // Get records before deleting
            $oldRecords = $db->table($tableName)
                ->whereIn('id', $ids)
                ->get();

            if ($oldRecords->isEmpty()) {
                return response()->json([
                    'status' => false,
                    'message' => 'No records found.',
                ]);
            }

            // Delete using id only
            $deletedCount = $db->table($tableName)
                ->whereIn('id', $ids)
                ->delete();

            // Log deletion in main database
            $userupdate = new UserUpdate;
            $userupdate->setConnection('main');
            $userupdate->user = $this->username;
            $userupdate->propertyid = $propertyId;
            $userupdate->oldvalue =
                "Table: {$tableName} | Deleted Record IDs: "
                .implode(', ', $ids)
                .' | Table Data: '
                .json_encode($oldRecords);
            $userupdate->newvalue = "{$deletedCount} Record(s) Deleted";
            $userupdate->form_type = 'Table Management - Multiple Record Deletion';
            $userupdate->created_at = $this->currenttime;
            $userupdate->updated_at = $this->currenttime;
            $userupdate->save();

            return response()->json([
                'status' => true,
                'message' => "{$deletedCount} record(s) deleted successfully.",
                'deleted_count' => $deletedCount,
            ]);
        } catch (\Throwable $e) {
            return response()->json([
                'status' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    // Bulk Update Records using SQL WHERE clause
    public function bulkupdaterecords(Request $request)
    {
        // /
        try {
            $tableName = $request->table_name;
            $sqlWhere = $request->sql_where;
            $updatesJson = $request->updates;
            $propertyId = (int) $request->property_id;

            $connection = 'main';

            if ($propertyId > 100) {
                try {
                    TenantDatabase::connect($propertyId);
                    $connection = 'tenant';
                } catch (\Throwable $e) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Database not found for Property ID: '.$propertyId,
                    ]);
                }
            }

            $db = DB::connection($connection);

            // Parse updates JSON
            $updates = json_decode($updatesJson, true);

            if (! $updates || ! is_array($updates) || count($updates) === 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'No updates provided',
                ]);
            }

            // Validate table name
            $validTables = $db->select('SHOW TABLES');
            $database = $db->getDatabaseName();
            $tableExists = false;

            foreach ($validTables as $table) {
                if ($table->{'Tables_in_'.$database} === $tableName) {
                    $tableExists = true;
                    break;
                }
            }

            if (! $tableExists) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid table name',
                ]);
            }

            // Validate column names
            $schema = $db->getSchemaBuilder();

            $columnNames = $schema->getColumnListing($tableName);

            $columns = collect($columnNames)->map(function ($column) {
                return (object) ['Field' => $column];
            })->all();

            foreach (array_keys($updates) as $columnName) {
                if (! in_array($columnName, $validColumns)) {
                    return response()->json([
                        'status' => false,
                        'message' => "Invalid column name: {$columnName}",
                    ]);
                }
            }

            // Get affected records before update for logging
            $affectedRecords = $db->table($tableName)
                ->whereRaw($sqlWhere)
                ->get();

            if ($affectedRecords->isEmpty()) {
                return response()->json([
                    'status' => false,
                    'message' => 'No records found matching the WHERE clause',
                ]);
            }

            // Prepare update data array
            $updateData = [];
            foreach ($updates as $column => $value) {
                // Skip empty values - don't update columns with empty values
                if (trim($value) === '') {
                    continue;
                }

                // Remove quotes if present and handle NULL
                $cleanValue = trim($value);
                if (strtoupper($cleanValue) === 'NULL') {
                    $updateData[$column] = null;
                } else {
                    // Remove surrounding quotes if present
                    $cleanValue = preg_replace('/^["\']|["\']$/', '', $cleanValue);
                    $updateData[$column] = $cleanValue;
                }
            }

            // Check if there are any columns to update after filtering
            if (empty($updateData)) {
                return response()->json([
                    'status' => false,
                    'message' => 'No valid columns to update. All values were empty.',
                ]);
            }

            // Update records with SQL WHERE clause
            $affectedRows = $db->table($tableName)
                ->whereRaw($sqlWhere)
                ->update($updateData);

            // Log the update
            $userupdate = new UserUpdate;
            $userupdate->user = auth()->check() ? auth()->user()->name : 0;
            $userupdate->propertyid = $this->propertyid ?? session('property_id', 0);

            // Build old values string
            $oldValuesString = '';
            foreach ($affectedRecords as $record) {
                $recordValues = [];
                foreach (array_keys($updates) as $col) {
                    if (isset($record->$col)) {
                        $recordValues[] = "{$col}: {$record->$col}";
                    }
                }
                $oldValuesString .= '['.implode(', ', $recordValues).'] ';
            }

            // Build new values string
            $newValuesString = '';
            foreach ($updates as $col => $val) {
                $newValuesString .= "{$col} = {$val}, ";
            }
            $newValuesString = rtrim($newValuesString, ', ');

            $userupdate->oldvalue = "Table: {$tableName} | WHERE: {$sqlWhere} | Old Values: {$oldValuesString}";
            $userupdate->newvalue = "Bulk Update | Columns Updated: {$newValuesString}";
            $userupdate->save();

            return response()->json([
                'status' => true,
                'message' => 'Records updated successfully',
                'affected_rows' => $affectedRows,
                'columns_updated' => count($updates),
            ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    // Insert Record
    public function insertrecord(Request $request)
    {
        try {
            $tableName = $request->table_name;
            $propertyId = $request->property_id;
            $insertDataJson = $request->insert_data;

            $connection = 'main';

            if ($propertyId > 100) {
                try {
                    TenantDatabase::connect($propertyId);
                    $connection = 'tenant';
                } catch (\Throwable $e) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Database not found for Property ID: '.$propertyId,
                    ]);
                }
            }

            $db = DB::connection($connection);

            // Parse insert data JSON
            $insertData = json_decode($insertDataJson, true);

            if (! $insertData || ! is_array($insertData) || count($insertData) === 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'No data provided for insert',
                ]);
            }

            // Validate table name
            $validTables = $db->select('SHOW TABLES');
            $database = $db->getDatabaseName();
            $tableExists = false;

            foreach ($validTables as $table) {
                if ($table->{'Tables_in_'.$database} === $tableName) {
                    $tableExists = true;
                    break;
                }
            }

            if (! $tableExists) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid table name',
                ]);
            }

            // Get table columns
            $schema = $db->getSchemaBuilder();

            $validColumns = $schema->getColumnListing($tableName);

            // Validate column names
            foreach (array_keys($insertData) as $columnName) {
                if (! in_array($columnName, $validColumns)) {
                    return response()->json([
                        'status' => false,
                        'message' => "Invalid column name: {$columnName}",
                    ]);
                }
            }

            // Prepare insert data array
            $finalInsertData = [];
            foreach ($insertData as $column => $value) {
                // Remove quotes if present and handle NULL
                $cleanValue = trim($value);
                if (strtoupper($cleanValue) === 'NULL') {
                    $finalInsertData[$column] = null;
                } else {
                    // Remove surrounding quotes if present
                    $cleanValue = preg_replace('/^["\']|["\']$/', '', $cleanValue);
                    $finalInsertData[$column] = $cleanValue;
                    $finalInsertData['created_at'] = now();
                }
            }

            // Add property_id if not already present
            if ($propertyId) {
                // Find property_id column (case insensitive)
                $propIdColumn = null;
                foreach ($validColumns as $col) {
                    if (strtolower($col) === 'propertyid' || strtolower($col) === 'property_id') {
                        $propIdColumn = $col;
                        break;
                    }
                }

                if ($propIdColumn && ! isset($finalInsertData[$propIdColumn])) {
                    $finalInsertData[$propIdColumn] = $propertyId;
                }
            }

            $insertId = $db->table($tableName)->insertGetId($finalInsertData);
            // Log the insert
            $userupdate = new UserUpdate;
            $userupdate->user = auth()->check() ? auth()->user()->name : 0;
            $userupdate->propertyid = $this->propertyid ?? session('property_id', 0);

            // Build insert values string
            $insertValuesString = '';
            foreach ($finalInsertData as $col => $val) {
                $insertValuesString .= "{$col} = {$val}, ";
            }
            $insertValuesString = rtrim($insertValuesString, ', ');

            $userupdate->oldvalue = "Table: {$tableName} | Insert New Record";
            $userupdate->newvalue = "Insert | Data: {$insertValuesString} | Insert ID: {$insertId}";
            $userupdate->save();

            return response()->json([
                'status' => true,
                'message' => 'Record inserted successfully',
                'insert_id' => $insertId,
                'columns_inserted' => count($finalInsertData),
            ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    // code by aman //
    public function logreport(Request $request)
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.logreport', compact('companies'));
    }

    public function fetchlogreport(Request $request)
    {
        try {
            $propertyid = $request->input('propertyid');
            $from_date = $request->input('from_date');
            $to_date = $request->input('to_date');
            $type = $request->input('report_type');

            $connection = 'main';

            if ($propertyid > 100) {
                try {
                    TenantDatabase::connect($propertyid);
                    $connection = 'tenant';
                } catch (\Throwable $e) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Database not found for Property ID: '.$propertyid,
                    ]);
                }
            }

            if ($type === 'wp') {
                $logs = $this->getwhatpplogdate($propertyid, $from_date, $to_date, $connection);
            } else {
                $logs = $this->getChannellogdate($propertyid, $from_date, $to_date, $connection);
            }

            if ($logs->isEmpty()) {
                return response()->json([
                    'status' => false,
                    'message' => 'No logs found for the selected criteria.',
                ]);
            }

            return response()->json([
                'status' => true,
                'data' => $logs,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Error: '.$e->getMessage(),
            ]);
        }
    }

    private function getwhatpplogdate($propertyid, $from, $to, $connection = 'main')
    {
        return DB::connection($connection)->table('whatsapp_logs')
            ->select([
                'created_at as Date',
                'recipient_phone_number as MobileNo',
                'type as Type',
                'parameters as Parameters',
                'response as ResponseMgs',
                'u_name as Username',
            ])
            ->where('status', 'failed')
            ->where('propertyid', $propertyid)
            ->whereBetween('created_at', [$from, $to])
            ->orderBy('created_at')
            ->get();
    }

    private function getChannellogdate($propertyid, $from, $to, $connection = 'main')
    {
        return DB::connection($connection)->table('channelpushes')
            ->select([
                'created_at',
                'eglobepropertyid',
                'name',
                'postdata',
                'response',
                'u_name',
            ])
            ->where('httpcode', '<>', 200)
            ->where('propertyid', $propertyid)
            ->orderBy('id', 'desc')
            ->get();
    }

    /**
     * View All Tickets
     */
    public function viewTickets(Request $request)
    {
        $status = $request->get('status', 'all');
        $user = Auth::user();

        $isSupervisor = $user->superwiser;
        $apType = $user->AP;

        $query = SupportTicket::orderBy('created_at', 'desc');

        if ($apType === 'P' && $isSupervisor == '0') {
            $query->where('assigned_to_id', Auth::id());
        }

        if ($status !== 'all') {
            $query->where('status', $status);
        }

        $tickets = $query->paginate(20);

        return view('tools.tickets', compact('tickets'));
    }

    /**
     * Super Admin - View all generated support tickets
     */
    public function allTickets(Request $request)
    {
        $status = $request->get('status', 'all');

        $query = SupportTicket::query()
            ->orderBy('created_at', 'desc');

        if ($status !== 'all') {
            $query->where('status', $status);
        }

        $tickets = $query->paginate(20);

        return view('admin.tools.tickets', compact('tickets'));
    }

    /**
     * Accept assigned ticket
     */
    public function acceptTicket(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
            ]);

            $ticket = SupportTicket::findOrFail($request->ticket_id);
            $canOverride = $this->canOverrideSupportTicketAccess();

            // Check if ticket is assigned to current user
            if (! $canOverride && $ticket->assigned_to_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'This ticket is not assigned to you.',
                ], 403);
            }

            $ticket->is_seen = true;
            $ticket->assignment_status = 'accepted';
            $ticket->save();

            return response()->json([
                'success' => true,
                'message' => 'Ticket accepted successfully!',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error accepting ticket: '.$e->getMessage(),
            ], 500);
        }
    }

    /**
     * Transfer ticket to another user
     */
    public function transferTicket(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
                'transfer_to_id' => 'required|exists:users,id',
                'transfer_reason' => 'required|string|min:5|max:1000',
            ]);

            $ticket = SupportTicket::findOrFail($request->ticket_id);
            $canOverride = $this->canOverrideSupportTicketAccess();

            // Check if ticket is assigned to current user or user has permission
            if (! $canOverride && $ticket->assigned_to_id != Auth::id() && $ticket->working_by_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to transfer this ticket.',
                ], 403);
            }

            $isAccepted = $ticket->assignment_status === 'accepted' && (bool) $ticket->is_seen;
            if (! $isAccepted && ! $this->isSuperAdminUser()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Please accept ticket first, then you can transfer it.',
                ], 422);
            }

            if ($ticket->status === 'complete') {
                return response()->json([
                    'success' => false,
                    'message' => 'Completed ticket cannot be transferred.',
                ], 422);
            }

            // Get transfer user details
            $transferUserQuery = DB::table('users')
                ->where('id', $request->transfer_to_id)
                ->where('propertyid', '20');

            $transferUser = $transferUserQuery->first();

            if (! $transferUser) {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid user selected for transfer.',
                ], 400);
            }

            if ((int) $ticket->assigned_to_id === (int) $transferUser->id) {
                return response()->json([
                    'success' => false,
                    'message' => 'This ticket is already assigned to selected user.',
                ], 422);
            }

            $ticket->assigned_to_id = $transferUser->id;
            $ticket->assigned_to_name = $transferUser->name;
            $ticket->transferred_by_id = Auth::id();
            $ticket->transferred_by_name = Auth::user()->name ?? null;
            $ticket->transfer_reason = $request->transfer_reason;
            $ticket->transferred_at = now();
            $ticket->assigned_at = now();
            $ticket->assignment_status = 'transferred';
            $ticket->is_notified = false;
            $ticket->is_seen = false;
            $ticket->save();

            SupportTicketTransfer::create([
                'support_ticket_id' => $ticket->id,
                'transferred_by_id' => Auth::id(),
                'transferred_by_name' => Auth::user()->name ?? null,
                'transferred_to_id' => $transferUser->id,
                'transferred_to_name' => $transferUser->name,
                'reason' => $request->transfer_reason,
            ]);

            SupportTicketMessage::create([
                'support_ticket_id' => $ticket->id,
                'sender_id' => Auth::id(),
                'sender_name' => Auth::user()->name ?? null,
                'sender_role' => 'support',
                'message' => 'Ticket transferred to '.$transferUser->name.'. Reason: '.$request->transfer_reason,
                'delivered_at' => now(),
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Ticket transferred successfully to '.$transferUser->name,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error transferring ticket: '.$e->getMessage(),
            ], 500);
        }
    }

    /**
     * Get pending notifications for current user
     */
    public function getPendingNotifications(Request $request)
    {
        try {
            $canOverride = $this->canOverrideSupportTicketAccess();

            $pendingTickets = SupportTicket::query()
                ->when($canOverride && ! $this->isSuperAdminUser(), function ($query) {
                    $query->where('assigned_to_id', Auth::id());
                })
                ->where(function ($query) {
                    $query->where(function ($subQuery) {
                        $subQuery->whereIn('assignment_status', ['assigned', 'transferred'])
                            ->where(function ($seenQuery) {
                                $seenQuery->where('is_seen', false)
                                    ->orWhereNull('is_seen');
                            });
                    })
                        ->orWhere(function ($subQuery) {
                            $subQuery->where('status', 'pending')
                                ->whereNotNull('assigned_to_id')
                                ->where(function ($seenQuery) {
                                    $seenQuery->where('is_seen', false)
                                        ->orWhereNull('is_seen');
                                });
                        });
                })
                ->orderBy('created_at', 'desc')
                ->get(['id', 'ticket_number', 'name', 'created_at', 'assignment_status']);

            return response()->json([
                'success' => true,
                'count' => $pendingTickets->count(),
                'tickets' => $pendingTickets,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error fetching notifications',
            ], 500);
        }
    }

    public function getTicketMessageNotifications(Request $request)
    {
        try {
            $canOverride = $this->canOverrideSupportTicketAccess();

            $baseTickets = SupportTicket::query()
                ->when($canOverride && ! $this->isSuperAdminUser(), function ($query) {
                    $query->where('assigned_to_id', Auth::id());
                })
                ->whereIn('status', ['pending', 'working'])
                ->pluck('id');

            if ($baseTickets->isEmpty()) {
                return response()->json([
                    'success' => true,
                    'count' => 0,
                    'tickets' => [],
                ]);
            }

            $messages = DB::table('support_ticket_messages as m')
                ->join('support_tickets as t', 't.id', '=', 'm.support_ticket_id')
                ->whereIn('t.id', $baseTickets)
                ->where('m.sender_role', 'user')
                ->whereNull('m.read_at')
                ->orderBy('m.created_at', 'desc')
                ->limit(20)
                ->get([
                    't.id',
                    't.ticket_number',
                    't.name',
                    'm.message',
                    'm.created_at',
                ])
                ->map(function ($row) {
                    return [
                        'id' => $row->id,
                        'ticket_number' => $row->ticket_number,
                        'name' => $row->name,
                        'type' => 'sms',
                        'text' => (string) ($row->message ?? 'New message received.'),
                        'time' => optional(Carbon::parse($row->created_at))->toDateTimeString(),
                    ];
                })
                ->values();

            return response()->json([
                'success' => true,
                'count' => $messages->count(),
                'tickets' => $messages,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error fetching message notifications',
            ], 500);
        }
    }

    /**
     * Get available users for transfer
     */
    public function getAvailableUsers(Request $request)
    {
        try {
            $usersQuery = DB::table('users')
                ->where('id', '!=', Auth::id())
                ->where('propertyid', '20')
                ->where('AP', 'P');

            $users = $usersQuery
                ->select('id', 'name', 'email')
                ->orderBy('name')
                ->get();

            return response()->json([
                'success' => true,
                'users' => $users,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error fetching users',
            ], 500);
        }
    }

    public function getNotificationSoundSetting(Request $request)
    {
        try {
            $defaultSound = 'https://cdn.freesound.org/previews/316/316847_4939433-lq.mp3';

            $setting = DB::table('support_notification_sound_settings')
                ->where('user_id', Auth::id())
                ->first();

            $soundUrl = $defaultSound;
            if ($setting) {
                if ($setting->sound_type === 'url' && ! empty($setting->sound_url)) {
                    $soundUrl = $setting->sound_url;
                }
                if ($setting->sound_type === 'upload' && ! empty($setting->sound_path)) {
                    $soundUrl = asset('storage/'.$setting->sound_path);
                }
            }

            return response()->json([
                'success' => true,
                'sound_url' => $soundUrl,
                'sound_type' => $setting->sound_type ?? 'default',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error fetching notification sound setting.',
            ], 500);
        }
    }

    public function saveNotificationSoundUrl(Request $request)
    {
        try {
            $request->validate([
                'sound_url' => 'required|url|max:2000',
            ]);

            $existing = DB::table('support_notification_sound_settings')
                ->where('user_id', Auth::id())
                ->first();

            if ($existing && ! empty($existing->sound_path)) {
                Storage::disk('public')->delete($existing->sound_path);
            }

            DB::table('support_notification_sound_settings')->updateOrInsert(
                ['user_id' => Auth::id()],
                [
                    'sound_type' => 'url',
                    'sound_url' => $request->sound_url,
                    'sound_path' => null,
                    'updated_at' => now(),
                    'created_at' => $existing ? $existing->created_at : now(),
                ]
            );

            return response()->json([
                'success' => true,
                'message' => 'Notification sound URL saved successfully.',
                'sound_url' => $request->sound_url,
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed.',
                'errors' => $e->errors(),
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error saving notification sound URL.',
            ], 500);
        }
    }

    public function uploadNotificationSound(Request $request)
    {
        try {
            $request->validate([
                'sound_file' => 'required|file|mimetypes:audio/mpeg,audio/mp3,audio/wav,audio/ogg,audio/webm,audio/x-wav|max:2048',
            ]);

            $existing = DB::table('support_notification_sound_settings')
                ->where('user_id', Auth::id())
                ->first();

            if ($existing && ! empty($existing->sound_path)) {
                Storage::disk('public')->delete($existing->sound_path);
            }

            $path = $request->file('sound_file')->store('support-notification-sounds', 'public');

            DB::table('support_notification_sound_settings')->updateOrInsert(
                ['user_id' => Auth::id()],
                [
                    'sound_type' => 'upload',
                    'sound_url' => null,
                    'sound_path' => $path,
                    'updated_at' => now(),
                    'created_at' => $existing ? $existing->created_at : now(),
                ]
            );

            return response()->json([
                'success' => true,
                'message' => 'Notification sound uploaded successfully.',
                'sound_url' => asset('storage/'.$path),
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed.',
                'errors' => $e->errors(),
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error uploading notification sound.',
            ], 500);
        }
    }

    public function resetNotificationSound(Request $request)
    {
        try {
            $existing = DB::table('support_notification_sound_settings')
                ->where('user_id', Auth::id())
                ->first();

            if ($existing && ! empty($existing->sound_path)) {
                Storage::disk('public')->delete($existing->sound_path);
            }

            DB::table('support_notification_sound_settings')->updateOrInsert(
                ['user_id' => Auth::id()],
                [
                    'sound_type' => 'default',
                    'sound_url' => null,
                    'sound_path' => null,
                    'updated_at' => now(),
                    'created_at' => $existing ? $existing->created_at : now(),
                ]
            );

            return response()->json([
                'success' => true,
                'message' => 'Notification sound reset to default.',
                'sound_url' => 'https://cdn.freesound.org/previews/316/316847_4939433-lq.mp3',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error resetting notification sound.',
            ], 500);
        }
    }

    /**
     * Get ticket comments/messages for support users
     */
    public function getTicketMessages(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
                'mark_read' => 'nullable|boolean',
            ]);

            $ticket = SupportTicket::findOrFail($request->ticket_id);
            $canOverride = $this->canOverrideSupportTicketAccess();

            if (! $canOverride && $ticket->assigned_to_id != Auth::id() && $ticket->working_by_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to view this ticket conversation.',
                ], 403);
            }

            $now = now();

            SupportTicketMessage::where('support_ticket_id', $ticket->id)
                ->where('sender_role', 'user')
                ->whereNull('delivered_at')
                ->update([
                    'delivered_at' => $now,
                    'updated_at' => $now,
                ]);

            if ($request->boolean('mark_read', true)) {
                SupportTicketMessage::where('support_ticket_id', $ticket->id)
                    ->where('sender_role', 'user')
                    ->whereNull('read_at')
                    ->update([
                        'read_at' => $now,
                        'updated_at' => $now,
                    ]);
            }

            $messages = SupportTicketMessage::where('support_ticket_id', $ticket->id)
                ->orderBy('id', 'asc')
                ->get()
                ->map(function ($message) {
                    $status = 'sent';
                    if (! empty($message->read_at)) {
                        $status = 'read';
                    } elseif (! empty($message->delivered_at)) {
                        $status = 'delivered';
                    }

                    $canEditUntil = optional($message->created_at)->copy()?->addMinutes(5);
                    $canEdit = (int) $message->sender_id === (int) Auth::id()
                        && $message->sender_role === 'support'
                        && $canEditUntil
                        && now()->lessThanOrEqualTo($canEditUntil);

                    $isEdited = false;
                    if (! empty($message->updated_at) && ! empty($message->created_at)) {
                        $isEdited = $message->updated_at->diffInSeconds($message->created_at) > 2;
                    }

                    return [
                        'id' => $message->id,
                        'sender_id' => $message->sender_id,
                        'sender_name' => $message->sender_name,
                        'sender_role' => $message->sender_role,
                        'message' => $message->message,
                        'image_url' => ! empty($message->image_path) ? asset('storage/'.$message->image_path) : null,
                        'status' => $status,
                        'is_edited' => $isEdited,
                        'can_edit' => (bool) $canEdit,
                        'can_edit_until' => $canEditUntil ? $canEditUntil->toDateTimeString() : null,
                        'created_at' => optional($message->created_at)->toDateTimeString(),
                        'delivered_at' => optional($message->delivered_at)->toDateTimeString(),
                        'read_at' => optional($message->read_at)->toDateTimeString(),
                    ];
                });

            return response()->json([
                'success' => true,
                'messages' => $messages,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error fetching ticket messages: '.$e->getMessage(),
            ], 500);
        }
    }

    /**
     * Send ticket message from support side
     */
    public function sendTicketMessage(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
                'message' => 'nullable|string|max:5000',
                'image' => 'nullable|image|max:5120',
            ]);

            if (! $request->filled('message') && ! $request->hasFile('image')) {
                return response()->json([
                    'success' => false,
                    'message' => 'Message text or image is required.',
                ], 422);
            }

            $ticket = SupportTicket::findOrFail($request->ticket_id);
            $canOverride = $this->canOverrideSupportTicketAccess();

            if (! $canOverride && $ticket->assigned_to_id != Auth::id() && $ticket->working_by_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to comment on this ticket.',
                ], 403);
            }

            $imagePath = null;
            if ($request->hasFile('image')) {
                $imagePath = $request->file('image')->store('support-ticket-chat', 'public');
            }

            $message = SupportTicketMessage::create([
                'support_ticket_id' => $ticket->id,
                'sender_id' => Auth::id(),
                'sender_name' => Auth::user()->name ?? null,
                'sender_role' => 'support',
                'message' => $request->message,
                'image_path' => $imagePath,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Message sent successfully.',
                'data' => [
                    'id' => $message->id,
                    'sender_id' => $message->sender_id,
                    'sender_name' => $message->sender_name,
                    'sender_role' => $message->sender_role,
                    'message' => $message->message,
                    'image_url' => ! empty($message->image_path) ? asset('storage/'.$message->image_path) : null,
                    'status' => 'sent',
                    'is_edited' => false,
                    'can_edit' => true,
                    'can_edit_until' => optional($message->created_at)->copy()?->addMinutes(5)?->toDateTimeString(),
                    'created_at' => optional($message->created_at)->toDateTimeString(),
                    'delivered_at' => null,
                    'read_at' => null,
                ],
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed.',
                'errors' => $e->errors(),
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error sending ticket message: '.$e->getMessage(),
            ], 500);
        }
    }

    /**
     * Update Ticket Status
     */
    public function updateTicketStatus(Request $request)
    {
        try {
            if ($this->isSuperAdminUser()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Super admin is not allowed to update ticket status.',
                ], 403);
            }

            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
                'status' => 'required|in:pending,working,complete',
            ]);

            $ticket = SupportTicket::findOrFail($request->ticket_id);
            $canOverride = $this->canOverrideSupportTicketAccess();

            if (! $canOverride && $ticket->assigned_to_id != Auth::id() && $ticket->working_by_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to update this ticket.',
                ], 403);
            }

            $isAccepted = $ticket->assignment_status === 'accepted' && (bool) $ticket->is_seen;
            if (! $isAccepted) {
                return response()->json([
                    'success' => false,
                    'message' => 'Please accept ticket first, then update status.',
                ], 422);
            }

            $currentStatus = $ticket->status;
            $nextStatus = $request->status;

            if ($currentStatus === 'complete') {
                return response()->json([
                    'success' => false,
                    'message' => 'Completed ticket status cannot be changed.',
                ], 422);
            }

            if ($currentStatus === $nextStatus) {
                return response()->json([
                    'success' => true,
                    'message' => 'Ticket is already in selected status.',
                    'ticket' => $ticket,
                ]);
            }

            $allowedTransition = false;
            if ($currentStatus === 'pending' && $nextStatus === 'working') {
                $allowedTransition = true;
            }
            if ($currentStatus === 'working' && $nextStatus === 'complete') {
                $allowedTransition = true;
            }

            if (! $allowedTransition) {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid status flow. Follow process: Accept → Working → Complete.',
                ], 422);
            }

            if ($nextStatus === 'complete' && ! (bool) $ticket->is_user_satisfied) {
                return response()->json([
                    'success' => false,
                    'message' => 'User confirmation pending. Ticket can be completed only after user marks issue as solved.',
                ], 422);
            }

            $ticket->status = $nextStatus;

            if ($nextStatus === 'working') {
                $ticket->working_by_id = Auth::id();
                $ticket->working_by_name = Auth::user()->name ?? null;
                $ticket->working_by_at = now();
                $ticket->is_user_satisfied = false;
                $ticket->user_satisfied_at = null;
            } elseif ($nextStatus === 'complete' && empty($ticket->working_by_name)) {
                $ticket->working_by_id = Auth::id();
                $ticket->working_by_name = Auth::user()->name ?? null;
                $ticket->working_by_at = now();
            }

            $ticket->save();

            if (in_array($nextStatus, ['working', 'complete'])) {
                SupportTicketMessage::create([
                    'support_ticket_id' => $ticket->id,
                    'sender_id' => Auth::id(),
                    'sender_name' => Auth::user()->name ?? null,
                    'sender_role' => 'support',
                    'message' => '[STATUS_UPDATE] Ticket status updated to '.$nextStatus.'.',
                ]);
            }

            if ($nextStatus === 'complete') {
                SupportTicket::assignNextQueuedTicket();
            }

            return response()->json([
                'success' => true,
                'message' => 'Ticket status updated successfully!',
                'ticket' => $ticket,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error updating ticket: '.$e->getMessage(),
            ], 500);
        }
    }

    public function editTicketMessage(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
                'message_id' => 'required|exists:support_ticket_messages,id',
                'message' => 'required|string|max:5000',
            ]);

            $ticket = SupportTicket::findOrFail($request->ticket_id);
            $message = SupportTicketMessage::findOrFail($request->message_id);
            $canOverride = $this->canOverrideSupportTicketAccess();

            if (! $canOverride && $ticket->assigned_to_id != Auth::id() && $ticket->working_by_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to edit this message.',
                ], 403);
            }

            if ((int) $message->support_ticket_id !== (int) $ticket->id) {
                return response()->json([
                    'success' => false,
                    'message' => 'Message does not belong to selected ticket.',
                ], 422);
            }

            if ((int) $message->sender_id !== (int) Auth::id() || $message->sender_role !== 'support') {
                return response()->json([
                    'success' => false,
                    'message' => 'You can edit only your own message.',
                ], 403);
            }

            $editableUntil = optional($message->created_at)->copy()?->addMinutes(5);
            if (! $editableUntil || now()->greaterThan($editableUntil)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Edit window expired. You can edit message only within 5 minutes.',
                ], 422);
            }

            $newMessage = trim((string) $request->message);
            if ($newMessage === '') {
                return response()->json([
                    'success' => false,
                    'message' => 'Message cannot be empty.',
                ], 422);
            }

            $message->message = $newMessage;
            $message->save();

            return response()->json([
                'success' => true,
                'message' => 'Message edited successfully.',
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed.',
                'errors' => $e->errors(),
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error editing message: '.$e->getMessage(),
            ], 500);
        }
    }

    public function markTicketWorkComplete(Request $request)
    {
        try {
            if ($this->isSuperAdminUser()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Super admin is not allowed to update ticket status.',
                ], 403);
            }

            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
            ]);

            $ticket = SupportTicket::findOrFail($request->ticket_id);
            $canOverride = $this->canOverrideSupportTicketAccess();

            if (! $canOverride && $ticket->assigned_to_id != Auth::id() && $ticket->working_by_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to update this ticket.',
                ], 403);
            }

            if ($ticket->status !== 'working') {
                return response()->json([
                    'success' => false,
                    'message' => 'Work complete can be marked only when ticket is in working status.',
                ], 422);
            }

            if ((bool) $ticket->is_user_satisfied) {
                return response()->json([
                    'success' => false,
                    'message' => 'User already confirmed this ticket. You can mark final status as complete now.',
                ], 422);
            }

            $alreadyMarked = SupportTicketMessage::where('support_ticket_id', $ticket->id)
                ->where('sender_role', 'support')
                ->where('message', 'like', '[WORK_COMPLETE]%')
                ->latest('id')
                ->exists();

            if (! $alreadyMarked) {
                SupportTicketMessage::create([
                    'support_ticket_id' => $ticket->id,
                    'sender_id' => Auth::id(),
                    'sender_name' => Auth::user()->name ?? null,
                    'sender_role' => 'support',
                    'message' => '[WORK_COMPLETE] Work complete from support side. Please check and confirm from your side.',
                ]);
            }

            return response()->json([
                'success' => true,
                'message' => 'Work marked complete. User notified for confirmation.',
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed.',
                'errors' => $e->errors(),
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error marking work complete: '.$e->getMessage(),
            ], 500);
        }
    }

    public function markDashboard()
    {
        return view('tools.markDashboard');
    }

    public function CRM()
    {
        $crmData = DB::table('demo_requests as dr')
            ->leftJoin(DB::raw('
            (
                SELECT d1.*
                FROM demo1 d1
                INNER JOIN (
                    SELECT orderno, MAX(sno) as max_sno
                    FROM demo1
                    GROUP BY orderno
                ) latest
                ON d1.orderno = latest.orderno
                AND d1.sno = latest.max_sno
            ) as d1
        '), 'dr.orderno', '=', 'd1.orderno')
            ->select(
                'dr.*',
                'd1.remark',
                'd1.nextfollowdate'
            )
            ->orderBy('dr.orderno', 'desc')
            ->get();

        $assignedPersons = DB::table('users')
            ->where('propertyid', 20)
            ->where('status', 1)
            ->get();

        return view('tools.CRM', compact('crmData', 'assignedPersons'));
    }

    public function storeCRM(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return redirect()->route('CRM')
                ->withErrors($validator)
                ->withInput();
        }

        $id = DB::table('demo_requests')->insertGetId([
            'name' => $request->name,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'hotel_name' => $request->hotel_name,
            'CityName' => $request->CityName,
            'AssPerson' => $request->AssPerson,
            'ProductName' => $request->ProductName,
            'RefPerson' => $request->RefPerson,
            'ModuleName' => $request->ModuleName,
            'DemoYN' => $request->DemoYN,
            'QuotationYN' => $request->QuotationYN,
            'OrderValue' => $request->OrderValue,
            'Status' => $request->Status,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // ✅ VERY IMPORTANT
        DB::table('demo_requests')->where('id', $id)->update([
            'orderno' => $id,
        ]);

        $orderno = $id;

        // get next sno
        $nextSno = DB::table('demo1')
            ->where('orderno', $orderno)
            ->max('sno');

        $nextSno = $nextSno ? $nextSno + 1 : 1;

        // insert remark
        DB::table('demo1')->insert([
            'orderno' => $orderno,
            'sno' => $nextSno,
            'remark' => $request->remark,
            'nextfollowdate' => $request->nextfollowdate ?: null,
            'Status' => $request->Status ?? '',
        ]);

        return redirect()->route('CRM')->with('success', 'CRM entry added successfully!');
    }

    public function updateCRM(Request $request)
    {
        $user = Auth::user();

        // 🔍 Get record
        $data = DB::table('demo_requests')
            ->where('id', $request->id)
            ->first();

        // ❌ BLOCK if not supervisor AND not assigned
        if ($user->superwiser != 1 && $data->AssPerson != $user->name) {
            return redirect()->back()->with('error', '❌ You are not allowed to edit this record');
        }
        DB::table('demo_requests')
            ->where('id', $request->id)
            ->update([
                'name' => $request->name,
                'email' => $request->email,
                'phone_number' => $request->phone_number,
                'hotel_name' => $request->hotel_name,
                'CityName' => $request->CityName,
                'AssPerson' => $request->AssPerson,
                'ProductName' => $request->ProductName,
                'RefPerson' => $request->RefPerson,
                'ModuleName' => $request->ModuleName,
                'DemoYN' => $request->DemoYN,
                'QuotationYN' => $request->QuotationYN,
                'OrderValue' => $request->OrderValue,
                'Status' => $request->Status,
                'updated_at' => now(),
            ]);

        // demo1 mein naya row insert karo
        $maxSno = DB::table('demo1')
            ->where('orderno', $request->orderno)
            ->max('sno');

        $nextSno = $maxSno ? $maxSno + 1 : 1;

        DB::table('demo1')->insert([
            'orderno' => $request->orderno,
            'sno' => $nextSno,
            'remark' => $request->remark,
            'nextfollowdate' => $request->nextfollowdate ?: null,
            'Status' => $request->Status ?? '',
        ]);

        return redirect()->route('CRM')->with('success', 'Entry updated successfully!');
    }

    public function integritycheck()
    {
        $companies = Companyreg::on('main')->groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('tools.integritycheck', compact('companies'));
    }

    /**
     * Run an integrity check query against the selected property's database.
     *
     * Properties above 100 live in their own tenant database. If that database
     * is not provisioned (or the tenant query fails), fall back to the main
     * database, which is still property filtered, instead of returning an error.
     */
    protected function integrityQuery($propertyid, callable $query)
    {
        if ((int) $propertyid > 100) {
            try {
                TenantDatabase::connect((int) $propertyid);
                DB::connection('tenant')->getPdo();

                return $query('tenant');
            } catch (\Throwable $e) {
                Log::warning('Integrity check fell back to main database.', [
                    'propertyid' => $propertyid,
                    'error' => $e->getMessage(),
                ]);

                DB::setDefaultConnection('main');
            }
        }

        return $query('main');
    }

    public function getLedgerBlankSubcode(Request $request)
    {
        $propertyid = $request->propertyid;

        $data = $this->integrityQuery($propertyid, function ($connection) use ($propertyid) {
            return DB::connection($connection)->table('ledger')
                ->where(function ($q) {
                    $q->whereNull('subcode')
                        ->orWhere('subcode', '');
                })
                ->where('propertyid', $propertyid)
                ->get();
        });

        return response()->json($data);
    }

    public function getLedgerSubcodeMissing(Request $request)
    {
        $propertyid = $request->propertyid;

        return $this->integrityQuery($propertyid, function ($connection) use ($propertyid) {
            return DB::connection($connection)->table('ledger')
                ->leftJoin('subgroup', function ($join) use ($propertyid) {
                    $join->on('ledger.subcode', '=', 'subgroup.sub_code')
                        ->where('subgroup.propertyid', $propertyid);
                })
                ->select(
                    'ledger.docid',
                    'ledger.vdate',
                    'ledger.vtype',
                    'ledger.subcode',
                    'ledger.contrasub',
                    'ledger.amtcr',
                    'ledger.amtdr',
                    'subgroup.name'
                )
                ->whereNull('subgroup.name')
                ->where('ledger.propertyid', $propertyid)
                ->get();
        });
    }

    public function getSubgroupMissingAcgroup(Request $request)
    {
        $propertyid = $request->propertyid;

        return $this->integrityQuery($propertyid, function ($connection) use ($propertyid) {
            return DB::connection($connection)->table('subgroup')
                ->select('sub_code', 'name', 'nature')
                ->where('subgroup.propertyid', $propertyid)
                ->whereNotIn('group_code', function ($q) use ($propertyid) {
                    $q->select('group_code')
                        ->from('acgroup')
                        ->where('acgroup.propertyid', $propertyid);
                })
                ->get();
        });
    }

    public function getGroupNatureMismatch(Request $request)
    {
        $propertyid = $request->propertyid;

        return $this->integrityQuery($propertyid, function ($connection) use ($propertyid) {
            return DB::connection($connection)->table('subgroup')
                ->leftJoin('acgroup', function ($join) use ($propertyid) {
                    $join->on('subgroup.group_code', '=', 'acgroup.group_code')
                        ->where('acgroup.propertyid', $propertyid);
                })
                ->select(
                    'subgroup.sub_code',
                    'subgroup.name',
                    'acgroup.nature as grnat'
                )
                ->where('subgroup.propertyid', $propertyid)
                ->whereColumn('subgroup.nature', '!=', 'acgroup.nature')
                ->get();
        });
    }

    public function getAcgroupNullNature(Request $request)
    {
        $propertyid = $request->propertyid;

        return $this->integrityQuery($propertyid, function ($connection) use ($propertyid) {
            return DB::connection($connection)->table('acgroup')
                ->where('propertyid', $propertyid)
                ->where(function ($q) {
                    $q->whereNull('nature')
                        ->orWhere('nature', '');
                })
                ->get();
        });
    }

    public function getTable6(Request $request)
    {
        if (! $request->fromDate) {
            return response()->json([]);
        }

        $propertyid = $request->propertyid;
        $fromDate = $request->fromDate;

        return $this->integrityQuery($propertyid, function ($connection) use ($propertyid, $fromDate) {
            return DB::connection($connection)->table('ledger')
                ->leftJoin('subgroup', function ($join) use ($propertyid) {
                    $join->on('ledger.subcode', '=', 'subgroup.sub_code')
                        ->where('subgroup.propertyid', $propertyid);
                })
                ->select(
                    'ledger.vdate',
                    'ledger.vtype',
                    'subgroup.name',
                    'subgroup.nature',
                    'ledger.amtcr',
                    'ledger.amtdr'
                )
                ->where('ledger.propertyid', $propertyid)
                ->where('ledger.vdate', '<', $fromDate)
                ->whereIn('subgroup.nature', ['Expenditure', 'Purchase', 'Sale'])
                ->get();
        });
    }

    public function getTable7(Request $request)
    {
        if (! $request->fromDate) {
            return response()->json(['bal' => 0]);
        }

        $propertyid = $request->propertyid;
        $fromDate = $request->fromDate;

        $data = $this->integrityQuery($propertyid, function ($connection) use ($propertyid, $fromDate) {
            return DB::connection($connection)->table('ledger')
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'ledger.subcode')
                ->where('ledger.vdate', '<', $fromDate)
                ->where('subgroup.propertyid', $propertyid)
                ->whereNotIn('subgroup.nature', ['Expenditure', 'Purchase', 'Sale'])
                ->selectRaw('COALESCE(SUM(ledger.amtcr) - SUM(ledger.amtdr),0) as bal')
                ->first();
        });

        return response()->json($data);
    }

    public function getTable8(Request $request)
    {
        if (! $request->toDate) {
            return response()->json([]);
        }

        $propertyid = $request->propertyid;
        $toDate = $request->toDate;

        return $this->integrityQuery($propertyid, function ($connection) use ($propertyid, $toDate) {
            return DB::connection($connection)->table('ledger')
                ->leftJoin('subgroup', function ($join) use ($propertyid) {
                    $join->on('ledger.subcode', '=', 'subgroup.sub_code')
                        ->where('subgroup.propertyid', $propertyid);
                })
                ->select(
                    'ledger.vdate',
                    'ledger.vtype',
                    'subgroup.name',
                    'ledger.amtcr',
                    'ledger.amtdr'
                )
                ->where('ledger.propertyid', $propertyid)
                ->where('ledger.vdate', '>', $toDate)
                ->get();
        });
    }

    public function getTable9(Request $request)
    {
        if (! $request->ncurDate) {
            return response()->json(['bal' => 0]);
        }

        $propertyid = $request->propertyid;
        $ncurDate = $request->ncurDate;

        $data = $this->integrityQuery($propertyid, function ($connection) use ($propertyid, $ncurDate) {
            return DB::connection($connection)->table('ledger')
                ->where('propertyid', $propertyid)
                ->whereDate('vdate', $ncurDate)
                ->selectRaw('COALESCE(SUM(amtcr) - SUM(amtdr),0) as bal')
                ->first();
        });

        return response()->json($data);
    }

    public function getTable10(Request $request)
    {
        if (! $request->fromDate || ! $request->toDate) {
            return response()->json([]);
        }

        $propertyid = $request->propertyid;
        $fromDate = $request->fromDate;
        $toDate = $request->toDate;

        return $this->integrityQuery($propertyid, function ($connection) use ($propertyid, $fromDate, $toDate) {
            return DB::connection($connection)->table('ledger')
                ->where('propertyid', $propertyid)
                ->whereBetween('vdate', [$fromDate, $toDate])
                ->select(
                    'vdate',
                    'vtype',
                    'vno',
                    DB::raw('SUM(amtcr) - SUM(amtdr) as bal')
                )
                ->groupBy('vdate', 'vtype', 'vno')
                ->havingRaw('SUM(amtcr) - SUM(amtdr) != 0')
                ->get();
        });
    }

    public function getTable11(Request $request)
    {
        if (! $request->fromDate || ! $request->toDate) {
            return response()->json([]);
        }

        $propertyid = $request->propertyid;
        $fromDate = $request->fromDate;
        $toDate = $request->toDate;

        return $this->integrityQuery($propertyid, function ($connection) use ($propertyid, $fromDate, $toDate) {
            return DB::connection($connection)->table('ledger')
                ->where('propertyid', $propertyid)
                ->whereBetween('vdate', [$fromDate, $toDate])
                ->select(
                    'docid',
                    'vdate',
                    DB::raw('SUM(amtcr) - SUM(amtdr) as bal')
                )
                ->groupBy('docid', 'vdate')
                ->havingRaw('SUM(amtcr) - SUM(amtdr) != 0')
                ->get();
        });
    }

    public function followUp()
    {
        $user = Auth::user();

        $data = DB::table('demo_requests as D')
            ->leftJoin('demo1 as R', 'D.orderno', '=', 'R.orderno')
            ->select(
                'D.orderno',
                'D.created_at as CallDate',
                'D.hotel_name as PropertyName',
                'D.CityName as City',
                'D.name as Conname',
                'D.phone_number as Phone',
                'D.AssPerson as Username',
                'R.sno',
                'R.remark',
                'R.nextfollowdate as Nextfolldate',
                'D.Status as Status'
            )

            ->orderByRaw('
            CASE 
                WHEN LOWER(D.AssPerson) = ? THEN 0 
                ELSE 1 
            END
        ', [strtolower($user->name)])

            // ->orderBy('D.orderno', 'desc')
            ->orderBy('R.nextfollowdate', 'desc')
            ->orderBy('R.sno', 'desc')

            ->get();

        return view('tools.followup', compact('data'));
    }

    public function updateFollowUp(Request $request)
    {
        $maxSno = DB::table('demo1')
            ->where('orderno', $request->orderno)
            ->max('sno');

        $nextSno = $maxSno ? $maxSno + 1 : 1;

        DB::table('demo1')->insert([
            'orderno' => $request->orderno,
            'sno' => $nextSno,
            'remark' => $request->remark,
            'nextfollowdate' => $request->nextfollowdate ?: null,
        ]);

        return redirect()->route('followUp')->with('success', 'Follow-up added!');
    }

    public function quotationCRM($orderno)
    {
        $data = DB::table('demo_requests')
            ->where('orderno', $orderno)
            ->first();

        if (! $data) {
            abort(404, 'Record not found');
        }

        $printCompany = DB::table('company')
            ->where('propertyid', 103)
            ->select('logo')
            ->first();

        return view('tools.quotation', compact('data', 'printCompany'));
    }

    public function quotationApi($orderno)
    {
        $data = DB::table('demo_requests')
            ->where('orderno', $orderno)
            ->first();

        if (! $data) {
            return response()->json(['error' => 'Record not found'], 404);
        }

        return response()->json([
            'orderno' => $data->orderno,
            'name' => $data->name,
            'hotel_name' => $data->hotel_name,
            'city' => $data->CityName,
            'phone' => $data->phone_number ?? null,
            'quotation_url' => route('CRM.quotation', $data->orderno),
        ]);
    }

    public function quotationGeneratePdf(Request $request, $orderno)
    {
        $request->validate([
            'items' => 'required|string',
            'discount_type' => 'required|in:percentage,flat',
            'discount_value' => 'nullable|numeric|min:0',
            'action' => 'required|in:view,download',
        ]);

        $data = DB::table('demo_requests')
            ->where('orderno', $orderno)
            ->first();

        if (! $data) {
            abort(404, 'Record not found');
        }

        $printCompany = DB::table('company')
            ->where('propertyid', 103)
            ->select('logo')
            ->first();

        $items = json_decode($request->input('items'), true) ?: [];

        $subtotal = 0;
        foreach ($items as $item) {
            $subtotal += (float) ($item['qty'] ?? 0) * (float) ($item['price'] ?? 0);
        }

        $discountType = $request->input('discount_type', 'percentage');
        $discountValue = (float) $request->input('discount_value', 0);
        $discountAllowed = 0;

        if ($discountValue > 0) {
            $discountAllowed = $discountType === 'percentage'
                ? ($subtotal * $discountValue) / 100
                : $discountValue;

            if ($discountAllowed > $subtotal) {
                $discountAllowed = $subtotal;
            }
        }

        $grandTotal = $subtotal - $discountAllowed;
        $pdf = Pdf::loadView('tools.quotation-pdf', [
            'data' => $data,
            'printCompany' => $printCompany,
            'items' => $items,
            'subtotal' => $subtotal,
            'discountType' => $discountType,
            'discountValue' => $discountValue,
            'discountAllowed' => $discountAllowed,
            'grandTotal' => $grandTotal,
        ])->setPaper('a4', 'portrait');

        $filename = "Quotation-{$data->orderno}.pdf";

        return $request->input('action') === 'download'
            ? $pdf->download($filename)
            : $pdf->stream($filename);
    }

    
}
