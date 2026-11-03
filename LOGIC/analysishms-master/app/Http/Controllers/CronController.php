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
use App\Models\Log;
use App\Services\TenantDatabase;

use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;

class CronController extends Controller
{
    protected $currenttime;
    protected $ptlngth;
    protected $datemanage;

    public function __construct()
    {

        date_default_timezone_set('Asia/Kolkata');
        $this->currenttime = date('Y-m-d H:i:s');

        try {
            if (auth()->check()) {
                $this->datemanage = DateHelper::calculateDateRanges(date('d-m-Y'));
            } else {
                $this->datemanage = null;
            }
        } catch (\Exception $e) {
            $this->datemanage = null;
        }
    }
    # Warning: Abandon hope, all who enter here. 😱

    public function autoCharge(Request $request)
    {

        // return 'sagar';

        // if ($request->header('User-Agent') && str_contains(strtolower($request->header('User-Agent')), 'mozilla')) {
        //     abort(403, 'Unauthorized access. This route is for server cron use only.');
        // }


        $getproperties = Companyreg::on('main')->get();

        foreach ($getproperties as $property) {
            DB::purge('tenant');
            try {
                TenantDatabase::connect($property->propertyid);
                DB::setDefaultConnection('tenant');
                DB::connection('tenant')->getPdo();
            } catch (Exception $e) {
                $error = 'Failed to connect to tenant database for property ' . $property->propertyid . ': ' . $e->getMessage();
                logData('Auto Charge Post Error', $error, $property->propertyid, 'system', $e->getLine(), $e->getFile(), 'main');
                continue;
            }

            DB::beginTransaction();
            try {

                $currentncur = null;
                $propertyidenv = null;
                $envgeneral = EnviroGeneral::where('propertyid', $property->propertyid)->first();

                if ($envgeneral->autonightaudit == 'Y') {
                    if (date('d-m', strtotime($envgeneral->ncur)) == '31-03') {
                        DB::commit();
                        continue;
                    }
                    $propertyidenv = $envgeneral->propertyid;

                    $userdt = User::where('propertyid', $propertyidenv)->first();

                    $checkdatec = VoucherPrefix::where('propertyid', $propertyidenv)
                        ->whereDate('date_from', '<=', $envgeneral->ncur)
                        ->whereDate('date_to', '>=', $envgeneral->ncur)
                        ->first();

                    if ($checkdatec === null || $checkdatec === '0') {
                        DB::rollBack();
                        logData('Auto Charge Post Error', 'Not eligible to post charges for this date: ' . date('d-m-Y', strtotime($envgeneral->ncur)), $propertyidenv, 'system');
                        continue;
                    }

                    Paycharge::where('vdate', $envgeneral->ncur)->whereIn('vtype', ['PPOS', 'IPOS'])->where('propertyid', $propertyidenv)->delete();
                    $roomchrgdueac = EnviroFom::where('propertyid', $propertyidenv)->first();
                    if ($roomchrgdueac->roomchrgdueac == '') {
                        // Enviro setting not configured - continue without posting charges
                    }
                    $ppostpost = Suntran::select([
                        DB::raw('SUM(suntran.amount) AS RevAmt'),
                        'suntran.revcode',
                        'suntran.restcode',
                        'suntran.vdate',
                        DB::raw('MAX(depart.name) AS Outlet'),
                        DB::raw('MAX(depart.short_name) AS DShortName'),
                        DB::raw('MAX(revmast.name) AS Revenue'),
                        DB::raw('MAX(suntran.suncode) AS SundryCode')
                    ])
                        ->leftJoin('revmast', 'suntran.revcode', '=', 'revmast.rev_code')
                        ->leftJoin('depart', 'suntran.restcode', '=', 'depart.dcode')
                        ->where('suntran.propertyid', $propertyidenv)
                        ->where('suntran.vdate', $envgeneral->ncur)
                        ->whereNotNull('suntran.revcode')
                        ->where('suntran.revcode', '!=', '')
                        ->where('suntran.suncode', '!=', $propertyidenv . '101')
                        ->whereIn('depart.rest_type', ['Outlet', 'Room Service'])
                        ->where('suntran.delflag', '!=', 'Y')
                        ->groupBy('suntran.restcode', 'suntran.revcode', 'suntran.vdate')
                        ->orderBy('suntran.restcode')
                        ->get();

                    foreach ($ppostpost as $row) {
                        $vtypeac = 'PPOS';

                        $chkvpf = VoucherPrefix::where('propertyid', $propertyidenv)
                            ->where('v_type', $vtypeac)
                            ->whereDate('date_from', '<=', $envgeneral->ncur)
                            ->whereDate('date_to', '>=', $envgeneral->ncur)
                            ->first();

                        $start_srl_no = $chkvpf->start_srl_no + 1;
                        $vprefix = $chkvpf->prefix;

                        VoucherPrefix::where('propertyid', $propertyidenv)
                            ->where('v_type', $vtypeac)
                            ->where('prefix', $vprefix)
                            ->increment('start_srl_no');

                        $docid = $propertyidenv . $vtypeac . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;

                        $indata = [
                            'propertyid' => $propertyidenv,
                            'docid' => $docid,
                            'vno' => $start_srl_no,
                            'vdate' => $envgeneral->ncur,
                            'sno' => '1',
                            'sno1' => '1',
                            'vtype' => $vtypeac,
                            'vtime' => date('H:i:s'),
                            'vprefix' => $vprefix,
                            'comments' => $row->revenue . 'Bill No: ' . $start_srl_no,
                            'paycode' => $row->revcode,
                            'amtcr' => '0.00',
                            'amtdr' => $row->RevAmt,
                            'restcode' => $row->restcode,
                            'created_at' => $this->currenttime,
                            'u_name' => $userdt->name,
                            'u_ae' => 'a',
                        ];
                        Paycharge::insert($indata);
                    }

                    $ipospost = Stock::selectRaw('
                        SUM(stock.amount) - SUM(stock.discamt) AS ItemAmt,
                        GROUP_CONCAT(DISTINCT stock.vno ORDER BY stock.vno ASC) AS vno_group,
                        itemcatmast.RevCode,
                        stock.restcode,
                        stock.vdate,
                        itemcatmast.AcCode,
                        MAX(depart.short_name) AS DShortName
                    ')
                        ->leftJoin('itemmast', function ($join) use ($propertyidenv) {
                            $join->on('stock.item', '=', 'itemmast.Code')
                                ->where('itemmast.Property_ID', $propertyidenv)
                                ->on('stock.itemrestcode', '=', 'itemmast.RestCode');
                        })
                        ->leftJoin('itemcatmast', function ($query) use ($propertyidenv) {
                            $query->on('itemmast.ItemCatCode', '=', 'itemcatmast.Code')
                                ->where('itemcatmast.propertyid', $propertyidenv)
                                ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
                        })
                        ->leftJoin('depart', function ($query) use ($propertyidenv) {
                            $query->on('stock.restcode', '=', 'depart.dcode')
                                ->where('depart.propertyid', $propertyidenv);
                        })
                        ->where('stock.vdate', $envgeneral->ncur)
                        ->where('stock.propertyid', $propertyidenv)
                        ->where('stock.delflag', '<>', 'Y')
                        ->whereRaw("stock.vtype = CONCAT('B', COALESCE(depart.short_name, ''))")
                        ->whereIn('depart.rest_type', ['Outlet', 'Room Service'])
                        ->groupBy('stock.restcode', 'stock.vdate', 'itemcatmast.RevCode', 'itemcatmast.AcCode')
                        ->get();

                    // echo '<pre>';
                    // print_r($ipospost);
                    // echo '</pre>';
                    // exit;

                    if ($ipospost->isNotEmpty()) {
                        foreach ($ipospost as $row) {
                            $vnos = explode(',', $row->vno_group);
                            $billNoRange = DateHelper::generateBillNoRange($vnos);

                            $comment = $row->DShortName . ' Bill No: ' . $billNoRange;
                            $vtypeipos = 'IPOS';

                            $chkvpf = VoucherPrefix::where('propertyid', $propertyidenv)
                                ->where('v_type', $vtypeipos)
                                ->whereDate('date_from', '<=', $envgeneral->ncur)
                                ->whereDate('date_to', '>=', $envgeneral->ncur)
                                ->first();

                            $start_srl_no = $chkvpf->start_srl_no + 1;
                            $vprefix = $chkvpf->prefix;

                            VoucherPrefix::where('propertyid', $propertyidenv)
                                ->where('v_type', $vtypeipos)
                                ->where('prefix', $vprefix)
                                ->increment('start_srl_no');

                            $docid = $propertyidenv . $vtypeipos . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;

                            $iposin = [
                                'propertyid' => $propertyidenv,
                                'docid' => $docid,
                                'vno' => $start_srl_no,
                                'vdate' => $envgeneral->ncur,
                                'sno' => '1',
                                'sno1' => '1',
                                'vtype' => $vtypeipos,
                                'vtime' => date('H:i:s'),
                                'vprefix' => $vprefix,
                                'comments' => $comment,
                                'paycode' => $row->RevCode,
                                'amtcr' => '0.00',
                                'amtdr' => $row->ItemAmt,
                                'restcode' => $row->restcode,
                                'created_at' => $this->currenttime,
                                'u_name' => $userdt->name,
                                'u_ae' => 'a',
                            ];
                            Paycharge::insert($iposin);
                        }
                    }

                    // exit;

                    $tablename = 'paycharge';
                    $ncurdate = $envgeneral->ncur;
                    $envirofom = EnviroFom::where('propertyid', $propertyidenv)->first();

                    $chkvpf = VoucherPrefix::where('propertyid', $propertyidenv)
                        ->whereDate('date_from', '<=', $envgeneral->ncur)
                        ->whereDate('date_to', '>=', $envgeneral->ncur)
                        ->first();

                    $start_srl_no = $chkvpf->start_srl_no;
                    $vprefix = $chkvpf->prefix;

                    $nullroomocc = DB::table('roomocc')
                        ->where('propertyid', $propertyidenv)
                        ->whereNull('type')
                        ->pluck('docid');

                    $searchpay = DB::table('paycharge')
                        ->where('propertyid', $propertyidenv)
                        ->whereIn('folionodocid', $nullroomocc)
                        ->whereNot('billno', '0')
                        ->whereNull('settledate')
                        ->groupBy('folionodocid')
                        ->get(['roomno']);

                    // if ($searchpay->isNotEmpty()) {
                    //     $totalroom = $searchpay->pluck('roomno')->implode(', ');
                    //     return back()->with('error', 'There are some unsettled guest bill, First Settle them Rooms: ' . $totalroom);

                    // }

                    if ($envirofom->plancalc == 'Y') {
                        $vtype = 'REV';
                        $results = PlanDetail::select(
                            'plandetails.*',
                            'roomocc.name',
                            'roomocc.roomtype',
                            'roomocc.roomcat',
                            'guestfolio.company as Comp_Code',
                            'guestfolio.guestprof',
                            'guestfolio.travelagent',
                            'revmast.name as chargename',
                            'revmast.pay_type'
                        )->leftJoin('paycharge', function ($join) use ($ncurdate, $vtype) {
                            $join->on('paycharge.plancode', '=', 'plandetails.pcode')
                                ->on('paycharge.paycode', '=', 'plandetails.rev_code')
                                ->on('paycharge.folionodocid', '=', 'plandetails.docid')
                                ->on('paycharge.sno1', '=', 'plandetails.sno1')
                                ->where('paycharge.vdate', '=', $ncurdate)
                                ->where('paycharge.vtype', '=', $vtype);
                        })
                            ->leftJoin('roomocc', function ($join) {
                                $join->on('roomocc.docid', '=', 'plandetails.docid')
                                    ->on('roomocc.sno1', '=', 'plandetails.sno1');
                            })
                            ->leftJoin('guestfolio', function ($join) {
                                $join->on('roomocc.docid', '=', 'guestfolio.docid')
                                    ->on('roomocc.sno1', '=', 'guestfolio.sno1');
                            })
                            ->leftJoin('revmast', function ($join) use ($propertyidenv) {
                                $join->on('revmast.rev_code', '=', 'plandetails.rev_code')
                                    ->where('revmast.propertyid', $propertyidenv);
                            })->whereNull('paycharge.plancode')
                            ->where('plandetails.propertyid', $propertyidenv)
                            ->where('roomocc.chkindate', '<=', $ncurdate)
                            ->whereNull('roomocc.type')
                            ->where('roomocc.propertyid', $propertyidenv)
                            ->get();

                        foreach ($results as $result) {
                            $planchargeamount = $result->amount;
                            if ($planchargeamount != 0) {
                                $checktaxstru = TaxStructure::where('propertyid', $propertyidenv)
                                    ->where('str_code', $result->taxstru)
                                    ->get();
                                $getdocroomoc = RoomOcc::where('propertyid', $propertyidenv)->where('docid', $result->docid)->where('leaderyn', 'Y')->first();
                                if ($getdocroomoc) {
                                    $msno1 = $getdocroomoc->sno1;
                                } else {
                                    $msno1 = 0;
                                }

                                $chkvpf = VoucherPrefix::where('propertyid', $propertyidenv)
                                    ->where('v_type', $vtype)
                                    ->whereDate('date_from', '<=', $envgeneral->ncur)
                                    ->whereDate('date_to', '>=', $envgeneral->ncur)
                                    ->first();

                                $start_srl_no = $chkvpf->start_srl_no + 1;
                                $vprefix = $chkvpf->prefix;

                                VoucherPrefix::where('propertyid', $propertyidenv)
                                    ->where('v_type', $vtype)
                                    ->where('prefix', $vprefix)
                                    ->increment('start_srl_no');
                                $docid = $propertyidenv . $vtype . ' ‎ ‎' . $vprefix . ' ‎ ‎ ‎ ' . $start_srl_no;
                                $chargeamt = $result->amount;
                                $insertdefaultdata = [
                                    'propertyid' => $propertyidenv,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $result->rev_code,
                                    'paytype' => $result->pay_type,
                                    'comments' => $result->chargename . ' For Room No. :' . $result->roomno,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travelagent,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $result->amount,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->foliono,
                                    'restcode' => 'FOM' . $propertyidenv,
                                    'billamount' => $result->netplanamt,
                                    'taxper' => 0,
                                    'onamt' => $result->netplanamt,
                                    'folionodocid' => $result->docid,
                                    'plancode' => $result->pcode,
                                    'fixedchargecode' => $result->rev_code,
                                    'plancharge' => $result->netplanamt,
                                    'taxstru' => $result->taxstru,
                                    'taxcondamt' => 0,
                                    'created_at' => $this->currenttime,
                                    'u_name' => $userdt->name,
                                    'u_ae' => 'a',
                                ];

                                Paycharge::insert($insertdefaultdata);

                                foreach ($checktaxstru as $taxstru) {
                                    $rates = $taxstru->rate;
                                    $lowerlimit = $taxstru->limits;
                                    $upperlimit = $taxstru->limit1;
                                    $comp_operator = $taxstru->comp_operator;

                                    if ($comp_operator == 'Between') {
                                        if ($planchargeamount >= $lowerlimit && $planchargeamount <= $upperlimit) {
                                            $taxamt = $planchargeamount * $rates / 100;

                                            $taxname = DB::table('revmast')
                                                ->where('propertyid', $propertyidenv)
                                                ->where('rev_code', $taxstru->tax_code)
                                                ->value('name');

                                            $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                            $insertdata = [
                                                'propertyid' => $propertyidenv,
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
                                                'travel_agent' => $result->travelagent,
                                                'roomno' => $result->roomno,
                                                'amtdr' => $taxamt,
                                                'roomtype' => $result->roomtype,
                                                'roomcat' => $result->roomcat,
                                                'foliono' => $result->foliono,
                                                'restcode' => 'FOM' . $propertyidenv,
                                                'billamount' => $planchargeamount,
                                                'taxper' => $rates,
                                                'taxstru' => $result->taxstru,
                                                'onamt' => $planchargeamount,
                                                'folionodocid' => $result->docid,
                                                'plancode' => $result->pcode,
                                                'fixedchargecode' => $result->rev_code,
                                                'plancharge' => $result->netplanamt,
                                                'taxcondamt' => $planchargeamount,
                                                'created_at' => $this->currenttime,
                                                'u_name' => $userdt->name,
                                                'u_ae' => 'a',
                                            ];

                                            DB::table($tablename)->insert($insertdata);
                                        }
                                    } else {
                                        if ($comp_operator == '<=') {
                                            if ($planchargeamount >= $lowerlimit) {
                                                $taxamt = $planchargeamount * $rates / 100;

                                                $taxname = DB::table('revmast')
                                                    ->where('propertyid', $propertyidenv)
                                                    ->where('rev_code', $taxstru->tax_code)
                                                    ->value('name');

                                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                                $insertdata = [
                                                    'propertyid' => $propertyidenv,
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
                                                    'travel_agent' => $result->travelagent,
                                                    'roomno' => $result->roomno,
                                                    'amtdr' => $taxamt,
                                                    'roomtype' => $result->roomtype,
                                                    'roomcat' => $result->roomcat,
                                                    'foliono' => $result->foliono,
                                                    'restcode' => 'FOM' . $propertyidenv,
                                                    'billamount' => $planchargeamount,
                                                    'taxper' => $rates,
                                                    'taxstru' => $result->taxstru,
                                                    'onamt' => $planchargeamount,
                                                    'folionodocid' => $result->docid,
                                                    'plancode' => $result->pcode,
                                                    'fixedchargecode' => $result->rev_code,
                                                    'plancharge' => $result->netplanamt,
                                                    'taxcondamt' => $planchargeamount,
                                                    'created_at' => $this->currenttime,
                                                    'u_name' => $userdt->name,
                                                    'u_ae' => 'a',
                                                ];

                                                DB::table($tablename)->insert($insertdata);
                                            }
                                        } elseif ($comp_operator == '>=') {
                                            if ($planchargeamount <= $lowerlimit) {
                                                $taxamt = $planchargeamount * $rates / 100;

                                                $taxname = DB::table('revmast')
                                                    ->where('propertyid', $propertyidenv)
                                                    ->where('rev_code', $taxstru->tax_code)
                                                    ->value('name');

                                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                                $insertdata = [
                                                    'propertyid' => $propertyidenv,
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
                                                    'travel_agent' => $result->travelagent,
                                                    'roomno' => $result->roomno,
                                                    'amtdr' => $taxamt,
                                                    'roomtype' => $result->roomtype,
                                                    'roomcat' => $result->roomcat,
                                                    'foliono' => $result->foliono,
                                                    'restcode' => 'FOM' . $propertyidenv,
                                                    'billamount' => $planchargeamount,
                                                    'taxper' => $rates,
                                                    'taxstru' => $result->taxstru,
                                                    'onamt' => $planchargeamount,
                                                    'folionodocid' => $result->docid,
                                                    'plancode' => $result->pcode,
                                                    'fixedchargecode' => $result->rev_code,
                                                    'plancharge' => $result->netplanamt,
                                                    'taxcondamt' => $planchargeamount,
                                                    'created_at' => $this->currenttime,
                                                    'u_name' => $userdt->name,
                                                    'u_ae' => 'a',
                                                ];

                                                DB::table($tablename)->insert($insertdata);
                                            }
                                        } elseif ($comp_operator == '=') {
                                            if ($planchargeamount == $lowerlimit) {
                                                $taxamt = $planchargeamount * $rates / 100;

                                                $taxname = DB::table('revmast')
                                                    ->where('propertyid', $propertyidenv)
                                                    ->where('rev_code', $taxstru->tax_code)
                                                    ->value('name');

                                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                                $insertdata = [
                                                    'propertyid' => $propertyidenv,
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
                                                    'travel_agent' => $result->travelagent,
                                                    'roomno' => $result->roomno,
                                                    'amtdr' => $taxamt,
                                                    'roomtype' => $result->roomtype,
                                                    'roomcat' => $result->roomcat,
                                                    'foliono' => $result->foliono,
                                                    'restcode' => 'FOM' . $propertyidenv,
                                                    'billamount' => $planchargeamount,
                                                    'taxper' => $rates,
                                                    'taxstru' => $result->taxstru,
                                                    'onamt' => $planchargeamount,
                                                    'folionodocid' => $result->docid,
                                                    'plancode' => $result->pcode,
                                                    'fixedchargecode' => $result->rev_code,
                                                    'plancharge' => $result->netplanamt,
                                                    'taxcondamt' => $planchargeamount,
                                                    'created_at' => $this->currenttime,
                                                    'u_name' => $userdt->name,
                                                    'u_ae' => 'a',
                                                ];

                                                DB::table($tablename)->insert($insertdata);
                                            }
                                        } elseif ($comp_operator == '>') {
                                            if ($planchargeamount > $lowerlimit) {
                                                $taxamt = $planchargeamount * $rates / 100;

                                                $taxname = DB::table('revmast')
                                                    ->where('propertyid', $propertyidenv)
                                                    ->where('rev_code', $taxstru->tax_code)
                                                    ->value('name');

                                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                                $insertdata = [
                                                    'propertyid' => $propertyidenv,
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
                                                    'travel_agent' => $result->travelagent,
                                                    'roomno' => $result->roomno,
                                                    'amtdr' => $taxamt,
                                                    'roomtype' => $result->roomtype,
                                                    'roomcat' => $result->roomcat,
                                                    'foliono' => $result->foliono,
                                                    'restcode' => 'FOM' . $propertyidenv,
                                                    'billamount' => $planchargeamount,
                                                    'taxper' => $rates,
                                                    'taxstru' => $result->taxstru,
                                                    'onamt' => $planchargeamount,
                                                    'folionodocid' => $result->docid,
                                                    'plancode' => $result->pcode,
                                                    'fixedchargecode' => $result->rev_code,
                                                    'plancharge' => $result->netplanamt,
                                                    'taxcondamt' => $planchargeamount,
                                                    'created_at' => $this->currenttime,
                                                    'u_name' => $userdt->name,
                                                    'u_ae' => 'a',
                                                ];

                                                DB::table($tablename)->insert($insertdata);
                                            }
                                        } elseif ($comp_operator == '<') {
                                            if ($planchargeamount < $lowerlimit) {
                                                $taxamt = $planchargeamount * $rates / 100;

                                                $taxname = DB::table('revmast')
                                                    ->where('propertyid', $propertyidenv)
                                                    ->where('rev_code', $taxstru->tax_code)
                                                    ->value('name');

                                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                                $insertdata = [
                                                    'propertyid' => $propertyidenv,
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
                                                    'travel_agent' => $result->travelagent,
                                                    'roomno' => $result->roomno,
                                                    'amtdr' => $taxamt,
                                                    'roomtype' => $result->roomtype,
                                                    'roomcat' => $result->roomcat,
                                                    'foliono' => $result->foliono,
                                                    'restcode' => 'FOM' . $propertyidenv,
                                                    'billamount' => $planchargeamount,
                                                    'taxper' => $rates,
                                                    'taxstru' => $result->taxstru,
                                                    'onamt' => $planchargeamount,
                                                    'folionodocid' => $result->docid,
                                                    'plancode' => $result->pcode,
                                                    'fixedchargecode' => $result->rev_code,
                                                    'plancharge' => $result->netplanamt,
                                                    'taxcondamt' => $planchargeamount,
                                                    'created_at' => $this->currenttime,
                                                    'u_name' => $userdt->name,
                                                    'u_ae' => 'a',
                                                ];

                                                DB::table($tablename)->insert($insertdata);
                                            }
                                        } else {
                                            $taxamt = $planchargeamount * $rates / 100;

                                            $taxname = DB::table('revmast')
                                                ->where('propertyid', $propertyidenv)
                                                ->where('rev_code', $taxstru->tax_code)
                                                ->value('name');

                                            $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                            $insertdata = [
                                                'propertyid' => $propertyidenv,
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
                                                'travel_agent' => $result->travelagent,
                                                'roomno' => $result->roomno,
                                                'amtdr' => $taxamt,
                                                'roomtype' => $result->roomtype,
                                                'roomcat' => $result->roomcat,
                                                'foliono' => $result->foliono,
                                                'restcode' => 'FOM' . $propertyidenv,
                                                'billamount' => $planchargeamount,
                                                'taxper' => $rates,
                                                'taxstru' => $result->taxstru,
                                                'onamt' => $planchargeamount,
                                                'folionodocid' => $result->docid,
                                                'plancode' => $result->pcode,
                                                'fixedchargecode' => $result->rev_code,
                                                'plancharge' => $result->netplanamt,
                                                'taxcondamt' => $planchargeamount,
                                                'created_at' => $this->currenttime,
                                                'u_name' => $userdt->name,
                                                'u_ae' => 'a',
                                            ];

                                            DB::table($tablename)->insert($insertdata);
                                        }
                                    }
                                }
                            }
                        }
                    }

                    // exit;

                    $results = DB::table('roomocc')
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
                        ->leftJoin('room_cat', function ($join) use ($propertyidenv) {
                            $join->on('roomocc.roomcat', '=', 'room_cat.cat_code')
                                ->where('room_cat.propertyid', $propertyidenv);
                        })->leftJoin('revmast', function ($join) use ($propertyidenv) {
                            $join->on('room_cat.rev_code', '=', 'revmast.rev_code')
                                ->where('revmast.propertyid', $propertyidenv);
                        })->leftJoin('guestfolio', function ($join) {
                            $join->on('roomocc.docid', '=', 'guestfolio.docid')
                                ->on('roomocc.sno1', '=', 'guestfolio.sno1');
                        })
                        ->whereNull('roomocc.chkoutdate')
                        ->where('roomocc.chkindate', '<=', $ncurdate)
                        // ->where('roomocc.userchkoutdate', '>', $ncurdate)
                        ->whereNull('roomocc.type')
                        ->where('roomocc.propertyid', $propertyidenv)
                        ->whereNotIn('roomocc.docid', function ($query) use ($ncurdate) {
                            $query->select(DB::raw('DISTINCT folionodocid'))
                                ->from('paycharge')
                                ->where('vdate', $ncurdate)
                                ->whereColumn('paycharge.sno1', 'roomocc.sno1')
                                ->where('vtype', 'RC');
                        })
                        ->get();

                    $paycode = DB::table('revmast')->where('propertyid', $propertyidenv)->where('name', 'ROOM CHARGE')->value('rev_code');

                    foreach ($results as $result) {

                        $getdocroomoc = RoomOcc::where('propertyid', $propertyidenv)->where('docid', $result->docid)->where('leaderyn', 'Y')->first();

                        if ($getdocroomoc) {
                            $msno1 = $getdocroomoc->sno1;
                        } else {
                            $msno1 = 0;
                        }
                        $vtype = 'RC';
                        $chkvpf = VoucherPrefix::where('propertyid', $propertyidenv)
                            ->where('v_type', $vtype)
                            ->whereDate('date_from', '<=', $envgeneral->ncur)
                            ->whereDate('date_to', '>=', $envgeneral->ncur)
                            ->first();

                        $start_srl_no = $chkvpf->start_srl_no + 1;
                        $vprefix = $chkvpf->prefix;

                        $docid = $propertyidenv . 'RC' . ' ‎ ‎' . $vprefix . ' ‎ ‎ ‎ ' . $start_srl_no;
                        $roombookamt = $result->roomrate;
                        if ($roombookamt != 0) {

                            $checktaxstru = DB::table('taxstru')
                                ->where('propertyid', $propertyidenv)
                                ->where('str_code', $result->TaxStru)
                                ->get();

                            $comment1 = 'ROOM CHARGE, ROOM No: ' . $result->roomno;
                            $insertdefaultdata = [
                                'propertyid' => $propertyidenv,
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
                                'amtdr' => $result->roomrate,
                                'roomtype' => $result->roomtype,
                                'roomcat' => $result->roomcat,
                                'foliono' => $result->folioNo,
                                'restcode' => 'FOM' . $propertyidenv,
                                'billamount' => $result->roomrate,
                                'taxper' => 0,
                                'onamt' => $result->roomrate,
                                'folionodocid' => $result->docid,
                                'taxcondamt' => 0,
                                'created_at' => $this->currenttime,
                                'u_name' => $userdt->name,
                                'u_ae' => 'a',
                            ];

                            DB::table($tablename)->insert($insertdefaultdata);

                            foreach ($checktaxstru as $taxstru) {
                                $rates = $taxstru->rate;
                                $lowerlimit = $taxstru->limits;
                                $upperlimit = $taxstru->limit1;
                                $comp_operator = $taxstru->comp_operator;

                                if ($comp_operator == 'Between') {
                                    if ($roombookamt >= $lowerlimit && $roombookamt <= $upperlimit) {
                                        $taxamt = $roombookamt * $rates / 100;

                                        $taxname = DB::table('revmast')
                                            ->where('propertyid', $propertyidenv)
                                            ->where('rev_code', $taxstru->tax_code)
                                            ->value('name');

                                        $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                        $insertdata = [
                                            'propertyid' => $propertyidenv,
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
                                            'restcode' => 'FOM' . $propertyidenv,
                                            'billamount' => $roombookamt,
                                            'taxper' => $rates,
                                            'taxstru' => $result->TaxStru,
                                            'onamt' => $roombookamt,
                                            'folionodocid' => $result->docid,
                                            'taxcondamt' => $roombookamt,
                                            'created_at' => $this->currenttime,
                                            'u_name' => $userdt->name,
                                            'u_ae' => 'a',
                                        ];

                                        DB::table($tablename)->insert($insertdata);
                                    }
                                } else {
                                    if ($comp_operator == '<=') {
                                        if ($roombookamt >= $lowerlimit) {
                                            $taxamt = $roombookamt * $rates / 100;

                                            $taxname = DB::table('revmast')
                                                ->where('propertyid', $propertyidenv)
                                                ->where('rev_code', $taxstru->tax_code)
                                                ->value('name');

                                            $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                            $insertdata = [
                                                'propertyid' => $propertyidenv,
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
                                                'restcode' => 'FOM' . $propertyidenv,
                                                'billamount' => $roombookamt,
                                                'taxper' => $rates,
                                                'taxstru' => $result->TaxStru,
                                                'onamt' => $roombookamt,
                                                'folionodocid' => $result->docid,
                                                'taxcondamt' => $roombookamt,
                                                'created_at' => $this->currenttime,
                                                'u_name' => $userdt->name,
                                                'u_ae' => 'a',
                                            ];

                                            DB::table($tablename)->insert($insertdata);
                                        }
                                    } elseif ($comp_operator == '>=') {
                                        if ($roombookamt <= $lowerlimit) {
                                            $taxamt = $roombookamt * $rates / 100;

                                            $taxname = DB::table('revmast')
                                                ->where('propertyid', $propertyidenv)
                                                ->where('rev_code', $taxstru->tax_code)
                                                ->value('name');

                                            $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                            $insertdata = [
                                                'propertyid' => $propertyidenv,
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
                                                'restcode' => 'FOM' . $propertyidenv,
                                                'billamount' => $roombookamt,
                                                'taxper' => $rates,
                                                'taxstru' => $result->TaxStru,
                                                'onamt' => $roombookamt,
                                                'folionodocid' => $result->docid,
                                                'taxcondamt' => $roombookamt,
                                                'created_at' => $this->currenttime,
                                                'u_name' => $userdt->name,
                                                'u_ae' => 'a',
                                            ];

                                            DB::table($tablename)->insert($insertdata);
                                        }
                                    } elseif ($comp_operator == '=') {
                                        if ($roombookamt == $lowerlimit) {
                                            $taxamt = $roombookamt * $rates / 100;

                                            $taxname = DB::table('revmast')
                                                ->where('propertyid', $propertyidenv)
                                                ->where('rev_code', $taxstru->tax_code)
                                                ->value('name');

                                            $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                            $insertdata = [
                                                'propertyid' => $propertyidenv,
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
                                                'restcode' => 'FOM' . $propertyidenv,
                                                'billamount' => $roombookamt,
                                                'taxper' => $rates,
                                                'taxstru' => $result->TaxStru,
                                                'onamt' => $roombookamt,
                                                'folionodocid' => $result->docid,
                                                'taxcondamt' => $roombookamt,
                                                'created_at' => $this->currenttime,
                                                'u_name' => $userdt->name,
                                                'u_ae' => 'a',
                                            ];

                                            DB::table($tablename)->insert($insertdata);
                                        }
                                    } elseif ($comp_operator == '>') {
                                        if ($roombookamt > $lowerlimit) {
                                            $taxamt = $roombookamt * $rates / 100;

                                            $taxname = DB::table('revmast')
                                                ->where('propertyid', $propertyidenv)
                                                ->where('rev_code', $taxstru->tax_code)
                                                ->value('name');

                                            $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                            $insertdata = [
                                                'propertyid' => $propertyidenv,
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
                                                'restcode' => 'FOM' . $propertyidenv,
                                                'billamount' => $roombookamt,
                                                'taxper' => $rates,
                                                'taxstru' => $result->TaxStru,
                                                'onamt' => $roombookamt,
                                                'folionodocid' => $result->docid,
                                                'taxcondamt' => $roombookamt,
                                                'created_at' => $this->currenttime,
                                                'u_name' => $userdt->name,
                                                'u_ae' => 'a',
                                            ];

                                            DB::table($tablename)->insert($insertdata);
                                        }
                                    } elseif ($comp_operator == '<') {
                                        if ($roombookamt < $lowerlimit) {
                                            $taxamt = $roombookamt * $rates / 100;

                                            $taxname = DB::table('revmast')
                                                ->where('propertyid', $propertyidenv)
                                                ->where('rev_code', $taxstru->tax_code)
                                                ->value('name');

                                            $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                            $insertdata = [
                                                'propertyid' => $propertyidenv,
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
                                                'restcode' => 'FOM' . $propertyidenv,
                                                'billamount' => $roombookamt,
                                                'taxper' => $rates,
                                                'taxstru' => $result->TaxStru,
                                                'onamt' => $roombookamt,
                                                'folionodocid' => $result->docid,
                                                'taxcondamt' => $roombookamt,
                                                'created_at' => $this->currenttime,
                                                'u_name' => $userdt->name,
                                                'u_ae' => 'a',
                                            ];

                                            DB::table($tablename)->insert($insertdata);
                                        }
                                    }
                                }
                            }
                        }
                        VoucherPrefix::where('propertyid', $propertyidenv)
                            ->where('v_type', $vtype)
                            ->where('prefix', $vprefix)
                            ->increment('start_srl_no');
                    }

                    $logMessage = "Auto Charge Posted for property: $propertyidenv, date: $ncurdate";
                    logData('Auto Charge Post', $logMessage, $propertyidenv, $userdt->name);

                    $currentncur = $envgeneral->ncur;
                    $newncur = Carbon::parse($currentncur)->addDay();

                    EnviroGeneral::where('propertyid', $propertyidenv)->update([
                        'ncur' => $newncur,
                        'updated_at' => now()
                    ]);
                }

                DB::commit();
            } catch (Exception $e) {
                DB::rollBack();
                $error = 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine();
                if ($currentncur) {
                    $error .= ' fordate error ' . $currentncur;
                }
                logData('Auto Charge Post Error', $error, $propertyidenv ?? $property->propertyid, 'system');
                continue;
            }
        }

        $message = "Room Charge Posted Successfully!";
        return response($message, 200);
    }
}
