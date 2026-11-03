<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Helpers\WhatsappSend;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Companyreg;
use App\Models\Guestfolio;
use App\Models\Suntran;
use App\Models\RoomMast;
use App\Models\Sale1;
use App\Models\Sale2;
use App\Models\GrpBookinDetail;
use App\Models\Stock;
use App\Models\Paycharge;
use App\Models\MenuHelp;
use App\Models\Depart;
use App\Models\Revmast;
use App\Models\ServerMast;
use App\Models\EnviroPos;
use App\Models\GuestProf;
use App\Models\PrintingSetup;
use App\Models\UserPermission;
use App\Models\RoomOcc;
use App\Models\GuestReward;
use App\Models\Cities;
use App\Models\Depart1;
use App\Models\EnviroWhatsapp;
use App\Models\EInvoiceBill;
use App\Models\EnviroFom;
use App\Models\SubGroup;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Filesystem\AwsS3V3Adapter;
use Illuminate\Support\Facades\Log;
use PhpParser\Node\Stmt\TryCatch;
use Symfony\Component\Finder\Iterator\VcsIgnoredFilterIterator;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\Kot as KotModal;
use App\Models\Sale1log;
use App\Models\Sale2log;
use App\Models\Stocklog;
use App\Models\Suntranlog;
use App\Models\VoucherPrefix;

use Endroid\QrCode\Builder\Builder;
use Endroid\QrCode\Writer\PngWriter;
use Endroid\QrCode\Encoding\Encoding;
use Endroid\QrCode\ErrorCorrectionLevel;
use Endroid\QrCode\RoundBlockSizeMode;

use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;
use function App\Helpers\splitByJoin;

