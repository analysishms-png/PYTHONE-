<?php

use App\Helpers\DateHelper;
use App\Models\ACGroup;
use App\Models\BookingSource;
use App\Models\BuildingMaster;
use App\Models\ChannelEnviro;
use App\Models\Cities;
use App\Models\Companyreg;
use App\Models\Countries;
use App\Models\Depart;
use App\Models\EInvoiceBill;
use App\Models\Employee;
use App\Models\EnviroBanquet;
use App\Models\EnviroEinvoice;
use App\Models\EnviroFinance;
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroInventory;
use App\Models\EnviroPayroll;
use App\Models\EnviroPos;
use App\Models\EnviroWhatsapp;
use App\Models\FomBillDetail;
use App\Models\FunctionType;
use App\Models\GuestProf;
use App\Models\HallBook;
use App\Models\HallSale1;
use App\Models\MemberCategory;
use App\Models\MenuHelp;
use App\Models\PlanMast;
use App\Models\Revmast;
use App\Models\RoomCat;
use App\Models\RoomOcc;
use App\Models\Sale1;
use App\Models\Sale2;
use App\Models\ServerMast;
use App\Models\States;
use App\Models\Stock;
use App\Models\SubGroup;
use App\Models\Suntran;
use App\Models\User;
use App\Models\VenueMast;
use App\Models\VenueOcc;
use App\Models\VoucherPrefix;
use App\Models\VoucherType;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

function allcompanies()
{
    return Companyreg::groupBy('propertyid')->latest()->get();
}

function percompdata()
{
    $propertyid = request()->segment(2);
    return Companyreg::where('propertyid', $propertyid)->first();
}

function percomproomcategory()
{
    $propertyid = request()->segment(2);

    $roomcat = RoomCat::where('propertyid', $propertyid)
        ->where('inclcount', 'Y')
        ->orderBy('name', 'ASC')
        ->get();

    return $roomcat;
}

if (!function_exists('companydata')) {
    function companydata()
    {
        return Companyreg::select('company.*')
            ->where('propertyid', Auth::user()->propertyid)->first();
    }
}

function userdata()
{
    $data = User::select(
        'users.*',
        'userpermission.system_name',
        'userpermission.posrateedit',
        'userpermission.allowchkouttimechange',
        'userpermission.allowadvancechargeedit',
        'userpermission.deleteguestcharges',
        'userpermission.voucherverify',
        'userpermission.billcancel',
    )
        ->leftJoin('userpermission', function ($join) {
            $join->on('userpermission.username', '=', 'users.u_name')
                ->where('userpermission.propertyid', '=', Auth::user()->propertyid);
        })
        ->where('users.propertyid', Auth::user()->propertyid)
        ->where('users.u_name', Auth::user()->u_name)
        ->where('users.useroradmin', 'user')
        ->first();

    return $data;
}

function propertyexists($propertyid)
{
    $data = Companyreg::on('main')->where('propertyid', $propertyid)->first();

    return $data;
}

if (!function_exists('ncurdate')) {
    function ncurdate(?int $propertyId = null)
    {
        $user = Auth::user();

        $propertyId ??= $user?->propertyid;

        if (!$propertyId) {
            return null;
        }

        if ((int) $user?->role === 1 && (int) $propertyId === 10) {
            return null;
        }

        return EnviroGeneral::where('propertyid', $propertyId)->value('ncur');
    }
}

if (!function_exists('propertyid')) {
    function propertyid()
    {
        return Auth::user()->propertyid;
    }
}

if (!function_exists('revokefunction')) {
    function revokeopen($code)
    {
        return MenuHelp::where([
            ['propertyid', '=', Auth::user()->propertyid],
            ['username', '=', Auth::user()->u_name],
            ['code', '=', $code]
        ])->first();
    }
}

if (!function_exists('getMonthYearCode')) {
    function getMonthYearCode($date)
    {
        $timestamp = strtotime($date);
        return date('mY', $timestamp);
    }
}

if (!function_exists('calculateTax')) {
    function calculateTax($amount, $taxPercent)
    {
        return ($amount * $taxPercent) / 100;
    }
}

if (!function_exists('getDayNameFromDate')) {
    function getDayNameFromDate($date)
    {
        if (!$date) return '';

        try {
            $dateObj = new DateTime($date);
            return $dateObj->format('l');
        } catch (Exception $e) {
            return '';
        }
    }
}

if (!function_exists('maxvno')) {
    function maxvno($vtype, $date = null)
    {
        $date = $date ?? ncurdate();
        $chkvpf = VoucherPrefix::where('propertyid', Auth::user()->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $date)
            ->whereDate('date_to', '>=', $date)
            ->first();

        $vno = $chkvpf->start_srl_no + 1;

        return $vno;
    }
}

if (!function_exists('allcities')) {
    function allcities()
    {
        $citydata = Cities::where('propertyid', Auth::user()->propertyid)->where('activeyn', '1')
            ->orderBy('cityname', 'ASC')->get();

        return $citydata;
    }
}

if (!function_exists('allstates')) {
    function allstates()
    {
        $citydata = States::where('propertyid', Auth::user()->propertyid)
            ->orderBy('name', 'ASC')->get();

        return $citydata;
    }
}

