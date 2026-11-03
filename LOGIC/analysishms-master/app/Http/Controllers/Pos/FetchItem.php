<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Helpers\ResHelper;
use App\Helpers\UpdateRepeat;
use App\Helpers\WhatsappSend;
use App\Models\ACGroup;
use App\Models\Bookings;
use App\Services\RoomInclusivePosting;
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
use App\Models\RoomInclusiveLog;
use App\Models\Sundrytype;
use App\Services\AccountPosting;
use Illuminate\Support\Facades\Log;

use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;

class FetchItem extends Controller
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

    public function fetchitemroomchange(Request $request)
    {

        $roomno = $request->input('roomno');
        $dcode = $request->input('dcode');
        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();
        if (strtolower($departdata->nature) == 'outlet' && $departdata->kot_yn == 'N') {
            $items = '';
            $waitername = '';
            $amount = '';
        } else {

            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')
                ->toArray();

            $restcodesmerged = array_merge([$departdata->dcode], $associatedrestcode);

            $items = DB::table('kot')
                ->select(
                    'itemmast.Name',
                    'itemmast.RateEdit',
                    'itemmast.DiscApp',
                    'itemmast.RateIncTax',
                    'itemmast.SChrgApp',
                    'kot.description',
                    'kot.qty',
                    'kot.amount',
                    'kot.rate',
                    'kot.voidyn',
                    'kot.item',
                    'kot.vno',
                    'kot.vdate',
                    'kot.sno',
                    'kot.roomno',
                    'kot.waiter',
                    'kot.remarks',
                    'kot.pax',
                    'kot.docid',
                    'kot.vtype',
                    'kot.nctype',
                    'kot.restcode',
                    'kot.mergedwith',
                    'itemgrp.name as groupname',
                    'itemgrp.code as groupcode',
                    DB::raw('COALESCE(taxstru.tax_code, \'\') AS tax_code'),
                    DB::raw('COALESCE(taxstru.tax_name, \'\') AS tax_name'),
                    DB::raw('COALESCE(taxstru.tax_rate, 0) AS tax_rate'),
                    'itemcatmast.TaxStru',
                    DB::raw('SUM(COALESCE(taxstru.tax_rate, 0)) AS taxrate_sum'),
                    DB::raw("CASE WHEN itemmast.RateIncTax = 'Y' THEN kot.rate * (COALESCE(taxstru.tax_rate, 0) / 100) 
              ELSE 0.00 END AS taxamt,
              CASE WHEN itemmast.RateIncTax = 'Y' THEN kot.rate *100/ (100+(COALESCE(taxstru.tax_rate, 0))) 
              ELSE 0.00 END AS taxedrate,
              CASE WHEN itemmast.RateIncTax = 'Y' THEN kot.rate *100/ (100+(COALESCE(taxstru.tax_rate, 0)))  * kot.qty
              ELSE 0.00 END AS fixamount")
                )
                ->leftJoin('itemmast', function ($join) {
                    $join->on('kot.item', '=', 'itemmast.Code')
                        ->on('kot.restcode', '=', 'itemmast.RestCode');
                })
                ->leftJoin('itemcatmast', function ($join) {
                    $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                        ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
                })
                ->leftJoin(DB::raw('(SELECT str_code, GROUP_CONCAT(name) AS tax_name, GROUP_CONCAT(tax_code) AS tax_code, SUM(rate) AS tax_rate FROM taxstru GROUP BY str_code) AS taxstru'), function ($join) {
                    $join->on('taxstru.str_code', '=', 'itemcatmast.TaxStru');
                })
                ->leftJoin('itemgrp',  function ($join) {
                    $join->on('itemgrp.property_id', '=', 'itemmast.Property_ID')
                        ->on('itemgrp.restcode', '=', 'itemmast.RestCode')
                        ->on('itemgrp.Code', '=', 'itemmast.ItemGroup');
                })
                ->where('kot.propertyid', $this->propertyid)
                ->where('kot.roomno', $roomno)
                ->whereIn('kot.restcode', $restcodesmerged)
                ->where('kot.pending', 'Y')
                ->where('kot.voidyn', 'N')
                ->where('kot.nckot', 'N')
                ->where('kot.contradocid', '')
                ->groupBy('kot.id')
                ->orderBy('kot.vno', 'ASC')
                ->get();

            $outlet1 = null;
            $outlet2 = null;
            $sale2 = null;

            $restcodes = $items->pluck('restcode')->unique()->values();
            $mergedcodes = $items->pluck('mergedwith')->filter()->unique()->values();
            $mergedDocids = [];

            if ($mergedcodes->isNotEmpty()) {
                foreach ($mergedcodes as $mergedcode) {
                    $mergedDocids = array_merge($mergedDocids, array_map('trim', explode(',', $mergedcode)));
                }
            }

            if ($restcodes->count() > 0) {
                $dcodeIndex = $restcodes->search($dcode);

                if ($dcodeIndex !== false) {
                    $outlet1 = $dcode;
                    foreach ($restcodes as $idx => $code) {
                        if ($idx !== $dcodeIndex) {
                            $outlet2 = $code;
                            break;
                        }
                    }
                } else {
                    $outlet1 = $restcodes[0];
                    if ($restcodes->count() > 1) {
                        $outlet2 = $restcodes[1];
                    }
                }
            }

            if ($outlet2 && !empty($mergedDocids) && isset($mergedDocids[1])) {
                $sale2 = Sale1::where('propertyid', $this->propertyid)
                    ->where('docid', $mergedDocids[1])
                    ->first();
            }

            $amount = 0;
            foreach ($items as $item) {
                $amount += $item->amount;
            }
            if (count($items) > 0) {
                $waitername = DB::table('server_mast')->where('propertyid', $this->propertyid)->where('scode', $items[0]->waiter)->value('name');
            }
        }

        $sundrytype = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $dcode)->orderBy('sno', 'ASC')->get();
        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('roomno', $roomno)->first();

        $data = [
            'items' => $items,
            'sundrytype' => $sundrytype,
            'amount' => $amount,
            'sale1' => $sale1,
            'sale2' => $sale2,
            'waitername' => $waitername ?? '',
            'outlet1code' => $outlet1,
            'outlet2code' => $outlet2,
        ];

        return json_encode($data);
    }
}