class Pointofsale extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;

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
    # Warning: Abandon hope, all who enter here. 😱

    public function ncurfetch()
    {
        $ncurdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        return $ncurdate;
    }

    public function ExportTable()
    {
        echo '<link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />';
        echo '<link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />';
        echo '<script src="https://code.jquery.com/jquery-3.5.1.js"></script>';
        echo '<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>';
    }

    public function DownloadTable($tableName, $title, $columnsToExport, $columnToSearch)
    {
        $exportColumnsJS = json_encode($columnsToExport);
        $searchColumnsJS = json_encode($columnToSearch);

        echo "<script>$(document).ready(function() {
        let table = $('#$tableName').DataTable({
            dom: 'Bfrtip',
            pageLength: 15,
            buttons: [
                {
                    extend: 'excelHtml5',
                    text: 'Excel <i class=\"fa fa-file-excel-o\"></i>',
                    title: '$title',
                    filename: '$title',
                    exportOptions: {
                        columns: $exportColumnsJS
                    }
                },
                {
                    extend: 'csvHtml5',
                    text: 'Csv <i class=\"fa-solid fa-file-csv\"></i>',
                    title: '$title',
                    filename: '$title',
                    exportOptions: {
                        columns: $exportColumnsJS
                    }
                },
                {
                    extend: 'pdfHtml5',
                    text: 'Pdf <i class=\"fa fa-file-pdf-o\"></i>',
                    title: '$title',
                    filename: '$title',
                    exportOptions: {
                        columns: $exportColumnsJS
                    }
                },
                {
                    extend: 'print',
                    text: 'Print <i class=\"fa-solid fa-print\"></i>',
                    title: '$title',
                    filename: '$title',
                    exportOptions: {
                        columns: $exportColumnsJS
                    }
                }
            ],
            initComplete: function() {
                // Configure column-specific search inputs based on the specified columns
                let searchColumns = $searchColumnsJS;
                this.api().columns(searchColumns).every(function() {
                    let column = this;
                    let title = column.header().textContent;
                    let input = document.createElement('input');
                    input.placeholder = title;
                    $(input).appendTo($(column.footer()).empty()); // Use jQuery for better compatibility
                    $(input).on('keyup', function () {
                        if (column.search() !== this.value) {
                            column.search(this.value).draw();
                        }
                    });
                });
            }
        });
    });</script>";
    }
    public function revokeopen($code)
    {
        $value = Menuhelp::where('propertyid', $this->propertyid)->where('username', Auth::user()->name)->where('code', $code)->first();
        return $value;
    }

    public function fetchcompdetail(Request $request)
    {
        $sub_code = $request->input('sub_code');
        $gstin = SubGroup::where('propertyid', $this->propertyid)->where('sub_code', $sub_code)->value('gstin');
        return json_encode($gstin);
    }

    public function discountmaxxhr(Request $request)
    {
        $userpermission = UserPermission::where('propertyid', $this->propertyid)->where('username', $this->username)->first();
        if ($userpermission) {
            return response()->json([$userpermission]);
        } else {
            return response()->json(['message' => 'This is property admin']);
        }
    }

    public function updatedelflagxhr(Request $request)
    {
        $docid = $request->input('docid');
        $reason = $request->input('reason');
        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $docid)->first();

        $mergedwith = !empty($sale1->mergedwith) ? explode(',', $sale1->mergedwith) : [$sale1->docid];

        $update = [
            'delflag' => 'Y',
            'delremark' => $reason
        ];
        Sale1::where('propertyid', $this->propertyid)->whereIn('docid', $mergedwith)->update($update);
        Sale2::where('propertyid', $this->propertyid)->whereIn('docid', $mergedwith)->update($update);
        Stock::where('propertyid', $this->propertyid)->whereIn('docid', $mergedwith)->update($update);
        Suntran::where('propertyid', $this->propertyid)->whereIn('docid', $mergedwith)->update($update);
        $msg = "Sale Bill Entry Updated";
        return json_encode($msg);
    }

    public function fetchgguestprof(Request $request)
    {
        $sale1docid = $request->input('sale1docid');

        // sale1 se guestcode, phoneno, custname nikalo
        $sale1 = Sale1::where('propertyid', $this->propertyid)
            ->where('docid', $sale1docid)
            ->first();

        $guestprof = null;

        if ($sale1) {
            // 1st priority: guestcode se guestprof dhundo
            if (!empty($sale1->guestcode)) {
                $guestprof = GuestProf::select('guestprof.*', 'cities.cityname as nameofcity')
                    ->leftJoin('cities', 'cities.city_code', '=', 'guestprof.city')
                    ->where('guestprof.propertyid', $this->propertyid)
                    ->where('guestprof.guestcode', $sale1->guestcode)
                    ->first();
            }

            // 2nd priority: phoneno se dhundo
            if (!$guestprof && !empty($sale1->phoneno)) {
                $guestprof = GuestProf::select('guestprof.*', 'cities.cityname as nameofcity')
                    ->leftJoin('cities', 'cities.city_code', '=', 'guestprof.city')
                    ->where('guestprof.propertyid', $this->propertyid)
                    ->where('guestprof.mobile_no', $sale1->phoneno)
                    ->first();
            }

            // 3rd priority: agar guestprof nahi mila but sale1 mein custname/phoneno hai
            // to synthetic object return karo taaki print blank na rahe
            if (!$guestprof && (!empty($sale1->custname) || !empty($sale1->phoneno))) {
                $guestprof = (object) [
                    'name'       => $sale1->custname ?? '',
                    'mobile_no'  => $sale1->phoneno ?? '',
                    'add1'       => $sale1->add ?? '',
                    'add2'       => '',
                    'city'       => $sale1->city ?? '',
                    'nameofcity' => $sale1->city ?? '',
                ];
            }
        }

        return response()->json(['guestprof' => $guestprof]);
    }


    public function fetchitemoldroomno(Request $request)
    {
        $billno = $request->input('billno');
        $dcode = $request->input('dcode');
        $vprefix = $request->vprefix;
        $dep = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();

        $sale1 = Sale1::where('vno', $billno)->where('restcode', $dep->dcode)->where('vprefix', $vprefix)->where('propertyid', $this->propertyid)
            ->first();

        if (!$sale1) {
            return response()->json(['message' => 'Invalid Vno'], 204);
        }

        if (!empty($sale1->mergedwith)) {
            $mergedString = Sale1::where('propertyid', $this->propertyid)
                ->where('docid', $sale1->docid)
                ->value('mergedwith');

            $mergedDocids = array_map('trim', explode(',', $mergedString));
            $folionodocids = array_filter(array_map('trim', explode(',', (string) $sale1->folionodocid)));
            $chkguestprof = GuestProf::where('propertyid', $this->propertyid)->where('guestcode', $sale1->guestcode)->first();
            $guestdt = Guestfolio::select('guestfolio.*', 'roomocc.plancode', 'roomocc.sno1', 'subgroup.name as subname', 'subgroup.gstin')
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'guestfolio.company')
                ->leftJoin('roomocc', 'roomocc.docid', '=', 'guestfolio.docid')
                ->where('guestfolio.propertyid', $this->propertyid)
                ->whereIn('guestfolio.docid', $folionodocids)
                ->first();
        } else {
            $chkguestprof = GuestProf::where('propertyid', $this->propertyid)->where('guestcode', $sale1->guestcode)->first();
            $guestdt = Guestfolio::select('guestfolio.*', 'roomocc.plancode', 'roomocc.sno1', 'subgroup.name as subname', 'subgroup.gstin')
                ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'guestfolio.company')
                ->leftJoin('roomocc', 'roomocc.docid', '=', 'guestfolio.docid')
                ->where('guestfolio.propertyid', $this->propertyid)
                ->where('guestfolio.docid', $sale1->folionodocid)
                ->first();
        }

        if (!empty($sale1)) {
            $itemstmp = DB::table('stock')
                ->select(
                    'sale1.docid as sale1docid',
                    'sale1.mergedwith',
                    'stock.itemrate as actualrate',
                    'itemmast.RateIncTax',
                    'itemmast.SChrgApp',
                    'itemmast.Name',
                    'depart.kot_yn',
                    'kot.docid as kotdocid',
                    'stock.description',
                    'itemmast.RateEdit',
                    'itemmast.DiscApp as discapp',
                    'stock.qtyiss',
                    'stock.amount',
                    'stock.rate',
                    'stock.item',
                    'stock.vno',
                    'stock.kotsno',
                    'stock.roomno',
                    'sale1.waiter',
                    'sale1.guaratt',
                    'stock.docid',
                    'stock.vtype',
                    'stock.taxper',
                    'stock.restcode',
                    'stock.sno as stocksno',
                    DB::raw('COALESCE(taxstru.tax_code, "") 
                AS tax_code'),
                    DB::raw('COALESCE(taxstru.tax_name, "") AS tax_name'),
                    DB::raw('COALESCE(taxstru.tax_rate, 0) AS tax_rate'),
                    'itemcatmast.TaxStru',
                    'kot.vno as kotvno',
                    'itemgrp.name as groupname',
                    'itemgrp.code as groupcode',
                )
                ->leftJoin('itemmast', function ($join) {
                    $join->on('stock.item', '=', 'itemmast.Code')
                        ->on('stock.restcode', '=', 'itemmast.RestCode');
                })
                ->leftJoin('itemgrp',  function ($join) {
                    $join->on('itemgrp.property_id', '=', 'itemmast.Property_ID')
                        ->on('itemgrp.restcode', '=', 'itemmast.RestCode')
                        ->on('itemgrp.Code', '=', 'itemmast.ItemGroup');
                })
                ->leftJoin('sale1', 'sale1.docid', '=', 'stock.docid')
                ->leftJoin('depart', 'depart.dcode', '=', 'stock.restcode')
                ->leftJoin('itemcatmast', function ($join) {
                    $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                        ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
                })
                ->leftJoin('kot', function ($query) {
                    $query->on('kot.docid', '=', 'stock.kotdocid')
                        ->where('kot.nckot', 'N');
                })
                // ->leftJoin(DB::raw('(SELECT str_code, GROUP_CONCAT(name) AS tax_name, GROUP_CONCAT(tax_code) AS tax_code, SUM(rate) AS tax_rate FROM taxstru GROUP BY str_code) AS taxstru'), function ($join) {
                //     $join->on('taxstru.str_code', '=', 'itemcatmast.TaxStru')
                //         ->where('taxstru.propertyid', '=', $this->propertyid);
                // })
                ->leftJoin(
                    DB::raw('(
                        SELECT
                            str_code,
                            GROUP_CONCAT(name) AS tax_name,
                            GROUP_CONCAT(tax_code) AS tax_code,
                            SUM(rate) AS tax_rate
                        FROM taxstru
                        WHERE propertyid = ' . $this->propertyid . '
                        GROUP BY str_code
                    ) AS taxstru'),
                    function ($join) {
                        $join->on('taxstru.str_code', '=', 'itemcatmast.TaxStru');
                    }
                )
                ->where('stock.propertyid', $this->propertyid)
                ->where('stock.vprefix', $vprefix)
                ->groupBy('stock.vno')
                ->groupBy('stock.sno')
                ->groupBy('stock.item')
                ->orderBy('stock.sno', 'ASC');

            if (!empty($sale1->mergedwith)) {
                $mergedString = Sale1::where('propertyid', $this->propertyid)
                    ->where('docid', $sale1->docid)
                    ->value('mergedwith');

                $mergedDocids = array_map('trim', explode(',', $mergedString));

                $items = $itemstmp->whereIn('stock.docid', $mergedDocids)->get();
                $suntrandata = Suntran::select(
                    'suntran.*',
                    'sundrytype.bold',
                    'sundrytype.peroramt',
                    'sundrytype.nature',
                    'depart.name as restname',
                    'sundrytype.automanual'
                )
                    ->leftJoin('sundrytype', function ($join) {
                        $join->on('sundrytype.sundry_code', '=', 'suntran.suncode')
                            ->on('sundrytype.vtype', '=', 'suntran.restcode');
                        // ->on('sundrytype.sno', '=', 'suntran.sno');
                    })
                    ->leftJoin('depart', 'depart.dcode', '=', 'suntran.restcode')
                    ->whereIn('suntran.docid', $mergedDocids)->where('suntran.propertyid', $this->propertyid)
                    ->groupBy('suntran.sno')
                    ->groupBy('suntran.docid')
                    ->get();
            } else {
                $items = $itemstmp->whereIn('stock.docid', [$sale1->docid])->get();

                $suntrandata = Suntran::select(
                    'suntran.*',
                    'sundrytype.bold',
                    'sundrytype.peroramt',
                    'sundrytype.nature',
                    'depart.name as restname',
                    'sundrytype.automanual'
                )
                    ->leftJoin('sundrytype', function ($join) {
                        $join->on('sundrytype.sundry_code', '=', 'suntran.suncode')
                            ->on('sundrytype.vtype', '=', 'suntran.restcode');
                        // ->on('sundrytype.sno', '=', 'suntran.sno');
                    })
                    ->leftJoin('depart', 'depart.dcode', '=', 'suntran.restcode')
                    ->where('suntran.docid', $sale1->docid)
                    ->where('suntran.propertyid', $this->propertyid)
                    ->groupBy('suntran.sno')
                    ->groupBy('suntran.docid')
                    ->get();
            }

            // return $sale1;

            $outlet1 = null;
            $outlet2 = null;

            $mergedString = Sale1::where('propertyid', $this->propertyid)
                ->where('docid', $sale1->docid)
                ->value('mergedwith');



            $mergedDocids = array_map('trim', explode(',', $mergedString));
            $sale1full = Sale1::where('propertyid', $this->propertyid)
                ->whereIn('docid', $mergedDocids)
                ->get();

            $sale2 = Sale1::where('propertyid', $this->propertyid)
                ->where('docid', $mergedDocids[0])
                ->first();

            $restcodesp = $sale1full->pluck('restcode')->unique()->values();
            $mergedcodes = $sale1full->pluck('mergedwith')->filter()->unique()->values();

            if ($mergedcodes->isNotEmpty() && $restcodesp->count() > 0) {
                $outlet1 = $restcodesp[0];
                $outlet2 = $restcodesp[1];
            }

            $amount = 0;
            foreach ($items as $item) {
                $docid = $item->docid;
            }

            $sundrytype = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $dcode)->orderBy('sno', 'ASC')->get();

            // return $suntrandata;

            $amount = $suntrandata[0]->amount;

            $roomno = $sale1->roomno;

            // return $guestdt;
            if ($guestdt) {
                $planname = 'EP';
                if (!empty($guestdt->plancode)) {
                    $planname = DB::table('plan_mast')->where('propertyid', $this->propertyid)->where('pcode', $guestdt->plancode)->value('name');
                }
                // $concat = 'Name: ' . $guestdt->name . ', Plan: ' . $planname;
                $concat = 'Name: ' . $guestdt->name . ', Plan: ' . $planname . ($guestdt->remarks != '' ? ', Remarks: ' . $guestdt->remarks : '');
            } else {
                $concat = '';
            }

            $waitername = DB::table('server_mast')->where('propertyid', $this->propertyid)->where('scode', $sale1->waiter)->value('name');
            $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $sale1->restcode)->first();
            if (strtolower($depart->nature) == 'room service') {
                $chkoutpaycharge = RoomOcc::select('roomocc.type', 'paycharge.roomno')
                    ->leftJoin('paycharge', function ($join) {
                        $join->on('paycharge.roomno', '=', 'roomocc.roomno')
                            ->on('paycharge.folionodocid', '=', 'roomocc.docid')
                            ->on('paycharge.propertyid', '=', 'roomocc.propertyid');
                    })
                    ->leftJoin('sale1', 'sale1.docid', '=', 'paycharge.docid')
                    ->where('roomocc.docid', $guestdt->docid)
                    ->where('roomocc.sno1', $guestdt->sno1)
                    ->where('paycharge.paycode', 'TOUT' . $this->propertyid)
                    ->where('roomocc.type', 'O')
                    ->where('sale1.docid', $sale1->docid)
                    ->groupBy('roomocc.roomno')
                    ->get();
                $chkoutrowcount = count($chkoutpaycharge);
                $label = 'Room No';
            } else {
                $chkoutpaycharge = Paycharge::where('docid', $sale1->docid)->where('paycode', 'TOUT' . $this->propertyid)->where('sno1', $sale1->sno1)->get();
                $chkoutrowcount = count($chkoutpaycharge);
                $label = 'Table No';
            }

            if (strtolower($dep->nature) == 'room service') {
                $compcode = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $guestdt->docid)
                    ->where('comp_code', '!=', '')
                    ->where('sno1', $guestdt->sno1)->value('comp_code');
                if (!$compcode) {
                    $compcode = $guestdt->company;
                }
            } else if ($dep->nature == 'Outlet') {
                $compcode = Paycharge::where('propertyid', $this->propertyid)->where('docid', $sale1->docid)
                    ->where('comp_code', '!=', '')
                    ->value('comp_code');
            }

            $subgroup = SubGroup::where('propertyid', $this->propertyid)->where('sub_code', $sale1->party)->first();

            $paychargerows = Paycharge::where('propertyid', $this->propertyid)->where('docid', $sale1->docid)->count();
            $paychargerowsd = Paycharge::where('propertyid', $this->propertyid)->where('docid', $sale1->docid)
                ->whereNot('paycode', 'TOUT' . $this->propertyid)
                ->get();
            $paychargepayrow = Paycharge::where('propertyid', $this->propertyid)->where('docid', $sale1->docid)->first();

            $toutrow = Paycharge::where('propertyid', $this->propertyid)->where('docid', $sale1->docid)
                ->where('paycode', 'TOUT' . $this->propertyid)
                ->first();

            $depart2 =  DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $outlet1)->first();
            $einvoice = EInvoiceBill::where('propertyid', $this->propertyid)->where('docid', $sale1->docid)->first();

            $einvoiceExists = EInvoiceBill::where('propertyid', $this->propertyid)
                ->where('cancelled', 'N')
                ->where('docid', $sale1->docid)
                ->exists();

            $paymentExists = Paycharge::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->exists();

            $deleteallow = !($paymentExists || $einvoiceExists);
            $data = [
                'einvoice' => $einvoice,
                'toutrow' => $toutrow,
                'items' => $items,
                'suntransdata' => $suntrandata,
                'sundrytype' => $sundrytype,
                'amount' => $amount,
                'roomno' => $roomno,
                'sale1' => $sale1,
                'sale2' => $sale2,
                'depart2' => $depart2,
                'waitername' => $waitername,
                'guestdt' => $guestdt,
                'docid' => $docid,
                'concat' => $concat,
                'chkoutrowcount' => $chkoutrowcount,
                'dep' => $depart->nature,
                'subgroup' => $subgroup,
                'compcode' => $compcode,
                'label' => $label,
                'paychargerows' => $paychargerows,
                'paychargerowsd' => $paychargerowsd,
                'chkguestprof' => $chkguestprof,
                'outlet1code' => $outlet1,
                'outlet2code' => $outlet2,
                'paychargepayrow' => $paychargepayrow,
                'deleteallow' => $deleteallow
            ];
            return json_encode($data);
        } else {
            return json_encode('false');
        }
    }

    public function fetchcompdt(Request $request)
    {

        $billno = $request->input('billno');
        $vtype = $request->input('vtype');
        $sale1docid = $request->input('sale1docid');

        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $sale1docid)->where('vtype', $vtype)->first();

        if (!$sale1) {
            return json_encode(null);
        }

        $dep = Depart::where('propertyid', $this->propertyid)->where('dcode', $sale1->restcode)->first();
        $upsale = [
            'printed' => 'Y'
        ];
        Sale1::where('propertyid', $this->propertyid)->where('restcode', $sale1->restcode)->where('docid', $sale1->docid)->update($upsale);

        $subgroup = SubGroup::select(
            'subgroup.name as compname',
            'subgroup.gstin',
            'cities.state as compstatecode',
            'states.name AS compstatename',
            'cities.cityname AS compcityname',
            'subgroup.citycode AS compcitycode',
            'subgroup.address'
        )
            ->leftJoin('cities', 'cities.city_code', '=', 'subgroup.citycode')
            ->leftJoin('states', 'states.state_code', '=', 'cities.state')
            ->where('subgroup.propertyid', $this->propertyid)
            ->where('subgroup.sub_code', $sale1->party)
            ->first();

        if ($subgroup) {
            return json_encode($subgroup);
        }

        // Fallback: company master (subgroup) me record nahi mila to bill par
        // guest ki detail dikha do (room service / party-walkin bills ke liye)
        $fallback = GuestProf::select(
            'guestprof.name as compname',
            'guestprof.panno as gstin',
            'guestprof.state_name as compstatename',
            'guestprof.state_code as compstatecode',
            'guestprof.city_name as compcityname',
            'guestprof.city as compcitycode',
            'guestprof.add1 as address'
        )
            ->where('guestprof.propertyid', $this->propertyid);

        $guest = (clone $fallback)->where('guestprof.docid', $sale1->folionodocid)->first();

        if (!$guest) {
            $guest = GuestProf::select(
                'guestprof.name as compname',
                'guestprof.panno as gstin',
                'guestprof.state_name as compstatename',
                'guestprof.state_code as compstatecode',
                'guestprof.city_name as compcityname',
                'guestprof.city as compcitycode',
                'guestprof.add1 as address'
            )
                ->where('guestprof.propertyid', $this->propertyid)
                ->where('guestprof.guestcode', $sale1->guestcode)
                ->first();
        }

        if ($guest && !empty($guest->compname)) {
            return json_encode($guest);
        }

        return json_encode(null);

        // return json_encode($subgroup);
    }

    public function phonefindxhr(Request $request)
    {
        $mobile_no = $request->input('phoneno');
        $find = GuestProf::where('propertyid', $this->propertyid)->where('mobile_no', $mobile_no)->first();
        if ($find != null) {
            $results = GuestProf::select([
                'itemmast.Name AS itemname',
                'stock.qtyiss',
                'stock.rate',
                'stock.amount',
                'stock.roomno',
                'guestprof.name AS customername',
                'guestprof.city',
                DB::raw("CONCAT(DATE_FORMAT(stock.vdate, '%d-%m-%Y'), ' ', DATE_FORMAT(stock.vtime, '%H:%i')) AS visittime"),
                'guestprof.likes',
                'guestprof.dislikes',
                DB::raw("DATE_FORMAT(guestprof.dob, '%d-%m-%Y') as dob"),
                DB::raw("DATE_FORMAT(guestprof.anniversary, '%d-%m-%Y') as anniversary"),
                'guestprof.add1'
            ])
                ->leftJoin('stock', 'stock.docid', '=', 'guestprof.docid')
                ->leftJoin('itemmast', 'itemmast.Code', '=', 'stock.item')
                ->where('guestprof.mobile_no', $find->mobile_no)
                ->where('guestprof.propertyid', $this->propertyid)
                ->orderBy('stock.vdate', 'DESC')
                ->orderBy('stock.vtime', 'DESC')
                ->get();
            return response()->json(['data' => $results, 'mobile_no' => $mobile_no], 200);
        } else {
            return response()->json(['Not Found'], 200);
        }
    }

    // public function salebillsubmit(Request $request)
    // {

    //     $validate = $request->validate([
    //         'roomno' => 'required',
    //         'pax' => 'required',
    //         'itemcode1' => 'required',
    //         'rate1' => 'required',
    //     ]);

    //     try {
    //         DB::beginTransaction();
    //         $docidInput = $request->input('kotdocid');

    //         $docidsArray = array_filter(explode(',', $docidInput));

    //         $kotvno = KoTModal::where('propertyid', $this->propertyid)->whereIn('docid', $docidsArray)->get();

    //         $uniquevno = [];
    //         foreach ($kotvno as $item) {
    //             $vno = $item->vno;
    //             if (!in_array($vno, $uniquevno)) {
    //                 $uniquevno[] = $vno;
    //             }
    //         }

    //         $uniquevno = implode(",", $uniquevno);
    //         $totalitems = $request->input('totalitems');

    //         $table1 = 'sale1';
    //         $table2 = 'sale2';
    //         $table3 = 'stock';
    //         $table4 = 'suntran';
    //         $table5 = 'paycharge';
    //         $posroomno = $request->input('posroomno');

    //         $restcode = $request->input('fixrestcode');
    //         $totalamt = $request->input('totalamt');
    //         $servicehargeamt = $request->input('servicechargeamount') ?? '0.00';
    //         $servicechargefix = $request->input('servicechargefix') ?? '0.00';
    //         $discper = $request->input('discountfix');
    //         $discper = floatval(str_replace(',', '', number_format($discper, 2)));
    //         $discamt = $request->input('discountsundry');
    //         $taxable = $request->input('taxableamt');
    //         $inputr = $request->input('roundoffamount');
    //         $cleanedInput = str_replace('.', '', $inputr);
    //         $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $restcode)->first();

    //         if (strlen($cleanedInput) > 1) {
    //             $floatValue = substr($cleanedInput, 0, 1) . '.' . substr($cleanedInput, 1);
    //         } else {
    //             $floatValue = $cleanedInput;
    //         }

    //         $roundoff = number_format((float)$floatValue, 2, '.', '');

    //         $netamount = $request->input('netamount');
    //         $cgst = $request->input('cgstamount');
    //         $sgst = $request->input('sgstamount');
    //         $igst = $request->input('igstamt');
    //         $vtype = $request->input('vtype');

    //         $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
    //             ->where('v_type', $vtype)
    //             ->whereDate('date_from', '<=', $this->ncurdate)
    //             ->whereDate('date_to', '>=', $this->ncurdate)
    //             ->first();

    //         $start_srl_no = $chkvpf->start_srl_no + 1;
    //         $vprefix = $chkvpf->prefix;

    //         $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;
    //         $roomno = $request->input('roomno');
    //         $roomdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('roomno', $roomno)->whereNull('type')->first();
    //         $msno1 = 0;
    //         $wpnum = '';
    //         if (isset($roomdata)) {
    //             $gprof = GuestProf::where('propertyid', $this->propertyid)->where('docid', $roomdata->docid)->first();
    //             $wpnum = $gprof->mobile_no ?? '';
    //             $rocc = Roomocc::where('propertyid', $this->propertyid)->where('docid', $roomdata->docid)->where('leaderyn', 'Y')->first();
    //             if ($rocc) {
    //                 $msno1 = $rocc->sno1;
    //             }
    //         }

    //         $roommast = RoomMast::where('propertyid', $this->propertyid)->where('rcode', $roomno)->first();

    //         $nontaxable = $totalamt - $taxable;

    //         $sundrycount = $request->input('sundrycount');

    //         for ($i = 1; $i <= $sundrycount; $i++) {
    //             $fstype = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $restcode)->where('sno', $i)->first();
    //             $svalue = $fstype->svalue;
    //             $baseamount = 0.00;
    //             $amount = 0.00;
    //             if ($fstype->disp_name == 'Discount') {
    //                 $amount = $discamt;
    //                 $svalue = $discper;
    //             }
    //             if ($fstype->disp_name == 'Service Charge') {
    //                 $amount = $servicehargeamt;
    //                 $svalue = $servicechargefix;
    //             }
    //             if ($fstype->disp_name == 'Amount') {
    //                 $amount = $totalamt;
    //             }
    //             if ($fstype->disp_name == 'CGST') {
    //                 $amount = $cgst;
    //             }
    //             if ($fstype->disp_name == 'SGST') {
    //                 $amount = $sgst;
    //             }
    //             if ($fstype->disp_name == 'Round Off') {
    //                 $amount = $roundoff;
    //                 $baseamount = $roundoff + $netamount;
    //             }
    //             if ($fstype->disp_name == 'Net Amount') {
    //                 $amount = $netamount;
    //             }

    //             $suntrandata = [
    //                 'propertyid' => $this->propertyid,
    //                 'docid' => $docid,
    //                 'sno' => $i,
    //                 'vno' => $start_srl_no,
    //                 'vtype' => $vtype,
    //                 'vdate' => $this->ncurdate,
    //                 'dispname' => $fstype->disp_name,
    //                 'suncode' => $fstype->sundry_code,
    //                 'calcformula' => $fstype->calcformula,
    //                 'svalue' => $svalue,
    //                 'amount' => $amount,
    //                 'baseamount' => $baseamount,
    //                 'revcode' => $fstype->revcode,
    //                 'restcode' => $restcode,
    //                 'sunappdate' => $this->ncurdate,
    //                 'delflag' => 'N',
    //                 'created_at' => $this->currenttime,
    //                 'u_name' => Auth::user()->u_name,
    //                 'u_ae' => 'a',
    //             ];

    //             DB::table($table4)->insert($suntrandata);
    //         }

    //         if ($roundoff > 0) {
    //             $roundyn = 'Y';
    //         } else {
    //             $roundyn = 'N';
    //         }

    //         if ($request->input('phoneno') != '') {
    //             $wpnum = $request->input('phoneno');
    //             $findexist = GuestProf::where('propertyid', $this->propertyid)->where('mobile_no', $request->input('phoneno'))->first();

    //             if ($findexist != null) {
    //                 $guestprof = $findexist->guestcode;
    //             } else {
    //                 $maxguestprof = GuestProf::where('propertyid', $this->propertyid)->max('guestcode');
    //                 $guestprof = ($maxguestprof === null) ? $this->propertyid . '10001' : ($guestprof = $this->propertyid . substr($maxguestprof, $this->ptlngth) + 1);
    //             }

    //             $citycode = $request->input('customercity');
    //             $citydata = '';
    //             $statedata = '';
    //             $countrydata = '';
    //             if (!empty($citycode)) {
    //                 $citydata = Cities::where('propertyid', $this->propertyid)->where('city_code', $citycode)->first();
    //                 $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $citydata->state)->first();
    //                 $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $citydata->country)->first();
    //             }

    //             $guestreward = [
    //                 'propertyid' => $this->propertyid,
    //                 'docid' => $docid,
    //                 'custcode' => $guestprof,
    //                 'vdate' => $this->ncurdate,
    //                 'vtime' => date('H:i:s'),
    //                 'restcode' => $restcode,
    //                 'departname' => $depart->name,
    //                 'billno' => $start_srl_no,
    //                 'total' => $totalamt,
    //                 'billamt' => $netamount,
    //                 'rewardpoint' => 0.00,
    //                 'redeempoint' => 0.00,
    //                 'mobileno' => $request->input('phoneno'),
    //                 'discamt' => $discamt ?? 0.00,
    //                 'schemecode' => '',
    //                 'saleupto' => 0.00,
    //                 'rppointonamt' => 0.00,
    //                 'rewardvalue' => 0.00,
    //                 'reedemvalue' => 0.00,
    //                 'regid' => '',
    //                 'discper' => $discper ?? 0.00,
    //                 'created_at' => $this->currenttime,
    //                 'u_name' => Auth::user()->u_name,
    //                 'u_ae' => 'a',
    //             ];

    //             $dob = $request->input('birthdate');
    //             $age = Carbon::parse($dob)->age;

    //             $guestproft = [
    //                 'propertyid' => $this->propertyid,
    //                 'docid' => $docid,
    //                 'folio_no' => '0',
    //                 'created_at' => $this->currenttime,
    //                 'u_name' => Auth::user()->u_name,
    //                 'u_ae' => 'a',
    //                 'complimentry' => '',
    //                 'guestcode' => $guestprof,
    //                 'name' => $request->input('customername'),
    //                 'state_code' => $citydata->state ?? '',
    //                 'country_code' => $citydata->country ?? '',
    //                 'add1' => $request->input('address') ?? '',
    //                 'add2' => '',
    //                 'city' => $citycode ?? '',
    //                 'type' => $countrydata->Type ?? '',
    //                 'mobile_no' => $request->input('phoneno'),
    //                 'email_id' => '',
    //                 'nationality' => $countrydata->nationality ?? '',
    //                 'anniversary' => $request->input('anniversary') ?? null,
    //                 'guest_status' => '',
    //                 'comments1' => '',
    //                 'comments2' => '',
    //                 'comments3' => '',
    //                 'city_name' => $citydata->cityname ?? '',
    //                 'state_name' => $statedata->name ?? '',
    //                 'country_name' => $countrydata->name ?? '',
    //                 'gender' => '',
    //                 'marital_status' => $request->input('anniversary') != '' ? 'Married' : 'Single',
    //                 'zip_code' => $citydata->zipcode ?? '',
    //                 'con_prefix' => '',
    //                 'dob' => $dob ?? null,
    //                 'age' => $age ?? '',
    //                 'pic_path' => '',
    //                 'id_proof' => '',
    //                 'idproof_no' => '',
    //                 'issuingcitycode' => '',
    //                 'issuingcityname' => '',
    //                 'issuingcountrycode' => '',
    //                 'issuingcountryname' => '',
    //                 'expiryDate' => null,
    //                 'vipStatus' => '',
    //                 'paymentMethod' => '',
    //                 'billingAccount' => '',
    //                 'idpic_path' => '',
    //                 'm_prof' => $guestprof,
    //                 'father_name' => '',
    //                 'likes' => $request->input('like') ?? '',
    //                 'dislikes' => $request->input('dislike') ?? '',
    //                 'fom' => 0,
    //                 'pos' => 1,
    //             ];
    //             GuestReward::insert($guestreward);
    //             GuestProf::insert($guestproft);
    //         }

    //         $sale1 = [
    //             'propertyid' => $this->propertyid,
    //             'docid' => $docid,
    //             'vno' => $start_srl_no,
    //             'vtype' => $vtype,
    //             'vdate' => $this->ncurdate,
    //             'vtime' => date('H:i:s'),
    //             'vprefix' => $vprefix,
    //             'restcode' => $restcode,
    //             'party' => $request->input('company') ?? '',
    //             'roomno' => $roomno,
    //             'roomcat' => $roommast->room_cat,
    //             'roomtype' => $roommast->type,
    //             'foliono' => $roomdata->folioNo ?? '',
    //             'sno1' => $roomdata->sno1 ?? 1,
    //             'total' => $totalamt,
    //             'nontaxable' => $nontaxable ?? 0.00,
    //             'taxable' => $totalamt - ($discamt + $nontaxable) ?? 0.00,
    //             'discper' => $discper ?? 0.00,
    //             'discamt' => $discamt ?? 0.00,
    //             'servicecharge' => 0.00,
    //             'addamt' => 0.00,
    //             'dedamt' => 0.00,
    //             'roundoff' => $roundoff ?? 0.00,
    //             'netamt' => $netamount,
    //             'remark' => '',
    //             'waiter' => $request->input('waiter') ?? '',
    //             'kotno' => $uniquevno,
    //             'tokenno' => 0,
    //             'delflag' => 'N',
    //             'guaratt' => $request->input('pax'),
    //             'printed' => '',
    //             'deliveredyn' => '',
    //             'custname' => '',
    //             'phoneno' => '',
    //             'add' => '',
    //             'city' => '',
    //             'cashrecd' => 0.00,
    //             'folionodocid' => $roomdata->docid ?? '',
    //             'au_name' => '',
    //             'acreated_at' => null,
    //             'discremark' => '',
    //             'sgst' => $sgst ?? 0.00,
    //             'cgst' => $cgst ?? 0.00,
    //             'igst' => $igst ?? 0.00,
    //             'created_at' => $this->currenttime,
    //             'u_name' => Auth::user()->u_name,
    //             'u_ae' => 'a',
    //         ];

    //         $chkroomserv = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $restcode)->first();
    //         if (strtolower($chkroomserv->rest_type) == 'room service') {

    //             $paycode1 = 'ROOM' . $this->propertyid;
    //             $revdata1 = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $paycode1)->first();

    //             $paycharge1 = [
    //                 'propertyid' => $this->propertyid,
    //                 'docid' => $docid,
    //                 'vno' => $start_srl_no,
    //                 'vtype' => $vtype,
    //                 'comp_code' => $request->input('company'),
    //                 'sno' => 1,
    //                 'sno1' => $roomdata->sno1,
    //                 'msno1' => $msno1,
    //                 'vdate' => $this->ncurdate,
    //                 'vtime' => date('H:i:s'),
    //                 'vprefix' => $vprefix,
    //                 'paycode' => $paycode1,
    //                 'comments' => '(' . $depart->short_name . ')' . ' BILL NO.- ' . $start_srl_no,
    //                 'paytype' => $revdata1->pay_type,
    //                 'roomcat' => 'REST',
    //                 'restcode' => $restcode,
    //                 'roomno' => $roomno,
    //                 'amtcr' => $netamount,
    //                 'roomtype' => 'RO',
    //                 'foliono' => 0,
    //                 'billamount' => $netamount,
    //                 'taxcondamt' => 0,
    //                 'created_at' => $this->currenttime,
    //                 'u_name' => Auth::user()->u_name,
    //                 'u_ae' => 'a',
    //             ];

    //             $paycode2 = 'TOUT' . $this->propertyid;
    //             $paycharge2 = [
    //                 'propertyid' => $this->propertyid,
    //                 'docid' => $docid,
    //                 'vno' => $start_srl_no,
    //                 'vtype' => $vtype,
    //                 'comp_code' => $request->input('company'),
    //                 'sno' => 2,
    //                 'sno1' => $roomdata->sno1 ?? '',
    //                 'msno1' => $msno1,
    //                 'vdate' => $this->ncurdate,
    //                 'vtime' => date('H:i:s'),
    //                 'vprefix' => $vprefix,
    //                 'paycode' => $paycode2,
    //                 'comments' => '(' . $depart->short_name . ')' . ' BILL NO.- ' . $start_srl_no,
    //                 'paytype' => $revdata1->pay_type,
    //                 'folionodocid' => $roomdata->docid ?? '',
    //                 'restcode' => $restcode,
    //                 'roomno' => $roomno,
    //                 'roomcat' => $roommast->room_cat,
    //                 'amtdr' => $netamount,
    //                 'roomtype' => $roommast->type,
    //                 'foliono' => $roomdata->folioNo ?? '',
    //                 'guestprof' => $roomdata->guestprof ?? '',
    //                 'billamount' => $netamount,
    //                 'taxcondamt' => 0,
    //                 'created_at' => $this->currenttime,
    //                 'u_name' => Auth::user()->u_name,
    //                 'u_ae' => 'a',
    //             ];
    //             DB::table($table5)->insert($paycharge1);
    //             DB::table($table5)->insert($paycharge2);
    //         }

    //         $sale2 = [];

    //         for ($i = 1; $i <= $totalitems; $i++) {
    //             $sno = $request->input('itemnumber' . $i);

    //             $taxratepos = $request->input('taxrate_sum' . $i);
    //             $tax_rate = $request->input('tax_rate' . $i);
    //             $itemqty = $request->input('quantity' . $i);
    //             $itemratetmp = $request->input('taxedrate' . $i);
    //             $itemrate = floor($itemratetmp * 100) / 100;
    //             $itemtruerate = $request->input('rate' . $i);
    //             $itemcamttmp = $request->input('fixamount' . $i);
    //             $itemcamt = floor($itemcamttmp * 100) / 100;
    //             $taxamt = ($itemcamt * $taxratepos) / 100;
    //             $itemamt = $itemqty * $itemrate;
    //             if ($discper != 0) {
    //                 $discamt = $itemamt * $discper / 100;
    //             } else {
    //                 $discamt = 0.00;
    //             }

    //             $itemmast = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->first();
    //             if ($taxratepos != 0) {
    //                 $itemcat = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->value('ItemCatCode');
    //                 $cattax = DB::table('itemcatmast')->where('propertyid', $this->propertyid)->where('Code', $itemcat)->value('TaxStru');
    //                 $fetchtaxes = DB::table('taxstru')->where('propertyid', $this->propertyid)->where('str_code', $cattax)->get();
    //                 foreach ($fetchtaxes as $taxesrow) {
    //                     $titemqty = $request->input('quantity' . $i);
    //                     $titemratetmp = $request->input('taxedrate' . $i);
    //                     $titemrate = floor($titemratetmp * 100) / 100;
    //                     $titemamt = $titemqty * $titemrate;
    //                     $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
    //                     if ($discper != 0) {
    //                         $titemamt = $titemamt - ($titemamt * $discper) / 100;
    //                         $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
    //                     }
    //                     $sale2[] = [
    //                         'propertyid' => $this->propertyid,
    //                         'docid' => $docid,
    //                         'sno' => $sno,
    //                         'sno1' => $taxesrow->sno,
    //                         'vno' => $start_srl_no,
    //                         'vtype' => $vtype,
    //                         'vdate' => $this->ncurdate,
    //                         'vtime' => date('H:i:s'),
    //                         'vprefix' => $vprefix,
    //                         'restcode' => $restcode,
    //                         'taxcode' => $taxesrow->tax_code,
    //                         'basevalue' => $titemamt,
    //                         'taxper' => $taxesrow->rate,
    //                         'taxamt' => $ttaxamt,
    //                         'delflag' => 'N',
    //                         'created_at' => $this->currenttime,
    //                         'u_name' => Auth::user()->u_name,
    //                         'u_ae' => 'a',
    //                     ];
    //                 }
    //             }

    //             if ($itemmast->RestCode == '' || empty($itemmast->RestCode) || is_null($itemmast->RestCode)) {
    //                 DB::rollBack();
    //                 return 'Unable To Submit Sale Bill Please Try Again!';
    //             }

    //             $stock = [
    //                 'propertyid' => $this->propertyid,
    //                 'docid' => $docid,
    //                 'sno' => $sno,
    //                 'vno' => $start_srl_no,
    //                 'vtype' => $vtype,
    //                 'vdate' => $this->ncurdate,
    //                 'vtime' => date('H:i:s'),
    //                 'vprefix' => $vprefix,
    //                 'restcode' => $restcode,
    //                 'roomno' => $roomno,
    //                 'roomcat' => $roommast->room_cat,
    //                 'roomtype' => $roommast->type,
    //                 'contradocid' => '',
    //                 'contrasno' => '',
    //                 'item' => $request->input('itemcode' . $i),
    //                 'qtyiss' => $request->input('quantity' . $i),
    //                 'qtyrec' => '0',
    //                 'unit' => $itemmast->Unit ?? '',
    //                 'rate' => $itemrate,
    //                 'amount' => $itemcamt,
    //                 'taxper' => $tax_rate,
    //                 'taxamt' => $taxamt,
    //                 'discper' => $discper ?? 0.00,
    //                 'discamt' => $discamt,
    //                 'description' => $request->input('description' . $i) ?? '',
    //                 'voidyn' => '',
    //                 'remarks' => '',
    //                 'kotdocid' => $request->input('kotsdocid' . $i) ?? $request->input('kotdocidfix') ?? '',
    //                 'kotsno' => $request->input('kotsno' . $i) ?? '0',
    //                 'total' => $netamount ?? '0',
    //                 'discapp' => $request->input('discapp' . $i) ?? '',
    //                 'roundoff' => $roundyn,
    //                 'departcode' => $itemmast->Kitchen ?? '',
    //                 'godowncode' => $itemmast->Kitchen ?? '',
    //                 'chalqty' => '',
    //                 'recdqty' => '',
    //                 'accqty' => '',
    //                 'rejqty' => '',
    //                 'recdunit' => '',
    //                 'specification' => '',
    //                 'itemrate' => $itemtruerate,
    //                 'delflag' => 'N',
    //                 'landval' => 0.00,
    //                 'convratio' => 0.00,
    //                 'indentdocid' => '',
    //                 'indentsno' => 0,
    //                 'issqty' => 0.00,
    //                 'issueunit' => '',
    //                 'freesno' => 0,
    //                 'schemecode' => '',
    //                 'seqno' => 0,
    //                 'company' => '',
    //                 'itemrestcode' => $itemmast->RestCode ?? '',
    //                 'schrgapp' => '',
    //                 'schrgper' => 0.00,
    //                 'schrgamt' => 0.00,
    //                 'refdocid' => '',
    //                 'created_at' => $this->currenttime,
    //                 'u_name' => Auth::user()->u_name,
    //                 'u_ae' => 'a',
    //             ];

    //             $kotupdate = [
    //                 'updated_at' => $this->currenttime,
    //                 'u_ae' => 'e',
    //             ];

    //             foreach ($sale2 as $row) {
    //                 $existingRow = DB::table($table2)->where('sno', $row['sno'])->where('sno1', $row['sno1'])->where('docid', $row['docid'])->where('propertyid', $row['propertyid'])->first();
    //                 if (!$existingRow) {
    //                     DB::table($table2)->insert($row);
    //                 }
    //             }

    //             DB::table($table3)->insert($stock);
    //             $docidInput = $request->input('kotdocid');

    //             $docidsArray = array_filter(explode(',', $docidInput));

    //             $kotupdate = [
    //                 'pending' => 'N',
    //                 'contradocid' => $docid,
    //                 'contrsno' => $start_srl_no,
    //             ];

    //             DB::table('kot')
    //                 ->where('propertyid', $this->propertyid)
    //                 ->whereIn('docid', $docidsArray)
    //                 ->update($kotupdate);
    //         }
    //         DB::table($table1)->insert($sale1);

    //         $sale1print = Sale1::select(
    //             'sale1.vno',
    //             'sale1.vdate',
    //             'sale1.waiter',
    //             'sale1.roomno',
    //             'sale1.restcode',
    //             'sale1.vtype',
    //             'sale1.kotno',
    //             'depart.name as departname',
    //             'depart.nature as departnature',
    //             'server_mast.name as waitername'
    //         )
    //             ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
    //             ->leftJoin('depart', 'depart.dcode', '=', 'sale1.restcode')
    //             ->where('sale1.docid', $docid)->where('sale1.propertyid', $this->propertyid)->where('sale1.restcode', $restcode)->first();

    //         $printsetup = PrintingSetup::where('propertyid', $this->propertyid)->where('restcode', $restcode)->where('module', 'POS')->first();
    //         $printdata = [
    //             'docid' => $docid,
    //             'roomno' => $sale1print->roomno,
    //             'vdate' => $sale1print->vdate,
    //             'vtype' => $sale1print->vtype,
    //             'waiter' => $sale1print->waitername,
    //             'billno' => $sale1print->vno,
    //             'departname' => $sale1print->departname,
    //             'kotno' => $sale1print->kotno,
    //             'outletcode' => $sale1print->restcode,
    //             'departnature' => $sale1print->departnature,
    //             'printsetup' => $printsetup,
    //             'printdescription' => $printsetup->description ?? '',

    //             'phoneno' => $request->input('phoneno') ?? '',
    //             'customername' => $request->input('customername') ?? '',
    //             'address' => $request->input('address') ?? '',
    //             'customercity' => $request->input('customercity') ?? '',
    //             'company' => $request->input('company') ?? '',
    //         ];

    //         VoucherPrefix::where('propertyid', $this->propertyid)
    //             ->where('v_type', $vtype)
    //             ->where('prefix', $vprefix)
    //             ->increment('start_srl_no');

    //         DB::commit();

    //         if ($request->ajax() || $request->expectsJson() || $request->input('isajax') == 1) {
    //             return response()->json([
    //                 'status' => 'success',
    //                 'message' => 'Bill Saved Successfully!',
    //                 'printdata' => $printdata,
    //             ], 200);
    //         }

    //         $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

    //         if ($wpenv != null) {
    //             if (
    //                 $wpenv->checkyn == 'Y' &&
    //                 $wpenv->billmsgguest != '' &&
    //                 $wpenv->billmsgguestarray != '' &&
    //                 $wpenv->billmsgguesttemplate != '' &&
    //                 $wpnum != ''
    //             ) {
    //                 $billmsgguestarray = json_decode($wpenv->billmsgguestarray, true);
    //                 $msgdata = [];

    //                 foreach ($billmsgguestarray as $row) {
    //                     [$colname, $tbl] = $row;

    //                     if (endsWith($colname, 'sum')) {
    //                         $value = DB::table($tbl)
    //                             ->where('propertyid', $this->propertyid)
    //                             ->where('docid', $docid)
    //                             ->sum(removeSuffixIfExists($colname, 'sum'));
    //                     } elseif ($res = splitByJoin($colname)) {
    //                         $left = $res['left'];   // e.g., 'item'
    //                         $right = $res['right']; // e.g., 'itemmast'

    //                         $value = DB::table($tbl)
    //                             ->leftJoin($right, function ($join) use ($tbl, $right, $left) {
    //                                 $join->on("$tbl.$left", '=', "$right.Code")
    //                                     ->whereColumn("$right.RestCode", "$tbl.restcode");
    //                             })
    //                             ->where("$tbl.propertyid", $this->propertyid)
    //                             ->where("$tbl.docid", $docid)
    //                             ->pluck("$right.Name")
    //                             ->implode(', ');
    //                     } else {
    //                         $value = DB::table($tbl)
    //                             ->where('propertyid', $this->propertyid)
    //                             ->where('docid', $docid)
    //                             ->value($colname);
    //                     }

    //                     $msgdata[] = $value;
    //                 }

    //                 $whatsapp = new WhatsappSend();
    //                 $whatsapp->MuzzTech($msgdata, $wpnum, 'Bill Message', 'billmsgguesttemplate');
    //             }
    //         }

    //         if ($request->ajax() || $request->wantsJson() || $request->input('isajax') == 1) {
    //             return response()->json([
    //                 'status'    => 'success',
    //                 'message'   => 'Bill Saved Successfully!',
    //                 'printdata' => $printdata,
    //             ]);
    //         }

    //         $billprinty = $request->input('billprinty');

    //         if ($billprinty == 'Y' && empty($posroomno)) {
    //             $page = 'salebillentry';
    //             return view('property.layouts.prints', [
    //                 'printdata' => $printdata,
    //                 'page' => $page
    //             ]);
    //         } else if ($billprinty == '' && !empty($posroomno)) {
    //             return redirect('displaytable?dcode=' . $request->input('fixrestcode'))->with('infosale', [
    //                 'title' => 'Success',
    //                 'text' => 'Sale Bill Submitted Successfully Do You Want To Print Bill ?',
    //                 'printdata' => json_encode($printdata)
    //             ]);
    //         } else if (empty($posroomno) && empty($billprinty)) {
    //             return back()->with('infosale', [
    //                 'title' => 'Success',
    //                 'text' => 'Sale Bill Submitted Successfully Do You Want To Print Bill ?',
    //                 'printdata' => json_encode($printdata)
    //             ]);
    //         } else {
    //             $page = 'displaytable';
    //             return view('property.layouts.prints', [
    //                 'printdata' => $printdata,
    //                 'page' => $page
    //             ]);
    //         }
    //     } catch (Exception $e) {
    //         DB::rollBack();
    //         if ($request->ajax() || $request->wantsJson()) {
    //             return response()->json([
    //                 'status'  => 'error',
    //                 'message' => 'Unknown Error: ' . $e->getMessage() . ' on line ' . $e->getLine(),
    //             ], 500);
    //         }
    //         return back()->with('error', 'Unknown Error: ' . $e->getMessage() . ' on line ' . $e->getLine());
    //     }
    // }
    public function salebillprint(Request $request)
    {
        return view('property.prints.pos.salebillprint');
    }

    public function salebillprinttype2(Request $request)
    {
        return view('property.prints.pos.salebillprinttype2');
    }

    public function salebillprint2(Request $request)
    {
        return view('property.prints.pos.salebillprint2');
    }

    public function salebillprint2type2(Request $request)
    {
        return view('property.prints.pos.salebillprint2type2');
    }

    public function getcompdetail(Request $request)
    {
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $menuhelp = MenuHelp::where('propertyid', $this->propertyid)->get();
        $data = [
            'comp' => $comp,
            'menuhelp' => $menuhelp
        ];
        return json_encode($data);
    }

    public function salebillprintitems(Request $request)
    {
        $billno = $request->input('billno');
        $vtype = $request->input('vtype');
        $vdate = $request->vdate;

        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('vno', $billno)->where('vdate', $vdate)->where('vtype', $vtype)->first();
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

        $suntran = Suntran::select(
            'suntran.*',
            'depart.dis_print',
            'depart.outlet_title',
            'depart.company_title',
            'sundrytype.nature as sundrynature'
        )
            ->leftJoin('depart', 'depart.dcode', '=', 'suntran.restcode')
            ->leftJoin('sundrytype', function ($join) use ($sale1) {
                $join->on('sundrytype.sundry_code', '=', 'suntran.suncode')
                    // ->on('sundrytype.sno', '=', 'suntran.sno')
                    ->where('sundrytype.vtype', '=', $sale1->restcode);
            })
            ->where('suntran.propertyid', $this->propertyid)
            ->where('suntran.docid', $sale1->docid)
            ->get();

        $waitername = ServerMast::where('propertyid', $this->propertyid)->where('scode', $sale1->waiter)->first();

        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $sale1->restcode)->first();

        $tbro = $depart->nature == 'Outlet' ? 'Table No.' : 'Room No.';

        $payments = Paycharge::where('propertyid', $this->propertyid)
            ->where('docid', $sale1->docid)
            ->where('vtype', $sale1->vtype)
            ->where('amtcr', '!=', 0)
            ->get();

        $paymentsummary = $payments
            ->groupBy(fn($item) => $item->paytype)
            ->map(fn($group) => (float) $group->sum('amtcr'))
            ->toArray();

        $paymentsummary = !empty($paymentsummary)
            ? "Payments: " . implode(', ', array_map(
                fn($key, $value) => "$key: $value",
                array_keys($paymentsummary),
                $paymentsummary
            ))
            : '';

        $data = [
            'items' => $items,
            'taxes' => $taxes,
            'sale1' => $sale1,
            'suntran' =>  $suntran,
            'waitername' => $waitername,
            'tbro' => $tbro,
            'depart' => $depart,
            'paymentsummary' => $paymentsummary
        ];

        return json_encode($data);
    }

    public function getoutletdetails(Request $request)
    {
        $dcode = $request->input('dcode');
        $data = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();

        return json_encode($data);
    }

    public function getpaymentqr(Request $request)
    {
        $sale1docid = $request->input('sale1docid');

        $sale1 = Sale1::where('propertyid', $this->propertyid)
            ->where('docid', $sale1docid)
            ->first();

        if (!$sale1) {
            return response()->json(['error' => 'Invalid sale record'], 404);
        }

        $depart = Depart::where('propertyid', $this->propertyid)
            ->where('dcode', $sale1->restcode)
            ->first();

        if (!$depart || !$depart->paymentqr) {
            return response()->json(['error' => 'Payment QR not available'], 404);
        }

        $netamount = $sale1->netamt;
        $upi = "upi://pay?pa={$depart->paymentqr}&pn={$depart->name}&am={$netamount}&cu=INR";

        $compdata = companydata();

        $logoPath = null;

        if (!empty($compdata->logo) && Storage::disk('public')->exists('admin/property_logo/' . $compdata->logo)) {
            $logoPath = storage_path('app/public/admin/property_logo/' . $compdata->logo);
        } else {
            $logoPath = public_path('assets/img/logo.png');
        }

        $builder = Builder::create()
            ->writer(new PngWriter())
            ->data($upi)
            ->encoding(new Encoding('UTF-8'))
            ->errorCorrectionLevel(ErrorCorrectionLevel::High)
            ->size(300)
            ->margin(10)
            ->roundBlockSizeMode(RoundBlockSizeMode::Margin);

        if ($logoPath && file_exists($logoPath)) {
            $builder = $builder
                ->logoPath($logoPath)
                ->logoResizeToWidth(80)
                ->logoPunchoutBackground(true);
        }

        $result = $builder->build();

        return response($result->getString())
            ->header('Content-Type', $result->getMimeType());
    }

    public function salebillupdate(Request $request)
    {
        $validate = $request->validate([
            'pax' => 'required',
        ]);

        if (!$request->input('itemcode1')) {
            return back()->with('error', 'You can not delete all the items!');
        }

        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $currentYear = date('Y', strtotime($ncurdate));
        $nextYear = $currentYear + 1;
        if (date('m') < 4) {
            $date_from = ($previousYear = $currentYear - 1) . '-04-01';
            $date_to = $currentYear . '-03-31';
            $currfinancial = $previousYear;
        } else {
            $date_from = $currentYear . '-04-01';
            $date_to = $nextYear . '-03-31';
            $currfinancial = $currentYear;
        }

        $vtype = $request->input('vtype');
        $vno = $request->input('vnostock');
        $stockdocid = $request->input('stockdocid');
        $restcode = $request->input('fixrestcode');
        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $restcode)->first();

        $enviro_pos = EnviroPos::where('propertyid', $this->propertyid)->first();

        if ($enviro_pos->possalebillauditlog == 'Y') {
            $sale1log = new Sale1log();
            $oldsale1data = Sale1::where('propertyid', $this->propertyid)
                ->where('docid', $stockdocid)
                ->where('restcode', $restcode)
                ->first();

            if ($oldsale1data) {
                $sale1log->fill($oldsale1data->toArray());
                $sale1log->save();
            }
            $oldsale2data = Sale2::where('propertyid', $this->propertyid)
                ->where('docid', $stockdocid)
                ->where('restcode', $restcode)
                ->get();

            if ($oldsale2data->isNotEmpty()) {
                foreach ($oldsale2data as $sale2record) {
                    $sale2log = new Sale2log();
                    $sale2log->fill($sale2record->toArray());
                    $sale2log->save();
                }
            }

            $oldstockdata = Stock::where('propertyid', $this->propertyid)
                ->where('docid', $stockdocid)
                ->where('restcode', $restcode)
                ->get();

            if ($oldstockdata->isNotEmpty()) {
                foreach ($oldstockdata as $oldstockrow) {
                    $stocklog = new Stocklog();
                    $stocklog->fill($oldstockrow->toArray());
                    $stocklog->save();
                }
            }

            $oldsuntrandata = Suntran::where('propertyid', $this->propertyid)
                ->where('docid', $stockdocid)
                ->where('restcode', $restcode)
                ->get();


            if ($oldsuntrandata->isNotEmpty()) {
                foreach ($oldsuntrandata as $oldsuntranrow) {
                    $suntranlog = new Suntranlog();
                    $suntranlog->fill($oldsuntranrow->toArray());
                    $suntranlog->save();
                }
            }
        }

        $roomno = $request->input('roomno') ?? $request->input('previousroomno');
        $roomdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('roomno', $roomno)->whereNull('type')->first();
        $totalamt = $request->input('totalamt');
        $discper = $request->input('discountfix');
        $discper = floatval(str_replace(',', '', number_format($discper, 2)));
        $discamt = $request->input('discountsundry');
        $taxable = $request->input('taxableamt');
        $servicehargeamt = $request->input('servicechargeamount') ?? '0.00';
        $servicechargefix = $request->input('servicechargefix') ?? '0.00';
        $netamount = $request->input('netamount');
        $cgst = $request->input('cgstamount');
        $sgst = $request->input('sgstamount');
        $igst = $request->input('igstamt');
        $nontaxable = $totalamt - $taxable;
        $inputr = $request->input('roundoffamount');
        $cleanedInput = str_replace('.', '', $inputr);

        if (strlen($cleanedInput) > 1) {
            $floatValue = substr($cleanedInput, 0, 1) . '.' . substr($cleanedInput, 1);
        } else {
            $floatValue = $cleanedInput;
        }

        $roundoff = number_format((float)$floatValue, 2, '.', '');

        $sundrycount = $request->input('sundrycount');

        for ($i = 1; $i <= $sundrycount; $i++) {
            $fstype = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $restcode)->where('sno', $i)->first();
            $svalue = $fstype->svalue;
            $baseamount = 0.00;
            $amount = 0.00;
            if ($fstype->disp_name == 'Discount') {
                $amount = $discamt;
                $svalue = $discper;
            }
            if ($fstype->disp_name == 'Service Charge') {
                $amount = $servicehargeamt;
                $svalue = $servicechargefix;
            }
            if ($fstype->disp_name == 'Amount') {
                $amount = $totalamt;
            }
            if ($fstype->disp_name == 'CGST') {
                $amount = $cgst;
            }
            if ($fstype->disp_name == 'SGST') {
                $amount = $sgst;
            }
            if ($fstype->disp_name == 'Round Off') {
                $amount = $roundoff;
                $baseamount = $roundoff + $netamount;
            }
            if ($fstype->disp_name == 'Net Amount') {
                $amount = $netamount;
            }

            $suntrandata = [
                'propertyid' => $this->propertyid,
                'docid' => $stockdocid,
                'svalue' => $svalue,
                'amount' => $amount,
                'baseamount' => $baseamount,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ];

            Suntran::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->where('sno', $i)->update($suntrandata);
        }

        if ($roundoff > 0) {
            $roundyn = 'Y';
        } else {
            $roundyn = 'N';
        }

        $sale1 = [
            'total' => $totalamt,
            'nontaxable' => $nontaxable ?? 0.00,
            'taxable' => $totalamt - ($discamt + $nontaxable) ?? 0.00,
            'party' => $request->input('company') ?? '',
            'discper' => $discper ?? 0.00,
            'discamt' => $discamt ?? 0.00,
            'roundoff' => $roundoff ?? 0.00,
            'netamt' => $netamount,
            'waiter' => $request->input('waiter'),
            'guaratt' => $request->input('pax'),
            'sgst' => $sgst ?? 0.00,
            'cgst' => $cgst ?? 0.00,
            'igst' => $igst ?? 0.00,
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
        ];

        Sale1::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->update($sale1);

        $guestprof = Guestprof::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->first();

        if ($guestprof) {
            $citycode = $request->input('customercity');
            $citydata = '';
            $statedata = '';
            $countrydata = '';
            if (!empty($citycode)) {
                $citydata = Cities::where('propertyid', $this->propertyid)->where('city_code', $citycode)->first();
                $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $citydata->state)->first();
                $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $citydata->country)->first();
            }

            $guestreward = [
                'total' => $totalamt,
                'billamt' => $netamount,
                'mobileno' => $request->input('phoneno'),
                'discamt' => $discamt ?? 0.00,
                'discper' => $discper ?? 0.00,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ];

            $dob = $request->input('birthdate');
            $age = Carbon::parse($dob)->age;

            $guestproft = [
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'name' => $request->input('customername'),
                'state_code' => $citydata->state ?? '',
                'country_code' => $citydata->country ?? '',
                'add1' => $request->input('address') ?? '',
                'city' => $citycode ?? '',
                'type' => $countrydata->Type ?? '',
                'mobile_no' => $request->input('phoneno'),
                'nationality' => $countrydata->nationality ?? '',
                'anniversary' => $request->input('anniversary') ?? null,
                'city_name' => $citydata->cityname ?? '',
                'state_name' => $statedata->name ?? '',
                'country_name' => $countrydata->name ?? '',
                'marital_status' => $request->input('anniversary') != '' ? 'Married' : 'Single',
                'zip_code' => $citydata->zipcode ?? '',
                'dob' => $dob ?? null,
                'age' => $age ?? '',
                'm_prof' => $guestprof,
                'likes' => $request->input('like') ?? '',
                'dislikes' => $request->input('dislike') ?? '',
            ];
            GuestReward::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->update($guestreward);
            GuestProf::where('propertyid', $this->propertyid)->where('guestcode', $guestprof->guestcode)->update($guestproft);
        } else if ($request->input('phoneno') != '') {
            $findexist = GuestProf::where('propertyid', $this->propertyid)->where('mobile_no', $request->input('phoneno'))->first();

            if ($findexist != null) {
                $guestprof = $findexist->guestcode;
            } else {
                $maxguestprof = GuestProf::where('propertyid', $this->propertyid)->max('guestcode');
                $guestprof = ($maxguestprof === null) ? $this->propertyid . '10001' : ($guestprof = $this->propertyid . substr($maxguestprof, $this->ptlngth) + 1);
            }

            $citycode = $request->input('customercity');
            $citydata = '';
            $statedata = '';
            $countrydata = '';
            if (!empty($citycode)) {
                $citydata = Cities::where('propertyid', $this->propertyid)->where('city_code', $citycode)->first();
                $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $citydata->state)->first();
                $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $citydata->country)->first();
            }

            $guestreward = [
                'propertyid' => $this->propertyid,
                'docid' => $stockdocid,
                'custcode' => $guestprof,
                'vdate' => $ncurdate,
                'vtime' => date('H:i:s'),
                'restcode' => $restcode,
                'departname' => $depart->name,
                'billno' => $vno,
                'total' => $totalamt,
                'billamt' => $netamount,
                'rewardpoint' => 0.00,
                'redeempoint' => 0.00,
                'mobileno' => $request->input('phoneno'),
                'discamt' => $discamt ?? 0.00,
                'schemecode' => '',
                'saleupto' => 0.00,
                'rppointonamt' => 0.00,
                'rewardvalue' => 0.00,
                'reedemvalue' => 0.00,
                'regid' => '',
                'discper' => $discper ?? 0.00,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ];

            $dob = $request->input('birthdate');
            $age = Carbon::parse($dob)->age;

            $guestproft = [
                'propertyid' => $this->propertyid,
                'docid' => $stockdocid,
                'folio_no' => $vno,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'complimentry' => '',
                'guestcode' => $guestprof,
                'name' => $request->input('customername'),
                'state_code' => $citydata->state ?? '',
                'country_code' => $citydata->country ?? '',
                'add1' => $request->input('address') ?? '',
                'add2' => '',
                'city' => $citycode ?? '',
                'type' => $countrydata->Type ?? '',
                'mobile_no' => $request->input('phoneno'),
                'email_id' => '',
                'nationality' => $countrydata->nationality ?? '',
                'anniversary' => $request->input('anniversary') ?? null,
                'guest_status' => '',
                'comments1' => '',
                'comments2' => '',
                'comments3' => '',
                'city_name' => $citydata->cityname ?? '',
                'state_name' => $statedata->name ?? '',
                'country_name' => $countrydata->name ?? '',
                'gender' => '',
                'marital_status' => $request->input('anniversary') != '' ? 'Married' : 'Single',
                'zip_code' => $citydata->zipcode ?? '',
                'con_prefix' => '',
                'dob' => $dob ?? null,
                'age' => $age ?? '',
                'pic_path' => '',
                'id_proof' => '',
                'idproof_no' => '',
                'issuingcitycode' => '',
                'issuingcityname' => '',
                'issuingcountrycode' => '',
                'issuingcountryname' => '',
                'expiryDate' => null,
                'vipStatus' => '',
                'paymentMethod' => '',
                'billingAccount' => '',
                'idpic_path' => '',
                'm_prof' => $guestprof,
                'father_name' => '',
                'likes' => $request->input('like') ?? '',
                'dislikes' => $request->input('dislike') ?? '',
                'fom' => 0,
                'pos' => 1,
            ];
            GuestReward::insert($guestreward);
            GuestProf::insert($guestproft);
        }

        $chkroomserv = Depart::where('propertyid', $this->propertyid)->where('dcode', $restcode)->first();
        if (strtolower($chkroomserv->rest_type) == 'room service') {
            $paycode1 = 'ROOM' . $this->propertyid;
            $revdata1 = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $paycode1)->first();
            $paycharge1 = [
                'propertyid' => $this->propertyid,
                'docid' => $stockdocid,
                'vno' => $vno,
                'vtype' => $vtype,
                'comp_code' => $request->input('company'),
                'sno' => 1,
                'sno1' => 1,
                'vdate' => $ncurdate,
                'vtime' => date('H:i:s'),
                'vprefix' => $currfinancial,
                'paycode' => $paycode1,
                'comments' => '(RS) BILL NO.- ' . $vno,
                'paytype' => $revdata1->pay_type,
                'roomcat' => 'REST',
                'restcode' => $restcode,
                'roomno' => $roomno,
                'amtcr' => $netamount,
                'roomtype' => 'RO',
                'foliono' => 0,
                'billamount' => $netamount,
                'taxcondamt' => 0,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ];
            $paycode2 = 'TOUT' . $this->propertyid;
            $revdata2 = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $paycode2)->first();
            $paycharge2 = [
                'propertyid' => $this->propertyid,
                'docid' => $stockdocid,
                'vno' => $vno,
                'vtype' => $vtype,
                'comp_code' => $request->input('company'),
                'sno' => 2,
                'sno1' => 1,
                'vdate' => $ncurdate,
                'vtime' => date('H:i:s'),
                'vprefix' => $currfinancial,
                'paycode' => $paycode2,
                'comments' => '(RS) BILL NO.- ' . $vno,
                'paytype' => $revdata2->pay_type,
                'folionodocid' => $roomdata->docid,
                'restcode' => $restcode,
                'roomno' => $roomno,
                'roomcat' => $roomdata->roomcat,
                'amtdr' => $netamount,
                'roomtype' => $roomdata->roomtype,
                'foliono' => $roomdata->folioNo,
                'guestprof' => $roomdata->guestprof,
                'billamount' => $netamount,
                'taxcondamt' => 0,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ];
            // Paycharge::where('docid', $stockdocid)->where('sno', 1)->update($paycharge1);
            // Paycharge::where('docid', $stockdocid)->where('sno', 2)->update($paycharge2);
        }

        // Sale1::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->update($sale1);

        $prefixes = ['itemcode', 'itemnumber', 'itemname', 'discapp', 'description', 'quantity', 'rate', 'amount', 'fixamount', 'tax_rate'];
        $count = 0;
        $sale2 = [];
        $totalitemsum = $request->input('totalitemsum');
        $countitemstock = Stock::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->count();
        // echo $totalitemsum . ' - ' . $countitemstock;
        // exit;
        if ($totalitemsum == $countitemstock) {
            foreach ($request->input() as $key => $value) {
                if (strpos($key, 'itemcode') === 0) {
                    $count++;
                }
            }

            for ($i = 0; $i <= $count; $i++) {
                $data = [];
                $isEmptyRow = true;

                foreach ($prefixes as $prefix) {
                    $sno = $request->input('itemnumber' . $i);
                    $value = $request->input($prefix . $i);
                    $taxratepos = $request->input('taxrate_sum' . $i);
                    $tax_rate = $request->input('tax_rate' . $i);
                    $itemqty = $request->input('quantity' . $i);
                    $itemratetmp = $request->input('taxedrate' . $i);
                    $itemrate = floor($itemratetmp * 100) / 100;
                    $itemtruerate = $request->input('rate' . $i);
                    $itemcamttmp = $request->input('fixamount' . $i);
                    $itemcamt = floor($itemcamttmp * 100) / 100;
                    $taxamt = ($itemcamt * $taxratepos) / 100;
                    $itemamt = $itemqty * $itemrate;
                    if ($discper != 0) {
                        $discamt = $itemamt * $discper / 100;
                    } else {
                        $discamt = 0.00;
                    }

                    $itemmast = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->first();

                    if ($taxratepos != 0) {
                        $itemcat = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->value('ItemCatCode');
                        $cattax = DB::table('itemcatmast')->where('propertyid', $this->propertyid)->where('Code', $itemcat)->value('TaxStru');
                        $fetchtaxes = DB::table('taxstru')->where('propertyid', $this->propertyid)->where('str_code', $cattax)->get();
                        foreach ($fetchtaxes as $taxesrow) {
                            $titemqty = $request->input('quantity' . $i);
                            $titemrate = $request->input('rate' . $i);
                            $titemamt = $titemqty * $titemrate;
                            $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            if ($discper != 0) {
                                $titemamt = $titemamt - ($titemamt * $discper) / 100;
                                $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            }
                            $sale2[] = [
                                'sno' => $sno,
                                'sno1' => $taxesrow->sno,
                                'basevalue' => $titemamt,
                                'taxper' => $taxesrow->rate,
                                'taxamt' => $ttaxamt,
                                'updated_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'e',
                            ];
                        }
                    }

                    $stock = [
                        'item' => $request->input('itemcode' . $i),
                        'qtyiss' => $request->input('quantity' . $i),
                        'unit' => $itemmast->Unit ?? '',
                        'rate' => $itemrate,
                        'amount' => $itemcamt,
                        'taxper' => $tax_rate,
                        'taxamt' => $taxamt,
                        'discper' => $discper ?? 0.00,
                        'discamt' => $discamt,
                        'description' => $request->input('description' . $i) ?? '',
                        'total' => $netamount,
                        'discapp' => $request->input('discapp' . $i) ?? '',
                        'roundoff' => $roundyn,
                        'departcode' => $itemmast->Kitchen ?? '',
                        'godowncode' => $itemmast->Kitchen ?? '',
                        'itemrate' => $itemtruerate,
                        'itemrestcode' => $itemmast->RestCode ?? '',
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (!empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (!$isEmptyRow) {
                    foreach ($sale2 as $row) {
                        Sale2::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->where('sno', $row['sno'])->where('sno1', $row['sno1'])->update($row);
                    }
                    // echo $i . ' - ' . $request->input('itemcode' . $i) . ' - ' . $request->input('description' . $i) . '</br>';
                    Stock::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->where('sno', $sno)->where('item', $request->input('itemcode' . $i))->update($stock);
                }
            }
        } elseif ($totalitemsum > $countitemstock) {
            $sale2innew = [];
            foreach ($request->input() as $key => $value) {
                if (strpos($key, 'itemcode') === 0) {
                    $count++;
                }
            }
            for ($j = 1; $j <= $count; $j++) {
                $data = [];
                $isEmptyRow = true;

                foreach ($prefixes as $prefix) {
                    $sno = $request->input('itemnumber' . $j);
                    $value = $request->input($prefix . $j);
                    $taxratepos = $request->input('taxrate_sum' . $j);
                    $itemqty = $request->input('quantity' . $j);
                    $itemrate = $request->input('rate' . $j);
                    $itemcamt = $request->input('fixamount' . $j);
                    $taxamt = ($itemcamt * $taxratepos) / 100;
                    $itemamt = $itemqty * $itemrate;
                    if ($discper != 0) {
                        $discamt = $itemamt * $discper / 100;
                    } else {
                        $discamt = 0.00;
                    }

                    $itemmast = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $j))->first();

                    if ($taxratepos != 0) {
                        $itemcat = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $j))->value('ItemCatCode');
                        $cattax = DB::table('itemcatmast')->where('propertyid', $this->propertyid)->where('Code', $itemcat)->value('TaxStru');
                        $fetchtaxes = DB::table('taxstru')->where('propertyid', $this->propertyid)->where('str_code', $cattax)->get();
                        foreach ($fetchtaxes as $taxesrow) {
                            $titemqty = $request->input('quantity' . $j);
                            $titemrate = $request->input('rate' . $j);
                            $titemamt = $titemqty * $titemrate;
                            $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            if ($discper != 0) {
                                $titemamt = $titemamt - ($titemamt * $discper) / 100;
                                $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            }
                            $sale2[] = [
                                'sno' => $sno,
                                'sno1' => $taxesrow->sno,
                                'basevalue' => $titemamt,
                                'taxper' => $taxesrow->rate,
                                'taxamt' => $ttaxamt,
                                'updated_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'e',
                            ];
                        }
                    }

                    $stock = [
                        'item' => $request->input('itemcode' . $j),
                        'qtyiss' => $request->input('quantity' . $j),
                        'unit' => $itemmast->Unit ?? '',
                        'rate' => $request->input('rate' . $j),
                        'amount' => $itemamt,
                        'taxper' => $taxratepos,
                        'taxamt' => $taxamt,
                        'discper' => $discper ?? 0.00,
                        'discamt' => $discamt,
                        'description' => $request->input('description' . $j) ?? '',
                        'total' => $netamount,
                        'discapp' => $request->input('discapp' . $j) ?? '',
                        'roundoff' => $roundyn,
                        'departcode' => $itemmast->RestCode ?? '',
                        'godowncode' => $itemmast->Kitchen ?? '',
                        'itemrate' => $itemrate,
                        'itemrestcode' => $itemmast->RestCode ?? '',
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (!empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (!$isEmptyRow) {
                    foreach ($sale2 as $row) {
                        Sale2::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->where('sno', $row['sno'])->where('sno1', $row['sno1'])->update($row);
                    }
                    Stock::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->where('sno', $sno)->update($stock);
                }
            }
            // Insering New Item
            $count2 = Stock::where('docid', $stockdocid)->where('propertyid', $this->propertyid)->count();
            $newcount = $count2 + 1;

            $k = 1;
            for ($i = $newcount; $i <= $totalitemsum; $i++) {
                echo 'coming in loop </br>';
                $data = [];
                $isEmptyRow = true;
                // $sno = $request->input('itemnumber' . $i);
                $maxsno = Stock::where('docid', $stockdocid)->where('propertyid', $this->propertyid)->max('sno');
                foreach ($prefixes as $prefix) {
                    $sno = $maxsno + $k;
                    $k = $maxsno + 1;
                    // echo $k . '</br>';
                    $value = $request->input($prefix . $i);
                    $taxratepos = $request->input('taxrate_sum' . $i);
                    $itemqty = $request->input('quantity' . $i);
                    $itemrate = $request->input('rate' . $i);
                    $itemcamt = $request->input('fixamount' . $i);
                    $taxamt = ($itemcamt * $taxratepos) / 100;
                    $itemamt = $itemqty * $itemrate;
                    if ($discper != 0) {
                        $discamt = $itemamt * $discper / 100;
                    } else {
                        $discamt = 0.00;
                    }

                    $itemmast = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->first();

                    if ($taxratepos != 0) {
                        $itemcat = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->value('ItemCatCode');
                        $cattax = DB::table('itemcatmast')->where('propertyid', $this->propertyid)->where('Code', $itemcat)->value('TaxStru');
                        $fetchtaxes = DB::table('taxstru')->where('propertyid', $this->propertyid)->where('str_code', $cattax)->get();
                        foreach ($fetchtaxes as $taxesrow) {
                            $titemqty = $request->input('quantity' . $i);
                            $titemrate = $request->input('rate' . $i);
                            $titemamt = $titemqty * $titemrate;
                            $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            if ($discper != 0) {
                                $titemamt = $titemamt - ($titemamt * $discper) / 100;
                                $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            }
                            $sale2innew[] = [
                                'propertyid' => $this->propertyid,
                                'docid' => $stockdocid,
                                'sno' => $sno,
                                'sno1' => $taxesrow->sno,
                                'vno' => $vno,
                                'vtype' => $vtype,
                                'vdate' => $ncurdate,
                                'vtime' => date('H:i:s'),
                                'vprefix' => $currfinancial,
                                'restcode' => $restcode,
                                'taxcode' => $taxesrow->tax_code,
                                'basevalue' => $titemamt,
                                'taxper' => $taxesrow->rate,
                                'taxamt' => $ttaxamt,
                                'delflag' => 'N',
                                'created_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'a',
                            ];
                        }
                    }

                    $stock = [
                        'propertyid' => $this->propertyid,
                        'docid' => $stockdocid,
                        'sno' => $k,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $currfinancial,
                        'restcode' => $restcode,
                        'roomno' => $roomno,
                        'roomcat' => $roomdata->roomcat ?? 'TABLE',
                        'roomtype' => $roomdata->roomtype ?? 'TB',
                        'contradocid' => '',
                        'contrasno' => '',
                        'item' => $request->input('itemcode' . $i),
                        'qtyiss' => $request->input('quantity' . $i),
                        'qtyrec' => '0',
                        'unit' => $itemmast->Unit ?? '',
                        'rate' => $request->input('rate' . $i),
                        'amount' => $itemamt,
                        'taxper' => $taxratepos,
                        'taxamt' => $taxamt,
                        'discper' => $discper ?? 0.00,
                        'discamt' => $discamt,
                        'description' => $request->input('description' . $i) ?? '',
                        'voidyn' => '',
                        'remarks' => '',
                        'kotdocid' => $request->input('kotdocid') ?? '',
                        'kotsno' => $request->input('kotsno' . $i) ?? '0',
                        'total' => $netamount,
                        'discapp' => $request->input('discapp' . $i) ?? '',
                        'roundoff' => $roundyn,
                        'departcode' => $itemmast->Kitchen ?? '',
                        'godowncode' => $itemmast->Kitchen ?? '',
                        'chalqty' => '',
                        'recdqty' => '',
                        'accqty' => '',
                        'rejqty' => '',
                        'recdunit' => '',
                        'specification' => '',
                        'itemrate' => $itemrate,
                        'delflag' => 'N',
                        'landval' => 0.00,
                        'convratio' => 0.00,
                        'indentdocid' => '',
                        'indentsno' => 0,
                        'issqty' => 0.00,
                        'issueunit' => '',
                        'freesno' => 0,
                        'schemecode' => '',
                        'seqno' => 0,
                        'company' => '',
                        'itemrestcode' => $itemmast->RestCode ?? '',
                        'schrgapp' => '',
                        'schrgper' => 0.00,
                        'schrgamt' => 0.00,
                        'refdocid' => '',
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    if (!empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (!$isEmptyRow) {
                    foreach ($sale2innew as $row) {
                        $existingRow = Sale2::where('sno', $row['sno'])->where('sno1', $row['sno1'])->where('docid', $row['docid'])->where('propertyid', $row['propertyid'])->first();
                        if (!$existingRow) {
                            Sale2::insert($row);
                        }
                    }
                    Stock::insert($stock);
                }
                // exit;
            }
        } elseif ($totalitemsum < $countitemstock) {
            $sale2innew = [];
            foreach ($request->input() as $key => $value) {
                if (strpos($key, 'itemcode') === 0) {
                    $count++;
                }
            }
            $delid = [];
            for ($j = 1; $j <= $count; $j++) {
                $data = [];
                $isEmptyRow = true;

                foreach ($prefixes as $prefix) {
                    $sno = $request->input('itemnumber' . $j);
                    $delid[] = $sno;
                    $value = $request->input($prefix . $j);
                    $taxratepos = $request->input('taxrate_sum' . $j);
                    $itemqty = $request->input('quantity' . $j);
                    $itemrate = $request->input('rate' . $j);
                    $itemcamt = $request->input('fixamount' . $j);
                    $taxamt = ($itemcamt * $taxratepos) / 100;
                    $itemamt = $itemqty * $itemrate;
                    if ($discper != 0) {
                        $discamt = $itemamt * $discper / 100;
                    } else {
                        $discamt = 0.00;
                    }

                    $itemmast = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->first();

                    if ($taxratepos != 0) {
                        $itemcat = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->value('ItemCatCode');
                        $cattax = DB::table('itemcatmast')->where('propertyid', $this->propertyid)->where('Code', $itemcat)->value('TaxStru');
                        $fetchtaxes = DB::table('taxstru')->where('propertyid', $this->propertyid)->where('str_code', $cattax)->get();
                        foreach ($fetchtaxes as $taxesrow) {
                            $titemqty = $request->input('quantity' . $j);
                            $titemrate = $request->input('rate' . $j);
                            $titemamt = $titemqty * $titemrate;
                            $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            if ($discper != 0) {
                                $titemamt = $titemamt - ($titemamt * $discper) / 100;
                                $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            }
                            $sale2[] = [
                                'sno' => $sno,
                                'sno1' => $taxesrow->sno,
                                'basevalue' => $titemamt,
                                'taxper' => $taxesrow->rate,
                                'taxamt' => $ttaxamt,
                                'updated_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'e',
                            ];
                        }
                    }

                    $stock = [
                        'item' => $request->input('itemcode' . $j),
                        'qtyiss' => $request->input('quantity' . $j),
                        'unit' => $itemmast->Unit ?? '',
                        'rate' => $request->input('rate' . $j),
                        'amount' => $itemamt,
                        'taxper' => $taxratepos,
                        'taxamt' => $taxamt,
                        'discper' => $discper ?? 0.00,
                        'discamt' => $discamt,
                        'description' => $request->input('description' . $j) ?? '',
                        'total' => $netamount,
                        'discapp' => $request->input('discapp' . $j) ?? '',
                        'roundoff' => $roundyn,
                        'departcode' => $itemmast->Kitchen ?? '',
                        'godowncode' => $itemmast->Kitchen ?? '',
                        'itemrate' => $itemrate,
                        'itemrestcode' => $itemmast->RestCode ?? '',
                        'updated_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'e',
                    ];

                    if (!empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (!$isEmptyRow) {
                    foreach ($sale2 as $row) {
                        Sale2::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->where('sno', $row['sno'])->where('sno1', $row['sno1'])->update($row);
                    }
                    Stock::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->where('sno', $sno)->update($stock);
                }
            }
            Stock::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->whereNotIn('sno', $delid)->delete();
            Sale2::where('propertyid', $this->propertyid)->where('docid', $stockdocid)->whereNotIn('sno', $delid)->delete();

            $count2 = $countitemstock + 1;
            for ($i = $count2; $i <= $totalitemsum; $i++) {
                $data = [];
                $isEmptyRow = true;

                foreach ($prefixes as $prefix) {
                    $sno = $request->input('itemnumber' . $i);
                    $value = $request->input($prefix . $i);
                    $taxratepos = $request->input('taxrate_sum' . $i);
                    $itemqty = $request->input('quantity' . $i);
                    $itemrate = $request->input('rate' . $i);
                    $itemcamt = $request->input('fixamount' . $i);
                    $taxamt = ($itemcamt * $taxratepos) / 100;
                    $itemamt = $itemqty * $itemrate;
                    if ($discper != 0) {
                        $discamt = $itemamt * $discper / 100;
                    } else {
                        $discamt = 0.00;
                    }

                    $itemmast = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->first();

                    if ($taxratepos != 0) {
                        $itemcat = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('itemcode' . $i))->value('ItemCatCode');
                        $cattax = DB::table('itemcatmast')->where('propertyid', $this->propertyid)->where('Code', $itemcat)->value('TaxStru');
                        $fetchtaxes = DB::table('taxstru')->where('propertyid', $this->propertyid)->where('str_code', $cattax)->get();
                        foreach ($fetchtaxes as $taxesrow) {
                            $titemqty = $request->input('quantity' . $i);
                            $titemrate = $request->input('rate' . $i);
                            $titemamt = $titemqty * $titemrate;
                            $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            if ($discper != 0) {
                                $titemamt = $titemamt - ($titemamt * $discper) / 100;
                                $ttaxamt = ($titemamt * $taxesrow->rate) / 100;
                            }
                            $sale2innew[] = [
                                'propertyid' => $this->propertyid,
                                'docid' => $stockdocid,
                                'sno' => $sno,
                                'sno1' => $taxesrow->sno,
                                'vno' => $vno,
                                'vtype' => $vtype,
                                'vdate' => $ncurdate,
                                'vtime' => date('H:i:s'),
                                'vprefix' => $currfinancial,
                                'restcode' => $restcode,
                                'taxcode' => $taxesrow->tax_code,
                                'basevalue' => $titemamt,
                                'taxper' => $taxesrow->rate,
                                'taxamt' => $ttaxamt,
                                'delflag' => 'N',
                                'created_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'a',
                            ];
                        }
                    }

                    $stock = [
                        'propertyid' => $this->propertyid,
                        'docid' => $stockdocid,
                        'sno' => $sno,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $currfinancial,
                        'restcode' => $restcode,
                        'roomno' => $roomno,
                        'roomcat' => $roomdata->roomcat ?? '',
                        'roomtype' => $roomdata->roomtype ?? '',
                        'contradocid' => '',
                        'contrasno' => '',
                        'item' => $request->input('itemcode' . $i),
                        'qtyiss' => $request->input('quantity' . $i),
                        'qtyrec' => '0',
                        'unit' => $itemmast->Unit ?? '',
                        'rate' => $request->input('rate' . $i),
                        'amount' => $itemamt,
                        'taxper' => $taxratepos,
                        'taxamt' => $taxamt,
                        'discper' => $discper ?? 0.00,
                        'discamt' => $discamt,
                        'description' => $request->input('description' . $i) ?? '',
                        'voidyn' => '',
                        'remarks' => '',
                        'kotdocid' => $request->input('kotdocid'),
                        'kotsno' => $request->input('kotsno' . $i) ?? '0',
                        'total' => $netamount,
                        'discapp' => $request->input('discapp' . $i) ?? '',
                        'roundoff' => $roundyn,
                        'departcode' => $itemmast->Kitchen ?? '',
                        'godowncode' => $itemmast->Kitchen ?? '',
                        'chalqty' => '',
                        'recdqty' => '',
                        'accqty' => '',
                        'rejqty' => '',
                        'recdunit' => '',
                        'specification' => '',
                        'itemrate' => $itemrate,
                        'delflag' => 'N',
                        'landval' => 0.00,
                        'convratio' => 0.00,
                        'indentdocid' => '',
                        'indentsno' => 0,
                        'issqty' => 0.00,
                        'issueunit' => '',
                        'freesno' => 0,
                        'schemecode' => '',
                        'seqno' => 0,
                        'company' => '',
                        'itemrestcode' => $itemmast->RestCode ?? '',
                        'schrgapp' => '',
                        'schrgper' => 0.00,
                        'schrgamt' => 0.00,
                        'refdocid' => '',
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    if (!empty($value)) {
                        $data[$prefix] = $value;
                        $isEmptyRow = false;
                    }
                }

                if (!$isEmptyRow) {
                    foreach ($sale2innew as $row) {
                        $existingRow = Sale2::where('sno', $row['sno'])->where('sno1', $row['sno1'])->where('docid', $row['docid'])->where('propertyid', $row['propertyid'])->first();
                        if (!$existingRow) {
                            Sale2::insert($row);
                        }
                    }
                    Stock::insert($stock);
                }
            }
        }

        return back()->with('success', 'Sale Bill Updated Successfully!');
    }

    public function posparameter(Request $request)
    {
        $permission = revokeopen(121321);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = EnviroPos::where('propertyid', $this->propertyid)->first();
        $subgroup = SubGroup::where('propertyid', $this->propertyid)->groupBy('sub_code')->get();
        $revmast = Revmast::where('propertyid', $this->propertyid)->where('pay_type', 'Cash')->where('field_type', 'P')->where('nature', 'Cash')->get();
        $billrows = Depart::select('printersetup.restcode', 'printersetup.module', 'printersetup.description', 'printersetup.printerpath', 'depart.*')
            ->leftJoin('printersetup', 'printersetup.restcode', '=', 'depart.dcode')
            ->where('depart.propertyid', $this->propertyid)
            ->where(function ($query) {
                $query->where('depart.rest_type', 'FOM')
                    ->orWhere('depart.pos', 'Y');
            })->get();

        $kotrows = Depart::select('printersetup.restcode', 'printersetup.module', 'printersetup.description', 'printersetup.printerpath', 'depart.*')
            ->leftJoin('printersetup', 'printersetup.restcode', '=', 'depart.dcode')
            ->where('depart.propertyid', $this->propertyid)
            ->where('depart.pos', 'Y')->where('depart.kot_yn', 'Y')->get();
        $ledgerdatamain = DB::table('subgroup')->where('propertyid', $this->propertyid)->get();
        $roomchrgdueac = DB::table('subgroup')->where('propertyid', $this->propertyid)
            ->where('sub_code', fomparameter()->roomchrgdueac)->pluck('name')
            ->first();
        return view('property.posparameter', [
            'data' => $data,
            'subgroup' => $subgroup,
            'revmast' => $revmast,
            'billrows' => $billrows,
            'kotrows' => $kotrows,
            'ledgerdatamain' => $ledgerdatamain,
            'roomchrgdueac' => $roomchrgdueac
        ]);
    }

    public function posgeneralparam(Request $request)
    {

        $permission = revokeopen(121114);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $billrows = Depart::leftJoin('printersetup', function ($join) {
            $join->on('printersetup.restcode', '=', 'depart.dcode')
                ->where('printersetup.mark', '=', 'B')
                ->where('printersetup.propertyid', $this->propertyid);
        })
            ->where('depart.propertyid', $this->propertyid)
            ->where(function ($query) {
                $query->where('depart.rest_type', 'FOM')
                    ->orWhere('depart.pos', 'Y');
            })
            ->select(
                'printersetup.restcode',
                'printersetup.module',
                'printersetup.description',
                'printersetup.printerpath',
                'depart.*'
            )
            ->get();

        // return $billrows;

        $kotrows = Depart::select(
            'printersetup.restcode',
            'printersetup.module',
            'printersetup.description',
            'printersetup.printerpath',
            'printersetup.kitchen',
            'depart.*'
        )
            ->leftJoin('printersetup', function ($join) {
                $join->on('printersetup.restcode', '=', 'depart.dcode')
                    ->where('printersetup.mark', '=', 'K');
            })
            ->where('depart.propertyid', $this->propertyid)
            ->where('depart.pos', 'Y')
            ->where('depart.kot_yn', 'Y')
            ->get();
        $kitchen = Depart::where('propertyid', $this->propertyid)->where('nature', 'Kitchen')->get();
        return view('property.posgeneralparam', [
            'billrows' => $billrows,
            'kotrows' => $kotrows,
            'kitchen' => $kitchen
        ]);
    }

    public function posgeneralsubmit(Request $request)
    {

        $permission = revokeopen(121321);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'kotatnightaudit' => 'required',
            'posbillatnightaudit' => 'required',
            'possalebillauditlog' => 'required',
            'modifyentryinbackdate' => 'required',
            'extradiscountallow' => 'required',
            'waitingtime' => 'required'
        ]);

        try {
            $data = [
                'kotatnightaudit' => $request->input('kotatnightaudit'),
                'posbillatnightaudit' => $request->input('posbillatnightaudit'),
                'possalebillauditlog' => $request->input('possalebillauditlog'),
                'modifyentryinbackdate' => $request->input('modifyentryinbackdate'),
                'waitingtime' => $request->input('waitingtime'),
                'extradiscountallow' => $request->extradiscountallow,
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];

            EnviroPos::where('propertyid', $this->propertyid)->update($data);
        } catch (Exception $th) {
            return back()->with('error', 'Unable To Update General Parameter: ' . $th->getMessage());
        }

        return back()->with('success', 'General Parameter Updated Successfully');
    }

    public function posoutletsubmit(Request $request)
    {
        $permission = revokeopen(121321);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'cashpaytype' => 'required',
            'roundofftype' => 'required',
            'reportingonsalebill' => 'required',
            'postposdiscseperately' => 'required',
            'salebillfont' => 'required',
            'taxsummaryonsalebill' => 'required',
            'paymentqrdisplay' => 'required',
            'itemwisediscountprint' => 'required',
        ]);

        try {
            $data = [
                'cashpaytype' => $request->input('cashpaytype'),
                'roundofftype' => $request->input('roundofftype'),
                'reportingonsalebill' => $request->input('reportingonsalebill'),
                'postposdiscseperately' => $request->input('postposdiscseperately'),
                'paymentqrdisplay' => $request->input('paymentqrdisplay'),
                'salebillfont' => $request->input('salebillfont'),
                'taxsummaryonsalebill' => $request->input('taxsummaryonsalebill'),
                'itemwisediscountprint' => $request->input('itemwisediscountprint'),
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];

            EnviroPos::where('propertyid', $this->propertyid)->update($data);
        } catch (\Exception $th) {
            return back()->with('error', 'Unable To Update Outlet Parameter: ' . $th->getMessage());
        }

        return back()->with('success', 'Outlet Parameter Updated Successfully');
    }

    public function poskotsubmit(Request $request)
    {
        $permission = revokeopen(121321);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'kotoutletselection' => 'required',
            'printeditkot' => 'required',
            'printkot' => 'required'
        ]);

        try {
            $data = [
                'printkot' => $request->input('printkot'),
                'printkotautoqr' => $request->input('printkotautoqr'),
                'displaymergedoutlet' => $request->input('displaymergedoutlet'),
                'kotoutletselection' => $request->input('kotoutletselection'),
                'printeditkot' => $request->input('printeditkot'),
                'nckot' => $request->input('nckot'),
                'kotheader1' => $request->input('kotheader1'),
                'kotheader2' => $request->input('kotheader2'),
                'kotheader3' => $request->input('kotheader3'),
                'kotheader4' => $request->input('kotheader4'),
                'printkotrate' => $request->input('printkotrate'),
                'system_based_printing' => $request->input('system_based_printing'),
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];

            EnviroPos::where('propertyid', $this->propertyid)->update($data);
        } catch (Exception $th) {
            return back()->with('error', 'Unable To Update KOT Parameter: ' . $th->getMessage());
        }

        return back()->with('success', 'KOT Parameter Updated Successfully');
    }

    public function posordersubmit(Request $request)
    {
        $permission = revokeopen(121321);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'bookingpartyac' => 'required',
        ]);

        try {
            $data = [
                'bookingpartyac' => $request->input('bookingpartyac'),
                'slipfooter1' => $request->input('slipfooter1'),
                'slipfooter2' => $request->input('slipfooter2'),
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];

            EnviroPos::where('propertyid', $this->propertyid)->update($data);
        } catch (\Exception $th) {
            return back()->with('error', 'Unable To Update Order Booking Parameter: ' . $th->getMessage());
        }

        return back()->with('success', 'Order Booking Parameter Updated Successfully');
    }

    public function pospostingparamstore(Request $request)
    {
        $permission = revokeopen(121321);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'roomchrgdueac' => 'required',
        ]);

        try {
            $data = [
                'roomchrgdueac' => $request->input('roomchrgdueac'),
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];

            EnviroFom::where('propertyid', $this->propertyid)->update($data);
        } catch (\Exception $th) {
            return back()->with('error', 'Unable To Update Room Charge Due Account Parameter: ' . $th->getMessage());
        }

        return back()->with('success', 'Room Charge Due Account Parameter Updated Successfully');
    }

    public function fetchsingledcode(Request $request)
    {
        $dcode = $request->input('dcode');
        $data = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();
        return json_encode($data);
    }

    public function posbillprintsubmit(Request $request)
    {

        $totalrows = $request->input('btotalrows');
        try {
            PrintingSetup::where('mark', 'B')->where('propertyid', $this->propertyid)->delete();
            for ($i = 1; $i <= $totalrows; $i++) {
                $data = new PrintingSetup();
                $data->propertyid = $this->propertyid;
                $data->module =  $request->input('bmodule' . $i);
                $data->restcode =  $request->input('bdcode' . $i);
                $data->description =  $request->input('bdescription' . $i) ?? '';
                $data->printerpath =  $request->input('bprintpath' . $i) ?? '';
                $data->created_at =  $this->currenttime;
                $data->u_name =  Auth::user()->u_name;
                $data->u_ae = 'a';
                $data->mark = 'B';
                $data->save();
            }
        } catch (\Exception $e) {
            return back()->with('error', 'Unable To Update Bill Print Parameter: ' . $e->getMessage());
        }

        return back()->with('success', 'Bill Printing Parameter Updated Successfully');
    }

    public function poskotprintsubmit(Request $request)
    {
        $permission = revokeopen(121114);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $totalrows = $request->input('ktotalrows');
        try {
            PrintingSetup::where('mark', 'K')->where('propertyid', $this->propertyid)->delete();
            for ($i = 1; $i <= $totalrows; $i++) {

                $data = new PrintingSetup();
                $data->propertyid = $this->propertyid;
                $data->module =  $request->input('kmodule' . $i);
                $data->kitchen = $request->input('kitchen' . $i);
                $data->restcode =  $request->input('kdcode' . $i);
                $data->description =  $request->input('kdescription' . $i) ?? '';
                $data->printerpath =  $request->input('kprintpath' . $i) ?? '';
                $data->created_at =  $this->currenttime;
                $data->u_name =  Auth::user()->u_name;
                $data->u_ae =  'a';
                $data->mark =  'K';
                $data->save();
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable To Update Kot Print Parameter: ' . $e->getMessage());
        }

        return back()->with('success', 'KOT Printing Parameter Updated Successfully');
    }

    public function salebillsettle(Request $request)
    {
        $res_code = $request->query('rest_code');
        $vno = $request->query('vno');
        $sale1docid = $request->query('sale1docid');


        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $sale1docid)->first();

        $megedchk = !empty($sale1->mergedwith) ? true : false;

        $mergedwith = !empty($sale1->mergedwith) ? explode(',', $sale1->mergedwith) : [$sale1->docid];

        $dcode = $sale1->restcode;
        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();
        $paycharge1 = Paycharge::select('paycharge.settledate', 'paycharge.sno', 'paycharge.sno1', 'paycharge.billamount', 'paycharge.roomno', 'paycharge.restcode', 'paycharge.amtcr', 'revmast.rev_code', 'revmast.name', 'paycharge.amtdr', 'paycharge.vdate')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->whereNot('paycharge.amtcr', 0.00)
            ->whereIn('paycharge.docid', $mergedwith)->first();
        $checked = 'false';
        if (!empty($sale1->folionodocid) && $sale1->folionodocid != 0) {
            $checkroom = Paycharge::where('folionodocid', $sale1->folionodocid)->where('billno', '!=', '0')->first() ?? '';
        } else {
            $checkroom = '';
        }

        if ($checkroom) {
            $checked = 'true';
        }

        $paycharge2 = Paycharge::whereIn('paycharge.docid', $mergedwith)->where('propertyid', $this->propertyid)->orderBy('sno', 'ASC')->get();

        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $records = DB::table('depart_pay')
            ->select(
                'revmast.name',
                'revmast.rev_code',
                'revmast.nature',
                'revmast.field_type',
                'revmast.flag_type',
                'depart_pay.pay_code'
            )
            ->leftJoin('revmast', 'depart_pay.pay_code', '=', 'revmast.rev_code')
            ->where('revmast.field_type', 'P')
            ->where('depart_pay.rest_code', $res_code)
            ->where('depart_pay.propertyid', $this->propertyid)
            ->get();


        $roomno = RoomOcc::leftJoin('paycharge', function ($join) {
            $join->on('paycharge.sno1', '=', 'roomocc.sno1')
                ->on('paycharge.folionodocid', '=', 'roomocc.docid')
                ->on('paycharge.propertyid', '=', 'roomocc.propertyid');
        })
            ->where('roomocc.propertyid', $this->propertyid)
            ->where(function ($query) {
                $query->where('paycharge.billno', 0)
                    ->orWhereNull('paycharge.billno');
            })
            ->whereNull('roomocc.type')
            ->groupBy('roomocc.roomno')
            ->orderBy('roomocc.roomno')
            ->select(
                'roomocc.roomno',
                'roomocc.name',
                'roomocc.folioNo'
            )
            ->get();

        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();

        $totalsalerow =  Sale1::where('propertyid', $this->propertyid)->whereIn('docid', $mergedwith)->get();

        $paidamt = Paycharge::where('propertyid', $this->propertyid)->whereIn('docid', $mergedwith)->whereNot('amtcr', 0.00)->sum('amtcr');
        $balance = $totalsalerow->sum('netamt') - $paidamt;

        $paidrows = Paycharge::select('paycharge.*', 'subgroup.name as companyname')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'paycharge.comp_code')
            ->where('paycharge.propertyid', $this->propertyid)
            ->whereIn('paycharge.docid', $mergedwith)->whereNot('paycharge.amtcr', 0.00)
            ->get();

        $otroomsettle = Paycharge::where('propertyid', $this->propertyid)
            ->whereIn('docid', $mergedwith)
            ->where('paycode', "TOUT$this->propertyid")
            ->first();

        // return $otroomsettle;


        // return $paidrows->sum('amtcr');

        return view('property.salebillsettle', [
            'vno' => $vno,
            'roomnos' => $roomno,
            'company' => $company,
            'paidamt' => $paidamt,
            'balance' => $balance,
            'companydata' => $companydata,
            'revdata' => $records,
            'paidrows' => $paidrows,
            'sale1' => $sale1,
            'totalsalerow' => $totalsalerow,
            'paycharge1' => $paycharge1,
            'paycharge2' => $paycharge2,
            'checkroom' => $checkroom,
            'checked' => $checked,
            'megedchk' => $megedchk,
            'otroomsettle' => $otroomsettle,
        ]);
    }

    public function nillsettle(Request $request)
    {
        $docid = $request->docid;
        $sno1 = $request->sno1;
        $sno = $request->sno;

        $uppaycharge = [
            'settledate' => $this->ncurdate,
            'updated_at' => $this->currenttime,
        ];
        $uproomocc = [
            'userchkoutdate' => $this->ncurdate,
            'chkoutuser' => Auth::user()->u_name,
            'type' => 'O',
            'chkoutdate' => $this->ncurdate,
            'chkouttime' => date('H:i'),
            'updated_at' => $this->currenttime,
        ];

        $rocc = Roomocc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $fbillno = Paycharge::where('folionodocid', $rocc->docid)->where('msno1', $rocc->sno1)->value('billno');
            Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $rocc->docid)->where('msno1', $rocc->sno1)
                ->update($uppaycharge);
            RoomOcc::where('propertyid', $this->propertyid)->where('docid', $rocc->docid)->update($uproomocc);
            GrpBookinDetail::where('ContraDocId', $docid)
                ->update(['chkoutyn' => 'Y', 'updated_at' => $this->currenttime, 'u_ae' => 'e']);
        } else {
            $fbillno = DB::table('paycharge')->where('folionodocid', $docid)->where('sno1', $sno1)->value('billno');
            DB::table('paycharge')->where('propertyid', $this->propertyid)->where('folionodocid', $docid)->where('sno1', $sno1)
                ->update($uppaycharge);
            DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $sno1)
                ->where('sno', $sno)->update($uproomocc);
            GrpBookinDetail::where('ContraDocId', $docid)->where('ContraSno', $sno1)
                ->update(['chkoutyn' => 'Y', 'updated_at' => $this->currenttime, 'u_ae' => 'e']);
        }

        return response()->json([
            'status' => true,
            'message' => 'Settlement Updated'
        ]);
    }

    public function salebillsettlesubmit(Request $request)
    {

        $sale1docid = $request->input('sale1docid');
        $rowcount = $request->input('rowcount');

        // return $sale1docid;

        if (!$sale1docid || !is_numeric($rowcount) || $rowcount < 1) {
            return back()->withErrors(['error' => 'Invalid sale1docid or rowcount']);
        }

        // return 'sagar';

        for ($i = 1; $i <= $rowcount; $i++) {
            $chargetype[] = $request->input('chargetype' . $i);
        }

        $string = ['ROOM SETTLEMENT', 'Room'];

        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $sale1docid)->first();
        $paycharge1row = Paycharge::select('paycharge.amtcr', 'paycharge.sno1', 'revmast.rev_code', 'revmast.name', 'paycharge.amtdr', 'paycharge.vdate')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->whereNot('paycharge.amtcr', 0.00)
            ->where('paycharge.docid', $sale1docid)->first();

        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $sale1->restcode)->first();
        $paycode1 = 'ROOM' . $this->propertyid;
        $netamount = $request->input('netamount');
        $revdata1 = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $paycode1)->first();
        $roomno = $request->input('roomno') ?? $request->input('fixroomno');

        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $sale1->vtype)
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->first();

        // $vprefix = $chkvpf->prefix;

        $mergedwith = !empty($sale1->mergedwith) ? explode(',', $sale1->mergedwith) : [$sale1->docid];

        $chkpaychargeexists = Paycharge::where('propertyid', $this->propertyid)->whereIn('docid', $mergedwith)->exists();
        if ($chkpaychargeexists) {
            $existpaycharge = 1;
            $vprefix = $sale1->vprefix;
        } else {
            $existpaycharge = 0;
            $vprefix = $chkvpf->prefix;
        }
        Paycharge::where('propertyid', $this->propertyid)->whereIn('docid', $mergedwith)->delete();
        $msno1 = 0;
        $roomoccdocid = $request->roomoccdocid;
        if ($roomoccdocid) {
            $roomdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $roomoccdocid)->where('roomno', $roomno)->first();
        } else {
            $roomdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('roomno', $roomno)->whereNull('type')->first();
        }
        if ($roomdata) {
            $rocc = RoomOcc::where('docid', $roomdata->docid)->where('leaderyn', 'Y')->first();
            if ($rocc) {
                $msno1 = $rocc->sno1;
            }
        }

        $result = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $sale1->folionodocid)
            ->where('roomno', $roomno)->whereNull('type')->first();

        if (array_intersect($string, $chargetype)) {
            $paycode2 = 'TOUT' . $this->propertyid;
            $vdate = $paycharge1row->vdate ?? $this->ncurdate;
            $paycharge2 = [
                'propertyid' => $this->propertyid,
                'docid' => $sale1docid,
                'vno' => $sale1->vno,
                'vtype' => $sale1->vtype,
                'sno' => 2,
                'sno1' => $roomdata->sno1 ?? '',
                'msno1' => $msno1,
                'vdate' => $vdate,
                'vtime' => date('H:i:s'),
                'vprefix' => $vprefix,
                'paycode' => $paycode2,
                'comments' => '(' . $depart->short_name . ')' . ' BILL NO.- ' . $sale1->vno,
                'paytype' => $revdata1->pay_type,
                'folionodocid' => $roomdata->docid,
                'restcode' => $sale1->restcode,
                'roomno' => $roomno,
                'roomcat' => $roomdata->roomcat,
                'amtdr' => $netamount,
                'roomtype' => $roomdata->roomtype,
                'foliono' => $roomdata->folioNo,
                'guestprof' => $roomdata->guestprof,
                'billamount' => $netamount,
                'taxcondamt' => 0,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ];
            DB::table('paycharge')->insert($paycharge2);
        }

        $mergedBills = [];
        if (!empty($sale1->mergedwith)) {
            $mergedwith = explode(',', $sale1->mergedwith);
            foreach ($mergedwith as $docid) {
                $sale1row = Sale1::where('propertyid', $this->propertyid)
                    ->where('docid', $docid)->first();
                if ($sale1row) {
                    $mergedBills[] = [
                        'docid' => $docid,
                        'sale' => $sale1row,
                        'remaining' => $sale1row->netamt,
                        'paycharge1' => Paycharge::select('paycharge.amtcr', 'paycharge.sno1', 'revmast.rev_code', 'revmast.name', 'paycharge.amtdr', 'paycharge.vdate')
                            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                            ->whereNot('paycharge.amtcr', 0.00)
                            ->where('paycharge.docid', $docid)->first()
                    ];
                }
            }
        } else {
            $mergedBills[] = [
                'docid' => $sale1->docid,
                'sale' => $sale1,
                'remaining' => $sale1->netamt,
                'paycharge1' => $paycharge1row
            ];
        }

        $snoCache = [];
        $insertRows = [];

        for ($paymentIndex = 1; $paymentIndex <= $rowcount; $paymentIndex++) {
            $paymentAmount = (float) $request->input('amtrow' . $paymentIndex);
            if ($paymentAmount <= 0) continue;

            $remainingPayment = $paymentAmount;

            foreach ($mergedBills as &$bill) {
                if ($remainingPayment <= 0) break;
                if ($bill['remaining'] <= 0) continue;

                $sale1row = $bill['sale'];
                $paycharge1 = $bill['paycharge1'];

                if (!isset($snoCache[$bill['docid']])) {
                    $snoCache[$bill['docid']] = Paycharge::where('propertyid', $this->propertyid)
                        ->where('docid', $bill['docid'])->max('sno') ?? 0;
                }
                $snoCache[$bill['docid']]++;

                $amountToApply = min($remainingPayment, $bill['remaining']);

                $bill['remaining'] -= $amountToApply;
                $remainingPayment -= $amountToApply;

                $paycode = $request->input('chargecode' . $paymentIndex);
                $paycodes = Revmast::where('propertyid', $sale1row->propertyid)
                    ->where('rev_code', $paycode)
                    ->first();
                $vdate = $paycharge1->vdate ?? $this->ncurdate;

                $insertRows[] = [
                    'propertyid'   => $sale1row->propertyid,
                    'docid'        => $sale1row->docid,
                    'vno'          => $sale1row->vno,
                    'vtype'        => $sale1row->vtype,
                    'sno'          => $snoCache[$bill['docid']],
                    'sno1'         => $result->sno1 ?? $sale1row->sno1,
                    'msno1'        => $msno1,
                    'chqno'        => $request->input('checkno') ?: $request->input('referencenoupi'),
                    'cardno'       => $request->input('crnumber'),
                    'cardholder'   => $request->input('holdername'),
                    'expdate'      => $request->input('expdatecr'),
                    'bookno'       => $request->input('batchno'),
                    'vdate'        => $vdate,
                    'vtime'        => date('H:i:s'),
                    'vprefix'      => $vprefix,
                    'comp_code'    => $request->input('compcode' . $paymentIndex) ?? '',
                    'paycode'      => $paycode,
                    'paytype'      => $paycodes->pay_type ?? '',
                    'comments'     => $request->input('chargenarration' . $paymentIndex),
                    'guestprof'    => $result->guestprof ?? '',
                    'roomno'       => $sale1row->roomno,
                    'amtcr'        => $amountToApply,
                    'roomtype'     => $result->roomtype ?? 'TB',
                    'roomcat'      => $result->roomcat ?? 'TABLE',
                    'foliono'      => 0,
                    'restcode'     => $sale1row->restcode,
                    'billamount'   => $sale1row->netamt,
                    'taxper'       => 0,
                    'onamt'        => 0.00,
                    'folionodocid' => '',
                    'taxcondamt'   => 0,
                    'taxstru'      => '',
                    'created_at'      => $this->currenttime,
                    'settledate'   => null,
                    'u_name'       => Auth::user()->u_name,
                    'u_ae'         => 'a',
                    'modeset'      => null,
                ];
            }
        }

        if (!empty($insertRows)) {
            DB::table('paycharge')->insert($insertRows);
        }

        $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

        if (!is_null($wpenv)) {

            if ($wpenv->checkyn == 'Y' && $wpenv->sendpdfcheckoutpos == 1) {
                $printData = buildPrintData($sale1docid);

                // return $printData;

                if ($printData) {
                    $timestamp = now()->format('Y-m-d_H-i-s');
                    $filename = 'SaleBill_' . '_' . $timestamp . '.pdf';
                    // return $filename;
                    // return view('property.prints.salebill_pdf', $printData);

                    try {
                        $pdf = Pdf::loadView('property.prints.salebill_pdf', $printData)
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

                        // return $pdf->download('salebill.pdf');
                        $pdfContent = $pdf->output();

                        $whatsapp = new WhatsappSend();
                        $whatsapp->sendPdfToApi($filename, $pdfContent, $sale1docid);
                    } catch (Exception $e) {
                        Log::error('PDF Generation Error: ' . $e->getMessage());
                        // return back()->with('error', 'Error generating PDF: ' . $e->getMessage());
                    }
                }
            }

            if (
                $wpenv->checkyn == 'Y' &&
                $wpenv->billmsgadmin != '' &&
                $wpenv->billmsgadminarray != '' &&
                $wpenv->billmsgadmintemplate != '' &&
                $wpenv->managementmob != ''
            ) {
                $billmsgadminarray = json_decode($wpenv->billmsgadminarray, true);

                $msgdata = [];
                foreach ($billmsgadminarray as $row) {
                    [$colname, $tbl] = $row;

                    if (endsWith($colname, 'sum')) {
                        $value = DB::table($tbl)
                            ->where('propertyid', $this->propertyid)
                            ->where('docid', $sale1docid)
                            ->sum(removeSuffixIfExists($colname, 'sum'));
                    } elseif ($res = splitByJoin($colname)) {
                        $left = $res['left'];
                        $right = $res['right'];

                        $value = DB::table($tbl)
                            ->leftJoin($right, function ($join) use ($tbl, $right, $left) {
                                $join->on("$tbl.$left", '=', "$right.Code")
                                    ->whereColumn("$right.RestCode", "$tbl.restcode");
                            })
                            ->where("$tbl.propertyid", $this->propertyid)
                            ->where("$tbl.docid", $sale1docid)
                            ->pluck("$right.Name")
                            ->implode(', ');
                    } else if ($tbl == 'paycharge') {
                        $value = DB::table($tbl)->where('propertyid', $this->propertyid)->where('restcode', $sale1->restcode)->where('docid', $sale1docid)->pluck($colname)
                            ->implode(', ');
                    } else {
                        $value = DB::table($tbl)->where('propertyid', $this->propertyid)->where('docid', $sale1docid)->value($colname);
                    }

                    $msgdata[] = $value;
                }

                $whatsapp = new WhatsappSend();
                $whatsapp->MuzzTech($msgdata, $wpenv->managementmob, 'Bill Message Admin', 'billmsgadmintemplate');
            }
        }

        return redirect('autorefreshmain');
    }

    public function departxhr(Request $request)
    {
        $dcode = $request->input('dcode');
        $name = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->value('name');
        return json_encode($name);
    }

    public function tablewisesale(Request $request)
    {
        $ncurdate = $this->ncurdate;

        $departs = DB::table('sale1 as S')
            ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
            ->where('S.propertyid', $this->propertyid)
            ->where('S.DELFLAG', 'N')
            ->select('D.dcode', 'D.name')
            ->groupBy('D.dcode', 'D.name')
            ->orderBy('D.name', 'ASC')
            ->get();

        return view('property.tablewisesale', [
            'fromdate' => $ncurdate,
            'departs' => $departs,
        ]);
    }

    public function tablewiserepfetch(Request $request)
    {
        $fromdate = $request->fromdate ?? date('Y-m-d');
        $todate   = $request->todate ?? $fromdate;

        $departcodes = $request->departcodes ?? [];
        if (!is_array($departcodes)) $departcodes = [$departcodes];

        if ($request->mode === 'tables') {

            if (empty($departcodes)) {
                return response()->json(['tables' => []]);
            }

            $tables = DB::table('sale1')
                ->where('propertyid', $this->propertyid)
                ->where('DELFLAG', 'N')
                ->whereBetween('vdate', [$fromdate, $todate])
                ->whereIn('restcode', $departcodes)
                ->select('roomno as tableno')
                ->groupBy('roomno')
                ->orderBy('roomno')
                ->get();

            return response()->json(['tables' => $tables]);
        }

        if ($request->mode === 'users') {

            if (empty($departcodes)) {
                return response()->json(['users' => []]);
            }

            $users = DB::table('sale1')
                ->where('propertyid', $this->propertyid)
                ->where('DELFLAG', 'N')
                ->whereBetween('vdate', [$fromdate, $todate])
                ->whereIn('restcode', $departcodes)
                ->select(
                    'u_name as userid',
                    'u_name as username'
                )
                ->groupBy('u_name')
                ->orderBy('u_name', 'asc')
                ->get();

            return response()->json(['users' => $users]);
        }

        $tablenos = $request->tablenos ?? [];
        if (!is_array($tablenos)) $tablenos = [$tablenos];

        if (empty($departcodes)) {
            return response()->json([]);
        }

        $query = DB::table('sale1 as S')
            ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
            ->select(
                'S.vdate',
                DB::raw('S.roomno as TABLENO'),
                DB::raw('(SUM(S.total) - SUM(IFNULL(S.dedamt,0))) as NetSale'),
                DB::raw('MAX(D.name) as DEPARTNAME'),
                DB::raw('SUM(IFNULL(S.guaratt,0)) as TotCVRS'),
                DB::raw('COUNT(S.vno) as TOTCHK')
            )
            ->where('S.propertyid', $this->propertyid)
            ->where('S.DELFLAG', 'N')
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.restcode', $departcodes);

        if (!empty($tablenos)) {
            $query->whereIn('S.roomno', $tablenos);
        }

        $data = $query
            ->groupBy('S.restcode', 'S.vdate', 'S.roomno')
            ->orderBy('S.vdate')
            ->get();

        return response()->json($data);
    }

    public function fetchEinvoiceData(Request $request)
    {
        $sale1docid = $request->input('sale1docid');

        $einvoicedata = EInvoiceBill::where('propertyid', $this->propertyid)
            ->where('docid', $sale1docid)
            ->where('cancelled', 'N')
            ->first();

        if ($einvoicedata) {
            return response()->json($einvoicedata);
        } else {
            return response()->json(null);
        }
    }
    public function servicedesk(Request $request)
    {
        $dcode = $request->query('dcode');

        $allowedOutletCodes = DB::table('menuhelp')
            ->where('propertyid', $this->propertyid)
            ->where('username', $this->username)
            ->where('opt1', 17)
            ->where('outletcode', '<>', '')
            ->pluck('outletcode')
            ->toArray();

        $outlets = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('rest_type', ['Outlet', 'ROOM SERVICE']);

        if (!empty($allowedOutletCodes)) {
            $outlets = $outlets->whereIn('dcode', $allowedOutletCodes);
        }

        $outlets = $outlets->orderBy('name', 'ASC')->get();

        if (empty($dcode) && $outlets->count() > 0) {
            $dcode = $outlets->first()->dcode;
        }

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        $restcodes = [$dcode];
        if ($departdata) {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')
                ->toArray();
            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        }

        // ✅ DEDUPE: distinct() + groupBy taaki table no. repeat na ho
        $tables = collect();
        if ($departdata) {
            $tables = RoomMast::select('rcode as id', 'rcode as table_number')
                ->where('propertyid', $this->propertyid)
                ->whereIn('rest_code', $restcodes)
                ->where('type', 'TB')
                ->groupBy('rcode')
                ->orderBy('rcode', 'ASC')
                ->get();
        }

        $categories = DB::table('itemgrp')
            ->select('code', 'name')
            ->where('property_id', $this->propertyid)
            ->whereIn('restcode', $restcodes)
            ->where('activeyn', 'Y')
            ->orderBy('name', 'ASC')
            ->get();

        $servermast = DB::table('server_mast')
            ->where('propertyid', $this->propertyid)
            ->where('activeYN', 'Y')
            ->get();

        $shortname = $departdata->short_name ?? '';
        $kot_no = DB::table('voucher_prefix')
            ->where('v_type', 'K' . $shortname)
            ->where('propertyid', $this->propertyid)
            ->max('start_srl_no') + 1;

        $sundrytype1 = DB::table('sundrytype')
            ->where('propertyid', $this->propertyid)
            ->where('vtype', $restcodes[0])
            ->orderBy('sno', 'ASC')
            ->get();

        $envpos = EnviroPos::where('propertyid', $this->propertyid)->first();
        $nctype = DB::table('nctype_mast')->where('propertyid', $this->propertyid)->get();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->orderBy('cityname', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')
            ->get();

        $sundrytypejson = $sundrytype1->map(function ($item) {
            return [
                'disp_name' => $item->disp_name,
                'nature'    => $item->nature,
                'sundry_code' => $item->sundry_code,
                'automanual' => $item->automanual,
            ];
        })->values();

        return view('property.servicedesk', [
            'outlets'     => $outlets,
            'tables'      => $tables,
            'categories'  => $categories,
            'servermast'  => $servermast,
            'depart'      => $departdata,
            'dcode'       => $dcode,
            'shortname'   => $shortname,
            'kot_no'      => $kot_no,
            'nctype'      => $nctype,
            'citydata'    => $citydata,
            'company'     => $company,
            'envpos'      => $envpos,
            'sundrytype1' => $sundrytype1,
            'sundrytypejson' => $sundrytypejson,
            'label'       => ($departdata && strtolower($departdata->nature) == 'room service') ? 'Room No.' : 'Table No.',
        ]);
    }
    public function switchoutletxhr(Request $request)
    {
        $dcode = $request->input('dcode');

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        $restcodes = [$dcode];
        if ($departdata) {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')
                ->toArray();
            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        }

        $isRoomService = $departdata && strtolower($departdata->nature) == 'room service';

        if ($isRoomService) {
            $rooms = DB::table('roomocc')
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('guestfolio.docid', '=', 'roomocc.docid')
                        ->where('guestfolio.nochargepost', 'N');
                })
                ->select('roomocc.roomno', 'roomocc.name')
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('guestfolio.nochargepost', 'N')
                ->whereNull('roomocc.type')
                ->groupBy('roomocc.roomno')
                ->orderBy('roomocc.roomno')
                ->get();

            $tables = $rooms->map(fn($r) => [
                'id' => $r->roomno,
                'table_number' => $r->roomno,
                'guest' => $r->name
            ]);
            $label = 'Room No.';
        } else {
            $tables = RoomMast::select('rcode as id', 'rcode as table_number')
                ->where('propertyid', $this->propertyid)
                ->whereIn('rest_code', $restcodes)
                ->where('type', 'TB')
                ->groupBy('rcode')
                ->orderBy('rcode', 'ASC')
                ->get();
            $label = 'Table No.';
        }

        $categories = DB::table('itemgrp')
            ->select('code', 'name')
            ->where('property_id', $this->propertyid)
            ->whereIn('restcode', $restcodes)
            ->where('activeyn', 'Y')
            ->orderBy('name', 'ASC')
            ->get();

        $shortname = $departdata->short_name ?? '';
        $kot_no = DB::table('voucher_prefix')
            ->where('v_type', 'K' . $shortname)
            ->where('propertyid', $this->propertyid)
            ->max('start_srl_no') + 1;

        $sundrytype1 = DB::table('sundrytype')
            ->where('propertyid', $this->propertyid)
            ->where('vtype', $restcodes[0])
            ->orderBy('sno', 'ASC')->get();

        $sundrytypejson = $sundrytype1->map(fn($i) => [
            'disp_name' => $i->disp_name,
            'nature' => $i->nature,
        ])->values();

        return response()->json([
            'dcode' => $dcode,
            'shortname' => $shortname,
            'kot_no' => $kot_no,
            'tables' => $tables,
            'categories' => $categories,
            'label' => $label,
            'isRoomService' => $isRoomService,
            'sundrytype' => $sundrytypejson,   // ✅ ADD
        ]);
    }
    public function fetchtablesservicedesk(Request $request)
    {
        $dcode = $request->input('dcode');
        $ordertype = $request->input('ordertype');

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        $restcodes = [$dcode];
        if ($departdata) {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')
                ->toArray();
            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        }

        if ($ordertype == 'Room Service') {
            $rooms = DB::table('roomocc')
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('guestfolio.docid', '=', 'roomocc.docid')
                        ->where('guestfolio.nochargepost', 'N');
                })
                ->select('roomocc.roomno', 'roomocc.name')
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('guestfolio.nochargepost', 'N')
                ->whereNull('roomocc.type')
                ->groupBy('roomocc.roomno')
                ->orderBy('roomocc.roomno')
                ->get();

            $data = $rooms->map(fn($r) => ['id' => $r->roomno, 'table_number' => $r->roomno, 'guest' => $r->name]);
            $label = 'Room No.';
        } else {
            $rooms = RoomMast::select('rcode as id', 'rcode as table_number')
                ->where('propertyid', $this->propertyid)
                ->whereIn('rest_code', $restcodes)
                ->where('type', 'TB')
                ->groupBy('rcode')
                ->orderBy('rcode', 'ASC')
                ->get();
            $data = $rooms;
            $label = 'Table No.';
        }

        return response()->json(['data' => $data, 'label' => $label]);
    }
    public function fetchpendingtables(Request $request)
    {
        $dcode = $request->input('dcode');
        $excluderoomno = $request->input('excluderoomno');

        $departdata = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();
        $restcodes = [$dcode];
        if ($departdata) {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')->toArray();
            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        }

        $data = DB::table('kot')
            ->select('kot.roomno', DB::raw('MAX(kot.vno) as vno'), DB::raw('COUNT(*) as itemcount'))
            ->where('kot.propertyid', $this->propertyid)
            ->whereIn('kot.restcode', $restcodes) // ✅ same outlet + its associated outlets only
            ->where('kot.nckot', 'N')
            ->where('kot.pending', 'Y')
            ->whereNot('kot.roomno', $excluderoomno)
            ->groupBy('kot.roomno')
            ->orderBy('kot.roomno')
            ->get();

        return response()->json($data);
    }

    public function mergetableitems(Request $request)
    {
        $dcode = $request->input('dcode');
        $roomno = $request->input('roomno');
        $targetroomno = $request->input('targetroomno');

        $departdata = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();
        $restcodes = [$dcode];
        if ($departdata) {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')->toArray();
            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        }

        $data = DB::table('kot')
            ->select(
                'kot.docid',
                'kot.item as itemcode',
                'kot.restcode as itemrestcode',
                'itemmast.Name as itemname',
                'kot.description',
                'kot.qty as quantity',
                'kot.rate',
                'kot.waiter',
                'kot.voidyn',
                'itemmast.DiscApp as discapp',
                'itemmast.SChrgApp as schrgapp',
                'itemmast.RateIncTax as rateinctax',
                DB::raw('COALESCE(taxstru.tax_code, "") AS tax_code'),
                DB::raw('COALESCE(taxstru.tax_rate, 0) AS tax_rate')
            )
            ->join('itemmast', function ($join) {
                $join->on('itemmast.Code', '=', 'kot.item')->on('itemmast.RestCode', '=', 'kot.restcode');
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
            })
            ->leftJoin(
                DB::raw('(SELECT str_code, GROUP_CONCAT(tax_code) AS tax_code, SUM(rate) AS tax_rate FROM taxstru GROUP BY str_code) AS taxstru'),
                'taxstru.str_code',
                '=',
                'itemcatmast.TaxStru'
            )
            ->where('kot.propertyid', $this->propertyid)
            ->whereIn('kot.restcode', $restcodes)
            ->where('kot.roomno', $roomno)
            ->where('kot.nckot', 'N')
            ->where('kot.pending', 'Y')
            ->where('kot.voidyn', '!=', 'Y')
            ->get();

        if ($data->isEmpty()) {
            return response()->json([]);
        }

        DB::table('kot')
            ->where('propertyid', $this->propertyid)
            ->whereIn('restcode', $restcodes)
            ->where('roomno', $roomno)
            ->where('nckot', 'N')
            ->where('pending', 'Y')
            ->update([
                'roomno' => $targetroomno,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
            ]);

        return response()->json($data);
    }
    public function fetchbillprintdata(Request $request)
    {
        $docid = $request->input('docid');
        $sale1print = Sale1::select(
            'sale1.vno',
            'sale1.vdate',
            'sale1.waiter',
            'sale1.roomno',
            'sale1.restcode',
            'sale1.vtype',
            'sale1.kotno',
            'depart.name as departname',
            'depart.nature as departnature',
            'server_mast.name as waitername'
        )
            ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
            ->leftJoin('depart', 'depart.dcode', '=', 'sale1.restcode')
            ->where('sale1.docid', $docid)->where('sale1.propertyid', $this->propertyid)->first();

        if (!$sale1print) {
            return response()->json(['message' => 'Bill not found'], 404);
        }

        $printsetup = PrintingSetup::where('propertyid', $this->propertyid)
            ->where('restcode', $sale1print->restcode)->where('module', 'POS')->first();

        $guestprof = GuestProf::where('propertyid', $this->propertyid)->where('docid', $docid)->first();

        return response()->json([
            'docid' => $docid,
            'roomno' => $sale1print->roomno,
            'vdate' => $sale1print->vdate,
            'vtype' => $sale1print->vtype,
            'waiter' => $sale1print->waitername,
            'billno' => $sale1print->vno,
            'departname' => $sale1print->departname,
            'kotno' => $sale1print->kotno,
            'outletcode' => $sale1print->restcode,
            'departnature' => $sale1print->departnature,
            'printdescription' => $printsetup->description ?? '',
            'phoneno' => $guestprof->mobile_no ?? '',
            'customername' => $guestprof->name ?? '',
            'address' => $guestprof->add1 ?? '',
            'customercity' => $guestprof->city ?? '',
            'company' => '',
        ]);
    }
    public function fetcholdbills(Request $request)
    {
        $dcode = $request->input('dcode');

        $oldroomno = Sale1::select(
            'sale1.vno',
            'sale1.vprefix',
            'sale1.vdate',
            'sale1.waiter',
            'sale1.docid',
            'server_mast.name as waitername'
        )
            ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
            ->where('sale1.propertyid', $this->propertyid)
            ->where('sale1.restcode', $dcode)
            ->where('sale1.delflag', 'N')
            ->orderBy('sale1.vno', 'DESC')
            ->limit(200)
            ->get();

        return response()->json($oldroomno);
    }
    public function markKotAsSplit(Request $request)
    {
        $docids = array_filter(explode(',', $request->input('docids', '')));
        if (empty($docids)) {
            return response()->json(['status' => 'error', 'message' => 'No docids provided']);
        }

        DB::table('kot')
            ->where('propertyid', $this->propertyid)
            ->whereIn('docid', $docids)
            ->update([
                'pending' => 'N',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
            ]);

        return response()->json(['status' => 'success']);
    }
    public function fetchTableItemsPreview(Request $request)
    {
        $dcode = $request->input('dcode');
        $roomno = $request->input('roomno');

        $departdata = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();
        $restcodes = [$dcode];
        if ($departdata) {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)->pluck('associatedrestcode')->toArray();
            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        }

        $data = DB::table('kot')
            ->select(
                'kot.docid',
                'kot.item as itemcode',
                'kot.restcode as itemrestcode',
                'itemmast.Name as itemname',
                'kot.description',
                'kot.qty as quantity',
                'kot.rate',
                'kot.waiter',
                'kot.voidyn',
                'itemmast.DiscApp as discapp',
                'itemmast.SChrgApp as schrgapp',
                'itemmast.RateIncTax as rateinctax',
                DB::raw('COALESCE(taxstru.tax_code, "") AS tax_code'),
                DB::raw('COALESCE(taxstru.tax_rate, 0) AS tax_rate')
            )
            ->join('itemmast', function ($join) {
                $join->on('itemmast.Code', '=', 'kot.item')->on('itemmast.RestCode', '=', 'kot.restcode');
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
            })
            ->leftJoin(DB::raw('(SELECT str_code, GROUP_CONCAT(tax_code) AS tax_code, SUM(rate) AS tax_rate FROM taxstru GROUP BY str_code) AS taxstru'), 'taxstru.str_code', '=', 'itemcatmast.TaxStru')
            ->where('kot.propertyid', $this->propertyid)
            ->whereIn('kot.restcode', $restcodes)
            ->where('kot.roomno', $roomno)
            ->where('kot.nckot', 'N')
            ->where('kot.pending', 'Y')
            ->where('kot.voidyn', '!=', 'Y')
            ->get();
        return response()->json($data);
    }
    public function fetchtablestatusservicedesk(Request $request)
    {
        $dcode = $request->input('dcode');

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        if (!$departdata) {
            return response()->json([]);
        }

        if (strtolower($departdata->nature) == 'room service') {
            $kotSubquery = KotModal::select(
                'kot.roomno',
                'kot.docid',
                'kot.vtime',
                'kot.waiter',
                'server_mast.name as waitername',
                'kot.contradocid'
            )
                ->distinct()
                ->leftJoin('server_mast', 'server_mast.scode', '=', 'kot.waiter')
                ->where('kot.restcode', $dcode)
                ->where('kot.roomtype', 'RO')
                ->where('kot.pending', 'Y')
                ->where('kot.voidyn', 'N')
                ->where(function ($query) {
                    $query->where('kot.delflag', 'N')->orWhere('kot.delflag', '');
                })
                ->where('kot.nckot', '<>', 'Y');

            $billSubquery = Sale1::select(
                'sale1.docid',
                DB::raw('MAX(sale1.vno) AS billno'),
                DB::raw('MAX(sale1.vtime) AS vtime'),
                DB::raw('MAX(sale1.roomno) AS roomno'),
                DB::raw('MAX(sale1.waiter) AS waiter'),
                DB::raw('MAX(server_mast.name) AS waitername')
            )
                ->leftJoin('paycharge', 'sale1.docid', '=', 'paycharge.docid')
                ->leftJoin('server_mast', 'sale1.waiter', '=', 'server_mast.scode')
                ->whereNull('paycharge.docid')
                ->where(function ($query) {
                    $query->where('sale1.delflag', '')->orWhere('sale1.delflag', 'N');
                })
                ->where('sale1.roomtype', 'RO')
                ->where('sale1.restcode', $dcode)
                ->groupBy('sale1.docid');

            $rows = RoomOcc::select(
                'roomocc.roomno AS roomno',
                DB::raw('COALESCE(BB.waitername, AA.waitername) AS waitername'),
                'BB.billno AS vno',
                DB::raw('CASE
                WHEN BB.waitername IS NOT NULL AND BB.billno IS NOT NULL THEN "billed"
                WHEN AA.waitername IS NOT NULL THEN "occupied"
                ELSE "vacant"
            END AS status')
            )
                ->leftJoinSub($kotSubquery, 'AA', function ($join) {
                    $join->on('AA.roomno', '=', 'roomocc.roomno');
                })
                ->leftJoinSub($billSubquery, 'BB', function ($join) {
                    $join->on('BB.roomno', '=', 'roomocc.roomno');
                })
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('guestfolio.docid', '=', 'roomocc.docid')
                        ->where('guestfolio.nochargepost', 'N');
                })
                ->where('guestfolio.nochargepost', 'N')
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('roomocc.roomtype', 'RO')
                ->whereNull('roomocc.type')
                ->groupBy('roomocc.roomno')
                ->orderBy('roomocc.roomno')
                ->get();
        } else {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')
                ->toArray();

            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);

            $kotSubquery = KotModal::select(
                'kot.roomno',
                'kot.docid',
                'kot.vtime',
                'kot.waiter',
                'server_mast.name as waitername',
                'kot.contradocid'
            )
                ->distinct()
                ->leftJoin('server_mast', 'server_mast.scode', '=', 'kot.waiter')
                ->whereIn('kot.restcode', $restcodes)
                ->where('kot.roomtype', 'TB')
                ->where('kot.pending', 'Y')
                ->where('kot.voidyn', 'N')
                ->where(function ($query) {
                    $query->where('kot.delflag', 'N')->orWhere('kot.delflag', '');
                })
                ->where('kot.nckot', '<>', 'Y');

            $billSubquery = Sale1::select(
                'sale1.docid',
                DB::raw('MAX(sale1.vno) AS billno'),
                DB::raw('MAX(sale1.vtime) AS vtime'),
                DB::raw('MAX(sale1.roomno) AS roomno'),
                DB::raw('MAX(sale1.waiter) AS waiter'),
                DB::raw('MAX(server_mast.name) AS waitername')
            )
                ->leftJoin('paycharge', 'sale1.docid', '=', 'paycharge.docid')
                ->leftJoin('server_mast', 'sale1.waiter', '=', 'server_mast.scode')
                ->whereNull('paycharge.docid')
                ->where(function ($query) {
                    $query->where('sale1.delflag', '')->orWhere('sale1.delflag', 'N');
                })
                ->where('sale1.roomcat', 'TABLE')
                ->where('sale1.roomtype', 'TB')
                ->whereIn('sale1.restcode', $restcodes)
                ->groupBy('sale1.docid');

            $vtype = 'R' . ($departdata->short_name ?? '');
            $today = ncurdate();
            $bookedSubquery = DB::table('tablebooking')
                ->select('tabaleno')
                ->where('propertyid', $this->propertyid)
                ->where('vtype', $vtype)
                ->where('cancelyn', 'N')
                ->where('contradocid', '')
                ->where('bookindate', $today);

            $rows = RoomMast::select(
                'room_mast.rcode AS roomno',
                DB::raw('COALESCE(BB.waitername, AA.waitername) AS waitername'),
                'BB.billno AS vno',
                DB::raw('CASE
                WHEN AA.waitername IS NOT NULL AND AA.contradocid IS NOT NULL THEN "occupied"
                WHEN BB.waitername IS NOT NULL AND BB.billno IS NOT NULL THEN "billed"
                WHEN CC.tabaleno IS NOT NULL THEN "booked"
                ELSE "vacant"
            END AS status')
            )
                ->leftJoinSub($kotSubquery, 'AA', function ($join) {
                    $join->on('AA.roomno', '=', 'room_mast.rcode');
                })
                ->leftJoinSub($billSubquery, 'BB', function ($join) {
                    $join->on('BB.roomno', '=', 'room_mast.rcode');
                })
                ->leftJoinSub($bookedSubquery, 'CC', function ($join) {
                    $join->on('CC.tabaleno', '=', 'room_mast.rcode');
                })
                ->where('room_mast.rest_code', $dcode)
                ->groupBy('room_mast.rcode')
                ->orderBy('room_mast.rcode')
                ->get();
        }

        return response()->json($rows);
    }
}