if (!function_exists('travelagents')) {
    function travelagents()
    {
        $travelagent = SubGroup::where('propertyid', Auth::user()->propertyid)
            ->whereIn('comp_type', ['Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();

        return $travelagent;
    }
}

if (!function_exists('functiontypes')) {
    function functiontypes()
    {
        $data = FunctionType::where('propertyid', Auth::user()->propertyid)
            ->orderBy('name', 'ASC')->get();

        return $data;
    }
}

if (!function_exists('companiessubgroup')) {
    function companiessubgroup()
    {
        $data = DB::table('subgroup')
            ->where('propertyid', Auth::user()->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();

        return $data;
    }
}

function checkfombillrec($docid, $sno1)
{
    $data = FomBillDetail::where('propertyid', Auth::user()->propertyid)
        ->where('folionodocid', $docid)
        ->where('sno1', $sno1)
        ->where('status', 'settle')
        ->first();

    return $data ? true : false;
}

if (!function_exists('subgroup')) {
    function subgroup($sub_code)
    {
        $data = SubGroup::select(
            'subgroup.*',
            'cities.cityname',
            'states.name as statename',
            'states.state_code'
        )
            ->leftJoin('cities', function ($join) {
                $join->on('cities.city_code', '=', 'subgroup.citycode')
                    ->where('cities.propertyid', Auth::user()->propertyid);
            })
            ->leftJoin('states', function ($join) {
                $join->on('states.state_code', '=', 'cities.state')
                    ->where('states.propertyid', Auth::user()->propertyid);
            })
            ->where('subgroup.propertyid', Auth::user()->propertyid)
            ->where('subgroup.sub_code', $sub_code)->first();

        return $data;
    }
}

if (!function_exists('venuemast')) {
    function venuemast()
    {
        $data = VenueMast::where('propertyid', Auth::user()->propertyid)->orderBy('name', 'ASC')->get();

        return $data;
    }
}

if (!function_exists('inventoryparameter')) {
    function inventoryparameter()
    {
        $data = EnviroInventory::where('propertyid', Auth::user()->propertyid)->first();

        return $data;
    }
}

if (!function_exists('banquetparameter')) {
    function banquetparameter()
    {
        $data = EnviroBanquet::where('propertyid', Auth::user()->propertyid)->first();

        return $data;
    }
}

function whatsappparameter()
{
    return app('tenant.whatsapp');
}

if (!function_exists('financeparameter')) {
    function financeparameter()
    {
        $data = EnviroFinance::where('propertyid', Auth::user()->propertyid)->first();

        if (is_null($data)) {
            $data = new EnviroFinance();
            $data->propertyid = Auth::user()->propertyid;
            $data->save();
        }
        return $data;
    }
}

function fomparameter()
{
    return app('tenant.fom');
}


function payrollparameter()
{
    $data = EnviroPayroll::where('propertyid', Auth::user()->propertyid)->first();

    return $data;
}

function invoiceparameter()
{
    $data = EnviroEinvoice::where('propertyid', Auth::user()->propertyid)->first();
    if (is_null($data)) {
        $data = new EnviroEinvoice();
        $data->propertyid = Auth::user()->propertyid;
        $data->save();
    }

    return $data;
}

function chkinvoicepost($docid)
{
    $data = EInvoiceBill::where('propertyid', Auth::user()->propertyid)
        ->where('docid', $docid)
        ->where('cancelled', 'N')
        ->first();

    if ($data) {
        return true;
    } else {
        return false;
    }
}

function chkinvoicepostdata($docid)
{
    $data = EInvoiceBill::where('propertyid', Auth::user()->propertyid)
        ->where('docid', $docid)
        ->where('cancelled', 'N')
        ->first();

    return $data;
}

function channelparameter(?int $propertyId = null)
{
    $propertyId ??= Auth::user()?->propertyid;

    if (!$propertyId) {
        return null;
    }

    return ChannelEnviro::where('propertyid', $propertyId)->first();
}

function posparameter()
{
    return app('tenant.pos');
}

function vourcherprefixall()
{
    $data = VoucherPrefix::where('propertyid', Auth::user()->propertyid)
        ->where('prefix', date('Y', strtotime(ncurdate())))
        ->get();

    return $data;
}

function vourchertypeall()
{
    $data = VoucherType::where('propertyid', Auth::user()->propertyid)
        ->orderBy('v_type', 'ASC')
        ->get();

    return $data;
}

if (!function_exists('isPlanRequired')) {
    function isPlanRequired($checkyn, $plancalc): bool
    {
        return $checkyn === 'Y' || $plancalc === 'Y';
    }
}

function checkisadmin($param)
{
    $company = CompanyReg::where('propertyid', Auth::user()->propertyid)->first();

    if (Auth::user()->u_name === $company->u_name) {
        return true;
    }

    return Auth::user()->{$param} === 'y';
}

function totaloccupiedroom()
{
    $roomocc = RoomOcc::where('propertyid', Auth::user()->propertyid)
        ->whereNull('type')
        ->get();

    return $roomocc;
}

if (!function_exists('hallbook')) {
    function hallbook()
    {
        $hallbook = HallBook::select(
            'cities.cityname',
            'hallbook.*',
            'venuemast.name as venuename',
            DB::raw("IFNULL(SUM(paychargeh.amtcr), 0) as advancesum")
        )
            ->leftJoin('paychargeh', 'paychargeh.contradocid', '=', 'hallbook.docid')
            ->leftJoin('cities', 'cities.city_code', '=', 'hallbook.city')
            ->leftJoin('venuemast', 'venuemast.code', '=', 'hallbook.func_name')
            ->where('hallbook.propertyid', Auth::user()->propertyid)
            ->groupBy('hallbook.docid')
            ->orderByDesc('hallbook.vno')
            ->get();


        return $hallbook;
    }
}

if (!function_exists('hallbookvenue')) {
    function hallbookvenue()
    {
        $hallbook = VenueOcc::select(
            'cities.cityname',
            'hallbook.*',
            'venuemast.name as venuename',
            'venueocc.*',
            DB::raw("IFNULL(SUM(paychargeh.amtcr) - SUM(paychargeh.amtdr), 0) as advancesum")
        )
            ->leftJoin('hallbook', 'hallbook.docid', '=', 'venueocc.fpdocid')
            ->leftJoin('paychargeh', function ($join) {
                $join->on('paychargeh.contradocid', '=', 'hallbook.docid')
                    ->whereIn('paychargeh.vtype', ['AD', 'AR'])
                    ->where('paychargeh.sno', '1');
            })
            ->leftJoin('cities', 'cities.city_code', '=', 'hallbook.city')
            ->leftJoin('venuemast', 'venuemast.code', '=', 'venueocc.venucode')
            ->where('hallbook.propertyid', Auth::user()->propertyid)
            ->groupBy('venueocc.fpdocid')
            ->groupBy('venueocc.sno')
            ->orderByDesc('hallbook.vno')
            ->get();


        return $hallbook;
    }
}

if (!function_exists('hallbookbill')) {
    function hallbookbill()
    {
        $hallbook = HallBook::select(
            'cities.cityname',
            'hallbook.*',
            'venuemast.name as venuename',
            DB::raw("IFNULL(SUM(paychargeh.amtcr), 0) as advancesum")
        )
            ->leftJoin('paychargeh', 'paychargeh.contradocid', '=', 'hallbook.docid')
            ->leftJoin('cities', 'cities.city_code', '=', 'hallbook.city')
            ->leftJoin('venuemast', 'venuemast.code', '=', 'hallbook.func_name')
            ->where('hallbook.propertyid', Auth::user()->propertyid)
            ->whereNotIn('hallbook.docid', function ($query) {
                $query->select('bookdocid')->from('hallsale1');
            })
            ->groupBy('hallbook.docid')
            ->orderByDesc('hallbook.vno')
            ->get();

        return $hallbook;
    }
}

if (!function_exists('hallbookbillest')) {
    function hallbookbillest()
    {
        $hallbook = HallBook::select(
            'cities.cityname',
            'hallbook.*',
            'venuemast.name as venuename',
            DB::raw("IFNULL(SUM(paychargeh.amtcr), 0) as advancesum")
        )
            ->leftJoin('paychargeh', 'paychargeh.contradocid', '=', 'hallbook.docid')
            ->leftJoin('cities', 'cities.city_code', '=', 'hallbook.city')
            ->leftJoin('venuemast', 'venuemast.code', '=', 'hallbook.func_name')
            ->where('hallbook.propertyid', Auth::user()->propertyid)
            ->whereNotIn('hallbook.docid', function ($query) {
                $query->select('bookdocid')->from('hallsale1est');
            })
            ->groupBy('hallbook.docid')
            ->orderByDesc('hallbook.vno')
            ->get();

        return $hallbook;
    }
}

if (!function_exists('subgroupall')) {
    function subgroupall($nature = null)
    {
        $data = DB::table('subgroup')
            ->where('propertyid', Auth::user()->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        if ($nature) {
            $data = $data->where('nature', $nature);
        }

        return $data;
    }
}

function departall()
{
    $data = Depart::where('propertyid', Auth::user()->propertyid)->orderBy('name', 'ASC')->get();

    return $data;
}

function employeereturn()
{
    $propertyid = Auth::user()->propertyid;

    $employees = Employee::select(
        'employee.code',
        'employee.name',
        'employee.otrate',
        'depart.name as department',
        'desig.name as designation'
    )
        ->leftJoin('depart', function ($join) {
            $join->on('depart.propertyid', '=', 'employee.propertyid')
                ->on('depart.dcode', '=', 'employee.department');
        })
        ->leftJoin('desig', function ($join) {
            $join->on('desig.propertyid', '=', 'employee.propertyid')
                ->on('desig.code', '=', 'employee.designation');
        })
        ->where('employee.propertyid', $propertyid)
        ->get();

    return $employees;
}



if (!function_exists('oldbanqutbillnos')) {
    function oldbanqutbillnos()
    {
        $data = HallSale1::where('propertyid', Auth::user()->propertyid)->orderByDesc('vno')->get();

        return $data;
    }
}


function companydata()
{
    return app('tenant.company');
}

if (!function_exists('bookedroomslist')) {
    function bookedroomslist()
    {
        $roomno = RoomOcc::leftJoin('paycharge', function ($join) {
            $join->on('paycharge.roomno', '=', 'roomocc.roomno')
                ->on('paycharge.propertyid', '=', 'roomocc.propertyid');
        })
            ->where('roomocc.propertyid', Auth::user()->propertyid)
            ->where(function ($query) {
                $query->where('paycharge.billno', 0)
                    ->orWhereNull('paycharge.billno');
            })
            ->whereNull('roomocc.type')
            ->groupBy('roomocc.roomno')
            ->orderBy('roomocc.roomno')
            ->select('roomocc.roomno')
            ->get();

        return $roomno;
    }
}


function normalizeMobile($number)
{
    $parts = preg_split('/[,\s]+/', $number);

    foreach ($parts as $part) {
        $clean = preg_replace('/\D/', '', $part);

        if (!$clean) continue;

        // remove country code or leading zero
        if (substr($clean, 0, 2) === '91' && strlen($clean) > 10) {
            $clean = substr($clean, 2);
        }

        if (substr($clean, 0, 1) === '0' && strlen($clean) > 10) {
            $clean = substr($clean, 1);
        }

        // if still >10, take last 10
        if (strlen($clean) > 10) {
            $clean = substr($clean, -10);
        }

        // validate Indian mobile
        if (preg_match('/^[6-9]\d{9}$/', $clean)) {
            return $clean;
        }
    }

    return null;
}

function limitText($text, $maxLength = 100)
{
    $text = trim($text);

    if (mb_strlen($text) > $maxLength) {
        $text = mb_substr($text, 0, $maxLength);
    }

    return $text;
}

// function getGstRate($taxCode, $amount)
// {
//     $propertyId = Auth::user()->propertyid;

//     $rows = DB::table('taxstru')
//         ->where('propertyid', $propertyId)
//         ->where('str_code', $taxCode)
//         ->orderBy('sno')
//         ->get();

//     $matchedSlab = null;

//     foreach ($rows as $row) {
//         $limit = (float)$row->limit1;

//         // Slab: amount <= limit (your "Between")
//         if ($row->comp_operator === 'Between' && $amount <= $limit) {
//             $matchedSlab = $limit;
//             break;
//         }

//         // Slab: amount >= limit (your "<=" but actually lower bound)
//         if ($row->comp_operator === '<=' && $amount >= $limit) {
//             $matchedSlab = $limit;
//             break;
//         }
//     }

//     if (is_null($matchedSlab)) {
//         return 0;
//     }

//     $cgst = DB::table('taxstru')
//         ->where('propertyid', $propertyId)
//         ->where('str_code', $taxCode)
//         ->where('limit1', $matchedSlab)
//         ->where('tax_code', 'LIKE', 'CGSS%')
//         ->value('rate') ?? 0;

//     $sgst = DB::table('taxstru')
//         ->where('propertyid', $propertyId)
//         ->where('str_code', $taxCode)
//         ->where('limit1', $matchedSlab)
//         ->where('tax_code', 'LIKE', 'SGSS%')
//         ->value('rate') ?? 0;

//     return (float)$cgst + (float)$sgst;
// }

function getGstRate($taxCode, $amount)
{
    $propertyId = Auth::user()->propertyid;

    $rows = DB::table('taxstru')
        ->where('propertyid', $propertyId)
        ->where('str_code', $taxCode)
        ->orderBy('sno')
        ->get();

    $matchedSlab = null;

    foreach ($rows as $row) {
        if (!is_null($row->comp_operator) && !is_null($row->limit1)) {
            $limit = (float)$row->limit1;

            if ($row->comp_operator === 'Between' && $amount <= $limit) {
                $matchedSlab = $limit;
                break;
            }

            if ($row->comp_operator === '<=' && $amount >= $limit) {
                $matchedSlab = $limit;
                break;
            }
        }
    }

    // ✅ CASE 1: Slab-based (unchanged logic)
    if (!is_null($matchedSlab)) {
        $cgst = DB::table('taxstru')
            ->where('propertyid', $propertyId)
            ->where('str_code', $taxCode)
            ->where('limit1', $matchedSlab)
            ->where('tax_code', 'LIKE', 'CGSS%')
            ->value('rate') ?? 0;

        $sgst = DB::table('taxstru')
            ->where('propertyid', $propertyId)
            ->where('str_code', $taxCode)
            ->where('limit1', $matchedSlab)
            ->where('tax_code', 'LIKE', 'SGSS%')
            ->value('rate') ?? 0;

        return (float)$cgst + (float)$sgst;
    }

    // ✅ CASE 2: No slab → just return total rate directly
    $cgst = DB::table('taxstru')
        ->where('propertyid', $propertyId)
        ->where('str_code', $taxCode)
        ->where('tax_code', 'LIKE', 'CGSS%')
        ->value('rate') ?? 0;

    $sgst = DB::table('taxstru')
        ->where('propertyid', $propertyId)
        ->where('str_code', $taxCode)
        ->where('tax_code', 'LIKE', 'SGSS%')
        ->value('rate') ?? 0;

    return (float)$cgst + (float)$sgst;
}


function companylogo()
{
    $logoPath = public_path('admin/icons/custom/200x200.svg');

    if (!empty(companydata()->logo)) {
        $path = public_path('storage/admin/property_logo/' . companydata()->logo);
        if (file_exists($path)) {
            $logoPath = $path;
        }
    }

    return $logoPath;
}

function convertGroup($number, $ones, $tens)
{
    if ($number === 0) {
        return '';
    }

    if ($number < 20) {
        return $ones[$number];
    }

    if ($number < 100) {
        $ten = floor($number / 10);
        $one = $number % 10;
        return $tens[$ten] . ($one > 0 ? '-' . $ones[$one] : '');
    }

    $hundred = floor($number / 100);
    $remainder = $number % 100;
    $parts = [];

    if ($hundred > 0) {
        $parts[] = $ones[$hundred] . ' hundred';
    }

    if ($remainder > 0) {
        $parts[] = convertGroup($remainder, $ones, $tens);
    }

    return implode(' ', $parts);
}

function amountToWords($amount)
{
    $amount = (float) $amount;
    $number = (int) floor($amount);

    if ($number === 0) {
        return 'Zero';
    }

    $ones = [
        '',
        'one',
        'two',
        'three',
        'four',
        'five',
        'six',
        'seven',
        'eight',
        'nine',
        'ten',
        'eleven',
        'twelve',
        'thirteen',
        'fourteen',
        'fifteen',
        'sixteen',
        'seventeen',
        'eighteen',
        'nineteen'
    ];

    $tens = [
        '',
        '',
        'twenty',
        'thirty',
        'forty',
        'fifty',
        'sixty',
        'seventy',
        'eighty',
        'ninety'
    ];

    $twoDigits = function (int $number) use ($ones, $tens): string {
        if ($number < 20) {
            return $ones[$number];
        }

        return $tens[intdiv($number, 10)] .
            ($number % 10 ? ' ' . $ones[$number % 10] : '');
    };

    $threeDigits = function (int $number) use ($ones, $twoDigits): string {
        if ($number < 100) {
            return $twoDigits($number);
        }

        return $ones[intdiv($number, 100)] . ' hundred' .
            ($number % 100 ? ' ' . $twoDigits($number % 100) : '');
    };

    $parts = [];

    $crore = intdiv($number, 10000000);
    $number %= 10000000;

    $lakh = intdiv($number, 100000);
    $number %= 100000;

    $thousand = intdiv($number, 1000);
    $number %= 1000;

    if ($crore > 0) {
        $parts[] = $threeDigits($crore) . ' crore';
    }

    if ($lakh > 0) {
        $parts[] = $twoDigits($lakh) . ' lakh';
    }

    if ($thousand > 0) {
        $parts[] = $twoDigits($thousand) . ' thousand';
    }

    if ($number > 0) {
        $parts[] = $threeDigits($number);
    }

    return ucfirst(implode(' ', $parts));
}


function myproperties()
{
    $sn_num = Companyreg::on('main')->where('propertyid', Auth::user()->propertyid)
        ->value('sn_num');

    return Companyreg::on('main')->select(
        'company.propertyid',
        'company.comp_name',
        'users.id as userid',
        'users.u_name'
    )
        ->leftJoin('users', function ($join) {
            $join->on('users.propertyid', '=', 'company.propertyid')
                ->where('users.u_name', Auth::user()->u_name);
        })
        ->where('company.sn_num', $sn_num)
        ->groupBy(
            'company.propertyid',
            'company.comp_name',
            'users.id',
            'users.u_name'
        )
        ->get();
}


function distinctyear()
{
    return VoucherPrefix::select('prefix')
        ->where('propertyid', Auth::user()->propertyid)
        ->distinct()
        ->orderByDesc('prefix')
        ->get();
}


function enviromaingeneral()
{
    return app('tenant.general');
}

function companyvalue(): ?string
{
    if (!Auth::check()) {
        return null;
    }

    $propertyId = Auth::user()->propertyid;

    return Companyreg::on($propertyId > 100 ? 'tenant' : 'main')
        ->where('propertyid', $propertyId)
        ->value('comp_code');
}


function allproperties()
{
    return Companyreg::groupBy('propertyid')->get();
}

function calculateRoundOff($amount, $mode = 'Standard')
{
    $paise = $amount - floor($amount);

    if ($mode === 'Standard') {
        $rounded = ($paise < 0.50) ? floor($amount) : ceil($amount);
    } elseif ($mode === 'Upper') {
        $rounded = ceil($amount);
    } else {
        $rounded = round($amount);
    }

    $roundoff = round($rounded - $amount, 2);

    return [
        'billamt'  => $rounded,
        'roundoff' => $roundoff
    ];
}


function planbasedcategory($catcode)
{
    $plans = PlanMast::where('propertyid', Auth::user()->propertyid)->where('room_cat', $catcode)->where('activeYN', 'Y')->orderBy('name')->get();
    return $plans;
}

function membercategories()
{
    $data = MemberCategory::where('propertyid', Auth::user()->propertyid)->orderByDesc('id')->get();

    return $data;
}

function allcountries()
{
    $data = Countries::where('propertyid', Auth::user()->propertyid)->orderBy('name')->get();
    return $data;
}

function acgroupall()
{
    $data = ACGroup::where('propertyid', Auth::user()->propertyid)->get();

    return $data;
}

function bookingsourceall()
{
    $data = BookingSource::where('propertyid', Auth::user()->propertyid)->get();
    return $data;
}

function buildingmasterall()
{
    $data = BuildingMaster::where('propertyid', Auth::user()->propertyid)->get();
    return $data;
}

function acgroup($group_code)
{
    $data = ACGroup::where('propertyid', Auth::user()->propertyid)->first();

    return $data;
}

function membermast()
{
    $membermast = DB::table('subgroup')
        ->select(
            'subgroup.sub_code',
            'subgroup.name',
            'member_categories.title as membercategory',
            'subgroup.appno',
            'subgroup.appdate',
            'subgroup.membership_date',
            'subgroup.member_id',
            'subgroup.subyn',
            DB::raw('COUNT(memberfamily.subcode) AS totalmember')
        )
        ->rightJoin('memberfamily', 'memberfamily.subcode', '=', 'subgroup.sub_code')
        ->leftJoin('member_categories', 'member_categories.code', '=', 'subgroup.membercategory')
        ->where('subgroup.subyn', 0)
        ->where('subgroup.propertyid', Auth::user()->propertyid)
        ->where('subgroup.comp_type', 'member')
        ->groupBy('subgroup.sub_code', 'subgroup.name', 'subgroup.subyn')
        ->get();

    return $membermast;
}

function revmastroominclusive()
{
    $propertyid = Auth::user()->propertyid;
    $revmast = Revmast::where('propertyid', $propertyid)->where('flag_type', 'FOM')
        ->whereNotIn('rev_code', [
            "DISC{$propertyid}",
            "ROFF{$propertyid}",
            "TOUT{$propertyid}",
            "RMCH{$propertyid}"
        ])->where('field_type', 'C')->orderBy('name', 'ASC')->get();

    return $revmast;
}
function getVoucherTypeName($vType)
{
    if (empty($vType)) {
        return '';
    }

    $propertyid = Auth::user()->propertyid ?? null;

    if (!$propertyid) {
        return '';
    }

    $voucherType = VoucherType::where('propertyid', $propertyid)
        ->where('v_type', $vType)
        ->first();

    return $voucherType ? $voucherType->description : '';
}


function uniqueyearsfom()
{
    $propertyid = Auth::user()->propertyid;
    $vtype = 'BCNT';
    if (Auth::user()->backdate == 1) {
        $years = VoucherPrefix::where('propertyid', $propertyid)->groupBy('prefix')->orderByDesc('prefix')->get();
    } else {
        $years = VoucherPrefix::where('propertyid', $propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', ncurdate())
            ->whereDate('date_to', '>=', ncurdate())
            ->get();
    }
    return $years;
}

function uniqueyearspos($dcode)
{
    $propertyid = Auth::user()->propertyid;
    $departdata = DB::table('depart')
        ->where('propertyid', $propertyid)
        ->where('dcode', $dcode)
        ->first();
    $vtype = "B$departdata->short_name";
    if (Auth::user()->backdate == 1) {
        $years = VoucherPrefix::where('propertyid', $propertyid)->groupBy('prefix')->orderByDesc('prefix')->get();
    } else {
        $years = VoucherPrefix::where('propertyid', $propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', ncurdate())
            ->whereDate('date_to', '>=', ncurdate())
            ->get();
    }

    return $years;
}



function buildPrintData($sale1docid)
{
    $propertyid = Auth::user()->propertyid;
    $sale1 = Sale1::where('propertyid', $propertyid)->where('docid', $sale1docid)->first();
    $folionodocid = $sale1->folionodocid;

    if (!$sale1) {
        return null;
    }

    $items = Stock::selectRaw('
            MAX(stock.sno) AS srno,
            MAX(stock.taxper) AS taxper,
            SUM(stock.taxamt) AS taxamt,
            stock.rate,
            stock.itemrate,
            stock.remarks,
            stock.discper,
            MAX(stock.itemrate) AS itemrate,
            SUM(stock.qtyiss) AS qty,
            SUM(stock.amount) AS amt,
            MAX(i.name) AS itemname,
            MAX(i.hsncode) AS hsncode,
            MAX(i.dispcode) As dispcode,
            stock.description,
            CASE
                WHEN SUM(stock.taxamt) = 0 THEN SUM(stock.amount)
                ELSE 0
            END AS nontaxable,
            CASE
                WHEN SUM(stock.taxamt) <> 0 THEN SUM(stock.amount)
                ELSE 0
            END AS taxable,
            unitmast.name AS unitname
        ')
        ->leftJoin('itemmast as i', function ($join) {
            $join->on('i.Code', '=', 'stock.item')
                ->whereColumn('stock.itemrestcode', '=', 'i.restcode');
        })
        ->leftJoin('unitmast', 'unitmast.ucode', '=', 'stock.unit')
        ->where('stock.docid', $sale1->docid)
        ->groupBy('stock.item', 'stock.rate', 'stock.remarks')
        ->orderByRaw('MAX(i.name)')
        ->get();

    $taxes = Sale2::select(
        'revmast.name as taxname',
        'revmast.rev_code',
        'sale2.taxper',
        DB::raw('SUM(taxamt) as taxamt'),
        DB::raw('SUM(basevalue) as taxableamt')
    )
        ->leftJoin('revmast', 'revmast.rev_code', '=', 'sale2.taxcode')
        ->where('sale2.docid', $sale1->docid)
        ->groupBy('revmast.rev_code', 'sale2.taxper', 'revmast.name')
        ->orderBy('sale2.taxper')
        ->get();

    $suntran = Suntran::select('suntran.*', 'depart.dis_print', 'depart.outlet_title', 'depart.company_title')
        ->leftJoin('depart', 'depart.dcode', '=', 'suntran.restcode')
        ->where('suntran.propertyid', $propertyid)
        ->where('suntran.docid', $sale1->docid)
        ->get();

    $waitername = ServerMast::where('propertyid', $propertyid)->where('scode', $sale1->waiter)->first();
    $depart = Depart::where('propertyid', $propertyid)->where('dcode', $sale1->restcode)->first();
    $tbro = $depart && $depart->nature == 'Outlet' ? 'Table No.' : 'Room No.';

    $guestdetails = null;
    if ($folionodocid) {
        $guestdetails = Roomocc::select(
            'roomocc.roomno',
            'roomocc.docid',
            'roomocc.name',
            'guestfolio.city AS guestcitycode',
            'guestcities.cityname AS guestcityname',
            'guestfolio.add1',
            'guestfolio.add2',
            'guestprof.mobile_no AS mobile_no',
            'roomocc.adult',
            'guestfolio.company',
            'sgrp.name as companyname',
            'sgrp.gstin',
            'sgrp.citycode AS compcitycode',
            'sgrpcities.cityname AS compcityname',
            'sgrpcities.state AS compstatecode',
            'states.name AS compstatename',
            'roomocc.plancode'
        )
            ->leftJoin('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('guestprof', 'guestprof.docid', '=', 'roomocc.docid')
            ->leftJoin('subgroup AS sgrp', 'sgrp.sub_code', '=', 'guestfolio.company')
            ->leftJoin('cities AS sgrpcities', 'sgrpcities.city_code', '=', 'sgrp.citycode')
            ->leftJoin('cities AS guestcities', 'guestcities.city_code', '=', 'guestfolio.city')
            ->leftJoin('states', 'states.state_code', '=', 'sgrpcities.state')
            ->where('roomocc.docid', $folionodocid)
            ->where('roomocc.propertyid', $propertyid)
            ->first();
    }

    if (!$guestdetails && !$folionodocid) {
        $guestdetails = GuestProf::select(
            'guestprof.*',
            'cities.cityname as guestcityname'
        )
            ->leftJoin('cities', 'cities.city_code', '=', 'guestprof.city')
            ->where('guestprof.propertyid', $propertyid)
            ->where('guestprof.docid', $sale1docid)
            ->first();
    }

    $companydata = null;
    if ($sale1->party) {
        $companydata = subgroup($sale1->party ?? '');
    }

    $yearmanage = DateHelper::calculateDateRanges(ncurdate());

    $prefix = $sale1->vtype;
    $divcode = $depart->divcode;

    if ($divcode != '') {
        $prefix = $divcode;
    }
    if (strtolower($depart->nature) == 'outlet') {
        $str = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $sale1->vno;
    } else if (strtolower($depart->nature) == 'room service') {
        $str = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $sale1->vno;
    }

    return [
        'items' => $items,
        'taxes' => $taxes,
        'sale1' => $sale1,
        'suntran' => $suntran,
        'waitername' => $waitername,
        'tbro' => $tbro,
        'depart' => $depart,
        'guestdetails' => $guestdetails,
        'companydata' => $companydata,
        'billDisplay' => $str,
    ];
}

function readyroomoccdata()
{
    $propertyid = Auth::user()->propertyid;

    $data = DB::table('roomocc')
        ->select([
            'guestfolio.folio_no as FolioNo',
            'guestfolio.docid',
            'roomocc.plancode',
            DB::raw('DATE_SUB(roomocc.depdate, INTERVAL 1 DAY) as depdate_minus_one'),
            'enviro_form.checkout as envcheck',
            DB::raw('IFNULL(paycharge.billno, "0") as billno'),
            'room_mast.rcode as RoomNo',
            'roomocc.name as GuestName',
            DB::raw("DATE_FORMAT(guestfolio.VDate, '%d/%m/%Y') as ChkInDate"),
            'roomocc.chkintime as ChkTime',
            DB::raw("DATE_FORMAT(roomocc.DepDate, '%d/%m/%Y') as DepDate"),
            'gueststats.Name as GuestStatus',
            DB::raw("CONCAT(
                        IFNULL(comp.name, ''),
                        IF(IFNULL(TA.name, '') = '' OR IFNULL(comp.name, '') = '', '', '/ '),
                        IFNULL(TA.name, '')
                    ) as CompanyName"),
            'guestprof.Add1 as Adress',
            'guestprof.city_name as City',
            'guestprof.country_name as Country',
            'guestprof.mobile_no as mobile_no',
            'guestprof.email_id',
            'guestprof.complimentry',
            'guestprof.add1',
            'guestprof.city',
            'guestprof.pic_path',
            'guestprof.id_proof',
            'guestprof.idproof_no',
            'plan_mast.Name as Plan',
            DB::raw("CONCAT(CAST(roomocc.adult AS CHAR), '/', CAST(roomocc.children AS CHAR)) as Pax"),
            DB::raw("CASE WHEN roomocc.leaderyn = 'Y' THEN 'Yes' ELSE 'No' END as Leader"),
            'roomocc.sno1 as SN',
            'roomocc.sno'
        ])
        ->distinct()
        ->join('room_mast', 'room_mast.rcode', '=', 'roomocc.roomno')
        ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
        ->leftJoinSub(
            DB::table('guestfolio')
                ->select([
                    'docid',
                    'sno1',
                    'id',
                    'folio_no',
                    'VDate',
                    'company',
                    'TravelAgent',
                    'pickupdrop',
                    'remarks',
                    'propertyid',
                ])
                ->where('propertyid', $propertyid)
                ->whereRaw('id = (
            SELECT MIN(gf2.id)
            FROM guestfolio gf2
            WHERE gf2.docid = guestfolio.docid
              AND gf2.propertyid = guestfolio.propertyid
        )'),
            'guestfolio',
            function ($join) {
                $join->on('guestfolio.docid', '=', 'roomocc.docid');
                // ->on('guestfolio.sno1', '=', 'roomocc.sno1');
            }
        )
        ->leftJoinSub(
            DB::table('guestprof')
                ->select([
                    'guestcode',
                    'sno1',
                    'id',
                    'name',
                    'Add1 as guest_address',
                    'city_name',
                    'country_name',
                    'mobile_no',
                    'email_id',
                    'complimentry',
                    'add1',
                    'city',
                    'pic_path',
                    'id_proof',
                    'idproof_no',
                    'guest_status',
                    'con_prefix',
                    'propertyid',
                ])
                ->where('propertyid', $propertyid)
                ->whereRaw('id = (
            SELECT MIN(gp2.id)
            FROM guestprof gp2
            WHERE gp2.guestcode = guestprof.guestcode
              AND gp2.propertyid = guestprof.propertyid
        )'),
            'guestprof',
            function ($join) {
                $join->on('guestprof.guestcode', '=', 'roomocc.guestprof');
                // ->on('guestprof.sno1', '=', 'roomocc.sno1');
            }
        )
        ->join('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
        ->leftJoin('enviro_form', 'enviro_form.propertyid', '=', 'roomocc.propertyid')
        ->leftJoin('gueststats', 'gueststats.gcode', '=', 'guestprof.guest_status')
        ->leftJoin('subgroup as comp', 'guestfolio.company', '=', 'comp.sub_code')
        ->leftJoin('subgroup as TA', 'guestfolio.TravelAgent', '=', 'TA.sub_code')
        ->join('enviro_general as E', 'guestfolio.propertyid', '=', 'E.propertyid')
        ->leftJoin('paycharge', function ($join) {
            $join->on('paycharge.folionodocid', '=', 'roomocc.docid')
                ->on('paycharge.sno1', '=', 'roomocc.sno1')
                ->where('paycharge.billno', '!=', 0);
        })
        ->where('roomocc.propertyid', $propertyid)
        ->where('room_mast.propertyid', $propertyid)
        ->where(function ($query) {
            $query->whereNotIn('roomocc.type', ['C', 'O'])
                ->orWhereNull('roomocc.type');
        })
        ->where('room_mast.type', 'RO')
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
            'TA.name',
            'comp.name'
        ])
        ->orderByDesc('guestfolio.folio_no')
        ->get();

    return $data;
}

function readyroomoccdataprofile()
{
    $propertyid = Auth::user()->propertyid;

    $data = DB::table('roomocc')
        ->select([
            'roomocc.foliono as FolioNo',
            'roomocc.docid',
            'roomocc.plancode',
            'room_mast.rcode as RoomNo',
            'guestprof.name as GuestName',
            'guestprof.mobile_no',
            'guestprof.email_id',
            'guestprof.add1',
            'guestprof.city',
            'guestprof.pic_path',
            'guestprof.id_proof',
            'guestprof.idproof_no',
            'roomocc.sno1 as SN',
            'roomocc.sno'
        ])
        ->join('room_mast', function ($join) use ($propertyid) {
            $join->on('room_mast.rcode', '=', 'roomocc.roomno')
                ->where('room_mast.propertyid', '=', $propertyid);
        })
        ->leftJoin('guestfolio', function ($join) use ($propertyid) {
            $join->on('roomocc.docid', '=', 'guestfolio.docid')
                ->on('guestfolio.sno1', '=', 'roomocc.sno1')
                ->where('guestfolio.propertyid', '=', $propertyid);
        })
        ->leftJoin('guestprof', function ($join) use ($propertyid) {
            $join->on('guestfolio.guestprof', '=', 'guestprof.guestcode')
                ->on('guestprof.sno1', '=', 'guestfolio.sno1')
                ->where('guestprof.propertyid', '=', $propertyid);
        })
        ->where('roomocc.propertyid', $propertyid)
        ->where(function ($query) {
            $query->whereNotIn('roomocc.type', ['C', 'O'])
                ->orWhereNull('roomocc.type');
        })
        ->where('room_mast.type', 'RO')
        ->orderByDesc('roomocc.foliono')
        ->get();

    // Log::info('readyroomoccdataprofile', ['data' => $data]);

    return $data;
}
